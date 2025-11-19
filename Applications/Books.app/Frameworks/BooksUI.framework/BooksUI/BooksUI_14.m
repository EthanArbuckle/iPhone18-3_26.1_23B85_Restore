unint64_t sub_169820()
{
  v1 = v0[7];
  v32 = v0[6];
  v33 = v1;
  v34 = v0[8];
  v35 = *(v0 + 18);
  v2 = v0[3];
  v28 = v0[2];
  v29 = v2;
  v3 = v0[5];
  v30 = v0[4];
  v31 = v3;
  v4 = v0[1];
  v26 = *v0;
  v27 = v4;
  v5 = sub_25FE70();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_25FE60();
  sub_16A034();
  v15 = sub_25FE50();
  v17 = v16;

  v18 = objc_opt_self();
  isa = sub_260070().super.isa;
  v25[0] = 0;
  v20 = [v18 JSONObjectWithData:isa options:0 error:v25];

  if (v20)
  {
    v21 = v25[0];
    sub_264AC0();
    swift_unknownObjectRelease();
    sub_2EF0(&qword_320CD0, &unk_27D9A0);
    if (swift_dynamicCast())
    {
      v14 = sub_1A4738(v24);
    }

    else
    {
      v14 = sub_E678(_swiftEmptyArrayStorage);
    }

    sub_16A088(v15, v17);
  }

  else
  {
    v22 = v25[0];
    sub_25FFB0();

    swift_willThrow();
    sub_16A088(v15, v17);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v8 = sub_260D50();
    sub_B080(v8, qword_315F70);
    swift_errorRetain();
    v9 = sub_260D30();
    v10 = sub_2648F0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_0, v9, v10, "Failed to convert metrics model into MetricsFields: %@", v11, 0xCu);
      sub_8E80(v12, &qword_316450, &qword_2681E0);
    }

    v14 = sub_E678(_swiftEmptyArrayStorage);
  }

  return v14;
}

unint64_t static Metrics.actionDetails(with:)(double a1)
{
  sub_2EF0(&qword_3160C0, &qword_267D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x676E69746172;
  v3 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = a1;
  v4 = sub_E678(inited);
  swift_setDeallocating();
  sub_8E80(v3, &qword_3160C8, &unk_267D50);
  return v4;
}

unint64_t _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(char *a1, void *a2)
{
  v20 = *a1;
  if (Metrics.ClickActionType.rawValue.getter() == 7959906 && v3 == 0xE300000000000000)
  {

    goto LABEL_8;
  }

  v5 = sub_264F10();

  if (v5)
  {
LABEL_8:
    sub_2EF0(&qword_3160C0, &qword_267D48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269100;
    *(inited + 32) = 0x6D61726150797562;
    *(inited + 40) = 0xE900000000000073;
    v8 = a2[4];
    sub_2E18(a2, a2[3]);
    v9 = *(v8 + 8);
    v10 = sub_260700();
    if (v10 && (v11 = v10, v12 = [v10 buyParams], v11, v12))
    {
      v13 = sub_264460();
      v15 = v14;

      v16 = (inited + 48);
      *(inited + 72) = &type metadata for String;
      if (v15)
      {
        *v16 = v13;
LABEL_14:
        *(inited + 56) = v15;
        *(inited + 80) = 0x5050557369;
        *(inited + 88) = 0xE500000000000000;
        v17 = a2[4];
        sub_2E18(a2, a2[3]);
        v18 = sub_260990();
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = v18 & 1;
        v6 = sub_E678(inited);
        swift_setDeallocating();
        sub_2EF0(&qword_3160C8, &unk_267D50);
        swift_arrayDestroy();
        return v6;
      }
    }

    else
    {
      v16 = (inited + 48);
      *(inited + 72) = &type metadata for String;
    }

    *v16 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_14;
  }

  return 0;
}

unint64_t sub_169E28()
{
  result = qword_320CB8;
  if (!qword_320CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CB8);
  }

  return result;
}

unint64_t sub_169E80()
{
  result = qword_320CC0;
  if (!qword_320CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CC0);
  }

  return result;
}

uint64_t _s11descr2FCCF9V15ClickActionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11descr2FCCF9V15ClickActionTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_16A034()
{
  result = qword_320CC8;
  if (!qword_320CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CC8);
  }

  return result;
}

uint64_t sub_16A088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t GridItemInfobarPricePill.content(contextActionMenuView:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262730();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PricePillView();
  sub_30CC(v1, a1 + *(v8 + 24));
  KeyPath = swift_getKeyPath();
  v13 = 0;
  *a1 = KeyPath;
  *(a1 + 66) = 0;
  v10 = *(v8 + 20);
  v12 = 0x402E000000000000;
  (*(v4 + 104))(v7, enum case for Font.TextStyle.caption2(_:), v3);
  sub_40130();
  return sub_2612E0();
}

unint64_t sub_16A244()
{
  result = qword_320CF8;
  if (!qword_320CF8)
  {
    type metadata accessor for PricePillView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CF8);
  }

  return result;
}

uint64_t CodeShelfGridSpacing.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260C50();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CodeShelfGridSpacing.wrappedValue.setter(uint64_t a1)
{
  v3 = sub_260C50();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CodeShelfGridSpacing.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260C50();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_16A3D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E6F7A69726F68;
  }

  else
  {
    v4 = 0x6C61636974726576;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v6 = 0x746E6F7A69726F68;
  }

  else
  {
    v6 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006C61;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_16A484()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_16A50C()
{
  *v0;
  sub_264500();
}

Swift::Int sub_16A580()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_16A604@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_300E58;
  v8._object = v3;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_16A664(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_16A6A8()
{
  if (*v0)
  {
    result = 0x746E6F7A69726F68;
  }

  else
  {
    result = 0x6C61636974726576;
  }

  *v0;
  return result;
}

uint64_t sub_16A6E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_300E58;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_16A74C(uint64_t a1)
{
  v2 = sub_16AAC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16A788(uint64_t a1)
{
  v2 = sub_16AAC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CodeShelfGridSpacing.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_320D00, &qword_27DA70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = type metadata accessor for CodeShelfGridSpacing();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a1, &v18);
  sub_2647B0();
  if (v2)
  {
    v17 = a2;
    v14 = a1[4];
    sub_2E18(a1, a1[3]);
    sub_16AAC4();
    sub_265120();
    v21 = 0;
    sub_6E08();
    sub_264DB0();
    v16[1] = v18;
    v20 = v19;
    v21 = 1;
    sub_264DB0();
    sub_260C30();

    (*(v6 + 8))(v9, v5);
    a2 = v17;
  }

  else
  {
    sub_260C20();
  }

  sub_16AB18(v13, a2);
  return sub_3080(a1);
}

uint64_t type metadata accessor for CodeShelfGridSpacing()
{
  result = qword_320D68;
  if (!qword_320D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_16AAC4()
{
  result = qword_320D08;
  if (!qword_320D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320D08);
  }

  return result;
}

uint64_t sub_16AB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodeShelfGridSpacing();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16ABA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_260C50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_16AC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_260C50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_16AC98()
{
  result = sub_260C50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_16AD18()
{
  result = qword_320DA0;
  if (!qword_320DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DA0);
  }

  return result;
}

unint64_t sub_16AD70()
{
  result = qword_320DA8;
  if (!qword_320DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DA8);
  }

  return result;
}

unint64_t sub_16ADC8()
{
  result = qword_320DB0;
  if (!qword_320DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DB0);
  }

  return result;
}

uint64_t sub_16AE6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_300EE0;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_16AEC4(uint64_t a1)
{
  v2 = sub_16B468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16AF00(uint64_t a1)
{
  v2 = sub_16B468();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_16AF5C()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_16AFEC()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_16B044@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_264D40(a2, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_16B0D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_300F50;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_16B130(uint64_t a1)
{
  v2 = sub_16B414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16B16C(uint64_t a1)
{
  v2 = sub_16B414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.ExternalURLDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v4 = sub_2EF0(&qword_320DB8, &qword_27DC10);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v24 = &v22 - v6;
  v7 = sub_2EF0(&qword_320DC0, &qword_27DC18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_16B414();
  sub_265120();
  if (!v2)
  {
    v13 = v8;
    v14 = v23;
    sub_16B468();
    v15 = v24;
    sub_264D50();
    v17 = sub_264DC0();
    v18 = v15;
    v20 = v19;
    (*(v14 + 8))(v18, v4);
    (*(v13 + 8))(v11, v7);
    v21 = v22;
    *v22 = v17;
    v21[1] = v20;
  }

  return sub_3080(a1);
}

unint64_t sub_16B414()
{
  result = qword_320DC8;
  if (!qword_320DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DC8);
  }

  return result;
}

unint64_t sub_16B468()
{
  result = qword_320DD0;
  if (!qword_320DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DD0);
  }

  return result;
}

unint64_t sub_16B4BC(uint64_t a1)
{
  result = sub_16B4E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_16B4E4()
{
  result = qword_320DD8;
  if (!qword_320DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DD8);
  }

  return result;
}

unint64_t sub_16B584()
{
  result = qword_320DE0;
  if (!qword_320DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DE0);
  }

  return result;
}

unint64_t sub_16B5DC()
{
  result = qword_320DE8;
  if (!qword_320DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DE8);
  }

  return result;
}

unint64_t sub_16B634()
{
  result = qword_320DF0;
  if (!qword_320DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DF0);
  }

  return result;
}

unint64_t sub_16B68C()
{
  result = qword_320DF8;
  if (!qword_320DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DF8);
  }

  return result;
}

unint64_t sub_16B6E4()
{
  result = qword_320E00;
  if (!qword_320E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E00);
  }

  return result;
}

unint64_t sub_16B73C()
{
  result = qword_320E08;
  if (!qword_320E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E08);
  }

  return result;
}

uint64_t DelayActionImplementation.perform(_:asPartOf:)(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316408, &qword_26DE30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for DelayAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_16BDDC(a1, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_16BE44(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_2EF0(&qword_31D228, &unk_27B470);
  v11 = sub_2641C0();
  v12 = sub_264770();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_27DF70;
  v13[5] = v10;
  v13[6] = v11;

  sub_E39C4(0, 0, v5, &unk_27DF80, v13);

  return v11;
}

uint64_t sub_16B9A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_264C90();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_16BA60, 0, 0);
}

uint64_t sub_16BA60()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v2 + *(type metadata accessor for DelayAction() + 20));
  v4 = sub_265220();
  v6 = v5;
  sub_264FE0();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_16BB4C;
  v8 = v0[6];

  return sub_16C194(v4, v6, 0, 0, 1);
}

uint64_t sub_16BB4C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_16BD78;
  }

  else
  {
    v6 = sub_16BCBC;
  }

  return (_swift_task_switch)(v6, 0, 0);
}

uint64_t sub_16BCBC()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = enum case for ActionOutcome.performed(_:);
  v4 = sub_263B00();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_16BD78()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_16BDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16BE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16BEA8(uint64_t a1)
{
  v4 = *(type metadata accessor for DelayAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_160A8;

  return sub_16B9A0(a1, v1 + v5);
}

uint64_t sub_16BF84(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316408, &qword_26DE30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for DelayAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_16BDDC(a1, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_16BE44(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_2EF0(&qword_31D228, &unk_27B470);
  v11 = sub_2641C0();
  v12 = sub_264770();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_27DFF0;
  v13[5] = v10;
  v13[6] = v11;

  sub_E39C4(0, 0, v5, &unk_274568, v13);

  return v11;
}

uint64_t sub_16C194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_264C80();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return (_swift_task_switch)(sub_16C294, 0, 0);
}

uint64_t sub_16C294()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_264C90();
  v7 = sub_16C92C(&qword_320E10, &type metadata accessor for ContinuousClock);
  sub_264FC0();
  sub_16C92C(&qword_320E18, &type metadata accessor for ContinuousClock.Instant);
  sub_264CA0();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_16C424;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_16C424()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (!v0)
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_16C5E0, 0, 0);
}

uint64_t sub_16C5E0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_16C64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_160A8;

  return sub_E3648(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_16C780()
{
  v1 = *(type metadata accessor for DelayAction() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_263AF0();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_16C84C(uint64_t a1)
{
  v4 = *(type metadata accessor for DelayAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_156D0;

  return sub_16B9A0(a1, v1 + v5);
}

uint64_t sub_16C92C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_16C988()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_16CA38()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_16CAD4()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_16CB80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_16F36C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_16CBB0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C797473;
  v4 = 0x6E6769736564;
  if (*v1 != 2)
  {
    v4 = 0x746867696577;
  }

  if (*v1)
  {
    v3 = 1702521203;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_16CC1C()
{
  v1 = 0x656C797473;
  v2 = 0x6E6769736564;
  if (*v0 != 2)
  {
    v2 = 0x746867696577;
  }

  if (*v0)
  {
    v1 = 1702521203;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_16CC84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_16F36C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16CCAC(uint64_t a1)
{
  v2 = sub_16DDC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16CCE8(uint64_t a1)
{
  v2 = sub_16DDC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16CD24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000000028FC50;
  if (v2 == 1)
  {
    v4 = 0x800000000028FC50;
  }

  else
  {
    v4 = 0x800000000028FC70;
  }

  if (*a1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 1953394534;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000000028FC70;
  }

  if (*a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 1953394534;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_16CDF0()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_16CE94()
{
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_16CF24()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_16CFC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_16F3B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_16CFF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x800000000028FC50;
  if (v2 != 1)
  {
    v4 = 0x800000000028FC70;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 1953394534;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_16D054()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1953394534;
  }
}

uint64_t sub_16D0B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_16F3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16D0D8(uint64_t a1)
{
  v2 = sub_16DD70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16D114(uint64_t a1)
{
  v2 = sub_16DD70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FontSpec.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v82 = a2;
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v90 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v91 = &v73 - v6;
  v85 = sub_262730();
  v97 = *(v85 - 1);
  v7 = *(v97 + 64);
  __chkstk_darwin(v85);
  v96 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2625C0();
  v88 = *(v92 - 8);
  v9 = *(v88 + 64);
  __chkstk_darwin(v92);
  v81 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2EF0(&qword_320E20, &qword_27E008);
  v11 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v86 = &v73 - v12;
  v13 = sub_2EF0(&qword_318458, &unk_26B270);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v83 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v89 = &v73 - v17;
  __chkstk_darwin(v18);
  v87 = &v73 - v19;
  __chkstk_darwin(v20);
  v94 = &v73 - v21;
  v22 = sub_2EF0(&qword_320E28, &qword_27E010);
  v93 = *(v22 - 8);
  v23 = *(v93 + 64);
  __chkstk_darwin(v22);
  v98 = &v73 - v24;
  v25 = sub_2EF0(&qword_320E30, &qword_27E018);
  v95 = *(v25 - 8);
  v26 = *(v95 + 64);
  __chkstk_darwin(v25);
  v28 = &v73 - v27;
  v29 = type metadata accessor for FontSpec(0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v33 = (&v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v30 + 28);
  v35 = sub_261690();
  v36 = *(*(v35 - 8) + 56);
  v101 = v34;
  v36(v33 + v34, 1, 1, v35);
  v102 = *(v30 + 32);
  v36(v33 + v102, 1, 1, v35);
  v37 = v99;
  v38 = v99[4];
  sub_2E18(v99, v99[3]);
  sub_16DD70();
  v39 = v100;
  sub_265120();
  if (v39)
  {
    sub_3080(v37);
    sub_8E80(v33 + v101, &qword_316890, &qword_2725A0);
    return sub_8E80(v33 + v102, &qword_316890, &qword_2725A0);
  }

  v40 = v96;
  v41 = v97;
  v100 = v22;
  v42 = v33;
  v43 = v95;
  v105 = 0;
  sub_16DDC4();
  sub_264D50();
  sub_16DE18(v94);
  v44 = sub_16EC2C();
  v77 = v46;
  v78 = v44;
  v80 = v28;
  v79 = v25;
  v104 = 1;
  if (sub_264E10())
  {
    v103 = 1;
    sub_6E08();
    sub_264DF0();
    v49 = v88;
    v48 = v89;
    v50 = *(v88 + 104);
    v75 = enum case for Font.Design.serif (_:);
    v51 = v92;
    v76 = v88 + 104;
    v74 = v50;
    v50(v89);
    v52 = *(v49 + 56);
    v96 = (v49 + 56);
    v85 = v52;
    v52(v48, 0, 1, v51);
    v53 = *(v84 + 48);
    v54 = v86;
    sub_16F074(v94, v86);
    v97 = v53;
    sub_16F074(v48, v54 + v53);
    v55 = *(v49 + 48);
    if (v55(v54, 1, v51) == 1)
    {
      sub_8E80(v48, &qword_318458, &unk_26B270);
      v56 = v55(v54 + v97, 1, v92);
      v59 = v90;
      v58 = v91;
      v47 = v101;
      if (v56 == 1)
      {
        sub_8E80(v54, &qword_318458, &unk_26B270);
        v57 = v87;
LABEL_14:
        if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
        {
          v66 = v57;
          v67 = 1;
          v68 = v92;
        }

        else
        {
          v69 = v92;
          v74(v57, v75, v92);
          v66 = v57;
          v67 = 0;
          v68 = v69;
        }

        v85(v66, v67, 1, v68);
        goto LABEL_18;
      }
    }

    else
    {
      v60 = v83;
      sub_16F074(v54, v83);
      if (v55(v54 + v97, 1, v92) != 1)
      {
        v61 = v88;
        v62 = v81;
        v63 = v92;
        (*(v88 + 32))(v81, v54 + v97, v92);
        sub_16F0E4();
        LODWORD(v97) = sub_264390();
        v64 = v37;
        v65 = *(v61 + 8);
        v65(v62, v63);
        sub_8E80(v89, &qword_318458, &unk_26B270);
        v65(v83, v63);
        v37 = v64;
        sub_8E80(v54, &qword_318458, &unk_26B270);
        v59 = v90;
        v58 = v91;
        v47 = v101;
        v57 = v87;
        if (v97)
        {
          goto LABEL_14;
        }

LABEL_12:
        sub_16F074(v94, v57);
LABEL_18:
        v92 = sub_262670();
        sub_8E80(v57, &qword_318458, &unk_26B270);
        goto LABEL_19;
      }

      sub_8E80(v89, &qword_318458, &unk_26B270);
      (*(v88 + 8))(v60, v92);
      v59 = v90;
      v58 = v91;
      v47 = v101;
    }

    sub_8E80(v54, &qword_320E20, &qword_27E008);
    v57 = v87;
    goto LABEL_12;
  }

  sub_16E174(v40);
  v47 = v101;
  v92 = sub_262680();
  (*(v41 + 8))(v40, v85);
  v59 = v90;
  v58 = v91;
LABEL_19:
  *v42 = v92;
  v70 = v58;
  v71 = v58;
  v72 = v80;
  sub_16E64C(v70);
  sub_C5FBC(v71, v42 + v47);
  sub_16E64C(v59);
  sub_8E80(v94, &qword_318458, &unk_26B270);
  (*(v93 + 8))(v98, v100);
  (*(v43 + 8))(v72, v79);
  sub_C5FBC(v59, v42 + v102);
  sub_16F010(v42, v82);
  sub_3080(v37);
  return sub_10C5F4(v42);
}

unint64_t sub_16DD70()
{
  result = qword_320E38;
  if (!qword_320E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E38);
  }

  return result;
}

unint64_t sub_16DDC4()
{
  result = qword_320E40;
  if (!qword_320E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E40);
  }

  return result;
}

uint64_t sub_16DE18@<X0>(uint64_t a1@<X8>)
{
  sub_2EF0(&qword_320E28, &qword_27E010);
  result = sub_264D70();
  if (!v1)
  {
    if (v4)
    {
      v5 = result == 0x746C7561666564 && v4 == 0xE700000000000000;
      if (v5 || (v6 = result, v7 = v4, (sub_264F10() & 1) != 0))
      {

        v8 = &enum case for Font.Design.default(_:);
LABEL_9:
        v9 = *v8;
        v10 = sub_2625C0();
        v11 = *(v10 - 8);
        (*(v11 + 104))(a1, v9, v10);
        return (*(v11 + 56))(a1, 0, 1, v10);
      }

      if (v6 == 0x6669726573 && v7 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for Font.Design.serif (_:);
        goto LABEL_9;
      }

      if (v6 == 0x6465646E756F72 && v7 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for Font.Design.rounded(_:);
        goto LABEL_9;
      }

      if (v6 == 0x636170736F6E6F6DLL && v7 == 0xEA00000000006465)
      {

LABEL_24:
        v8 = &enum case for Font.Design.monospaced(_:);
        goto LABEL_9;
      }

      v13 = sub_264F10();

      if (v13)
      {
        goto LABEL_24;
      }

      v14 = sub_264C10();
      swift_allocError();
      v16 = v15;
      sub_264D60();
      sub_264BF0();
      (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.dataCorrupted(_:), v14);
      return swift_willThrow();
    }

    else
    {
      v12 = sub_2625C0();
      return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    }
  }

  return result;
}

uint64_t sub_16E174@<X0>(uint64_t a1@<X8>)
{
  sub_2EF0(&qword_320E28, &qword_27E010);
  result = sub_264DC0();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = result == 0x746954656772616CLL && v4 == 0xEA0000000000656CLL;
    if (v7 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.largeTitle(_:);
    }

    else if (v5 == 0x656C746974 && v6 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.title(_:);
    }

    else if (v5 == 0x32656C746974 && v6 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.title2(_:);
    }

    else if (v5 == 0x33656C746974 && v6 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.title3(_:);
    }

    else if (v5 == 0x656E696C64616568 && v6 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.headline(_:);
    }

    else if (v5 == 0x6C64616568627573 && v6 == 0xEB00000000656E69 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.subheadline(_:);
    }

    else if (v5 == 2036625250 && v6 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.body(_:);
    }

    else if (v5 == 0x74756F6C6C6163 && v6 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.callout(_:);
    }

    else if (v5 == 0x65746F6E746F6F66 && v6 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.footnote(_:);
    }

    else if (v5 == 0x6E6F6974706163 && v6 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.caption(_:);
    }

    else
    {
      if (v5 == 0x326E6F6974706163 && v6 == 0xE800000000000000)
      {
      }

      else
      {
        v11 = sub_264F10();

        if ((v11 & 1) == 0)
        {
          v12 = sub_264C10();
          swift_allocError();
          v14 = v13;
          sub_264D60();
          sub_264BF0();
          (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.dataCorrupted(_:), v12);
          return swift_willThrow();
        }
      }

      v8 = &enum case for Font.TextStyle.caption2(_:);
    }

    v9 = *v8;
    v10 = sub_262730();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  return result;
}

uint64_t sub_16E64C@<X0>(uint64_t a1@<X8>)
{
  sub_2EF0(&qword_320E30, &qword_27E018);
  result = sub_264D70();
  if (!v1)
  {
    if (v4)
    {
      v5 = result == 0x6C6C616D5378 && v4 == 0xE600000000000000;
      if (v5 || (v6 = result, v7 = v4, (sub_264F10() & 1) != 0))
      {

        v8 = &enum case for DynamicTypeSize.xSmall(_:);
LABEL_9:
        v9 = *v8;
        v10 = sub_261690();
        v11 = *(v10 - 8);
        (*(v11 + 104))(a1, v9, v10);
        return (*(v11 + 56))(a1, 0, 1, v10);
      }

      if (v6 == 0x6C6C616D73 && v7 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.small(_:);
        goto LABEL_9;
      }

      if (v6 == 0x6D756964656DLL && v7 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.medium(_:);
        goto LABEL_9;
      }

      if (v6 == 0x656772616CLL && v7 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.large(_:);
        goto LABEL_9;
      }

      if (v6 == 0x656772614C78 && v7 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.xLarge(_:);
        goto LABEL_9;
      }

      if (v6 == 0x656772614C7878 && v7 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.xxLarge(_:);
        goto LABEL_9;
      }

      if (v6 == 0x656772614C787878 && v7 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.xxxLarge(_:);
        goto LABEL_9;
      }

      if (v6 == 0x6269737365636361 && v7 == 0xEE00317974696C69 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.accessibility1(_:);
        goto LABEL_9;
      }

      if (v6 == 0x6269737365636361 && v7 == 0xEE00327974696C69 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.accessibility2(_:);
        goto LABEL_9;
      }

      if (v6 == 0x6269737365636361 && v7 == 0xEE00337974696C69 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.accessibility3(_:);
        goto LABEL_9;
      }

      if (v6 == 0x6269737365636361 && v7 == 0xEE00347974696C69 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for DynamicTypeSize.accessibility4(_:);
        goto LABEL_9;
      }

      if (v6 == 0x6269737365636361 && v7 == 0xEE00357974696C69)
      {

LABEL_56:
        v8 = &enum case for DynamicTypeSize.accessibility5(_:);
        goto LABEL_9;
      }

      v13 = sub_264F10();

      if (v13)
      {
        goto LABEL_56;
      }

      v14 = sub_264C10();
      swift_allocError();
      v16 = v15;
      sub_264D60();
      sub_264BF0();
      (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.dataCorrupted(_:), v14);
      return swift_willThrow();
    }

    else
    {
      v12 = sub_261690();
      return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    }
  }

  return result;
}

uint64_t sub_16EC2C()
{
  sub_2EF0(&qword_320E28, &qword_27E010);
  result = sub_264D70();
  if (!v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = result == 0x67694C6172746C75 && v2 == 0xEA00000000007468;
      if (v4 || (v5 = result, (sub_264F10() & 1) != 0))
      {

        sub_2625D0();
        return v6;
      }

      if (v5 == 1852401780 && v3 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_2625F0();
        return v6;
      }

      if (v5 == 0x746867696CLL && v3 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262620();
        return v6;
      }

      if (v5 == 0x72616C75676572 && v3 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262640();
        return v6;
      }

      if (v5 == 0x6D756964656DLL && v3 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262630();
        return v6;
      }

      if (v5 == 0x646C6F62696D6573 && v3 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262650();
        return v6;
      }

      if (v5 == 1684828002 && v3 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_2625E0();
        return v6;
      }

      if (v5 == 0x7976616568 && v3 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262610();
        return v6;
      }

      if (v5 == 0x6B63616C62 && v3 == 0xE500000000000000)
      {

LABEL_44:
        sub_262600();
        return v6;
      }

      v7 = sub_264F10();

      if (v7)
      {
        goto LABEL_44;
      }

      v8 = sub_264C10();
      swift_allocError();
      v10 = v9;
      sub_264D60();
      sub_264BF0();
      (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.dataCorrupted(_:), v8);
      return swift_willThrow();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_16F010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontSpec(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_16F0E4()
{
  result = qword_320E48;
  if (!qword_320E48)
  {
    sub_2625C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E48);
  }

  return result;
}

unint64_t sub_16F160()
{
  result = qword_320E50;
  if (!qword_320E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E50);
  }

  return result;
}

unint64_t sub_16F1B8()
{
  result = qword_320E58;
  if (!qword_320E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E58);
  }

  return result;
}

unint64_t sub_16F210()
{
  result = qword_320E60;
  if (!qword_320E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E60);
  }

  return result;
}

unint64_t sub_16F268()
{
  result = qword_320E68;
  if (!qword_320E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E68);
  }

  return result;
}

unint64_t sub_16F2C0()
{
  result = qword_320E70;
  if (!qword_320E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E70);
  }

  return result;
}

unint64_t sub_16F318()
{
  result = qword_320E78;
  if (!qword_320E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E78);
  }

  return result;
}

uint64_t sub_16F36C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300F88;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_16F3B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301008;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_16F404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C18, &unk_26F830);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_8198(v2, &v17 - v11, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2616C0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t DeterminateProgressViewStyle.init(_:cancelIconConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a5 = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DeterminateProgressViewStyle(0);
  v14 = v13[5];
  *(a5 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  v16 = a5 + v13[6];
  *v16 = a2;
  *(v16 + 1) = a3;
  v16[16] = a4 & 1;
  *(a5 + v13[7]) = v9;
  *(a5 + v13[8]) = v10;
  *(a5 + v13[9]) = v11;
  *(a5 + v13[10]) = v12;
  return result;
}

uint64_t DeterminateProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_320E80, &qword_27E388);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v23 - v10);
  v12 = sub_2EF0(&qword_320E88, &qword_27E390);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = COERCE_DOUBLE(sub_2623F0());
  if (v17)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v16;
  }

  *v11 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v11[1] = v19;
  v20 = sub_2EF0(&qword_320E90, &qword_27E398);
  sub_16F9A0(v1, v11 + *(v20 + 44), v18);
  if (*(v1 + *(type metadata accessor for DeterminateProgressViewStyle(0) + 32)) == 1)
  {
    sub_17039C(type metadata accessor for DeterminateProgressViewStyle, v7);
    v21 = 0.7;
  }

  else
  {
    (*(v4 + 104))(v7, enum case for BlendMode.normal(_:), v3);
    v21 = 1.0;
  }

  (*(v4 + 32))(&v15[*(v12 + 36)], v7, v3);
  sub_22148(v11, v15, &qword_320E80, &qword_27E388);
  sub_22148(v15, a1, &qword_320E88, &qword_27E390);
  result = sub_2EF0(&qword_320E98, &qword_27E3A0);
  *(a1 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_16F9A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v56 = a2;
  v50 = sub_2EF0(&qword_3210C0, &qword_27E590);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v50);
  v8 = &v48 - v7;
  v9 = sub_2EF0(&qword_3210C8, &qword_27E598);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for DeterminateProgressViewStyle(0);
  v17 = *(a1 + v16[7]);
  v18 = *(a1 + v16[10]);
  sub_261240();
  v19 = v103;
  v54 = v105;
  v55 = v104;
  v20 = v106;
  v53 = v107;
  v21 = v108;

  v22 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v51 = v23;
  v52 = v22;
  sub_1700B0(v57, a3);
  v99 = v57[10];
  v100 = v57[11];
  v101 = v57[12];
  v102 = v57[13];
  v95 = v57[6];
  v96 = v57[7];
  v97 = v57[8];
  v98 = v57[9];
  v91 = v57[2];
  v92 = v57[3];
  v93 = v57[4];
  v94 = v57[5];
  v89 = v57[0];
  v90 = v57[1];
  v24 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v109[10] = v99;
  v109[11] = v100;
  v109[12] = v101;
  v109[13] = v102;
  v109[6] = v95;
  v109[7] = v96;
  v109[8] = v97;
  v109[9] = v98;
  v109[2] = v91;
  v109[3] = v92;
  v109[4] = v93;
  v109[5] = v94;
  v109[0] = v89;
  v109[1] = v90;
  *&v110 = v24;
  *(&v110 + 1) = v25;
  v126 = v101;
  v127 = v102;
  v122 = v97;
  v123 = v98;
  v125 = v100;
  v124 = v99;
  v118 = v93;
  v119 = v94;
  v121 = v96;
  v120 = v95;
  v114 = v89;
  v115 = v90;
  v117 = v92;
  v116 = v91;
  v128 = v110;
  v111[10] = v99;
  v111[11] = v100;
  v111[12] = v101;
  v111[13] = v102;
  v111[6] = v95;
  v111[7] = v96;
  v111[8] = v97;
  v111[9] = v98;
  v111[2] = v91;
  v111[3] = v92;
  v111[4] = v93;
  v111[5] = v94;
  v111[0] = v89;
  v111[1] = v90;
  v112 = v24;
  v113 = v25;
  sub_8198(v109, &v58, &qword_3210D0, &qword_27E5A0);
  sub_8E80(v111, &qword_3210D0, &qword_27E5A0);
  v26 = *(a1 + v16[9]) - v18;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v27 = (a1 + v16[6]);
  if (v27[2])
  {
    v28 = 1;
    v29 = v50;
  }

  else
  {
    v30 = v27[1];
    v31 = *v27;
    v32 = *(sub_2617E0() + 20);
    v33 = enum case for RoundedCornerStyle.continuous(_:);
    v34 = sub_261DD0();
    (*(*(v34 - 8) + 104))(&v8[v32], v33, v34);
    *v8 = v30;
    *(v8 + 1) = v30;
    KeyPath = swift_getKeyPath();
    v36 = &v8[*(sub_2EF0(&qword_3210E8, &qword_27E5E8) + 36)];
    *v36 = KeyPath;
    v36[1] = v17;

    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v37 = v50;
    v38 = &v8[*(v50 + 36)];
    v39 = v90;
    *v38 = v89;
    *(v38 + 1) = v39;
    *(v38 + 2) = v91;
    sub_22148(v8, v15, &qword_3210C0, &qword_27E590);
    v28 = 0;
    v29 = v37;
  }

  (*(v5 + 56))(v15, v28, 1, v29);
  sub_8198(v15, v12, &qword_3210C8, &qword_27E598);
  *&v57[0] = v19;
  v41 = v54;
  v40 = v55;
  *(&v57[0] + 1) = __PAIR64__(v54, v55);
  *&v57[1] = v20;
  v42 = v53;
  *(&v57[1] + 1) = v53;
  *&v57[2] = v21;
  *(&v57[2] + 1) = v17;
  LOWORD(v57[3]) = 256;
  v49 = v15;
  v50 = v17;
  *(&v57[3] + 2) = v132;
  WORD3(v57[3]) = v133;
  v43 = v51;
  v44 = v52;
  *(&v57[3] + 1) = v52;
  *&v57[4] = v51;
  *(&v57[4] + 1) = 0x3FC999999999999ALL;
  v57[5] = v114;
  v57[6] = v115;
  v57[9] = v118;
  v57[10] = v119;
  v57[7] = v116;
  v57[8] = v117;
  v57[13] = v122;
  v57[14] = v123;
  v57[11] = v120;
  v57[12] = v121;
  v57[17] = v126;
  v57[18] = v127;
  v57[15] = v124;
  v57[16] = v125;
  v57[19] = v128;
  v57[20] = v129;
  v57[21] = v130;
  v57[22] = v131;
  v45 = v56;
  memcpy(v56, v57, 0x170uLL);
  v46 = sub_2EF0(&qword_3210D8, &qword_27E5A8);
  sub_8198(v12, v45 + *(v46 + 48), &qword_3210C8, &qword_27E598);
  sub_8198(v57, &v58, &qword_3210E0, &qword_27E5B0);
  sub_8E80(v49, &qword_3210C8, &qword_27E598);
  sub_8E80(v12, &qword_3210C8, &qword_27E598);
  v58 = v19;
  v59 = v40;
  v60 = v41;
  v61 = v20;
  v62 = v42;
  v63 = v21;
  v64 = v50;
  v65 = 256;
  v66 = v132;
  v67 = v133;
  v68 = v44;
  v69 = v43;
  v70 = 0x3FC999999999999ALL;
  v71 = v114;
  v72 = v115;
  v75 = v118;
  v76 = v119;
  v73 = v116;
  v74 = v117;
  v79 = v122;
  v80 = v123;
  v77 = v120;
  v78 = v121;
  v83 = v126;
  v84 = v127;
  v81 = v124;
  v82 = v125;
  v85 = v128;
  v86 = v129;
  v87 = v130;
  v88 = v131;
  return sub_8E80(&v58, &qword_3210E0, &qword_27E5B0);
}

uint64_t sub_1700B0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = sub_2616C0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for DeterminateProgressViewStyle(0);
  v38 = *(v2 + v13[7]);
  v14 = *(v2 + v13[10]);
  v15 = 0.0;
  sub_261240();

  v16 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v36 = v17;
  v37 = v16;
  v18 = *(v2 + v13[9]);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_16F404(v12);
  v19 = enum case for LayoutDirection.leftToRight(_:);
  v35 = v6[13];
  v35(v9, enum case for LayoutDirection.leftToRight(_:), v5);
  v20 = sub_2616B0();
  v21 = v6[1];
  v21(v9, v5);
  v21(v12, v5);
  if (v20)
  {
    v22 = -1.57079633;
  }

  else
  {
    v22 = -4.71238898;
  }

  sub_263720();
  v24 = v23;
  v26 = v25;
  sub_16F404(v12);
  v35(v9, v19, v5);
  v27 = sub_2616B0();
  v21(v9, v5);
  v21(v12, v5);
  if ((v27 & 1) == 0)
  {
    v15 = 3.14159265;
  }

  result = sub_263720();
  *(a1 + 8) = a2;
  v29 = v40;
  *(a1 + 16) = v39;
  *(a1 + 32) = v29;
  v30 = v43;
  *(a1 + 88) = v42;
  *a1 = 0;
  v31 = v38;
  *(a1 + 48) = v41;
  *(a1 + 56) = v31;
  *(a1 + 64) = 256;
  v32 = v36;
  *(a1 + 72) = v37;
  *(a1 + 80) = v32;
  *(a1 + 104) = v30;
  *(a1 + 120) = v44;
  *(a1 + 136) = v22;
  *(a1 + 144) = v24;
  *(a1 + 152) = v26;
  *(a1 + 160) = v15;
  *(a1 + 168) = xmmword_27C4B0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v33;
  *(a1 + 200) = v34;
  *(a1 + 208) = xmmword_27C4B0;
  return result;
}

uint64_t sub_17039C@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  v15 = a1(0, v12);
  sub_8198(v2 + *(v15 + 20), v14, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_263640();
    return (*(*(v16 - 8) + 32))(a2, v14, v16);
  }

  else
  {
    v18 = *v14;
    sub_264900();
    v19 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t InDeterminateProgressViewStyle.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = a1[3];
  sub_2631D0();
  *a2 = v10;
  *(a2 + 8) = v11;
  v7 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v8 = v7[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v7[6]) = v3;
  *(a2 + v7[7]) = v4;
  *(a2 + v7[8]) = v5;
  *(a2 + v7[9]) = v6;
  return result;
}

uint64_t sub_17068C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v50 = sub_263640();
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin(v50);
  v49 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v6 = (v5 - 8);
  v43 = *(v5 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v5);
  v46 = sub_2EF0(&qword_321038, &qword_27E540);
  v8 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v10 = &v40[-v9];
  v11 = *(v1 + v6[8]);
  v12 = *(v2 + v6[11]);
  sub_261240();
  v47 = v11;

  v45 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v44 = v13;
  v14 = *(v2 + v6[10]) - v12;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v16 = *(v2 + 8);
  LOBYTE(v57[0]) = *v2;
  v15 = v57[0];
  v58 = v16;
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  v41 = v55;
  sub_263720();
  v18 = v17;
  v20 = v19;
  sub_263600();
  sub_2635A0();

  v42 = sub_2635C0();

  LOBYTE(v57[0]) = v15;
  v58 = v16;
  sub_2631E0();
  v21 = v2;
  v22 = v55;
  sub_171CF0(v2, &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v23 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v24 = swift_allocObject();
  sub_171E88(&v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v24 + v23);
  if (*(v21 + v6[9]) == 1)
  {
    v25 = v49;
    sub_17039C(type metadata accessor for InDeterminateProgressViewStyle, v49);
    v26 = 0.7;
    v27 = v50;
    v28 = v48;
  }

  else
  {
    v29 = v48;
    v25 = v49;
    v30 = v50;
    (*(v48 + 104))(v49, enum case for BlendMode.normal(_:), v50);
    v26 = 1.0;
    v27 = v30;
    v28 = v29;
  }

  if (v41)
  {
    v31 = -6.28318531;
  }

  else
  {
    v31 = 0.0;
  }

  (*(v28 + 32))(&v10[*(v46 + 36)], v25, v27);
  v32 = v59;
  v33 = v60;
  *v10 = xmmword_27E310;
  *(v10 + 1) = v32;
  *(v10 + 2) = v33;
  v34 = v47;
  *(v10 + 6) = v61;
  *(v10 + 7) = v34;
  *(v10 + 32) = 256;
  *(v10 + 66) = v55;
  *(v10 + 35) = v56;
  v35 = v44;
  *(v10 + 9) = v45;
  *(v10 + 10) = v35;
  *(v10 + 11) = 0x3FC999999999999ALL;
  v36 = v52;
  v37 = v54;
  *(v10 + 7) = v53;
  *(v10 + 8) = v37;
  *(v10 + 6) = v36;
  *(v10 + 18) = v31;
  *(v10 + 19) = v18;
  *(v10 + 20) = v20;
  *(v10 + 21) = v42;
  v10[176] = v22;
  *(v10 + 177) = v57[0];
  *(v10 + 45) = *(v57 + 3);
  *(v10 + 23) = sub_171EEC;
  *(v10 + 24) = v24;
  *(v10 + 25) = 0;
  *(v10 + 26) = 0;
  v38 = v51;
  sub_22148(v10, v51, &qword_321038, &qword_27E540);
  result = sub_2EF0(&qword_321028, &qword_27E538);
  *(v38 + *(result + 36)) = v26;
  return result;
}

uint64_t sub_170B6C(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);

  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  sub_2631F0();
}

uint64_t ProgressViewModel.init(foregroundColor:style:size:lineWidth:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *a2;
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_170C18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3210A0, &unk_27E580);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = a1[2];
  v15 = a1[3];
  sub_2612D0();
  v20 = 1;
  sub_2631D0();
  v16 = v22;
  *v6 = v21;
  *(v6 + 1) = v16;
  v17 = v3[5];
  *&v6[v17] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *&v6[v3[6]] = v12;
  v6[v3[7]] = v13;
  *&v6[v3[8]] = v14;
  *&v6[v3[9]] = v15;
  sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580);
  sub_171C3C();

  sub_2629E0();
  sub_171C94(v6);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_170EDC()
{
  result = qword_320EA0;
  if (!qword_320EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320EA0);
  }

  return result;
}

uint64_t sub_170F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_319458, &unk_26CF30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317878, &unk_27E490);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_17107C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_319458, &unk_26CF30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_317878, &unk_27E490);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_17119C()
{
  sub_171294(319, &qword_3194C8, &type metadata accessor for LayoutDirection);
  if (v0 <= 0x3F)
  {
    sub_171294(319, &qword_3178F8, &type metadata accessor for BlendMode);
    if (v1 <= 0x3F)
    {
      sub_1712E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_171294(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1712E8()
{
  if (!qword_320F10)
  {
    sub_2F9C(&unk_320F18, &unk_27E4C0);
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_320F10);
    }
  }
}

uint64_t sub_171360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317878, &unk_27E490);
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

uint64_t sub_171440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317878, &unk_27E490);
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

void sub_171508()
{
  sub_1715CC();
  if (v0 <= 0x3F)
  {
    sub_171294(319, &qword_3178F8, &type metadata accessor for BlendMode);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1715CC()
{
  if (!qword_320FC8)
  {
    v0 = sub_263210();
    if (!v1)
    {
      atomic_store(v0, &qword_320FC8);
    }
  }
}

uint64_t sub_17161C(uint64_t *a1, int a2)
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

uint64_t sub_171664(uint64_t result, int a2, int a3)
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

unint64_t sub_1716C8()
{
  result = qword_321008;
  if (!qword_321008)
  {
    sub_2F9C(&qword_320E98, &qword_27E3A0);
    sub_171754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321008);
  }

  return result;
}

unint64_t sub_171754()
{
  result = qword_321010;
  if (!qword_321010)
  {
    sub_2F9C(&qword_320E88, &qword_27E390);
    sub_8E38(&qword_321018, &qword_320E80, &qword_27E388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321010);
  }

  return result;
}

unint64_t sub_171810()
{
  result = qword_321020;
  if (!qword_321020)
  {
    sub_2F9C(&qword_321028, &qword_27E538);
    sub_17189C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321020);
  }

  return result;
}

unint64_t sub_17189C()
{
  result = qword_321030;
  if (!qword_321030)
  {
    sub_2F9C(&qword_321038, &qword_27E540);
    sub_171928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321030);
  }

  return result;
}

unint64_t sub_171928()
{
  result = qword_321040;
  if (!qword_321040)
  {
    sub_2F9C(&qword_321048, &qword_27E548);
    sub_1719B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321040);
  }

  return result;
}

unint64_t sub_1719B4()
{
  result = qword_321050;
  if (!qword_321050)
  {
    sub_2F9C(&qword_321058, &qword_27E550);
    sub_171A6C();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321050);
  }

  return result;
}

unint64_t sub_171A6C()
{
  result = qword_321060;
  if (!qword_321060)
  {
    sub_2F9C(&qword_321068, &qword_27E558);
    sub_171AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321060);
  }

  return result;
}

unint64_t sub_171AF8()
{
  result = qword_321070;
  if (!qword_321070)
  {
    sub_2F9C(&qword_321078, &qword_27E560);
    sub_171B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321070);
  }

  return result;
}

unint64_t sub_171B84()
{
  result = qword_321080;
  if (!qword_321080)
  {
    sub_2F9C(&qword_321088, &qword_27E568);
    sub_8E38(&qword_321090, &qword_321098, &unk_27E570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321080);
  }

  return result;
}

unint64_t sub_171C3C()
{
  result = qword_3210B0;
  if (!qword_3210B0)
  {
    type metadata accessor for InDeterminateProgressViewStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3210B0);
  }

  return result;
}

uint64_t sub_171C94(uint64_t a1)
{
  v2 = type metadata accessor for InDeterminateProgressViewStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_171CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InDeterminateProgressViewStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_171D54()
{
  v1 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = *(v1 + 20);
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_263640();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = *(v3 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_171E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InDeterminateProgressViewStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_171EEC()
{
  v1 = *(type metadata accessor for InDeterminateProgressViewStyle(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_170B6C(v2);
}

uint64_t sub_171F54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for YearInReviewErrorView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_174E90(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t YearInReviewErrorView.init(retry:localizedYear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(type metadata accessor for YearInReviewErrorView() + 24);
  *(a5 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  result = swift_storeEnumTagMultiPayload();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t type metadata accessor for YearInReviewErrorView()
{
  result = qword_3211D0;
  if (!qword_3211D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YearInReviewErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v90 = type metadata accessor for ToolbarButtonStyle();
  v2 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v89 = (&v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_3210F0, &qword_27E620);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = sub_2EF0(&qword_3210F8, &qword_27E628);
  v17 = *(v16 - 8);
  v79 = v16;
  v80 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v92 = &v77 - v19;
  v78 = sub_2EF0(&qword_321100, &qword_27E630);
  v20 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v22 = &v77 - v21;
  v81 = sub_2EF0(&qword_321108, &qword_27E638);
  v23 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v83 = &v77 - v24;
  v84 = sub_2EF0(&qword_321110, &qword_27E640);
  v25 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v85 = &v77 - v26;
  v27 = sub_2EF0(&qword_321118, &qword_27E648);
  v87 = *(v27 - 8);
  v88 = v27;
  v28 = *(v87 + 64);
  __chkstk_darwin(v27);
  v86 = &v77 - v29;
  *v15 = sub_261E50();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v30 = sub_2EF0(&qword_321120, &unk_27E650);
  sub_172A74(v1, &v15[*(v30 + 44)]);
  v31 = sub_2624F0();
  v82 = v1;
  sub_171F54(v11);
  sub_174E90(v11, v7, type metadata accessor for SizeConstants.Environment);
  sub_174360(v7, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v32 = &v15[*(v12 + 36)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v12) = sub_2624C0();
  *(inited + 32) = v12;
  v38 = sub_2624E0();
  *(inited + 33) = v38;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v12)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v38)
  {
    sub_2624D0();
  }

  sub_263550();
  sub_174068();
  sub_262D00();
  sub_8E80(v15, &qword_3210F0, &qword_27E620);
  v39 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v41 = v40;
  v42 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v42)
  {
    v42 = sub_262FE0();
  }

  v43 = v42;
  v44 = sub_262500();
  (*(v80 + 32))(v22, v92, v79);
  v45 = &v22[*(v78 + 36)];
  *v45 = v43;
  v45[8] = v44;
  *(v45 + 2) = v39;
  *(v45 + 3) = v41;
  v46 = sub_263550();
  v48 = v47;
  v49 = v22;
  v51 = *(v82 + 16);
  v50 = *(v82 + 24);

  v52 = sub_2624F0();
  sub_171F54(v11);
  sub_174E90(v11, v7, type metadata accessor for SizeConstants.Environment);
  sub_174360(v7, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  LOBYTE(v99[0]) = 0;
  *&v94 = v51;
  *(&v94 + 1) = v50;
  LOBYTE(v95) = v52;
  *(&v95 + 1) = v53;
  *&v96 = v55;
  *(&v96 + 1) = v57;
  *&v97 = v59;
  BYTE8(v97) = 0;
  *&v98 = v46;
  *(&v98 + 1) = v48;
  v61 = v83;
  sub_22148(v49, v83, &qword_321100, &qword_27E630);
  v62 = (v61 + *(v81 + 36));
  v63 = v97;
  v62[2] = v96;
  v62[3] = v63;
  v62[4] = v98;
  v64 = v95;
  *v62 = v94;
  v62[1] = v64;
  v99[0] = v51;
  v99[1] = v50;
  v100 = v52;
  v101 = v54;
  v102 = v56;
  v103 = v58;
  v104 = v60;
  v105 = 0;
  v106 = v46;
  v107 = v48;
  sub_8198(&v94, &v93, &qword_321140, &qword_27E668);
  sub_8E80(v99, &qword_321140, &qword_27E668);
  v65 = v85;
  sub_22148(v61, v85, &qword_321108, &qword_27E638);
  KeyPath = swift_getKeyPath();
  v67 = v89;
  *v89 = KeyPath;
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  sub_174128();
  sub_175050(&qword_321168, type metadata accessor for ToolbarButtonStyle);
  v68 = v86;
  sub_262A60();
  sub_174360(v67, type metadata accessor for ToolbarButtonStyle);
  sub_8E80(v65, &qword_321110, &qword_27E640);
  v69 = swift_getKeyPath();
  v70 = sub_2EF0(&qword_321170, &unk_27E6A0);
  v71 = v91;
  v72 = (v91 + *(v70 + 36));
  v73 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v74 = enum case for ColorScheme.dark(_:);
  v75 = sub_261180();
  (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
  *v72 = v69;
  return (*(v87 + 32))(v71, v68, v88);
}

uint64_t sub_172A74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v165 = a1;
  v174 = a2;
  v171 = sub_261E40();
  v170 = *(v171 - 8);
  v2 = *(v170 + 64);
  __chkstk_darwin(v171);
  v169 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for YearInReviewErrorView();
  v162 = *(v4 - 8);
  v5 = *(v162 + 64);
  __chkstk_darwin(v4 - 8);
  v163 = v6;
  v164 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2EF0(&qword_321218, &qword_27E728);
  v7 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v167 = &v158 - v8;
  v168 = sub_2EF0(&qword_321220, &qword_27E730);
  v9 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v173 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v198 = &v158 - v12;
  v201 = sub_2EF0(&qword_321228, &qword_27E738);
  v13 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v188 = &v158 - v14;
  v159 = sub_2EF0(&qword_321230, &qword_27E740);
  v15 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v172 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v197 = &v158 - v18;
  v202 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v19 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v187 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v199 = &v158 - v22;
  v191 = sub_261690();
  v210 = *(v191 - 8);
  v23 = *(v210 + 64);
  __chkstk_darwin(v191);
  v208 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v207 = &v158 - v26;
  v200 = sub_2EF0(&qword_3174E8, &qword_269970);
  v27 = *(*(v200 - 8) + 64);
  __chkstk_darwin(v200);
  v186 = &v158 - v28;
  v29 = sub_2EF0(&qword_318458, &unk_26B270);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v195 = &v158 - v31;
  v32 = sub_264010();
  v33 = *(v32 - 8);
  v34 = v33[8];
  __chkstk_darwin(v32);
  v36 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_263FA0();
  v37 = *(v206 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v206);
  v40 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_260BD0();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v158 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v45 = *(*(v203 - 8) + 64);
  __chkstk_darwin(v203);
  v47 = &v158 - v46;
  v48 = sub_2EF0(&qword_321238, &qword_27E748);
  v193 = *(v48 - 8);
  v194 = v48;
  v49 = *(v193 + 64);
  __chkstk_darwin(v48);
  v51 = &v158 - v50;
  v192 = sub_2EF0(&qword_321240, &qword_27E750);
  v190 = *(v192 - 8);
  v52 = *(v190 + 64);
  __chkstk_darwin(v192);
  v189 = &v158 - v53;
  v204 = sub_2EF0(&qword_321248, &qword_27E758);
  v54 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v205 = &v158 - v55;
  v161 = sub_2EF0(&qword_321250, &qword_27E760);
  v160 = *(v161 - 8);
  v56 = *(v160 + 64);
  __chkstk_darwin(v161);
  v196 = &v158 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v158 - v59;
  sub_263F90();
  v61 = v33[13];
  v178 = enum case for LocalizerLookupStrategy.default(_:);
  v179 = v33 + 13;
  v177 = v61;
  v61(v36);
  sub_260B80();
  v62 = v33[1];
  v183 = v36;
  v185 = v32;
  v63 = v32;
  v64 = v203;
  v184 = v33 + 1;
  v176 = v62;
  v62(v36, v63);
  v65 = *(v37 + 8);
  v181 = v40;
  v182 = v37 + 8;
  v175 = v65;
  v65(v40, v206);
  v180 = v44;
  sub_260B10();
  v66 = sub_262690();
  KeyPath = swift_getKeyPath();
  v68 = &v47[*(v64 + 36)];
  *v68 = KeyPath;
  v68[1] = v66;
  v69 = sub_93534();
  sub_262D70();
  sub_8E80(v47, &qword_318470, &qword_26FBB0);
  v70 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
  v209 = v60;
  if (v70)
  {
    v71 = sub_2625C0();
    v72 = v195;
    (*(*(v71 - 8) + 56))(v195, 1, 1, v71);
  }

  else
  {
    v73 = enum case for Font.Design.serif (_:);
    v74 = sub_2625C0();
    v75 = *(v74 - 8);
    v72 = v195;
    (*(v75 + 104))(v195, v73, v74);
    (*(v75 + 56))(v72, 0, 1, v74);
  }

  v211 = v64;
  v212 = v69;
  swift_getOpaqueTypeConformance2();
  v76 = v189;
  v77 = v194;
  sub_262A10();
  sub_8E80(v72, &qword_318458, &unk_26B270);
  (*(v193 + 8))(v51, v77);
  v78 = swift_getKeyPath();
  v79 = v205;
  (*(v190 + 32))(v205, v76, v192);
  v80 = &v79[*(v204 + 36)];
  *v80 = v78;
  *(v80 + 1) = 3;
  v80[16] = 0;
  v81 = v210;
  v82 = v210 + 104;
  v83 = *(v210 + 104);
  v84 = v207;
  LODWORD(v194) = enum case for DynamicTypeSize.small(_:);
  v85 = v191;
  (v83)(v207);
  v86 = v208;
  LODWORD(v193) = enum case for DynamicTypeSize.accessibility1(_:);
  v195 = v83;
  (v83)(v208);
  v87 = sub_175050(&qword_317538, &type metadata accessor for DynamicTypeSize);
  result = sub_264380();
  v89 = v202;
  if (result)
  {
    v190 = v82;
    v192 = v87;
    v90 = *(v81 + 32);
    v91 = v199;
    v90(v199, v84, v85);
    v90((v91 + *(v89 + 48)), v86, v85);
    v92 = v187;
    sub_8198(v91, v187, &qword_3174E0, &qword_26B310);
    v93 = *(v89 + 48);
    v94 = v186;
    v90(v186, v92, v85);
    v95 = v85;
    v96 = *(v81 + 8);
    v210 = v81 + 8;
    v96(v92 + v93, v95);
    sub_13CF00(v91, v92);
    v97 = v94 + *(v200 + 36);
    v98 = v92 + *(v89 + 48);
    v158 = v90;
    v90(v97, v98, v95);
    v189 = v96;
    v96(v92, v95);
    sub_174A40();
    v99 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v100 = v205;
    sub_262B70();
    sub_8E80(v94, &qword_3174E8, &qword_269970);
    sub_8E80(v100, &qword_321248, &qword_27E758);
    v101 = v181;
    sub_263F90();
    v102 = v183;
    v103 = v185;
    v177(v183, v178, v185);
    sub_260B80();
    v176(v102, v103);
    v104 = v101;
    v105 = v207;
    v175(v104, v206);
    v106 = v188;
    sub_260B10();
    v107 = sub_262580();
    v108 = swift_getKeyPath();
    v109 = (v106 + *(v203 + 36));
    *v109 = v108;
    v109[1] = v107;
    v110 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v111 = swift_getKeyPath();
    v112 = (v106 + *(sub_2EF0(&qword_318460, &qword_26FBA0) + 36));
    *v112 = v111;
    v112[1] = v110;
    v113 = v208;
    v114 = swift_getKeyPath();
    v115 = v106 + *(sub_2EF0(&qword_321260, &qword_27E840) + 36);
    *v115 = v114;
    *(v115 + 8) = 1;
    v116 = swift_getKeyPath();
    v117 = v106 + *(v201 + 36);
    *v117 = v116;
    *(v117 + 8) = 3;
    *(v117 + 16) = 0;
    v118 = v195;
    (v195)(v105, v194, v95);
    (v118)(v113, v193, v95);
    result = sub_264380();
    if (result)
    {
      v119 = v199;
      v207 = v99;
      v120 = v158;
      v158(v199, v105, v95);
      v121 = v202;
      v120(v119 + *(v202 + 48), v113, v95);
      sub_8198(v119, v92, &qword_3174E0, &qword_26B310);
      v122 = *(v121 + 48);
      v120(v94, v92, v95);
      v123 = v92 + v122;
      v124 = v189;
      (v189)(v123, v95);
      sub_13CF00(v119, v92);
      v120(v94 + *(v200 + 36), (v92 + *(v121 + 48)), v95);
      v124(v92, v95);
      sub_174B88();
      v125 = v197;
      sub_262B70();
      sub_8E80(v94, &qword_3174E8, &qword_269970);
      sub_8E80(v106, &qword_321228, &qword_27E738);
      v126 = *(v159 + 36);
      v127 = enum case for BlendMode.plusLighter(_:);
      v128 = sub_263640();
      (*(*(v128 - 8) + 104))(v125 + v126, v127, v128);
      v129 = v165;
      v130 = v164;
      sub_174CF8(v165, v164);
      v131 = (*(v162 + 80) + 16) & ~*(v162 + 80);
      v132 = swift_allocObject();
      v133 = sub_174E90(v130, v132 + v131, type metadata accessor for YearInReviewErrorView);
      __chkstk_darwin(v133);
      *(&v158 - 2) = v129;
      sub_260B00();
      sub_175050(&qword_3184E0, &type metadata accessor for LocalizedText);
      v134 = v167;
      sub_263230();
      v135 = (v134 + *(v166 + 36));
      v136 = *(sub_2EF0(&qword_321278, &qword_27E848) + 28);
      v137 = enum case for ControlSize.regular(_:);
      v138 = sub_261190();
      (*(*(v138 - 8) + 104))(v135 + v136, v137, v138);
      *v135 = swift_getKeyPath();
      v139 = v169;
      sub_261E30();
      sub_174F6C();
      sub_175050(&qword_3212A0, &type metadata accessor for BorderedButtonStyle);
      v140 = v198;
      v141 = v171;
      sub_262A50();
      (*(v170 + 8))(v139, v141);
      sub_8E80(v134, &qword_321218, &qword_27E728);
      v142 = v140;
      v143 = (v140 + *(sub_2EF0(&qword_3212A8, &unk_27E888) + 36));
      v144 = v143 + *(sub_2EF0(&qword_31BC20, &unk_271B10) + 28);
      sub_261850();
      *v143 = swift_getKeyPath();
      v145 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      v146 = swift_getKeyPath();
      v147 = (v140 + *(v168 + 36));
      *v147 = v146;
      v147[1] = v145;
      v148 = v160;
      v149 = *(v160 + 16);
      v150 = v196;
      v151 = v161;
      v149(v196, v209, v161);
      v152 = v172;
      sub_8198(v125, v172, &qword_321230, &qword_27E740);
      v153 = v173;
      sub_8198(v142, v173, &qword_321220, &qword_27E730);
      v154 = v174;
      *v174 = 0;
      *(v154 + 8) = 1;
      v155 = sub_2EF0(&qword_3212B0, &unk_27E8F8);
      v149(v154 + v155[12], v150, v151);
      sub_8198(v152, v154 + v155[16], &qword_321230, &qword_27E740);
      sub_8198(v153, v154 + v155[20], &qword_321220, &qword_27E730);
      v156 = v154 + v155[24];
      *v156 = 0;
      v156[8] = 1;
      sub_8E80(v198, &qword_321220, &qword_27E730);
      sub_8E80(v197, &qword_321230, &qword_27E740);
      v157 = *(v148 + 8);
      v157(v209, v151);
      sub_8E80(v153, &qword_321220, &qword_27E730);
      sub_8E80(v152, &qword_321230, &qword_27E740);
      return (v157)(v196, v151);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_174068()
{
  result = qword_321128;
  if (!qword_321128)
  {
    sub_2F9C(&qword_3210F0, &qword_27E620);
    sub_8E38(&qword_321130, &qword_321138, &qword_27E660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321128);
  }

  return result;
}

unint64_t sub_174128()
{
  result = qword_321148;
  if (!qword_321148)
  {
    sub_2F9C(&qword_321110, &qword_27E640);
    sub_1741B4();
    sub_1670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321148);
  }

  return result;
}

unint64_t sub_1741B4()
{
  result = qword_321150;
  if (!qword_321150)
  {
    sub_2F9C(&qword_321108, &qword_27E638);
    sub_17426C();
    sub_8E38(&qword_321160, &qword_321140, &qword_27E668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321150);
  }

  return result;
}

unint64_t sub_17426C()
{
  result = qword_321158;
  if (!qword_321158)
  {
    sub_2F9C(&qword_321100, &qword_27E630);
    sub_2F9C(&qword_3210F0, &qword_27E620);
    sub_174068();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31F858, &qword_31F860, &qword_27AE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321158);
  }

  return result;
}

uint64_t sub_174360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1743DC()
{
  v0 = sub_264010();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_263FA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_260BD0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_263F90();
  (*(v1 + 104))(v4, enum case for LocalizerLookupStrategy.default(_:), v0);
  sub_260B80();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return sub_260B10();
}

uint64_t sub_174614(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1746E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_174794()
{
  sub_16D28();
  if (v0 <= 0x3F)
  {
    sub_3E754();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_174824()
{
  result = qword_321210;
  if (!qword_321210)
  {
    sub_2F9C(&qword_321170, &unk_27E6A0);
    sub_2F9C(&qword_321110, &qword_27E640);
    type metadata accessor for ToolbarButtonStyle();
    sub_174128();
    sub_175050(&qword_321168, type metadata accessor for ToolbarButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321210);
  }

  return result;
}

uint64_t sub_174970(uint64_t a1)
{
  v2 = sub_261860();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_261AF0();
}

unint64_t sub_174A40()
{
  result = qword_321258;
  if (!qword_321258)
  {
    sub_2F9C(&qword_321248, &qword_27E758);
    sub_2F9C(&qword_321238, &qword_27E748);
    sub_2F9C(&qword_318470, &qword_26FBB0);
    sub_93534();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321258);
  }

  return result;
}

unint64_t sub_174B88()
{
  result = qword_321268;
  if (!qword_321268)
  {
    sub_2F9C(&qword_321228, &qword_27E738);
    sub_174C40();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321268);
  }

  return result;
}

unint64_t sub_174C40()
{
  result = qword_321270;
  if (!qword_321270)
  {
    sub_2F9C(&qword_321260, &qword_27E840);
    sub_9347C();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321270);
  }

  return result;
}

uint64_t sub_174CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YearInReviewErrorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174D5C()
{
  v1 = (type metadata accessor for YearInReviewErrorView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = (v3 + v1[8]);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(&v6[v7], v8);
  }

  else
  {
    v9 = *v6;
  }

  return swift_deallocObject();
}

uint64_t sub_174E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_174EF8()
{
  v1 = *(type metadata accessor for YearInReviewErrorView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_174F6C()
{
  result = qword_321280;
  if (!qword_321280)
  {
    sub_2F9C(&qword_321218, &qword_27E728);
    sub_8E38(&qword_321288, &qword_321290, &qword_27E880);
    sub_8E38(&qword_321298, &qword_321278, &qword_27E848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321280);
  }

  return result;
}

uint64_t sub_175050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1750C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261C60();
  *a1 = result;
  return result;
}

uint64_t sub_1750EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_261C70();
}

uint64_t NothingToReviewFrameViewModel.init(localizedYear:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for NothingToReviewFrameViewModel(0) + 20);
  v7 = sub_260550();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1751BC@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v77 = sub_260290();
  v1 = *(v77 - 8);
  v2 = v1[8];
  __chkstk_darwin(v77);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v63 - v6;
  v8 = sub_264410();
  v63 = v8;
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  sub_2643A0();
  sub_260260();
  v16 = v9[2];
  v81 = v9 + 2;
  v83 = v16;
  v16(v12, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v85 = ObjCClassFromMetadata;
  v18 = objc_opt_self();
  v80 = v18;
  v19 = [v18 bundleForClass:ObjCClassFromMetadata];
  v78 = v1[2];
  v86 = v1 + 2;
  v74 = v4;
  v20 = v77;
  v78(v4, v7, v77);
  v21 = sub_264490();
  v71 = v22;
  v72 = v21;
  v84 = v1[1];
  v84(v7, v20);
  v79 = v1 + 1;
  v23 = v9[1];
  v24 = v63;
  v23(v15, v63);
  v82 = v23;
  v75 = v9 + 1;
  sub_2643A0();
  sub_260260();
  v65 = v12;
  v83(v12, v15, v24);
  v25 = [v18 bundleForClass:v85];
  v26 = v74;
  v27 = v77;
  v78(v74, v7, v77);
  v28 = sub_264490();
  v68 = v29;
  v69 = v28;
  v84(v7, v27);
  v23(v15, v24);
  sub_2EF0(&qword_320C98, &unk_27EAF0);
  v30 = type metadata accessor for BulletPointStack.Bullet(0);
  v31 = *(v30 - 8);
  v76 = v30 - 8;
  v66 = *(v31 + 72);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v67 = v33;
  *(v33 + 16) = xmmword_269100;
  v34 = (v33 + v32);
  v64 = 0x80000000002931F0;
  sub_2643A0();
  v35 = v7;
  sub_260260();
  v36 = v65;
  v83(v65, v15, v24);
  v37 = [v80 bundleForClass:v85];
  v38 = v7;
  v39 = v78;
  v78(v26, v38, v27);
  v40 = sub_264490();
  v42 = v41;
  v84(v35, v27);
  v82(v15, v24);
  v43 = sub_1759A8(v70);
  v44 = v64;
  *v34 = 0xD000000000000010;
  v34[1] = v44;
  v34[2] = v40;
  v34[3] = v42;
  v34[4] = v43;
  v34[5] = v45;
  v46 = v34 + *(v76 + 36);
  sub_2601D0();
  v47 = (v34 + v66);
  sub_2643A0();
  sub_260260();
  v48 = v24;
  v83(v36, v15, v24);
  v49 = [v80 bundleForClass:v85];
  v50 = v74;
  v51 = v77;
  v39(v74, v35, v77);
  v70 = sub_264490();
  v66 = v52;
  v84(v35, v51);
  v82(v15, v48);
  sub_2643A0();
  sub_260260();
  v83(v36, v15, v48);
  v53 = [v80 bundleForClass:v85];
  v78(v50, v35, v51);
  v54 = sub_264490();
  v56 = v55;
  v84(v35, v51);
  v82(v15, v48);
  *v47 = 0x7261646E656C6163;
  v47[1] = 0xE800000000000000;
  v57 = v66;
  v47[2] = v70;
  v47[3] = v57;
  v47[4] = v54;
  v47[5] = v56;
  v58 = v47 + *(v76 + 36);
  result = sub_2601D0();
  v60 = v73;
  v61 = v71;
  *v73 = v72;
  v60[1] = v61;
  v62 = v68;
  v60[2] = v69;
  v60[3] = v62;
  v60[4] = v67;
  return result;
}

uint64_t sub_1759A8(uint64_t *a1)
{
  v2 = sub_260290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v10 = sub_264410();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v25[-v16];
  sub_2643A0();
  sub_260260();
  (*(v11 + 16))(v14, v17, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v6, v9, v2);
  sub_264490();
  (*(v3 + 8))(v9, v2);
  (*(v11 + 8))(v17, v10);
  sub_2EF0(&qword_316420, &qword_2681A0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_267D30;
  v22 = *a1;
  v21 = a1[1];
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_6C7C8();
  *(v20 + 32) = v22;
  *(v20 + 40) = v21;

  v23 = sub_264430();

  return v23;
}

uint64_t NothingToReviewFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NothingToReviewFrame(0) + 20);
  v4 = *(type metadata accessor for NothingToReviewFrameViewModel(0) + 20);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_175DD4(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_175DD4(&qword_317680, &type metadata accessor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t sub_175DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NothingToReviewFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v4)
  {
    v4 = sub_262FE0();
  }

  v5 = v4;
  v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  *a2 = v5;
  v7 = enum case for ColorScheme.dark(_:);
  v8 = sub_261180();
  v9 = *(v8 - 8);
  (*(v9 + 104))(a2 + v6, v7, v8);
  (*(v9 + 56))(a2 + v6, 0, 1, v8);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for NothingToReviewFrame(0);
  return sub_176A88(a1, a2 + *(v10 + 20), type metadata accessor for NothingToReviewFrameViewModel);
}

uint64_t NothingToReviewFrame.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_261E50();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_2EF0(&qword_3212B8, &qword_27E908);
  sub_17603C(v1, (a1 + *(v3 + 44)));
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_2EF0(&qword_3212C0, &unk_27E940) + 36));
  v6 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v7 = enum case for ColorScheme.dark(_:);
  v8 = sub_261180();
  result = (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  return result;
}

uint64_t sub_17603C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for BulletPointStack(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2EF0(&qword_321410, &qword_27EA30);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  __chkstk_darwin(v17);
  v19 = v33 - v18;
  v20 = (a1 + *(type metadata accessor for NothingToReviewFrame(0) + 20));
  v22 = *v20;
  v21 = v20[1];

  sub_1751BC(v33);
  *v8 = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v23 = v8 + v5[7];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v5[8];
  *(v8 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v25 = v8 + v5[9];
  v26 = v33[1];
  *v25 = v33[0];
  *(v25 + 1) = v26;
  *(v25 + 4) = v34;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_176A88(v8, v16, type metadata accessor for BulletPointStack);
  v27 = &v16[*(v10 + 44)];
  v28 = v40;
  *(v27 + 4) = v39;
  *(v27 + 5) = v28;
  *(v27 + 6) = v41;
  v29 = v36;
  *v27 = v35;
  *(v27 + 1) = v29;
  v30 = v38;
  *(v27 + 2) = v37;
  *(v27 + 3) = v30;
  sub_176AF0(v16, v19);
  sub_176B60(v19, v13);
  *a2 = v22;
  a2[1] = v21;
  v31 = sub_2EF0(qword_321418, &qword_27EAE8);
  sub_176B60(v13, a2 + *(v31 + 48));

  sub_176BD0(v19);
  sub_176BD0(v13);
}

uint64_t sub_176334(uint64_t a1)
{
  result = sub_175DD4(&qword_3212C8, type metadata accessor for NothingToReviewFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_17638C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for NothingToReviewFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_175DD4(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_175DD4(&qword_317680, &type metadata accessor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_176488(uint64_t a1)
{
  result = sub_175DD4(&qword_3212D0, type metadata accessor for NothingToReviewFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_176510(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1765D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_176674()
{
  result = sub_260550();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_176704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageBackground(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NothingToReviewFrameViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_176808(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PageBackground(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NothingToReviewFrameViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_176904()
{
  result = type metadata accessor for PageBackground(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NothingToReviewFrameViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_17698C()
{
  result = qword_3213F8;
  if (!qword_3213F8)
  {
    sub_2F9C(&qword_3212C0, &unk_27E940);
    sub_8E38(&qword_321400, &qword_321408, &qword_27EA28);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3213F8);
  }

  return result;
}

uint64_t sub_176A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_176AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_321410, &qword_27EA30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_176B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_321410, &qword_27EA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_176BD0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_321410, &qword_27EA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_176C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for GridItemInfobarView();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_176D24(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_263260();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v15[-v10];
  v16 = v3;
  v17 = v2;
  v18 = v1;
  sub_261D30();
  sub_263250();
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1609C(v11, v4, WitnessTable);
  return (v13)(v11, v4);
}

uint64_t sub_176F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for GridItemInfobarView();
  (*(a3 + 24))(*(a1 + *(v14 + 36)), *(a1 + *(v14 + 36) + 8), a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1609C(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v7 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_1609C(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_1770CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_263260();

  return swift_getWitnessTable();
}

uint64_t static GridItemViewModel.gridPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = sub_2609A0();
  v7 = v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = sub_2609B0();
  v11 = v10;
  v21 = &type metadata for GridItemMetadataTitleWithSubtitle;
  v22 = sub_2004C();
  v12 = swift_allocObject();
  v20[0] = v12;
  v12[1].i64[0] = v5;
  v12[1].i64[1] = v7;
  v12[2].i64[0] = v9;
  v12[2].i64[1] = v11;
  v12[3] = vdupq_n_s64(2uLL);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  sub_34A0(v20, a2, &qword_316BC0, &qword_2707C0);
  *(a2 + 40) = 0;
  v21 = &type metadata for GridItemInfobarPricePill;
  v22 = sub_1773E4();
  v20[0] = swift_allocObject();
  sub_30CC(a1, v20[0] + 16);
  sub_30CC(a1, a2 + 96);
  sub_30CC(a1, v19);
  v13 = type metadata accessor for GridItemViewModel();
  CardInfo.init(with:alwaysPresentNewCardSet:)(v19, 1, a2 + v13[8]);
  v14 = v13[12];
  v15 = sub_260570();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = v13[11];
  v17 = sub_2605C0();
  (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  *(a2 + 80) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 48) = 0u;
  result = sub_34A0(v20, a2 + 48, &qword_316D48, &unk_28CD20);
  *(a2 + 88) = 0;
  *(a2 + v13[9]) = 0;
  *(a2 + v13[10]) = 0;
  return result;
}

uint64_t sub_1773A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_1773E4()
{
  result = qword_3214A0;
  if (!qword_3214A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3214A0);
  }

  return result;
}

uint64_t sub_177438()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_177470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  v4 = v3 - 8;
  v50 = *(v3 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v3);
  v51 = v6;
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_321668, &qword_27EED8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v49 = sub_2EF0(&qword_321670, &qword_27EEE0);
  v16 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v18 = &v48 - v17;
  v19 = sub_2EF0(&qword_321678, &qword_27EEE8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v48 - v21;
  sub_2622A0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v23 = &v15[*(sub_2EF0(&qword_318350, &qword_26B1C0) + 36)];
  v24 = v55;
  *v23 = v54;
  *(v23 + 1) = v24;
  *(v23 + 2) = v56;
  v25 = sub_1778CC();
  v26 = sub_262500();
  v27 = &v15[*(v12 + 44)];
  *v27 = v25;
  v27[8] = v26;
  LOBYTE(v12) = sub_2622B0();
  v28 = v2 + *(v4 + 28);
  sub_404B8(v10);
  if (v12)
  {
    v29 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    v29 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v30 = v29;
  sub_178DEC(v10, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  sub_22148(v15, v18, &qword_321668, &qword_27EED8);
  v32 = &v18[*(v49 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = &v22[*(v19 + 36)];
  v34 = *(sub_2617E0() + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = sub_261DD0();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #6.0 }

  *v33 = _Q0;
  *&v33[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_22148(v18, v22, &qword_321670, &qword_27EEE0);
  v42 = v52;
  sub_179828(v2, v52, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
  v43 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v44 = swift_allocObject();
  sub_179A28(v42, v44 + v43, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
  v45 = v53;
  sub_22148(v22, v53, &qword_321678, &qword_27EEE8);
  result = sub_2EF0(&qword_321680, &unk_27EEF0);
  v47 = (v45 + *(result + 36));
  *v47 = sub_179A90;
  v47[1] = v44;
  return result;
}

uint64_t sub_1778CC()
{
  v1 = v0;
  v2 = type metadata accessor for ColorConstants(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_261180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v25[-v12];
  v14 = *(v0 + 8);
  v25[16] = *v0;
  v26 = v14;
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  if (v25[15] != 1)
  {
    return sub_262FA0();
  }

  v15 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  v16 = v0 + *(v15 + 24);
  sub_40830(v13);
  (*(v7 + 104))(v10, enum case for ColorScheme.dark(_:), v6);
  v17 = sub_261170();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v18(v13, v6);
  v19 = v1 + *(v15 + 20);
  sub_404B8(v5);
  v20 = objc_opt_self();
  if (v17)
  {
    v21 = [v20 tertiarySystemFillColor];
  }

  else
  {
    v21 = [v20 quaternarySystemFillColor];
  }

  v23 = v21;
  v24 = sub_263070();
  sub_178DEC(v5, type metadata accessor for ColorConstants);
  return v24;
}

uint64_t sub_177B28@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(0);
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v60 = v5;
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2634E0();
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v10 = sub_2EF0(&qword_318350, &qword_26B1C0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v54 = sub_2EF0(&qword_321648, &qword_27EE78);
  v15 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v17 = &v53 - v16;
  v56 = sub_2EF0(&qword_321650, &qword_27EE80);
  v18 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v20 = &v53 - v19;
  v55 = sub_2EF0(&qword_321658, &qword_27EE88);
  v21 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v23 = &v53 - v22;
  sub_2622A0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v24 = &v14[*(v11 + 44)];
  v25 = v67;
  *v24 = v66;
  *(v24 + 1) = v25;
  *(v24 + 2) = v68;
  v26 = v1;
  v27 = *(v1 + 8);
  LOBYTE(v64) = *v1;
  v65 = v27;
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  if (v63 == 1)
  {
    if (sub_2622B0())
    {
      sub_2634B0();
    }

    else
    {
      sub_2634C0();
    }

    v29 = v57;
    v28 = sub_2613B0();
  }

  else
  {
    v64 = sub_262FA0();
    v28 = sub_2613B0();
    v29 = v57;
  }

  v30 = sub_262500();
  sub_22148(v14, v17, &qword_318350, &qword_26B1C0);
  v31 = &v17[*(v54 + 36)];
  *v31 = v28;
  v31[8] = v30;
  v32 = sub_2622B0();
  v33 = v1 + *(v58 + 20);
  sub_404B8(v29);
  v34 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  if ((v32 & 1) == 0)
  {
    v35 = sub_263000();

    v34 = v35;
  }

  sub_178DEC(v29, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  sub_22148(v17, v20, &qword_321648, &qword_27EE78);
  v37 = &v20[*(v56 + 36)];
  *v37 = KeyPath;
  v37[1] = v34;
  v38 = &v23[*(v55 + 36)];
  v39 = *(sub_2617E0() + 20);
  v40 = enum case for RoundedCornerStyle.continuous(_:);
  v41 = sub_261DD0();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #6.0 }

  *v38 = _Q0;
  *&v38[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_22148(v20, v23, &qword_321650, &qword_27EE80);
  v47 = v61;
  sub_179828(v26, v61, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
  v48 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v49 = swift_allocObject();
  sub_179A28(v47, v49 + v48, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
  v50 = v62;
  sub_22148(v23, v62, &qword_321658, &qword_27EE88);
  result = sub_2EF0(&qword_321660, &qword_27EED0);
  v52 = (v50 + *(result + 36));
  *v52 = sub_179810;
  v52[1] = v49;
  return result;
}

uint64_t sub_1780F8(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  return sub_2631F0();
}

uint64_t ShelfGridPaddleButtonView.action.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

_BYTE *ShelfGridPaddleButtonView.init(direction:context:action:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = *result;
  *(a5 + 1) = v5;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t sub_1781AC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_261D30();
  sub_178268(a1 & 1, &v14);
  v13 = v14;
  v5 = v15;
  v6 = v16;
  v7 = sub_2624F0();
  result = sub_2610C0();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v13;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
  *(a2 + 96) = 0;
  return result;
}

double sub_178268@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  if (a1)
  {
    v8 = sub_2630B0();
    v9 = sub_2625C0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = sub_262670();
    sub_179B10(v7);
    KeyPath = swift_getKeyPath();
    v19 = v8;
    v20 = KeyPath;
    v21 = v10;
    v22 = 1;
  }

  else
  {
    v12 = sub_2630B0();
    v13 = sub_2625C0();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = sub_262670();
    sub_179B10(v7);
    v15 = swift_getKeyPath();
    v19 = v12;
    v20 = v15;
    v21 = v14;
    v22 = 0;
  }

  sub_2EF0(&qword_317578, &unk_269A20);
  sub_3076C();
  sub_261F80();
  result = *&v23;
  v17 = v24;
  v18 = v25;
  *a2 = v23;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  return result;
}

uint64_t ShelfGridPaddleButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v49 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(0);
  v2 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2EF0(&qword_3214A8, &qword_27EB80);
  v44 = *(v50 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin(v50);
  v43 = &v42 - v6;
  v45 = sub_2EF0(&qword_3214B0, &qword_27EB88);
  v7 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = &v42 - v8;
  v46 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  v9 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_3214B8, &qword_27EB90);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v47 = sub_2EF0(&qword_3214C0, &qword_27EB98);
  v17 = *(v47 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v47);
  v20 = &v42 - v19;
  LOBYTE(v19) = *v1;
  v21 = *(v1 + 1);
  v23 = *(v1 + 8);
  v22 = *(v1 + 16);
  v52 = v19;
  if (v21)
  {
    v53 = 1;
    v54 = v23;
    v55 = v22;

    sub_2EF0(&qword_3214C8, &qword_27EBA0);
    sub_178CC0();
    sub_263230();
    v60 = 0;
    sub_2631D0();
    v24 = v57;
    *v4 = v56;
    *(v4 + 1) = v24;
    v25 = v49;
    v26 = *(v49 + 20);
    *&v4[v26] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v27 = sub_8E38(&qword_3214E8, &qword_3214B8, &qword_27EB90);
    v28 = sub_178D7C(&qword_3214F0, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
    v29 = v43;
    sub_262A60();
    sub_178DEC(v4, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
    (*(v13 + 8))(v16, v12);
    v30 = v44;
    v31 = v50;
    (*(v44 + 16))(v48, v29, v50);
    swift_storeEnumTagMultiPayload();
    v32 = sub_178D7C(&qword_3214F8, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
    v56 = v12;
    v57 = v46;
    v58 = v27;
    v59 = v32;
    swift_getOpaqueTypeConformance2();
    v56 = v12;
    v57 = v25;
    v58 = v27;
    v59 = v28;
    swift_getOpaqueTypeConformance2();
    sub_261F80();
    return (*(v30 + 8))(v29, v31);
  }

  else
  {
    v53 = 0;
    v54 = v23;
    v55 = v22;

    sub_2EF0(&qword_3214C8, &qword_27EBA0);
    sub_178CC0();
    sub_263230();
    v60 = 0;
    sub_2631D0();
    v34 = v57;
    *v11 = v56;
    *(v11 + 1) = v34;
    v35 = v46;
    v36 = *(v46 + 20);
    *&v11[v36] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v37 = *(v35 + 24);
    *&v11[v37] = swift_getKeyPath();
    sub_2EF0(&qword_316DC0, &qword_2691C0);
    swift_storeEnumTagMultiPayload();
    v38 = sub_8E38(&qword_3214E8, &qword_3214B8, &qword_27EB90);
    v39 = sub_178D7C(&qword_3214F8, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
    sub_262A60();
    sub_178DEC(v11, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
    (*(v13 + 8))(v16, v12);
    v40 = v47;
    (*(v17 + 16))(v48, v20, v47);
    swift_storeEnumTagMultiPayload();
    v56 = v12;
    v57 = v35;
    v58 = v38;
    v59 = v39;
    swift_getOpaqueTypeConformance2();
    v41 = sub_178D7C(&qword_3214F0, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
    v56 = v12;
    v57 = v49;
    v58 = v38;
    v59 = v41;
    swift_getOpaqueTypeConformance2();
    sub_261F80();
    return (*(v17 + 8))(v20, v40);
  }
}

unint64_t sub_178CC0()
{
  result = qword_3214D0;
  if (!qword_3214D0)
  {
    sub_2F9C(&qword_3214C8, &qword_27EBA0);
    sub_8E38(&qword_3214D8, &qword_3214E0, &qword_27EBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3214D0);
  }

  return result;
}

uint64_t sub_178D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_178DC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1781AC(*(v1 + 16), a1);
}

uint64_t sub_178DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_178E50()
{
  result = qword_321500;
  if (!qword_321500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321500);
  }

  return result;
}

unint64_t sub_178EA8()
{
  result = qword_321508;
  if (!qword_321508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321508);
  }

  return result;
}

unint64_t sub_178F50()
{
  result = qword_321510;
  if (!qword_321510)
  {
    sub_2F9C(&qword_321518, &unk_27EDB0);
    sub_2F9C(&qword_3214B8, &qword_27EB90);
    type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(255);
    sub_8E38(&qword_3214E8, &qword_3214B8, &qword_27EB90);
    sub_178D7C(&qword_3214F8, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(255);
    sub_178D7C(&qword_3214F0, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321510);
  }

  return result;
}

uint64_t sub_179108(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_2EF0(&qword_316F68, &unk_269C50);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_2EF0(&qword_316F70, &unk_2693C0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_179264(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316F70, &unk_2693C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1793A0()
{
  sub_1715CC();
  if (v0 <= 0x3F)
  {
    sub_4BC68(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v1 <= 0x3F)
    {
      sub_4BC68(319, &qword_316FF0, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_179488(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_2EF0(&qword_316F68, &unk_269C50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_179564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2EF0(&qword_316F68, &unk_269C50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_179614()
{
  sub_1715CC();
  if (v0 <= 0x3F)
  {
    sub_4BC68(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1796F4()
{
  v1 = (type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = v1[7];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_261180();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  return swift_deallocObject();
}

uint64_t sub_179828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_179890()
{
  v1 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = *(v1 + 20);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_261180();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = *(v1 + 24);
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
    v10 = *(v3 + v8);
  }

  return swift_deallocObject();
}

uint64_t sub_179A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_179B10(uint64_t a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_179BC4()
{
  result = qword_321690;
  if (!qword_321690)
  {
    sub_2F9C(&qword_321658, &qword_27EE88);
    sub_179C7C();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321690);
  }

  return result;
}

unint64_t sub_179C7C()
{
  result = qword_321698;
  if (!qword_321698)
  {
    sub_2F9C(&qword_321650, &qword_27EE80);
    sub_179D34();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321698);
  }

  return result;
}

unint64_t sub_179D34()
{
  result = qword_3216A0;
  if (!qword_3216A0)
  {
    sub_2F9C(&qword_321648, &qword_27EE78);
    sub_4BEE4();
    sub_8E38(&qword_3216A8, &qword_3216B0, &unk_27EF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216A0);
  }

  return result;
}

unint64_t sub_179DEC()
{
  result = qword_3216B8;
  if (!qword_3216B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216B8);
  }

  return result;
}

uint64_t sub_179E84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_179DEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_179F08()
{
  result = qword_3216C8;
  if (!qword_3216C8)
  {
    sub_2F9C(&qword_321678, &qword_27EEE8);
    sub_179FC0();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216C8);
  }

  return result;
}

unint64_t sub_179FC0()
{
  result = qword_3216D0;
  if (!qword_3216D0)
  {
    sub_2F9C(&qword_321670, &qword_27EEE0);
    sub_17A078();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216D0);
  }

  return result;
}

unint64_t sub_17A078()
{
  result = qword_3216D8;
  if (!qword_3216D8)
  {
    sub_2F9C(&qword_321668, &qword_27EED8);
    sub_4BEE4();
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216D8);
  }

  return result;
}

uint64_t ListItemAccessoryMoreButtonView.init(assetInfo:contextActionMenuView:showDownloadProgress:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0x4034000000000000;
  v12 = enum case for Font.TextStyle.subheadline(_:);
  v13 = *(v7 + 104);
  (v13)(v11, enum case for Font.TextStyle.subheadline(_:), v6, v9);
  sub_40130();
  sub_2612E0();
  v14 = type metadata accessor for ListItemAccessoryMoreButtonView();
  v15 = v14[5];
  v30 = 0x4000000000000000;
  v13(v11, v12, v6);
  sub_2612E0();
  v16 = v14[6];
  *(a5 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v17 = v14[7];
  *(a5 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v18 = a5 + v14[8];
  KeyPath = swift_getKeyPath();
  LOBYTE(v30) = 0;
  *v18 = KeyPath;
  *(v18 + 66) = 0;
  v20 = (a5 + v14[9]);
  type metadata accessor for ProfileRestrictions();
  sub_17CD94(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v20 = sub_261900();
  v20[1] = v21;
  result = sub_F7CC(v26, a5 + v14[10]);
  v23 = (a5 + v14[11]);
  v24 = v28;
  *v23 = v27;
  v23[1] = v24;
  *(a5 + v14[12]) = v29;
  return result;
}

uint64_t type metadata accessor for ListItemAccessoryMoreButtonView()
{
  result = qword_321758;
  if (!qword_321758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17A40C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ListItemAccessoryMoreButtonView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_17CF44(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_17A5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ListItemAccessoryMoreButtonView();
  sub_8198(v1 + *(v12 + 28), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_17CF44(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ListItemAccessoryMoreButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v59 = sub_2EF0(&qword_31B578, &qword_270C30);
  v2 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v58 = &v49 - v3;
  v57 = type metadata accessor for SizeConstants.Environment(0);
  v4 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for SizeConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v54 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v20 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v22 = &v49 - v21;
  v62 = sub_2EF0(&qword_3216E0, &qword_27EFC8);
  v23 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v56 = (&v49 - v24);
  v60 = sub_2EF0(&qword_3216E8, &qword_27EFD0);
  v25 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v61 = &v49 - v26;
  v27 = type metadata accessor for ListItemAccessoryMoreButtonView();
  v28 = &v1[*(v27 + 40)];
  v29 = *(v28 + 4);
  sub_2E18(v28, *(v28 + 3));
  if (sub_260870())
  {
    v30 = &v1[*(v27 + 36)];
    v31 = *v30;
    if (!*v30)
    {
      v48 = *(v30 + 1);
      type metadata accessor for ProfileRestrictions();
      sub_17CD94(&qword_326DC0, type metadata accessor for ProfileRestrictions);
      result = sub_2618F0();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v31;
    sub_260FF0();

    if ((v64 & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3216F8, &qword_3216E0, &qword_27EFC8);
      return sub_261F80();
    }
  }

  v51 = v19;
  v52 = v1;
  sub_17A40C(v19);
  (*(v7 + 104))(v12, enum case for Font.TextStyle.subheadline(_:), v6);
  v33 = v16;
  sub_17CE68(v19, v16, type metadata accessor for SizeConstants);
  v34 = v53;
  (*(v7 + 16))(v53, v12, v6);
  sub_17CE68(v16, v22, type metadata accessor for SizeConstants);
  v50 = type metadata accessor for SizeConstants.Environment;
  v35 = v16;
  v36 = v55;
  sub_17CE68(v35, v55, type metadata accessor for SizeConstants.Environment);
  v37 = *(v57 + 24);
  v38 = sub_1CF30(v34, v36 + v37);
  v39 = *(v7 + 8);
  v39(v34, v6);
  sub_17CEE4(v33, type metadata accessor for SizeConstants);
  v40 = sub_261690();
  (*(*(v40 - 8) + 8))(v36 + v37, v40);
  v41 = 1.0;
  if ((*&v38 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v41 = v38;
  }

  if ((~*&v38 & 0x7FF0000000000000) == 0)
  {
    v38 = v41;
  }

  *&v22[*(v54 + 36)] = v38;
  v39(v12, v6);
  sub_17CEE4(v51, type metadata accessor for SizeConstants);
  v42 = v58;
  sub_17CE68(v22, v58, v50);
  sub_8E80(v22, &qword_31B4C0, &qword_27C030);
  *(v42 + *(v59 + 36)) = v38;
  v43 = sub_21FA68(12.0);
  sub_8E80(v42, &qword_31B578, &qword_270C30);
  v44 = sub_261D30();
  v45 = v56;
  *v56 = v44;
  *(v45 + 8) = v43;
  *(v45 + 16) = 0;
  v46 = sub_2EF0(&qword_3216F0, &qword_27EFD8);
  sub_17AF04(v52, v45 + *(v46 + 44));
  sub_8198(v45, v61, &qword_3216E0, &qword_27EFC8);
  swift_storeEnumTagMultiPayload();
  sub_8E38(&qword_3216F8, &qword_3216E0, &qword_27EFC8);
  sub_261F80();
  return sub_8E80(v45, &qword_3216E0, &qword_27EFC8);
}

uint64_t sub_17AF04@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v158 = type metadata accessor for MoreButtonView();
  v3 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v157 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v159 = (&v131 - v6);
  v149 = sub_2EF0(&qword_3217C0, &qword_27F0C0);
  v7 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v9 = &v131 - v8;
  v156 = sub_2EF0(&qword_3217C8, &qword_27F0C8);
  v10 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v150 = &v131 - v11;
  v148 = sub_2EF0(&qword_3217D0, &qword_27F0D0);
  v12 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v131 = &v131 - v13;
  v143 = type metadata accessor for DeterminateProgressViewStyle(0);
  v14 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v132 = (&v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_2EF0(&qword_3217D8, &qword_27F0D8);
  v133 = *(v146 - 8);
  v16 = *(v133 + 64);
  __chkstk_darwin(v146);
  v136 = &v131 - v17;
  v152 = sub_2EF0(&qword_3217E0, &qword_27F0E0);
  v18 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v154 = &v131 - v19;
  v140 = sub_2EF0(&qword_3217E8, &qword_27F0E8);
  v20 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v142 = &v131 - v21;
  v153 = sub_2EF0(&qword_3217F0, &unk_27F0F0);
  v22 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v144 = &v131 - v23;
  v139 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v24 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v134 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2EF0(&qword_3210A0, &unk_27E580);
  v138 = *(v141 - 8);
  v26 = *(v138 + 64);
  __chkstk_darwin(v141);
  v137 = &v131 - v27;
  v28 = type metadata accessor for ColorConstants(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v145 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2EF0(&qword_3217F8, &qword_27F100);
  v135 = *(v147 - 8);
  v31 = *(v135 + 64);
  __chkstk_darwin(v147);
  v151 = &v131 - v32;
  v33 = sub_261C90();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2EF0(&qword_321800, &qword_27F108);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v155 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v162 = &v131 - v42;
  v163 = type metadata accessor for ListItemAccessoryMoreButtonView();
  v43 = &a1[v163[8]];
  *&v215[15] = *(v43 + 63);
  v44 = *(v43 + 3);
  v214[2] = *(v43 + 2);
  *v215 = v44;
  v45 = *(v43 + 1);
  v214[0] = *v43;
  v214[1] = v45;
  v161 = v33;
  if (v215[18])
  {
    v46 = *(v43 + 3);
    v211 = *(v43 + 2);
    v212 = v46;
    v213 = *(v43 + 32);
    v47 = *(v43 + 1);
    v209 = *v43;
    v210 = v47;
    v201 = v47;
    v202 = v211;
    v203[0] = v46;
    *(v203 + 15) = *(v43 + 63);
    v200 = v209;
    sub_8198(&v200, &v188, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v48 = v37;
    v49 = v34;
    v50 = sub_2624B0();
    sub_260D10();

    v34 = v49;
    v37 = v48;
    sub_261C80();
    v33 = v161;
    swift_getAtKeyPath();
    sub_8E80(v214, &qword_317F40, &qword_26E9D0);
    (*(v34 + 8))(v48, v33);
  }

  v204 = v209;
  v205 = v210;
  v206 = v211;
  v207 = v212;
  v208 = v213;
  if (*(&v209 + 1) && (v51 = v205, sub_8E80(&v204, &qword_317F48, &qword_26A9A0), v51 == 3) && a1[v163[12]] == 1)
  {
    v52 = v145;
    sub_17A5F8(v145);
    v53 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_17CEE4(v52, type metadata accessor for ColorConstants);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v54 = v200;
    v55 = &a1[v163[5]];
    sub_261300();
    v56 = v200;
    v57 = v137;
    sub_2612D0();
    LOBYTE(v188) = 1;
    v161 = v53;

    sub_2631D0();
    v58 = *(&v200 + 1);
    v59 = v134;
    *v134 = v200;
    *(v59 + 8) = v58;
    v60 = v139;
    v61 = *(v139 + 20);
    *(v59 + v61) = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *(v59 + v60[6]) = v53;
    *(v59 + v60[7]) = 0;
    *(v59 + v60[8]) = v54;
    *(v59 + v60[9]) = v56;
    v62 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580);
    v63 = sub_17CD94(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle);
    v64 = v151;
    v65 = v141;
    sub_2629E0();

    sub_17CEE4(v59, type metadata accessor for InDeterminateProgressViewStyle);
    (*(v138 + 8))(v57, v65);
    v66 = v135;
    (*(v135 + 16))(v142, v64, v147);
    swift_storeEnumTagMultiPayload();
    *&v200 = v65;
    *(&v200 + 1) = v60;
    *&v201 = v62;
    *(&v201 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    v67 = sub_17CD94(&qword_321818, type metadata accessor for DeterminateProgressViewStyle);
    *&v200 = v65;
    *(&v200 + 1) = v143;
    *&v201 = v62;
    *(&v201 + 1) = v67;
    swift_getOpaqueTypeConformance2();
    v68 = v144;
    v69 = v147;
    sub_261F80();
    sub_8198(v68, v154, &qword_3217F0, &unk_27F0F0);
    swift_storeEnumTagMultiPayload();
    sub_17CBF0();
    sub_17CDDC();
    v70 = v162;
    sub_261F80();
    sub_8E80(v68, &qword_3217F0, &unk_27F0F0);
    (*(v66 + 8))(v151, v69);
  }

  else
  {
    v151 = a1;
    *(v203 + 15) = *(v43 + 63);
    v71 = *(v43 + 3);
    v202 = *(v43 + 2);
    v203[0] = v71;
    v72 = *(v43 + 1);
    v200 = *v43;
    v201 = v72;
    if (BYTE2(v203[1]))
    {
      v73 = *(v43 + 3);
      v197 = *(v43 + 2);
      v198 = v73;
      v199 = *(v43 + 32);
      v74 = *(v43 + 1);
      v195 = *v43;
      v196 = v74;
      v189 = v74;
      v190 = v197;
      v191[0] = v73;
      *(v191 + 15) = *(v43 + 63);
      v188 = v195;
      sub_8198(&v188, &v174, &qword_317F48, &qword_26A9A0);
    }

    else
    {

      sub_264900();
      v75 = sub_2624B0();
      v33 = v161;
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(&v200, &qword_317F40, &qword_26E9D0);
      (*(v34 + 8))(v37, v33);
    }

    v192[0] = v195;
    v192[1] = v196;
    v192[2] = v197;
    v193 = v198;
    v194 = v199;
    if (!*(&v195 + 1) || (v76 = *(&v193 + 1), v77 = v194, sub_8E80(v192, &qword_317F48, &qword_26A9A0), (v77 & 1) != 0) || v151[v163[12]] != 1)
    {
      *(v191 + 15) = *(v43 + 63);
      v97 = *(v43 + 3);
      v190 = *(v43 + 2);
      v191[0] = v97;
      v98 = *(v43 + 1);
      v188 = *v43;
      v189 = v98;
      if (BYTE2(v191[1]))
      {
        v99 = *(v43 + 3);
        v185 = *(v43 + 2);
        v186 = v99;
        v187 = *(v43 + 32);
        v100 = *(v43 + 1);
        v183 = *v43;
        v184 = v100;
        v176 = v185;
        v177[0] = v99;
        *(v177 + 15) = *(v43 + 63);
        v174 = v183;
        v175 = v100;
        sub_8198(&v174, &v165, &qword_317F48, &qword_26A9A0);
      }

      else
      {

        sub_264900();
        v101 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_8E80(&v188, &qword_317F40, &qword_26E9D0);
        (*(v34 + 8))(v37, v33);
      }

      v70 = v162;
      v178 = v183;
      v179 = v184;
      v180 = v185;
      v181 = v186;
      v182 = v187;
      if (*(&v183 + 1))
      {
        v102 = v180;
        v103 = *(&v179 + 1);
        sub_8E80(&v178, &qword_317F48, &qword_26A9A0);
        if ((v102 & 1) == 0 || v103 >= 2)
        {
          *(v177 + 15) = *(v43 + 63);
          v104 = *(v43 + 3);
          v176 = *(v43 + 2);
          v177[0] = v104;
          v105 = *(v43 + 1);
          v174 = *v43;
          v175 = v105;
          if (BYTE2(v177[1]))
          {
            v106 = *(v43 + 3);
            v171 = *(v43 + 2);
            v172 = v106;
            v173 = *(v43 + 32);
            v107 = *(v43 + 1);
            v169 = *v43;
            v170 = v107;
            v167 = v171;
            v168[0] = v106;
            *(v168 + 15) = *(v43 + 63);
            v165 = v169;
            v166 = v107;
            sub_8198(&v165, v164, &qword_317F48, &qword_26A9A0);
          }

          else
          {

            sub_264900();
            v108 = sub_2624B0();
            sub_260D10();

            sub_261C80();
            swift_getAtKeyPath();
            sub_8E80(&v174, &qword_317F40, &qword_26E9D0);
            (*(v34 + 8))(v37, v161);
          }

          v165 = v169;
          v166 = v170;
          v167 = v171;
          v168[0] = v172;
          LOWORD(v168[1]) = v173;
          if (*(&v169 + 1))
          {
            v109 = v9;
            v110 = v166;
            sub_8E80(&v165, &qword_317F48, &qword_26A9A0);
            if (v110 < 2)
            {
              v164[0] = sub_2630B0();
              sub_262650();
              v111 = v131;
              sub_262A20();

              v112 = v145;
              a1 = v151;
              sub_17A5F8(v145);
              v113 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
              sub_17CEE4(v112, type metadata accessor for ColorConstants);
              KeyPath = swift_getKeyPath();
              v115 = (v111 + *(v148 + 36));
              *v115 = KeyPath;
              v115[1] = v113;
              sub_8198(v111, v109, &qword_3217D0, &qword_27F0D0);
              swift_storeEnumTagMultiPayload();
              sub_17CB08();
              v116 = v150;
              sub_261F80();
              sub_8198(v116, v154, &qword_3217C8, &qword_27F0C8);
              swift_storeEnumTagMultiPayload();
              sub_17CBF0();
              sub_17CDDC();
              sub_261F80();
              v70 = v162;
              sub_8E80(v116, &qword_3217C8, &qword_27F0C8);
              sub_8E80(v111, &qword_3217D0, &qword_27F0D0);
              goto LABEL_29;
            }

            v9 = v109;
          }
        }
      }

      *v9 = xmmword_26F1B0;
      v9[16] = 0;
      *(v9 + 3) = _swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      sub_17CB08();
      v117 = v150;
      sub_261F80();
      sub_8198(v117, v154, &qword_3217C8, &qword_27F0C8);
      swift_storeEnumTagMultiPayload();
      sub_17CBF0();
      sub_17CDDC();
      sub_261F80();
      sub_8E80(v117, &qword_3217C8, &qword_27F0C8);
      a1 = v151;
      goto LABEL_29;
    }

    v78 = v145;
    a1 = v151;
    sub_17A5F8(v145);
    v79 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_17CEE4(v78, type metadata accessor for ColorConstants);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v80 = v188;
    v81 = &a1[v163[5]];
    sub_261300();
    v82 = v188;
    *&v188 = v76;
    BYTE8(v188) = 0;
    *&v174 = 0x3FF0000000000000;
    sub_40130();
    v83 = v137;
    sub_2612C0();
    v84 = swift_getKeyPath();
    v85 = v132;
    *v132 = v84;
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    v86 = v143;
    v87 = *(v143 + 20);
    *(v85 + v87) = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    v88 = v85 + v86[6];
    *v88 = 0;
    *(v88 + 8) = 0;
    *(v88 + 16) = 1;
    *(v85 + v86[7]) = v79;
    *(v85 + v86[8]) = 0;
    *(v85 + v86[9]) = v80;
    *(v85 + v86[10]) = v82;
    v89 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580);
    v90 = sub_17CD94(&qword_321818, type metadata accessor for DeterminateProgressViewStyle);
    v91 = v136;
    v92 = v141;
    sub_2629E0();
    sub_17CEE4(v85, type metadata accessor for DeterminateProgressViewStyle);
    (*(v138 + 8))(v83, v92);
    v93 = v133;
    (*(v133 + 16))(v142, v91, v146);
    swift_storeEnumTagMultiPayload();
    v94 = sub_17CD94(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle);
    *&v188 = v92;
    *(&v188 + 1) = v139;
    *&v189 = v89;
    *(&v189 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    *&v188 = v92;
    *(&v188 + 1) = v86;
    *&v189 = v89;
    *(&v189 + 1) = v90;
    swift_getOpaqueTypeConformance2();
    v95 = v144;
    v96 = v146;
    sub_261F80();
    sub_8198(v95, v154, &qword_3217F0, &unk_27F0F0);
    swift_storeEnumTagMultiPayload();
    sub_17CBF0();
    sub_17CDDC();
    v70 = v162;
    sub_261F80();
    sub_8E80(v95, &qword_3217F0, &unk_27F0F0);
    (*(v93 + 8))(v136, v96);
  }

LABEL_29:
  v118 = v163;
  v119 = v158;
  v120 = v159;
  sub_30CC(&a1[v163[10]], v159 + *(v158 + 24));
  v121 = &a1[v118[11]];
  v123 = *v121;
  v122 = *(v121 + 1);
  *v120 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v124 = *(v119 + 20);
  *(v120 + v124) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v125 = (v120 + *(v119 + 28));
  *v125 = v123;
  v125[1] = v122;
  v126 = v155;
  sub_8198(v70, v155, &qword_321800, &qword_27F108);
  v127 = v157;
  sub_17CE68(v120, v157, type metadata accessor for MoreButtonView);
  v128 = v160;
  sub_8198(v126, v160, &qword_321800, &qword_27F108);
  v129 = sub_2EF0(&qword_321828, &qword_27F110);
  sub_17CE68(v127, v128 + *(v129 + 48), type metadata accessor for MoreButtonView);

  sub_17CEE4(v120, type metadata accessor for MoreButtonView);
  sub_8E80(v70, &qword_321800, &qword_27F108);
  sub_17CEE4(v127, type metadata accessor for MoreButtonView);
  return sub_8E80(v126, &qword_321800, &qword_27F108);
}

uint64_t sub_17C608(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_17C798(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_2EF0(&qword_316F68, &unk_269C50);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_17C910()
{
  sub_4BCBC();
  if (v0 <= 0x3F)
  {
    sub_14B364(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v1 <= 0x3F)
    {
      sub_14B364(319, &qword_316FE8, type metadata accessor for ColorConstants);
      if (v2 <= 0x3F)
      {
        sub_869BC();
        if (v3 <= 0x3F)
        {
          sub_95884();
          if (v4 <= 0x3F)
          {
            sub_44744();
            if (v5 <= 0x3F)
            {
              sub_16D28();
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

unint64_t sub_17CA50()
{
  result = qword_3217B0;
  if (!qword_3217B0)
  {
    sub_2F9C(&qword_3217B8, &qword_27F0B8);
    sub_8E38(&qword_3216F8, &qword_3216E0, &qword_27EFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3217B0);
  }

  return result;
}

unint64_t sub_17CB08()
{
  result = qword_321808;
  if (!qword_321808)
  {
    sub_2F9C(&qword_3217D0, &qword_27F0D0);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321808);
  }

  return result;
}

unint64_t sub_17CBF0()
{
  result = qword_321810;
  if (!qword_321810)
  {
    sub_2F9C(&qword_3217F0, &unk_27F0F0);
    sub_2F9C(&qword_3210A0, &unk_27E580);
    type metadata accessor for InDeterminateProgressViewStyle(255);
    sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580);
    sub_17CD94(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for DeterminateProgressViewStyle(255);
    sub_17CD94(&qword_321818, type metadata accessor for DeterminateProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321810);
  }

  return result;
}

uint64_t sub_17CD94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_17CDDC()
{
  result = qword_321820;
  if (!qword_321820)
  {
    sub_2F9C(&qword_3217C8, &qword_27F0C8);
    sub_17CB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321820);
  }

  return result;
}

uint64_t sub_17CE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_17CEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_17CF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FlowAction.PageDestination.pageMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 57);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t FlowAction.PageDestination.init(intent:pageMetadata:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  result = sub_F7CC(a1, a3);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  *(a3 + 57) = v7;
  return result;
}

uint64_t sub_17D018(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301070;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_17D068(unsigned __int8 a1)
{
  v1 = 1701273968;
  v2 = 0x6174654D65676170;
  v3 = 0xD000000000000016;
  if (a1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x746E65746E69;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_17D10C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301108;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_17D15C(unsigned __int8 a1)
{
  v1 = 12383;
  v2 = 0xD000000000000016;
  if (a1 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 0x6174654D65676170;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_17D1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D254(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_17D018(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_17D3D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_17D068(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_17D408(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_17D068(*v1);
}

uint64_t sub_17D428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_17D064(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_17D458@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_17EC78();
  *a2 = result;
  return result;
}

uint64_t sub_17D484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_17D4D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_17D52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D5A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_17D10C(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

unint64_t sub_17D724@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_17D15C(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_17D754(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_17D15C(*v1);
}

uint64_t sub_17D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_17D158(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_17D790@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_D40E4();
  *a2 = result;
  return result;
}

uint64_t sub_17D7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_17D810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t FlowAction.PageDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  _s15PageDestinationV16LegacyCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v45 = sub_264E20();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v45);
  v9 = &v40 - v8;
  v47 = a2;
  v42 = a3;
  _s15PageDestinationV10CodingKeysOMa();
  swift_getWitnessTable();
  v10 = sub_264E20();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v49 = a1;
  sub_2E18(a1, v14);
  v16 = v48;
  sub_265120();
  if (v16)
  {
    return sub_3080(v49);
  }

  v48 = v9;
  v17 = v45;
  v18 = v44;
  LOBYTE(v50) = 0;
  v19 = v13;
  if (sub_264E10())
  {
    LOBYTE(v50) = 0;
    v20 = v48;
    sub_264D50();
    WitnessTable = v19;
    type metadata accessor for CodeAnyIntentModel();
    v57 = 0;
    swift_getWitnessTable();
    sub_264DF0();
    sub_F7CC(&v50, v52);
    LOBYTE(v50) = 2;
    if (sub_264E10())
    {
      LOBYTE(v50) = 3;
      v23 = sub_264D70();
      v24 = v20;
      v25 = WitnessTable;
      v37 = v36;
      (*(v43 + 8))(v24, v17);
      (*(v18 + 8))(v25, v10);
      LOBYTE(v29) = 0;
      v53 = v23;
      v54 = v37;
      goto LABEL_14;
    }

    sub_2EF0(&qword_321830, &qword_27F1B0);
    v57 = 1;
    sub_17E620(&qword_321838, &qword_321830, &qword_27F1B0, sub_17E080);
    v34 = v48;
    sub_264DB0();
    (*(v43 + 8))(v34, v17);
    (*(v18 + 8))(WitnessTable, v10);
    v30 = *(&v50 + 1);
    if (*(&v50 + 1) != 2)
    {
      v31 = v50;
      v32 = v51;
      v33 = v41;
      if (*(&v50 + 1) == 1)
      {
        sub_17E1B8(v50, 1);
        LOBYTE(v32) = 0;
        v30 = 0;
        v31 = 0;
        LOBYTE(v29) = 3;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    LOBYTE(v32) = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_21;
  }

  type metadata accessor for CodeAnyIntentModel();
  v21 = v13;
  v57 = 1;
  swift_getWitnessTable();
  sub_264DF0();
  v22 = v18;
  sub_F7CC(&v50, v52);
  LOBYTE(v50) = 3;
  if ((sub_264E10() & 1) == 0)
  {
    sub_2EF0(&qword_321830, &qword_27F1B0);
    v57 = 2;
    sub_17E620(&qword_321838, &qword_321830, &qword_27F1B0, sub_17E080);
    sub_264DB0();
    (*(v18 + 8))(v21, v10);
    v30 = *(&v50 + 1);
    if (*(&v50 + 1) != 2)
    {
      v31 = v50;
      v32 = v51;
      v33 = v41;
      if (*(&v50 + 1) == 1)
      {
        sub_17E1B8(v50, 1);
        LOBYTE(v32) = 0;
        v31 = 0;
        v30 = 0;
        LOBYTE(v29) = 3;
LABEL_22:
        v53 = v31;
        v54 = v30;
        v55 = v32 & 1;
        goto LABEL_23;
      }

LABEL_18:
      v29 = v32 >> 8;
      goto LABEL_22;
    }

    LOBYTE(v32) = 0;
    v31 = 0;
    v30 = 0;
LABEL_21:
    LOBYTE(v29) = 3;
    v33 = v41;
    goto LABEL_22;
  }

  LOBYTE(v50) = 4;
  v26 = sub_264D70();
  v28 = v27;
  (*(v22 + 8))(v19, v10);
  LOBYTE(v29) = 0;
  v53 = v26;
  v54 = v28;
LABEL_14:
  v55 = 1;
  v33 = v41;
LABEL_23:
  v56 = v29;
  v38 = type metadata accessor for FlowAction.PageDestination();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v33, v52, v38);
  sub_3080(v49);
  return (*(v39 + 8))(v52, v38);
}

uint64_t PageMetadata.init(title:shouldReportFigaro:navigationBarTitleStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = v5;
  return result;
}

void static PageMetadata.fallback.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 768;
}

unint64_t sub_17E080()
{
  result = qword_321840;
  if (!qword_321840)
  {
    sub_2F9C(&qword_321848, &qword_27F1B8);
    sub_17E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321840);
  }

  return result;
}

unint64_t sub_17E104()
{
  result = qword_321850;
  if (!qword_321850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321850);
  }

  return result;
}

uint64_t sub_17E1B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_17E1C8(a1, a2);
  }

  return a1;
}

uint64_t sub_17E1C8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_17E1FC()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_17E25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_17EC80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_17E284(uint64_t a1)
{
  v2 = sub_17E5CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17E2C0(uint64_t a1)
{
  v2 = sub_17E5CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_321858, &qword_27F1C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_17E5CC();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_321868, &unk_2891C0);
    v17 = 0;
    sub_17E620(&qword_321870, &qword_321868, &unk_2891C0, sub_17E69C);
    sub_264DF0();
    v12 = v15[0];
    v11 = v15[1];
    sub_2EF0(&qword_321880, &qword_27F1C8);
    v17 = 1;
    sub_17E718();
    sub_264DF0();
    v16 = LOBYTE(v15[0]);
    LOBYTE(v15[0]) = 2;
    sub_2EF0(&qword_321890, &qword_27F1D0);
    sub_17E794();
    sub_264DB0();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    if (v17 == 4)
    {
      v14 = 3;
    }

    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v16;
    *(a2 + 17) = v14;
  }

  sub_3080(a1);
}

unint64_t sub_17E5CC()
{
  result = qword_321860;
  if (!qword_321860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321860);
  }

  return result;
}

uint64_t sub_17E620(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_17E69C()
{
  result = qword_321878;
  if (!qword_321878)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321878);
  }

  return result;
}

unint64_t sub_17E718()
{
  result = qword_321888;
  if (!qword_321888)
  {
    sub_2F9C(&qword_321880, &qword_27F1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321888);
  }

  return result;
}

unint64_t sub_17E794()
{
  result = qword_321898[0];
  if (!qword_321898[0])
  {
    sub_2F9C(&qword_321890, &qword_27F1D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_321898);
  }

  return result;
}

uint64_t sub_17E7F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_17E834(uint64_t a1)
{
  result = sub_17E104();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_17E874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_17E880(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_17E8F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_17E930(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_17E94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_17E994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_17E9E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_17E9F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_17EA54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_17EB04()
{
  result = qword_321A20;
  if (!qword_321A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A20);
  }

  return result;
}

unint64_t sub_17EB5C()
{
  result = qword_321A28;
  if (!qword_321A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A28);
  }

  return result;
}

unint64_t sub_17EBB4()
{
  result = qword_321A30;
  if (!qword_321A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A30);
  }

  return result;
}

uint64_t sub_17EC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000293D10 == a2 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000293D30 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double SwooshItemViewModel.coverViewModel.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[4];
  sub_2E18(v1, v1[3]);
  sub_260950();
  sub_30CC(v1, v9);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(v9, v10);
  *(&v16 + 1) = 0x4068000000000000;
  sub_230A8(v10);
  v4 = v14;
  a1[4] = v13;
  a1[5] = v4;
  v5 = v16;
  a1[6] = v15;
  a1[7] = v5;
  v6 = v10[1];
  *a1 = v10[0];
  a1[1] = v6;
  result = *&v11;
  v8 = v12;
  a1[2] = v11;
  a1[3] = v8;
  return result;
}

uint64_t _CodeAnyComponentModel_Many.description.getter()
{
  v1 = *v0;
  sub_2EF0(&qword_317250, &unk_2697A0);

  return sub_2646A0();
}

uint64_t _CodeAnyComponentModel_Many.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v14);
  sub_752E8();
  v5 = sub_264700();
  if (v2)
  {
    return sub_3080(a1);
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v15 = _swiftEmptyArrayStorage;
    v8 = v5;
    sub_2DA64(0, v7, 0);
    v9 = v15;
    v10 = v8 + 32;
    do
    {
      sub_7568C(v10, v13);
      sub_30CC(v13, v14);
      sub_756E8(v13);
      v15 = v9;
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        sub_2DA64((v11 > 1), v12 + 1, 1);
        v9 = v15;
      }

      v9[2] = v12 + 1;
      sub_F7CC(v14, &v9[5 * v12 + 4]);
      v10 += 40;
      --v7;
    }

    while (v7);
    sub_3080(a1);

    *a2 = v9;
  }

  else
  {

    result = sub_3080(a1);
    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t _CodeAnyComponentModel_Many.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v13);
  sub_752E8();
  v4 = sub_2646E0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_2DA64(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + 32;
    do
    {
      sub_7568C(v7, v11);
      sub_30CC(v11, v13);
      sub_756E8(v11);
      v12 = v6;
      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        sub_2DA64((v8 > 1), v9 + 1, 1);
        v6 = v12;
      }

      v6[2] = v9 + 1;
      sub_F7CC(v13, &v6[5 * v9 + 4]);
      v7 += 40;
      --v5;
    }

    while (v5);
    sub_3080(a1);
  }

  else
  {

    result = sub_3080(a1);
    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
  return result;
}

uint64_t LocalizerRequest.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_2650F0();
  if (!v1)
  {
    sub_2E18(v5, v5[3]);
    sub_264F20();
    sub_260BC0();

    sub_3080(v5);
  }

  return sub_3080(a1);
}

uint64_t SymbolImage.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SymbolImage() + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_3190A0, &unk_283550);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for SymbolImage()
{
  result = qword_321AB8;
  if (!qword_321AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SymbolImage.Kind.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x6B72616D78;
    if (v1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD000000000000013;
    if (v1 == 4)
    {
      v5 = 1937075312;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x72616D6B63656863;
    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return 0x73697370696C6C65;
    }
  }
}

uint64_t View.symbol(imageScale:)()
{
  swift_getKeyPath();
  sub_262A90();
}

uint64_t SymbolImage.Kind.accessibilityText(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6[47] = *v1;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_30CC(a1, v6);
  return sub_2627B0();
}

uint64_t SymbolImage.Kind.image.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 <= 3u)
  {
    *v1;
  }

  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t SymbolImage.Kind.accessibilityLocalizable.getter()
{
  v1 = sub_264010();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_263FA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 > 3u)
  {
    *v0;
  }

  else if (*v0 - 2 >= 2)
  {
    *v0;
  }

  sub_263F90();
  (*(v2 + 104))(v5, enum case for LocalizerLookupStrategy.default(_:), v1);
  sub_260B80();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

BooksUI::SymbolImage::Kind_optional __swiftcall SymbolImage.Kind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_301188;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17FA88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3190A0, &unk_283550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SymbolImage();
  sub_180884(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2630F0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_17FCAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v7 = 0xE500000000000000;
    v8 = 0x6B72616D78;
    if (v2 != 6)
    {
      v8 = 0xD000000000000011;
      v7 = 0x800000000028FD40;
    }

    v9 = 0xE400000000000000;
    v10 = 0xD000000000000013;
    if (v2 == 4)
    {
      v10 = 1937075312;
    }

    else
    {
      v9 = 0x800000000028FD20;
    }

    if (*v1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (*v1 <= 5u)
    {
      v7 = v9;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0xE90000000000006BLL;
    v4 = 0x72616D6B63656863;
    v5 = 0xE800000000000000;
    if (v2 != 2)
    {
      v5 = 0xEF656C637269632ELL;
    }

    if (!*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x800000000028FCE0;
    }

    if (*v1 <= 1u)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x73697370696C6C65;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

uint64_t SymbolImage.body.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 <= 3u)
  {
    *v1;
  }

  v3 = sub_2630B0();
  v4 = (a1 + *(sub_2EF0(&qword_318560, &unk_26B530) + 36));
  v5 = sub_2EF0(&qword_317530, &qword_26FCC0);
  sub_17FA88(v4 + *(v5 + 28));
  result = swift_getKeyPath();
  *v4 = result;
  *a1 = v3;
  return result;
}

uint64_t sub_17FFAC()
{
  v0 = sub_2630F0();
  sub_B600(v0, qword_321A38);
  v1 = sub_B080(v0, qword_321A38);
  v2 = enum case for Image.Scale.small(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_180034@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A68 != -1)
  {
    swift_once();
  }

  v2 = sub_2630F0();
  v3 = sub_B080(v2, qword_321A38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1800DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_180958();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_180140()
{
  sub_1808F4();

  return sub_261CB0();
}

uint64_t sub_180208(uint64_t a1)
{
  v2 = sub_2630F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2, v8);
  (v11)(v6, v10, v2);
  sub_1808F4();
  sub_261CC0();
  return (*(v3 + 8))(v10, v2);
}

uint64_t sub_180398(uint64_t a1)
{
  v2 = sub_2630F0();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_261980();
}

unint64_t sub_180468()
{
  result = qword_321A50;
  if (!qword_321A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A50);
  }

  return result;
}

uint64_t sub_1804EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2EF0(&qword_321A58, &unk_27F9A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1805B4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_2EF0(&qword_321A58, &unk_27F9A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_180660()
{
  sub_1806DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1806DC()
{
  if (!qword_321AC8)
  {
    sub_2630F0();
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_321AC8);
    }
  }
}

unint64_t sub_180754()
{
  result = qword_317590;
  if (!qword_317590)
  {
    sub_2F9C(&qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317590);
  }

  return result;
}

uint64_t sub_1807B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_317530, &qword_26FCC0);
  sub_261730();
  sub_180754();
  return swift_getWitnessTable();
}

unint64_t sub_180830()
{
  result = qword_321AF8;
  if (!qword_321AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321AF8);
  }

  return result;
}

uint64_t sub_180884(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3190A0, &unk_283550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1808F4()
{
  result = qword_321B00;
  if (!qword_321B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321B00);
  }

  return result;
}

unint64_t sub_180958()
{
  result = qword_321B08[0];
  if (!qword_321B08[0])
  {
    sub_2630F0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_321B08);
  }

  return result;
}

uint64_t sub_1809B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1809EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_180A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityConditionalTraits(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityConditionalTraits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_180B58(uint64_t a1, int a2)
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

uint64_t sub_180BA0(uint64_t result, int a2, int a3)
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

uint64_t sub_180C1C()
{
  sub_260A70();
  sub_260A50();
  sub_182550(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_182550(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_180D40@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_261E20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  v18 = sub_2EF0(&qword_321BE8, &qword_27FCC8);
  v11 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v13 = &v16[-v12];
  if (a1)
  {
    sub_261E00();
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
    sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits);
    v17 = a1;
    sub_2EF0(&qword_321BC8, &qword_27FCB8);
    sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8);
    LOBYTE(a1) = v17;
    sub_264B10();
  }

  sub_2EF0(&qword_321BF0, &qword_27FCD0);
  sub_8E38(&qword_321BF8, &qword_321BF0, &qword_27FCD0);
  sub_262CE0();
  v14 = *(v4 + 8);
  v14(v10, v3);
  if (a1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits);
    sub_2EF0(&qword_321BC8, &qword_27FCB8);
    sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8);
    sub_264B10();
  }

  else
  {
    sub_261E00();
  }

  sub_261720();
  v14(v7, v3);
  return sub_8E80(v13, &qword_321BE8, &qword_27FCC8);
}

uint64_t sub_1810DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a3;
  v17 = a4;
  v19 = a2;
  v18 = a1;
  v6 = sub_2EF0(&qword_321BB8, &qword_27FCB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = sub_261E20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _swiftEmptyArrayStorage;
  sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits);
  sub_2EF0(&qword_321BC8, &qword_27FCB8);
  sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8);
  sub_264B10();
  sub_2EF0(&qword_321BD8, &qword_27FCC0);
  sub_8E38(&qword_321BE0, &qword_321BD8, &qword_27FCC0);
  sub_262CE0();
  result = (*(v11 + 8))(v14, v10);
  if (v19)
  {
    v20 = v16;
    v21 = v17;
    sub_10A84();
    sub_2616F0();
    sub_8E80(a5, &qword_321BB8, &qword_27FCB0);
    return sub_22148(v9, a5, &qword_321BB8, &qword_27FCB0);
  }

  return result;
}

uint64_t sub_1813D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a2;
  v18 = a1;
  v17 = sub_2EF0(&qword_321C20, &qword_27FD78);
  v6 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v8 = &v15 - v7;
  v9 = sub_261E20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _swiftEmptyArrayStorage;
  sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits);
  sub_2EF0(&qword_321BC8, &qword_27FCB8);
  sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8);
  sub_264B10();
  sub_2EF0(&qword_321C28, &qword_27FD80);
  sub_8E38(&qword_321C30, &qword_321C28, &qword_27FD80);
  sub_262CE0();
  result = (*(v10 + 8))(v13, v9);
  if (a3)
  {
    v19 = v16;
    v20 = a3;
    sub_10A84();
    sub_2616F0();
    sub_8E80(a4, &qword_321C20, &qword_27FD78);
    return sub_22148(v8, a4, &qword_321C20, &qword_27FD78);
  }

  return result;
}

uint64_t sub_181688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a3;
  v47 = a4;
  v44 = a1;
  v45 = a2;
  v48 = a7;
  v42 = a5;
  v43 = a6;
  type metadata accessor for AccessibilityHintFromPreference();
  swift_getWitnessTable();
  v7 = sub_2620B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v41 - v10;
  sub_261730();
  sub_182114();
  sub_262330();
  v12 = sub_261730();
  v13 = sub_260A70();
  v14 = sub_260A50();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1821C8();
  v57 = WitnessTable;
  v58 = v16;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v55 = v17;
  v56 = v18;
  v41[1] = v12;
  v19 = swift_getWitnessTable();
  v41[0] = v19;
  v20 = sub_182550(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  v21 = sub_182550(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v22 = sub_260A90();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v30 = v41 - v29;
  v31 = v11;
  (*(v8 + 16))(v11, v44, v7, v28);
  v32 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v43;
  *(v34 + 16) = v42;
  *(v34 + 24) = v35;
  (*(v8 + 32))(v34 + v32, v31, v7);
  v36 = (v34 + v33);
  v37 = v46;
  *v36 = v45;
  v36[1] = v37;
  v36[2] = v47;

  sub_180C1C();
  v38 = swift_getWitnessTable();
  sub_1609C(v26, v22, v38);
  v39 = *(v23 + 8);
  v39(v26, v22);
  sub_1609C(v30, v22, v38);
  return (v39)(v30, v22);
}

uint64_t sub_181AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a5;
  v37 = a3;
  v38 = a7;
  v39 = a2;
  v40 = a1;
  v46 = a8;
  type metadata accessor for AccessibilityHintFromPreference();
  swift_getWitnessTable();
  sub_2620B0();
  v12 = sub_261730();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v41 = sub_182114();
  v43 = sub_262330();
  v16 = sub_261730();
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v42 = &v35 - v21;
  *&v51 = a3;
  *(&v51 + 1) = a4;
  v52 = a5;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v22 = v53;
  v23 = v54;
  WitnessTable = swift_getWitnessTable();
  *&v51 = v22;
  *(&v51 + 1) = v23;
  sub_262E30();

  sub_30CC(v40, &v51);
  v25 = swift_allocObject();
  v26 = v37;
  v27 = v38;
  v25[2] = a6;
  v25[3] = v27;
  v25[4] = v26;
  v25[5] = a4;
  v25[6] = v36;
  sub_F7CC(&v51, (v25 + 7));
  v28 = sub_1821C8();
  v49 = WitnessTable;
  v50 = v28;

  v29 = swift_getWitnessTable();
  sub_262C20();

  (*(v45 + 8))(v15, v12);
  v30 = swift_getWitnessTable();
  v47 = v29;
  v48 = v30;
  v31 = swift_getWitnessTable();
  v32 = v42;
  sub_1609C(v19, v16, v31);
  v33 = *(v44 + 8);
  v33(v19, v16);
  sub_1609C(v32, v16, v31);
  return (v33)(v32, v16);
}

uint64_t sub_181EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v18 - v10;
  sub_104B0(a1, v18 - v10);
  v12 = sub_260BD0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_8E80(v11, &qword_316208, &qword_268BD0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = sub_260BB0();
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[1] = v14;
  v18[2] = v15;
  sub_2EF0(&qword_317300, &unk_269840);
  return sub_2631F0();
}

uint64_t sub_182060()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2EF0(&qword_321B90, &qword_27FCA8);
  sub_8E38(&qword_321B98, &qword_321B90, &qword_27FCA8);
  if (v1 == 1)
  {
    return sub_262CD0();
  }

  else
  {
    return sub_262D30();
  }
}

unint64_t sub_182114()
{
  result = qword_321BA0;
  if (!qword_321BA0)
  {
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_182550(&qword_321BA8, &type metadata accessor for LocalizerRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321BA0);
  }

  return result;
}

unint64_t sub_1821C8()
{
  result = qword_321BB0;
  if (!qword_321BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321BB0);
  }

  return result;
}

uint64_t sub_18221C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for AccessibilityHintFromPreference();
  swift_getWitnessTable();
  v3 = sub_2620B0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v5, v3);
  v7 = *(v0 + v6 + 8);

  v8 = *(v0 + v6 + 16);

  return swift_deallocObject();
}

uint64_t sub_1822F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  type metadata accessor for AccessibilityHintFromPreference();
  swift_getWitnessTable();
  v7 = *(sub_2620B0() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  return sub_181AC8(a1, v2 + v8, v10, v11, v12, v5, v6, a2);
}

uint64_t sub_1823F8()
{
  v1 = v0[5];

  v2 = v0[6];

  sub_3080(v0 + 7);

  return swift_deallocObject();
}

uint64_t sub_182440(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_181EAC(a1, v1[4], v1[5], v1[6]);
}

unint64_t sub_182468()
{
  result = qword_321C00;
  if (!qword_321C00)
  {
    sub_2F9C(&qword_321C08, &qword_27FD20);
    sub_8E38(&qword_321B98, &qword_321B90, &qword_27FCA8);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C00);
  }

  return result;
}

uint64_t sub_182550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_182598(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AccessibilityHintFromPreference();
  swift_getWitnessTable();
  sub_2620B0();
  sub_261730();
  sub_182114();
  sub_262330();
  sub_261730();
  sub_260A70();
  sub_260A50();
  swift_getWitnessTable();
  sub_1821C8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_182550(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_182550(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  sub_260A90();
  return swift_getWitnessTable();
}

unint64_t sub_18279C()
{
  result = qword_321C10;
  if (!qword_321C10)
  {
    sub_2F9C(&qword_321BB8, &qword_27FCB0);
    sub_8E38(&qword_321BE0, &qword_321BD8, &qword_27FCC0);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C10);
  }

  return result;
}

unint64_t sub_182888()
{
  result = qword_321C18;
  if (!qword_321C18)
  {
    sub_2F9C(&qword_321BE8, &qword_27FCC8);
    sub_8E38(&qword_321BF8, &qword_321BF0, &qword_27FCD0);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C18);
  }

  return result;
}

unint64_t sub_182990()
{
  result = qword_321C38;
  if (!qword_321C38)
  {
    sub_2F9C(&qword_321C20, &qword_27FD78);
    sub_8E38(&qword_321C30, &qword_321C28, &qword_27FD80);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C38);
  }

  return result;
}

uint64_t NativeIntentDispatcher.withBuiltInIntentImplementations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263FF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_182AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2EF0(&qword_316408, &qword_26DE30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_8198(a3, v27 - v11, &qword_316408, &qword_26DE30);
  v13 = sub_264770();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_8E80(v12, &qword_316408, &qword_26DE30);
  }

  else
  {
    sub_264760();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_264730();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2644C0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_8E80(a3, &qword_316408, &qword_26DE30);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8E80(a3, &qword_316408, &qword_26DE30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t HighlightAttributionViewLoader.__allocating_init(id:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  HighlightAttributionViewLoader.init(id:provider:)(a1, a2, a3);
  return v9;
}

void *sub_182E3C()
{
  swift_getKeyPath();
  sub_EDD48();
  sub_260380();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_182EB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_EDD48();
  sub_260380();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_182F3C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_182F6C(v2);
}

void sub_182F6C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_EDD48();
    sub_260370();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_15C98(0, &qword_321DD0, SWAttributionView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_264A20();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void *HighlightAttributionViewLoader.init(id:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2EF0(&qword_316408, &qword_26DE30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18[-v11];
  v3[2] = 0;
  v3[3] = &_swiftEmptySetSingleton;
  sub_2603B0();
  sub_8198(a3, &v19, &qword_31D640, qword_275B88);
  if (v20)
  {
    sub_F7CC(&v19, v21);
    v13 = sub_264770();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_30CC(v21, &v19);
    sub_264750();

    v14 = sub_264740();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v4;
    v15[5] = a1;
    v15[6] = a2;
    sub_F7CC(&v19, (v15 + 7));
    v15[12] = v8;
    sub_182AE4(0, 0, v12, &unk_27FDC0, v15);

    sub_8E80(a3, &qword_31D640, qword_275B88);
    sub_3080(v21);
  }

  else
  {

    sub_8E80(&v19, &qword_31D640, qword_275B88);
    if (v3[2])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v18[-16] = v3;
      *&v18[-8] = 0;
      v21[0] = v3;
      sub_EDD48();
      sub_260370();
    }

    sub_8E80(a3, &qword_31D640, qword_275B88);
  }

  return v4;
}

void sub_18339C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_182F6C(v2);
}

uint64_t type metadata accessor for HighlightAttributionViewLoader()
{
  result = qword_321C78;
  if (!qword_321C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_183418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = *(*(sub_2EF0(&qword_321DA0, &qword_27FEC8) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v10 = sub_2EF0(&qword_321DA8, &qword_27FED0);
  v8[13] = v10;
  v11 = *(v10 - 8);
  v8[14] = v11;
  v12 = *(v11 + 64) + 15;
  v8[15] = swift_task_alloc();
  sub_264750();
  v8[16] = sub_264740();
  v14 = sub_264730();

  return (_swift_task_switch)(sub_183558, v14, v13);
}

uint64_t sub_183558()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v3[3];
  v6 = v3[4];
  sub_2E18(v3, v5);
  v7 = (*(v6 + 16))(v4, v2, v5, v6);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = v3[3];
    v12 = v3[4];
    sub_2E18(v0[10], v11);
    v13 = (*(v12 + 24))(v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  v29 = v0[14];
  v30 = v0[15];
  v14 = v0[12];
  v15 = v0[10];
  v27 = v0[11];
  v28 = v0[13];
  v25 = v0[8];
  v26 = v0[9];
  v24 = v0[7];
  sub_182F6C(v13);
  v17 = v3[3];
  v16 = v3[4];
  sub_2E18(v15, v17);
  v0[5] = (*(v16 + 8))(v17, v16);
  sub_15C98(0, &qword_316430, OS_dispatch_queue_ptr);
  v18 = sub_264960();
  v0[6] = v18;
  v19 = sub_264940();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_2EF0(&qword_321DB0, &qword_27FED8);
  sub_8E38(&qword_321DB8, &qword_321DB0, &qword_27FED8);
  sub_184164();
  sub_261020();
  sub_8E80(v14, &qword_321DA0, &qword_27FEC8);

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v25;
  v21[4] = v26;
  v21[5] = v27;
  sub_8E38(&qword_321DC8, &qword_321DA8, &qword_27FED0);

  sub_261030();

  (*(v29 + 8))(v30, v28);
  swift_beginAccess();
  sub_260FA0();
  swift_endAccess();

  v22 = v0[1];

  return v22();
}

uint64_t sub_183904()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_3080(v0 + 7);

  return swift_deallocObject();
}

uint64_t sub_183954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_156D0;

  return sub_183418(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

uint64_t sub_183A30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = a1[3];
    v9 = a1[4];
    sub_2E18(a1, v8);
    v10 = (*(v9 + 16))(a3, a4, v8, v9);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = a1[3];
      v15 = a1[4];
      sub_2E18(a1, v14);
      v16 = (*(v15 + 24))(v12, v13, v14, v15);
    }

    else
    {
      v16 = 0;
    }

    sub_182F6C(v16);
  }

  return result;
}

uint64_t HighlightAttributionViewLoader.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC7BooksUI30HighlightAttributionViewLoader___observationRegistrar;
  v3 = sub_2603C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t HighlightAttributionViewLoader.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC7BooksUI30HighlightAttributionViewLoader___observationRegistrar;
  v3 = sub_2603C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_183C60()
{
  qword_353F50 = 0;
  result = 0.0;
  xmmword_353F30 = 0u;
  unk_353F40 = 0u;
  return result;
}

uint64_t sub_183C78@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_315A70 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_8198(&xmmword_353F30, v1, &qword_31D640, qword_275B88);
}

uint64_t View.sharedWithYouController(from:)()
{
  swift_getKeyPath();
  sub_2EF0(&qword_321C48, &qword_27FDF0);
  sub_263C70();
  sub_264190();
  sub_262A90();

  return sub_8E80(v1, &qword_31D640, qword_275B88);
}

uint64_t sub_183DB8()
{
  sub_1840D8();

  return sub_261CB0();
}

uint64_t sub_183E80(uint64_t a1)
{
  sub_8198(a1, v3, &qword_31D640, qword_275B88);
  sub_8198(v3, &v2, &qword_31D640, qword_275B88);
  sub_1840D8();
  sub_261CC0();
  return sub_8E80(v3, &qword_31D640, qword_275B88);
}

uint64_t sub_183F58()
{
  result = sub_2603C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18402C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_321D88, &qword_27FEA8);
  sub_261730();
  sub_8E38(&qword_321D90, &qword_321D88, &qword_27FEA8);
  return swift_getWitnessTable();
}

unint64_t sub_1840D8()
{
  result = qword_321D98;
  if (!qword_321D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321D98);
  }

  return result;
}

uint64_t sub_18412C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_184164()
{
  result = qword_321DC0;
  if (!qword_321DC0)
  {
    sub_15C98(255, &qword_316430, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321DC0);
  }

  return result;
}

uint64_t sub_1841CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_184204()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t ButtonViewModel.init(size:shape:kind:style:content:isEnabled:action:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a7;
  v36 = a6;
  v35 = a5;
  v13 = sub_262730();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v16) = *a2;
  v32 = *a1;
  v33 = v16;
  v34 = *a3;
  v38 = 0x403C000000000000;
  v18 = enum case for Font.TextStyle.subheadline(_:);
  v19 = *(v14 + 104);
  v20 = *a4;
  v30 = a4[1];
  v31 = v20;
  v19(v17, enum case for Font.TextStyle.subheadline(_:), v13);
  sub_40130();
  sub_2612E0();
  v21 = type metadata accessor for ButtonViewModel(0);
  v22 = v21[5];
  v38 = 0x4008000000000000;
  v19(v17, v18, v13);
  sub_2612E0();
  v23 = v21[6];
  *(a8 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v24 = v21[14];
  v25 = sub_260BD0();
  (*(*(v25 - 8) + 56))(a8 + v24, 1, 1, v25);
  v26 = v33;
  *(a8 + v21[7]) = v32;
  *(a8 + v21[8]) = v26;
  *(a8 + v21[9]) = v34;
  v27 = (a8 + v21[10]);
  v28 = v30;
  *v27 = v31;
  v27[1] = v28;
  sub_184BA4(v35, a8 + v21[11], type metadata accessor for ButtonViewModel.Content);
  *(a8 + v21[12]) = v36;
  return sub_184BA4(v37, a8 + v21[13], type metadata accessor for ButtonViewModel.ActionKind);
}

unint64_t ButtonViewModel.theme.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v59 = type metadata accessor for ButtonViewModel.Content(0);
  v3 = *(*(v59 - 8) + 64);
  v4 = __chkstk_darwin(v59);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v53 = &v51 - v7;
  __chkstk_darwin(v6);
  v54 = &v51 - v8;
  v9 = type metadata accessor for ColorConstants(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v51 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v51 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v51 - v21;
  __chkstk_darwin(v20);
  v24 = &v51 - v23;
  v25 = type metadata accessor for ButtonViewModel(0);
  v26 = v25;
  v27 = (v1 + *(v25 + 40));
  v29 = *v27;
  v28 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v57 = v30;
  v58 = v28;
  v56 = v31;
  switch(v29)
  {
    case 0uLL:
      v39 = sub_185084();
      sub_184C2C(v24);
      v55 = ColorConstants.booksButtonBackground.getter();
      sub_185798(v24, type metadata accessor for ColorConstants);
      sub_184C2C(v22);
      v35 = sub_1852E0();
      sub_185798(v22, type metadata accessor for ColorConstants);
      sub_184C2C(v19);
      v40 = [objc_opt_self() tertiaryLabelColor];
      v31 = sub_263070();
      v38 = v19;
      v34 = v39;
      goto LABEL_8;
    case 1uLL:
      sub_184C2C(v24);
      v51 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
      sub_185798(v24, type metadata accessor for ColorConstants);
      sub_184C2C(v22);
      v55 = ColorConstants.booksSecondaryButtonBackground.getter();
      sub_185798(v22, type metadata accessor for ColorConstants);
      sub_184C2C(v19);
      v35 = sub_1852E0();
      v36 = v19;
      v34 = v51;
      sub_185798(v36, type metadata accessor for ColorConstants);
      sub_184C2C(v16);
      v37 = [objc_opt_self() tertiaryLabelColor];
      v31 = sub_263070();
      v38 = v16;
LABEL_8:
      sub_185798(v38, type metadata accessor for ColorConstants);
      break;
    case 2uLL:
      v32 = *(v25 + 36);
      v33 = *(v2 + v32);
      sub_184C2C(v24);
      if (v33 == 1)
      {
        _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
        v34 = sub_263000();
      }

      else
      {
        v34 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      }

      sub_185798(v24, type metadata accessor for ColorConstants);
      sub_184C2C(v13);
      v55 = ColorConstants.vibrantButtonBackground.getter();
      sub_185798(v13, type metadata accessor for ColorConstants);
      sub_184C2C(v24);
      ColorConstants.vibrantButtonBackground.getter();
      sub_185798(v24, type metadata accessor for ColorConstants);
      v35 = sub_263000();

      v41 = *(v2 + v32);
      sub_184C2C(v24);
      if (v41 == 1)
      {
        _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
        sub_263000();
      }

      else
      {
        _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      }

      sub_185798(v24, type metadata accessor for ColorConstants);
      v31 = sub_263000();

      break;
    default:
      v34 = v29;
      v35 = v30;
      v55 = v28;
      break;
  }

  if (*(v2 + *(v26 + 28)) != 2)
  {
    result = sub_185734(v29);
LABEL_21:
    v47 = v55;
    goto LABEL_22;
  }

  v42 = *(v26 + 44);
  v43 = v54;
  sub_18692C(v2 + v42, v54, type metadata accessor for ButtonViewModel.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_185734(v29);
  sub_185798(v43, type metadata accessor for ButtonViewModel.Content);
  if (EnumCaseMultiPayload != 1)
  {
    v45 = v53;
    sub_18692C(v2 + v42, v53, type metadata accessor for ButtonViewModel.Content);
    v46 = swift_getEnumCaseMultiPayload();
    sub_185798(v45, type metadata accessor for ButtonViewModel.Content);
    if (v46 != 7)
    {
      sub_18692C(v2 + v42, v52, type metadata accessor for ButtonViewModel.Content);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        result = sub_185798(v52, type metadata accessor for ButtonViewModel.Content);
        goto LABEL_21;
      }
    }
  }

  v47 = sub_262FA0();

  v48 = sub_262FA0();

  v35 = v48;
LABEL_22:
  v50 = v60;
  *v60 = v34;
  v50[1] = v47;
  v50[2] = v35;
  v50[3] = v31;
  return result;
}

BOOL static ButtonViewModel.Size.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_184BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_184C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ButtonViewModel(0);
  sub_186994(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_184BA4(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_184E00(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t ButtonViewModel.progressViewModel(foregroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorConstants(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonViewModel(0);
  v10 = v9;
  if ((*(v2 + v9[9]) & 1) != 0 || *(v2 + v9[7]) == 2)
  {
    sub_184C2C(v8);
    v11 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_185798(v8, type metadata accessor for ColorConstants);
    v12 = (v2 + v10[10]);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    if (*v12 == 2)
    {
      v17 = 2;
    }

    else
    {
      v18 = v12[1];
      v19 = v12[2];
      v20 = v12[3];
      sub_185734(*v12);
      v17 = v14;
    }

    sub_185B20(v17);
    sub_185B20(2uLL);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v21 = v38;
    v22 = v2 + v10[5];
    result = sub_261300();
    v24 = v38;
    *a2 = v11;
    *(a2 + 8) = v14 == 2;
    *(a2 + 16) = v21;
    *(a2 + 24) = v24;
  }

  else
  {
    v25 = (v2 + v9[10]);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    if (*v25 == 2)
    {
      v30 = 2;
    }

    else
    {
      v31 = v25[1];
      v32 = v25[2];
      v33 = v25[3];
      sub_185734(*v25);
      v30 = v27;
    }

    sub_185B20(v30);
    sub_185B20(2uLL);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v34 = v38;
    v35 = v2 + v10[5];
    sub_261300();
    v36 = v38;
    *a2 = a1;
    *(a2 + 8) = v27 == 2;
    *(a2 + 16) = v34;
    *(a2 + 24) = v36;
  }

  return result;
}
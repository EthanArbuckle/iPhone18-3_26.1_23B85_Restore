unint64_t sub_111078()
{
  result = qword_4F1F28;
  if (!qword_4F1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F28);
  }

  return result;
}

unint64_t sub_1110D0()
{
  result = qword_4F1F30;
  if (!qword_4F1F30)
  {
    type metadata accessor for UpsellInformation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F30);
  }

  return result;
}

unint64_t sub_1111C4()
{
  result = qword_4F1F38;
  if (!qword_4F1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F38);
  }

  return result;
}

unint64_t sub_11121C()
{
  result = qword_4F1F40;
  if (!qword_4F1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F40);
  }

  return result;
}

unint64_t sub_111274()
{
  result = qword_4F1F48;
  if (!qword_4F1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F48);
  }

  return result;
}

unint64_t sub_1112C8()
{
  result = qword_4F1F50;
  if (!qword_4F1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F50);
  }

  return result;
}

uint64_t NSUserDefaults.Keys.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DeleteStationIntent.init(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Sizing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Artwork.Sizing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t EpisodePageFooterShelvesIntent.init(adamID:isSubscribed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static EpisodePageFooterShelvesIntent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1114CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7263736275537369;
  }

  else
  {
    v3 = 0x64496D616461;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEC00000064656269;
  }

  if (*a2)
  {
    v5 = 0x7263736275537369;
  }

  else
  {
    v5 = 0x64496D616461;
  }

  if (*a2)
  {
    v6 = 0xEC00000064656269;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_111578()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_111600()
{
  sub_3ED394();
}

Swift::Int sub_111674()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1116F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0E48;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

void sub_111758(uint64_t *a1@<X8>)
{
  v2 = 0x64496D616461;
  if (*v1)
  {
    v2 = 0x7263736275537369;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC00000064656269;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_11179C()
{
  if (*v0)
  {
    return 0x7263736275537369;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_1117DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0E48;
  v9._object = a2;
  v6 = sub_3EE624(v5, v9);

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

uint64_t sub_111840(uint64_t a1)
{
  v2 = sub_111A5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11187C(uint64_t a1)
{
  v2 = sub_111A5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EpisodePageFooterShelvesIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F58);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_111A5C();
  sub_3EEA14();
  v13 = v8;
  v12 = 0;
  sub_10F450();
  sub_3EE764();
  if (!v2)
  {
    v11 = 1;
    sub_3EE744();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_111A5C()
{
  result = qword_4F1F60;
  if (!qword_4F1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F60);
  }

  return result;
}

unint64_t sub_111AB4()
{
  result = qword_4F1F68;
  if (!qword_4F1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F68);
  }

  return result;
}

unint64_t sub_111B0C()
{
  result = qword_4F1F70;
  if (!qword_4F1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F70);
  }

  return result;
}

unint64_t sub_111B64()
{
  result = qword_4F1F78;
  if (!qword_4F1F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1F80);
    sub_111BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F78);
  }

  return result;
}

unint64_t sub_111BE8()
{
  result = qword_4F1F88;
  if (!qword_4F1F88)
  {
    type metadata accessor for Shelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EpisodePageFooterShelvesIntent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EpisodePageFooterShelvesIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_111D74()
{
  result = qword_4F1F90;
  if (!qword_4F1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F90);
  }

  return result;
}

unint64_t sub_111DCC()
{
  result = qword_4F1F98;
  if (!qword_4F1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F98);
  }

  return result;
}

unint64_t sub_111E24()
{
  result = qword_4F1FA0;
  if (!qword_4F1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1FA0);
  }

  return result;
}

unint64_t sub_111E78()
{
  result = qword_4F1FA8;
  if (!qword_4F1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1FA8);
  }

  return result;
}

uint64_t EpisodeReferenceLinksIntent.init(adamID:priceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for EpisodeReferenceLinksIntent() + 20);
  v6 = sub_3E9604();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for EpisodeReferenceLinksIntent()
{
  result = qword_4F2048;
  if (!qword_4F2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EpisodeReferenceLinksIntent.priceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpisodeReferenceLinksIntent() + 20);
  v4 = sub_3E9604();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_112054(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7079546563697270;
  }

  else
  {
    v3 = 0x64496D616461;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7079546563697270;
  }

  else
  {
    v5 = 0x64496D616461;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_1120FC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_112180()
{
  sub_3ED394();
}

Swift::Int sub_1121F0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_112270@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0E98;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

void sub_1122D0(uint64_t *a1@<X8>)
{
  v2 = 0x64496D616461;
  if (*v1)
  {
    v2 = 0x7079546563697270;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_112310()
{
  if (*v0)
  {
    return 0x7079546563697270;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_11234C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0E98;
  v9._object = a2;
  v6 = sub_3EE624(v5, v9);

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

uint64_t sub_1123B0(uint64_t a1)
{
  v2 = sub_1125F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1123EC(uint64_t a1)
{
  v2 = sub_1125F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EpisodeReferenceLinksIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1FB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1125F8();
  sub_3EEA14();
  v11 = *v3;
  v10[7] = 0;
  sub_10F450();
  sub_3EE764();
  if (!v2)
  {
    type metadata accessor for EpisodeReferenceLinksIntent();
    v10[6] = 1;
    sub_3E9604();
    sub_113010(&qword_4F0478, &type metadata accessor for PriceType);
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1125F8()
{
  result = qword_4F1FB8;
  if (!qword_4F1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1FB8);
  }

  return result;
}

uint64_t EpisodeReferenceLinksIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_3E9604();
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1FC0);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v17 - v6;
  v8 = type metadata accessor for EpisodeReferenceLinksIntent();
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1125F8();
  sub_3EE9F4();
  if (!v2)
  {
    v11 = v10;
    v18 = v8;
    v12 = v21;
    v13 = v22;
    v25 = 0;
    sub_10F610();
    v14 = v23;
    sub_3EE6C4();
    v17 = v11;
    *v11 = v26;
    v24 = 1;
    sub_113010(&qword_4F0488, &type metadata accessor for PriceType);
    sub_3EE6C4();
    (*(v12 + 8))(v7, v14);
    v15 = v17;
    (*(v19 + 32))(&v17[*(v18 + 20)], v5, v13);
    sub_112954(v15, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_112954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeReferenceLinksIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void EpisodeReferenceLinksIntent.cacheKey.getter(void *a1@<X8>)
{
  sub_3EE3C4(27);

  sub_C2A70();
  v2._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v2);

  v3._countAndFlagsBits = 0x546563697270202CLL;
  v3._object = 0xEC0000003D657079;
  sub_3ED3D4(v3);
  type metadata accessor for EpisodeReferenceLinksIntent();
  sub_3E9604();
  sub_113010(&qword_4F1FC8, &type metadata accessor for PriceType);
  v4._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  sub_3ED3D4(v5);
  a1[3] = &type metadata for String;
  a1[4] = &protocol witness table for String;
  *a1 = 0xD000000000000023;
  a1[1] = 0x8000000000427810;
}

unint64_t sub_112BDC()
{
  result = qword_4F1FD8;
  if (!qword_4F1FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1FE0);
    sub_112C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1FD8);
  }

  return result;
}

unint64_t sub_112C60()
{
  result = qword_4F1FE8;
  if (!qword_4F1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1FE8);
  }

  return result;
}

uint64_t sub_112D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_3E9604();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_112E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_3E9604();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_112E7C()
{
  result = sub_3E9604();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_112F0C()
{
  result = qword_4F2080;
  if (!qword_4F2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2080);
  }

  return result;
}

unint64_t sub_112F64()
{
  result = qword_4F2088;
  if (!qword_4F2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2088);
  }

  return result;
}

unint64_t sub_112FBC()
{
  result = qword_4F2090;
  if (!qword_4F2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2090);
  }

  return result;
}

uint64_t sub_113010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EpisodeTimedReferenceLinksIntent.init(adamID:priceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for EpisodeTimedReferenceLinksIntent() + 20);
  v6 = sub_3E9604();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for EpisodeTimedReferenceLinksIntent()
{
  result = qword_4F20F8;
  if (!qword_4F20F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EpisodeTimedReferenceLinksIntent.priceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpisodeTimedReferenceLinksIntent() + 20);
  v4 = sub_3E9604();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EpisodeTimedReferenceLinksIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_3E9604();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = sub_3ED984();
  if (v15)
  {
  }

  else
  {
    v23 = v14;
    v16 = [a1 priceType];
    if (v16)
    {
      v17 = v16;
      sub_3ED244();

      sub_3E95F4();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v18 = *(v8 + 32);
        v18(v13, v6, v7);
        v18(v10, v13, v7);
        *a2 = v23;
        v19 = type metadata accessor for EpisodeTimedReferenceLinksIntent();
        v18(a2 + *(v19 + 20), v10, v7);
        return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
      }
    }

    else
    {

      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_113490(v6);
  }

  v21 = type metadata accessor for EpisodeTimedReferenceLinksIntent();
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

uint64_t sub_113490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11350C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_3E9604();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_113598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_3E9604();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_113650@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0EE8;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1136A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0F20;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1136FC(uint64_t a1)
{
  v2 = sub_1138C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_113738(uint64_t a1)
{
  v2 = sub_1138C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EpisodeUpsellActionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2130);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1138C0();
  sub_3EEA14();
  v9[1] = v7;
  sub_10F450();
  sub_3EE764();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1138C0()
{
  result = qword_4F2138;
  if (!qword_4F2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2138);
  }

  return result;
}

unint64_t sub_1139B0()
{
  result = qword_4F2140;
  if (!qword_4F2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2140);
  }

  return result;
}

unint64_t sub_113A08()
{
  result = qword_4F2148;
  if (!qword_4F2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2148);
  }

  return result;
}

unint64_t sub_113A60()
{
  result = qword_4F2150;
  if (!qword_4F2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2150);
  }

  return result;
}

unint64_t sub_113AB4()
{
  result = qword_4F2158;
  if (!qword_4F2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2158);
  }

  return result;
}

uint64_t sub_113B44@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0F58;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_113B98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0F90;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_113BF0(uint64_t a1)
{
  v2 = sub_113DB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_113C2C(uint64_t a1)
{
  v2 = sub_113DB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EpisodeUpsellShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2160);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_113DB4();
  sub_3EEA14();
  v9[1] = v7;
  sub_10F450();
  sub_3EE764();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_113DB4()
{
  result = qword_4F2168;
  if (!qword_4F2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2168);
  }

  return result;
}

uint64_t EpisodeUpsellShelfIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2170);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_113DB4();
  sub_3EE9F4();
  if (!v2)
  {
    sub_10F610();
    sub_3EE6C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_113F78()
{
  result = qword_4F2178;
  if (!qword_4F2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2178);
  }

  return result;
}

unint64_t sub_113FD0()
{
  result = qword_4F2180;
  if (!qword_4F2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2180);
  }

  return result;
}

unint64_t sub_1140F4()
{
  result = qword_4F2188;
  if (!qword_4F2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2188);
  }

  return result;
}

unint64_t sub_11414C()
{
  result = qword_4F2190;
  if (!qword_4F2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2190);
  }

  return result;
}

unint64_t sub_1141A4()
{
  result = qword_4F2198;
  if (!qword_4F2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2198);
  }

  return result;
}

unint64_t sub_1141F8()
{
  result = qword_4F21A0;
  if (!qword_4F21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F21A0);
  }

  return result;
}

uint64_t type metadata accessor for FetchActionIntent()
{
  result = qword_4F2210;
  if (!qword_4F2210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FetchActionIntent.init(url:isIncomingURL:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_3E5DC4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for FetchActionIntent();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static FetchActionIntent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s8ShelfKit15FetchPageIntentV2eeoiySbAC_ACtFZ_0())
  {
    ActionIntent = type metadata accessor for FetchActionIntent();
    v5 = *(a1 + *(ActionIntent + 20)) ^ *(a2 + *(ActionIntent + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1143C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s8ShelfKit15FetchPageIntentV2eeoiySbAC_ACtFZ_0())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_114420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696D6F636E497369;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xED00006C7255676ELL;
  }

  if (*a2)
  {
    v5 = 0x696D6F636E497369;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xED00006C7255676ELL;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_1144CC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_114554()
{
  sub_3ED394();
}

Swift::Int sub_1145C8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_11464C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0FC8;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

void sub_1146AC(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x696D6F636E497369;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xED00006C7255676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1146F0()
{
  if (*v0)
  {
    return 0x696D6F636E497369;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_114730@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0FC8;
  v9._object = a2;
  v6 = sub_3EE624(v5, v9);

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

uint64_t sub_114794(uint64_t a1)
{
  v2 = sub_1149C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1147D0(uint64_t a1)
{
  v2 = sub_1149C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchActionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F21A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1149C4();
  sub_3EEA14();
  v8[15] = 0;
  sub_3E5DC4();
  sub_114DF8(&qword_4F0118, &type metadata accessor for URL);
  sub_3EE764();
  if (!v1)
  {
    type metadata accessor for FetchActionIntent();
    v8[14] = 1;
    sub_3EE744();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1149C4()
{
  result = qword_4F21B0;
  if (!qword_4F21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F21B0);
  }

  return result;
}

uint64_t sub_114AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E5DC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_114BB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3E5DC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_114C6C()
{
  result = sub_3E5DC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_114CF4()
{
  result = qword_4F2248;
  if (!qword_4F2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2248);
  }

  return result;
}

unint64_t sub_114D4C()
{
  result = qword_4F2250;
  if (!qword_4F2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2250);
  }

  return result;
}

unint64_t sub_114DA4()
{
  result = qword_4F2258;
  if (!qword_4F2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2258);
  }

  return result;
}

uint64_t sub_114DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_114E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_117244(v13, v10, type metadata accessor for TabMenu.Item);
      sub_117244(v14, v6, type metadata accessor for TabMenu.Item);
      v16 = v4[6];
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v6[v16];
      v20 = v17 == *v19 && v18 == *(v19 + 1);
      if (!v20 && (sub_3EE804() & 1) == 0)
      {
        break;
      }

      v21 = v4[7];
      v22 = *&v10[v21];
      v23 = *&v6[v21];
      switch(v22)
      {
        case 1uLL:
          if (v23 != (&dword_0 + 1))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 2uLL:
          if (v23 != (&dword_0 + 2))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 3uLL:
          if (v23 != (&dword_0 + 3))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 4uLL:
          if (v23 != &dword_4)
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 5uLL:
          if (v23 != (&dword_4 + 1))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 6uLL:
          if (v23 != (&dword_4 + 2))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 7uLL:
          if (v23 != (&dword_4 + 3))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 8uLL:
          if (v23 != &dword_8)
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 9uLL:
          if (v23 != (&dword_8 + 1))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0xAuLL:
          if (v23 != (&dword_8 + 2))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0xBuLL:
          if (v23 != (&dword_8 + 3))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0xCuLL:
          if (v23 != &dword_C)
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0xDuLL:
          if (v23 != (&dword_C + 1))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0xEuLL:
          if (v23 != (&dword_C + 2))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0xFuLL:
          if (v23 != (&dword_C + 3))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0x10uLL:
          if (v23 != &dword_10)
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0x11uLL:
          if (v23 != (&dword_10 + 1))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        case 0x12uLL:
          if (v23 != (&dword_10 + 2))
          {
            goto LABEL_78;
          }

          goto LABEL_64;
        default:
          if (v23 - 1 < 0x12)
          {
            goto LABEL_78;
          }

          if (v22)
          {
            if (!v23)
            {
              goto LABEL_78;
            }

            v24 = v22[2] == *(v23 + 2) && v22[3] == *(v23 + 3);
            if (!v24 && (sub_3EE804() & 1) == 0)
            {
              goto LABEL_78;
            }

            v25 = v22[4] == *(v23 + 4) && v22[5] == *(v23 + 5);
            if (!v25 && (sub_3EE804() & 1) == 0 || *(v22 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) != *(v23 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) || *(v22 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) != *(v23 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount))
            {
              goto LABEL_78;
            }
          }

          else if (v23)
          {
            goto LABEL_78;
          }

LABEL_64:
          if (v10[v4[8]] != v6[v4[8]] || v10[v4[9]] != v6[v4[9]] || v10[v4[10]] != v6[v4[10]] || v10[v4[11]] != v6[v4[11]] || v10[v4[12]] != v6[v4[12]])
          {
            goto LABEL_78;
          }

          v26 = v4[13];
          v27 = *&v10[v26];
          v28 = *&v6[v26];
          if (v27)
          {
            if (!v28)
            {
              goto LABEL_78;
            }

            v29 = sub_114E40(v27, v28);

            sub_1172AC(v6, type metadata accessor for TabMenu.Item);
            sub_1172AC(v10, type metadata accessor for TabMenu.Item);
            if ((v29 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v28)
            {
              goto LABEL_78;
            }

            sub_1172AC(v6, type metadata accessor for TabMenu.Item);
            sub_1172AC(v10, type metadata accessor for TabMenu.Item);
          }

          v14 += v15;
          v13 += v15;
          result = 1;
          if (!--v11)
          {
            return result;
          }

          break;
      }
    }

LABEL_78:
    sub_1172AC(v6, type metadata accessor for TabMenu.Item);
    sub_1172AC(v10, type metadata accessor for TabMenu.Item);
  }

  return 0;
}

uint64_t sub_115300(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_11535C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLink();
  v5 = __chkstk_darwin(v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v27 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_117244(v13, v10, type metadata accessor for AccountLink);
      sub_117244(v14, v7, type metadata accessor for AccountLink);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_3EE804() & 1) == 0)
      {
        break;
      }

      type metadata accessor for Action();
      if ((sub_3E7FB4() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 24);
      v18 = *(v10 + v17);
      v19 = *(v7 + v17);
      if (v18)
      {
        v20 = 0x6E6F69746361;
      }

      else
      {
        v20 = 0x697461676976616ELL;
      }

      if (v18)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xEA00000000006E6FLL;
      }

      if (v19)
      {
        v22 = 0x6E6F69746361;
      }

      else
      {
        v22 = 0x697461676976616ELL;
      }

      if (v19)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xEA00000000006E6FLL;
      }

      if (v20 == v22 && v21 == v23)
      {

        sub_1172AC(v7, type metadata accessor for AccountLink);
        sub_1172AC(v10, type metadata accessor for AccountLink);
      }

      else
      {
        v25 = sub_3EE804();

        sub_1172AC(v7, type metadata accessor for AccountLink);
        sub_1172AC(v10, type metadata accessor for AccountLink);
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_1172AC(v7, type metadata accessor for AccountLink);
    sub_1172AC(v10, type metadata accessor for AccountLink);
  }

  return 0;
}

uint64_t sub_115630(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_3EE804() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1156C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1171FC(&qword_4E9880, &type metadata accessor for URL);
    v22 = sub_3ED174();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1158D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_3EE804() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_115978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Category() - 8;
  __chkstk_darwin(v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_117244(v13, v10, type metadata accessor for Category);
        sub_117244(v14, v6, type metadata accessor for Category);
        v16 = static Category.== infix(_:_:)(v10, v6);
        sub_1172AC(v6, type metadata accessor for Category);
        sub_1172AC(v10, type metadata accessor for Category);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_115B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 4) == *(i - 4); i += 5)
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(i - 1);
      v8 = *i;
      if (*(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_3EE804();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }

        if (v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_115BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    sub_117100();
    while (1)
    {
      sub_11714C(v3, v19);
      sub_11714C(v4, v17);
      v6 = v19[0];
      v7 = v17[0];
      if ((sub_3EDEC4() & 1) == 0 || (v19[4] != v17[4] || v19[5] != v17[5]) && (sub_3EE804() & 1) == 0)
      {
        break;
      }

      if ((v19[6] != v17[6] || v19[7] != v17[7]) && (sub_3EE804() & 1) == 0 || v20 != v18)
      {
        break;
      }

      v8 = [v6 contentItemIdentifier];
      v9 = sub_3ED244();
      v11 = v10;

      v12 = [v7 contentItemIdentifier];
      v13 = sub_3ED244();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {

        sub_1171A8(v17);
        sub_1171A8(v19);
      }

      else
      {
        v5 = sub_3EE804();

        sub_1171A8(v17);
        sub_1171A8(v19);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 120;
      v4 += 120;
      if (!--v2)
      {
        return 1;
      }
    }

    sub_1171A8(v17);
    sub_1171A8(v19);
  }

  return 0;
}

uint64_t sub_115DF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v3 = (a2 + 72);
      v4 = a1 + 40;
      do
      {
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        v24 = *(v4 - 8);
        v25 = v5;
        v26 = v6;
        v27 = v7;
        v28 = v8;
        v29 = v9;
        v11 = *(v3 - 4);
        v12 = *(v3 - 3);
        v13 = *(v3 - 2);
        v14 = *(v3 - 1);
        v18 = *(v3 - 5);
        v10 = v18;
        v19 = v11;
        v20 = v12;
        v21 = v13;
        v22 = v14;
        v23 = *v3;
        v15 = v23;
        sub_131C4(v24, v5, v6, v7, v8, v9);
        sub_131C4(v10, v11, v12, v13, v14, v15);
        v16 = _s8ShelfKit22AccountSettingsSectionO2eeoiySbAC_ACtFZ_0(&v24, &v18);
        sub_11701C(v18, v19, v20, v21, v22, v23);
        sub_11701C(v24, v25, v26, v27, v28, v29);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_115F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 1);
      v9 = *v4;

      if (sub_3E94A4())
      {
        if (v7)
        {

          v10 = v7;
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v12 = sub_3ECE84();
          __swift_project_value_buffer(v12, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v6 = 0x656E696665646E75;
          v10 = 0xE900000000000064;
        }
      }

      else
      {
        sub_17A28();
        v6 = sub_3EE1F4();
        v10 = v11;
      }

      if (sub_3E94A4())
      {
        if (v9)
        {

          v13 = v9;
          if (v6 != v8)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v16 = sub_3ECE84();
          __swift_project_value_buffer(v16, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v13 = 0xE900000000000064;
          if (v6 != 0x656E696665646E75)
          {
LABEL_5:
            v5 = sub_3EE804();

            if ((v5 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_17A28();
        v14 = sub_3EE1F4();
        v13 = v15;
        if (v6 != v14)
        {
          goto LABEL_5;
        }
      }

      if (v10 != v13)
      {
        goto LABEL_5;
      }

LABEL_6:
      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_116358(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = sub_3E7F44();
      v7 = v6;
      if (v5 == sub_3E7F44() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_3EE804();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_11643C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_64:
    v5 = sub_3EE5A4();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (a2 >> 62)
  {
    result = sub_3EE5A4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v29 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v13 = i - 4;
        v14 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
          goto LABEL_64;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = sub_3EE3F4();
          v15 = result;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_69;
          }

          v15 = *(a1 + 8 * i);

          if (v11)
          {
LABEL_21:
            v16 = sub_3EE3F4();
            goto LABEL_26;
          }
        }

        if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_70;
        }

        v16 = *(a2 + 8 * i);

LABEL_26:
        v17 = v15[2] == v16[2] && v15[3] == v16[3];
        if (!v17 && (sub_3EE804() & 1) == 0 || (v15[4] == v16[4] ? (v18 = v15[5] == v16[5]) : (v18 = 0), !v18 && (sub_3EE804() & 1) == 0 || *(v15 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) != *(v16 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount)))
        {

          return 0;
        }

        v19 = *(v15 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);

        v4 = *(v16 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);

        result = v19 == v4;
        if (v19 != v4 || v14 == v5)
        {
          return result;
        }
      }
    }

    v21 = a1 + 32;
    v22 = a2 + 32;
    v23 = *(v30 + 16);
    v24 = *(v29 + 16);
    while (v23)
    {
      if (!v24)
      {
        goto LABEL_68;
      }

      v25 = *v21;
      v26 = *v22;
      v27 = *(*v21 + 16) == *(*v22 + 16) && *(*v21 + 24) == *(*v22 + 24);
      if (!v27 && (sub_3EE804() & 1) == 0)
      {
        return 0;
      }

      v28 = *(v25 + 32) == *(v26 + 32) && *(v25 + 40) == *(v26 + 40);
      if (!v28 && (sub_3EE804() & 1) == 0 || *(v25 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) != *(v26 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) || *(v25 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) != *(v26 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount))
      {
        return 0;
      }

      --v24;
      --v23;
      v21 += 8;
      v22 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static FetchSearchEditorialItemLockupsIntent.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

ShelfKit::FetchSearchEditorialItemLockupsIntent __swiftcall FetchSearchEditorialItemLockupsIntent.init(ids:)(ShelfKit::FetchSearchEditorialItemLockupsIntent ids)
{
  rawValue = ids.ids._rawValue;
  v3 = v1;
  v4 = 0;
  v5 = *(ids.ids._rawValue + 2);
  v6 = ids.ids._rawValue + 40;
  v7 = _swiftEmptyArrayStorage;
LABEL_2:
  v8 = &v6[16 * v4];
  while (1)
  {
    if (v5 == v4)
    {

      *v3 = v7;
      return ids;
    }

    if (v4 >= rawValue[2])
    {
      break;
    }

    ++v4;
    v9 = v8 + 16;

    ids.ids._rawValue = sub_3E94C4();
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      v11 = ids.ids._rawValue;
      ids.ids._rawValue = swift_isUniquelyReferenced_nonNull_native();
      if ((ids.ids._rawValue & 1) == 0)
      {
        ids.ids._rawValue = sub_E1524(0, v7[2] + 1, 1, v7);
        v7 = ids.ids._rawValue;
      }

      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        ids.ids._rawValue = sub_E1524(v12 > 1, v13 + 1, 1, v7);
        v7 = ids.ids._rawValue;
      }

      v7[2] = v13 + 1;
      v7[v13 + 4] = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return ids;
}

Swift::Int sub_116908()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_116974()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_1169C4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B1018;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_116A4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B1050;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_116AA4(uint64_t a1)
{
  v2 = sub_116D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_116AE0(uint64_t a1)
{
  v2 = sub_116D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchEpisodeOffersIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_116D08();

  sub_3EEA14();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_116D5C();
  sub_3EE764();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_116D08()
{
  result = qword_4F2270;
  if (!qword_4F2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2270);
  }

  return result;
}

unint64_t sub_116D5C()
{
  result = qword_4F2278;
  if (!qword_4F2278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1BF8);
    sub_10F450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2278);
  }

  return result;
}

unint64_t sub_116DE4()
{
  result = qword_4F2280;
  if (!qword_4F2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2280);
  }

  return result;
}

unint64_t sub_116E40()
{
  result = qword_4F2288;
  if (!qword_4F2288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F2290);
    sub_1171FC(&qword_4F2298, type metadata accessor for EpisodeOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2288);
  }

  return result;
}

unint64_t sub_116F18()
{
  result = qword_4F22A0;
  if (!qword_4F22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F22A0);
  }

  return result;
}

unint64_t sub_116F70()
{
  result = qword_4F22A8;
  if (!qword_4F22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F22A8);
  }

  return result;
}

unint64_t sub_116FC8()
{
  result = qword_4F22B0;
  if (!qword_4F22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F22B0);
  }

  return result;
}

void sub_11701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 == 2)
  {

LABEL_6:

    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    goto LABEL_6;
  }
}

unint64_t sub_1170AC()
{
  result = qword_4F22B8;
  if (!qword_4F22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F22B8);
  }

  return result;
}

unint64_t sub_117100()
{
  result = qword_4F22C0;
  if (!qword_4F22C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F22C0);
  }

  return result;
}

uint64_t sub_1171FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_117244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1172AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ReferenceLinkMetadataIntent.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1173B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_3EE804();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_117438(uint64_t a1)
{
  v2 = sub_117650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_117474(uint64_t a1)
{
  v2 = sub_117650();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F22C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_117650();
  sub_3EEA14();
  sub_3E5DC4();
  sub_117AE0(&qword_4F0118, &type metadata accessor for URL);
  sub_3EE764();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_117650()
{
  result = qword_4F22D0;
  if (!qword_4F22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F22D0);
  }

  return result;
}

uint64_t type metadata accessor for FetchPageIntent()
{
  result = qword_4F2340;
  if (!qword_4F2340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1178EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_11795C()
{
  result = sub_3E5DC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1179DC()
{
  result = qword_4F2378;
  if (!qword_4F2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2378);
  }

  return result;
}

unint64_t sub_117A34()
{
  result = qword_4F2380;
  if (!qword_4F2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2380);
  }

  return result;
}

unint64_t sub_117A8C()
{
  result = qword_4F2388;
  if (!qword_4F2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2388);
  }

  return result;
}

uint64_t sub_117AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_117B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_3EE804();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_117BDC(uint64_t a1)
{
  v2 = sub_117E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_117C18(uint64_t a1)
{
  v2 = sub_117E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchSearchChannelLockupsIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2398);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_117E9C();

  sub_3EEA14();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_116D5C();
  sub_3EE764();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_117E00()
{
  sub_117F48();

  return sub_3EBEF4();
}

unint64_t sub_117E9C()
{
  result = qword_4F23A0;
  if (!qword_4F23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23A0);
  }

  return result;
}

unint64_t sub_117EF0()
{
  result = qword_4F23A8;
  if (!qword_4F23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23A8);
  }

  return result;
}

unint64_t sub_117F48()
{
  result = qword_4F23B0;
  if (!qword_4F23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23B0);
  }

  return result;
}

unint64_t sub_117F9C()
{
  result = qword_4F23B8;
  if (!qword_4F23B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9BB0);
    sub_118020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23B8);
  }

  return result;
}

unint64_t sub_118020()
{
  result = qword_4F23C0;
  if (!qword_4F23C0)
  {
    type metadata accessor for LegacyChannelLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23C0);
  }

  return result;
}

unint64_t sub_1180A4()
{
  result = qword_4F23C8;
  if (!qword_4F23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23C8);
  }

  return result;
}

unint64_t sub_1180FC()
{
  result = qword_4F23D0;
  if (!qword_4F23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23D0);
  }

  return result;
}

unint64_t sub_118154()
{
  result = qword_4F23D8;
  if (!qword_4F23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23D8);
  }

  return result;
}

unint64_t sub_1181A8()
{
  result = qword_4F23E0;
  if (!qword_4F23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23E0);
  }

  return result;
}

uint64_t sub_118220(uint64_t a1)
{
  v2 = sub_1184E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11825C(uint64_t a1)
{
  v2 = sub_1184E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchSearchEditorialItemLockupsIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F23E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1184E0();

  sub_3EEA14();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_116D5C();
  sub_3EE764();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_118444()
{
  sub_11858C();

  return sub_3EBEF4();
}

unint64_t sub_1184E0()
{
  result = qword_4F23F0;
  if (!qword_4F23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23F0);
  }

  return result;
}

unint64_t sub_118534()
{
  result = qword_4F23F8;
  if (!qword_4F23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F23F8);
  }

  return result;
}

unint64_t sub_11858C()
{
  result = qword_4F2400;
  if (!qword_4F2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2400);
  }

  return result;
}

unint64_t sub_1185E0()
{
  result = qword_4F2408;
  if (!qword_4F2408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F14A8);
    sub_118664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2408);
  }

  return result;
}

unint64_t sub_118664()
{
  result = qword_4F2410;
  if (!qword_4F2410)
  {
    type metadata accessor for LegacyEditorialItemLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2410);
  }

  return result;
}

unint64_t sub_1186E8()
{
  result = qword_4F2418;
  if (!qword_4F2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2418);
  }

  return result;
}

unint64_t sub_118740()
{
  result = qword_4F2420;
  if (!qword_4F2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2420);
  }

  return result;
}

unint64_t sub_118798()
{
  result = qword_4F2428;
  if (!qword_4F2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2428);
  }

  return result;
}

unint64_t sub_1187EC()
{
  result = qword_4F2430;
  if (!qword_4F2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2430);
  }

  return result;
}

uint64_t sub_118864(uint64_t a1)
{
  v2 = sub_118B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1188A0(uint64_t a1)
{
  v2 = sub_118B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchSearchEpisodeLockupsIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2438);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_118B24();

  sub_3EEA14();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_116D5C();
  sub_3EE764();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_118A88()
{
  sub_118BD0();

  return sub_3EBEF4();
}

unint64_t sub_118B24()
{
  result = qword_4F2440;
  if (!qword_4F2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2440);
  }

  return result;
}

unint64_t sub_118B78()
{
  result = qword_4F2448;
  if (!qword_4F2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2448);
  }

  return result;
}

unint64_t sub_118BD0()
{
  result = qword_4F2450;
  if (!qword_4F2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2450);
  }

  return result;
}

unint64_t sub_118C24()
{
  result = qword_4F2458;
  if (!qword_4F2458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F14C0);
    sub_118CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2458);
  }

  return result;
}

unint64_t sub_118CA8()
{
  result = qword_4F2460;
  if (!qword_4F2460)
  {
    type metadata accessor for LegacyEpisodeLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2460);
  }

  return result;
}

unint64_t sub_118D2C()
{
  result = qword_4F2468;
  if (!qword_4F2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2468);
  }

  return result;
}

unint64_t sub_118D84()
{
  result = qword_4F2470;
  if (!qword_4F2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2470);
  }

  return result;
}

unint64_t sub_118DDC()
{
  result = qword_4F2478;
  if (!qword_4F2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2478);
  }

  return result;
}

unint64_t sub_118E30()
{
  result = qword_4F2480;
  if (!qword_4F2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2480);
  }

  return result;
}

uint64_t sub_118EA8(uint64_t a1)
{
  v2 = sub_119168();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_118EE4(uint64_t a1)
{
  v2 = sub_119168();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchSearchShowLockupsIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2488);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_119168();

  sub_3EEA14();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_116D5C();
  sub_3EE764();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1190CC()
{
  sub_119214();

  return sub_3EBEF4();
}

unint64_t sub_119168()
{
  result = qword_4F2490;
  if (!qword_4F2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2490);
  }

  return result;
}

unint64_t sub_1191BC()
{
  result = qword_4F2498;
  if (!qword_4F2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2498);
  }

  return result;
}

unint64_t sub_119214()
{
  result = qword_4F24A0;
  if (!qword_4F24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F24A0);
  }

  return result;
}

unint64_t sub_119268()
{
  result = qword_4F24A8;
  if (!qword_4F24A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EA810);
    sub_1192EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F24A8);
  }

  return result;
}

unint64_t sub_1192EC()
{
  result = qword_4EF840;
  if (!qword_4EF840)
  {
    type metadata accessor for LegacyLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF840);
  }

  return result;
}

unint64_t sub_119370()
{
  result = qword_4F24B0;
  if (!qword_4F24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F24B0);
  }

  return result;
}

unint64_t sub_1193C8()
{
  result = qword_4F24B8;
  if (!qword_4F24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F24B8);
  }

  return result;
}

unint64_t sub_119420()
{
  result = qword_4F24C0;
  if (!qword_4F24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F24C0);
  }

  return result;
}

unint64_t sub_119474()
{
  result = qword_4F24C8;
  if (!qword_4F24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F24C8);
  }

  return result;
}

uint64_t sub_1194EC(uint64_t a1)
{
  v2 = sub_1196FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_119528(uint64_t a1)
{
  v2 = sub_1196FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchShelfIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F24D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1196FC();
  sub_3EEA14();
  sub_3E5DC4();
  sub_119B20(&qword_4F0118, &type metadata accessor for URL);
  sub_3EE764();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1196FC()
{
  result = qword_4F24D8;
  if (!qword_4F24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F24D8);
  }

  return result;
}

uint64_t type metadata accessor for FetchShelfIntent()
{
  result = qword_4F2548;
  if (!qword_4F2548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_119918(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_119998(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_119A1C()
{
  result = qword_4F2580;
  if (!qword_4F2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2580);
  }

  return result;
}

unint64_t sub_119A74()
{
  result = qword_4F2588;
  if (!qword_4F2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2588);
  }

  return result;
}

unint64_t sub_119ACC()
{
  result = qword_4F2590;
  if (!qword_4F2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2590);
  }

  return result;
}

uint64_t sub_119B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FetchShowLatestCatalogEpisodesIntent.init(adamID:limit:extendedTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_119BB8(uint64_t a1, int a2)
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

uint64_t sub_119C00(uint64_t result, int a2, int a3)
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

uint64_t FetchTranscriptRequestInformationIntent.priceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FetchTranscriptRequestInformationIntent() + 20);
  v4 = sub_3E9604();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FetchTranscriptRequestInformationIntent()
{
  result = qword_4F2620;
  if (!qword_4F2620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FetchTranscriptRequestInformationIntent.init(adamID:priceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for FetchTranscriptRequestInformationIntent() + 20);
  v6 = sub_3E9604();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_119DD8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B1088;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

uint64_t sub_119E38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_4B1088;
  v9._object = a2;
  v6 = sub_3EE624(v5, v9);

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

uint64_t sub_119E9C(uint64_t a1)
{
  v2 = sub_11A0E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_119ED8(uint64_t a1)
{
  v2 = sub_11A0E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FetchTranscriptRequestInformationIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F25A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11A0E4();
  sub_3EEA14();
  v11 = *v3;
  v10[7] = 0;
  sub_10F450();
  sub_3EE764();
  if (!v2)
  {
    type metadata accessor for FetchTranscriptRequestInformationIntent();
    v10[6] = 1;
    sub_3E9604();
    sub_11A4EC(&qword_4F0478, &type metadata accessor for PriceType);
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_11A0E4()
{
  result = qword_4F25A8;
  if (!qword_4F25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F25A8);
  }

  return result;
}

uint64_t sub_11A2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_3E9604();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_11A358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_3E9604();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

unint64_t sub_11A3E8()
{
  result = qword_4F2658;
  if (!qword_4F2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2658);
  }

  return result;
}

unint64_t sub_11A440()
{
  result = qword_4F2660;
  if (!qword_4F2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2660);
  }

  return result;
}

unint64_t sub_11A498()
{
  result = qword_4F2668;
  if (!qword_4F2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2668);
  }

  return result;
}

uint64_t sub_11A4EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *FindShowEpisodesIntent.predicate.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t FindShowEpisodesIntent.init(showIdentifier:predicate:limit:sortDescriptors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_11A614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_11A670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_11A71C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B10D8;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_11A770@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B1110;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_11A7C8(uint64_t a1)
{
  v2 = sub_11A9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11A804(uint64_t a1)
{
  v2 = sub_11A9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FromChannelShelvesIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2678);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11A9E4();

  sub_3EEA14();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_11ABE8(&qword_4F2278, sub_10F450);
  sub_3EE764();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_11A9E4()
{
  result = qword_4F2680;
  if (!qword_4F2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2680);
  }

  return result;
}

uint64_t FromChannelShelvesIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2688);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11A9E4();
  sub_3EE9F4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
    sub_11ABE8(&qword_4F2690, sub_10F610);
    sub_3EE6C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_11ABE8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1BF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_11AC64()
{
  result = qword_4F2698;
  if (!qword_4F2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2698);
  }

  return result;
}

unint64_t sub_11ACBC()
{
  result = qword_4F26A0;
  if (!qword_4F26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26A0);
  }

  return result;
}

unint64_t sub_11ADDC()
{
  result = qword_4F26A8;
  if (!qword_4F26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26A8);
  }

  return result;
}

unint64_t sub_11AE34()
{
  result = qword_4F26B0;
  if (!qword_4F26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26B0);
  }

  return result;
}

unint64_t sub_11AE8C()
{
  result = qword_4F26B8;
  if (!qword_4F26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26B8);
  }

  return result;
}

unint64_t sub_11AEE0()
{
  result = qword_4F26C0;
  if (!qword_4F26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26C0);
  }

  return result;
}

uint64_t sub_11AF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836213620 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_3EE804();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_11AFE8(uint64_t a1)
{
  v2 = sub_11B1BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11B024(uint64_t a1)
{
  v2 = sub_11B1BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupedSearchResultsIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F26C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11B1BC();
  sub_3EEA14();
  sub_3EE734();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_11B1BC()
{
  result = qword_4F26D0;
  if (!qword_4F26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26D0);
  }

  return result;
}

unint64_t sub_11B214()
{
  result = qword_4F26D8;
  if (!qword_4F26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26D8);
  }

  return result;
}

unint64_t sub_11B26C()
{
  result = qword_4F26E0;
  if (!qword_4F26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26E0);
  }

  return result;
}

unint64_t sub_11B2C4()
{
  result = qword_4F26E8;
  if (!qword_4F26E8)
  {
    type metadata accessor for GroupedSearchResultsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26E8);
  }

  return result;
}

unint64_t sub_11B3A0()
{
  result = qword_4F26F0;
  if (!qword_4F26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26F0);
  }

  return result;
}

unint64_t sub_11B3F8()
{
  result = qword_4F26F8;
  if (!qword_4F26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F26F8);
  }

  return result;
}

unint64_t sub_11B450()
{
  result = qword_4F2700;
  if (!qword_4F2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2700);
  }

  return result;
}

unint64_t sub_11B4A4()
{
  result = qword_4F2708;
  if (!qword_4F2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2708);
  }

  return result;
}

uint64_t HighlightResourceIntent.pageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HighlightResourceIntent() + 20);

  return sub_189AC(v3, a1);
}

uint64_t type metadata accessor for HighlightResourceIntent()
{
  result = qword_4F27A0;
  if (!qword_4F27A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HighlightResourceIntent.resourceRequests.getter()
{
  type metadata accessor for HighlightResourceIntent();
}

uint64_t HighlightResourceIntent.init(adamID:resourceRequests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  v5 = type metadata accessor for HighlightResourceIntent();
  v6 = *(v5 + 20);
  v7 = sub_3E5DC4();
  result = (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  *(a3 + *(v5 + 24)) = a2;
  return result;
}

uint64_t HighlightResourceIntent.init(pageURL:resourceRequests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  v6 = type metadata accessor for HighlightResourceIntent();
  v7 = *(v6 + 20);
  v8 = sub_3E5DC4();
  v9 = *(v8 - 8);
  (*(v9 + 32))(a3 + v7, a1, v8);
  result = (*(v9 + 56))(a3 + v7, 0, 1, v8);
  *(a3 + *(v6 + 24)) = a2;
  return result;
}

void sub_11B74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2808);
  __chkstk_darwin(v9 - 8);
  v13.n128_f64[0] = __chkstk_darwin(v10);
  v54 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v54 + 16))
  {
    v52 = (&v48 - v11);
    v53 = v12;
    v51 = v6;
    v14 = 0;
    v49 = a1;
    v15 = *(a1 + 64);
    v48 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v55 = v59 + 16;
    v56 = (v59 + 32);
    v50 = (v59 + 8);
    while (1)
    {
      v20 = v53;
      if (!v18)
      {
        break;
      }

      v57 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
      v26 = (*(v49 + 48) + 16 * v21);
      v27 = *v26;
      v28 = v26[1];
      v30 = v58;
      v29 = v59;
      (*(v59 + 16))(v58, *(v49 + 56) + *(v59 + 72) * v21, v4, v13);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2810);
      v32 = *(v31 + 48);
      *v20 = v27;
      *(v20 + 1) = v28;
      (*(v29 + 32))(&v20[v32], v30, v4);
      (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
      v33 = v52;
      sub_11CD90(v20, v52);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2810);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        return;
      }

      v35 = *(v34 + 48);
      v37 = *v33;
      v36 = v33[1];
      v38 = v54;
      v39 = v51;
      (*v56)(v51, v33 + v35, v4);
      v40 = sub_552A8(v37, v36);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        (*v50)(v39, v4);
        return;
      }

      v44 = v58;
      v43 = v59;
      (*(v59 + 16))(v58, *(v38 + 56) + *(v59 + 72) * v40, v4);
      sub_11CD48(&qword_4E9880, &type metadata accessor for URL);
      v45 = sub_3ED174();
      v46 = *(v43 + 8);
      v46(v44, v4);
      v46(v39, v4);
      v18 = v57;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2810);
        (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
        v57 = 0;
        v14 = v23;
        goto LABEL_17;
      }

      v25 = *(v48 + 8 * v24);
      ++v14;
      if (v25)
      {
        v57 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v14 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_11BC6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C725565676170;
  v5 = 0x8000000000422B50;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000000422B50;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64496D616461;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6C725565676170;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496D616461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_11BD64()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_11BE08()
{
  sub_3ED394();
}

Swift::Int sub_11BE98()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_11BF38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11CCFC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_11BF68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6C725565676170;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000000422B50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496D616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_11BFC8()
{
  v1 = 0x6C725565676170;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_11C024@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11CCFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_11C04C(uint64_t a1)
{
  v2 = sub_11C6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11C088(uint64_t a1)
{
  v2 = sub_11C6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HighlightResourceIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2710);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11C6EC();
  sub_3EEA14();
  v9 = *(v3 + 8);
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_10F450();
  sub_3EE724();
  if (!v2)
  {
    v10 = type metadata accessor for HighlightResourceIntent();
    LOBYTE(v14) = 1;
    sub_3E5DC4();
    sub_11CD48(&qword_4F0118, &type metadata accessor for URL);
    sub_3EE724();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2720);
    sub_11C740();
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s8ShelfKit23HighlightResourceIntentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9870);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_13;
    }
  }

  v23 = type metadata accessor for HighlightResourceIntent();
  v15 = *(v23 + 20);
  v16 = *(v11 + 48);
  sub_189AC(a1 + v15, v13);
  sub_189AC(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_FCF8(v13, &unk_4E9EE0);
LABEL_16:
      sub_11B74C(*(a1 + *(v23 + 24)), *(a2 + *(v23 + 24)));
      return v18 & 1;
    }

    goto LABEL_12;
  }

  sub_189AC(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_FCF8(v13, &qword_4E9870);
    goto LABEL_13;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_11CD48(&qword_4E9880, &type metadata accessor for URL);
  v20 = sub_3ED174();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_FCF8(v13, &unk_4E9EE0);
  if (v20)
  {
    goto LABEL_16;
  }

LABEL_13:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_11C6EC()
{
  result = qword_4F2718;
  if (!qword_4F2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2718);
  }

  return result;
}

unint64_t sub_11C740()
{
  result = qword_4F2728;
  if (!qword_4F2728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F2720);
    sub_11CD48(&qword_4F0118, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2728);
  }

  return result;
}

uint64_t sub_11C8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
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

uint64_t sub_11C9C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
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

void sub_11CA90()
{
  sub_11CB2C();
  if (v0 <= 0x3F)
  {
    sub_1F630();
    if (v1 <= 0x3F)
    {
      sub_11CB7C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_11CB2C()
{
  if (!qword_4EC1B8)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EC1B8);
    }
  }
}

void sub_11CB7C()
{
  if (!qword_4F27B0)
  {
    sub_3E5DC4();
    v0 = sub_3ED0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F27B0);
    }
  }
}

unint64_t sub_11CBF8()
{
  result = qword_4F27E8;
  if (!qword_4F27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F27E8);
  }

  return result;
}

unint64_t sub_11CC50()
{
  result = qword_4F27F0;
  if (!qword_4F27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F27F0);
  }

  return result;
}

unint64_t sub_11CCA8()
{
  result = qword_4F27F8;
  if (!qword_4F27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F27F8);
  }

  return result;
}

uint64_t sub_11CCFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1148;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_11CD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11CD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static HighlightsPageIntent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_115630(*a1, *a2) & 1) == 0 || (sub_1156C0(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1158D4(v3, v5);
}

uint64_t sub_11CEBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656372756F736572;
  v4 = 0xEC000000736C7255;
  v5 = 0x8000000000422B80;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000000422B80;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 7562345;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0x656372756F736572;
  if (*a2 == 1)
  {
    v5 = 0xEC000000736C7255;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562345;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_11CFC0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_11D068()
{
  sub_3ED394();
}

Swift::Int sub_11D0FC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_11D1A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11DF10(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_11D1D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEC000000736C7255;
  v5 = 0x656372756F736572;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000000422B80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562345;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_11D234()
{
  v1 = 0x656372756F736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562345;
  }
}

uint64_t sub_11D294@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11DF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_11D2BC(uint64_t a1)
{
  v2 = sub_11D5BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11D2F8(uint64_t a1)
{
  v2 = sub_11D5BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HighlightsPageIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2818);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11D5BC();

  sub_3EEA14();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_11DA50(&qword_4F2828);
  sub_3EE764();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1A60);
    sub_11DABC(&qword_4F2830, &qword_4F0118);
    sub_3EE764();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2838);
    sub_11D610();
    sub_3EE764();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_11D5BC()
{
  result = qword_4F2820;
  if (!qword_4F2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2820);
  }

  return result;
}

unint64_t sub_11D610()
{
  result = qword_4F2840;
  if (!qword_4F2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F2838);
    sub_11D6B8(&qword_4F2848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2840);
  }

  return result;
}

uint64_t sub_11D6B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HighlightsPageIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2850);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11D5BC();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  v15 = 0;
  sub_11DA50(&qword_4F2858);
  sub_3EE6C4();
  v14 = a2;
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1A60);
  v15 = 1;
  sub_11DABC(&qword_4F2860, &qword_4F0178);
  sub_3EE6C4();
  v10 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2838);
  v15 = 2;
  sub_11DB58();
  sub_3EE6C4();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  v12 = v14;
  *v14 = v9;
  v12[1] = v10;
  v12[2] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_11DA50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_5010E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11DABC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4F1A60);
    sub_11DCF8(a2, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_11DB58()
{
  result = qword_4F2868;
  if (!qword_4F2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F2838);
    sub_11D6B8(&qword_4F2870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2868);
  }

  return result;
}

unint64_t sub_11DC04()
{
  result = qword_4F2878;
  if (!qword_4F2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2878);
  }

  return result;
}

unint64_t sub_11DC5C()
{
  result = qword_4F2880;
  if (!qword_4F2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2880);
  }

  return result;
}

uint64_t sub_11DCF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_11DE0C()
{
  result = qword_4F2888;
  if (!qword_4F2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2888);
  }

  return result;
}

unint64_t sub_11DE64()
{
  result = qword_4F2890;
  if (!qword_4F2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2890);
  }

  return result;
}

unint64_t sub_11DEBC()
{
  result = qword_4F2898;
  if (!qword_4F2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2898);
  }

  return result;
}

uint64_t sub_11DF10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B11B0;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_11DF5C()
{
  result = qword_4F28A0;
  if (!qword_4F28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F28A0);
  }

  return result;
}

uint64_t RecommendationsShelvesIntent.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E8FB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ManageCategoriesPageIntent.init(metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3E8FB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_11E0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_3EE804();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_11E144(uint64_t a1)
{
  v2 = sub_11E354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11E180(uint64_t a1)
{
  v2 = sub_11E354();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ManageCategoriesPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F28A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11E354();
  sub_3EEA14();
  sub_3E8FB4();
  sub_11EB00(&qword_4F28B8, &type metadata accessor for RecommendationsMetadata);
  sub_3EE764();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_11E354()
{
  result = qword_4F28B0;
  if (!qword_4F28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F28B0);
  }

  return result;
}

uint64_t ManageCategoriesPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_3E8FB4();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F28C0);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ManageCategoriesPageIntent();
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11E354();
  sub_3EE9F4();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_11EB00(&qword_4F28C8, &type metadata accessor for RecommendationsMetadata);
    sub_3EE6C4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_11E67C(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t type metadata accessor for ManageCategoriesPageIntent()
{
  result = qword_4F2940;
  if (!qword_4F2940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11E67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageCategoriesPageIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11E88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8FB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_11E90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8FB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_11E97C()
{
  result = sub_3E8FB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_11E9FC()
{
  result = qword_4F2978;
  if (!qword_4F2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2978);
  }

  return result;
}

unint64_t sub_11EA54()
{
  result = qword_4F2980;
  if (!qword_4F2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2980);
  }

  return result;
}

unint64_t sub_11EAAC()
{
  result = qword_4F2988;
  if (!qword_4F2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2988);
  }

  return result;
}

uint64_t sub_11EB00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11EC1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "newsCategoryAdamId";
  v4 = 0xD000000000000016;
  if (v2 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v2 == 1)
  {
    v6 = "newsCategoryAdamId";
  }

  else
  {
    v6 = "newsSubcategoryAdamIds";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "formattedTimestamps";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "newsSubcategoryAdamIds";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "formattedTimestamps";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_11ECF0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_11ED88()
{
  sub_3ED394();
}

Swift::Int sub_11EE0C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_11EEA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11F70C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_11EED0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "newsCategoryAdamId";
  v4 = 0xD000000000000016;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "newsSubcategoryAdamIds";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "formattedTimestamps";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_11EF28()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_11EF7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11F70C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_11EFA4(uint64_t a1)
{
  v2 = sub_11F238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11EFE0(uint64_t a1)
{
  v2 = sub_11F238();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NewsFromYourShowsShelfIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2998);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11F238();
  sub_3EEA14();
  v16 = v9;
  v15 = 0;
  sub_10F450();
  sub_3EE764();
  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29A8);
    sub_11F524(&qword_4F29B0, sub_10F450);
    sub_3EE764();
    v16 = v10;
    v15 = 2;
    sub_3EE764();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_11F238()
{
  result = qword_4F29A0;
  if (!qword_4F29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F29A0);
  }

  return result;
}

uint64_t NewsFromYourShowsShelfIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_11F238();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  sub_10F610();
  sub_3EE6C4();
  v16 = a2;
  v9 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29A8);
  v17 = 1;
  sub_11F524(&qword_4F29C0, sub_10F610);
  sub_3EE6C4();
  v15 = v9;
  v10 = v18;
  v17 = 2;
  sub_3EE6C4();
  (*(v6 + 8))(v8, v5);
  v11 = v18;
  v12 = v16;
  *v16 = v15;
  v12[1] = v10;
  v12[2] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_11F524(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F29A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_11F608()
{
  result = qword_4F29C8;
  if (!qword_4F29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F29C8);
  }

  return result;
}

unint64_t sub_11F660()
{
  result = qword_4F29D0;
  if (!qword_4F29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F29D0);
  }

  return result;
}

unint64_t sub_11F6B8()
{
  result = qword_4F29D8;
  if (!qword_4F29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F29D8);
  }

  return result;
}

uint64_t sub_11F70C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1218;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t PaginationResult.init(shelves:nextPageIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for PaginationResult() + 20);

  return sub_11F7F0(a2, v4);
}

uint64_t type metadata accessor for PaginationResult()
{
  result = qword_4F2A50;
  if (!qword_4F2A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11F7F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PaginationResult.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v47 = a2;
  v46 = sub_3EBF94();
  v42 = *(v46 - 8);
  __chkstk_darwin(v46);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_3ECED4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  v48 = a1;
  sub_3EBE04();
  sub_3EBD54();
  v21 = *(v9 + 8);
  v44 = v9 + 8;
  v45 = v8;
  v43 = v21;
  v21(v13, v8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    sub_11FDE0(v7);
    v22 = sub_3ECEE4();
    sub_11FE48(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v24 = v23;
    v25 = type metadata accessor for PaginationResult();
    *v24 = 0x7365766C656873;
    v24[1] = 0xE700000000000000;
    v24[2] = v25;
    (*(*(v22 - 8) + 104))(v24, enum case for JSONError.missingProperty(_:), v22);
    swift_willThrow();
    (*(v42 + 8))(v47, v46);
    return v43(v48, v45);
  }

  else
  {
    v27 = *(v15 + 32);
    v38 = v20;
    v27(v20, v7, v14);
    (*(v15 + 16))(v17, v20, v14);
    v28 = v42;
    v34 = *(v42 + 16);
    v29 = v40;
    v36 = v15;
    v37 = v14;
    v30 = v47;
    v31 = v46;
    v34(v40);
    type metadata accessor for Shelf(0);
    sub_11FE48(&qword_4F1F88, type metadata accessor for Shelf);
    v35 = sub_3ED654();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
    sub_3EBE04();
    (v34)(v29, v30, v31);
    type metadata accessor for PaginationResult();
    sub_11FE90();
    v32 = v41;
    sub_3EC574();
    (*(v28 + 8))(v30, v31);
    v43(v48, v45);
    result = (*(v36 + 8))(v38, v37);
    *v32 = v35;
  }

  return result;
}

uint64_t sub_11FDE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11FE48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_11FE90()
{
  result = qword_4F29F0;
  if (!qword_4F29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F29E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F29F0);
  }

  return result;
}

uint64_t sub_11FF20(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_11FFF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1200A0()
{
  sub_120124();
  if (v0 <= 0x3F)
  {
    sub_12017C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_120124()
{
  if (!qword_4F2A60)
  {
    type metadata accessor for Shelf(255);
    v0 = sub_3ED674();
    if (!v1)
    {
      atomic_store(v0, &qword_4F2A60);
    }
  }
}

void sub_12017C()
{
  if (!qword_4F2A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F29E8);
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F2A68);
    }
  }
}

uint64_t type metadata accessor for RecommendationsShelvesIntent()
{
  result = qword_4F2B20;
  if (!qword_4F2B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecommendationsShelvesIntent.init(metadata:suppressInlineCategoriesModule:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_3E8FB4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for RecommendationsShelvesIntent();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static RecommendationsShelvesIntent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s8ShelfKit26ManageCategoriesPageIntentV2eeoiySbAC_ACtFZ_0())
  {
    v4 = type metadata accessor for RecommendationsShelvesIntent();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_12033C()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_12037C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_3EE804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000000004278A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_3EE804();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_120460(uint64_t a1)
{
  v2 = sub_120708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12049C(uint64_t a1)
{
  v2 = sub_120708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1204D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s8ShelfKit26ManageCategoriesPageIntentV2eeoiySbAC_ACtFZ_0())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t RecommendationsShelvesIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2A98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_120708();
  sub_3EEA14();
  v8[15] = 0;
  sub_3E8FB4();
  sub_121064(&qword_4F28B8, &type metadata accessor for RecommendationsMetadata);
  sub_3EE764();
  if (!v1)
  {
    type metadata accessor for RecommendationsShelvesIntent();
    v8[14] = 1;
    sub_3EE744();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_120708()
{
  result = qword_4F2AA0;
  if (!qword_4F2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2AA0);
  }

  return result;
}

uint64_t RecommendationsShelvesIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v20 = sub_3E8FB4();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2AA8);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RecommendationsShelvesIntent();
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_120708();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v10;
  v11 = v18;
  v23 = 0;
  sub_121064(&qword_4F28C8, &type metadata accessor for RecommendationsMetadata);
  v12 = v20;
  sub_3EE6C4();
  v13 = v16;
  (*(v11 + 32))(v16, v5, v12);
  v22 = 1;
  v14 = sub_3EE6A4();
  (*(v19 + 8))(v7, v21);
  *(v13 + *(v8 + 20)) = v14 & 1;
  sub_120A9C(v13, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_120B00(v13);
}

uint64_t sub_120A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsShelvesIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_120B00(uint64_t a1)
{
  v2 = type metadata accessor for RecommendationsShelvesIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_120BF0()
{
  result = qword_4F2AC0;
  if (!qword_4F2AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2AC0);
  }

  return result;
}

uint64_t sub_120D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E8FB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_120E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3E8FB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_120ED8()
{
  result = sub_3E8FB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_120F60()
{
  result = qword_4F2B58;
  if (!qword_4F2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2B58);
  }

  return result;
}

unint64_t sub_120FB8()
{
  result = qword_4F2B60;
  if (!qword_4F2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2B60);
  }

  return result;
}

unint64_t sub_121010()
{
  result = qword_4F2B68;
  if (!qword_4F2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2B68);
  }

  return result;
}

uint64_t sub_121064(unint64_t *a1, void (*a2)(uint64_t))
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

void ReferenceLinkMetadataIntent.cacheKey.getter(void *a1@<X8>)
{
  v2._countAndFlagsBits = sub_3E5CD4();
  sub_3ED3D4(v2);

  v3._countAndFlagsBits = 23842;
  v3._object = 0xE200000000000000;
  sub_3ED3D4(v3);
  a1[3] = &type metadata for String;
  a1[4] = &protocol witness table for String;
  *a1 = 0xD000000000000021;
  a1[1] = 0x80000000004278C0;
}

uint64_t sub_12118C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_12120C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ReferenceLinkMetadataIntent()
{
  result = qword_4F2BD0;
  if (!qword_4F2BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1212E4(uint64_t a1)
{
  v2 = sub_1214B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_121320(uint64_t a1)
{
  v2 = sub_1214B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchHintsPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2C08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1214B8();
  sub_3EEA14();
  sub_3EE734();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1214B8()
{
  result = qword_4F2C10;
  if (!qword_4F2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C10);
  }

  return result;
}

uint64_t SearchHintsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2C18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1214B8();
  sub_3EE9F4();
  if (!v2)
  {
    v9 = sub_3EE694();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_121684()
{
  result = qword_4F2C20;
  if (!qword_4F2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C20);
  }

  return result;
}

unint64_t sub_1216DC()
{
  result = qword_4F2C28;
  if (!qword_4F2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C28);
  }

  return result;
}

unint64_t sub_121734()
{
  result = qword_4F2C30;
  if (!qword_4F2C30)
  {
    type metadata accessor for SearchHintsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C30);
  }

  return result;
}

unint64_t sub_121840()
{
  result = qword_4F2C38;
  if (!qword_4F2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C38);
  }

  return result;
}

unint64_t sub_121898()
{
  result = qword_4F2C40;
  if (!qword_4F2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C40);
  }

  return result;
}

unint64_t sub_1218F0()
{
  result = qword_4F2C48;
  if (!qword_4F2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C48);
  }

  return result;
}

unint64_t sub_121944()
{
  result = qword_4F2C50;
  if (!qword_4F2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C50);
  }

  return result;
}

uint64_t sub_1219B4(uint64_t a1)
{
  v2 = sub_121BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1219F0(uint64_t a1)
{
  v2 = sub_121BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchLandingPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2C58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_121BC4();
  sub_3EEA14();
  sub_3E8FB4();
  sub_122304(&qword_4F28B8, &type metadata accessor for RecommendationsMetadata);
  sub_3EE764();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_121BC4()
{
  result = qword_4F2C60;
  if (!qword_4F2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C60);
  }

  return result;
}

uint64_t SearchLandingPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_3E8FB4();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2C68);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SearchLandingPageIntent();
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_121BC4();
  sub_3EE9F4();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_122304(&qword_4F28C8, &type metadata accessor for RecommendationsMetadata);
    sub_3EE6C4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_121EEC(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t type metadata accessor for SearchLandingPageIntent()
{
  result = qword_4F2CD8;
  if (!qword_4F2CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_121EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingPageIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1220FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8FB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_12217C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8FB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_122200()
{
  result = qword_4F2D10;
  if (!qword_4F2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D10);
  }

  return result;
}

unint64_t sub_122258()
{
  result = qword_4F2D18;
  if (!qword_4F2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D18);
  }

  return result;
}

unint64_t sub_1222B0()
{
  result = qword_4F2D20;
  if (!qword_4F2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D20);
  }

  return result;
}

uint64_t sub_122304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_122388(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656372756F736572;
  v4 = 0xEC000000736C7255;
  v5 = 0x8000000000422B80;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000000422B80;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6867696C68676968;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000073644974;
  }

  v8 = 0x656372756F736572;
  if (*a2 == 1)
  {
    v5 = 0xEC000000736C7255;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6867696C68676968;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC00000073644974;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_122498()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_122550()
{
  sub_3ED394();
}

Swift::Int sub_1225F4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1226A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_123210(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1226D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073644974;
  v4 = 0xEC000000736C7255;
  v5 = 0x656372756F736572;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000000422B80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6867696C68676968;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_12274C()
{
  v1 = 0x656372756F736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6867696C68676968;
  }
}

uint64_t sub_1227BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_123210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1227E4(uint64_t a1)
{
  v2 = sub_122AE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_122820(uint64_t a1)
{
  v2 = sub_122AE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedWithYouShelfIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2D30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_122AE4();

  sub_3EEA14();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_11DA50(&qword_4F2828);
  sub_3EE764();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1A60);
    sub_122E64(&qword_4F2830, &qword_4F0118);
    sub_3EE764();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2838);
    sub_11D610();
    sub_3EE764();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_122AE4()
{
  result = qword_4F2D38;
  if (!qword_4F2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D38);
  }

  return result;
}

uint64_t SharedWithYouShelfIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2D40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_122AE4();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  v15 = 0;
  sub_11DA50(&qword_4F2858);
  sub_3EE6C4();
  v14 = a2;
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1A60);
  v15 = 1;
  sub_122E64(&qword_4F2860, &qword_4F0178);
  sub_3EE6C4();
  v10 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2838);
  v15 = 2;
  sub_11DB58();
  sub_3EE6C4();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  v12 = v14;
  *v14 = v9;
  v12[1] = v10;
  v12[2] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_122E64(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4F1A60);
    sub_122FF8(a2, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_122F04()
{
  result = qword_4F2D48;
  if (!qword_4F2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D48);
  }

  return result;
}

unint64_t sub_122F5C()
{
  result = qword_4F2D50;
  if (!qword_4F2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D50);
  }

  return result;
}

uint64_t sub_122FF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_12310C()
{
  result = qword_4F2D58;
  if (!qword_4F2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D58);
  }

  return result;
}

unint64_t sub_123164()
{
  result = qword_4F2D60;
  if (!qword_4F2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D60);
  }

  return result;
}

unint64_t sub_1231BC()
{
  result = qword_4F2D68;
  if (!qword_4F2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D68);
  }

  return result;
}

uint64_t sub_123210(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1280;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_12325C()
{
  result = qword_4F2D70;
  if (!qword_4F2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D70);
  }

  return result;
}

uint64_t sub_123328(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6863614370696B73;
  v4 = 0xE900000000000065;
  v5 = 0x8000000000422C00;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000000422C00;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x64496D616461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6863614370696B73;
  if (*a2 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496D616461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_123428()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1234D0()
{
  sub_3ED394();
}

Swift::Int sub_123564()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_123608@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_123CFC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_123638(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6863614370696B73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000000422C00;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496D616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_12369C()
{
  v1 = 0x6863614370696B73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_1236FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_123CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_123724(uint64_t a1)
{
  v2 = sub_123964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_123760(uint64_t a1)
{
  v2 = sub_123964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShowPageHeaderAndFooterShelvesIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2D78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v11[1] = *(v1 + 9);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_123964();
  sub_3EEA14();
  v15 = v8;
  v14 = 0;
  sub_10F450();
  sub_3EE764();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_3EE744();
  v12 = 2;
  sub_3EE744();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_123964()
{
  result = qword_4F2D80;
  if (!qword_4F2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D80);
  }

  return result;
}

unint64_t sub_1239BC()
{
  result = qword_4F2D88;
  if (!qword_4F2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D88);
  }

  return result;
}

unint64_t sub_123A14()
{
  result = qword_4F2D90;
  if (!qword_4F2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D90);
  }

  return result;
}

unint64_t sub_123A6C()
{
  result = qword_4F2D98;
  if (!qword_4F2D98)
  {
    type metadata accessor for HeaderFooterShelves();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShowPageHeaderAndFooterShelvesIntent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ShowPageHeaderAndFooterShelvesIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_123BF8()
{
  result = qword_4F2DA0;
  if (!qword_4F2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DA0);
  }

  return result;
}

unint64_t sub_123C50()
{
  result = qword_4F2DA8;
  if (!qword_4F2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DA8);
  }

  return result;
}

unint64_t sub_123CA8()
{
  result = qword_4F2DB0;
  if (!qword_4F2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DB0);
  }

  return result;
}

uint64_t sub_123CFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B12E8;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_123D48()
{
  result = qword_4F2DB8;
  if (!qword_4F2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DB8);
  }

  return result;
}

Swift::String __swiftcall DummyLibraryActionController.podcastTitleFromUuid(uuid:)(Swift::String uuid)
{
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_123E18@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_123E48(uint64_t a1)
{
  v2 = sub_123FF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_123E84(uint64_t a1)
{
  v2 = sub_123FF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UpNextScoringWeightsIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2DC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_123FF4();
  sub_3EEA14();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_123FF4()
{
  result = qword_4F2DC8;
  if (!qword_4F2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DC8);
  }

  return result;
}

unint64_t sub_12404C()
{
  result = qword_4F2DD0;
  if (!qword_4F2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DD0);
  }

  return result;
}

unint64_t sub_1240A4()
{
  result = qword_4F2DD8;
  if (!qword_4F2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DD8);
  }

  return result;
}

unint64_t sub_1240FC()
{
  result = qword_4F2DE0;
  if (!qword_4F2DE0)
  {
    type metadata accessor for UpNextScoringWeights();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DE0);
  }

  return result;
}

unint64_t sub_1241D8()
{
  result = qword_4F2DE8;
  if (!qword_4F2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DE8);
  }

  return result;
}

unint64_t sub_124230()
{
  result = qword_4F2DF0;
  if (!qword_4F2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DF0);
  }

  return result;
}

unint64_t sub_124284()
{
  result = qword_4F2DF8;
  if (!qword_4F2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2DF8);
  }

  return result;
}

uint64_t sub_1242D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_405200;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x80000000004278F0;
  v1 = sub_F7578();
  *(inited + 48) = &type metadata for CategoryPageFromYourShowsShelfIntent;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x8000000000427920;
  v2 = sub_110290();
  *(inited + 80) = &type metadata for ChannelPageIntent;
  *(inited + 88) = v2;
  *(inited + 96) = 0xD00000000000001FLL;
  *(inited + 104) = 0x8000000000427940;
  v3 = sub_1109F8();
  *(inited + 112) = &type metadata for ChannelSubscriptionOffersIntent;
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000001ELL;
  *(inited + 136) = 0x8000000000427960;
  v4 = sub_111078();
  *(inited + 144) = &type metadata for ChannelUpsellInformationIntent;
  *(inited + 152) = v4;
  *(inited + 160) = 0xD00000000000001ELL;
  *(inited + 168) = 0x8000000000427980;
  v5 = sub_111B0C();
  *(inited + 176) = &type metadata for EpisodePageFooterShelvesIntent;
  *(inited + 184) = v5;
  *(inited + 192) = 0xD000000000000019;
  *(inited + 200) = 0x80000000004279A0;
  v6 = sub_1258A8();
  *(inited + 208) = &type metadata for EpisodeUpsellActionIntent;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000000004279C0;
  v7 = sub_113FD0();
  *(inited + 240) = &type metadata for EpisodeUpsellShelfIntent;
  *(inited + 248) = v7;
  *(inited + 256) = 0xD000000000000011;
  *(inited + 264) = 0x80000000004279E0;
  ActionIntent = type metadata accessor for FetchActionIntent();
  v9 = sub_1258FC(&qword_4F2E30, type metadata accessor for FetchActionIntent);
  *(inited + 272) = ActionIntent;
  *(inited + 280) = v9;
  *(inited + 288) = 0xD000000000000018;
  *(inited + 296) = 0x8000000000427A00;
  v10 = sub_1007BC();
  *(inited + 304) = &type metadata for FetchEpisodeOffersIntent;
  *(inited + 312) = v10;
  *(inited + 320) = 0x6761506863746546;
  *(inited + 328) = 0xEF746E65746E4965;
  PageIntent = type metadata accessor for FetchPageIntent();
  v12 = sub_1258FC(&qword_4F22E0, type metadata accessor for FetchPageIntent);
  *(inited + 336) = PageIntent;
  *(inited + 344) = v12;
  *(inited + 352) = 0xD00000000000001FLL;
  *(inited + 360) = 0x8000000000427A20;
  v13 = sub_117F48();
  *(inited + 368) = &type metadata for FetchSearchChannelLockupsIntent;
  *(inited + 376) = v13;
  *(inited + 384) = 0xD00000000000001FLL;
  *(inited + 392) = 0x8000000000427A40;
  v14 = sub_118BD0();
  *(inited + 400) = &type metadata for FetchSearchEpisodeLockupsIntent;
  *(inited + 408) = v14;
  *(inited + 416) = 0xD00000000000001CLL;
  *(inited + 424) = 0x8000000000427A60;
  v15 = sub_119214();
  *(inited + 432) = &type metadata for FetchSearchShowLockupsIntent;
  *(inited + 440) = v15;
  *(inited + 448) = 0xD000000000000025;
  *(inited + 456) = 0x8000000000427A80;
  v16 = sub_11858C();
  *(inited + 464) = &type metadata for FetchSearchEditorialItemLockupsIntent;
  *(inited + 472) = v16;
  *(inited + 480) = 0xD000000000000010;
  *(inited + 488) = 0x8000000000427AB0;
  ShelfIntent = type metadata accessor for FetchShelfIntent();
  v18 = sub_1258FC(&qword_4F24E8, type metadata accessor for FetchShelfIntent);
  *(inited + 496) = ShelfIntent;
  *(inited + 504) = v18;
  *(inited + 512) = 0xD000000000000027;
  *(inited + 520) = 0x8000000000427AD0;
  TranscriptRequestInformationIntent = type metadata accessor for FetchTranscriptRequestInformationIntent();
  v20 = sub_1258FC(&qword_4F25B8, type metadata accessor for FetchTranscriptRequestInformationIntent);
  *(inited + 528) = TranscriptRequestInformationIntent;
  *(inited + 536) = v20;
  *(inited + 544) = 0xD000000000000018;
  *(inited + 552) = 0x8000000000427B00;
  v21 = sub_11ACBC();
  *(inited + 560) = &type metadata for FromChannelShelvesIntent;
  *(inited + 568) = v21;
  *(inited + 576) = 0xD00000000000001ALL;
  *(inited + 584) = 0x8000000000427B20;
  v22 = sub_11B26C();
  *(inited + 592) = &type metadata for GroupedSearchResultsIntent;
  *(inited + 600) = v22;
  *(inited + 608) = 0xD000000000000017;
  *(inited + 616) = 0x8000000000427B40;
  v23 = type metadata accessor for HighlightResourceIntent();
  v24 = sub_1258FC(&qword_4F2738, type metadata accessor for HighlightResourceIntent);
  *(inited + 624) = v23;
  *(inited + 632) = v24;
  *(inited + 640) = 0xD000000000000014;
  *(inited + 648) = 0x8000000000427B60;
  v25 = sub_11DC5C();
  *(inited + 656) = &type metadata for HighlightsPageIntent;
  *(inited + 664) = v25;
  *(inited + 672) = sub_3E7054();
  *(inited + 680) = v26;
  v27 = sub_3E7064();
  v28 = sub_1258FC(&qword_4F2E38, &type metadata accessor for LibrarySnapshotIntent);
  *(inited + 688) = v27;
  *(inited + 696) = v28;
  *(inited + 704) = sub_3E71F4();
  *(inited + 712) = v29;
  v30 = sub_3E7204();
  v31 = sub_1258FC(&qword_4F2E40, &type metadata accessor for LibraryStorageTipSuggestedLimitIntent);
  *(inited + 720) = v30;
  *(inited + 728) = v31;
  *(inited + 736) = sub_3EC834();
  *(inited + 744) = v32;
  *(inited + 752) = sub_3EC844();
  *(inited + 760) = &protocol witness table for LintMetricsEventIntent;
  *(inited + 768) = 0xD00000000000001ALL;
  *(inited + 776) = 0x8000000000427B80;
  v33 = type metadata accessor for ManageCategoriesPageIntent();
  v34 = sub_1258FC(&qword_4F28D8, type metadata accessor for ManageCategoriesPageIntent);
  *(inited + 784) = v33;
  *(inited + 792) = v34;
  *(inited + 800) = 0xD00000000000001CLL;
  *(inited + 808) = 0x8000000000427BA0;
  v35 = sub_105AC4();
  *(inited + 816) = &type metadata for NewsFromYourShowsShelfIntent;
  *(inited + 824) = v35;
  *(inited + 832) = 0xD00000000000001CLL;
  *(inited + 840) = 0x8000000000427BC0;
  v36 = type metadata accessor for RecommendationsShelvesIntent();
  v37 = sub_1258FC(&qword_4F2AB8, type metadata accessor for RecommendationsShelvesIntent);
  *(inited + 848) = v36;
  *(inited + 856) = v37;
  *(inited + 864) = 0xD000000000000015;
  *(inited + 872) = 0x8000000000427BE0;
  v38 = sub_1216DC();
  *(inited + 880) = &type metadata for SearchHintsPageIntent;
  *(inited + 888) = v38;
  *(inited + 896) = 0xD000000000000017;
  *(inited + 904) = 0x8000000000427C00;
  v39 = type metadata accessor for SearchLandingPageIntent();
  v40 = sub_1258FC(&qword_4F2C78, type metadata accessor for SearchLandingPageIntent);
  *(inited + 912) = v39;
  *(inited + 920) = v40;
  *(inited + 928) = 0xD000000000000018;
  *(inited + 936) = 0x8000000000427C20;
  v41 = sub_122F5C();
  *(inited + 944) = &type metadata for SharedWithYouShelfIntent;
  *(inited + 952) = v41;
  *(inited + 960) = 0xD000000000000024;
  *(inited + 968) = 0x8000000000427C40;
  v42 = sub_123A14();
  *(inited + 976) = &type metadata for ShowPageHeaderAndFooterShelvesIntent;
  *(inited + 984) = v42;
  *(inited + 992) = 0xD00000000000001ALL;
  *(inited + 1000) = 0x8000000000427C70;
  v43 = sub_1240A4();
  *(inited + 1008) = &type metadata for UpNextScoringWeightsIntent;
  *(inited + 1016) = v43;
  v44 = sub_61D94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F2E48);
  result = swift_arrayDestroy();
  qword_4F2E00 = v44;
  return result;
}

uint64_t static IntentKinds.table.getter()
{
  if (qword_4E89B0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_124B00()
{
  result = qword_4F2E08;
  if (!qword_4F2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2E08);
  }

  return result;
}

unint64_t sub_124B54()
{
  if (qword_4E89B0 != -1)
  {
    swift_once();
  }

  v1 = qword_4F2E00;

  return sub_125680(v1);
}

uint64_t sub_124BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v96 = a2;
  v86 = a3;
  v4 = sub_3EBDF4();
  __chkstk_darwin(v4 - 8);
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_3EC284();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2E10);
  __chkstk_darwin(v7 - 8);
  v87 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v12 = *(v90 - 8);
  __chkstk_darwin(v90);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v79 - v16;
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  v20 = sub_3EBF94();
  v94 = *(v20 - 8);
  v95 = v20;
  __chkstk_darwin(v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v79 - v24;
  __chkstk_darwin(v26);
  v102 = &v79 - v27;
  __chkstk_darwin(v28);
  v30 = &v79 - v29;
  v31 = a1;
  v32 = dynamic_cast_existential_2_conditional(a1);
  if (v32)
  {
    v84 = v33;
    v85 = v34;
    v87 = v32;
    __swift_project_boxed_opaque_existential_1(v96, *(v96 + 24));
    sub_3EE9D4();
    sub_3EBF74();
    sub_3EBF34();
    v35 = v93;
    sub_3EBFB4();
    v36 = *(v12 + 8);
    v37 = v90;
    v36(v19, v90);
    v38 = v91;
    v39 = (*(v91 + 48))(v11, 1, v35);
    sub_125618(v11);
    v40 = v95;
    if (v39 == 1)
    {
      sub_93FF8();
      v41 = v89;
      sub_3EC294();
      v42 = v88;
      sub_3EBF34();
      sub_3EBF04();
      v43 = v42;
      v40 = v95;
      v36(v43, v37);
      (*(v38 + 8))(v41, v35);
      v44 = v94;
      (*(v94 + 8))(v30, v40);
      (*(v44 + 32))(v30, v102, v40);
    }

    __swift_project_boxed_opaque_existential_1(v96, *(v96 + 24));
    v45 = v94;
    (*(v94 + 16))(v102, v30, v40);
    sub_3ED0B4();
    sub_3EE9E4();

    *&v100 = v87;
    *(&v100 + 1) = v84;
    v101 = v85;
    __swift_allocate_boxed_opaque_existential_0Tm(&v98);
    v46 = v92;
    sub_3ED7D4();
    if (v46)
    {
      (*(v45 + 8))(v30, v40);
      return __swift_deallocate_boxed_opaque_existential_0Tm(&v98);
    }

    v96 = v100;
    v66 = v100;
    v67 = __swift_project_boxed_opaque_existential_1(&v98, v100);
    v68 = v86;
    *(v86 + 24) = v96;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v68);
    (*(*(v66 - 8) + 16))(boxed_opaque_existential_0Tm, v67, v66);
    (*(v45 + 8))(v30, v40);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v98);
  }

  v48 = v87;
  v83 = v22;
  v84 = v25;
  v49 = v12;
  v50 = v93;
  v51 = v31;
  v52 = dynamic_cast_existential_2_conditional(v31);
  if (v52)
  {
    v80 = v54;
    v81 = v53;
    v82 = v52;
    __swift_project_boxed_opaque_existential_1(v96, *(v96 + 24));
    sub_3EE9D4();
    v55 = v84;
    sub_3EBF74();
    sub_3EBF34();
    v56 = v48;
    v57 = v55;
    sub_3EBFB4();
    v58 = *(v49 + 8);
    v59 = v90;
    v58(v14, v90);
    v60 = v91;
    LODWORD(v55) = (*(v91 + 48))(v56, 1, v50);
    sub_125618(v56);
    v61 = v94;
    if (v55 == 1)
    {
      sub_93FF8();
      v62 = v89;
      sub_3EC294();
      v63 = v88;
      sub_3EBF34();
      sub_3EBF04();
      v58(v63, v59);
      (*(v60 + 8))(v62, v50);
      v64 = v95;
      (*(v61 + 8))(v84, v95);
      v57 = v84;
      (*(v61 + 32))(v84, v102, v64);
    }

    sub_1F958(v96, v97);
    v65 = v92;
    sub_3EBD34();
    if (v65)
    {
      return (*(v61 + 8))(v57, v95);
    }

    v73 = v95;
    (*(v61 + 16))(v83, v57, v95);
    *&v100 = v82;
    *(&v100 + 1) = v81;
    v101 = v80;
    __swift_allocate_boxed_opaque_existential_0Tm(&v98);
    sub_3EC554();
    v74 = v100;
    v75 = v101;
    v76 = __swift_project_boxed_opaque_existential_1(&v98, v100);
    v77 = v86;
    *(v86 + 24) = v74;
    v77[4] = v75;
    v78 = __swift_allocate_boxed_opaque_existential_0Tm(v77);
    (*(*(v74 - 8) + 16))(v78, v76, v74);
    (*(v61 + 8))(v57, v73);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v98);
  }

  v70 = sub_3EE444();
  swift_allocError();
  v72 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0080);
  *v72 = v51;
  __swift_project_boxed_opaque_existential_1(v96, *(v96 + 24));
  sub_3EE9C4();
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_3EE3C4(21);

  v98 = 60;
  v99 = 0xE100000000000000;
  v103._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v103);

  v104._object = 0x8000000000427090;
  v104._countAndFlagsBits = 0xD000000000000012;
  sub_3ED3D4(v104);
  sub_3EE424();
  (*(*(v70 - 8) + 104))(v72, enum case for DecodingError.typeMismatch(_:), v70);
  return swift_willThrow();
}

uint64_t sub_125618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_125680(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3F0);
    v2 = sub_3EE5F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2E18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE400);
        swift_dynamicCast();
        result = sub_B4118(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1258A8()
{
  result = qword_4F2E28;
  if (!qword_4F2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2E28);
  }

  return result;
}

uint64_t sub_1258FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LibraryObserverProvider.__allocating_init(asPartOf:)()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  sub_3EC444();
  sub_3ECD14();

  *(v0 + 16) = v2;
  return v0;
}

uint64_t LibraryObserverProvider.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  sub_3EC444();
  sub_3ECD14();

  *(v0 + 16) = v2;
  return v0;
}

uint64_t LibraryObserverProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t LibraryObserverProvider.libraryChannelCountPublisher.getter()
{
  v1 = sub_3E92E4();
  v2 = *(v1 - 8);
  v21 = v1;
  v22 = v2;
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2E58);
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v21 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F2E60);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v21 - v7;
  v9 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3ED244();
  v10 = [objc_opt_self() predicateForLibraryChannel];
  v11 = [*(v0 + 16) privateQueueContext];
  sub_36174(0, &qword_4F10B0);
  sub_3EDBC4();
  sub_3E92D4();
  *(swift_allocObject() + 16) = v9;
  sub_126284();
  v12 = v9;
  v13 = v21;
  sub_3E9FB4();

  (*(v22 + 8))(v4, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2E78);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_3F5630;
  v15 = sub_3ED204();
  v16 = [v12 integerForKey:v15];

  *(v14 + 32) = v16;
  sub_886BC(&qword_4F2E80, &qword_4F2E58);
  v17 = v23;
  sub_3EA104();

  (*(v25 + 8))(v6, v17);
  sub_886BC(&unk_4F2E88, &unk_4F2E60);
  v18 = v24;
  v19 = sub_3E9F94();

  (*(v26 + 8))(v8, v18);
  return v19;
}

uint64_t LibraryObserverProvider.librarySubscribedChannelsPublisher.getter()
{
  v1 = [*(v0 + 16) privateQueueContext];
  sub_3ED244();
  v2 = [objc_opt_self() predicateForSubscribedChannel];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_3F7950;
  sub_3ED244();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = sub_3ED204();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v3 + 32) = v6;
  sub_36174(0, &qword_4F10B0);
  v7 = sub_3EDBC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2E98);
  sub_36174(0, &qword_4F2EA0);
  sub_3EDD64();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2EA8);
  sub_886BC(&qword_4F2EB0, &qword_4F2EA8);
  v8 = sub_3E9F94();

  return v8;
}

void sub_1261C0(uint64_t a1, void *a2)
{
  isa = sub_3ED864().super.super.isa;
  v4 = sub_3ED204();
  [a2 setValue:isa forKey:v4];
}

uint64_t sub_126244()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_126284()
{
  result = qword_4F2E70;
  if (!qword_4F2E70)
  {
    sub_3E92E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2E70);
  }

  return result;
}

uint64_t CrossfireReferralFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(void *a1)
{
  if (qword_4E8980 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1570);
  __swift_project_value_buffer(v2, qword_4F1540);
  sub_3EC7A4();
  if (qword_4E89B8 != -1)
  {
    swift_once();
  }

  return MetricsActivity.addMetricsFields(into:participatingInCrossfireReferral:)(a1, (v4 == 2) | (v4 & 1));
}

uint64_t sub_126444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2368C;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

__n128 ChildAndParentLocation.init(childFields:parentFields:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  v5 = *a2;
  *(a3 + 88) = a2[1];
  result = a2[2];
  v7 = a2[3];
  *(a3 + 104) = result;
  *(a3 + 120) = v7;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 136) = *(a2 + 8);
  *(a3 + 72) = v5;
  return result;
}

uint64_t ChildAndParentLocation.childFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1265B8(v8, v7);
}

uint64_t ChildAndParentLocation.parentFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v9 = *(v1 + 104);
  v10 = v3;
  v11 = *(v1 + 136);
  v4 = v11;
  v8[0] = *(v1 + 72);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_126668(v8, v7);
}

uint64_t sub_126668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F19D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ChildAndParentLocation.fields.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v32 = *(v0 + 32);
  v33 = v1;
  v3 = *(v0 + 16);
  v31[0] = *v0;
  v31[1] = v3;
  v4 = *(v0 + 88);
  v5 = *(v0 + 120);
  v35[2] = *(v0 + 104);
  v35[3] = v5;
  v35[0] = *(v0 + 72);
  v35[1] = v4;
  v6 = *(v0 + 48);
  v24[1] = v32;
  v24[2] = v6;
  v34 = *(v0 + 64);
  v36 = *(v0 + 136);
  v7 = *(v0 + 64);
  v23 = v31[0];
  v24[0] = v2;
  v26 = *(v0 + 72);
  v8 = *(v0 + 136);
  v25 = v7;
  v30 = v8;
  v29 = *(v0 + 120);
  v28 = *(v0 + 104);
  v27 = *(v0 + 88);
  sub_1265B8(v31, v18);
  sub_126668(v35, v18);
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  do
  {
    v11 = v24 + 72 * v9++;
    while (1)
    {
      v12 = *(v11 - 1);
      if (v12)
      {
        break;
      }

      v11 += 72;
      if (++v9 == 3)
      {
        goto LABEL_11;
      }
    }

    v18[0] = *(v11 - 2);
    v18[1] = v12;
    v13 = *(v11 + 1);
    v19 = *v11;
    v20 = v13;
    v21 = *(v11 + 2);
    v22 = *(v11 + 6);
    v14 = LocationFields.metricsFields.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_E011C(0, v10[2] + 1, 1, v10);
    }

    v16 = v10[2];
    v15 = v10[3];
    if (v16 >= v15 >> 1)
    {
      v10 = sub_E011C((v15 > 1), v16 + 1, 1, v10);
    }

    v10[2] = v16 + 1;
    v10[v16 + 4] = v14;
  }

  while (v9 != 2);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F19D8);
  swift_arrayDestroy();
  return v10;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit14LocationFieldsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1268FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_126944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t InteractionContext.View.metricsTargetType.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 - 2 < 3)
    {
      return sub_3E85B4();
    }

    return sub_3E8554();
  }

  if (a1 == 5)
  {
    return sub_3E8554();
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      return 0;
    }

    return sub_3E8554();
  }

  return sub_3E8594();
}

uint64_t sub_126A3C()
{
  v1 = sub_3E63E4();
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_126C74(v0, &v16 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_126C74(v9, v6);

        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60) + 64);
        v13 = sub_3E8034();
        sub_126D34(&v6[v14]);
LABEL_25:
        sub_126CD8(v9);
        return v13;
      }

      v15 = sub_3E8074();
LABEL_24:
      v13 = v15;
      goto LABEL_25;
    }

    if (!EnumCaseMultiPayload)
    {
      v15 = sub_3E8064();
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_126C74(v9, v3);
      if (sub_3E63B4())
      {
        v13 = sub_3E8034();
        sub_126D34(v3);
        sub_126CD8(v9);
        return v13;
      }

      if (sub_3E63A4() & 1) != 0 || (sub_3E6394())
      {
        sub_126D34(v3);
        sub_126CD8(v9);
        return sub_3E8024();
      }

      sub_126D34(v3);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 10)
    {
      if (EnumCaseMultiPayload == 11 || EnumCaseMultiPayload == 19)
      {
        sub_126CD8(v9);
        return sub_3E8084();
      }

      if (EnumCaseMultiPayload == 20)
      {
        v15 = sub_3E7FF4();
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v15 = sub_3E8024();
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v15 = sub_3E8084();
      goto LABEL_24;
    }
  }

LABEL_31:
  sub_126CD8(v9);
  return 0;
}

uint64_t sub_126C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E63E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_126CD8(uint64_t a1)
{
  v2 = sub_3E63E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_126D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_126D9C()
{
  v1 = sub_3E63E4();
  __chkstk_darwin(v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  sub_126C74(v0, v19 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v11 = sub_3E7B14();
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = sub_3E7AD4();
        goto LABEL_24;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 11:
          v11 = sub_3E7B04();
          goto LABEL_24;
        case 19:
          v11 = sub_3E7B44();
          goto LABEL_24;
        case 20:
          v11 = sub_3E7A44();
LABEL_24:
          v17 = v11;
          sub_126CD8(v9);
          return v17;
      }
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_126C74(v9, v6);
      v13 = *v6;
      v14 = v6[8];
    }

    else
    {
      sub_126C74(v9, v6);
      v13 = *v6;
      v14 = v6[8];

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60);
      sub_126D34(&v6[*(v15 + 64)]);
    }

LABEL_19:
    sub_126CD8(v9);
    if ((v14 & 1) == 0)
    {
      v19[1] = v13;
      sub_17A28();
      return sub_3EE1F4();
    }

    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_126C74(v9, v6);
    v13 = *v6;
    v14 = v6[8];
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_126C74(v9, v3);
    if (sub_3E63A4())
    {
      v12 = sub_3E7A84();
LABEL_27:
      v18 = v12;
      sub_126D34(v3);
      sub_126CD8(v9);
      return v18;
    }

    if (sub_3E6394())
    {
      v12 = sub_3E7AF4();
      goto LABEL_27;
    }

    sub_126D34(v3);
  }

LABEL_29:
  sub_126CD8(v9);
  return 0;
}

uint64_t LocationFields.init(id:idType:locationPosition:locationType:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

double LocationFields.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_3EC624();
  v5 = sub_3E7914();
  v7 = sub_1276EC(v5, v6, v4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_3E7874();
    v12 = sub_1276EC(v10, v11, v4);
    v14 = v13;

    if (v14)
    {
      v15 = sub_3E7944();
      v17 = sub_127538(v15, v16, v4);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        v20 = sub_3E7844();
        v35 = sub_1276EC(v20, v21, v4);
        v23 = v22;

        if (v23)
        {
          v24 = sub_3E7924();
          v26 = sub_1276EC(v24, v25, v4);
          v33 = v27;
          v34 = v26;

          v28 = sub_3EC634();
          (*(*(v28 - 8) + 8))(a1, v28);
          *a2 = v7;
          a2[1] = v9;
          a2[2] = v12;
          a2[3] = v14;
          a2[4] = v17;
          a2[5] = v35;
          a2[6] = v23;
          a2[7] = v34;
          a2[8] = v33;
          return result;
        }
      }

      v31 = sub_3EC634();
      (*(*(v31 - 8) + 8))(a1, v31);
    }

    else
    {
      v32 = sub_3EC634();
      (*(*(v32 - 8) + 8))(a1, v32);
    }
  }

  else
  {
    v30 = sub_3EC634();
    (*(*(v30 - 8) + 8))(a1, v30);
  }

  a2[8] = 0;
  result = 0.0;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void *LocationFields.metricsFields.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v31 = v0[4];
  v32 = v0[5];
  v5 = v0[6];
  v30 = v0[7];
  v6 = v0[8];
  v36 = _swiftEmptyDictionarySingleton;

  v7 = sub_3E7914();
  v9 = v8;
  v35 = &type metadata for String;
  *&v34 = v2;
  *(&v34 + 1) = v1;
  sub_1FB90(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v33, v7, v9, isUniquelyReferenced_nonNull_native);

  v36 = _swiftEmptyDictionarySingleton;
  v11 = sub_3E7874();
  v13 = v12;
  v35 = &type metadata for String;
  *&v34 = v4;
  *(&v34 + 1) = v3;
  sub_1FB90(&v34, v33);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v33, v11, v13, v14);

  v36 = _swiftEmptyDictionarySingleton;
  v15 = sub_3E7954();
  v17 = v16;
  v18 = [objc_allocWithZone(NSNumber) initWithInteger:v31];
  v35 = sub_127870();
  *&v34 = v18;
  sub_1FB90(&v34, v33);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v33, v15, v17, v19);

  v36 = _swiftEmptyDictionarySingleton;
  v20 = sub_3E7854();
  v22 = v21;
  v35 = &type metadata for String;
  *&v34 = v32;
  *(&v34 + 1) = v5;
  sub_1FB90(&v34, v33);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v33, v20, v22, v23);

  v36 = _swiftEmptyDictionarySingleton;
  v24 = sub_3E7924();
  v26 = v24;
  v27 = v25;
  if (v6)
  {
    v35 = &type metadata for String;
    *&v34 = v30;
    *(&v34 + 1) = v6;
    sub_1FB90(&v34, v33);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v33, v26, v27, v28);

    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_13A5BC(v24, v25, &v34);

    sub_837D0(&v34);
    return v36;
  }
}

uint64_t Review.id.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

id sub_127538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_B4118(a1, a2);
  if (v5)
  {
    sub_2F4AC(*(a3 + 56) + 32 * v4, v10);
    sub_2F4AC(v10, v9);
    sub_127870();
    if (swift_dynamicCast())
    {
      v6 = [v8 integerValue];

      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      return v6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return 0;
}

uint64_t sub_127608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_B4118(a1, a2), (v7 & 1) != 0))
  {
    sub_2F4AC(*(a3 + 56) + 32 * v6, v12);
    sub_3EC524();
    sub_2F4AC(v12, &v11);
    sub_127988();
    sub_3E9124();
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v9 = sub_3EC524();
    v10 = *(*(v9 - 8) + 56);

    return v10(a4, 1, 1, v9);
  }
}

uint64_t sub_1276EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_B4118(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_2F4AC(*(a3 + 56) + 32 * v4, v9);
  sub_1FB90(v9, &v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_127790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_B4118(a1, a2), (v7 & 1) != 0))
  {
    sub_2F4AC(*(a3 + 56) + 32 * v6, v12);
    sub_3E5DC4();
    sub_2F4AC(v12, &v11);
    sub_3E9124();
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v9 = sub_3E5DC4();
    v10 = *(*(v9 - 8) + 56);

    return v10(a4, 1, 1, v9);
  }
}

unint64_t sub_127870()
{
  result = qword_4F1C20;
  if (!qword_4F1C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F1C20);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1278E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_127928(uint64_t result, int a2, int a3)
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

unint64_t sub_127988()
{
  result = qword_4F2F68;
  if (!qword_4F2F68)
  {
    sub_3EC524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2F68);
  }

  return result;
}

uint64_t sub_1279E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t MetricsActivity.addMetricsFields(into:participatingInCrossfireReferral:)(void *a1, int a2)
{
  LODWORD(v117) = a2;
  v121 = a1;
  v112 = sub_3EC524();
  v115 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F78);
  __chkstk_darwin(v111);
  v116 = &v105 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F80);
  __chkstk_darwin(v5 - 8);
  v110 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v113 = &v105 - v8;
  __chkstk_darwin(v9);
  v114 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F88);
  __chkstk_darwin(v11 - 8);
  v13 = &v105 - v12;
  v14 = sub_3E8B34();
  v120 = *(v14 - 8);
  __chkstk_darwin(v14);
  v119 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v16);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F90);
  __chkstk_darwin(v19 - 8);
  v21 = &v105 - v20;
  v22 = type metadata accessor for MetricsActivity.PageReferrer(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v2;
  v129 = _swiftEmptyDictionarySingleton;
  v27 = &off_4F2000;
  v118 = v14;
  if (v117)
  {
    v108 = *(v2 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
    sub_3E9874();
    sub_FBD0(&v18[*(v16 + 24)], v21, &qword_4F2F90);
    sub_12B2B4(v18, type metadata accessor for MetricsActivity.State);
    v117 = v23;
    v28 = (*(v23 + 48))(v21, 1, v22);
    v29 = v2;
    if (v28 == 1)
    {
      v30 = v22;
      sub_FCF8(v21, &qword_4F2F90);
    }

    else
    {
      sub_12B8C8(v21, v25, type metadata accessor for MetricsActivity.PageReferrer);
      v31 = sub_3E7904();
      v33 = v32;
      v34 = v25[1];
      if (v34)
      {
        v35 = *v25;
        *(&v128[0] + 1) = &type metadata for String;
        *&v127 = v35;
        *(&v127 + 1) = v34;
        v36 = v31;
        sub_1FB90(&v127, &v124);

        v37 = v129;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v123[0] = v37;
        sub_39B88(&v124, v36, v33, isUniquelyReferenced_nonNull_native);

        v129 = *&v123[0];
      }

      else
      {
        sub_13A5BC(v31, v32, &v127);

        sub_FCF8(&v127, &unk_501090);
      }

      v39 = sub_3E78C4();
      sub_12B0A8(v25 + *(v22 + 20), v39, v40);

      v41 = sub_3E78D4();
      v30 = v22;
      sub_12B0A8(v25 + *(v22 + 24), v41, v42);

      sub_12B2B4(v25, type metadata accessor for MetricsActivity.PageReferrer);
    }

    v43 = v108;
    sub_3E9874();
    v44 = v18[8];
    sub_12B2B4(v18, type metadata accessor for MetricsActivity.State);
    v26 = v29;
    v45 = v30;
    v14 = v118;
    v46 = v117;
    v27 = &off_4F2000;
    if ((v44 & 1) == 0)
    {
      v47 = *(*v43 + class metadata base offset for ManagedBuffer + 16);
      v48 = *(*v43 + 48) + 3;
      v106 = v13;
      v49 = v48 & 0x1FFFFFFFCLL;
      v107 = v26;
      os_unfair_lock_lock((v43 + (v48 & 0x1FFFFFFFCLL)));
      v50 = v14;
      v51 = v43 + *(v16 + 24);
      sub_FCF8(v51 + v47, &qword_4F2F90);
      v52 = v51 + v47;
      v14 = v50;
      (*(v46 + 56))(v52, 1, 1, v45);
      v53 = (v43 + v49);
      v13 = v106;
      os_unfair_lock_unlock(v53);
      v27 = &off_4F2000;
      v26 = v107;
    }
  }

  v54 = *(v27[499] + v26);
  sub_3E9874();
  sub_FBD0(&v18[*(v16 + 44)], v13, &qword_4F2F88);
  sub_12B2B4(v18, type metadata accessor for MetricsActivity.State);
  v55 = v120;
  if ((*(v120 + 48))(v13, 1, v14) == 1)
  {
    result = sub_FCF8(v13, &qword_4F2F88);
    goto LABEL_21;
  }

  v108 = v54;
  v117 = v16;
  (*(v55 + 32))(v119, v13, v14);
  __swift_project_boxed_opaque_existential_1(v121, v121[3]);
  v57 = sub_3EC6E4();
  v58 = sub_3E7834();
  v59 = v114;
  sub_127608(v58, v60, v57, v114);

  v61 = v113;
  sub_3EC514();
  v62 = v115;
  v63 = v112;
  (*(v115 + 56))(v61, 0, 1, v112);
  v64 = *(v111 + 48);
  v65 = v116;
  sub_FBD0(v59, v116, &qword_4F2F80);
  sub_FBD0(v61, v65 + v64, &qword_4F2F80);
  v66 = *(v62 + 48);
  if (v66(v65, 1, v63) != 1)
  {
    v69 = v110;
    sub_FBD0(v65, v110, &qword_4F2F80);
    if (v66(v65 + v64, 1, v63) != 1)
    {
      v70 = v115;
      v71 = v109;
      (*(v115 + 32))(v109, v65 + v64, v63);
      sub_12C378(&qword_4F2FA0, &type metadata accessor for MetricsEventType);
      v72 = sub_3ED174();
      v73 = *(v70 + 8);
      v73(v71, v63);
      sub_FCF8(v113, &qword_4F2F80);
      sub_FCF8(v114, &qword_4F2F80);
      v73(v69, v63);
      sub_FCF8(v65, &qword_4F2F80);
      v68 = v118;
      if (v72)
      {
        goto LABEL_20;
      }

LABEL_18:
      result = (*(v55 + 8))(v119, v68);
      goto LABEL_21;
    }

    sub_FCF8(v113, &qword_4F2F80);
    sub_FCF8(v114, &qword_4F2F80);
    (*(v115 + 8))(v69, v63);
    v68 = v118;
LABEL_17:
    sub_FCF8(v65, &qword_4F2F78);
    goto LABEL_18;
  }

  sub_FCF8(v61, &qword_4F2F80);
  v65 = v116;
  sub_FCF8(v59, &qword_4F2F80);
  v67 = v66(v65 + v64, 1, v63);
  v68 = v118;
  if (v67 != 1)
  {
    goto LABEL_17;
  }

  sub_FCF8(v65, &qword_4F2F80);
LABEL_20:
  v74 = sub_3E7904();
  v76 = v75;
  *(&v128[0] + 1) = &type metadata for String;
  *&v127 = 0xD000000000000019;
  *(&v127 + 1) = 0x8000000000427D20;
  sub_1FB90(&v127, &v124);
  v77 = v129;
  v78 = swift_isUniquelyReferenced_nonNull_native();
  *&v123[0] = v77;
  sub_39B88(&v124, v74, v76, v78);

  v79 = *&v123[0];
  v80 = v119;
  v81 = sub_3E8B14();
  *(&v128[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
  *&v127 = v81;
  sub_1FB90(&v127, &v124);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *&v123[0] = v79;
  sub_3A0A0(&v124, 0x6F43746567646977, 0xED0000747865746ELL, v82);
  v83 = v108;
  v129 = *&v123[0];
  v84 = *(*v108 + class metadata base offset for ManagedBuffer + 16);
  v85 = (*(*v108 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v108 + v85));
  v86 = v68;
  v87 = v83 + *(v117 + 44);
  sub_FCF8(v87 + v84, &qword_4F2F88);
  (*(v55 + 56))(v87 + v84, 1, 1, v86);
  os_unfair_lock_unlock((v83 + v85));
  result = (*(v55 + 8))(v80, v86);
LABEL_21:
  v88 = 0;
  v89 = v129;
  v91 = v129 + 8;
  v90 = v129[8];
  v92 = 1 << *(v129 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & v90;
  v95 = (v92 + 63) >> 6;
  if ((v93 & v90) != 0)
  {
    while (1)
    {
      v96 = v88;
LABEL_32:
      v99 = __clz(__rbit64(v94));
      v94 &= v94 - 1;
      v100 = v99 | (v96 << 6);
      v101 = (v89[6] + 16 * v100);
      v102 = *v101;
      v103 = v101[1];
      sub_2F4AC(v89[7] + 32 * v100, v123);
      *&v124 = v102;
      *(&v124 + 1) = v103;
      sub_1FB90(v123, &v125);

      v98 = v96;
LABEL_33:
      v127 = v124;
      v128[0] = v125;
      v128[1] = v126;
      if (!*(&v124 + 1))
      {
        break;
      }

      sub_1FB90(v128, &v124);
      __swift_mutable_project_boxed_opaque_existential_1(v121, v121[3]);
      v104 = v122;
      sub_3EC6F4();
      __swift_destroy_boxed_opaque_existential_1Tm(&v124);

      v122 = v104;
      if (v104)
      {
        break;
      }

      v88 = v98;
      if (!v94)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    if (v95 <= v88 + 1)
    {
      v97 = v88 + 1;
    }

    else
    {
      v97 = v95;
    }

    v98 = v97 - 1;
    while (1)
    {
      v96 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v96 >= v95)
      {
        v94 = 0;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        goto LABEL_33;
      }

      v94 = v91[v96];
      ++v88;
      if (v94)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  return result;
}
uint64_t sub_100002000()
{
  v0 = sub_10004D020();
  sub_1000037AC(v0, qword_100062400);
  sub_100003774(v0, qword_100062400);
  return sub_10004D000();
}

double sub_100002070@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004CF00();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_10004E720;
  return result;
}

uint64_t sub_1000020C8(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061188, type metadata accessor for GeneratedImage);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100002144(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061188, type metadata accessor for GeneratedImage);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_1000021C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, qword_100062400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000226C(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061078, type metadata accessor for GeneratedImage);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t _s28GenerativeAssistantExtension18ResponseTextEntityV21displayRepresentation10AppIntents07DisplayH0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004CF30();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100002350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002414;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002414()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002508(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_1000610C0, type metadata accessor for GeneratedImage);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000025A4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for GeneratedImage() + 20));
  v4 = *v2;
  v3 = v2[1];
  sub_100003720(*v2, v3);
  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_10000262C()
{
  v0 = *(*(sub_10004D470() - 8) + 64);
  __chkstk_darwin();
  sub_10004D460();
  return sub_10004D300();
}

uint64_t sub_1000026D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002750(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = *(*(sub_10004D130() - 8) + 64);
  __chkstk_darwin();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026D8(a1, a2);
  sub_10004D110();
  return a4(v9);
}

uint64_t sub_100002828()
{
  v0 = *(*(sub_10004D130() - 8) + 64);
  __chkstk_darwin();
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  return sub_10004CC90();
}

uint64_t type metadata accessor for GeneratedImage()
{
  result = qword_100061140;
  if (!qword_100061140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000029D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002AEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004CF30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100002E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004CF30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100002F10()
{
  result = sub_10004CF30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100002FC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002AEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003030(uint64_t a1, id *a2)
{
  result = sub_10004DD10();
  *a2 = 0;
  return result;
}

uint64_t sub_1000030A8(uint64_t a1, id *a2)
{
  v3 = sub_10004DD20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003128@<X0>(void *a1@<X8>)
{
  sub_10004DD30();
  v2 = sub_10004DD00();

  *a1 = v2;
  return result;
}

uint64_t sub_10000316C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10004D2F0();
}

uint64_t sub_1000031B8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10004D2E0();
}

Swift::Int sub_100003210()
{
  sub_10004DFC0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_10004D2E0();
  return sub_10004DFD0();
}

uint64_t sub_10000327C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_10004D2D0();
}

uint64_t sub_1000032EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10004DD30();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100003318(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061228, type metadata accessor for Key);
  v3 = sub_1000029D0(&unk_100061230, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000033D4(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061218, type metadata accessor for DocumentAttributeKey);
  v3 = sub_1000029D0(&qword_100061220, type metadata accessor for DocumentAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10004DD00();

  *a2 = v5;
  return result;
}

uint64_t sub_1000034D8(uint64_t a1)
{
  v2 = sub_1000029D0(&qword_100061208, type metadata accessor for DocumentType);
  v3 = sub_1000029D0(&qword_100061210, type metadata accessor for DocumentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003594()
{
  v1 = *v0;
  sub_10004DD30();
  v2 = sub_10004DDE0();

  return v2;
}

uint64_t sub_1000035D0()
{
  v1 = *v0;
  sub_10004DD30();
  sub_10004DDB0();
}

Swift::Int sub_100003624()
{
  v1 = *v0;
  sub_10004DD30();
  sub_10004DFC0();
  sub_10004DDB0();
  v2 = sub_10004DFD0();

  return v2;
}

uint64_t sub_100003698(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10004DD30();
  v6 = v5;
  if (v4 == sub_10004DD30() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10004DFA0();
  }

  return v9 & 1;
}

uint64_t sub_100003720(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003774(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000037AC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_100003860(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100003BFC()
{
  v0 = (*(*(sub_1000026D8(&unk_100061B30, "zS") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_10004D130();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_10004D020();
  sub_1000037AC(v6, static LLMPartner.typeDisplayRepresentation);
  sub_100003774(v6, static LLMPartner.typeDisplayRepresentation);
  sub_10004D110();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10004D010();
}

uint64_t LLMPartner.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();

  return sub_100003774(v0, static LLMPartner.typeDisplayRepresentation);
}

uint64_t static LLMPartner.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static LLMPartner.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LLMPartner.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static LLMPartner.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LLMPartner.typeDisplayRepresentation.modify())()
{
  if (qword_100060FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();
  sub_100003774(v0, static LLMPartner.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

GenerativeAssistantExtension::LLMPartner_optional __swiftcall LLMPartner.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_10005DBD8;
  v6._object = object;
  v3 = sub_10004DF70(v2, v6);

  if (v3 == 1)
  {
    v4.value = GenerativeAssistantExtension_LLMPartner_other;
  }

  else
  {
    v4.value = GenerativeAssistantExtension_LLMPartner_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t LLMPartner.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x54504774616863;
  }
}

uint64_t sub_1000040B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726568746FLL;
  }

  else
  {
    v4 = 0x54504774616863;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726568746FLL;
  }

  else
  {
    v6 = 0x54504774616863;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10004DFA0();
  }

  return v9 & 1;
}

Swift::Int sub_10000415C()
{
  v1 = *v0;
  sub_10004DFC0();
  sub_10004DDB0();

  return sub_10004DFD0();
}

uint64_t sub_1000041DC()
{
  *v0;
  sub_10004DDB0();
}

Swift::Int sub_100004248()
{
  v1 = *v0;
  sub_10004DFC0();
  sub_10004DDB0();

  return sub_10004DFD0();
}

uint64_t sub_1000042C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005DBD8;
  v8._object = v3;
  v5 = sub_10004DF70(v4, v8);

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

void sub_100004324(uint64_t *a1@<X8>)
{
  v2 = 0x54504774616863;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100004360(uint64_t a1)
{
  v2 = sub_100004A98();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000043AC(uint64_t a1)
{
  v2 = sub_1000049F4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t _s28GenerativeAssistantExtension10LLMPartnerO26caseDisplayRepresentationsSDyAC10AppIntents0F14RepresentationVGvgZ_0()
{
  v0 = (*(*(sub_1000026D8(&qword_100061308, "zS") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v21 - v1;
  v3 = (*(*(sub_1000026D8(&unk_100061B30, "zS") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v21 - v4;
  v6 = sub_10004D130();
  v22 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  sub_1000026D8(&qword_100061310, "zS");
  v9 = sub_1000026D8(&qword_100061F10, &qword_10004F290);
  v10 = *(v9 - 8);
  v24 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10004EFA0;
  v13 = (v12 + v11);
  v21[1] = *(v9 + 48);
  *v13 = 0;
  sub_10004D110();
  v14 = *(v7 + 56);
  v21[2] = v7 + 56;
  v23 = v14;
  v15 = v5;
  v14(v5, 1, 1, v6);
  v16 = sub_10004CF10();
  v17 = *(*(v16 - 8) + 56);
  v17(v2, 1, 1, v16);
  sub_10004CF20();
  v18 = &v13[v24];
  v24 = *(v9 + 48);
  *v18 = 1;
  sub_10004D110();
  v23(v15, 1, 1, v22);
  v17(v2, 1, 1, v16);
  sub_10004CF20();
  v19 = sub_100045C90(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v19;
}

unint64_t sub_100004780()
{
  result = qword_1000612A0;
  if (!qword_1000612A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612A0);
  }

  return result;
}

unint64_t sub_1000047D8()
{
  result = qword_1000612A8;
  if (!qword_1000612A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612A8);
  }

  return result;
}

unint64_t sub_100004830()
{
  result = qword_1000612B0;
  if (!qword_1000612B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612B0);
  }

  return result;
}

unint64_t sub_100004888()
{
  result = qword_1000612B8;
  if (!qword_1000612B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612B8);
  }

  return result;
}

unint64_t sub_1000048EC()
{
  result = qword_1000612C0;
  if (!qword_1000612C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612C0);
  }

  return result;
}

unint64_t sub_100004944()
{
  result = qword_1000612C8;
  if (!qword_1000612C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612C8);
  }

  return result;
}

unint64_t sub_10000499C()
{
  result = qword_1000612D0;
  if (!qword_1000612D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612D0);
  }

  return result;
}

unint64_t sub_1000049F4()
{
  result = qword_1000612D8;
  if (!qword_1000612D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612D8);
  }

  return result;
}

unint64_t sub_100004A98()
{
  result = qword_100061460;
  if (!qword_100061460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061460);
  }

  return result;
}

unint64_t sub_100004AF0()
{
  result = qword_1000612E0;
  if (!qword_1000612E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612E0);
  }

  return result;
}

unint64_t sub_100004B48()
{
  result = qword_1000612E8;
  if (!qword_1000612E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612E8);
  }

  return result;
}

unint64_t sub_100004BA0()
{
  result = qword_1000612F0;
  if (!qword_1000612F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612F0);
  }

  return result;
}

unint64_t sub_100004BF8()
{
  result = qword_1000612F8;
  if (!qword_1000612F8)
  {
    sub_100002AEC(&qword_100061300, &qword_10004F208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMPartner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LLMPartner(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100004E18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10004D150();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000026D8(&qword_100061480, &qword_10004F2F0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_10004D1B0();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v10 = sub_10004D960();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_10004DC80();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v16 = sub_10004D760();
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000050EC, 0, 0);
}

uint64_t sub_1000050EC()
{
  v79 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = *(v3 + 16);
  v4(v1, v0[3], v2);
  v5 = (*(v3 + 88))(v1, v2);
  v6 = v0[24];
  if (v5 == enum case for GeneratedResponse.RichContentEntity.text(_:))
  {
    v7 = v0[28];
    v8 = v0[2];
    (*(v0[25] + 96))(v7, v6);
    v9 = v7[1];
    *v8 = *v7;
    v8[1] = v9;
    v10 = enum case for RichContentResultSegment.string(_:);
    v11 = sub_10004D410();
    (*(*(v11 - 8) + 104))(v8, v10, v11);
LABEL_3:
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    v16 = v0[22];
    v15 = v0[23];
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[19];
    v20 = v0[16];
    v21 = v0[13];
    v67 = v0[12];
    v69 = v0[11];
    v71 = v0[8];
    v73 = v0[7];
    v75 = v0[6];

    v22 = v0[1];

    return v22();
  }

  if (v5 == enum case for GeneratedResponse.RichContentEntity.imageData(_:))
  {
    v24 = v0[28];
    (*(v0[25] + 96))(v24, v6);
    v25 = *v24;
    v0[29] = v24[1];
    v76 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    v0[30] = v27;
    *v27 = v0;
    v27[1] = sub_10000570C;

    return v76();
  }

  else
  {
    if (v5 != enum case for GeneratedResponse.RichContentEntity.fileData(_:))
    {
      v39 = v0[27];
      v40 = v0[21];
      v41 = v0[3];
      v42 = v0[24];
      sub_10004DC30();
      v4(v39, v41, v42);
      v43 = sub_10004DC70();
      v44 = sub_10004DEB0();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v0[27];
      if (v45)
      {
        v47 = v0[25];
        v48 = v0[26];
        v49 = v0[24];
        v72 = v0[18];
        v74 = v0[17];
        v77 = v0[21];
        v50 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v78 = v70;
        *v50 = 136315138;
        v4(v48, v46, v49);
        v51 = sub_10004DD70();
        v68 = v44;
        v53 = v52;
        v54 = *(v47 + 8);
        v54(v46, v49);
        v55 = sub_10001E340(v51, v53, &v78);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v43, v68, "Unexpected segment content: %s", v50, 0xCu);
        sub_100007B00(v70);

        (*(v72 + 8))(v77, v74);
      }

      else
      {
        v56 = v0[24];
        v57 = v0[25];
        v58 = v0[21];
        v59 = v0[17];
        v60 = v0[18];

        v61 = *(v57 + 8);
        v61(v46, v56);
        v54 = v61;
        (*(v60 + 8))(v58, v59);
      }

      v62 = v0[28];
      v63 = v0[24];
      v64 = v0[2];
      *v64 = 0;
      v64[1] = 0xE000000000000000;
      v65 = enum case for RichContentResultSegment.string(_:);
      v66 = sub_10004D410();
      (*(*(v66 - 8) + 104))(v64, v65, v66);
      v54(v62, v63);
      goto LABEL_3;
    }

    v28 = v0[28];
    v30 = v0[15];
    v29 = v0[16];
    v31 = v0[14];
    v32 = v0[12];
    (*(v0[25] + 96))(v28, v6);
    (*(v30 + 32))(v29, v28, v31);
    sub_10004D920();
    v33 = sub_10004D940();
    v35 = v34;
    v0[34] = v34;
    v36 = swift_task_alloc();
    v0[35] = v36;
    *v36 = v0;
    v36[1] = sub_100005A38;
    v37 = v0[12];
    v38 = v0[8];

    return sub_100006724(v38, v37, v33, v35);
  }
}

uint64_t sub_10000570C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 240);
  v8 = *v3;
  v4[31] = a1;
  v4[32] = a2;
  v4[33] = v2;

  if (v2)
  {
    v6 = sub_100006104;
  }

  else
  {
    v6 = sub_100005824;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100005824()
{
  v1 = v0[23];
  sub_10004DC30();
  v2 = sub_10004DC70();
  v3 = sub_10004DEA0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Generated image] Loaded image data successfully", v4, 2u);
  }

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  v8 = v0[23];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[2];

  (*(v10 + 8))(v8, v9);
  *v11 = v6;
  v11[1] = v5;
  v12 = enum case for RichContentResultSegment.imageData(_:);
  v13 = sub_10004D410();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[26];
  v18 = v0[22];
  v17 = v0[23];
  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[13];
  v26 = v0[12];
  v27 = v0[11];
  v28 = v0[8];
  v29 = v0[7];
  v30 = v0[6];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100005A38()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v11 = *v1;
  v2[36] = v0;

  v8 = *(v6 + 8);
  v2[37] = v8;
  v2[38] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  if (v0)
  {
    v9 = sub_1000063A8;
  }

  else
  {
    v9 = sub_100005BD8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100005BD8()
{
  v77 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007BC0(v3, &qword_100061480, &qword_10004F2F0);
    v5 = v0[15];
    v4 = v0[16];
    v73 = v0[14];
    v6 = v0[10];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v61 = v0[9];
    v65 = v0[4];
    v10 = v0[2];
    v11 = sub_1000026D8(&qword_1000613B0, &unk_10004F300);
    v12 = (v10 + v11[12]);
    v13 = (v10 + v11[16]);
    v69 = v11[20];
    (*(v6 + 56))(v7, 1, 1, v61);
    (*(v9 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
    sub_10004D190();
    *v12 = sub_10004D950();
    v12[1] = v14;
    *v13 = 0x64616F6C6E776F44;
    v13[1] = 0xEF64656C69614620;
    v15 = sub_10004D930();
    (*(v5 + 8))(v4, v73);
    *(v10 + v69) = v15;
  }

  else
  {
    v16 = v0[22];
    v17 = v0[13];
    v18 = v0[11];
    (*(v2 + 32))(v17, v3, v1);
    sub_10004DC30();
    v74 = *(v2 + 16);
    v74(v18, v17, v1);
    v19 = sub_10004DC70();
    v20 = sub_10004DEB0();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[38];
    v70 = v0[37];
    v23 = v0[22];
    v24 = v0[17];
    v25 = v0[18];
    v26 = v0[11];
    v27 = v0[9];
    if (v21)
    {
      v62 = v20;
      v28 = swift_slowAlloc();
      v66 = v24;
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136315138;
      sub_100007D30(&qword_1000613B8, &type metadata accessor for URL);
      v30 = sub_10004DF80();
      v59 = v23;
      v32 = v31;
      v70(v26, v27);
      v33 = sub_10001E340(v30, v32, &v76);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v19, v62, "[Generated file] Succesfully downloaded file at %s", v28, 0xCu);
      sub_100007B00(v29);

      (*(v25 + 8))(v59, v66);
    }

    else
    {

      v70(v26, v27);
      (*(v25 + 8))(v23, v24);
    }

    v63 = v0[37];
    v67 = v0[38];
    v35 = v0[15];
    v34 = v0[16];
    v36 = v0[13];
    v71 = v0[14];
    v37 = v0[9];
    v10 = v0[2];
    v38 = sub_1000026D8(&qword_1000613B0, &unk_10004F300);
    v39 = (v10 + v38[12]);
    v40 = (v10 + v38[16]);
    v41 = v38[20];
    v74(v10, v36, v37);
    *v39 = sub_10004D950();
    v39[1] = v42;
    *v40 = sub_10004D940();
    v40[1] = v43;
    v44 = sub_10004D930();
    v63(v36, v37);
    (*(v35 + 8))(v34, v71);
    *(v10 + v41) = v44;
  }

  v45 = enum case for RichContentResultSegment.fileData(_:);
  v46 = sub_10004D410();
  (*(*(v46 - 8) + 104))(v10, v45, v46);
  v48 = v0[27];
  v47 = v0[28];
  v49 = v0[26];
  v51 = v0[22];
  v50 = v0[23];
  v53 = v0[20];
  v52 = v0[21];
  v54 = v0[19];
  v55 = v0[16];
  v56 = v0[13];
  v60 = v0[12];
  v64 = v0[11];
  v68 = v0[8];
  v72 = v0[7];
  v75 = v0[6];

  v57 = v0[1];

  return v57();
}

uint64_t sub_100006104()
{
  v1 = v0[33];
  v2 = v0[20];
  sub_10004DC30();
  swift_errorRetain();
  v3 = sub_10004DC70();
  v4 = sub_10004DEB0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[33];
  v7 = v0[29];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Generated image] Failed to load image data: %@", v8, 0xCu);
    sub_100007BC0(v9, &qword_100061DC0, &unk_100050840);
  }

  else
  {
    v11 = v0[29];
  }

  v12 = v0[2];
  (*(v0[18] + 8))(v0[20], v0[17]);
  *v12 = xmmword_10004E720;
  v13 = enum case for RichContentResultSegment.imageData(_:);
  v14 = sub_10004D410();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[26];
  v19 = v0[22];
  v18 = v0[23];
  v21 = v0[20];
  v20 = v0[21];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[13];
  v27 = v0[12];
  v28 = v0[11];
  v29 = v0[8];
  v30 = v0[7];
  v31 = v0[6];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000063A8()
{
  v1 = v0[36];
  v2 = v0[19];
  sub_10004DC30();
  swift_errorRetain();
  v3 = sub_10004DC70();
  v4 = sub_10004DEB0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Generated file] Failed to download file: %@", v7, 0xCu);
    sub_100007BC0(v8, &qword_100061DC0, &unk_100050840);
  }

  else
  {
    v10 = v0[36];
  }

  (*(v0[18] + 8))(v0[19], v0[17]);
  v12 = v0[15];
  v11 = v0[16];
  v44 = v0[14];
  v13 = v0[10];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  v38 = v0[9];
  v40 = v0[4];
  v17 = v0[2];
  v18 = sub_1000026D8(&qword_1000613B0, &unk_10004F300);
  v19 = (v17 + v18[12]);
  v20 = (v17 + v18[16]);
  v42 = v18[20];
  (*(v13 + 56))(v14, 1, 1, v38);
  (*(v16 + 104))(v15, enum case for URL.DirectoryHint.inferFromPath(_:), v40);
  sub_10004D190();
  *v19 = sub_10004D950();
  v19[1] = v21;
  *v20 = 0x64616F6C6E776F44;
  v20[1] = 0xEF64656C69614620;
  v22 = sub_10004D930();
  (*(v12 + 8))(v11, v44);
  *(v17 + v42) = v22;
  v23 = enum case for RichContentResultSegment.fileData(_:);
  v24 = sub_10004D410();
  (*(*(v24 - 8) + 104))(v17, v23, v24);
  v26 = v0[27];
  v25 = v0[28];
  v27 = v0[26];
  v29 = v0[22];
  v28 = v0[23];
  v31 = v0[20];
  v30 = v0[21];
  v32 = v0[19];
  v33 = v0[16];
  v34 = v0[13];
  v37 = v0[12];
  v39 = v0[11];
  v41 = v0[8];
  v43 = v0[7];
  v45 = v0[6];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100006724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(sub_10004D290() - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = sub_10004D2B0();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = *(*(sub_1000026D8(&qword_100061480, &qword_10004F2F0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = sub_10004D1B0();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000068E0, 0, 0);
}

uint64_t sub_1000068E0()
{
  sub_100007248(v0[6], v0[7], v0[12]);
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];
    sub_100007BC0(v1, &qword_100061480, &qword_10004F2F0);
    (*(v3 + 56))(v4, 1, 1, v2);
    v6 = v0[15];
    v5 = v0[16];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[16];
    v13 = *(v3 + 32);
    v0[17] = v13;
    v0[18] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v13(v12, v1, v2);
    v14 = [objc_opt_self() defaultSessionConfiguration];
    v0[19] = v14;
    [v14 set_usesNWLoader:1];
    v15 = sub_10004DD00();
    [v14 set_sourceApplicationBundleIdentifier:v15];

    v0[20] = [objc_opt_self() sessionWithConfiguration:v14];
    v16 = async function pointer to NSURLSession.download(from:delegate:)[1];
    v17 = swift_task_alloc();
    v0[21] = v17;
    *v17 = v0;
    v17[1] = sub_100006BDC;
    v18 = v0[15];
    v19 = v0[5];

    return NSURLSession.download(from:delegate:)(v18, v19, 0);
  }
}

uint64_t sub_100006BDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_100007154;
  }

  else
  {
    v5 = sub_100006D1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006D1C()
{
  v1 = v0[22];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || [v2 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    v3 = v0[22];
    v4 = v0[20];
    v64 = v0[16];
    v60 = v0[19];
    v62 = v0[15];
    v5 = v0[13];
    v6 = v0[14];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[8];
    v10 = v0[9];
    sub_10004D280();
    sub_100007C20(&_swiftEmptyArrayStorage);
    sub_100007D30(&qword_1000613C0, &type metadata accessor for URLError);
    sub_10004D0E0();
    sub_10004D2A0();
    (*(v8 + 8))(v7, v10);
    swift_willThrow();

    v11 = *(v6 + 8);
    v11(v62, v5);
    v11(v64, v5);
LABEL_4:
    v13 = v0[15];
    v12 = v0[16];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[8];

    v17 = v0[1];
    goto LABEL_5;
  }

  v19 = v0[16];
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  sub_10004D170(v22);
  v24 = v23;
  v0[2] = 0;
  v25 = [v21 removeItemAtURL:v23 error:v0 + 2];

  v26 = v0[2];
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v28 = v26;
    sub_10004D100();

    swift_willThrow();
  }

  v29 = v0[15];
  v30 = v0[16];
  v31 = [v20 defaultManager];
  sub_10004D170(v32);
  v34 = v33;
  sub_10004D170(v35);
  v37 = v36;
  v0[3] = 0;
  LODWORD(v30) = [v31 moveItemAtURL:v34 toURL:v36 error:v0 + 3];

  v38 = v0[3];
  v39 = v0[22];
  v40 = v0[19];
  v41 = v0[20];
  if (!v30)
  {
    v54 = v0[15];
    v53 = v0[16];
    v55 = v0[13];
    v56 = v0[14];
    v57 = v38;
    sub_10004D100();

    swift_willThrow();
    v58 = *(v56 + 8);
    v58(v54, v55);
    v58(v53, v55);
    goto LABEL_4;
  }

  v63 = v0[17];
  v65 = v0[18];
  v42 = v0[15];
  v59 = v0[20];
  v61 = v0[16];
  v44 = v0[13];
  v43 = v0[14];
  v45 = v0[4];
  v46 = *(v43 + 8);
  v47 = v38;
  v46(v42, v44);

  v63(v45, v61, v44);
  (*(v43 + 56))(v45, 0, 1, v44);
  v49 = v0[15];
  v48 = v0[16];
  v51 = v0[11];
  v50 = v0[12];
  v52 = v0[8];

  v17 = v0[1];
LABEL_5:

  return v17();
}

uint64_t sub_100007154()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 184);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100007248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v63 = a1;
  v64 = a2;
  v66 = sub_10004DC80();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004D150();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  (__chkstk_darwin)();
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*(sub_1000026D8(&qword_100061480, &qword_10004F2F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v60 = v56 - v13;
  v14 = sub_10004D1B0();
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  v16 = *(v15 + 64);
  v17 = (__chkstk_darwin)();
  v65 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v56 - v20;
  v22 = __chkstk_darwin(v19);
  v61 = v56 - v23;
  __chkstk_darwin(v22);
  v62 = v56 - v24;
  v25 = CPSharedResourcesDirectory();
  if (!v25)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_6;
  }

  v70 = 0;
  v71 = 0;
  v26 = v6;
  v27 = v8;
  v28 = v7;
  v29 = v3;
  v30 = v25;
  sub_10004DD20();
  v59 = v30;

  v3 = v29;
  v31 = v28;
  v32 = v27;
  v6 = v26;
  if (v71)
  {
    v57 = v70;
    v56[0] = *(v69 + 56);
    v56[1] = v69 + 56;
    (v56[0])(v60, 1, 1, v68);
    v33 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v34 = *(v32 + 104);
    LODWORD(v66) = enum case for URL.DirectoryHint.inferFromPath(_:);
    v34(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v31);
    v58 = v34;
    sub_10004D190();
    v70 = 7368052;
    v71 = 0xE300000000000000;
    v34(v11, v33, v31);
    v60 = sub_100007DF8();
    v35 = v61;
    sub_10004D1A0();
    v57 = *(v32 + 8);
    v57(v11, v31);
    v36 = v68;
    v37 = *(v69 + 8);
    v37(v21, v68);
    v70 = 0xD000000000000018;
    v71 = 0x80000001000517A0;
    v58(v11, v66, v31);
    v38 = v62;
    sub_10004D1A0();
    v57(v11, v31);
    v37(v35, v36);

    v39 = v65;
    sub_10004D180();

    v40 = [objc_opt_self() defaultManager];
    sub_10004D170(v41);
    v43 = v42;
    v70 = 0;
    v44 = [v40 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:&v70];

    if (v44)
    {
      v45 = v70;
      v37(v38, v36);

      v46 = v67;
      (*(v69 + 32))(v67, v39, v36);
      return (v56[0])(v46, 0, 1, v36);
    }

    else
    {
      v55 = v70;
      sub_10004D100();

      swift_willThrow();
      v37(v39, v36);
      return (v37)(v38, v36);
    }
  }

  else
  {
LABEL_6:
    sub_10004DC30();
    v48 = sub_10004DC70();
    v49 = sub_10004DEB0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v70 = v51;
      *v50 = 136315138;
      v72 = CPSharedResourcesDirectory();
      sub_1000026D8(&qword_1000613C8, qword_10004F320);
      v52 = sub_10004DD70();
      v54 = sub_10001E340(v52, v53, &v70);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Could not get URL string: %s", v50, 0xCu);
      sub_100007B00(v51);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v66);
    return (*(v69 + 56))(v67, 1, 1, v68);
  }
}

uint64_t sub_100007970(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1000079D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10004DFC0();
  sub_10004DDB0();
  v6 = sub_10004DFD0();

  return sub_100007A48(a1, a2, v6);
}

unint64_t sub_100007A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10004DFA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100007B00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100007B4C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100007BC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000026D8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100007C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061E10, &unk_10004F310);
    v3 = sub_10004DF50();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007D78(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000079D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007DE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100007D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&unk_100061E40, qword_10004F6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100007DE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100007DF8()
{
  result = qword_1000613D0;
  if (!qword_1000613D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613D0);
  }

  return result;
}

unint64_t sub_100007E50()
{
  result = qword_1000613E0;
  if (!qword_1000613E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613E0);
  }

  return result;
}

unint64_t sub_100007EA8()
{
  result = qword_1000613E8;
  if (!qword_1000613E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613E8);
  }

  return result;
}

uint64_t sub_100007F1C()
{
  v0[5] = sub_10004D500();
  v0[6] = &protocol witness table for GenerativeAssistantFeatureFlagManager;
  sub_100014CF4(v0 + 2);
  sub_10004D4F0();
  sub_10004DE50();
  v0[8] = sub_10004DE40();
  v2 = sub_10004DE20();

  return _swift_task_switch(sub_100007FD4, v2, v1);
}

uint64_t sub_100007FD4()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_10004DA00();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100008044()
{
  v0 = sub_10004D130();
  sub_1000037AC(v0, qword_100062430);
  sub_100003774(v0, qword_100062430);
  return sub_10004D110();
}

uint64_t sub_1000080A8()
{
  v1 = *(v0 + 120);
  sub_10004CCC0();
  return v3;
}

uint64_t sub_1000080DC()
{
  v1 = *(v0 + 128);
  sub_10004CCC0();
  return v3;
}

uint64_t sub_100008110@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(sub_1000026D8(&unk_100061B30, "zS") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = sub_10004D130();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_10004D110();
  sub_10004D110();
  v8 = *(v6 + 56);
  v6 += 56;
  v8(v4, 0, 1, v5);
  sub_1000026D8(&qword_100061560, &qword_10004F700);
  v9 = *(v6 + 16);
  v10 = (*(v6 + 24) + 32) & ~*(v6 + 24);
  *(swift_allocObject() + 16) = xmmword_10004F370;
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004CE40();
  v11 = sub_10004CE30();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t sub_10000839C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000026D8(&unk_100061430, &unk_10004F5E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v61 = v57 - v4;
  v67 = sub_10004CFC0();
  v81 = *(v67 - 8);
  v5 = *(v81 + 64);
  __chkstk_darwin(v67);
  v79 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000026D8(&unk_100061B20, &qword_100050D50);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v60 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = v57 - v11;
  v12 = sub_1000026D8(&unk_100061440, &unk_10004F5F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v59 = v57 - v14;
  v15 = sub_1000026D8(&unk_100061B30, "zS");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v66 = v57 - v17;
  v18 = sub_10004D120();
  v71 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v80 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004D270();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004DCF0();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10004D130();
  v63 = v30;
  v82 = *(v30 - 8);
  v31 = *(v82 + 64);
  __chkstk_darwin(v30);
  v33 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[3] = sub_10004D500();
  a1[4] = &protocol witness table for GenerativeAssistantFeatureFlagManager;
  sub_100014CF4(a1);
  sub_10004D4F0();
  a1[8] = sub_10004D520();
  a1[9] = &protocol witness table for GenerativeAssistantRestrictionManager;
  sub_100014CF4(a1 + 5);
  sub_10004D510();
  type metadata accessor for StreamController();
  a1[10] = swift_initStaticObject();
  v34 = sub_10004D990();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  a1[11] = sub_10004D980();
  a1[12] = &unk_10004F600;
  a1[13] = 0;
  v74 = a1;
  v58 = sub_1000026D8(&unk_100061450, &qword_10004F608);
  v68 = v29;
  sub_10004DCE0();
  v69 = v25;
  sub_10004D260();
  v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v38 = *(v19 + 104);
  v64 = v19 + 104;
  v77 = v38;
  v65 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v38(v80, enum case for LocalizedStringResource.BundleDescription.main(_:), v18);
  sub_10004D140();
  v39 = *(v82 + 56);
  v82 += 56;
  v76 = v39;
  v40 = v66;
  v39(v66, 1, 1, v30);
  LOBYTE(v83) = 2;
  v41 = sub_10004DE10();
  (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
  v72 = sub_10004CBB0();
  v42 = *(v72 - 8);
  v73 = *(v42 + 56);
  v70 = v42 + 56;
  v73(v78, 1, 1, v72);
  v62 = enum case for InputConnectionBehavior.default(_:);
  v43 = *(v81 + 104);
  v81 += 104;
  v75 = v43;
  v44 = v67;
  (v43)(v79);
  a1[14] = sub_10004CD10();
  v59 = sub_1000026D8(&unk_100061B40, &qword_10004F610);
  sub_10004DCE0();
  sub_10004D260();
  v77(v80, v37, v71);
  v57[1] = v33;
  sub_10004D140();
  v45 = v63;
  v76(v40, 1, 1, v63);
  LOBYTE(v83) = 2;
  v46 = v72;
  v47 = v73;
  v73(v78, 1, 1, v72);
  v47(v60, 1, 1, v46);
  v48 = v62;
  v75(v79, v62, v44);
  sub_100004A98();
  v74[15] = sub_10004CCF0();
  sub_1000026D8(&qword_100061B50, &qword_10004F618);
  sub_10004DCE0();
  sub_10004D260();
  v77(v80, v65, v71);
  sub_10004D140();
  v49 = v66;
  v76(v66, 1, 1, v45);
  v50 = sub_10004DCD0();
  v83 = 0;
  v84 = 0;
  v51 = *(v50 - 8);
  v59 = *(v51 + 56);
  v60 = (v51 + 56);
  v52 = v61;
  (v59)(v61, 1, 1, v50);
  v53 = v78;
  v73(v78, 1, 1, v72);
  v54 = v79;
  v55 = v67;
  v75(v79, v48, v67);
  v74[16] = sub_10004CD00();
  v58 = sub_1000026D8(&qword_100061470, &qword_10004F620);
  sub_10004DCE0();
  sub_10004D260();
  v77(v80, v65, v71);
  sub_10004D140();
  v76(v49, 1, 1, v63);
  v83 = 0;
  v84 = 0;
  (v59)(v52, 1, 1, v50);
  v73(v53, 1, 1, v72);
  v75(v54, v62, v55);
  result = sub_10004CD00();
  v74[17] = result;
  return result;
}

uint64_t sub_100008E84(uint64_t a1)
{
  v2[194] = v1;
  v2[193] = a1;
  v3 = sub_10004CFB0();
  v2[195] = v3;
  v4 = *(v3 - 8);
  v2[196] = v4;
  v5 = *(v4 + 64) + 15;
  v2[197] = swift_task_alloc();
  v2[198] = swift_task_alloc();
  v6 = sub_10004D5D0();
  v2[199] = v6;
  v7 = *(v6 - 8);
  v2[200] = v7;
  v8 = *(v7 + 64) + 15;
  v2[201] = swift_task_alloc();
  v9 = sub_10004D380();
  v2[202] = v9;
  v10 = *(v9 - 8);
  v2[203] = v10;
  v11 = *(v10 + 64) + 15;
  v2[204] = swift_task_alloc();
  v12 = sub_10004CB90();
  v2[205] = v12;
  v13 = *(v12 - 8);
  v2[206] = v13;
  v14 = *(v13 + 64) + 15;
  v2[207] = swift_task_alloc();
  v15 = sub_10004CF50();
  v2[208] = v15;
  v16 = *(v15 - 8);
  v2[209] = v16;
  v17 = *(v16 + 64) + 15;
  v2[210] = swift_task_alloc();
  v18 = sub_10004CF40();
  v2[211] = v18;
  v19 = *(v18 - 8);
  v2[212] = v19;
  v20 = *(v19 + 64) + 15;
  v2[213] = swift_task_alloc();
  v21 = sub_10004D1B0();
  v2[214] = v21;
  v22 = *(v21 - 8);
  v2[215] = v22;
  v23 = *(v22 + 64) + 15;
  v2[216] = swift_task_alloc();
  v24 = sub_10004D6A0();
  v2[217] = v24;
  v25 = *(v24 - 8);
  v2[218] = v25;
  v26 = *(v25 + 64) + 15;
  v2[219] = swift_task_alloc();
  v27 = sub_10004D3F0();
  v2[220] = v27;
  v28 = *(v27 - 8);
  v2[221] = v28;
  v29 = *(v28 + 64) + 15;
  v2[222] = swift_task_alloc();
  v30 = sub_10004D3D0();
  v2[223] = v30;
  v31 = *(v30 - 8);
  v2[224] = v31;
  v32 = *(v31 + 64) + 15;
  v2[225] = swift_task_alloc();
  v33 = *(*(sub_10004CE60() - 8) + 64) + 15;
  v2[226] = swift_task_alloc();
  v34 = sub_10004D350();
  v2[227] = v34;
  v35 = *(v34 - 8);
  v2[228] = v35;
  v36 = *(v35 + 64) + 15;
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();
  v2[233] = swift_task_alloc();
  v37 = sub_10004D3A0();
  v2[234] = v37;
  v38 = *(v37 - 8);
  v2[235] = v38;
  v39 = *(v38 + 64) + 15;
  v2[236] = swift_task_alloc();
  v40 = *(*(sub_1000026D8(&qword_100061480, &qword_10004F2F0) - 8) + 64) + 15;
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v41 = *(*(sub_1000026D8(&qword_100061488, &unk_100050D70) - 8) + 64) + 15;
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  v42 = sub_10004D840();
  v2[251] = v42;
  v43 = *(v42 - 8);
  v2[252] = v43;
  v44 = *(v43 + 64) + 15;
  v2[253] = swift_task_alloc();
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v45 = *(*(sub_1000026D8(&unk_100061490, &qword_10004F630) - 8) + 64) + 15;
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v46 = sub_10004D410();
  v2[258] = v46;
  v47 = *(v46 - 8);
  v2[259] = v47;
  v48 = *(v47 + 64) + 15;
  v2[260] = swift_task_alloc();
  v2[261] = swift_task_alloc();
  v49 = sub_10004D760();
  v2[262] = v49;
  v50 = *(v49 - 8);
  v2[263] = v50;
  v51 = *(v50 + 64) + 15;
  v2[264] = swift_task_alloc();
  v52 = sub_10004D870();
  v2[265] = v52;
  v53 = *(v52 - 8);
  v2[266] = v53;
  v54 = *(v53 + 64) + 15;
  v2[267] = swift_task_alloc();
  v55 = sub_10004D9F0();
  v2[268] = v55;
  v56 = *(v55 - 8);
  v2[269] = v56;
  v57 = *(v56 + 64) + 15;
  v2[270] = swift_task_alloc();
  v58 = *(*(sub_1000026D8(&unk_100061DA0, &qword_10004F638) - 8) + 64) + 15;
  v2[271] = swift_task_alloc();
  v59 = sub_10004CBB0();
  v2[272] = v59;
  v60 = *(v59 - 8);
  v2[273] = v60;
  v61 = *(v60 + 64) + 15;
  v2[274] = swift_task_alloc();
  v2[275] = swift_task_alloc();
  v2[276] = swift_task_alloc();
  v62 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v2[277] = v62;
  v63 = *(*(v62 - 8) + 64) + 15;
  v2[278] = swift_task_alloc();
  v64 = sub_10004DA90();
  v2[279] = v64;
  v65 = *(v64 - 8);
  v2[280] = v65;
  v66 = *(v65 + 64) + 15;
  v2[281] = swift_task_alloc();
  v2[282] = swift_task_alloc();
  v2[283] = swift_task_alloc();
  v67 = sub_10004D570();
  v2[284] = v67;
  v68 = *(v67 - 8);
  v2[285] = v68;
  v69 = *(v68 + 64) + 15;
  v2[286] = swift_task_alloc();
  v70 = *(*(sub_1000026D8(&qword_1000614A8, &unk_100050D80) - 8) + 64) + 15;
  v2[287] = swift_task_alloc();
  v71 = *(*(sub_1000026D8(&unk_1000614B0, &qword_10004F650) - 8) + 64) + 15;
  v2[288] = swift_task_alloc();
  v72 = *(*(sub_1000026D8(&unk_100061DB0, &qword_10004F658) - 8) + 64) + 15;
  v2[289] = swift_task_alloc();
  v73 = sub_10004D720();
  v2[290] = v73;
  v74 = *(v73 - 8);
  v2[291] = v74;
  v75 = *(v74 + 64) + 15;
  v2[292] = swift_task_alloc();
  v2[293] = swift_task_alloc();
  v76 = sub_1000026D8(&qword_1000614C0, &unk_10004F660);
  v2[294] = v76;
  v77 = *(*(v76 - 8) + 64) + 15;
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  v78 = *(*(sub_10004D8F0() - 8) + 64) + 15;
  v2[297] = swift_task_alloc();
  v79 = *(*(sub_1000026D8(&qword_1000614C8, &unk_100050D90) - 8) + 64) + 15;
  v2[298] = swift_task_alloc();
  v80 = sub_10004D620();
  v2[299] = v80;
  v81 = *(v80 - 8);
  v2[300] = v81;
  v82 = *(v81 + 64) + 15;
  v2[301] = swift_task_alloc();
  v83 = sub_10004D540();
  v2[302] = v83;
  v84 = *(v83 - 8);
  v2[303] = v84;
  v85 = *(v84 + 64) + 15;
  v2[304] = swift_task_alloc();
  v2[305] = swift_task_alloc();
  v86 = *(*(sub_1000026D8(&qword_1000614D0, &unk_10004F670) - 8) + 64) + 15;
  v2[306] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v87 = type metadata accessor for GenerativeResponseEntity(0);
  v2[308] = v87;
  v88 = *(v87 - 8);
  v2[309] = v88;
  v89 = *(v88 + 64) + 15;
  v2[310] = swift_task_alloc();
  v2[311] = swift_task_alloc();
  v90 = sub_10004DA20();
  v2[312] = v90;
  v91 = *(v90 - 8);
  v2[313] = v91;
  v92 = *(v91 + 64) + 15;
  v2[314] = swift_task_alloc();
  v93 = sub_10004D640();
  v2[315] = v93;
  v94 = *(v93 - 8);
  v2[316] = v94;
  v95 = *(v94 + 64) + 15;
  v2[317] = swift_task_alloc();
  v96 = sub_10004DC80();
  v2[318] = v96;
  v97 = *(v96 - 8);
  v2[319] = v97;
  v98 = *(v97 + 64) + 15;
  v2[320] = swift_task_alloc();
  v2[321] = swift_task_alloc();
  v2[322] = swift_task_alloc();
  v2[323] = swift_task_alloc();
  v2[324] = swift_task_alloc();
  v2[325] = swift_task_alloc();
  v2[326] = swift_task_alloc();
  v2[327] = swift_task_alloc();
  v2[328] = swift_task_alloc();
  v2[329] = swift_task_alloc();
  v2[330] = swift_task_alloc();
  v99 = sub_10004CEF0();
  v2[331] = v99;
  v100 = *(v99 - 8);
  v2[332] = v100;
  v101 = *(v100 + 64) + 15;
  v2[333] = swift_task_alloc();
  v2[334] = swift_task_alloc();
  v2[335] = swift_task_alloc();
  v2[336] = swift_task_alloc();
  v2[337] = swift_task_alloc();
  v2[338] = swift_task_alloc();
  v2[339] = swift_task_alloc();
  v2[340] = swift_task_alloc();
  v102 = *(*(sub_1000026D8(&qword_1000614D8, &unk_100050DA0) - 8) + 64) + 15;
  v2[341] = swift_task_alloc();
  v2[342] = swift_task_alloc();
  v2[343] = swift_task_alloc();
  v2[344] = swift_task_alloc();
  v2[345] = swift_task_alloc();
  v2[346] = swift_task_alloc();
  v103 = sub_10004D210();
  v2[347] = v103;
  v104 = *(v103 - 8);
  v2[348] = v104;
  v2[349] = *(v104 + 64);
  v2[350] = swift_task_alloc();
  v2[351] = swift_task_alloc();
  sub_10004DE50();
  v2[352] = sub_10004DE40();
  v106 = sub_10004DE20();
  v2[353] = v106;
  v2[354] = v105;

  return _swift_task_switch(sub_100009F14, v106, v105);
}

uint64_t sub_100009F14()
{
  v49 = v0;
  v1 = v0[351];
  v2 = v0[346];
  v3 = v0[340];
  v4 = v0[332];
  v5 = v0[331];
  v6 = v0[194];
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAE0();
  sub_10004D6D0();

  sub_10004D200();
  v0[355] = sub_100007E50();
  sub_10004CA80();
  sub_10004CED0();
  v7 = *(v4 + 8);
  v0[356] = v7;
  v0[357] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  v8 = sub_10004CEC0();
  v0[358] = v8;
  v9 = *(v8 - 8);
  v0[359] = v9;
  v10 = *(v9 + 48);
  v0[360] = v10;
  v0[361] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v2, 1, v8);
  v12 = v0[346];
  if (v11 == 1)
  {
    sub_100007BC0(v0[346], &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CE90();
    (*(v9 + 8))(v12, v8);
  }

  v13 = v0[330];
  v0[362] = sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB70();

  sub_10004DBB0();
  sub_10004DBA0();

  sub_10004DC60();
  v14 = sub_10004DC70();
  v15 = sub_10004DEA0();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[330];
  v18 = v0[319];
  v19 = v0[318];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, &v48);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v48);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s creating transaction", v20, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v18 + 8);
  v21(v17, v19);
  v46 = v21;
  v0[363] = v21;
  v22 = v0[329];
  v23 = v0[317];
  v24 = v0[316];
  v25 = v0[315];
  v26 = v0[194];
  v0[364] = os_transaction_create();
  sub_10004D6F0();
  (*(v24 + 104))(v23, enum case for GenerativeUsecases.textGeneration(_:), v25);
  sub_10004D630();
  (*(v24 + 8))(v23, v25);
  sub_10004D6B0();

  sub_10004DC60();
  sub_100014DAC(v26, (v0 + 2));
  v27 = sub_10004DC70();
  v28 = sub_10004DE90();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[329];
  v31 = v0[319];
  v32 = v0[318];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v33 = 136315650;
    *(v33 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, &v48);
    v45 = v30;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v48);
    *(v33 + 22) = 2080;
    v34 = v0[6];
    sub_100014E78(v0 + 2, v0[5]);
    v35 = sub_10004D530();
    v37 = v36;
    sub_100014DE4((v0 + 2));
    v38 = sub_10001E340(v35, v37, &v48);

    *(v33 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s.%s feature flags: %s", v33, 0x20u);
    swift_arrayDestroy();

    v46(v45, v32);
  }

  else
  {

    v46(v30, v32);
    sub_100014DE4((v0 + 2));
  }

  v39 = v0[194];
  v40 = *(v39 + 104);
  v47 = (*(v39 + 96) + **(v39 + 96));
  v41 = *(*(v39 + 96) + 4);
  v42 = swift_task_alloc();
  v0[365] = v42;
  *v42 = v0;
  v42[1] = sub_10000A580;
  v43 = v0[314];

  return v47(v43);
}

uint64_t sub_10000A580()
{
  v1 = *v0;
  v2 = *(*v0 + 2920);
  v6 = *v0;

  v3 = *(v1 + 2832);
  v4 = *(v1 + 2824);

  return _swift_task_switch(sub_10000A6A0, v4, v3);
}

uint64_t sub_10000A6A0()
{
  v293 = v0;
  v271 = *(v0 + 2880);
  v277 = *(v0 + 2888);
  v260 = *(v0 + 2856);
  v265 = *(v0 + 2864);
  v256 = *(v0 + 2848);
  v1 = *(v0 + 2840);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2648);
  v5 = *(v0 + 2456);
  v6 = *(v0 + 2440);
  v7 = *(v0 + 2424);
  v8 = *(v0 + 2416);
  v9 = *(v0 + 1552);
  sub_1000157A0(*(v0 + 2488));
  v10 = sub_10004D580();
  v283 = *(v10 - 8);
  v286 = v10;
  (*(v283 + 56))(v5, 1, 1);
  (*(v7 + 104))(v6, enum case for GenerativeAssistantUseCase.composition(_:), v8);
  sub_100014E14(v9, v0 + 1312);
  v11 = *(v9 + 112);
  sub_10004CCC0();
  v289 = *(v0 + 3320);
  sub_10004CA80();
  sub_10004CED0();
  v256(v3, v4);
  if (v271(v2, 1, v265) == 1)
  {
    v12 = *(v0 + 2384);
    sub_100007BC0(*(v0 + 2760), &qword_1000614D8, &unk_100050DA0);
    v13 = sub_10004CE70();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  else
  {
    v14 = *(v0 + 2872);
    v15 = *(v0 + 2864);
    v16 = *(v0 + 2760);
    v17 = *(v0 + 2384);
    sub_10004CE80();
    (*(v14 + 8))(v16, v15);
  }

  v272 = *(v0 + 2880);
  v278 = *(v0 + 2888);
  v18 = *(v0 + 2848);
  v19 = *(v0 + 2840);
  v261 = *(v0 + 2752);
  v266 = *(v0 + 2864);
  v20 = *(v0 + 2704);
  v21 = *(v0 + 2696);
  v22 = *(v0 + 2648);
  v253 = *(v0 + 2432);
  v257 = *(v0 + 2440);
  v23 = *(v0 + 2424);
  v247 = *(v0 + 2856);
  v250 = *(v0 + 2416);
  v24 = *(v0 + 2384);
  v25 = *(v0 + 2376);
  v26 = *(v0 + 2368);
  v244 = *(v0 + 2344);
  v27 = *(v0 + 1552);
  sub_10004DED0();
  sub_100007BC0(v24, &qword_1000614C8, &unk_100050D90);
  sub_10004CA80();
  sub_10004CEE0();
  v18(v20, v22);
  sub_10004DEE0();
  sub_100007BC0(v26, &qword_1000614C0, &unk_10004F660);
  (*(v23 + 16))(v253, v257, v250);
  sub_10004CA80();
  sub_10004CED0();
  v18(v21, v22);
  if (v272(v261, 1, v266) == 1)
  {
    sub_100007BC0(*(v0 + 2752), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    v28 = *(v0 + 2872);
    v29 = *(v0 + 2864);
    v30 = *(v0 + 2752);
    sub_10004CEA0();
    (*(v28 + 8))(v30, v29);
  }

  v267 = (v0 + 1352);
  v31 = *(v0 + 2888);
  v32 = *(v0 + 2880);
  v33 = *(v0 + 2864);
  v34 = *(v0 + 2856);
  v35 = *(v0 + 2848);
  v36 = *(v0 + 2840);
  v37 = *(v0 + 2744);
  v38 = *(v0 + 2688);
  v39 = *(v0 + 2648);
  v40 = *(v0 + 1552);
  sub_10004CA80();
  sub_10004CED0();
  v35(v38, v39);
  if (v32(v37, 1, v33) == 1)
  {
    sub_100007BC0(*(v0 + 2744), &qword_1000614D8, &unk_100050DA0);
    v41 = v283;
  }

  else
  {
    v42 = *(v0 + 2872);
    v43 = *(v0 + 2864);
    v44 = *(v0 + 2744);
    sub_10004CEB0();
    v46 = v45;
    (*(v42 + 8))(v44, v43);
    v41 = v283;
    if (v46)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v47 = *(v0 + 2456);
  v48 = *(v0 + 2448);
  v49 = *(v0 + 2312);
  sub_10004D250();
  v50 = sub_10004D270();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  sub_10001564C(v47, v48, &qword_1000614D0, &unk_10004F670);
  v51 = (*(v41 + 48))(v48, 1, v286);
  v52 = *(v0 + 2448);
  if (v51 == 1)
  {
    sub_100007BC0(*(v0 + 2448), &qword_1000614D0, &unk_10004F670);
    *v267 = 0u;
    *(v0 + 1368) = 0u;
    *(v0 + 1384) = 0;
  }

  else
  {
    *(v0 + 1376) = v286;
    *(v0 + 1384) = &protocol witness table for UserRequestPartnerInfo;
    v53 = sub_100014CF4(v267);
    (*(v41 + 32))(v53, v52, v286);
  }

  v54 = *(v0 + 2624);
  v55 = *(v0 + 2432);
  v56 = *(v0 + 2408);
  v57 = *(v0 + 2376);
  v58 = *(v0 + 2344);
  v59 = *(v0 + 2312);
  v60 = *(v0 + 2304);
  v61 = *(v0 + 1552);
  v62 = sub_10004D5B0();
  (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
  sub_10004D610();
  v63 = sub_10004D5F0();
  v65 = v64;
  v287 = v63;
  *(v0 + 2928) = v63;
  *(v0 + 2936) = v64;
  sub_10004DC50();
  sub_100014DAC(v61, v0 + 160);
  v66 = sub_10004DC70();
  v67 = sub_10004DEA0();
  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v0 + 2904);
  v70 = *(v0 + 2624);
  v71 = *(v0 + 2552);
  v72 = *(v0 + 2544);
  v290 = v65;
  if (v68)
  {
    v73 = swift_slowAlloc();
    v292[0] = swift_slowAlloc();
    *v73 = 136315650;
    *(v73 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v292);
    *(v73 + 12) = 2080;
    *(v73 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v292);
    *(v73 + 22) = 2080;
    v74 = *(v0 + 280);
    sub_10004CCC0();
    v75 = *(v0 + 3321);
    v76 = 0x54504774616863;
    if (v75)
    {
      v76 = 0x726568746FLL;
    }

    v77 = 0xE700000000000000;
    if (v75)
    {
      v77 = 0xE500000000000000;
    }

    if (v75 == 2)
    {
      v78 = 0;
    }

    else
    {
      v78 = v76;
    }

    if (v75 == 2)
    {
      v79 = 0xE000000000000000;
    }

    else
    {
      v79 = v77;
    }

    sub_100014DE4(v0 + 160);
    v80 = sub_10001E340(v78, v79, v292);
    v65 = v290;

    *(v73 + 24) = v80;
    _os_log_impl(&_mh_execute_header, v66, v67, "%s.%s partner requested: %s", v73, 0x20u);
    swift_arrayDestroy();

    v69(v70, v72);
  }

  else
  {

    v69(v70, v72);
    sub_100014DE4(v0 + 160);
  }

  v81 = *(v0 + 2616);
  sub_10004DC50();

  v82 = sub_10004DC70();
  v83 = sub_10004DEA0();

  v84 = os_log_type_enabled(v82, v83);
  v85 = *(v0 + 2904);
  v86 = *(v0 + 2616);
  v87 = *(v0 + 2552);
  v88 = *(v0 + 2544);
  if (v84)
  {
    v89 = v65;
    v90 = swift_slowAlloc();
    v292[0] = swift_slowAlloc();
    *v90 = 136315650;
    *(v90 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v292);
    *(v90 + 12) = 2080;
    *(v90 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v292);
    *(v90 + 22) = 2080;
    *(v90 + 24) = sub_10001E340(v287, v89, v292);
    _os_log_impl(&_mh_execute_header, v82, v83, "%s.%s partner to use: %s", v90, 0x20u);
    swift_arrayDestroy();
  }

  v85(v86, v88);
  v91 = *(v0 + 2608);
  v92 = *(v0 + 1552);
  sub_10004DC60();
  sub_100014DAC(v92, v0 + 304);
  v93 = sub_10004DC70();
  v94 = sub_10004DE90();
  if (!os_log_type_enabled(v93, v94))
  {
    v101 = *(v0 + 2904);
    v102 = *(v0 + 2608);
    v103 = *(v0 + 2552);
    v104 = *(v0 + 2544);

    sub_100014DE4(v0 + 304);
    v101(v102, v104);
    goto LABEL_37;
  }

  v95 = *(v0 + 2888);
  v273 = *(v0 + 2864);
  v279 = *(v0 + 2880);
  v262 = *(v0 + 2848);
  v268 = *(v0 + 2856);
  v96 = *(v0 + 2840);
  v97 = *(v0 + 2736);
  v98 = *(v0 + 2680);
  v99 = *(v0 + 2648);
  v100 = swift_slowAlloc();
  v292[0] = swift_slowAlloc();
  *v100 = 136315650;
  *(v100 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v292);
  *(v100 + 12) = 2080;
  *(v100 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v292);
  *(v100 + 22) = 2080;
  sub_10004CA80();
  sub_10004CED0();
  v262(v98, v99);
  if (v279(v97, 1, v273) == 1)
  {
    sub_100007BC0(*(v0 + 2736), &qword_1000614D8, &unk_100050DA0);
LABEL_35:
    sub_100014DE4(v0 + 304);

    v110 = 0xE700000000000000;
    v111 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

  v105 = *(v0 + 2872);
  v106 = *(v0 + 2864);
  v107 = *(v0 + 2736);
  v108 = sub_10004CEB0();
  v110 = v109;
  (*(v105 + 8))(v107, v106);
  if (!v110)
  {
    goto LABEL_35;
  }

  sub_100014DE4(v0 + 304);
  v111 = v108;
LABEL_36:
  v112 = *(v0 + 2904);
  v113 = *(v0 + 2608);
  v114 = *(v0 + 2552);
  v115 = *(v0 + 2544);
  v116 = sub_10001E340(v111, v110, v292);

  *(v100 + 24) = v116;
  _os_log_impl(&_mh_execute_header, v93, v94, "%s.%s Setting DialogEngineClient locale to %s", v100, 0x20u);
  swift_arrayDestroy();

  v112(v113, v115);
LABEL_37:
  v274 = *(v0 + 2880);
  v280 = *(v0 + 2888);
  v117 = *(v0 + 2864);
  v118 = *(v0 + 2856);
  v119 = *(v0 + 2848);
  v120 = *(v0 + 2840);
  v121 = *(v0 + 2728);
  v122 = *(v0 + 2672);
  v123 = *(v0 + 2648);
  v124 = *(v0 + 1552);
  *(v0 + 2944) = sub_10004D8E0();
  sub_10004D8D0();
  sub_10004CA80();
  sub_10004CED0();
  v119(v122, v123);
  if (v274(v121, 1, v117) == 1)
  {
    sub_100007BC0(*(v0 + 2728), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    v125 = *(v0 + 2872);
    v126 = *(v0 + 2864);
    v127 = *(v0 + 2728);
    sub_10004CEB0();
    (*(v125 + 8))(v127, v126);
  }

  v128 = *(v0 + 1552);
  sub_10004D8C0();

  v129 = v128[9];
  sub_100014E78(v128 + 5, v128[8]);
  if (sub_10004D4D0())
  {
    v130 = v128[8];
    v131 = v128[9];
    sub_100014E78(v128 + 5, v130);
    v132 = async function pointer to dispatch thunk of GenerativeAssistantRestrictions.signOutIfRestricted()[1];
    v133 = swift_task_alloc();
    *(v0 + 2952) = v133;
    *v133 = v0;
    v133[1] = sub_10000BD5C;

    return dispatch thunk of GenerativeAssistantRestrictions.signOutIfRestricted()(v130, v131);
  }

  else
  {
    v134 = *(v0 + 2816);
    v135 = *(v0 + 2560);

    sub_10004DC50();
    v136 = sub_10004DC70();
    v137 = sub_10004DEA0();
    v138 = os_log_type_enabled(v136, v137);
    v139 = *(v0 + 2904);
    v140 = *(v0 + 2560);
    v141 = *(v0 + 2552);
    v142 = *(v0 + 2544);
    if (v138)
    {
      v143 = swift_slowAlloc();
      v292[0] = swift_slowAlloc();
      *v143 = 136315394;
      *(v143 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v292);
      *(v143 + 12) = 2080;
      *(v143 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v292);
      _os_log_impl(&_mh_execute_header, v136, v137, "%s.%s request is still downloading and unavailable", v143, 0x16u);
      swift_arrayDestroy();
    }

    v139(v140, v142);
    v281 = *(v0 + 2496);
    v284 = *(v0 + 2512);
    v144 = *(v0 + 2472);
    v145 = *(v0 + 2464);
    v269 = *(v0 + 2456);
    v275 = *(v0 + 2504);
    v258 = *(v0 + 2440);
    v263 = *(v0 + 2488);
    v251 = *(v0 + 2424);
    v254 = *(v0 + 2416);
    v146 = *(v0 + 2400);
    v245 = *(v0 + 2392);
    v248 = *(v0 + 2408);
    v147 = *(v0 + 2264);
    v148 = *(v0 + 2240);
    v149 = *(v0 + 2232);
    v150 = *(v0 + 2224);
    v151 = *(v0 + 2208);
    v152 = *(v0 + 2184);
    v240 = *(v0 + 2216);
    v242 = *(v0 + 2176);
    v238 = *(v0 + 1544);
    sub_100014EBC(v263, v150);
    (*(v144 + 56))(v150, 0, 1, v145);
    sub_10004D8A0();
    (*(v148 + 104))(v147, enum case for CatId.modelDownloadingErrorResponse(_:), v149);
    sub_10004D880();

    (*(v148 + 8))(v147, v149);
    sub_100014F20();
    sub_10004CBD0();
    (*(v152 + 8))(v151, v242);
    sub_100007BC0(v150, &qword_1000614A0, &unk_10004F640);
    (*(v146 + 8))(v248, v245);
    (*(v251 + 8))(v258, v254);
    sub_100007BC0(v269, &qword_1000614D0, &unk_10004F670);
    (*(v275 + 8))(v284, v281);
    sub_100014FD4(v263);
    v153 = *(v0 + 2808);
    v154 = *(v0 + 2800);
    v155 = *(v0 + 2784);
    v156 = *(v0 + 2776);
    v157 = *(v0 + 2768);
    v158 = *(v0 + 2760);
    v159 = *(v0 + 2752);
    v160 = *(v0 + 2744);
    v163 = *(v0 + 2736);
    v164 = *(v0 + 2728);
    v165 = *(v0 + 2720);
    v166 = *(v0 + 2712);
    v167 = *(v0 + 2704);
    v168 = *(v0 + 2696);
    v169 = *(v0 + 2688);
    v170 = *(v0 + 2680);
    v171 = *(v0 + 2672);
    v172 = *(v0 + 2664);
    v173 = *(v0 + 2640);
    v174 = *(v0 + 2632);
    v175 = *(v0 + 2624);
    v176 = *(v0 + 2616);
    v177 = *(v0 + 2608);
    v178 = *(v0 + 2600);
    v179 = *(v0 + 2592);
    v180 = *(v0 + 2584);
    v181 = *(v0 + 2576);
    v182 = *(v0 + 2568);
    v183 = *(v0 + 2560);
    v184 = *(v0 + 2536);
    v185 = *(v0 + 2512);
    v186 = *(v0 + 2488);
    v187 = *(v0 + 2480);
    v188 = *(v0 + 2456);
    v189 = *(v0 + 2448);
    v190 = *(v0 + 2440);
    v191 = *(v0 + 2432);
    v192 = *(v0 + 2408);
    v193 = *(v0 + 2384);
    v194 = *(v0 + 2376);
    v195 = *(v0 + 2368);
    v196 = *(v0 + 2360);
    v197 = *(v0 + 2344);
    v198 = *(v0 + 2336);
    v199 = *(v0 + 2312);
    v200 = *(v0 + 2304);
    v201 = *(v0 + 2296);
    v202 = *(v0 + 2288);
    v203 = *(v0 + 2264);
    v204 = *(v0 + 2256);
    v205 = *(v0 + 2248);
    v206 = *(v0 + 2224);
    v207 = *(v0 + 2208);
    v208 = *(v0 + 2200);
    v209 = *(v0 + 2192);
    v210 = *(v0 + 2168);
    v211 = *(v0 + 2160);
    v212 = *(v0 + 2136);
    v213 = *(v0 + 2112);
    v214 = *(v0 + 2088);
    v215 = *(v0 + 2080);
    v216 = *(v0 + 2056);
    v217 = *(v0 + 2048);
    v218 = *(v0 + 2040);
    v219 = *(v0 + 2032);
    v220 = *(v0 + 2024);
    v221 = *(v0 + 2000);
    v222 = *(v0 + 1992);
    v223 = *(v0 + 1984);
    v224 = *(v0 + 1976);
    v225 = *(v0 + 1968);
    v226 = *(v0 + 1960);
    v227 = *(v0 + 1952);
    v228 = *(v0 + 1944);
    v229 = *(v0 + 1936);
    v230 = *(v0 + 1928);
    v231 = *(v0 + 1920);
    v232 = *(v0 + 1912);
    v233 = *(v0 + 1904);
    v234 = *(v0 + 1896);
    v235 = *(v0 + 1888);
    v236 = *(v0 + 1864);
    v237 = *(v0 + 1856);
    v239 = *(v0 + 1848);
    v241 = *(v0 + 1840);
    v243 = *(v0 + 1832);
    v246 = *(v0 + 1808);
    v249 = *(v0 + 1800);
    v252 = *(v0 + 1776);
    v255 = *(v0 + 1752);
    v259 = *(v0 + 1728);
    v264 = *(v0 + 1704);
    v270 = *(v0 + 1680);
    v276 = *(v0 + 1656);
    v282 = *(v0 + 1632);
    v285 = *(v0 + 1608);
    v288 = *(v0 + 1584);
    v291 = *(v0 + 1576);
    sub_10001295C(*(v0 + 2912));
    swift_unknownObjectRelease();
    (*(v155 + 8))(v153, v156);

    v161 = *(v0 + 8);

    return v161();
  }
}

uint64_t sub_10000BD5C()
{
  v2 = *v1;
  v3 = *(*v1 + 2952);
  v9 = *v1;
  *(*v1 + 2960) = v0;

  if (v0)
  {
    v4 = v2[367];

    v5 = v2[354];
    v6 = v2[353];
    v7 = sub_100011390;
  }

  else
  {
    v5 = v2[354];
    v6 = v2[353];
    v7 = sub_10000BE80;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000BE80()
{
  v362 = v0;
  v1 = *(v0 + 1552);
  v2 = v1[9];
  sub_100014E78(v1 + 5, v1[8]);
  if (sub_10004D480())
  {
    v3 = *(v0 + 2936);
    v4 = *(v0 + 2928);
    v5 = *(v0 + 2896);
    v6 = *(v0 + 2440);
    v7 = *(v0 + 2296);
    v8 = *(v0 + 1552);
    sub_10004DBB0();
    sub_10004DB60();

    sub_10002FB8C(v4, v3, v7);
    v9 = sub_1000026D8(&qword_100061418, &unk_100050D40);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) != 1)
    {
      v64 = *(v0 + 2936);
      v65 = *(v0 + 2816);
      v66 = *(v0 + 2504);
      v335 = *(v0 + 2496);
      v342 = *(v0 + 2512);
      v314 = *(v0 + 2440);
      v321 = *(v0 + 2456);
      v67 = *(v0 + 2424);
      v68 = *(v0 + 2416);
      v69 = *(v0 + 2408);
      v70 = *(v0 + 2400);
      v71 = *(v0 + 2392);
      v349 = *(v0 + 2296);
      v356 = *(v0 + 2488);
      v328 = *(v0 + 1544);

      (*(v70 + 8))(v69, v71);
      (*(v67 + 8))(v314, v68);
      sub_100007BC0(v321, &qword_1000614D0, &unk_10004F670);
      (*(v66 + 8))(v342, v335);
      sub_100014FD4(v356);
      (*(v10 + 32))(v328, v349, v9);
      goto LABEL_13;
    }

    v11 = *(v0 + 2440);
    v12 = *(v0 + 1552);
    sub_100007BC0(*(v0 + 2296), &qword_1000614A8, &unk_100050D80);
    v13 = v12[9];
    sub_100014E78(v12 + 5, v12[8]);
    if (sub_10004D490())
    {
      v14 = *(v0 + 2856);
      v15 = *(v0 + 2848);
      v16 = *(v0 + 2840);
      v17 = *(v0 + 2664);
      v18 = *(v0 + 2648);
      v19 = *(v0 + 2360);
      v20 = *(v0 + 2336);
      v21 = *(v0 + 2328);
      v22 = *(v0 + 2320);
      v23 = *(v0 + 1552);
      sub_10004CA80();
      sub_10004CEE0();
      v15(v17, v18);
      sub_10004DEE0();
      sub_100007BC0(v19, &qword_1000614C0, &unk_10004F660);
      LOBYTE(v23) = sub_10004D710();
      (*(v21 + 8))(v20, v22);
      if ((v23 & 1) != 0 && (v24 = *(v0 + 2288), v25 = *(v0 + 2280), v26 = *(v0 + 2272), sub_10004D560(), v27 = sub_10004D550(), (*(v25 + 8))(v24, v26), (v27 & 1) == 0))
      {
        v168 = *(v0 + 2936);
        v169 = *(v0 + 2816);
        v170 = *(v0 + 2600);

        sub_10004DC50();
        v171 = sub_10004DC70();
        v172 = sub_10004DEB0();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&_mh_execute_header, v171, v172, "Siri\\remote_montara is currently disabled and hence remote Montara requests are not available.", v173, 2u);
        }

        v174 = *(v0 + 2944);
        v175 = *(v0 + 2904);
        v176 = *(v0 + 2600);
        v177 = *(v0 + 2552);
        v178 = *(v0 + 2544);
        v353 = *(v0 + 2496);
        v360 = *(v0 + 2512);
        v269 = *(v0 + 2488);
        v272 = *(v0 + 2472);
        v339 = *(v0 + 2456);
        v346 = *(v0 + 2504);
        v325 = *(v0 + 2416);
        v332 = *(v0 + 2440);
        v311 = *(v0 + 2408);
        v318 = *(v0 + 2424);
        v301 = *(v0 + 2400);
        v306 = *(v0 + 2392);
        v179 = *(v0 + 2264);
        v180 = *(v0 + 2240);
        v181 = *(v0 + 2232);
        v263 = *(v0 + 2464);
        v266 = *(v0 + 2224);
        v287 = *(v0 + 2216);
        v291 = *(v0 + 2184);
        v296 = *(v0 + 2176);
        v277 = *(v0 + 2208);
        v282 = *(v0 + 1544);

        v175(v176, v178);
        sub_10004D8D0();
        v260 = enum case for CatId.featureUnsupportedForRemoteClients(_:);
        v257 = *(v180 + 104);
        v257(v179);
        sub_100007C20(&_swiftEmptyArrayStorage);
        v182 = sub_10004D8B0();
        v184 = v183;

        v185 = *(v180 + 8);
        v185(v179, v181);
        v186 = *(v269 + *(v263 + 32));
        *(v0 + 1520) = v182;
        *(v0 + 1528) = v184;
        sub_10004CC30();
        sub_100014EBC(v269, v266);
        (*(v272 + 56))(v266, 0, 1, v263);
        sub_10004D8A0();
        (v257)(v179, v260, v181);
        sub_10004D880();
        v185(v179, v181);
        sub_100014F20();
        sub_10004CBD0();
        (*(v291 + 8))(v277, v296);
        sub_100007BC0(v266, &qword_1000614A0, &unk_10004F640);
        (*(v301 + 8))(v311, v306);
        (*(v318 + 8))(v332, v325);
        sub_100007BC0(v339, &qword_1000614D0, &unk_10004F670);
        (*(v346 + 8))(v360, v353);
        v63 = v269;
      }

      else
      {
        v28 = *(v0 + 2592);
        v29 = *(v0 + 1552);
        sub_10004DC50();
        sub_100014DAC(v29, v0 + 448);
        v30 = sub_10004DC70();
        v31 = sub_10004DEA0();
        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 2904);
        if (v32)
        {
          v319 = *(v0 + 2848);
          v326 = *(v0 + 2856);
          v34 = *(v0 + 2840);
          v35 = *(v0 + 2664);
          v36 = *(v0 + 2648);
          v340 = *(v0 + 2552);
          v347 = *(v0 + 2544);
          v354 = *(v0 + 2592);
          v37 = *(v0 + 2360);
          v312 = *(v0 + 2352);
          v333 = *(v0 + 2904);
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v361[0] = v39;
          *v38 = 136315138;
          sub_10004CA80();
          sub_10004CEE0();
          v319(v35, v36);
          v40 = sub_10004DD70();
          v42 = v41;
          sub_100014DE4(v0 + 448);
          v43 = sub_10001E340(v40, v42, v361);

          *(v38 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v30, v31, "The invoking interace idiom is %s", v38, 0xCu);
          sub_100007B00(v39);

          v333(v354, v347);
        }

        else
        {
          v103 = *(v0 + 2592);
          v104 = *(v0 + 2552);
          v105 = *(v0 + 2544);

          sub_100014DE4(v0 + 448);
          v33(v103, v105);
        }

        v106 = *(v0 + 2936);
        v107 = *(v0 + 2928);
        v108 = *(v0 + 2408);
        v109 = *(v0 + 2168);
        sub_10004DAC0();
        sub_10004DAB0();
        sub_10004DAA0();

        v110 = sub_1000026D8(&unk_1000614F0, &qword_10004F680);
        if ((*(*(v110 - 8) + 48))(v109, 1, v110) == 1)
        {
          sub_100007BC0(*(v0 + 2168), &unk_100061DA0, &qword_10004F638);
          v111 = sub_10004DB40();
          if (v111 == 2 || (v111 & 1) == 0)
          {
            v124 = *(v0 + 2800);
            v125 = *(v0 + 2792);
            v126 = *(v0 + 2784);
            v127 = *(v0 + 2776);
            v128 = *(v0 + 1552);
            (*(v126 + 16))(v124, *(v0 + 2808), v127);
            sub_100014DAC(v128, v0 + 592);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v112 = swift_allocObject();
            (*(v126 + 32))(v112 + v129, v124, v127);
            v130 = (v112 + ((v125 + v129 + 7) & 0xFFFFFFFFFFFFFFF8));
            v131 = *(v0 + 704);
            v130[6] = *(v0 + 688);
            v130[7] = v131;
            v130[8] = *(v0 + 720);
            v132 = *(v0 + 640);
            v130[2] = *(v0 + 624);
            v130[3] = v132;
            v133 = *(v0 + 672);
            v130[4] = *(v0 + 656);
            v130[5] = v133;
            v134 = *(v0 + 608);
            *v130 = *(v0 + 592);
            v130[1] = v134;
          }

          else
          {
            v112 = 0;
          }

          *(v0 + 2968) = v112;
          v135 = *(v0 + 2936);
          v136 = *(v0 + 2928);
          v137 = *(v0 + 2408);
          v138 = *(v0 + 2160);
          v139 = *(v0 + 1552);
          sub_100014DAC(v139, v0 + 736);
          v140 = swift_allocObject();
          *(v0 + 2976) = v140;
          v141 = *(v0 + 848);
          v140[7] = *(v0 + 832);
          v140[8] = v141;
          v140[9] = *(v0 + 864);
          v142 = *(v0 + 784);
          v140[3] = *(v0 + 768);
          v140[4] = v142;
          v143 = *(v0 + 816);
          v140[5] = *(v0 + 800);
          v140[6] = v143;
          v144 = *(v0 + 752);
          v140[1] = *(v0 + 736);
          v140[2] = v144;
          sub_10004D5E0();
          sub_100014DAC(v139, v0 + 880);
          v145 = swift_allocObject();
          v146 = *(v0 + 992);
          *(v145 + 112) = *(v0 + 976);
          *(v145 + 128) = v146;
          *(v145 + 144) = *(v0 + 1008);
          v147 = *(v0 + 928);
          *(v145 + 48) = *(v0 + 912);
          *(v145 + 64) = v147;
          v148 = *(v0 + 960);
          *(v145 + 80) = *(v0 + 944);
          *(v145 + 96) = v148;
          v149 = *(v0 + 896);
          *(v145 + 16) = *(v0 + 880);
          *(v145 + 32) = v149;
          *(v145 + 160) = v136;
          *(v145 + 168) = v135;
          sub_100014DAC(v139, v0 + 1024);
          v150 = swift_allocObject();
          v151 = *(v0 + 1104);
          v152 = *(v0 + 1136);
          v150[7] = *(v0 + 1120);
          v150[8] = v152;
          v150[9] = *(v0 + 1152);
          v153 = *(v0 + 1040);
          v154 = *(v0 + 1072);
          v150[3] = *(v0 + 1056);
          v150[4] = v154;
          v150[5] = *(v0 + 1088);
          v150[6] = v151;
          v150[1] = *(v0 + 1024);
          v150[2] = v153;
          sub_100014DAC(v139, v0 + 1168);
          v155 = swift_allocObject();
          v156 = *(v0 + 1248);
          v157 = *(v0 + 1280);
          v155[7] = *(v0 + 1264);
          v155[8] = v157;
          v155[9] = *(v0 + 1296);
          v158 = *(v0 + 1184);
          v159 = *(v0 + 1216);
          v155[3] = *(v0 + 1200);
          v155[4] = v159;
          v155[5] = *(v0 + 1232);
          v155[6] = v156;
          v155[1] = *(v0 + 1168);
          v155[2] = v158;
          swift_bridgeObjectRetain_n();

          sub_10004D9C0();
          sub_10004D9D0();
          *(v0 + 2984) = *(v139 + 128);
          sub_10004CCC0();
          v160 = *(v0 + 1408);
          v161 = *(v0 + 1416);
          *(v0 + 2992) = v161;
          v162 = async function pointer to GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)[1];
          v163 = swift_task_alloc();
          *(v0 + 3000) = v163;
          *v163 = v0;
          v163[1] = sub_10000D998;
          v164 = *(v0 + 2512);
          v165 = *(v0 + 2408);
          v166 = *(v0 + 2160);
          v167 = *(v0 + 2136);

          return GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(v167, v160, v161, v165, v166);
        }

        v113 = *(v0 + 2936);
        v114 = *(v0 + 2816);
        v352 = *(v0 + 2496);
        v359 = *(v0 + 2512);
        v115 = *(v0 + 2472);
        v276 = *(v0 + 2464);
        v281 = *(v0 + 2488);
        v338 = *(v0 + 2456);
        v345 = *(v0 + 2504);
        v324 = *(v0 + 2416);
        v331 = *(v0 + 2440);
        v310 = *(v0 + 2408);
        v317 = *(v0 + 2424);
        v300 = *(v0 + 2400);
        v305 = *(v0 + 2392);
        v116 = *(v0 + 2224);
        v117 = *(v0 + 2200);
        v118 = *(v0 + 2184);
        v119 = *(v0 + 2176);
        v295 = *(v0 + 2216);
        v120 = *(v0 + 2168);
        v286 = *(v0 + 1544);

        v122 = *v120;
        v121 = *(v120 + 1);
        (*(v118 + 32))(v117, &v120[*(v110 + 48)], v119);
        v123 = *(v281 + *(v276 + 32));
        *(v0 + 1504) = v122;
        *(v0 + 1512) = v121;
        sub_10004CC30();
        sub_100014EBC(v281, v116);
        (*(v115 + 56))(v116, 0, 1, v276);
        sub_100014F20();
        sub_10004CBD0();
        sub_100007BC0(v116, &qword_1000614A0, &unk_10004F640);
        (*(v118 + 8))(v117, v119);
        (*(v300 + 8))(v310, v305);
        (*(v317 + 8))(v331, v324);
        sub_100007BC0(v338, &qword_1000614D0, &unk_10004F670);
        (*(v345 + 8))(v359, v352);
        v63 = v281;
      }
    }

    else
    {
      v82 = *(v0 + 2936);
      v83 = *(v0 + 2816);
      v84 = *(v0 + 2576);

      sub_10004DC50();
      v85 = sub_10004DC70();
      v86 = sub_10004DEA0();
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 2904);
      v89 = *(v0 + 2576);
      v90 = *(v0 + 2552);
      v91 = *(v0 + 2544);
      if (v87)
      {
        v92 = swift_slowAlloc();
        v361[0] = swift_slowAlloc();
        *v92 = 136315394;
        *(v92 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v361);
        *(v92 + 12) = 2080;
        *(v92 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v361);
        _os_log_impl(&_mh_execute_header, v85, v86, "%s.%s request is not available", v92, 0x16u);
        swift_arrayDestroy();
      }

      v88(v89, v91);
      v93 = *(v0 + 2944);
      v351 = *(v0 + 2496);
      v358 = *(v0 + 2512);
      v268 = *(v0 + 2488);
      v271 = *(v0 + 2472);
      v94 = *(v0 + 2464);
      v337 = *(v0 + 2456);
      v344 = *(v0 + 2504);
      v323 = *(v0 + 2416);
      v330 = *(v0 + 2440);
      v309 = *(v0 + 2408);
      v316 = *(v0 + 2424);
      v299 = *(v0 + 2400);
      v304 = *(v0 + 2392);
      v95 = *(v0 + 2264);
      v96 = *(v0 + 2240);
      v97 = *(v0 + 2232);
      v259 = *(v0 + 2224);
      v285 = *(v0 + 2216);
      v290 = *(v0 + 2184);
      v294 = *(v0 + 2176);
      v275 = *(v0 + 2208);
      v280 = *(v0 + 1544);
      sub_10004D8D0();
      v265 = enum case for CatId.disabledResponse(_:);
      v262 = *(v96 + 104);
      v262(v95);
      sub_100007C20(&_swiftEmptyArrayStorage);
      v98 = sub_10004D8B0();
      v100 = v99;

      v101 = *(v96 + 8);
      v101(v95, v97);
      v102 = *(v268 + *(v94 + 32));
      *(v0 + 1392) = v98;
      *(v0 + 1400) = v100;
      sub_10004CC30();
      sub_100014EBC(v268, v259);
      (*(v271 + 56))(v259, 0, 1, v94);
      sub_10004D8A0();
      (v262)(v95, v265, v97);
      sub_10004D880();
      v101(v95, v97);
      sub_100014F20();
      sub_10004CBD0();
      (*(v290 + 8))(v275, v294);
      sub_100007BC0(v259, &qword_1000614A0, &unk_10004F640);
      (*(v299 + 8))(v309, v304);
      (*(v316 + 8))(v330, v323);
      sub_100007BC0(v337, &qword_1000614D0, &unk_10004F670);
      (*(v344 + 8))(v358, v351);
      v63 = v268;
    }
  }

  else
  {
    v44 = *(v0 + 2816);
    v45 = *(v0 + 2568);

    sub_10004DC50();
    v46 = sub_10004DC70();
    v47 = sub_10004DEA0();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 2904);
    v50 = *(v0 + 2568);
    v51 = *(v0 + 2552);
    v52 = *(v0 + 2544);
    if (v48)
    {
      v53 = swift_slowAlloc();
      v361[0] = swift_slowAlloc();
      *v53 = 136315394;
      *(v53 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v361);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v361);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s.%s request was restricted by MDM or parental controls.", v53, 0x16u);
      swift_arrayDestroy();
    }

    v49(v50, v52);
    v54 = *(v0 + 2936);
    v273 = *(v0 + 2928);
    v348 = *(v0 + 2496);
    v355 = *(v0 + 2512);
    v55 = *(v0 + 2472);
    v56 = *(v0 + 2464);
    v334 = *(v0 + 2456);
    v341 = *(v0 + 2504);
    v320 = *(v0 + 2440);
    v327 = *(v0 + 2488);
    v307 = *(v0 + 2424);
    v313 = *(v0 + 2416);
    v297 = *(v0 + 2392);
    v302 = *(v0 + 2408);
    v57 = *(v0 + 2264);
    v58 = *(v0 + 2240);
    v59 = *(v0 + 2232);
    v60 = *(v0 + 2224);
    v61 = *(v0 + 2208);
    v62 = *(v0 + 2184);
    v288 = *(v0 + 2176);
    v292 = *(v0 + 2400);
    v278 = *(v0 + 1544);
    v283 = *(v0 + 2216);
    sub_100014EBC(v327, v60);
    (*(v55 + 56))(v60, 0, 1, v56);
    sub_10004D8A0();
    (*(v58 + 104))(v57, enum case for CatId.genericRestrictionResponse(_:), v59);
    sub_10004D880();

    (*(v58 + 8))(v57, v59);
    sub_100014F20();
    sub_10004CBD0();
    (*(v62 + 8))(v61, v288);
    sub_100007BC0(v60, &qword_1000614A0, &unk_10004F640);
    (*(v292 + 8))(v302, v297);
    (*(v307 + 8))(v320, v313);
    sub_100007BC0(v334, &qword_1000614D0, &unk_10004F670);
    (*(v341 + 8))(v355, v348);
    v63 = v327;
  }

  sub_100014FD4(v63);
LABEL_13:
  v72 = *(v0 + 2808);
  v73 = *(v0 + 2800);
  v74 = *(v0 + 2784);
  v75 = *(v0 + 2776);
  v76 = *(v0 + 2768);
  v77 = *(v0 + 2760);
  v78 = *(v0 + 2752);
  v79 = *(v0 + 2744);
  v187 = *(v0 + 2736);
  v188 = *(v0 + 2728);
  v189 = *(v0 + 2720);
  v190 = *(v0 + 2712);
  v191 = *(v0 + 2704);
  v192 = *(v0 + 2696);
  v193 = *(v0 + 2688);
  v194 = *(v0 + 2680);
  v195 = *(v0 + 2672);
  v196 = *(v0 + 2664);
  v197 = *(v0 + 2640);
  v198 = *(v0 + 2632);
  v199 = *(v0 + 2624);
  v200 = *(v0 + 2616);
  v201 = *(v0 + 2608);
  v202 = *(v0 + 2600);
  v203 = *(v0 + 2592);
  v204 = *(v0 + 2584);
  v205 = *(v0 + 2576);
  v206 = *(v0 + 2568);
  v207 = *(v0 + 2560);
  v208 = *(v0 + 2536);
  v209 = *(v0 + 2512);
  v210 = *(v0 + 2488);
  v211 = *(v0 + 2480);
  v212 = *(v0 + 2456);
  v213 = *(v0 + 2448);
  v214 = *(v0 + 2440);
  v215 = *(v0 + 2432);
  v216 = *(v0 + 2408);
  v217 = *(v0 + 2384);
  v218 = *(v0 + 2376);
  v219 = *(v0 + 2368);
  v220 = *(v0 + 2360);
  v221 = *(v0 + 2344);
  v222 = *(v0 + 2336);
  v223 = *(v0 + 2312);
  v224 = *(v0 + 2304);
  v225 = *(v0 + 2296);
  v226 = *(v0 + 2288);
  v227 = *(v0 + 2264);
  v228 = *(v0 + 2256);
  v229 = *(v0 + 2248);
  v230 = *(v0 + 2224);
  v231 = *(v0 + 2208);
  v232 = *(v0 + 2200);
  v233 = *(v0 + 2192);
  v234 = *(v0 + 2168);
  v235 = *(v0 + 2160);
  v236 = *(v0 + 2136);
  v237 = *(v0 + 2112);
  v238 = *(v0 + 2088);
  v239 = *(v0 + 2080);
  v240 = *(v0 + 2056);
  v241 = *(v0 + 2048);
  v242 = *(v0 + 2040);
  v243 = *(v0 + 2032);
  v244 = *(v0 + 2024);
  v245 = *(v0 + 2000);
  v246 = *(v0 + 1992);
  v247 = *(v0 + 1984);
  v248 = *(v0 + 1976);
  v249 = *(v0 + 1968);
  v250 = *(v0 + 1960);
  v251 = *(v0 + 1952);
  v252 = *(v0 + 1944);
  v253 = *(v0 + 1936);
  v254 = *(v0 + 1928);
  v255 = *(v0 + 1920);
  v256 = *(v0 + 1912);
  v258 = *(v0 + 1904);
  v261 = *(v0 + 1896);
  v264 = *(v0 + 1888);
  v267 = *(v0 + 1864);
  v270 = *(v0 + 1856);
  v274 = *(v0 + 1848);
  v279 = *(v0 + 1840);
  v284 = *(v0 + 1832);
  v289 = *(v0 + 1808);
  v293 = *(v0 + 1800);
  v298 = *(v0 + 1776);
  v303 = *(v0 + 1752);
  v308 = *(v0 + 1728);
  v315 = *(v0 + 1704);
  v322 = *(v0 + 1680);
  v329 = *(v0 + 1656);
  v336 = *(v0 + 1632);
  v343 = *(v0 + 1608);
  v350 = *(v0 + 1584);
  v357 = *(v0 + 1576);
  sub_10001295C(*(v0 + 2912));
  swift_unknownObjectRelease();
  (*(v74 + 8))(v72, v75);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_10000D998()
{
  v2 = *v1;
  v3 = *(*v1 + 3000);
  v4 = *v1;
  v2[376] = v0;

  v5 = v2[374];
  if (v0)
  {
    v6 = v2[367];

    v7 = v2[354];
    v8 = v2[353];
    v9 = sub_100011A2C;
  }

  else
  {

    v7 = v2[354];
    v8 = v2[353];
    v9 = sub_10000DAE4;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10000DAE4()
{
  v1 = *(v0 + 2136);
  v2 = sub_10004D810();
  *(v0 + 3016) = v2;
  v3 = *(v2 + 16);
  *(v0 + 3024) = v3;
  if (v3)
  {
    v4 = *(v0 + 2104);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 3312) = v6;
    *(v0 + 3032) = *(v4 + 56);
    *(v0 + 3040) = v5;
    *(v0 + 3056) = &_swiftEmptyArrayStorage;
    *(v0 + 3048) = 0;
    v5(*(v0 + 2112), v2 + ((v6 + 32) & ~v6), *(v0 + 2096));
    v7 = swift_task_alloc();
    *(v0 + 3064) = v7;
    *v7 = v0;
    v7[1] = sub_10000DD7C;
    v8 = *(v0 + 2112);
    v9 = *(v0 + 2088);

    return sub_100004E18(v9);
  }

  else
  {

    *(v0 + 3072) = &_swiftEmptyArrayStorage;
    v11 = *(v0 + 2136);
    v12 = *(v0 + 2040);
    v13 = *(v0 + 2032);
    v14 = *(v0 + 2016);
    v15 = *(v0 + 2008);
    v16 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3316) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    (*(v14 + 104))(v13);
    sub_100015604(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome);
    v17 = sub_10004DCC0();
    v18 = *(v14 + 8);
    *(v0 + 3080) = v18;
    *(v0 + 3088) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v13, v15);
    v18(v12, v15);
    v19 = async function pointer to static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)[1];
    v20 = swift_task_alloc();
    *(v0 + 3096) = v20;
    *v20 = v0;
    v20[1] = sub_10000E268;
    v21 = *(v0 + 2936);
    v22 = *(v0 + 2928);
    v23 = *(v0 + 2056);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v23, v16 & 1, v22, v21, (v17 & 1) == 0);
  }
}

uint64_t sub_10000DD7C()
{
  v1 = *v0;
  v2 = *(*v0 + 3064);
  v3 = *(*v0 + 2112);
  v4 = *(*v0 + 2104);
  v5 = *(*v0 + 2096);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 2832);
  v7 = *(v1 + 2824);

  return _swift_task_switch(sub_10000DF00, v7, v6);
}

uint64_t sub_10000DF00()
{
  v1 = *(v0 + 3056);
  (*(*(v0 + 2072) + 16))(*(v0 + 2080), *(v0 + 2088), *(v0 + 2064));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 3056);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100048484(0, v3[2] + 1, 1, *(v0 + 3056));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100048484(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 3024);
  v7 = *(v0 + 2080);
  v8 = *(v0 + 2072);
  v9 = *(v0 + 2064);
  v10 = *(v0 + 3048) + 1;
  (*(v8 + 8))(*(v0 + 2088), v9);
  v3[2] = v5 + 1;
  (*(v8 + 32))(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, v7, v9);
  if (v10 == v6)
  {
    v11 = *(v0 + 3016);

    *(v0 + 3072) = v3;
    v12 = *(v0 + 2136);
    v13 = *(v0 + 2040);
    v14 = *(v0 + 2032);
    v15 = *(v0 + 2016);
    v16 = *(v0 + 2008);
    v17 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3316) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    (*(v15 + 104))(v14);
    sub_100015604(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome);
    v18 = sub_10004DCC0();
    v19 = *(v15 + 8);
    *(v0 + 3080) = v19;
    *(v0 + 3088) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v14, v16);
    v19(v13, v16);
    v20 = async function pointer to static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)[1];
    v21 = swift_task_alloc();
    *(v0 + 3096) = v21;
    *v21 = v0;
    v21[1] = sub_10000E268;
    v22 = *(v0 + 2936);
    v23 = *(v0 + 2928);
    v24 = *(v0 + 2056);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v24, v17 & 1, v23, v22, (v18 & 1) == 0);
  }

  else
  {
    v25 = *(v0 + 3048) + 1;
    *(v0 + 3056) = v3;
    *(v0 + 3048) = v25;
    v26 = *(v0 + 2104) + 16;
    (*(v0 + 3040))(*(v0 + 2112), *(v0 + 3016) + ((*(v0 + 3312) + 32) & ~*(v0 + 3312)) + *(v0 + 3032) * v25, *(v0 + 2096));
    v27 = swift_task_alloc();
    *(v0 + 3064) = v27;
    *v27 = v0;
    v27[1] = sub_10000DD7C;
    v28 = *(v0 + 2112);
    v29 = *(v0 + 2088);

    return sub_100004E18(v29);
  }
}

uint64_t sub_10000E268()
{
  v1 = *v0;
  v2 = *(*v0 + 3096);
  v3 = *(*v0 + 2936);
  v7 = *v0;

  v4 = *(v1 + 2832);
  v5 = *(v1 + 2824);

  return _swift_task_switch(sub_10000E3AC, v5, v4);
}

uint64_t sub_10000E3AC()
{
  v1 = *(v0 + 2136);
  v2 = *(v0 + 2024);
  v3 = *(v0 + 2016);
  v4 = *(v0 + 2008);
  v5 = *(v0 + 2000);
  v6 = *(v0 + 1992);
  v7 = *(v0 + 1568);
  v8 = *(v0 + 1560);
  v9 = *(v7 + 56);
  *(v0 + 3104) = v9;
  *(v0 + 3112) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v5, 1, 1, v8);
  v9(v6, 1, 1, v8);
  sub_10004D850();
  v10 = (*(v3 + 88))(v2, v4);
  if (v10 == enum case for GeneratedResponse.Outcome.success(_:))
  {
    v11 = *(v0 + 2408);
    v12 = *(v0 + 2136);
    v13 = *(v0 + 1920);
    *(v0 + 3120) = sub_10004D730();
    *(v0 + 3128) = v14;
    *(v0 + 3136) = sub_10004D600();
    *(v0 + 3144) = v15;
    *(v0 + 3152) = sub_10004D770();
    *(v0 + 3160) = v16;
    sub_10004D740();
    *(v0 + 3168) = sub_10004D780();
    *(v0 + 3176) = sub_10004D7A0();
    *(v0 + 3184) = v17;

    return _swift_task_switch(sub_10000EC00, 0, 0);
  }

  if (v10 == enum case for GeneratedResponse.Outcome.dismissSiriUI(_:))
  {
    v71 = *(v0 + 2000);
    v18 = *(v0 + 1968);
    v19 = *(v0 + 1848);
    v20 = *(v0 + 1824);
    v21 = *(v0 + 1816);
    v22 = *(v0 + 1808);
    v73 = *(v0 + 1560);
    sub_10004D360();
    (*(v20 + 104))(v19, enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:), v21);
    sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels);
    sub_10004D2C0();
    (*(v20 + 8))(v19, v21);
    sub_10004D340();
    sub_10004CE50();
    sub_10004CFA0();
    v23 = v71;
    sub_100007BC0(v71, &qword_100061488, &unk_100050D70);
    v9(v18, 0, 1, v73);
    v24 = v18;
LABEL_7:
    sub_100015594(v24, v23);
LABEL_8:
    v25 = *(v0 + 2488);
    v26 = *(v0 + 2464);
    v27 = *(v0 + 2136);
    v28 = sub_10004D7F0();
    v29 = *(v25 + *(v26 + 32));
    *(v0 + 1424) = v28;
    *(v0 + 1432) = v30;
    sub_10004CC30();
    v31 = sub_10004D860();
    v32 = *(v25 + *(v26 + 36));
    *(v0 + 1440) = v31;
    *(v0 + 1448) = v33;
    sub_10004CC30();
    v34 = swift_task_alloc();
    *(v0 + 3304) = v34;
    *v34 = v0;
    v34[1] = sub_10000F9C8;
    v35 = *(v0 + 3072);
    v36 = *(v0 + 2488);

    return sub_100015B24(v35);
  }

  if (v10 != enum case for GeneratedResponse.Outcome.signInRequired(_:))
  {
    if (v10 != *(v0 + 3316))
    {
      v64 = *(v0 + 3088);
      (*(v0 + 3080))(*(v0 + 2024), *(v0 + 2008));
      goto LABEL_8;
    }

    v40 = *(v0 + 2984);
    v41 = *(v0 + 2136);
    v42 = *(v0 + 2048);
    v72 = *(v0 + 2000);
    v43 = *(v0 + 1832);
    v44 = *(v0 + 1824);
    v69 = *(v0 + 1808);
    v70 = *(v0 + 1952);
    v45 = *(v0 + 1632);
    v46 = *(v0 + 1624);
    v68 = *(v0 + 1816);
    v66 = *(v0 + 2056);
    v67 = *(v0 + 1616);
    v74 = *(v0 + 1560);
    sub_10004D7F0();
    sub_10004CCC0();
    v47 = *(v0 + 1488);
    v48 = *(v0 + 1496);
    sub_10001564C(v66, v42, &unk_100061490, &qword_10004F630);
    sub_10004D370();
    (*(v46 + 16))(v43, v45, v67);
    (*(v44 + 104))(v43, enum case for GenerativeResultModels.GenerativeRateLimitedSnippet(_:), v68);
    sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels);
    sub_10004D2C0();
    (*(v44 + 8))(v43, v68);
    sub_10004D340();
    sub_10004CE50();
    sub_10004CFA0();
    (*(v46 + 8))(v45, v67);
    v23 = v72;
    sub_100007BC0(v72, &qword_100061488, &unk_100050D70);
    v9(v70, 0, 1, v74);
    v24 = v70;
    goto LABEL_7;
  }

  v37 = *(v0 + 1896);
  v38 = *(v0 + 1720);
  v39 = *(v0 + 1712);
  sub_10004D670();
  if ((*(v38 + 48))(v37, 1, v39) == 1)
  {
    sub_100007BC0(*(v0 + 1896), &qword_100061480, &qword_10004F2F0);
    goto LABEL_8;
  }

  v49 = *(v0 + 2408);
  v50 = *(v0 + 2264);
  v51 = *(v0 + 2240);
  v52 = *(v0 + 2232);
  v53 = *(v0 + 2192);
  v54 = *(v0 + 1704);
  v55 = *(v0 + 1680);
  v56 = *(v0 + 1664);
  (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1896), *(v0 + 1712));
  sub_10004DA50();
  sub_10004D8A0();
  (*(v51 + 104))(v50, enum case for CatId.signInRequired(_:), v52);
  sub_10004D5F0();
  sub_10004D880();

  (*(v51 + 8))(v50, v52);
  *(v0 + 1536) = &_swiftEmptyArrayStorage;
  sub_100015604(&unk_100061510, &type metadata accessor for ConfirmationConditions);
  sub_1000026D8(&unk_100061DF0, &unk_100050DF0);
  sub_100002FC8(&unk_100061520, &unk_100061DF0, &unk_100050DF0);
  sub_10004DF00();
  v57 = async function pointer to AppIntent.requestConfirmation(conditions:actionName:dialog:)[1];
  v58 = swift_task_alloc();
  *(v0 + 3288) = v58;
  *v58 = v0;
  v58[1] = sub_10000F4A8;
  v59 = *(v0 + 2840);
  v60 = *(v0 + 2192);
  v61 = *(v0 + 1704);
  v62 = *(v0 + 1680);
  v63 = *(v0 + 1552);

  return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v62, v61, v60, &type metadata for GenerateRichContentIntent, v59);
}

uint64_t sub_10000EC00()
{
  v27 = v0[398];
  v1 = v0[397];
  v22 = v0[394];
  v23 = v0[395];
  v21 = v0[393];
  v19 = v0[392];
  v17 = v0[396];
  v18 = v0[391];
  v15 = v0[390];
  v2 = v0[384];
  v3 = v0[257];
  v4 = v0[256];
  v25 = v0[248];
  v26 = v0[240];
  v5 = v0[236];
  v16 = v0[235];
  v20 = v0[234];
  v6 = v0[233];
  v7 = v0[228];
  v8 = v0[227];
  v24 = v0[226];
  sub_10001564C(v26, v0[239], &qword_100061480, &qword_10004F2F0);
  sub_10001564C(v3, v4, &unk_100061490, &qword_10004F630);

  sub_1000156B4(v1, v27);
  sub_10004D390();
  (*(v16 + 16))(v6, v5, v20);
  v9 = enum case for GenerativeResultModels.GenerativeRichTextResultSnippet(_:);
  v10 = *(v7 + 104);
  v0[399] = v10;
  v0[400] = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v6, v9, v8);
  v0[401] = sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels);
  sub_10004D2C0();
  v11 = *(v7 + 8);
  v0[402] = v11;
  v0[403] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v8);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_1000156C8(v1, v27);
  (*(v16 + 8))(v5, v20);
  sub_100007BC0(v26, &qword_100061480, &qword_10004F2F0);
  v12 = v0[354];
  v13 = v0[353];

  return _swift_task_switch(sub_10000EEE8, v13, v12);
}

uint64_t sub_10000EEE8()
{
  v1 = v0[389];
  v2 = v0[388];
  v3 = v0[301];
  v4 = v0[267];
  v5 = v0[250];
  v6 = v0[248];
  v7 = v0[238];
  v8 = v0[195];
  sub_100007BC0(v5, &qword_100061488, &unk_100050D70);
  v2(v6, 0, 1, v8);
  sub_100015594(v6, v5);
  v0[404] = sub_10004D730();
  v0[405] = v9;
  v0[406] = sub_10004D600();
  v0[407] = v10;
  v0[408] = sub_10004D770();
  v0[409] = v11;
  v0[410] = sub_10004D750();
  sub_10004D740();

  return _swift_task_switch(sub_10000EFF8, 0, 0);
}

uint64_t sub_10000EFF8()
{
  v1 = v0[410];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[221];
    v4 = v0[218];
    sub_100045A98(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v35 = *(v4 + 56);
    v37 = v5;
    v33 = (v4 - 8);
    do
    {
      v7 = v0[222];
      v8 = v0[219];
      v9 = v0[217];
      v37(v8, v6, v9);
      sub_10004D680();
      sub_10004D690();
      sub_10004D3E0();
      (*v33)(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100045A98(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[222];
      v13 = v0[220];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v35;
      --v2;
    }

    while (v2);
  }

  v14 = v0[410];

  v27 = v0[408];
  v28 = v0[409];
  v25 = v0[406];
  v26 = v0[407];
  v15 = v0[405];
  v16 = v0[404];
  v32 = v0[402];
  v34 = v0[403];
  v30 = v0[400];
  v31 = v0[401];
  v29 = v0[399];
  v38 = v0[247];
  v39 = v0[238];
  v17 = v0[232];
  v18 = v0[227];
  v36 = v0[226];
  v19 = v0[225];
  v20 = v0[224];
  v21 = v0[223];
  sub_10001564C(v39, v0[239], &qword_100061480, &qword_10004F2F0);
  sub_10004D3C0();
  (*(v20 + 16))(v17, v19, v21);
  v29(v17, enum case for GenerativeResultModels.GenerativeAttributionSnippet(_:), v18);
  sub_10004D2C0();
  v32(v17, v18);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  (*(v20 + 8))(v19, v21);
  sub_100007BC0(v39, &qword_100061480, &qword_10004F2F0);
  v22 = v0[354];
  v23 = v0[353];

  return _swift_task_switch(sub_10000F368, v23, v22);
}

uint64_t sub_10000F368()
{
  v1 = v0[389];
  v2 = v0[388];
  v3 = v0[249];
  v4 = v0[247];
  v5 = v0[195];
  sub_100007BC0(v3, &qword_100061488, &unk_100050D70);
  v2(v4, 0, 1, v5);
  sub_100015594(v4, v3);
  v6 = v0[311];
  v7 = v0[308];
  v8 = v0[267];
  v9 = sub_10004D7F0();
  v10 = *(v6 + *(v7 + 32));
  v0[178] = v9;
  v0[179] = v11;
  sub_10004CC30();
  v12 = sub_10004D860();
  v13 = *(v6 + *(v7 + 36));
  v0[180] = v12;
  v0[181] = v14;
  sub_10004CC30();
  v15 = swift_task_alloc();
  v0[413] = v15;
  *v15 = v0;
  v15[1] = sub_10000F9C8;
  v16 = v0[384];
  v17 = v0[311];

  return sub_100015B24(v16);
}

uint64_t sub_10000F4A8()
{
  v2 = *v1;
  v3 = *(*v1 + 3288);
  v21 = *v1;
  *(*v1 + 3296) = v0;

  if (v0)
  {
    v4 = v2[384];
    v5 = v2[274];
    v6 = v2[273];
    v7 = v2[272];
    v8 = v2[213];
    v9 = v2[212];
    v10 = v2[211];
    (*(v2[209] + 8))(v2[210], v2[208]);
    (*(v6 + 8))(v5, v7);
    (*(v9 + 8))(v8, v10);

    v11 = v2[354];
    v12 = v2[353];
    v13 = sub_100012174;
  }

  else
  {
    v14 = v2[274];
    v15 = v2[273];
    v16 = v2[272];
    v17 = v2[213];
    v18 = v2[212];
    v19 = v2[211];
    (*(v2[209] + 8))(v2[210], v2[208]);
    (*(v15 + 8))(v14, v16);
    (*(v18 + 8))(v17, v19);
    v11 = v2[354];
    v12 = v2[353];
    v13 = sub_10000F6B0;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_10000F6B0()
{
  v28 = v0[388];
  v29 = v0[389];
  v1 = v0[362];
  v2 = v0[355];
  v3 = v0[230];
  v4 = v0[228];
  v22 = v0[227];
  v23 = v0[226];
  v24 = v0[245];
  v26 = v0[250];
  v27 = v0[216];
  v30 = v0[215];
  v31 = v0[214];
  v5 = v0[207];
  v6 = v0[206];
  v7 = v0[205];
  v25 = v0[195];
  v8 = v0[194];
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v6 + 8))(v5, v7);
  sub_10004DB80();

  sub_10004D360();
  (*(v4 + 104))(v3, enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:), v22);
  sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels);
  sub_10004D2C0();
  (*(v4 + 8))(v3, v22);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_100007BC0(v26, &qword_100061488, &unk_100050D70);
  v28(v24, 0, 1, v25);
  sub_100015594(v24, v26);
  sub_100014154();
  (*(v30 + 8))(v27, v31);
  v9 = v0[311];
  v10 = v0[308];
  v11 = v0[267];
  v12 = sub_10004D7F0();
  v13 = *(v9 + *(v10 + 32));
  v0[178] = v12;
  v0[179] = v14;
  sub_10004CC30();
  v15 = sub_10004D860();
  v16 = *(v9 + *(v10 + 36));
  v0[180] = v15;
  v0[181] = v17;
  sub_10004CC30();
  v18 = swift_task_alloc();
  v0[413] = v18;
  *v18 = v0;
  v18[1] = sub_10000F9C8;
  v19 = v0[384];
  v20 = v0[311];

  return sub_100015B24(v19);
}

uint64_t sub_10000F9C8()
{
  v1 = *v0;
  v2 = *(*v0 + 3304);
  v3 = *(*v0 + 3072);
  v7 = *v0;

  v4 = *(v1 + 2832);
  v5 = *(v1 + 2824);

  return _swift_task_switch(sub_10000FB0C, v5, v4);
}

uint64_t sub_10000FB0C()
{
  v352 = v0;
  v1 = v0[352];
  v2 = v0[323];
  v3 = v0[311];
  v4 = v0[310];
  v5 = v0[267];

  sub_100017588();
  sub_10004DC50();
  sub_100014EBC(v3, v4);
  v6 = sub_10004DC70();
  v7 = sub_10004DEA0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[363];
  v10 = v0[323];
  v11 = v0[319];
  v12 = v0[318];
  v13 = v0[310];
  if (v8)
  {
    v348 = v0[363];
    v14 = swift_slowAlloc();
    v351[0] = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, v351);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v351);
    *(v14 + 22) = 2080;
    v15 = sub_100017684();
    v17 = v16;
    sub_100014FD4(v13);
    v18 = sub_10001E340(v15, v17, v351);

    *(v14 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s %s", v14, 0x20u);
    swift_arrayDestroy();

    v348(v10, v12);
  }

  else
  {

    sub_100014FD4(v13);
    v9(v10, v12);
  }

  v19 = v0[282];
  v20 = v0[281];
  v21 = v0[280];
  v22 = v0[279];
  v23 = v0[267];
  sub_10004D800();
  (*(v21 + 104))(v20, enum case for CatId.empty(_:), v22);
  sub_100015604(&unk_100061500, &type metadata accessor for CatId);
  sub_10004DDF0();
  sub_10004DDF0();
  v24 = v0[282];
  v25 = v0[281];
  v26 = v0[280];
  v27 = v0[279];
  if (v0[182] == v0[184] && v0[183] == v0[185])
  {
    v28 = *(v26 + 8);
    v28(v0[281], v0[279]);
    v28(v24, v27);
  }

  else
  {
    v29 = v0[183];
    v30 = v0[185];
    v31 = sub_10004DFA0();
    v32 = *(v26 + 8);
    v32(v25, v27);
    v32(v24, v27);

    if ((v31 & 1) == 0)
    {
      v61 = v0[243];
      v62 = v0[196];
      v63 = v0[195];
      sub_10001564C(v0[250], v61, &qword_100061488, &unk_100050D70);
      LODWORD(v63) = (*(v62 + 48))(v61, 1, v63);
      sub_100007BC0(v61, &qword_100061488, &unk_100050D70);
      if (v63 == 1)
      {
        v64 = v0[267];
        v338 = sub_10004D7F0();
        v343 = v65;
      }

      else
      {
        v338 = 0;
        v343 = 0xE000000000000000;
      }

      goto LABEL_14;
    }
  }

  v33 = v0[267];
  v34 = sub_10004D820();
  if (v34[2] != 1)
  {
    v35 = v0[372];
    v36 = v0[371];
    v37 = v0[269];
    v339 = v0[268];
    v344 = v0[270];
    v38 = v0[266];
    v326 = v0[265];
    v332 = v0[267];
    v315 = v0[250];
    v320 = v0[257];
    v39 = v0[249];
    v40 = v0[201];
    v41 = v0[200];
    v42 = v0[199];

    *v40 = 0xD00000000000002ELL;
    v40[1] = 0x80000001000519B0;
    (*(v41 + 104))(v40, enum case for GATError.notImplemented(_:), v42);
    sub_10004D5C0();
    (*(v41 + 8))(v40, v42);
    swift_willThrow();

    sub_100007BC0(v39, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v315, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v320, &unk_100061490, &qword_10004F630);
    (*(v38 + 8))(v332, v326);
    (*(v37 + 8))(v344, v339);
    v43 = v0[351];
    v44 = v0[313];
    v340 = v0[312];
    v345 = v0[314];
    v327 = v0[305];
    v333 = v0[307];
    v45 = v0[303];
    v321 = v0[302];
    v46 = v0[301];
    v47 = v0[300];
    v48 = v0[299];
    v49 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    v51 = sub_10004D0F0();
    sub_10004AAE4(1, v51);

    swift_willThrow();
    (*(v47 + 8))(v46, v48);
    (*(v45 + 8))(v327, v321);
    sub_100007BC0(v333, &qword_1000614D0, &unk_10004F670);
    (*(v44 + 8))(v345, v340);
    v52 = v0[364];
    v53 = v0[351];
    v54 = v0[350];
    v55 = v0[348];
    v56 = v0[347];
    v57 = v0[346];
    v58 = v0[345];
    v59 = v0[344];
    v106 = v0[343];
    v107 = v0[342];
    v109 = v0[341];
    v111 = v0[340];
    v113 = v0[339];
    v115 = v0[338];
    v117 = v0[337];
    v119 = v0[336];
    v121 = v0[335];
    v123 = v0[334];
    v125 = v0[333];
    v127 = v0[330];
    v129 = v0[329];
    v131 = v0[328];
    v133 = v0[327];
    v135 = v0[326];
    v137 = v0[325];
    v139 = v0[324];
    v141 = v0[323];
    v143 = v0[322];
    v145 = v0[321];
    v147 = v0[320];
    v149 = v0[317];
    v151 = v0[314];
    v153 = v0[310];
    v155 = v0[307];
    v157 = v0[306];
    v159 = v0[305];
    v161 = v0[304];
    v163 = v0[301];
    v165 = v0[298];
    v167 = v0[297];
    v169 = v0[296];
    v171 = v0[295];
    v173 = v0[293];
    v175 = v0[292];
    v177 = v0[289];
    v179 = v0[288];
    v181 = v0[287];
    v183 = v0[286];
    v185 = v0[283];
    v187 = v0[282];
    v189 = v0[281];
    v191 = v0[278];
    v193 = v0[276];
    v195 = v0[275];
    v197 = v0[274];
    v199 = v0[271];
    v201 = v0[270];
    v203 = v0[267];
    v205 = v0[264];
    v207 = v0[261];
    v209 = v0[260];
    v211 = v0[257];
    v213 = v0[256];
    v215 = v0[255];
    v217 = v0[254];
    v219 = v0[253];
    v221 = v0[250];
    v223 = v0[249];
    v225 = v0[248];
    v228 = v0[247];
    v231 = v0[246];
    v234 = v0[245];
    v237 = v0[244];
    v240 = v0[243];
    v243 = v0[242];
    v247 = v0[241];
    v251 = v0[240];
    v255 = v0[239];
    v259 = v0[238];
    v263 = v0[237];
    v267 = v0[236];
    v271 = v0[233];
    v275 = v0[232];
    v279 = v0[231];
    v283 = v0[230];
    v287 = v0[229];
    v291 = v0[226];
    v295 = v0[225];
    v299 = v0[222];
    v303 = v0[219];
    v307 = v0[216];
    v311 = v0[213];
    v316 = v0[210];
    v322 = v0[207];
    v328 = v0[204];
    v334 = v0[201];
    v341 = v0[198];
    v346 = v0[197];
    sub_100014FD4(v0[311]);
    sub_10001295C(v52);
    swift_unknownObjectRelease();
    (*(v55 + 8))(v53, v56);

    v60 = v0[1];
    goto LABEL_21;
  }

  v338 = v34[4];
  v343 = v34[5];

LABEL_14:
  v66 = v0[242];
  v67 = v0[196];
  v68 = v0[195];
  sub_10001564C(v0[250], v66, &qword_100061488, &unk_100050D70);
  v69 = *(v67 + 48);
  if (v69(v66, 1, v68) == 1)
  {
    v256 = v0[372];
    v264 = v0[371];
    v329 = v0[312];
    v335 = v0[314];
    v70 = v0[311];
    v71 = v0[309];
    v72 = v0[308];
    v317 = v0[307];
    v323 = v0[313];
    v308 = v0[302];
    v312 = v0[305];
    v300 = v0[301];
    v304 = v0[303];
    v292 = v0[300];
    v296 = v0[299];
    v73 = v0[278];
    v244 = v0[277];
    v74 = v0[276];
    v75 = v0[273];
    v248 = v0[272];
    v284 = v0[268];
    v288 = v0[270];
    v276 = v0[267];
    v280 = v0[269];
    v76 = v0[266];
    v268 = v0[257];
    v272 = v0[265];
    v260 = v0[250];
    v252 = v0[249];
    v77 = v0[194];
    v78 = v0[193];
    sub_100007BC0(v0[242], &qword_100061488, &unk_100050D70);
    sub_100014EBC(v70, v73);
    (*(v71 + 56))(v73, 0, 1, v72);
    v349 = v70;
    sub_1000142C0(v338, v343, v70, v74);

    sub_100014F20();
    sub_10004CBD0();

    (*(v75 + 8))(v74, v248);
    sub_100007BC0(v73, &qword_1000614A0, &unk_10004F640);
    sub_100007BC0(v252, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v260, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v268, &unk_100061490, &qword_10004F630);
    (*(v76 + 8))(v276, v272);
    (*(v280 + 8))(v288, v284);
    (*(v292 + 8))(v300, v296);
    (*(v304 + 8))(v312, v308);
    sub_100007BC0(v317, &qword_1000614D0, &unk_10004F670);
    (*(v323 + 8))(v335, v329);
  }

  else
  {
    v79 = v0[309];
    v80 = v0[273];
    v81 = v0[249];
    v82 = v0[241];
    v83 = v0[196];
    v84 = v0[195];
    v229 = *(v83 + 32);
    v229(v0[198], v0[242], v84);
    sub_10001564C(v81, v82, &qword_100061488, &unk_100050D70);
    v85 = v69(v82, 1, v84);
    v241 = v0[372];
    v86 = (v79 + 56);
    v253 = (v80 + 8);
    v245 = v0[371];
    v265 = (v83 + 8);
    v330 = v0[314];
    v336 = v0[313];
    v324 = v0[312];
    v349 = v0[311];
    v232 = v0[308];
    v313 = v0[303];
    v318 = v0[307];
    v305 = v0[302];
    v309 = v0[305];
    v297 = v0[301];
    v301 = v0[300];
    v293 = v0[299];
    v87 = v0[278];
    v235 = v0[277];
    v88 = v0[276];
    v238 = v0[272];
    v285 = v0[270];
    v289 = v0[269];
    v277 = v0[266];
    v281 = v0[268];
    v269 = v0[265];
    v273 = v0[267];
    v261 = v0[257];
    v257 = v0[250];
    v249 = v0[249];
    v89 = v0[198];
    if (v85 == 1)
    {
      v90 = v0[195];
      v91 = v0[194];
      v92 = v0[193];
      sub_100007BC0(v0[241], &qword_100061488, &unk_100050D70);
      sub_100014EBC(v349, v87);
      (*v86)(v87, 0, 1, v232);
      sub_1000142C0(v338, v343, v349, v88);

      sub_100014F20();
      sub_10004CBF0();

      (*v253)(v88, v238);
      sub_100007BC0(v87, &qword_1000614A0, &unk_10004F640);
      (*v265)(v89, v90);
    }

    else
    {
      v93 = v0[197];
      v94 = v0[195];
      v95 = v0[194];
      v226 = v0[193];
      v229(v93, v0[241], v94);
      sub_100014EBC(v349, v87);
      (*v86)(v87, 0, 1, v232);
      sub_1000142C0(v338, v343, v349, v88);

      sub_100014F20();
      sub_10004CBE0();

      (*v253)(v88, v238);
      sub_100007BC0(v87, &qword_1000614A0, &unk_10004F640);
      v96 = *v265;
      (*v265)(v93, v94);
      v96(v89, v94);
    }

    sub_100007BC0(v249, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v257, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v261, &unk_100061490, &qword_10004F630);
    (*(v277 + 8))(v273, v269);
    (*(v289 + 8))(v285, v281);
    (*(v301 + 8))(v297, v293);
    (*(v313 + 8))(v309, v305);
    sub_100007BC0(v318, &qword_1000614D0, &unk_10004F670);
    (*(v336 + 8))(v330, v324);
  }

  sub_100014FD4(v349);
  v97 = v0[351];
  v98 = v0[350];
  v99 = v0[348];
  v100 = v0[347];
  v101 = v0[346];
  v102 = v0[345];
  v103 = v0[344];
  v104 = v0[343];
  v108 = v0[342];
  v110 = v0[341];
  v112 = v0[340];
  v114 = v0[339];
  v116 = v0[338];
  v118 = v0[337];
  v120 = v0[336];
  v122 = v0[335];
  v124 = v0[334];
  v126 = v0[333];
  v128 = v0[330];
  v130 = v0[329];
  v132 = v0[328];
  v134 = v0[327];
  v136 = v0[326];
  v138 = v0[325];
  v140 = v0[324];
  v142 = v0[323];
  v144 = v0[322];
  v146 = v0[321];
  v148 = v0[320];
  v150 = v0[317];
  v152 = v0[314];
  v154 = v0[311];
  v156 = v0[310];
  v158 = v0[307];
  v160 = v0[306];
  v162 = v0[305];
  v164 = v0[304];
  v166 = v0[301];
  v168 = v0[298];
  v170 = v0[297];
  v172 = v0[296];
  v174 = v0[295];
  v176 = v0[293];
  v178 = v0[292];
  v180 = v0[289];
  v182 = v0[288];
  v184 = v0[287];
  v186 = v0[286];
  v188 = v0[283];
  v190 = v0[282];
  v192 = v0[281];
  v194 = v0[278];
  v196 = v0[276];
  v198 = v0[275];
  v200 = v0[274];
  v202 = v0[271];
  v204 = v0[270];
  v206 = v0[267];
  v208 = v0[264];
  v210 = v0[261];
  v212 = v0[260];
  v214 = v0[257];
  v216 = v0[256];
  v218 = v0[255];
  v220 = v0[254];
  v222 = v0[253];
  v224 = v0[250];
  v227 = v0[249];
  v230 = v0[248];
  v233 = v0[247];
  v236 = v0[246];
  v239 = v0[245];
  v242 = v0[244];
  v246 = v0[243];
  v250 = v0[242];
  v254 = v0[241];
  v258 = v0[240];
  v262 = v0[239];
  v266 = v0[238];
  v270 = v0[237];
  v274 = v0[236];
  v278 = v0[233];
  v282 = v0[232];
  v286 = v0[231];
  v290 = v0[230];
  v294 = v0[229];
  v298 = v0[226];
  v302 = v0[225];
  v306 = v0[222];
  v310 = v0[219];
  v314 = v0[216];
  v319 = v0[213];
  v325 = v0[210];
  v331 = v0[207];
  v337 = v0[204];
  v342 = v0[201];
  v347 = v0[198];
  v350 = v0[197];
  sub_10001295C(v0[364]);
  swift_unknownObjectRelease();
  (*(v99 + 8))(v97, v100);

  v60 = v0[1];
LABEL_21:

  return v60();
}

uint64_t sub_100011390()
{
  v1 = v0[352];
  v111 = v0[314];
  v2 = v0[313];
  v3 = v0[312];
  v4 = v0[307];
  v5 = v0[305];
  v6 = v0[303];
  v7 = v0[302];
  v8 = v0[301];
  v9 = v0[300];
  v10 = v0[299];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  sub_100007BC0(v4, &qword_1000614D0, &unk_10004F670);
  (*(v2 + 8))(v111, v3);
  v112 = v0[370];
  v11 = v0[364];
  v12 = v0[351];
  v13 = v0[350];
  v14 = v0[348];
  v15 = v0[347];
  v16 = v0[346];
  v17 = v0[345];
  v18 = v0[344];
  v21 = v0[343];
  v22 = v0[342];
  v23 = v0[341];
  v24 = v0[340];
  v25 = v0[339];
  v26 = v0[338];
  v27 = v0[337];
  v28 = v0[336];
  v29 = v0[335];
  v30 = v0[334];
  v31 = v0[333];
  v32 = v0[330];
  v33 = v0[329];
  v34 = v0[328];
  v35 = v0[327];
  v36 = v0[326];
  v37 = v0[325];
  v38 = v0[324];
  v39 = v0[323];
  v40 = v0[322];
  v41 = v0[321];
  v42 = v0[320];
  v43 = v0[317];
  v44 = v0[314];
  v45 = v0[310];
  v46 = v0[307];
  v47 = v0[306];
  v48 = v0[305];
  v49 = v0[304];
  v50 = v0[301];
  v51 = v0[298];
  v52 = v0[297];
  v53 = v0[296];
  v54 = v0[295];
  v55 = v0[293];
  v56 = v0[292];
  v57 = v0[289];
  v58 = v0[288];
  v59 = v0[287];
  v60 = v0[286];
  v61 = v0[283];
  v62 = v0[282];
  v63 = v0[281];
  v64 = v0[278];
  v65 = v0[276];
  v66 = v0[275];
  v67 = v0[274];
  v68 = v0[271];
  v69 = v0[270];
  v70 = v0[267];
  v71 = v0[264];
  v72 = v0[261];
  v73 = v0[260];
  v74 = v0[257];
  v75 = v0[256];
  v76 = v0[255];
  v77 = v0[254];
  v78 = v0[253];
  v79 = v0[250];
  v80 = v0[249];
  v81 = v0[248];
  v82 = v0[247];
  v83 = v0[246];
  v84 = v0[245];
  v85 = v0[244];
  v86 = v0[243];
  v87 = v0[242];
  v88 = v0[241];
  v89 = v0[240];
  v90 = v0[239];
  v91 = v0[238];
  v92 = v0[237];
  v93 = v0[236];
  v94 = v0[233];
  v95 = v0[232];
  v96 = v0[231];
  v97 = v0[230];
  v98 = v0[229];
  v99 = v0[226];
  v100 = v0[225];
  v101 = v0[222];
  v102 = v0[219];
  v103 = v0[216];
  v104 = v0[213];
  v105 = v0[210];
  v106 = v0[207];
  v107 = v0[204];
  v108 = v0[201];
  v109 = v0[198];
  v110 = v0[197];
  sub_100014FD4(v0[311]);
  sub_10001295C(v11);
  swift_unknownObjectRelease();
  (*(v14 + 8))(v12, v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100011A2C()
{
  v1 = v0[372];
  v2 = v0[371];
  v3 = v0[352];
  v4 = v0[270];
  v5 = v0[269];
  v6 = v0[268];

  (*(v5 + 8))(v4, v6);
  v7 = v0[376];
  v8 = v0[351];
  v9 = v0[313];
  v118 = v0[312];
  v120 = v0[314];
  v114 = v0[305];
  v116 = v0[307];
  v10 = v0[303];
  v112 = v0[302];
  v11 = v0[301];
  v12 = v0[300];
  v13 = v0[299];
  v14 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = 0;
  v16 = sub_10004D0F0();
  sub_10004AAE4(1, v16);

  swift_willThrow();
  (*(v12 + 8))(v11, v13);
  (*(v10 + 8))(v114, v112);
  sub_100007BC0(v116, &qword_1000614D0, &unk_10004F670);
  (*(v9 + 8))(v120, v118);
  v17 = v0[364];
  v18 = v0[351];
  v19 = v0[350];
  v20 = v0[348];
  v21 = v0[347];
  v22 = v0[346];
  v23 = v0[345];
  v24 = v0[344];
  v27 = v0[343];
  v28 = v0[342];
  v29 = v0[341];
  v30 = v0[340];
  v31 = v0[339];
  v32 = v0[338];
  v33 = v0[337];
  v34 = v0[336];
  v35 = v0[335];
  v36 = v0[334];
  v37 = v0[333];
  v38 = v0[330];
  v39 = v0[329];
  v40 = v0[328];
  v41 = v0[327];
  v42 = v0[326];
  v43 = v0[325];
  v44 = v0[324];
  v45 = v0[323];
  v46 = v0[322];
  v47 = v0[321];
  v48 = v0[320];
  v49 = v0[317];
  v50 = v0[314];
  v51 = v0[310];
  v52 = v0[307];
  v53 = v0[306];
  v54 = v0[305];
  v55 = v0[304];
  v56 = v0[301];
  v57 = v0[298];
  v58 = v0[297];
  v59 = v0[296];
  v60 = v0[295];
  v61 = v0[293];
  v62 = v0[292];
  v63 = v0[289];
  v64 = v0[288];
  v65 = v0[287];
  v66 = v0[286];
  v67 = v0[283];
  v68 = v0[282];
  v69 = v0[281];
  v70 = v0[278];
  v71 = v0[276];
  v72 = v0[275];
  v73 = v0[274];
  v74 = v0[271];
  v75 = v0[270];
  v76 = v0[267];
  v77 = v0[264];
  v78 = v0[261];
  v79 = v0[260];
  v80 = v0[257];
  v81 = v0[256];
  v82 = v0[255];
  v83 = v0[254];
  v84 = v0[253];
  v85 = v0[250];
  v86 = v0[249];
  v87 = v0[248];
  v88 = v0[247];
  v89 = v0[246];
  v90 = v0[245];
  v91 = v0[244];
  v92 = v0[243];
  v93 = v0[242];
  v94 = v0[241];
  v95 = v0[240];
  v96 = v0[239];
  v97 = v0[238];
  v98 = v0[237];
  v99 = v0[236];
  v100 = v0[233];
  v101 = v0[232];
  v102 = v0[231];
  v103 = v0[230];
  v104 = v0[229];
  v105 = v0[226];
  v106 = v0[225];
  v107 = v0[222];
  v108 = v0[219];
  v109 = v0[216];
  v110 = v0[213];
  v111 = v0[210];
  v113 = v0[207];
  v115 = v0[204];
  v117 = v0[201];
  v119 = v0[198];
  v121 = v0[197];
  sub_100014FD4(v0[311]);
  sub_10001295C(v17);
  swift_unknownObjectRelease();
  (*(v20 + 8))(v18, v21);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100012174()
{
  v1 = v0[372];
  v2 = v0[371];
  v3 = v0[352];
  v4 = v0[269];
  v127 = v0[268];
  v130 = v0[270];
  v5 = v0[266];
  v121 = v0[265];
  v124 = v0[267];
  v118 = v0[257];
  v6 = v0[250];
  v7 = v0[249];
  v8 = v0[216];
  v9 = v0[215];
  v10 = v0[214];

  (*(v9 + 8))(v8, v10);
  sub_100007BC0(v7, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v6, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v118, &unk_100061490, &qword_10004F630);
  (*(v5 + 8))(v124, v121);
  (*(v4 + 8))(v130, v127);
  v11 = v0[412];
  v12 = v0[351];
  v13 = v0[313];
  v125 = v0[312];
  v128 = v0[314];
  v119 = v0[305];
  v122 = v0[307];
  v14 = v0[303];
  v116 = v0[302];
  v15 = v0[301];
  v16 = v0[300];
  v17 = v0[299];
  v18 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  v20 = sub_10004D0F0();
  sub_10004AAE4(1, v20);

  swift_willThrow();
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v119, v116);
  sub_100007BC0(v122, &qword_1000614D0, &unk_10004F670);
  (*(v13 + 8))(v128, v125);
  v21 = v0[364];
  v22 = v0[351];
  v23 = v0[350];
  v24 = v0[348];
  v25 = v0[347];
  v26 = v0[346];
  v27 = v0[345];
  v28 = v0[344];
  v31 = v0[343];
  v32 = v0[342];
  v33 = v0[341];
  v34 = v0[340];
  v35 = v0[339];
  v36 = v0[338];
  v37 = v0[337];
  v38 = v0[336];
  v39 = v0[335];
  v40 = v0[334];
  v41 = v0[333];
  v42 = v0[330];
  v43 = v0[329];
  v44 = v0[328];
  v45 = v0[327];
  v46 = v0[326];
  v47 = v0[325];
  v48 = v0[324];
  v49 = v0[323];
  v50 = v0[322];
  v51 = v0[321];
  v52 = v0[320];
  v53 = v0[317];
  v54 = v0[314];
  v55 = v0[310];
  v56 = v0[307];
  v57 = v0[306];
  v58 = v0[305];
  v59 = v0[304];
  v60 = v0[301];
  v61 = v0[298];
  v62 = v0[297];
  v63 = v0[296];
  v64 = v0[295];
  v65 = v0[293];
  v66 = v0[292];
  v67 = v0[289];
  v68 = v0[288];
  v69 = v0[287];
  v70 = v0[286];
  v71 = v0[283];
  v72 = v0[282];
  v73 = v0[281];
  v74 = v0[278];
  v75 = v0[276];
  v76 = v0[275];
  v77 = v0[274];
  v78 = v0[271];
  v79 = v0[270];
  v80 = v0[267];
  v81 = v0[264];
  v82 = v0[261];
  v83 = v0[260];
  v84 = v0[257];
  v85 = v0[256];
  v86 = v0[255];
  v87 = v0[254];
  v88 = v0[253];
  v89 = v0[250];
  v90 = v0[249];
  v91 = v0[248];
  v92 = v0[247];
  v93 = v0[246];
  v94 = v0[245];
  v95 = v0[244];
  v96 = v0[243];
  v97 = v0[242];
  v98 = v0[241];
  v99 = v0[240];
  v100 = v0[239];
  v101 = v0[238];
  v102 = v0[237];
  v103 = v0[236];
  v104 = v0[233];
  v105 = v0[232];
  v106 = v0[231];
  v107 = v0[230];
  v108 = v0[229];
  v109 = v0[226];
  v110 = v0[225];
  v111 = v0[222];
  v112 = v0[219];
  v113 = v0[216];
  v114 = v0[213];
  v115 = v0[210];
  v117 = v0[207];
  v120 = v0[204];
  v123 = v0[201];
  v126 = v0[198];
  v129 = v0[197];
  sub_100014FD4(v0[311]);
  sub_10001295C(v21);
  swift_unknownObjectRelease();
  (*(v24 + 8))(v22, v25);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10001295C(uint64_t a1)
{
  v2 = sub_10004DC80();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000026D8(&unk_100061550, &unk_1000501C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAE0();
  v10 = sub_10004DC00();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10004D6C0();

  sub_100007BC0(v9, &unk_100061550, &unk_1000501C0);
  sub_10004D6F0();
  sub_10004D6E0();

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB90();

  sub_10004DC60();
  swift_unknownObjectRetain();
  v11 = sub_10004DC70();
  v12 = sub_10004DEA0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v21);
    *(v13 + 12) = 2080;
    v20 = a1;
    swift_unknownObjectRetain();
    sub_1000026D8(&unk_100061EB0, &qword_1000507D0);
    v14 = sub_10004DD70();
    v16 = sub_10001E340(v14, v15, &v21);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "(Self.self).%s disposing %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v18 + 8))(v5, v19);
}

uint64_t sub_100012C90()
{
  v1 = sub_10004DC80();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_10004DE50();
  v0[5] = sub_10004DE40();
  v5 = sub_10004DE20();

  return _swift_task_switch(sub_100012D80, v5, v4);
}

uint64_t sub_100012D80()
{
  v14 = v0;
  v2 = v0[4];
  v1 = v0[5];

  sub_10004DC50();
  v3 = sub_10004DC70();
  v4 = sub_10004DEA0();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10001E340(0xD000000000000019, 0x800000010004F590, &v13);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s Skipping confirmation", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v6, v8);
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100012F2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 120) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_10004CB90();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  sub_10004DE50();
  *(v5 + 72) = sub_10004DE40();
  v10 = sub_10004DE20();
  *(v5 + 80) = v10;
  *(v5 + 88) = v9;

  return _swift_task_switch(sub_100013028, v10, v9);
}

uint64_t sub_100013028()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  sub_10004B450(1);

  v6 = v2[3];
  v5 = v2[4];
  v7 = sub_100014E78(v2, v6);
  v8 = async function pointer to AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)[1];
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = sub_100007E50();
  *(v0 + 104) = v10;
  *v9 = v0;
  v9[1] = sub_100013164;
  v11 = *(v0 + 40);
  v12 = *(v0 + 120);
  v13 = *(v0 + 24);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v7, v13, v12, &type metadata for GenerateRichContentIntent, v6, v10, v5);
}

uint64_t sub_100013164()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1000133A4;
  }

  else
  {
    v7 = sub_1000132A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000132A0()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v3, v4);
  sub_10004DB80();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000133A4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_100013410(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10004CB90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_10004DE50();
  v1[6] = sub_10004DE40();
  v6 = sub_10004DE20();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_100013504, v6, v5);
}

uint64_t sub_100013504()
{
  v1 = *(v0 + 16);
  sub_10004DB10();
  v2 = sub_10004DD00();

  v3 = *(v1 + 112);
  sub_10004CCC0();
  v4 = [objc_opt_self() montaraEnablementWithBundleIdentifier:v2 source:2 isExplicitRequest:*(v0 + 104) & 1];
  *(v0 + 72) = v4;

  v5 = async function pointer to AppIntent.requestConfirmation(systemStyle:)[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = sub_100007E50();
  *(v0 + 88) = v7;
  *v6 = v0;
  v6[1] = sub_100013620;
  v8 = *(v0 + 16);

  return AppIntent.requestConfirmation(systemStyle:)(v4, &type metadata for GenerateRichContentIntent, v7);
}

uint64_t sub_100013620()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_100013840;
  }

  else
  {

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_10001373C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10001373C()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v3, v4);
  sub_10004DB80();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100013840()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3();
}

uint64_t sub_1000138B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_10004CB90();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = sub_10004DA90();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();
  v12 = *(*(sub_1000026D8(&unk_100061B20, &qword_100050D50) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  sub_10004DE50();
  v5[26] = sub_10004DE40();
  v14 = sub_10004DE20();
  v5[27] = v14;
  v5[28] = v13;

  return _swift_task_switch(sub_100013A48, v14, v13);
}

uint64_t sub_100013A48()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v16 = v0[17];
  v17 = v0[18];
  v5 = v0[15];
  v6 = v0[14];
  v7 = *(v0[16] + 136);
  v0[29] = sub_10004CCE0();
  sub_10004D8E0();
  sub_10004D8D0();
  (*(v4 + 104))(v2, enum case for CatId.acmeAsks(_:), v3);
  sub_1000026D8(&unk_100061540, &unk_1000507C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004F380;
  *(inited + 32) = 0x6E6F697473657571;
  *(inited + 40) = 0xE800000000000000;
  v9 = sub_10004DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_100045F74(inited);
  swift_setDeallocating();
  sub_100007BC0(inited + 32, &unk_100061E40, qword_10004F6E0);
  sub_10004D8B0();

  (*(v4 + 8))(v2, v3);
  sub_10004CBA0();
  v11 = sub_10004CBB0();
  (*(*(v11 - 8) + 56))(v1, 0, 1, v11);
  v12 = async function pointer to IntentParameter.requestValue(_:)[1];
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_100013C90;
  v14 = v0[25];

  return IntentParameter.requestValue(_:)(v0 + 12, v14);
}

uint64_t sub_100013C90()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 248) = v0;

  sub_100007BC0(v5, &unk_100061B20, &qword_100050D50);

  v7 = *(v2 + 224);
  v8 = *(v2 + 216);
  if (v0)
  {
    v9 = sub_100013F50;
  }

  else
  {
    v9 = sub_100013E1C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100013E1C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[16];

  v8 = v0[13];
  v11 = v0[12];
  sub_10004DBC0();
  sub_10004DBB0();
  sub_100007E50();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v4, v6);
  sub_10004DB80();

  v9 = v0[1];

  return v9(v11, v8);
}

uint64_t sub_100013F50()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

void sub_100013FDC()
{
  sub_100015730();
  v0 = sub_10004CFD0();
  v1 = sub_10004D650();
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    [v0 setTotalUnitCount:v1 - 1];

    v2 = sub_10004CFD0();
    [v2 setTotalUnitCount:sub_10004D650()];
  }
}

void sub_100014088(uint64_t a1)
{
  sub_100015730();
  v2 = sub_10004CFD0();
  v3 = sub_10004DD00();
  [v2 setLocalizedDescription:v3];

  v4 = sub_10004CFD0();
  [v4 setCompletedUnitCount:a1];
}

void sub_100014154()
{
  sub_1000026D8(&unk_100061E00, &unk_1000507B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004EFA0;
  *(inited + 32) = sub_10004DD30();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_10004DD30();
  *(inited + 64) = v2;
  *(inited + 72) = 1;
  v3 = sub_100045E78(inited);
  swift_setDeallocating();
  sub_1000026D8(&qword_100061530, &unk_10004F6D0);
  swift_arrayDestroy();
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v6 = v4;
    sub_10004D170(v5);
    v8 = v7;
    sub_100032B1C(v3);

    isa = sub_10004DC90().super.isa;

    [v6 openSensitiveURL:v8 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000142C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a4;
  v40 = a1;
  v41 = a2;
  v39 = sub_10004DA90();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004D240();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004CEF0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v34 - v19;
  sub_100007E50();
  sub_10004CA80();
  sub_10004CED0();
  (*(v13 + 8))(v16, v12);
  v21 = sub_10004CEC0();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100007BC0(v20, &qword_1000614D8, &unk_100050DA0);
LABEL_5:
    sub_10004D230();
    v35 = sub_10004D220();
    (*(v8 + 8))(v11, v7);

    goto LABEL_6;
  }

  v23 = sub_10004CE90();
  v25 = v24;
  (*(v22 + 8))(v20, v21);
  if (!v25)
  {
    goto LABEL_5;
  }

  v35 = v23;
LABEL_6:
  v34 = sub_10004D8A0();
  v26 = v36;
  v27 = v39;
  (*(v4 + 104))(v36, enum case for CatId.generateRichContentResponse(_:), v39);
  v28 = type metadata accessor for GenerativeResponseEntity(0);
  v29 = v37;
  v30 = *(v37 + v28[8]);
  sub_10004CC20();
  v31 = *(v29 + v28[10]);
  sub_10004CC20();
  v32 = *(v29 + v28[11]);
  sub_10004CC20();
  sub_10004D890();

  return (*(v4 + 8))(v26, v27);
}

uint64_t sub_1000146C8()
{
  v1 = *(v0 + 128);
  sub_10004CCC0();
  return sub_10004CF00();
}

uint64_t sub_100014708()
{
  v1 = *(v0 + 112);
  sub_10004CCC0();
  return v3;
}

unint64_t sub_100014740()
{
  result = qword_1000613F0;
  if (!qword_1000613F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613F0);
  }

  return result;
}

unint64_t sub_100014798()
{
  result = qword_1000613F8;
  if (!qword_1000613F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613F8);
  }

  return result;
}

uint64_t sub_10001483C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D130();
  v3 = sub_100003774(v2, qword_100062430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000148FC()
{
  v0 = (*(*(sub_1000026D8(&qword_100061568, qword_10004F708) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_10004CF90();
  return sub_10004CF80();
}

uint64_t sub_1000149D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002414;

  return sub_100008E84(a1);
}

uint64_t sub_100014A74(uint64_t a1)
{
  v2 = sub_100014D58();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100014AC0(uint64_t a1)
{
  v2 = sub_100007E50();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100014AFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100014B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_100014B70(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t *sub_100014CF4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100014D58()
{
  result = qword_100061478;
  if (!qword_100061478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061478);
  }

  return result;
}

uint64_t sub_100014E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100014E78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014F20()
{
  result = qword_1000614E0;
  if (!qword_1000614E0)
  {
    sub_100002AEC(&qword_1000614A0, &unk_10004F640);
    sub_100015604(&qword_1000614E8, type metadata accessor for GenerativeResponseEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000614E0);
  }

  return result;
}

uint64_t sub_100014FD4(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015030()
{
  v1 = sub_10004D210();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100007B00((v0 + v5));
  sub_100007B00((v0 + v5 + 40));
  v6 = *(v0 + v5 + 80);

  v7 = *(v0 + v5 + 88);

  v8 = *(v0 + v5 + 104);

  v9 = *(v0 + v5 + 112);

  v10 = *(v0 + v5 + 120);

  v11 = *(v0 + v5 + 128);

  v12 = *(v0 + v5 + 136);

  return _swift_deallocObject(v0, v5 + 144, v3 | 7);
}

uint64_t sub_100015110(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(sub_10004D210() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100002414;

  return sub_100012F2C(a1, a2, a3, v3 + v9, v3 + v10);
}

uint64_t sub_100015230()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001578C;

  return sub_100013410(v0 + 16);
}

uint64_t sub_1000152C4()
{
  sub_100007B00(v0 + 2);
  sub_100007B00(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[17];

  v6 = v0[18];

  v7 = v0[19];

  v8 = v0[21];

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100015344(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100015400;

  return sub_1000138B8(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_100015400(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_10001550C()
{
  sub_100007B00(v0 + 2);
  sub_100007B00(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[17];

  v6 = v0[18];

  v7 = v0[19];

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100015594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_100061488, &unk_100050D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001564C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026D8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000156B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003720(a1, a2);
  }

  return a1;
}

uint64_t sub_1000156C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000156DC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000156DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100015730()
{
  result = qword_100061538;
  if (!qword_100061538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061538);
  }

  return result;
}

uint64_t sub_1000157A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004D130();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10004D230();
  v4 = type metadata accessor for GenerativeResponseEntity(0);
  v5 = v4[5];
  sub_1000026D8(&qword_100061998, &qword_100050100);
  sub_10004D110();
  sub_10001AFFC(&qword_1000615F8, type metadata accessor for ResponseImageEntity);
  *(a1 + v5) = sub_10004CC50();
  v6 = v4[6];
  sub_1000026D8(&qword_1000619A0, &qword_100050108);
  sub_10004D110();
  *(a1 + v6) = sub_10004CC70();
  v7 = v4[7];
  sub_1000026D8(&qword_1000619A8, &qword_100050110);
  sub_10004D110();
  sub_10001AFFC(&qword_100061660, type metadata accessor for ResponseTextEntity);
  *(a1 + v7) = sub_10004CC50();
  v8 = v4[8];
  sub_1000026D8(&qword_100061070, &qword_10004E740);
  sub_10004D110();
  *(a1 + v8) = sub_10004CC70();
  v9 = v4[9];
  sub_10004D110();
  *(a1 + v9) = sub_10004CC70();
  v10 = v4[10];
  sub_1000026D8(&qword_1000619B0, &unk_100050118);
  sub_10004D110();
  *(a1 + v10) = sub_10004CC80();
  v11 = v4[11];
  sub_10004D110();
  *(a1 + v11) = sub_10004CC70();
  v12 = v4[12];
  sub_10004D110();
  *(a1 + v12) = sub_10004CC80();
  *(a1 + v4[13]) = 300;
  *(a1 + v4[14]) = 0x4082800000000000;
  *(a1 + v4[15]) = 792;
  *(a1 + v4[16]) = 0x4034000000000000;
  *(a1 + v4[17]) = 0x4034000000000000;
  sub_10004CC30();
  return sub_10004CC30();
}

uint64_t sub_100015B24(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(sub_1000026D8(&qword_100061978, &unk_1000500D8) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = *(*(sub_1000026D8(&qword_100061570, qword_10004F790) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for ResponseImageEntity(0);
  v2[23] = v5;
  v6 = *(v5 - 8);
  v2[24] = v6;
  v7 = *(v6 + 64) + 15;
  v2[25] = swift_task_alloc();
  v8 = sub_10004DC80();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v11 = sub_10004D150();
  v2[32] = v11;
  v12 = *(v11 - 8);
  v2[33] = v12;
  v13 = *(v12 + 64) + 15;
  v2[34] = swift_task_alloc();
  v14 = *(*(sub_1000026D8(&qword_100061480, &qword_10004F2F0) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v15 = sub_10004D1B0();
  v2[36] = v15;
  v16 = *(v15 - 8);
  v2[37] = v16;
  v17 = *(v16 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v18 = *(*(sub_10004D130() - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v19 = type metadata accessor for ResponseTextEntity(0);
  v2[45] = v19;
  v20 = *(v19 - 8);
  v2[46] = v20;
  v21 = *(v20 + 64) + 15;
  v2[47] = swift_task_alloc();
  v22 = sub_10004D410();
  v2[48] = v22;
  v23 = *(v22 - 8);
  v2[49] = v23;
  v24 = *(v23 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v25 = sub_1000026D8(&qword_100061980, &qword_1000500E8);
  v2[54] = v25;
  v26 = *(v25 - 8);
  v2[55] = v26;
  v27 = *(v26 + 64) + 15;
  v2[56] = swift_task_alloc();
  v28 = *(*(sub_1000026D8(&qword_100061988, &unk_1000500F0) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v29 = sub_10004D240();
  v2[59] = v29;
  v30 = *(v29 - 8);
  v2[60] = v30;
  v31 = *(v30 + 64) + 15;
  v2[61] = swift_task_alloc();

  return _swift_task_switch(sub_100016048, 0, 0);
}

uint64_t sub_100016048()
{
  v247 = v0;
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 440);
  v226 = *(v0 + 432);
  v5 = *(v0 + 416);
  v6 = *(v0 + 392);
  v186 = *(v0 + 360);
  v187 = *(v0 + 368);
  v7 = *(v0 + 296);
  v8 = *(v0 + 264);
  v242 = *(v0 + 216);
  v183 = *(v0 + 184);
  v184 = *(v0 + 192);
  v9 = *(v0 + 144);
  sub_10004D230();
  v182 = sub_10004D220();
  v188 = v10;
  (*(v2 + 8))(v1, v3);
  v11 = 0;
  v224 = (v5 + 8);
  v12 = *(v9 + 16);
  v13 = (v6 + 16);
  v236 = (v4 + 48);
  v238 = (v4 + 56);
  v232 = (v6 + 88);
  v234 = (v6 + 32);
  v230 = enum case for RichContentResultSegment.string(_:);
  v214 = v6;
  v216 = (v242 + 8);
  v228 = enum case for RichContentResultSegment.imageData(_:);
  v218 = (v6 + 96);
  v192 = (v7 + 8);
  v212 = enum case for RichContentResultSegment.fileData(_:);
  v180 = (v8 + 104);
  v181 = (v7 + 56);
  v185 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v179 = (v8 + 8);
  v178 = (v7 + 16);
  v189 = &_swiftEmptyArrayStorage;
  v190 = &_swiftEmptyArrayStorage;
  v191 = &_swiftEmptyArrayStorage;
  v220 = (v6 + 16);
  v222 = v12;
  v240 = (v6 + 8);
LABEL_2:
  v14 = v226;
  while (1)
  {
    if (v11 == v12)
    {
      v20 = 1;
      v243 = v12;
    }

    else
    {
      if (v11 >= v12)
      {
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v21 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_52;
      }

      v22 = *(v0 + 448);
      v23 = *(v0 + 456);
      v24 = *(v0 + 384);
      v25 = *(v0 + 144) + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v11;
      v26 = *(v14 + 48);
      *v22 = v11;
      (*(v214 + 16))(&v22[v26], v25, v24);
      sub_10001CABC(v22, v23, &qword_100061980, &qword_1000500E8);
      v20 = 0;
      v243 = v21;
    }

    v27 = *(v0 + 456);
    v28 = *(v0 + 464);
    v29 = *(v0 + 432);
    (*v238)(v27, v20, 1, v29);
    sub_10001CABC(v27, v28, &qword_100061988, &unk_1000500F0);
    if ((*v236)(v28, 1, v29) == 1)
    {
      break;
    }

    v30 = *(v0 + 464);
    v31 = *(v0 + 416);
    v32 = *(v0 + 424);
    v33 = *(v0 + 384);
    v34 = *v30;
    (*v234)(v32, &v30[*(v14 + 48)], v33);
    v35 = *v13;
    (*v13)(v31, v32, v33);
    v36 = (*v232)(v31, v33);
    if (v36 == v230)
    {
      v75 = *(v0 + 416);
      v76 = *(v0 + 376);
      v77 = *(v0 + 352);
      (*v218)(v75, *(v0 + 384));
      v209 = *v75;
      v78 = *v224;
      sub_10004CF00();
      v79 = *(v186 + 20);
      sub_1000026D8(&qword_100061060, &qword_10004E730);
      sub_10004D110();
      *(v76 + v79) = sub_10004CC90();
      v80 = *(v186 + 24);
      sub_1000026D8(&qword_100061070, &qword_10004E740);
      sub_10004D110();
      *(v76 + v80) = sub_10004CC70();
      *(v0 + 80) = v34;
      *(v0 + 88) = 0;
      sub_10004CC30();
      *(v0 + 48) = v209;
      *(v0 + 56) = v78;
      sub_10004CC30();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v191 = sub_10004845C(0, v191[2] + 1, 1, v191);
      }

      v82 = v191[2];
      v81 = v191[3];
      v13 = v220;
      v12 = v222;
      if (v82 >= v81 >> 1)
      {
        v191 = sub_10004845C(v81 > 1, v82 + 1, 1, v191);
      }

      v83 = *(v0 + 376);
      (*v240)(*(v0 + 424), *(v0 + 384));
      v191[2] = v82 + 1;
      sub_10001CB24(v83, v191 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v82, type metadata accessor for ResponseTextEntity);
      v11 = v243;
    }

    else if (v36 == v228)
    {
      v37 = *(v0 + 416);
      (*v218)(v37, *(v0 + 384));
      v38 = *v37;
      v39 = *v224;
      v40 = CPSharedResourcesDirectory();
      if (v40)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v245 = 0;
          v246 = 0;
          v41 = v40;
          sub_10004DD20();

          if (v246)
          {
            v206 = v39;
            v210 = v38;
            v84 = *(v0 + 344);
            v85 = *(v0 + 328);
            v175 = *(v0 + 320);
            v195 = *(v0 + 336);
            v201 = *(v0 + 288);
            v170 = *(v0 + 280);
            v86 = *(v0 + 272);
            v87 = *(v0 + 256);
            (*v181)();
            v88 = *v180;
            (*v180)(v86, v185, v87);
            sub_10004D190();
            *(v0 + 16) = 7368052;
            *(v0 + 24) = 0xE300000000000000;
            v88(v86, v185, v87);
            sub_100007DF8();
            sub_10004D1A0();
            v171 = *v179;
            (*v179)(v86, v87);
            v89 = *v192;
            (*v192)(v85, v201);
            *(v0 + 32) = 0xD000000000000018;
            *(v0 + 40) = 0x80000001000517A0;
            v88(v86, v185, v87);
            sub_10004D1A0();
            v171(v86, v87);
            v90 = v201;
            v202 = v89;
            v89(v195, v90);
            v245 = v182;
            v246 = v188;

            v249._countAndFlagsBits = 0x772E6567616D695FLL;
            v249._object = 0xEB00000000706265;
            sub_10004DDC0(v249);
            sub_10004D180();

            v91 = [objc_opt_self() defaultManager];
            sub_10004D170(v92);
            v94 = v93;
            *(v0 + 128) = 0;
            LODWORD(v85) = [v91 createDirectoryAtURL:v93 withIntermediateDirectories:1 attributes:0 error:v0 + 128];

            v95 = *(v0 + 128);
            if (v85)
            {
              v96 = *(v0 + 320);
              v97 = v95;
              sub_10004D1E0();
              v141 = *(v0 + 312);
              v142 = *(v0 + 320);
              v143 = *(v0 + 288);
              v144 = *(v0 + 248);
              sub_10004DC40();
              (*v178)(v141, v142, v143);
              v145 = sub_10004DC70();
              v146 = sub_10004DEA0();
              v147 = os_log_type_enabled(v145, v146);
              v148 = *(v0 + 312);
              v149 = *(v0 + 288);
              v150 = *(v0 + 248);
              v151 = *(v0 + 208);
              if (v147)
              {
                v196 = *(v0 + 208);
                v152 = swift_slowAlloc();
                v153 = swift_slowAlloc();
                v245 = v153;
                *v152 = 136315138;
                v174 = sub_10004D160();
                v176 = v150;
                v155 = v154;
                v202(v148, v149);
                v156 = sub_10001E340(v174, v155, &v245);

                *(v152 + 4) = v156;
                _os_log_impl(&_mh_execute_header, v145, v146, "Wrote image to the path %s", v152, 0xCu);
                sub_100007B00(v153);

LABEL_33:
                (*v216)(v176, v196);
              }

              else
              {

                v202(v148, v149);
                (*v216)(v150, v151);
              }
            }

            else
            {
              v98 = v95;
              v99 = sub_10004D100();

              swift_willThrow();
              v100 = *(v0 + 320);
              v101 = *(v0 + 304);
              v102 = *(v0 + 288);
              v103 = *(v0 + 224);
              sub_10004DC40();
              (*v178)(v101, v100, v102);
              swift_errorRetain();
              v104 = sub_10004DC70();
              v105 = sub_10004DEB0();

              v106 = os_log_type_enabled(v104, v105);
              v107 = *(v0 + 304);
              v108 = *(v0 + 288);
              v109 = *(v0 + 224);
              v196 = *(v0 + 208);
              if (v106)
              {
                v176 = *(v0 + 224);
                v110 = swift_slowAlloc();
                v245 = swift_slowAlloc();
                *v110 = 136315394;
                v111 = sub_10004D160();
                v173 = v105;
                v112 = v99;
                v114 = v113;
                v202(v107, v108);
                v115 = sub_10001E340(v111, v114, &v245);

                *(v110 + 4) = v115;
                *(v110 + 12) = 2080;
                *(v0 + 136) = v112;
                swift_errorRetain();
                sub_1000026D8(&qword_100061990, &unk_100050DE0);
                v116 = sub_10004DD70();
                v118 = sub_10001E340(v116, v117, &v245);

                *(v110 + 14) = v118;
                _os_log_impl(&_mh_execute_header, v104, v173, "Failed to write image to disk %s: %s", v110, 0x16u);
                swift_arrayDestroy();

                goto LABEL_33;
              }

              v202(v107, v108);
              (*v216)(v109, v196);
            }

            v119 = *(v0 + 352);
            v120 = *(v0 + 320);
            v121 = *(v0 + 200);
            v177 = *(v0 + 176);
            v197 = *(v0 + 168);
            v172 = *(v0 + 160);
            sub_100003720(v210, v206);
            sub_10004D160();
            sub_10004CF00();
            v122 = *(v183 + 20);
            sub_1000026D8(&qword_100061060, &qword_10004E730);
            sub_10004D110();
            *(v121 + v122) = sub_10004CC90();
            v123 = *(v183 + 24);
            sub_1000026D8(&qword_100061068, &qword_10004E738);
            sub_10004D110();
            *(v121 + v123) = sub_10004CC60();
            *(v0 + 64) = v34;
            *(v0 + 72) = 0;
            sub_10004CC30();
            v124 = sub_10004D470();
            (*(*(v124 - 8) + 56))(v172, 1, 1, v124);
            sub_100003720(v210, v206);
            sub_10004CB30();
            v125 = sub_10004CB40();
            (*(*(v125 - 8) + 56))(v177, 0, 1, v125);
            sub_10001A0D4(v177, v197);
            sub_10004CC30();
            sub_1000156DC(v210, v206);
            sub_100007BC0(v177, &qword_100061570, qword_10004F790);
            v126 = v189;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_100048434(0, v189[2] + 1, 1, v189);
            }

            v128 = v126[2];
            v127 = v126[3];
            if (v128 >= v127 >> 1)
            {
              v126 = sub_100048434(v127 > 1, v128 + 1, 1, v126);
            }

            v129 = *(v0 + 320);
            v130 = *(v0 + 200);
            v126[2] = v128 + 1;
            sub_10001CB24(v130, v126 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v128, type metadata accessor for ResponseImageEntity);
            v198 = sub_10004D160();
            v132 = v131;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v190 = sub_100048328(0, *(v190 + 2) + 1, 1, v190);
            }

            v134 = *(v190 + 2);
            v133 = *(v190 + 3);
            v189 = v126;
            if (v134 >= v133 >> 1)
            {
              v190 = sub_100048328((v133 > 1), v134 + 1, 1, v190);
            }

            v135 = *(v0 + 424);
            v136 = *(v0 + 384);
            v137 = *(v0 + 344);
            v138 = *(v0 + 320);
            v139 = *(v0 + 288);
            sub_1000156DC(v210, v206);

            v202(v138, v139);
            v202(v137, v139);
            (*v240)(v135, v136);
            *(v190 + 2) = v134 + 1;
            v140 = &v190[16 * v134];
            *(v140 + 4) = v198;
            *(v140 + 5) = v132;
            v13 = v220;
            v12 = v222;
            v11 = v243;
            goto LABEL_2;
          }
        }
      }

      v42 = *(v0 + 240);
      sub_10004DC40();
      v43 = sub_10004DC70();
      v44 = sub_10004DEB0();
      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 424);
      v47 = *(v0 + 384);
      v48 = *(v0 + 240);
      v49 = *(v0 + 208);
      if (v45)
      {
        v204 = *(v0 + 208);
        v50 = swift_slowAlloc();
        v208 = v47;
        v51 = swift_slowAlloc();
        v245 = v51;
        *v50 = 136315138;
        *(v0 + 120) = CPSharedResourcesDirectory();
        sub_1000026D8(&qword_1000613C8, qword_10004F320);
        v52 = sub_10004DD70();
        v193 = v48;
        v54 = v39;
        v55 = sub_10001E340(v52, v53, &v245);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v43, v44, "Could not get URL string: %s", v50, 0xCu);
        sub_100007B00(v51);

        sub_1000156DC(v38, v54);
        (*v216)(v193, v204);
        (*v240)(v46, v208);
      }

      else
      {

        sub_1000156DC(v38, v39);
        (*v216)(v48, v49);
        (*v240)(v46, v47);
      }

LABEL_23:
      v14 = v226;
      v13 = v220;
      v12 = v222;
      v11 = v243;
    }

    else
    {
      v56 = *(v0 + 424);
      v57 = *(v0 + 384);
      if (v36 != v212)
      {
        v58 = *(v0 + 408);
        v59 = *(v0 + 232);
        sub_10004DC40();
        v35(v58, v56, v57);
        v60 = sub_10004DC70();
        v61 = sub_10004DEB0();
        v62 = os_log_type_enabled(v60, v61);
        v205 = *(v0 + 424);
        v63 = *(v0 + 408);
        if (v62)
        {
          v64 = *(v0 + 400);
          v65 = *(v0 + 384);
          v194 = *(v0 + 208);
          v200 = *(v0 + 232);
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v245 = v67;
          *v66 = 136315138;
          v35(v64, v63, v65);
          v68 = sub_10004DD70();
          v70 = v69;
          v71 = *v240;
          (*v240)(v63, v65);
          v72 = sub_10001E340(v68, v70, &v245);

          *(v66 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v60, v61, "Unknown RichContentResultSegment type: %s", v66, 0xCu);
          sub_100007B00(v67);

          (*v216)(v200, v194);
        }

        else
        {
          v65 = *(v0 + 384);
          v73 = *(v0 + 232);
          v74 = *(v0 + 208);

          v71 = *v240;
          (*v240)(v63, v65);
          (*v216)(v73, v74);
        }

        v71(v205, v65);
        v71(*(v0 + 416), *(v0 + 384));
        goto LABEL_23;
      }

      v15 = *(v0 + 416);
      v16 = *(v0 + 288);
      (*v240)(*(v0 + 424), *(v0 + 384));
      (*v218)(v15, v57);
      v17 = sub_1000026D8(&qword_1000613B0, &unk_10004F300);
      v18 = *(v224 + *(v17 + 48));

      v19 = *(v224 + *(v17 + 64));

      (*v192)(v15, v16);
      v11 = v243;
    }
  }

  v157 = *(v0 + 488);
  v159 = *(v0 + 456);
  v158 = *(v0 + 464);
  v160 = *(v0 + 448);
  v161 = *(v0 + 416);
  v162 = *(v0 + 424);
  v199 = *(v0 + 408);
  v203 = *(v0 + 400);
  v207 = *(v0 + 376);
  v211 = *(v0 + 352);
  v213 = *(v0 + 344);
  v215 = *(v0 + 336);
  v217 = *(v0 + 328);
  v219 = *(v0 + 320);
  v221 = *(v0 + 312);
  v223 = *(v0 + 304);
  v225 = *(v0 + 280);
  v227 = *(v0 + 272);
  v229 = *(v0 + 248);
  v231 = *(v0 + 240);
  v233 = *(v0 + 232);
  v235 = *(v0 + 224);
  v237 = *(v0 + 200);
  v239 = *(v0 + 176);
  v241 = *(v0 + 168);
  v163 = *(v0 + 152);
  v244 = *(v0 + 160);

  v164 = type metadata accessor for GenerativeResponseEntity(0);
  v165 = *(v163 + v164[7]);
  *(v0 + 96) = v191;
  sub_10004CC30();
  v166 = *(v163 + v164[5]);
  *(v0 + 104) = v189;
  sub_10004CC30();
  v167 = *(v163 + v164[6]);
  *(v0 + 112) = v190;
  sub_10004CC30();

  v168 = *(v0 + 8);

  return v168();
}

uint64_t sub_100017588()
{
  v1 = v0;
  sub_10004D7E0();
  v2 = type metadata accessor for GenerativeResponseEntity(0);
  v3 = *(v0 + v2[10]);
  sub_10004CC30();
  sub_10004D790();
  v4 = *(v1 + v2[11]);
  sub_10004CC30();
  v5 = sub_10004D7B0();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v9 = *(v1 + v2[12]);
  v12 = v8 != 0;
  sub_10004CC30();
  result = sub_10004CC20();
  if (v12)
  {
    sub_10004D7B0();
    v11 = *(v1 + v2[8]);
    return sub_10004CC30();
  }

  return result;
}

uint64_t sub_100017684()
{
  v1 = v0;
  sub_10004DF30(114);
  v13._countAndFlagsBits = 0xD00000000000002FLL;
  v13._object = 0x8000000100051B50;
  sub_10004DDC0(v13);
  v2 = type metadata accessor for GenerativeResponseEntity(0);
  v3 = *(v0 + v2[10]);
  sub_10004CC20();
  if (v12)
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (v12)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_10004DDC0(v4);

  v14._countAndFlagsBits = 0x7265735520200A2CLL;
  v14._object = 0xEF203A7972657551;
  sub_10004DDC0(v14);
  v6 = *(v1 + v2[11]);
  sub_10004CC20();
  sub_1000026D8(&qword_100061808, "4K");
  v15._countAndFlagsBits = sub_10004DD70();
  sub_10004DDC0(v15);

  v16._object = 0x8000000100051B80;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10004DDC0(v16);
  v7 = *(v1 + v2[12]);
  sub_10004CC20();
  if (v12)
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if (v12)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_10004DDC0(v8);

  v17._countAndFlagsBits = 0x7073655220200A2CLL;
  v17._object = 0xEE00203A65736E6FLL;
  sub_10004DDC0(v17);
  v10 = *(v1 + v2[8]);
  sub_10004CC20();
  v18._countAndFlagsBits = sub_10004DD70();
  sub_10004DDC0(v18);

  return 0;
}

uint64_t sub_100017900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to EntityQuery.suggestedEntities()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002414;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1000179B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100017A74;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100017A74(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100017B74(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001AE48();
  *v6 = v2;
  v6[1] = sub_10001578C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100017C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001578C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100017CE0()
{
  v0 = sub_1000026D8(&unk_100061B30, "zS");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10004D130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10004D020();
  sub_1000037AC(v7, qword_100062448);
  sub_100003774(v7, qword_100062448);
  sub_10004D110();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10004D010();
}

id sub_100017E50()
{
  result = [objc_opt_self() systemFontOfSize:18.0];
  qword_100062460 = result;
  return result;
}

void sub_100017ECC(uint64_t a1, SEL *a2, void *a3)
{
  if (qword_100060FE0 != -1)
  {
    swift_once();
  }

  v5 = qword_100062460;
  [v5 *a2];
  v7 = v6;

  *a3 = v7;
}

uint64_t sub_100017F54()
{
  sub_1000026D8(&qword_100061A08, &unk_100050180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004F380;
  *(inited + 32) = NSFontAttributeName;
  v1 = qword_100060FE0;
  v2 = NSFontAttributeName;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_100062460;
  *(inited + 64) = sub_10001DA18(0, &qword_100061A10, UIFont_ptr);
  *(inited + 40) = v3;
  v4 = v3;
  v5 = sub_1000460A4(inited);
  swift_setDeallocating();
  result = sub_100007BC0(inited + 32, &qword_100061ED0, &qword_100050E20);
  qword_100062480 = v5;
  return result;
}

unint64_t sub_100018054()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v0 setAlignment:1];
  sub_1000026D8(&qword_100061A08, &unk_100050180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004EFA0;
  *(inited + 32) = NSFontAttributeName;
  v2 = qword_100060FE0;
  v3 = NSFontAttributeName;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100062460;
  v5 = sub_10001DA18(0, &qword_100061A10, UIFont_ptr);
  *(inited + 40) = v4;
  *(inited + 64) = v5;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 104) = sub_10001DA18(0, &qword_100061A18, NSMutableParagraphStyle_ptr);
  *(inited + 80) = v0;
  v6 = v4;
  v7 = NSParagraphStyleAttributeName;
  v8 = sub_1000460A4(inited);
  swift_setDeallocating();
  sub_1000026D8(&qword_100061ED0, &qword_100050E20);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1000181C0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1000026D8(&qword_1000619C8, &qword_100050128);
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  v29 = v25 - v3;
  v4 = sub_10004D470();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000026D8(&qword_1000619D0, &qword_100050130);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  v8 = __chkstk_darwin(v6);
  v26 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v27 = v25 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v31 = v25 - v15;
  sub_10004D430();
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10001AFFC(&qword_1000619D8, type metadata accessor for GenerativeResponseEntity);
  sub_10004D300();
  sub_10004D440();
  sub_10004D300();
  sub_10004D450();
  sub_10004D300();
  sub_10004D420();
  sub_10004D300();
  v16 = v1[12];
  v17 = v1[16];
  v25[0] = v1[20];
  v25[1] = v1;
  v19 = v28;
  v18 = v29;
  v20 = *(v28 + 16);
  v20(v29, v31, v6);
  v20(&v18[v16], v14, v6);
  v21 = v27;
  v20(&v18[v17], v27, v6);
  v22 = v26;
  v20(&v18[v25[0]], v26, v6);
  sub_10004D320();
  v23 = *(v19 + 8);
  v23(v22, v6);
  v23(v21, v6);
  v23(v14, v6);
  return (v23)(v31, v6);
}

uint64_t sub_1000185BC()
{
  v1 = *(v0 + 16);
  v2 = sub_100018634();
  if (v3 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xC000000000000000;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

void *sub_100018634()
{
  result = sub_1000190BC();
  if (result)
  {
    v1 = result;
    v2 = [result length];
    sub_1000026D8(&qword_100061A28, &qword_100050198);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004F380;
    *(inited + 32) = NSDocumentTypeDocumentAttribute;
    type metadata accessor for DocumentType(0);
    *(inited + 64) = v4;
    *(inited + 40) = NSRTFTextDocumentType;
    v5 = NSDocumentTypeDocumentAttribute;
    v6 = NSRTFTextDocumentType;
    sub_1000460C8(inited);
    swift_setDeallocating();
    sub_100007BC0(inited + 32, &qword_100061A30, &unk_1000501A0);
    type metadata accessor for DocumentAttributeKey(0);
    sub_10001AFFC(&qword_100061218, type metadata accessor for DocumentAttributeKey);
    isa = sub_10004DC90().super.isa;

    v12 = 0;
    v8 = [v1 dataFromRange:0 documentAttributes:v2 error:{isa, &v12}];

    v9 = v12;
    if (v8)
    {
      v10 = sub_10004D1D0();

      return v10;
    }

    else
    {
      v11 = v9;
      sub_10004D100();

      swift_willThrow();

      return 0;
    }
  }

  return result;
}

uint64_t sub_100018838(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_10004DD60();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000188F8, 0, 0);
}

uint64_t sub_1000188F8()
{
  v1 = v0[4];
  v2 = *(v1 + *(type metadata accessor for GenerativeResponseEntity(0) + 32));
  sub_10004CC20();
  if (!v0[3])
  {
    goto LABEL_3;
  }

  v3 = v0[2];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  sub_10004DD50();
  v7 = sub_10004DD40();
  v9 = v8;

  (*(v5 + 8))(v4, v6);
  if (v9 >> 60 == 15)
  {
LABEL_3:
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  v10 = v0[7];

  v11 = v0[1];

  return v11(v7, v9);
}

uint64_t sub_100018A1C()
{
  v1 = *(v0 + 16);
  v2 = sub_100018A94();
  if (v3 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xC000000000000000;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_100018A94()
{
  v1 = sub_10004CB40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000026D8(&qword_100061570, qword_10004F790);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ResponseImageEntity(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + *(type metadata accessor for GenerativeResponseEntity(0) + 20));
  sub_10004CC20();
  if (!*(v20 + 16))
  {

    return 0;
  }

  sub_10001D998(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v14, type metadata accessor for ResponseImageEntity);

  v16 = *&v14[*(v10 + 24)];
  sub_10004CC20();
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_100007BC0(v9, &qword_100061570, qword_10004F790);
    sub_10001D938(v14, type metadata accessor for ResponseImageEntity);
    return 0;
  }

  (*(v2 + 16))(v5, v9, v1);
  sub_100007BC0(v9, &qword_100061570, qword_10004F790);
  sub_10001D938(v14, type metadata accessor for ResponseImageEntity);
  v18 = sub_10004CB20();
  (*(v2 + 8))(v5, v1);
  return v18;
}

uint64_t sub_100018D88()
{
  v1 = *(v0 + 16);
  v2 = sub_100018E00();
  if (v3 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xC000000000000000;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_100018E00()
{
  sub_1000026D8(&qword_1000619E0, &qword_100050158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004EFA0;
  *(inited + 32) = kCGPDFContextCreator;
  *(inited + 40) = 0x65746E6F43464450;
  *(inited + 48) = 0xEA0000000000746ELL;
  *(inited + 56) = kCGPDFContextAuthor;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x8000000100051BC0;
  v1 = kCGPDFContextCreator;
  v2 = kCGPDFContextAuthor;
  v3 = sub_100046204(inited);
  swift_setDeallocating();
  sub_1000026D8(&qword_1000619E8, &qword_100050160);
  swift_arrayDestroy();
  v4 = sub_1000195F0();
  v6 = v5;
  v7 = [objc_allocWithZone(NSMutableData) init];
  sub_100032D64(v3);

  isa = sub_10004DC90().super.isa;

  v13.size.width = 612.0;
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.height = v6;
  UIGraphicsBeginPDFContextToData(v7, v13, isa);

  UIGraphicsBeginPDFPage();
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {

    sub_10001CB8C(v4);

    UIGraphicsEndPDFContext();
    v10 = v7;
    v11 = sub_10004D1D0();
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t ResponseTextEntity.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResponseTextEntity(0) + 24));
  sub_10004CC20();
  return v3;
}

uint64_t sub_1000190BC()
{
  v1 = sub_10004DC80();
  v32 = *(v1 - 8);
  v2 = *(v32 + 64);
  v3 = __chkstk_darwin(v1);
  v31 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = v29 - v5;
  v6 = sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v29 - v8;
  v10 = sub_10004D080();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004D090();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004D0B0();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = *(v0 + *(type metadata accessor for GenerativeResponseEntity(0) + 32));
  sub_10004CC20();
  if (v34)
  {
    v29[1] = v1;
    v30 = v33;
    sub_10001DA18(0, &qword_100061A38, NSAttributedString_ptr);
    (*(v16 + 104))(v19, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.inlineOnlyPreservingWhitespace(_:), v15);
    (*(v11 + 104))(v14, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v10);
    sub_10004D0A0();
    v23 = sub_10004D1B0();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    return sub_10004DEC0();
  }

  else
  {
    v25 = v30;
    sub_10004DC40();
    v26 = sub_10004DC70();
    v27 = sub_10004DEB0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Response is empty. Cannot convert to .rtf", v28, 2u);
    }

    (*(v32 + 8))(v25, v1);
    return 0;
  }
}

uint64_t sub_1000195F0()
{
  v1 = type metadata accessor for ResponseTextEntity(0);
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResponseImageEntity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for GenerativeResponseEntity(0);
  v45 = v0;
  v10 = *(v0 + v44[5]);
  sub_10004CC20();
  v11 = *(v47 + 16);
  if (v11)
  {
    v41[1] = v47;
    v42 = v1;
    v12 = 0;
    v13 = v47 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = &_swiftEmptyArrayStorage;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_10001D998(v13, v9, type metadata accessor for ResponseImageEntity);
      v16 = *&v9[*(v5 + 20)];
      sub_10004CC20();
      if (BYTE8(v47))
      {
        sub_10001D938(v9, type metadata accessor for ResponseImageEntity);
      }

      else
      {
        v17 = v47;
        v48 = v5;
        v49 = sub_10001AFFC(&qword_1000619C0, type metadata accessor for ResponseImageEntity);
        v18 = sub_100014CF4(&v47);
        result = sub_10001D998(v9, v18, type metadata accessor for ResponseImageEntity);
        v20 = v14[2];
        if (v20 < v17)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v17 < 0)
        {
          goto LABEL_42;
        }

        sub_10001DA00(&v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v20 >= v14[3] >> 1)
        {
          v14 = sub_100048768(isUniquelyReferenced_nonNull_native, v20 + 1, 1, v14);
        }

        v22 = &v14[5 * v17];
        sub_1000026D8(&qword_100061A00, &qword_100050178);
        swift_arrayDestroy();
        memmove(v22 + 9, v22 + 4, 40 * (v14[2] - v17));
        ++v14[2];
        sub_100014E14(v46, (v22 + 4));
        sub_100007BC0(v46, &qword_100061A20, &qword_100050190);
        sub_10001D938(v9, type metadata accessor for ResponseImageEntity);
        v23 = *(v45 + v44[13]);
        v24 = __OFADD__(v12, v23);
        v12 += v23;
        if (v24)
        {
          __break(1u);
LABEL_14:

          v1 = v42;
          goto LABEL_16;
        }
      }

      v13 += v15;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }
  }

  v12 = 0;
  v14 = &_swiftEmptyArrayStorage;
LABEL_16:
  v25 = *(v45 + v44[7]);
  sub_10004CC20();
  v26 = *(v47 + 16);
  if (v26)
  {
    v27 = *(v43 + 80);
    v42 = v47;
    v28 = v47 + ((v27 + 32) & ~v27);
    v29 = *(v43 + 72);
    do
    {
      sub_10001D998(v28, v4, type metadata accessor for ResponseTextEntity);
      v30 = *&v4[*(v1 + 20)];
      sub_10004CC20();
      if (BYTE8(v47))
      {
        sub_10001D938(v4, type metadata accessor for ResponseTextEntity);
      }

      else
      {
        v31 = v47;
        v48 = v1;
        v49 = sub_10001AFFC(&qword_1000619B8, type metadata accessor for ResponseTextEntity);
        v32 = sub_100014CF4(&v47);
        result = sub_10001D998(v4, v32, type metadata accessor for ResponseTextEntity);
        v33 = v14[2];
        if (v33 < v31)
        {
          goto LABEL_43;
        }

        if (v31 < 0)
        {
          goto LABEL_44;
        }

        sub_10001DA00(&v47, v46);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        if (!v34 || v33 >= v14[3] >> 1)
        {
          v14 = sub_100048768(v34, v33 + 1, 1, v14);
        }

        v35 = &v14[5 * v31];
        sub_1000026D8(&qword_100061A00, &qword_100050178);
        swift_arrayDestroy();
        memmove(v35 + 9, v35 + 4, 40 * (v14[2] - v31));
        ++v14[2];
        sub_100014E14(v46, (v35 + 4));
        sub_100007BC0(v46, &qword_100061A20, &qword_100050190);
        v36 = *&v4[*(v1 + 24)];
        sub_10004CC20();
        if (*(&v47 + 1))
        {
          if (qword_100061000 != -1)
          {
            swift_once();
          }

          v37 = *(v45 + v44[14]);
          v38 = sub_10004DDA0();
        }

        else
        {
          v38 = 0;
        }

        result = sub_10001D938(v4, type metadata accessor for ResponseTextEntity);
        v39 = 18 * v38;
        if ((v38 * 18) >> 64 != (18 * v38) >> 63)
        {
          goto LABEL_45;
        }

        v24 = __OFADD__(v12, v39);
        v12 += v39;
        if (v24)
        {
          goto LABEL_46;
        }
      }

      v28 += v29;
      --v26;
    }

    while (v26);
  }

  v40 = *(v45 + v44[15]);
  if (!v40)
  {
    goto LABEL_47;
  }

  if (v12 != 0x8000000000000000 || v40 != -1)
  {
    if (__OFADD__(v12 / v40, 1))
    {
      goto LABEL_48;
    }

    if ((v40 * (v12 / v40 + 1)) >> 64 == (v40 * (v12 / v40 + 1)) >> 63)
    {
      return v14;
    }

LABEL_49:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100019C7C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  sub_10004CC20();
  return v4;
}

uint64_t sub_100019CE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100060FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, qword_100062448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100019D90(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_100061590, type metadata accessor for GenerativeResponseEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100019E0C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  sub_10004CC20();
  return sub_10004CF00();
}

uint64_t sub_100019E60(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000615D8, type metadata accessor for GenerativeResponseEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ResponseImageEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004D130();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10004CF00();
  v4 = type metadata accessor for ResponseImageEntity(0);
  v5 = *(v4 + 20);
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  *(a1 + v5) = sub_10004CC90();
  v6 = *(v4 + 24);
  sub_1000026D8(&qword_100061068, &qword_10004E738);
  sub_10004D110();
  result = sub_10004CC60();
  *(a1 + v6) = result;
  return result;
}

uint64_t ResponseImageEntity.data.setter(uint64_t a1)
{
  v3 = sub_1000026D8(&qword_100061570, qword_10004F790);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ResponseImageEntity(0) + 24));
  sub_10001A0D4(a1, v6);
  sub_10004CC30();
  return sub_100007BC0(a1, &qword_100061570, qword_10004F790);
}

uint64_t sub_10001A0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_100061570, qword_10004F790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*static ResponseImageEntity.typeDisplayRepresentation.modify())()
{
  if (qword_100061008 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();
  sub_100003774(v0, static ResponseImageEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*ResponseImageEntity.index.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ResponseImageEntity(0) + 20));
  *(v4 + 32) = sub_10004CC10();
  return sub_10001DA6C;
}

uint64_t (*ResponseImageEntity.data.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ResponseImageEntity(0) + 24));
  *(v4 + 32) = sub_10004CC10();
  return sub_10001DA6C;
}

uint64_t sub_10001A3D8(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619C0, type metadata accessor for ResponseImageEntity);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10001A454(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619C0, type metadata accessor for ResponseImageEntity);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_10001A4F4(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000615F8, type metadata accessor for ResponseImageEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001A570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10001578C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10001A634(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_100061640, type metadata accessor for ResponseImageEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ResponseTextEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004D130();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10004CF00();
  v4 = type metadata accessor for ResponseTextEntity(0);
  v5 = *(v4 + 20);
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  *(a1 + v5) = sub_10004CC90();
  v6 = *(v4 + 24);
  sub_1000026D8(&qword_100061070, &qword_10004E740);
  sub_10004D110();
  result = sub_10004CC70();
  *(a1 + v6) = result;
  return result;
}

uint64_t sub_10001A8A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10004D020();
  sub_1000037AC(v3, a2);
  sub_100003774(v3, a2);
  return sub_10004D000();
}

uint64_t sub_10001A928(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_10004D020();

  return sub_100003774(v3, a2);
}

uint64_t sub_10001A9A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_10004D020();
  v6 = sub_100003774(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_10001AA6C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_10004D020();
  v6 = sub_100003774(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static ResponseTextEntity.typeDisplayRepresentation.modify())()
{
  if (qword_100061010 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();
  sub_100003774(v0, static ResponseTextEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10001ABE8(uint64_t a1)
{
  v3 = sub_10004CF30();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t (*ResponseTextEntity.index.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ResponseTextEntity(0) + 20));
  *(v4 + 32) = sub_10004CC10();
  return sub_10001DA6C;
}

uint64_t (*ResponseTextEntity.text.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ResponseTextEntity(0) + 24));
  *(v4 + 32) = sub_10004CC10();
  return sub_10001ADA8;
}

void sub_10001ADAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10001AE48()
{
  result = qword_100061578;
  if (!qword_100061578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061578);
  }

  return result;
}

unint64_t sub_10001AEA0()
{
  result = qword_100061580;
  if (!qword_100061580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061580);
  }

  return result;
}

unint64_t sub_10001AEF8()
{
  result = qword_100061588;
  if (!qword_100061588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061588);
  }

  return result;
}

uint64_t sub_10001AF6C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001AFA8()
{
  result = qword_100061598;
  if (!qword_100061598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061598);
  }

  return result;
}

uint64_t sub_10001AFFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001B048()
{
  result = qword_1000615A0;
  if (!qword_1000615A0)
  {
    sub_100002AEC(&qword_1000615A8, qword_10004F850);
    sub_10001AFFC(&qword_1000614E8, type metadata accessor for GenerativeResponseEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000615A0);
  }

  return result;
}

uint64_t sub_10001B7B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(char *)@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_10004D130();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CF00();
  v14 = *(a1 + 20);
  sub_1000026D8(&qword_100061060, &qword_10004E730);
  sub_10004D110();
  *(a5 + v14) = sub_10004CC90();
  v15 = *(a1 + 24);
  sub_1000026D8(a2, a3);
  sub_10004D110();
  result = a4(v13);
  *(a5 + v15) = result;
  return result;
}

uint64_t sub_10001BA08(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619B8, type metadata accessor for ResponseTextEntity);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10001BBA4(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000619B8, type metadata accessor for ResponseTextEntity);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_10001BC44@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_10004D020();
  v6 = sub_100003774(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_10001BD34(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_100061660, type metadata accessor for ResponseTextEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001BE10@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_10001BE7C(uint64_t a1)
{
  v2 = sub_10001AFFC(&qword_1000616A8, type metadata accessor for ResponseTextEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_10001BF50()
{
  sub_10004CF30();
  if (v0 <= 0x3F)
  {
    sub_10001C018();
    if (v1 <= 0x3F)
    {
      sub_10001C110(319, &qword_100061750, &qword_100061570, qword_10004F790, sub_10001C180);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001C018()
{
  if (!qword_100061730)
  {
    sub_100002AEC(&qword_100061738, "NK");
    sub_10001C39C(&qword_100061740, &qword_100061738, "NK", sub_10001C0BC);
    v0 = sub_10004CCA0();
    if (!v1)
    {
      atomic_store(v0, &qword_100061730);
    }
  }
}

unint64_t sub_10001C0BC()
{
  result = qword_100061748;
  if (!qword_100061748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061748);
  }

  return result;
}

void sub_10001C110(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_100002AEC(a3, a4);
    a5();
    v7 = sub_10004CCA0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10001C180()
{
  result = qword_100061758;
  if (!qword_100061758)
  {
    sub_100002AEC(&qword_100061570, qword_10004F790);
    sub_10001AFFC(&unk_100061760, &type metadata accessor for IntentFile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061758);
  }

  return result;
}

void sub_10001C25C()
{
  sub_10004CF30();
  if (v0 <= 0x3F)
  {
    sub_10001C018();
    if (v1 <= 0x3F)
    {
      sub_10001C2F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001C2F8()
{
  if (!qword_100061800)
  {
    sub_100002AEC(&qword_100061808, "4K");
    sub_10001C39C(&qword_100061810, &qword_100061808, "4K", sub_10001C418);
    v0 = sub_10004CCA0();
    if (!v1)
    {
      atomic_store(v0, &qword_100061800);
    }
  }
}

uint64_t sub_10001C39C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002AEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001C418()
{
  result = qword_100061818;
  if (!qword_100061818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061818);
  }

  return result;
}

uint64_t sub_10001C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10001C594(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10001C650()
{
  sub_10004D240();
  if (v0 <= 0x3F)
  {
    sub_10001C110(319, &qword_1000618B8, &qword_1000618C0, &qword_1000500B0, sub_10001C7DC);
    if (v1 <= 0x3F)
    {
      sub_10001C110(319, &qword_1000618D0, &qword_1000618D8, &qword_1000500B8, sub_10001C890);
      if (v2 <= 0x3F)
      {
        sub_10001C110(319, &qword_1000618E8, &qword_1000618F0, &qword_1000500C0, sub_10001C914);
        if (v3 <= 0x3F)
        {
          sub_10001C2F8();
          if (v4 <= 0x3F)
          {
            sub_10001C9C8();
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

unint64_t sub_10001C7DC()
{
  result = qword_1000618C8;
  if (!qword_1000618C8)
  {
    sub_100002AEC(&qword_1000618C0, &qword_1000500B0);
    sub_10001AFFC(&qword_100061638, type metadata accessor for ResponseImageEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618C8);
  }

  return result;
}

unint64_t sub_10001C890()
{
  result = qword_1000618E0;
  if (!qword_1000618E0)
  {
    sub_100002AEC(&qword_1000618D8, &qword_1000500B8);
    sub_10001C418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618E0);
  }

  return result;
}

unint64_t sub_10001C914()
{
  result = qword_1000618F8;
  if (!qword_1000618F8)
  {
    sub_100002AEC(&qword_1000618F0, &qword_1000500C0);
    sub_10001AFFC(&qword_1000616A0, type metadata accessor for ResponseTextEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618F8);
  }

  return result;
}

void sub_10001C9C8()
{
  if (!qword_100061900)
  {
    sub_10001CA24();
    v0 = sub_10004CCA0();
    if (!v1)
    {
      atomic_store(v0, &qword_100061900);
    }
  }
}

unint64_t sub_10001CA24()
{
  result = qword_100061908;
  if (!qword_100061908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061908);
  }

  return result;
}

uint64_t sub_10001CABC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026D8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001CB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001CB8C(uint64_t a1)
{
  v2 = v1;
  v113 = sub_10004CB40();
  v115 = *(v113 - 8);
  v4 = *(v115 + 64);
  __chkstk_darwin(v113);
  v105 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000026D8(&qword_100061570, qword_10004F790);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v102 - v8;
  v10 = sub_1000026D8(&qword_1000619F0, &qword_100050168);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v102 - v12;
  v14 = type metadata accessor for ResponseImageEntity(0);
  v118 = *(v14 - 8);
  v15 = *(v118 + 64);
  __chkstk_darwin(v14);
  v117 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10004DC80();
  v17 = *(v119 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v119);
  v120 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v102 - v22;
  __chkstk_darwin(v21);
  v109 = &v102 - v24;
  v25 = sub_1000026D8(&qword_1000619F8, &qword_100050170);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v124 = &v102 - v27;
  v123 = type metadata accessor for ResponseTextEntity(0);
  v28 = *(v123 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v123);
  v122 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100018054();
  v32 = type metadata accessor for GenerativeResponseEntity(0);
  v34 = *(a1 + 16);
  if (v34)
  {
    v112 = v31;
    v108 = v23;
    v114 = v32;
    v35 = *(v2 + *(v32 + 68));
    v36 = a1 + 32;
    v121 = (v28 + 56);
    v116 = (v118 + 56);
    v118 = v17 + 8;
    v111 = (v115 + 48);
    v104 = (v115 + 16);
    v103 = (v115 + 8);
    *&v33 = 136315138;
    v106 = v33;
    v37 = v35;
    v110 = v13;
    v115 = v14;
    v38 = v120;
    v39 = v124;
    v40 = v123;
    v107 = v9;
    while (1)
    {
      sub_100014E14(v36, v128);
      sub_100014E14(v128, v127);
      sub_1000026D8(&qword_100061A00, &qword_100050178);
      v43 = swift_dynamicCast();
      v44 = *v121;
      if (v43)
      {
        v44(v39, 0, 1, v40);
        v45 = v39;
        v46 = v122;
        sub_10001CB24(v45, v122, type metadata accessor for ResponseTextEntity);
        v47 = *(v46 + *(v40 + 24));
        sub_10004CC20();
        if (v127[1])
        {
          v48 = v114;
          v49 = *(v2 + *(v114 + 56));
          v50 = sub_10004DDA0();
          if (qword_100060FE8 != -1)
          {
            v98 = v50;
            swift_once();
            v50 = v98;
            v48 = v114;
          }

          v51 = *&qword_100062468;
          if (qword_100060FF0 != -1)
          {
            v99 = v50;
            swift_once();
            v50 = v99;
            v48 = v114;
          }

          v52 = *&qword_100062470;
          if (qword_100060FF8 != -1)
          {
            v100 = v50;
            swift_once();
            v50 = v100;
            v48 = v114;
          }

          v53 = (v51 + v52 + *&qword_100062478) * v50;
          v54 = *(v2 + *(v48 + 64));
          v55 = sub_10004DD00();

          type metadata accessor for Key(0);
          sub_10001AFFC(&qword_100061228, type metadata accessor for Key);
          isa = sub_10004DC90().super.isa;
          [v55 drawInRect:isa withAttributes:{v54, v37, v49, v53}];

          sub_100007B00(v128);
          sub_10001D938(v122, type metadata accessor for ResponseTextEntity);
          v37 = v37 + v35 + v53;
          goto LABEL_5;
        }

        v74 = v109;
        sub_10004DC40();
        v75 = sub_10004DC70();
        v76 = sub_10004DEB0();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "No text present in the entity response while converting to PDF.", v77, 2u);
          v14 = v115;
        }

        (*v118)(v74, v119);
        sub_100007B00(v128);
        v41 = type metadata accessor for ResponseTextEntity;
        v42 = &v130;
      }

      else
      {
        v44(v39, 1, 1, v40);
        sub_100007BC0(v39, &qword_1000619F8, &qword_100050170);
        sub_100014E14(v128, v127);
        v57 = swift_dynamicCast();
        v58 = *v116;
        if (!v57)
        {
          v58(v13, 1, 1, v14);
          sub_100007BC0(v13, &qword_1000619F0, &qword_100050168);
          sub_10004DC40();
          sub_100014E14(v128, v127);
          v65 = sub_10004DC70();
          v66 = sub_10004DEB0();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v126 = v68;
            *v67 = v106;
            sub_100014E14(v127, v125);
            v69 = sub_10004DD70();
            v70 = v2;
            v72 = v71;
            sub_100007B00(v127);
            v73 = sub_10001E340(v69, v72, &v126);
            v2 = v70;
            v9 = v107;

            *(v67 + 4) = v73;
            _os_log_impl(&_mh_execute_header, v65, v66, "Encountered unexpected entity type while writing file contents: %s.", v67, 0xCu);
            sub_100007B00(v68);
            v13 = v110;

            v14 = v115;
          }

          else
          {

            sub_100007B00(v127);
          }

          (*v118)(v38, v119);
          sub_100007B00(v128);
          goto LABEL_6;
        }

        v58(v13, 0, 1, v14);
        v59 = v117;
        sub_10001CB24(v13, v117, type metadata accessor for ResponseImageEntity);
        v60 = *(v59 + *(v14 + 24));
        sub_10004CC20();
        if ((*v111)(v9, 1, v113))
        {
          sub_100007BC0(v9, &qword_100061570, qword_10004F790);
        }

        else
        {
          v78 = v105;
          v79 = v113;
          (*v104)(v105, v9, v113);
          sub_100007BC0(v9, &qword_100061570, qword_10004F790);
          v80 = sub_10004CB20();
          v82 = v81;
          (*v103)(v78, v79);
          v83 = objc_allocWithZone(UIImage);
          sub_100003720(v80, v82);
          v84 = sub_10004D1C0().super.isa;
          v85 = [v83 initWithData:v84];

          sub_1000156DC(v80, v82);
          if (v85)
          {
            [v85 size];
            v87 = v86;
            [v85 size];
            v89 = *(v2 + *(v114 + 56));
            v90 = v89;
            v91 = v87;
            v92 = v90 / v91;
            v93 = *(v2 + *(v114 + 52));
            v94 = v88;
            if ((v93 / v94) < v92)
            {
              v92 = v93 / v94;
            }

            v95 = v92;
            v96 = v87 * v92;
            v97 = v88 * v95;
            [v85 drawInRect:{(v89 - v96) * 0.5, v37, v96, v88 * v95}];

            sub_1000156DC(v80, v82);
            sub_100007B00(v128);
            sub_10001D938(v117, type metadata accessor for ResponseImageEntity);
            v37 = v37 + v35 + v97;
            v13 = v110;
            v14 = v115;
            goto LABEL_5;
          }

          sub_1000156DC(v80, v82);
          v13 = v110;
          v14 = v115;
        }

        v61 = v108;
        sub_10004DC40();
        v62 = sub_10004DC70();
        v63 = sub_10004DEA0();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "No image present in the entity response while converting to PDF.", v64, 2u);
          v14 = v115;
        }

        (*v118)(v61, v119);
        sub_100007B00(v128);
        v41 = type metadata accessor for ResponseImageEntity;
        v42 = &v129;
      }

      sub_10001D938(*(v42 - 32), v41);
LABEL_5:
      v38 = v120;
LABEL_6:
      v39 = v124;
      v40 = v123;
      v36 += 40;
      if (!--v34)
      {
      }
    }
  }
}

uint64_t sub_10001D938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001D998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DA00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001DA18(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001DAB0()
{
  v0 = sub_10004D120();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004D270();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004DCF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004D130();
  sub_1000037AC(v9, static PrewarmGenerativeAssistantExtensionIntent.title);
  sub_100003774(v9, static PrewarmGenerativeAssistantExtensionIntent.title);
  sub_10004DCE0();
  sub_10004D260();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004D140();
}

uint64_t PrewarmGenerativeAssistantExtensionIntent.title.unsafeMutableAddressor()
{
  if (qword_100061018 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D130();

  return sub_100003774(v0, static PrewarmGenerativeAssistantExtensionIntent.title);
}

uint64_t static PrewarmGenerativeAssistantExtensionIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061018 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D130();
  v3 = sub_100003774(v2, static PrewarmGenerativeAssistantExtensionIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PrewarmGenerativeAssistantExtensionIntent.perform()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1000026D8(&unk_100061550, &unk_1000501C0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_10004DC80();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001DE94, 0, 0);
}

uint64_t sub_10001DE94()
{
  v16 = v0;
  v1 = *(v0 + 48);
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAD0();
  sub_10004D6D0();

  sub_10004DC60();
  v2 = sub_10004DC70();
  v3 = sub_10004DE90();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10001E340(0xD000000000000029, 0x80000001000501B0, &v15);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s prewarming GenerativeAssistantExtension", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v5, v7);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  *(v0 + 56) = 1;
  sub_10001CA24();
  sub_10004CC00();
  sub_10004D6F0();
  sub_10004DAD0();
  v12 = sub_10004DC00();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_10004D6C0();

  sub_10001E128(v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10001E128(uint64_t a1)
{
  v2 = sub_1000026D8(&unk_100061550, &unk_1000501C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E19C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002414;

  return PrewarmGenerativeAssistantExtensionIntent.perform()(a1);
}

uint64_t sub_10001E234(uint64_t a1)
{
  v2 = sub_10001EA68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10001E270(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10001E2E4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10001E340(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10001E340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001E40C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001EB34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007B00(v11);
  return v7;
}

unint64_t sub_10001E40C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001E518(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10004DF40();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001E518(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001E564(a1, a2);
  sub_10001E694(&off_10005DC78);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001E564(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001E780(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004DF40();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10004DDD0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001E780(v10, 0);
        result = sub_10004DF20();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001E694(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10001E7F4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001E780(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000026D8(&qword_100061A68, &qword_100050318);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001E7F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000026D8(&qword_100061A68, &qword_100050318);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10001E8E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10001E8F8(uint64_t (*a1)(void))
{
  v1 = a1();

  return _typeName(_:qualified:)(v1, 0);
}

unint64_t sub_10001E938()
{
  result = qword_100061A40;
  if (!qword_100061A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A40);
  }

  return result;
}

unint64_t sub_10001E990()
{
  result = qword_100061A48;
  if (!qword_100061A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A48);
  }

  return result;
}

unint64_t sub_10001EA68()
{
  result = qword_100061A50;
  if (!qword_100061A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A50);
  }

  return result;
}

unint64_t sub_10001EAD0()
{
  result = qword_100061A58;
  if (!qword_100061A58)
  {
    sub_100002AEC(&qword_100061A60, &qword_100050310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A58);
  }

  return result;
}

uint64_t sub_10001EB34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}
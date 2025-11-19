uint64_t sub_62808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_95EB8();
  __chkstk_darwin(v5 - 8);

  sub_95EA8();
  result = sub_95E58();
  v7 = *(*v0 + 16);
  if (v7)
  {
    v8 = *v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_62B20(v8, v4);
      if (qword_C4698 != -1)
      {
        swift_once();
      }

      v9 = qword_CD500;

      sub_62B90();
      v10 = sub_95E78();
      v15 = v9;
      sub_4AA94();
      sub_95EE8();
      v10(v16, 0);
      if (qword_C46A8 != -1)
      {
        swift_once();
      }

      v11 = qword_CD510;
      v12 = qword_CD510;
      v13 = sub_95E78();
      v15 = v11;
      sub_4AAE8();
      sub_95EE8();
      v13(v16, 0);
      result = sub_62BF4(v4);
      v8 += v14;
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t sub_62AC8()
{
  result = qword_C7760;
  if (!qword_C7760)
  {
    type metadata accessor for TextContent.LiveText(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7760);
  }

  return result;
}

uint64_t sub_62B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_62B90()
{
  result = qword_C62F0;
  if (!qword_C62F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C50F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C62F0);
  }

  return result;
}

uint64_t sub_62BF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_62C60()
{
  result = qword_C6D40;
  if (!qword_C6D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6D38);
    sub_62CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6D40);
  }

  return result;
}

unint64_t sub_62CEC()
{
  result = qword_C6D48;
  if (!qword_C6D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6D48);
  }

  return result;
}

uint64_t sub_62D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6DA8);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  __chkstk_darwin(v7);
  v31 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6DB0);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  __chkstk_darwin(v10);
  v32 = &v31 - v12;
  v38 = sub_97328();
  v39 = 0;
  LOBYTE(v40) = 0;
  sub_63194(a1, a2, a3, v41);
  LOBYTE(a3) = sub_97448();
  sub_97078();
  v42 = a3;
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = 0;
  v17 = type metadata accessor for TextContent(0);
  v18 = sub_64C60(&qword_C56A0, type metadata accessor for TextContent);
  v48 = sub_970B8();
  v49 = v19 & 1;
  v50 = sub_970B8();
  v51 = v20 & 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6DB8);
  v22 = sub_64250();
  sub_97628();
  sub_4C60(&v38, &qword_C6DB8);
  swift_getKeyPath();
  v38 = a1;
  sub_962A8();

  v23 = type metadata accessor for TextContent.LiveText(0);

  v38 = v21;
  v39 = v17;
  v40 = v22;
  v41[0] = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_64C60(&qword_C7760, type metadata accessor for TextContent.LiveText);
  v26 = v32;
  v27 = v33;
  v28 = v31;
  sub_97628();

  (*(v34 + 8))(v28, v27);
  type metadata accessor for TranscriptPresentationContext();
  v38 = v27;
  v39 = v23;
  v40 = OpaqueTypeConformance2;
  v41[0] = v25;
  swift_getOpaqueTypeConformance2();
  sub_64C60(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
  v29 = v35;
  sub_97628();
  return (*(v36 + 8))(v26, v29);
}

uint64_t sub_63194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34[0] = 0;
  v35 = a2;
  v36 = a3;
  KeyPath = swift_getKeyPath();
  v38 = 0;
  v39 = swift_getKeyPath();
  v40 = 0;
  swift_getKeyPath();
  *&v43[0] = a1;
  sub_64C60(&qword_C56A0, type metadata accessor for TextContent);
  swift_retain_n();
  sub_962A8();

  v8 = *(*(a1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText) + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText_descriptorRanges);
  type metadata accessor for TextContent(0);

  v9 = sub_970B8();
  sub_5E90C(v8, v9, v10 & 1, &v19);
  v27[0] = 1;
  v28 = a2;
  v29 = a3;
  v30 = swift_getKeyPath();
  v31 = 0;
  v32 = swift_getKeyPath();
  v33 = 0;
  sub_64614(v34, v26);
  sub_64614(v27, v18);
  sub_64614(v26, a4);
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v41[4] = v23;
  v41[5] = v24;
  v14 = v25;
  v42 = v25;
  v15 = v20;
  v41[0] = v19;
  v41[1] = v20;
  v16 = v21;
  v41[2] = v21;
  v41[3] = v22;
  *(a4 + 88) = v19;
  *(a4 + 104) = v15;
  *(a4 + 120) = v16;
  *(a4 + 184) = v14;
  *(a4 + 152) = v12;
  *(a4 + 136) = v11;
  *(a4 + 168) = v13;
  sub_64614(v18, a4 + 192);
  sub_5EC54(v41, v43);
  sub_64670(v27);
  sub_64670(v34);
  sub_64670(v18);
  v43[4] = v23;
  v43[5] = v24;
  v44 = v25;
  v43[0] = v19;
  v43[1] = v20;
  v43[2] = v21;
  v43[3] = v22;
  sub_646C4(v43);
  return sub_64670(v26);
}

uint64_t sub_633F8@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_972F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_981C8();
    v10 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v11 = sub_42D0C();

  sub_97878();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6E48);
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6E28);
  v18 = (a3 + *(result + 36));
  *v18 = v11;
  v18[1] = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  return result;
}

uint64_t sub_635DC()
{
  sub_97838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6E28);
  sub_EA78(&qword_C6E30, &qword_C6E20);
  sub_64A00();
  sub_976B8();
}

uint64_t sub_636E0()
{
  sub_5A214(*v0, *(v0 + 8));
  sub_43398();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6E50);
  sub_EA78(&qword_C6E58, &qword_C6E50);
  sub_26788();
  sub_97668();
}

uint64_t sub_637C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6E60);
  sub_EA78(&qword_C6E68, &qword_C6E60);
  return sub_97688();
}

uint64_t sub_63870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6760);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_974E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for Font.TextStyle.title3(_:), v3);
  v7 = enum case for Font.Design.serif (_:);
  v8 = sub_97468();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  sub_97488();
  v10 = sub_974B8();
  sub_4C60(v2, &qword_C6760);
  result = (*(v4 + 8))(v6, v3);
  qword_CD4F8 = v10;
  return result;
}

uint64_t sub_63A70()
{
  if (qword_C4690 != -1)
  {
    swift_once();
  }

  v0 = sub_974A8();

  qword_CD500 = v0;
  return result;
}

uint64_t sub_63AE4()
{
  result = sub_63B04();
  qword_CD508 = result;
  return result;
}

uint64_t sub_63B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6D58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9AF50;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6D60);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_9AF50;
  *(v1 + 32) = UIFontWeightTrait;
  *(v1 + 40) = UIFontWeightRegular;
  v2 = UIFontDescriptorTraitsAttribute;
  v3 = UIFontWeightTrait;
  v4 = sub_76D8C(v1);
  swift_setDeallocating();
  sub_4C60(v1 + 32, &qword_C6D68);
  *(inited + 40) = v4;
  v5 = sub_76E7C(inited);
  swift_setDeallocating();
  sub_4C60(inited + 32, &qword_C6D70);
  sub_278A0();
  v6 = sub_983D8();
  v7 = [v6 fontDescriptor];

  v8 = [v7 fontDescriptorWithDesign:UIFontDescriptorSystemDesignSerif];
  if (v8)
  {
    sub_63D94(v5);

    type metadata accessor for AttributeName(0);
    sub_64C60(&qword_C47E8, type metadata accessor for AttributeName);
    isa = sub_97D58().super.isa;

    v10 = [v8 fontDescriptorByAddingAttributes:isa];

    if (v10)
    {
      [v10 pointSize];
      v12 = [objc_opt_self() fontWithDescriptor:v10 size:v11];

      return v12;
    }
  }

  else
  {
  }

  return sub_983D8();
}

uint64_t sub_63D94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6D78);
    v1 = sub_987B8();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6D80);
    swift_dynamicCast();
    sub_16B64((v25 + 8), v23);
    sub_16B64(v23, v25);
    sub_97E08();
    sub_988D8();
    sub_97E88();
    v14 = sub_98918();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = sub_16B64(v25, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_64048()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_CD510 = result;
  return result;
}

uint64_t sub_64084@<X0>(void *a1@<X8>)
{
  result = sub_961B8();
  *a1 = v3;
  return result;
}

uint64_t sub_640D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_64120(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_641B8(uint64_t a1)
{
  result = sub_641E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_641E0()
{
  result = qword_C80E0;
  if (!qword_C80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80E0);
  }

  return result;
}

unint64_t sub_64250()
{
  result = qword_C6DC0;
  if (!qword_C6DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6DB8);
    sub_642DC();
    sub_64554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6DC0);
  }

  return result;
}

unint64_t sub_642DC()
{
  result = qword_C6DC8;
  if (!qword_C6DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6DD0);
    sub_64368();
    sub_64500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6DC8);
  }

  return result;
}

unint64_t sub_64368()
{
  result = qword_C6DD8;
  if (!qword_C6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6DE0);
    sub_643F4();
    sub_644AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6DD8);
  }

  return result;
}

unint64_t sub_643F4()
{
  result = qword_C6DE8;
  if (!qword_C6DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6DF0);
    sub_EA78(&qword_C6DF8, &qword_C6E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6DE8);
  }

  return result;
}

unint64_t sub_644AC()
{
  result = qword_C6E08;
  if (!qword_C6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E08);
  }

  return result;
}

unint64_t sub_64500()
{
  result = qword_C6E10;
  if (!qword_C6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E10);
  }

  return result;
}

unint64_t sub_64554()
{
  result = qword_C6E18;
  if (!qword_C6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E18);
  }

  return result;
}

uint64_t sub_645C0@<X0>(void *a1@<X8>)
{
  result = sub_961B8();
  *a1 = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_64750(uint64_t a1, unsigned int a2)
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

uint64_t sub_6479C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_647F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6DB0);
  type metadata accessor for TranscriptPresentationContext();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6DA8);
  type metadata accessor for TextContent.LiveText(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6DB8);
  type metadata accessor for TextContent(255);
  sub_64250();
  sub_64C60(&qword_C56A0, type metadata accessor for TextContent);
  swift_getOpaqueTypeConformance2();
  sub_64C60(&qword_C7760, type metadata accessor for TextContent.LiveText);
  swift_getOpaqueTypeConformance2();
  sub_64C60(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_64A00()
{
  result = qword_C6E38;
  if (!qword_C6E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6E28);
    sub_EA78(&qword_C6E40, &qword_C6E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E38);
  }

  return result;
}

uint64_t sub_64AB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6E20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6E28);
  sub_EA78(&qword_C6E30, &qword_C6E20);
  sub_64A00();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_64B78()
{
  result = qword_C6E70;
  if (!qword_C6E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6E78);
    sub_EA78(&qword_C6E58, &qword_C6E50);
    sub_64C60(&qword_C6E80, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E70);
  }

  return result;
}

uint64_t sub_64C60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_64CAC()
{
  result = qword_C6E88;
  if (!qword_C6E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6E90);
    sub_EA78(&qword_C6E68, &qword_C6E60);
    sub_64C60(&qword_C6E80, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E88);
  }

  return result;
}

unint64_t sub_64DBC()
{
  result = qword_C77C0;
  if (!qword_C77C0)
  {
    type metadata accessor for ChapterTitleContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C77C0);
  }

  return result;
}

unint64_t sub_64E14(uint64_t a1)
{
  result = sub_64E3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_64E3C()
{
  result = qword_C6EB8;
  if (!qword_C6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6EB8);
  }

  return result;
}

uint64_t sub_64EAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28[0] = 0;
  v29 = a2;
  v30 = a3;
  KeyPath = swift_getKeyPath();
  v32 = 0;
  v33 = swift_getKeyPath();
  v34 = 0;
  v24[0] = *(a1 + 16);
  sub_26788();
  swift_retain_n();

  v7 = sub_975D8();
  v9 = v8;
  v11 = v10;
  sub_974C8();
  sub_97498();
  sub_974D8();

  v12 = sub_97538();
  v14 = v13;
  v20 = v15;
  v17 = v16;

  sub_5AAE8(v7, v9, v11 & 1);

  v18 = swift_getKeyPath();
  LOBYTE(v24[0]) = 1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = swift_getKeyPath();
  v25 = 0;
  v26 = swift_getKeyPath();
  v27 = 0;
  sub_64614(v28, v23);
  sub_64614(v24, v22);
  sub_64614(v23, a4);
  *(a4 + 88) = v12;
  *(a4 + 96) = v14;
  *(a4 + 104) = v20 & 1;
  *(a4 + 112) = v17;
  *(a4 + 120) = v18;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 1;
  sub_64614(v22, a4 + 152);
  sub_5AAD8(v12, v14, v20 & 1);

  sub_64670(v24);
  sub_64670(v28);
  sub_64670(v22);
  sub_5AAE8(v12, v14, v20 & 1);

  return sub_64670(v23);
}

uint64_t sub_650D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = sub_97328();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_64EAC(v3, v5, v4, a1 + 24);
  LOBYTE(v4) = sub_97428();
  sub_97078();
  *(a1 + 264) = v4;
  *(a1 + 272) = v6;
  *(a1 + 280) = v7;
  *(a1 + 288) = v8;
  *(a1 + 296) = v9;
  *(a1 + 304) = 0;
  LOBYTE(v4) = sub_97438();
  result = sub_97078();
  *(a1 + 312) = v4;
  *(a1 + 320) = v11;
  *(a1 + 328) = v12;
  *(a1 + 336) = v13;
  *(a1 + 344) = v14;
  *(a1 + 352) = 0;
  return result;
}

uint64_t sub_65208(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6528C()
{
  result = qword_C6EE0;
  if (!qword_C6EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6EE0);
  }

  return result;
}

unint64_t sub_65304()
{
  result = qword_C52B0;
  if (!qword_C52B0)
  {
    type metadata accessor for LinkContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C52B0);
  }

  return result;
}

unint64_t sub_6535C(uint64_t a1)
{
  result = sub_65384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_65384()
{
  result = qword_C6F10;
  if (!qword_C6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6F10);
  }

  return result;
}

double sub_653F4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_976D8();
  sub_977C8();
  sub_970F8();
  v3 = sub_97418();
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v3;
  result = 16.0;
  *(a1 + 64) = xmmword_9E750;
  *(a1 + 80) = xmmword_9E750;
  *(a1 + 96) = 0;
  return result;
}

unint64_t sub_654B0()
{
  result = qword_C6F18;
  if (!qword_C6F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6F20);
    sub_6553C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6F18);
  }

  return result;
}

unint64_t sub_6553C()
{
  result = qword_C6F28;
  if (!qword_C6F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6F28);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_655D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_6561C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_656C4(uint64_t a1)
{
  result = sub_656EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_656EC()
{
  result = qword_C6F58;
  if (!qword_C6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6F58);
  }

  return result;
}

uint64_t sub_6575C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F60);
  __chkstk_darwin(v3);
  v5 = v48 - v4;
  v6 = sub_973E8();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F68);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F70);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v12 = v48 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F78);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = v48 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F80);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F88);
  __chkstk_darwin(v15);
  v60 = v48 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (v68 == &dword_0 + 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_673BC();
    return sub_97388();
  }

  else
  {
    v49 = v68;
    v50 = v15;
    v51 = v3;
    v52 = v5;
    *&v48[1] = v69;
    *v10 = sub_97328();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FD0);
    sub_65FB8(v2, &v10[*(v18 + 44)]);
    v19 = sub_97448();
    sub_97078();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FA8) + 36)];
    *v28 = v19;
    *(v28 + 1) = v21;
    *(v28 + 2) = v23;
    *(v28 + 3) = v25;
    *(v28 + 4) = v27;
    v28[40] = 0;
    v10[v8[9]] = 0;
    v29 = swift_allocObject();
    v30 = v2[1];
    v29[1] = *v2;
    v29[2] = v30;
    v31 = v2[3];
    v29[3] = v2[2];
    v29[4] = v31;
    sub_676E4(v2, &v68);
    *&v32 = COERCE_DOUBLE(sub_67548());
    sub_97638();

    sub_4C60(v10, &qword_C6F68);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_96E98();

    v33 = 0.0;
    if (v68 != &dword_0 + 1)
    {
      v34 = *&v69;
      v33 = v69;
      sub_375D8(v68);
      if ((~v34 & 0x7FF0000000000000) == 0 && (v34 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v33 = 0.0;
      }
    }

    v66 = v33;
    v35 = swift_allocObject();
    v36 = v2[1];
    v35[1] = *v2;
    v35[2] = v36;
    v37 = v2[3];
    v35[3] = v2[2];
    v35[4] = v37;
    sub_676E4(v2, &v68);
    v68 = v8;
    v69 = *&v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v54;
    v40 = v55;
    sub_976A8();

    (*(v53 + 8))(v12, v40);
    v41 = v62;
    sub_973D8();
    v68 = v40;
    v69 = COERCE_DOUBLE(&type metadata for Double);
    v70 = OpaqueTypeConformance2;
    v71 = &protocol witness table for Double;
    v42 = swift_getOpaqueTypeConformance2();
    v43 = v57;
    v44 = v58;
    sub_97678();
    (*(v63 + 8))(v41, v64);
    (*(v56 + 8))(v39, v44);
    v72._object = 0x80000000000A4230;
    v73._countAndFlagsBits = 0xD000000000000033;
    v73._object = 0x80000000000A4260;
    v72._countAndFlagsBits = 0xD000000000000026;
    v68 = sub_967C8(v72, v73);
    v69 = v45;
    v66 = *&v44;
    v67 = v42;
    swift_getOpaqueTypeConformance2();
    sub_26788();
    v47 = v60;
    v46 = v61;
    sub_97658();

    (*(v59 + 8))(v43, v46);
    sub_67724(v47, v52);
    swift_storeEnumTagMultiPayload();
    sub_673BC();
    sub_97388();
    sub_375D8(v49);
    return sub_67794(v47);
  }
}

uint64_t sub_65FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v52[0] = 0;
  v53 = v13;
  v54 = v14;
  KeyPath = swift_getKeyPath();
  v56 = 0;
  v57 = swift_getKeyPath();
  v58 = 0;
  v43 = *(a1 + 32);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A40);
  sub_97738();
  v15 = 1;
  if (LOBYTE(v42[0]) == 1)
  {
    *v6 = sub_97328();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FF8) + 44);
    v42[0] = xmmword_9E820;
    v36 = swift_getKeyPath();
    v16 = swift_allocObject();
    v17 = *(a1 + 16);
    v16[1] = *a1;
    v16[2] = v17;
    v18 = *(a1 + 48);
    v16[3] = *(a1 + 32);
    v16[4] = v18;
    sub_676E4(a1, &v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7000);
    v38 = v13;
    sub_678CC();
    v39 = v12;
    sub_679AC();
    sub_977A8();
    v43 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FD8);
    sub_97738();
    v19 = *&v42[0];
    sub_97868();
    v21 = v20;
    v23 = v22;
    v24 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7020) + 36)];
    *v24 = v19;
    *(v24 + 1) = v19;
    *(v24 + 2) = v21;
    *(v24 + 3) = v23;
    sub_97138();
    sub_66558();
    v25 = sub_97118();

    v12 = v39;

    *&v6[*(v3 + 36)] = v25;
    v13 = v38;
    sub_67A00(v6, v12);
    v15 = 0;
  }

  (*(v4 + 56))(v12, v15, 1, v3);
  sub_977C8();
  sub_970F8();
  v38 = v61;
  v39 = v59;
  v36 = v64;
  v37 = v63;
  v51 = 1;
  v50 = v60;
  v49 = v62;
  LOBYTE(v43) = 1;
  *(&v43 + 1) = v13;
  v44 = v14;
  v45 = swift_getKeyPath();
  v46 = 0;
  v47 = swift_getKeyPath();
  v48 = 0;
  sub_64614(v52, v42);
  sub_4BF8(v12, v9, &qword_C6FE8);
  v26 = v51;
  v27 = v50;
  v28 = v49;
  sub_64614(&v43, v41);
  v29 = v40;
  sub_64614(v42, v40);
  v30 = v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FF0);
  sub_4BF8(v9, v29 + v31[12], &qword_C6FE8);
  v32 = v29 + v31[16];
  *v32 = 0;
  *(v32 + 8) = v26;
  v33 = v38;
  *(v32 + 16) = v39;
  *(v32 + 24) = v27;
  *(v32 + 32) = v33;
  *(v32 + 40) = v28;
  v34 = v36;
  *(v32 + 48) = v37;
  *(v32 + 56) = v34;
  sub_64614(v41, v29 + v31[20]);
  sub_64670(&v43);
  sub_4C60(v30, &qword_C6FE8);
  sub_64670(v52);
  sub_64670(v41);
  sub_4C60(v9, &qword_C6FE8);
  return sub_64670(v42);
}

double sub_664D0@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v10 = *a2;
  sub_4BF8(&v10, v7, &qword_C7038);
  sub_67B18(v4, v7);
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = *&v8;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  return result;
}

uint64_t sub_66558()
{
  sub_67A70();
  sub_97148();
  sub_97808();
  sub_97158();

  sub_97148();
  sub_977F8();
  sub_977E8();

  sub_97158();

  sub_97128();

  sub_67AC4();
  sub_97148();
  sub_977F8();
  sub_977E8();

  sub_97158();

  v0 = sub_97128();

  return v0;
}

uint64_t sub_66704(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 8);
  if (*(v4 + 80) != 1)
  {
    v6 = (v4 + 72);
    goto LABEL_7;
  }

  if (*(v4 + 48) != 1)
  {
    v6 = (v4 + 40);
LABEL_7:
    if (*v6 + -1.5 >= v3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v3 <= -1.5)
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A40);
    sub_97748();
    return sub_66834(v3);
  }

LABEL_8:
  __chkstk_darwin(a1);
  sub_97818();
  sub_97168();
}

uint64_t sub_66834(double a1)
{
  v2 = *(v1 + 8);
  if (*(v2 + 80))
  {
    v3 = 1.0;
    if (*(v2 + 48))
    {
      goto LABEL_15;
    }

    v4 = *(v2 + 40);
  }

  else
  {
    v4 = *(v2 + 72);
  }

  if (*(v2 + 64) == 1)
  {
    if (*(v2 + 32))
    {
      v3 = 1.0;
      if ((*(v2 + 80) & 1) == 0)
      {
        v5 = *(v2 + 72);
LABEL_18:
        if (*(v2 + 32) == 1)
        {
          v8 = -1.5;
        }

        else
        {
          v8 = v5 - *(v2 + 24) + -1.5;
        }

        v7 = v8 / v3 * 0.5;
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    v6 = 24;
  }

  else
  {
    v6 = 56;
  }

  v3 = floor((v4 - *(v2 + v6) + -1.5) / 3.0);
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  if ((*(v2 + 80) & 1) == 0)
  {
    v5 = *(v2 + 72);
    if (*(v2 + 64))
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_14:
  if ((*(v2 + 48) & 1) == 0)
  {
    v5 = *(v2 + 40);
    if (*(v2 + 64))
    {
      goto LABEL_18;
    }

LABEL_21:
    v7 = (v5 - *(v2 + 56) + -1.5) / v3 * 0.5;
    goto LABEL_22;
  }

LABEL_15:
  v7 = -1.5 / v3 * 0.5;
  if (*(v2 + 64) != 1)
  {
LABEL_22:
    v9 = *(v2 + 56);
    goto LABEL_28;
  }

LABEL_25:
  if (*(v2 + 32) == 1)
  {
    v10 = a1 / v7;
    goto LABEL_29;
  }

  v9 = *(v2 + 24);
LABEL_28:
  v10 = (a1 - v9) / v7;
LABEL_29:
  v11 = floor(v10);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 < 9.22337204e18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FD8);
    return sub_97748();
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_66A38@<X0>(double a1@<X8>)
{
  v2 = v1;
  v22[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6760);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = sub_974E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_977C8();
  sub_97228();
  (*(v7 + 104))(v9, enum case for Font.TextStyle.title3(_:), v6);
  v10 = enum case for Font.Design.serif (_:);
  v11 = sub_97468();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  sub_97488();
  v13 = sub_974B8();
  sub_4C60(v5, &qword_C6760);
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v23[0] = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FD8);
  sub_97738();
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = *(v2 + 48);
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  *&v32 = KeyPath;
  *(&v32 + 1) = v13;
  *(&v33 + 1) = sub_67E20;
  v34 = v15;
  v35 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_67E28(v2, v23);
  sub_96E98();

  v17 = 0.0;
  if (*&v23[0] != 1)
  {
    v18 = *(&v23[0] + 1);
    v17 = *(v23 + 1);
    sub_375D8(*&v23[0]);
    if ((~v18 & 0x7FF0000000000000) == 0 && (v18 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v17 = 0.0;
    }
  }

  v22[1] = v17;
  v19 = swift_allocObject();
  v20 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = *(v2 + 48);
  sub_67E28(v2, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7050);
  sub_67ED0();
  sub_976A8();

  v23[8] = v33;
  v23[9] = v34;
  v24 = v35;
  v23[4] = v29;
  v23[5] = v30;
  v23[6] = v31;
  v23[7] = v32;
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  return sub_4C60(v23, &qword_C7050);
}

uint64_t sub_66EB8()
{
  sub_97808();
  sub_977E8();

  sub_97168();
}

uint64_t sub_66F60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FD8);
  sub_97738();
  sub_97738();
  return sub_97748();
}

uint64_t sub_670D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FD8);
  sub_97748();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (v2 != 1)
  {
    sub_375D8(v2);
  }

  return sub_66F60();
}

uint64_t sub_67260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_97868();
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7098);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C70A0);
  v12 = (a2 + *(result + 36));
  *v12 = v5;
  v12[1] = v5;
  v12[2] = v7;
  v12[3] = v9;
  return result;
}

uint64_t sub_67318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C70A8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C70B0);
  *(a2 + *(result + 36)) = v5;
  return result;
}

unint64_t sub_673BC()
{
  result = qword_C6F90;
  if (!qword_C6F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6F68);
    sub_67548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_67C24(&qword_C6E80, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6F90);
  }

  return result;
}

unint64_t sub_67548()
{
  result = qword_C6F98;
  if (!qword_C6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6F68);
    sub_67600();
    sub_EA78(&qword_C6FC0, &qword_C6FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6F98);
  }

  return result;
}

unint64_t sub_67600()
{
  result = qword_C6FA0;
  if (!qword_C6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6FA8);
    sub_EA78(&qword_C6FB0, &qword_C6FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6FA0);
  }

  return result;
}

uint64_t sub_67724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_67794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_678CC()
{
  result = qword_C7008;
  if (!qword_C7008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7000);
    sub_67958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7008);
  }

  return result;
}

unint64_t sub_67958()
{
  result = qword_C7010;
  if (!qword_C7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7010);
  }

  return result;
}

unint64_t sub_679AC()
{
  result = qword_C7018;
  if (!qword_C7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7018);
  }

  return result;
}

uint64_t sub_67A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_67A70()
{
  result = qword_C7028;
  if (!qword_C7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7028);
  }

  return result;
}

unint64_t sub_67AC4()
{
  result = qword_C7030;
  if (!qword_C7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7030);
  }

  return result;
}

uint64_t sub_67B18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_97728();
  sub_97728();
  sub_67C24(&qword_C8110, type metadata accessor for SilentContent);
  result = sub_97198();
  *a2 = result;
  a2[1] = v5;
  a2[2] = a1;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v6;
  a2[6] = v7;
  return result;
}

uint64_t sub_67C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_67C8C(uint64_t a1, int a2)
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

uint64_t sub_67CD4(uint64_t result, int a2, int a3)
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

unint64_t sub_67D34()
{
  result = qword_C7040;
  if (!qword_C7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7048);
    sub_673BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7040);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_67ED0()
{
  result = qword_C7058;
  if (!qword_C7058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7050);
    sub_67F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7058);
  }

  return result;
}

unint64_t sub_67F5C()
{
  result = qword_C7060;
  if (!qword_C7060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7068);
    sub_67FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7060);
  }

  return result;
}

unint64_t sub_67FE8()
{
  result = qword_C7070;
  if (!qword_C7070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7078);
    sub_680A0();
    sub_EA78(&qword_C6858, &qword_C6860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7070);
  }

  return result;
}

unint64_t sub_680A0()
{
  result = qword_C7080;
  if (!qword_C7080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7088);
    sub_6812C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7080);
  }

  return result;
}

unint64_t sub_6812C()
{
  result = qword_C7090;
  if (!qword_C7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7090);
  }

  return result;
}

uint64_t sub_6819C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7050);
  sub_67ED0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_68218()
{
  result = qword_C70B8;
  if (!qword_C70B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C70A0);
    sub_EA78(&qword_C70C0, &qword_C7098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C70B8);
  }

  return result;
}

unint64_t sub_682D4()
{
  result = qword_C70C8;
  if (!qword_C70C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C70B0);
    sub_EA78(&qword_C70D0, &qword_C70A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C70C8);
  }

  return result;
}

uint64_t sub_683AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_6847C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SpeakerContentView()
{
  result = qword_C7138;
  if (!qword_C7138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_68578()
{
  type metadata accessor for SpeakerContent();
  if (v0 <= 0x3F)
  {
    sub_58A6C();
    if (v1 <= 0x3F)
    {
      sub_6862C();
      if (v2 <= 0x3F)
      {
        sub_586D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_6862C()
{
  if (!qword_C6630)
  {
    sub_97368();
    v0 = sub_970A8();
    if (!v1)
    {
      atomic_store(v0, &qword_C6630);
    }
  }
}

uint64_t sub_686CC(uint64_t a1)
{
  result = sub_69898(&unk_C8100, type metadata accessor for SpeakerContentView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_68740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v8 = *a1;
  swift_getKeyPath();
  v14[1] = v8;
  sub_69898(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  if (*(v8 + 33) == 1 && (v9 = *(v8 + 24)) != 0)
  {
    v10 = *(v8 + 16);

    *v7 = sub_97328();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71B8);
    sub_68918(a1, v10, v9, &v7[*(v11 + 44)]);

    sub_216C8(v7, a2, &qword_C71B0);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

uint64_t sub_68918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a4;
  v7 = sub_97848();
  v108 = *(v7 - 8);
  v109 = v7;
  __chkstk_darwin(v7);
  v105 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_97368();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v87 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6D38);
  __chkstk_darwin(v95);
  v96 = &v87 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71C0);
  __chkstk_darwin(v97);
  v100 = &v87 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71C8);
  __chkstk_darwin(v98);
  v101 = &v87 - v18;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71D0);
  __chkstk_darwin(v99);
  v106 = &v87 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71D8);
  __chkstk_darwin(v102);
  v111 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v87 - v22;
  __chkstk_darwin(v23);
  v110 = &v87 - v24;
  v25 = *(a1 + 8);
  v26 = *(a1 + 16);
  v122[0] = 0;
  v104 = v25;
  v123 = v25;
  v124 = v26;
  KeyPath = swift_getKeyPath();
  v126 = 0;
  v127 = swift_getKeyPath();
  v128 = 0;
  *&v129 = a2;
  *(&v129 + 1) = a3;
  sub_26788();
  v103 = v26;
  swift_retain_n();

  v27 = sub_975D8();
  v29 = v28;
  v31 = v30;
  if (qword_C46B0 != -1)
  {
    swift_once();
  }

  v32 = sub_97538();
  v89 = v33;
  v90 = v32;
  v88 = v34;
  v91 = v35;
  sub_5AAE8(v27, v29, v31 & 1);

  v87 = a1 + *(type metadata accessor for SpeakerContentView() + 24);
  sub_59EA4(v15);
  v36 = *(v10 + 104);
  v36(v12, enum case for ColorSchemeContrast.increased(_:), v9);
  v37 = sub_97358();
  v38 = v12;
  v39 = v15;
  v40 = *(v10 + 8);
  v93 = v38;
  v40();
  v92 = v9;
  v94 = v10 + 8;
  (v40)(v39, v9);
  if (v37)
  {
    v41 = 0.55;
  }

  else if (sub_3D4F4())
  {
    v41 = 0.55;
  }

  else
  {
    v41 = 0.25;
  }

  sub_59EA4(v39);
  v42 = v92;
  v43 = v93;
  v36(v93, enum case for ColorSchemeContrast.standard(_:), v92);
  v44 = sub_97358();
  (v40)(v43, v42);
  (v40)(v39, v42);
  v45 = v108;
  v46 = &enum case for BlendMode.plusLighter(_:);
  if ((v44 & 1) == 0)
  {
    v46 = &enum case for BlendMode.normal(_:);
  }

  v47 = v105;
  v48 = v109;
  (*(v108 + 104))(v105, *v46, v109);
  v49 = v96;
  (*(v45 + 32))(&v96[*(v95 + 36)], v47, v48);
  v50 = v89;
  *v49 = v90;
  *(v49 + 8) = v50;
  *(v49 + 16) = v88 & 1;
  *(v49 + 24) = v91;
  *(v49 + 32) = v41;
  LOBYTE(v48) = sub_97428();
  sub_97078();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v100;
  sub_216C8(v49, v100, &qword_C6D38);
  v60 = v59 + *(v97 + 36);
  *v60 = v48;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  LOBYTE(v48) = sub_97438();
  sub_97078();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v59;
  v70 = v101;
  sub_216C8(v69, v101, &qword_C71C0);
  v71 = v70 + *(v98 + 36);
  *v71 = v48;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  v72 = swift_getKeyPath();
  v73 = v70;
  v74 = v106;
  sub_216C8(v73, v106, &qword_C71C8);
  v75 = v74 + *(v99 + 36);
  *v75 = v72;
  *(v75 + 8) = 0;
  sub_977D8();
  sub_97228();
  v76 = v107;
  sub_216C8(v74, v107, &qword_C71D0);
  v77 = (v76 + *(v102 + 36));
  v78 = v134;
  v77[4] = v133;
  v77[5] = v78;
  v77[6] = v135;
  v79 = v130;
  *v77 = v129;
  v77[1] = v79;
  v80 = v132;
  v77[2] = v131;
  v77[3] = v80;
  v81 = v110;
  sub_216C8(v76, v110, &qword_C71D8);
  v115[0] = 1;
  v116 = v104;
  v117 = v103;
  v118 = swift_getKeyPath();
  v119 = 0;
  v120 = swift_getKeyPath();
  v121 = 0;
  sub_64614(v122, v114);
  v82 = v111;
  sub_69B08(v81, v111);
  sub_64614(v115, v113);
  v83 = v112;
  sub_64614(v114, v112);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71E0);
  sub_69B08(v82, v83 + v84[12]);
  v85 = v83 + v84[16];
  *v85 = 0;
  *(v85 + 8) = 1;
  sub_64614(v113, v83 + v84[20]);
  sub_64670(v115);
  sub_4C60(v81, &qword_C71D8);
  sub_64670(v122);
  sub_64670(v113);
  sub_4C60(v82, &qword_C71D8);
  return sub_64670(v114);
}

uint64_t sub_691EC(uint64_t result)
{
  if (*(*result + 32) == 1)
  {
    *(*result + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_69898(&qword_C5DE0, type metadata accessor for SpeakerContent);
    sub_96298();
  }

  return result;
}

uint64_t sub_69300(uint64_t result)
{
  if (*(*result + 32))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_69898(&qword_C5DE0, type metadata accessor for SpeakerContent);
    sub_96298();
  }

  else
  {
    *(*result + 32) = 0;
  }

  return result;
}

uint64_t sub_6940C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = sub_977C8();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7198);
  sub_68740(v2, a2 + *(v7 + 44));
  sub_695B0(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_69618(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71A0) + 36));
  *v10 = sub_6967C;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_695B0(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_69618(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71A8);
  v13 = (a2 + *(result + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_697E4;
  v13[3] = v11;
  return result;
}

uint64_t sub_695B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakerContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_69618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakerContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for SpeakerContentView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6758);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_97368();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 28);
  if (*(v8 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_697FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SpeakerContentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_69898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_698E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6760);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_974E8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.footnote(_:), v3, v5);
  v8 = enum case for Font.Design.default(_:);
  v9 = sub_97468();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_97478();
  v11 = sub_974B8();
  sub_4C60(v2, &qword_C6760);
  result = (*(v4 + 8))(v7, v3);
  qword_C70D8 = v11;
  return result;
}

uint64_t sub_69B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C71D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_69BEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_69C70()
{
  result = qword_C71F8;
  if (!qword_C71F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C71F8);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_69D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_69D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_69DF8()
{
  v1 = sub_976D8();
  sub_69F58();
  sub_977C8();
  sub_970F8();
  *(&v9[4] + 7) = v10;
  *(&v9[2] + 7) = *&v9[9];
  *(v9 + 7) = *&v9[7];
  *&v8[9] = *v9;
  *v8 = v1;
  v8[8] = 0;
  *&v8[25] = *&v9[2];
  *&v8[41] = *&v9[4];
  *&v8[56] = *(&v10 + 1);
  sub_64614(v0, v6);
  v2 = swift_allocObject();
  v3 = v6[3];
  *(v2 + 48) = v6[2];
  *(v2 + 64) = v3;
  *(v2 + 80) = v6[4];
  *(v2 + 96) = v7;
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7208);
  sub_6A26C();
  sub_97638();

  v11[0] = *v8;
  v11[1] = *&v8[16];
  v11[2] = *&v8[32];
  v11[3] = *&v8[48];
  return sub_6A3E8(v11);
}

double sub_69F58()
{
  v1 = sub_6A01C(v0);
  v2 = sub_97188();
  if (v2 == sub_97188())
  {
    sub_5A0A4(v7 + 1);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1((v7 + 1), v8);
    (*(v4 + 8))(v7, v3, v4);
    LODWORD(v3) = LOBYTE(v7[0]);
    __swift_destroy_boxed_opaque_existential_1(v7 + 1);
    v5 = 64.0;
    if (v3 != 2)
    {
      v5 = 16.0;
    }

    return v1 + v5;
  }

  return v1;
}

double sub_6A01C(uint64_t a1)
{
  v2 = sub_972F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) != 0 || (sub_5A0A4(v13), v6 = v14, v7 = v15, __swift_project_boxed_opaque_existential_1(v13, v14), (*(v7 + 8))(&v12 + 7, v6, v7), v8 = HIBYTE(v12), __swift_destroy_boxed_opaque_existential_1(v13), result = 0.0, v8 != 2))
  {
    v10 = *(a1 + 72);
    if (*(a1 + 80) == 1)
    {
      return *(a1 + 72);
    }

    else
    {

      sub_981C8();
      v11 = sub_973F8();
      sub_96A48();

      sub_972E8();
      swift_getAtKeyPath();
      sub_6A238(v10, 0);
      (*(v3 + 8))(v5, v2);
      return *v13;
    }
  }

  return result;
}

uint64_t sub_6A1D8()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  else
  {
  }

  sub_6A238(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_6A238(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_6A26C()
{
  result = qword_C7210;
  if (!qword_C7210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7208);
    sub_6A2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7210);
  }

  return result;
}

unint64_t sub_6A2F8()
{
  result = qword_C7218;
  if (!qword_C7218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7220);
    sub_6A384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7218);
  }

  return result;
}

unint64_t sub_6A384()
{
  result = qword_C6FC0;
  if (!qword_C6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6FC0);
  }

  return result;
}

uint64_t sub_6A3E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6A450()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7208);
  sub_6A26C();
  return swift_getOpaqueTypeConformance2();
}

id TranscriptTimestampView.init(enclosingViewType:enclosingScrollView:)(char *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = &v2[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration];
  *v7 = sub_989A8();
  v7[1] = v8;
  v9 = OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_label;
  *&v2[v9] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_subscriptions] = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalScrollIndicator] = 0;
  *&v2[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalConstraint] = 0;
  swift_unknownObjectWeakAssign();
  v10 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
  v11 = objc_opt_self();
  [v11 systemFontSize];
  v12 = [v11 monospacedDigitSystemFontOfSize:? weight:?];
  v13 = [v10 scaledFontForFont:v12];

  v14 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:225.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v15 = &v2[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_constants];
  *v15 = v13;
  v15[8] = v6;
  *(v15 + 1) = xmmword_9F030;
  *(v15 + 4) = 0x4028000000000000;
  *(v15 + 5) = v14;
  v16 = [objc_opt_self() effectWithStyle:1];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithEffect:", v16);

  v18 = v17;
  [v18 setClipsToBounds:1];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setAlpha:0.0];
  sub_6A904();
  sub_6ACE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C68D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_9AF50;
  *(v19 + 32) = sub_96B78();
  *(v19 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_98418();

  swift_unknownObjectRelease();

  return v18;
}

void __swiftcall TranscriptTimestampView.Constants.init(viewType:)(PodcastsTranscripts::TranscriptTimestampView::Constants *__return_ptr retstr, PodcastsTranscripts::TranscriptTimestampView::Constants::ViewType viewType)
{
  v3 = *viewType;
  v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
  v5 = objc_opt_self();
  [v5 systemFontSize];
  v6 = [v5 monospacedDigitSystemFontOfSize:? weight:?];
  v7 = [v4 scaledFontForFont:v6];

  retstr->font.super.isa = v7;
  *&retstr->size.height = xmmword_9F030;
  retstr->spacing.horizontalPadding = 12.0;
  retstr->animation.timing.super.isa = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:225.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  retstr->viewType = v3;
}

void sub_6A904()
{
  v1 = *&v0[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_label];
  v2 = &v0[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_constants];
  [v1 setFont:*&v0[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_constants]];
  v3 = *(v2 + 8);
  v4 = objc_opt_self();
  v5 = &selRef_secondaryLabelColor;
  if (!v3)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v1 setTextColor:v6];

  v30._object = 0x80000000000A4400;
  v30._countAndFlagsBits = 0xD000000000000010;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_967C8(v30, v31);
  v7 = sub_97DC8();

  [v1 setText:v7];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v0 contentView];
  [v8 addSubview:v1];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_9F040;
  v11 = [v1 leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = v2[4];
  v15 = [v11 constraintEqualToAnchor:v13 constant:v14];

  *(v10 + 32) = v15;
  v16 = [v1 trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-v14];
  *(v10 + 40) = v19;
  v20 = [v1 topAnchor];
  v21 = [v0 contentView];
  v22 = [v21 topAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v10 + 48) = v23;
  v24 = [v1 bottomAnchor];
  v25 = [v0 contentView];
  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v10 + 56) = v27;
  sub_E104(0, &unk_C7C00);
  isa = sub_97FB8().super.isa;

  [v9 activateConstraints:isa];
}

uint64_t sub_6ACE0()
{
  v1 = v0;
  v2 = sub_96AB8();
  v60 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7298);
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v64 = v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v67 = v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72A8);
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72B0);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  __chkstk_darwin(v13);
  v16 = v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72B8);
  v61 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v54 - v18;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v57 = v17;
    v58 = v8;
    v59 = v7;
    v22 = sub_6BEE0();
    v23 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalScrollIndicator];
    *&v1[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalScrollIndicator] = v22;
    v24 = v22;

    if (v22)
    {
      [v21 addSubview:v1];
      v60 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_9F050;
      v26 = [v1 trailingAnchor];
      v27 = [v24 leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v25 + 32) = v28;
      v29 = [v1 heightAnchor];
      v30 = [v29 constraintGreaterThanOrEqualToConstant:*&v1[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_constants + 16]];

      *(v25 + 40) = v30;
      sub_E104(0, &unk_C7C00);
      isa = sub_97FB8().super.isa;

      [v60 activateConstraints:isa];

      swift_getKeyPath();
      sub_95F08();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v54[1] = sub_EA78(&qword_C72C0, &qword_C72A8);
      v60 = v21;
      v32 = v16;
      v33 = v63;
      sub_96F58();

      v56 = v24;
      v54[0] = v62[1];
      (v54[0])(v12, v33);
      v54[2] = sub_EA78(&qword_C72C8, &qword_C72B0);
      v34 = v68;
      sub_97018();
      v35 = *(v69 + 8);
      v69 += 8;
      v55 = v35;
      v35(v16, v34);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
      sub_EA78(&qword_C72D0, &qword_C72B8);
      v36 = v57;
      sub_97028();

      (*(v61 + 8))(v19, v36);
      v57 = OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_subscriptions;
      swift_beginAccess();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5720);
      sub_EA78(&qword_C7CB0, &qword_C5720);
      sub_96DC8();
      swift_endAccess();

      swift_getKeyPath();
      v37 = v60;
      sub_95F08();

      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_96F58();

      (v54[0])(v12, v33);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v40 = v56;
      *(v39 + 16) = v38;
      *(v39 + 24) = v40;
      v41 = v40;
      v42 = v64;
      v43 = v68;
      sub_96FA8();

      v55(v32, v43);
      sub_EA78(&qword_C72D8, &qword_C7298);
      v44 = v66;
      v45 = v67;
      sub_97018();
      (*(v65 + 8))(v42, v44);
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v41;
      sub_EA78(&qword_C72E0, &qword_C72A0);
      v48 = v41;
      v49 = v59;
      sub_97028();

      (*(v58 + 8))(v45, v49);
      swift_beginAccess();
      sub_96DC8();
      swift_endAccess();
    }

    else
    {
      sub_96A78();
      v50 = sub_96AA8();
      v51 = sub_981B8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v70[0] = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_11FC8(0xD00000000000001ALL, 0x80000000000A43E0, v70);
        _os_log_impl(&dword_0, v50, v51, "%s Unable to find vertical scroll indicator.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
      }

      else
      {
      }

      return (*(v60 + 1))(v4, v2);
    }
  }

  return result;
}

Swift::Void __swiftcall TranscriptTimestampView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

uint64_t TranscriptTimestampView.duration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_6B9B8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return sub_6BA80(v2, v3);
}

uint64_t TranscriptTimestampView.duration.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return sub_6BA80(a1, a2);
}

uint64_t sub_6BA80(uint64_t a1, uint64_t a2)
{
  v20 = sub_98958();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_98818();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_98948();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;
  LOBYTE(a2) = sub_98988();
  (*(v9 + 104))(v11, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v8);
  if (a2)
  {
    sub_98928();
  }

  else
  {
    sub_98938();
  }

  (*(v9 + 8))(v11, v8);
  v15 = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_label);
  sub_95D58();
  sub_6CAA0();
  v16 = v20;
  sub_98968();
  (*(v5 + 8))(v7, v16);
  v17 = sub_97DC8();

  [v15 setText:v17];

  return (*(v12 + 8))(v14, v19);
}

void (*TranscriptTimestampView.duration.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_6BDE4;
}

void sub_6BDE4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (v3[3] + v3[4]);
    sub_6BA80(*v4, v4[1]);
  }

  free(v3);
}

void sub_6BE38(void *a1)
{
  v2 = OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalConstraint;
  v3 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalConstraint);
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalConstraint) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setActive:0];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setActive:1];
  }

LABEL_4:
}

void *sub_6BEE0()
{
  v1 = [v0 subviews];
  sub_E104(0, &qword_C5318);
  v2 = sub_97FC8();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
LABEL_19:

    return 0;
  }

  while (1)
  {
    while (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v3 = sub_98778();
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_986C8();
      goto LABEL_10;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if (v3 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

    v5 = *(v2 + 32 + 8 * v3);
LABEL_10:
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      [v6 bounds];
      v8 = v7;
      [v6 bounds];
      if (v8 < v9)
      {
        break;
      }
    }

    if (!v3)
    {
      goto LABEL_19;
    }
  }

  return v6;
}

void sub_6C050(unsigned __int8 *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector:"_isScrubbing"])
    {
      v4 = [v3 _isScrubbing];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_6C0E8(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_6C144(v1);
  }
}

void sub_6C144(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_constants + 40];
  [v3 settlingDuration];
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v3 timingParameters:v4];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = a1;
  v9[4] = sub_6CC28;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_279B0;
  v9[3] = &block_descriptor_8;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v5 addAnimations:v7];
  _Block_release(v7);
  [v5 startAnimation];
}

void sub_6C294(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong contentInset];
    v7 = v6;

    v8 = v3 <= v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
}

void *sub_6C318(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = [result superview];
    v7 = [a3 superview];

    if (v6)
    {
      if (v7)
      {

        return (v6 == v7);
      }

      return 0;
    }

    if (v7)
    {

      return 0;
    }

    return &dword_0 + 1;
  }

  return result;
}

void sub_6C3DC(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4)
    {
      v7 = &selRef_topAnchor;
    }

    else
    {
      v7 = &selRef_centerYAnchor;
    }

    v8 = [Strong *v7];
    v9 = [a3 *v7];
    v10 = [v8 constraintEqualToAnchor:v9];

    sub_6BE38(v10);
  }
}

id sub_6C4B0(char *a1, char a2)
{
  v4 = 0.0;
  if (a2)
  {
    v4 = 1.0;
  }

  [a1 setAlpha:v4];
  if (a2)
  {
    CGAffineTransformMakeTranslation(&v9, -*&a1[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_constants + 24], 0.0);
    v6 = *&v9.a;
    v5 = *&v9.c;
    v7 = *&v9.tx;
  }

  else
  {
    v5 = xmmword_9F060;
    v6 = xmmword_9F070;
    v7 = 0uLL;
  }

  *&v9.a = v6;
  *&v9.c = v5;
  *&v9.tx = v7;
  return [a1 setTransform:&v9];
}

id TranscriptTimestampView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

unint64_t sub_6C69C()
{
  result = qword_C7260;
  if (!qword_C7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7260);
  }

  return result;
}

__n128 sub_6C6F0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_6C7B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_6C7F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_6C894(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalScrollIndicator];
  if (v2)
  {
    v3 = [v2 superview];
  }

  else
  {
    v3 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (v3)
  {
    if (Strong)
    {
      sub_E104(0, &qword_C5318);
      v6 = sub_98448();

      if (v6)
      {
        return;
      }

      goto LABEL_12;
    }

    v5 = v3;
  }

  else if (!Strong)
  {
    return;
  }

LABEL_12:
  v7 = [a1 superview];
  if (v7)
  {

    v8 = OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_subscriptions;
    swift_beginAccess();
    *&a1[v8] = &_swiftEmptyArrayStorage;

    [a1 removeFromSuperview];
    sub_6ACE0();
  }
}

void sub_6C9C8()
{
  v1 = (v0 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration);
  *v1 = sub_989A8();
  v1[1] = v2;
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_label;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_subscriptions) = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalScrollIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_verticalConstraint) = 0;
  sub_98758();
  __break(1u);
}

unint64_t sub_6CAA0()
{
  result = qword_C7290;
  if (!qword_C7290)
  {
    sub_98958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7290);
  }

  return result;
}

id sub_6CB04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_6CB4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_20Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6CBF0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6CC68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_6CD38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TranslateButton()
{
  result = qword_C7348;
  if (!qword_C7348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6CE34()
{
  type metadata accessor for LiveTranscriptObserver();
  if (v0 <= 0x3F)
  {
    sub_6CED0();
    if (v1 <= 0x3F)
    {
      sub_6CF20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6CED0()
{
  if (!qword_C7358)
  {
    v0 = sub_97768();
    if (!v1)
    {
      atomic_store(v0, &qword_C7358);
    }
  }
}

void sub_6CF20()
{
  if (!qword_C7360)
  {
    sub_96318();
    v0 = sub_97768();
    if (!v1)
    {
      atomic_store(v0, &qword_C7360);
    }
  }
}

uint64_t sub_6CF94@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7398);
  __chkstk_darwin(v2 - 8);
  v39 = &v35 - v3;
  v4 = type metadata accessor for TranslateButton();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = v6;
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73A0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73A8);
  __chkstk_darwin(v36);
  v12 = &v35 - v11;
  v37 = v1;
  sub_6DD5C(v1, v7);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_6DDC4(v7, v14 + v13);
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73B0);
  sub_6DE90();
  sub_97778();
  LOBYTE(v5) = sub_97418();
  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73C0) + 36)];
  *v15 = v5;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  v16 = sub_97458();
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(v8 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_97498();
  sub_6DFBC();
  sub_97618();
  sub_4C60(v10, &qword_C73A0);
  sub_977C8();
  sub_970F8();
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73E8) + 36)];
  v20 = v43;
  *v19 = v42;
  *(v19 + 1) = v20;
  *(v19 + 2) = v44;
  v21 = sub_976E8();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73F0) + 36)] = v21;
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73F8) + 36)];
  sub_977B8();
  LOBYTE(v8) = sub_97418();
  v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7400) + 36)] = v8;
  v23 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7408) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7410) + 28);
  v25 = enum case for ColorScheme.light(_:);
  v26 = sub_97098();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v27 = &v12[*(v36 + 36)];
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_97348();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7418) + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72E8);
  v30 = v37;
  v31 = v39;
  sub_97738();
  v32 = sub_96318();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  sub_6DD5C(v30, v7);
  v33 = swift_allocObject();
  sub_6DDC4(v7, v33 + v13);
  sub_6E408();
  sub_975E8();

  sub_4C60(v31, &qword_C7398);
  return sub_6E7B0(v12);
}

uint64_t sub_6D544(uint64_t a1)
{
  v2 = sub_96318();
  __chkstk_darwin(v2 - 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A40);
  sub_97738();
  v24 = !v24;
  sub_97748();
  LOBYTE(v25) = v3;
  v26 = v4;
  sub_97738();
  if (v24)
  {
    type metadata accessor for TranslateButton();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72E8);
    sub_97738();
    sub_962F8();
    return sub_97748();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  v6 = v25;
  if (v25 >> 62)
  {
    goto LABEL_20;
  }

  v7 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  if (v7)
  {
LABEL_5:
    v8 = 0;
    v23 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v19 = v7;
    v20 = v6 & 0xFFFFFFFFFFFFFF8;
    v21 = v6 & 0xC000000000000001;
    do
    {
      if (v9)
      {
        v11 = sub_986C8();
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v6 + 8 * v8 + 32);

        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v7 = sub_98778();
          if (!v7)
          {
          }

          goto LABEL_5;
        }
      }

      v13 = *(v11 + 16);
      if (v13 >> 61)
      {
      }

      else
      {
        swift_getKeyPath();
        v25 = v13;
        sub_6E830(&qword_C56A0, type metadata accessor for TextContent);

        sub_962A8();

        v14 = *(v13 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
        v15 = (v14 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
        if (*(v14 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8))
        {
          KeyPath = swift_getKeyPath();
          v22 = &v18;
          __chkstk_darwin(KeyPath);
          *(&v18 - 3) = 0;
          *(&v18 - 2) = 0;
          *(&v18 - 4) = v14;
          v25 = v14;
          sub_6E830(&qword_C7760, type metadata accessor for TextContent.LiveText);

          v17 = v23;
          sub_96298();
          v23 = v17;
          v7 = v19;
        }

        else
        {

          *v15 = 0;
          v15[1] = 0;
        }

        v10 = v20;
        v9 = v21;
      }

      ++v8;
    }

    while (v12 != v7);
  }
}

double sub_6D96C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v4) = *(a1 + 8);
  *(&v4 + 1) = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A40);
  sub_97738();
  sub_97338();
  sub_975B8();
  sub_97388();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_6DAA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_98068();
  v2[4] = sub_98058();
  v4 = sub_98038();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_6DB3C, v4, v3);
}

uint64_t sub_6DB3C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_6DBD8;
  v2 = *(v0 + 16);

  return sub_347C0(v2);
}

uint64_t sub_6DBD8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_6DCF8, v3, v2);
}

uint64_t sub_6DCF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6DD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6DDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6DE28()
{
  v1 = *(type metadata accessor for TranslateButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_6D544(v2);
}

unint64_t sub_6DE90()
{
  result = qword_C73B8;
  if (!qword_C73B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C73B8);
  }

  return result;
}

uint64_t sub_6DF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_972A8();
  *a1 = result;
  return result;
}

uint64_t sub_6DF38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_972A8();
  *a1 = result;
  return result;
}

unint64_t sub_6DFBC()
{
  result = qword_C73C8;
  if (!qword_C73C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73A0);
    sub_6E074();
    sub_EA78(&qword_C6858, &qword_C6860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C73C8);
  }

  return result;
}

unint64_t sub_6E074()
{
  result = qword_C73D0;
  if (!qword_C73D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73C0);
    sub_EA78(&qword_C73D8, &qword_C73E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C73D0);
  }

  return result;
}

uint64_t sub_6E150(uint64_t a1)
{
  v2 = sub_97098();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_97268();
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for TranslateButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = sub_96318();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C72E8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6E330(uint64_t a1)
{
  v4 = *(type metadata accessor for TranslateButton() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2A8A8;

  return sub_6DAA4(a1, v1 + v5);
}

unint64_t sub_6E408()
{
  result = qword_C7420;
  if (!qword_C7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73A8);
    sub_6E4C0();
    sub_EA78(&qword_C7468, &qword_C7418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7420);
  }

  return result;
}

unint64_t sub_6E4C0()
{
  result = qword_C7428;
  if (!qword_C7428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7408);
    sub_6E578();
    sub_EA78(&qword_C7460, &qword_C7410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7428);
  }

  return result;
}

unint64_t sub_6E578()
{
  result = qword_C7430;
  if (!qword_C7430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73F8);
    sub_6E630();
    sub_EA78(&qword_C7458, &qword_C7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7430);
  }

  return result;
}

unint64_t sub_6E630()
{
  result = qword_C7438;
  if (!qword_C7438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73F0);
    sub_6E6E8();
    sub_EA78(&qword_C7448, &qword_C7450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7438);
  }

  return result;
}

unint64_t sub_6E6E8()
{
  result = qword_C7440;
  if (!qword_C7440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73A0);
    sub_6DFBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7440);
  }

  return result;
}

uint64_t sub_6E7B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C73A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6E830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6E878()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C73A8);
  sub_6E408();
  return swift_getOpaqueTypeConformance2();
}

char *sub_6E96C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v30.receiver = v3;
  v30.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v30, "hitTest:withEvent:", a1, a2, a3);
  if (!result)
  {
    result = sub_6EAB0();
    if (!result)
    {
LABEL_6:
      v29 = v3;
      return v3;
    }

    v8 = *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView____lazy_storage____verticalScrollIndicator];
    if (!v8 || (v9 = result, v10 = v8, [v10 frame], v12 = v11, v14 = v13, v16 = v15, v18 = v17, objc_msgSend(v10, "hitTestInsets"), v21 = UIEdgeInsetsInsetRect(v12, v14, v16, v18, v19, v20), v23 = v22, v25 = v24, v27 = v26, sub_375D8(v8), v32.origin.x = v21, v32.origin.y = v23, v32.size.width = v25, v32.size.height = v27, v31.x = a2, v31.y = a3, v28 = CGRectContainsPoint(v32, v31), result = v9, !v28))
    {

      goto LABEL_6;
    }
  }

  return result;
}

char *sub_6EAB0()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView____lazy_storage____verticalScrollIndicator;
  v2 = *&v0[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView____lazy_storage____verticalScrollIndicator];
  if (v2 == &dword_0 + 1)
  {
    v3 = [v0 subviews];
    sub_20C30();
    v4 = sub_97FC8();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    while (v5)
    {
      while (__OFSUB__(v5--, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v5 = sub_98778();
        if (!v5)
        {
          goto LABEL_22;
        }
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_986C8();
        goto LABEL_11;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v5 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v7 = *(v4 + 32 + 8 * v5);
LABEL_11:
      v2 = v7;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        [v2 bounds];
        v9 = v8;
        [v2 bounds];
        if (v9 < v10)
        {

          goto LABEL_16;
        }
      }
    }

LABEL_22:

    v2 = 0;
LABEL_16:
    v12 = *&v0[v1];
    *&v0[v1] = v2;
    v13 = v2;
    sub_375D8(v12);
  }

  else
  {
    v11 = v2;
  }

  return v2;
}

void sub_6ECC4(char a1)
{
  if (a1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  else
  {
    v2 = 0x64656C616373;
  }

  if (v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode])
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 0x64656C616373;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = sub_98838();
    swift_bridgeObjectRelease_n();
    if ((v4 & 1) == 0)
    {
      if (qword_C46B8 != -1)
      {
        swift_once();
      }

      v5 = qword_CD520;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v10[4] = sub_6F480;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_279B0;
      v10[3] = &block_descriptor_9;
      v7 = _Block_copy(v10);
      v8 = v5;
      v9 = v1;

      [v8 addAnimations:v7];
      _Block_release(v7);
      [v8 startAnimation];
    }
  }
}

void sub_6EE5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_6EEB0();
  }
}

id sub_6EEB0()
{
  v1 = sub_98818();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C46D0 != -1)
  {
    swift_once();
  }

  v5 = xmmword_CD540;
  v7 = *&qword_CD550;
  v6 = unk_CD558;
  [v0 contentInset];
  v9 = v8;
  [v0 contentInset];
  v11 = v10;
  if (*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode))
  {
    v12 = sub_98838();

    if ((v12 & 1) == 0)
    {
      return [v0 setVerticalScrollIndicatorInsets:{*&v5 + v9, *(&v5 + 1), v7 + v11, v6}];
    }
  }

  else
  {
  }

  [v0 bounds];
  CGRectGetWidth(v17);
  (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.up(_:), v1);
  sub_963A8();
  v14 = v13;
  (*(v2 + 8))(v4, v1);
  v6 = v6 - v14;
  return [v0 setVerticalScrollIndicatorInsets:{*&v5 + v9, *(&v5 + 1), v7 + v11, v6}];
}

id sub_6F0CC(_BYTE *a1)
{
  if ((a1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode] & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = sub_98838();

  if (v2)
  {
LABEL_5:
    [a1 setAnchorPoint:{0.57, 0.57}];
    CGAffineTransformMakeScale(&v4, 0.86, 0.86);
    [a1 setTransform:&v4];
    return sub_6EEB0();
  }

  *&v4.a = 0x3FF0000000000000uLL;
  v4.c = 0.0;
  v4.d = 1.0;
  *&v4.tx = 0uLL;
  [a1 setTransform:&v4];
  [a1 setAnchorPoint:{0.5, 0.5}];
  return sub_6EEB0();
}

id sub_6F2A4()
{
  if (qword_C46C8 != -1)
  {
    swift_once();
  }

  v0 = qword_CD530;
  v1 = [objc_allocWithZone(CASpringAnimation) init];
  v2 = [v0 springTimingParameters];
  if (v2)
  {
    v3 = v2;
    [v2 mass];
    [v1 setMass:?];
    [v3 stiffness];
    [v1 setStiffness:?];
    [v3 damping];
    [v1 setDamping:?];
  }

  v4 = objc_allocWithZone(CAMediaTimingFunction);
  v5 = v1;
  LODWORD(v6) = 1045220557;
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1.0;
  v9 = [v4 initWithControlPoints:v6 :0.0 :v7 :v8];
  [v5 setTimingFunction:v9];

  [v5 setInitialVelocity:0.0];
  [v5 settlingDuration];
  [v5 setDuration:?];

  return v5;
}

uint64_t sub_6F448()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6F4A0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_70464();
  sub_962A8();

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 56);
  *(a1 + 32) = v7;
  return sub_20410(v3, v4, v5, v6, v7);
}

uint64_t sub_6F52C(__int128 *a1)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v16 = *(a1 + 32);
  v3 = *(v1 + 40);
  v17[0] = *(v1 + 24);
  v17[1] = v3;
  v18 = *(v1 + 56);
  sub_706D4(v17, v13);
  v4 = sub_704F8(v17, &v14);
  sub_70744(v17);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[0] = v1;
    sub_70464();
    sub_96298();
    sub_70744(&v14);
  }

  else
  {
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v11 = v15;
    *(v1 + 24) = v14;
    *(v1 + 40) = v11;
    v12 = *(v1 + 56);
    *(v1 + 56) = v16;
    return sub_20424(v7, v8, v9, v10, v12);
  }
}

uint64_t sub_6F670()
{
  swift_getKeyPath();
  sub_70464();
  sub_962A8();

  return *(v0 + 57);
}

uint64_t sub_6F6E0()
{
  swift_getKeyPath();
  sub_70464();
  sub_962A8();

  return *(v0 + 16);
}

uint64_t sub_6F750()
{
  swift_getKeyPath();
  sub_70464();
  sub_962A8();

  return *(v0 + 17);
}

uint64_t sub_6F7C0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_70464();
    sub_96298();
  }

  return result;
}

uint64_t sub_6F8A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_70464();
  sub_962A8();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_6F940(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_70464();
    sub_96298();
  }

  return result;
}

uint64_t sub_6FA20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 16);
  *(a1 + 24) = *a2;
  *(a1 + 40) = v6;
  v7 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 32);
  sub_706D4(a2, v9);
  return sub_20424(v2, v3, v4, v5, v7);
}

uint64_t sub_6FAA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_70464();
  sub_962A8();

  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_6FB44(uint64_t result)
{
  if (*(v1 + 57) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_70464();
    sub_96298();
  }

  return result;
}

uint64_t sub_6FC1C(uint64_t result, char a2)
{
  if ((!a2 || a2 == 1 || a2 == 2) && result == 129)
  {
    if (*(v2 + 17) == 1)
    {
      *(v2 + 17) = 1;
      return result;
    }
  }

  else if ((*(v2 + 17) & 1) == 0)
  {
    *(v2 + 17) = 0;
    return result;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_70464();
  sub_96298();
}

void sub_6FD9C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      if (!*(v2 + 57))
      {
        return;
      }
    }

    else if (*(v2 + 57) == 1)
    {
      return;
    }
  }

  else if (*(v2 + 57) == 2)
  {
    return;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_70464();
  sub_96298();
}

uint64_t sub_6FF78(uint64_t a1, char a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  sub_70414(a1, a2);
  if (sub_724B4(a1, a2, v5, v6))
  {
    sub_70400(v5, v6);
    v7 = a1;
    v8 = a2;
  }

  else
  {
    v9 = *(v2 + 64);
    v10 = *(v2 + 72);
    sub_70414(v9, v10);
    sub_6FC1C(v9, v10);
    sub_70400(v9, v10);
    v11 = *(v2 + 64);
    v12 = *(v2 + 72);
    sub_70414(v11, v12);
    sub_6FD9C(v11, v12);
    sub_70400(v5, v6);
    sub_70400(a1, a2);
    v7 = v11;
    v8 = v12;
  }

  return sub_70400(v7, v8);
}

uint64_t sub_70074()
{
  sub_20424(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_70400(*(v0 + 64), *(v0 + 72));
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts29TranscriptPresentationContext___observationRegistrar;
  v2 = sub_962E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for TranscriptPresentationContext()
{
  result = qword_C74E0;
  if (!qword_C74E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_70180()
{
  result = sub_962E8();
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

uint64_t getEnumTagSinglePayload for TranscriptPresentationContext.SpeakerVisibilityMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptPresentationContext.SpeakerVisibilityMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_70398()
{
  result = qword_C7590;
  if (!qword_C7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7590);
  }

  return result;
}

uint64_t sub_70400(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
  }

  return result;
}

uint64_t sub_70414(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_70464()
{
  result = qword_C5DF8;
  if (!qword_C5DF8)
  {
    type metadata accessor for TranscriptPresentationContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5DF8);
  }

  return result;
}

uint64_t sub_704F8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v7 == 255)
  {
    if (v12 == 255)
    {
      sub_706D4(a1, &v23);
      sub_706D4(a2, &v23);
      sub_20424(v4, v3, v6, v5, 0xFFu);
      v14 = 0;
      return v14 & 1;
    }

    v16 = *(a2 + 24);
    sub_706D4(a1, &v23);
    sub_706D4(a2, &v23);
    goto LABEL_7;
  }

  v23 = *a1;
  v24 = v3;
  v25 = v6;
  v26 = v5;
  v27 = v7;
  if (v12 == 255)
  {
    v16 = v10;
    sub_706D4(a1, &v18);
    sub_706D4(a2, &v18);
    sub_20410(v4, v3, v6, v5, v7);
    sub_20438(v4, v3, v6, v5, v7);
LABEL_7:
    sub_20424(v4, v3, v6, v5, v7);
    sub_20424(v8, v9, v11, v16, v12);
    v14 = 1;
    return v14 & 1;
  }

  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  sub_706D4(a1, v17);
  sub_706D4(a2, v17);
  sub_20410(v4, v3, v6, v5, v7);
  v13 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v23, &v18);
  sub_20438(v18, v19, v20, v21, v22);
  sub_20438(v23, v24, v25, v26, v27);
  sub_20424(v4, v3, v6, v5, v7);
  v14 = v13 ^ 1;
  return v14 & 1;
}

uint64_t sub_706D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_70744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_70818()
{
  sub_988D8();
  sub_97E88();

  return sub_98918();
}

uint64_t sub_70888()
{
  sub_97E88();
}

Swift::Int sub_708DC()
{
  sub_988D8();
  sub_97E88();

  return sub_98918();
}

uint64_t sub_70948@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_BB660;
  v8._object = v3;
  v5 = sub_987D8(v4, v8);

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

void sub_709A8(uint64_t *a1@<X8>)
{
  v2 = 0x64656C616373;
  if (*v1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_709D8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  else
  {
    v2 = 0x64656C616373;
  }

  if (*a2)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 0x64656C616373;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_98838();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_70A64()
{
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    sub_72750(v0 + 80, &v9);
    if (v10)
    {
      sub_4CC0(&v9, v11);
      v3 = v12;
      v4 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      if ((*(v4 + 8))(v3, v4))
      {
        v2 = *(v0 + 145);
        switch(*(v0 + 16))
        {
          case 1:
            __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
            v6 = sub_96468();
            __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
            sub_96468();
            if (v6)
            {
              v2 = 1;
            }

            else
            {
              v2 = 65;
            }

            goto LABEL_44;
          case 2:
          case 0xF:
          case 0x12:
            break;
          case 3:
          case 0xE:
            goto LABEL_44;
          case 4:
            __swift_destroy_boxed_opaque_existential_1(v11);
            if (v2 == 129)
            {
              v2 = 129;
            }

            else
            {
              v2 = 64;
            }

            goto LABEL_11;
          case 5:
            __swift_destroy_boxed_opaque_existential_1(v11);
            if (v2 == 129)
            {
              v2 = 129;
            }

            else
            {
              v2 = 0;
            }

            goto LABEL_11;
          case 6:
            if (v2 == 129)
            {
              goto LABEL_20;
            }

            v8 = v2 >> 6;
            if (v2 >> 6 <= 1)
            {
              if (!v8)
              {
                goto LABEL_20;
              }

              break;
            }

            if (v8 == 3)
            {
              goto LABEL_44;
            }

            __swift_destroy_boxed_opaque_existential_1(v11);
            if (v2 == 128)
            {
              v2 = 128;
            }

            else
            {
              v2 = 129;
            }

            goto LABEL_11;
          case 7:
            goto LABEL_14;
          case 8:
            v7 = v2 >> 6;
            if (v2 >> 6 > 1)
            {
              if (v7 == 3)
              {
LABEL_44:
                __swift_destroy_boxed_opaque_existential_1(v11);
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(v11);
                if (v2 == 128)
                {
                  v2 = 128;
                }

                else
                {
                  v2 = 129;
                }
              }

              goto LABEL_11;
            }

            if (!v7)
            {
LABEL_20:
              __swift_destroy_boxed_opaque_existential_1(v11);
              v2 = 1;
              goto LABEL_11;
            }

            break;
          case 9:
          case 0xC:
            if (v2 != 129)
            {
              goto LABEL_44;
            }

LABEL_14:
            __swift_destroy_boxed_opaque_existential_1(v11);
            v2 = 129;
            goto LABEL_11;
          case 0xA:
            if ((v2 & 0x80) != 0)
            {
              break;
            }

            goto LABEL_24;
          case 0xB:
            if ((v2 & 0x80) != 0)
            {
              goto LABEL_20;
            }

            v2 &= 1u;
            goto LABEL_44;
          case 0xD:
            __swift_destroy_boxed_opaque_existential_1(v11);
            v2 = 128;
            goto LABEL_11;
          case 0x10:
            if ((v2 & 0x80) != 0)
            {
              break;
            }

LABEL_24:
            __swift_destroy_boxed_opaque_existential_1(v11);
            v2 = v2 & 1 | 0x40;
            goto LABEL_11;
          case 0x11:
            __swift_destroy_boxed_opaque_existential_1(v11);
            v2 = 192;
            goto LABEL_11;
          default:
            if (v2 == 129)
            {
              goto LABEL_20;
            }

            goto LABEL_44;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      sub_72668(&v9);
    }

    v2 = 65;
LABEL_11:
    v1 = 1;
  }

  else if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
  }

  sub_727C0(v1);
  return v2;
}

uint64_t sub_70DEC()
{
  v1 = v0;
  v2 = sub_96AB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_978D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4AE8();
  *v9 = sub_982E8();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_978F8();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = *(v1 + 152);
    if (v12)
    {
      [v12 invalidate];
    }

    v13 = sub_70A64();
    v15 = v14;
    sub_96A78();
    sub_70414(v13, v15);
    v16 = sub_96AA8();
    v17 = sub_981A8();
    sub_70400(v13, v15);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v32 = v3;
      v34 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_11FC8(0xD000000000000019, 0x80000000000A4710, &v34);
      *(v19 + 12) = 2080;
      sub_70414(v13, v15);
      v21 = sub_71970(v13, v15);
      v23 = v22;
      sub_70400(v13, v15);
      v24 = sub_11FC8(v21, v23, &v34);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_0, v16, v17, "%s State changed to %s", v19, 0x16u);
      swift_arrayDestroy();

      (*(v32 + 8))(v5, v33);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    if (v15 < 2u)
    {
      *(v1 + 145) = v13;
      v25 = v13 >> 6;
      if (v25 < 2 || v25 != 3 && v13 != 128)
      {
        sub_7165C();
      }
    }

    else if (v15 - 3 >= 2)
    {
      *(v1 + 145) = v13;
    }

    else
    {
      *(v1 + 145) = 65;
    }

    sub_70414(v13, v15);
    sub_6FF78(v13, v15);
    v26 = *(v1 + 144);
    if (v26 == 255)
    {
      sub_70414(v13, v15);
    }

    else
    {
      v27 = *(v1 + 136);
      sub_70414(v13, v15);
      sub_726E4(v27, v26);
      v28 = sub_724B4(v27, v26, v13, v15);
      sub_726D0(v27, v26);
      if (v28)
      {
        sub_70400(v13, v15);
        return sub_70400(v13, v15);
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_8BB18(v13, v15, *(v1 + 16));
      sub_70400(v13, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_70400(v13, v15);
    }

    v29 = *(v1 + 136);
    *(v1 + 136) = v13;
    v30 = *(v1 + 144);
    *(v1 + 144) = v15;
    return sub_726D0(v29, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_71284(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    return sub_70DEC();
  }

  if (v2 == 2)
  {
    if (result == 2)
    {
      return result;
    }

    return sub_70DEC();
  }

  if ((result - 1) < 2)
  {
    return sub_70DEC();
  }

  v3 = result;
  if (v2)
  {
    swift_getErrorValue();
    swift_errorRetain();
    v4 = sub_98878();
    v6 = v5;
    if (v3)
    {
      v7 = v4;
      goto LABEL_12;
    }

    if (v5)
    {
      goto LABEL_18;
    }

    return sub_72654(v2);
  }

  swift_errorRetain();
  v6 = 0;
  v7 = 0;
  if (!v3)
  {
    return sub_72654(v2);
  }

LABEL_12:
  swift_getErrorValue();
  v8 = sub_98878();
  v10 = v9;
  if (!v6)
  {
    result = sub_72654(v2);
    if (!v10)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v9)
  {
LABEL_18:
    sub_72654(v2);
LABEL_20:

    return sub_70DEC();
  }

  if (v7 == v8 && v6 == v9)
  {
    sub_72654(v2);
  }

  v11 = sub_98838();
  sub_72654(v2);

  if ((v11 & 1) == 0)
  {
    return sub_70DEC();
  }

  return result;
}

uint64_t sub_71434@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *(result + 1);
  a3[1] = v3;
  return result;
}

uint64_t sub_71448(char a1, char a2)
{
  if (a1 & 1) == 0 || (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + 16) = 15;
  }

  sub_70DEC();
}

uint64_t sub_714D8(uint64_t a1)
{
  v2 = sub_963F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == enum case for PlaybackController.TransportCommand.seekTo(_:) || v8 == enum case for PlaybackController.TransportCommand.jumpForward(_:) || v8 == enum case for PlaybackController.TransportCommand.jumpBackward(_:))
    {
      *(v7 + 16) = 6;
      sub_70DEC();
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

void sub_7165C()
{
  v1 = v0;
  v2 = *(v0 + 152);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = swift_allocObject();
  swift_weakInit();
  v12 = sub_72730;
  v13 = v3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_7184C;
  v11 = &block_descriptor_10;
  v4 = _Block_copy(v10);
  v5 = objc_opt_self();

  v6 = [v5 timerWithTimeInterval:0 repeats:v4 block:5.0];
  _Block_release(v4);

  sub_E304(v1 + 168, v10);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 1))(v6, NSDefaultRunLoopMode, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v9 = *(v1 + 152);
  *(v1 + 152) = v6;
}

uint64_t sub_717EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 16) = 1;
    sub_70DEC();
  }

  return result;
}

void sub_7184C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_718B4()
{
  sub_72654(*(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  sub_72668(v0 + 80);
  sub_204F4(v0 + 120);
  sub_726D0(*(v0 + 136), *(v0 + 144));

  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  return v0;
}

uint64_t sub_71918()
{
  sub_718B4();

  return _swift_deallocClassInstance(v0, 208, 7);
}

uint64_t sub_71970(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = a1;
      sub_986A8(20);

      v6 = 0xD000000000000012;
      a1 = v5;
      goto LABEL_11;
    }

    v3 = 0x676E696B63617254;
LABEL_8:
    v6 = v3;
LABEL_11:
    v2._countAndFlagsBits = sub_71AB0(a1);
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    v3 = 0x20676E696D616F52;
    goto LABEL_8;
  }

  if (a2 != 3)
  {
    return 0x676E6964616F4CLL;
  }

  v6 = 0x2064656C696146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4858);
  v2._countAndFlagsBits = sub_98568();
LABEL_12:
  sub_97EE8(v2);

  return v6;
}

uint64_t sub_71AB0(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 128)
    {
      return 0x657370616C6C6F43;
    }

    else
    {
      return 0x686372616553;
    }
  }

  else
  {
    v7 = v1;
    v8 = v2;
    if (a1 >> 6)
    {
      strcpy(&v6[1], "Contained / ");
      v6[14] = 0;
      *&v6[15] = -5120;
      if (a1)
      {
        v5._countAndFlagsBits = 0x6C616D726F6ELL;
      }

      else
      {
        v5._countAndFlagsBits = 0x64656C616373;
      }

      v5._object = 0xE600000000000000;
      sub_97EE8(v5);
    }

    else
    {
      v6[8] = 0;
      *&v6[9] = 0xE000000000000000;
      v9._object = 0xED0000202F206E65;
      v9._countAndFlagsBits = 0x657263736C6C7546;
      sub_97EE8(v9);
      *v6 = a1 & 1;
      sub_98748();
    }

    return *&v6[1];
  }
}

uint64_t getEnumTagSinglePayload for TranscriptStateMachine.ViewMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for TranscriptStateMachine.ViewMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_71E0C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_71E3C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = (a2 & 1 | ((a2 >> 1) << 6)) + 64;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PodcastsTranscripts22TranscriptStateMachineC06EngineD0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_71EA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_71F08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_71F58(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptStateMachine.UserEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptStateMachine.UserEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PodcastsTranscripts22TranscriptStateMachineC0D0O(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_72104(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_7214C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_72190(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_721CC()
{
  result = qword_C7688;
  if (!qword_C7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7688);
  }

  return result;
}

unint64_t sub_72224()
{
  result = qword_C7690;
  if (!qword_C7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7690);
  }

  return result;
}

uint64_t sub_72278(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  if (a1 != 2)
  {
    if ((a2 - 1) >= 2)
    {
      if (a1)
      {
        swift_getErrorValue();
        v4 = sub_98878();
        v6 = v5;
        if (!a2)
        {
          if (!v5)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }

        v7 = v4;
      }

      else
      {
        if (!a2)
        {
          goto LABEL_6;
        }

        v6 = 0;
        v7 = 0;
      }

      swift_getErrorValue();
      v8 = sub_98878();
      if (v6)
      {
        if (v9)
        {
          if (v7 != v8 || v6 != v9)
          {
            v2 = sub_98838();

            return v2 & 1;
          }

          goto LABEL_6;
        }
      }

      else if (!v9)
      {
        goto LABEL_6;
      }

LABEL_21:
    }

LABEL_22:
    v2 = 0;
    return v2 & 1;
  }

  if (a2 != 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v2 = 1;
  return v2 & 1;
}

uint64_t sub_723B8(unsigned __int8 a1, unsigned __int8 a2)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      if (a2 != 192)
      {
        return 0;
      }
    }

    else if (a1 == 128)
    {
      if (a2 != 128)
      {
        return 0;
      }
    }

    else if (a2 != 129)
    {
      return 0;
    }

    return 1;
  }

  if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 >= 0x40u)
  {
    return 0;
  }

LABEL_9:
  if (a1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  else
  {
    v2 = 0x64656C616373;
  }

  if (a2)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 0x64656C616373;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    return 1;
  }

  else
  {
    v5 = sub_98838();
    swift_bridgeObjectRelease_n();
    return v5 & 1;
  }
}

uint64_t sub_724B4(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        goto LABEL_31;
      }
    }

    else if (a4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a4 != 4 || a3)
        {
          goto LABEL_31;
        }

        goto LABEL_15;
      }

      if (a4 == 3)
      {
        if (a1)
        {
          swift_getErrorValue();
          v5 = sub_98878();
          v7 = v6;
          if (!a3)
          {
            if (v6)
            {
              goto LABEL_30;
            }

            goto LABEL_15;
          }

          v8 = v5;
        }

        else
        {
          if (!a3)
          {
            goto LABEL_15;
          }

          v7 = 0;
          v8 = 0;
        }

        swift_getErrorValue();
        v11 = sub_98878();
        if (v7)
        {
          if (v12)
          {
            if (v8 == v11 && v7 == v12)
            {

              v9 = 1;
            }

            else
            {
              v9 = sub_98838();
            }

            return v9 & 1;
          }

          goto LABEL_30;
        }

        if (v12)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_15:
        v9 = 1;
        return v9 & 1;
      }

LABEL_31:
      v9 = 0;
      return v9 & 1;
    }

    if (a4 != 2)
    {
      goto LABEL_31;
    }
  }

  return sub_723B8(a1, a3);
}

uint64_t sub_72654(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_72668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_726D0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_70400(a1, a2);
  }

  return a1;
}

uint64_t sub_726E4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_70414(a1, a2);
  }

  return a1;
}

uint64_t sub_726F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_72750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_727C0(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

id sub_72834()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController____lazy_storage___speechSynthesizer;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController____lazy_storage___speechSynthesizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController____lazy_storage___speechSynthesizer);
  }

  else
  {
    v4 = [objc_allocWithZone(AVSpeechSynthesizer) init];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_728BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (v31 >> 62)
  {
    v7 = sub_98778();
  }

  else
  {
    v7 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7 > a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_96E98();

    if ((v31 & 0xC000000000000001) == 0)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) > a1)
      {
        v8 = *(v31 + 8 * a1 + 32);

        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    v8 = sub_986C8();
LABEL_8:

    v9 = *(v8 + 16);
    if (!(v9 >> 61))
    {
      swift_getKeyPath();
      v31 = v9;
      sub_77804(&qword_C56A0, type metadata accessor for TextContent);

      sub_962A8();

      v10 = *(v9 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
      swift_getKeyPath();
      v31 = v10;
      sub_77804(&qword_C7760, type metadata accessor for TextContent.LiveText);

      sub_962A8();

      v11 = *(v10 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);

      if (v11)
      {
        v12 = objc_allocWithZone(AVSpeechUtterance);
        v13 = sub_97DC8();

        v14 = [v12 initWithString:v13];

        v15 = sub_73490(v9);
        if (v15)
        {
          v16 = v15;
          [v14 setVoice:v15];
        }

        v17 = v2 + OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_currentParagraphIndex;
        *v17 = a1;
        *(v17 + 8) = 0;
        v18 = sub_72834();
        [v18 speakUtterance:v14];

        v19 = *(v8 + 16) >> 61;
        if (v19 <= 1)
        {
          if (!v19)
          {
            v22 = sub_77804(&qword_C77E0, type metadata accessor for TextContent);
            goto LABEL_25;
          }

          v20 = &qword_C52B0;
          v21 = type metadata accessor for LinkContent;
        }

        else if (v19 == 2)
        {
          v20 = &unk_C77D0;
          v21 = type metadata accessor for SilentContent;
        }

        else if (v19 == 3)
        {
          v20 = &qword_C52A8;
          v21 = type metadata accessor for SpeakerContent;
        }

        else
        {
          v20 = &qword_C77C0;
          v21 = type metadata accessor for ChapterTitleContent;
        }

        v22 = sub_77804(v20, v21);
LABEL_25:
        ObjectType = swift_getObjectType();

        v24 = sub_4B3F8(ObjectType, v22);
        v26 = v25;

        if (v26)
        {
        }

        else
        {
          sub_98078();
          v27 = sub_98098();
          (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
          v28 = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_playbackController);
          v29 = swift_allocObject();
          v29[2] = 0;
          v29[3] = 0;
          v29[4] = v28;
          v29[5] = v24;

          sub_731BC(0, 0, v6, &unk_9FC28, v29);

          sub_4C60(v6, &unk_C7BD0);
        }

        return;
      }
    }
  }
}

uint64_t sub_72EC4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a5;
  return _swift_task_switch(sub_72EE8, 0, 0);
}

uint64_t sub_72EE8()
{
  v1 = v0[9];
  v2 = sub_963F8();
  v0[5] = v2;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  *__swift_allocate_boxed_opaque_existential_1(v0 + 2) = v1;
  (*(*(v2 - 8) + 104))();
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_73000;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_73000(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_73154;
  }

  else
  {
    *(v4 + 88) = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 16);
    v5 = sub_73134;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_73154()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_731BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_4BF8(a3, v25 - v10, &unk_C7BD0);
  v12 = sub_98098();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_4C60(v11, &unk_C7BD0);
  }

  else
  {
    sub_98088();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_98038();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_97E58() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77E8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77E8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_73490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  v5 = sub_95FC8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7780);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  swift_getKeyPath();
  v56[0] = a1;
  sub_77804(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v12 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  swift_beginAccess();
  sub_4BF8(a1 + v12, v11, &qword_C7780);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    v13 = &qword_C7780;
    v14 = v11;
LABEL_5:
    sub_4C60(v14, v13);
    return 0;
  }

  v15 = v53;
  (*(v6 + 16))(v8, v11, v5);
  sub_4C60(v11, &qword_C7780);
  v16 = sub_95FB8();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  sub_4BF8(a1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_speaker, v4, &qword_C5848);
  v19 = sub_96668();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v4, 1, v19) == 1)
  {

    v13 = &qword_C5848;
    v14 = v4;
    goto LABEL_5;
  }

  v22 = sub_96648();
  v24 = v23;
  (*(v20 + 8))(v4, v19);
  v25 = OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_identifiedVoicesPerLanguage;
  swift_beginAccess();
  v26 = *(v15 + v25);
  if (*(v26 + 16))
  {

    v27 = sub_742C4(v16, v18);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);

      if (*(v29 + 16))
      {
        v30 = sub_742C4(v22, v24);
        if (v31)
        {
          v32 = v30;

          v33 = *(*(v29 + 56) + 8 * v32);

          return v33;
        }
      }
    }
  }

  if (!*(*(v15 + v25) + 16) || (, sub_742C4(v16, v18), v35 = v34, , (v35 & 1) == 0))
  {
    v36 = sub_77098(&_swiftEmptyArrayStorage);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = *(v15 + v25);
    *(v15 + v25) = 0x8000000000000000;
    sub_76374(v36, v16, v18, isUniquelyReferenced_nonNull_native, &qword_C77A0);

    *(v15 + v25) = v55[0];
    swift_endAccess();
  }

  v38 = sub_73C90(v16, v18);
  v56[0] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7788);
  sub_77648();
  if ((sub_98128() & 1) == 0 || (v39 = *(v15 + v25), !*(v39 + 16)))
  {
LABEL_30:

    return 0;
  }

  v40 = sub_742C4(v16, v18);
  if ((v41 & 1) == 0)
  {

    goto LABEL_30;
  }

  v42 = *(*(v39 + 56) + 8 * v40);

  v43 = *(v42 + 16);

  if (!(v38 >> 62))
  {
    result = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_22;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_98778();
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (v43 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_38;
  }

  result = v43 % result;
  if ((v38 & 0xC000000000000001) == 0)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      v44 = *(v38 + 8 * result + 32);
      goto LABEL_28;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

LABEL_35:
  v44 = sub_986C8();
LABEL_28:
  v45 = v44;

  v46 = sub_727D4();
  v48 = sub_73BBC(v55, v16, v18);
  if (*v47)
  {
    v49 = v47;
    v50 = v45;
    v51 = v45;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v49;
    *v49 = 0x8000000000000000;
    sub_761FC(v51, v22, v24, v52);

    *v49 = v54;
    (v48)(v55, 0);

    (v46)(v56, 0);
    return v50;
  }

  else
  {

    (v48)(v55, 0);

    (v46)(v56, 0);
    return v45;
  }
}

void (*sub_73BBC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_76514(v6, a2, a3);
  return sub_73C44;
}

void sub_73C44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *sub_73C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v33 = a1;
  v31 = sub_95FC8();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_allVoicesPerLanguage;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_742C4(v33, v32);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      return v11;
    }
  }

  v12 = [objc_opt_self() speechVoices];
  sub_775F4();
  v13 = sub_97FC8();

  v14 = v13;
  v35 = &_swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
    goto LABEL_23;
  }

  v15 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  if (v15)
  {
LABEL_7:
    v27 = v7;
    v28 = v3;
    v16 = 0;
    v29 = v14 & 0xFFFFFFFFFFFFFF8;
    v30 = v14 & 0xC000000000000001;
    v17 = v4 + 1;
    while (1)
    {
      if (v30)
      {
        v18 = v14;
        v14 = sub_986C8();
      }

      else
      {
        if (v16 >= *(v29 + 16))
        {
          goto LABEL_22;
        }

        v18 = v14;
        v14 = *(v14 + 8 * v16 + 32);
      }

      v4 = v14;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v23 = v14;
        v15 = sub_98778();
        v14 = v23;
        if (!v15)
        {
          break;
        }

        goto LABEL_7;
      }

      v7 = v15;
      v20 = [v14 language];
      sub_97E08();

      sub_95FA8();
      if (sub_95FB8() == v33 && v21 == v32)
      {

        (*v17)(v6, v31);
      }

      else
      {
        v3 = v21;
        v22 = sub_98838();

        (*v17)(v6, v31);
        if ((v22 & 1) == 0)
        {

          goto LABEL_10;
        }
      }

      sub_986F8();
      v3 = v35[2];
      sub_98728();
      sub_98738();
      sub_98708();
LABEL_10:
      ++v16;
      v14 = v18;
      if (v19 == v15)
      {
        v11 = v35;
        v7 = v27;
        v3 = v28;
        goto LABEL_25;
      }
    }
  }

  v11 = &_swiftEmptyArrayStorage;
LABEL_25:

  swift_beginAccess();
  v24 = v32;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_76374(v11, v33, v24, isUniquelyReferenced_nonNull_native, &unk_C7770);

  *(v3 + v7) = v34;
  swift_endAccess();
  return v11;
}

id sub_74070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptTranslationSpeechController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_741B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 32);
  sub_988D8();
  TranscriptContentViewModel.ID.hash(into:)(v5);
  v3 = sub_98918();

  return sub_751EC(a1, v3);
}

unint64_t sub_74234(uint64_t a1)
{
  sub_97E08();
  sub_988D8();
  sub_97E88();
  v2 = sub_98918();

  return sub_752D4(a1, v2);
}

unint64_t sub_742C4(uint64_t a1, uint64_t a2)
{
  sub_988D8();
  sub_97E88();
  v4 = sub_98918();

  return sub_753D8(a1, a2, v4);
}

unint64_t sub_7433C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_98638(*(v2 + 40));

  return sub_75490(a1, v4);
}

uint64_t sub_74380(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77A8);
  v35 = a2;
  result = sub_987A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_16B64(v22, v36);
      }

      else
      {
        sub_12BDC(v22, v36);
        v23 = v21;
      }

      sub_97E08();
      sub_988D8();
      sub_97E88();
      v24 = sub_98918();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_16B64(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_74650(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7808);
  v39 = a2;
  result = sub_987A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 40 * v20;
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(*(v5 + 56) + 8 * v20);
      v42 = v22;
      v41 = v26;
      if ((v39 & 1) == 0)
      {
        sub_203C8(v23, v22, v24, v25, v26);
        v28 = v27;
        v26 = v41;
        v22 = v42;
      }

      v44 = v23;
      v45 = v22;
      v46 = v24;
      v47 = v25;
      v48 = v26;
      sub_988D8();
      TranscriptContentViewModel.ID.hash(into:)(v43);
      result = sub_98918();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v23;
      *(v16 + 8) = v42;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(v16 + 32) = v41;
      *(*(v7 + 56) + 8 * v15) = v27;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_74948(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77F0);
  v38 = a2;
  result = sub_987A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 40 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(*(v5 + 56) + 8 * v20);
      v41 = v24;
      v40 = v26;
      if ((v38 & 1) == 0)
      {
        sub_203C8(v22, v23, v25, v24, v26);

        v26 = v40;
        v24 = v41;
      }

      v43 = v22;
      v44 = v23;
      v45 = v25;
      v46 = v24;
      v47 = v26;
      sub_988D8();
      TranscriptContentViewModel.ID.hash(into:)(v42);
      result = sub_98918();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v25;
      *(v16 + 24) = v41;
      *(v16 + 32) = v40;
      *(*(v7 + 56) + 8 * v15) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_74C40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7798);
  v35 = a2;
  result = sub_987A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_988D8();
      sub_97E88();
      result = sub_98918();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_74EE4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_987A8();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_988D8();
      sub_97E88();
      result = sub_98918();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

_OWORD *sub_75184(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_16B64(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_751EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v3;
  v19 = *(a1 + 32);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 40 * v5;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v10 = *(v7 + 24);
      v13 = *v7;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      v17 = *(v7 + 32);
      sub_203C8(v13, v8, v9, v10, v17);
      v11 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v13, v18);
      sub_20438(v13, v14, v15, v16, v17);
      if (v11)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_752D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_97E08();
      v8 = v7;
      if (v6 == sub_97E08() && v8 == v9)
      {
        break;
      }

      v11 = sub_98838();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_753D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_98838())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_75490(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_779F4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_98648();
      sub_77A50(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_75558()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77A8);
  v2 = *v0;
  v3 = sub_98798();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_12BDC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_16B64(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_756D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7808);
  v2 = *v0;
  v3 = sub_98798();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v18 + 16);
        v23 = *(v18 + 24);
        v24 = *(v4 + 48) + 40 * v17;
        v25 = *(v18 + 32);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        *(v24 + 32) = v25;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_203C8(v19, v20, v22, v23, v25);
        result = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_75858()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77F0);
  v2 = *v0;
  v3 = sub_98798();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v18 + 16);
        v23 = *(v18 + 24);
        v24 = *(v4 + 48) + 40 * v17;
        v25 = *(v18 + 32);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        *(v24 + 32) = v25;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_203C8(v19, v20, v22, v23, v25);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_759DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7798);
  v2 = *v0;
  v3 = sub_98798();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_75B48(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_98798();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_75CA8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_98628() + 1) & ~v5;
    v30 = v2;
    v31 = v4;
    do
    {
      v32 = 40 * v6;
      v9 = *(v2 + 48) + 40 * v6;
      v10 = v3;
      v12 = *(v9 + 8);
      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
      v15 = *(v9 + 32);
      v34 = *v9;
      v11 = v34;
      v35 = v12;
      v36 = v13;
      v37 = v14;
      v38 = v15;
      sub_988D8();
      sub_203C8(v11, v12, v13, v14, v15);
      TranscriptContentViewModel.ID.hash(into:)(v33);
      v16 = sub_98918();
      v17 = v12;
      v3 = v10;
      result = sub_20438(v11, v17, v13, v14, v15);
      v18 = v16 & v7;
      if (v10 >= v8)
      {
        if (v18 < v8)
        {
          v2 = v30;
          v4 = v31;
        }

        else
        {
          v2 = v30;
          v4 = v31;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v30;
        v4 = v31;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = v19 + 40 * v3;
          v21 = (v19 + v32);
          if (40 * v3 < v32 || v20 >= v21 + 40 || v3 != v6)
          {
            v22 = *v21;
            v23 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v22;
            *(v20 + 16) = v23;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 8 * v3);
          v26 = (v24 + 8 * v6);
          if (v3 != v6 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_75ED8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_98628() + 1) & ~v5;
    do
    {
      sub_988D8();

      sub_97E88();
      v9 = sub_98918();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_76088(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_741B8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * v9) = a1;

      return _objc_release_x1();
    }

    v19[(v9 >> 6) + 8] |= 1 << v9;
    v20 = v19[6] + 40 * v9;
    v21 = *a2;
    v22 = *(a2 + 16);
    *(v20 + 32) = *(a2 + 32);
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v19[7] + 8 * v9) = a1;
    v23 = v19[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v19[2] = v24;
      return sub_2051C(a2, v26);
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = v9;
    sub_756D8();
    v9 = v17;
    goto LABEL_8;
  }

  sub_74650(v14, a3 & 1);
  v9 = sub_741B8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_98868();
  __break(1u);
  return _objc_release_x1();
}

uint64_t sub_761FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_742C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_74C40(v16, a4 & 1);
      v11 = sub_742C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_98868();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_759DC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_76374(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_742C4(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_74EE4(v18, a4 & 1, a5);
      v13 = sub_742C4(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_98868();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_75B48(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

void (*sub_76514(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_768E0(v7);
  v7[9] = sub_76620(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_765C0;
}

void sub_765C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_76620(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_742C4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_75B48(&qword_C77A0);
      v13 = v21;
      goto LABEL_11;
    }

    sub_74EE4(v18, a4 & 1, &qword_C77A0);
    v13 = sub_742C4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_98868();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_7679C;
}

void sub_7679C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_776AC(*(v13 + 48) + 16 * v12);
      sub_75ED8(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_768E0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_76908;
}

uint64_t sub_76914(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_76A08;

  return v5(v2 + 16);
}

uint64_t sub_76A08()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_76B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7808);
    v3 = sub_987B8();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *i;
      *&v17 = *(i - 5);
      *(&v17 + 1) = v5;
      *&v18 = v6;
      *(&v18 + 1) = v7;
      v19 = *(i - 8);
      sub_203C8(v17, v5, v6, v7, v19);
      v9 = v8;
      result = sub_741B8(&v17);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v18;
      *v12 = v17;
      *(v12 + 16) = v13;
      *(v12 + 32) = v19;
      *(v3[7] + 8 * result) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_76C64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77A8);
    v3 = sub_987B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_4BF8(v4, &v11, &unk_C77B0);
      v5 = v11;
      result = sub_74234(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_16B64(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_76D8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7800);
    v3 = sub_987B8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_74234(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_76E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77F8);
    v3 = sub_987B8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_74234(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_76F9C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_987B8();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_742C4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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
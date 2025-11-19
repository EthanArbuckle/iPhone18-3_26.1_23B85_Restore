void sub_2654(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidStartDocument:v1];
}

void sub_26AC(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidEndDocument:v1];
}

void sub_2704(void *a1, const xmlChar *a2, xmlChar **a3)
{
  v16 = a1;
  v17 = 0;
  if (sub_2A50(a2, &v17))
  {
    v5 = [v16 delegate];
    v6 = v17;
    if (a3)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = *a3;
      if (*a3)
      {
        v9 = a3 + 2;
        do
        {
          v10 = *(v9 - 1);
          v11 = xmlStrlen(v8);
          v12 = sub_2B3C(v8, v11);
          v13 = xmlStrlen(v10);
          v14 = sub_2B3C(v10, v13);
          [v7 setObject:v14 forKeyedSubscript:v12];

          v15 = *v9;
          v9 += 2;
          v8 = v15;
        }

        while (v15);
      }
    }

    else
    {
      v7 = &__NSDictionary0__struct;
    }

    [v5 parser:v16 didStartElement:v6 attributes:{v7, v16}];
  }
}

void sub_2824(void *a1, const xmlChar *a2)
{
  v4 = a1;
  if (xmlStrEqual(a2, "br"))
  {
    v3 = [v4 delegate];
    [v3 parserDidFindNewline:v4];
  }

  else
  {
    v5 = 0;
    if (!sub_2A50(a2, &v5))
    {
      goto LABEL_6;
    }

    v3 = [v4 delegate];
    [v3 parser:v4 didEndElement:v5];
  }

LABEL_6:
}

void sub_28C8(void *a1, __CFString *a2, int a3)
{
  v7 = a1;
  v5 = sub_2B3C(a2, a3);
  if (v5)
  {
    v6 = [v7 delegate];
    [v6 parser:v7 didFindCharacters:v5];
  }
}

void sub_294C(void *a1)
{
  v3 = a1;
  LastError = xmlCtxtGetLastError([v3 _parserContext]);
  if (LastError)
  {
    v2 = LastError;
    [v3 reportParseError:LastError];
    if (v2->level == XML_ERR_FATAL)
    {
      xmlStopParser([v3 _parserContext]);
    }
  }
}

uint64_t sub_2A50(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "b") || xmlStrEqual(a1, "strong"))
  {
    v4 = 0;
LABEL_4:
    *a2 = v4;
    return 1;
  }

  if (xmlStrEqual(a1, "i") || xmlStrEqual(a1, "em"))
  {
    v4 = 1;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "u"))
  {
    v4 = 2;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "strike") || xmlStrEqual(a1, "del"))
  {
    v4 = 3;
    goto LABEL_4;
  }

  result = xmlStrEqual(a1, "a");
  if (result)
  {
    v4 = 4;
    goto LABEL_4;
  }

  return result;
}

__CFString *sub_2B3C(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      a1 = [[NSString alloc] initWithBytes:a1 length:a2 encoding:4];
    }

    else
    {
      a1 = &stru_3132C8;
    }

    v2 = vars8;
  }

  return a1;
}

uint64_t static ListItemMetadata.topChartsSwooshPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = sub_2609A0();
  v7 = v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = sub_2609B0();
  v11 = v10;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v25[4] = sub_2E5C();
  v12 = swift_allocObject();
  v25[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = 0;
  v24[3] = sub_2EF0(&qword_315B48, &qword_2664C0);
  v24[4] = sub_2F38();
  v13 = swift_allocObject();
  v24[0] = v13;
  sub_30CC(a1, v13 + 120);
  KeyPath = swift_getKeyPath();
  v28 = 0;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  *(v13 + 16) = KeyPath;
  *(v13 + 82) = 0;
  *(v13 + 88) = v15;
  *(v13 + 96) = 0;
  *(v13 + 104) = v16;
  *(v13 + 112) = 0;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 80) = 0u;
  sub_34A0(v26, a2, &qword_315B58, &unk_266540);
  sub_34A0(v25, a2 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v24, a2 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v22, a2 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v20, a2 + 200, &qword_315B78, &unk_266560);
  return sub_34A0(v18, a2 + 240, &qword_315B80, &qword_276FC0);
}

void *sub_2E18(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2E5C()
{
  result = qword_315B40;
  if (!qword_315B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315B40);
  }

  return result;
}

uint64_t sub_2EB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_2EF0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2F38()
{
  result = qword_315B50;
  if (!qword_315B50)
  {
    sub_2F9C(&qword_315B48, &qword_2664C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315B50);
  }

  return result;
}

uint64_t sub_2F9C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2FE4()
{
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3074(*(v0 + 88), *(v0 + 96));
  sub_3074(*(v0 + 104), *(v0 + 112));
  sub_3080((v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_3060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  if (a10)
  {
  }

  else
  {
  }
}

uint64_t sub_3074(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_3080(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_30CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static ListItemMetadata.topChartsGroupingSwoosh(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = sub_2609A0();
  v7 = v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = sub_2609B0();
  v11 = v10;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v22[4] = sub_2E5C();
  v12 = swift_allocObject();
  v22[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 80) = 0u;
  sub_34A0(v23, a2, &qword_315B58, &unk_266540);
  sub_34A0(v22, a2 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v20, a2 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v18, a2 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v16, a2 + 200, &qword_315B78, &unk_266560);
  return sub_34A0(v14, a2 + 240, &qword_315B80, &qword_276FC0);
}

__n128 sub_3314@<Q0>(uint64_t a1@<X8>)
{
  EnvironmentValues.libraryAssetState.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_3368@<X0>(_BYTE *a1@<X8>)
{
  sub_3C60();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_33B8(char *a1)
{
  v2 = *a1;
  sub_3C60();
  return sub_261CC0();
}

uint64_t sub_3404@<X0>(_BYTE *a1@<X8>)
{
  sub_3CB4();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_3454(char *a1)
{
  v2 = *a1;
  sub_3CB4();
  return sub_261CC0();
}

uint64_t sub_34A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2EF0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 sub_3548(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3554(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3574(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TranslationEffect(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_35E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3600(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TranslationEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TranslationEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_36A0(uint64_t a1, uint64_t a2)
{
  result = sub_2650A0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_36F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2650B0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_374C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2650C0();
  *a1 = result;
  return result;
}

uint64_t sub_377C(uint64_t a1, id *a2)
{
  result = sub_264440();
  *a2 = 0;
  return result;
}

uint64_t sub_37F4(uint64_t a1, id *a2)
{
  v3 = sub_264450();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3874@<X0>(void *a1@<X8>)
{
  sub_264460();
  v2 = sub_264420();

  *a1 = v2;
  return result;
}

uint64_t sub_38B8()
{
  v1 = *v0;
  sub_264460();
  v2 = sub_264590();

  return v2;
}

uint64_t sub_38F4()
{
  v1 = *v0;
  sub_264460();
  sub_264500();
}

Swift::Int sub_3948()
{
  v1 = *v0;
  sub_264460();
  sub_265050();
  sub_264500();
  v2 = sub_265080();

  return v2;
}

void *sub_39BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_39EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_264460();
  v6 = v5;
  if (v4 == sub_264460() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

uint64_t sub_3A74()
{
  v2 = *v0;
  sub_3EA8(&qword_315C30, type metadata accessor for UIAccessibilityTraits);
  sub_3EA8(&qword_315C38, type metadata accessor for UIAccessibilityTraits);
  return sub_264D20();
}

uint64_t sub_3B30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264420();

  *a2 = v5;
  return result;
}

uint64_t sub_3B78@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264460();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_3BA4()
{
  sub_3EA8(&qword_322CA0, type metadata accessor for NQMLAttributeName);
  sub_3EA8(&qword_315C28, type metadata accessor for NQMLAttributeName);

  return sub_264D20();
}

unint64_t sub_3C60()
{
  result = qword_315BC0;
  if (!qword_315BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315BC0);
  }

  return result;
}

unint64_t sub_3CB4()
{
  result = qword_315BC8;
  if (!qword_315BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315BC8);
  }

  return result;
}

__n128 sub_3D08(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_3D1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3D3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

void sub_3DCC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_3EA8(unint64_t *a1, void (*a2)(uint64_t))
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

BooksUI::ActionOrigin::Kind_optional __swiftcall ActionOrigin.Kind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2FF280;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ActionOrigin.Kind.rawValue.getter()
{
  v1 = 0x726564616568;
  v2 = 0x70756B636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x726568746FLL;
  }

  if (*v0)
  {
    v1 = 0x7265746F6F66;
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

Swift::Int sub_4138()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_41EC()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_428C()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_4348(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x726564616568;
  v4 = 0xE600000000000000;
  v5 = 0x70756B636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7265746F6F66;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t Metrics.Location.adamId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Metrics.Location.artistName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Metrics.Location.fcKind.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Metrics.Location.id.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Metrics.Location.idType.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Metrics.Location.kind.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ActionOrigin.flowcaseID.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t Metrics.Location.locationType.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t Metrics.Location.name.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_4668(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4449726F68747561;
    v6 = 0x65736163776F6C66;
    if (a1 != 8)
    {
      v6 = 0x44496B63697262;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x444965726E6567;
    if (a1 != 5)
    {
      v7 = 0x697463656C6C6F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x496E6F6974636573;
    v2 = 0x49746E65746E6F63;
    v3 = 0x646E696B24;
    if (a1 != 3)
    {
      v3 = 0x4449736569726573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4E6E6F6974636573;
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
}

uint64_t sub_47B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_4668(*a1);
  v5 = v4;
  if (v3 == sub_4668(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264F10();
  }

  return v8 & 1;
}

Swift::Int sub_483C()
{
  v1 = *v0;
  sub_265050();
  sub_4668(v1);
  sub_264500();

  return sub_265080();
}

uint64_t sub_48A0()
{
  sub_4668(*v0);
  sub_264500();
}

Swift::Int sub_48F4()
{
  v1 = *v0;
  sub_265050();
  sub_4668(v1);
  sub_264500();

  return sub_265080();
}

uint64_t sub_4954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5A50(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_4984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4668(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_49CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5A50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_4A0C(uint64_t a1)
{
  v2 = sub_4D74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4A48(uint64_t a1)
{
  v2 = sub_4D74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActionOrigin.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_315C40, &qword_266A88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v22 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[7];
  v22[9] = v1[6];
  v22[10] = v12;
  v13 = v1[9];
  v22[7] = v1[8];
  v22[8] = v13;
  v14 = v1[11];
  v22[5] = v1[10];
  v22[6] = v14;
  v15 = v1[13];
  v22[3] = v1[12];
  v22[4] = v15;
  v16 = v1[15];
  v22[1] = v1[14];
  v22[2] = v16;
  v17 = v1[16];
  v24 = v1[17];
  v25 = v17;
  v23 = *(v1 + 144);
  v18 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_4D74();
  sub_265140();
  v41 = 0;
  v19 = v30;
  sub_264E40();
  if (v19)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = v23;
  v40 = 1;
  sub_264E40();
  v39 = 2;
  sub_264E40();
  v38 = v20;
  v37 = 3;
  sub_4DC8();
  sub_264E90();
  v36 = 4;
  sub_264E40();
  v35 = 5;
  sub_264E40();
  v34 = 6;
  sub_264E40();
  v33 = 7;
  sub_264E40();
  v32 = 8;
  sub_264E40();
  v31 = 9;
  sub_264E40();
  return (*(v4 + 8))(0, v3);
}

unint64_t sub_4D74()
{
  result = qword_315C48;
  if (!qword_315C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C48);
  }

  return result;
}

unint64_t sub_4DC8()
{
  result = qword_315C50;
  if (!qword_315C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C50);
  }

  return result;
}

uint64_t ActionOrigin.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_2EF0(&qword_315C58, &qword_266A90);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v50);
  v8 = &v34 - v7;
  v9 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_4D74();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v10 = v5;
  LOBYTE(v61[0]) = 0;
  v11 = sub_264D70();
  v49 = v12;
  LOBYTE(v61[0]) = 1;
  v13 = sub_264D70();
  v48 = v14;
  v44 = v13;
  v45 = v11;
  LOBYTE(v61[0]) = 2;
  v43 = sub_264D70();
  v47 = v15;
  LOBYTE(v51) = 3;
  sub_5428();
  sub_264DF0();
  LODWORD(v11) = LOBYTE(v61[0]);
  LOBYTE(v61[0]) = 4;
  v42 = sub_264D70();
  v46 = v16;
  LOBYTE(v61[0]) = 5;
  v39 = sub_264D70();
  v41 = v17;
  LOBYTE(v61[0]) = 6;
  v18 = sub_264D70();
  v40 = v19;
  v37 = v18;
  LOBYTE(v61[0]) = 7;
  v35 = sub_264D70();
  v63 = v11;
  v38 = v20;
  LOBYTE(v61[0]) = 8;
  v34 = sub_264D70();
  v36 = v21;
  v64 = 9;
  v22 = sub_264D70();
  v24 = v23;
  (*(v10 + 8))(v8, v50);
  v25 = v49;
  *&v51 = v45;
  *(&v51 + 1) = v49;
  *&v52 = v44;
  *(&v52 + 1) = v48;
  v26 = v41;
  *&v53 = v42;
  *(&v53 + 1) = v46;
  *&v54 = v39;
  *(&v54 + 1) = v41;
  *&v55 = v37;
  *(&v55 + 1) = v40;
  *&v56 = v35;
  *(&v56 + 1) = v38;
  *&v57 = v34;
  *(&v57 + 1) = v36;
  *&v58 = v22;
  *(&v58 + 1) = v24;
  *&v59 = v43;
  *(&v59 + 1) = v47;
  v27 = v63;
  v60 = v63;
  *(a2 + 144) = v63;
  v28 = v56;
  *(a2 + 64) = v55;
  *(a2 + 80) = v28;
  v29 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v29;
  v30 = v59;
  v31 = v57;
  *(a2 + 112) = v58;
  *(a2 + 128) = v30;
  *(a2 + 96) = v31;
  v32 = v52;
  *a2 = v51;
  *(a2 + 16) = v32;
  sub_547C(&v51, v61);
  sub_3080(a1);
  v61[0] = v45;
  v61[1] = v25;
  v61[2] = v44;
  v61[3] = v48;
  v61[4] = v42;
  v61[5] = v46;
  v61[6] = v39;
  v61[7] = v26;
  v61[8] = v37;
  v61[9] = v40;
  v61[10] = v35;
  v61[11] = v38;
  v61[12] = v34;
  v61[13] = v36;
  v61[14] = v22;
  v61[15] = v24;
  v61[16] = v43;
  v61[17] = v47;
  v62 = v27;
  return sub_54B4(v61);
}

unint64_t sub_5428()
{
  result = qword_315C60;
  if (!qword_315C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C60);
  }

  return result;
}

unint64_t sub_54E8()
{
  result = qword_315C68;
  if (!qword_315C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C68);
  }

  return result;
}

__n128 sub_556C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_55A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
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

uint64_t sub_55FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionOrigin.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionOrigin.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionOrigin.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionOrigin.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_594C()
{
  result = qword_315C70;
  if (!qword_315C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C70);
  }

  return result;
}

unint64_t sub_59A4()
{
  result = qword_315C78;
  if (!qword_315C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C78);
  }

  return result;
}

unint64_t sub_59FC()
{
  result = qword_315C80;
  if (!qword_315C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C80);
  }

  return result;
}

uint64_t sub_5A50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_2FF300;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_5A9C()
{
  result = qword_315C88;
  if (!qword_315C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C88);
  }

  return result;
}

uint64_t LabelItemIcon.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  return sub_5B0C();
}

uint64_t LabelItemIcon.iconColor.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

__n128 LabelItemIcon.size.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 LabelItemIcon.init(type:iconColor:size:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a4[1].n128_u8[0];
  *a5 = *a1;
  *(a5 + 16) = v5;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  result = *a4;
  *(a5 + 40) = *a4;
  *(a5 + 56) = v6;
  return result;
}

uint64_t LabelItemIcon.systemIconName.getter()
{
  v1 = *(v0 + 16);
  if (v1 < 0 || (v1 & 1) == 0)
  {
    return 0;
  }

  v3 = *v0;
  v2 = v0[1];

  return v3;
}

uint64_t LabelItemIcon.iconScale.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56) == 1)
  {
    v3 = *(v1 + 40);
    v4 = sub_2630F0();
    v5 = *(v4 - 8);
    v13 = (v5 + 56);
    if (v3)
    {
      if (v3 == 1)
      {
        v6 = &enum case for Image.Scale.medium(_:);
      }

      else
      {
        v6 = &enum case for Image.Scale.large(_:);
      }
    }

    else
    {
      v6 = &enum case for Image.Scale.small(_:);
    }

    (*(v5 + 104))(a1, *v6, v4);
    v8 = *v13;
    v10 = a1;
    v11 = 0;
    v9 = v4;
  }

  else
  {
    v7 = sub_2630F0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 1;
  }

  return v8(v10, v11, 1, v9);
}

uint64_t LabelItemIcon.frameSize.getter()
{
  if (*(v0 + 56))
  {
    result = 0;
  }

  else
  {
    result = *(v0 + 40);
  }

  if (!*(v0 + 56))
  {
    v2 = *(v0 + 48);
  }

  return result;
}

uint64_t sub_5D40()
{
  v1 = 0x6F6C6F436E6F6369;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_5D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_ABB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5DC4(uint64_t a1)
{
  v2 = sub_615C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5E00(uint64_t a1)
{
  v2 = sub_615C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LabelItemIcon.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_315C90, &qword_266DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_615C();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  LOBYTE(v26) = 0;
  sub_61B0();
  sub_264DF0();
  v11 = v29;
  v24 = v30;
  v25 = v31;
  LOBYTE(v29) = 1;
  v22 = sub_264D70();
  v23 = v12;
  v41 = 2;
  sub_620C();
  sub_264DF0();
  (*(v6 + 8))(v9, v5);
  v21 = v37;
  v20 = v38;
  v13 = v39;
  v40 = v39;
  v14 = v11;
  v15 = v24;
  *&v26 = v11;
  *(&v26 + 1) = v24;
  LOBYTE(v11) = v25;
  LOBYTE(v27) = v25;
  v16 = v22;
  v17 = v23;
  *(&v27 + 1) = v22;
  *v28 = v23;
  *&v28[8] = v37;
  *&v28[16] = v38;
  v28[24] = v39;
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  sub_6260(&v26, &v29);
  sub_3080(a1);
  v29 = v14;
  v30 = v15;
  v31 = v11;
  v32 = v16;
  v33 = v17;
  v34 = v21;
  v35 = v20;
  v36 = v13;
  return sub_6298(&v29);
}

unint64_t sub_615C()
{
  result = qword_315C98;
  if (!qword_315C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315C98);
  }

  return result;
}

unint64_t sub_61B0()
{
  result = qword_315CA0;
  if (!qword_315CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315CA0);
  }

  return result;
}

unint64_t sub_620C()
{
  result = qword_315CA8;
  if (!qword_315CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315CA8);
  }

  return result;
}

uint64_t sub_62F8()
{
  if (*v0)
  {
    result = 0x6163536567616D69;
  }

  else
  {
    result = 0x656D617266;
  }

  *v0;
  return result;
}

uint64_t sub_6334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6163536567616D69 && a2 == 0xEA0000000000656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_6420(uint64_t a1)
{
  v2 = sub_6CB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_645C(uint64_t a1)
{
  v2 = sub_6CB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6498()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_64CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_65A0(uint64_t a1)
{
  v2 = sub_6DB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_65DC(uint64_t a1)
{
  v2 = sub_6DB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_66F4(uint64_t a1)
{
  v2 = sub_6D0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6730(uint64_t a1)
{
  v2 = sub_6D0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LabelItemIconSize.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2EF0(&qword_315CB0, &qword_266DE8);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = sub_2EF0(&qword_315CB8, &qword_266DF0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = sub_2EF0(&qword_315CC0, &qword_266DF8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v40 = a1;
  sub_2E18(a1, v17);
  sub_6CB8();
  v19 = v39;
  sub_265120();
  if (!v19)
  {
    v20 = v13;
    v21 = sub_264E00();
    if (*(v21 + 16) == 1)
    {
      v39 = v16;
      v22 = *(v21 + 32);
      if (v22)
      {
        LOBYTE(v43) = 1;
        sub_6D0C();
        v23 = v7;
        v24 = v39;
        sub_264D50();
        sub_6D60();
        v29 = v36;
        sub_264DF0();
        (*(v37 + 8))(v23, v29);
        (*(v13 + 8))(v24, v12);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = v43;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_6DB4();
        sub_264D50();
        LODWORD(v37) = v22;
        LOBYTE(v42) = 0;
        sub_6E08();
        sub_264DF0();
        v33 = v12;
        v31 = v43;
        v41 = 1;
        sub_264DF0();
        (*(v38 + 8))(v11, v8);
        (*(v20 + 8))(v39, v33);
        swift_unknownObjectRelease();
        v30 = v42;
        LOBYTE(v22) = v37;
      }

      v34 = v35;
      *v35 = v31;
      v34[1] = v30;
      *(v34 + 16) = v22;
    }

    else
    {
      v25 = sub_264C10();
      swift_allocError();
      v27 = v26;
      v28 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
      *v27 = &type metadata for LabelItemIconSize;
      sub_264D60();
      sub_264BF0();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
      (*(v13 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }
  }

  return sub_3080(v40);
}

unint64_t sub_6CB8()
{
  result = qword_315CC8;
  if (!qword_315CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315CC8);
  }

  return result;
}

unint64_t sub_6D0C()
{
  result = qword_315CD8;
  if (!qword_315CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315CD8);
  }

  return result;
}

unint64_t sub_6D60()
{
  result = qword_315CE0;
  if (!qword_315CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315CE0);
  }

  return result;
}

unint64_t sub_6DB4()
{
  result = qword_315CE8;
  if (!qword_315CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315CE8);
  }

  return result;
}

unint64_t sub_6E08()
{
  result = qword_315CF0;
  if (!qword_315CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315CF0);
  }

  return result;
}

uint64_t sub_6E64()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6E98()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6ECC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6F00()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BooksUI::ImageScale_optional __swiftcall ImageScale.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2FF410;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ImageScale.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_6FF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x656772616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

Swift::Int sub_70E8()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_7180()
{
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_7204()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_72A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6C616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_7358()
{
  if (*v0)
  {
    result = 0x6B726F7774656ELL;
  }

  else
  {
    result = 0x656372756F736572;
  }

  *v0;
  return result;
}

uint64_t sub_7394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_7470(uint64_t a1)
{
  v2 = sub_7E04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_74AC(uint64_t a1)
{
  v2 = sub_7E04();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int MResourceDecoder.MResourceDecoderError.hashValue.getter()
{
  sub_265050();
  sub_265060(0);
  return sub_265080();
}

Swift::Int sub_752C()
{
  sub_265050();
  sub_265060(0);
  return sub_265080();
}

uint64_t sub_758C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574616C706D6574 && a2 == 0xEC0000004C525564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_7618(uint64_t a1)
{
  v2 = sub_7E58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7654(uint64_t a1)
{
  v2 = sub_7E58();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int VerticalMasonryCoverGridViewModel.GridStyle.hashValue.getter()
{
  v1 = *v0;
  sub_265050();
  sub_265060(v1);
  return sub_265080();
}

Swift::Int sub_76D8()
{
  v1 = *v0;
  sub_265050();
  sub_265060(v1);
  return sub_265080();
}

uint64_t sub_771C()
{
  if (*v0)
  {
    result = 0x6D65747379537369;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_7750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65747379537369 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_782C(uint64_t a1)
{
  v2 = sub_7EAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7868(uint64_t a1)
{
  v2 = sub_7EAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LabelItemIconType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = sub_2EF0(&qword_315CF8, &qword_266E08);
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v39);
  v5 = &v37 - v4;
  v6 = sub_2EF0(&qword_315D00, &qword_266E10);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_2EF0(&qword_315D08, &qword_266E18);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v44 = a1;
  sub_2E18(a1, v16);
  sub_7E04();
  v17 = v43;
  sub_265120();
  if (!v17)
  {
    v18 = v42;
    v43 = v11;
    v19 = sub_264E00();
    if (*(v19 + 16) == 1)
    {
      if (*(v19 + 32))
      {
        v48 = 1;
        sub_7E58();
        v20 = v5;
        sub_264D50();
        v21 = v43;
        v22 = v39;
        v23 = sub_264DC0();
        v33 = v32;
        v38 = v23;
        (*(v41 + 8))(v20, v22);
        (*(v21 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v34 = 0x80;
      }

      else
      {
        v47 = 0;
        sub_7EAC();
        sub_264D50();
        v29 = v14;
        v30 = v43;
        v31 = v29;
        v46 = 0;
        v38 = sub_264DC0();
        v41 = v35;
        v45 = 1;
        LODWORD(v39) = sub_264DD0();
        (*(v40 + 8))(v9, v6);
        (*(v30 + 8))(v31, v10);
        swift_unknownObjectRelease();
        v34 = v39 & 1;
        v33 = v41;
      }

      *v18 = v38;
      *(v18 + 8) = v33;
      *(v18 + 16) = v34;
    }

    else
    {
      v24 = sub_264C10();
      swift_allocError();
      v26 = v25;
      v27 = v14;
      v28 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
      *v26 = &type metadata for LabelItemIconType;
      sub_264D60();
      sub_264BF0();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v43 + 8))(v27, v10);
      swift_unknownObjectRelease();
    }
  }

  return sub_3080(v44);
}

unint64_t sub_7E04()
{
  result = qword_315D10;
  if (!qword_315D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D10);
  }

  return result;
}

unint64_t sub_7E58()
{
  result = qword_315D18;
  if (!qword_315D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D18);
  }

  return result;
}

unint64_t sub_7EAC()
{
  result = qword_315D20;
  if (!qword_315D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D20);
  }

  return result;
}

double ShelfFooterSeeAllComponentModel.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_8198(v1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double ShelfFooterSeeAllComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  sub_8198(v1 + 40, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t LabelItemComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for LabelItemComponentModel();
  sub_8198(v1 + *(v7 + 24), v6, &qword_315D40, &qword_288230);
  return sub_8200(v6, a1);
}

uint64_t type metadata accessor for LabelItemComponentModel()
{
  result = qword_315E10;
  if (!qword_315E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2EF0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_8200(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_315D48, &qword_266E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for LabelItemComponentModel();
  sub_8198(a1 + *(v8 + 24), v7, &qword_315D40, &qword_288230);
  return sub_8200(v7, a2);
}

uint64_t LabelItemComponentModel.icon.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LabelItemComponentModel() + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11[0] = v4;
  *(v11 + 9) = *(v3 + 41);
  v6 = *(v11 + 9);
  v9 = *v3;
  *a1 = v9;
  a1[1] = v5;
  a1[2] = v4;
  *(a1 + 41) = v6;
  return sub_6260(&v9, &v8);
}

uint64_t LabelItemComponentModel.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LabelItemComponentModel() + 32);
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LabelItemComponentModel.init(id:icon:title:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a3[1];
  v25 = *a3;
  v26 = v12;
  v27[0] = a3[2];
  *(v27 + 9) = *(a3 + 41);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0;
  *(a7 + 40) = 0u;
  v13 = a7 + 40;
  sub_34A0(v23, a7 + 40, &qword_315D38, &unk_266E30);
  v14 = type metadata accessor for LabelItemComponentModel();
  v15 = v14[6];
  v16 = sub_263E50();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  *&v23[0] = a1;
  *(&v23[0] + 1) = a2;
  sub_264B70();
  v17 = (a7 + v14[7]);
  v18 = v26;
  *v17 = v25;
  v17[1] = v18;
  v17[2] = v27[0];
  *(v17 + 41) = *(v27 + 9);
  v19 = v14[8];
  v20 = sub_260BD0();
  (*(*(v20 - 8) + 32))(a7 + v19, a4, v20);
  sub_34A0(a5, v13, &qword_315D38, &unk_266E30);
  return sub_34A0(a6, a7 + v15, &qword_315D48, &qword_266E40);
}

unint64_t sub_8650()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 1852793705;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_86D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_ACD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8708(uint64_t a1)
{
  v2 = sub_8DE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8744(uint64_t a1)
{
  v2 = sub_8DE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LabelItemComponentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_260BD0();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_315D40, &qword_288230);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = sub_2EF0(&qword_315D50, &qword_266E48);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v14 = type metadata accessor for LabelItemComponentModel();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 40) = 0u;
  *&v48[0] = 0;
  v46 = 0u;
  v47 = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 9) = 0;
  v42 = v17 + 40;
  sub_34A0(&v46, (v17 + 40), &qword_315D38, &unk_266E30);
  v45 = v14;
  v18 = *(v14 + 24);
  v19 = sub_263E50();
  v20 = *(*(v19 - 8) + 56);
  v44 = v18;
  v20(&v17[v18], 1, 1, v19);
  v22 = a1[3];
  v21 = a1[4];
  v43 = a1;
  sub_2E18(a1, v22);
  sub_8DE4();
  v40 = v13;
  v23 = v41;
  sub_265120();
  if (v23)
  {
    v26 = v42;
    sub_3080(v43);
    v27 = v44;
    sub_8E80(v26, &qword_315D30, &qword_266E28);
    return sub_8E80(&v17[v27], &qword_315D40, &qword_288230);
  }

  else
  {
    v41 = v9;
    v24 = v38;
    v34 = v5;
    sub_2EF0(&qword_315D28, &qword_266E20);
    v50 = 0;
    sub_8E38(&qword_315D60, &qword_315D28, &qword_266E20);
    v25 = v39;
    sub_264DF0();
    v28 = v47;
    *v17 = v46;
    *(v17 + 1) = v28;
    *(v17 + 4) = *&v48[0];
    sub_2EF0(&qword_315D30, &qword_266E28);
    v50 = 1;
    sub_8E38(&qword_315D68, &qword_315D30, &qword_266E28);
    sub_264DF0();
    sub_34A0(&v46, v42, &qword_315D30, &qword_266E28);
    LOBYTE(v46) = 2;
    sub_8EE0();
    sub_264DF0();
    v29 = v45;
    sub_34A0(v41, &v17[v44], &qword_315D40, &qword_288230);
    v50 = 3;
    sub_9018();
    sub_264DF0();
    v30 = &v17[*(v29 + 28)];
    v31 = v47;
    *v30 = v46;
    *(v30 + 1) = v31;
    *(v30 + 2) = v48[0];
    *(v30 + 41) = *(v48 + 9);
    v49 = 4;
    sub_9548(&qword_315D90, &type metadata accessor for LocalizerRequest);
    v32 = v37;
    sub_264DF0();
    (*(v24 + 8))(v40, v25);
    (*(v35 + 32))(&v17[*(v29 + 32)], v34, v32);
    sub_906C(v17, v36);
    sub_3080(v43);
    return sub_90D0(v17);
  }
}

unint64_t sub_8DE4()
{
  result = qword_315D58;
  if (!qword_315D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D58);
  }

  return result;
}

uint64_t sub_8E38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8E80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2EF0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_8EE0()
{
  result = qword_315D70;
  if (!qword_315D70)
  {
    sub_2F9C(&qword_315D40, &qword_288230);
    sub_8F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D70);
  }

  return result;
}

unint64_t sub_8F64()
{
  result = qword_315D78;
  if (!qword_315D78)
  {
    sub_2F9C(&qword_315D48, &qword_266E40);
    sub_9548(&qword_315D80, &type metadata accessor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D78);
  }

  return result;
}

unint64_t sub_9018()
{
  result = qword_315D88;
  if (!qword_315D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D88);
  }

  return result;
}

uint64_t sub_906C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelItemComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_90D0(uint64_t a1)
{
  v2 = type metadata accessor for LabelItemComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_8198(v2 + *(a1 + 24), &v10 - v7, &qword_315D40, &qword_288230);
  return sub_8200(v8, a2);
}

uint64_t static LabelItemComponentModel.defaultShelfGridType.getter@<X0>(void *a1@<X8>)
{
  if (qword_3159B8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E7F8;
  v2 = qword_31E800;
  v3 = unk_31E808;
  v4 = qword_31E810;
  v5 = unk_31E818;
  *a1 = qword_31E7F0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static LabelItemComponentModel.shelfGridLayout(context:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ShelfGridLayoutContext();
  v5 = 1;
  if (((*(a1 + *(v4 + 40)) | *(a1 + *(v4 + 44))) & 1) == 0)
  {
    v5 = 2;
  }

  *a2 = v5;
  v6 = enum case for ShelfGridLayout.vertical(_:);
  v7 = sub_260B40();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

uint64_t static LabelItemComponentModel.numberOfColumns(isCompact:preferCompactLayouts:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if ((a1 | a2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_9358(uint64_t a1)
{
  result = sub_9018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_9380(uint64_t a1)
{
  result = sub_620C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_93AC()
{
  result = qword_315D98;
  if (!qword_315D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315D98);
  }

  return result;
}

unint64_t sub_9400(uint64_t a1)
{
  result = sub_6D60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_9428(uint64_t a1)
{
  result = sub_61B0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_9450(uint64_t a1)
{
  result = sub_9548(&qword_315DA0, type metadata accessor for LabelItemComponentModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_94A8(uint64_t a1)
{
  result = sub_9548(&qword_315DA8, type metadata accessor for LabelItemComponentModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_9548(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_9590@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_95E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1 + 40, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

__n128 sub_96C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_96E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_9740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for LabelItemIconSize(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LabelItemIconSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for LabelItemIconSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_9890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_98E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_997C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_260BD0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_9AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_260BD0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_9BF0()
{
  sub_9CAC();
  if (v0 <= 0x3F)
  {
    sub_9D28();
    if (v1 <= 0x3F)
    {
      sub_9DD8();
      if (v2 <= 0x3F)
      {
        sub_260BD0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_9CAC()
{
  if (!qword_315E20)
  {
    v0 = sub_263C80();
    if (!v1)
    {
      atomic_store(v0, &qword_315E20);
    }
  }
}

void sub_9D28()
{
  if (!qword_315E28)
  {
    sub_9D84();
    v0 = sub_263E80();
    if (!v1)
    {
      atomic_store(v0, &qword_315E28);
    }
  }
}

unint64_t sub_9D84()
{
  result = qword_315E30;
  if (!qword_315E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315E30);
  }

  return result;
}

void sub_9DD8()
{
  if (!qword_315E38)
  {
    sub_2F9C(&qword_315D48, &qword_266E40);
    v0 = sub_263BF0();
    if (!v1)
    {
      atomic_store(v0, &qword_315E38);
    }
  }
}

uint64_t getEnumTagSinglePayload for LabelItemComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LabelItemComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11descr2FCCF9V10DialogTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11descr2FCCF9V10DialogTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ActionKinds(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ActionKinds(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SingleThumbnailSubStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SingleThumbnailSubStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_A374()
{
  result = qword_315E78;
  if (!qword_315E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315E78);
  }

  return result;
}

unint64_t sub_A3CC()
{
  result = qword_315E80;
  if (!qword_315E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315E80);
  }

  return result;
}

unint64_t sub_A424()
{
  result = qword_315E88;
  if (!qword_315E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315E88);
  }

  return result;
}

unint64_t sub_A47C()
{
  result = qword_315E90;
  if (!qword_315E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315E90);
  }

  return result;
}

unint64_t sub_A4D4()
{
  result = qword_315E98;
  if (!qword_315E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315E98);
  }

  return result;
}

unint64_t sub_A52C()
{
  result = qword_315EA0;
  if (!qword_315EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EA0);
  }

  return result;
}

unint64_t sub_A584()
{
  result = qword_315EA8;
  if (!qword_315EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EA8);
  }

  return result;
}

unint64_t sub_A5DC()
{
  result = qword_315EB0;
  if (!qword_315EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EB0);
  }

  return result;
}

unint64_t sub_A634()
{
  result = qword_315EB8;
  if (!qword_315EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EB8);
  }

  return result;
}

unint64_t sub_A68C()
{
  result = qword_315EC0;
  if (!qword_315EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EC0);
  }

  return result;
}

unint64_t sub_A6E4()
{
  result = qword_315EC8;
  if (!qword_315EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EC8);
  }

  return result;
}

unint64_t sub_A73C()
{
  result = qword_315ED0;
  if (!qword_315ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315ED0);
  }

  return result;
}

unint64_t sub_A794()
{
  result = qword_315ED8;
  if (!qword_315ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315ED8);
  }

  return result;
}

unint64_t sub_A7EC()
{
  result = qword_315EE0;
  if (!qword_315EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EE0);
  }

  return result;
}

unint64_t sub_A844()
{
  result = qword_315EE8;
  if (!qword_315EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EE8);
  }

  return result;
}

unint64_t sub_A89C()
{
  result = qword_315EF0;
  if (!qword_315EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EF0);
  }

  return result;
}

unint64_t sub_A8F4()
{
  result = qword_315EF8;
  if (!qword_315EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315EF8);
  }

  return result;
}

unint64_t sub_A94C()
{
  result = qword_315F00;
  if (!qword_315F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F00);
  }

  return result;
}

unint64_t sub_A9A4()
{
  result = qword_315F08;
  if (!qword_315F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F08);
  }

  return result;
}

unint64_t sub_A9FC()
{
  result = qword_315F10;
  if (!qword_315F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F10);
  }

  return result;
}

unint64_t sub_AA54()
{
  result = qword_315F18;
  if (!qword_315F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F18);
  }

  return result;
}

unint64_t sub_AAAC()
{
  result = qword_315F20;
  if (!qword_315F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F20);
  }

  return result;
}

unint64_t sub_AB04()
{
  result = qword_315F28;
  if (!qword_315F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F28);
  }

  return result;
}

unint64_t sub_AB5C()
{
  result = qword_315F30;
  if (!qword_315F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F30);
  }

  return result;
}

uint64_t sub_ABB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F436E6F6369 && a2 == 0xE900000000000072 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
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

uint64_t sub_ACD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000028FFC0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_AE78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2EF0(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_AF3C()
{
  result = qword_315F38;
  if (!qword_315F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_315F38);
  }

  return result;
}

uint64_t sub_AFE0()
{
  v0 = sub_260D50();
  sub_B600(v0, qword_315F40);
  sub_B080(v0, qword_315F40);
  return sub_260D40();
}

uint64_t sub_B080(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_B0B8()
{
  v0 = sub_260D50();
  sub_B600(v0, qword_315F58);
  sub_B080(v0, qword_315F58);
  return sub_260D40();
}

uint64_t sub_B1A0()
{
  v0 = sub_260D50();
  sub_B600(v0, qword_315F88);
  sub_B080(v0, qword_315F88);
  return sub_260D40();
}

uint64_t sub_B244()
{
  v0 = sub_260D50();
  sub_B600(v0, qword_315FA0);
  sub_B080(v0, qword_315FA0);
  return sub_260D40();
}

uint64_t sub_B2E8()
{
  v0 = sub_260D50();
  sub_B600(v0, qword_315FB8);
  sub_B080(v0, qword_315FB8);
  return sub_260D40();
}

uint64_t sub_B38C()
{
  v0 = sub_260D50();
  sub_B600(v0, qword_315FD0);
  sub_B080(v0, qword_315FD0);
  return sub_260D40();
}

uint64_t sub_B4C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_260D50();
  sub_B600(v3, a2);
  sub_B080(v3, a2);
  return sub_260D40();
}

uint64_t sub_B568@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_260D50();
  v6 = sub_B080(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_B600(uint64_t a1, uint64_t *a2)
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

uint64_t sub_B71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_C084();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.viewSizeConditions.getter()
{
  sub_B7C8();

  return sub_261CB0();
}

unint64_t sub_B7C8()
{
  result = qword_316030;
  if (!qword_316030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316030);
  }

  return result;
}

uint64_t sub_B81C@<X0>(uint64_t a1@<X8>)
{
  sub_B7C8();
  result = sub_261CB0();
  *(a1 + 2) = v4;
  *a1 = v3;
  return result;
}

uint64_t sub_B874(__int16 *a1)
{
  v3 = *(a1 + 2);
  v2 = *a1;
  sub_B7C8();
  return sub_261CC0();
}

uint64_t EnvironmentValues.viewSizeConditions.setter(__int16 *a1)
{
  v3 = *(a1 + 2);
  v2 = *a1;
  sub_B7C8();
  return sub_261CC0();
}

uint64_t (*EnvironmentValues.viewSizeConditions.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_B7C8();
  sub_261CB0();
  return sub_B970;
}

uint64_t sub_B970(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v2 = a1[1];
  *(a1 + 21) = *(a1 + 18);
  *(a1 + 19) = v1;
  return sub_261CC0();
}

uint64_t sub_B9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *(v2 + 1);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 17) = v6;
  *(v9 + 18) = v7;
  *(v9 + 24) = v8;
  v10 = sub_2EF0(&qword_316058, &qword_267CB8);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_2EF0(&qword_316060, &qword_267CC0) + 36));
  *v11 = sub_BB54;
  v11[1] = 0;
  v11[2] = sub_C194;
  v11[3] = v9;
  KeyPath = swift_getKeyPath();

  sub_2EF0(&qword_316068, &qword_267CF0);
  sub_2631E0();
  if (v18)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | v17;
  result = sub_2EF0(&qword_316070, &qword_267CF8);
  v16 = a2 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 10) = v19 != 0;
  *(v16 + 8) = v14;
  return result;
}

uint64_t sub_BB54@<X0>(BOOL *a1@<X8>)
{
  result = sub_261420();
  *a1 = v3 <= 320.0;
  a1[1] = v3 > 414.0;
  a1[2] = v3 >= 1024.0;
  return result;
}

uint64_t sub_BBBC(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  sub_2EF0(&qword_316068, &qword_267CF0);
  sub_2631F0();
}

uint64_t View.rootForViewSizeConditions()()
{
  sub_2631D0();
  sub_262E30();
}

uint64_t sub_BD08@<X0>(uint64_t a1@<X8>)
{
  sub_B7C8();
  result = sub_261CB0();
  *(a1 + 2) = v4;
  *a1 = v3;
  return result;
}

uint64_t sub_BD60(__int16 *a1)
{
  v3 = *(a1 + 2);
  v2 = *a1;
  sub_B7C8();
  return sub_261CC0();
}

uint64_t initializeBufferWithCopyOfBuffer for ViewSizeConditions(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewSizeConditions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewSizeConditions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_BEE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  sub_BF48();
  return swift_getWitnessTable();
}

unint64_t sub_BF48()
{
  result = qword_316038;
  if (!qword_316038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316038);
  }

  return result;
}

uint64_t sub_BF9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_BFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_C084()
{
  result = qword_316040;
  if (!qword_316040)
  {
    sub_2F9C(&qword_316048, &qword_267CB0);
    sub_C108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316040);
  }

  return result;
}

unint64_t sub_C108()
{
  result = qword_316050;
  if (!qword_316050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316050);
  }

  return result;
}

uint64_t sub_C15C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_C194(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v1 + 17);
  *(v1 + 18);
  return sub_BBBC(a1);
}

unint64_t sub_C1CC()
{
  result = qword_316078;
  if (!qword_316078)
  {
    sub_2F9C(&qword_316070, &qword_267CF8);
    sub_C284();
    sub_8E38(&qword_3160A0, &qword_3160A8, qword_267D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316078);
  }

  return result;
}

unint64_t sub_C284()
{
  result = qword_316080;
  if (!qword_316080)
  {
    sub_2F9C(&qword_316060, &qword_267CC0);
    sub_8E38(&qword_316088, &qword_316058, &qword_267CB8);
    sub_8E38(&qword_316090, &qword_316098, &qword_267D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316080);
  }

  return result;
}

uint64_t Metrics.DialogActionType.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_2FF4F8;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_C3CC()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_C420()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_C464@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2FF530;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t Metrics.DialogType.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_2FF568;
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

uint64_t Metrics.DialogType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7472656C61;
  }

  else
  {
    result = 0x68536E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_C56C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7472656C61;
  }

  else
  {
    v4 = 0x68536E6F69746361;
  }

  if (v3)
  {
    v5 = 0xEB00000000746565;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7472656C61;
  }

  else
  {
    v6 = 0x68536E6F69746361;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEB00000000746565;
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

Swift::Int sub_C618()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_C6A0()
{
  *v0;
  sub_264500();
}

Swift::Int sub_C714()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_C798@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2FF568;
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

void sub_C7F8(uint64_t *a1@<X8>)
{
  v2 = 0x68536E6F69746361;
  if (*v1)
  {
    v2 = 0x7472656C61;
  }

  v3 = 0xEB00000000746565;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static Metrics.createDialogMetrics(actionType:dialogType:message:options:result:targetID:title:)@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9)
{
  v70 = a6;
  v69 = a5;
  v68 = a8;
  v14 = sub_263DD0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v67 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2601B0();
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  __chkstk_darwin(v64);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_263DB0();
  v65 = *(v66 - 8);
  v20 = *(v65 + 64);
  __chkstk_darwin(v66);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  sub_263D80();
  v74 = &type metadata for String;
  *&v73 = 27503;
  *(&v73 + 1) = 0xE200000000000000;
  sub_FB7C(&v73, &v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = &_swiftEmptyDictionarySingleton;
  sub_DC90(&v72, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v25 = v71;
  v26 = 0x68536E6F69746361;
  if (v23)
  {
    v26 = 0x7472656C61;
  }

  v27 = 0xEB00000000746565;
  v74 = &type metadata for String;
  if (v23)
  {
    v27 = 0xE500000000000000;
  }

  *&v73 = v26;
  *(&v73 + 1) = v27;
  sub_FB7C(&v73, &v72);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v25;
  sub_DC90(&v72, 0x7954676F6C616964, 0xEA00000000006570, v28);
  v29 = v71;
  v30 = sub_263DA0();
  v74 = &type metadata for String;
  *&v73 = v30;
  *(&v73 + 1) = v31;
  sub_FB7C(&v73, &v72);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v29;
  sub_DC90(&v72, 0x707954746E657665, 0xE900000000000065, v32);
  v33 = v71;
  if (a3)
  {
    v74 = &type metadata for String;
    *&v73 = a2;
    *(&v73 + 1) = a3;
    sub_FB7C(&v73, &v72);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v33;
    sub_DC90(&v72, 0x6567617373656DLL, 0xE700000000000000, v34);
    v33 = v71;
  }

  *&v73 = a4;
  sub_2EF0(&qword_3160B0, &qword_267D40);
  sub_DDE0();
  v35 = sub_264340();
  v74 = &type metadata for String;
  *&v73 = v35;
  *(&v73 + 1) = v36;
  sub_FB7C(&v73, &v72);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v33;
  sub_DC90(&v72, 0x736E6F6974706FLL, 0xE700000000000000, v37);
  v38 = v71;
  v39 = 0x6572756C696166;
  v74 = &type metadata for String;
  if (v69)
  {
    v39 = 0x73736563637573;
  }

  *&v73 = v39;
  *(&v73 + 1) = 0xE700000000000000;
  sub_FB7C(&v73, &v72);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v38;
  sub_DC90(&v72, 0x746C75736572, 0xE600000000000000, v40);
  v41 = v71;
  v74 = &type metadata for String;
  *&v73 = v70;
  *(&v73 + 1) = a7;
  sub_FB7C(&v73, &v72);

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v41;
  sub_DC90(&v72, 0x6449746567726174, 0xE800000000000000, v42);
  v43 = v71;
  if (*(&a9 + 1))
  {
    v74 = &type metadata for String;
    v73 = a9;
    sub_FB7C(&v73, &v72);

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v43;
    sub_DC90(&v72, 0x656C746974, 0xE500000000000000, v44);
    v43 = v71;
  }

  sub_2EF0(&qword_3160C0, &qword_267D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D20;
  strcpy((inited + 32), "responseTime");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_2601A0();
  sub_260170();
  v47 = v46;
  (*(v63 + 8))(v19, v64);
  *(inited + 48) = v47 * 1000.0;
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x746C75736572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = v69 & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6449746567726174;
  *(inited + 168) = &type metadata for String;
  v48 = v70;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = v48;
  *(inited + 152) = a7;

  v49 = sub_E678(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_3160C8, &unk_267D50);
  swift_arrayDestroy();
  v74 = sub_2EF0(&qword_3160D0, &unk_270CF0);
  *&v73 = v49;
  sub_FB7C(&v73, &v72);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v43;
  sub_DC90(&v72, 0x6974634172657375, 0xEB00000000736E6FLL, v50);
  sub_2EF0(&qword_3160D8, &qword_267D60);
  v51 = *(sub_263A10() - 8);
  v52 = *(v51 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  *(swift_allocObject() + 16) = xmmword_267D30;
  if (qword_3158D0 != -1)
  {
    swift_once();
  }

  v54 = qword_353F00;
  if (*(qword_353F00 + 16))
  {
    v55 = sub_D378(v22);
    if (v56)
    {
      v57 = *(*(v54 + 56) + 8 * v55);
    }
  }

  if (qword_3158D8 != -1)
  {
    swift_once();
  }

  v58 = qword_353F08;
  if (*(qword_353F08 + 16))
  {
    v59 = sub_D378(v22);
    if (v60)
    {
      v61 = *(*(v58 + 56) + 8 * v59);
    }
  }

  sub_2639F0();
  sub_263DC0();
  sub_263AD0();
  return (*(v65 + 8))(v22, v66);
}

uint64_t sub_D0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_FB7C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_DC90(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_8E80(a1, &qword_316200, &qword_267FD0);
    sub_228450(a2, a3, v10);

    return sub_8E80(v10, &qword_316200, &qword_267FD0);
  }

  return result;
}

uint64_t sub_D180(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_F7CC(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_DE44(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_F778(a2);
    *v2 = v7;
  }

  else
  {
    sub_8E80(a1, &qword_316110, &qword_267F00);
    sub_2284F4(a2, v8);
    sub_F778(a2);
    return sub_8E80(v8, &qword_316110, &qword_267F00);
  }

  return result;
}

uint64_t sub_D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_F7CC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_E174(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_8E80(a1, &qword_316120, &qword_267F10);
    sub_2285A8(a2, a3, v10);

    return sub_8E80(v10, &qword_316120, &qword_267F10);
  }

  return result;
}

unint64_t sub_D30C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_265050();
  sub_265060(a1);
  v4 = sub_265080();

  return sub_D674(a1, v4);
}

unint64_t sub_D378(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_263DB0();
  sub_FB8C(&qword_3161D8, &type metadata accessor for MetricsEventType);
  v5 = sub_264320();

  return sub_D6E4(a1, v5);
}

unint64_t sub_D410(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_265050();
  sub_264500();
  v6 = sub_265080();

  return sub_D8A4(a1, a2, v6);
}

unint64_t sub_D488(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40(*(v2 + 40));

  return sub_D95C(a1, v4);
}

unint64_t sub_D4CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_265050();
  sub_262730();
  sub_FB8C(&qword_316188, &type metadata accessor for Font.TextStyle);
  sub_264330();
  v4 = *(_s8RatioKeyVMa() + 20);
  sub_261690();
  sub_FB8C(&qword_316190, &type metadata accessor for DynamicTypeSize);
  sub_264330();
  v5 = sub_265080();

  return sub_DA24(a1, v5);
}

unint64_t sub_D5E0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_264460();
  sub_265050();
  sub_264500();
  v4 = sub_265080();

  return sub_DB8C(a1, v4);
}

unint64_t sub_D674(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_D6E4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_263DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_FB8C(&qword_3161E0, &type metadata accessor for MetricsEventType);
      v16 = sub_264390();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_D8A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264F10())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_D95C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_F7E4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_264B50();
      sub_F778(v8);
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

unint64_t sub_DA24(uint64_t a1, uint64_t a2)
{
  v4 = _s8RatioKeyVMa();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_FA58(*(v2 + 48) + v12 * v10, v8);
      if (sub_262720())
      {
        v13 = *(v4 + 20);
        v14 = sub_261680();
        sub_FABC(v8);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_FABC(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_DB8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_264460();
      v9 = v8;
      if (v7 == sub_264460() && v9 == v10)
      {
        break;
      }

      v12 = sub_264F10();

      if ((v12 & 1) == 0)
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

_OWORD *sub_DC90(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_D410(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_14EC04();
      v11 = v19;
      goto LABEL_8;
    }

    sub_14D5B4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_D410(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_264FB0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_3080(v23);

    return sub_FB7C(a1, v23);
  }

  else
  {
    sub_228BD4(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_DDE0()
{
  result = qword_3160B8;
  if (!qword_3160B8)
  {
    sub_2F9C(&qword_3160B0, &qword_267D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3160B8);
  }

  return result;
}

uint64_t sub_DE44(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_D488(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_14EDF4();
      goto LABEL_7;
    }

    sub_14D8C8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_D488(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_F7E4(a2, v22);
      return sub_228C40(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_264FB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 40 * v10);
  sub_3080(v17);

  return sub_F7CC(a1, v17);
}

uint64_t sub_DF94(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = _s8RatioKeyVMa();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_D4CC(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_14EF8C();
      goto LABEL_7;
    }

    sub_14DB8C(result, a2 & 1);
    v21 = *v4;
    result = sub_D4CC(a1);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_FA58(a1, v11);
      return sub_228CC0(v14, v11, v20, a3);
    }
  }

  result = sub_264FB0();
  __break(1u);
  return result;
}

uint64_t sub_E174(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_D410(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_14F560();
      v11 = v19;
      goto LABEL_8;
    }

    sub_14E618(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_D410(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_264FB0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    sub_3080(v23);

    return sub_F7CC(a1, v23);
  }

  else
  {
    sub_228D64(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_E348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), void (*a7)(uint64_t, void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v17 = *v8;
  result = sub_D410(a3, a4);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a5 & 1) == 0)
  {
    if (v25 >= v23 && (a5 & 1) == 0)
    {
      v26 = result;
      a6();
      result = v26;
      goto LABEL_8;
    }

    a7(v23, a5 & 1);
    v27 = *v11;
    result = sub_D410(a3, a4);
    if ((v24 & 1) != (v28 & 1))
    {
LABEL_14:
      result = sub_264FB0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v29 = *v11;
  if (v24)
  {
    v30 = (*(v29 + 56) + 16 * result);
    *v30 = a1;
    v30[1] = a2;
  }

  else
  {
    a8(result, a3, a4, a1, a2, v29);
  }

  return result;
}

unint64_t sub_E4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316170, &qword_267F60);
    v3 = sub_264D10();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_D30C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_E598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316168, &qword_267F58);
    v3 = sub_264D10();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_D30C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_E678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_3161F8, &qword_267FC8);
    v3 = sub_264D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_8198(v4, &v13, &qword_3160C8, &unk_267D50);
      v5 = v13;
      v6 = v14;
      result = sub_D410(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_FB7C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_E7AC()
{
  result = qword_3160E0;
  if (!qword_3160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3160E0);
  }

  return result;
}

unint64_t sub_E804()
{
  result = qword_3160E8;
  if (!qword_3160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3160E8);
  }

  return result;
}

unint64_t sub_E8C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_2EF0(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_2EF0(a4, a5);
    v15 = sub_264D10();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_8198(v17, v13, a2, v28);
      result = sub_D378(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_263DB0();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_EAA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_3161B8, &qword_267F98);
    v3 = sub_264D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_8198(v4, &v13, &qword_3161C0, &qword_267FA0);
      v5 = v13;
      v6 = v14;
      result = sub_D410(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_FB7C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_EBD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_3161A8, &qword_267F88);
    v3 = sub_264D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_8198(v4, v13, &qword_3161B0, &qword_267F90);
      result = sub_D488(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_F7CC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 80;
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

unint64_t sub_ED04(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316198, &qword_267F78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2EF0(&qword_3161A0, &qword_267F80);
    v8 = sub_264D10();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_8198(v10, v6, &qword_316198, &qword_267F78);
      result = sub_D4CC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = _s8RatioKeyVMa();
      result = sub_FB18(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_EEE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316138, &qword_267F28);
    v3 = sub_264D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_8198(v4, v13, &qword_316140, &qword_267F30);
      result = sub_D488(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_FB7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_F038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316178, &qword_267F68);
    v3 = sub_264D10();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_D410(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_F13C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316130, &qword_267F20);
    v3 = sub_264D10();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_D410(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_F250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316180, &qword_267F70);
    v3 = sub_264D10();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_D410(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_F37C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2EF0(a2, a3);
    v5 = sub_264D10();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_D410(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_F484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316150, &qword_267F40);
    v3 = sub_264D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_8198(v4, &v13, &qword_316158, &qword_267F48);
      v5 = v13;
      v6 = v14;
      result = sub_D410(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_F7CC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_F5B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_2EF0(&qword_3160F0, &unk_267EE0);
  v3 = sub_264D10();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_8198(&v26, v25, &qword_3160F8, &qword_2697C0);
  result = sub_D410(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 40);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_8198(&v26, v25, &qword_3160F8, &qword_2697C0);
    result = sub_D410(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_F7CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_F840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316128, &qword_267F18);
    v3 = sub_264D10();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_D410(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_F954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_316118, &qword_267F08);
    v3 = sub_264D10();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_D410(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_FA58(uint64_t a1, uint64_t a2)
{
  v4 = _s8RatioKeyVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FABC(uint64_t a1)
{
  v2 = _s8RatioKeyVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FB18(uint64_t a1, uint64_t a2)
{
  v4 = _s8RatioKeyVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_FB7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_FB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ListItemMetadata.seriesPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v47 = &v42 - v9;
  v10 = __chkstk_darwin(v8);
  v44 = &v42 - v11;
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_2E18(a1, v14);
  sub_10134(v14, v15, v13);
  v16 = a1[4];
  sub_2E18(a1, a1[3]);
  v17 = sub_2609A0();
  v45 = v18;
  v46 = v17;
  v19 = sub_260BD0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v49 = v13;
  v22 = 0;
  v23 = 0;
  if (v21(v13, 1, v19) == 1)
  {
    v24 = a1[4];
    sub_2E18(a1, a1[3]);
    v22 = sub_2609B0();
    v23 = v25;
  }

  v26 = v44;
  sub_104B0(v49, v44);
  if (v21(v26, 1, v19) == 1)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
  }

  else
  {
    *(&v60 + 1) = type metadata accessor for ListItemMetadataEyebrow();
    v61 = sub_109FC(&qword_316210, type metadata accessor for ListItemMetadataEyebrow);
    v27 = sub_10934(&v59);
    v43 = v23;
    v28 = v27;
    (*(v20 + 32))(v27, v26, v19);
    v29 = *(v20 + 56);
    v29(v47, 1, 1, v19);
    v29(v48, 1, 1, v19);
    v30 = type metadata accessor for ShrinkableText();
    v31 = *(v30 + 20);
    v29(v28 + v31, 1, 1, v19);
    v44 = v22;
    v32 = *(v30 + 24);
    v29(v28 + v32, 1, 1, v19);
    sub_34A0(v47, v28 + v31, &qword_316208, &qword_268BD0);
    v33 = v28 + v32;
    v23 = v43;
    v22 = v44;
    sub_34A0(v48, v33, &qword_316208, &qword_268BD0);
  }

  v57[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v57[4] = sub_2E5C();
  v34 = swift_allocObject();
  v57[0] = v34;
  v35 = v45;
  *(v34 + 16) = v46;
  *(v34 + 24) = v35;
  *(v34 + 32) = v22;
  *(v34 + 40) = v23;
  *(v34 + 48) = 0;
  v56[3] = sub_2EF0(&qword_315B48, &qword_2664C0);
  v56[4] = sub_2F38();
  v36 = swift_allocObject();
  v56[0] = v36;
  sub_30CC(a1, v36 + 120);
  KeyPath = swift_getKeyPath();
  v58 = 0;
  v38 = swift_getKeyPath();
  v54[0] = 0;
  v39 = swift_getKeyPath();
  v40 = v54[0];
  *(v36 + 16) = KeyPath;
  *(v36 + 82) = 0;
  *(v36 + 88) = v38;
  *(v36 + 96) = v40;
  *(v36 + 104) = v39;
  *(v36 + 112) = 0;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 80) = 0u;
  sub_34A0(&v59, a2, &qword_315B58, &unk_266540);
  sub_34A0(v57, a2 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v56, a2 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v54, a2 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v52, a2 + 200, &qword_315B78, &unk_266560);
  sub_34A0(v50, a2 + 240, &qword_315B80, &qword_276FC0);
  return sub_8E80(v49, &qword_316208, &qword_268BD0);
}

uint64_t sub_10134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_260720();
  v34[0] = *(v5 - 8);
  v6 = *(v34[0] + 64);
  v7 = __chkstk_darwin(v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v34 - v10;
  v12 = sub_2607D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v34 - v18;
  v34[1] = a1;
  v34[2] = a2;
  sub_260940();
  (*(v13 + 104))(v17, enum case for SeriesOrdering.orderedSeries(_:), v12);
  v20 = sub_2607C0();
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_260850();
  v22 = v34[0];
  (*(v34[0] + 104))(v9, enum case for ContentKind.manga(_:), v5);
  sub_109FC(&qword_316218, &type metadata accessor for ContentKind);
  v23 = sub_264390();
  v24 = *(v22 + 8);
  v24(v9, v5);
  v24(v11, v5);
  if (v23)
  {
    goto LABEL_5;
  }

  v25 = sub_2608F0();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    v30 = v35;
    sub_260B70();

    v31 = 0;
  }

  else
  {
LABEL_5:
    v31 = 1;
    v30 = v35;
  }

  v32 = sub_260BD0();
  return (*(*(v32 - 8) + 56))(v30, v31, 1, v32);
}

uint64_t sub_104B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10520()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10560()
{
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3074(*(v0 + 88), *(v0 + 96));
  sub_3074(*(v0 + 104), *(v0 + 112));
  sub_3080((v0 + 120));

  return swift_deallocObject();
}

uint64_t static ListItemMetadata.seriesHeaderQuickActionButton(assetInfo:eyebrowText:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[3] = type metadata accessor for ListItemMetadataEyebrow();
  v22[4] = sub_109FC(&qword_316210, type metadata accessor for ListItemMetadataEyebrow);
  v6 = sub_10934(v22);
  sub_10998(a2, v6);
  v7 = a1[4];
  sub_2E18(a1, a1[3]);
  v8 = sub_2609A0();
  v10 = v9;
  v21[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v21[4] = sub_2E5C();
  v11 = swift_allocObject();
  v21[0] = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0;
  *(a3 + 240) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 80) = 0u;
  sub_34A0(v22, a3, &qword_315B58, &unk_266540);
  sub_34A0(v21, a3 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v19, a3 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v17, a3 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v15, a3 + 200, &qword_315B78, &unk_266560);
  return sub_34A0(v13, a3 + 240, &qword_315B80, &qword_276FC0);
}

uint64_t sub_107E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316220, &unk_273570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v14 - v8;
  v14[0] = a2;
  v14[1] = a3;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_2641F0();
  v11 = sub_260290();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_10A84();
  v12 = sub_264A90();
  sub_8E80(v9, &qword_316220, &unk_273570);
  return v12;
}

uint64_t *sub_10934(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShrinkableText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_109FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10A44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_10A84()
{
  result = qword_316228;
  if (!qword_316228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316228);
  }

  return result;
}

double sub_10B14(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 44));
  v9 = *v8;
  if (v8[8] == 1)
  {
    return *v8;
  }

  sub_264900();
  v11 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v9, 0);
  (*(v4 + 8))(v7, v3);
  return *&v12[1];
}

double sub_10C6C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v5 = *v2;
  v6 = *(v2 + 2);
  sub_2EF0(&qword_316460, &unk_2681F0);
  sub_2631E0();
  return v4;
}

uint64_t sub_10CCC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v4 = *v2;
  v5 = *(v2 + 2);
  sub_2EF0(&qword_316460, &unk_2681F0);
  return sub_2631F0();
}

uint64_t sub_10D30()
{
  sub_2EF0(&qword_316248, &qword_26E860);
  sub_2631D0();
  return v1;
}

uint64_t sub_10D78(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 52));
  sub_2EF0(&qword_316458, &qword_2681E8);
  sub_2631E0();
  return v3;
}

uint64_t sub_10DCC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 52));
  sub_2EF0(&qword_316458, &qword_2681E8);
  return sub_2631F0();
}

uint64_t sub_10E24()
{
  type metadata accessor for CGSize(0);
  sub_2631D0();
  return v1;
}

double sub_10E64(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v5 = *v2;
  v6 = *(v2 + 2);
  sub_2EF0(&qword_316460, &unk_2681F0);
  sub_2631E0();
  return v4;
}

uint64_t sub_10EC4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v4 = *v2;
  v5 = *(v2 + 2);
  sub_2EF0(&qword_316460, &unk_2681F0);
  return sub_2631F0();
}

uint64_t BackdropView.init(resource:placeholder:useSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BackdropView();
  v11 = a5 + v10[11];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = (a5 + v10[12]);
  v13 = sub_10E24();
  *v12 = v14;
  v12[1] = v15;
  v12[2] = v13;
  v16 = (a5 + v10[13]);
  *v16 = sub_10D30();
  v16[1] = v17;
  v18 = (a5 + v10[14]);
  v19 = sub_10E24();
  *v18 = v20;
  v18[1] = v21;
  v18[2] = v19;
  *(a5 + v10[9]) = a1;
  result = (*(*(a4 - 8) + 32))(a5, a2, a4);
  *(a5 + v10[10]) = a3;
  return result;
}

uint64_t BackdropView.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = v23 - ((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + *(__chkstk_darwin(a1) + 36));
  (*(v5 + 16))(v6);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(a1 + 24);
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 24) = v10;
  (*(v5 + 32))(v9 + v8, v6, a1);
  sub_2622E0();
  sub_261730();
  swift_unknownObjectRetain();
  sub_2F9C(&qword_316240, &unk_2680A0);
  v11 = sub_261730();
  v12 = sub_2F9C(&qword_316248, &qword_26E860);
  WitnessTable = swift_getWitnessTable();
  v29 = &protocol witness table for Image;
  v30 = WitnessTable;
  v14 = swift_getWitnessTable();
  v15 = sub_8E38(&qword_316250, &qword_316240, &unk_2680A0);
  v27 = v14;
  v28 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_14678();
  *&v34 = v11;
  *(&v34 + 1) = v12;
  *&v35 = v16;
  *(&v35 + 1) = v17;
  swift_getOpaqueTypeMetadata2();
  sub_260320();
  sub_261F90();
  *&v34 = v11;
  *(&v34 + 1) = v12;
  *&v35 = v16;
  *(&v35 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_14718(qword_316270, &type metadata accessor for BackdropView);
  v25 = OpaqueTypeConformance2;
  v26 = v19;
  swift_getWitnessTable();
  AsyncResourceImage.init(resource:content:)(v7, sub_145DC, v9, &v31);
  v23[0] = v31;
  v23[1] = v32;
  v24 = v33;
  v20 = type metadata accessor for AsyncResourceImage();
  swift_getWitnessTable();
  v21 = *(*(v20 - 8) + 16);
  v21(&v34, v23, v20);

  swift_unknownObjectRelease();

  v31 = v34;
  v32 = v35;
  v33 = v36;
  v21(a2, &v31, v20);

  swift_unknownObjectRelease();
}

uint64_t sub_1146C@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a1;
  v111 = a5;
  v8 = sub_260320();
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  __chkstk_darwin(v8);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BackdropView();
  v103 = *(v11 - 8);
  v97 = v103[8];
  __chkstk_darwin(v11);
  v107 = &v83 - v12;
  v91 = sub_2630C0();
  v90 = *(v91 - 1);
  v13 = *(v90 + 64);
  __chkstk_darwin(v91);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a3;
  OpaqueTypeConformance2 = a4;
  sub_2622E0();
  v16 = sub_261730();
  v99 = *(v16 - 8);
  v17 = *(v99 + 64);
  __chkstk_darwin(v16);
  v106 = &v83 - v18;
  sub_2F9C(&qword_316240, &unk_2680A0);
  v19 = sub_261730();
  v102 = *(v19 - 8);
  v20 = *(v102 + 64);
  __chkstk_darwin(v19);
  v101 = &v83 - v21;
  v22 = sub_2F9C(&qword_316248, &qword_26E860);
  WitnessTable = swift_getWitnessTable();
  v122 = &protocol witness table for Image;
  v123 = WitnessTable;
  v100 = v16;
  v24 = swift_getWitnessTable();
  v25 = a2;
  v26 = sub_8E38(&qword_316250, &qword_316240, &unk_2680A0);
  v89 = v24;
  v120 = v24;
  v121 = v26;
  v27 = v8;
  v28 = swift_getWitnessTable();
  v29 = sub_14678();
  v116 = v19;
  v117 = v22;
  v112 = v29;
  v113 = v22;
  v118 = v28;
  v119 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  v31 = *(v98 + 64);
  v32 = __chkstk_darwin(OpaqueTypeMetadata2);
  v96 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v93 = &v83 - v35;
  __chkstk_darwin(v34);
  v95 = &v83 - v36;
  v37 = sub_261F90();
  v108 = *(v37 - 8);
  v38 = *(v108 + 64);
  __chkstk_darwin(v37);
  v40 = &v83 - v39;
  if (*(v25 + *(v11 + 40)) == 1)
  {
    v85 = OpaqueTypeMetadata2;
    v92 = &v83 - v39;
    v94 = v28;
    v41 = v105;
    v104 = v11;
    v42 = sub_10D78(v11);
    v88 = v27;
    v87 = v19;
    v86 = v37;
    if (!v42)
    {
      [objc_allocWithZone(UIImage) init];
    }

    sub_2630A0();
    v43 = v90;
    v44 = v91;
    (*(v90 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v91);
    v45 = sub_263100();

    (*(v43 + 8))(v15, v44);
    v116 = v45;
    sub_262500();
    v84 = v25;
    v46 = v109;
    v47 = OpaqueTypeConformance2;
    sub_262A00();

    v48 = v103;
    v49 = v103[2];
    v91 = (v103 + 2);
    v105 = v49;
    v50 = v107;
    v51 = v25;
    v52 = v104;
    v49(v107, v51, v104);
    v53 = *(v48 + 80);
    v90 = (v53 + 32) & ~v53;
    v54 = (v97 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v46;
    *(v55 + 24) = v47;
    v56 = v48[4];
    v56(v55 + ((v53 + 32) & ~v53), v50, v52);
    v57 = v56;
    *(v55 + v54) = v41;
    v58 = v54;
    type metadata accessor for CGSize(0);
    sub_14718(&qword_316418, type metadata accessor for CGSize);
    v103 = v41;
    v59 = v101;
    v60 = v100;
    v61 = v106;
    sub_262B90();

    (*(v99 + 8))(v61, v60);
    v116 = v41;
    v62 = v107;
    v63 = v104;
    v105(v107, v84, v104);
    v64 = swift_allocObject();
    v65 = OpaqueTypeConformance2;
    *(v64 + 16) = v109;
    *(v64 + 24) = v65;
    v57(v64 + v90, v62, v63);
    *(v64 + v58) = v41;
    v66 = v103;
    v67 = v93;
    v68 = v87;
    v70 = v112;
    v69 = v113;
    v28 = v94;
    sub_262E60();
    v19 = v68;

    (*(v102 + 8))(v59, v68);
    v116 = v68;
    v117 = v69;
    v118 = v28;
    v119 = v70;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v71 = v98;
    v72 = *(v98 + 16);
    v73 = v95;
    v74 = v85;
    v72(v95, v67, v85);
    v75 = *(v71 + 8);
    v75(v67, v74);
    v76 = v96;
    v72(v96, v73, v74);
    sub_14718(qword_316270, &type metadata accessor for BackdropView);
    v40 = v92;
    sub_1D738(v76, v74);
    v75(v76, v74);
    v75(v73, v74);
    v37 = v86;
  }

  else
  {
    v77 = v105;
    v78 = v92;
    sub_260310();
    v116 = v19;
    v117 = v113;
    v118 = v28;
    v119 = v112;
    swift_getOpaqueTypeConformance2();
    sub_14718(qword_316270, &type metadata accessor for BackdropView);
    sub_1D830(v78, OpaqueTypeMetadata2, v27);
    (*(v94 + 8))(v78, v27);
  }

  v116 = v19;
  v117 = v113;
  v118 = v28;
  v119 = v112;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_14718(qword_316270, &type metadata accessor for BackdropView);
  v114 = v79;
  v115 = v80;
  swift_getWitnessTable();
  v81 = v108;
  (*(v108 + 16))(v111, v40, v37);
  return (*(v81 + 8))(v40, v37);
}

uint64_t sub_1203C@<X0>(void *a1@<X8>)
{
  result = sub_261420();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_12068(double *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for BackdropView();
  sub_10EC4(v6);
  if (a3)
  {
    v7 = a3;
    sub_12110(v7, v6, v4, v5);
  }
}

void sub_12110(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v12 = __chkstk_darwin(v11);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  v17 = sub_2EF0(&qword_316408, &qword_26DE30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v59 - v19;
  v21 = sub_10D78(a2);
  v61 = v14;
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21 && (v21, v22 = sub_10C6C(a2), v22 + v22 > a3))
  {
    sub_10C6C(a2);
    v24 = v23 + v23 <= a4;
  }

  else
  {
    v24 = 1;
  }

  sub_2EF0(&qword_316420, &qword_2681A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_267D30;
  *(v25 + 56) = sub_15C98(0, &qword_316268, UIImage_ptr);
  *(v25 + 64) = sub_15390(&qword_316428);
  *(v25 + 32) = a1;
  v26 = a1;
  v27 = sub_264470();
  v28 = v27;
  v30 = v29;
  if (v24)
  {
    v31 = sub_10B14(a2);
    sub_10CCC(a2);
    v32 = sub_264770();
    (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
    (*(v9 + 16))(v16, v4, a2);
    v33 = (*(v9 + 80) + 80) & ~*(v9 + 80);
    v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = v20;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = *(a2 + 16);
    *(v35 + 48) = v28;
    *(v35 + 56) = v30;
    *(v35 + 64) = a3;
    *(v35 + 72) = a4;
    (*(v9 + 32))(v35 + v33, v16, a2);
    *(v35 + v34) = v26;
    *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v36 = v26;
    v37 = v62;
    sub_13570(0, 0, v62, &unk_2681B0, v35);

    sub_157C4(v37);
  }

  else
  {
    v60 = v27;
    if (qword_315830 != -1)
    {
      swift_once();
    }

    v38 = sub_260D50();
    sub_B080(v38, qword_315F40);
    v39 = *(v9 + 16);
    v40 = v61;
    v39(v61, v4, a2);
    v41 = v62;
    v39(v62, v4, a2);

    v42 = sub_260D30();
    v43 = sub_2648D0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v64 = v59;
      *v44 = 136315906;
      v45 = sub_191368(v60, v30, &v64);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2080;
      v46 = sub_2649C0();
      v48 = sub_191368(v46, v47, &v64);

      *(v44 + 14) = v48;
      *(v44 + 22) = 2080;
      sub_10C6C(a2);
      v49 = *(v9 + 8);
      v49(v40, a2);
      v50 = sub_2649C0();
      v52 = sub_191368(v50, v51, &v64);

      *(v44 + 24) = v52;
      *(v44 + 32) = 2080;
      v53 = sub_10D78(a2);
      v63 = v53;
      sub_2EF0(&qword_316248, &qword_26E860);
      v54 = sub_264A40();
      v56 = v55;
      v49(v41, a2);

      v57 = sub_191368(v54, v56, &v64);

      *(v44 + 34) = v57;
      _os_log_impl(&dword_0, v42, v43, "Skipping backdrop generation for %s for view size=%s due to existing, size=%s, %s", v44, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v58 = *(v9 + 8);
      v58(v40, a2);

      v58(v41, a2);
    }
  }
}

void sub_12734(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for BackdropView();
  v4 = sub_10E64(v3);
  if ((v5 != 0.0 || v4 != 0.0) && a2 != 0)
  {
    v10 = a2;
    v8 = sub_10E64(v3);
    sub_12110(v10, v3, v8, v9);
  }
}

uint64_t sub_127D8(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 96) = a11;
  *(v11 + 104) = v16;
  *(v11 + 88) = a3;
  *(v11 + 72) = a9;
  *(v11 + 80) = a10;
  *(v11 + 56) = a1;
  *(v11 + 64) = a2;
  *(v11 + 40) = a7;
  *(v11 + 48) = a8;
  v12 = type metadata accessor for BackdropView();
  *(v11 + 112) = v12;
  v13 = *(v12 - 8);
  *(v11 + 120) = v13;
  *(v11 + 128) = *(v13 + 64);
  *(v11 + 136) = swift_task_alloc();
  *(v11 + 144) = swift_task_alloc();

  return (_swift_task_switch)(sub_128C8, 0, 0);
}

uint64_t sub_128C8()
{
  v59 = v0;
  if (qword_315830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = sub_260D50();
  sub_B080(v6, qword_315F40);
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = sub_260D30();
  v9 = sub_2648D0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 144);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  if (v10)
  {
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_191368(v17, v16, &v58);
    v55 = v7;
    *(v18 + 12) = 2080;
    v19 = sub_2649C0();
    v21 = sub_191368(v19, v20, &v58);

    *(v18 + 14) = v21;
    *(v18 + 22) = 2080;
    v22 = sub_10D78(v13);
    *(v0 + 32) = v22;
    sub_2EF0(&qword_316248, &qword_26E860);
    v23 = sub_264A40();
    v25 = v24;
    (*(v12 + 8))(v11, v13);

    v26 = sub_191368(v23, v25, &v58);
    v7 = v55;

    *(v18 + 24) = v26;
    _os_log_impl(&dword_0, v8, v9, "Generating backdrop for %s for view size=%s, %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v29 = *(v0 + 112);
  v30 = *(v0 + 120);
  v31 = *(v0 + 88);
  v33 = *(v0 + 56);
  v32 = *(v0 + 64);
  v34 = *(v0 + 40);
  v35 = *(v0 + 48);
  v56 = v34;
  v57 = *(v0 + 80);
  v54 = *(v0 + 96);
  v7(v27, *(v0 + 72), v29);
  v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v37 = (v28 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v54;
  (*(v30 + 32))(v39 + v36, v27, v29);
  v40 = (v39 + v37);
  *v40 = v56;
  v40[1] = v35;
  v41 = (v39 + v38);
  *v41 = v33;
  v41[1] = v32;
  *(v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v42 = type metadata accessor for MediaBackdropSnapshotRendererOperation();
  v43 = objc_allocWithZone(v42);
  v44 = OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_semaphore;

  v45 = v57;
  *&v43[v44] = dispatch_semaphore_create(0);
  *&v43[OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_content] = v45;
  v46 = &v43[OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_size];
  *v46 = v33;
  *(v46 + 1) = v32;
  *&v43[OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_contentScale] = v31;
  v47 = &v43[OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_completion];
  *v47 = sub_15BB0;
  v47[1] = v39;
  *(v0 + 16) = v43;
  *(v0 + 24) = v42;
  v48 = v45;

  v49 = objc_msgSendSuper2((v0 + 16), "init");
  if (qword_315888 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 136);
  v50 = *(v0 + 144);
  [qword_316238 addOperation:v49];

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_12D48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v45 = a4;
  v38 = a1;
  v39 = a2;
  v15 = type metadata accessor for BackdropView();
  v42 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_2EF0(&qword_316408, &qword_26DE30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = sub_264770();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v16 + 16))(v19, a3, v15);
  sub_264750();
  v25 = a1;

  v40 = a6;
  swift_errorRetain();
  v26 = sub_264740();
  v27 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v28 = (v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = v26;
  *(v31 + 3) = &protocol witness table for MainActor;
  v32 = v44;
  *(v31 + 4) = v43;
  *(v31 + 5) = v32;
  *(v31 + 6) = v38;
  (*(v16 + 32))(&v31[v27], v19, v42);
  v33 = &v31[v28];
  v34 = v41;
  *v33 = v45;
  *(v33 + 1) = v34;
  v35 = &v31[v29];
  *v35 = a9;
  v35[1] = a10;
  v36 = v39;
  *&v31[v30] = v40;
  *&v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8] = v36;
  sub_182AE4(0, 0, v23, &unk_2681D8, v31);
}

uint64_t sub_12FF0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 72) = a10;
  *(v10 + 80) = v18;
  *(v10 + 56) = a1;
  *(v10 + 64) = a2;
  *(v10 + 40) = a8;
  *(v10 + 48) = a9;
  *(v10 + 24) = a6;
  *(v10 + 32) = a7;
  v11 = type metadata accessor for BackdropView();
  *(v10 + 88) = v11;
  v12 = *(v11 - 8);
  *(v10 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v10 + 104) = swift_task_alloc();
  sub_264750();
  *(v10 + 112) = sub_264740();
  v15 = sub_264730();

  return (_swift_task_switch)(sub_130FC, v15, v14);
}

uint64_t sub_130FC()
{
  v51 = v0;
  v1 = v0[14];
  v2 = v0[3];

  if (v2)
  {
    v3 = v0[11];
    v4 = v0[3];
    v5 = v0[4];
    v6 = objc_allocWithZone(UIImage);
    v7 = v4;
    sub_10DCC([v6 initWithCGImage:v7 scale:0 orientation:1.0], v3);
    if (qword_315830 != -1)
    {
      swift_once();
    }

    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[11];
    v11 = v0[6];
    v12 = v0[4];
    v13 = sub_260D50();
    sub_B080(v13, qword_315F40);
    (*(v8 + 16))(v9, v12, v10);

    v14 = sub_260D30();
    v15 = sub_2648D0();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[12];
    v18 = v0[13];
    v19 = v0[11];
    if (v16)
    {
      v21 = v0[7];
      v20 = v0[8];
      v49 = v7;
      v23 = v0[5];
      v22 = v0[6];
      v24 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_191368(v23, v22, &v50);
      *(v24 + 12) = 2080;
      v25 = sub_2649C0();
      v27 = sub_191368(v25, v26, &v50);

      *(v24 + 14) = v27;
      *(v24 + 22) = 2080;
      v28 = sub_10D78(v19);
      v0[2] = v28;
      sub_2EF0(&qword_316248, &qword_26E860);
      v29 = sub_264A40();
      v31 = v30;
      (*(v17 + 8))(v18, v19);

      v32 = sub_191368(v29, v31, &v50);

      *(v24 + 24) = v32;
      _os_log_impl(&dword_0, v14, v15, "Done generation of backdrop for %s for view size=%s, %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v17 + 8))(v18, v19);
    }
  }

  else
  {
    if (qword_315830 != -1)
    {
      swift_once();
    }

    v34 = v0[9];
    v33 = v0[10];
    v35 = sub_260D50();
    sub_B080(v35, qword_315F40);
    v36 = v34;
    swift_errorRetain();
    v37 = sub_260D30();
    v38 = sub_2648F0();

    if (os_log_type_enabled(v37, v38))
    {
      v40 = v0[9];
      v39 = v0[10];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412546;
      *(v41 + 4) = v40;
      *v42 = v40;
      *(v41 + 12) = 2112;
      v43 = v40;
      if (v39)
      {
        v44 = sub_25FFA0();
        v45 = v44;
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }

      *(v41 + 14) = v44;
      v42[1] = v45;
      _os_log_impl(&dword_0, v37, v38, "Failed to generate backdrop snapshot for image: %@, error: %@", v41, 0x16u);
      sub_2EF0(&qword_316450, &qword_2681E0);
      swift_arrayDestroy();
    }
  }

  v46 = v0[13];

  v47 = v0[1];

  return v47();
}

uint64_t sub_13570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2EF0(&qword_316408, &qword_26DE30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1582C(a3, v27 - v11);
  v13 = sub_264770();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_157C4(v12);
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

uint64_t sub_13838()
{
  v10 = sub_264950();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264930();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_2637C0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_15C98(0, &qword_316430, OS_dispatch_queue_ptr);
  sub_2637B0();
  v11 = &_swiftEmptyArrayStorage;
  sub_14718(&qword_316438, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2EF0(&qword_316440, &qword_2681C8);
  sub_8E38(&qword_316448, &qword_316440, &qword_2681C8);
  sub_264B10();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_264970();
  qword_316230 = result;
  return result;
}

id sub_13AAC()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  if (qword_315880 != -1)
  {
    swift_once();
  }

  result = [v0 setUnderlyingQueue:qword_316230];
  qword_316238 = v0;
  return result;
}

uint64_t sub_13B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_260360();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return (_swift_task_switch)(sub_13C24, 0, 0);
}

uint64_t sub_13C24()
{
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_size) <= 0.0 || *(v1 + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_size + 8) <= 0.0)
  {
    sub_15088();
    v10 = swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[2] + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_completion;
    v14 = *v12;
    v13 = *(v12 + 8);
    swift_errorRetain();
    v14(0, v10);

    v15 = v0[5];
    v16 = *(v0[2] + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_semaphore);
    sub_2649A0();

    v17 = v0[1];

    return v17();
  }

  else
  {
    v2 = v0[5];
    v3 = *(v1 + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_content);
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 traitCollectionWithUserInterfaceStyle:2];
    sub_260350();
    sub_260340();
    v7 = async function pointer to static Backdrop.CompositeRenderer.snapshot(configuration:)[1];
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_13E20;
    v9 = v0[5];

    return static Backdrop.CompositeRenderer.snapshot(configuration:)(v9);
  }
}

uint64_t sub_13E20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_14138;
  }

  else
  {
    v5 = sub_13F34;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_13F34()
{
  v1 = v0[7];
  v2 = [objc_allocWithZone(CIContext) init];
  v3 = [v1 CIImage];
  if (v3)
  {
    v4 = v3;
    [v3 extent];
    v5 = [v2 createCGImage:v4 fromRect:?];
    if (v5)
    {
      v6 = v0[7];
      v7 = v0[4];
      v27 = v0[5];
      v8 = v0[3];
      v9 = v0[2] + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_completion;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = v5;
      v13 = v5;
      v11(v12, 0);

      (*(v7 + 8))(v27, v8);
      goto LABEL_6;
    }
  }

  v14 = v0[7];
  v16 = v0[4];
  v15 = v0[5];
  v17 = v0[3];
  sub_15088();
  v18 = swift_allocError();
  *v19 = 1;
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  v20 = v0[2] + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_completion;
  v21 = *v20;
  v22 = *(v20 + 8);
  swift_errorRetain();
  v21(0, v18);

LABEL_6:
  v23 = v0[5];
  v24 = *(v0[2] + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_semaphore);
  sub_2649A0();

  v25 = v0[1];

  return v25();
}

uint64_t sub_14138()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[8];
  v2 = v0[2] + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_completion;
  v4 = *v2;
  v3 = *(v2 + 8);
  swift_errorRetain();
  v4(0, v1);

  v5 = v0[5];
  v6 = *(v0[2] + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_semaphore);
  sub_2649A0();

  v7 = v0[1];

  return v7();
}

id sub_14364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaBackdropSnapshotRendererOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_143F8@<X0>(void *a1@<X8>)
{
  result = sub_2619E0();
  *a1 = v3;
  return result;
}

uint64_t sub_14424@<X0>(void *a1@<X8>)
{
  result = sub_2619E0();
  *a1 = v3;
  return result;
}

uint64_t sub_144A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for BackdropView() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  v6 = *(v5 + v3[11]);
  swift_unknownObjectRelease();
  sub_3074(*(v5 + v3[13]), *(v5 + v3[13] + 8));
  v7 = *(v5 + v3[14] + 16);

  v8 = v5 + v3[15];

  v9 = *(v8 + 8);

  v10 = *(v5 + v3[16] + 16);

  return swift_deallocObject();
}

uint64_t sub_145DC@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for BackdropView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1146C(a1, v8, v5, v6, a2);
}

unint64_t sub_14678()
{
  result = qword_316258;
  if (!qword_316258)
  {
    sub_2F9C(&qword_316248, &qword_26E860);
    sub_15390(&qword_316260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316258);
  }

  return result;
}

uint64_t sub_14718(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_147AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_14CBC(319, &qword_3162F8, &qword_316300, qword_268128, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      sub_14C14();
      if (v4 <= 0x3F)
      {
        sub_14C64();
        if (v5 <= 0x3F)
        {
          sub_14CBC(319, &qword_316318, &qword_316248, &qword_26E860, &type metadata accessor for State);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_148E0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_14A34(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 39) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 39) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 39) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_14C14()
{
  if (!qword_316308)
  {
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_316308);
    }
  }
}

void sub_14C64()
{
  if (!qword_316310)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_263210();
    if (!v1)
    {
      atomic_store(v0, &qword_316310);
    }
  }
}

void sub_14CBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_14D68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2622E0();
  sub_261730();
  sub_2F9C(&qword_316240, &unk_2680A0);
  sub_261730();
  sub_2F9C(&qword_316248, &qword_26E860);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_8E38(&qword_316250, &qword_316240, &unk_2680A0);
  swift_getWitnessTable();
  sub_14678();
  swift_getOpaqueTypeMetadata2();
  sub_260320();
  sub_261F90();
  swift_getOpaqueTypeConformance2();
  sub_14718(qword_316270, &type metadata accessor for BackdropView);
  swift_getWitnessTable();
  type metadata accessor for AsyncResourceImage();
  return swift_getWitnessTable();
}

uint64_t sub_14F94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_14FD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_160A8;

  return sub_13B64(a1, v4, v5, v6);
}

unint64_t sub_15088()
{
  result = qword_316410;
  if (!qword_316410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316410);
  }

  return result;
}

void sub_150E0(double *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for BackdropView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_12068(a1, v1 + v6, v7);
}

uint64_t sub_15198()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for BackdropView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  (*(*(v2 - 8) + 8))(v0 + v4, v2);
  v7 = *(v6 + v3[11]);
  swift_unknownObjectRelease();
  sub_3074(*(v6 + v3[13]), *(v6 + v3[13] + 8));
  v8 = *(v6 + v3[14] + 16);

  v9 = v6 + v3[15];

  v10 = *(v9 + 8);

  v11 = *(v6 + v3[16] + 16);

  return swift_deallocObject();
}

void sub_152E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for BackdropView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_12734(v0 + v4, v5);
}

uint64_t sub_15390(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_15C98(255, &qword_316268, UIImage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_153E4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = (type metadata accessor for BackdropView() - 8);
  v4 = (*(*v3 + 80) + 80) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[7];

  v8 = v0 + v4;
  (*(*(v2 - 8) + 8))(v8, v2);
  v9 = *&v8[v3[11]];
  swift_unknownObjectRelease();
  sub_3074(*&v8[v3[13]], v8[v3[13] + 8]);
  v10 = *&v8[v3[14] + 16];

  v11 = &v8[v3[15]];

  v12 = *(v11 + 1);

  v13 = *&v8[v3[16] + 16];

  return swift_deallocObject();
}

uint64_t sub_1554C(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(type metadata accessor for BackdropView() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v11 = *(v1 + 6);
  v12 = *(v1 + 7);
  v13 = v1[8];
  v14 = v1[9];
  v15 = *(v1 + v8);
  v16 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_156D0;

  return sub_127D8(v13, v14, v16, a1, v9, v10, v11, v12, v1 + v7, v15, v4);
}

uint64_t sub_156D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_157C4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316408, &qword_26DE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1582C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316408, &qword_26DE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1589C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_158D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_160A8;

  return sub_E405C(a1, v5);
}

uint64_t sub_1598C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_156D0;

  return sub_E405C(a1, v5);
}

uint64_t sub_15A44()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for BackdropView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  (*(*(v2 - 8) + 8))(v0 + v4, v2);
  v7 = *(v6 + v3[11]);
  swift_unknownObjectRelease();
  sub_3074(*(v6 + v3[13]), *(v6 + v3[13] + 8));
  v8 = *(v6 + v3[14] + 16);

  v9 = v6 + v3[15];

  v10 = *(v9 + 8);

  v11 = *(v6 + v3[16] + 16);

  v12 = *(v0 + v5 + 8);

  return swift_deallocObject();
}

uint64_t sub_15BB0(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for BackdropView() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v2 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v2 + v10);
  v15 = *(v2 + v10 + 8);
  v16 = *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_12D48(a1, a2, v2 + v8, v12, v13, v16, v5, v6, v14, v15);
}

uint64_t sub_15C98(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_15CE0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = (type metadata accessor for BackdropView() - 8);
  v4 = (*(*v3 + 80) + 56) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = v0 + v4;
  (*(*(v2 - 8) + 8))(v8, v2);
  v9 = *(v8 + v3[11]);
  swift_unknownObjectRelease();
  sub_3074(*(v8 + v3[13]), *(v8 + v3[13] + 8));
  v10 = *(v8 + v3[14] + 16);

  v11 = v8 + v3[15];

  v12 = *(v11 + 8);

  v13 = *(v8 + v3[16] + 16);

  v14 = *(v0 + v5 + 8);

  v15 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_15E6C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for BackdropView() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = v1[3];
  v22 = v1[2];
  v11 = v1[6];
  v12 = (v1 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = *(v1 + v10);
  v18 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_160A8;

  return sub_12FF0(v15, v16, a1, v22, v21, v11, v1 + v7, v13, v14, v17);
}

unint64_t sub_16048()
{
  result = qword_316468;
  if (!qword_316468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316468);
  }

  return result;
}

uint64_t sub_160AC()
{
  v0 = sub_262040();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_2EF0(&qword_316498, &qword_268358);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  sub_262000();
  sub_2EF0(&qword_3164A8, &unk_268360);
  sub_8E38(qword_3164B0, &qword_3164A8, &unk_268360);
  sub_261250();
  sub_8E38(&qword_3164A0, &qword_316498, &qword_268358);
  sub_262090();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1628C()
{
  v0 = sub_263AF0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_2610B0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_261090();
  sub_263AC0();
  sub_264160();
  v5[3] = sub_264180();
  v5[4] = &protocol witness table for Models.FlowBackAction;
  sub_10934(v5);
  sub_264150();
  return sub_260AB0();
}

uint64_t sub_163A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v21 = a2;
  v20 = sub_261CD0();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_2EF0(&qword_316478, &qword_268340);
  v6 = *(v19[0] - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v19[0]);
  v9 = v19 - v8;
  v10 = sub_2EF0(&qword_316480, &qword_268348);
  v11 = sub_2EF0(&qword_316488, &qword_268350);
  v12 = sub_8E38(&qword_316490, &qword_316480, &qword_268348);
  v13 = sub_2F9C(&qword_316498, &qword_268358);
  v14 = sub_8E38(&qword_3164A0, &qword_316498, &qword_268358);
  v22 = v13;
  v23 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_262E10();
  v16 = v20;
  (*(v2 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v20);
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = v19[0];
  sub_262D50();
  (*(v2 + 8))(v5, v16);
  return (*(v6 + 8))(v9, v17);
}

uint64_t sub_166A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  sub_1670C();
  return swift_getWitnessTable();
}

unint64_t sub_1670C()
{
  result = qword_316470;
  if (!qword_316470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316470);
  }

  return result;
}

uint64_t sub_1678C()
{
  sub_2F9C(&qword_316478, &qword_268340);
  sub_2F9C(&qword_316480, &qword_268348);
  sub_2F9C(&qword_316488, &qword_268350);
  sub_8E38(&qword_316490, &qword_316480, &qword_268348);
  sub_2F9C(&qword_316498, &qword_268358);
  sub_8E38(&qword_3164A0, &qword_316498, &qword_268358);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_168FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ListItemAccessoryView();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

unint64_t sub_169AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_16D28();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_16A34(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}
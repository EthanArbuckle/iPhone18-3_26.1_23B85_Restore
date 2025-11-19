uint64_t sub_1005A6AF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1005A6B08(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

uint64_t sub_1005A6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C20(a1, a2, a3, a4, a5, BYTE3(a5) & 1);
  }

  else
  {
    return sub_1005A6B1C(a1, a2, a3, a4, a5, BYTE3(a5) & 1);
  }
}

uint64_t sub_1005A6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C4C();
  }

  return sub_1005A6B50(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
}

uint64_t sub_1005A6B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C04();
  }

  return sub_1005A6B84(a1, a2, a3, a4, a5, HIBYTE(a5) & 1);
}

uint64_t sub_1005A6B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C68();
  }

  v8 = a5 & 1;

  return sub_1005A6BB8(a1, a2, a3, a4, v8);
}

uint64_t sub_1005A6BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1005A6C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1005A6C68();
  }

  else
  {
    return sub_1005A6C4C();
  }
}

uint64_t sub_1005A6C68()
{
}

BOOL static MKCoordinateRegion.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a4 != a8)
  {
    v8 = 0;
  }

  return a3 == a7 && v8;
}

uint64_t sub_1005A6D0C()
{
  result = type metadata accessor for ArticleModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005A6D80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100AD59D0 == a2)
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

uint64_t sub_1005A6E50(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_1005A6E8C(void *a1)
{
  v3 = sub_10022C350(&qword_100CC6DD0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1005A7414();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for ArticleModel();
  sub_1005A7588(&qword_100CC6DD8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for NewsArticleComponent();
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1005A7024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  type metadata accessor for ArticleModel();
  sub_1000037E8();
  __chkstk_darwin(v4);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CC6DB8);
  sub_1000037C4();
  v23 = v6;
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for NewsArticleComponent();
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1005A7414();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v14 = v13;
  v15 = v23;
  v27 = 0;
  sub_1005A7588(&qword_100CC6DC8);
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v16;
  v18 = v14;
  sub_1005A7468(v17, v14);
  v26 = 1;
  v19 = v25;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v15 + 8))(v9, v19);
  *(v18 + *(v10 + 20)) = v20 & 1;
  sub_1005A74CC(v18, v22);
  sub_100006F14(a1);
  return sub_1005A7530(v18, type metadata accessor for NewsArticleComponent);
}

uint64_t sub_1005A72E4(uint64_t a1, uint64_t a2)
{
  if (sub_1005A80A4(a1, a2))
  {
    v4 = type metadata accessor for NewsArticleComponent();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1005A7340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005A6D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005A7368(uint64_t a1)
{
  v2 = sub_1005A7414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A73A4(uint64_t a1)
{
  v2 = sub_1005A7414();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005A7414()
{
  result = qword_100CC6DC0;
  if (!qword_100CC6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6DC0);
  }

  return result;
}

uint64_t sub_1005A7468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A74CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A7530(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005A7588(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NewsArticleComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005A76AC()
{
  result = qword_100CC6DE0;
  if (!qword_100CC6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6DE0);
  }

  return result;
}

unint64_t sub_1005A7704()
{
  result = qword_100CC6DE8;
  if (!qword_100CC6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6DE8);
  }

  return result;
}

unint64_t sub_1005A775C()
{
  result = qword_100CC6DF0;
  if (!qword_100CC6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6DF0);
  }

  return result;
}

uint64_t type metadata accessor for LocationComponentBackgroundHeaderDynamicTypeSizeRangeConfigurationValue()
{
  result = qword_100CC6E50;
  if (!qword_100CC6E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A7834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100024D10(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100024D10(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1005A7970(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for ArticleModel()
{
  result = qword_100CC6F88;
  if (!qword_100CC6F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A7BD8()
{
  result = type metadata accessor for Article();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NewsArticle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005A7C4C()
{
  v2 = type metadata accessor for NewsArticle();
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for Article();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_100022E2C();
  type metadata accessor for ArticleModel();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_1005A9030(v0, v12 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100006204();
    sub_1005A91FC(v13, v5, v14);
    v15 = *v5;

    sub_1005A90FC(v5, v6);
  }

  else
  {
    (*(v8 + 32))(v1, v13, v6);
    v15 = Article.id.getter();
    (*(v8 + 8))(v1, v6);
  }

  return v15;
}

uint64_t sub_1005A7DF8()
{
  v1 = v0;
  v2 = type metadata accessor for NewsArticle();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Article();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for ArticleModel();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_1005A9030(v1, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100006204();
    sub_1005A91FC(v17, v6, v18);
    v19 = *(v6 + *(v2 + 48));

    sub_1005A90FC(v6, v7);
  }

  else
  {
    (*(v9 + 32))(v13, v17, v7);
    v19 = Article.alertIds.getter();
    (*(v9 + 8))(v13, v7);
  }

  return v19;
}

uint64_t sub_1005A7FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000)
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

uint64_t sub_1005A8070(char a1)
{
  if (a1)
  {
    return 0x646564616F6CLL;
  }

  else
  {
    return 0x676E6964616F6CLL;
  }
}

uint64_t sub_1005A80A4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v4 = type metadata accessor for NewsArticle();
  __chkstk_darwin(v4 - 8);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Article();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100022E2C();
  type metadata accessor for ArticleModel();
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  sub_10022C350(&qword_100CC6FC0);
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  v22 = *(v21 + 56);
  sub_1005A9030(a1, &v26 - v19);
  sub_1005A9030(v27, &v20[v22]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1005A9030(v20, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1005A91FC(&v20[v22], v7, type metadata accessor for NewsArticle);
      v23 = sub_1008BE2A4(v14, v7);
      sub_1005A90FC(v7, type metadata accessor for NewsArticle);
      sub_1005A90FC(v14, type metadata accessor for NewsArticle);
LABEL_9:
      sub_1005A90FC(v20, type metadata accessor for ArticleModel);
      return v23 & 1;
    }

    sub_1005A90FC(v14, type metadata accessor for NewsArticle);
  }

  else
  {
    sub_1005A9030(v20, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v10 + 32))(v2, &v20[v22], v8);
      v23 = static Article.== infix(_:_:)();
      v24 = *(v10 + 8);
      v24(v2, v8);
      v24(v17, v8);
      goto LABEL_9;
    }

    (*(v10 + 8))(v17, v8);
  }

  sub_1005A9094(v20);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1005A83B8(void *a1)
{
  sub_10022C350(&qword_100CC7000);
  sub_1000037C4();
  v43 = v4;
  v44 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v42 = &v37 - v6;
  v40 = type metadata accessor for NewsArticle();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v41 = v9 - v8;
  sub_10022C350(&qword_100CC7008);
  sub_1000037C4();
  v38 = v11;
  v39 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v37 = type metadata accessor for Article();
  sub_1000037C4();
  v46 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_100022E2C();
  type metadata accessor for ArticleModel();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v47 = sub_10022C350(&qword_100CC7010);
  sub_1000037C4();
  v22 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v37 - v24;
  v26 = a1[4];
  sub_1000161C0(a1, a1[3]);
  sub_1005A9154();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1005A9030(v45, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v41;
    sub_1005A91FC(v20, v41, type metadata accessor for NewsArticle);
    v49 = 1;
    sub_1005A91A8();
    v28 = v42;
    sub_100016BB8();
    sub_1000089A4();
    sub_1005A92B0(v29, v30);
    v31 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v43 + 8))(v28, v31);
    sub_1005A90FC(v27, type metadata accessor for NewsArticle);
  }

  else
  {
    v33 = v37;
    (*(v46 + 32))(v1, v20, v37);
    v48 = 0;
    sub_1005A925C();
    sub_100016BB8();
    sub_1000149AC();
    sub_1005A92B0(v34, v35);
    v36 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v14, v36);
    (*(v46 + 8))(v1, v33);
  }

  return (*(v22 + 8))(v25, v26);
}

uint64_t sub_1005A8844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v69 = sub_10022C350(&qword_100CC6FC8);
  sub_1000037C4();
  v64 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  v66 = &v57 - v5;
  sub_10022C350(&qword_100CC6FD0);
  sub_1000037C4();
  v62 = v7;
  v63 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v65 = &v57 - v9;
  sub_10022C350(&qword_100CC6FD8);
  sub_1000037C4();
  v67 = v11;
  v68 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for ArticleModel();
  sub_1000037E8();
  __chkstk_darwin(v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  __chkstk_darwin(v22);
  v24 = &v57 - v23;
  sub_1000161C0(a1, a1[3]);
  sub_1005A9154();
  v25 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_8;
  }

  v57 = v18;
  v58 = v21;
  v26 = v68;
  v59 = v24;
  v60 = v15;
  v70 = a1;
  v27 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v27, 0);
  if (v30 == v31 >> 1)
  {
LABEL_7:
    v42 = v60;
    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    sub_10022C350(&qword_100CA7610);
    *v45 = v42;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.typeMismatch(_:), v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = sub_10000456C();
    v47(v46, v26);
    a1 = v70;
LABEL_8:
    v48 = a1;
    return sub_100006F14(v48);
  }

  if (v30 < (v31 >> 1))
  {
    v71 = *(v29 + v30);
    sub_100618E7C(v30 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v36 = v26;
      if (v71)
      {
        v73 = 1;
        sub_1005A91A8();
        sub_100074C4C();
        v37 = v59;
        type metadata accessor for NewsArticle();
        sub_1000089A4();
        sub_1005A92B0(v38, v39);
        v40 = v57;
        sub_1000499B8();
        v41 = v67;
        swift_unknownObjectRelease();
        v51 = sub_100019AAC();
        v52(v51);
        (*(v41 + 8))(v14, v36);
      }

      else
      {
        v72 = 0;
        sub_1005A925C();
        sub_100074C4C();
        v37 = v59;
        type metadata accessor for Article();
        sub_1000149AC();
        sub_1005A92B0(v49, v50);
        v40 = v58;
        sub_1000499B8();
        swift_unknownObjectRelease();
        v53 = sub_100019AAC();
        v54(v53);
        v55 = sub_10000456C();
        v56(v55, v36);
      }

      swift_storeEnumTagMultiPayload();
      sub_1005A91FC(v40, v37, type metadata accessor for ArticleModel);
      sub_1005A91FC(v37, v61, type metadata accessor for ArticleModel);
      v48 = v70;
      return sub_100006F14(v48);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A8E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005A7FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005A8E94(uint64_t a1)
{
  v2 = sub_1005A9154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A8ED0(uint64_t a1)
{
  v2 = sub_1005A9154();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A8F0C(uint64_t a1)
{
  v2 = sub_1005A91A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A8F48(uint64_t a1)
{
  v2 = sub_1005A91A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A8F84(uint64_t a1)
{
  v2 = sub_1005A925C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A8FC0(uint64_t a1)
{
  v2 = sub_1005A925C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A9030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A9094(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC6FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A90FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1005A9154()
{
  result = qword_100CC6FE0;
  if (!qword_100CC6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6FE0);
  }

  return result;
}

unint64_t sub_1005A91A8()
{
  result = qword_100CC6FE8;
  if (!qword_100CC6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6FE8);
  }

  return result;
}

uint64_t sub_1005A91FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1005A925C()
{
  result = qword_100CC6FF0;
  if (!qword_100CC6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6FF0);
  }

  return result;
}

uint64_t sub_1005A92B0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ArticleModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1005A93E4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1005A9494()
{
  result = qword_100CC7020;
  if (!qword_100CC7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7020);
  }

  return result;
}

unint64_t sub_1005A94EC()
{
  result = qword_100CC7028;
  if (!qword_100CC7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7028);
  }

  return result;
}

unint64_t sub_1005A9544()
{
  result = qword_100CC7030;
  if (!qword_100CC7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7030);
  }

  return result;
}

unint64_t sub_1005A959C()
{
  result = qword_100CC7038;
  if (!qword_100CC7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7038);
  }

  return result;
}

unint64_t sub_1005A95F4()
{
  result = qword_100CC7040;
  if (!qword_100CC7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7040);
  }

  return result;
}

unint64_t sub_1005A964C()
{
  result = qword_100CC7048;
  if (!qword_100CC7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7048);
  }

  return result;
}

unint64_t sub_1005A96A4()
{
  result = qword_100CC7050;
  if (!qword_100CC7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7050);
  }

  return result;
}

unint64_t sub_1005A96FC()
{
  result = qword_100CC7058;
  if (!qword_100CC7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7058);
  }

  return result;
}

unint64_t sub_1005A9754()
{
  result = qword_100CC7060;
  if (!qword_100CC7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7060);
  }

  return result;
}

uint64_t sub_1005A97B8()
{
  sub_100172120(&qword_100CC7118);

  return ShortDescribable.description.getter();
}

uint64_t sub_1005A9810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1005A986C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005A98D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2)
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

uint64_t sub_1005A99EC(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x7470697263736564;
  }

  return 0xD000000000000018;
}

uint64_t sub_1005A9A4C(void *a1)
{
  v3 = sub_10022C350(&qword_100CC7130);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1005A9ED4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_10000845C();
  if (!v1)
  {
    v10[14] = 1;
    sub_10000845C();
    v10[13] = 2;
    sub_10000845C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1005A9BA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CC7120);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005A9ED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  v25 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_100006F14(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_1005A9DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005A98D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005A9E00(uint64_t a1)
{
  v2 = sub_1005A9ED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A9E3C(uint64_t a1)
{
  v2 = sub_1005A9ED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1005A9E78@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1005A9BA8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1005A9ED4()
{
  result = qword_100CC7128;
  if (!qword_100CC7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7128);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisibilityComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005AA008()
{
  result = qword_100CC7138;
  if (!qword_100CC7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7138);
  }

  return result;
}

unint64_t sub_1005AA060()
{
  result = qword_100CC7140;
  if (!qword_100CC7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7140);
  }

  return result;
}

unint64_t sub_1005AA0B8()
{
  result = qword_100CC7148[0];
  if (!qword_100CC7148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC7148);
  }

  return result;
}

uint64_t sub_1005AA10C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1005AA1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v363 = a6;
  v358 = a4;
  v362 = a3;
  v357 = a2;
  v339 = a1;
  v320 = a7;
  v8 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v8 - 8);
  v299 = v296 - v9;
  v297 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v297);
  sub_100003848();
  v318 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = v296 - v12;
  __chkstk_darwin(v14);
  v16 = v296 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v315 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v314 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v312 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v310 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v308 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v306 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v304 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v302 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v300 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v296[0] = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v296 - v38;
  v40 = *(a5 - 8);
  __chkstk_darwin(v41);
  sub_100003848();
  v319 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v337 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v336 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v335 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v334 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v333 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v331 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v330 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v329 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v316 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v328 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v313 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v69 = v296 - v68;
  __chkstk_darwin(v70);
  sub_100003878();
  v311 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v353 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v309 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v352 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v307 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v351 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v305 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v350 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v303 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v349 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v301 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v348 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v298 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v347 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v296[3] = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v346 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v296[2] = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v345 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v296[1] = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v344 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  v112 = v296 - v111;
  __chkstk_darwin(v113);
  v115 = v296 - v114;
  v361 = type metadata accessor for Optional();
  v322 = *(v361 - 8);
  __chkstk_darwin(v361);
  sub_100003848();
  v326 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v325 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v324 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v343 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v342 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v341 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  v129 = v296 - v128;
  __chkstk_darwin(v130);
  v340 = v296 - v131;
  sub_100566A24(v357, v383);
  v327 = v40;
  v356 = v112;
  v360 = v115;
  v323 = v13;
  v321 = v39;
  v354 = v69;
  v317 = v16;
  if (v384)
  {
    v132 = 1;
  }

  else
  {
    v359 = v383[3];
    v133 = v383[2];
    v134 = v383[1];
    v135 = v383[0];
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_severeAlert, v39);
    v362(v39, v135, v134, v133, v359);
    sub_1001B4354(v39);
    v136 = sub_100007EE8();
    v137 = v363;
    sub_1000833D8(v136, v138, v363);
    v139 = *(v40 + 8);
    v140 = sub_100007EE8();
    v139(v140);
    v141 = sub_100005474();
    sub_1000833D8(v141, v142, v137);
    v143 = sub_100005474();
    v139(v143);
    (*(v40 + 32))(v129, v112, a5);
    v132 = 0;
  }

  v144 = v129;
  v145 = 1;
  sub_100017568(v129, v132);
  sub_100007F30();
  sub_1003E7FD4(v146, v147);
  v148 = v322 + 8;
  v359 = *(v322 + 8);
  v359(v129, v361);
  sub_100566BC8(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_newsArticle, v321);
    v150 = v356;
    sub_10004E364();
    v151();
    sub_1001B4354(v149);
    v152 = sub_100007EE8();
    v153 = v363;
    sub_1000833D8(v152, v154, v363);
    v155 = v327;
    v156 = *(v327 + 8);
    v157 = sub_100007EE8();
    v156(v157);
    v158 = sub_100005480();
    sub_1000833D8(v158, v159, v153);
    v160 = sub_100005480();
    v156(v160);
    v144 = v355;
    (*(v155 + 32))(v355, v150, a5);
    v145 = 0;
  }

  v161 = 1;
  sub_100017568(v144, v145);
  sub_100007F30();
  sub_1003E7FD4(v162, v163);
  v164 = sub_100049604();
  v165(v164);
  v166 = v357;
  sub_100566A40(v357, v386);
  v167 = v321;
  if ((v386[32] & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_airQuality, v321);
    v166 = v357;
    sub_10004E364();
    v168();
    sub_1001B4354(v167);
    v169 = sub_100003A80();
    v170 = v363;
    sub_1000833D8(v169, v171, v363);
    v144 = *(v327 + 8);
    v172 = sub_100003A80();
    (v144)(v172);
    v173 = sub_100005474();
    sub_1000833D8(v173, v174, v170);
    v175 = sub_100005474();
    (v144)(v175);
    v176 = sub_1000280F8();
    v177(v176);
    v161 = 0;
  }

  sub_100017568(v144, v161);
  sub_100007F30();
  sub_1003E7FD4(v178, v179);
  v180 = sub_100049604();
  v181(v180);
  v182 = OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_map;
  v183 = v339;
  swift_beginAccess();
  v184 = v183 + v182;
  v185 = v299;
  sub_10026E174(v184, v299);
  if (sub_100024D10(v185, 1, v297) == 1)
  {
    sub_10026E1E4(v185);
    v186 = 1;
    v187 = v327;
  }

  else
  {
    v188 = v185;
    v189 = v296[0];
    sub_10026E24C(v188, v296[0]);
    sub_100566A5C(v166, v387);
    v187 = v327;
    if (v388)
    {
      sub_1001B4354(v189);
      v186 = 1;
    }

    else
    {
      v362(v189, v387[0], v387[1], v387[2], v387[3]);
      sub_1001B4354(v189);
      v190 = sub_100003A80();
      v191 = v363;
      sub_1000833D8(v190, v192, v363);
      v144 = *(v187 + 8);
      v193 = sub_100003A80();
      (v144)(v193);
      sub_1000833D8(v360, a5, v191);
      (v144)(v360, a5);
      v194 = sub_1000280F8();
      v195(v194);
      v186 = 0;
    }
  }

  v196 = v300;
  sub_100017568(v144, v186);
  sub_100007F30();
  sub_1003E7FD4(v197, v198);
  v199 = sub_100049604();
  v200(v199);
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v196);
  sub_100566A78(v166, v389);
  if (v390)
  {
    goto LABEL_31;
  }

  v362(v196, v389[0], v389[1], v389[2], v389[3]);
  sub_1001B4354(v196);
  sub_100007F30();
  sub_1000833D8(v201, v202, v203);
  v204 = *(v187 + 8);
  v205 = sub_100003A80();
  v204(v205);
  v206 = v302;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v302);
  sub_100566A94(v166, v391);
  if (v391[32])
  {
    goto LABEL_31;
  }

  v207 = sub_100014130();
  v208(v207);
  sub_1001B4354(v206);
  v209 = sub_100005474();
  sub_1000833D8(v209, v210, v363);
  v211 = sub_100005474();
  v204(v211);
  v212 = v304;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v304);
  sub_100566AB0(v166, v392);
  if (v392[32])
  {
    goto LABEL_34;
  }

  v213 = sub_100014130();
  v214(v213);
  sub_1001B4354(v212);
  v215 = sub_100005474();
  sub_1000833D8(v215, v216, v363);
  v217 = sub_100005474();
  v204(v217);
  v218 = v306;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v306);
  sub_100566ACC(v166, v393);
  if (v393[32])
  {
    goto LABEL_31;
  }

  v219 = sub_10002279C();
  v220(v219);
  sub_1001B4354(v218);
  sub_100007F30();
  sub_1000833D8(v221, v222, v223);
  v224 = sub_100003A80();
  v204(v224);
  v225 = v308;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v308);
  sub_100566AE8(v166, v394);
  if (v394[32])
  {
    goto LABEL_34;
  }

  v226 = sub_10002279C();
  v227(v226);
  sub_1001B4354(v225);
  sub_100007F30();
  sub_1000833D8(v228, v229, v230);
  v231 = sub_100003A80();
  v204(v231);
  v232 = v310;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v310);
  sub_100566B04(v166, v395);
  if (v395[32])
  {
    goto LABEL_31;
  }

  v233 = sub_10002279C();
  v234(v233);
  sub_1001B4354(v232);
  sub_100007F30();
  sub_1000833D8(v235, v236, v237);
  v238 = sub_100003A80();
  v204(v238);
  v239 = v312;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v312);
  sub_100566B20(v166, v396);
  if (v396[32])
  {
    goto LABEL_31;
  }

  v240 = sub_100014130();
  v241(v240);
  sub_1001B4354(v239);
  v242 = sub_100005474();
  sub_1000833D8(v242, v243, v363);
  v244 = sub_100005474();
  v204(v244);
  v245 = v314;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v314);
  sub_100566B3C(v166, v397);
  if (v397[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v246 = sub_100014130();
  v247(v246);
  sub_1001B4354(v245);
  v248 = sub_100005474();
  sub_1000833D8(v248, v249, v363);
  v250 = sub_100005474();
  v204(v250);
  v251 = v315;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v315);
  sub_100566B58(v166, &v398);
  if ((v399 & 1) == 0)
  {
    v252 = sub_10002279C();
    v253(v252);
    sub_1001B4354(v251);
    sub_100007F30();
    sub_1000833D8(v254, v255, v256);
    v257 = sub_100003A80();
    v204(v257);
    v258 = v317;
    sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v317);
    sub_100566B74(v166, &v400);
    if ((v401 & 1) == 0)
    {
      v259 = sub_100014130();
      v260(v259);
      sub_1001B4354(v258);
      v261 = sub_100005474();
      sub_1000833D8(v261, v262, v363);
      v263 = sub_100005474();
      v204(v263);
      sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v323);
      sub_100566B90(v166, v402);
      if ((v403 & 1) == 0)
      {
        v264 = v323;
        v362(v323, v402[0], v402[1], v402[2], v402[3]);
        sub_1001B4354(v264);
        v265 = sub_100005474();
        sub_1000833D8(v265, v266, v363);
        v267 = sub_100005474();
        v204(v267);
        v268 = v318;
        sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v318);
        sub_100566BAC(v166, v404);
        if ((v405 & 1) == 0)
        {
          v362(v268, v404[0], v404[1], v404[2], v404[3]);
          sub_1001B4354(v268);
          v269 = sub_100005480();
          v270 = v363;
          sub_1000833D8(v269, v271, v363);
          v272 = sub_100005480();
          v204(v272);
          v273 = *(v322 + 16);
          v274 = v355;
          v275 = v361;
          v273(v355, v340, v361);
          v382[0] = v274;
          v276 = v324;
          v273(v324, v341, v275);
          v382[1] = v276;
          v277 = v325;
          v273(v325, v342, v275);
          v382[2] = v277;
          v278 = v326;
          v273(v326, v343, v275);
          v382[3] = v278;
          v279 = *(v187 + 16);
          v280 = v360;
          v279(v360, v344, a5);
          v382[4] = v280;
          v281 = v356;
          v279(v356, v345, a5);
          v382[5] = v281;
          v282 = v329;
          v279(v329, v346, a5);
          v382[6] = v282;
          v283 = v330;
          v279(v330, v347, a5);
          v382[7] = v283;
          v284 = v331;
          v279(v331, v348, a5);
          v382[8] = v284;
          v285 = v332;
          v279(v332, v349, a5);
          v382[9] = v285;
          v286 = v333;
          v279(v333, v350, a5);
          v382[10] = v286;
          v287 = v334;
          v279(v334, v351, a5);
          v382[11] = v287;
          v288 = v335;
          v279(v335, v352, a5);
          v382[12] = v288;
          v289 = v336;
          v279(v336, v353, a5);
          v382[13] = v289;
          v290 = v337;
          v279(v337, v354, a5);
          v382[14] = v290;
          v291 = v319;
          v279(v319, v328, a5);
          v382[15] = v291;
          v381[0] = v275;
          v381[1] = v275;
          v381[2] = v275;
          v381[3] = v275;
          v381[4] = a5;
          v381[5] = a5;
          v381[6] = a5;
          v381[7] = a5;
          v381[8] = a5;
          v381[9] = a5;
          v381[10] = a5;
          v381[11] = a5;
          v381[12] = a5;
          v381[13] = a5;
          v381[14] = a5;
          v381[15] = a5;
          v364 = v270;
          WitnessTable = swift_getWitnessTable();
          v366 = WitnessTable;
          v367 = WitnessTable;
          v368 = WitnessTable;
          v369 = v270;
          v370 = v270;
          v371 = v270;
          v372 = v270;
          v373 = v270;
          v374 = v270;
          v375 = v270;
          v376 = v270;
          v377 = v270;
          v378 = v270;
          v379 = v270;
          v380 = v270;
          sub_10012E24C(v382, 16, v381);
          v292 = sub_100005480();
          v204(v292);
          (v204)(v354, a5);
          (v204)(v353, a5);
          (v204)(v352, a5);
          (v204)(v351, a5);
          (v204)(v350, a5);
          (v204)(v349, a5);
          (v204)(v348, a5);
          (v204)(v347, a5);
          (v204)(v346, a5);
          (v204)(v345, a5);
          (v204)(v344, a5);
          v293 = v359;
          v359(v343, v275);
          v293(v342, v275);
          v293(v341, v275);
          v293(v340, v275);
          v294 = sub_100007EE8();
          v204(v294);
          (v204)(v337, a5);
          (v204)(v336, a5);
          (v204)(v335, a5);
          (v204)(v334, a5);
          (v204)(v333, a5);
          (v204)(v332, a5);
          (v204)(v331, a5);
          (v204)(v330, a5);
          (v204)(v329, a5);
          (v204)(v356, a5);
          (v204)(v360, a5);
          v293(v326, v275);
          v293(v325, v275);
          v293(v324, v275);
          return (v293)(v355, v275);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005ABB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v52 = type metadata accessor for ViewState(0) - 8;
  __chkstk_darwin(v52);
  sub_1000038E4();
  v50 = v5;
  v48 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v47 = v7;
  v8 = type metadata accessor for TimeState();
  __chkstk_darwin(v8 - 8);
  sub_1000038E4();
  v55 = v9;
  type metadata accessor for Location();
  sub_1000037C4();
  v44 = v11;
  v45 = v10;
  __chkstk_darwin(v10);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v49 = v14;
  __chkstk_darwin(v15);
  sub_1000038E4();
  v54 = v16;
  v17 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v17 - 8);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v20);
  v23 = &v41[-v22];
  (*(v2 + 16))(v57, v21);
  v24 = v57[0];
  v25 = v57[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v26 = type metadata accessor for LocationsState();
  v56 = a1;

  v46 = v23;
  sub_1008DC1EC();

  (*(v44 + 16))(v13, a1, v45);
  sub_1005AC2E8(v23, v19);
  LocationModel.init(location:locationOfInterest:isPredictedLocation:)();
  v45 = sub_1000161C0((v3 + 48), *(v3 + 72));
  v27 = *(v25 + *(v26 + 36));
  sub_100086340(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v55, type metadata accessor for TimeState);
  LODWORD(v44) = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v28 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v43 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v29 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v30 = *(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v31 = v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v42 = *(v31 + *(type metadata accessor for EnvironmentState() + 40));
  v32 = v47;
  sub_100086340(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v47, type metadata accessor for ModalViewState);
  LODWORD(v48) = swift_getEnumCaseMultiPayload() == 0;

  sub_1000DFF90(v32, type metadata accessor for ModalViewState);
  LOBYTE(v25) = *(v31 + 3) == 4;
  v33 = v50;
  sub_100086340(v24 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v50, type metadata accessor for ViewState);
  v34 = *(v33 + *(v52 + 44) + 8);
  sub_1000DFF90(v33, type metadata accessor for ViewState);
  v40 = v34;
  v39 = v25;
  v35 = v54;
  v36 = v55;
  sub_10052CECC(v54, v27, v55, v28, v53, v29, v30, v42, 0, 0, 1u, v48, v39, v40);

  (*(v49 + 8))(v35, v51);
  sub_1005AC358(v46);
  type metadata accessor for Date();
  sub_1000037E8();
  return (*(v37 + 8))(v36);
}

uint64_t sub_1005AC0CC()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationOfInterest.location.getter();
  Location.identifier.getter();
  (*(v8 + 8))(v10, v7);
  Location.identifier.getter();
  v11 = static Location.Identifier.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  return v11 & 1;
}

uint64_t sub_1005AC2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005AC358(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA3588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005AC3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v85 = a2;
  v84 = type metadata accessor for EnvironmentValues();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CC7278);
  __chkstk_darwin(v4);
  v6 = &v76 - v5;
  v7 = sub_10022C350(&qword_100CC7280);
  __chkstk_darwin(v7);
  v9 = &v76 - v8;
  v10 = sub_10022C350(&qword_100CC7288);
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v13 = static Edge.Set.top.getter();
  v14 = *v2;
  v15 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v15 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v80 = v2;
    v78 = v14;
    v77 = v10;
    v16 = static Log.runtimeIssuesLog.getter();
    v79 = v12;
    v17 = v16;
    v18 = v86;
    v81 = v7;
    v20 = v83;
    v19 = v84;
    v2 = v80;
    os_log(_:dso:log:_:_:)();

    v12 = v79;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    v21 = v20;
    v7 = v81;
    v22 = v19;
    v10 = v77;
    (*(v18 + 8))(v21, v22);
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_10022C350(&qword_100CC7290);
  (*(*(v31 - 8) + 16))(v6, v82, v31);
  v32 = &v6[*(v4 + 36)];
  *v32 = v13;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = static Edge.Set.bottom.getter();
  v34 = static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v34 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v81 = v7;
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v83;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    v37 = v36;
    v7 = v81;
    (*(v86 + 8))(v37, v84);
  }

  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1005AD458(v6, v9, &qword_100CC7278);
  v46 = &v9[*(v7 + 36)];
  *v46 = v33;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = static Edge.Set.leading.getter();
  v48 = static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v48 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v83;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    (*(v86 + 8))(v50, v84);
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1005AD458(v9, v12, &qword_100CC7280);
  v59 = &v12[*(v10 + 36)];
  *v59 = v47;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = static Edge.Set.trailing.getter();
  v61 = static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v61 && (v2[40] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    v63 = v83;
    v64 = v62;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005ACB10(v2);
    (*(v86 + 8))(v63, v84);
  }

  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v85;
  sub_1005AD458(v12, v85, &qword_100CC7288);
  result = sub_10022C350(&qword_100CC7298);
  v75 = v73 + *(result + 36);
  *v75 = v60;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  return result;
}

uint64_t sub_1005ACB40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_1005ACB80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1005ACC44()
{
  result = qword_100CC72B8;
  if (!qword_100CC72B8)
  {
    sub_10022E824(&qword_100CC7278);
    sub_1005AD678(&qword_100CC72C0, &qword_100CC7290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC72B8);
  }

  return result;
}

uint64_t sub_1005ACD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v82 = type metadata accessor for EnvironmentValues();
  v84 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC72C8);
  __chkstk_darwin(v5);
  v7 = &v76 - v6;
  v8 = sub_10022C350(&qword_100CC72D0);
  __chkstk_darwin(v8);
  v10 = &v76 - v9;
  v11 = sub_10022C350(&qword_100CC72D8);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  LODWORD(v80) = static Edge.Set.top.getter();
  v14 = *v2;
  v15 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v15 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v78 = v14;
    v77 = v11;
    v16 = static Log.runtimeIssuesLog.getter();
    v79 = v13;
    v17 = v16;
    v18 = v84;
    v76 = a1;
    v19 = v81;
    v20 = v82;
    os_log(_:dso:log:_:_:)();

    v13 = v79;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    v21 = v19;
    v22 = v20;
    a1 = v76;
    v11 = v77;
    (*(v18 + 8))(v21, v22);
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_10022C350(&qword_100CC72E0);
  (*(*(v31 - 8) + 16))(v7, a1, v31);
  v32 = &v7[*(v5 + 36)];
  *v32 = v80;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = static Edge.Set.bottom.getter();
  v34 = static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v34 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v80 = v8;
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v81;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    v37 = v36;
    v8 = v80;
    (*(v84 + 8))(v37, v82);
  }

  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1005AD458(v7, v10, &qword_100CC72C8);
  v46 = &v10[*(v8 + 36)];
  *v46 = v33;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = static Edge.Set.leading.getter();
  v48 = static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v48 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v81;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    (*(v84 + 8))(v50, v82);
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1005AD458(v10, v13, &qword_100CC72D0);
  v59 = &v13[*(v11 + 36)];
  *v59 = v47;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = static Edge.Set.trailing.getter();
  v61 = static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v61 && (v2[48] & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    v63 = v81;
    v64 = v62;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1005AD4C0(v2);
    (*(v84 + 8))(v63, v82);
  }

  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v83;
  sub_1005AD458(v13, v83, &qword_100CC72D8);
  result = sub_10022C350(&qword_100CC72E8);
  v75 = v73 + *(result + 36);
  *v75 = v60;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  return result;
}

uint64_t sub_1005AD458(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10022C350(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005AD550(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005AD5D4()
{
  result = qword_100CC7308;
  if (!qword_100CC7308)
  {
    sub_10022E824(&qword_100CC72C8);
    sub_1005AD678(&qword_100CC7310, &qword_100CC72E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7308);
  }

  return result;
}

uint64_t sub_1005AD678(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005AD6CC@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));

  sub_10022C350(&qword_100CA4DF0);
  sub_1005AD760();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1005AD760()
{
  result = qword_100CA4DF8;
  if (!qword_100CA4DF8)
  {
    sub_10022E824(&qword_100CA4DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4DF8);
  }

  return result;
}

uint64_t sub_1005AD7C4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005AD824(a2);
  }

  return result;
}

void sub_1005AD824(void *a1)
{
  v2 = [a1 rootViewController];
  if (v2)
  {
    v9 = v2;
    v3 = sub_1005ADA48(v2);
    if (v3)
    {
      v4 = v3;
      sub_1000161C0((v1 + 16), *(v1 + 40));
      type metadata accessor for DebugNavigationController();
      v5 = dispatch thunk of ResolverType.resolve<A>(_:)();
      if (v5)
      {
        v6 = v5;
        [v5 setModalPresentationStyle:2];
        [v6 setModalInPresentation:1];
        [v4 presentViewController:v6 animated:1 completion:0];

        v7 = v4;
        v4 = v6;
      }

      else
      {
        v7 = v9;
      }

      v8 = v4;
    }

    else
    {
      v8 = v9;
    }
  }
}

void sub_1005AD938()
{
  v0 = [objc_opt_self() sharedApplication];
  oslog = UIApplication.maybeWindow.getter();

  if (oslog)
  {
    sub_1005AD824(oslog);
  }

  else
  {
    if (qword_100CA2778 != -1)
    {
      sub_100014454();
    }

    v1 = type metadata accessor for Logger();
    sub_10000703C(v1, qword_100D90CC0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      *swift_slowAlloc() = 0;
      sub_10001C688(&_mh_execute_header, v3, v4, "unable to present debug menu because we have no window", v5, v6, v7, v8, v9, oslog);
    }
  }
}

void *sub_1005ADA48(void *a1)
{
  type metadata accessor for DebugNavigationController();
  v2 = [a1 isKindOfClass:swift_getObjCClassFromMetadata()];
  result = 0;
  if ((v2 & 1) == 0)
  {
    v4 = [a1 presentedViewController];
    if (v4)
    {
      v5 = v4;
      a1 = sub_1005ADA48();
    }

    else
    {
      v6 = a1;
    }

    return a1;
  }

  return result;
}

unint64_t sub_1005ADAD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C446E0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005ADB20(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7261656C63;
      break;
    case 2:
      result = 0x7964756F6C63;
      break;
    case 3:
      result = 0x6C43796C74736F6DLL;
      break;
    case 4:
      result = 1852399986;
      break;
    case 5:
      result = 0x537265646E756874;
      break;
    case 6:
      result = 0x7453657265766573;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1005ADC18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005ADAD4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005ADC48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005ADB20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1005ADC74(uint64_t a1)
{
  v2 = sub_1004B5414();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_1005ADCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B5414();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1005ADD24(uint64_t a1)
{
  v2 = sub_1004B5414();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

uint64_t sub_1005ADD78()
{
  v1 = type metadata accessor for Domain();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10001F198();
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10022C350(&qword_100CC74A8);
  (*(v7 + 104))(v11, enum case for Access.protected(_:), v5);
  sub_10022C350(&qword_100CC74B0);
  sub_10022C350(&qword_100CC74B8);
  *(swift_allocObject() + 16) = xmmword_100A3F990;
  sub_100019ABC();
  sub_100019ABC();
  sub_100019ABC();
  sub_100019ABC();
  sub_100019ABC();
  sub_100019ABC();
  sub_100019ABC();
  (*(v3 + 104))(v0, enum case for Domain.standard(_:), v1);
  sub_1005AE528();
  result = Setting<>.init(_:defaultValue:domain:access:options:)();
  qword_100D90458 = result;
  return result;
}

uint64_t sub_1005AE0E8()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Domain();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Domain.standard(_:));
  (*(v2 + 104))(v6, enum case for Access.public(_:), v0);
  sub_10022C350(&qword_100CAFFD8);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90460 = result;
  return result;
}

void sub_1005AE280()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90468 = sub_100004594();
  sub_1000212EC();
}

void sub_1005AE3D4()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90470 = sub_100004594();
  sub_1000212EC();
}

unint64_t sub_1005AE528()
{
  result = qword_100CC74C0;
  if (!qword_100CC74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC74C0);
  }

  return result;
}

void sub_1005AE57C()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90498 = sub_100004594();
  sub_1000212EC();
}

_BYTE *_s15PerformanceTestV24StubWeatherDataConditionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005AE7BC()
{
  result = qword_100CC74C8;
  if (!qword_100CC74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC74C8);
  }

  return result;
}

uint64_t sub_1005AE814(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2290 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA22A0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2298 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2288 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2280 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1005AE980(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v7);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v8);
  v77 = &v73 - v9;
  v10 = sub_10022C350(&qword_100CA5008);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  v14 = type metadata accessor for LocationComponentViewModel();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  __chkstk_darwin(v20);
  v22 = &v73 - v21;
  __chkstk_darwin(v23);
  v25 = &v73 - v24;
  __chkstk_darwin(v26);
  v28 = &v73 - v27;
  v29 = sub_10022C350(&qword_100CAC7F8);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  v34 = &v73 - v33;
  __chkstk_darwin(v35);
  v37 = &v73 - v36;
  v38 = sub_1005AE814(a1, a2);
  v39 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v13, &qword_100CA5008);
  v40 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v13, 1, v40) == 1)
  {
    sub_1000180EC(v13, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v13[v41], v25, v42);
    sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v25, v28, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v28, v34, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v34[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v28, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v34, v44, 1, v45);
  sub_1003168DC(v34, v37);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_airQuality, v22, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v22, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v19, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v19, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v37, v49, &qword_100CAC7F8), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v37, &qword_100CAC7F8);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005AF010(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v134 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v139 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v13 = sub_10022C350(&qword_100CAC7F0);
    v14 = *(v7 + 72);
    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 80);
    v17 = v13;
    v18 = swift_allocObject();
    sub_10001361C(v18, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v19, v18 + v15, v20);
    *(v12 + 32) = sub_1001B38A0(v18);
    *(v12 + 40) = v21;
    *(v12 + 48) = v22;
    v23 = sub_100017AFC();
    sub_1000045B4(v23);
    sub_10000CCC0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v18);
    *(v12 + 64) = v24;
    *(v12 + 72) = v25;
    v26 = sub_100017AFC();
    sub_1000045B4(v26);
    sub_10000CCC0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_newsArticle);
    *(v12 + 80) = sub_1001B38A0(v18);
    *(v12 + 88) = v27;
    *(v12 + 96) = v28;
    v29 = sub_100017AFC();
    sub_1000045B4(v29);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v18 + v15, v7);
    *(v12 + 104) = sub_1001B38A0(v18);
    *(v12 + 112) = v30;
    *(v12 + 120) = v31;
    v32 = sub_100017AFC();
    sub_1000045B4(v32);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v18 + v15, v7);
    *(v12 + 128) = sub_1001B38A0(v18);
    *(v12 + 136) = v33;
    *(v12 + 144) = v34;
    v138 = v16;
    v35 = swift_allocObject();
    sub_1000045B4(v35);
    sub_10000CCC0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_airQuality);
    *(v12 + 152) = sub_1001B38A0(v18);
    *(v12 + 160) = v36;
    *(v12 + 168) = v37;
    v38 = swift_allocObject();
    v39 = sub_10001361C(v38, xmmword_100A2D320) + v15;
    v40 = *(a1 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v135 = v14;
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v39[v14], v7);
    *(v12 + 176) = sub_1001B38A0(v38);
    *(v12 + 184) = v41;
    *(v12 + 192) = v42;
    v136 = v15 + 2 * v14;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v15;
    v46 = v139;
    v47 = *(v139 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v45 + v14, v7);
    *(v12 + 200) = sub_1001B38A0(v38);
    *(v12 + 208) = v48;
    *(v12 + 216) = v49;
    v137 = v17;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v15;
    v53 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v54 = v135;
    sub_10031694C(v53 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v52 + v135, v7);
    *(v12 + 224) = sub_1001B38A0(v38);
    *(v12 + 232) = v55;
    *(v12 + 240) = v56;
    v57 = swift_allocObject();
    sub_1000056EC(v57);
    v59 = v58 + v15;
    v60 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v60 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v59 + v54, v7);
    *(v12 + 248) = sub_1001B38A0(v38);
    *(v12 + 256) = v61;
    *(v12 + 264) = v62;
    v63 = swift_allocObject();
    sub_100003E18(v63);
    v65 = v64 + v15;
    v66 = *(v139 + 16);
    sub_10031694C(v66 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v64 + v15, v7);
    sub_10031694C(v66 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v65 + v54, v7);
    *(v12 + 272) = sub_1001B38A0(v63);
    *(v12 + 280) = v67;
    *(v12 + 288) = v68;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A55560;
    v69 = sub_10022C350(&qword_100CAC7F0);
    v70 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v71 = *(v7 + 72);
    v72 = *(v7 + 80);
    v73 = v69;
    v74 = swift_allocObject();
    sub_10001361C(v74, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v75, v74 + v70, v76);
    *(v12 + 32) = sub_1001B38A0(v74);
    *(v12 + 40) = v77;
    *(v12 + 48) = v78;
    sub_1000167B0();
    v79 = swift_allocObject();
    sub_1000056EC(v79);
    sub_1000208C0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v74);
    *(v12 + 64) = v80;
    *(v12 + 72) = v81;
    sub_1000167B0();
    v82 = swift_allocObject();
    sub_1000056EC(v82);
    sub_1000208C0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_newsArticle);
    *(v12 + 80) = sub_1001B38A0(v74);
    *(v12 + 88) = v83;
    *(v12 + 96) = v84;
    sub_1000167B0();
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v74 + v70, v7);
    *(v12 + 104) = sub_1001B38A0(v74);
    *(v12 + 112) = v86;
    *(v12 + 120) = v87;
    sub_1000167B0();
    v88 = swift_allocObject();
    sub_1000056EC(v88);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v74 + v70, v7);
    *(v12 + 128) = sub_1001B38A0(v74);
    *(v12 + 136) = v89;
    *(v12 + 144) = v90;
    sub_1000167B0();
    v91 = swift_allocObject();
    sub_1000056EC(v91);
    sub_1000208C0(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_airQuality);
    *(v12 + 152) = sub_1001B38A0(v74);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v138 = v72;
    v94 = swift_allocObject();
    sub_1000056EC(v94);
    sub_10031694C(v9, v95 + v70, v7);
    *(v12 + 176) = sub_1001B38A0(v74);
    *(v12 + 184) = v96;
    *(v12 + 192) = v97;
    v98 = v70 + 2 * v71;
    v99 = v71;
    sub_1000167B0();
    v100 = swift_allocObject();
    v101 = sub_10001361C(v100, xmmword_100A2D320);
    v137 = v9;
    v102 = v101 + v70;
    v103 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v134 = v99;
    sub_10031694C(v103 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v102[v99], v7);
    *(v12 + 200) = sub_1001B38A0(v100);
    *(v12 + 208) = v104;
    *(v12 + 216) = v105;
    v135 = v98;
    v106 = swift_allocObject();
    sub_100003E18(v106);
    v108 = v107 + v70;
    v109 = v139;
    v110 = *(v139 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v110 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v108 + v99, v7);
    *(v12 + 224) = sub_1001B38A0(v106);
    *(v12 + 232) = v111;
    *(v12 + 240) = v112;
    sub_1000167B0();
    v136 = v73;
    v113 = swift_allocObject();
    sub_100003E18(v113);
    v115 = v114 + v70;
    v116 = *(v109 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v117 = v134;
    sub_10031694C(v116 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v115 + v134, v7);
    *(v12 + 248) = sub_1001B38A0(v113);
    *(v12 + 256) = v118;
    *(v12 + 264) = v119;
    sub_1000167B0();
    v120 = v135;
    v121 = swift_allocObject();
    sub_100003E18(v121);
    v123 = v122 + v70;
    v124 = *(v109 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v124 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v123 + v117, v7);
    *(v12 + 272) = sub_1001B38A0(v121);
    *(v12 + 280) = v125;
    *(v12 + 288) = v126;
    v127 = swift_allocObject();
    sub_1000045B4(v127);
    v129 = v128 + v70;
    v130 = *(v139 + 16);
    sub_10031694C(v130 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v128 + v70, v7);
    sub_10031694C(v130 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v129 + v117, v7);
    *(v12 + 296) = sub_1001B38A0(v120);
    *(v12 + 304) = v131;
    *(v12 + 312) = v132;
    sub_1003169AC(v137, v7);
  }

  return v12;
}

void sub_1005AF958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BC30;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A63E00;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A63E10;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBF0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BC40;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBF0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A63E20;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A63E00;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBD0;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BB90;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BBC0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBB0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC00;
  v36 = v11;
  v37 = v10;
  v38 = &v9;
  v39 = &v8;
  sub_100024880(a1, a2, a3, a4, a5, a6, a7, a8, 0, 1, 11, 12, 0, 1, 13, 14, 0, 1, 10, 11);
}

void sub_1005AFA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BC30;
  v23[0] = xmmword_100A2C3F0;
  v23[1] = xmmword_100A3BBF0;
  v25[0] = v24;
  v25[1] = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A63E10;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC00;
  v25[2] = v22;
  v25[3] = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3BC40;
  v19[0] = xmmword_100A2C3F0;
  v19[1] = xmmword_100A3BC00;
  v25[4] = v20;
  v25[5] = v19;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BBF0;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBD0;
  v25[6] = v18;
  v25[7] = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A2C3F0;
  v15[0] = xmmword_100A2C3F0;
  v15[1] = xmmword_100A3BBC0;
  v25[8] = v16;
  v25[9] = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC10;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBB0;
  v25[10] = v14;
  v25[11] = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC20;
  v25[12] = v12;
  v25[13] = &v11;
  v25[14] = &v10;
  v25[15] = &v9;
  sub_1005592E4(v25, a2, a3, a4, a5, a6, a7, a8, 0, 1, 9, 10, 0, 1, 11, 12, 0, 1, 8, 9);
  qword_100D904A8 = v8;
}

void sub_1005AFBC8()
{
  v48 = vdupq_n_s64(4uLL);
  v47 = 2;
  v49 = 5;
  v46[0] = xmmword_100A3BC40;
  v46[1] = xmmword_100A3BC30;
  v50 = &v47;
  v51 = v46;
  v45[0] = xmmword_100A3BB70;
  v45[1] = xmmword_100A3BBA0;
  v44[0] = xmmword_100A2C3F0;
  v44[1] = xmmword_100A3BB80;
  v52 = v45;
  v53 = v44;
  v42[0] = 0;
  v42[1] = 4;
  v43 = xmmword_100A3BBD0;
  v41[0] = xmmword_100A3BBB0;
  v41[1] = xmmword_100A3BC30;
  v54 = v42;
  v55 = v41;
  v39 = xmmword_100A3F980;
  v38 = 2;
  v40 = 2;
  v37[0] = xmmword_100A3BBB0;
  v37[1] = xmmword_100A3BB80;
  v56 = &v38;
  v57 = v37;
  v35[0] = 2;
  v35[1] = 4;
  v36 = xmmword_100A3BC40;
  v33[0] = 0;
  v33[1] = 2;
  v34 = xmmword_100A2C3F0;
  v58 = v35;
  v59 = v33;
  v32[0] = xmmword_100A3BBD0;
  v32[1] = xmmword_100A3BC30;
  *(&v30 + 1) = 4;
  v31 = xmmword_100A3BB80;
  sub_10000EB78(v32, v18, v19, v20, v21, v22[0], v22[1], v22[2], v22[3], v23[0], v23[1], v23[2], v23[3], v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v27, v28, v29, 3);
  v24 = v0;
  v25 = xmmword_100A3BC50;
  v60 = v1;
  v61 = &v24;
  v62 = v23;
  v63 = v22;
  sub_100024880(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v12, v13, v14, v15, v10, v11, v16, v17, 5, 6);
}

void sub_1005AFD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[0] = xmmword_100A2D320;
  v26[1] = xmmword_100A3BC40;
  v25[0] = xmmword_100A3BC40;
  v25[1] = xmmword_100A3BB80;
  v27[0] = v26;
  v27[1] = v25;
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3AEB0;
  v23[0] = xmmword_100A2C3F0;
  v23[1] = xmmword_100A3BC50;
  v27[2] = v24;
  v27[3] = v23;
  v20 = 0;
  v21 = xmmword_100A3BC70;
  v22 = 2;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BB80;
  v27[4] = &v20;
  v27[5] = v19;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC50;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v27[6] = v18;
  v27[7] = v17;
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A3BBB0;
  v15[0] = xmmword_100A3BBD0;
  v15[1] = xmmword_100A3BB80;
  v27[8] = v16;
  v27[9] = v15;
  v14[0] = xmmword_100A3BC40;
  v14[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBB0;
  v27[10] = v14;
  v27[11] = v13;
  v12[0] = xmmword_100A3BC40;
  v12[1] = xmmword_100A3BC60;
  v27[12] = v12;
  v27[13] = &v11;
  v27[14] = &v10;
  v27[15] = &v9;
  sub_1005592E4(v27, a2, a3, a4, a5, a6, a7, a8, 2, 3, 5, 6, 1, 2, 6, 7, 2, 3, 4, 5);
  qword_100D904B8 = v8;
}

void sub_1005AFE48()
{
  v38[0] = xmmword_100A2D320;
  v38[1] = xmmword_100A2C3F0;
  v37[0] = xmmword_100A3BC50;
  v37[1] = xmmword_100A3BC60;
  v39 = v38;
  v40 = v37;
  v36[0] = xmmword_100A3BB70;
  v36[1] = xmmword_100A3AEB0;
  v35[0] = xmmword_100A3BC40;
  v35[1] = xmmword_100A3BC60;
  v41 = v36;
  v42 = v35;
  v34[0] = xmmword_100A3BB70;
  v34[1] = xmmword_100A2C3F0;
  v33[0] = xmmword_100A3BC50;
  v33[1] = xmmword_100A3BC40;
  v43 = v34;
  v44 = v33;
  v32[0] = xmmword_100A3BC90;
  v32[1] = xmmword_100A3BB70;
  v31[0] = xmmword_100A3BBD0;
  v31[1] = xmmword_100A3BC60;
  v45 = v32;
  v46 = v31;
  v30[0] = xmmword_100A2D320;
  v30[1] = xmmword_100A3BBD0;
  v29[0] = xmmword_100A2D320;
  v29[1] = xmmword_100A3BBB0;
  v47 = v30;
  v48 = v29;
  v28[0] = xmmword_100A3BC60;
  v28[1] = xmmword_100A3BC60;
  *(&v26 + 1) = 6;
  v27 = xmmword_100A3BBD0;
  sub_10000EB78(v28, v14, v15, v16, v17, v18[0], v18[1], v18[2], v18[3], v19[0], v19[1], v19[2], v19[3], v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, 5);
  v20 = v0;
  v21 = v0;
  v49 = v1;
  v50 = &v20;
  v51 = v19;
  v52 = v18;
  sub_100024880(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v10, v11, v0, *(&v0 + 1), v12, v13, v0, *(&v0 + 1));
}

uint64_t sub_1005AFF60(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v49 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  sub_100003878();
  v48 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_100003878();
  v47 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v46 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v45 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v43 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v23 = type metadata accessor for LocationViewComponent();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA5008);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  v42 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v32 = &v40 - v31;

  sub_1005D71C4(v33, a2);
  v44 = v34;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_map, v26, type metadata accessor for LocationViewComponent);
  a2(v26);
  sub_10002C87C();
  v41 = v32;
  sub_10001B350(v32, 0, 1, v4);
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_airQuality);
  v40 = v22;
  a2(v26);
  sub_10002C87C();
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_newsArticle);
  v35 = v19;
  a2(v26);
  sub_10002C87C();
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_nextHourPrecipitation);
  v36 = v43;
  a2(v26);
  sub_10002C87C();
  sub_10004E738(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_severeAlert);
  v37 = v45;
  a2(v26);
  sub_10002C87C();
  sub_100035AD0(v32, v42, &qword_100CA5008);
  sub_10031694C(v22, v46, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v35, v47, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v36, v48, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v37, v49, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereNhpNewsContent._Storage(0);
  swift_allocObject();
  v38 = sub_1002D9B78();
  sub_1003169AC(v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v35, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v40, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v41, &qword_100CA5008);
  return v38;
}

uint64_t sub_1005B037C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  sub_100386B2C(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100024D10(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10003FDF4(v11, &qword_100CA3538);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = sub_10002FF54();

      sub_10003FDF4(a3, &qword_100CA3538);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10003FDF4(a3, &qword_100CA3538);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return sub_10002FF54();
}

uint64_t sub_1005B05D4()
{
  v14 = v0;
  if (qword_100CA26C0 != -1)
  {
    sub_10001F1B4();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90AA8);
  sub_100037034();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220);
    v8 = String.init<A>(describing:)();
    v10 = sub_100078694(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't get home and work location due to error:%{public}s", v6, 0xCu);
    sub_100006F14(v7);

    sub_10000FC14();
  }

  else
  {
  }

  sub_100003B14();

  return v11();
}

uint64_t sub_1005B0780()
{
  sub_100008188();
  sub_100006248();
  *(*(v0 + 88) + 208) = 0;

  sub_100003B14();

  return v1();
}

uint64_t sub_1005B0824()
{
  v2 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_100031DD4();
  sub_1000061CC(v4);
  sub_100018450();
  v5 = swift_allocObject();
  sub_10001854C(v5);
  v6 = sub_10000EB8C();
  sub_1005B037C(v6, v7, v0, v8, v1);
}

uint64_t sub_1005B08C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006D0B0;

  return sub_1000E34AC();
}

uint64_t sub_1005B0954()
{

  sub_100006F14(v0 + 128);
  sub_100006F14(v0 + 168);

  sub_100006F14(v0 + 224);
  sub_100006F14(v0 + 264);
  sub_100006F14(v0 + 304);
  sub_100006F14(v0 + 344);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1005B09B4()
{
  sub_1005B0954();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005B0A10()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  if (qword_100CA26C0 != -1)
  {
    sub_10001F1B4();
  }

  v6 = type metadata accessor for Logger();
  sub_10000703C(v6, qword_100D90AA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch weather data for locations of interest due to savedLocations did update.", v9, 2u);
    sub_10000FC14();
  }

  v10 = type metadata accessor for TaskPriority();
  sub_10001B350(v5, 1, 1, v10);
  sub_100018450();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_10000EB8C();
  sub_1006C0138();
}

uint64_t sub_1005B0BA4()
{
  sub_100003B08();
  sub_1000E426C();
  sub_100003B14();

  return v0();
}

uint64_t sub_1005B0C00()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  sub_10000622C(v1);

  return sub_1005B08C4();
}

uint64_t sub_1005B0C8C()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1005B0B84(v3, v4, v5, v6);
}

uint64_t sub_1005B0D1C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CB6198);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  type metadata accessor for UnitConfiguration.Temperature();
  sub_10000548C();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  sub_1005B3C14(a1, v13);
  sub_10000554C(v13);
  if (v20)
  {
    sub_10003FDF4(v13, &qword_100CB6198);
    sub_100003934();
    sub_10001B350(v21, v22, v23, v2);
    v24 = sub_1005B0FF4();
    sub_1005B3BB8(v9);
  }

  else
  {
    (*(v15 + 32))(v19, v13, v2);
    v25 = [objc_opt_self() mainBundle];
    v36._object = 0x8000000100AD6070;
    v26._countAndFlagsBits = 0xD000000000000036;
    v26._object = 0x8000000100AD6010;
    v27._object = 0x8000000100AD6050;
    v27._countAndFlagsBits = 0xD000000000000017;
    v36._countAndFlagsBits = 0x10000000000000A0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v36);

    sub_10022C350(&qword_100CA40C8);
    v28 = swift_allocObject();
    v29 = v28;
    *(v28 + 16) = xmmword_100A2C3F0;
    if (a2)
    {
      v30 = UnitConfiguration.Temperature.description.getter();
    }

    else
    {
      v30 = UnitConfiguration.Temperature.symbol.getter();
    }

    v32 = v30;
    v33 = v31;
    v29[7] = &type metadata for String;
    v29[8] = sub_100035744();
    v29[4] = v32;
    v29[5] = v33;
    v24 = String.init(format:_:)();

    (*(v15 + 8))(v19, v2);
  }

  return v24;
}

uint64_t sub_1005B0FF4()
{
  v2 = v1;
  type metadata accessor for UnitConfiguration.Temperature();
  sub_10000548C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_1005B3B54(v2, v12 - v11);
  sub_10000554C(v13);
  if (v14)
  {
    v15 = [objc_opt_self() mainBundle];
    v25._object = 0x8000000100AD5F20;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    v16._object = 0x8000000100AD5ED0;
    v17._object = 0x8000000100AD5F00;
    v25._countAndFlagsBits = 0xD000000000000052;
    v17._countAndFlagsBits = 0xD000000000000012;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v25)._countAndFlagsBits;
  }

  else
  {
    (*(v4 + 32))(v8, v13, v0);
    v18 = UnitConfiguration.Temperature.description.getter();
    v20 = v19;
    v21 = UnitConfiguration.Temperature.symbol.getter();
    countAndFlagsBits = sub_1005B3500(v18, v20, v21, v22);

    (*(v4 + 8))(v8, v0);
  }

  return countAndFlagsBits;
}

uint64_t sub_1005B11F8()
{
  v2 = v1;
  type metadata accessor for UnitConfiguration.Temperature();
  sub_10000548C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  sub_1005B3B54(v2, &v23 - v15);
  sub_10000554C(v16);
  if (v17)
  {
    sub_100003934();
    sub_10001B350(v18, v19, v20, v0);
    v21 = sub_1005B0FF4();
    sub_1005B3BB8(v13);
  }

  else
  {
    (*(v4 + 32))(v8, v16, v0);
    v21 = UnitConfiguration.Temperature.description.getter();
    (*(v4 + 8))(v8, v0);
  }

  return v21;
}

uint64_t sub_1005B1374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB63F0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v114 - v10;
  v12 = sub_10022C350(&qword_100CB6418);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003C38();
  v125 = (v14 - v15);
  __chkstk_darwin(v16);
  v18 = &v114 - v17;
  v19 = sub_10022C350(&qword_100CB63D0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003C38();
  v127 = (v21 - v22);
  __chkstk_darwin(v23);
  v128 = &v114 - v24;
  v25 = sub_10022C350(&qword_100CB63E0);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003C38();
  v29 = (v27 - v28);
  __chkstk_darwin(v30);
  v129 = &v114 - v31;
  v32 = sub_10022C350(&qword_100CB63C0);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003C38();
  v126 = (v34 - v35);
  __chkstk_darwin(v36);
  v38 = &v114 - v37;
  v130 = *(a1 + 48);
  if (!*(a1 + 56))
  {
    switch(v130)
    {
      case 1:
        sub_100019AD8();
        sub_1005B211C(v113);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      case 2:
        sub_100019AD8();
        sub_1005B2620(v111);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      case 3:
        sub_100019AD8();
        sub_1005B2B24(v112);
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
        UnitManager.systemWideTemperatureUnit.getter();

        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      case 4:
        sub_100019AD8();
        sub_1005B2FFC(v110);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
      default:
        sub_100019AD8();
        sub_1005B1C18(v97);
        type metadata accessor for UnitsConfigurationViewModel.Representation(0);
        sub_100003E0C();
        break;
    }

    goto LABEL_22;
  }

  if (*(a1 + 56) != 1)
  {
    sub_1005B1C18(a2);
    v98 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
    sub_1005B211C((a2 + v98[5]));
    sub_1005B2620((a2 + v98[6]));
    sub_1005B2B24((a2 + v98[7]));
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
    UnitManager.systemWideTemperatureUnit.getter();

    sub_1005B2FFC((a2 + v98[8]));
    static UnitManager.standard.getter();
    v99 = UnitManager.hasPreferredUnits.getter();

    v100 = *(a1 + 57);
    *(a2 + v98[9]) = (v99 & 1) == 0;
    *(a2 + v98[10]) = v100;
    type metadata accessor for UnitsConfigurationViewModel.Representation(0);
    sub_100003E0C();
LABEL_22:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for UnitsConfigurationViewModel(0);
    sub_10000E7B0();

    return sub_10001B350(v101, v102, v103, v104);
  }

  v120 = v29;
  v121 = v8;
  sub_10022C350(&qword_100CB6058);
  v122 = v38;
  sub_100003934();
  v119 = v39;
  sub_10001B350(v40, v41, v42, v39);
  sub_10022C350(&qword_100CB6038);
  sub_100003934();
  v118 = v43;
  sub_10001B350(v44, v45, v46, v43);
  sub_10022C350(&qword_100CB6028);
  sub_100003934();
  v117 = v47;
  sub_10001B350(v48, v49, v50, v47);
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  v123 = v18;
  sub_100003934();
  v116 = v51;
  sub_10001B350(v52, v53, v54, v51);
  sub_10022C350(&qword_100CB5FF0);
  v124 = v11;
  sub_100003934();
  v115 = v55;
  sub_10001B350(v56, v57, v58, v55);
  v59 = v130 + 56;
  v60 = 1 << *(v130 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v130 + 56);
  v63 = (v60 + 63) >> 6;

  for (i = 0; v62; i = v66)
  {
    v66 = i;
LABEL_10:
    v67 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    switch(*(*(v130 + 48) + (v67 | (v66 << 6))))
    {
      case 1:
        v92 = v120;
        sub_1005B211C(v120);
        v93 = v129;
        sub_10003FDF4(v129, &qword_100CB63E0);
        sub_10000E7B0();
        sub_10001B350(v94, v95, v96, v118);
        v73 = v92;
        v74 = v93;
        v75 = &qword_100CB63E0;
        break;
      case 2:
        v81 = v127;
        sub_1005B2620(v127);
        v82 = v128;
        sub_10003FDF4(v128, &qword_100CB63D0);
        sub_10000E7B0();
        sub_10001B350(v83, v84, v85, v117);
        v73 = v81;
        v74 = v82;
        v75 = &qword_100CB63D0;
        break;
      case 3:
        v86 = v125;
        sub_1005B2B24(v125);
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        v87 = v116;
        UnitManager.systemWideTemperatureUnit.getter();

        v88 = v123;
        sub_10003FDF4(v123, &qword_100CB6418);
        sub_10000E7B0();
        sub_10001B350(v89, v90, v91, v87);
        v73 = v86;
        v74 = v88;
        v75 = &qword_100CB6418;
        break;
      case 4:
        v76 = v121;
        sub_1005B2FFC(v121);
        v77 = v124;
        sub_10003FDF4(v124, &qword_100CB63F0);
        sub_10000E7B0();
        sub_10001B350(v78, v79, v80, v115);
        v73 = v76;
        v74 = v77;
        v75 = &qword_100CB63F0;
        break;
      default:
        v68 = v126;
        sub_1005B1C18(v126);
        v69 = v122;
        sub_10003FDF4(v122, &qword_100CB63C0);
        sub_10000E7B0();
        sub_10001B350(v70, v71, v72, v119);
        v73 = v68;
        v74 = v69;
        v75 = &qword_100CB63C0;
        break;
    }

    result = sub_1005AD458(v73, v74, v75);
  }

  while (1)
  {
    v66 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v66 >= v63)
    {

      sub_1005AD458(v122, a2, &qword_100CB63C0);
      v105 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
      sub_1005AD458(v129, a2 + v105[5], &qword_100CB63E0);
      sub_1005AD458(v128, a2 + v105[6], &qword_100CB63D0);
      sub_1005AD458(v123, a2 + v105[7], &qword_100CB6418);
      sub_1005AD458(v124, a2 + v105[8], &qword_100CB63F0);
      type metadata accessor for UnitsConfigurationViewModel.Representation(0);
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for UnitsConfigurationViewModel(0);
      sub_10000E7B0();
      return sub_10001B350(v106, v107, v108, v109);
    }

    v62 = *(v59 + 8 * v66);
    ++i;
    if (v62)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005B1C18@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6180);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.Distance();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availableDistanceUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredDistanceUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, &qword_100CB6180);
    static UnitManager.standard.getter();
    UnitManager.visibility.getter();

    UnitConfiguration.Distance.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, &qword_100CB6180);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.visibility.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for distance. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DF9EC(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.Distance.miles(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, &qword_100CB6180);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB6058);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B211C@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6188);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.Precipitation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availablePrecipitationUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredPrecipitationUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, &qword_100CB6188);
    static UnitManager.standard.getter();
    UnitManager.precipitationRainfall.getter();

    UnitConfiguration.Precipitation.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, &qword_100CB6188);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.precipitationRainfall.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for precipitation. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DFA04(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.Precipitation.inches(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, &qword_100CB6188);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB6038);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B2620@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6190);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.Pressure();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availablePressureUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredPressureUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, &qword_100CB6190);
    static UnitManager.standard.getter();
    UnitManager.pressure.getter();

    UnitConfiguration.Pressure.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, &qword_100CB6190);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.pressure.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for pressure. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DFA1C(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.Pressure.millibars(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, &qword_100CB6190);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB6028);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B2B24@<X0>(void *a1@<X8>)
{
  v42 = a1;
  v1 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v1 - 8);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v35 - v4;
  v5 = sub_10022C350(&qword_100CC7688);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v40 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v37 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v13 = UnitManager.availableTemperatureUnits.getter();

  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = v7;
    v46 = _swiftEmptyArrayStorage;
    sub_1006A7D6C();
    v15 = v46;
    v16 = type metadata accessor for UnitConfiguration.Temperature();
    v17 = *(v16 - 8);
    v18 = *(v17 + 16);
    v44 = v17 + 16;
    v45 = v18;
    v19 = *(v17 + 80);
    v35 = v13;
    v20 = v13 + ((v19 + 32) & ~v19);
    v43 = *(v17 + 72);
    do
    {
      v45(v12, v20, v16);
      sub_10001B350(v12, 0, 1, v16);
      v46 = v15;
      v21 = v15[2];
      if (v21 >= v15[3] >> 1)
      {
        sub_1006A7D6C();
        v15 = v46;
      }

      v15[2] = v21 + 1;
      v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      sub_1005B3AF0(v12, v15 + v22 + *(v8 + 72) * v21);
      v20 += v43;
      --v14;
    }

    while (v14);

    v7 = v36;
  }

  else
  {

    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = _swiftEmptyArrayStorage;
  }

  sub_10022C350(&qword_100CC7690);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100A2C3F0;
  v24 = type metadata accessor for UnitConfiguration.Temperature();
  v25 = 1;
  sub_10001B350(v23 + v22, 1, 1, v24);
  v46 = v15;
  sub_10035DA80(v23);
  v26 = v46;
  static UnitManager.standard.getter();
  v27 = v38;
  UnitManager.preferredTemperatureUnit.getter();

  v28 = v39;
  sub_1005AD458(v27, v39, &qword_100CB6198);
  if (sub_100024D10(v28, 1, v24) != 1)
  {
    (*(*(v24 - 8) + 32))(v7, v28, v24);
    sub_10001B350(v7, 0, 1, v24);
    v25 = 0;
  }

  v29 = v40;
  sub_10001B350(v7, v25, 1, v40);
  if (sub_100024D10(v7, 1, v29) == 1)
  {
    v30 = v41;
    sub_10001B350(v41, 1, 1, v24);
    v31 = sub_100024D10(v7, 1, v29);
    v32 = v42;
    if (v31 != 1)
    {
      sub_10003FDF4(v7, &qword_100CC7688);
    }
  }

  else
  {
    v30 = v41;
    sub_1005B3AF0(v7, v41);
    v32 = v42;
  }

  *v32 = v26;
  v33 = sub_10022C350(&qword_100CB6170);
  return sub_1005B3AF0(v30, v32 + *(v33 + 36));
}

uint64_t sub_1005B2FFC@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Logger();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(qword_100CB61A0);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UnitConfiguration.WindSpeed();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v19 = UnitManager.availableWindSpeedUnits.getter();

  static UnitManager.standard.getter();
  UnitManager.preferredWindUnit.getter();

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_10003FDF4(v11, qword_100CB61A0);
    static UnitManager.standard.getter();
    UnitManager.windSpeed.getter();

    UnitConfiguration.WindSpeed.init(_:)();
    if (sub_100024D10(v8, 1, v12) == 1)
    {
      sub_10003FDF4(v8, qword_100CB61A0);
      static Logger.locale.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v22;
        v37 = swift_slowAlloc();
        v42 = v37;
        *v22 = 136315138;
        v36 = v21;
        static UnitManager.standard.getter();
        v23 = UnitManager.windSpeed.getter();

        v24 = [v23 symbol];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_100078694(v25, v27, &v42);

        v29 = v35;
        *(v35 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v20, v36, "Encountered unsupported selectable unit for wind. unit=%s", v29, 0xCu);
        sub_100006F14(v37);
      }

      (*(v39 + 8))(v3, v40);
      v30 = v38;
      sub_1003DFA34(v19, v38);
      if (sub_100024D10(v30, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, enum case for UnitConfiguration.WindSpeed.milesPerHour(_:), v12);
        if (sub_100024D10(v30, 1, v12) != 1)
        {
          sub_10003FDF4(v30, qword_100CB61A0);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v30, v12);
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = v11;
  }

  v31 = *(v13 + 32);
  v31(v18, v15, v12);
  v32 = v41;
  *v41 = v19;
  v33 = sub_10022C350(&qword_100CB5FF0);
  return (v31)(v32 + *(v33 + 36), v18, v12);
}

uint64_t sub_1005B3500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainBundle];
  v15._object = 0x8000000100AD5FA0;
  v9._countAndFlagsBits = 0x29402528204025;
  v10._object = 0x8000000100AD5F80;
  v15._countAndFlagsBits = 0xD000000000000065;
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v8, v9, v15);

  sub_10022C350(&qword_100CA40C8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2D320;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_100035744();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;

  v13 = static String.localizedStringWithFormat(_:_:)();

  return v13;
}

uint64_t sub_1005B36B8(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75C8, &type metadata accessor for UnitConfiguration.Distance);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3760(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75D0, &type metadata accessor for UnitConfiguration.Precipitation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3808(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75D8, &type metadata accessor for UnitConfiguration.Pressure);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B38AC(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75E0, &type metadata accessor for UnitConfiguration.Temperature);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3908(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1();
  v5 = v4;
  v6 = a2();
  v8 = sub_1005B3500(v3, v5, v6, v7);

  return v8;
}

uint64_t sub_1005B39CC(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CC75E8, &type metadata accessor for UnitConfiguration.WindSpeed);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3A50(uint64_t a1)
{
  result = sub_1005B3AA8(&qword_100CB67B8, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3AA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B3AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B3B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B3BB8(uint64_t a1)
{
  v2 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005B3C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB6198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005B3C84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C447A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005B3CD0(unsigned __int8 a1)
{
  if (a1)
  {
    return sub_1000316BC(a1);
  }

  else
  {
    return 0x72656874616577;
  }
}

unint64_t sub_1005B3D38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005B3C84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005B3D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005B3CD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1005B3D94(uint64_t a1, unint64_t a2)
{

  Atomic.wrappedValue.getter();

  if (v21 == 1)
  {
    sub_1000A7CB4();
    v5 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100071538();
    if (sub_1000867CC())
    {
      v6 = sub_100018264();
      sub_1000205BC();
      sub_100040C04();
      *v6 = 136446210;
      *(v6 + 4) = sub_1000C87A8(v7);
      sub_10004E754();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_100006F14(v2);
      sub_10000EBB0();
      sub_100016BD8();
    }
  }

  sub_1000D3ED4();
  Atomic.wrappedValue.setter();

  sub_1000A7CB4();

  v13 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100071538();

  if (sub_1000867CC())
  {
    v14 = sub_100011450();
    sub_10003A270();
    sub_100040C04();
    *v14 = 136380931;
    v15 = sub_100078694(a1, a2, &v21);
    *(v14 + 4) = v15;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1000C87A8(v15);
    sub_10004E754();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    swift_arrayDestroy();
    sub_10000EBB0();
    sub_100016BD8();
  }
}

_BYTE *storeEnumTagSinglePayload for WeatherDataUpdateRequestLog.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005B4038()
{
  result = qword_100CC7798;
  if (!qword_100CC7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7798);
  }

  return result;
}

uint64_t sub_1005B408C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = *(a1 + 24);
  v12 = *(a1 + 64);
  v18 = *(a1 + 56);
  v13 = *(a1 + 16);
  sub_1002EE904(*a1, v8, v13);

  v14 = DeviceIsSlow() ^ 1;
  v15 = static Color.primary.getter();
  v16 = *(type metadata accessor for TipView(0) + 32);
  *(a7 + v16) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  *(a7 + 32) = v9;
  *(a7 + 40) = v8;
  *(a7 + 48) = v13;
  *(a7 + 56) = v20;
  *(a7 + 64) = v10;
  *(a7 + 72) = v19;
  *(a7 + 80) = v11;
  *(a7 + 88) = v18;
  *(a7 + 96) = v12;
  *a7 = v14;
  *(a7 + 8) = 0x4040800000000000;
  *(a7 + 16) = v15;
  *(a7 + 24) = a2;
  *(a7 + 25) = 1;
  *(a7 + 104) = a3;
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 128) = a6;
}

void sub_1005B421C()
{
  sub_1005B42A4();
  if (v0 <= 0x3F)
  {
    sub_10000DA84();
    if (v1 <= 0x3F)
    {
      sub_10000DAAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1005B42A4()
{
  if (!qword_100CC7A88)
  {
    v0 = type metadata accessor for DetailCondition();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC7A88);
    }
  }
}

uint64_t sub_1005B4334()
{
  result = type metadata accessor for Navigate.Destination(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005B43A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for Navigate.Destination(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for Navigate(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005B44A0, v4, v3);
}

uint64_t sub_1005B44A0()
{
  v21 = v0;

  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_10000703C(v3, qword_100D90CF0);
  sub_1005B4CAC(v2, v1, type metadata accessor for Navigate);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    sub_1005B4CAC(v7, v8, type metadata accessor for Navigate.Destination);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10001F1D4();
    v14 = sub_100078694(v11, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Performing Navigate instruction: %{public}s", v9, 0xCu);
    sub_100006F14(v10);
  }

  else
  {

    sub_10001F1D4();
  }

  v15 = v0[2];
  v16 = v0[3];
  if (*(v16 + *(v0[6] + 20)) == 1)
  {
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  else
  {
    sub_1005B4754(v0[2]);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005B4754(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailCondition();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MainAction();
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Navigate.Destination(0);
  __chkstk_darwin(v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005B4CAC(v2, v15, type metadata accessor for Navigate.Destination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = *v15;
      v26 = *(a1 + 16);
      *v12 = v27;
      type metadata accessor for PerformanceTestAction();
      goto LABEL_6;
    case 2u:
      v29 = *v15;
      v19 = sub_10022C350(&unk_100CD8210);
      v20 = *(v15 + *(v19 + 64));
      v21 = v30;
      v22 = v31;
      (*(v30 + 32))(v6, v15 + *(v19 + 48), v31);
      v23 = *(a1 + 16);
      v24 = *(v19 + 48);
      v25 = *(v19 + 64);
      *v12 = v29;
      (*(v21 + 16))(&v12[v24], v6, v22);
      v12[v25] = v20;
      type metadata accessor for PerformanceTestAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_10004F034(v12, &v32, v23);
      sub_1000E17D8(&v32);
      sub_1005B4D14(v12, type metadata accessor for MainAction);
      result = (*(v21 + 8))(v6, v22);
      break;
    case 3u:
      v26 = *(a1 + 16);
      type metadata accessor for PerformanceTestAction();
LABEL_6:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_10004F034(v12, &v32, v26);
      sub_1000E17D8(&v32);
      result = sub_1005B4D14(v12, type metadata accessor for MainAction);
      break;
    default:
      v16 = v29;
      (*(v29 + 32))(v9, v15, v7);
      v17 = *(a1 + 16);
      (*(v16 + 16))(v12, v9, v7);
      type metadata accessor for PerformanceTestAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_10004F034(v12, &v32, v17);
      sub_1000E17D8(&v32);
      sub_1005B4D14(v12, type metadata accessor for MainAction);
      result = (*(v16 + 8))(v9, v7);
      break;
  }

  return result;
}

uint64_t sub_1005B4BF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000926F8;

  return sub_1005B43A8(a1);
}

uint64_t sub_1005B4CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B4D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005B4DB8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for Font.Leading();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for UVIndexComponentView();
  sub_10009ECC8();
  (*(v9 + 104))(v11, enum case for ContentSizeCategory.extraExtraLarge(_:), v8);
  v16 = sub_1005B51FC(v14, v11);
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  v18 = v1 + *(v15 + 28);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (!v16)
  {
    if (v20)
    {
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v19, 0);
      (*(v26 + 8))(v7, v27);
      if (v32 == 1)
      {
        goto LABEL_11;
      }
    }

    static Font.subheadline.getter();
    goto LABEL_13;
  }

  if (!v20)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v19, 0);
    (*(v26 + 8))(v7, v27);
    if (v31 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    static Font.footnote.getter();
    goto LABEL_13;
  }

  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.caption2.getter();
LABEL_13:
  type metadata accessor for UVIndexComponentViewModel();
  v24 = v28;
  v23 = v29;
  (*(v28 + 104))(v4, enum case for Font.Leading.tight(_:), v29);

  Font.leading(_:)();

  (*(v24 + 8))(v4, v23);
  WeatherDescription.formatted(font:color:)();
}

BOOL sub_1005B51FC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = *(v5 + 16);
  v13(&v21 - v11, a2, v3, v10);
  v14 = *(v5 + 88);
  v15 = v14(v12, v3);
  v16 = 0;
  v17 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v15 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v15 == enum case for ContentSizeCategory.small(_:))
    {
      v16 = 1;
      goto LABEL_24;
    }

    if (v15 == enum case for ContentSizeCategory.medium(_:))
    {
      v16 = 2;
      goto LABEL_24;
    }

    if (v15 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v16 = 4;
    }

    else if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v16 = 5;
    }

    else if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v16 = 6;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v16 = 7;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v16 = 8;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v16 = 9;
    }

    else if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v16 = 10;
    }

    else
    {
      if (v15 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v5 + 8))(v12, v3);
LABEL_7:
        v16 = 3;
        goto LABEL_24;
      }

      v16 = 11;
    }
  }

LABEL_24:
  (v13)(v8, v22, v3);
  v18 = v14(v8, v3);
  if (v18 == v17)
  {
    v19 = 0;
  }

  else if (v18 == enum case for ContentSizeCategory.small(_:))
  {
    v19 = 1;
  }

  else if (v18 == enum case for ContentSizeCategory.medium(_:))
  {
    v19 = 2;
  }

  else
  {
    if (v18 != enum case for ContentSizeCategory.large(_:))
    {
      if (v18 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v19 = 4;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v19 = 5;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v19 = 6;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v19 = 7;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v19 = 8;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v19 = 9;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v19 = 10;
        return v16 < v19;
      }

      if (v18 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v19 = 11;
        return v16 < v19;
      }

      (*(v5 + 8))(v8, v3);
    }

    v19 = 3;
  }

  return v16 < v19;
}

uint64_t sub_1005B5608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v60 = v9;
  v61 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  v57 = sub_10022C350(&qword_100CC7BF8);
  sub_1000037E8();
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v58 = sub_10022C350(&qword_100CC7C00);
  sub_1000037C4();
  v56 = v16;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v59 = sub_10022C350(&qword_100CC7C08);
  sub_1000037E8();
  __chkstk_darwin(v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v62 = &v53 - v24;
  v25 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v32 = *(type metadata accessor for UVIndexComponentView() + 20);
    v55 = v2;
    v33 = v2 + v32;
    v34 = *v33;
    if (v33[8] != 1)
    {

      static os_log_type_t.fault.getter();
      v53 = v7;
      v37 = static Log.runtimeIssuesLog.getter();
      v54 = a1;
      v38 = v37;
      v7 = v53;
      os_log(_:dso:log:_:_:)();

      a1 = v54;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v34, 0);
      (*(v27 + 8))(v31, v25);
      LOBYTE(v34) = v64;
    }

    v36 = dbl_100A644F0[v34];
    v35 = dbl_100A64508[v34];
    v2 = v55;
  }

  else
  {
    v35 = -4.0;
    v36 = 2.0;
  }

  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v39 = sub_10022C350(&qword_100CC7C10);
  sub_1005B5BA8(v2, &v15[*(v39 + 44)], v35, v36);
  static AccessibilityChildBehavior.ignore.getter();
  v40 = sub_1005B6DEC();
  v41 = v57;
  View.accessibilityElement(children:)();
  (*(v60 + 8))(v12, v61);
  sub_1000180EC(v15, &qword_100CC7BF8);
  v64 = v41;
  v65 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v58;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v56 + 8))(v19, v42);
  v64 = sub_1009A0F10();
  v65 = v43;
  sub_10002D5A4();
  v44 = Text.init<A>(_:)();
  v46 = v45;
  v48 = v47;
  v49 = v62;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10010CD64(v44, v46, v48 & 1);

  sub_1000180EC(v22, &qword_100CC7C08);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v50 = a1 + *(sub_10022C350(&qword_100CC7C20) + 36);
  v51 = type metadata accessor for AutomationInfoProperty();
  sub_1003AFC6C(v7, v50 + *(v51 + 24));
  *v50 = 0;
  *(v50 + 8) = 0xE000000000000000;
  *(v50 + 16) = swift_getKeyPath();
  *(v50 + 24) = 0;
  sub_1001FBCB4(v49, a1);
  sub_1001C9E84(v7);
  return sub_1000180EC(v49, &qword_100CC7C08);
}

uint64_t sub_1005B5BA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v152 = a2;
  v7 = type metadata accessor for AttributedString();
  __chkstk_darwin(v7 - 8);
  v121 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContentSizeCategory();
  v146 = *(v9 - 8);
  v147 = v9;
  __chkstk_darwin(v9);
  v145 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v144 = &v117 - v12;
  v143 = sub_10022C350(&qword_100CB5E30);
  __chkstk_darwin(v143);
  v151 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v157 = &v117 - v15;
  v16 = type metadata accessor for Font.TextStyle();
  v138 = *(v16 - 8);
  v139 = v16;
  __chkstk_darwin(v16);
  v137 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10022C350(&qword_100CC7C28);
  __chkstk_darwin(v141);
  v142 = &v117 - v18;
  v19 = sub_10022C350(&qword_100CB5E28);
  v149 = *(v19 - 8);
  v150 = v19;
  __chkstk_darwin(v19);
  v148 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v155 = &v117 - v22;
  v154 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v158 = *(v154 - 8);
  __chkstk_darwin(v154);
  KeyPath = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v24 - 8);
  v136 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v117 - v27;
  v29 = type metadata accessor for EnvironmentValues();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v33 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
  __dst[0] = *a1;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
  LocalizedStringKey.init(stringInterpolation:)();
  v36 = Text.init(_:tableName:bundle:comment:)();
  v133 = v37;
  v134 = v36;
  v39 = v38;
  v135 = v40;
  v41 = static Font.largeTitle.getter();
  v127 = static Font.title2.getter();
  v140 = type metadata accessor for UVIndexComponentView();
  v42 = *(v140 + 28);
  v156 = a1;
  v43 = a1 + v42;
  v44 = *v43;
  v128 = v43[8];
  v118 = v32;
  v119 = v30;
  v120 = v29;
  v132 = v44;
  if (v128 != 1)
  {

    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v44, 0);
    (*(v30 + 8))(v32, v29);
    LOBYTE(v44) = __dst[0];
  }

  v46 = enum case for Font.Leading.tight(_:);
  v47 = type metadata accessor for Font.Leading();
  v48 = *(v47 - 8);
  v49 = *(v48 + 104);
  v131 = v46;
  v129 = v48 + 104;
  v130 = v49;
  v49(v28, v46, v47);
  v126 = v47;
  sub_10001B350(v28, 0, 1, v47);
  v50 = v136;
  sub_100035AD0(v28, v136, &qword_100CACFF0);

  v51 = v127;

  sub_1001C987C(v41, v51, v44 & 1, v50);
  v52 = v134;
  LOBYTE(v47) = v39;
  v53 = v133;
  v136 = v28;
  v54 = Text.font(_:)();
  v124 = v55;
  v125 = v54;
  v57 = v56;
  v59 = v58;

  sub_10010CD64(v52, v53, v47 & 1);

  sub_1000180EC(v136, &qword_100CACFF0);
  v60 = KeyPath;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v61 = v125;
  v62 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v134 = v63;
  v135 = v62;
  LODWORD(v133) = v64;
  v136 = v65;
  sub_10010CD64(v61, v57, v59 & 1);

  v66 = *(v158 + 8);
  v158 += 8;
  v127 = v66;
  v66(v60, v154);
  v67 = v156[3];
  __dst[0] = v156[2];
  __dst[1] = v67;
  sub_10002D5A4();

  v68 = Text.init<A>(_:)();
  v123 = v69;
  v124 = v68;
  v122 = v70;
  v125 = v71;
  v73 = v137;
  v72 = v138;
  v74 = v139;
  (*(v138 + 104))(v137, enum case for Font.TextStyle.title3(_:), v139);
  static Font.Weight.semibold.getter();
  v75 = static Font.system(_:weight:)();
  (*(v72 + 8))(v73, v74);
  v76 = static Font.headline.getter();
  if (v128)
  {
    v77 = v132;
    v175 = v132 & 1;
  }

  else
  {
    v78 = v132;

    static os_log_type_t.fault.getter();
    v79 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v80 = v118;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v78, 0);
    (*(v119 + 8))(v80, v120);
    v77 = v175;
  }

  v81 = v142;
  v82 = &v142[*(v141 + 36)];
  v83 = type metadata accessor for FontWithSmallVariantModifier();
  v84 = *(v83 + 24);
  v85 = v126;
  v130(v82 + v84, v131, v126);
  sub_10001B350(v82 + v84, 0, 1, v85);
  *v82 = v75;
  v82[1] = v76;
  *(v82 + *(v83 + 28)) = v77 & 1;
  v86 = v123;
  *v81 = v124;
  *(v81 + 8) = v86;
  *(v81 + 16) = v122 & 1;
  *(v81 + 24) = v125;
  *(v81 + 32) = 0;
  *(v81 + 40) = a3;
  v87 = KeyPath;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1005B6E50();
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v127(v87, v154);
  sub_1000180EC(v81, &qword_100CC7C28);
  v88 = v156;
  if (qword_100CA2908 != -1)
  {
    swift_once();
  }

  static Color.white.getter();
  v89 = v157;
  HorizontalBarPointView.init(point:pointColor:gradient:)();
  v90 = v140;
  sub_10022C350(&qword_100CBB750);
  ScaledValue.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v91 = v144;
  v92 = (v89 + *(v143 + 36));
  v93 = v177;
  *v92 = v176;
  v92[1] = v93;
  v92[2] = v178;
  sub_10009ECC8();
  v95 = v145;
  v94 = v146;
  v96 = v147;
  (*(v146 + 104))(v145, enum case for ContentSizeCategory.extraExtraLarge(_:), v147);
  v97 = sub_1005B69D0(v91, v95);
  v98 = *(v94 + 8);
  v98(v95, v96);
  v98(v91, v96);
  if (v97)
  {
    goto LABEL_9;
  }

  v105 = v88 + *(v90 + 24);
  v106 = *v105;
  if (*(v105 + 8) == 1)
  {
    if (v106)
    {
      goto LABEL_14;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v107 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v108 = v118;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v106, 0);
    (*(v119 + 8))(v108, v120);
    if (__dst[0])
    {
LABEL_14:
      v158 = 0;
      v156 = 0;
      KeyPath = 0;
      v154 = 0;
      v144 = 0;
      v145 = 0;
      v146 = 0;
      v147 = 0;
      v104 = 0;
      goto LABEL_15;
    }
  }

LABEL_9:
  sub_1005B4DB8(v121);
  v158 = Text.init(_:)();
  v156 = v99;
  v101 = v100;
  v154 = v102;
  KeyPath = swift_getKeyPath();
  v103 = swift_getKeyPath();
  LOBYTE(__dst[0]) = v101 & 1;
  LOBYTE(v159[0]) = 0;
  v104 = v101 & 1;
  v146 = 0;
  v147 = v103;
  v145 = 0x3FE4CCCCCCCCCCCDLL;
  v144 = 3;
LABEL_15:
  v164 = v135;
  v165 = v134;
  v166 = v133 & 1;
  v167 = v136;
  v168 = &v164;
  v110 = v148;
  v109 = v149;
  v111 = v155;
  v112 = v150;
  (*(v149 + 16))(v148, v155, v150);
  v162 = a4;
  v163 = 0;
  v169 = v110;
  v170 = &v162;
  v113 = v157;
  v114 = v151;
  sub_100035AD0(v157, v151, &qword_100CB5E30);
  v160 = a4;
  v161 = 0;
  v171 = v114;
  v172 = &v160;
  v159[0] = v158;
  v159[1] = v156;
  v159[2] = v104;
  v159[3] = v154;
  v159[4] = KeyPath;
  v159[5] = v144;
  v159[6] = v146;
  v159[7] = v147;
  v159[8] = v145;
  v173 = v159;
  sub_1003E8F10();
  sub_1000180EC(v113, &qword_100CB5E30);
  v115 = *(v109 + 8);
  v115(v111, v112);
  memcpy(__dst, v159, sizeof(__dst));
  sub_1000180EC(__dst, &qword_100CB5E38);
  sub_1000180EC(v114, &qword_100CB5E30);
  v115(v110, v112);
  sub_10010CD64(v164, v165, v166);
}

BOOL sub_1005B69D0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_1005B6DEC()
{
  result = qword_100CC7C18;
  if (!qword_100CC7C18)
  {
    sub_10022E824(&qword_100CC7BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7C18);
  }

  return result;
}

unint64_t sub_1005B6E50()
{
  result = qword_100CC7C30;
  if (!qword_100CC7C30)
  {
    sub_10022E824(&qword_100CC7C28);
    sub_100322A14();
    sub_1005B70C0(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7C30);
  }

  return result;
}

unint64_t sub_1005B6F0C()
{
  result = qword_100CC7C38;
  if (!qword_100CC7C38)
  {
    sub_10022E824(&qword_100CC7C20);
    sub_1005B6FC8();
    sub_1005B70C0(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7C38);
  }

  return result;
}

unint64_t sub_1005B6FC8()
{
  result = qword_100CC7C40;
  if (!qword_100CC7C40)
  {
    sub_10022E824(&qword_100CC7C08);
    sub_10022E824(&qword_100CC7BF8);
    sub_1005B6DEC();
    swift_getOpaqueTypeConformance2();
    sub_1005B70C0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7C40);
  }

  return result;
}

uint64_t sub_1005B70C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005B7108()
{
  if (!qword_100CC7CC8)
  {
    type metadata accessor for Location();
    type metadata accessor for SelectedSearchResult();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CC7CC8);
    }
  }
}

uint64_t sub_1005B717C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5164657261656C63 && a2 == 0xEC00000079726575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766965636572 && a2 == 0xED0000726F727245;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465766965636572 && a2 == 0xEF73746C75736552;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465686372616573 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6944646570706174 && a2 == 0xED0000776569566DLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F4C646570706174 && a2 == 0xEE006E6F69746163;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x8000000100AD6350 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x8000000100AD6370 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65536C65636E6163 && a2 == 0xEC00000068637261;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x8000000100ABA8F0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x8000000100AD6330 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x8000000100AD6310 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001DLL && 0x8000000100AD62F0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x8000000100AD62D0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x8000000100AD62B0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x8000000100AD6290 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000010 && 0x8000000100AD6270 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
      }
    }
  }
}

unint64_t sub_1005B769C(char a1)
{
  result = 0x5164657261656C63;
  switch(a1)
  {
    case 1:
    case 2:
      v4 = 0x766965636572;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 3:
      v4 = 0x686372616573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 4:
      return 0x6944646570706174;
    case 5:
      return 0x6F4C646570706174;
    case 6:
      return 0xD000000000000018;
    case 7:
      return 0xD000000000000014;
    case 8:
      return 0x65536C65636E6163;
    case 9:
    case 13:
      return 0xD000000000000011;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0xD000000000000012;
    case 12:
      v3 = 13;
      goto LABEL_7;
    case 14:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005B78AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100AC7B60 == a2)
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

uint64_t sub_1005B7974(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1005B79A4(uint64_t a1)
{
  v2 = sub_1005BBD30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B79E0(uint64_t a1)
{
  v2 = sub_1005BBD30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7A1C(uint64_t a1)
{
  v2 = sub_1005BBB8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7A58(uint64_t a1)
{
  v2 = sub_1005BBB8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7A94(uint64_t a1)
{
  v2 = sub_1005BBAE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7AD0(uint64_t a1)
{
  v2 = sub_1005BBAE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7B0C(uint64_t a1)
{
  v2 = sub_1005BBFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7B48(uint64_t a1)
{
  v2 = sub_1005BBFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005B717C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005B7BB4(uint64_t a1)
{
  v2 = sub_1005BBA3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7BF0(uint64_t a1)
{
  v2 = sub_1005BBA3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7C2C(uint64_t a1)
{
  v2 = sub_1005BBA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7C68(uint64_t a1)
{
  v2 = sub_1005BBA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7CA4(uint64_t a1)
{
  v2 = sub_1005BBC88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7CE0(uint64_t a1)
{
  v2 = sub_1005BBC88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7D1C(uint64_t a1)
{
  v2 = sub_1005BBCDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7D58(uint64_t a1)
{
  v2 = sub_1005BBCDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7D94(uint64_t a1)
{
  v2 = sub_1005BBF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7DD0(uint64_t a1)
{
  v2 = sub_1005BBF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7E0C(uint64_t a1)
{
  v2 = sub_1005BBF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7E48(uint64_t a1)
{
  v2 = sub_1005BBF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7E84(uint64_t a1)
{
  v2 = sub_1005BBBE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7EC0(uint64_t a1)
{
  v2 = sub_1005BBBE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7EFC(uint64_t a1)
{
  v2 = sub_1005BBB38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7F38(uint64_t a1)
{
  v2 = sub_1005BBB38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7F74(uint64_t a1)
{
  v2 = sub_1005BBED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B7FB0(uint64_t a1)
{
  v2 = sub_1005BBED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B7FEC(uint64_t a1)
{
  v2 = sub_1005BBE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B8028(uint64_t a1)
{
  v2 = sub_1005BBE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B806C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005B78AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005B8094(uint64_t a1)
{
  v2 = sub_1005BBE2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B80D0(uint64_t a1)
{
  v2 = sub_1005BBE2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B810C(uint64_t a1)
{
  v2 = sub_1005BBDD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B8148(uint64_t a1)
{
  v2 = sub_1005BBDD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B8184(uint64_t a1)
{
  v2 = sub_1005BBD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B81C0(uint64_t a1)
{
  v2 = sub_1005BBD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B81FC(uint64_t a1)
{
  v2 = sub_1005BBC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005B8238(uint64_t a1)
{
  v2 = sub_1005BBC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005B8274@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Location();
  sub_1000037C4();
  v50 = v2;
  v51 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v49 = v4 - v3;
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for SearchLocation();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for CodableError();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  type metadata accessor for SearchViewAction();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = (v24 - v23);
  sub_10022C350(&qword_100CC7D00);
  sub_1000037C4();
  v52 = v27;
  v53 = v26;
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100051F2C();
  v29 = sub_1000059A0();
  sub_1005BB984(v29, v30, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = *v25;
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0x73746C75736572;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 72) = sub_10022C350(&qword_100CA64C8);
      *(inited + 48) = v38;
      sub_10006A820();
      sub_100041A80();
      sub_10003A288();
      goto LABEL_15;
    case 2u:
      sub_1005BB9E4(v25, type metadata accessor for SearchViewAction);
      Dictionary.init(dictionaryLiteral:)();
      sub_10003A288();
      goto LABEL_15;
    case 3u:
      v36 = *(sub_10022C350(&qword_100CC7D10) + 48);
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      sub_100022E48();
      sub_1005BB9E4(v25 + v36, v37);
      (*(v50 + 8))(v25, v51);
      break;
    case 4u:
      (*(v48 + 32))(v9, v25, v47);
      sub_10022C350(&qword_100CA36F8);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_100A2C3F0;
      v10 = 0xD000000000000010;
      *(v34 + 32) = 0xD000000000000012;
      *(v34 + 40) = 0x8000000100ABB010;
      *(v34 + 72) = v47;
      v35 = sub_100042FB0((v34 + 48));
      (*(v48 + 16))(v35, v9, v47);
      sub_10006A820();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      (*(v48 + 8))(v9, v47);
      break;
    case 5u:
      sub_1005BC024(v25, v14, type metadata accessor for SearchLocation);
      sub_10022C350(&qword_100CA36F8);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_100A2C3F0;
      strcpy((v40 + 32), "searchLocation");
      *(v40 + 47) = -18;
      *(v40 + 72) = v10;
      v41 = sub_100042FB0((v40 + 48));
      sub_1005BB984(v14, v41, type metadata accessor for SearchLocation);
      sub_10006A820();
      sub_100025204();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      sub_100011698();
      sub_1005BB9E4(v14, v42);
      break;
    case 6u:
      (*(v50 + 32))(v49, v25, v51);
      sub_10022C350(&qword_100CA36F8);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_100A2C3F0;
      *(v43 + 32) = 0x6E6F697461636F6CLL;
      *(v43 + 40) = 0xE800000000000000;
      *(v43 + 72) = v51;
      v44 = sub_100042FB0((v43 + 48));
      (*(v50 + 16))(v44, v49, v51);
      sub_10006A820();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      (*(v50 + 8))(v49, v51);
      break;
    case 7u:
    case 9u:
    case 0xDu:
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_14;
    case 8u:
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      goto LABEL_14;
    case 0xAu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
      Dictionary.init(dictionaryLiteral:)();
      sub_100025204();
LABEL_14:
      sub_10003A288();
      goto LABEL_15;
    case 0xBu:
    case 0x10u:
      Dictionary.init(dictionaryLiteral:)();
      sub_10003A288();
LABEL_15:
      ShortDescription.init(name:_:)();
      break;
    default:
      (*(v17 + 32))(v21, v25, v15);
      sub_10022C350(&qword_100CA36F8);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_100A2C3F0;
      *(v32 + 32) = 0x726F727265;
      *(v32 + 40) = 0xE500000000000000;
      *(v32 + 72) = v15;
      v33 = sub_100042FB0((v32 + 48));
      (*(v17 + 16))(v33, v21, v15);
      Dictionary.init(dictionaryLiteral:)();
      sub_100041A80();
      sub_10003A288();
      ShortDescription.init(name:_:)();
      (*(v17 + 8))(v21, v15);
      break;
  }

  a1[3] = v53;
  a1[4] = sub_1005BB920();
  v45 = sub_100042FB0(a1);
  return (*(v52 + 32))(v45, v10, v53);
}

uint64_t sub_1005B8CF0(void *a1)
{
  sub_10022C350(&qword_100CC7E48);
  sub_1000037C4();
  v207 = v3;
  v208 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v205 = v5;
  v203 = sub_10022C350(&qword_100CC7E50);
  sub_1000037C4();
  v201 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v200 = v8;
  v206 = sub_10022C350(&qword_100CC7E58);
  sub_1000037C4();
  v204 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v202 = v11;
  sub_10022C350(&qword_100CC7E60);
  sub_1000037C4();
  v198 = v13;
  v199 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v197 = v15;
  v16 = sub_10022C350(&qword_100CC7E68);
  sub_100003E5C(v16, &v222);
  v195 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CC7E70);
  sub_100003E5C(v20, &v221);
  v193[3] = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CC7E78);
  sub_100003E5C(v24, &v220);
  v193[0] = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003990(v27);
  v28 = sub_10022C350(&qword_100CC7E80);
  sub_100003E5C(v28, &v218);
  v191 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CC7E88);
  sub_100003E5C(v32, &v214);
  v189 = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003990(v35);
  v36 = sub_10022C350(&qword_100CC7E90);
  sub_100003E5C(v36, &v217);
  v190 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v185 = type metadata accessor for SearchLocation();
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000037D8();
  sub_100003990(v42 - v41);
  v43 = sub_10022C350(&qword_100CC7E98);
  sub_100003E5C(v43, &v206);
  v183 = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  sub_100003990(v46);
  v47 = type metadata accessor for LocationOfInterest();
  v48 = sub_100003E5C(v47, &v204);
  v180 = v49;
  __chkstk_darwin(v48);
  sub_1000037D8();
  sub_100003990(v51 - v50);
  v52 = sub_10022C350(&qword_100CC7EA0);
  sub_100003E5C(v52, &v209);
  v186 = v53;
  sub_100003828();
  __chkstk_darwin(v54);
  sub_1000039BC();
  sub_100003990(v55);
  v167[0] = type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_1000037D8();
  v210 = v58 - v57;
  type metadata accessor for Location();
  sub_1000037C4();
  v211 = v60;
  v212 = v59;
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  v209 = v167 - v62;
  v63 = sub_10022C350(&qword_100CC7EA8);
  sub_100003E5C(v63, &v198);
  v176 = v64;
  sub_100003828();
  __chkstk_darwin(v65);
  sub_1000039BC();
  sub_100003990(v66);
  v67 = sub_10022C350(&qword_100CC7EB0);
  sub_100003E5C(v67, v196);
  v174 = v68;
  sub_100003828();
  __chkstk_darwin(v69);
  sub_1000039BC();
  sub_100003990(v70);
  v71 = sub_10022C350(&qword_100CC7EB8);
  sub_100003E5C(v71, v194);
  v172 = v72;
  sub_100003828();
  __chkstk_darwin(v73);
  sub_1000039BC();
  sub_100003990(v74);
  v75 = sub_10022C350(&qword_100CC7EC0);
  sub_100003E5C(v75, v193);
  v170 = v76;
  sub_100003828();
  __chkstk_darwin(v77);
  sub_1000039BC();
  sub_100003990(v78);
  v79 = type metadata accessor for CodableError();
  v80 = sub_100003E5C(v79, v192);
  v168 = v81;
  __chkstk_darwin(v80);
  sub_1000037D8();
  v84 = v83 - v82;
  v85 = sub_10022C350(&qword_100CC7EC8);
  sub_1000037C4();
  v167[1] = v86;
  sub_100003828();
  __chkstk_darwin(v87);
  v88 = type metadata accessor for SearchViewAction();
  sub_1000037E8();
  __chkstk_darwin(v89);
  sub_1000037D8();
  v92 = (v91 - v90);
  sub_10022C350(&qword_100CC7ED0);
  sub_1000037C4();
  v215 = v93;
  v216 = v94;
  sub_100003828();
  __chkstk_darwin(v95);
  v97 = v167 - v96;
  v98 = a1[3];
  v99 = sub_1000161C0(a1, v98);
  sub_1005BBA3C();
  v214 = v97;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100051F2C();
  sub_1005BB984(v213, v92, v100);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v143 = *v92;
      LOBYTE(v219) = 2;
      sub_1005BBF28();
      sub_10000CC10();
      sub_10003BA94();
      v219 = v143;
      sub_10022C350(&qword_100CA64C8);
      sub_1005BC084(&qword_100CB01C0, &qword_100CB01C8);
      v144 = v173;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v145(v88, v144);
      sub_100014A24();
      v146(v98, v85);

    case 2u:
      LOBYTE(v219) = 3;
      sub_1005BBED4();
      sub_10000CC10();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100021048();
      v126 = v175;
      KeyedEncodingContainer.encode(_:forKey:)();

      sub_10000E73C();
      v127(v88, v126);
      sub_100014A24();
      v109 = sub_1000059A0();
      goto LABEL_28;
    case 3u:
      v130 = *(sub_10022C350(&qword_100CC7D10) + 48);
      v131 = v211;
      v132 = v212;
      v133 = v209;
      (*(v211 + 32))(v209, v92, v212);
      sub_1005BC024(v92 + v130, v210, type metadata accessor for SelectedSearchResult);
      LOBYTE(v219) = 5;
      sub_1005BBE2C();
      v134 = v181;
      v135 = v214;
      v85 = v215;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v219) = 0;
      sub_10000625C();
      sub_1005BC110(v136, v137);
      v138 = v187;
      v139 = v217;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v139)
      {
        sub_10000E73C();
        v140(v134, v138);
        sub_100022E48();
        sub_1005BB9E4(v210, v141);
        (*(v131 + 8))(v133, v132);
      }

      else
      {
        sub_100071D4C();
        sub_100031E00();
        sub_1005BC110(v162, v163);
        v164 = v210;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        sub_10000E73C();
        v165(v134, v138);
        sub_100022E48();
        sub_1005BB9E4(v164, v166);
        (*(v131 + 8))(v209, v132);
      }

      sub_100014A24();
      v109 = v135;
      goto LABEL_27;
    case 4u:
      sub_10000CC10();
      v117 = v178;
      v118 = v182;
      (*(v116 + 32))(v178, v92, v182);
      LOBYTE(v219) = 6;
      sub_1005BBDD8();
      v119 = v179;
      v121 = v214;
      v120 = v215;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10001856C();
      sub_1005BC110(v122, v123);
      v124 = v184;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v125(v119, v124);
      (*(v88 + 8))(v117, v118);
      goto LABEL_19;
    case 5u:
      v148 = v188;
      sub_1005BC024(v92, v188, type metadata accessor for SearchLocation);
      LOBYTE(v219) = 7;
      sub_1005BBD84();
      v121 = v214;
      v120 = v215;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100019AE4();
      sub_1005BC110(v149, v150);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v151 = sub_1000059A0();
      v152(v151);
      sub_100011698();
      sub_1005BB9E4(v148, v153);
      goto LABEL_19;
    case 6u:
      v155 = v211;
      v154 = v212;
      v156 = v177;
      (*(v211 + 32))(v177);
      LOBYTE(v219) = 14;
      sub_1005BBB38();
      v121 = v214;
      v120 = v215;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000625C();
      sub_1005BC110(v157, v158);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v159 = sub_1000059A0();
      v160(v159);
      (*(v155 + 8))(v156, v154);
LABEL_19:
      sub_100014A24();
      v109 = v121;
      v128 = v120;
      goto LABEL_28;
    case 7u:
      LOBYTE(v219) = 0;
      sub_1005BBFD0();
      v99 = v214;
      v84 = v215;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v114 = sub_100014268();
      goto LABEL_23;
    case 8u:
      LOBYTE(v219) = 4;
      sub_1005BBE80();
      sub_10000425C();
      sub_10000E73C();
      v114 = v85;
      v115 = &v198;
      goto LABEL_22;
    case 9u:
      LOBYTE(v219) = 8;
      sub_1005BBD30();
      sub_10000425C();
      sub_10000E73C();
      v114 = v85;
      v115 = &v214;
      goto LABEL_22;
    case 0xAu:
      LOBYTE(v219) = 9;
      sub_1005BBCDC();
      sub_10000425C();
      sub_10000E73C();
      v114 = v85;
      v115 = &v218;
      goto LABEL_22;
    case 0xBu:
      LOBYTE(v219) = 10;
      sub_1005BBC88();
      sub_10000425C();
      sub_10000E73C();
      v114 = v85;
      v115 = &v220;
      goto LABEL_22;
    case 0xCu:
      LOBYTE(v219) = 11;
      sub_1005BBC34();
      sub_10000425C();
      sub_10000E73C();
      v114 = v85;
      v115 = &v221;
      goto LABEL_22;
    case 0xDu:
      LOBYTE(v219) = 12;
      sub_1005BBBE0();
      sub_10000425C();
      sub_10000E73C();
      v114 = v85;
      v115 = &v222;
LABEL_22:
      v142 = *(v115 - 32);
LABEL_23:
      v113(v114, v142);
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v219) = 13;
      sub_1005BBB8C();
      v110 = v197;
      sub_1000284F8();
      v112 = v198;
      v111 = v199;
      goto LABEL_5;
    case 0xFu:
      LOBYTE(v219) = 15;
      sub_1005BBAE4();
      v129 = v200;
      sub_1000284F8();
      (*(v201 + 8))(v129, v203);
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v219) = 16;
      sub_1005BBA90();
      v110 = v205;
      sub_1000284F8();
      v112 = v207;
      v111 = v208;
LABEL_5:
      (*(v112 + 8))(v110, v111);
LABEL_24:
      sub_100014A24();
      result = v161(v99, v84);
      break;
    default:
      v101 = v168;
      v102 = v169;
      (*(v168 + 32))(v84, v92, v169);
      sub_100071D4C();
      sub_1005BBF7C();
      v103 = v167[2];
      sub_10003BA94();
      sub_1000316F0();
      sub_1005BC110(v104, v105);
      v106 = v171;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v107(v103, v106);
      (*(v101 + 8))(v84, v102);
      sub_100014A24();
      v109 = v98;
LABEL_27:
      v128 = v85;
LABEL_28:
      result = v108(v109, v128);
      break;
  }

  return result;
}

uint64_t sub_1005BA110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v245 = a2;
  v244 = sub_10022C350(&qword_100CC7D20);
  sub_1000037C4();
  v246 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v240 = v5;
  v6 = sub_10022C350(&qword_100CC7D28);
  sub_100003E5C(v6, &v255);
  v230 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v239 = v9;
  v10 = sub_10022C350(&qword_100CC7D30);
  sub_100003E5C(v10, &v256);
  v232 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v243 = v13;
  v14 = sub_10022C350(&qword_100CC7D38);
  sub_100003E5C(v14, v254);
  v228 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v238 = v17;
  v18 = sub_10022C350(&qword_100CC7D40);
  sub_100003E5C(v18, &v252);
  v226 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v237 = v21;
  v22 = sub_10022C350(&qword_100CC7D48);
  sub_100003E5C(v22, &v250);
  v224 = v23;
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v236 = v25;
  v26 = sub_10022C350(&qword_100CC7D50);
  sub_100003E5C(v26, &v248);
  v222 = v27;
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  v235 = v29;
  v30 = sub_10022C350(&qword_100CC7D58);
  sub_100003E5C(v30, &v245);
  v219 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  sub_100003990(v33);
  v34 = sub_10022C350(&qword_100CC7D60);
  sub_100003E5C(v34, v242);
  v216 = v35;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  sub_100003990(v37);
  v38 = sub_10022C350(&qword_100CC7D68);
  sub_100003E5C(v38, &v243);
  v218 = v39;
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v242[1] = v41;
  v42 = sub_10022C350(&qword_100CC7D70);
  sub_100003E5C(v42, v241);
  v215 = v43;
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v242[0] = v45;
  v46 = sub_10022C350(&qword_100CC7D78);
  sub_100003E5C(v46, &v257);
  v221 = v47;
  sub_100003828();
  __chkstk_darwin(v48);
  sub_1000039BC();
  v250 = v49;
  v50 = sub_10022C350(&qword_100CC7D80);
  sub_100003E5C(v50, &v238);
  v210 = v51;
  sub_100003828();
  __chkstk_darwin(v52);
  sub_1000039BC();
  sub_100003990(v53);
  v54 = sub_10022C350(&qword_100CC7D88);
  sub_100003E5C(v54, &v239);
  v212 = v55;
  sub_100003828();
  __chkstk_darwin(v56);
  sub_1000039BC();
  sub_100003990(v57);
  v58 = sub_10022C350(&qword_100CC7D90);
  sub_100003E5C(v58, &v237);
  v211 = v59;
  sub_100003828();
  __chkstk_darwin(v60);
  sub_1000039BC();
  v241[1] = v61;
  v62 = sub_10022C350(&qword_100CC7D98);
  sub_100003E5C(v62, v234);
  v209 = v63;
  sub_100003828();
  __chkstk_darwin(v64);
  sub_1000039BC();
  v241[0] = v65;
  v66 = sub_10022C350(&qword_100CC7DA0);
  sub_100003E5C(v66, v233);
  v207 = v67;
  sub_100003828();
  __chkstk_darwin(v68);
  sub_1000039BC();
  sub_100003990(v69);
  v249 = sub_10022C350(&qword_100CC7DA8);
  sub_1000037C4();
  v247 = v70;
  sub_100003828();
  __chkstk_darwin(v71);
  v73 = v202 - v72;
  v248 = type metadata accessor for SearchViewAction();
  sub_1000037E8();
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003908();
  __chkstk_darwin(v77);
  v79 = v202 - v78;
  __chkstk_darwin(v80);
  v82 = v202 - v81;
  __chkstk_darwin(v83);
  v85 = v202 - v84;
  __chkstk_darwin(v86);
  v88 = v202 - v87;
  __chkstk_darwin(v89);
  v91 = v202 - v90;
  v92 = a1[3];
  v252 = a1;
  sub_1000161C0(a1, v92);
  sub_1005BBA3C();
  v251 = v73;
  v93 = v253;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v93)
  {
    goto LABEL_8;
  }

  v203 = v82;
  v205 = v88;
  v204 = v85;
  v206 = v79;
  v94 = v249;
  v95 = v248;
  v253 = v91;
  v96 = v251;
  v97 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v97, 0);
  if (v100 == v101 >> 1)
  {
LABEL_7:
    v113 = v247;
    v114 = v95;
    v115 = type metadata accessor for DecodingError();
    swift_allocError();
    v117 = v116;
    sub_10022C350(&qword_100CA7610);
    *v117 = v114;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v115 - 8) + 104))(v117, enum case for DecodingError.typeMismatch(_:), v115);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v113 + 8))(v96, v94);
LABEL_8:
    v118 = v252;
    return sub_100006F14(v118);
  }

  v202[1] = 0;
  if (v100 < (v101 >> 1))
  {
    v202[0] = *(v99 + v100);
    sub_100618E7C(v100 + 1);
    v103 = v102;
    v105 = v104;
    swift_unknownObjectRelease();
    v106 = v246;
    if (v103 == v105 >> 1)
    {
      v107 = v244;
      v108 = v245;
      switch(v202[0])
      {
        case 1:
          sub_100071D4C();
          sub_1005BBF7C();
          sub_10000CCDC();
          type metadata accessor for CodableError();
          sub_1000316F0();
          sub_1005BC110(v149, v150);
          sub_10002425C();
          sub_10000EBCC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_10003051C();
          swift_unknownObjectRelease();
          v186 = sub_1000089D8();
          v187(v186);
          v188 = sub_100028794();
          v189(v188);
          sub_100014268();
          goto LABEL_28;
        case 2:
          LOBYTE(v255) = 2;
          sub_1005BBF28();
          sub_10000CCDC();
          sub_10022C350(&qword_100CA64C8);
          sub_1005BC084(&qword_100CB0198, &qword_100CB01A0);
          sub_10000EBCC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_10003051C();
          swift_unknownObjectRelease();
          v173 = sub_1000089D8();
          v174(v173);
          sub_100020724();
          v175(v96, v94);
          v176 = v204;
          *v204 = v255;
          sub_100021048();
          goto LABEL_29;
        case 3:
          LOBYTE(v255) = 3;
          sub_1005BBED4();
          sub_10004E764();
          v144 = v96;
          v145 = v214;
          v146 = KeyedDecodingContainer.decode(_:forKey:)();
          v178 = v177;
          v250 = v146;
          swift_unknownObjectRelease();
          v179 = sub_10000424C();
          v180(v179, v145);
          sub_100020724();
          v181(v144, v94);
          v176 = v203;
          *v203 = v250;
          v176[1] = v178;
          sub_100021048();
          goto LABEL_29;
        case 4:
          LOBYTE(v255) = 4;
          sub_1005BBE80();
          sub_10004E764();
          swift_unknownObjectRelease();
          v128 = sub_10000424C();
          v129(v128, v213);
          v130 = sub_10001047C();
          v131(v130);
          sub_100074C94();
          goto LABEL_26;
        case 5:
          LOBYTE(v255) = 5;
          sub_1005BBE2C();
          sub_10000CCDC();
          type metadata accessor for Location();
          LOBYTE(v255) = 0;
          sub_10000625C();
          sub_1005BC110(v151, v152);
          sub_10000CC10();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v246 = *(sub_10022C350(&qword_100CC7D10) + 48);
          type metadata accessor for SelectedSearchResult();
          sub_100071D4C();
          sub_100031E00();
          sub_1005BC110(v190, v191);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_10003051C();
          swift_unknownObjectRelease();
          v198 = sub_1000089D8();
          v199(v198);
          v200 = sub_100028794();
          v201(v200);
          v176 = v206;
          sub_100021048();
LABEL_29:
          swift_storeEnumTagMultiPayload();
          sub_100014A0C();
          v197 = v176;
          goto LABEL_30;
        case 6:
          LOBYTE(v255) = 6;
          sub_1005BBDD8();
          sub_10000CCDC();
          type metadata accessor for LocationOfInterest();
          sub_10001856C();
          sub_1005BC110(v157, v158);
          sub_10002425C();
          sub_10000EBCC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_10003051C();
          swift_unknownObjectRelease();
          v192 = sub_1000089D8();
          v193(v192);
          v194 = sub_100028794();
          v195(v194);
          sub_100014268();
          goto LABEL_28;
        case 7:
          LOBYTE(v255) = 7;
          sub_1005BBD84();
          sub_10000CCDC();
          type metadata accessor for SearchLocation();
          sub_100019AE4();
          sub_1005BC110(v147, v148);
          sub_10002425C();
          sub_10000EBCC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_10003051C();
          swift_unknownObjectRelease();
          v182 = sub_1000089D8();
          v183(v182);
          v184 = sub_100028794();
          v185(v184);
          sub_100014268();
          goto LABEL_28;
        case 8:
          LOBYTE(v255) = 8;
          sub_1005BBD30();
          sub_10004E764();
          swift_unknownObjectRelease();
          v163 = sub_10000424C();
          v164(v163, v217);
          v165 = sub_10001047C();
          v166(v165);
          sub_100074C94();
          goto LABEL_26;
        case 9:
          LOBYTE(v255) = 9;
          sub_1005BBCDC();
          sub_10004E764();
          swift_unknownObjectRelease();
          v136 = sub_10000424C();
          v137(v136, v220);
          v138 = sub_10001047C();
          v139(v138);
          sub_100074C94();
          goto LABEL_26;
        case 0xALL:
          LOBYTE(v255) = 10;
          sub_1005BBC88();
          sub_10004E764();
          swift_unknownObjectRelease();
          v159 = sub_10000424C();
          v160(v159, v223);
          v161 = sub_10001047C();
          v162(v161);
          sub_100074C94();
          goto LABEL_26;
        case 0xBLL:
          LOBYTE(v255) = 11;
          sub_1005BBC34();
          sub_10004E764();
          swift_unknownObjectRelease();
          v124 = sub_10000424C();
          v125(v124, v225);
          v126 = sub_10001047C();
          v127(v126);
          sub_100074C94();
          goto LABEL_26;
        case 0xCLL:
          LOBYTE(v255) = 12;
          sub_1005BBBE0();
          sub_10004E764();
          swift_unknownObjectRelease();
          v132 = sub_10000424C();
          v133(v132, v227);
          v134 = sub_10001047C();
          v135(v134);
          sub_100074C94();
          goto LABEL_26;
        case 0xDLL:
          LOBYTE(v255) = 13;
          sub_1005BBB8C();
          sub_10004E764();
          swift_unknownObjectRelease();
          v153 = sub_10000424C();
          v154(v153, v229);
          v155 = sub_10001047C();
          v156(v155);
          sub_100074C94();
          goto LABEL_26;
        case 0xELL:
          LOBYTE(v255) = 14;
          sub_1005BBB38();
          sub_10000CCDC();
          type metadata accessor for Location();
          sub_10000625C();
          sub_1005BC110(v122, v123);
          sub_10002425C();
          sub_10000EBCC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_10003051C();
          swift_unknownObjectRelease();
          v169 = sub_1000089D8();
          v170(v169);
          v171 = sub_100028794();
          v172(v171);
          sub_100014268();
LABEL_28:
          swift_storeEnumTagMultiPayload();
          sub_100014A0C();
          v197 = v106;
LABEL_30:
          v96 = v253;
          sub_1005BC024(v197, v253, v196);
          goto LABEL_27;
        case 0xFLL:
          LOBYTE(v255) = 15;
          sub_1005BBAE4();
          sub_10004E764();
          swift_unknownObjectRelease();
          v140 = sub_10000424C();
          v141(v140, v231);
          v142 = sub_10001047C();
          v143(v142);
          sub_100074C94();
          goto LABEL_26;
        case 0x10:
          LOBYTE(v255) = 16;
          sub_1005BBA90();
          v119 = v240;
          sub_10000CCDC();
          swift_unknownObjectRelease();
          (*(v106 + 8))(v119, v107);
          v120 = sub_10001047C();
          v121(v120);
          sub_100074C94();
          goto LABEL_26;
        default:
          LOBYTE(v255) = 0;
          sub_1005BBFD0();
          sub_10004E764();
          swift_unknownObjectRelease();
          v109 = sub_10000424C();
          v110(v109, v208);
          v111 = sub_10001047C();
          v112(v111);
          sub_100074C94();
LABEL_26:
          swift_storeEnumTagMultiPayload();
LABEL_27:
          v167 = v252;
          sub_100014A0C();
          sub_1005BC024(v96, v108, v168);
          v118 = v167;
          break;
      }

      return sub_100006F14(v118);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005BB83C()
{
  sub_1005BC110(&qword_100CC7D18, type metadata accessor for SearchViewAction);

  return ShortDescribable.description.getter();
}

unint64_t sub_1005BB920()
{
  result = qword_100CC7D08;
  if (!qword_100CC7D08)
  {
    sub_10022E824(&qword_100CC7D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7D08);
  }

  return result;
}

uint64_t sub_1005BB984(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1005BB9E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1005BBA3C()
{
  result = qword_100CC7DB0;
  if (!qword_100CC7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DB0);
  }

  return result;
}

unint64_t sub_1005BBA90()
{
  result = qword_100CC7DB8;
  if (!qword_100CC7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DB8);
  }

  return result;
}

unint64_t sub_1005BBAE4()
{
  result = qword_100CC7DC0;
  if (!qword_100CC7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DC0);
  }

  return result;
}

unint64_t sub_1005BBB38()
{
  result = qword_100CC7DC8;
  if (!qword_100CC7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DC8);
  }

  return result;
}

unint64_t sub_1005BBB8C()
{
  result = qword_100CC7DD0;
  if (!qword_100CC7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DD0);
  }

  return result;
}

unint64_t sub_1005BBBE0()
{
  result = qword_100CC7DD8;
  if (!qword_100CC7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DD8);
  }

  return result;
}

unint64_t sub_1005BBC34()
{
  result = qword_100CC7DE0;
  if (!qword_100CC7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DE0);
  }

  return result;
}

unint64_t sub_1005BBC88()
{
  result = qword_100CC7DE8;
  if (!qword_100CC7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DE8);
  }

  return result;
}

unint64_t sub_1005BBCDC()
{
  result = qword_100CC7DF0;
  if (!qword_100CC7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DF0);
  }

  return result;
}

unint64_t sub_1005BBD30()
{
  result = qword_100CC7DF8;
  if (!qword_100CC7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7DF8);
  }

  return result;
}

unint64_t sub_1005BBD84()
{
  result = qword_100CC7E00;
  if (!qword_100CC7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E00);
  }

  return result;
}

unint64_t sub_1005BBDD8()
{
  result = qword_100CC7E08;
  if (!qword_100CC7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E08);
  }

  return result;
}

unint64_t sub_1005BBE2C()
{
  result = qword_100CC7E18;
  if (!qword_100CC7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E18);
  }

  return result;
}

unint64_t sub_1005BBE80()
{
  result = qword_100CC7E20;
  if (!qword_100CC7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E20);
  }

  return result;
}

unint64_t sub_1005BBED4()
{
  result = qword_100CC7E28;
  if (!qword_100CC7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E28);
  }

  return result;
}

unint64_t sub_1005BBF28()
{
  result = qword_100CC7E30;
  if (!qword_100CC7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E30);
  }

  return result;
}

unint64_t sub_1005BBF7C()
{
  result = qword_100CC7E38;
  if (!qword_100CC7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E38);
  }

  return result;
}

unint64_t sub_1005BBFD0()
{
  result = qword_100CC7E40;
  if (!qword_100CC7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7E40);
  }

  return result;
}

uint64_t sub_1005BC024(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1005BC084(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA64C8);
    sub_100019AE4();
    sub_1005BC110(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005BC110(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SearchViewAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchViewAction.TappedLocationCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1005BC3E0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1005BC4B0()
{
  result = qword_100CC7EE0;
  if (!qword_100CC7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7EE0);
  }

  return result;
}

unint64_t sub_1005BC508()
{
  result = qword_100CC7EE8;
  if (!qword_100CC7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7EE8);
  }

  return result;
}

unint64_t sub_1005BC560()
{
  result = qword_100CC7EF0;
  if (!qword_100CC7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7EF0);
  }

  return result;
}

unint64_t sub_1005BC5B8()
{
  result = qword_100CC7EF8;
  if (!qword_100CC7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7EF8);
  }

  return result;
}

unint64_t sub_1005BC610()
{
  result = qword_100CC7F00;
  if (!qword_100CC7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F00);
  }

  return result;
}

unint64_t sub_1005BC668()
{
  result = qword_100CC7F08;
  if (!qword_100CC7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F08);
  }

  return result;
}

unint64_t sub_1005BC6C0()
{
  result = qword_100CC7F10;
  if (!qword_100CC7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F10);
  }

  return result;
}

unint64_t sub_1005BC718()
{
  result = qword_100CC7F18;
  if (!qword_100CC7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F18);
  }

  return result;
}

unint64_t sub_1005BC770()
{
  result = qword_100CC7F20;
  if (!qword_100CC7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F20);
  }

  return result;
}

unint64_t sub_1005BC7C8()
{
  result = qword_100CC7F28;
  if (!qword_100CC7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F28);
  }

  return result;
}

unint64_t sub_1005BC820()
{
  result = qword_100CC7F30;
  if (!qword_100CC7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F30);
  }

  return result;
}

unint64_t sub_1005BC878()
{
  result = qword_100CC7F38;
  if (!qword_100CC7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F38);
  }

  return result;
}

unint64_t sub_1005BC8D0()
{
  result = qword_100CC7F40;
  if (!qword_100CC7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F40);
  }

  return result;
}

unint64_t sub_1005BC928()
{
  result = qword_100CC7F48;
  if (!qword_100CC7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F48);
  }

  return result;
}

unint64_t sub_1005BC980()
{
  result = qword_100CC7F50;
  if (!qword_100CC7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F50);
  }

  return result;
}

unint64_t sub_1005BC9D8()
{
  result = qword_100CC7F58;
  if (!qword_100CC7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F58);
  }

  return result;
}

unint64_t sub_1005BCA30()
{
  result = qword_100CC7F60;
  if (!qword_100CC7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F60);
  }

  return result;
}

unint64_t sub_1005BCA88()
{
  result = qword_100CC7F68;
  if (!qword_100CC7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F68);
  }

  return result;
}

unint64_t sub_1005BCAE0()
{
  result = qword_100CC7F70;
  if (!qword_100CC7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F70);
  }

  return result;
}

unint64_t sub_1005BCB38()
{
  result = qword_100CC7F78;
  if (!qword_100CC7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F78);
  }

  return result;
}

unint64_t sub_1005BCB90()
{
  result = qword_100CC7F80;
  if (!qword_100CC7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F80);
  }

  return result;
}

unint64_t sub_1005BCBE8()
{
  result = qword_100CC7F88;
  if (!qword_100CC7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F88);
  }

  return result;
}

unint64_t sub_1005BCC40()
{
  result = qword_100CC7F90;
  if (!qword_100CC7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F90);
  }

  return result;
}

unint64_t sub_1005BCC98()
{
  result = qword_100CC7F98;
  if (!qword_100CC7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7F98);
  }

  return result;
}

unint64_t sub_1005BCCF0()
{
  result = qword_100CC7FA0;
  if (!qword_100CC7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FA0);
  }

  return result;
}

unint64_t sub_1005BCD48()
{
  result = qword_100CC7FA8;
  if (!qword_100CC7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FA8);
  }

  return result;
}

unint64_t sub_1005BCDA0()
{
  result = qword_100CC7FB0;
  if (!qword_100CC7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FB0);
  }

  return result;
}

unint64_t sub_1005BCDF8()
{
  result = qword_100CC7FB8;
  if (!qword_100CC7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FB8);
  }

  return result;
}

unint64_t sub_1005BCE50()
{
  result = qword_100CC7FC0;
  if (!qword_100CC7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FC0);
  }

  return result;
}

unint64_t sub_1005BCEA8()
{
  result = qword_100CC7FC8;
  if (!qword_100CC7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FC8);
  }

  return result;
}

unint64_t sub_1005BCF00()
{
  result = qword_100CC7FD0;
  if (!qword_100CC7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FD0);
  }

  return result;
}

unint64_t sub_1005BCF58()
{
  result = qword_100CC7FD8;
  if (!qword_100CC7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FD8);
  }

  return result;
}

unint64_t sub_1005BCFB0()
{
  result = qword_100CC7FE0;
  if (!qword_100CC7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FE0);
  }

  return result;
}

unint64_t sub_1005BD008()
{
  result = qword_100CC7FE8;
  if (!qword_100CC7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FE8);
  }

  return result;
}

unint64_t sub_1005BD060()
{
  result = qword_100CC7FF0;
  if (!qword_100CC7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FF0);
  }

  return result;
}

unint64_t sub_1005BD0B8()
{
  result = qword_100CC7FF8;
  if (!qword_100CC7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC7FF8);
  }

  return result;
}

unint64_t sub_1005BD110()
{
  result = qword_100CC8000;
  if (!qword_100CC8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8000);
  }

  return result;
}

unint64_t sub_1005BD168()
{
  result = qword_100CC8008;
  if (!qword_100CC8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8008);
  }

  return result;
}

unint64_t sub_1005BD1C0()
{
  result = qword_100CC8010;
  if (!qword_100CC8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8010);
  }

  return result;
}

unint64_t sub_1005BD218()
{
  result = qword_100CC8018;
  if (!qword_100CC8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8018);
  }

  return result;
}

unint64_t sub_1005BD270()
{
  result = qword_100CC8020;
  if (!qword_100CC8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8020);
  }

  return result;
}

unint64_t sub_1005BD2C8()
{
  result = qword_100CC8028;
  if (!qword_100CC8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8028);
  }

  return result;
}

unint64_t sub_1005BD320()
{
  result = qword_100CC8030;
  if (!qword_100CC8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8030);
  }

  return result;
}

unint64_t sub_1005BD378()
{
  result = qword_100CC8038[0];
  if (!qword_100CC8038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC8038);
  }

  return result;
}

uint64_t sub_1005BD3E0()
{
  sub_100003B08();
  v0[18] = v1;
  type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[20] = v3;
  v0[21] = v2;

  return _swift_task_switch(sub_1005BD474, v3, v2);
}

uint64_t sub_1005BD474()
{
  v14 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = UIInterfaceOrientation.description.getter();
    v8 = sub_100078694(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Rotate instruction: %s", v4, 0xCu);
    sub_100006F14(v5);
  }

  v9 = v0[18];
  v10 = [objc_opt_self() sharedApplication];
  v0[22] = v10;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_1005BD6D8;
  v11 = swift_continuation_init();
  v0[17] = sub_10022C350(&qword_100CC80E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005BD844;
  v0[13] = &unk_100C601B8;
  v0[14] = v11;
  [v10 rotateIfNeeded:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005BD6D8()
{
  sub_100003B08();
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_1005BD7DC, v2, v1);
}

uint64_t sub_1005BD7DC()
{
  sub_100003B08();
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005BD844(uint64_t a1, char a2)
{
  v3 = *sub_1000161C0((a1 + 32), *(a1 + 56));

  return sub_1005BD888(v3, a2);
}

uint64_t sub_1005BD8A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return sub_1005BD3E0();
}

uint64_t sub_1005BD980@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for NotificationsOptInComponentView();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for NotificationsOptInComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005BDD94(v2, v12, type metadata accessor for NotificationsOptInComponentViewModel);
  Location.kind.getter();
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v13 + 8))(v12);
  v14 = Location.Identifier.Kind.rawValue.getter();
  v16 = v15;
  v18 = v14 == Location.Identifier.Kind.rawValue.getter() && v16 == v17;
  v19 = 1;
  if (!v18)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  type metadata accessor for NotificationsOptInTipViewFactory();
  inited = swift_initStackObject();
  *(inited + 16) = v19 & 1;
  *(inited + 17) = 1;
  v21 = *(v2 + *(v9 + 20)) | (*(v2 + *(v9 + 20) + 2) << 16);
  sub_1005BDD94(v2, v8, type metadata accessor for NotificationsOptInComponentView);
  v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v23 = swift_allocObject();
  sub_1005BDDF4(v8, v23 + v22);
  sub_1005BDD94(v2, v5, type metadata accessor for NotificationsOptInComponentView);
  v24 = swift_allocObject();
  sub_1005BDDF4(v5, v24 + v22);
  sub_1006BA820(v21, sub_1005BDE58, v23, sub_1005BDE70, v24, v28);
}

uint64_t sub_1005BDC60()
{
  type metadata accessor for NotificationsOptInComponentView();
  type metadata accessor for NotificationsOptInComponentViewModel();
  return sub_10078D534();
}

uint64_t sub_1005BDCB0(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsOptInComponentViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotificationsOptInComponentView();
  sub_1005BDD94(a1, v4, type metadata accessor for NotificationsOptInComponentViewModel);
  sub_10078CC38();
  v5 = type metadata accessor for Location();
  return (*(*(v5 - 8) + 8))(v4, v5);
}
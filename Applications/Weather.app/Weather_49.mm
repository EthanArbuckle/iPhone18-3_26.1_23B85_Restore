double sub_10053E8C4(uint64_t a1)
{
  type metadata accessor for CanvasContentSizeEstimationContext(0);
  Font.lineHeight(in:)();
  Font.lineHeight(in:)();
  Font.lineHeight(in:)();
  return *a1;
}

uint64_t sub_10053E93C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a2;
  v96 = type metadata accessor for MeasuredAveragesRowContent(0) - 8;
  __chkstk_darwin(v96);
  v95 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = type metadata accessor for MeasuredText(0) - 8;
  __chkstk_darwin(v101);
  v92 = &v84[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v100 = &v84[-v8];
  __chkstk_darwin(v9);
  v99 = &v84[-v10];
  v94 = type metadata accessor for SubheadingAndBottomRowAveragesComponentFooter.MeasurementCache(0) - 8;
  __chkstk_darwin(v94);
  v93 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v14 = *(v3 + 120);
  v98 = *(v3 + 112);
  v88 = v14;
  v15 = *(v3 + 152);
  v90 = *(v3 + 144);
  v89 = v15;
  v102 = v12;
  v103 = v13;
  v86 = sub_10002D5A4();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  sub_10010CD64(v16, v18, v20 & 1);

  v91 = *a1;
  type metadata accessor for CanvasContentMeasurementContext(0);
  v26 = v99;
  GraphicsContext.resolve(_:)();
  GraphicsContext.ResolvedText.measure(in:)();
  v28 = v27;
  v30 = v29;
  sub_10010CD64(v21, v23, v25 & 1);

  v31 = &v26[*(v101 + 28)];
  *v31 = v28;
  v31[1] = v30;
  v102 = v98;
  v103 = v88;

  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;
  sub_10010CD64(v32, v34, v36 & 1);

  LODWORD(v102) = *(v3 + 176);
  v88 = Text.foregroundStyle<A>(_:)();
  v87 = v42;
  v85 = v43;
  v98 = v44;
  sub_10010CD64(v37, v39, v41 & 1);

  v102 = v90;
  v103 = v89;

  v45 = Text.init<A>(_:)();
  v47 = v46;
  LOBYTE(v16) = v48;
  v49 = Text.font(_:)();
  v51 = v50;
  v53 = v52;
  sub_10010CD64(v45, v47, v16 & 1);

  v54 = Text.monospacedDigit()();
  v90 = v55;
  LOBYTE(v16) = v56;
  sub_10010CD64(v49, v51, v53 & 1);

  v57 = *(v3 + 184);
  LOBYTE(v47) = v85;
  v58 = v100;
  v59 = v88;
  v60 = v87;
  GraphicsContext.resolve(_:)();
  GraphicsContext.ResolvedText.measure(in:)();
  v62 = v61;
  v64 = v63;
  v65 = v101;
  v66 = &v58[*(v101 + 28)];
  *v66 = v61;
  v66[1] = v63;
  LOBYTE(v49) = v16;
  v67 = v92;
  v68 = v90;
  GraphicsContext.resolve(_:)();
  v69 = v67;
  GraphicsContext.ResolvedText.measure(in:)();
  v71 = v70;
  v73 = v72;
  sub_10010CD64(v54, v68, v49 & 1);

  sub_10010CD64(v59, v60, v47 & 1);

  v74 = &v67[*(v65 + 28)];
  *v74 = v71;
  v74[1] = v73;
  v75 = v95;
  sub_10053FA70(v100, v95, type metadata accessor for MeasuredText);
  v76 = v96;
  sub_10053FA70(v69, &v75[*(v96 + 28)], type metadata accessor for MeasuredText);
  *&v75[*(v76 + 32)] = v57;
  if (v64 > v73)
  {
    v73 = v64;
  }

  v77 = v57 + v62 + v71;
  v78 = &v75[*(v76 + 36)];
  *v78 = v77;
  v78[1] = v73;
  v79 = v99;
  v80 = v93;
  sub_10053F9B8(v99, v93, type metadata accessor for MeasuredText);
  v81 = v94;
  sub_10053F9B8(v75, &v80[*(v94 + 28)], type metadata accessor for MeasuredAveragesRowContent);
  if (v28 <= v77)
  {
    v28 = v77;
  }

  sub_10053FA18(v79, type metadata accessor for MeasuredText);
  sub_10053FA18(v75, type metadata accessor for MeasuredAveragesRowContent);
  v82 = &v80[*(v81 + 32)];
  *v82 = v28;
  v82[1] = v30 + v73;
  return sub_10053FA70(v80, v97, type metadata accessor for SubheadingAndBottomRowAveragesComponentFooter.MeasurementCache);
}

uint64_t sub_10053EFD8()
{
  sub_10053D9FC();
  type metadata accessor for SubheadingAndBottomRowAveragesComponentFooter.MeasurementCache(0);
  type metadata accessor for MeasuredAveragesRowContent(0);
  sub_10053D9FC();
  type metadata accessor for MeasuredText(0);
  return sub_10053D9FC();
}

double sub_10053F1AC(uint64_t a1)
{
  type metadata accessor for CanvasContentSizeEstimationContext(0);
  Font.lineHeight(in:)();
  return *a1;
}

uint64_t sub_10053F1EC@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  sub_10010CD64(v2, v4, v6 & 1);

  type metadata accessor for CanvasContentMeasurementContext(0);
  GraphicsContext.resolve(_:)();
  GraphicsContext.ResolvedText.measure(in:)();
  v13 = v12;
  v15 = v14;
  sub_10010CD64(v7, v9, v11 & 1);

  v16 = (a1 + *(type metadata accessor for MeasuredText(0) + 20));
  *v16 = v13;
  v16[1] = v15;
  result = type metadata accessor for SubheadingOnlyAveragesComponentFooter.MeasurementCache(0);
  v18 = (a1 + *(result + 20));
  *v18 = v13;
  v18[1] = v15;
  return result;
}

unint64_t sub_10053F4A0()
{
  result = qword_100CC4540;
  if (!qword_100CC4540)
  {
    sub_10022E824(&qword_100CC4520);
    sub_10053F52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4540);
  }

  return result;
}

unint64_t sub_10053F52C()
{
  result = qword_100CC4548;
  if (!qword_100CC4548)
  {
    sub_10022E824(&qword_100CC4550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4548);
  }

  return result;
}

uint64_t sub_10053F6D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_10053F710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10053F7A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_10053F7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10053F86C()
{
  result = qword_100CC4568;
  if (!qword_100CC4568)
  {
    sub_10022E824(&qword_100CC4570);
    sub_10022E824(&qword_100CC4520);
    sub_10053F4A0();
    swift_getOpaqueTypeConformance2();
    sub_10012E840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4568);
  }

  return result;
}

uint64_t sub_10053F9B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10053FA18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10053FA70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_10053FB78()
{
  type metadata accessor for MeasuredText(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10053FC34()
{
  type metadata accessor for MeasuredText(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MeasuredAveragesRowContent(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10053FCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B38();
  type metadata accessor for MeasuredText(v6);
  sub_100003928();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for MeasuredAveragesRowContent(0);
    v10 = v4 + *(a3 + 20);
  }

  return sub_100024D10(v10, v3, v9);
}

uint64_t sub_10053FD88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003B38();
  type metadata accessor for MeasuredText(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = type metadata accessor for MeasuredAveragesRowContent(0);
    v12 = v5 + *(a4 + 20);
  }

  return sub_10001B350(v12, v4, v4, v11);
}

void sub_10053FE20()
{
  type metadata accessor for MeasuredText(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MeasuredAveragesRowContent(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10053FEFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10053FF8C()
{
  v0 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v0 - 8);
  v2 = v23 - v1;
  v3 = type metadata accessor for ActivityAction();
  __chkstk_darwin(v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003C137C();
  if (!v7)
  {
    sub_10001C408();
    goto LABEL_5;
  }

  v8 = v6;
  v9 = v7;
  type metadata accessor for WeatherLocation();
  if (sub_100673BE8(v8, v9))
  {

    sub_10001C408();
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v10 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    v11 = static VerticalSizingBehaviorKey.defaultValue.getter();
    sub_100366814(v5, v10 & 1, v11 & 1);
    return sub_1002AC218(v5);
  }

  v23[0] = v8;
  v23[1] = v9;
  sub_10002D5A4();
  v13 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (*(v13 + 16) != 2)
  {
  }

  result = Double.init(_:)();
  if (v14)
  {
  }

  if (*(v13 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v15 = *&result;

    result = Double.init(_:)();
    if ((v16 & 1) == 0)
    {
      v17 = *&result;
      v18 = sub_1003C1398();
      v20 = v19;
      v21 = type metadata accessor for Date();
      sub_10001B350(v2, 1, 1, v21);
      sub_100066E08();
      v22 = Dictionary.init(dictionaryLiteral:)();
      sub_1002A2C08(v18, v20, 18, v2, v22, 0, 0, v15, v17);

      return sub_1001AEDF4(v2);
    }
  }

  return result;
}

uint64_t sub_100540298(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEF74696E55657275;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000100AD3F30 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x5373736572646461 && a2 == 0xED0000676E697274)
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

unint64_t sub_1005404F0(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x706D655468676968;
      break;
    case 4:
      result = 0x65706D6554776F6CLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x5373736572646461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005405F0(void *a1)
{
  v3 = sub_10022C350(&qword_100CC49A8);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100540DA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_10001C54C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_10001C54C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 2;
    sub_10001C54C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    sub_10001C54C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    sub_10001C54C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    sub_10001C54C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 6;
    sub_10001C54C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_1005407D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CC4998);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100540DA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  sub_10001EFEC(1);
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v14;
  sub_10001EFEC(2);
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v11;
  v36 = v15;
  sub_10001EFEC(3);
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v17;
  v29 = v16;
  sub_10001EFEC(4);
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v18;
  sub_10001EFEC(5);
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v19;
  v40 = 6;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v21;
  (*(v7 + 8))(v10, v5);
  __src[0] = v31;
  __src[1] = v13;
  __src[2] = v33;
  __src[3] = v37;
  __src[4] = v30;
  v23 = v36;
  __src[5] = v36;
  __src[6] = v29;
  v24 = v32;
  __src[7] = v32;
  __src[8] = v28;
  v25 = v35;
  __src[9] = v35;
  __src[10] = v27;
  __src[11] = v34;
  __src[12] = v20;
  __src[13] = v22;
  sub_100540DF8(__src, v39);
  sub_100006F14(a1);
  v39[0] = v31;
  v39[1] = v13;
  v39[2] = v33;
  v39[3] = v37;
  v39[4] = v30;
  v39[5] = v23;
  v39[6] = v29;
  v39[7] = v24;
  v39[8] = v28;
  v39[9] = v25;
  v39[10] = v27;
  v39[11] = v34;
  v39[12] = v20;
  v39[13] = v22;
  sub_100540E30(v39);
  return memcpy(a2, __src, 0x70uLL);
}

uint64_t sub_100540C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100540298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100540CC4(uint64_t a1)
{
  v2 = sub_100540DA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100540D00(uint64_t a1)
{
  v2 = sub_100540DA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100540D3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1005407D8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

unint64_t sub_100540DA4()
{
  result = qword_100CC49A0;
  if (!qword_100CC49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC49A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100540F40()
{
  result = qword_100CC49B0;
  if (!qword_100CC49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC49B0);
  }

  return result;
}

unint64_t sub_100540F98()
{
  result = qword_100CC49B8;
  if (!qword_100CC49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC49B8);
  }

  return result;
}

unint64_t sub_100540FF0()
{
  result = qword_100CC49C0;
  if (!qword_100CC49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC49C0);
  }

  return result;
}

_BYTE *sub_100541044(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10054111C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10054120C(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_100541404(Swift::UInt a1)
{
  sub_10003259C();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10054148C(unsigned __int8 a1)
{
  sub_10003259C();
  Hasher._combine(_:)(2 * a1 + 2);
  return Hasher._finalize()();
}

Swift::Int sub_1005415F4(char a1)
{
  sub_10003259C();
  Hasher._combine(_:)(qword_100A5EBC0[a1]);
  return Hasher._finalize()();
}

Swift::Int sub_1005416AC(char a1)
{
  sub_10003259C();
  sub_1002BB768(v3, a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1005417C4(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_10003259C();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100541890(uint64_t a1, void (*a2)(uint64_t))
{
  sub_10003259C();
  a2(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005418F4()
{
  sub_10003259C();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100541948(char a1)
{
  type metadata accessor for Locale.Language();
  sub_1000037C4();
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    static Locale.current.getter();
    Locale.language.getter();
    (*(v7 + 8))(v10, v5);
    v17 = v4;
    Locale.Language.prefersObjectiveTemperatureTerminology.getter();
    v18 = sub_10000CC48();
    v19(v18);
    if (v4)
    {
      sub_100074BAC();
      v20 = [objc_opt_self() mainBundle];
      v33 = v17;
    }

    else
    {
      v20 = [objc_opt_self() mainBundle];
      v33 = 0x8000000100AD43E0;
      sub_1000199FC();
    }

    goto LABEL_10;
  }

  if (a1 == 1)
  {
    sub_100074BAC();
    v11 = [objc_opt_self() mainBundle];
    v35._object = v10;
    sub_1000060D8();
    sub_100010220();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v14, v15, v35);
    sub_100017A10();
    return sub_100004464();
  }

  static Locale.current.getter();
  Locale.language.getter();
  (*(v7 + 8))(v10, v5);
  v21 = v4;
  Locale.Language.prefersObjectiveTemperatureTerminology.getter();
  v22 = sub_10000CC48();
  v23(v22);
  if ((v4 & 1) == 0)
  {
    v20 = [objc_opt_self() mainBundle];
    v33 = 0x8000000100AD42F0;
    sub_1000199FC();
LABEL_10:
    sub_100003CD0();
    v29.super.isa = v20;
    v30 = 0;
    v31 = 0xE000000000000000;
    v28 = 0xD00000000000003ELL;
    goto LABEL_11;
  }

  sub_100074BAC();
  v20 = [objc_opt_self() mainBundle];
  v33 = v21;
  sub_100003CD0();
  v29.super.isa = v20;
  v30 = 0;
  v31 = 0xE000000000000000;
LABEL_11:
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v24, *&v26, v29, *&v30, *(&v33 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100541CDC(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      sub_1000282C0();
      v12 = [objc_opt_self() mainBundle];
      v14 = v1;
      sub_100010220();
      goto LABEL_7;
    }

    sub_100074BAC();
    v2 = [objc_opt_self() mainBundle];
    sub_100024810();
    sub_1000060D8();
  }

  else
  {
    sub_100074BAC();
    v3 = [objc_opt_self() mainBundle];
    sub_100024810();
    sub_1000199FC();
  }

  sub_100010220();
  v11 = 0xD000000000000032;
LABEL_7:
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v6, v8, *&v9, *(&v14 - 1));
  sub_100017A10();
  return sub_100004464();
}

uint64_t sub_100541E10(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    sub_1000088DC();
    if (a1 == 1)
    {
      sub_1000060D8();
    }

    else
    {
      sub_1000199FC();
    }

    sub_100010220();
    v10 = 0xD000000000000039;
  }

  else
  {
    v12 = 0x8000000100AD41D0;
    sub_1000199FC();
    sub_100010220();
  }

  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v5, v7, *&v8, *(&v12 - 1));
  sub_100017A10();
  return sub_100004464();
}

uint64_t sub_100541F00(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  switch(a1)
  {
    case 2:
    case 5:
      sub_1000088DC();
      sub_100010220();
      v11 = 0xD000000000000016;
      break;
    default:
      sub_100014890();
      v13 = v3;
      sub_100010220();
      break;
  }

  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v6, v8, *&v9, *(&v13 - 1));
  sub_100017A10();
  return sub_100004464();
}

uint64_t sub_10054206C(char a1)
{
  result = 0x2E776F626E696172;
  switch(a1)
  {
    case 1:
      result = 0x6F622E64756F6C63;
      break;
    case 2:
      result = 0x61682E64756F6C63;
      break;
    case 3:
      result = 0x69662E656B6F6D73;
      break;
    case 4:
      result = 0x6F662E64756F6C63;
      break;
    case 5:
      result = 0x657A61682E6E7573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100542198(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  switch(a1)
  {
    case 2:
    case 5:
      sub_1000088DC();
      sub_100010220();
      v10 = 0xD00000000000001DLL;
      break;
    default:
      sub_10001C55C();
      sub_100010220();
      break;
  }

  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v5, v7, *&v8, *(&v12 - 1));
  sub_100017A10();
  return sub_100004464();
}

uint64_t sub_100542330()
{
  sub_100020844();
  switch(v1)
  {
    case 1:
    case 2:
      sub_100074BAC();
      v2 = [objc_opt_self() mainBundle];
      sub_100024810();
      sub_100010220();
      v10 = 0xD000000000000036;
      goto LABEL_4;
    case 3:
      sub_100074BAC();
      v11 = [objc_opt_self() mainBundle];
      v13 = v0;
      sub_100010220();
LABEL_4:
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v5, v7, *&v8, *(&v13 - 1));
      sub_100017A10();
      break;
    default:
      return sub_100004464();
  }

  return sub_100004464();
}

uint64_t sub_100542488()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C441E0, v2);
  sub_1000379AC();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1005424C8(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      v3 = 1953653104;
      goto LABEL_4;
    case 2:
      v3 = 1953722221;
LABEL_4:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 3:
      result = 0x796C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100542540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100542488();
  *a1 = result;
  return result;
}

unint64_t sub_100542570()
{
  v1 = sub_10004E6D0();
  result = sub_1005424C8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1005425A0()
{
  sub_100020844();
  switch(v1)
  {
    case 1:
    case 3:
    case 4:
    case 6:
    case 7:
    case 9:
      sub_1000282C0();
      v2 = [objc_opt_self() mainBundle];
      sub_100010310();
      sub_100003CD0();
      v9.super.isa = v0;
      v10 = 0xE500000000000000;
      goto LABEL_4;
    case 2:
    case 5:
    case 8:
      sub_1000282C0();
      v11 = [objc_opt_self() mainBundle];
      sub_100010310();
      sub_100003CD0();
      v9.super.isa = v0;
      v10 = 0xE600000000000000;
LABEL_4:
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v5, v9, *&v7, *(&v13 - 1));
      sub_100017A10();
      break;
    default:
      return sub_100004464();
  }

  return sub_100004464();
}

uint64_t sub_1005428B4()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C442D8, v2);
  sub_1000379AC();
  if (v1 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1005428F4(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      v3 = 0x52746867696CLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6961000000000000;
    case 2:
      return 0x61526D756964656DLL;
    case 3:
      v3 = 0x527976616568;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6961000000000000;
    case 4:
      v4 = 0x53746867696CLL;
      goto LABEL_11;
    case 5:
      return 0x6C536D756964656DLL;
    case 6:
      v4 = 0x537976616568;
LABEL_11:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
      break;
    case 7:
      result = 0x6F6E53746867696CLL;
      break;
    case 8:
      result = 0x6E536D756964656DLL;
      break;
    case 9:
      result = 0x6F6E537976616568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100542A30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1005428B4();
  *a1 = result;
  return result;
}

uint64_t sub_100542A60()
{
  v1 = sub_10004E6D0();
  result = sub_1005428F4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100542A90()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C443E8, v2);
  sub_1000379AC();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100542AD0(char a1)
{
  if (!a1)
  {
    return 0x72656D726177;
  }

  if (a1 == 1)
  {
    return 0x616365726F467361;
  }

  return 0x7265646C6F63;
}

uint64_t sub_100542B24()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C44450, v2);
  sub_1000379AC();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100542B64(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x616365726F467361;
  }

  return 0xD000000000000010;
}

uint64_t sub_100542BC8()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C444B8, v2);
  sub_1000379AC();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100542C08(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x616365726F467361;
  }

  return 0xD000000000000011;
}

uint64_t sub_100542C70()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C44520, v2);
  sub_1000379AC();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100542CB0(char a1)
{
  result = 0x73776F626E696172;
  switch(a1)
  {
    case 1:
      result = 0x6E696E746867696CLL;
      break;
    case 2:
      result = 1818845544;
      break;
    case 3:
      result = 0x656B6F6D73;
      break;
    case 4:
      result = 6778726;
      break;
    case 5:
      result = 1702519144;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100542D4C()
{
  sub_100013984();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100C445D0, v2);
  sub_1000379AC();
  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100542D8C(char a1)
{
  result = 0x746E617361656C70;
  switch(a1)
  {
    case 1:
      result = 0x617361656C706E75;
      break;
    case 2:
      result = 7630696;
      break;
    case 3:
      result = 0x796C6C696863;
      break;
    case 4:
      v3 = 1734833517;
      goto LABEL_9;
    case 5:
      result = 7959140;
      break;
    case 6:
      v3 = 1684957559;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 7:
      result = 1835819363;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100542E58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100542A90();
  *a1 = result;
  return result;
}

uint64_t sub_100542E88()
{
  v1 = sub_10004E6D0();
  result = sub_100542AD0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100542F04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100542B24();
  *a1 = result;
  return result;
}

uint64_t sub_100542F34()
{
  v1 = sub_10004E6D0();
  result = sub_100542B64(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100542FB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100542BC8();
  *a1 = result;
  return result;
}

uint64_t sub_100542FE0()
{
  v1 = sub_10004E6D0();
  result = sub_100542C08(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10054305C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100542C70();
  *a1 = result;
  return result;
}

uint64_t sub_10054308C()
{
  v1 = sub_10004E6D0();
  result = sub_100542CB0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100543108@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100542D4C();
  *a1 = result;
  return result;
}

unint64_t sub_100543138()
{
  v1 = sub_10004E6D0();
  result = sub_100542D8C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100543790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007580F0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1005437D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100758120();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100543820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100758368();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100543868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007862C8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1005438B4()
{
  result = qword_100CC49F8;
  if (!qword_100CC49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC49F8);
  }

  return result;
}

unint64_t sub_10054390C()
{
  result = qword_100CC4A00;
  if (!qword_100CC4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A00);
  }

  return result;
}

unint64_t sub_100543964()
{
  result = qword_100CC4A08;
  if (!qword_100CC4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A08);
  }

  return result;
}

unint64_t sub_1005439BC()
{
  result = qword_100CC4A10;
  if (!qword_100CC4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A10);
  }

  return result;
}

unint64_t sub_100543A14()
{
  result = qword_100CC4A18;
  if (!qword_100CC4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A18);
  }

  return result;
}

unint64_t sub_100543A6C()
{
  result = qword_100CC4A20;
  if (!qword_100CC4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A20);
  }

  return result;
}

unint64_t sub_100543AC4()
{
  result = qword_100CC4A28;
  if (!qword_100CC4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A28);
  }

  return result;
}

unint64_t sub_100543B18()
{
  result = qword_100CC4A30;
  if (!qword_100CC4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A30);
  }

  return result;
}

unint64_t sub_100543B6C()
{
  result = qword_100CC4A38;
  if (!qword_100CC4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A38);
  }

  return result;
}

unint64_t sub_100543BC0()
{
  result = qword_100CC4A40;
  if (!qword_100CC4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A40);
  }

  return result;
}

unint64_t sub_100543C14()
{
  result = qword_100CC4A48;
  if (!qword_100CC4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A48);
  }

  return result;
}

unint64_t sub_100543C68()
{
  result = qword_100CC4A50;
  if (!qword_100CC4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A50);
  }

  return result;
}

unint64_t sub_100543CBC()
{
  result = qword_100CC4A58;
  if (!qword_100CC4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A58);
  }

  return result;
}

unint64_t sub_100543D10()
{
  result = qword_100CC4A60;
  if (!qword_100CC4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A60);
  }

  return result;
}

_BYTE *sub_100543D64(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100543E3C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t LocationSearchEntityFromWeatherCoreResolver.resolve(from:context:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_100543F3C, 0, 0);
}

uint64_t sub_100543F3C()
{
  v1 = *(v0 + 56);
  static LocationSearchEntity.makeFromLocationEntity(_:)();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100543FC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_100332F08;

  return LocationSearchEntityFromWeatherCoreResolver.resolve(from:context:)(v2 + 16, a2);
}

unint64_t sub_100544068()
{
  result = qword_100CC4A68;
  if (!qword_100CC4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A68);
  }

  return result;
}

unint64_t sub_1005440C0()
{
  result = qword_100CC4A70;
  if (!qword_100CC4A70)
  {
    type metadata accessor for LocationEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A70);
  }

  return result;
}

unint64_t sub_10054411C()
{
  result = qword_100CC4A78;
  if (!qword_100CC4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4A78);
  }

  return result;
}

uint64_t sub_100544180(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[56])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_1005441BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100544224@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for DetailChartSelection();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v40 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for Date();
  sub_1000037C4();
  v39 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  type metadata accessor for ConditionDetailViewAction();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v42 = sub_10022C350(&qword_100CC4B30);
  sub_1000037C4();
  v41 = v23;
  __chkstk_darwin(v24);
  v26 = &v39 - v25;
  sub_100544938(v1, v22, type metadata accessor for ConditionDetailViewAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v32 = v40;
      (*(v40 + 32))(v12, v22, v7);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0x6F697469646E6F63;
      *(inited + 40) = 0xE90000000000006ELL;
      *(inited + 72) = v7;
      v34 = sub_100042FB0((inited + 48));
      (*(v32 + 16))(v34, v12, v7);
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      (*(v32 + 8))(v12, v7);
      break;
    case 2u:
      sub_1004390F8(v22, v6);
      sub_10022C350(&qword_100CA36F8);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_100A2C3F0;
      *(v30 + 32) = 0xD000000000000011;
      *(v30 + 40) = 0x8000000100AD4810;
      *(v30 + 72) = v2;
      v31 = sub_100042FB0((v30 + 48));
      sub_100544938(v6, v31, type metadata accessor for DetailChartSelection);
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      sub_100544998(v6);
      break;
    case 3u:
    case 4u:
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      break;
    default:
      v27 = v39;
      (*(v39 + 32))(v18, v22, v13);
      sub_10022C350(&qword_100CA36F8);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_100A2C3F0;
      *(v28 + 32) = 1702125924;
      *(v28 + 40) = 0xE400000000000000;
      *(v28 + 72) = v13;
      v29 = sub_100042FB0((v28 + 48));
      (*(v27 + 16))(v29, v18, v13);
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      (*(v27 + 8))(v18, v13);
      break;
  }

  v35 = v43;
  v36 = v42;
  v43[3] = v42;
  v35[4] = sub_1005448D4();
  v37 = sub_100042FB0(v35);
  return (*(v41 + 32))(v37, v26, v36);
}

uint64_t sub_100544848()
{
  sub_1005449F4(&qword_100CC4B40);

  return ShortDescribable.description.getter();
}

unint64_t sub_1005448D4()
{
  result = qword_100CC4B38;
  if (!qword_100CC4B38)
  {
    sub_10022E824(&qword_100CC4B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4B38);
  }

  return result;
}

uint64_t sub_100544938(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100544998(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartSelection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005449F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConditionDetailViewAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100544A48@<X0>(uint64_t a1@<X8>)
{
  sub_100035B30(v1 + 16, v4);

  return sub_100808FB0(v4, a1);
}

uint64_t sub_100544AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for MainAction();
  v4 = __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v45 = &v40 - v8;
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v16 = &v40 - v15;
  v41 = a1;
  v17 = *(a1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v13 + 80);
    v43 = v14;
    v44 = (v19 + 32) & ~v19;
    v20 = v17 + v44;
    v21 = *(v13 + 72);
    v22 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_10004F14C(v20, v16);
      sub_10004F14C(v16, v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        break;
      }

      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 19)
        {
          goto LABEL_18;
        }

LABEL_11:
        sub_10001F004();
        v29 = v16;
        goto LABEL_15;
      }

      sub_10004F14C(v12, v45);
      type metadata accessor for LocationsAction();
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 == 2)
      {
        sub_10001F004();
        sub_10004F8E0(v16, v32);
        v26 = type metadata accessor for LocationsAction;
      }

      else
      {
        if (v24)
        {
          v30 = type metadata accessor for LocationsAction;
          v31 = v45;
          goto LABEL_17;
        }

        sub_10001F004();
        sub_10004F8E0(v16, v25);
        v26 = &type metadata accessor for CurrentLocation;
      }

      v28 = v26;
      v29 = v45;
LABEL_15:
      sub_10004F8E0(v29, v28);
LABEL_23:
      sub_10001F004();
      sub_10004F8E0(v12, v35);
      v20 += v21;
      if (!--v18)
      {
        goto LABEL_26;
      }
    }

    v27 = v43;
    sub_10004F14C(v12, v43);
    type metadata accessor for EnvironmentAction();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v30 = type metadata accessor for EnvironmentAction;
      v31 = v27;
LABEL_17:
      sub_10004F8E0(v31, v30);
LABEL_18:
      sub_10004F14C(v16, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004FF70();
        v22 = v36;
      }

      v33 = v22[2];
      if (v33 >= v22[3] >> 1)
      {
        sub_10004FF70();
        v22 = v37;
      }

      sub_10001F004();
      sub_10004F8E0(v16, v34);
      v22[2] = v33 + 1;
      sub_1000CA208(v6, v22 + v44 + v33 * v21);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_26:
  v38 = v42;
  result = sub_10006D53C(v41, v42);
  *(v38 + 40) = v22;
  *(v38 + 48) = 0;
  return result;
}

UIImage *sub_100544E28()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100545570(v0);
  v7 = v6;
  if (String.count.getter() > 2)
  {

    return 0;
  }

  v48 = v2;
  v49 = v1;
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  sub_10022C350(&qword_100CC4CA0);
  inited = swift_initStackObject();
  v50 = xmmword_100A2C3F0;
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10022C350(&qword_100CC4CA8);
  v10 = swift_initStackObject();
  *(v10 + 16) = v50;
  *(v10 + 32) = UIFontWeightTrait;
  *(v10 + 40) = UIFontWeightSemibold;
  type metadata accessor for TraitKey(0);
  sub_10054584C(&qword_100CA30F0, type metadata accessor for TraitKey);
  v11 = UIFontDescriptorTraitsAttribute;
  v12 = UIFontWeightTrait;
  v13 = Dictionary.init(dictionaryLiteral:)();
  *(inited + 64) = sub_10022C350(&qword_100CC4CB0);
  *(inited + 40) = v13;
  type metadata accessor for AttributeName(0);
  sub_10054584C(&qword_100CA3100, type metadata accessor for AttributeName);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v8 fontDescriptorByAddingAttributes:isa];

  v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  sub_10022C350(&qword_100CB8BF0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_100A2D320;
  *(v17 + 32) = NSForegroundColorAttributeName;
  v18 = objc_opt_self();
  v19 = NSForegroundColorAttributeName;
  v20 = [v18 whiteColor];
  v21 = sub_10000C70C(0, &qword_100CB8BA0);
  *(v17 + 40) = v20;
  *(v17 + 64) = v21;
  *(v17 + 72) = NSFontAttributeName;
  *(v17 + 104) = sub_10000C70C(0, &qword_100CB8B98);
  *(v17 + 80) = v16;
  type metadata accessor for Key(0);
  sub_10054584C(&qword_100CA30E0, type metadata accessor for Key);
  v22 = NSFontAttributeName;
  v23 = v16;
  v24 = Dictionary.init(dictionaryLiteral:)();
  v25 = String._bridgeToObjectiveC()();
  v26 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v25 sizeWithAttributes:v26];
  v28 = v27;
  v30 = v29;

  v52.width = v28;
  v52.height = v30;
  UIGraphicsBeginImageContextWithOptions(v52, 0, 0.0);
  v31 = UIGraphicsGetCurrentContext();
  v32 = v31;
  if (v31)
  {
    CGContextSetShouldAntialias(v31, 1);
    CGContextSetAllowsAntialiasing(v32, 1);
  }

  v33 = String._bridgeToObjectiveC()();
  sub_100545778((v28 - v28) * 0.5, (v30 - v30) * 0.5, v24, v33);

  v34 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v34)
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000703C(v36, qword_100D90A48);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v39 = 136446466;
      static Locale.current.getter();
      sub_10054584C(&qword_100CC4CB8, &type metadata accessor for Locale);
      *&v50 = v23;
      v40 = v49;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v48 + 8))(v4, v40);
      v44 = sub_100078694(v41, v43, &v51);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v45 = sub_100078694(v5, v7, &v51);

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "UnitTemperature.localizedIcon generated image is nil. locale=%{public}s, symbolText=%{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  return v34;
}

uint64_t sub_100545570(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSMeasurementFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  [v6 setUnitStyle:1];
  v8 = [v6 stringFromUnit:a1];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9 == 45250 && v11 == 0xA200000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    [v6 setUnitStyle:2];
    v13 = [v6 stringFromUnit:a1];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = String.count.getter();

    if (v15 <= 2)
    {
      return v14;
    }
  }

  else
  {
  }

  return v9;
}

void sub_100545778(double a1, double a2, uint64_t a3, void *a4)
{
  type metadata accessor for Key(0);
  sub_10054584C(&qword_100CA30E0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [a4 drawAtPoint:isa withAttributes:{a1, a2}];
}

uint64_t sub_10054584C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100545894()
{
  sub_10017E100(&qword_100CC4D90);

  return ShortDescribable.description.getter();
}

uint64_t sub_1005458EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherComponent(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100545A20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000100AD4A10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100545ABC(void *a1)
{
  v2 = sub_10022C350(&qword_100CC4DA8);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_100545E1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_100545BE0(void *a1)
{
  v3 = sub_10022C350(&qword_100CC4D98);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_100545E1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100006F14(a1);
  return v9 & 1;
}

uint64_t sub_100545D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100545A20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100545D58(uint64_t a1)
{
  v2 = sub_100545E1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100545D94(uint64_t a1)
{
  v2 = sub_100545E1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100545DD0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100545BE0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100545E1C()
{
  result = qword_100CC4DA0;
  if (!qword_100CC4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4DA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_100545F20()
{
  result = qword_100CC4DB0;
  if (!qword_100CC4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4DB0);
  }

  return result;
}

unint64_t sub_100545F78()
{
  result = qword_100CC4DB8;
  if (!qword_100CC4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4DB8);
  }

  return result;
}

unint64_t sub_100545FD0()
{
  result = qword_100CC4DC0;
  if (!qword_100CC4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4DC0);
  }

  return result;
}

uint64_t sub_100546024@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CC3788);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC7Weather40SunriseSunsetChartBackgroundModelFactory____lazy_storage___listAnimationKind;
  swift_beginAccess();
  sub_100546BFC(v2 + v10, v9);
  v11 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  if (sub_100024D10(v9, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  sub_100546C6C(v9);
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.listAnimationKind.getter();

  sub_100546CD4();
  Configurable.setting<A>(_:)();

  (*(*(v11 - 8) + 16))(v6, a1, v11);
  sub_10001B350(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10051B3C4(v6, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_100546238@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v86 = a1;
  v87 = a2;
  v76 = a3;
  type metadata accessor for SkyBackgroundGradient();
  sub_1000037C4();
  v84 = v4;
  v85 = v3;
  __chkstk_darwin(v3);
  sub_1000038E4();
  v83 = v5;
  sub_1000038CC();
  v6 = type metadata accessor for CloudAltitudeKind();
  __chkstk_darwin(v6 - 8);
  sub_1000038E4();
  v82 = v7;
  sub_1000038CC();
  type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  sub_1000037C4();
  v79 = v9;
  v80 = v8;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v81 = v10;
  sub_1000038CC();
  v77 = type metadata accessor for Elevation();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v78 = v14;
  sub_1000038CC();
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v72 = v16;
  v73 = v15;
  __chkstk_darwin(v15);
  v71 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  sub_1000038CC();
  type metadata accessor for WeatherConditionGradientModel();
  sub_1000037C4();
  v74 = v20;
  v75 = v19;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v88 = v21;
  sub_1000038CC();
  v22 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_1000037C4();
  v24 = v23;
  __chkstk_darwin(v25);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WeatherConditionGradientModel.AnimationContext();
  sub_1000037C4();
  v30 = v29;
  __chkstk_darwin(v31);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100546024(v27);
  v34 = (*(v24 + 88))(v27, v22);
  v89 = v28;
  if (v34 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:))
  {
    (*(v30 + 104))(v33, enum case for WeatherConditionGradientModel.AnimationContext.vfx(_:), v28);
  }

  else
  {
    v35 = v34;
    v36 = enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:);
    (*(v30 + 104))(v33, enum case for WeatherConditionGradientModel.AnimationContext.mica(_:), v89);
    v28 = v89;
    if (v35 != v36)
    {
      (*(v24 + 8))(v27, v22);
    }
  }

  CurrentWeather.condition.getter();
  (*(v12 + 16))(v78, v87, v77);
  CurrentWeather.isDaylight.getter();
  v37 = *(v30 + 16);
  v38 = v81;
  v87 = v33;
  v37(v81, v33, v28);
  (*(v79 + 104))(v38, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v80);
  CurrentWeather.cloudCover.getter();
  CurrentWeather.predominateCloudAltitudeKind.getter();
  v39 = v88;
  WeatherConditionGradientModel.init(conditionKind:elevation:isDaylight:presentation:cloudCover:cloudKind:)();
  type metadata accessor for WeatherConditionGradientManager();
  swift_allocObject();
  WeatherConditionGradientManager.init()();
  v40 = v83;
  WeatherConditionGradientManager.load(for:)();
  SkyBackgroundGradient.gradient()();
  (*(v84 + 8))(v40, v85);
  if (CurrentWeather.isDaylight.getter())
  {
    v41 = v71;
    CurrentWeather.condition.getter();
    v43 = v72;
    v42 = v73;
    v44 = (*(v72 + 88))(v41, v73);
    v45 = v44 == enum case for WeatherCondition.blizzard(_:) || v44 == enum case for WeatherCondition.blowingDust(_:);
    if (!v45 && v44 != enum case for WeatherCondition.blowingSnow(_:) && v44 != enum case for WeatherCondition.breezy(_:) && v44 != enum case for WeatherCondition.clear(_:))
    {
      v51 = v44 == enum case for WeatherCondition.cloudy(_:) || v44 == enum case for WeatherCondition.drizzle(_:);
      v52 = v51 || v44 == enum case for WeatherCondition.flurries(_:);
      v53 = v52 || v44 == enum case for WeatherCondition.foggy(_:);
      v54 = v53 || v44 == enum case for WeatherCondition.freezingDrizzle(_:);
      v55 = v54 || v44 == enum case for WeatherCondition.freezingRain(_:);
      if (!v55 && v44 != enum case for WeatherCondition.frigid(_:))
      {
        v56 = v44 == enum case for WeatherCondition.hail(_:) || v44 == enum case for WeatherCondition.haze(_:);
        v57 = v56 || v44 == enum case for WeatherCondition.heavyRain(_:);
        v58 = v57 || v44 == enum case for WeatherCondition.heavySnow(_:);
        if (!v58 && v44 != enum case for WeatherCondition.hot(_:) && v44 != enum case for WeatherCondition.hurricane(_:) && v44 != enum case for WeatherCondition.isolatedThunderstorms(_:))
        {
          v60 = v44 == enum case for WeatherCondition.mostlyClear(_:) || v44 == enum case for WeatherCondition.mostlyCloudy(_:);
          if (!v60 && v44 != enum case for WeatherCondition.partlyCloudy(_:))
          {
            v70 = v44 == enum case for WeatherCondition.rain(_:) || v44 == enum case for WeatherCondition.scatteredThunderstorms(_:) || v44 == enum case for WeatherCondition.sleet(_:) || v44 == enum case for WeatherCondition.smoky(_:) || v44 == enum case for WeatherCondition.snow(_:) || v44 == enum case for WeatherCondition.strongStorms(_:) || v44 == enum case for WeatherCondition.sunFlurries(_:) || v44 == enum case for WeatherCondition.sunShowers(_:) || v44 == enum case for WeatherCondition.thunderstorms(_:) || v44 == enum case for WeatherCondition.tropicalStorm(_:);
            if (!v70 && v44 != enum case for WeatherCondition.windy(_:) && v44 != enum case for WeatherCondition.wintryMix(_:))
            {
              (*(v43 + 8))(v41, v42);
            }
          }
        }
      }
    }
  }

  v48 = v76;
  SunriseSunsetChartBackground.init(gradient:opacity:)();

  (*(v74 + 8))(v39, v75);
  (*(v30 + 8))(v87, v89);
  v49 = type metadata accessor for SunriseSunsetChartBackground();
  return sub_10001B350(v48, 0, 1, v49);
}

uint64_t sub_100546A90()
{
  sub_100546C6C(v0 + OBJC_IVAR____TtC7Weather40SunriseSunsetChartBackgroundModelFactory____lazy_storage___listAnimationKind);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SunriseSunsetChartBackgroundModelFactory()
{
  result = qword_100CC4DF8;
  if (!qword_100CC4DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100546B48()
{
  sub_100043F4C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100546BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC3788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100546C6C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC3788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100546CD4()
{
  result = qword_100CC4E80;
  if (!qword_100CC4E80)
  {
    type metadata accessor for SunriseSunsetChartBackgroundModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4E80);
  }

  return result;
}

uint64_t sub_100546D78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69746176656C65 && a2 == 0xE90000000000006ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461446E6F6F6DLL && a2 == 0xE800000000000000)
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

uint64_t sub_100546E90(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x6F69746176656C65;
  }

  return 0x617461446E6F6F6DLL;
}

uint64_t sub_100546EE4(void *a1)
{
  v4 = sub_10022C350(&qword_100CC5000);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001320C();
  sub_1000161C0(a1, a1[3]);
  sub_100547660();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_10001C584();
  sub_100127D04(v8, v9);
  sub_1000041A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for WeatherConditionBackgroundTimeData();
    type metadata accessor for Elevation();
    sub_10001033C();
    sub_100127D04(v10, v11);
    sub_1000041A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    type metadata accessor for BackgroundMoonData();
    sub_10001F034();
    sub_100127D04(v12, v13);
    sub_1000041A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1005470F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_10022C350(&qword_100CACCC0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v38 = &v37 - v6;
  v7 = sub_10022C350(&qword_100CA58B8);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Date();
  sub_1000037C4();
  v39 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v42 = v15 - v14;
  sub_10022C350(&qword_100CC4FE0);
  sub_1000037C4();
  v40 = v17;
  v41 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_10001320C();
  v19 = type metadata accessor for WeatherConditionBackgroundTimeData();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_100547660();
  v43 = v2;
  v24 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100006F14(a1);
  }

  v44 = a1;
  v25 = v39;
  v47 = 0;
  sub_10001C584();
  sub_100127D04(v26, v27);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = *(v25 + 32);
  v29 = v23;
  v28(v23, v42, v11);
  type metadata accessor for Elevation();
  v46 = 1;
  sub_10001033C();
  sub_100127D04(v30, v31);
  sub_100016AFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10002F758(v10, v23 + *(v19 + 20), &qword_100CA58B8);
  type metadata accessor for BackgroundMoonData();
  v45 = 2;
  sub_10001F034();
  sub_100127D04(v32, v33);
  v34 = v38;
  sub_100016AFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v44;
  (*(v40 + 8))(v43, v41);
  sub_10002F758(v34, v29 + *(v19 + 24), &qword_100CACCC0);
  sub_1005476B4(v29, v37);
  sub_100006F14(v35);
  return sub_100547718(v29);
}

uint64_t sub_100547588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100546D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005475B0(uint64_t a1)
{
  v2 = sub_100547660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005475EC(uint64_t a1)
{
  v2 = sub_100547660();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100547660()
{
  result = qword_100CC4FE8;
  if (!qword_100CC4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4FE8);
  }

  return result;
}

uint64_t sub_1005476B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionBackgroundTimeData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100547718(uint64_t a1)
{
  v2 = type metadata accessor for WeatherConditionBackgroundTimeData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionBackgroundTimeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100547854()
{
  result = qword_100CC5018;
  if (!qword_100CC5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5018);
  }

  return result;
}

unint64_t sub_1005478AC()
{
  result = qword_100CC5020;
  if (!qword_100CC5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5020);
  }

  return result;
}

unint64_t sub_100547904()
{
  result = qword_100CC5028[0];
  if (!qword_100CC5028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC5028);
  }

  return result;
}

uint64_t sub_100547964()
{
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100547A10()
{
  sub_100547964();

  return swift_deallocClassInstance();
}

uint64_t sub_100547A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100547B04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100547B44(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_100547B90()
{
  sub_10000C778();
  v3 = v2;
  v61 = v4;
  v60 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v58 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v57 = v8 - v7;
  v9 = sub_10022C350(&qword_100CB1AA8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_10000CC5C();
  type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v59 = v0;
  v17 = *(v0 + 8);
  v16 = *(v0 + 16);

  v55 = v16;

  static NotificationSubscription.Kind.precipitation.getter();
  sub_1000088EC();
  sub_1000BA524(v18, v19);
  LOBYTE(v16) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v20 = sub_10002C598();
  v54 = v21;
  v22 = v21(v20);
  v56 = v13;
  if (v16)
  {
    __chkstk_darwin(v22);
    sub_100003F28();
    *(v23 - 16) = v3;
    sub_1008EE460();
    v53 = v24;
    sub_10022C350(&qword_100CC5238);
    v25 = type metadata accessor for NotificationSubscription.Location();
    sub_1000037C4();
    v27 = v26;
    v28 = v1;
    v29 = v3;
    v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100A2C3F0;
    v32 = v31 + v30;
    v3 = v29;
    v1 = v28;
    (*(v27 + 16))(v32, v3, v25);
    sub_10035DAAC(v31);
    v17 = v53;
  }

  static NotificationSubscription.Kind.severe.getter();
  v33 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v34 = sub_10002C598();
  v35 = v54(v34);
  if (v33)
  {
    __chkstk_darwin(v35);
    sub_100003F28();
    *(v36 - 16) = v3;
    sub_1008EE460();
    v38 = v37;
    sub_10022C350(&qword_100CC5238);
    v39 = type metadata accessor for NotificationSubscription.Location();
    sub_1000037C4();
    v40 = v3;
    v42 = v41;
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100A2C3F0;
    (*(v42 + 16))(v44 + v43, v40, v39);
    sub_10035DAAC(v44);
    v45 = v38;
    v46 = v60;
    v48 = v57;
    v47 = v58;
  }

  else
  {
    v46 = v60;
    v48 = v57;
    v47 = v58;
    v45 = v55;
  }

  sub_10001B350(v1, 1, 1, v46);
  v49 = *v59;
  sub_100549714(v1, v56);
  if (sub_100024D10(v56, 1, v46) == 1)
  {
    type metadata accessor for NotificationsState();
    sub_10003C5D4();
    v50(v48);
    if (sub_100024D10(v56, 1, v46) != 1)
    {
      sub_100549784(v56);
    }
  }

  else
  {
    (*(v47 + 32))(v48, v56, v46);
  }

  v51 = type metadata accessor for NotificationsState();
  v52 = v59[*(v51 + 32)];
  *v61 = v49;
  *(v61 + 8) = v17;
  *(v61 + 16) = v45;
  (*(v47 + 32))(v61 + *(v51 + 28), v48, v46);
  *(v61 + *(v51 + 32)) = v52;
  sub_10000536C();
}

void sub_1005480E0()
{
  sub_10000C778();
  v2 = v1;
  v50 = v3;
  v43[1] = 0;
  v46 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v48 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v47 = v7 - v6;
  v8 = sub_10022C350(&qword_100CB1AA8);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003C38();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v44 = v43 - v14;
  type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v49 = v0;
  v18 = *(v0 + 8);
  v19 = *(v0 + 16);

  v45 = v19;

  static NotificationSubscription.Kind.precipitation.getter();
  sub_1000088EC();
  sub_1000BA524(v20, v21);
  sub_10000EB30();
  LOBYTE(v19) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22 = *(v16 + 8);
  v23 = sub_10000EB30();
  v24 = v22(v23);
  v43[0] = v2;
  if (v19)
  {
    __chkstk_darwin(v24);
    sub_100003F28();
    *(v25 - 16) = v2;
    sub_1008EE460();
    v18 = v26;
  }

  static NotificationSubscription.Kind.severe.getter();
  sub_10000EB30();
  v27 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v28 = sub_10000EB30();
  v29 = v22(v28);
  if (v27)
  {
    __chkstk_darwin(v29);
    sub_100003F28();
    *(v30 - 16) = v43[0];
    sub_1008EE460();
    v32 = v31;
    v34 = v47;
    v33 = v48;
  }

  else
  {
    v34 = v47;
    v33 = v48;
    v32 = v45;
  }

  v35 = v46;
  v36 = v44;
  sub_10001B350(v44, 1, 1, v46);
  v37 = v49;
  v38 = *v49;
  sub_100549714(v36, v12);
  if (sub_100024D10(v12, 1, v35) == 1)
  {
    type metadata accessor for NotificationsState();
    sub_10003C5D4();
    v39(v34);
    if (sub_100024D10(v12, 1, v35) != 1)
    {
      sub_100549784(v12);
    }
  }

  else
  {
    (*(v33 + 32))(v34, v12, v35);
  }

  v40 = type metadata accessor for NotificationsState();
  v41 = v37[*(v40 + 32)];
  v42 = v50;
  *v50 = v38;
  *(v42 + 1) = v18;
  *(v42 + 2) = v32;
  (*(v33 + 32))(&v42[*(v40 + 28)], v34, v35);
  v42[*(v40 + 32)] = v41;
  sub_10000536C();
}

void sub_10054849C()
{
  sub_10000C778();
  v3 = v0;
  v5 = v4;
  v29[4] = v6;
  v7 = sub_10022C350(&qword_100CB1AA8);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003C38();
  sub_100017A28();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003C38();
  sub_1000696A8();
  v15 = __chkstk_darwin(v14);
  v17 = v29 - v16;
  __chkstk_darwin(v15);
  v18 = sub_1000184E0();
  v19 = sub_100019A0C(v18);
  v20(v19);
  sub_1008B53E0(v17, v5);
  (*(v12 + 8))(v17, v10);
  v21 = sub_100020858();
  v1(v21);
  sub_10004993C();
  if (sub_100074BC4() == 1)
  {
    v22 = sub_100028700();
    v23(v22);
    v24 = sub_100074BC4();

    v25 = v24 == 1;
    v26 = v1;
    if (!v25)
    {
      sub_100549784(v29[5]);
    }
  }

  else
  {
    v27 = sub_10002481C();
    v1(v27);

    v26 = v1;
  }

  v28 = sub_1000148C0();
  v26(v28);
  *(v1 + *(v2 + 32)) = v3;
  sub_10000536C();
}

void sub_1005486AC()
{
  sub_10000C778();
  v4 = sub_10022C350(&qword_100CB1AA8);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003C38();
  sub_100017A28();
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  sub_10000CC5C();
  type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100003C38();
  sub_1000696A8();
  __chkstk_darwin(v9);
  v10 = sub_1000184E0();
  v11 = sub_100019A0C(v10);
  v12(v11);
  sub_100548950(v3);
  sub_100549784(v3);
  v13 = sub_100020858();
  v1(v13);
  sub_10004993C();
  if (sub_100074BC4() == 1)
  {
    v14 = sub_100028700();
    v15(v14);
    v16 = sub_100074BC4();

    v17 = v16 == 1;
    v18 = v1;
    if (!v17)
    {
      sub_100549784(v21);
    }
  }

  else
  {
    v19 = sub_10002481C();
    v1(v19);

    v18 = v1;
  }

  v20 = sub_1000148C0();
  v18(v20);
  *(v1 + *(v2 + 32)) = v0;
  sub_10000536C();
}

uint64_t sub_10054889C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = NotificationSubscription.Location.id.getter();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_100548950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  (*(v5 + 16))(v8, v2, v4);
  sub_1000BA524(&qword_100CB9BD0, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind);
  dispatch thunk of SetAlgebra.intersection(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    (*(v5 + 8))(v10, v4);
    v11 = 1;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    (*(v5 + 32))(a1, v10, v4);
    v11 = 0;
  }

  return sub_10001B350(a1, v11, 1, v4);
}

uint64_t sub_100548B10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000100AD4AB0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000100AD4AD0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4C657265766573 && a2 == 0xEF736E6F69746163;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x8000000100AD4AF0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000019 && 0x8000000100AD4B10 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_100548CBC(char a1)
{
  result = 0x6F4C657265766573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD00000000000001FLL;
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

uint64_t sub_100548D84(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC5208);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_10054957C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = *v3;
  v15 = 0;
  sub_100549624();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = 1;
    sub_10022C350(&qword_100CC51E8);
    sub_100549678(&qword_100CC5218, &qword_100CC5220);
    sub_100022D84();
    v14 = *(v3 + 16);
    v15 = 2;
    sub_100022D84();
    type metadata accessor for NotificationsState();
    LOBYTE(v14) = 3;
    type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    sub_10001C59C();
    sub_1000BA524(v11, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100548FF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v20 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_10022C350(&qword_100CC51D0);
  sub_1000037C4();
  __chkstk_darwin(v9);
  v21 = type metadata accessor for NotificationsState();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_1000161C0(a1, a1[3]);
  sub_10054957C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_1005495D0();
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v12 = v23;
  sub_10022C350(&qword_100CC51E8);
  sub_100549678(&qword_100CC51F0, &qword_100CC51F8);
  sub_10004E6DC();
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + 8) = v23;
  sub_10004E6DC();
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + 16) = v23;
  sub_10001C59C();
  sub_1000BA524(v13, v14);
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 32))(v12 + *(v21 + 28), v8, v22);
  sub_100013748();
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = sub_1000102B8();
  v17(v16);
  *(v12 + *(v21 + 32)) = v15 & 1;
  sub_100175920(v12, a2);
  sub_100006F14(a1);
  return sub_100175984(v12);
}

uint64_t sub_100549478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100548B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005494A0(uint64_t a1)
{
  v2 = sub_10054957C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005494DC(uint64_t a1)
{
  v2 = sub_10054957C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10054957C()
{
  result = qword_100CC51D8;
  if (!qword_100CC51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC51D8);
  }

  return result;
}

unint64_t sub_1005495D0()
{
  result = qword_100CC51E0;
  if (!qword_100CC51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC51E0);
  }

  return result;
}

unint64_t sub_100549624()
{
  result = qword_100CC5210;
  if (!qword_100CC5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5210);
  }

  return result;
}

uint64_t sub_100549678(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CC51E8);
    sub_1000BA524(a2, &type metadata accessor for NotificationSubscription.Location);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100549714(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB1AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100549784(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB1AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for NotificationsState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100549934()
{
  result = qword_100CC5240;
  if (!qword_100CC5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5240);
  }

  return result;
}

unint64_t sub_10054998C()
{
  result = qword_100CC5248;
  if (!qword_100CC5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5248);
  }

  return result;
}

unint64_t sub_1005499E4()
{
  result = qword_100CC5250;
  if (!qword_100CC5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5250);
  }

  return result;
}

uint64_t sub_100549A74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiNewsContent;
      v10 = &off_100C79D48;
      goto LABEL_30;
    case 2uLL:
      sub_10001F04C();
      v9 = &type metadata for SevereContent;
      v10 = &off_100C554D8;
      goto LABEL_30;
    case 3uLL:
      sub_10001F04C();
      v9 = &type metadata for NhpContent;
      v10 = &off_100C78888;
      goto LABEL_30;
    case 4uLL:
      sub_10001F04C();
      v9 = &type metadata for ElevatedAqiSevereContent;
      v10 = &off_100C63758;
      goto LABEL_30;
    case 5uLL:
      sub_10001F04C();
      v9 = &type metadata for DefaultNewsContent;
      v10 = &off_100C682E0;
      goto LABEL_30;
    case 6uLL:
      sub_10001F04C();
      v9 = &type metadata for DefaultTrendNewsContent;
      v10 = &off_100C70EE0;
      goto LABEL_30;
    case 7uLL:
      sub_10001F04C();
      v9 = &type metadata for ElevatedAqiNewsContent;
      v10 = &off_100C6E860;
      goto LABEL_30;
    case 8uLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiSevereNewsContent;
      v10 = &off_100C65548;
      goto LABEL_30;
    case 9uLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiSevereNhpContent;
      v10 = &off_100C71858;
      goto LABEL_30;
    case 0xAuLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiNhpNewsContent;
      v10 = &off_100C510C8;
      goto LABEL_30;
    case 0xBuLL:
      sub_10001F04C();
      v9 = &type metadata for SevereNhpContent;
      v10 = &off_100C54060;
      goto LABEL_30;
    case 0xCuLL:
      sub_10001F04C();
      v9 = &type metadata for SevereNhpAqiContent;
      v10 = &off_100C648E8;
      goto LABEL_30;
    case 0xDuLL:
      sub_10001F04C();
      v9 = &type metadata for SevereNewsContent;
      v10 = &off_100C4E6E8;
      goto LABEL_30;
    case 0xEuLL:
      sub_10001F04C();
      v9 = &type metadata for NhpNewsContent;
      v10 = &off_100C604B8;
      goto LABEL_30;
    case 0xFuLL:
      sub_10001F04C();
      v9 = &type metadata for ElevatedAqiSevereNewsContent;
      v10 = &off_100C62640;
      goto LABEL_30;
    case 0x10uLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiSevereNhpNewsContent;
      v10 = &off_100C60E78;
      goto LABEL_30;
    case 0x11uLL:
      sub_10001F04C();
      v9 = &type metadata for ElevatedAqiContent;
      v10 = &off_100C56840;
      goto LABEL_30;
    case 0x12uLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiSevereContent;
      v10 = &off_100C6AAB0;
      goto LABEL_30;
    case 0x13uLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiNhpContent;
      v10 = &off_100C76428;
      goto LABEL_30;
    case 0x14uLL:
      sub_10001F04C();
      v9 = &type metadata for NoAqiContent;
      v10 = &off_100C50218;
      goto LABEL_30;
    case 0x15uLL:
      sub_10001F04C();
      v9 = &type metadata for SevereNhpNewsContent;
      v10 = &off_100C5F908;
      goto LABEL_30;
    case 0x16uLL:
      sub_10001F04C();
      v9 = &type metadata for MinorAlertContent;
      v10 = &off_100C6B850;
      goto LABEL_30;
    case 0x17uLL:
      sub_10001F04C();
      v9 = &type metadata for NhpMinorAlertContent;
      v10 = &off_100C662B0;
      goto LABEL_30;
    case 0x18uLL:
      sub_10001F04C();
      v9 = &type metadata for ElevatedAqiMinorAlertContent;
      v10 = &off_100C5E8D0;
LABEL_30:
      result = v8(&v12, v9, v10, v6, v7);
      break;
    case 0x19uLL:
      v11 = type metadata accessor for LocationComponentContainerViewModel();

      result = sub_10001B350(a4, 1, 1, v11);
      break;
    default:
      v12 = a1;
      result = (*(a3 + 8))(&v12, &type metadata for DefaultContent, &off_100C5E230, a2, a3);
      break;
  }

  return result;
}

_DWORD *sub_100549D90(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_100549DA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 7))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 2);
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

uint64_t sub_100549DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100549E54()
{
  result = qword_100CC5258;
  if (!qword_100CC5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5258);
  }

  return result;
}

unint64_t sub_100549EA8(unint64_t a1, unint64_t a2)
{
  v2 = a2 ^ a1;
  if (a2 != a1)
  {
    return 0;
  }

  if ((a1 & 0xFF00) == 0x600)
  {
    result = 0;
    if (BYTE1(a2) != 6)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(a2) == 6 || (v2 & 0xFF00) != 0)
    {
      return result;
    }
  }

  if (((a1 >> 16) & 1) != ((a2 >> 16) & 1))
  {
    return result;
  }

  if (BYTE3(a1) == 2)
  {
    v6 = a2 & 0xFF000000;
    v7 = 0x2000000;
LABEL_13:
    if (v6 == v7)
    {
      return HIWORD(a1) & 1 ^ ((a2 & 0x1000000000000) == 0);
    }

    return 0;
  }

  if (BYTE3(a1) == 3)
  {
    v6 = a2 & 0xFF000000;
    v7 = 50331648;
    goto LABEL_13;
  }

  if ((a2 & 0xFE000000) == 0x2000000)
  {
    return 0;
  }

  result = 0;
  if ((v2 & 0x1000000) == 0 && (BYTE4(a1) & 1) == (BYTE4(a2) & 1))
  {
    v8 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE5(a1));
    v10 = v9;
    if (v8 == PredictedLocationsAuthorizationState.rawValue.getter(SBYTE5(a2)) && v10 == v11)
    {

      return HIWORD(a1) & 1 ^ ((a2 & 0x1000000000000) == 0);
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return HIWORD(a1) & 1 ^ ((a2 & 0x1000000000000) == 0);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10054A01C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74617453776F6C66 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000100AD4B30 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000100AC0090 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6573556E4974706FLL && a2 == 0xEF73757461745372;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000100AD4BB0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_10054A1D8(char a1)
{
  result = 0x74617453776F6C66;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6573556E4974706FLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10054A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10054A01C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10054A2C8(uint64_t a1)
{
  v2 = sub_10054DF4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054A304(uint64_t a1)
{
  v2 = sub_10054DF4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054A340(void *a1, unint64_t a2)
{
  v5 = sub_10022C350(&qword_100CC5430);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_10000E890(a1);
  sub_10054DF4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  sub_10054E09C();
  sub_10003A230();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = BYTE1(a2);
    v16 = 1;
    sub_10003A230();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = 2;
    sub_10002C834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = a2 >> 24;
    v14 = BYTE5(a2);
    v12[7] = 3;
    sub_10054E0F0();
    sub_10002C834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[6] = BYTE6(a2) & 1;
    v12[5] = 4;
    sub_10054E144();
    sub_10002C834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_10054A538()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CC5408);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CB4();
  sub_10000E890(v3);
  sub_10054DF4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_10054DFA0();
    sub_100008904();
    sub_100051EB4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100008904();
    sub_100051EB4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100051EB4();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10054DFF4();
    sub_100008904();
    sub_100051EB4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10054E048();
    sub_100008904();
    sub_100051EB4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v1, v4);
  }

  sub_100006F14(v3);
  sub_10000C8F4();
}

uint64_t sub_10054A798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6557657265766573 && a2 == 0xED00007265687461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000100AD4B50 == a2)
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

uint64_t sub_10054A870(char a1)
{
  if (a1)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0x6557657265766573;
  }
}

void sub_10054A8B8()
{
  sub_10000E8AC();
  v20 = v3;
  v5 = v4;
  sub_10022C350(&qword_100CC53F0);
  sub_1000037C4();
  v18 = v7;
  v19 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100003CB4();
  v17 = sub_10022C350(&qword_100CC53F8);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_10001634C();
  v12 = sub_10022C350(&qword_100CC5400);
  sub_1000037C4();
  v14 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_10000C8D8();
  sub_10000E890(v5);
  sub_10054DE50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = (v14 + 8);
  if (v20)
  {
    sub_10054DEA4();
    sub_100008904();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v18 + 8))(v0, v19);
  }

  else
  {
    sub_10054DEF8();
    sub_100008904();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v10 + 8))(v2, v17);
  }

  (*v16)(v1, v12);
  sub_10000C8F4();
}

void sub_10054AB0C()
{
  sub_10000E8AC();
  v3 = v2;
  v32 = sub_10022C350(&qword_100CC53C0);
  sub_1000037C4();
  v31 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10000C8C8();
  v6 = sub_10022C350(&qword_100CC53C8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001634C();
  v8 = sub_10022C350(&qword_100CC53D0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003CB4();
  sub_10000E890(v3);
  sub_10054DE50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_8;
  }

  v33 = v3;
  v10 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v10, 0);
  if (v12 == v11 >> 1)
  {
LABEL_7:
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    sub_10022C350(&qword_100CA7610);
    *v24 = &unk_100C5DAF8;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    swift_unknownObjectRelease();
    v25 = sub_100003C78();
    v26(v25, v8);
    v3 = v33;
LABEL_8:
    sub_100006F14(v3);
LABEL_9:
    sub_10000C8F4();
    return;
  }

  sub_1000168B4();
  if (v16 < (v15 >> 1))
  {
    v17 = *(v14 + v13);
    sub_100618E7C(v13 + 1);
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    if (v19 == v21 >> 1)
    {
      if (v17)
      {
        sub_10054DEA4();
        sub_10002871C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v0, v32);
      }

      else
      {
        sub_10054DEF8();
        sub_10002871C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        v29 = sub_100037B8C();
        v30(v29, v6);
      }

      v27 = sub_100014474();
      v28(v27);
      sub_100006F14(v33);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_10054AF5C(uint64_t a1@<X8>)
{
  sub_10054A538();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 2) = BYTE2(v3) & 1;
    *(a1 + 3) = v3 >> 24;
    *(a1 + 5) = BYTE5(v3);
    *(a1 + 6) = BYTE6(v3) & 1;
  }
}

uint64_t sub_10054AFB0(void *a1)
{
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v1[2])
  {
    v3 = 0;
  }

  return sub_10054A340(a1, v2 | v3 | (*(v1 + 3) << 24) | (v1[5] << 40) | (v1[1] << 8) | *v1);
}

unint64_t sub_10054B010(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  v6 = *(a1 + 3);
  v7 = a1[6];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[5];
  v12 = *(a2 + 3);
  v13 = a2[6];
  if (v7)
  {
    v14 = 0x1000000000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = (v6 << 24) | (v5 << 40);
  v16 = v4 == 0;
  v17 = 0x10000;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x10000;
  }

  v19 = v14 | v18 | v15 | (v3 << 8);
  if (v13)
  {
    v20 = 0x1000000000000;
  }

  else
  {
    v20 = 0;
  }

  if (!v10)
  {
    v17 = 0;
  }

  return sub_100549EA8(v19 | v2, v20 | v17 | (v12 << 24) | (v11 << 40) | (v9 << 8) | v8);
}

uint64_t sub_10054B0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10054A798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10054B0CC(uint64_t a1)
{
  v2 = sub_10054DE50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054B108(uint64_t a1)
{
  v2 = sub_10054DE50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054B144(uint64_t a1)
{
  v2 = sub_10054DEA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054B180(uint64_t a1)
{
  v2 = sub_10054DEA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054B1BC(uint64_t a1)
{
  v2 = sub_10054DEF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054B1F8(uint64_t a1)
{
  v2 = sub_10054DEF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10054B234(_BYTE *a1@<X8>)
{
  sub_10054AB0C();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

void sub_10054B280(uint64_t a1@<X8>)
{
  sub_1007586B4();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 2) = BYTE2(v3) & 1;
    *(a1 + 3) = v3 >> 24;
    *(a1 + 5) = BYTE5(v3);
    *(a1 + 6) = BYTE6(v3) & 1;
  }
}

uint64_t sub_10054B334@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  *(inited + 32) = 0x74617453776F6C66;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000100AD4B30;
  sub_10022C350(&qword_100CC5280);
  *(inited + 96) = String.init<A>(describing:)();
  *(inited + 104) = v6;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000014;
  v7 = 1702195828;
  if ((*&a1 & 0x10000) == 0)
  {
    v7 = 0x65736C6166;
  }

  v8 = 0xE400000000000000;
  if ((*&a1 & 0x10000) == 0)
  {
    v8 = 0xE500000000000000;
  }

  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0x8000000100AC0090;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CC5288);
  a2[4] = sub_10012EF24(&qword_100CC5290, &qword_100CC5288);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10054B508@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0x10000;
  if (!v1[2])
  {
    v2 = 0;
  }

  return sub_10054B334(v2 | (*(v1 + 3) << 24) | (v1[1] << 8) | *v1, a1);
}

uint64_t sub_10054B554()
{
  sub_10054DA0C();

  return ShortDescribable.description.getter();
}

uint64_t sub_10054B590@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC52A0);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_10012EF24(&qword_100CC52A8, &qword_100CC52A0);
  v8 = sub_100042FB0(a1);
  return (*(v4 + 32))(v8, v7, v2);
}

uint64_t sub_10054B738()
{
  sub_10054DA60();

  return ShortDescribable.description.getter();
}

uint64_t sub_10054B774(uint64_t a1)
{
  v2 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for ViewState(0) + 36) + 8) == 1 && (, v11 = sub_1000B010C(), , (v11 & 1) != 0) && (v12 = sub_10081B398()) != 0)
  {
    sub_1000BB194(v12 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v10);
    if (sub_100024D10(v10, 1, v2) == 1)
    {
      sub_1004C032C(a1);

      return 1;
    }

    else
    {
      (*(v4 + 32))(v7, v10, v2);
      Location.Identifier.kind.getter();
      v14 = Location.Identifier.Kind.rawValue.getter();
      v16 = v15;
      v17 = 1;
      if (v14 != Location.Identifier.Kind.rawValue.getter() || v16 != v18)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1004C032C(a1);
      (*(v4 + 8))(v7, v2);
      return v17 & 1;
    }
  }

  else
  {
    sub_1004C032C(a1);
    return 2;
  }
}

uint64_t sub_10054B9BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636F4C6B7361 && a2 == 0xEB000000006E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AD4B90 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72657665536B7361 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEE006465696E6544;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x8000000100AD4B70 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10054BBC4(char a1)
{
  result = 0x7461636F4C6B7361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x72657665536B7361;
      break;
    case 3:
      result = 0x6574656C706D6F63;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10054BC9C()
{
  sub_10000E8AC();
  v52 = v1;
  v3 = v2;
  sub_10022C350(&qword_100CC5328);
  sub_1000037C4();
  v50 = v5;
  v51 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v49 = v7;
  sub_10022C350(&qword_100CC5330);
  sub_1000037C4();
  v47 = v9;
  v48 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v46 = v11;
  sub_10022C350(&qword_100CC5338);
  sub_1000037C4();
  v44 = v13;
  v45 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v43 = v15;
  sub_10022C350(&qword_100CC5340);
  sub_1000037C4();
  v41 = v17;
  v42 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v40 = v19;
  sub_10022C350(&qword_100CC5348);
  sub_1000037C4();
  v38 = v21;
  v39 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_10000C8C8();
  v23 = sub_10022C350(&qword_100CC5350);
  sub_1000037C4();
  v37 = v24;
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v36 - v26;
  v28 = sub_10022C350(&qword_100CC5358);
  sub_1000037C4();
  v30 = v29;
  sub_100003828();
  __chkstk_darwin(v31);
  sub_10000C8D8();
  sub_10000E890(v3);
  sub_10054DAB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v32 = (v30 + 8);
  switch(v52)
  {
    case 1:
      sub_10054DC58();
      sub_100006124();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_8;
    case 2:
      sub_10054DC04();
      sub_100006124();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_8;
    case 3:
      sub_10054DBB0();
      sub_100006124();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_8;
    case 4:
      sub_10054DB5C();
      sub_100006124();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_8;
    case 5:
      sub_10054DB08();
      sub_100006124();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
LABEL_8:
      v33 = sub_100037B8C();
      v35(v33, v34);
      break;
    default:
      sub_10054DCAC();
      sub_100008904();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v27, v23);
      break;
  }

  (*v32)(v0, v28);
  sub_10000C8F4();
}

void sub_10054C184()
{
  sub_10000E8AC();
  v77 = v1;
  v4 = v3;
  sub_10022C350(&qword_100CC52B8);
  sub_1000037C4();
  v70 = v5;
  v71 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v76 = v8;
  sub_10022C350(&qword_100CC52C0);
  sub_1000037C4();
  v68 = v9;
  v69 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v75 = v12;
  sub_10022C350(&qword_100CC52C8);
  sub_1000037C4();
  v66 = v14;
  v67 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v73 = v16;
  sub_10022C350(&qword_100CC52D0);
  sub_1000037C4();
  v64 = v18;
  v65 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v72 = v20;
  sub_10022C350(&qword_100CC52D8);
  sub_1000037C4();
  v62 = v22;
  v63 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_10000C8D8();
  v24 = sub_10022C350(&qword_100CC52E0);
  sub_1000037C4();
  v61 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_10000C8C8();
  v27 = sub_10022C350(&qword_100CC52E8);
  sub_1000037C4();
  v74 = v28;
  sub_100003828();
  __chkstk_darwin(v29);
  v31 = v56 - v30;
  sub_1000161C0(v4, v4[3]);
  sub_10054DAB4();
  v32 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    goto LABEL_9;
  }

  v58 = v24;
  v59 = v0;
  v60 = v2;
  v33 = v75;
  v34 = v76;
  v77 = v4;
  v35 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v35, 0);
  if (v37 == v36 >> 1)
  {
LABEL_8:
    v51 = type metadata accessor for DecodingError();
    swift_allocError();
    v53 = v52;
    sub_10022C350(&qword_100CA7610);
    *v53 = &unk_100C5DA68;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    (*(*(v51 - 8) + 104))(v53, enum case for DecodingError.typeMismatch(_:), v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v31, v27);
    v4 = v77;
LABEL_9:
    sub_100006F14(v4);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  sub_1000168B4();
  v57 = v31;
  if (v41 < (v40 >> 1))
  {
    v42 = *(v39 + v38);
    v43 = sub_100618E7C(v38 + 1);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    v56[1] = v43;
    if (v45 == v47 >> 1)
    {
      v48 = v27;
      v49 = v74;
      switch(v42)
      {
        case 1:
          sub_10054DC58();
          v33 = v60;
          sub_10001C5B4();
          sub_100031648();
          v55 = v62;
          v54 = v63;
          goto LABEL_15;
        case 2:
          sub_10054DC04();
          v33 = v72;
          sub_10001C5B4();
          sub_100031648();
          v55 = v64;
          v54 = v65;
          goto LABEL_15;
        case 3:
          sub_10054DBB0();
          v33 = v73;
          sub_10001C5B4();
          sub_100031648();
          v55 = v66;
          v54 = v67;
          goto LABEL_15;
        case 4:
          sub_10054DB5C();
          sub_10001C5B4();
          sub_100031648();
          v54 = v68;
          v55 = v69;
LABEL_15:
          (*(v55 + 8))(v33, v54);
          break;
        case 5:
          sub_10054DB08();
          v43 = v57;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100031648();
          (*(v71 + 8))(v34, v70);
          break;
        default:
          sub_10054DCAC();
          v50 = v59;
          sub_10001C5B4();
          sub_100031648();
          (*(v61 + 8))(v50, v58);
          break;
      }

      (*(v49 + 8))(v43, v48);
      sub_100006F14(v77);
      goto LABEL_10;
    }

    v31 = v57;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_10054C858(uint64_t a1)
{
  v2 = sub_10054DCAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054C894(uint64_t a1)
{
  v2 = sub_10054DCAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054C8D0(uint64_t a1)
{
  v2 = sub_10054DC58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054C90C(uint64_t a1)
{
  v2 = sub_10054DC58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054C948(uint64_t a1)
{
  v2 = sub_10054DC04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054C984(uint64_t a1)
{
  v2 = sub_10054DC04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10054B9BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10054C9F0(uint64_t a1)
{
  v2 = sub_10054DAB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054CA2C(uint64_t a1)
{
  v2 = sub_10054DAB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054CA68(uint64_t a1)
{
  v2 = sub_10054DBB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054CAA4(uint64_t a1)
{
  v2 = sub_10054DBB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054CAE0(uint64_t a1)
{
  v2 = sub_10054DB5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054CB1C(uint64_t a1)
{
  v2 = sub_10054DB5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054CB58(uint64_t a1)
{
  v2 = sub_10054DB08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054CB94(uint64_t a1)
{
  v2 = sub_10054DB08();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10054CBD0(_BYTE *a1@<X8>)
{
  sub_10054C184();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_10054CC18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007862B0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10054CC60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564646968 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEE006465696E6544;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000100AD4B70 == a2)
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

uint64_t sub_10054CD7C(char a1)
{
  if (!a1)
  {
    return 0x6E6564646968;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0xD000000000000013;
}

void sub_10054CDE0()
{
  sub_10000E8AC();
  v33 = v1;
  v3 = v2;
  sub_10022C350(&qword_100CC53A0);
  sub_1000037C4();
  v31 = v5;
  v32 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v30 = v7;
  sub_10022C350(&qword_100CC53A8);
  sub_1000037C4();
  v28 = v9;
  v29 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CC53B0);
  sub_1000037C4();
  v27 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = sub_10022C350(&qword_100CC53B8);
  sub_1000037C4();
  v18 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  sub_1000161C0(v3, v3[3]);
  sub_10054DD00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = (v18 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      sub_10054DDA8();
      sub_100008904();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v0, v29);
    }

    else
    {
      sub_10054DD54();
      sub_100006124();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = sub_100037B8C();
      v25(v23, v24);
    }
  }

  else
  {
    sub_10054DDFC();
    sub_100008904();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v27 + 8))(v15, v11);
  }

  (*v22)(v21, v16);
  sub_10000C8F4();
}

void sub_10054D0F0()
{
  sub_10000E8AC();
  v67 = v0;
  v3 = v2;
  v66 = sub_10022C350(&qword_100CC5360);
  sub_1000037C4();
  v64 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v62 = v6;
  v63 = sub_10022C350(&qword_100CC5368);
  sub_1000037C4();
  v61 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100003CB4();
  v9 = sub_10022C350(&qword_100CC5370);
  sub_1000037C4();
  v60 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = v58 - v12;
  v14 = sub_10022C350(&qword_100CC5378);
  sub_1000037C4();
  v65 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000161C0(v3, v3[3]);
  sub_10054DD00();
  v17 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_12;
  }

  v58[0] = v9;
  v58[1] = v13;
  v58[2] = v1;
  v59 = 0;
  v18 = v66;
  v67 = v3;
  v19 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v19, 0);
  v21 = v14;
  if (v22 == v20 >> 1)
  {
    goto LABEL_10;
  }

  sub_1000168B4();
  if (v26 < (v25 >> 1))
  {
    v27 = v14;
    v28 = *(v24 + v23);
    v29 = sub_100618E7C(v23 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v63;
    v35 = v64;
    if (v31 == v33 >> 1)
    {
      if (v28)
      {
        v60 = v29;
        v36 = v59;
        if (v28 == 1)
        {
          sub_10054DDA8();
          sub_10002871C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v36)
          {
            swift_unknownObjectRelease();
            v37 = sub_100037B8C();
            v38(v37, v34);
            v39 = sub_100003C88();
            v40(v39);
LABEL_21:
            sub_100006F14(v67);
            goto LABEL_13;
          }
        }

        else
        {
          LODWORD(v63) = v28;
          sub_10054DD54();
          v49 = v62;
          sub_10002871C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v36)
          {
            swift_unknownObjectRelease();
            (*(v35 + 8))(v49, v18);
            v56 = sub_100003C88();
            v57(v56);
            goto LABEL_21;
          }
        }

        v50 = sub_100003C88();
        v51(v50);
      }

      else
      {
        sub_10054DDFC();
        sub_10002871C();
        v46 = v59;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v46)
        {
          swift_unknownObjectRelease();
          v52 = sub_100037B8C();
          v53(v52, v58[0]);
          v54 = sub_100003C78();
          v55(v54, v27);
          goto LABEL_21;
        }

        v47 = sub_100003C78();
        v48(v47, v27);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v21 = v27;
LABEL_10:
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    sub_10022C350(&qword_100CA7610);
    *v43 = &unk_100C5DC18;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.typeMismatch(_:), v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = sub_100003C78();
    v45(v44, v21);
LABEL_11:
    v3 = v67;
LABEL_12:
    sub_100006F14(v3);
LABEL_13:
    sub_10000C8F4();
    return;
  }

  __break(1u);
}

uint64_t sub_10054D65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10054CC60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10054D684(uint64_t a1)
{
  v2 = sub_10054DD00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054D6C0(uint64_t a1)
{
  v2 = sub_10054DD00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054D6FC(uint64_t a1)
{
  v2 = sub_10054DDFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054D738(uint64_t a1)
{
  v2 = sub_10054DDFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054D774(uint64_t a1)
{
  v2 = sub_10054DDA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054D7B0(uint64_t a1)
{
  v2 = sub_10054DDA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054D7EC(uint64_t a1)
{
  v2 = sub_10054DD54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054D828(uint64_t a1)
{
  v2 = sub_10054DD54();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10054D868()
{
  result = qword_100CC5260;
  if (!qword_100CC5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5260);
  }

  return result;
}

unint64_t sub_10054D8C0()
{
  result = qword_100CC5268;
  if (!qword_100CC5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5268);
  }

  return result;
}

void sub_10054D914(_BYTE *a1@<X8>)
{
  sub_10054D0F0();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_10054D960()
{
  result = qword_100CC5270;
  if (!qword_100CC5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5270);
  }

  return result;
}

unint64_t sub_10054D9B8()
{
  result = qword_100CC5278;
  if (!qword_100CC5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5278);
  }

  return result;
}

unint64_t sub_10054DA0C()
{
  result = qword_100CC5298;
  if (!qword_100CC5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5298);
  }

  return result;
}

unint64_t sub_10054DA60()
{
  result = qword_100CC52B0;
  if (!qword_100CC52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC52B0);
  }

  return result;
}

unint64_t sub_10054DAB4()
{
  result = qword_100CC52F0;
  if (!qword_100CC52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC52F0);
  }

  return result;
}

unint64_t sub_10054DB08()
{
  result = qword_100CC52F8;
  if (!qword_100CC52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC52F8);
  }

  return result;
}

unint64_t sub_10054DB5C()
{
  result = qword_100CC5300;
  if (!qword_100CC5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5300);
  }

  return result;
}

unint64_t sub_10054DBB0()
{
  result = qword_100CC5308;
  if (!qword_100CC5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5308);
  }

  return result;
}

unint64_t sub_10054DC04()
{
  result = qword_100CC5310;
  if (!qword_100CC5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5310);
  }

  return result;
}

unint64_t sub_10054DC58()
{
  result = qword_100CC5318;
  if (!qword_100CC5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5318);
  }

  return result;
}

unint64_t sub_10054DCAC()
{
  result = qword_100CC5320;
  if (!qword_100CC5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5320);
  }

  return result;
}

unint64_t sub_10054DD00()
{
  result = qword_100CC5380;
  if (!qword_100CC5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5380);
  }

  return result;
}

unint64_t sub_10054DD54()
{
  result = qword_100CC5388;
  if (!qword_100CC5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5388);
  }

  return result;
}

unint64_t sub_10054DDA8()
{
  result = qword_100CC5390;
  if (!qword_100CC5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5390);
  }

  return result;
}

unint64_t sub_10054DDFC()
{
  result = qword_100CC5398;
  if (!qword_100CC5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5398);
  }

  return result;
}

unint64_t sub_10054DE50()
{
  result = qword_100CC53D8;
  if (!qword_100CC53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC53D8);
  }

  return result;
}

unint64_t sub_10054DEA4()
{
  result = qword_100CC53E0;
  if (!qword_100CC53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC53E0);
  }

  return result;
}

unint64_t sub_10054DEF8()
{
  result = qword_100CC53E8;
  if (!qword_100CC53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC53E8);
  }

  return result;
}

unint64_t sub_10054DF4C()
{
  result = qword_100CC5410;
  if (!qword_100CC5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5410);
  }

  return result;
}

unint64_t sub_10054DFA0()
{
  result = qword_100CC5418;
  if (!qword_100CC5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5418);
  }

  return result;
}

unint64_t sub_10054DFF4()
{
  result = qword_100CC5420;
  if (!qword_100CC5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5420);
  }

  return result;
}

unint64_t sub_10054E048()
{
  result = qword_100CC5428;
  if (!qword_100CC5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5428);
  }

  return result;
}

unint64_t sub_10054E09C()
{
  result = qword_100CC5438;
  if (!qword_100CC5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5438);
  }

  return result;
}

unint64_t sub_10054E0F0()
{
  result = qword_100CC5440;
  if (!qword_100CC5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5440);
  }

  return result;
}

unint64_t sub_10054E144()
{
  result = qword_100CC5448;
  if (!qword_100CC5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5448);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationsOptInViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10054E274(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10054E360(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10054E45C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10054E58C()
{
  result = qword_100CC5450;
  if (!qword_100CC5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5450);
  }

  return result;
}

unint64_t sub_10054E5E4()
{
  result = qword_100CC5458;
  if (!qword_100CC5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5458);
  }

  return result;
}

unint64_t sub_10054E63C()
{
  result = qword_100CC5460;
  if (!qword_100CC5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5460);
  }

  return result;
}

unint64_t sub_10054E694()
{
  result = qword_100CC5468;
  if (!qword_100CC5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5468);
  }

  return result;
}

unint64_t sub_10054E6EC()
{
  result = qword_100CC5470;
  if (!qword_100CC5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5470);
  }

  return result;
}

unint64_t sub_10054E744()
{
  result = qword_100CC5478;
  if (!qword_100CC5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5478);
  }

  return result;
}

unint64_t sub_10054E79C()
{
  result = qword_100CC5480;
  if (!qword_100CC5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5480);
  }

  return result;
}

unint64_t sub_10054E7F4()
{
  result = qword_100CC5488;
  if (!qword_100CC5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5488);
  }

  return result;
}

unint64_t sub_10054E84C()
{
  result = qword_100CC5490;
  if (!qword_100CC5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5490);
  }

  return result;
}

unint64_t sub_10054E8A4()
{
  result = qword_100CC5498;
  if (!qword_100CC5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5498);
  }

  return result;
}

unint64_t sub_10054E8FC()
{
  result = qword_100CC54A0;
  if (!qword_100CC54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54A0);
  }

  return result;
}

unint64_t sub_10054E954()
{
  result = qword_100CC54A8;
  if (!qword_100CC54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54A8);
  }

  return result;
}

unint64_t sub_10054E9AC()
{
  result = qword_100CC54B0;
  if (!qword_100CC54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54B0);
  }

  return result;
}

unint64_t sub_10054EA04()
{
  result = qword_100CC54B8;
  if (!qword_100CC54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54B8);
  }

  return result;
}

unint64_t sub_10054EA5C()
{
  result = qword_100CC54C0;
  if (!qword_100CC54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54C0);
  }

  return result;
}

unint64_t sub_10054EAB4()
{
  result = qword_100CC54C8;
  if (!qword_100CC54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54C8);
  }

  return result;
}

unint64_t sub_10054EB0C()
{
  result = qword_100CC54D0;
  if (!qword_100CC54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54D0);
  }

  return result;
}

unint64_t sub_10054EB64()
{
  result = qword_100CC54D8;
  if (!qword_100CC54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54D8);
  }

  return result;
}

unint64_t sub_10054EBBC()
{
  result = qword_100CC54E0;
  if (!qword_100CC54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54E0);
  }

  return result;
}

unint64_t sub_10054EC14()
{
  result = qword_100CC54E8;
  if (!qword_100CC54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54E8);
  }

  return result;
}

unint64_t sub_10054EC6C()
{
  result = qword_100CC54F0;
  if (!qword_100CC54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54F0);
  }

  return result;
}

unint64_t sub_10054ECC4()
{
  result = qword_100CC54F8;
  if (!qword_100CC54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC54F8);
  }

  return result;
}

unint64_t sub_10054ED1C()
{
  result = qword_100CC5500;
  if (!qword_100CC5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5500);
  }

  return result;
}

unint64_t sub_10054ED74()
{
  result = qword_100CC5508;
  if (!qword_100CC5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5508);
  }

  return result;
}

unint64_t sub_10054EDCC()
{
  result = qword_100CC5510;
  if (!qword_100CC5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5510);
  }

  return result;
}

unint64_t sub_10054EE24()
{
  result = qword_100CC5518;
  if (!qword_100CC5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5518);
  }

  return result;
}

unint64_t sub_10054EE7C()
{
  result = qword_100CC5520;
  if (!qword_100CC5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5520);
  }

  return result;
}

unint64_t sub_10054EED4()
{
  result = qword_100CC5528;
  if (!qword_100CC5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5528);
  }

  return result;
}

unint64_t sub_10054EF2C()
{
  result = qword_100CC5530;
  if (!qword_100CC5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5530);
  }

  return result;
}

unint64_t sub_10054EF84()
{
  result = qword_100CC5538;
  if (!qword_100CC5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5538);
  }

  return result;
}

unint64_t sub_10054EFDC()
{
  result = qword_100CC5540;
  if (!qword_100CC5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5540);
  }

  return result;
}

unint64_t sub_10054F034()
{
  result = qword_100CC5548;
  if (!qword_100CC5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5548);
  }

  return result;
}

unint64_t sub_10054F08C()
{
  result = qword_100CC5550;
  if (!qword_100CC5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5550);
  }

  return result;
}

unint64_t sub_10054F0E4()
{
  result = qword_100CC5558;
  if (!qword_100CC5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5558);
  }

  return result;
}

uint64_t sub_10054F154@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5618);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v37)
  {
    __break(1u);
    goto LABEL_10;
  }

  v24 = v37;
  v23 = v38;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4AF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v22 = v4;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5628);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v10 = v35;
  if (!v35)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v36;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5600);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v21 = v33;
  if (!v33)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v34;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_10002D7F8(v31, v32);
  v29 = &type metadata for ContentStatusBannerViewFactory;
  v30 = &off_100C78818;
  v12 = type metadata accessor for InteractiveMapModule();
  v13 = swift_allocObject();
  sub_10002D7F8(v28, &type metadata for ContentStatusBannerViewFactory);
  v26 = &type metadata for ContentStatusBannerViewFactory;
  v27 = &off_100C78818;
  static Logger.map.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v19 = v12;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Initializing fullscreen map module", v16, 2u);
    v12 = v19;
  }

  (*(v5 + 8))(v7, v22);
  v17 = v23;
  v13[2] = v24;
  v13[3] = v17;
  v13[4] = v9;
  v13[5] = v10;
  v18 = v21;
  v13[6] = v11;
  v13[7] = v18;
  v13[8] = v20;
  sub_100013188(&v25, (v13 + 9));
  sub_100006F14(v28);
  result = sub_100006F14(v31);
  a2[3] = v12;
  a2[4] = &off_100C70570;
  *a2 = v13;
  return result;
}

uint64_t sub_10054F528@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v28;
  if (v28)
  {
    v23 = v30;
    v24 = v31;
    v6 = v29;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CC5638);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v27)
    {
      v7 = sub_10002D7F8(v26, v27);
      v8 = __chkstk_darwin(v7);
      v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for ListViewModelFactory();
      v25[3] = v13;
      v25[4] = &off_100C5CAD0;
      v25[0] = v12;
      v14 = type metadata accessor for LocationRowViewModelProvider();
      v15 = swift_allocObject();
      v16 = sub_10002D7F8(v25, v13);
      v17 = __chkstk_darwin(v16);
      v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19, v17);
      v21 = *v19;
      v15[9] = v13;
      v15[10] = &off_100C5CAD0;
      v15[2] = v5;
      v15[3] = v6;
      v22 = v24;
      v15[4] = v23;
      v15[5] = v22;
      v15[6] = v21;
      sub_100006F14(v25);
      result = sub_100006F14(v26);
      a2[3] = v14;
      a2[4] = &off_100C5F610;
      *a2 = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10054F7B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherMapZoomController();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  result = sub_100550DAC();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10054F808@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MapPerformanceTestConditionsProvider();
  swift_allocObject();
  result = sub_1007DAF84();
  *a1 = result;
  a1[1] = &off_100C6CD90;
  return result;
}

uint64_t sub_10054F850()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for Tracker();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.containerSingleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  sub_10022C350(&qword_100CC5608);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC5610);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC5618);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4AF0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC5620);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC5628);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10054FB30(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = Tracker.chain(name:identifier:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10054FBB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5 == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for InteractiveMapInputFactory();
    result = swift_allocObject();
    *(result + 16) = v5 & 1;
    a2[3] = v4;
    a2[4] = &off_100C50BA0;
    *a2 = result;
  }

  return result;
}

void sub_10054FC4C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  if (dispatch thunk of ResolverType.resolve<A>(_:name:)())
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CAFC60);
    dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v4)
    {
      a2[3] = &type metadata for InteractiveMapTracker;
      a2[4] = &off_100C63B58;
      *a2 = swift_allocObject();
      sub_10062C69C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10054FD58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v35;
  if (!v35)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v36;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5610);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  v7 = type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v32[3] = v7;
  v32[4] = &off_100C74090;
  v32[0] = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB97B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v8 = v30;
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v31;
  v27 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v29)
  {
    v9 = sub_10002D7F8(v33, v34);
    v10 = __chkstk_darwin(v9);
    v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12, v10);
    v14 = sub_10002D7F8(v32, v7);
    v15 = __chkstk_darwin(v14);
    v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_10002D7F8(v28, v29);
    v20 = __chkstk_darwin(v19);
    v22 = (&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = sub_100550A3C(v5, v6, v12, *v17, v8, v26, *v22);
    sub_100006F14(v28);
    sub_100006F14(v32);
    result = sub_100006F14(v33);
    v25 = v27;
    *v27 = v24;
    v25[1] = &off_100C79D50;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100550140(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5608);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for InteractiveMapInputFactory();
  v17 = &off_100C50BA0;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100550A2C;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5620);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for InteractiveMapViewModelFactory();
    v17 = &off_100C55420;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100550A34;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4AF0);
    swift_allocObject();
    return sub_10024B304(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005504D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InteractiveMapViewModelFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C55420;
  *a1 = result;
  return result;
}

uint64_t sub_100550520@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v50)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9798);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v49)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v37 = v51;
  v38 = v52;
  v39 = v53;
  v40 = v50;
  v41 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB97A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v47)
  {
    v5 = sub_10002D7F8(v48, v49);
    v36[1] = v36;
    v6 = __chkstk_darwin(v5);
    v8 = (v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v46, v47);
    v36[0] = v36;
    v11 = __chkstk_darwin(v10);
    v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    v15 = *v8;
    v16 = type metadata accessor for LocationFinder();
    v45[3] = v16;
    v45[4] = &off_100C5EE88;
    v45[0] = v15;
    v43 = &type metadata for AddLocationContextHelper;
    v44 = &off_100C59608;
    v17 = swift_allocObject();
    v42[0] = v17;
    v18 = *(v13 + 1);
    *(v17 + 16) = *v13;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(v13 + 4);
    type metadata accessor for InteractiveMapLocationReader();
    v19 = swift_allocObject();
    v20 = sub_10002D7F8(v45, v16);
    v21 = __chkstk_darwin(v20);
    v23 = (v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = sub_10002D7F8(v42, v43);
    v26 = __chkstk_darwin(v25);
    v28 = v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28, v26);
    v30 = *v23;
    v19[9] = v16;
    v19[10] = &off_100C5EE88;
    v19[6] = v30;
    v19[14] = &type metadata for AddLocationContextHelper;
    v19[15] = &off_100C59608;
    v31 = swift_allocObject();
    v19[11] = v31;
    v32 = *(v28 + 1);
    *(v31 + 16) = *v28;
    *(v31 + 32) = v32;
    *(v31 + 48) = *(v28 + 4);
    v33 = v37;
    v19[2] = v40;
    v19[3] = v33;
    v34 = v39;
    v19[4] = v38;
    v19[5] = v34;
    sub_100006F14(v42);
    sub_100006F14(v45);
    sub_100006F14(v46);
    result = sub_100006F14(v48);
    v35 = v41;
    *v41 = v19;
    v35[1] = &off_100C74BE0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_100550A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v41 = a5;
  v42 = a6;
  v39 = a1;
  v40 = a2;
  v10 = *a7;
  v47[3] = &type metadata for InteractiveMapTracker;
  v47[4] = &off_100C63B58;
  v11 = swift_allocObject();
  v47[0] = v11;
  v12 = *(a3 + 16);
  *(v11 + 16) = *a3;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a3 + 32);
  *(v11 + 64) = *(a3 + 48);
  v13 = type metadata accessor for WeatherDataUpdater();
  v46[3] = v13;
  v46[4] = &off_100C74090;
  v46[0] = a4;
  v44 = v10;
  v45 = &off_100C55440;
  v43[0] = a7;
  type metadata accessor for InteractiveMapInteractor();
  v14 = swift_allocObject();
  v15 = sub_10002D7F8(v47, &type metadata for InteractiveMapTracker);
  v16 = __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_10002D7F8(v46, v13);
  v21 = __chkstk_darwin(v20);
  v23 = (&v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = sub_10002D7F8(v43, v44);
  v26 = __chkstk_darwin(v25);
  v28 = (&v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = *v23;
  v31 = *v28;
  v14[7] = &type metadata for InteractiveMapTracker;
  v14[8] = &off_100C63B58;
  v32 = swift_allocObject();
  v14[4] = v32;
  v33 = *(v18 + 1);
  *(v32 + 16) = *v18;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v18 + 2);
  *(v32 + 64) = v18[48];
  v14[12] = v13;
  v14[13] = &off_100C74090;
  v14[9] = v30;
  v14[19] = v10;
  v14[20] = &off_100C55440;
  v14[16] = v31;
  v34 = OBJC_IVAR____TtC7Weather24InteractiveMapInteractor_viewData;
  v35 = type metadata accessor for ViewData();
  sub_10001B350(v14 + v34, 1, 1, v35);
  v36 = v40;
  v14[2] = v39;
  v14[3] = v36;
  v37 = v42;
  v14[14] = v41;
  v14[15] = v37;
  sub_100006F14(v43);
  sub_100006F14(v46);
  sub_100006F14(v47);
  return v14;
}

unint64_t sub_100550DAC()
{
  result = qword_100CC5630;
  if (!qword_100CC5630)
  {
    type metadata accessor for WeatherMapZoomController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC5630);
  }

  return result;
}

uint64_t sub_100550E5C()
{
  sub_100003B08();
  v0[10] = v1;
  v0[11] = v2;
  v0[12] = type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[14] = v4;
  v0[15] = v3;

  return _swift_task_switch(sub_100550EF4, v4, v3);
}

uint64_t sub_100550EF4()
{
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
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Swipe instruction", v4, 2u);
  }

  v5 = static MainActor.shared.getter();
  *(v0 + 128) = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_100551044, v6, v8);
}

uint64_t sub_100551044()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1003C28A0;
  v2 = swift_continuation_init();
  sub_1005510F4(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

void sub_1005510F4(uint64_t a1, uint64_t (*a2)(uint64_t, double, double, double, double))
{
  v4 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v46, v47);
  dispatch thunk of WindowType.bounds.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_100006F14(v46);
  v14 = a2(v13, v6, v8, v10, v12);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v14 + 32;
    do
    {
      sub_100035B30(v17, v46);
      v18 = v47;
      v19 = v48;
      sub_1000161C0(v46, v47);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = v47;
      v28 = v48;
      sub_1000161C0(v46, v47);
      v29 = (*(v28 + 24))(v27, v28);
      v30 = v47;
      v31 = v48;
      sub_1000161C0(v46, v47);
      v32 = (*(v31 + 8))(v30, v31);
      v33 = [v16 currentDevice];
      v34 = [v33 userInterfaceIdiom];

      v35 = 3;
      if (v32)
      {
        v35 = 4;
      }

      v36 = 5;
      if ((v32 & 1) == 0)
      {
        v36 = 6;
      }

      if (v34 == 1)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      v38 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
      v39 = sub_1007B9C24(v20, v22, v24, v26, 0, 0, v29, v37, 0, 0);
      v40 = v47;
      v41 = v48;
      sub_1000161C0(v46, v47);
      v42 = [objc_allocWithZone(NSNumber) initWithDouble:{(*(v41 + 32))(v40, v41)}];
      [v39 setSwipeSpeedFactor:v42];

      sub_100006F14(v46);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 += 40;
      --v15;
    }

    while (v15);
  }

  v43 = swift_allocObject();
  *(v43 + 16) = a1;
  v44 = objc_allocWithZone(type metadata accessor for GroupTestParameters());
  v45 = sub_1003C2EFC(_swiftEmptyArrayStorage, sub_10055163C, v43);
  [objc_opt_self() runTestWithParameters:v45];
}

uint64_t sub_1005514B4(uint64_t a1)
{
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90CF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performed Swipe instruction", v5, 2u);
  }

  return _swift_continuation_throwingResume(a1);
}

uint64_t sub_1005515A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return sub_100550E5C();
}

uint64_t sub_100551644@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationPreviewView();
  sub_100035B30(v1 + 16, a1 + v3[13]);
  v16 = *(v1 + 64);
  sub_100035B30(v1 + 80, a1 + v3[15]);
  *(a1 + v3[7]) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  type metadata accessor for ObservableResolver();
  sub_100139100();

  swift_unknownObjectRetain();
  v5 = EnvironmentObject.init()();
  v7 = v6;
  *a1 = 0;
  State.init(wrappedValue:)();
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = 0;
  v8 = a1 + v3[8];
  *v8 = KeyPath;
  *(v8 + 8) = 0;
  v9 = (a1 + v3[9]);
  *v9 = v5;
  v9[1] = v7;
  v10 = a1 + v3[10];
  *v10 = sub_10036C818;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = a1 + v3[11];
  *v11 = sub_10036C844;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = (a1 + v3[12]);
  sub_10022C350(&qword_100CA4AB8);
  sub_100551A5C();
  *v12 = ObservedObject.init(wrappedValue:)();
  v12[1] = v13;
  *(a1 + v3[14]) = v16;
  v14 = a1 + v3[16];
  result = State.init(wrappedValue:)();
  *v14 = v17;
  *(v14 + 8) = v18;
  return result;
}

uint64_t sub_100551850()
{
  sub_100006F14(v0 + 16);

  swift_unknownObjectRelease();
  sub_100006F14(v0 + 80);
  return v0;
}

uint64_t sub_100551888()
{
  sub_100551850();

  return swift_deallocClassInstance();
}

void *sub_1005518E0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v26 = a8;
  v14 = sub_100042FB0(v24);
  (*(*(a6 - 8) + 32))(v14, a1, a6);
  v15 = swift_allocObject();
  v16 = sub_10002D7F8(v24, v25);
  v17 = __chkstk_darwin(v16);
  v19 = (&v24[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v15[5] = type metadata accessor for LocationPreviewInteractor();
  v15[6] = &off_100C7B9E8;
  v15[2] = v21;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a9;
  sub_100013188(a4, (v15 + 10));
  sub_100006F14(v24);
  return v15;
}

unint64_t sub_100551A5C()
{
  result = qword_100CA4AC0;
  if (!qword_100CA4AC0)
  {
    sub_10022E824(&qword_100CA4AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4AC0);
  }

  return result;
}

void sub_100551AC0()
{
  sub_10000C778();
  sub_1000C8500(_swiftEmptyArrayStorage);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000082C0();
  sub_100024830();
  __chkstk_darwin(v0);
  v2 = sub_100006134(v1, v116);
  v3(v2);
  v4 = sub_1000C8294();
  sub_1003BD6E4(v4, v5);
  v6 = sub_10012CD44();
  v7(v6);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100013990();
  sub_100043790();
  __chkstk_darwin(v8);
  v10 = sub_100006134(v9, v117);
  v11(v10);
  v12 = sub_1000B9158();
  sub_1003BD6E4(v12, v13);
  v14 = sub_100042288();
  v15(v14);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10003C5E8();
  __chkstk_darwin(v16);
  v18 = sub_10001C5D8(v17, v118);
  v19(v18);
  v20 = sub_1000C8BD4();
  sub_1003BD6E4(v20, v21);
  v22 = sub_100071524();
  v23(v22);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000CC70();
  __chkstk_darwin(v24);
  v26 = sub_10001C5D8(v25, v119);
  v27(v26);
  v28 = sub_1000C8BD4();
  sub_1003BD6E4(v28, v29);
  v30 = sub_100087DCC();
  v31(v30);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002C844();
  __chkstk_darwin(v32);
  v34 = sub_10001C5D8(v33, v120);
  v35(v34);
  v36 = sub_1000C8BD4();
  sub_1003BD6E4(v36, v37);
  v38 = sub_1000439D8();
  v39(v38);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100051EC0();
  __chkstk_darwin(v40);
  v42 = sub_10001C5D8(v41, v121);
  v43(v42);
  v44 = sub_1000C8BD4();
  sub_1003BD6E4(v44, v45);
  v46 = sub_1000A7CA0();
  v47(v46);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100018500();
  __chkstk_darwin(v48);
  v50 = sub_10001C5D8(v49, v122);
  v51(v50);
  v52 = sub_1000C8BD4();
  sub_1003BD6E4(v52, v53);
  v54 = sub_1000D4244();
  v55(v54);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002086C();
  __chkstk_darwin(v56);
  v58 = sub_10001C5D8(v57, v123);
  v59(v58);
  v60 = sub_1000C8BD4();
  sub_1003BD6E4(v60, v61);
  v62 = sub_10008658C();
  v63(v62);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000EB3C();
  __chkstk_darwin(v64);
  v66 = sub_10001C5D8(v65, v124);
  v67(v66);
  v68 = sub_1000C8BD4();
  sub_1003BD6E4(v68, v69);
  v70 = sub_100071784();
  v71(v70);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100031660();
  __chkstk_darwin(v72);
  v74 = sub_100008910(v73, v125);
  v75(v74);
  v76 = sub_1000C8BD4();
  sub_1003BD6E4(v76, v77);
  v78 = sub_1000C8794();
  v79(v78);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100037B98();
  __chkstk_darwin(v80);
  v82 = sub_100008910(v81, v126);
  v83(v82);
  v84 = sub_1000C8BD4();
  sub_1003BD6E4(v84, v85);
  v86 = sub_1000867B8();
  v87(v86);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100074BE0();
  __chkstk_darwin(v88);
  v90 = sub_100008910(v89, v127);
  v91(v90);
  v92 = sub_1000C8BD4();
  sub_1003BD6E4(v92, v93);
  v94 = sub_1000D3EC0();
  v95(v94);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_10002FF10();
  __chkstk_darwin(v96);
  v98 = sub_100008910(v97, v128);
  v99(v98);
  sub_1005685DC();
  v100 = sub_1000B024C();
  v101(v100);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  v103 = v102;
  sub_100016B1C();
  __chkstk_darwin(v104);
  v106 = sub_100008910(v105, v129);
  v107(v106);
  v108 = sub_100045418();
  sub_1003BD6E4(v108, v109);
  v110 = sub_1000AF584();
  v111(v110);
  sub_10003BA74();
  do
  {
    sub_10004524C();
    if (v113)
    {
      sub_100092620();
    }

    else
    {
      switch(v112)
      {
        case 12:
          sub_100071994();
          break;
        case 13:
          sub_100087178();
          break;
        case 14:
          sub_100032610();
          break;
        default:
          break;
      }
    }

    sub_100568610();
    sub_100040F70();
    v114 = sub_1000114B8();
    v115(v114);
  }

  while (v103);
  sub_1000883F0();
  sub_10000536C();
}

void sub_1005524D8()
{
  sub_10000C778();
  v2 = v1;
  sub_1000C8500(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100024830();
  __chkstk_darwin(v4);
  v6 = sub_1000044A4(v5, v100[0]);
  v7(v6);
  v8 = sub_100041018();
  sub_1003BD6E4(v8, v9);
  v10 = sub_1005685F8();
  v11(v10, v3);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100013990();
  sub_100043790();
  __chkstk_darwin(v12);
  v14 = sub_1000044A4(v13, v100[0]);
  v15(v14);
  v16 = sub_1000B9158();
  sub_1003BD6E4(v16, v17);
  v18 = sub_1005685F8();
  v19(v18, v0);
  v20 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_10003C5E8();
  __chkstk_darwin(v21);
  v23 = sub_1000148E8(v22, v100[0]);
  v24(v23);
  sub_1001923CC();
  v25 = sub_1005685F8();
  v100[18] = v20;
  v26(v25, v20);
  v27 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_10000CC70();
  __chkstk_darwin(v28);
  v30 = sub_1000148E8(v29, v100[0]);
  v31(v30);
  sub_1001923CC();
  v32 = sub_1005685F8();
  v100[16] = v27;
  v33(v32, v27);
  v34 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_10002C844();
  __chkstk_darwin(v35);
  v37 = sub_1000148E8(v36, v100[0]);
  v38(v37);
  sub_1001923CC();
  v39 = sub_1005685F8();
  v100[14] = v34;
  v40(v39, v34);
  v41 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100051EC0();
  __chkstk_darwin(v42);
  v44 = sub_1000148E8(v43, v100[0]);
  v45(v44);
  sub_1001923CC();
  v46 = sub_1005685F8();
  v100[12] = v41;
  v47(v46, v41);
  v48 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100018500();
  __chkstk_darwin(v49);
  v51 = sub_1000148E8(v50, v100[0]);
  v52(v51);
  sub_1001923CC();
  v53 = sub_1005685F8();
  v100[10] = v48;
  v54(v53, v48);
  v55 = *(v2 + 56);
  v56 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  v58 = v57;
  sub_10002086C();
  v60 = __chkstk_darwin(v59);
  v62 = v100 - v61;
  (*(v58 + 16))(v100 - v61, v55, v56, v60);
  sub_1003BD6E4(&v101, v56);
  v63 = *(v58 + 8);
  v100[8] = v56;
  v63(v62, v56);
  v64 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_10000EB3C();
  __chkstk_darwin(v65);
  sub_10001320C();
  v66 = sub_100071D20();
  v67(v66);
  v68 = sub_1000FFC64();
  sub_1003BD6E4(v68, v69);
  v70 = sub_1000E1730();
  v100[6] = v64;
  v71(v70, v64);
  v72 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100031660();
  __chkstk_darwin(v73);
  sub_10001320C();
  v74 = sub_100071D20();
  v75(v74);
  v76 = sub_1000FFC64();
  sub_1003BD6E4(v76, v77);
  v78 = sub_1000E1730();
  v100[4] = v72;
  v79(v78, v72);
  v80 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  v100[2] = v81 & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  sub_100003828();
  __chkstk_darwin(v82);
  sub_10001320C();
  v83 = sub_100071D20();
  v84(v83);
  v85 = sub_1000FFC64();
  sub_1003BD6E4(v85, v86);
  v87 = sub_1000E1730();
  v88(v87, v80);
  v89 = type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100037B98();
  __chkstk_darwin(v90);
  sub_10001320C();
  v91 = sub_100071D20();
  v92(v91);
  v93 = sub_100045418();
  sub_1003BD6E4(v93, v94);
  v95 = sub_1000E1730();
  v96(v95, v89);
  v100[0] = v101;
  v97 = 12;
  do
  {
    --v97;
    sub_100568610();
    sub_100040F70();
    v98 = sub_1000114B8();
    v99(v98);
  }

  while (v97);
  sub_10000536C();
}

void sub_100552E50()
{
  sub_10000C778();
  sub_1000C8500(_swiftEmptyArrayStorage);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000082C0();
  sub_100024830();
  __chkstk_darwin(v0);
  v2 = sub_100006134(v1, v116);
  v3(v2);
  v4 = sub_1000C8294();
  sub_1003BD6E4(v4, v5);
  v6 = sub_10012CD44();
  v7(v6);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100013990();
  sub_100043790();
  __chkstk_darwin(v8);
  v10 = sub_100006134(v9, v117);
  v11(v10);
  v12 = sub_1000B9158();
  sub_1003BD6E4(v12, v13);
  v14 = sub_100042288();
  v15(v14);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10003C5E8();
  __chkstk_darwin(v16);
  v18 = sub_10001C5D8(v17, v118);
  v19(v18);
  v20 = sub_1000C8BD4();
  sub_1003BD6E4(v20, v21);
  v22 = sub_100071524();
  v23(v22);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000CC70();
  __chkstk_darwin(v24);
  v26 = sub_10001C5D8(v25, v119);
  v27(v26);
  v28 = sub_1000C8BD4();
  sub_1003BD6E4(v28, v29);
  v30 = sub_100087DCC();
  v31(v30);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002C844();
  __chkstk_darwin(v32);
  v34 = sub_10001C5D8(v33, v120);
  v35(v34);
  v36 = sub_1000C8BD4();
  sub_1003BD6E4(v36, v37);
  v38 = sub_1000439D8();
  v39(v38);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100051EC0();
  __chkstk_darwin(v40);
  v42 = sub_10001C5D8(v41, v121);
  v43(v42);
  v44 = sub_1000C8BD4();
  sub_1003BD6E4(v44, v45);
  v46 = sub_1000A7CA0();
  v47(v46);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100018500();
  __chkstk_darwin(v48);
  v50 = sub_10001C5D8(v49, v122);
  v51(v50);
  v52 = sub_1000C8BD4();
  sub_1003BD6E4(v52, v53);
  v54 = sub_1000D4244();
  v55(v54);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002086C();
  __chkstk_darwin(v56);
  v58 = sub_10001C5D8(v57, v123);
  v59(v58);
  v60 = sub_1000C8BD4();
  sub_1003BD6E4(v60, v61);
  v62 = sub_10008658C();
  v63(v62);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000EB3C();
  __chkstk_darwin(v64);
  v66 = sub_10001C5D8(v65, v124);
  v67(v66);
  v68 = sub_1000C8BD4();
  sub_1003BD6E4(v68, v69);
  v70 = sub_100071784();
  v71(v70);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100031660();
  __chkstk_darwin(v72);
  v74 = sub_100008910(v73, v125);
  v75(v74);
  v76 = sub_1000C8BD4();
  sub_1003BD6E4(v76, v77);
  v78 = sub_1000C8794();
  v79(v78);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100037B98();
  __chkstk_darwin(v80);
  v82 = sub_100008910(v81, v126);
  v83(v82);
  v84 = sub_1000C8BD4();
  sub_1003BD6E4(v84, v85);
  v86 = sub_1000867B8();
  v87(v86);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100074BE0();
  __chkstk_darwin(v88);
  v90 = sub_100008910(v89, v127);
  v91(v90);
  v92 = sub_1000C8BD4();
  sub_1003BD6E4(v92, v93);
  v94 = sub_1000D3EC0();
  v95(v94);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_10002FF10();
  __chkstk_darwin(v96);
  v98 = sub_100008910(v97, v128);
  v99(v98);
  sub_1005685DC();
  v100 = sub_1000B024C();
  v101(v100);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  v103 = v102;
  sub_100016B1C();
  __chkstk_darwin(v104);
  v106 = sub_100008910(v105, v129);
  v107(v106);
  v108 = sub_100045418();
  sub_1003BD6E4(v108, v109);
  v110 = sub_1000AF584();
  v111(v110);
  sub_10003BA74();
  do
  {
    sub_10004524C();
    if (v113)
    {
      sub_100092620();
    }

    else
    {
      switch(v112)
      {
        case 12:
          sub_100071994();
          break;
        case 13:
          sub_100087178();
          break;
        case 14:
          sub_100032610();
          break;
        default:
          break;
      }
    }

    sub_100568610();
    sub_100040F70();
    v114 = sub_1000114B8();
    v115(v114);
  }

  while (v103);
  sub_1000883F0();
  sub_10000536C();
}

void sub_100553868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  sub_1000C8500(_swiftEmptyArrayStorage);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000082C0();
  sub_100024830();
  __chkstk_darwin(v23);
  v25 = sub_100006134(v24, v131);
  v26(v25);
  v27 = sub_1000C8294();
  sub_1003BD6E4(v27, v28);
  v29 = sub_10012CD44();
  v30(v29);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000C837C();
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = sub_100006134(v32, v132);
  v34(v33);
  v35 = sub_1000B9158();
  sub_1003BD6E4(v35, v36);
  v37 = sub_100042288();
  v38(v37);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10003C5E8();
  __chkstk_darwin(v39);
  v41 = sub_100006134(v40, v133);
  v42(v41);
  v43 = sub_1000E31F0();
  sub_1003BD6E4(v43, v44);
  v45 = sub_1000E1588();
  v46(v45);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10000CC70();
  __chkstk_darwin(v47);
  v49 = sub_100006134(v48, v134);
  v50(v49);
  v51 = sub_1000E31F0();
  sub_1003BD6E4(v51, v52);
  v53 = sub_100088870();
  v54(v53);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10002C844();
  __chkstk_darwin(v55);
  v57 = sub_100006134(v56, v135);
  v58(v57);
  v59 = sub_1000E31F0();
  sub_1003BD6E4(v59, v60);
  v61 = sub_100021D9C();
  v62(v61);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100051EC0();
  __chkstk_darwin(v63);
  v65 = sub_100006134(v64, v136);
  v66(v65);
  v67 = sub_1000E31F0();
  sub_1003BD6E4(v67, v68);
  v69 = sub_1000C85BC();
  v70(v69);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100018500();
  __chkstk_darwin(v71);
  v73 = sub_100006134(v72, v137);
  v74(v73);
  v75 = sub_1000E31F0();
  sub_1003BD6E4(v75, v76);
  v77 = sub_1000D3D74();
  v78(v77);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10002086C();
  __chkstk_darwin(v79);
  v81 = sub_100006134(v80, v138);
  v82(v81);
  v83 = sub_1000E31F0();
  sub_1003BD6E4(v83, v84);
  v85 = sub_100172184();
  v86(v85);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10000EB3C();
  __chkstk_darwin(v87);
  v89 = sub_100008910(v88, v139);
  v90(v89);
  v91 = sub_1000E31F0();
  sub_1003BD6E4(v91, v92);
  v93 = sub_100038004();
  v94(v93);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100031660();
  __chkstk_darwin(v95);
  v97 = sub_100008910(v96, v140);
  v98(v97);
  v99 = sub_1000E31F0();
  sub_1003BD6E4(v99, v100);
  v101 = sub_100037820();
  v102(v101);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100037B98();
  __chkstk_darwin(v103);
  v105 = sub_100008910(v104, v141);
  v106(v105);
  v107 = sub_1000E31F0();
  sub_1003BD6E4(v107, v108);
  v109 = sub_100192518();
  v110(v109);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_1000D3C08();
  __chkstk_darwin(v111);
  v113 = sub_100008910(v112, v142);
  v114(v113);
  v115 = sub_1000E31F0();
  sub_1003BD6E4(v115, v116);
  v117 = sub_1000BAF0C();
  v118(v117, v20);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  v120 = v119;
  sub_100074BE0();
  __chkstk_darwin(v121);
  v123 = sub_100008910(v122, v143);
  v124(v123);
  sub_1005685DC();
  v125 = sub_1000B024C();
  v126(v125);
  sub_100051AAC();
  do
  {
    sub_10004524C();
    if (v128)
    {
      sub_100568628();
    }

    else
    {
      switch(v127)
      {
        case 12:
          sub_1000E0F50();
          break;
        case 13:
          sub_100040CD4();
          break;
        default:
          break;
      }
    }

    sub_100568610();
    sub_100568634();
    v129 = sub_1000114B8();
    v130(v129);
  }

  while (v120);
  sub_1001711F4(&a17);
  sub_10000536C();
}

void sub_1005541F4()
{
  sub_10000C778();
  sub_1000C8500(_swiftEmptyArrayStorage);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100024830();
  __chkstk_darwin(v1);
  v3 = sub_100010354(v2, v123);
  v4(v3);
  sub_1000E13C0();
  v5 = sub_1000B0E9C();
  v6(v5);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100013990();
  sub_100043790();
  __chkstk_darwin(v7);
  v9 = sub_100010354(v8, v124);
  v10(v9);
  v11 = sub_1000B9158();
  sub_1003BD6E4(v11, v12);
  v13 = sub_1000B0C88();
  v14(v13);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10003C5E8();
  __chkstk_darwin(v15);
  v17 = sub_10001F064(v16, v125);
  v18(v17);
  v19 = sub_1000C8BD4();
  sub_1003BD6E4(v19, v20);
  v21 = sub_100025238();
  v22(v21);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000CC70();
  __chkstk_darwin(v23);
  v25 = sub_10001F064(v24, v126);
  v26(v25);
  v27 = sub_1000C8BD4();
  sub_1003BD6E4(v27, v28);
  v29 = sub_1000304B8();
  v30(v29);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002C844();
  __chkstk_darwin(v31);
  v33 = sub_10001F064(v32, v127);
  v34(v33);
  v35 = sub_1000C8BD4();
  sub_1003BD6E4(v35, v36);
  v37 = sub_10003BE20();
  v38(v37);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100051EC0();
  __chkstk_darwin(v39);
  v41 = sub_10001F064(v40, v128);
  v42(v41);
  v43 = sub_1000C8BD4();
  sub_1003BD6E4(v43, v44);
  v45 = sub_10003A244();
  v46(v45);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100018500();
  __chkstk_darwin(v47);
  v49 = sub_10001F064(v48, v129);
  v50(v49);
  v51 = sub_1000C8BD4();
  sub_1003BD6E4(v51, v52);
  v53 = sub_1000241F0();
  v54(v53);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002086C();
  __chkstk_darwin(v55);
  v57 = sub_10001F064(v56, v130);
  v58(v57);
  v59 = sub_1000C8BD4();
  sub_1003BD6E4(v59, v60);
  v61 = sub_1000371BC();
  v62(v61);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000EB3C();
  __chkstk_darwin(v63);
  v65 = sub_10001F064(v64, v131);
  v66(v65);
  v67 = sub_1000C8BD4();
  sub_1003BD6E4(v67, v68);
  v69 = sub_100020FF4();
  v70(v69);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100031660();
  __chkstk_darwin(v71);
  v73 = sub_10001F064(v72, v132);
  v74(v73);
  v75 = sub_1000C8BD4();
  sub_1003BD6E4(v75, v76);
  v77 = sub_100021510();
  v78(v77);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100037B98();
  __chkstk_darwin(v79);
  v81 = sub_10001F064(v80, v133);
  v82(v81);
  v83 = sub_1000C8BD4();
  sub_1003BD6E4(v83, v84);
  v85 = sub_1000163C0();
  v86(v85);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100074BE0();
  __chkstk_darwin(v87);
  v89 = sub_10001F064(v88, v134);
  v90(v89);
  v91 = sub_1000C8BD4();
  sub_1003BD6E4(v91, v92);
  v93 = sub_100041A4C();
  v94(v93);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100016B1C();
  __chkstk_darwin(v95);
  v97 = sub_10001F064(v96, v135);
  v98(v97);
  v99 = sub_1000C8BD4();
  sub_1003BD6E4(v99, v100);
  v101 = sub_100017A3C();
  v102(v101);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100031D80();
  __chkstk_darwin(v103);
  v105 = sub_100010354(v104, v136);
  v106(v105);
  v107 = sub_100045418();
  sub_1003BD6E4(v107, v108);
  v109 = sub_1000C8EA0();
  v110(v109);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000082C0();
  sub_1000696BC();
  __chkstk_darwin(v111);
  v113 = sub_100019A30(v112, v137);
  v114(v113);
  v115 = sub_1000C8294();
  sub_1003BD6E4(v115, v116);
  v117 = sub_100079514();
  v118(v117);
  sub_10006A80C();
  do
  {
    sub_1000B97FC();
    if (v120)
    {
      sub_100568604();
    }

    else
    {
      switch(v119)
      {
        case 12:
          sub_100071994();
          break;
        case 13:
          sub_10002025C();
          break;
        case 14:
          sub_10001329C();
          break;
        case 15:
          sub_1000BCE9C();
          break;
        default:
          break;
      }
    }

    sub_100568610();
    sub_100040F70();
    v121 = sub_1000114B8();
    v122(v121);
  }

  while (v0);
  sub_1000C9004();
  sub_10000536C();
}

void sub_100554CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  sub_1000C8500(_swiftEmptyArrayStorage);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000082C0();
  sub_100024830();
  __chkstk_darwin(v23);
  v25 = sub_100006134(v24, v131);
  v26(v25);
  v27 = sub_1000C8294();
  sub_1003BD6E4(v27, v28);
  v29 = sub_10012CD44();
  v30(v29);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000C837C();
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = sub_100006134(v32, v132);
  v34(v33);
  v35 = sub_1000B9158();
  sub_1003BD6E4(v35, v36);
  v37 = sub_100042288();
  v38(v37);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10003C5E8();
  __chkstk_darwin(v39);
  v41 = sub_100006134(v40, v133);
  v42(v41);
  v43 = sub_1000E31F0();
  sub_1003BD6E4(v43, v44);
  v45 = sub_1000E1588();
  v46(v45);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10000CC70();
  __chkstk_darwin(v47);
  v49 = sub_100006134(v48, v134);
  v50(v49);
  v51 = sub_1000E31F0();
  sub_1003BD6E4(v51, v52);
  v53 = sub_100088870();
  v54(v53);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10002C844();
  __chkstk_darwin(v55);
  v57 = sub_100006134(v56, v135);
  v58(v57);
  v59 = sub_1000E31F0();
  sub_1003BD6E4(v59, v60);
  v61 = sub_100021D9C();
  v62(v61);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100051EC0();
  __chkstk_darwin(v63);
  v65 = sub_100006134(v64, v136);
  v66(v65);
  v67 = sub_1000E31F0();
  sub_1003BD6E4(v67, v68);
  v69 = sub_1000C85BC();
  v70(v69);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100018500();
  __chkstk_darwin(v71);
  v73 = sub_100006134(v72, v137);
  v74(v73);
  v75 = sub_1000E31F0();
  sub_1003BD6E4(v75, v76);
  v77 = sub_1000D3D74();
  v78(v77);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10002086C();
  __chkstk_darwin(v79);
  v81 = sub_100006134(v80, v138);
  v82(v81);
  v83 = sub_1000E31F0();
  sub_1003BD6E4(v83, v84);
  v85 = sub_100172184();
  v86(v85);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10000EB3C();
  __chkstk_darwin(v87);
  v89 = sub_100008910(v88, v139);
  v90(v89);
  v91 = sub_1000E31F0();
  sub_1003BD6E4(v91, v92);
  v93 = sub_100038004();
  v94(v93);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100031660();
  __chkstk_darwin(v95);
  v97 = sub_100008910(v96, v140);
  v98(v97);
  v99 = sub_1000E31F0();
  sub_1003BD6E4(v99, v100);
  v101 = sub_100037820();
  v102(v101);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100037B98();
  __chkstk_darwin(v103);
  v105 = sub_100008910(v104, v141);
  v106(v105);
  v107 = sub_1000E31F0();
  sub_1003BD6E4(v107, v108);
  v109 = sub_100192518();
  v110(v109);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_1000D3C08();
  __chkstk_darwin(v111);
  v113 = sub_100008910(v112, v142);
  v114(v113);
  v115 = sub_1000E31F0();
  sub_1003BD6E4(v115, v116);
  v117 = sub_1000BAF0C();
  v118(v117, v20);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  v120 = v119;
  sub_100074BE0();
  __chkstk_darwin(v121);
  v123 = sub_100008910(v122, v143);
  v124(v123);
  sub_1005685DC();
  v125 = sub_1000B024C();
  v126(v125);
  sub_100051AAC();
  do
  {
    sub_10004524C();
    if (v128)
    {
      sub_100568628();
    }

    else
    {
      switch(v127)
      {
        case 12:
          sub_1000E0F50();
          break;
        case 13:
          sub_100040CD4();
          break;
        default:
          break;
      }
    }

    sub_100568610();
    sub_100568634();
    v129 = sub_1000114B8();
    v130(v129);
  }

  while (v120);
  sub_1001711F4(&a17);
  sub_10000536C();
}

void sub_100555634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  sub_1000C8500(_swiftEmptyArrayStorage);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000082C0();
  sub_100024830();
  __chkstk_darwin(v23);
  v25 = sub_100006134(v24, v131);
  v26(v25);
  v27 = sub_1000C8294();
  sub_1003BD6E4(v27, v28);
  v29 = sub_10012CD44();
  v30(v29);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000C837C();
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = sub_100006134(v32, v132);
  v34(v33);
  v35 = sub_1000B9158();
  sub_1003BD6E4(v35, v36);
  v37 = sub_100042288();
  v38(v37);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10003C5E8();
  __chkstk_darwin(v39);
  v41 = sub_100006134(v40, v133);
  v42(v41);
  v43 = sub_1000E31F0();
  sub_1003BD6E4(v43, v44);
  v45 = sub_1000E1588();
  v46(v45);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10000CC70();
  __chkstk_darwin(v47);
  v49 = sub_100006134(v48, v134);
  v50(v49);
  v51 = sub_1000E31F0();
  sub_1003BD6E4(v51, v52);
  v53 = sub_100088870();
  v54(v53);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10002C844();
  __chkstk_darwin(v55);
  v57 = sub_100006134(v56, v135);
  v58(v57);
  v59 = sub_1000E31F0();
  sub_1003BD6E4(v59, v60);
  v61 = sub_100021D9C();
  v62(v61);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100051EC0();
  __chkstk_darwin(v63);
  v65 = sub_100006134(v64, v136);
  v66(v65);
  v67 = sub_1000E31F0();
  sub_1003BD6E4(v67, v68);
  v69 = sub_1000C85BC();
  v70(v69);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100018500();
  __chkstk_darwin(v71);
  v73 = sub_100006134(v72, v137);
  v74(v73);
  v75 = sub_1000E31F0();
  sub_1003BD6E4(v75, v76);
  v77 = sub_1000D3D74();
  v78(v77);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10002086C();
  __chkstk_darwin(v79);
  v81 = sub_100006134(v80, v138);
  v82(v81);
  v83 = sub_1000E31F0();
  sub_1003BD6E4(v83, v84);
  v85 = sub_100172184();
  v86(v85);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_10000EB3C();
  __chkstk_darwin(v87);
  v89 = sub_100008910(v88, v139);
  v90(v89);
  v91 = sub_1000E31F0();
  sub_1003BD6E4(v91, v92);
  v93 = sub_100038004();
  v94(v93);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100031660();
  __chkstk_darwin(v95);
  v97 = sub_100008910(v96, v140);
  v98(v97);
  v99 = sub_1000E31F0();
  sub_1003BD6E4(v99, v100);
  v101 = sub_100037820();
  v102(v101);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_100037B98();
  __chkstk_darwin(v103);
  v105 = sub_100008910(v104, v141);
  v106(v105);
  v107 = sub_1000E31F0();
  sub_1003BD6E4(v107, v108);
  v109 = sub_100192518();
  v110(v109);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100028728();
  sub_1000D3C08();
  __chkstk_darwin(v111);
  v113 = sub_100008910(v112, v142);
  v114(v113);
  v115 = sub_1000E31F0();
  sub_1003BD6E4(v115, v116);
  v117 = sub_1000BAF0C();
  v118(v117, v20);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  v120 = v119;
  sub_100074BE0();
  __chkstk_darwin(v121);
  v123 = sub_100008910(v122, v143);
  v124(v123);
  sub_1005685DC();
  v125 = sub_1000B024C();
  v126(v125);
  sub_100051AAC();
  do
  {
    sub_10004524C();
    if (v128)
    {
      sub_100568628();
    }

    else
    {
      switch(v127)
      {
        case 12:
          sub_1000E0F50();
          break;
        case 13:
          sub_100040CD4();
          break;
        default:
          break;
      }
    }

    sub_100568610();
    sub_100568634();
    v129 = sub_1000114B8();
    v130(v129);
  }

  while (v120);
  sub_1001711F4(&a17);
  sub_10000536C();
}

void sub_100555FC0()
{
  sub_10000C778();
  sub_1000C8500(_swiftEmptyArrayStorage);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100024830();
  __chkstk_darwin(v1);
  v3 = sub_100010354(v2, v123);
  v4(v3);
  sub_1000E13C0();
  v5 = sub_1000B0E9C();
  v6(v5);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100013990();
  sub_100043790();
  __chkstk_darwin(v7);
  v9 = sub_100010354(v8, v124);
  v10(v9);
  v11 = sub_1000B9158();
  sub_1003BD6E4(v11, v12);
  v13 = sub_1000B0C88();
  v14(v13);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10003C5E8();
  __chkstk_darwin(v15);
  v17 = sub_10001F064(v16, v125);
  v18(v17);
  v19 = sub_1000C8BD4();
  sub_1003BD6E4(v19, v20);
  v21 = sub_100025238();
  v22(v21);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000CC70();
  __chkstk_darwin(v23);
  v25 = sub_10001F064(v24, v126);
  v26(v25);
  v27 = sub_1000C8BD4();
  sub_1003BD6E4(v27, v28);
  v29 = sub_1000304B8();
  v30(v29);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002C844();
  __chkstk_darwin(v31);
  v33 = sub_10001F064(v32, v127);
  v34(v33);
  v35 = sub_1000C8BD4();
  sub_1003BD6E4(v35, v36);
  v37 = sub_10003BE20();
  v38(v37);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100051EC0();
  __chkstk_darwin(v39);
  v41 = sub_10001F064(v40, v128);
  v42(v41);
  v43 = sub_1000C8BD4();
  sub_1003BD6E4(v43, v44);
  v45 = sub_10003A244();
  v46(v45);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100018500();
  __chkstk_darwin(v47);
  v49 = sub_10001F064(v48, v129);
  v50(v49);
  v51 = sub_1000C8BD4();
  sub_1003BD6E4(v51, v52);
  v53 = sub_1000241F0();
  v54(v53);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10002086C();
  __chkstk_darwin(v55);
  v57 = sub_10001F064(v56, v130);
  v58(v57);
  v59 = sub_1000C8BD4();
  sub_1003BD6E4(v59, v60);
  v61 = sub_1000371BC();
  v62(v61);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_10000EB3C();
  __chkstk_darwin(v63);
  v65 = sub_10001F064(v64, v131);
  v66(v65);
  v67 = sub_1000C8BD4();
  sub_1003BD6E4(v67, v68);
  v69 = sub_100020FF4();
  v70(v69);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100031660();
  __chkstk_darwin(v71);
  v73 = sub_10001F064(v72, v132);
  v74(v73);
  v75 = sub_1000C8BD4();
  sub_1003BD6E4(v75, v76);
  v77 = sub_100021510();
  v78(v77);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100037B98();
  __chkstk_darwin(v79);
  v81 = sub_10001F064(v80, v133);
  v82(v81);
  v83 = sub_1000C8BD4();
  sub_1003BD6E4(v83, v84);
  v85 = sub_1000163C0();
  v86(v85);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100074BE0();
  __chkstk_darwin(v87);
  v89 = sub_10001F064(v88, v134);
  v90(v89);
  v91 = sub_1000C8BD4();
  sub_1003BD6E4(v91, v92);
  v93 = sub_100041A4C();
  v94(v93);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100022DB0();
  sub_100016B1C();
  __chkstk_darwin(v95);
  v97 = sub_10001F064(v96, v135);
  v98(v97);
  v99 = sub_1000C8BD4();
  sub_1003BD6E4(v99, v100);
  v101 = sub_100017A3C();
  v102(v101);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_100003DDC();
  sub_100031D80();
  __chkstk_darwin(v103);
  v105 = sub_100010354(v104, v136);
  v106(v105);
  v107 = sub_100045418();
  sub_1003BD6E4(v107, v108);
  v109 = sub_1000C8EA0();
  v110(v109);
  type metadata accessor for LocationContentViewLayoutConfiguration.PositionedComponent();
  sub_1000082C0();
  sub_1000696BC();
  __chkstk_darwin(v111);
  v113 = sub_100019A30(v112, v137);
  v114(v113);
  v115 = sub_1000C8294();
  sub_1003BD6E4(v115, v116);
  v117 = sub_100079514();
  v118(v117);
  sub_10006A80C();
  do
  {
    sub_1000B97FC();
    if (v120)
    {
      sub_100568604();
    }

    else
    {
      switch(v119)
      {
        case 12:
          sub_100071994();
          break;
        case 13:
          sub_10002025C();
          break;
        case 14:
          sub_10001329C();
          break;
        case 15:
          sub_1000BCE9C();
          break;
        default:
          break;
      }
    }

    sub_100568610();
    sub_100040F70();
    v121 = sub_1000114B8();
    v122(v121);
  }

  while (v0);
  sub_1000C9004();
  sub_10000536C();
}
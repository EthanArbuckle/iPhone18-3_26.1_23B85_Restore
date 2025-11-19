uint64_t sub_100043214()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100043328(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000433DC()
{
  result = qword_10021A4B0;
  if (!qword_10021A4B0)
  {
    sub_10000B3DC(&qword_10021A4B8);
    sub_10000D1EC(&qword_100219128, &qword_100219130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4B0);
  }

  return result;
}

unint64_t sub_1000434AC()
{
  result = qword_10021A4C0;
  if (!qword_10021A4C0)
  {
    sub_10000B3DC(&qword_10021A320);
    sub_100043328(&qword_10021A4A8, &qword_10021A4A0, &unk_1001AFB50, sub_1000433DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4C0);
  }

  return result;
}

unint64_t sub_100043568()
{
  result = qword_10021A4C8;
  if (!qword_10021A4C8)
  {
    sub_10000B3DC(&qword_10021A318);
    sub_10000B3DC(&qword_10021A490);
    sub_10004365C();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4C8);
  }

  return result;
}

unint64_t sub_10004365C()
{
  result = qword_10021A4D0;
  if (!qword_10021A4D0)
  {
    sub_10000B3DC(&qword_10021A490);
    sub_100043328(&qword_10021A4D8, &qword_10021A4E0, &unk_1001AFB60, sub_10002DB5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4D0);
  }

  return result;
}

uint64_t sub_100043748()
{
  v1 = type metadata accessor for VenueEventView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 52);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for VenueEventView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_10003DCA4(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_100043948()
{
  v8 = *(v0 + 24);
  v1 = type metadata accessor for VenueEventView();
  v9 = *(*(v1 - 8) + 64);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = *(v8 - 8);
  v4 = *(v3 + 80);

  v5 = *(v1 + 52);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  (*(v3 + 8))(v0 + ((v2 + v9 + v4) & ~v4), v8);
  return swift_deallocObject();
}

uint64_t sub_100043B28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for VenueEventView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((v6 + *(v5 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));

  return sub_10003E2BC(v0 + v6, v7, v1, v2, v3, v4);
}

unint64_t sub_100043C30()
{
  result = qword_10021A4F8;
  if (!qword_10021A4F8)
  {
    sub_10000B3DC(&qword_10021A4F0);
    sub_100043CE8();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4F8);
  }

  return result;
}

unint64_t sub_100043CE8()
{
  result = qword_10021A500[0];
  if (!qword_10021A500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021A500);
  }

  return result;
}

uint64_t *sub_100043D3C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100043DA8()
{
  type metadata accessor for NavigationPath();
  type metadata accessor for VenueEventListHeader();
  type metadata accessor for Section();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021A318);
  sub_10000B3DC(&qword_10021A320);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021A328);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_10004248C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for PlainListStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A348);
  swift_getOpaqueTypeConformance2();
  sub_10000B3DC(&qword_10021A350);
  sub_100042650();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  sub_100042730();
  sub_100042784();
  type metadata accessor for MusicEventView();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for FilterView();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1000447E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a2;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  (*(v6 + 72))(v7, v6);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    AssociatedTypeWitness = v9;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(a1, v18, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a4, v14, 1, v16);
}

void sub_100044B14(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 13;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001AFBB0;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001666DC(1, 5, 1, inited);
  v12 = v8;
  sub_1000109BC(&aBlock, v19);
  sub_1000EB0D0(4, v19, &v12, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001BDDE0;
  v10[4] = v8;
  v17 = sub_100010AAC;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000DCA40;
  v16 = &unk_10020B128;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_100044D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for SetlistSongRowViewModel();
  result = (*(*(a5 - 8) + 32))(&a6[*(v10 + 36)], a3, a5);
  a6[*(v10 + 40)] = a4;
  return result;
}

uint64_t sub_100044E20()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100044EA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100045030(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_100045284()
{

  return swift_deallocObject();
}

uint64_t sub_1000452C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000452DC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_1000D8558(5u);
    if ((v3 & 1) != 0 && (v4 = *(*(v1 + 56) + v2), , v4))
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1000453C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100038AB0();
  a1[1] = v2;
}

uint64_t sub_100045404(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000365A4(v1, v2);
}

uint64_t sub_100045444()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100045498()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_1000454F0()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009F70(&qword_100219658);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100009F70(&qword_100219278);
  v8 = __chkstk_darwin(v7 - 8);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_100023FFC(&v22 - v13);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_10000D58C(v14, v6, &qword_100219278);
  sub_10000D58C(v12, &v6[v15], &qword_100219278);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_10000D58C(v6, v23, &qword_100219278);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v6[v15], v0);
      sub_10004E45C(&qword_100219290, &type metadata accessor for UserInterfaceSizeClass);
      v19 = v23;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v18, v0);
      sub_10000D52C(v12, &qword_100219278);
      sub_10000D52C(v14, &qword_100219278);
      v21(v19, v0);
      sub_10000D52C(v6, &qword_100219278);
      if (v20)
      {
        return 2;
      }

      return 1;
    }

    sub_10000D52C(v12, &qword_100219278);
    sub_10000D52C(v14, &qword_100219278);
    (*(v1 + 8))(v23, v0);
LABEL_6:
    sub_10000D52C(v6, &qword_100219658);
    return 1;
  }

  sub_10000D52C(v12, &qword_100219278);
  sub_10000D52C(v14, &qword_100219278);
  if (v16(&v6[v15], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_10000D52C(v6, &qword_100219278);
  return 2;
}

uint64_t sub_10004593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = type metadata accessor for TaskPriority();
  v84 = *(v85 - 8);
  v3 = __chkstk_darwin(v85);
  v83 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a1 - 8);
  v92 = *(v81 + 64);
  __chkstk_darwin(v3);
  v90 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3DC(&qword_10021A608);
  v80 = a1;
  v6 = *(a1 + 24);
  v88 = *(a1 + 16);
  v89 = v6;
  type metadata accessor for SetlistDetailSection();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000B3DC(&qword_100219D50);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_10000D1EC(&qword_100219D48, &qword_100219D50);
  v104 = WitnessTable;
  v105 = v9;
  v82 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v10 = type metadata accessor for Button();
  v11 = type metadata accessor for PlainButtonStyle();
  v12 = swift_getWitnessTable();
  v13 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v99 = v10;
  v100 = v11;
  v101 = v12;
  v102 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = v10;
  v100 = v11;
  v101 = v12;
  v102 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = swift_getWitnessTable();
  v18 = sub_10004D8BC();
  v99 = v7;
  v100 = &type metadata for MusicItemID;
  v101 = v16;
  v102 = v17;
  v103 = v18;
  type metadata accessor for ForEach();
  v99 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeConformance2;
  v98 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v19 = type metadata accessor for LazyHGrid();
  v20 = swift_getWitnessTable();
  v99 = v19;
  v100 = v20;
  swift_getOpaqueTypeMetadata2();
  v99 = v19;
  v100 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = type metadata accessor for ScrollView();
  v22 = swift_getWitnessTable();
  v99 = v21;
  v100 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v99 = v21;
  v100 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v99 = v23;
  v100 = v24;
  v101 = v25;
  v102 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v26 = swift_getOpaqueTypeMetadata2();
  v99 = v23;
  v100 = v24;
  v101 = v25;
  v102 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v27 = swift_getOpaqueTypeConformance2();
  v99 = v26;
  v100 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v99 = v26;
  v100 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v99 = v28;
  v100 = &type metadata for MusicItemID;
  v101 = v29;
  v102 = v18;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = sub_10000B3DC(&qword_10021A250);
  v99 = v28;
  v100 = &type metadata for MusicItemID;
  v101 = v29;
  v102 = v18;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_100038B78();
  v99 = v30;
  v100 = v31;
  v101 = v32;
  v102 = v33;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v34 = type metadata accessor for VStack();
  v71 = v34;
  v75 = *(v34 - 8);
  __chkstk_darwin(v34);
  v68 = &v67 - v35;
  v87 = swift_getWitnessTable();
  v99 = v34;
  v100 = v87;
  v76 = &unk_1001C2954;
  v73 = swift_getOpaqueTypeMetadata2();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - v36;
  v77 = type metadata accessor for ModifiedContent();
  v79 = *(v77 - 8);
  v37 = __chkstk_darwin(v77);
  v72 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v74 = &v67 - v39;
  static HorizontalAlignment.leading.getter();
  v40 = v88;
  v41 = v89;
  v93 = v88;
  v94 = v89;
  v42 = v91;
  v95 = v91;
  VStack.init(alignment:spacing:content:)();
  v67 = "-Upcoming-Event-Header-Title";
  v43 = v81;
  v69 = *(v81 + 16);
  v44 = v90;
  v45 = v80;
  v69(v90, v42, v80);
  type metadata accessor for MainActor();
  v46 = static MainActor.shared.getter();
  v47 = *(v43 + 80);
  v48 = v43;
  v49 = swift_allocObject();
  v49[2] = v46;
  v49[3] = &protocol witness table for MainActor;
  v49[4] = v40;
  v49[5] = v41;
  v81 = *(v48 + 32);
  v50 = v45;
  (v81)(v49 + ((v47 + 48) & ~v47), v44, v45);
  v51 = v83;
  v52 = v71;
  v53 = v87;
  j___sScP13userInitiatedScPvgZ();
  v54 = v70;
  v55 = v68;
  sub_100009FB8(0, v51, 0xD000000000000021, (v67 | 0x8000000000000000), 79, &unk_1001AFCD8, v49, v70, v52, v53);
  (*(v84 + 8))(v51, v85);
  (*(v75 + 8))(v55, v52);
  v56 = v90;
  v69(v90, v91, v50);
  v57 = swift_allocObject();
  v58 = v89;
  *(v57 + 16) = v88;
  *(v57 + 24) = v58;
  (v81)(v57 + ((v47 + 32) & ~v47), v56, v50);
  v99 = v52;
  v100 = v87;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v72;
  v61 = v73;
  View.onDisappear(perform:)();

  (*(v78 + 8))(v54, v61);
  v96 = v59;
  v97 = &protocol witness table for _AppearanceActionModifier;
  v62 = v77;
  v63 = swift_getWitnessTable();
  v64 = v74;
  sub_100157EFC(v60, v62, v63);
  v65 = *(v79 + 8);
  v65(v60, v62);
  sub_100157EFC(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_100046578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v209 = a1;
  v200 = a4;
  v210 = type metadata accessor for SetlistView();
  v199 = *(v210 - 8);
  v197 = *(v199 + 64);
  __chkstk_darwin(v210);
  v198 = &v149 - v6;
  v7 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v7 - 8);
  v194 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v195 = *(v9 - 8);
  __chkstk_darwin(v9);
  v193 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContentMarginPlacement();
  v191 = *(v11 - 8);
  v192 = v11;
  __chkstk_darwin(v11);
  v190 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = a3;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000B3DC(&qword_100219D50);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_10000D1EC(&qword_100219D48, &qword_100219D50);
  v241 = WitnessTable;
  v242 = v15;
  swift_getWitnessTable();
  v16 = type metadata accessor for Button();
  v17 = type metadata accessor for PlainButtonStyle();
  v18 = swift_getWitnessTable();
  v19 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  *&v243 = v16;
  *(&v243 + 1) = v17;
  *&v244 = v18;
  *(&v244 + 1) = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v243 = v16;
  *(&v243 + 1) = v17;
  *&v244 = v18;
  *(&v244 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v243 = OpaqueTypeMetadata2;
  *(&v243 + 1) = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = swift_getWitnessTable();
  v24 = sub_10004D8BC();
  *&v243 = v13;
  *(&v243 + 1) = &type metadata for MusicItemID;
  *&v244 = v22;
  *(&v244 + 1) = v23;
  *&v245 = v24;
  type metadata accessor for ForEach();
  *&v243 = OpaqueTypeMetadata2;
  *(&v243 + 1) = OpaqueTypeConformance2;
  v240 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v25 = type metadata accessor for LazyHGrid();
  v26 = swift_getWitnessTable();
  *&v243 = v25;
  *(&v243 + 1) = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  *&v243 = v25;
  *(&v243 + 1) = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v172 = v27;
  v168 = v28;
  v29 = type metadata accessor for ScrollView();
  v174 = *(v29 - 8);
  __chkstk_darwin(v29);
  v171 = &v149 - v30;
  v31 = swift_getWitnessTable();
  *&v243 = v29;
  *(&v243 + 1) = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v170 = *(v32 - 8);
  __chkstk_darwin(v32);
  v167 = &v149 - v33;
  v175 = v29;
  *&v243 = v29;
  *(&v243 + 1) = v31;
  v164 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  *&v243 = v32;
  *(&v243 + 1) = v9;
  *&v244 = v34;
  *(&v244 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v35 = swift_getOpaqueTypeMetadata2();
  v165 = *(v35 - 8);
  __chkstk_darwin(v35);
  v162 = v34;
  v163 = &v149 - v36;
  v173 = v32;
  *&v243 = v32;
  *(&v243 + 1) = v9;
  v196 = v9;
  *&v244 = v34;
  *(&v244 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v37 = swift_getOpaqueTypeConformance2();
  *&v243 = v35;
  *(&v243 + 1) = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v177 = *(v38 - 8);
  __chkstk_darwin(v38);
  v176 = &v149 - v39;
  v166 = v35;
  *&v243 = v35;
  *(&v243 + 1) = v37;
  v161 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  *&v243 = v38;
  *(&v243 + 1) = &type metadata for MusicItemID;
  *&v244 = v40;
  *(&v244 + 1) = v24;
  v41 = swift_getOpaqueTypeMetadata2();
  v184 = *(v41 - 8);
  __chkstk_darwin(v41);
  v182 = &v149 - v42;
  v43 = sub_10000B3DC(&qword_10021A250);
  v180 = v38;
  *&v243 = v38;
  *(&v243 + 1) = &type metadata for MusicItemID;
  v169 = v40;
  *&v244 = v40;
  *(&v244 + 1) = v24;
  v189 = v24;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_100038B78();
  v185 = v41;
  *&v243 = v41;
  *(&v243 + 1) = v43;
  v181 = v43;
  v178 = v45;
  v179 = v44;
  *&v244 = v44;
  *(&v244 + 1) = v45;
  v188 = swift_getOpaqueTypeMetadata2();
  v183 = *(v188 - 8);
  v46 = __chkstk_darwin(v188);
  v187 = &v149 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v186 = &v149 - v48;
  v211 = a2;
  v49 = type metadata accessor for SetlistDetailSection();
  v152 = *(v49 - 8);
  __chkstk_darwin(v49);
  v150 = &v149 - v50;
  v204 = v51;
  v52 = type metadata accessor for ModifiedContent();
  v154 = *(v52 - 8);
  __chkstk_darwin(v52);
  v151 = &v149 - v53;
  v203 = v54;
  v55 = type metadata accessor for ModifiedContent();
  v159 = *(v55 - 8);
  v56 = __chkstk_darwin(v55);
  v155 = &v149 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v153 = &v149 - v58;
  v208 = v59;
  v205 = type metadata accessor for Optional();
  v201 = *(v205 - 8);
  v60 = __chkstk_darwin(v205);
  v212 = &v149 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v207 = &v149 - v62;
  v63 = type metadata accessor for AccessibilityTraits();
  v157 = *(v63 - 8);
  v158 = v63;
  __chkstk_darwin(v63);
  v156 = &v149 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_100009F70(&qword_10021A608);
  v65 = __chkstk_darwin(v160);
  v202 = &v149 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v206 = &v149 - v67;
  sub_100045444();

  LOWORD(v148) = 256;
  v147 = 0;
  v68 = Text.init(_:tableName:bundle:comment:)();
  v70 = v69;
  LOBYTE(v43) = v71;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v72 = Text.font(_:)();
  v74 = v73;
  LOBYTE(v9) = v75;
  v77 = v76;

  sub_10000D60C(v68, v70, v43 & 1);

  KeyPath = swift_getKeyPath();
  v79 = swift_getKeyPath();
  LOBYTE(v243) = v9 & 1;
  LOBYTE(v232) = 0;
  LOBYTE(v43) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v223) = 0;
  *&v232 = v72;
  *(&v232 + 1) = v74;
  LOBYTE(v233) = v9 & 1;
  *(&v233 + 1) = v77;
  v80 = v209;
  *&v234 = KeyPath;
  *(&v234 + 1) = 2;
  LOBYTE(v235) = 0;
  *(&v235 + 1) = v79;
  LOBYTE(v236) = 0;
  BYTE8(v236) = v43;
  *&v237 = v81;
  *(&v237 + 1) = v82;
  *&v238 = v83;
  *(&v238 + 1) = v84;
  v239 = 0;
  v85 = v156;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_10021A618);
  sub_10004DBE4();
  View.accessibilityAddTraits(_:)();
  (*(v157 + 8))(v85, v158);
  v247 = v236;
  v248 = v237;
  v249 = v238;
  v250 = v239;
  v243 = v232;
  v244 = v233;
  v245 = v234;
  v246 = v235;
  sub_10000D52C(&v243, &qword_10021A618);
  sub_100045444();
  LOBYTE(v79) = sub_100036F38();

  if (v79)
  {
    sub_100045444();
    v86 = v150;
    sub_100047DCC(v150);
    static Edge.Set.horizontal.getter();
    v87 = v204;
    v88 = swift_getWitnessTable();
    v89 = v151;
    View.padding(_:_:)();
    (*(v152 + 8))(v86, v87);
    static Edge.Set.bottom.getter();
    v216 = v88;
    v217 = &protocol witness table for _PaddingLayout;
    v90 = v203;
    v91 = swift_getWitnessTable();
    v92 = v155;
    View.padding(_:_:)();
    (*(v154 + 8))(v89, v90);
    v214 = v91;
    v215 = &protocol witness table for _PaddingLayout;
    v93 = v208;
    v94 = swift_getWitnessTable();
    v95 = v153;
    sub_100157EFC(v92, v93, v94);
    v96 = v159;
    v97 = v159[1];
    v97(v92, v93);
    sub_100157EFC(v95, v93, v94);
    v97(v95, v93);
    v98 = v212;
    (v96[4])(v212, v92, v93);
    (v96[7])(v98, 0, 1, v93);
  }

  else
  {
    (v159[7])(v212, 1, 1, v208);
    v230 = swift_getWitnessTable();
    v231 = &protocol witness table for _PaddingLayout;
    v228 = swift_getWitnessTable();
    v229 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
  }

  v99 = v212;
  sub_100150FB8(v212, v207);
  v100 = *(v201 + 8);
  v158 = v201 + 8;
  v159 = v100;
  (v100)(v99, v205);
  v101 = static Axis.Set.horizontal.getter();
  __chkstk_darwin(v101);
  v102 = v213;
  *(&v149 - 4) = v211;
  *(&v149 - 3) = v102;
  v147 = v80;
  v103 = v171;
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.horizontal.getter();
  v104 = v190;
  static ContentMarginPlacement.automatic.getter();
  v105 = v167;
  v106 = v175;
  View.contentMargins(_:_:for:)();
  (*(v191 + 8))(v104, v192);
  (*(v174 + 8))(v103, v106);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v107 = v193;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v108 = v163;
  v109 = v173;
  v110 = v196;
  View.scrollTargetBehavior<A>(_:)();
  (*(v195 + 8))(v107, v110);
  (*(v170 + 8))(v105, v109);
  sub_100045444();

  v111 = v176;
  v112 = v166;
  View.scrollDisabled(_:)();
  (*(v165 + 8))(v108, v112);
  v113 = sub_100045498();
  v115 = v114;
  v117 = v116;
  __chkstk_darwin(v113);
  v147 = v211;
  v148 = v213;
  swift_getKeyPath();
  v225 = v113;
  v226 = v115;
  v227 = v117;
  type metadata accessor for SetlistViewModel();
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v118 = v232;
  v119 = v233;

  v223 = v118;
  v224 = v119;
  v120 = v182;
  v121 = v180;
  View.scrollPosition<A>(id:anchor:)();

  (*(v177 + 8))(v111, v121);
  v123 = v209;
  v122 = v210;
  sub_100045444();
  v124 = sub_100038AB0();
  v126 = v125;

  *&v232 = v124;
  *(&v232 + 1) = v126;
  v128 = v198;
  v127 = v199;
  (*(v199 + 16))(v198, v123, v122);
  v129 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v130 = swift_allocObject();
  v131 = v213;
  *(v130 + 16) = v211;
  *(v130 + 24) = v131;
  (*(v127 + 32))(v130 + v129, v128, v122);
  v132 = v187;
  v133 = v185;
  v134 = v181;
  v136 = v178;
  v135 = v179;
  View.onChange<A>(of:initial:_:)();

  (*(v184 + 8))(v120, v133);
  *&v232 = v133;
  *(&v232 + 1) = v134;
  *&v233 = v135;
  *(&v233 + 1) = v136;
  v137 = swift_getOpaqueTypeConformance2();
  v138 = v186;
  v139 = v188;
  sub_100157EFC(v132, v188, v137);
  v140 = v183;
  v213 = *(v183 + 8);
  v213(v132, v139);
  v141 = v202;
  sub_10000D58C(v206, v202, &qword_10021A608);
  *&v232 = v141;
  v142 = v212;
  v143 = v205;
  (*(v201 + 16))(v212, v207, v205);
  *(&v232 + 1) = v142;
  (*(v140 + 16))(v132, v138, v139);
  *&v233 = v132;
  *&v223 = v160;
  *(&v223 + 1) = v143;
  *&v224 = v139;
  v225 = sub_10004DDF8();
  v221 = swift_getWitnessTable();
  v222 = &protocol witness table for _PaddingLayout;
  v219 = swift_getWitnessTable();
  v220 = &protocol witness table for _PaddingLayout;
  v218 = swift_getWitnessTable();
  v226 = swift_getWitnessTable();
  v227 = v137;
  sub_100151024(&v232, 3uLL, &v223);
  v144 = v213;
  v213(v138, v139);
  v145 = v159;
  (v159)(v207, v143);
  sub_10000D52C(v206, &qword_10021A608);
  v144(v132, v139);
  v145(v212, v143);
  return sub_10000D52C(v202, &qword_10021A608);
}

uint64_t sub_100047DCC@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v8;
  *(a1 + 8) = v9;
  State.init(wrappedValue:)();
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  type metadata accessor for RemoteViewConfiguration();
  sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  *(a1 + 32) = EnvironmentObject.init()();
  *(a1 + 40) = v2;
  v3 = type metadata accessor for SetlistDetailSection();
  v4 = v3[11];
  *(a1 + v4) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8);
  swift_storeEnumTagMultiPayload();
  v5 = v3[12];
  *(a1 + v5) = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v3[13];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_100047F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v41 = a1;
  v43 = a4;
  v4 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v4 - 8);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000B3DC(&qword_100219D50);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10000D1EC(&qword_100219D48, &qword_100219D50);
  v53 = WitnessTable;
  v54 = v8;
  swift_getWitnessTable();
  v9 = type metadata accessor for Button();
  v10 = type metadata accessor for PlainButtonStyle();
  v11 = swift_getWitnessTable();
  v12 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v51 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v51 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = OpaqueTypeMetadata2;
  v49 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = swift_getWitnessTable();
  v17 = sub_10004D8BC();
  v48 = v6;
  v49 = &type metadata for MusicItemID;
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v34[2] = type metadata accessor for ForEach();
  v48 = OpaqueTypeMetadata2;
  v49 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v34[1] = swift_getWitnessTable();
  v18 = type metadata accessor for LazyHGrid();
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v34 - v19;
  v35 = swift_getWitnessTable();
  v48 = v18;
  v49 = v35;
  v36 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v21 = swift_getOpaqueTypeMetadata2();
  v37 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v34 - v25;
  v28 = v39;
  v27 = v40;
  type metadata accessor for SetlistView();
  v29 = v41;
  sub_100045444();
  sub_100036D78();

  v44 = v28;
  v45 = v27;
  v46 = v29;
  static VerticalAlignment.center.getter();
  sub_1000C10FC();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v30 = v35;
  View.scrollTargetLayout(isEnabled:)();
  (*(v38 + 8))(v20, v18);
  v48 = v18;
  v49 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v24, v21, v31);
  v32 = *(v37 + 8);
  v32(v24, v21);
  sub_100157EFC(v26, v21, v31);
  return (v32)(v26, v21);
}

uint64_t sub_100048560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v45 = a3;
  v6 = type metadata accessor for SetlistView();
  v47 = *(v6 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v6);
  v46 = &KeyPath - v7;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000B3DC(&qword_100219D50);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_10000D1EC(&qword_100219D48, &qword_100219D50);
  v59 = WitnessTable;
  v60 = v10;
  swift_getWitnessTable();
  v11 = type metadata accessor for Button();
  v12 = type metadata accessor for PlainButtonStyle();
  v13 = swift_getWitnessTable();
  v14 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v57 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = OpaqueTypeMetadata2;
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v57 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = OpaqueTypeMetadata2;
  v55 = OpaqueTypeConformance2;
  v40 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  v16 = swift_getOpaqueTypeMetadata2();
  v39 = v16;
  v41 = v8;
  v17 = swift_getWitnessTable();
  v38 = v17;
  v37 = sub_10004D8BC();
  v54 = v8;
  v55 = &type metadata for MusicItemID;
  v56 = v16;
  v57 = v17;
  v58 = v37;
  v18 = type metadata accessor for ForEach();
  v44 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &KeyPath - v22;
  v24 = v6;
  sub_100045444();
  v25 = sub_100036EC4();

  v53 = v25;
  v26 = a2;
  v27 = v45;
  v50 = a2;
  v51 = v45;
  KeyPath = swift_getKeyPath();
  v29 = v46;
  v28 = v47;
  (*(v47 + 16))(v46, a1, v24);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  (*(v28 + 32))(v31 + v30, v29, v24);
  v54 = v43;
  v55 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v52 = v35;
  v32 = swift_getWitnessTable();
  sub_100157EFC(v21, v18, v32);
  v33 = *(v44 + 8);
  v33(v21, v18);
  sub_100157EFC(v23, v18, v32);
  return (v33)(v23, v18);
}

uint64_t sub_100048AC8@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of MusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100048B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a2;
  v83 = a1;
  v86 = a5;
  v7 = type metadata accessor for PlainButtonStyle();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v82 = *(v87 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v79 = &v58 - v10;
  v77 = a3;
  v78 = a4;
  v11 = type metadata accessor for SetlistView();
  v12 = *(v11 - 8);
  v76 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v60 = &v58 - v13;
  swift_getAssociatedConformanceWitness();
  v59 = AssociatedTypeWitness;
  type metadata accessor for SetlistSongRowView();
  sub_10000B3DC(&qword_100219D50);
  v15 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_10000D1EC(&qword_100219D48, &qword_100219D50);
  v96 = WitnessTable;
  v97 = v17;
  v70 = v15;
  v69 = swift_getWitnessTable();
  v18 = type metadata accessor for Button();
  v73 = *(v18 - 8);
  __chkstk_darwin(v18);
  v66 = &v58 - v19;
  v21 = v20;
  v22 = swift_getWitnessTable();
  v23 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v92 = v21;
  v93 = v7;
  v24 = v21;
  v63 = v21;
  v62 = v7;
  v94 = v22;
  v95 = v23;
  v65 = v22;
  v64 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v61 = &v58 - v26;
  v92 = v24;
  v93 = v7;
  v94 = v22;
  v95 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = OpaqueTypeMetadata2;
  v92 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeConformance2;
  v71 = OpaqueTypeConformance2;
  v74 = swift_getOpaqueTypeMetadata2();
  v72 = *(v74 - 8);
  v28 = __chkstk_darwin(v74);
  v67 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v68 = &v58 - v30;
  v31 = v12;
  v32 = v14;
  v33 = v81;
  v34 = v11;
  (*(v12 + 16))(v32, v81, v11);
  v35 = v87;
  v36 = v79;
  v37 = v83;
  (*(v87 + 16))(v79, v83, AssociatedTypeWitness);
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = (v76 + v38 + *(v35 + 80)) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = v77;
  v42 = v78;
  *(v40 + 16) = v77;
  *(v40 + 24) = v42;
  v43 = v31;
  v44 = v61;
  (*(v43 + 32))(v40 + v38, v60, v34);
  (*(v87 + 32))(v40 + v39, v36, v59);
  v88 = v41;
  v89 = v42;
  v90 = v33;
  v91 = v37;
  v45 = v66;
  Button.init(action:label:)();
  v46 = v84;
  PlainButtonStyle.init()();
  v47 = v63;
  v48 = v62;
  View.buttonStyle<A>(_:)();
  (*(v85 + 8))(v46, v48);
  (*(v73 + 8))(v45, v47);
  static Axis.Set.horizontal.getter();
  v49 = sub_100045444();
  LOBYTE(v37) = *(v49 + *(*v49 + 120));

  if ((v37 & 1) == 0)
  {
    sub_1000454F0();
  }

  static Alignment.center.getter();
  v50 = v67;
  v51 = v80;
  v52 = v71;
  View.containerRelativeFrame(_:count:span:spacing:alignment:)();
  (*(v75 + 8))(v44, v51);
  v92 = v51;
  v93 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v68;
  v55 = v74;
  sub_100157EFC(v50, v74, v53);
  v56 = *(v72 + 8);
  v56(v50, v55);
  sub_100157EFC(v54, v55, v53);
  return (v56)(v54, v55);
}

uint64_t sub_100049414(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetlistView();
  sub_100045444();
  v4 = *(a1 + 16);
  if (v4)
  {

    sub_100037930(a2, v4);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000494F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a1;
  v42 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v32 - v4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for SetlistSongRowViewModel();
  __chkstk_darwin(v6 - 8);
  v36 = &v32 - v7;
  v8 = type metadata accessor for SetlistSongRowView();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  sub_10000B3DC(&qword_100219D50);
  v11 = type metadata accessor for ModifiedContent();
  v41 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v37 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v39 = &v32 - v14;
  type metadata accessor for SetlistView();
  v15 = sub_100045444();
  v16 = *(v15 + 16);
  v34 = *(v15 + 24);
  v35 = v16;

  v17 = *(v3 + 16);
  v40 = v5;
  v17(v5, v33, AssociatedTypeWitness);
  sub_100045444();
  sub_1000374A0();

  v18 = v46;
  if (v46)
  {
    sub_100028124(v45, v46);
    v19 = dispatch thunk of MusicItem.id.getter();
    v18 = v20;
    sub_100021498(v45);
  }

  else
  {
    sub_10000D52C(v45, &qword_10021A650);
    v19 = 0;
  }

  v21 = dispatch thunk of MusicItem.id.getter();
  if (v18)
  {
    if (v19 == v21 && v18 == v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v36;
  sub_100044D74(v35, v34, v40, v23 & 1, AssociatedTypeWitness, v36);
  sub_10002C50C(v24, v10);
  WitnessTable = swift_getWitnessTable();
  sub_10004E4A4();
  v26 = v37;
  View.contentShape<A>(_:eoFill:)();
  (*(v38 + 8))(v10, v8);
  v27 = sub_10000D1EC(&qword_100219D48, &qword_100219D50);
  v43 = WitnessTable;
  v44 = v27;
  v28 = swift_getWitnessTable();
  v29 = v39;
  sub_100157EFC(v26, v11, v28);
  v30 = *(v41 + 8);
  v30(v26, v11);
  sub_100157EFC(v29, v11, v28);
  return (v30)(v29, v11);
}

uint64_t sub_1000499FC(uint64_t a1)
{
  type metadata accessor for SetlistView();
  sub_100045444();
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_1000385A4(27, 0, 3u, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100049AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049B70);
}

uint64_t sub_100049B70()
{

  type metadata accessor for SetlistView();
  sub_100045444();
  sub_100037854();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100049C00()
{
  type metadata accessor for SetlistView();
  sub_100045444();
  sub_1000378C4();
}

uint64_t sub_100049C48@<X0>(void *a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v5;
  a1[1] = v6;
  type metadata accessor for RemoteViewConfiguration();
  sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  a1[2] = EnvironmentObject.init()();
  a1[3] = v2;
  v3 = *(type metadata accessor for SetlistView() + 40);
  *(a1 + v3) = swift_getKeyPath();
  sub_100009F70(&qword_1002196E8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100049D94()
{
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  v0 = Font.weight(_:)();

  return v0;
}

uint64_t sub_100049DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009F70(&qword_100218498);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x402E000000000000;
  v7[16] = 0;
  v10 = sub_100009F70(&qword_10021A6E0);
  v11 = sub_10004A278(v2, v8, v9, &v7[*(v10 + 44)]);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, a1);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v8;
  *(v17 + 5) = v9;
  (*(v12 + 32))(&v17[v16], v14, a1);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v31 - v21;
  static TaskPriority.userInitiated.getter();
  if (sub_1001A7444(2, 26, 4, 0))
  {
    v34 = type metadata accessor for _TaskModifier2();
    v35 = &v31;
    v33 = *(v34 - 8);
    __chkstk_darwin(v34);
    v32 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v37 = 0xD00000000000002ELL;
    v38 = 0x80000001001BEA40;
    v36 = 188;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v31 = &v31;
    __chkstk_darwin(v25);
    (*(v19 + 16))(&v31 - v21, &v31 - v21, v18);
    v26 = v32;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v19 + 8))(v22, v18);
    sub_10004F318(v7, a2);
    v27 = sub_100009F70(&qword_1002184A0);
    return (*(v33 + 32))(a2 + *(v27 + 36), v26, v34);
  }

  else
  {
    v29 = (a2 + *(sub_100009F70(&qword_1002184A8) + 36));
    v30 = type metadata accessor for _TaskModifier();
    (*(v19 + 32))(&v29[*(v30 + 20)], &v31 - v21, v18);
    *v29 = &unk_1001AFF00;
    *(v29 + 1) = v17;
    return sub_10004F318(v7, a2);
  }
}

uint64_t sub_10004A278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v130 = a4;
  v110 = type metadata accessor for Text.Suffix();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100009F70(&qword_10021A6E8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v97 - v8;
  v9 = sub_100009F70(&qword_10021A6F0);
  v128 = *(v9 - 8);
  v129 = v9;
  __chkstk_darwin(v9);
  v111 = &v97 - v10;
  v11 = sub_100009F70(&qword_10021A248);
  __chkstk_darwin(v11 - 8);
  v119 = &v97 - v12;
  v13 = type metadata accessor for AttributedString();
  v131 = *(v13 - 8);
  v132 = v13;
  v14 = __chkstk_darwin(v13);
  v99 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v97 - v16;
  v17 = sub_100009F70(&qword_10021A6F8);
  v18 = __chkstk_darwin(v17 - 8);
  v126 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v124 = &v97 - v20;
  v117 = type metadata accessor for PlainButtonStyle();
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SetlistDetailSection();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v97 - v25;
  v115 = sub_100009F70(&qword_10021A700);
  __chkstk_darwin(v115);
  v28 = &v97 - v27;
  v123 = sub_100009F70(&qword_10021A708);
  v122 = *(v123 - 8);
  v29 = __chkstk_darwin(v123);
  v121 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v97 - v31;
  v33 = *(v23 + 16);
  v104 = v23 + 16;
  v103 = v33;
  v33(v26, a1, v22);
  v34 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v102 = *(v23 + 80);
  v101 = v34 + v24;
  v35 = swift_allocObject();
  *(v35 + 16) = a2;
  *(v35 + 24) = a3;
  v36 = *(v23 + 32);
  v105 = v34;
  v106 = v26;
  v107 = v23 + 32;
  v100 = v36;
  v36(v35 + v34, v26, v22);
  v37 = v22;
  v127 = a2;
  v133 = a2;
  v134 = a3;
  v38 = a3;
  v135 = a1;
  sub_100009F70(&qword_10021A710);
  sub_10004F3C4();
  Button.init(action:label:)();
  sub_100045444();
  LOBYTE(v22) = sub_1000370FC();

  v28[*(v115 + 36)] = v22 & 1;
  v39 = v116;
  PlainButtonStyle.init()();
  sub_10004F534();
  sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v120 = v32;
  v40 = v119;
  v41 = v117;
  View.buttonStyle<A>(_:)();
  (*(v118 + 8))(v39, v41);
  sub_10000D52C(v28, &qword_10021A700);
  v118 = a1;
  sub_100045444();
  sub_100036994(v40);

  v42 = v131;
  v43 = v132;
  if ((*(v131 + 48))(v40, 1) == 1)
  {
    sub_10000D52C(v40, &qword_10021A248);
    v44 = 1;
    v46 = v128;
    v45 = v129;
    v47 = v124;
  }

  else
  {
    v48 = v125;
    (*(v42 + 32))(v125, v40, v43);
    (*(v42 + 16))(v99, v48, v43);
    v49 = Text.init(_:)();
    v51 = v50;
    v53 = v52;
    v98 = v38;
    sub_100049D94();
    v54 = Text.font(_:)();
    v56 = v55;
    LOBYTE(v48) = v57;

    sub_10000D60C(v49, v51, v53 & 1);

    LODWORD(v136) = static HierarchicalShapeStyle.secondary.getter();
    v58 = Text.foregroundStyle<A>(_:)();
    v60 = v59;
    v117 = v59;
    v62 = v61;
    v64 = v63;
    v119 = v63;
    sub_10000D60C(v54, v56, v48 & 1);

    v65 = v118;
    v66 = *(v118 + 24);
    LOBYTE(v136) = *(v118 + 16);
    v137 = v66;
    sub_100009F70(&qword_1002186F8);
    State.wrappedValue.getter();
    v67 = v143;
    if (v143)
    {
      v68 = 0;
    }

    else
    {
      v68 = 2;
    }

    KeyPath = swift_getKeyPath();
    v136 = v58;
    v137 = v60;
    v70 = v62 & 1;
    v138 = v62 & 1;
    v139 = v64;
    v140 = KeyPath;
    v141 = v68;
    v142 = v67;
    v71 = sub_10004D024();
    v73 = v72;
    v75 = v74;
    v76 = v108;
    static Text.Suffix.truncated(_:)();
    sub_10000D60C(v71, v73, v75 & 1);

    v77 = sub_100009F70(&qword_1002197F0);
    v78 = sub_10002764C();
    v79 = v112;
    View.textSuffix(_:)();
    (*(v109 + 8))(v76, v110);
    sub_10000D60C(v58, v117, v70);

    v80 = v106;
    v103(v106, v65, v37);
    v81 = swift_allocObject();
    v82 = v98;
    *(v81 + 16) = v127;
    *(v81 + 24) = v82;
    v100(v81 + v105, v80, v37);
    v136 = v77;
    v137 = v78;
    swift_getOpaqueTypeConformance2();
    v83 = v111;
    v84 = v114;
    View.onTapGesture(count:perform:)();

    (*(v113 + 8))(v79, v84);
    (*(v131 + 8))(v125, v132);
    v86 = v128;
    v85 = v129;
    v47 = v124;
    (*(v128 + 32))(v124, v83, v129);
    v44 = 0;
    v45 = v85;
    v46 = v86;
  }

  (*(v46 + 56))(v47, v44, 1, v45);
  v87 = v122;
  v88 = *(v122 + 16);
  v89 = v121;
  v90 = v120;
  v91 = v123;
  v88(v121, v120, v123);
  v92 = v126;
  sub_10004F5EC(v47, v126);
  v93 = v130;
  v88(v130, v89, v91);
  v94 = sub_100009F70(&qword_10021A768);
  sub_10004F5EC(v92, &v93[*(v94 + 48)]);
  sub_10004F65C(v47);
  v95 = *(v87 + 8);
  v95(v90, v91);
  sub_10004F65C(v92);
  return (v95)(v89, v91);
}

uint64_t sub_10004AF48(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SetlistDetailSection();
  sub_100045444();
  sub_100037088();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000D52C(v8, qword_100218748);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_100023FD4(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  sub_100045444();
  v14 = *(a1 + 32);
  if (v14)
  {

    sub_1000385A4(16, 0, 3u, v14);

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100009F70(&qword_10021A738);
  __chkstk_darwin(v8 - 8);
  v10 = (v27 - v9);
  v11 = sub_100009F70(&qword_10021A728);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  *v10 = static Alignment.leading.getter();
  v10[1] = v15;
  v16 = sub_100009F70(&qword_10021A770);
  sub_10004B47C(a1, a2, a3, v10 + *(v16 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v10, v14, &qword_10021A738);
  v17 = &v14[*(v12 + 44)];
  v18 = v27[5];
  *(v17 + 4) = v27[4];
  *(v17 + 5) = v18;
  *(v17 + 6) = v27[6];
  v19 = v27[1];
  *v17 = v27[0];
  *(v17 + 1) = v19;
  v20 = v27[3];
  *(v17 + 2) = v27[2];
  *(v17 + 3) = v20;
  v21 = static Alignment.center.getter();
  v23 = v22;
  v24 = a4 + *(sub_100009F70(&qword_10021A710) + 36);
  sub_10004CCD4(a1, a3, v24);
  v25 = (v24 + *(sub_100009F70(&qword_10021A748) + 36));
  *v25 = v21;
  v25[1] = v23;
  return sub_10000F618(v14, a4, &qword_10021A728);
}

uint64_t sub_10004B47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4030000000000000;
  *(a4 + 16) = 0;
  v8 = sub_100009F70(&qword_10021A780);
  sub_10004B538(a1, a2, a3, a4 + *(v8 + 44));
  static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  sub_100009F70(&qword_10021A788);
  return SafeAreaPaddingModifier.init(edges:insets:)();
}

uint64_t sub_10004B538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v7 = sub_100009F70(&qword_10021A790);
  v8 = __chkstk_darwin(v7 - 8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v49 = sub_100009F70(&qword_10021A798);
  v19 = __chkstk_darwin(v49);
  v50 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v48 - v21;
  v52 = a2;
  v53 = a3;
  v23 = type metadata accessor for SetlistDetailSection();
  result = sub_100045444();
  v48 = result;
  v25 = *(v23 + 52);
  v51 = a1;
  v26 = a1 + v25;
  v27 = *v26;
  v28 = *(v26 + 8);
  if (v28 == 1)
  {
    v29 = *v26;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v27, 0);
    result = (*(v13 + 8))(v15, v12);
    v29 = *&v56;
  }

  v31 = v29 * 70.0;
  if (COERCE__INT64(fabs(v29 * 70.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v28)
  {
    v32 = *&v27;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v33 = v12;
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v27, 0);
    result = (*(v13 + 8))(v15, v33);
    v32 = *&v56;
  }

  v35 = v32 * 70.0;
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  sub_10003722C(v31, v35, v18);

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  sub_100009F70(&qword_10021A7A0);
  sub_10004F9BC();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v22[*(sub_100009F70(&qword_10021A7C0) + 36)];
  v37 = v57;
  *v36 = v56;
  *(v36 + 1) = v37;
  *(v36 + 2) = v58;
  if (static Solarium.isEnabled.getter())
  {
    v38 = 10.0;
  }

  else
  {
    v38 = 5.0;
  }

  v39 = &v22[*(v49 + 36)];
  v40 = *(type metadata accessor for RoundedRectangle() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = v38;
  v39[1] = v38;
  *(v39 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0x4008000000000000;
  v11[16] = 0;
  v43 = sub_100009F70(&qword_10021A7C8);
  sub_10004BEE0(v51, v52, v53, &v11[*(v43 + 44)]);
  v44 = v50;
  sub_10000D58C(v22, v50, &qword_10021A798);
  v45 = v55;
  sub_10000D58C(v11, v55, &qword_10021A790);
  v46 = v54;
  sub_10000D58C(v44, v54, &qword_10021A798);
  v47 = sub_100009F70(&qword_10021A7D0);
  sub_10000D58C(v45, v46 + *(v47 + 48), &qword_10021A790);
  sub_10000D52C(v11, &qword_10021A790);
  sub_10000D52C(v22, &qword_10021A798);
  sub_10000D52C(v45, &qword_10021A790);
  return sub_10000D52C(v44, &qword_10021A798);
}

uint64_t sub_10004BBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v16 = v12;
    v17 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021A7B8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v14 = v18;
    v15 = v19;
  }

  else
  {
    v16 = static Color.gray.getter();
    v17 = 1;
    sub_100009F70(&qword_10021A7B8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v14 = v18;
    v15 = v19;
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  return result;
}

uint64_t sub_10004BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a4;
  v111 = a1;
  v94 = a2;
  v95 = a3;
  v112 = type metadata accessor for SetlistDetailSection();
  v92 = *(v112 - 8);
  v91 = *(v92 + 64);
  __chkstk_darwin(v112);
  v104 = &v87 - v4;
  v5 = sub_100009F70(&qword_100218930);
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v93 = &v87 - v6;
  v7 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v7 - 8);
  v100 = &v87 - v8;
  v9 = type metadata accessor for URL();
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = __chkstk_darwin(v9);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v11;
  __chkstk_darwin(v10);
  v101 = &v87 - v12;
  v13 = sub_100009F70(&qword_10021A7D8);
  v14 = __chkstk_darwin(v13 - 8);
  v107 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v105 = &v87 - v16;
  v17 = sub_100009F70(&qword_100219820);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v106 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v113 = &v87 - v21;
  sub_100045444();

  v86 = 256;
  v85 = 0;
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;

  sub_10000D60C(v22, v24, v26 & 1);

  LODWORD(v114) = static HierarchicalShapeStyle.secondary.getter();
  v32 = Text.foregroundStyle<A>(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000D60C(v27, v29, v31 & 1);

  v39 = v113;
  v40 = (v113 + *(v18 + 44));
  v41 = *(sub_100009F70(&qword_100219828) + 28);
  v42 = enum case for Text.Case.uppercase(_:);
  v43 = type metadata accessor for Text.Case();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v40 + v41, v42, v43);
  (*(v44 + 56))(v40 + v41, 0, 1, v43);
  *v40 = swift_getKeyPath();
  v46 = v111;
  v45 = v112;
  *v39 = v32;
  *(v39 + 8) = v34;
  *(v39 + 16) = v36 & 1;
  *(v39 + 24) = v38;
  v47 = v45;
  v48 = sub_100045444();
  v50 = *(v48 + 32);
  v49 = *(v48 + 40);

  if (v49)
  {
    v114 = v50;
    v115 = v49;
    sub_100027068();
    v51 = Text.init<A>(_:)();
    v53 = v52;
    v98 = v55;
    v99 = v51;
    v96 = v54 & 1;
    sub_10000D5FC(v51, v55, v54 & 1);
    v97 = v53;
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
  }

  sub_100045444();
  v56 = v100;
  sub_100037088();

  v58 = v102;
  v57 = v103;
  if ((*(v102 + 48))(v56, 1, v103) == 1)
  {
    sub_10000D52C(v56, qword_100218748);
    v59 = 1;
    v61 = v108;
    v60 = v109;
    v62 = v105;
  }

  else
  {
    v88 = *(v58 + 32);
    v63 = v101;
    v88(v101, v56, v57);
    v64 = v92;
    (*(v92 + 16))(v104, v46, v47);
    v65 = v90;
    (*(v58 + 16))(v90, v63, v57);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = (v91 + *(v58 + 80) + v66) & ~*(v58 + 80);
    v68 = v57;
    v69 = swift_allocObject();
    v70 = v94;
    v71 = v95;
    *(v69 + 16) = v94;
    *(v69 + 24) = v71;
    (*(v64 + 32))(v69 + v66, v104, v112);
    v72 = (v88)(v69 + v67, v65, v68);
    __chkstk_darwin(v72);
    *(&v87 - 4) = v70;
    *(&v87 - 3) = v71;
    v85 = v111;
    v73 = v93;
    Button.init(action:label:)();
    (*(v58 + 8))(v101, v68);
    v61 = v108;
    v60 = v109;
    v62 = v105;
    (*(v108 + 32))(v105, v73, v109);
    v59 = 0;
  }

  (*(v61 + 56))(v62, v59, 1, v60);
  v74 = v113;
  v75 = v106;
  sub_10000D58C(v113, v106, &qword_100219820);
  v76 = v107;
  sub_10000D58C(v62, v107, &qword_10021A7D8);
  v77 = v110;
  sub_10000D58C(v75, v110, &qword_100219820);
  v78 = sub_100009F70(&qword_10021A7E0);
  v79 = (v77 + *(v78 + 48));
  v80 = v98;
  v81 = v99;
  *v79 = v99;
  v79[1] = v80;
  v82 = v96;
  v83 = v97;
  v79[2] = v96;
  v79[3] = v83;
  sub_10000D58C(v76, v77 + *(v78 + 64), &qword_10021A7D8);
  sub_10004FB08(v81, v80, v82, v83);
  sub_10004FB4C(v81, v80, v82, v83);
  sub_10000D52C(v62, &qword_10021A7D8);
  sub_10000D52C(v74, &qword_100219820);
  sub_10000D52C(v76, &qword_10021A7D8);
  sub_10004FB4C(v81, v80, v82, v83);
  return sub_10000D52C(v75, &qword_100219820);
}

uint64_t sub_10004C884(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(&qword_100218DF8);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SetlistDetailSection();
  sub_10000D58C(a1 + *(v13 + 44), v8, &qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v5, v18);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10004CB20@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SetlistDetailSection();
  sub_100045444();

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000D60C(v2, v4, v6 & 1);

  static Color.blue.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10000D60C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

double sub_10004CCD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v27[2] = a1;
  v28 = a3;
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = type metadata accessor for RoundedRectangle();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100009F70(&qword_100218DD0);
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  if (static Solarium.isEnabled.getter())
  {
    v17 = 16.0;
  }

  else
  {
    v17 = 10.0;
  }

  v18 = *(v11 + 28);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(v13 + v18, v19, v20);
  *v13 = v17;
  v13[1] = v17;
  type metadata accessor for SetlistDetailSection();
  sub_100024640(v9);
  (*(v4 + 104))(v7, enum case for ColorScheme.light(_:), v3);
  LOBYTE(v19) = static ColorScheme.== infix(_:_:)();
  v21 = *(v4 + 8);
  v21(v7, v3);
  v21(v9, v3);
  if (v19)
  {
    v22 = static Color.white.getter();
  }

  else
  {
    if (qword_100218330 != -1)
    {
      swift_once();
    }

    v22 = qword_100230568;
  }

  sub_10004F958(v13, v16);
  *&v16[*(v14 + 36)] = v22;
  static Color.black.getter();
  v23 = Color.opacity(_:)();

  v24 = v28;
  sub_10000F618(v16, v28, &qword_100218DD0);
  v25 = v24 + *(sub_100009F70(&qword_10021A778) + 36);
  *v25 = v23;
  result = 16.0;
  *(v25 + 8) = xmmword_1001AFBF0;
  *(v25 + 24) = 0x4010000000000000;
  return result;
}

uint64_t sub_10004D024()
{
  sub_100045444();

  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v5 = Text.font(_:)();
  v7 = v6;
  v9 = v8;

  sub_10000D60C(v0, v2, v4 & 1);

  static Color.blue.getter();
  v10 = Text.foregroundStyle<A>(_:)();
  sub_10000D60C(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_10004D1C8(uint64_t a1)
{
  sub_100009F70(&qword_1002186F8);
  State.wrappedValue.setter();
  type metadata accessor for SetlistDetailSection();
  sub_100045444();
  v2 = *(a1 + 32);
  if (v2)
  {

    sub_1000385A4(25, 0, 3u, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v5[6] = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v6;

  return _swift_task_switch(sub_10004D384);
}

uint64_t sub_10004D384()
{
  type metadata accessor for SetlistDetailSection();
  v0[8] = sub_100045444();
  v1 = sub_100049D94();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10004D454;

  return sub_100037CE0(v1);
}

uint64_t sub_10004D454()
{

  return _swift_task_switch(sub_10004D5B4);
}

uint64_t sub_10004D5B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10004D620()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_100022910();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10004D6E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_1002195B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_10004D7B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_1002195B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_10004D8BC()
{
  result = qword_10021A610;
  if (!qword_10021A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A610);
  }

  return result;
}

uint64_t sub_10004D91C()
{
  v1 = (type metadata accessor for SetlistView() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[12];
  sub_100009F70(&qword_1002196E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004DAAC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for SetlistView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000D890;

  return sub_100049AD4(v6, v7, v0 + v5, v2, v3);
}

unint64_t sub_10004DBE4()
{
  result = qword_10021A620;
  if (!qword_10021A620)
  {
    sub_10000B3DC(&qword_10021A618);
    sub_10004DC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A620);
  }

  return result;
}

unint64_t sub_10004DC70()
{
  result = qword_10021A628;
  if (!qword_10021A628)
  {
    sub_10000B3DC(&qword_10021A630);
    sub_10002764C();
    sub_10000D1EC(&qword_10021A638, &qword_10021A640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A628);
  }

  return result;
}

uint64_t sub_10004DD34@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100038AB0();
  a1[1] = v2;
}

uint64_t sub_10004DD74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000365A4(v1, v2);
}

__n128 sub_10004DDC0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_10004DDF8()
{
  result = qword_10021A648;
  if (!qword_10021A648)
  {
    sub_10000B3DC(&qword_10021A608);
    sub_10004DBE4();
    sub_10004E45C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A648);
  }

  return result;
}

uint64_t sub_10004DEE8()
{
  v1 = (type metadata accessor for SetlistView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  v3 = v1[12];
  sub_100009F70(&qword_1002196E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004E070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SetlistView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100048B5C(a1, v8, v5, v6, a2);
}

uint64_t sub_10004E10C()
{
  v1 = (type metadata accessor for SetlistView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v11 = *(*v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  v7 = v1[12];
  sub_100009F70(&qword_1002196E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v11 + v5) & ~v5), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_10004E350()
{
  v1 = *(type metadata accessor for SetlistView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100049414(v0 + v2, v5);
}

uint64_t sub_10004E45C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004E4A4()
{
  result = qword_10021A658[0];
  if (!qword_10021A658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021A658);
  }

  return result;
}

void sub_10004E500()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_10004E968(319, &qword_1002185F8, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10000B304();
      if (v2 <= 0x3F)
      {
        sub_10004E914(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
        if (v3 <= 0x3F)
        {
          sub_10004E914(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
          if (v4 <= 0x3F)
          {
            sub_10004E968(319, &qword_1002198C0, &type metadata for CGFloat, &type metadata accessor for Environment);
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

uint64_t sub_10004E688(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100218D00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004E7D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218D00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004E914(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004E968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10004E9B8()
{
  sub_10000B3DC(&qword_10021A608);
  type metadata accessor for SetlistDetailSection();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000B3DC(&qword_100219D50);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100219D48, &qword_100219D50);
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_10004D8BC();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A250);
  swift_getOpaqueTypeConformance2();
  sub_100038B78();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10004F050()
{
  v1 = type metadata accessor for SetlistDetailSection();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[11];
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[12];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_100027EB0(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_10004F220()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for SetlistDetailSection() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000214E4;

  return sub_10004D2E8(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_10004F318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100218498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F3C4()
{
  result = qword_10021A718;
  if (!qword_10021A718)
  {
    sub_10000B3DC(&qword_10021A710);
    sub_10004F47C();
    sub_10000D1EC(&qword_10021A740, &qword_10021A748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A718);
  }

  return result;
}

unint64_t sub_10004F47C()
{
  result = qword_10021A720;
  if (!qword_10021A720)
  {
    sub_10000B3DC(&qword_10021A728);
    sub_10000D1EC(&qword_10021A730, &qword_10021A738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A720);
  }

  return result;
}

unint64_t sub_10004F534()
{
  result = qword_10021A750;
  if (!qword_10021A750)
  {
    sub_10000B3DC(&qword_10021A700);
    sub_10000D1EC(&qword_10021A758, &qword_10021A760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A750);
  }

  return result;
}

uint64_t sub_10004F5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F65C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021A6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F6C4()
{
  v1 = type metadata accessor for SetlistDetailSection();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));

  v3 = v1[11];
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[12];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_100027EB0(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_10004F8B8(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1(0, v3, v4) - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v6, v3, v4);
}

uint64_t sub_10004F958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F9BC()
{
  result = qword_10021A7A8;
  if (!qword_10021A7A8)
  {
    sub_10000B3DC(&qword_10021A7A0);
    sub_10004FA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A7A8);
  }

  return result;
}

unint64_t sub_10004FA48()
{
  result = qword_10021A7B0;
  if (!qword_10021A7B0)
  {
    sub_10000B3DC(&qword_10021A7B8);
    sub_100018F54();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A7B0);
  }

  return result;
}

uint64_t sub_10004FB08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000D5FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10004FB4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000D60C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10004FB90()
{
  v1 = type metadata accessor for SetlistDetailSection();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;

  v9 = v1[11];
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v1[12];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  sub_100027EB0(*(v8 + v1[13]), *(v8 + v1[13] + 8));
  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_10004FDEC()
{
  v1 = *(type metadata accessor for SetlistDetailSection() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10004C884(v0 + v2, v5);
}

uint64_t sub_10004FEE0()
{
  sub_10000B3DC(&qword_100218498);
  sub_10000D1EC(qword_10021A7E8, &qword_100218498);
  return swift_getOpaqueTypeConformance2();
}

void sub_10004FF88()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 category];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = [v0 sharedInstance];
      v22 = 0;
      v10 = [v9 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:&v22];

      v11 = v22;
      if (v10)
      {

        v12 = v11;
      }

      else
      {
        v13 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100218470 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10001FDF4(v14, qword_100230610);
        swift_errorRetain();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v22 = v18;
          *v17 = 136315138;
          swift_getErrorValue();
          v19 = Error.localizedDescription.getter();
          v21 = sub_10005D4E8(v19, v20, &v22);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "Failed to configure audio session for playback, %s", v17, 0xCu);
          sub_100021498(v18);
        }

        else
        {
        }
      }
    }
  }
}

void sub_1000502E8()
{
  type metadata accessor for SportEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_1000391A4();
      if (v2 <= 0x3F)
      {
        sub_100050558();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000503C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100218950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100050490(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100050558()
{
  if (!qword_10021A870)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10021A870);
    }
  }
}

double sub_1000505EC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 96.0;
  if (v1 != 1)
  {
    return 12.0;
  }

  return result;
}

double sub_100050654()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 100.0;
  if (v1 != 1)
  {
    return 16.0;
  }

  return result;
}

double sub_1000506BC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 84.0;
  }

  v3 = static Solarium.isEnabled.getter();
  result = -4.0;
  if (v3)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_100050738()
{
  type metadata accessor for SportEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10005078C()
{
  type metadata accessor for SportEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_1000507E4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100050A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v124 = type metadata accessor for TaskPriority();
  v123 = *(v124 - 8);
  v3 = __chkstk_darwin(v124);
  v122 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(a1 - 8);
  v131 = *(v121 + 64);
  __chkstk_darwin(v3);
  v120 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v116 = a1;
  type metadata accessor for Optional();
  v119 = type metadata accessor for Binding();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v94 - v7;
  v127 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v129 = v8;
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for HeroImageView();
  v10 = *(v8 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v6;
  v146 = v9;
  v147 = v10;
  v148 = WitnessTable;
  type metadata accessor for HeaderModule();
  v12 = type metadata accessor for ModifiedContent();
  v143 = swift_getWitnessTable();
  v144 = &protocol witness table for _PaddingLayout;
  v113 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v12;
  v146 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v146 = sub_10000B3DC(&qword_10021A878);
  type metadata accessor for DetailsModule();
  v147 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  v128 = v6;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v148 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v149 = type metadata accessor for Optional();
  v150 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v14 = type metadata accessor for ScrollView();
  v15 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v14;
  v146 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v14;
  v146 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v16;
  v146 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v16;
  v146 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v18;
  v146 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8);
  v20 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v18;
  v146 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v141 = v21;
  v142 = v22;
  v23 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v20;
  v146 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v20;
  v146 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_100027068();
  OpaqueTypeMetadata2 = v24;
  v146 = &type metadata for String;
  v147 = v25;
  v148 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v24;
  v146 = &type metadata for String;
  v147 = v25;
  v148 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v146 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v27;
  v146 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v29;
  v146 = &type metadata for Bool;
  v147 = v30;
  v148 = &protocol witness table for Bool;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_10000B3DC(&qword_10021A888);
  OpaqueTypeMetadata2 = v29;
  v146 = &type metadata for Bool;
  v147 = v30;
  v148 = &protocol witness table for Bool;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10000D1EC(&qword_10021A890, &qword_10021A888);
  OpaqueTypeMetadata2 = v31;
  v146 = v32;
  v147 = v33;
  v148 = v34;
  v104 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v31;
  v146 = v32;
  v147 = v33;
  v148 = v34;
  v102 = swift_getOpaqueTypeConformance2();
  v35 = type metadata accessor for NavigationStack();
  v103 = *(v35 - 8);
  __chkstk_darwin(v35);
  v100 = &v94 - v36;
  type metadata accessor for AccessibilityAttachmentModifier();
  v37 = type metadata accessor for ModifiedContent();
  v114 = *(v37 - 8);
  __chkstk_darwin(v37);
  v99 = &v94 - v38;
  v39 = swift_getWitnessTable();
  v96 = v39;
  v40 = sub_100058FD8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v139 = v39;
  v140 = v40;
  v41 = swift_getWitnessTable();
  v42 = *(v10 + 16);
  v43 = v116;
  v44 = swift_getWitnessTable();
  v45 = v37;
  v95 = v37;
  v46 = v128;
  OpaqueTypeMetadata2 = v37;
  v146 = v128;
  v147 = v43;
  v148 = v41;
  v98 = v41;
  v149 = v42;
  v150 = v44;
  v97 = v42;
  v47 = v44;
  v94 = v44;
  v106 = swift_getOpaqueTypeMetadata2();
  v110 = *(v106 - 8);
  __chkstk_darwin(v106);
  v126 = &v94 - v48;
  v49 = type metadata accessor for ModifiedContent();
  v115 = *(v49 - 8);
  __chkstk_darwin(v49);
  v127 = &v94 - v50;
  OpaqueTypeMetadata2 = v45;
  v146 = v46;
  v51 = v43;
  v147 = v43;
  v148 = v41;
  v149 = v42;
  v150 = v47;
  v101 = swift_getOpaqueTypeConformance2();
  v137 = v101;
  v138 = &protocol witness table for _AppearanceActionModifier;
  v108 = v49;
  v107 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v49;
  v146 = v107;
  v111 = &unk_1001C2954;
  v112 = swift_getOpaqueTypeMetadata2();
  v113 = *(v112 - 8);
  v52 = __chkstk_darwin(v112);
  v105 = &v94 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v109 = &v94 - v54;
  v134 = v46;
  v55 = v46;
  v56 = v129;
  v135 = v129;
  v136 = v130;
  v57 = v100;
  NavigationStack.init<>(root:)();
  v58 = v99;
  View.accessibilityIdentifier(_:)();
  (*(v103 + 8))(v57, v35);
  v59 = v51;
  v60 = sub_10005078C();
  v62 = v61;
  v64 = v63;
  v132 = v55;
  v133 = v56;
  v65 = v56;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v60;
  v146 = v62;
  v147 = v64;
  type metadata accessor for SportEventViewModel();
  type metadata accessor for Binding();
  v66 = v117;
  Binding.subscript.getter();

  v67 = swift_allocObject();
  v68 = v55;
  *(v67 + 16) = v55;
  *(v67 + 24) = v65;
  v69 = v95;
  v70 = v59;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v118 + 8))(v66, v119);
  (*(v114 + 8))(v58, v69);
  v71 = v121;
  v119 = *(v121 + 16);
  v72 = v120;
  v73 = v130;
  v119(v120, v130, v70);
  v74 = *(v71 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v68;
  *(v75 + 24) = v65;
  v76 = *(v71 + 32);
  v76(v75 + ((v74 + 32) & ~v74), v72, v70);
  v77 = v106;
  v78 = v126;
  View.onAppear(perform:)();

  (*(v110 + 8))(v78, v77);
  v119(v72, v73, v70);
  type metadata accessor for MainActor();
  v79 = static MainActor.shared.getter();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = &protocol witness table for MainActor;
  v81 = v129;
  v80[4] = v128;
  v80[5] = v81;
  v76(v80 + ((v74 + 48) & ~v74), v72, v70);
  v82 = v122;
  v83 = v108;
  v84 = v107;
  j___sScP13userInitiatedScPvgZ();
  v85 = v105;
  v86 = v82;
  v87 = v82;
  v88 = v127;
  sub_100009FB8(0, v86, 0xD000000000000024, 0x80000001001BEA70, 145, &unk_1001B0118, v80, v105, v83, v84);
  (*(v123 + 8))(v87, v124);
  (*(v115 + 8))(v88, v83);
  OpaqueTypeMetadata2 = v83;
  v146 = v84;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v109;
  v91 = v112;
  sub_100157EFC(v85, v112, v89);
  v92 = v113[1];
  v92(v85, v91);
  sub_100157EFC(v90, v91, v89);
  return (v92)(v90, v91);
}

uint64_t sub_100051BD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v166 = a1;
  v163 = a4;
  v164 = type metadata accessor for SportEventView();
  v162 = *(v164 - 8);
  v160 = *(v162 + 64);
  __chkstk_darwin(v164);
  v161 = &v105 - v6;
  v159 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for ContentMarginPlacement();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v153 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ScrollIndicatorVisibility();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v105 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v165 = a3;
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for HeroImageView();
  v11 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = a2;
  v175 = v10;
  v176 = v11;
  v177 = WitnessTable;
  type metadata accessor for HeaderModule();
  v13 = type metadata accessor for ModifiedContent();
  v172 = swift_getWitnessTable();
  v173 = &protocol witness table for _PaddingLayout;
  v14 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v13;
  v175 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v175 = sub_10000B3DC(&qword_10021A878);
  type metadata accessor for DetailsModule();
  v176 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v177 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v178 = type metadata accessor for Optional();
  v179 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v108 = type metadata accessor for VStack();
  v107 = swift_getWitnessTable();
  v15 = type metadata accessor for ScrollView();
  v114 = *(v15 - 8);
  __chkstk_darwin(v15);
  v106 = &v105 - v16;
  v17 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v15;
  v175 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v112 = *(v18 - 8);
  __chkstk_darwin(v18);
  v111 = &v105 - v19;
  v116 = v15;
  OpaqueTypeMetadata2 = v15;
  v175 = v17;
  v110 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v18;
  v175 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v128 = *(v21 - 8);
  __chkstk_darwin(v21);
  v123 = &v105 - v22;
  v113 = v18;
  OpaqueTypeMetadata2 = v18;
  v175 = OpaqueTypeConformance2;
  v109 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v21;
  v175 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v138 = *(v24 - 8);
  __chkstk_darwin(v24);
  v131 = &v105 - v25;
  sub_10000B3DC(&qword_1002188F8);
  v143 = v24;
  v26 = type metadata accessor for ModifiedContent();
  v137 = *(v26 - 8);
  __chkstk_darwin(v26);
  v130 = &v105 - v27;
  v132 = v21;
  OpaqueTypeMetadata2 = v21;
  v175 = v23;
  v120 = v23;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v115 = v28;
  v170 = v28;
  v171 = v29;
  v30 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v26;
  v175 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v125 = *(v31 - 8);
  __chkstk_darwin(v31);
  v122 = &v105 - v32;
  v141 = v26;
  OpaqueTypeMetadata2 = v26;
  v175 = v30;
  v117 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_100027068();
  OpaqueTypeMetadata2 = v31;
  v175 = &type metadata for String;
  v176 = v33;
  v177 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v139 = *(v35 - 8);
  __chkstk_darwin(v35);
  v133 = &v105 - v36;
  v127 = v31;
  OpaqueTypeMetadata2 = v31;
  v175 = &type metadata for String;
  v119 = v33;
  v176 = v33;
  v177 = v34;
  v118 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v35;
  v175 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v149 = *(v38 - 8);
  __chkstk_darwin(v38);
  v147 = &v105 - v39;
  v144 = v35;
  OpaqueTypeMetadata2 = v35;
  v175 = v37;
  v121 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v38;
  v175 = &type metadata for Bool;
  v176 = v40;
  v177 = &protocol witness table for Bool;
  v41 = swift_getOpaqueTypeMetadata2();
  v146 = *(v41 - 8);
  __chkstk_darwin(v41);
  v145 = &v105 - v42;
  v43 = sub_10000B3DC(&qword_10021A888);
  v150 = v38;
  OpaqueTypeMetadata2 = v38;
  v175 = &type metadata for Bool;
  v136 = v40;
  v176 = v40;
  v177 = &protocol witness table for Bool;
  v44 = v106;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_10000D1EC(&qword_10021A890, &qword_10021A888);
  v148 = v41;
  OpaqueTypeMetadata2 = v41;
  v175 = v43;
  v142 = v43;
  v134 = v45;
  v176 = v45;
  v177 = v46;
  v129 = v46;
  v140 = swift_getOpaqueTypeMetadata2();
  v135 = *(v140 - 8);
  v47 = __chkstk_darwin(v140);
  v124 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v126 = &v105 - v49;
  v154 = a2;
  v167 = a2;
  v168 = v165;
  v169 = v166;
  static Axis.Set.vertical.getter();
  sub_1001511F4();
  v50 = v105;
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v52 = static Axis.Set.vertical.getter();
  *(inited + 32) = v52;
  v53 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v53;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v52)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v53)
  {
    Axis.Set.init(rawValue:)();
  }

  v54 = v155;
  v55 = v153;
  v56 = v123;
  v57 = v111;
  v58 = v50;
  v59 = v116;
  View.scrollIndicators(_:axes:)();
  (*(v151 + 8))(v58, v152);
  (*(v114 + 8))(v44, v59);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v60 = v113;
  View.contentMargins(_:_:for:)();
  v61 = *(v54 + 8);
  v62 = v156;
  v61(v55, v156);
  (*(v112 + 8))(v57, v60);
  static Edge.Set.bottom.getter();
  v63 = v166;
  sub_100050738();
  if (v63[2])
  {

    sub_100159350(v64);

    static ContentMarginPlacement.scrollContent.getter();
    v65 = v131;
    v66 = v132;
    View.contentMargins(_:_:for:)();
    v61(v55, v62);
    (*(v128 + 8))(v56, v66);
    v67 = [objc_opt_self() systemGroupedBackgroundColor];
    OpaqueTypeMetadata2 = Color.init(uiColor:)();
    static Edge.Set.all.getter();
    v68 = v130;
    v69 = v143;
    View.background<A>(_:ignoresSafeAreaEdges:)();

    (*(v138 + 8))(v65, v69);
    v70 = v158;
    v71 = v157;
    v72 = v159;
    (*(v158 + 104))(v157, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v159);
    v73 = v122;
    v74 = v141;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v70 + 8))(v71, v72);
    (*(v137 + 8))(v68, v74);
    v75 = v164;
    v76 = v166;
    sub_100050738();
    v77 = sub_10015D478();
    v79 = v78;

    OpaqueTypeMetadata2 = v77;
    v175 = v79;
    v80 = v133;
    v81 = v127;
    View.navigationTitle<A>(_:)();

    (*(v125 + 8))(v73, v81);
    sub_100050738();
    sub_100159598();

    sub_100009F70(&qword_10021A898);
    type metadata accessor for ToolbarPlacement();
    *(swift_allocObject() + 16) = xmmword_1001AEB90;
    static ToolbarPlacement.navigationBar.getter();
    v82 = v147;
    v83 = v144;
    View.toolbarBackgroundVisibility(_:for:)();

    (*(v139 + 8))(v80, v83);
    v84 = swift_allocObject();
    v85 = v154;
    v86 = v165;
    *(v84 + 16) = v154;
    *(v84 + 24) = v86;
    v87 = v162;
    v88 = v161;
    (*(v162 + 16))(v161, v76, v75);
    v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = v85;
    *(v90 + 24) = v86;
    (*(v87 + 32))(v90 + v89, v88, v75);
    v104 = &protocol witness table for Bool;
    v91 = v145;
    v92 = v150;
    View.onScrollGeometryChange<A>(for:of:action:)();

    v93 = (*(v149 + 8))(v82, v92);
    __chkstk_darwin(v93);
    *(&v105 - 4) = v85;
    *(&v105 - 3) = v86;
    v104 = v76;
    v94 = v124;
    v95 = v148;
    v96 = v142;
    v97 = v134;
    v98 = v129;
    View.toolbar<A>(content:)();
    (*(v146 + 8))(v91, v95);
    OpaqueTypeMetadata2 = v95;
    v175 = v96;
    v176 = v97;
    v177 = v98;
    v99 = swift_getOpaqueTypeConformance2();
    v100 = v126;
    v101 = v140;
    sub_100157EFC(v94, v140, v99);
    v102 = *(v135 + 8);
    v102(v94, v101);
    sub_100157EFC(v100, v101, v99);
    return (v102)(v100, v101);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005323C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  swift_getWitnessTable();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v21 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_10000B3DC(&qword_10021A878);
  type metadata accessor for DetailsModule();
  v24 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v25 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v26 = type metadata accessor for Optional();
  v27 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  static HorizontalAlignment.leading.getter();
  v17 = a2;
  v18 = a3;
  v19 = a1;
  VStack.init(alignment:spacing:content:)();
  v13 = swift_getWitnessTable();
  sub_100157EFC(v10, v6, v13);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_100157EFC(v12, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_100053624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v277 = a4;
  v280 = type metadata accessor for AppModule();
  v275 = *(v280 - 8);
  __chkstk_darwin(v280);
  v246 = (&v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = sub_100009F70(&qword_10021A880);
  v8 = __chkstk_darwin(v276);
  v297 = &v238 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v281 = &v238 - v10;
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  __chkstk_darwin(v11 - 8);
  v244 = &v238 - v12;
  v13 = *(a3 + 8);
  v14 = type metadata accessor for UpcomingViewModel();
  __chkstk_darwin(v14 - 8);
  v242 = &v238 - v15;
  v16 = type metadata accessor for UpcomingModule();
  v273 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v245 = &v238 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v243 = &v238 - v19;
  v295 = v20;
  v296 = type metadata accessor for Optional();
  v292 = *(v296 - 8);
  v21 = __chkstk_darwin(v296);
  v299 = &v238 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v294 = &v238 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v267 = &v238 - v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v266 = AssociatedTypeWitness;
  v265 = AssociatedConformanceWitness;
  v27 = type metadata accessor for LocationModule();
  v270 = *(v27 - 8);
  __chkstk_darwin(v27);
  v269 = &v238 - v28;
  v271 = v29;
  v305 = type metadata accessor for ModifiedContent();
  v289 = *(v305 - 8);
  v30 = __chkstk_darwin(v305);
  v293 = &v238 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v268 = &v238 - v33;
  __chkstk_darwin(v32);
  v291 = &v238 - v34;
  v35 = type metadata accessor for DetailsModule();
  v263 = *(v35 - 8);
  __chkstk_darwin(v35);
  v262 = &v238 - v36;
  v264 = v37;
  v304 = type metadata accessor for ModifiedContent();
  v287 = *(v304 - 8);
  v38 = __chkstk_darwin(v304);
  v290 = &v238 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v261 = &v238 - v41;
  __chkstk_darwin(v40);
  v303 = &v238 - v42;
  v43 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v43 - 8);
  v272 = &v238 - v44;
  v238 = type metadata accessor for ServicesUpsellModule();
  __chkstk_darwin(v238);
  v241 = (&v238 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v278 = sub_100009F70(&qword_10021A900);
  v259 = *(v278 - 8);
  v46 = __chkstk_darwin(v278);
  v240 = &v238 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v239 = &v238 - v48;
  v274 = sub_100009F70(&qword_10021A878);
  v49 = __chkstk_darwin(v274);
  v288 = &v238 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v306 = &v238 - v51;
  v298 = a3;
  v52 = type metadata accessor for SportEventView();
  v300 = *(v52 - 8);
  v282 = *(v300 + 64);
  v53 = __chkstk_darwin(v52);
  v283 = &v238 - v54;
  __chkstk_darwin(v53);
  v56 = &v238 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = v56;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v57 = type metadata accessor for HeroImageView();
  v253 = v57;
  WitnessTable = swift_getWitnessTable();
  *&v322 = a2;
  *(&v322 + 1) = v57;
  v307 = a2;
  *&v323 = v13;
  *(&v323 + 1) = WitnessTable;
  v58 = type metadata accessor for HeaderModule();
  v255 = *(v58 - 8);
  __chkstk_darwin(v58);
  v249 = &v238 - v59;
  v60 = type metadata accessor for ModifiedContent();
  v258 = *(v60 - 8);
  __chkstk_darwin(v60);
  v257 = &v238 - v61;
  v256 = v58;
  v250 = swift_getWitnessTable();
  v330 = v250;
  v331 = &protocol witness table for _PaddingLayout;
  v62 = swift_getWitnessTable();
  v260 = v60;
  *&v322 = v60;
  *(&v322 + 1) = v62;
  v254 = v62;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v285 = *(OpaqueTypeMetadata2 - 8);
  v63 = __chkstk_darwin(OpaqueTypeMetadata2);
  v286 = &v238 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v63);
  v251 = &v238 - v66;
  __chkstk_darwin(v65);
  v301 = &v238 - v67;
  v279 = v13;
  v248 = type metadata accessor for HeaderViewModel();
  sub_100050738();
  sub_1001583A0(v56);

  v68 = sub_100050738();
  v69 = sub_10015847C(v68);
  v71 = v70;

  sub_100050738();
  v72 = sub_100158590();
  v74 = v73;

  sub_100050738();
  v75 = sub_1001585B0();
  v77 = v76;

  v78 = sub_100050738();
  LOBYTE(a2) = sub_1001585D0(v78);

  v324 = 0;
  v322 = 0u;
  v323 = 0u;
  sub_100079D3C(v284, v69, v71, v72, v74, v75, v77, 0, 0, a2 & 1, &v322);
  v79 = v300;
  v80 = v283;
  v248 = *(v300 + 16);
  v248(v283, a1, v52);
  v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v82 = swift_allocObject();
  v83 = v298;
  *(v82 + 16) = v307;
  *(v82 + 24) = v83;
  v84 = *(v79 + 32);
  v85 = v80;
  v86 = v249;
  v300 = v79 + 32;
  v247 = v84;
  v84(v82 + v81, v85, v52);
  sub_1000A89F0(sub_100058B7C, v82, v86);
  static Edge.Set.horizontal.getter();
  v87 = v52;
  v308 = a1;
  if (sub_1000507E4(v52))
  {
    sub_1000505EC();
  }

  v88 = v83;
  v89 = v257;
  v90 = v256;
  View.padding(_:_:)();
  (*(v255 + 8))(v86, v90);
  v91 = v283;
  v92 = v308;
  v248(v283, v308, v87);
  v93 = swift_allocObject();
  v94 = v87;
  *(v93 + 16) = v307;
  *(v93 + 24) = v88;
  v247(v93 + v81, v91, v87);
  v95 = v251;
  v96 = v260;
  v97 = v254;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v258 + 8))(v89, v96);
  *&v322 = v96;
  *(&v322 + 1) = v97;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = OpaqueTypeMetadata2;
  v282 = OpaqueTypeConformance2;
  sub_100157EFC(v95, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v100 = *(v285 + 8);
  v300 = v285 + 8;
  v283 = v100;
  (v100)(v95, v99);
  v101 = v94;
  sub_100050738();
  v102 = *(v92 + 16);
  if (v102)
  {
    v103 = objc_allocWithZone(LSApplicationWorkspace);

    v104 = [v103 init];
    v105 = objc_opt_self();
    v106 = String._bridgeToObjectiveC()();
    v107 = [v105 applicationWithBundleIdentifier:v106];

    LOBYTE(v106) = sub_10015D58C(v102, 0xD000000000000010, 0x80000001001BEAD0, v107);

    v260 = v102;

    v108 = 1;
    v109 = v101;
    if (v106)
    {
      v110 = sub_100050738();
      v111 = sub_100158868(v110);
      v113 = v112;

      sub_100050738();
      v114 = v272;
      sub_10015897C(v272);

      sub_100050738();
      v115 = sub_10015D804();
      v117 = v116;

      v118 = sub_100050738();
      v119 = sub_100158A64(v118);

      type metadata accessor for ServicesUpsellViewModel();
      v120 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v120 + 16) = 1;
      *(v120 + 24) = v111;
      *(v120 + 32) = v113;
      sub_10000F618(v114, v120 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_openURL, qword_100218748);
      v121 = (v120 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_subtitle);
      *v121 = 0;
      v121[1] = 0;
      v122 = (v120 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_metricsQuery);
      *v122 = v115;
      v122[1] = v117;
      *(v120 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_analyticsPageNameType) = v119;
      v123 = v241;
      *v241 = v120;
      type metadata accessor for RemoteViewConfiguration();
      sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      v123[1] = EnvironmentObject.init()();
      v123[2] = v124;
      v125 = *(v238 + 24);
      *(v123 + v125) = swift_getKeyPath();
      sub_100009F70(&qword_100218DF8);
      swift_storeEnumTagMultiPayload();
      v126 = static Edge.Set.horizontal.getter();
      if (sub_1000507E4(v109))
      {
        sub_100050654();
      }

      EdgeInsets.init(_all:)();
      v128 = v127;
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v135 = v123;
      v136 = v240;
      sub_100059028(v135, v240, type metadata accessor for ServicesUpsellModule);
      v137 = v136 + *(v278 + 36);
      *v137 = v126;
      *(v137 + 8) = v128;
      *(v137 + 16) = v130;
      *(v137 + 24) = v132;
      *(v137 + 32) = v134;
      *(v137 + 40) = 0;
      v138 = v136;
      v139 = v239;
      sub_10000F618(v138, v239, &qword_10021A900);
      sub_10000F618(v139, v306, &qword_10021A900);
      v108 = 0;
    }

    (*(v259 + 56))(v306, v108, 1, v278);
    type metadata accessor for DetailsViewModel();
    sub_100050738();
    v140 = v284;
    sub_1001583A0(v284);

    sub_100050738();
    v141 = sub_10015D504();
    v142 = v141;

    sub_100183444(v140, v141);
    v143 = v262;
    sub_1000FF934(v262);
    static Edge.Set.horizontal.getter();
    if (sub_1000507E4(v109))
    {
      sub_1000506BC();
    }

    else
    {
      static Solarium.isEnabled.getter();
    }

    v144 = v264;
    v145 = swift_getWitnessTable();
    v146 = v261;
    View.padding(_:_:)();
    (*(v263 + 8))(v143, v144);
    v328 = v145;
    v329 = &protocol witness table for _PaddingLayout;
    v147 = v304;
    v264 = swift_getWitnessTable();
    sub_100157EFC(v146, v147, v264);
    v148 = *(v287 + 8);
    v284 = (v287 + 8);
    v278 = v148;
    v148(v146, v147);
    type metadata accessor for LocationViewModel();
    v149 = sub_100050738();
    v150 = sub_100158868(v149);
    v152 = v151;

    v153 = sub_100050738();
    v154 = v267;
    sub_100158B8C(v153);

    sub_100050738();
    v155 = sub_10015D504();
    v156 = v155;

    v157 = sub_100050738();
    LOBYTE(v146) = sub_100158A64(v157);

    sub_1000C6E18(v150, v152, v154, v155, v146);
    v158 = v269;
    sub_1000A2404(v269);
    static Edge.Set.horizontal.getter();
    if (sub_1000507E4(v109))
    {
      sub_100050654();
    }

    v159 = v271;
    v160 = swift_getWitnessTable();
    v161 = v268;
    View.padding(_:_:)();
    (*(v270 + 1))(v158, v159);
    v326 = v160;
    v327 = &protocol witness table for _PaddingLayout;
    v162 = v305;
    v269 = swift_getWitnessTable();
    sub_100157EFC(v161, v162, v269);
    v163 = *(v289 + 8);
    v271 = v289 + 8;
    v270 = v163;
    v163(v161, v162);
    sub_100050738();
    LOBYTE(v162) = sub_100158C98();

    if (v162)
    {
      v164 = sub_100050738();
      v165 = (v164 + *(*v164 + 168));
      v166 = v165[1];
      v268 = *v165;

      v167 = sub_100050738();
      v267 = sub_100158FB0(v167);
      v266 = v168;

      sub_100050738();
      v169 = sub_10015D890();

      v170 = sub_10005078C();
      v172 = v171;
      v174 = v173;
      __chkstk_darwin(v170);
      swift_getKeyPath();
      *&v322 = v170;
      *(&v322 + 1) = v172;
      *&v323 = v174;
      type metadata accessor for SportEventViewModel();
      type metadata accessor for Binding();
      v175 = v244;
      Binding.subscript.getter();

      v176 = v242;
      sub_1000F6C94(v268, v166, v267, v266, 1, v169, v175, v242);
      KeyPath = swift_getKeyPath();
      v178 = v245;
      sub_1000C117C(v176, KeyPath, 0, v245);
      v179 = v295;
      v180 = swift_getWitnessTable();
      v181 = v243;
      sub_100157EFC(v178, v179, v180);
      v182 = v273;
      v183 = *(v273 + 8);
      v183(v178, v179);
      sub_100157EFC(v181, v179, v180);
      v183(v181, v179);
      v184 = v299;
      (*(v182 + 32))(v299, v178, v179);
      (*(v182 + 56))(v184, 0, 1, v179);
    }

    else
    {
      v184 = v299;
      (*(v273 + 56))(v299, 1, 1, v295);
      swift_getWitnessTable();
    }

    sub_100150FB8(v184, v294);
    v185 = *(v292 + 8);
    v307 = v292 + 8;
    v298 = v185;
    v185(v184, v296);
    sub_100050738();

    v187 = sub_100159350(v186);

    v188 = 1;
    if (v187)
    {
      v189 = sub_100050738();
      v190 = sub_100158868(v189);
      v192 = v191;

      sub_100050738();
      v193 = v272;
      sub_10015897C(v272);

      sub_100050738();

      v195 = sub_10001EF0C(v194);
      v197 = v196;

      v198 = sub_100050738();
      v199 = sub_100158A64(v198);

      type metadata accessor for AppViewModel();
      v200 = swift_allocObject();
      v201 = v200 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_subheaderTitle;
      *v201 = LocalizedStringKey.init(stringLiteral:)();
      *(v201 + 8) = v202;
      *(v201 + 16) = v203 & 1;
      *(v201 + 24) = v204;
      v205 = v200 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_descriptionTitle;
      *v205 = LocalizedStringKey.init(stringLiteral:)();
      *(v205 + 8) = v206;
      *(v205 + 16) = v207 & 1;
      *(v205 + 24) = v208;
      ObservationRegistrar.init()();
      *(v200 + 16) = 1;
      *(v200 + 24) = v190;
      *(v200 + 32) = v192;
      sub_10000F618(v193, v200 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_eventURL, qword_100218748);
      v209 = (v200 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
      *v209 = v195;
      v209[1] = v197;
      v184 = v299;
      *(v200 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail) = 0;
      *(v200 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_analyticsPageNameType) = v199;
      v210 = swift_getKeyPath();
      v211 = v246;
      *v246 = v200;
      v317 = 0;
      v316 = 0;
      sub_100009F70(&qword_100219F00);
      State.init(wrappedValue:)();
      v212 = v323;
      *(v211 + 8) = v322;
      *(v211 + 24) = v212;
      type metadata accessor for RemoteViewConfiguration();
      sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      *(v211 + 32) = EnvironmentObject.init()();
      *(v211 + 40) = v213;
      v214 = v280;
      v215 = *(v280 + 28);
      *(v211 + v215) = swift_getKeyPath();
      sub_100009F70(&qword_100218DF8);
      swift_storeEnumTagMultiPayload();
      v216 = v211 + *(v214 + 32);
      *v216 = v210;
      *(v216 + 8) = 0;
      sub_100059028(v211, v281, type metadata accessor for AppModule);
      v188 = 0;
    }

    v217 = v281;
    (*(v275 + 56))(v281, v188, 1, v280);
    v218 = v286;
    v219 = OpaqueTypeMetadata2;
    (*(v285 + 16))(v286, v301);
    *&v322 = v218;
    v220 = v288;
    sub_10000D58C(v306, v288, &qword_10021A878);
    *(&v322 + 1) = v220;
    v221 = v290;
    v222 = v304;
    (*(v287 + 16))(v290, v303);
    *&v323 = v221;
    v223 = v293;
    v224 = v291;
    v225 = v305;
    (*(v289 + 16))(v293, v291);
    *(&v323 + 1) = v223;
    v226 = v184;
    v227 = v294;
    v228 = v184;
    v229 = v296;
    (*(v292 + 16))(v226, v294, v296);
    v324 = v228;
    v230 = v297;
    sub_10000D58C(v217, v297, &qword_10021A880);
    v325 = v230;
    v316 = v219;
    v317 = v274;
    v318 = v222;
    v319 = v225;
    v320 = v229;
    v321 = v276;
    v310 = v282;
    v311 = sub_100058DE4();
    v312 = v264;
    v313 = v269;
    v309 = swift_getWitnessTable();
    v314 = swift_getWitnessTable();
    v315 = sub_100058F24();
    sub_100151024(&v322, 6uLL, &v316);
    sub_10000D52C(v217, &qword_10021A880);
    v231 = v298;
    v298(v227, v229);
    v232 = v270;
    v270(v224, v225);
    v233 = v222;
    v234 = v278;
    (v278)(v303, v233);
    sub_10000D52C(v306, &qword_10021A878);
    v235 = OpaqueTypeMetadata2;
    v236 = v283;
    (v283)(v301, OpaqueTypeMetadata2);
    sub_10000D52C(v297, &qword_10021A880);
    v231(v299, v229);
    v232(v293, v305);
    v234(v290, v304);
    sub_10000D52C(v288, &qword_10021A878);
    return v236(v286, v235);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100055988@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for HeroImageView();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  type metadata accessor for SportEventView();
  v11 = sub_100050738();
  sub_1001586F4(v11);

  sub_10019405C(v3, v8);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_100157EFC(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_100055BB8(char a1)
{
  type metadata accessor for SportEventView();
  sub_100050738();
  sub_100158830((a1 & 1) == 0);
}

uint64_t sub_100055C5C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for SportEventView();
  sub_100050738();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  sub_100159620(v3);
}

uint64_t sub_100055CBC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  v94 = sub_100009F70(&qword_10021A8A0);
  __chkstk_darwin(v94);
  v93 = &v73 - v7;
  v92 = sub_100009F70(&qword_10021A8A8);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v83 = &v73 - v8;
  v91 = sub_100009F70(&qword_10021A8B0);
  v82 = *(v91 - 8);
  __chkstk_darwin(v91);
  v81 = &v73 - v9;
  v75 = type metadata accessor for EnvironmentValues();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_10021A8B8);
  v12 = __chkstk_darwin(v11 - 8);
  v88 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = &v73 - v14;
  v84 = sub_100009F70(&qword_10021A8C0);
  v15 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v73 - v16;
  v17 = type metadata accessor for ToolbarItemPlacement();
  v18 = __chkstk_darwin(v17 - 8);
  v80 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v76 = &v73 - v20;
  v85 = sub_100009F70(&qword_10021A8C8);
  v78 = *(v85 - 8);
  __chkstk_darwin(v85);
  v77 = &v73 - v21;
  v22 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v22 - 8);
  v24 = &v73 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100009F70(&qword_10021A8D0);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v87 = &v73 - v33;
  v96 = a2;
  v34 = a3;
  v35 = type metadata accessor for SportEventView();
  v36 = sub_100050738();
  sub_100159780(v36, v24);

  v37 = (*(v26 + 48))(v24, 1, v25);
  v97 = a1;
  v86 = v35;
  if (v37 == 1)
  {
    sub_10000D52C(v24, qword_100218748);
LABEL_7:
    (*(v15 + 56))(v32, 1, 1, v84);
    v40 = sub_10000D1EC(&qword_10021A8D8, &qword_10021A8C8);
    v98 = v85;
    v99 = v40;
    swift_getOpaqueTypeConformance2();
    v41 = v87;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v32, &qword_10021A8D0);
    goto LABEL_10;
  }

  (*(v26 + 32))(v28, v24, v25);
  sub_100050738();
  v38 = sub_1001599B8();

  if ((v38 & 1) == 0)
  {
    (*(v26 + 8))(v28, v25);
    goto LABEL_7;
  }

  if (static Solarium.isEnabled.getter())
  {
    v39 = static ToolbarItemPlacement.topBarLeading.getter();
  }

  else
  {
    v39 = static ToolbarItemPlacement.topBarTrailing.getter();
  }

  __chkstk_darwin(v39);
  v42 = v97;
  *(&v73 - 4) = v96;
  *(&v73 - 3) = a3;
  *(&v73 - 2) = v28;
  *(&v73 - 1) = v42;
  sub_100009F70(&qword_10021A8E8);
  sub_100058960();
  v76 = a3;
  v43 = v77;
  ToolbarItem<>.init(placement:content:)();
  v44 = sub_10000D1EC(&qword_10021A8D8, &qword_10021A8C8);
  v45 = v79;
  v46 = v85;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  v47 = v84;
  (*(v15 + 16))(v32, v45, v84);
  (*(v15 + 56))(v32, 0, 1, v47);
  v98 = v46;
  v99 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v87;
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_10000D52C(v32, &qword_10021A8D0);
  (*(v15 + 8))(v45, v47);
  v41 = v48;
  v49 = v43;
  v34 = v76;
  (*(v78 + 8))(v49, v46);
  (*(v26 + 8))(v28, v25);
LABEL_10:
  v50 = v89;
  v51 = v86;
  v52 = v97;
  v53 = *(v97 + 16);
  if (v53)
  {
    if (*(v53 + 88) && (*(v53 + 80) & 1) != 0)
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        if (*(v53 + 32) > 1u || *(v53 + 32))
        {
          v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v66 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v67 = &v52[*(v51 + 44)];
        v68 = *v67;
        if (v67[8] == 1)
        {
          if ((v68 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v69 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v70 = v73;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100027EB0(v68, 0);
          (*(v74 + 8))(v70, v75);
          if (v98 != 1)
          {
LABEL_26:
            v71 = v88;
            (*(v90 + 56))(v88, 1, 1, v92);
            v72 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
            v98 = v91;
            v99 = v72;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_10000D52C(v71, &qword_10021A8B8);
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
    }

LABEL_17:
    v55 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v55);
    *(&v73 - 4) = v96;
    *(&v73 - 3) = v34;
    *(&v73 - 2) = v52;
    sub_100042DC4();
    v56 = v81;
    ToolbarItem<>.init(placement:content:)();
    v57 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
    v58 = v83;
    v59 = v91;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v60 = v90;
    v61 = v88;
    v62 = v92;
    (*(v90 + 16))(v88, v58, v92);
    (*(v60 + 56))(v61, 0, 1, v62);
    v98 = v59;
    v99 = v57;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v61, &qword_10021A8B8);
    (*(v60 + 8))(v58, v62);
    (*(v82 + 8))(v56, v59);
LABEL_18:
    v63 = v93;
    v64 = *(v94 + 48);
    sub_10000D58C(v41, v93, &qword_10021A8D0);
    sub_10000D58C(v50, v63 + v64, &qword_10021A8B8);
    TupleToolbarContent.init(_:)();
    sub_10000D52C(v50, &qword_10021A8B8);
    return sub_10000D52C(v41, &qword_10021A8D0);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100056ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = type metadata accessor for SportEventView();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v13 = type metadata accessor for ShareButton();
  __chkstk_darwin(v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  (*(v10 + 16))(v12, a2, v9);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + v17, v12, v9);
  v19 = &v15[*(v13 + 20)];
  *v19 = sub_100058A4C;
  v19[1] = v18;
  sub_100058FD8(&qword_10021A8F8, type metadata accessor for ShareButton);
  View.accessibilityIdentifier(_:)();
  return sub_100058A64(v15);
}

uint64_t sub_100056D04(uint64_t a1)
{
  type metadata accessor for SportEventView();
  sub_100050738();
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100159AAC(0, 1, 0, 3u, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100056DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SportEventView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v9 + 32))(v13 + v12, v11, v8);
  *a4 = 0;
  *(a4 + 8) = sub_100058AC0;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_100056F24(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportEventView();
  sub_100050738();
  v6 = *(a1 + 16);
  if (v6)
  {

    sub_100159AAC(0, 2, 0, 3u, v6);

    sub_100024868(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000570C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportEventView();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  type metadata accessor for SportEventViewModel();
  (*(v4 + 16))(v6, a1, a2);
  sub_100159D44(v6);
  KeyPath = swift_getKeyPath();
  sub_1000572EC(KeyPath, 0, v11);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v11, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_100157EFC(v13, v7, WitnessTable);
  return v16(v13, v7);
}

uint64_t sub_1000572EC@<X0>(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  State.init(wrappedValue:)();
  *a3 = v11;
  a3[1] = v12;
  type metadata accessor for RemoteViewConfiguration();
  sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  a3[2] = EnvironmentObject.init()();
  a3[3] = v6;
  v7 = type metadata accessor for SportEventView();
  v8 = *(v7 + 40);
  *(a3 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100219710);
  result = swift_storeEnumTagMultiPayload();
  v10 = a3 + *(v7 + 44);
  *v10 = a1;
  v10[8] = a2 & 1;
  return result;
}

uint64_t sub_100057444(uint64_t a1)
{
  type metadata accessor for SportEventView();
  sub_100050738();
  if (*(a1 + 16))
  {

    sub_100159D84(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[259] = a5;
  v5[253] = a4;
  v5[247] = a3;
  v6 = type metadata accessor for SportEventView();
  v5[265] = v6;
  v7 = *(v6 - 8);
  v5[271] = v7;
  v5[277] = *(v7 + 64);
  v5[278] = swift_task_alloc();
  v5[279] = swift_task_alloc();
  v5[280] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[281] = static MainActor.shared.getter();
  v5[282] = dispatch thunk of Actor.unownedExecutor.getter();
  v5[283] = v8;

  return _swift_task_switch(sub_100057634);
}

uint64_t sub_100057634()
{
  v1 = v0[280];
  v17 = v0[279];
  v18 = v0[278];
  v2 = v0[271];
  v3 = v0[265];
  v4 = v0[259];
  v5 = v0[253];
  v19 = v0[247];
  v15 = v5;
  v16 = *(v2 + 16);
  v16(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[284] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v20 = *(v2 + 32);
  v20(v7 + v6, v1, v3);
  v8 = swift_task_alloc();
  v0[285] = v8;
  *(v8 + 16) = &unk_1001B0128;
  *(v8 + 24) = v7;
  swift_asyncLet_begin();
  (v16)(v17, v19, v3);
  v9 = swift_allocObject();
  v0[286] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v20(v9 + v6, v17, v3);
  v10 = swift_task_alloc();
  v0[287] = v10;
  *(v10 + 16) = &unk_1001B0138;
  *(v10 + 24) = v9;
  swift_asyncLet_begin();
  (v16)(v18, v19, v3);
  v11 = swift_allocObject();
  v0[288] = v11;
  *(v11 + 16) = v15;
  *(v11 + 24) = v4;
  v20(v11 + v6, v18, v3);
  v12 = swift_task_alloc();
  v0[289] = v12;
  *(v12 + 16) = &unk_1001B0150;
  *(v12 + 24) = v11;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v13, sub_100057900, v0 + 242);
}

uint64_t sub_100057954()
{
  sub_100050738();
  sub_10015B3E4();

  return _swift_asyncLet_finish(v0 + 1296);
}

uint64_t sub_1000579EC()
{

  return _swift_asyncLet_finish(v0 + 656);
}

uint64_t sub_100057A7C()
{

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100057B0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100057BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100057BDC);
}

uint64_t sub_100057BDC()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100057C70);
}

uint64_t sub_100057C70()
{

  type metadata accessor for SportEventView();
  *(v0 + 48) = sub_100050738();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10005983C;

  return sub_10015A038();
}

uint64_t sub_100057D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100057D50);
}

uint64_t sub_100057D50()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100057DE4);
}

uint64_t sub_100057DE4()
{

  type metadata accessor for SportEventView();
  *(v0 + 48) = sub_100050738();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100057EA0;

  return sub_10015A52C();
}

uint64_t sub_100057EA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100057FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100057FD4);
}

uint64_t sub_100057FD4()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100058068);
}

uint64_t sub_100058068()
{

  type metadata accessor for SportEventView();
  *(v0 + 48) = sub_100050738();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10005983C;

  return sub_10015AB78();
}

__n128 sub_100058188(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000581C8()
{
  v1 = type metadata accessor for SportEventView();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 40);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_100027EB0(*(v3 + *(v1 + 44)), *(v3 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_100058320()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000D890;

  return sub_10005750C(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_100058418()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000214E4;

  return sub_100057BB8(v0 + v5, v2, v3);
}

uint64_t sub_100058500()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000214E4;

  return sub_100057D2C(v0 + v5, v2, v3);
}

uint64_t sub_1000585E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D890;

  return sub_10015120C(a1, v4);
}

uint64_t sub_1000586A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000214E4;

  return sub_100057FB0(v0 + v5, v2, v3);
}

uint64_t sub_100058788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_10015120C(a1, v4);
}

uint64_t sub_100058854@<X0>(BOOL *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 + v5 > 4.0;
  return result;
}

uint64_t sub_1000588A0(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for SportEventView();

  return sub_100055C5C(a1, a2);
}

unint64_t sub_100058960()
{
  result = qword_10021A8F0;
  if (!qword_10021A8F0)
  {
    sub_10000B3DC(&qword_10021A8E8);
    sub_100058FD8(&qword_10021A8F8, type metadata accessor for ShareButton);
    sub_100058FD8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A8F0);
  }

  return result;
}

uint64_t sub_100058A64(uint64_t a1)
{
  v2 = type metadata accessor for ShareButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058AD8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SportEventView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_100058B7C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SportEventView();

  return sub_100055988(a1);
}

uint64_t sub_100058C08()
{
  v1 = type metadata accessor for SportEventView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 40);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_100027EB0(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_100058D58(char a1)
{
  type metadata accessor for SportEventView();

  return sub_100055BB8(a1);
}

unint64_t sub_100058DE4()
{
  result = qword_10021A908;
  if (!qword_10021A908)
  {
    sub_10000B3DC(&qword_10021A878);
    sub_100058E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A908);
  }

  return result;
}

unint64_t sub_100058E68()
{
  result = qword_10021A910;
  if (!qword_10021A910)
  {
    sub_10000B3DC(&qword_10021A900);
    sub_100058FD8(&qword_10021A918, type metadata accessor for ServicesUpsellModule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A910);
  }

  return result;
}

unint64_t sub_100058F24()
{
  result = qword_10021A920;
  if (!qword_10021A920)
  {
    sub_10000B3DC(&qword_10021A880);
    sub_100058FD8(&qword_10021A928, type metadata accessor for AppModule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A920);
  }

  return result;
}

uint64_t sub_100058FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100059028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100059090()
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  swift_getWitnessTable();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A878);
  type metadata accessor for DetailsModule();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  type metadata accessor for Optional();
  sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A888);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021A890, &qword_10021A888);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SportEventView();
  swift_getWitnessTable();
  sub_100058FD8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000598B4(uint64_t a1)
{
  *(a1 + 8) = sub_100059938(&qword_10021A978, &type metadata accessor for Sport.League);
  result = sub_100059938(&qword_10021A980, &type metadata accessor for Sport.League);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100059938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100059980()
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100059A2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__queuedSongs);
}

uint64_t sub_100059AE0()
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100059BAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000D58C(v5 + v3, a1, &qword_10021A650);
}

uint64_t sub_100059C84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000D58C(v3 + v4, a2, &qword_10021A650);
}

uint64_t sub_100059D5C(uint64_t a1)
{
  sub_10000D58C(a1, v2, &qword_10021A650);
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(v2, &qword_10021A650);
}

uint64_t sub_100059E64(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  sub_10005D480(a2, a1 + v4, &qword_10021A650);
  return swift_endAccess();
}

uint64_t sub_100059EE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000D58C(v5 + v3, a1, &unk_10021F7F0);
}

uint64_t sub_100059FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000D58C(v3 + v4, a2, &unk_10021F7F0);
}

uint64_t sub_10005A090(uint64_t a1)
{
  sub_10000D58C(a1, v2, &unk_10021F7F0);
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(v2, &unk_10021F7F0);
}

uint64_t sub_10005A198(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_10005D480(a2, a1 + v4, &unk_10021F7F0);
  return swift_endAccess();
}

void *sub_10005A214()
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  v2 = v1;
  return v1;
}

id sub_10005A2C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  *a2 = v4;

  return v4;
}

void sub_10005A384(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player;
  v5 = *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10005DB18(0, &qword_10021AAD0);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_10005A51C()
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state);
}

uint64_t sub_10005A5C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state);
  return result;
}

uint64_t sub_10005A674(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10005A784@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 16);
  v6 = 1.0;
  if (v5 <= 1.0)
  {
    v6 = *(v3 + 16);
  }

  if ((*&v5 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v5 & 0x7FF0000000000000) == 0 || v5 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  *a2 = v9;
  return result;
}

double sub_10005A860()
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_10005A900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v4 - 8);
  v6 = (v46 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v47 = v10;
    v48 = v6;
    sub_10005DA94(a1 + 32, v52);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v46[-2] = v2;
    v46[-1] = a1;
    v50[0] = v2;
    v13 = sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v46[0] = 0;

    if (v11 != 1)
    {
      if (qword_100218470 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10001FDF4(v14, qword_100230610);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Only playing first song in playlist.", v17, 2u);
      }
    }

    swift_getKeyPath();
    v50[0] = v2;
    v46[1] = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
    swift_beginAccess();
    sub_10000D58C(v2 + v18, v50, &qword_10021A650);
    v19 = v51;
    if (v51)
    {
      v20 = sub_100028124(v50, v51);
      v21 = *(v19 - 8);
      __chkstk_darwin(v20);
      v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v23);
      sub_10000D52C(v50, &qword_10021A650);
      v24 = dispatch thunk of MusicItem.id.getter();
      v26 = v25;
      (*(v21 + 8))(v23, v19);
    }

    else
    {
      sub_10000D52C(v50, &qword_10021A650);
      v24 = 0;
      v26 = 0;
    }

    sub_100028124(v52, v53);
    v31 = dispatch thunk of MusicItem.id.getter();
    if (v26)
    {
      if (v24 == v31 && v26 == v32)
      {

LABEL_24:
        if (qword_100218470 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10001FDF4(v34, qword_100230610);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v35, v36))
        {
          goto LABEL_34;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Already playing same song.";
        goto LABEL_33;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v39 = v53;
    v40 = v54;
    sub_100028124(v52, v53);
    v41 = v48;
    (*(v40 + 104))(v39, v40);
    if ((*(v8 + 48))(v41, 1, v7) != 1)
    {
      v43 = v47;
      (*(v8 + 32))(v47, v41, v7);
      sub_10005B214();
      sub_10005DA94(v52, v50);
      v44 = swift_getKeyPath();
      __chkstk_darwin(v44);
      v46[-2] = v2;
      v46[-1] = v50;
      v49 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000D52C(v50, &qword_10021A650);
      if (*(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) != 1)
      {
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v46[-2] = v2;
        LOBYTE(v46[-1]) = 1;
        v50[0] = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_10005B508(v43);
      sub_10005B9F0();
      (*(v8 + 8))(v43, v7);
      goto LABEL_38;
    }

    sub_10000D52C(v41, qword_100218748);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10001FDF4(v42, qword_100230610);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {
LABEL_34:

LABEL_38:
      sub_100021498(v52);
      return;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Cannot play song. No preview asset URL.";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

    goto LABEL_34;
  }

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10001FDF4(v27, qword_100230610);
  v48 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v48, v28, "Cannot play empty playlist.", v29, 2u);
  }

  v30 = v48;
}

void sub_10005B214()
{
  v1 = v0;
  sub_10005C3EC();
  swift_getKeyPath();
  *&v12 = v0;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player;
  [*(v0 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player) pause];
  swift_getKeyPath();
  *&v12 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_10000D58C(v12 + v3, &v10, &unk_10021F7F0);
  if (v11)
  {
    sub_100022424(&v10, &v12);
    swift_getKeyPath();
    *&v10 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v1 + v2);
    if (v4)
    {
      sub_100028124(&v12, v13);
      v5 = v4;
      [v5 removeTimeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
    }

    sub_100021498(&v12);
  }

  else
  {
    sub_10000D52C(&v10, &unk_10021F7F0);
  }

  swift_getKeyPath();
  *&v12 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + v2);
  if (v6 && (v7 = v6, v8 = String._bridgeToObjectiveC()(), [v7 removeObserver:v1 forKeyPath:v8], v7, v8, *(v1 + v2)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v12 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + v2) = 0;
  }
}

void sub_10005B508(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(AVURLAsset);
  v41 = a1;
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 options:0];

  v13 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v12];
  sub_10005A384([objc_allocWithZone(AVPlayer) initWithPlayerItem:v13]);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer___observationRegistrar;
  aBlock = v2;
  v15 = sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  if (v16)
  {
    v17 = v16;
    v40 = v15;
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v18 addObserver:v2 forKeyPath:v19 options:1 context:0];

    v20 = [objc_opt_self() defaultCenter];
    v21 = String._bridgeToObjectiveC()();
    v39 = v13;
    v22 = v21;
    v23 = [v18 currentItem];
    v38 = v14;
    v24 = v23;
    [v20 addObserver:v2 selector:"playerDidFinishPlaying" name:v22 object:v23];

    v49 = CMTime.init(value:timescale:)(1, 5);
    LODWORD(v22) = v49.timescale;
    epoch = v49.epoch;
    value = v49.value;
    v36 = HIDWORD(*&v49.timescale);
    sub_10005DB18(0, &qword_1002231E0);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = *(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v4);
    v27 = v4;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    (*(v5 + 32))(v29 + v28, v7, v27);
    v47 = sub_10005DC2C;
    v48 = v29;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_10005C380;
    v46 = &unk_10020B620;
    v30 = _Block_copy(&aBlock);
    v31 = v18;

    aBlock = value;
    v44 = __PAIR64__(v36, v22);
    v45 = epoch;
    v32 = [v31 addPeriodicTimeObserverForInterval:&aBlock queue:v25 usingBlock:v30];
    _Block_release(v30);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v34 - 2) = v2;
    *(&v34 - 1) = &aBlock;
    v42 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000D52C(&aBlock, &unk_10021F7F0);
  }

  else
  {
  }
}

void sub_10005B9F0()
{
  swift_getKeyPath();
  v16 = v0;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player;
  v2 = *&v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player];
  if (v2 && (v3 = [v2 error]) != 0)
  {

    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10001FDF4(v4, qword_100230610);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v8 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *&v0[v1];
      if (v9 && (v9 = [v9 error]) != 0)
      {
        v10 = v9;
        swift_getErrorValue();
        v11 = Error.localizedDescription.getter();
        v13 = v12;

        v9 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      v14 = sub_10005D4E8(v9, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Playback initiated but player has error: %s", v8, 0xCu);
      sub_100021498(v15);
    }
  }

  else
  {
    swift_getKeyPath();
    v16 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*&v0[v1] play];
  }
}

void sub_10005BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (os_unfair_lock_trylock((a4 + 24)))
  {
    sub_10005DCD0((a4 + 16));
    os_unfair_lock_unlock((a4 + 24));
  }
}

void sub_10005BE64(uint64_t *a1, void *a2, uint64_t a3)
{
  v30 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 currentItem];
  if (!v9)
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10001FDF4(v17, qword_100230610);
    (*(v6 + 16))(v8, a3, v5);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v20 = 136315138;
      sub_10005D438(&qword_10021A1A8, &type metadata accessor for URL);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v6 + 8))(v8, v5);
      v24 = sub_10005D4E8(v21, v23, &v31);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalid or missing duration for current item %s", v20, 0xCu);
      sub_100021498(v29);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v25 = *v30;
    v16 = (*(*v30 + 24) + 16);
    os_unfair_lock_lock(v16);
    if (*(v25 + 16) == 0.0)
    {
      *(v25 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v28 - 2) = v25;
      *(&v28 - 1) = 0;
      v31 = v25;
      sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    goto LABEL_16;
  }

  v10 = v9;
  [v9 duration];

  CMTime.seconds.getter();
  if (v11 > 0.0 && (*&v11 >> 52 < 0x7FFuLL || (*&v11 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v12 = v11;
    CMTime.seconds.getter();
    v14 = v13 / v12;
    v15 = *v30;
    v16 = (*(*v30 + 24) + 16);
    os_unfair_lock_lock(v16);
    if (*(v15 + 16) == v14)
    {
      *(v15 + 16) = v14;
    }

    else
    {
      v27 = swift_getKeyPath();
      __chkstk_darwin(v27);
      *(&v28 - 2) = v15;
      *(&v28 - 1) = v14;
      v31 = v15;
      sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

LABEL_16:
    os_unfair_lock_unlock(v16);
  }
}

uint64_t sub_10005C380(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

uint64_t sub_10005C3EC()
{
  v1 = v0;
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Preview Playback ended.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
  if (os_unfair_lock_trylock((v6 + 24)))
  {
    v7 = *(v6 + 16);
    v8 = *(v7 + 24);
    os_unfair_lock_lock(v8 + 4);
    if (*(v7 + 16) == 0.0)
    {
      *(v7 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v17 = v7;
      sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    os_unfair_lock_unlock(v8 + 4);
    os_unfair_lock_unlock((v6 + 24));
  }

  if (*(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state))
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    *&v17 = v1;
    sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  *&v17 = v1;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  if (v11)
  {
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    epoch = kCMTimeZero.epoch;
    *&v17 = kCMTimeZero.value;
    *(&v17 + 1) = __PAIR64__(flags, timescale);
    *&v18 = epoch;
    v23 = epoch;
    value = kCMTimeZero.value;
    v25 = timescale;
    v26 = flags;
    v27 = epoch;
    v20 = kCMTimeZero.value;
    v21 = timescale;
    v22 = flags;
    [v11 seekToTime:&v17 toleranceBefore:&value toleranceAfter:&v20];
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = swift_getKeyPath();
  __chkstk_darwin(v15);
  value = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(&v17, &qword_10021A650);
}

id sub_10005C874()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__queuedSongs] = &_swiftEmptyArrayStorage;
  v2 = &v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver];
  *v3 = 0u;
  v3[1] = 0u;
  *&v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player] = 0;
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock;
  type metadata accessor for PlaybackProgressUpdater(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_100009F70(&qword_10021AAE0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 24) = v6;
  ObservationRegistrar.init()();
  sub_100009F70(&qword_10021AAE8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  *&v0[v4] = v7;
  v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state] = 0;
  ObservationRegistrar.init()();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10005C9D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005CB0C()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10005CBE0()
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10005CC8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000D58C(v3 + v4, a1, &qword_10021A650);
}

double sub_10005CD64()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
  os_unfair_lock_lock((v1 + 24));
  sub_10005A784((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_10005CDC4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state);
}

id sub_10005CEB4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player) pause];
}

double sub_10005CF8C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_10005D034(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005D14C()
{

  v1 = OBJC_IVAR____TtC15ShazamEventsAppP33_8D663A7C818D454EECC930098910A96A23PlaybackProgressUpdater___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10005D218(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005D250()
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_10005D300(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10005A384(v1);
}

void sub_10005D338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player) = v2;
  v4 = v2;
}

double sub_10005D428()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_10005D438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D480(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100009F70(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005D4E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10005D5B4(v11, 0, 0, 1, a1, a2);
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
    sub_1000363B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100021498(v11);
  return v7;
}

unint64_t sub_10005D5B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10005D6C0(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10005D6C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005D70C(a1, a2);
  sub_10005D83C(&off_100209258);
  return v3;
}

char *sub_10005D70C(uint64_t a1, unint64_t a2)
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

  v6 = sub_10005D928(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10005D928(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10005D83C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10005D99C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10005D928(uint64_t a1, uint64_t a2)
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

  sub_100009F70(&qword_10021AAD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10005D99C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_10021AAD8);
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

uint64_t sub_10005DA94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10005DB18(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10005DB60()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10005DC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for URL();
  v7 = *(v3 + 16);

  sub_10005BDFC(a1, a2, a3, v7);
}

uint64_t sub_10005DCB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005DCF4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__queuedSongs) = *(v0 + 24);
}

void sub_10005DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (a1 == 1702125938 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (a4)
    {
      if (*(a4 + 16))
      {
        v6 = sub_1000D8BC0(NSKeyValueChangeNewKey);
        if (v7)
        {
          sub_1000363B0(*(a4 + 56) + 32 * v6, v25);
          if (swift_dynamicCast())
          {
            if (v24 != 0.0)
            {
              if (*(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) == 2)
              {
                return;
              }

              goto LABEL_39;
            }

            v8 = *(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
            os_unfair_lock_lock((v8 + 24));
            v9 = *(v8 + 16);
            swift_getKeyPath();
            v25[0] = v9;
            sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v10 = *(v9 + 16);
            v11 = 1.0;
            if (v10 <= 1.0)
            {
              v12 = *(v9 + 16);
            }

            else
            {
              v12 = 1.0;
            }

            os_unfair_lock_unlock((v8 + 24));
            v14 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0 || v10 < 0.0;
            v15 = v12;
            if (v14)
            {
              v15 = 0.0;
            }

            v16 = ~*&v15 & 0x7FF0000000000000;
            v17 = *&v15 & 0xFFFFFFFFFFFFFLL;
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = v17 == 0;
            }

            if (v18)
            {
              os_unfair_lock_lock((v8 + 24));
              v19 = *(v8 + 16);
              swift_getKeyPath();
              v25[0] = v19;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v20 = *(v19 + 16);
              v21 = (*&v20 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v20 & 0x7FF0000000000000) != 0;
              if (v20 <= 1.0)
              {
                v11 = *(v19 + 16);
              }

              os_unfair_lock_unlock((v8 + 24));
              v22 = v20 < 0.0 || !v21;
              if (!v22 && v11 > 0.0 && *(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) != 3)
              {
LABEL_39:
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                v25[0] = v4;
                sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer);
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10005E1D8(uint64_t a1)
{
  result = sub_10005E200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10005E200()
{
  result = qword_10021AAF0;
  if (!qword_10021AAF0)
  {
    type metadata accessor for TicketAttribution();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AAF0);
  }

  return result;
}

Swift::Int sub_10005E260()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10005E2CC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005E31C()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v1[8] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v2;

  return _swift_task_switch(sub_10005E3B8);
}

uint64_t sub_10005E3B8()
{
  v1 = static MainActor.shared.getter();
  v0[10] = v1;
  v2 = swift_allocObject();
  v0[11] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100009F70(&qword_10021ABD0);
  *v3 = v0;
  v3[1] = sub_10005E4E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, &protocol witness table for MainActor, 0xD000000000000011, 0x80000001001BECE0, sub_10005F444, v2, v4);
}

uint64_t sub_10005E4E4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10005E674;
  }

  else
  {

    v2 = sub_10005E608;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10005E608()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_10005E674()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10005E6EC(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021ABC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_100009F70(&qword_10021AB50);
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10005F334(v4, &v6[v9]);
    swift_endAccess();
    v10 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_manager;
    [*&v6[OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_manager] setDelegate:v6];
    [*&v6[v10] setDesiredAccuracy:kCLLocationAccuracyKilometer];
    [*&v6[v10] startUpdatingLocation];
  }
}

uint64_t sub_10005E8AC()
{
  v1 = v0;
  v2 = sub_100009F70(&qword_10021ABC8);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = sub_100009F70(&qword_10021AB50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  [*(v1 + OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_manager) stopUpdatingLocation];
  v9 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_checkedThrowingContinuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v9, 1, v5))
  {
    (*(v6 + 16))(v8, v1 + v9, v5);
    sub_10005F44C();
    v11[0] = swift_allocError();
    CheckedContinuation.resume(throwing:)();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_10005F334(v4, v1 + v9);
  return swift_endAccess();
}

uint64_t type metadata accessor for LocationManager()
{
  result = qword_10021AB38;
  if (!qword_10021AB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005EC18()
{
  sub_10005ECB8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10005ECB8()
{
  if (!qword_10021AB48)
  {
    sub_10000B3DC(&qword_10021AB50);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10021AB48);
    }
  }
}

uint64_t sub_10005ED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_100009F70(&qword_10021ABC8);
  v5[13] = swift_task_alloc();
  v6 = sub_100009F70(&qword_10021AB50);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005EE54);
}

unint64_t sub_10005EE54()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);

  v4 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_checkedThrowingContinuation;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v5 = *(v0 + 96);
    (*(*(v0 + 120) + 16))(*(v0 + 128), v3 + v4, *(v0 + 112));
    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        result = v6 - 1;
        if (__OFSUB__(v6, 1))
        {
          __break(1u);
        }

        else if ((v5 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v8 = *(*(v0 + 96) + 8 * result + 32);
LABEL_9:
            v9 = v8;
            [v8 coordinate];
            v19 = v10;
            v20 = v11;

            *&v12 = v19;
            *(&v12 + 1) = v20;
LABEL_12:
            v13 = v6 == 0;
            v15 = *(v0 + 120);
            v14 = *(v0 + 128);
            v16 = *(v0 + 112);
            *(v0 + 64) = v12;
            *(v0 + 80) = v13;
            CheckedContinuation.resume(returning:)();
            (*(v15 + 8))(v14, v16);
            goto LABEL_13;
          }

          __break(1u);
          return result;
        }

        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v12 = 0uLL;
    goto LABEL_12;
  }

LABEL_13:
  v17 = *(v0 + 104);
  (*(*(v0 + 120) + 56))(v17, 1, 1, *(v0 + 112));
  swift_beginAccess();
  sub_10005F334(v17, v3 + v4);
  swift_endAccess();

  v18 = *(v0 + 8);

  return v18();
}

unint64_t sub_10005F1E0()
{
  result = qword_10021ABC0;
  if (!qword_10021ABC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10021ABC0);
  }

  return result;
}

uint64_t sub_10005F22C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10005F274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D890;

  return sub_10005ED1C(a1, v4, v5, v7, v6);
}

uint64_t sub_10005F334(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021ABC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F3A4(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021ABC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F40C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_10005F44C()
{
  result = qword_10021ABD8;
  if (!qword_10021ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ABD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationManager.RequestError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LocationManager.RequestError(_WORD *result, int a2, int a3)
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

unint64_t sub_10005F58C()
{
  result = qword_10021ABE0;
  if (!qword_10021ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ABE0);
  }

  return result;
}

uint64_t sub_10005F5F4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100009F70(&qword_10021ABF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100009F70(&qword_10021ABF8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = type metadata accessor for DesignTimeTime();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_100009F70(qword_100218748);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_10005F7E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100009F70(&qword_10021ABF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009F70(&qword_10021ABF8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = type metadata accessor for DesignTimeTime();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_100009F70(qword_100218748);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for DesignTimeMusicEvent()
{
  result = qword_10021AC58;
  if (!qword_10021AC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005FA04()
{
  sub_10005FC20(319, &qword_10021AC68, type metadata accessor for DesignTimeEventAttribution, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10005FC20(319, &qword_10021AC70, type metadata accessor for DesignTimeTicketAttribution, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10005FC20(319, &qword_10021AC78, type metadata accessor for DesignTimeTicket, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DesignTimeTime();
        if (v3 <= 0x3F)
        {
          sub_10005FC20(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10005FC84(319, &qword_10021AC80);
            if (v5 <= 0x3F)
            {
              sub_10005FC84(319, &unk_10021AC88);
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

void sub_10005FC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10005FC84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10005FCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2 - 8);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v65 = &v60 - v5;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021ABF8);
  __chkstk_darwin(v8 - 8);
  v72 = &v60 - v9;
  v10 = sub_100009F70(qword_100218748);
  v11 = __chkstk_darwin(v10 - 8);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = sub_100009F70(&qword_10021ABF0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v60 - v19);
  v21 = ResourceID.init(stringLiteral:)();
  v67 = v22;
  v68 = v21;
  URL.init(string:)();
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  result = v25(v17, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  *v20 = 0x746E6973646E6142;
  v20[1] = 0xEB000000006E776FLL;
  v27 = type metadata accessor for DesignTimeEventAttribution();
  v28 = v20 + *(v27 + 20);
  v71 = *(v24 + 32);
  v71(v28, v17, v23);
  v29 = *(*(v27 - 8) + 56);
  v61 = v20;
  v29(v20, 0, 1, v27);
  URL.init(string:)();
  result = v25(v15, 1, v23);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v30 = v72;
  *v72 = 0x746E6973646E6142;
  *(v30 + 1) = 0xEB000000006E776FLL;
  v31 = type metadata accessor for DesignTimeTicketAttribution();
  v71(&v30[*(v31 + 20)], v15, v23);
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_100009F70(&qword_10021AE98);
  v32 = type metadata accessor for DesignTimeTicket();
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v34 = swift_allocObject();
  v70 = xmmword_1001AEB90;
  *(v34 + 16) = xmmword_1001AEB90;
  v35 = v69;
  URL.init(string:)();
  result = v25(v35, 1, v23);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v36 = v34 + v33;
  v37 = v62;
  UUID.init()();
  UUID.uuidString.getter();
  v60 = v34;
  (*(v63 + 8))(v37, v64);
  *v36 = ResourceID.init(_:)();
  *(v36 + 8) = v38;
  strcpy((v36 + 16), "Ticketmaster");
  *(v36 + 29) = 0;
  *(v36 + 30) = -5120;
  v71((v36 + *(v32 + 24)), v35, v23);
  static Date.now.getter();
  static Date.distantFuture.getter();
  v39 = type metadata accessor for DesignTimeMusicEvent();
  DateInterval.init(start:end:)();
  type metadata accessor for DesignTimeTime();
  static TimeZone.current.getter();
  v71 = ResourceID.init(stringLiteral:)();
  v69 = v40;
  v64 = [objc_allocWithZone(CLLocation) initWithLatitude:40.7601873 longitude:-73.9799772];
  URL.init(string:)();
  v41 = sub_1000DA378();
  v65 = v42;
  v66 = v41;
  sub_100009F70(&qword_10021AEA0);
  v43 = swift_allocObject();
  *(v43 + 16) = v70;
  *(v43 + 32) = ResourceID.init(stringLiteral:)();
  *(v43 + 40) = v44;
  *(v43 + 48) = 7368528;
  *(v43 + 56) = 0xE300000000000000;
  v45 = sub_100129D2C();
  v62 = v46;
  v63 = v45;
  v48 = v47;
  v50 = v49;
  sub_100009F70(&qword_10021AEA8);
  v51 = swift_allocObject();
  *(v51 + 16) = v70;
  if (qword_1002183E8 != -1)
  {
    swift_once();
  }

  v52 = *algn_1002305D8;
  *(v51 + 32) = qword_1002305D0;
  *(v51 + 40) = v52;
  v53 = v67;
  *a1 = v68;
  *(a1 + 8) = v53;
  *(a1 + 16) = 7368560;
  *(a1 + 24) = 0xE300000000000000;
  *(a1 + 32) = xmmword_1001B05D0;
  *(a1 + 48) = 0xD000000000000011;
  *(a1 + 56) = 0x80000001001BEDF0;
  sub_10000F618(v61, a1 + v39[7], &qword_10021ABF0);
  sub_10000F618(v72, a1 + v39[8], &qword_10021ABF8);
  *(a1 + v39[9]) = v60;
  v54 = a1 + v39[11];
  v55 = v69;
  *v54 = v71;
  *(v54 + 8) = v55;
  *(v54 + 16) = 0xD000000000000015;
  *(v54 + 24) = 0x80000001001BEE30;
  *(v54 + 32) = v64;
  *(v54 + 40) = 0xD000000000000018;
  *(v54 + 48) = 0x80000001001BEE50;
  *(v54 + 56) = xmmword_1001B05E0;
  *(v54 + 72) = xmmword_1001B05F0;
  *(v54 + 88) = xmmword_1001B0600;
  *(v54 + 104) = xmmword_1001B0610;
  *(v54 + 120) = xmmword_1001B0620;
  v56 = (a1 + v39[13]);
  v57 = v65;
  *v56 = v66;
  v56[1] = v57;
  *(a1 + v39[14]) = v43;
  v58 = (a1 + v39[15]);
  v59 = v62;
  *v58 = v63;
  v58[1] = v59;
  v58[2] = v48;
  v58[3] = v50;
  *(a1 + v39[16]) = v51;
}

uint64_t sub_1000605AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000605FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 60));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_10006066C@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_100060734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a2 + 96) = v22;
  *(a2 + 112) = v14;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v11;
  *(a2 + 80) = v4;
  v24 = *(v3 + 128);
  *(a2 + 128) = *(v3 + 128);
  *a2 = v13;
  *(a2 + 16) = v6;
  return sub_100060F40(v17, v16);
}

uint64_t sub_1000607C4(uint64_t a1)
{
  type metadata accessor for Date();
  swift_task_alloc();
  swift_task_alloc();
  type metadata accessor for DesignTimeTime();
  v3 = swift_task_alloc();
  sub_100009F70(&qword_10021AE90);
  v4 = (*(*(a1 - 8) + 80) + 32) & ~*(*(a1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001AEB90;
  v6 = v5 + v4;
  sub_10005FCD0(v6);
  static Date.distantFuture.getter();
  static Date.distantFuture.getter();
  DateInterval.init(start:end:)();
  static TimeZone.current.getter();
  sub_100060EDC(v3, v6 + *(a1 + 40));

  v7 = *(v1 + 8);

  return v7(v5);
}

Swift::Int sub_100060984()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000609D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100060A10(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_100060A8C()
{
  result = qword_10021ACF0;
  if (!qword_10021ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ACF0);
  }

  return result;
}

unint64_t sub_100060C04()
{
  result = qword_10021AD18;
  if (!qword_10021AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AD18);
  }

  return result;
}

uint64_t sub_100060C58(uint64_t a1)
{
  *(a1 + 8) = sub_100060E94(&qword_10021ADE0, type metadata accessor for DesignTimeMusicEvent);
  result = sub_100060E94(&qword_10021ADE8, type metadata accessor for DesignTimeMusicEvent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100060CE0()
{
  result = qword_10021ADF0;
  if (!qword_10021ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ADF0);
  }

  return result;
}

unint64_t sub_100060D38()
{
  result = qword_10021ADF8;
  if (!qword_10021ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ADF8);
  }

  return result;
}

unint64_t sub_100060D90()
{
  result = qword_10021AE00;
  if (!qword_10021AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AE00);
  }

  return result;
}

unint64_t sub_100060DE8()
{
  result = qword_10021AE08;
  if (!qword_10021AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AE08);
  }

  return result;
}

uint64_t sub_100060E3C(uint64_t a1)
{
  result = sub_100060E94(&qword_10021AE88, type metadata accessor for DesignTimeMusicEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100060E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000610D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061120(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = Collection.isEmpty.getter();

  if (v4 & 1) != 0 && ((v5 = objc_opt_self(), v6 = [v5 currentDevice], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7) || ((*(a2 + 64))(a1, a2), v8 = Collection.isEmpty.getter(), , (v8)) && ((v9 = objc_msgSend(v5, "currentDevice"), v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, v10) || ((*(a2 + 72))(a1, a2), swift_getAssociatedTypeWitness(), type metadata accessor for Array(), swift_getWitnessTable(), v11 = Collection.isEmpty.getter(), , (v11)))
  {
    (*(a2 + 80))(a1, a2);
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v12 = Collection.isEmpty.getter();

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

void sub_1000613FC()
{
  type metadata accessor for MusicEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_1000617D8(319, &qword_10021A308, &type metadata accessor for DismissAction);
      if (v2 <= 0x3F)
      {
        sub_1000617D8(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_100050558();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100061534(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100218950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100061684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000617D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100061878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100061970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100061A68@<X0>(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  State.init(wrappedValue:)();
  *a3 = v12;
  a3[1] = v13;
  type metadata accessor for RemoteViewConfiguration();
  sub_100071234(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  a3[2] = EnvironmentObject.init()();
  a3[3] = v6;
  v7 = type metadata accessor for MusicEventView();
  v8 = v7[18];
  *(a3 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100219710);
  swift_storeEnumTagMultiPayload();
  v9 = v7[19];
  *(a3 + v9) = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  result = swift_storeEnumTagMultiPayload();
  v11 = a3 + v7[20];
  *v11 = a1;
  v11[8] = a2 & 1;
  return result;
}

uint64_t sub_100061BE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MusicEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_100061C44(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MusicEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_100061CAC(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 80);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100071234(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100061F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v3 = type metadata accessor for TaskPriority();
  v179 = *(v3 - 8);
  v180 = v3;
  v4 = __chkstk_darwin(v3);
  v178 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = *(a1 - 8);
  v195 = *(v196 + 64);
  __chkstk_darwin(v4);
  v188 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = "b8b-412b-baf7-3d48e2f98382";
  v7 = *(a1 + 16);
  v192 = a1;
  type metadata accessor for Optional();
  v189 = type metadata accessor for Binding();
  v194 = *(v189 - 8);
  __chkstk_darwin(v189);
  v176 = &v149 - v8;
  v186 = type metadata accessor for NavigationPath();
  v9 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v10 = v9;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  v13 = type metadata accessor for _ConditionalContent();
  v190 = *(v10 + 8);
  v14 = v190;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_10006FEE0();
  v226 = WitnessTable;
  v227 = v16;
  v17 = swift_getWitnessTable();
  *&v228 = v7;
  *(&v228 + 1) = v13;
  *&v229 = v14;
  *(&v229 + 1) = v17;
  type metadata accessor for HeaderModule();
  v18 = type metadata accessor for ModifiedContent();
  v224 = swift_getWitnessTable();
  v225 = &protocol witness table for _PaddingLayout;
  *&v198 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v19 = swift_getWitnessTable();
  *&v228 = v18;
  *(&v228 + 1) = v19;
  *&v228 = swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021AFA0);
  sub_10000B3DC(&qword_10021AFA8);
  *&v197 = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v220 = AssociatedTypeWitness;
  v221 = v20;
  v222 = AssociatedConformanceWitness;
  v223 = v21;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v22 = type metadata accessor for Button();
  v23 = type metadata accessor for PlainButtonStyle();
  v24 = swift_getWitnessTable();
  v25 = sub_100071234(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v220 = v22;
  v221 = v23;
  v222 = v24;
  v223 = v25;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v184 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100219D50);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000B3DC(&qword_10021A900);
  type metadata accessor for _ConditionalContent();
  *(&v228 + 1) = type metadata accessor for Optional();
  type metadata accessor for DetailsModule();
  *&v229 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  v191 = v7;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  *(&v229 + 1) = type metadata accessor for ModifiedContent();
  v26 = *(v192 + 24);
  v193 = *(v192 + 48);
  v175 = v26;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule();
  v27 = type metadata accessor for ModifiedContent();
  v218 = swift_getWitnessTable();
  v219 = &protocol witness table for _PaddingLayout;
  v28 = swift_getWitnessTable();
  v220 = v27;
  v221 = v28;
  swift_getOpaqueTypeMetadata2();
  v185 = type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v230 = type metadata accessor for Optional();
  v29 = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v220 = v29;
  v221 = v30;
  v222 = v31;
  v223 = v32;
  type metadata accessor for PlaylistModule();
  type metadata accessor for ModifiedContent();
  v231 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule();
  v232 = type metadata accessor for Optional();
  v233 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v33 = type metadata accessor for ScrollView();
  v34 = swift_getWitnessTable();
  *&v228 = v33;
  *(&v228 + 1) = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v228 = v33;
  *(&v228 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v228 = OpaqueTypeMetadata2;
  *(&v228 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8);
  v37 = type metadata accessor for ModifiedContent();
  *&v228 = OpaqueTypeMetadata2;
  *(&v228 + 1) = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v216 = v38;
  v217 = v39;
  v40 = swift_getWitnessTable();
  *&v228 = v37;
  *(&v228 + 1) = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  *&v228 = v37;
  *(&v228 + 1) = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_100027068();
  *&v228 = v41;
  *(&v228 + 1) = &type metadata for String;
  *&v229 = v42;
  *(&v229 + 1) = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  *&v228 = v41;
  *(&v228 + 1) = &type metadata for String;
  *&v229 = v42;
  *(&v229 + 1) = v43;
  v45 = swift_getOpaqueTypeConformance2();
  *&v228 = v44;
  *(&v228 + 1) = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  *&v228 = v44;
  *(&v228 + 1) = v45;
  v47 = swift_getOpaqueTypeConformance2();
  *&v228 = v46;
  *(&v228 + 1) = &type metadata for Bool;
  *&v229 = v47;
  *(&v229 + 1) = &protocol witness table for Bool;
  v48 = swift_getOpaqueTypeMetadata2();
  v49 = sub_10000B3DC(&qword_10021A888);
  *&v228 = v46;
  *(&v228 + 1) = &type metadata for Bool;
  *&v229 = v47;
  *(&v229 + 1) = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_10000D1EC(&qword_10021A890, &qword_10021A888);
  *&v228 = v48;
  *(&v228 + 1) = v49;
  *&v229 = v50;
  *(&v229 + 1) = v51;
  v159 = swift_getOpaqueTypeMetadata2();
  *&v228 = v48;
  *(&v228 + 1) = v49;
  *&v229 = v50;
  *(&v229 + 1) = v51;
  v158 = swift_getOpaqueTypeConformance2();
  v52 = type metadata accessor for NavigationStack();
  v161 = *(v52 - 8);
  __chkstk_darwin(v52);
  v155 = &v149 - v53;
  v150 = v52;
  v54 = type metadata accessor for ModifiedContent();
  v169 = *(v54 - 8);
  __chkstk_darwin(v54);
  v182 = &v149 - v55;
  v56 = type metadata accessor for AppleMusicFetcher();
  v57 = sub_100071234(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher);
  v58 = v191;
  *&v228 = v191;
  *(&v228 + 1) = v56;
  *&v229 = v197;
  *(&v229 + 1) = v57;
  v59 = type metadata accessor for PromotionalAssetsView();
  v60 = swift_getWitnessTable();
  v149 = v60;
  v61 = sub_100071234(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v214 = v60;
  v215 = v61;
  v62 = swift_getWitnessTable();
  v63 = *(v190 + 16);
  v64 = swift_getWitnessTable();
  *&v228 = v54;
  *(&v228 + 1) = v58;
  v153 = v62;
  v154 = v54;
  v151 = v59;
  v152 = v64;
  *&v229 = v59;
  *(&v229 + 1) = v62;
  v65 = v62;
  v230 = v63;
  v231 = v64;
  v66 = swift_getOpaqueTypeMetadata2();
  v170 = *(v66 - 8);
  __chkstk_darwin(v66);
  v186 = &v149 - v67;
  *&v228 = v54;
  *(&v228 + 1) = v58;
  *&v229 = v59;
  *(&v229 + 1) = v65;
  v230 = v63;
  v231 = v64;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v192;
  v70 = swift_getWitnessTable();
  *&v228 = v66;
  *(&v228 + 1) = v58;
  v71 = v66;
  v160 = v66;
  *&v229 = v69;
  *(&v229 + 1) = v68;
  v156 = v70;
  v157 = v68;
  v230 = v63;
  v231 = v70;
  v183 = v63;
  v164 = swift_getOpaqueTypeMetadata2();
  v168 = *(v164 - 8);
  __chkstk_darwin(v164);
  v184 = &v149 - v72;
  v73 = type metadata accessor for ModifiedContent();
  v166 = v73;
  v174 = *(v73 - 8);
  __chkstk_darwin(v73);
  v185 = &v149 - v74;
  *&v228 = v71;
  *(&v228 + 1) = v58;
  *&v229 = v69;
  *(&v229 + 1) = v68;
  v230 = v63;
  v231 = v70;
  v162 = swift_getOpaqueTypeConformance2();
  v212 = v162;
  v213 = &protocol witness table for _AppearanceActionModifier;
  v165 = swift_getWitnessTable();
  *&v228 = v73;
  *(&v228 + 1) = v165;
  v171 = &unk_1001C2954;
  v75 = swift_getOpaqueTypeMetadata2();
  v76 = *(v75 - 8);
  v172 = v75;
  v173 = v76;
  v77 = __chkstk_darwin(v75);
  v163 = &v149 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v167 = &v149 - v79;
  *&v80 = *(v69 + 32);
  *(&v80 + 1) = v197;
  *&v81 = v58;
  *(&v81 + 1) = v175;
  v197 = v80;
  v198 = v81;
  v207 = v81;
  v208 = v80;
  v82 = *(v69 + 56);
  v83 = v193;
  v209 = v193;
  v210 = v82;
  v84 = v82;
  v211 = v187;
  v85 = v155;
  NavigationStack.init<>(root:)();
  v86 = v150;
  View.accessibilityIdentifier(_:)();
  (*(v161 + 8))(v85, v86);
  v87 = sub_100061C44(v69);
  v89 = v88;
  v91 = v90;
  v203 = v198;
  v204 = v197;
  v205 = v83;
  v206 = v84;
  swift_getKeyPath();
  v220 = v87;
  v221 = v89;
  v222 = v91;
  v229 = v197;
  v228 = v198;
  v230 = v83;
  v231 = v84;
  type metadata accessor for MusicEventViewModel();
  v161 = type metadata accessor for Binding();
  v92 = v176;
  Binding.subscript.getter();

  v93 = swift_allocObject();
  v94 = v197;
  *(v93 + 16) = v198;
  *(v93 + 32) = v94;
  *(v93 + 48) = v83;
  *(v93 + 56) = v84;
  v95 = v84;
  v190 = v84;
  swift_checkMetadataState();
  v96 = v154;
  v97 = v182;
  View.sheet<A, B>(item:onDismiss:content:)();

  v98 = *(v194 + 8);
  v194 += 8;
  v175 = v98;
  v98(v92, v189);
  (*(v169 + 1))(v97, v96);
  v99 = v192;
  v100 = v187;
  v101 = sub_100061C44(v192);
  v103 = v102;
  v105 = v104;
  v199 = v198;
  v200 = v197;
  v201 = v83;
  v202 = v95;
  swift_getKeyPath();
  *&v228 = v101;
  *(&v228 + 1) = v103;
  *&v229 = v105;
  Binding.subscript.getter();

  v106 = v196;
  v107 = *(v196 + 16);
  v161 = v196 + 16;
  v169 = v107;
  v108 = v188;
  v109 = v100;
  v110 = v100;
  v111 = v99;
  v107(v188, v109, v99);
  v112 = *(v106 + 80);
  v113 = (v112 + 64) & ~v112;
  v114 = swift_allocObject();
  v115 = v197;
  *(v114 + 16) = v198;
  *(v114 + 32) = v115;
  v116 = v193;
  v117 = v190;
  *(v114 + 48) = v193;
  *(v114 + 56) = v117;
  v182 = *(v106 + 32);
  v196 = v106 + 32;
  (v182)(v114 + v113, v108, v111);
  v118 = v160;
  v119 = v186;
  View.sheet<A, B>(item:onDismiss:content:)();

  v175(v92, v189);
  (*(v170 + 8))(v119, v118);
  v120 = v188;
  v121 = v169;
  v169(v188, v110, v111);
  v122 = swift_allocObject();
  v123 = v197;
  *(v122 + 16) = v198;
  *(v122 + 32) = v123;
  v124 = v190;
  *(v122 + 48) = v116;
  *(v122 + 56) = v124;
  v125 = v122 + v113;
  v126 = v120;
  (v182)(v125, v120, v111);
  v127 = v184;
  v128 = v164;
  View.onAppear(perform:)();

  (*(v168 + 8))(v127, v128);
  v121(v126, v110, v111);
  type metadata accessor for MainActor();
  v129 = static MainActor.shared.getter();
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = &protocol witness table for MainActor;
  v131 = v197;
  *(v130 + 32) = v198;
  *(v130 + 48) = v131;
  v132 = v190;
  *(v130 + 64) = v193;
  *(v130 + 72) = v132;
  (v182)(v130 + ((v112 + 80) & ~v112), v126, v111);
  v133 = v178;
  v135 = v165;
  v134 = v166;
  j___sScP13userInitiatedScPvgZ();
  v147 = v134;
  v148 = v135;
  v136 = v135;
  v137 = v134;
  v138 = v163;
  v139 = v133;
  v140 = v133;
  v141 = v185;
  sub_100009FB8(0, v139, 0xD000000000000024, (v177 | 0x8000000000000000), 215, &unk_1001B08C8, v130, v163, v147, v148);
  (*(v179 + 8))(v140, v180);
  (*(v174 + 8))(v141, v137);
  *&v228 = v137;
  *(&v228 + 1) = v136;
  v142 = swift_getOpaqueTypeConformance2();
  v143 = v167;
  v144 = v172;
  sub_100157EFC(v138, v172, v142);
  v145 = *(v173 + 8);
  v145(v138, v144);
  sub_100157EFC(v143, v144, v142);
  return (v145)(v143, v144);
}

uint64_t sub_100063778@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v169 = a7;
  v170 = a6;
  v171 = a4;
  v172 = a1;
  v174 = a3;
  v166 = a8;
  OpaqueTypeMetadata2 = a2;
  v195 = a3;
  v196 = a4;
  v197 = a5;
  v198 = a6;
  v199 = a7;
  v10 = type metadata accessor for MusicEventView();
  v164 = *(v10 - 8);
  v165 = v10;
  v162 = *(v164 + 64);
  __chkstk_darwin(v10);
  v163 = v122 - v11;
  v12 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v160 = *(v12 - 8);
  v161 = v12;
  __chkstk_darwin(v12);
  v159 = v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentMarginPlacement();
  v157 = *(v14 - 8);
  v158 = v14;
  __chkstk_darwin(v14);
  v156 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScrollIndicatorVisibility();
  v154 = *(v16 - 8);
  v155 = v16;
  __chkstk_darwin(v16);
  v153 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  v20 = type metadata accessor for _ConditionalContent();
  v21 = a5[1];
  WitnessTable = swift_getWitnessTable();
  v23 = sub_10006FEE0();
  v192 = WitnessTable;
  v193 = v23;
  v24 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = a2;
  v195 = v20;
  v196 = v21;
  v197 = v24;
  type metadata accessor for HeaderModule();
  v25 = type metadata accessor for ModifiedContent();
  v190 = swift_getWitnessTable();
  v191 = &protocol witness table for _PaddingLayout;
  v167 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v26 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v25;
  v195 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021AFA0);
  sub_10000B3DC(&qword_10021AFA8);
  v168 = a5;
  v173 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v186 = AssociatedTypeWitness;
  v187 = v27;
  v188 = AssociatedConformanceWitness;
  v189 = v28;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v29 = type metadata accessor for Button();
  v30 = type metadata accessor for PlainButtonStyle();
  v31 = swift_getWitnessTable();
  v32 = sub_100071234(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v186 = v29;
  v187 = v30;
  v188 = v31;
  v189 = v32;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v152 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100219D50);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000B3DC(&qword_10021A900);
  type metadata accessor for _ConditionalContent();
  v195 = type metadata accessor for Optional();
  type metadata accessor for DetailsModule();
  v196 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v197 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule();
  v33 = type metadata accessor for ModifiedContent();
  v184 = swift_getWitnessTable();
  v185 = &protocol witness table for _PaddingLayout;
  v34 = swift_getWitnessTable();
  v186 = v33;
  v187 = v34;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v198 = type metadata accessor for Optional();
  v35 = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  v37 = swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v186 = v35;
  v187 = v36;
  v188 = v37;
  v189 = v38;
  type metadata accessor for PlaylistModule();
  type metadata accessor for ModifiedContent();
  v199 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule();
  v200 = type metadata accessor for Optional();
  v201 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v122[2] = type metadata accessor for VStack();
  v122[1] = swift_getWitnessTable();
  v39 = type metadata accessor for ScrollView();
  v132 = *(v39 - 8);
  __chkstk_darwin(v39);
  v122[0] = v122 - v40;
  v41 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v39;
  v195 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v131 = *(v42 - 8);
  __chkstk_darwin(v42);
  v125 = v122 - v43;
  v127 = v39;
  OpaqueTypeMetadata2 = v39;
  v195 = v41;
  v122[8] = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v42;
  v195 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeMetadata2();
  v138 = *(v45 - 8);
  __chkstk_darwin(v45);
  v130 = v122 - v46;
  sub_10000B3DC(&qword_1002188F8);
  v141 = v45;
  v47 = type metadata accessor for ModifiedContent();
  v137 = *(v47 - 8);
  __chkstk_darwin(v47);
  v129 = v122 - v48;
  v135 = v42;
  OpaqueTypeMetadata2 = v42;
  v195 = OpaqueTypeConformance2;
  v122[7] = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v122[3] = v49;
  v182 = v49;
  v183 = v50;
  v51 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v47;
  v195 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v124 = *(v52 - 8);
  __chkstk_darwin(v52);
  v123 = v122 - v53;
  v140 = v47;
  OpaqueTypeMetadata2 = v47;
  v195 = v51;
  v122[4] = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_100027068();
  OpaqueTypeMetadata2 = v52;
  v195 = &type metadata for String;
  v196 = v54;
  v197 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v139 = *(v56 - 8);
  __chkstk_darwin(v56);
  v133 = v122 - v57;
  v126 = v52;
  OpaqueTypeMetadata2 = v52;
  v195 = &type metadata for String;
  v122[5] = v55;
  v122[6] = v54;
  v196 = v54;
  v197 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v56;
  v195 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v151 = *(v59 - 8);
  __chkstk_darwin(v59);
  v167 = v122 - v60;
  v144 = v56;
  OpaqueTypeMetadata2 = v56;
  v195 = v58;
  v122[9] = v58;
  v61 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v59;
  v195 = &type metadata for Bool;
  v196 = v61;
  v197 = &protocol witness table for Bool;
  v62 = swift_getOpaqueTypeMetadata2();
  v149 = *(v62 - 8);
  __chkstk_darwin(v62);
  v148 = v122 - v63;
  v64 = sub_10000B3DC(&qword_10021A888);
  v152 = v59;
  OpaqueTypeMetadata2 = v59;
  v195 = &type metadata for Bool;
  v143 = v61;
  v196 = v61;
  v197 = &protocol witness table for Bool;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = sub_10000D1EC(&qword_10021A890, &qword_10021A888);
  v150 = v62;
  OpaqueTypeMetadata2 = v62;
  v195 = v64;
  v67 = v122[0];
  v147 = v64;
  v142 = v65;
  v196 = v65;
  v197 = v66;
  v136 = v66;
  v68 = swift_getOpaqueTypeMetadata2();
  v145 = *(v68 - 8);
  v146 = v68;
  v69 = __chkstk_darwin(v68);
  v128 = v122 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v134 = v122 - v71;
  v175 = v173;
  v176 = v174;
  v177 = v171;
  v178 = v168;
  v179 = v170;
  v180 = v169;
  v181 = v172;
  static Axis.Set.vertical.getter();
  sub_1001511F4();
  v72 = v153;
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v37) = static Axis.Set.vertical.getter();
  *(inited + 32) = v37;
  v74 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v74;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v37)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v74)
  {
    Axis.Set.init(rawValue:)();
  }

  v75 = v125;
  v76 = v127;
  View.scrollIndicators(_:axes:)();
  (*(v154 + 8))(v72, v155);
  (*(v132 + 8))(v67, v76);
  static Edge.Set.top.getter();
  static Solarium.isEnabled.getter();
  v77 = v156;
  static ContentMarginPlacement.scrollContent.getter();
  v78 = v130;
  v79 = v135;
  View.contentMargins(_:_:for:)();
  (*(v157 + 8))(v77, v158);
  (*(v131 + 8))(v75, v79);
  v80 = [objc_opt_self() systemGroupedBackgroundColor];
  OpaqueTypeMetadata2 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v81 = v129;
  v82 = v141;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v138 + 8))(v78, v82);
  v84 = v159;
  v83 = v160;
  v85 = v161;
  (*(v160 + 104))(v159, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v161);
  v86 = v123;
  v87 = v140;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v83 + 8))(v84, v85);
  (*(v137 + 8))(v81, v87);
  v88 = v165;
  sub_100061BE0(v165);
  v89 = sub_1000B9B5C();
  v91 = v90;

  OpaqueTypeMetadata2 = v89;
  v195 = v91;
  v92 = v133;
  v93 = v126;
  View.navigationTitle<A>(_:)();

  (*(v124 + 8))(v86, v93);
  sub_100061BE0(v88);
  sub_1000B4230();

  sub_100009F70(&qword_10021A898);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001AEB90;
  static ToolbarPlacement.navigationBar.getter();
  v94 = v144;
  View.toolbarBackgroundVisibility(_:for:)();

  (*(v139 + 8))(v92, v94);
  v95 = swift_allocObject();
  v96 = v174;
  v95[2] = v173;
  v95[3] = v96;
  v97 = v170;
  v99 = v168;
  v98 = v169;
  v95[4] = v171;
  v95[5] = v99;
  v95[6] = v97;
  v95[7] = v98;
  v101 = v163;
  v100 = v164;
  (*(v164 + 16))(v163, v172, v88);
  v102 = (*(v100 + 80) + 64) & ~*(v100 + 80);
  v103 = swift_allocObject();
  v104 = v174;
  *(v103 + 2) = v173;
  *(v103 + 3) = v104;
  *(v103 + 4) = v171;
  *(v103 + 5) = v99;
  *(v103 + 6) = v97;
  *(v103 + 7) = v98;
  (*(v100 + 32))(&v103[v102], v101, v88);
  v121 = &protocol witness table for Bool;
  v105 = v148;
  v106 = v152;
  v107 = v167;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v108 = (*(v151 + 8))(v107, v106);
  __chkstk_darwin(v108);
  v109 = v174;
  v122[-8] = v173;
  v122[-7] = v109;
  v110 = v172;
  v122[-6] = v171;
  v122[-5] = v99;
  v122[-4] = v97;
  v122[-3] = v98;
  v121 = v110;
  v111 = v128;
  v112 = v150;
  v113 = v147;
  v114 = v142;
  v115 = v136;
  View.toolbar<A>(content:)();
  (*(v149 + 8))(v105, v112);
  OpaqueTypeMetadata2 = v112;
  v195 = v113;
  v196 = v114;
  v197 = v115;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = v134;
  v118 = v146;
  sub_100157EFC(v111, v146, v116);
  v119 = *(v145 + 8);
  v119(v111, v118);
  sub_100157EFC(v117, v118, v116);
  return (v119)(v117, v118);
}
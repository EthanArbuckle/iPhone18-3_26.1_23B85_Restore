uint64_t sub_1000CABFC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CAC34()
{

  return swift_deallocObject();
}

uint64_t sub_1000CAC6C()
{

  return swift_deallocObject();
}

double sub_1000CACA4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000CACFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000CAD50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000CADA8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000CAE1C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CAE54()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v27 = v0;
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v26 = v4;
  v8 = v4 + v2;

  v9 = v1[9];
  v10 = type metadata accessor for UIView.Corner();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v27 + v15;

  v19 = *(v27 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

uint64_t sub_1000CB1E4()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v25 = *(*(v1 - 1) + 80);
  v2 = (v25 + 24) & ~v25;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = *(v0 + v2 + 208);
  if (v5 != 1)
  {
  }

  v6 = *(v4 + 232);
  if (v6 != 1)
  {
  }

  v7 = v3 + v25;

  v8 = v1[9];
  v9 = type metadata accessor for UIView.Corner();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v7 + v2;
  v13 = (v4 + v1[10]);
  if (*v13)
  {
  }

  v14 = v12 & ~v25;
  v15 = *(v4 + v1[11] + 16);
  if (v15 != 1)
  {
  }

  v16 = v4 + v1[16];

  v17 = v0 + v14;

  v18 = *(v0 + v14 + 208);
  if (v18 != 1)
  {
  }

  v19 = *(v17 + 232);
  if (v19 != 1)
  {
  }

  v20 = v1[9];
  if (!v11(v17 + v20, 1, v9))
  {
    (*(v10 + 8))(v17 + v20, v9);
  }

  v21 = (v17 + v1[10]);
  if (*v21)
  {
  }

  v22 = *(v17 + v1[11] + 16);
  if (v22 != 1)
  {
  }

  v23 = v17 + v1[16];

  return swift_deallocObject();
}

uint64_t sub_1000CB578()
{

  return swift_deallocObject();
}

uint64_t sub_1000CB5C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CB608(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_1011B7710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CB6C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_1011B7710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CB774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_1011B7710);
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

uint64_t sub_1000CB840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_1011B7710);
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

uint64_t sub_1000CB90C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CB944()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v26 = v0;
  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v8 = v4 + v2;

  v9 = v1[9];
  v10 = type metadata accessor for UIView.Corner();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v26 + v15;

  v19 = *(v26 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

uint64_t sub_1000CBCD0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CBD38()
{
  sub_1001109D0(&unk_1011B46E0);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B5A00);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B6988);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_1001109D0(&qword_1011B5420);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0);
  swift_getWitnessTable();
  sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
  swift_getWitnessTable();
  sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000CC008()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CC050()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC090()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC0C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC100()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC168()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC1A8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC1E8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC220()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC260()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CC2A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC2E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC34C()
{
  sub_100C14CF4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1000CC394()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC3CC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CC40C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC444()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CC480()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC4C4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC504()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CC54C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC5A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC5D8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC6BC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC710()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC748()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC780()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC7B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC7F8()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000CC890()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000CC9A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexSet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000CCA5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCAB8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCAF0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1000CCBD8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1000CCCC0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCD08()
{
  type metadata accessor for PlayableForegroundStyle();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000CCD9C()
{
  type metadata accessor for PlayableForegroundStyle();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_1001109D0(&qword_1011BAB68);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ForegroundStyleModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_100C4D29C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000CCF38()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCF88()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CCFD0()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000CD0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000CD198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000CD250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000CD310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000CD3CC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD414()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD44C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD4A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1000CD4F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CD528()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD560()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD598()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD5D0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD610()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD648()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_1011BBA48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000CD76C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_1011BBA48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000CD83C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Locale.Language();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CD8E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale.Language();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CD98C()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 28);
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000CDB24()
{
  v1 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Locale.Language();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000CDC20()
{

  return swift_deallocObject();
}

id sub_1000CDC58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

uint64_t sub_1000CDCA0()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000CDCE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDD1C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDDF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CDE30()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDE78()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDEC8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDF48()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDF98()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDFD8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE018()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE050()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE088()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE0C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE0F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE248()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE280()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE2B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE308()
{

  v1 = *(v0 + 712);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000CE404()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE44C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE52C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE564()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE59C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE5E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE6D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE70C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE7FC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE844()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE888()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE8C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CE900()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE938()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE970()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE9AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE9E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEA1C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEA6C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEAA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEADC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEB2C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CEB64()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEB9C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEBE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEC1C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEC54()
{

  return swift_deallocObject();
}

uint64_t sub_1000CECB4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CECEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CED24()
{

  return swift_deallocObject();
}

uint64_t sub_1000CED5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1000CEE08()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEE68()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CEEA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000CEEFC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000CEF50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000CEFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000CF06C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000CF124()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF194()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF1DC()
{
  sub_10000959C(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000CF224()
{

  sub_10000959C(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1000CF27C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF2B4()
{
  sub_10000959C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000CF2FC()
{

  sub_10000959C(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1000CF344()
{
  sub_10000959C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000CF38C()
{

  sub_10000959C(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1000CF3DC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF41C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF454@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_100008FE4(v3 + v4, a2);
}

uint64_t sub_1000CF4B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000954C(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000CF510()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF550()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF588()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF5C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF600()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF640()
{

  if (*(v0 + 56))
  {
    sub_10000959C(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_1000CF690()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CF6C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF700()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF750()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF790(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_1011BD610);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_1011BD900);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000CF8CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_1011BD610);
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
      v13 = sub_10010FC20(&qword_1011BD900);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000CFA60()
{

  return swift_deallocObject();
}

uint64_t sub_1000CFAB8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1000CFB80()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CFBB8()
{

  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000CFC04()
{

  return swift_deallocObject();
}

id sub_1000CFC5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000CFD0C()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v5 = (v3 + *(*v4 + 80) + 40) & ~*(*v4 + 80);

  v6 = type metadata accessor for OSSignpostID();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  swift_unknownObjectRelease();

  v7 = v4[10];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1000CFEDC()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000CFFEC()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v5 = (v3 + *(*v4 + 80) + 40) & ~*(*v4 + 80);

  sub_100A94D00(*(v0 + 24), *(v0 + 32));
  v6 = type metadata accessor for OSSignpostID();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  swift_unknownObjectRelease();

  v7 = v4[10];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1000D01C8()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  v4 = v1[10];
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1000D02E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D031C()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1000D0450()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1000D0560()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 144) & ~*(*v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for OSSignpostID();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000D06E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0718()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0754()
{
  sub_10000959C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000D078C()
{
  v1 = sub_10010FC20(&qword_1011BE688);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D0820()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D0858()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D08A0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D0960()
{
  sub_10000959C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000D09C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0A00()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0A48()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0AA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0AFC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0B34()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0B90()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0C24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return JSBarButtonItem.title.setter(v1, v2);
}

void sub_1000D0C68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100D041EC(v1);
}

uint64_t sub_1000D0CDC()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D0D38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D0D98()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D0DF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D0E28()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0E70()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0EB4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0EFC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D10E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D1140(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D1194()
{

  return swift_deallocObject();
}

uint64_t sub_1000D11CC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1318@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D137C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D14C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D14FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metrics.Event.Action(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000D1610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metrics.Event.Action(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1000D16C8()
{

  return swift_deallocObject();
}

id sub_1000D1764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000D17FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D1858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D19F8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D1A30()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1A88()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1AD0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1B08()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D1B44()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1B84()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1BF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D1F04()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1F5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1FA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1FFC()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D205C()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D20B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2114()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D216C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D21C4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D21FC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D22B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2314()
{

  return swift_deallocObject();
}

uint64_t sub_1000D236C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D23CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D2424(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D2478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_1000D24D8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_100D317D8(*a1, v2, v3);
  sub_100D31800(v1, v2, v3);
}

uint64_t sub_1000D2528()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D25C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D261C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2664()
{
  if (*(v0 + 48))
  {
    sub_100CFA06C(*(v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1000D2934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D29BC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2A08()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2A44()
{
  v1 = (type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000D2B5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D2BA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2BEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D2C24()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2C7C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2CBC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2D04()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2D3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D2D98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D2DF0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D2E44()
{

  return swift_deallocObject();
}

uint64_t sub_1000D2F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D2FEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D306C()
{

  return swift_deallocObject();
}

void sub_1000D327C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100D50494(v1);
}

void sub_1000D3484(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100D50648(v1);
}

uint64_t sub_1000D3608()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D3640()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D36F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D3750(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1000D37D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000D383C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D38A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000D38FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1000D3960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D39EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D3A2C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3A74()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3AAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D3AE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3B24()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188C20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D3BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188C20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D3C54()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3C8C()
{
  v1 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D424C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D42AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1000D430C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1000D4374(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100D68F08(v1);
}

uint64_t sub_1000D43A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D43FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_100D690B0(v5);
}

uint64_t sub_1000D4770()
{

  return swift_deallocObject();
}

uint64_t sub_1000D47A8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4800()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D4840(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D48EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D4990()
{

  return swift_deallocObject();
}

uint64_t sub_1000D49D0()
{
  if (*(v0 + 40))
  {
    sub_10000959C(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D4A10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D4A48()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v2 + v3) & ~v2;

  v5 = v0 + v3;

  v6 = v1[10];
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);

  v8(v0 + v4 + v1[10], v7);

  return swift_deallocObject();
}

uint64_t sub_1000D4B9C()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000D4C8C()
{
  v1 = *(sub_10010FC20(&qword_1011C1408) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = type metadata accessor for SHA256Digest();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (v2 + v3 + v5) & ~v5;
  v10 = (v6 + v5 + v9) & ~v5;
  v11 = v0 + v9;

  v12 = *(v4 + 32);
  v13 = type metadata accessor for URL();
  v14 = *(*(v13 - 8) + 8);
  v14(v11 + v12, v13);

  v14(v0 + v10 + *(v4 + 32), v13);

  return swift_deallocObject();
}

uint64_t sub_1000D4EB8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4EF8()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000D5010()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v1[10];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  sub_10002C064(*(v0 + v3), *(v0 + v3 + 8));

  return swift_deallocObject();
}

uint64_t sub_1000D5144()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000D5254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D52C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D5330()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D5368()
{

  return swift_deallocObject();
}

uint64_t sub_1000D53B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5410()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5468()
{

  return swift_deallocObject();
}

uint64_t sub_1000D54B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D54E8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D5520()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5584@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D55DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100D85CA4(v1, v2);
}

uint64_t sub_1000D5620()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D5658()
{

  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D56A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D56EC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5AF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailDeeplinkURLString);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D5C7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore20JSApplicationMessage_contentPages;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D5CDC()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

void sub_1000D5D38(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100D933E4(v1);
}

uint64_t sub_1000D5D90()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5DD8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D5E34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSSocialProfileEditor_isNameEditable;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D5E8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSSocialProfileEditor_isNameEditable;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D5EE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore21JSSocialProfileEditor_suggestedHandleText);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D5F40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore19JSTVShowPlayBarItem_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1000D5F9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSShareResult_artwork;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000D6034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSShareResult_offers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D6148()
{

  return swift_deallocObject();
}

uint64_t sub_1000D61A8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6200()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6240()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D6278()
{

  return swift_deallocObject();
}

uint64_t sub_1000D62B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D62F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D633C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D641C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D64A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D64F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_hasRequestedToFollowCurrentUser;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D6550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_followState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D65AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_rawFolloweeStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D660C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D6644@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_playActivityFeatureName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D66A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_shuffleMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D6700(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_shuffleMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D68B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D690C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6954()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D698C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D69C4()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D6A0C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D6A4C()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D6AA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6AE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6B50()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6B88()
{

  return swift_deallocObject();
}

id sub_1000D6C40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore12JSPosterItem_posterBadge;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000D6CAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore12JSPosterItem_textAlignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D6D04(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore12JSPosterItem_textAlignment;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D6D5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6D9C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6DD4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6E0C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6E70()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6EB8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D6EF0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6F9C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D6FD4()
{

  sub_10000959C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000D7018()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7058()
{

  return swift_deallocObject();
}

uint64_t sub_1000D70B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D70E8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7738()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D7874()
{

  return swift_deallocObject();
}

uint64_t sub_1000D797C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore25JSTVShowEpisodeDetailItem_episodeInformationItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D7A24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D7A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7D18()
{

  return swift_deallocObject();
}

void sub_1000D7FB0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100DD2960(v1);
}

uint64_t sub_1000D8008@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_isAuthenticated;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D8088()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D80E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8140()
{
  sub_10000959C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000D8178()
{
  sub_10000959C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000D82A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11MusicJSCore21JSContainerDetailLink_identifier;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1000D82FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC11MusicJSCore21JSContainerDetailLink_identifier;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1000D8360()
{

  return swift_deallocObject();
}

uint64_t sub_1000D83B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingFriendsFinder_networks;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000D84CC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8524()
{

  return swift_deallocObject();
}

id sub_1000D8564@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore24JSTVShowPlayBarViewModel_item;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000D85D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore24JSTVShowPlayBarViewModel_wantsBottomHairline;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000D8628(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore24JSTVShowPlayBarViewModel_wantsBottomHairline;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1000D867C()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D86D8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8720()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8760()
{

  return swift_deallocObject();
}

id sub_1000D87B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCircleImage_artwork;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000D887C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D88B4()
{

  sub_10000959C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000D8974@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_artistPageLinkTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000D89CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100DE2D10(v1, v2);
}

id sub_1000D8A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000D8A84()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D8ABC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D8AFC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8E5C()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D8F20(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000D8F7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_OWORD *sub_1000D8F88(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1000D8FA0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000D8FCC(uint64_t *a1)
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

uint64_t sub_1000D8FF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000D9024(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_1000D90C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000D90E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D9134(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1000D9148(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1000D9C24(id a1, MCDFuseTableViewController *a2, UITraitCollection *a3)
{
  v3 = a2;
  v6 = [(MCDFuseTableViewController *)v3 traitCollection];
  v4 = [v6 shouldLimitMusicLists];
  v5 = [(MCDFuseTableViewController *)v3 contentManager];

  [v5 setLimitedUI:v4];
}

void sub_1000DA0C8(uint64_t a1)
{
  [*(a1 + 32) setPlayActivityFeatureNameSourceViewController:*(a1 + 40)];
  v2 = [*(a1 + 40) navigationController];
  [v2 pushViewController:*(a1 + 32) animated:1];

  v3 = [*(a1 + 40) contentManager];
  [v3 clearActivityIndicatorForSelectedIndexPath];
}

void sub_1000DA7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DA7F8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v26 = v8;
  v12 = +[_TtC5Music15CarPlayObserver shared];
  v13 = [v12 currentPlayingSong];
  v14 = [v13 artist];

  if (v14)
  {
    v15 = [v14 identifiers];
    v16 = [v15 library];
    v17 = [v16 persistentID];
    v18 = [v26 identifiers];
    v19 = [v18 library];
    v20 = v17 == [v19 persistentID];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v9 window];
  v22 = [v21 screen];
  [v22 scale];
  v24 = v23;
  v25 = [WeakRetained contentManager];
  [v10 configureWithArtist:v26 currentlyPlaying:v20 artworkScale:objc_msgSend(v25 contentAvailable:{"itemIsPlayable:", v26), v24}];
}

void sub_1000DABAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000DAF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DAF2C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v42 = a2;
  v10 = a4;
  v11 = a6;
  v12 = v10;
  v13 = [a5 traitCollection];
  [v13 displayScale];
  v15 = v14;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = [v12 itemType];
  if (v17 > 3)
  {
    switch(v17)
    {
      case 4:
        v19 = [v12 playlist];
        v20 = [v12 playlist];
        [v42 configureWithPlaylist:v19 currentlyPlaying:objc_msgSend(WeakRetained artworkScale:"_contentItemIsPlaying:" showCurator:{v20), 1, v15}];
        break;
      case 5:
        v27 = [v12 radioStation];
        v28 = [v27 name];
        v29 = [v42 textLabel];
        [v29 setText:v28];

        v19 = [v12 radioStation];
        v20 = [v19 artworkCatalog];
        v30 = MCDCarDisplayBundle();
        v31 = +[UIScreen _carScreen];
        v32 = [v31 traitCollection];
        v33 = [UIImage imageNamed:@"CarDisplayRadioTab" inBundle:v30 compatibleWithTraitCollection:v32];
        [v42 setArtworkCatalog:v20 andScale:v33 fallbackImage:v15];

        break;
      case 7:
        v18 = [WeakRetained displayRankings];
        v19 = [v12 song];
        v20 = [v12 song];
        v21 = [WeakRetained _contentItemIsPlaying:v20];
        if (v18)
        {
          [v42 configureWithSong:v19 currentlyPlaying:v21 artworkScale:objc_msgSend(v11 ranking:{"row") + 1, v15}];
        }

        else
        {
          [v42 configureWithSong:v19 currentlyPlaying:v21 artworkScale:1 contentAvailable:v15];
        }

        break;
      default:
        goto LABEL_15;
    }

LABEL_18:

    goto LABEL_22;
  }

  if (v17 == 1)
  {
    v34 = [WeakRetained displayRankings];
    v19 = [v12 album];
    v20 = [v12 album];
    v35 = [WeakRetained _contentItemIsPlaying:v20];
    if (v34)
    {
      [v42 configureWithAlbum:v19 currentlyPlaying:v35 artworkScale:objc_msgSend(v11 ranking:{"row") + 1, v15}];
    }

    else
    {
      [v42 configureWithAlbum:v19 currentlyPlaying:v35 artworkScale:v15];
    }

    goto LABEL_18;
  }

  if (v17 == 3)
  {
    v22 = [v12 curator];
    v23 = [v22 shortName];
    v24 = [v23 length];
    v25 = [v12 curator];
    v26 = v25;
    if (v24)
    {
      [v25 shortName];
    }

    else
    {
      [v25 name];
    }
    v40 = ;
    v41 = [v42 textLabel];
    [v41 setText:v40];

    v38 = v42;
    v39 = 1;
    goto LABEL_21;
  }

LABEL_15:
  v36 = [v42 textLabel];
  [v36 setText:0];

  v37 = [v42 detailTextLabel];
  [v37 setText:0];

  v38 = v42;
  v39 = 0;
LABEL_21:
  [v38 setAccessoryType:v39];
LABEL_22:
}

void sub_1000DB82C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v13 = a2;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [*(a1 + 32) _contentItemIsPlaying:v8];
    v11 = [v9 window];
    v12 = [v11 screen];
    [v12 scale];
    [v13 configureWithPlaylist:v8 currentlyPlaying:v10 artworkScale:1 showCurator:?];
  }
}

void sub_1000DBBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DBBD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DBC5C;
  block[3] = &unk_101097CF8;
  block[4] = WeakRetained;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000DBC5C(uint64_t a1)
{
  v1 = [*(a1 + 32) contentManager];
  [v1 updateLiveStationsRow];
}

void sub_1000DBCA0(id a1, UITableViewCell *a2, id a3, id a4, UITableView *a5, NSIndexPath *a6)
{
  v16 = a2;
  v7 = a4;
  v8 = [v7 title];
  v9 = [(UITableViewCell *)v16 textLabel];
  [v9 setText:v8];

  v10 = +[UIColor _labelColor];
  v11 = [(UITableViewCell *)v16 textLabel];
  [v11 setTextColor:v10];

  v12 = +[UIColor _carSystemFocusLabelColor];
  v13 = [(UITableViewCell *)v16 textLabel];
  [v13 setHighlightedTextColor:v12];

  v14 = [(UITableViewCell *)v16 detailTextLabel];
  [v14 setText:0];

  LOBYTE(v14) = [v7 displaysAsGridCellInCarPlay];
  if ((v14 & 1) == 0)
  {
    [(UITableViewCell *)v16 setAccessoryView:0];
    [(UITableViewCell *)v16 setAccessoryType:1];
  }

  v15 = [(UITableViewCell *)v16 traitCollection];
  [v15 displayScale];
  [(UITableViewCell *)v16 setArtworkCatalog:0 andScale:0 fallbackImage:?];
}

void sub_1000DC880(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v6)
    {
      (*(*(a1 + 72) + 16))();
    }

    else if ([v5 isFinalResponse])
    {
      v7 = [[MPStoreModelSongBuilder alloc] initWithRequestedPropertySet:*(a1 + 40)];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = *(a1 + 48);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v5 storeItemMetadataForItemIdentifier:*(*(&v16 + 1) + 8 * i)];
            if (v13)
            {
              v14 = [*(a1 + 32) userIdentity];
              v15 = [v7 modelObjectWithStoreItemMetadata:v13 userIdentity:v14];

              if (v15)
              {
                [*(a1 + 56) appendItem:v15];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      [*(a1 + 64) setResults:*(a1 + 56)];
      (*(*(a1 + 72) + 16))();

      v6 = 0;
    }
  }
}

void sub_1000DD228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DD24C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = v10;
  v14 = v9;
  v15 = [v11 traitCollection];

  [v15 displayScale];
  v17 = v16;

  v18 = [v13 itemType];
  if (v18 <= 2)
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v19 = [*(a1 + 32) groupType];
        v20 = [v13 playlist];
        v21 = [v14 shouldDisplayUtterances];
        if (v21)
        {
          v22 = [v13 utterance];
        }

        else
        {
          v22 = 0;
        }

        v27 = [v13 playlist];
        [v35 configureWithPlaylist:v20 utterance:v22 currentlyPlaying:objc_msgSend(WeakRetained artworkScale:"_contentItemIsPlaying:" showCurator:{v27), v19 != 1, v17}];

        if (!v21)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v20 = [v13 album];
    v26 = [v14 shouldDisplayUtterances];
    if (v26)
    {
      v22 = [v13 utterance];
    }

    else
    {
      v22 = 0;
    }

    v28 = [v13 album];
    [v35 configureWithAlbum:v20 utterance:v22 currentlyPlaying:objc_msgSend(WeakRetained artworkScale:{"_contentItemIsPlaying:", v28), v17}];
LABEL_21:

    if (v26)
    {
LABEL_22:
    }

LABEL_23:

    goto LABEL_24;
  }

  if (v18 == 3)
  {
    v20 = [v13 radioStation];
    v26 = [v14 shouldDisplayUtterances];
    if (v26)
    {
      v22 = [v13 utterance];
    }

    else
    {
      v22 = 0;
    }

    v28 = [v13 radioStation];
    [v35 configureWithRadioStation:v20 utterance:v22 currentlyPlaying:objc_msgSend(WeakRetained artworkScale:{"_contentItemIsPlaying:", v28), v17}];
    goto LABEL_21;
  }

  if (v18 != 4)
  {
LABEL_9:
    v20 = [v35 textLabel];
    [v20 setText:0];
    goto LABEL_23;
  }

  v23 = [v13 subgroup];
  v24 = [v23 title];
  v25 = [v35 textLabel];
  [v25 setText:v24];

  [v35 setAccessoryType:1];
LABEL_24:
  v29 = [v13 reason];
  if (v29)
  {
    v30 = v29;
    v31 = [v13 reason];
    v32 = [v31 length];

    if (v32)
    {
      v33 = [v13 reason];
      v34 = [v35 detailTextLabel];
      [v34 setText:v33];
    }
  }
}

void sub_1000DDF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DDF44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentManager];
  [v1 performRefresh];
}

void sub_1000DDF9C(id a1, UITableViewCell *a2, MPModelObject *a3, MPModelObject *a4, UITableView *a5, NSIndexPath *a6)
{
  v33 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [(UITableView *)v11 traitCollection];

  [v16 displayScale];
  v18 = v17;

  [(UITableViewCell *)v33 setAccessoryType:0];
  if (!v13)
  {
    if (!v15)
    {
      v25 = 0;
      goto LABEL_39;
    }

    v25 = v9;
    v26 = [(MPModelObject *)v15 itemType];
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = [(MPModelObject *)v15 radioStation];
        if (([(MPModelObject *)v25 shouldDisplayUtterances]& 1) != 0)
        {
          v28 = [(MPModelObject *)v15 utterance];
          [(UITableViewCell *)v33 configureWithRadioStation:v27 utterance:v28 currentlyPlaying:0 artworkScale:v18];
          goto LABEL_34;
        }

        [(UITableViewCell *)v33 configureWithRadioStation:v27 utterance:0 currentlyPlaying:0 artworkScale:v18];
        goto LABEL_38;
      }

      if (v26 == 4)
      {
        v30 = [(MPModelObject *)v15 subgroup];
        v31 = [v30 title];
        v32 = [(UITableViewCell *)v33 textLabel];
        [v32 setText:v31];

        [(UITableViewCell *)v33 setAccessoryType:1];
        if (!v25)
        {
          goto LABEL_39;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v27 = [(MPModelObject *)v15 album];
        if (([(MPModelObject *)v25 shouldDisplayUtterances]& 1) != 0)
        {
          v28 = [(MPModelObject *)v15 utterance];
          [(UITableViewCell *)v33 configureWithAlbum:v27 utterance:v28 currentlyPlaying:0 artworkScale:v18];
          goto LABEL_34;
        }

        [(UITableViewCell *)v33 configureWithAlbum:v27 utterance:0 currentlyPlaying:0 artworkScale:v18];
LABEL_38:

        if (!v25)
        {
          goto LABEL_39;
        }

        goto LABEL_22;
      }

      if (v26 == 2)
      {
        v27 = [(MPModelObject *)v15 playlist];
        if (([(MPModelObject *)v25 shouldDisplayUtterances]& 1) != 0)
        {
          v28 = [(MPModelObject *)v15 utterance];
          [(UITableViewCell *)v33 configureWithPlaylist:v27 utterance:v28 currentlyPlaying:0 artworkScale:0 showCurator:v18];
LABEL_34:

          goto LABEL_38;
        }

        [(UITableViewCell *)v33 configureWithPlaylist:v27 utterance:0 currentlyPlaying:0 artworkScale:0 showCurator:v18];
        goto LABEL_38;
      }
    }

    v27 = [(UITableViewCell *)v33 textLabel];
    [v27 setText:0];
    goto LABEL_38;
  }

  v19 = [(MPModelObject *)v13 groupType];
  v20 = [(MPModelObject *)v13 title];
  v21 = v20;
  if (v19 == 4)
  {
    v22 = v20;
    v23 = v33;
    if (!v21)
    {
      v19 = +[NSBundle mainBundle];
      v22 = [v19 localizedStringForKey:@"Recently Played" value:&stru_101107168 table:0];
      v23 = v33;
    }

    v24 = [(UITableViewCell *)v23 textLabel];
    [v24 setText:v22];

    if (!v21)
    {
    }
  }

  else
  {
    v29 = [(UITableViewCell *)v33 textLabel];
    [v29 setText:v21];

    [(UITableViewCell *)v33 setAccessoryType:1];
  }

  v25 = v10;
LABEL_22:
  if (([(MPModelObject *)v25 displaysAsGridCellInCarPlay]& 1) == 0)
  {
    [(UITableViewCell *)v33 setAccessoryType:1];
  }

LABEL_39:
}

void sub_1000DF0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DF0D0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v25 = v8;
  v12 = +[_TtC5Music15CarPlayObserver shared];
  v13 = [v12 currentPlayingSong];

  if (v13)
  {
    v14 = [v13 identifiers];
    v15 = [v14 library];
    v16 = [v15 persistentID];
    v17 = [v25 identifiers];
    v18 = [v17 library];
    v19 = v16 == [v18 persistentID];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v9 window];
  v21 = [v20 screen];
  [v21 scale];
  v23 = v22;
  v24 = [WeakRetained contentManager];
  [v10 configureWithSong:v25 currentlyPlaying:v19 artworkScale:objc_msgSend(v24 contentAvailable:{"itemIsPlayable:", v25), v23}];
}

void sub_1000DF3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000DF5F8(id a1, UITableViewCell *a2, MPModelObject *a3, MPModelObject *a4, UITableView *a5, NSIndexPath *a6)
{
  v10 = a4;
  v7 = a2;
  v8 = [(MPModelObject *)v10 title];
  v9 = [(UITableViewCell *)v7 textLabel];
  [v9 setText:v8];

  [(UITableViewCell *)v7 setAccessoryType:1];
}

void sub_1000DFABC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:SSVSubscriptionStatusOptionIgnoreCache];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = +[ICMusicSubscriptionStatusController sharedStatusController];
    [v11 invalidateCachedSubscriptionStatusWithCompletionHandler:&stru_101097E90];
  }

  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12)
  {
    v12(v13, *(a1 + 40), v7, v8);
  }
}

void sub_1000DFBA8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    v2(a2, *(a1 + 40));
  }

  v3 = +[ICMusicSubscriptionStatusController sharedStatusController];
  [v3 invalidateCachedSubscriptionStatusWithCompletionHandler:&stru_101097ED8];
}

void sub_1000DFEBC(id a1, UITableViewCell *a2, MPModelObject *a3, MPModelObject *a4, UITableView *a5, NSIndexPath *a6)
{
  v8 = a4;
  v9 = a2;
  v11 = [(UITableView *)a5 window];
  v10 = [v11 screen];
  [v10 scale];
  [(UITableViewCell *)v9 configureWithComposer:v8 currentlyPlaying:0 artworkScale:?];
}

void sub_1000E0140(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000E048C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E04A8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = v9;
  v23 = v8;
  v13 = +[_TtC5Music15CarPlayObserver shared];
  v14 = [v13 currentPlayingPlaylist];

  v15 = [v12 identifiers];
  v16 = [v14 identifiers];
  v17 = [v15 intersectsSet:v16];

  v18 = [v10 window];

  v19 = [v18 screen];
  [v19 scale];
  v21 = v20;
  v22 = [WeakRetained contentManager];
  [v23 configureWithPlaylist:v12 utterance:0 currentlyPlaying:v17 artworkScale:1 showCurator:objc_msgSend(v22 contentAvailable:{"itemIsPlayable:", v12), v21}];
}

void sub_1000E0A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E0A8C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = v9;
  v29 = v8;
  v13 = +[_TtC5Music15CarPlayObserver shared];
  v14 = [v13 currentPlayingPlaylistEntry];

  v15 = [v12 identifiers];
  v16 = [v14 identifiers];
  v17 = [v15 intersectsSet:v16];

  v18 = [v12 socialContributor];
  v19 = [v18 artworkCatalog];
  v20 = [v10 window];
  v21 = [v20 screen];
  [v21 scale];
  [v29 configureWithAttributionArtwork:v19 artworkScale:?];

  v22 = [v12 song];
  v23 = [v10 window];

  v24 = [v23 screen];
  [v24 scale];
  v26 = v25;
  v27 = [WeakRetained contentManager];
  v28 = [v12 song];

  [v29 configureWithSong:v22 currentlyPlaying:v17 artworkScale:objc_msgSend(v27 contentAvailable:{"itemIsPlayable:", v28), v26}];
}

void sub_1000E1AEC(id a1, MCDLibraryTableViewController *a2, UITraitCollection *a3)
{
  v3 = a2;
  v6 = [(MCDLibraryTableViewController *)v3 traitCollection];
  v4 = [v6 shouldLimitMusicLists];
  v5 = [(MCDLibraryTableViewController *)v3 contentManager];

  [v5 setLimitedUI:v4];
}

void sub_1000E1DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E1DC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained filterButtonTapped];
}

void sub_1000E257C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E25B8(uint64_t a1)
{
  v2 = [*(a1 + 32) contentManager];
  v3 = [v2 showFavoriteContent];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained filteringPreferenceKey];
    [_TtC5Music30LibraryFilterOptionsController updateFavoriteFilter:0 storageKey:v4];
  }
}

void sub_1000E2664(uint64_t a1)
{
  v2 = [*(a1 + 32) contentManager];
  v3 = [v2 showFavoriteContent];

  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained filteringPreferenceKey];
    [_TtC5Music30LibraryFilterOptionsController updateFavoriteFilter:1 storageKey:v4];
  }
}

void sub_1000E32F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E3314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WeakRetained[6];
    v3 = [v2 person];
    if (v3)
    {
      v4 = [*(a1 + 32) contentManager];
      v5 = [v4 playbackManager];
      v6 = [WeakRetained playActivityFeatureName];
      [v5 initiateRadioPlaybackForArtist:v3 playActivityFeatureName:v6];
    }
  }
}

void sub_1000E5D68(id a1, MCDTableViewController *a2, UITraitCollection *a3)
{
  v3 = [(MCDTableViewController *)a2 tableView];
  [v3 reloadData];
}

void sub_1000E5F58(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v3 = [*(a1 + 32) tableView];
    MCDClearTableViewSelection();
  }
}

id sub_1000E72A0(id result)
{
  v1 = *(result + 6);
  if (!v1)
  {
    return [*(result + 4) _actionForItem:*(result + 5)];
  }

  if (v1 == 1)
  {
    return [*(result + 4) _initiatePlaybackForItem:*(result + 5)];
  }

  return result;
}

void sub_1000E7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E7A58(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 hrefURL];
    v10 = [*(a1 + 32) hrefURL];
    v11 = [v9 isEqual:v10];

    v8 = v7;
    if (v11)
    {
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = a3;
      v8 = *(a1 + 32);
    }
  }

  v12 = v8;

  return v8;
}

void sub_1000E7B28(uint64_t a1)
{
  if ([*(a1 + 32) offlineMode])
  {
    v2 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEDB4();
    }

LABEL_7:

    return;
  }

  v3 = [*(a1 + 32) lastReceivedResponse];
  v4 = *(a1 + 40);

  if (v3 != v4)
  {
    v2 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100DEED74();
    }

    goto LABEL_7;
  }

  v5 = [*(a1 + 48) copy];
  v6 = [*(a1 + 32) lastReceivedResponse];
  [v6 setResults:v5];

  v7 = [*(a1 + 32) tableView];
  [v7 reloadData];
}

void sub_1000E7DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E7E08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E7E20(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 groupType] == 4)
  {
    v6 = [v9 hrefURL];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

id sub_1000E9508(id result)
{
  v1 = *(result + 6);
  if (!v1)
  {
    return [*(result + 4) _actionForItem:*(result + 5)];
  }

  if (v1 == 1)
  {
    return [*(result + 4) _initiatePlaybackForItem:*(result + 5)];
  }

  return result;
}

void sub_1000EA3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EA3C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000EA52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EA8EC(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = v2;
  if (*(a1 + 32) && !*(a1 + 40))
  {
    [v2 setLastReceivedResponse:?];
    v5 = [v3 lastReceivedResponse];
    [v3 receivedResponse:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:*(a1 + 48) selector:"modelResponseDidInvalidate:" name:MPModelResponseDidInvalidateNotification object:*(a1 + 32)];

    v7 = [v3 delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v3 delegate];
      [v9 setHasLoadedStoreContent:1];
    }

    [v3 showContentScreen];
    if (([*(a1 + 32) isValid] & 1) == 0)
    {
      v10 = [*(a1 + 48) delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        [v3 performRequest];
      }
    }
  }

  else
  {
    [v2 showErrorScreen];
    v4 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEE90(a1, v4);
    }
  }
}

id sub_1000EAC48(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = MPModelResponseDidInvalidateNotification;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) object];
  [v2 removeObserver:v4 name:v3 object:v5];

  v6 = *(a1 + 32);

  return [v6 performRequest];
}

void sub_1000EAF30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 tableView];
  v3 = [NSIndexPath indexPathForRow:*(a1 + 40) inSection:*(a1 + 40)];
  [v2 tableView:v4 didSelectRowAtIndexPath:v3];
}

void sub_1000EB5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 104));
  _Unwind_Resume(a1);
}

void sub_1000EB5E0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [WeakRetained _actionForItem:v4];
}

void sub_1000EB650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained tableView];
  [v2 selectRowAtIndexPath:*(a1 + 32) animated:0 scrollPosition:0];

  v3 = [WeakRetained tableView];
  v4 = [v3 delegate];
  v5 = [WeakRetained tableView];
  [v4 tableView:v5 didSelectRowAtIndexPath:*(a1 + 32)];
}

void sub_1000EBD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EBD28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showLoadingScreen];
    WeakRetained = v2;
  }
}

id sub_1000EBFC8(uint64_t a1)
{
  [*(a1 + 32) showLoadingScreen];
  v2 = *(a1 + 32);

  return [v2 performRequest];
}

id sub_1000EC868(uint64_t a1)
{
  MCDSetAllowsCellularData();
  [*(a1 + 32) showLoadingScreen];
  v2 = *(a1 + 32);

  return [v2 performRequest];
}

void sub_1000ED640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ED65C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v26 = v8;
  v12 = +[_TtC5Music15CarPlayObserver shared];
  v13 = [v12 currentPlayingSong];
  v14 = [v13 album];

  if (v14)
  {
    v15 = [v26 identifiers];
    v16 = [v15 library];
    v17 = [v16 persistentID];
    v18 = [v14 identifiers];
    v19 = [v18 library];
    v20 = v17 == [v19 persistentID];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v9 window];
  v22 = [v21 screen];
  [v22 scale];
  v24 = v23;
  v25 = [WeakRetained contentManager];
  [v10 configureWithAlbum:v26 utterance:0 currentlyPlaying:v20 artworkScale:objc_msgSend(v25 contentAvailable:{"itemIsPlayable:", v26), v24}];
}

void sub_1000EDC38(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000EF83C(id a1, UITableViewCell *a2, MPModelObject *a3, MPModelObject *a4, UITableView *a5, NSIndexPath *a6)
{
  v8 = a4;
  v9 = a2;
  v11 = [(UITableView *)a5 window];
  v10 = [v11 screen];
  [v10 scale];
  [(UITableViewCell *)v9 configureWithGenre:v8 artworkScale:?];
}

void sub_1000EFA5C(id a1)
{
  v1 = objc_alloc_init(MusicCarPlayApplicationCapabilitiesController);
  v2 = qword_1011C3298;
  qword_1011C3298 = v1;
}

void sub_1000F0B5C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Unsuccessfully";
    if (v2)
    {
      v4 = @"Successfully";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activated Siri %@", &v5, 0xCu);
  }
}

void sub_1000F16A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F16C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processResponse:v6 error:v5];
}

void sub_1000F19D8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 contentManager:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

id sub_1000F1A2C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"modelResponseDidInvalidate:" name:MPModelResponseDidInvalidateNotification object:0];

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 contentManager:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
  }

  result = [*(a1 + 40) isValid];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);

    return [v7 _performRequest];
  }

  return result;
}

void sub_1000F2C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F2CAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updateBlock];
  v1[2]();
}

void sub_1000F300C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) debugDescription];
      v11 = 138543874;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to add %{public}@ to Music Library with:\n - resultingObjects: %{public}@\n - error: %{public}@", &v11, 0x20u);
    }
  }

  v8 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) debugDescription];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Added %{public}@ to Music Library, resultingObjects: %{public}@", &v11, 0x16u);
  }
}

void sub_1000F3ED4(id a1, UITableViewCell *a2, MPModelObject *a3, UITableView *a4, MusicAttributionMetadata *a5)
{
  v43 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [(MusicAttributionMetadata *)a5 artworkCatalog];
  v12 = [(UITableView *)v9 window];
  v13 = [v12 screen];
  [v13 scale];
  [(UITableViewCell *)v43 configureWithAttributionArtwork:v11 artworkScale:?];

  v14 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  v15 = [v14 subscriptionCapabilities];

  v16 = [(MPModelObject *)v10 type];
  if (v16 > 5)
  {
    if (v16 == 6)
    {
      v20 = [(MPModelObject *)v10 tvEpisode];
      v21 = [(UITableView *)v9 window];
      v22 = [v21 screen];
      [v22 scale];
      v34 = v33;
      if (v15)
      {
        [(UITableViewCell *)v43 configureWithTVEpisode:v20 currentlyPlaying:0 artworkScale:1 contentAvailable:v33];
        goto LABEL_29;
      }

      v30 = [(MPModelObject *)v10 tvEpisode];
      -[UITableViewCell configureWithTVEpisode:currentlyPlaying:artworkScale:contentAvailable:](v43, "configureWithTVEpisode:currentlyPlaying:artworkScale:contentAvailable:", v20, 0, [v30 isLibraryAdded], v34);
    }

    else
    {
      if (v16 != 9)
      {
        goto LABEL_11;
      }

      v20 = [(MPModelObject *)v10 movie];
      v21 = [(UITableView *)v9 window];
      v22 = [v21 screen];
      [v22 scale];
      v29 = v28;
      if (v15)
      {
        [(UITableViewCell *)v43 configureWithMovie:v20 currentlyPlaying:0 artworkScale:1 contentAvailable:v28];
        goto LABEL_29;
      }

      v30 = [(MPModelObject *)v10 movie];
      -[UITableViewCell configureWithMovie:currentlyPlaying:artworkScale:contentAvailable:](v43, "configureWithMovie:currentlyPlaying:artworkScale:contentAvailable:", v20, 0, [v30 isLibraryAdded], v29);
    }

LABEL_16:

LABEL_29:
    goto LABEL_30;
  }

  if (v16 == 1)
  {
    v20 = [(MPModelObject *)v10 song];
    v21 = [(UITableView *)v9 window];
    v22 = [v21 screen];
    [v22 scale];
    v32 = v31;
    if (v15)
    {
      [(UITableViewCell *)v43 configureWithSong:v20 currentlyPlaying:0 artworkScale:1 contentAvailable:v31];
      goto LABEL_29;
    }

    v30 = [(MPModelObject *)v10 song];
    -[UITableViewCell configureWithSong:currentlyPlaying:artworkScale:contentAvailable:](v43, "configureWithSong:currentlyPlaying:artworkScale:contentAvailable:", v20, 0, [v30 isLibraryAdded], v32);
    goto LABEL_16;
  }

  if (v16 == 5)
  {
    v17 = [(MPModelObject *)v10 playlistEntry];
    v18 = [v17 song];

    v19 = [(MPModelObject *)v10 playlistEntry];
    v20 = v19;
    if (v18)
    {
      v21 = [v19 song];
      v22 = [(UITableView *)v9 window];
      v23 = [v22 screen];
      [v23 scale];
      v25 = v24;
      if (v15)
      {
        [(UITableViewCell *)v43 configureWithSong:v21 currentlyPlaying:0 artworkScale:1 contentAvailable:v24];
LABEL_28:

        goto LABEL_29;
      }

      v26 = [(MPModelObject *)v10 playlistEntry];
      v27 = [v26 song];
      -[UITableViewCell configureWithSong:currentlyPlaying:artworkScale:contentAvailable:](v43, "configureWithSong:currentlyPlaying:artworkScale:contentAvailable:", v21, 0, [v27 isLibraryAdded], v25);
    }

    else
    {
      v35 = [v19 tvEpisode];

      v36 = [(MPModelObject *)v10 playlistEntry];
      v20 = v36;
      if (v35)
      {
        v21 = [v36 tvEpisode];
        v22 = [(UITableView *)v9 window];
        v23 = [v22 screen];
        [v23 scale];
        v38 = v37;
        if (v15)
        {
          [(UITableViewCell *)v43 configureWithTVEpisode:v21 currentlyPlaying:0 artworkScale:1 contentAvailable:v37];
          goto LABEL_28;
        }

        v26 = [(MPModelObject *)v10 playlistEntry];
        v27 = [v26 tvEpisode];
        -[UITableViewCell configureWithTVEpisode:currentlyPlaying:artworkScale:contentAvailable:](v43, "configureWithTVEpisode:currentlyPlaying:artworkScale:contentAvailable:", v21, 0, [v27 isLibraryAdded], v38);
      }

      else
      {
        v39 = [v36 movie];

        if (!v39)
        {
          goto LABEL_31;
        }

        v20 = [(MPModelObject *)v10 playlistEntry];
        v21 = [v20 movie];
        v22 = [(UITableView *)v9 window];
        v23 = [v22 screen];
        [v23 scale];
        v41 = v40;
        if (v15)
        {
          [(UITableViewCell *)v43 configureWithMovie:v21 currentlyPlaying:0 artworkScale:1 contentAvailable:v40];
          goto LABEL_28;
        }

        v26 = [(MPModelObject *)v10 playlistEntry];
        v27 = [v26 movie];
        -[UITableViewCell configureWithMovie:currentlyPlaying:artworkScale:contentAvailable:](v43, "configureWithMovie:currentlyPlaying:artworkScale:contentAvailable:", v21, 0, [v27 isLibraryAdded], v41);
      }
    }

    goto LABEL_28;
  }

LABEL_11:
  v20 = [(UITableView *)v9 window];
  v21 = [v20 screen];
  [v21 scale];
  [(UITableViewCell *)v43 configureWithSong:0 currentlyPlaying:0 artworkScale:1 contentAvailable:?];
LABEL_30:

LABEL_31:
  if ([(UITableViewCell *)v43 isContentUnavailable])
  {
    v42 = 0;
  }

  else
  {
    v42 = 3;
  }

  [(UITableViewCell *)v43 setSelectionStyle:v42];
}

void sub_1000F4808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F4824(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentManagerDelegate];
  [v1 contentManagerReloadData:WeakRetained[6]];
}

void sub_1000F5574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000F55B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained currentAttributionMetadata];
  v2 = [v1 placeholderArtworkCatalog];
  [WeakRetained setCurrentAttributionCatalog:v2];
}

void sub_1000F5624(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F56F0;
  block[3] = &unk_101098338;
  objc_copyWeak(&v8, (a1 + 32));
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void sub_1000F56F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_copyWeak(&to, (a1 + 48));
  v3 = objc_loadWeakRetained(&to);
  v4 = [WeakRetained currentAttributionCatalog];
  v5 = [v3 isArtworkVisuallyIdenticalToCatalog:v4];

  if (v5)
  {
    [WeakRetained setArtworkTimer:0];
    [WeakRetained setCurrentAttributionImage:*(a1 + 32)];
    v6 = [WeakRetained delegate];
    v7 = [WeakRetained impl];
    [v6 contentManagerReloadData:v7];
  }

  objc_destroyWeak(&to);
}

void sub_1000F7C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000F7CBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained libraryAddObserver];
  [v1 addSongToLibrary];
}

void sub_1000F7D14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained libraryAddObserver];
  [v1 addAlbumToLibrary];
}

void sub_1000F7D6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained libraryAddObserver];
  [v1 addPlaylistToLibrary];
}

void sub_1000F8790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained nowPlayingViewControllerAlbumArtistButtonTapped:*(a1 + 32)];
}

void sub_1000F87E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addItemsToLibrary];
}

void sub_1000F9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F9728(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 currentPlayingSong];
  v9 = [v8 identifiers];
  v10 = [v9 intersectsSet:v7];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1000F9940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F995C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[4] currentPlayingAlbum];
  v3 = [v2 identifiers];
  v4 = [a1[5] identifiers];
  v5 = [v3 intersectsSet:v4];

  if (v5)
  {
    v6 = [WeakRetained contentManagerDelegate];
    [v6 contentManagerReloadData:WeakRetained[6]];
  }
}

void sub_1000F9B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 134218242;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed favoriteChangeRequestAction=%ld with error=%@", &v6, 0x16u);
    }
  }
}

void sub_1000F9BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIButtonConfiguration tintedButtonConfiguration];
  if ([*(a1 + 32) connectedParticipantsCount] < 1)
  {
    [v4 setContentInsets:{3.0, 4.0, 3.0, 4.0}];
    [v4 setTitle:0];
  }

  else
  {
    [v4 setContentInsets:{3.0, 4.0, 3.0, 6.0}];
    v5 = +[UIApplication sharePlayTogetherObjCViewModel];
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v5 connectedParticipantsCount]);
    [v4 setTitle:v6];
  }

  [v4 setImagePadding:3.0];
  v7 = [UIImage systemImageNamed:@"shareplay"];
  [v4 setImage:v7];

  v8 = [UIImageSymbolConfiguration configurationWithScale:2];
  if (([v3 isSelected] & 1) != 0 || objc_msgSend(v3, "isHighlighted"))
  {
    v9 = +[UIColor secondaryLabelColor];
    v21[0] = v9;
    v10 = +[UIColor tertiaryLabelColor];
    v21[1] = v10;
    v11 = v21;
  }

  else if ([v3 isFocused])
  {
    v9 = +[UIColor _carSystemFocusLabelColor];
    v20[0] = v9;
    v10 = +[UIColor _carSystemFocusSecondaryColor];
    v20[1] = v10;
    v11 = v20;
  }

  else
  {
    v9 = +[UIColor labelColor];
    v19[0] = v9;
    v10 = +[UIColor secondaryLabelColor];
    v19[1] = v10;
    v11 = v19;
  }

  v12 = [NSArray arrayWithObjects:v11 count:2];
  v13 = [UIImageSymbolConfiguration configurationWithPaletteColors:v12];

  v14 = [v13 configurationByApplyingConfiguration:v8];
  [v4 setPreferredSymbolConfigurationForImage:v14];

  [v4 setTitleTextAttributesTransformer:&stru_101098488];
  v15 = +[UIBackgroundConfiguration clearConfiguration];
  [v15 setCornerRadius:18.0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F9FA8;
  v17[3] = &unk_1010984B0;
  v18 = v3;
  v16 = v3;
  [v15 setBackgroundColorTransformer:v17];
  [v4 setBackground:v15];
  [v16 setConfiguration:v4];
}

NSMutableDictionary *__cdecl sub_1000F9F20(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 mutableCopy];
  v3 = [UIFont systemFontOfSize:UIFontDescriptorSystemDesignRounded weight:13.0 design:UIFontWeightHeavy];
  [v2 setObject:v3 forKeyedSubscript:NSFontAttributeName];

  return v2;
}

id sub_1000F9FA8(uint64_t a1)
{
  if ([*(a1 + 32) isFocused])
  {
    +[UIColor _carSystemFocusColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v1 = ;

  return v1;
}

void sub_1000FA3E8(id *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ([a1[4] containsObject:?])
  {
    [a1[5] appendSection:v7];
    v5 = a1[5];
    v6 = [a1[6] itemsInSectionAtIndex:a3];
    [v5 appendItems:v6];
  }
}

void sub_1000FAD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FAD44(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v39 = a2;
  v8 = a4;
  v9 = [a5 traitCollection];
  [v9 displayScale];
  v11 = v10;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [v8 itemType];
  if (v13 <= 3)
  {
    if (v13 == 1)
    {
      v14 = [v8 album];
      v15 = [v8 album];
      [v39 configureWithAlbum:v14 currentlyPlaying:objc_msgSend(WeakRetained artworkScale:{"_contentItemIsPlaying:", v15), v11}];
      goto LABEL_17;
    }

    if (v13 == 3)
    {
      v16 = [v8 curator];
      v17 = [v16 shortName];
      v18 = [v17 length];
      v19 = [v8 curator];
      v20 = v19;
      if (v18)
      {
        [v19 shortName];
      }

      else
      {
        [v19 name];
      }
      v37 = ;
      v38 = [v39 textLabel];
      [v38 setText:v37];

      v31 = v39;
      v32 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    switch(v13)
    {
      case 4:
        v14 = [v8 playlist];
        v15 = [v8 playlist];
        [v39 configureWithPlaylist:v14 currentlyPlaying:objc_msgSend(WeakRetained artworkScale:"_contentItemIsPlaying:" showCurator:{v15), 1, v11}];
        goto LABEL_17;
      case 5:
        v21 = [v8 radioStation];
        v22 = [v21 name];
        v23 = [v39 textLabel];
        [v23 setText:v22];

        v24 = [v8 radioStation];
        v25 = [v24 subtype];

        if (v25 == 1)
        {
          v26 = [v8 radioStation];
          v27 = [v26 editorNotes];
          v28 = [v39 detailTextLabel];
          [v28 setText:v27];
        }

        else
        {
          v26 = [v39 detailTextLabel];
          [v26 setText:0];
        }

        v14 = [v8 radioStation];
        v15 = [v14 artworkCatalog];
        v33 = MCDCarDisplayBundle();
        v34 = +[UIScreen _carScreen];
        v35 = [v34 traitCollection];
        v36 = [UIImage imageNamed:@"CarDisplayRadioTab" inBundle:v33 compatibleWithTraitCollection:v35];
        [v39 setArtworkCatalog:v15 andScale:v36 fallbackImage:v11];

        goto LABEL_17;
      case 7:
        v14 = [v8 song];
        v15 = [v8 song];
        [v39 configureWithSong:v14 currentlyPlaying:objc_msgSend(WeakRetained artworkScale:"_contentItemIsPlaying:" contentAvailable:{v15), 1, v11}];
LABEL_17:

        goto LABEL_21;
    }
  }

  v29 = [v39 textLabel];
  [v29 setText:0];

  v30 = [v39 detailTextLabel];
  [v30 setText:0];

  v31 = v39;
  v32 = 0;
LABEL_20:
  [v31 setAccessoryType:v32];
LABEL_21:
}

id sub_1000FC01C(id result)
{
  v1 = *(result + 6);
  if (!v1)
  {
    return [*(result + 4) _actionForItem:*(result + 5)];
  }

  if (v1 == 1)
  {
    return [*(result + 4) _initiatePlaybackForItem:*(result + 5) shouldPushNowPlaying:0];
  }

  return result;
}

CGFloat sub_1000FCE08(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    v14 = MaxX - CGRectGetMinX(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    v15 = v14 - CGRectGetWidth(v19);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    CGRectGetMinY(v20);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    CGRectGetWidth(v21);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    CGRectGetHeight(v22);
    return v15;
  }

  return a2;
}

CGFloat sub_1000FCF00(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    v16.origin.x = a6;
    v16.origin.y = a7;
    v16.size.width = a8;
    v16.size.height = a9;
    MaxX = CGRectGetMaxX(v16);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    v14 = MaxX - CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    CGRectGetHeight(v20);
    return v14;
  }

  return a2;
}

CGFloat sub_1000FCFE0(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 effectiveUserInterfaceLayoutDirection];
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  return sub_1000FCE08(v10, a2, a3, a4, a5, v12, v14, v16, v18);
}

void sub_1000FE344(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = a2;
  [v5 setFittingSize:{v3, v4}];
  [v5 setDestinationScale:*(a1 + 64)];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setCacheIdentifier:v7 forRequestingContext:*(a1 + 32)];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FE43C;
  v9[3] = &unk_101098590;
  v11 = *(a1 + 72);
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v5 setDestination:v8 configurationBlock:v9];
}

void sub_1000FE43C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    if (*(a1 + 40) == 1)
    {
      [v7 setArtworkImage:v5];
    }

    else
    {
      v6 = [v7 artworkImages];
      [v6 addObject:v5];
    }
  }

  else
  {
    [v7 setPlaceholderImage:*(a1 + 32)];
  }

  [v7 setNeedsLayout];
}

id sub_1000FE9A8()
{
  v0 = objc_alloc_init(UILabel);
  v1 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  v2 = MCDLocalizedExplicitString();
  [v0 setText:v2];

  v3 = +[UIColor _carSystemSecondaryColor];
  [v0 setTextColor:v3];

  v4 = +[UIColor _carSystemFocusPrimaryColor];
  [v0 setHighlightedTextColor:v4];

  [v0 sizeToFit];

  return v0;
}

void sub_1000FFFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100100040(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100100058(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = v21;
  v6 = WeakRetained;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v21)
  {
    if (!v7)
    {
      v8 = [[UIImageView alloc] initWithFrame:{39.0, 0.0, 36.0, 36.0}];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      [*(*(*(a1 + 40) + 8) + 40) setTag:1000];
      v5 = v21;
      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v7 setImage:v5];
    [*(*(*(a1 + 40) + 8) + 40) setClipsToBounds:1];
    [*(*(*(a1 + 40) + 8) + 40) _setContinuousCornerRadius:4.5];
    v11 = *(*(*(a1 + 40) + 8) + 40);
    [v11 frame];
    UIRectCenteredYInRect();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [*(a1 + 32) contentView];
    [v11 setFrame:{sub_1000FCFE0(v20, v13, v15, v17, v19)}];

    [v6 addSubview:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    [v7 removeFromSuperview];
  }
}

void sub_1001008F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100100910(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v22 = v6;
  v9 = +[_TtC5Music15CarPlayObserver shared];
  v10 = [v9 currentPlayingSong];

  if (v10)
  {
    v11 = [WeakRetained storeContent];
    v12 = [v10 identifiers];
    v13 = v12;
    if (v11)
    {
      v14 = [v12 universalStore];
      v15 = [v14 adamID];
      v16 = [v22 identifiers];
      v17 = [v16 universalStore];
      v18 = [v17 adamID];
    }

    else
    {
      v14 = [v12 library];
      v15 = [v14 persistentID];
      v16 = [v22 identifiers];
      v17 = [v16 library];
      v18 = [v17 persistentID];
    }

    v19 = v15 == v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [WeakRetained album];
  v21 = [WeakRetained contentManager];
  [v7 configureWithAlbumTrack:v22 currentlyPlaying:v19 album:v20 contentAvailable:{objc_msgSend(v21, "itemIsPlayable:", v22)}];
}

void sub_100100BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100100BF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showLoadingScreen];
    WeakRetained = v2;
  }
}

void sub_100101020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100101060(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v7 = [v5 results];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001011D8;
  v13[3] = &unk_101098608;
  v13[4] = v14;
  [v7 enumerateItemsUsingBlock:v13];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100101214;
    v10[3] = &unk_101098630;
    v10[4] = WeakRetained;
    v11 = *(a1 + 32);
    v12 = v14;
    dispatch_async(&_dispatch_main_q, v10);
  }

  _Block_object_dispose(v14, 8);
}

void sub_1001011C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1001011D8(uint64_t a1, void *a2)
{
  [a2 duration];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

void sub_100101214(uint64_t a1)
{
  v2 = [*(a1 + 32) album];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) setAlbumDuration:*(*(*(a1 + 48) + 8) + 24)];
    v4 = [*(a1 + 32) tableView];
    [v4 reloadData];
  }
}

void sub_100101468(uint64_t a1)
{
  [*(a1 + 32) _showLoadingScreen];
  v2 = [*(a1 + 32) contentManager];
  [v2 performRequest];
}

void sub_100101784(id a1, MCDAlbumsDetailTableHeaderView *a2, UIImage *a3)
{
  if (a3)
  {
    [(MCDAlbumsDetailTableHeaderView *)a2 setArtworkImage:?];
  }

  else
  {
    [(MCDAlbumsDetailTableHeaderView *)a2 setTemplateArtworkImage:?];
  }
}

void sub_100101794(uint64_t a1)
{
  v7 = [*(a1 + 32) contentManager];
  v2 = [v7 playbackManager];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) contentManager];
  v5 = [v4 lastReceivedResponse];
  v6 = [*(a1 + 32) combinedPlayActivityFeatureName];
  [v2 initiatePlaybackForAlbum:v3 lastResponse:v5 shuffled:1 playActivityFeatureName:v6];
}

void sub_100101B4C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) titleViewLabel];
  [v2 setAlpha:v1];
}

uint64_t sub_100102008(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1001020E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001020FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001021B4;
  v5[3] = &unk_101097FD8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1001021B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v8 = WeakRetained;
  v4 = [WeakRetained delegate];
  if (v3)
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [v8 delegate];
    [v6 playbackManager:v8 shouldShowError:*(a1 + 32)];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [v8 delegate];
    [v6 playbackManagerShouldShowNowPlaying:v8];
  }

LABEL_7:
}

void sub_1001026A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[MPModelAlbum alloc] initWithIdentifiers:v4 block:&stru_101098750];

  [*(a1 + 32) addObject:v5];
}

void sub_100103104(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = [a2 tracklist];
  v4 = [v6 resetCommand];
  v5 = [v4 replaceWithPlaybackIntent:*(a1 + 40)];
  [v3 performPlaybackRequestWithCommand:v5];
}

void sub_100103310(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = [a2 tracklist];
  v4 = [v6 resetCommand];
  v5 = [v4 replaceWithPlaybackIntent:*(a1 + 40)];
  [v3 performPlaybackRequestWithCommand:v5];
}

void sub_100103874(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = [a2 tracklist];
  v4 = [v6 resetCommand];
  v5 = [v4 replaceWithPlaybackIntent:*(a1 + 40)];
  [v3 performPlaybackRequestWithCommand:v5];
}

id sub_100103A28(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = [v3 totalItemCount];

  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  if (v4 < 1)
  {
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);

    return [v5 _initiatePlaybackForItem:v6 shouldShuffle:v11 playActivityFeatureName:v12];
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13.receiver = *(a1 + 56);
    v13.super_class = MCDStorePlaybackManager;
    return objc_msgSendSuper2(&v13, "initiatePlaybackForPlaylist:lastResponse:shuffled:playActivityFeatureName:", v6, v8, v7, v9);
  }
}

void sub_100103BD4(uint64_t *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v13 = [MPCPlaybackIntent radioPlaybackIntentWithStation:v3];
  v5 = [a1[4] identifiers];
  v6 = [v5 personalizedStore];
  v7 = [v6 recommendationID];
  v8 = [v7 dataUsingEncoding:4];
  [v13 setPlayActivityRecommendationData:v8];

  [v13 setPlayActivityFeatureName:a1[5]];
  v9 = a1[6];
  v10 = [v4 tracklist];

  v11 = [v10 resetCommand];
  v12 = [v11 replaceWithPlaybackIntent:v13];
  [v9 performPlaybackRequestWithCommand:v12];
}

void sub_100103E10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = a2;
  v10 = [v3 _setupPlaybackIntentForContentItem:v4 shouldShuffle:v5];
  [v10 setPlayActivityFeatureName:*(a1 + 48)];
  v7 = [v6 tracklist];

  v8 = [v7 resetCommand];
  v9 = [v8 replaceWithPlaybackIntent:v10];

  [*(a1 + 32) performPlaybackRequestWithCommand:v9];
}

void sub_10010469C(id a1, UITableViewCell *a2, MPModelObject *a3, MPModelObject *a4, UITableView *a5, NSIndexPath *a6)
{
  v31 = a2;
  v7 = a5;
  v8 = MCDMPModelObjectForGenericObject();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = +[_TtC5Music15CarPlayObserver shared];
    v11 = [v10 currentPlayingSong];

    v12 = [v9 identifiers];
    v13 = [v11 album];
    v14 = [v13 identifiers];
    v15 = [v12 intersectsSet:v14];

    v16 = [(UITableView *)v7 window];
    v17 = [v16 screen];
    [v17 scale];
    [(UITableViewCell *)v31 configureWithAlbum:v9 currentlyPlaying:v15 artworkScale:?];

    if ([v9 trackCount] == 1)
    {
      v18 = [v9 representativeSong];
      v19 = [v18 title];
      v20 = [(UITableViewCell *)v31 textLabel];
LABEL_7:
      v30 = v20;
      [v20 setText:v19];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v21 = v8;
    v22 = +[_TtC5Music15CarPlayObserver shared];
    v11 = [v22 currentPlayingPlaylist];

    v23 = [v11 identifiers];
    v24 = [v21 identifiers];
    v25 = [v23 intersectsSet:v24];

    v26 = [(UITableView *)v7 window];
    v27 = [v26 screen];
    [v27 scale];
    [(UITableViewCell *)v31 configureWithPlaylist:v21 currentlyPlaying:v25 artworkScale:1 showCurator:?];

    v28 = [(UITableViewCell *)v31 detailTextLabel];
    v29 = [v28 text];

    if (!v29)
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"Playlist" value:&stru_101107168 table:0];
      v20 = [(UITableViewCell *)v31 detailTextLabel];
      goto LABEL_7;
    }
  }

LABEL_9:
}

id sub_1001061DC(uint64_t a1, id a2)
{
  result = *(a1 + 32);
  if (result == a2)
  {
    return [result setImage:?];
  }

  return result;
}

void sub_100106860(id a1, UITableViewCell *a2, MPModelObject *a3, MPModelObject *a4, UITableView *a5, NSIndexPath *a6)
{
  v14 = a4;
  v7 = a2;
  v8 = [(MPModelObject *)v14 title];
  v9 = [(UITableViewCell *)v7 textLabel];
  [v9 setText:v8];

  v10 = +[UIColor _labelColor];
  v11 = [(UITableViewCell *)v7 textLabel];
  [v11 setTextColor:v10];

  v12 = +[UIColor _carSystemFocusLabelColor];
  v13 = [(UITableViewCell *)v7 textLabel];
  [v13 setHighlightedTextColor:v12];

  [(UITableViewCell *)v7 setAccessoryView:0];
  [(UITableViewCell *)v7 setAccessoryType:1];
}

void sub_100107AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100107AE8(uint64_t a1)
{
  result = [*(a1 + 32) _requestType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100107EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v6)
    {
      (*(*(a1 + 80) + 16))();
    }

    else if ([v5 isFinalResponse])
    {
      v7 = [[MPStoreModelPlaylistBuilder alloc] initWithRequestedPropertySet:*(a1 + 40)];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = *(a1 + 48);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v5 storeItemMetadataForItemIdentifier:*(*(&v16 + 1) + 8 * i)];
            if (v13)
            {
              v14 = [*(a1 + 32) userIdentity];
              v15 = [v7 modelObjectWithStoreItemMetadata:v13 userIdentity:v14];

              if (v15)
              {
                [*(a1 + 56) appendItem:v15];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      [*(a1 + 64) setResults:*(a1 + 56)];
      [*(a1 + 64) setAdditionalPlaylistIdentifiers:*(a1 + 72)];
      (*(*(a1 + 80) + 16))();

      v6 = 0;
    }
  }
}

void sub_1001084D4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  switch(v2)
  {
    case 1:
      goto LABEL_6;
    case 2:
      swift_getKeyPath();
      sub_10010FC20(&qword_101180370);
      MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

      swift_getKeyPath();
LABEL_7:
      MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

      return;
    case 4:
LABEL_6:
      swift_getKeyPath();
      sub_10010FC20(&qword_101180370);
      goto LABEL_7;
  }

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, static Logger.libraryView);
  sub_1001103E0(v0, v11);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  sub_100110418(v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136446210;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, v11);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tried to apply unhandled sortOption=%{public}s to movies request.", v6, 0xCu);
    sub_10000959C(v7);
  }
}

uint64_t sub_10010876C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1001087C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_10010FC20(&qword_101180370);
  __chkstk_darwin(v4);
  v26 = v19 - v5;
  v25 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v25);
  v24 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v32 = v4;
  *&v33 = sub_10011096C();
  sub_10001C8B8(v31);
  v11 = type metadata accessor for TitledSection();
  v12 = type metadata accessor for MusicMovie();
  v13 = sub_10010FFCC(&qword_1011800D8, &type metadata accessor for MusicMovie);
  v23 = v11;
  v22 = v13;
  MusicLibrarySectionedRequest.init()();
  swift_retain_n();
  MusicLibrarySectionedRequest.library.setter();
  v21 = *(v2 + 16);
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v14._object = *(v2 + 32);
  v20 = *(v2 + 24);
  v14._countAndFlagsBits = v20;
  v19[3] = v14._object;
  MusicLibrarySectionedRequest.filterItems(text:)(v14);
  sub_1001084D4();
  sub_1000089F8(a1, v10, &unk_1011803F0);
  v15 = *(v12 - 8);
  if ((*(v15 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &unk_1011803F0);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
  }

  else
  {
    *(&v29 + 1) = v12;
    v30 = sub_10010FFCC(&unk_1011A38E0, &type metadata accessor for MusicMovie);
    v16 = sub_10001C8B8(&v28);
    (*(v15 + 32))(v16, v10, v12);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();

  v17 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v17 - 8) + 56))(v27, 0, 1, v17);
}

uint64_t sub_100108ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicMovie();
  v15[6] = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101180370);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v15[5] = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  type metadata accessor for TitledSection();
  sub_10010FFCC(&qword_1011800D8, &type metadata accessor for MusicMovie);
  MusicLibrarySectionedRequest.init()();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*(v1 + 24));
  sub_1001084D4();
  swift_getKeyPath();
  v22[0] = MusicMovie.id.getter();
  v22[1] = v11;
  MusicLibrarySectionedRequest.filterItems<A>(matching:equalTo:)();

  v22[3] = v5;
  v22[4] = sub_10011096C();
  v12 = sub_10001C8B8(v22);
  v16 = v6;
  (*(v6 + 16))(v12, v10, v5);
  v21 = 0;
  v20 = 0u;
  v19 = 0u;
  v17 = a1;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v13 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v13 - 8) + 56))(v17, 0, 1, v13);
  return (*(v16 + 8))(v10, v5);
}

void sub_10010957C(uint64_t a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10010FFCC(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B100(a1, *(v1 + 64));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 88));
}

void sub_1001097B8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 16);
  type metadata accessor for TitledSection();
  type metadata accessor for MusicMovie();
  sub_10010FFCC(&qword_1011800D8, &type metadata accessor for MusicMovie);
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_101180370);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*(&v2 - 8));
  sub_1001084D4();
}

Swift::Int sub_1001098C0()
{
  Hasher.init(_seed:)();
  sub_10010957C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100109904()
{
  Hasher.init(_seed:)();
  sub_10010957C(v1);
  return Hasher._finalize()();
}

uint64_t sub_100109940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10010B864(v9, v10) & 1;
}

uint64_t sub_1001099A4()
{
  String.hash(into:)();
}

uint64_t sub_100109AF0()
{
  String.hash(into:)();
}

uint64_t sub_100109BFC()
{
  String.hash(into:)();
}

uint64_t sub_100109D64()
{
  String.hash(into:)();
}

id variable initialization expression of UnifiedMessages.Coordinator.bag()
{
  v0 = objc_allocWithZone(AMSProcessInfo);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() bagForProfile:v3 profileVersion:v4 processInfo:v2];

  return v5;
}

id variable initialization expression of UnifiedMessages.Coordinator.userDefaults()
{
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v0 = objc_allocWithZone(NSUserDefaults);

  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

double variable initialization expression of GroupActivitiesManager.SuggestionProvider.pendingRegistration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double variable initialization expression of GroupActivitiesManager.SuggestionProvider.playingItemSuggestion@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10010A040(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_10010A094(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_10010A0EC@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_10010A114(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10010A18C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10010A20C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10010A260(uint64_t a1)
{
  v2 = sub_10010FFCC(&qword_101180840, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10010A2CC(uint64_t a1)
{
  v2 = sub_10010FFCC(&qword_101180840, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10010A338(void *a1, uint64_t a2)
{
  v4 = sub_10010FFCC(&qword_101180840, type metadata accessor for AVError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10010A3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FFCC(&qword_101180840, type metadata accessor for AVError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10010A444()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10010A4C0()
{
  sub_10010FFCC(&qword_1011808C8, type metadata accessor for TextStyle);
  sub_10010FFCC(&unk_1011808D0, type metadata accessor for TextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010A57C()
{
  sub_10010FFCC(&qword_10118AC30, type metadata accessor for Key);
  sub_10010FFCC(&qword_101180910, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010A638()
{
  sub_10010FFCC(&qword_1011808F8, _s3__C10IdentifierVMa_0);
  sub_10010FFCC(&unk_101180900, _s3__C10IdentifierVMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010A6F4()
{
  sub_10010FFCC(&qword_1011803A8, type metadata accessor for ActivityType);
  sub_10010FFCC(&qword_1011803B0, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010A7B0(uint64_t a1)
{
  v2 = sub_10010FFCC(&qword_101180808, type metadata accessor for AVError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10010A81C(uint64_t a1)
{
  v2 = sub_10010FFCC(&qword_101180808, type metadata accessor for AVError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10010A888(uint64_t a1)
{
  v2 = sub_10010FFCC(&qword_101180840, type metadata accessor for AVError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10010A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FFCC(&qword_101180840, type metadata accessor for AVError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10010A978()
{
  sub_10010FFCC(&qword_101180888, type metadata accessor for Identifier);
  sub_10010FFCC(&qword_101180890, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

_DWORD *sub_10010AA34@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_10010AA44@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10010AA50()
{
  sub_10010FFCC(&qword_101180878, type metadata accessor for UILayoutPriority);
  sub_10010FFCC(&qword_101180880, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010AB0C()
{
  sub_10010FFCC(&qword_1011808B8, type metadata accessor for Role);
  sub_10010FFCC(&qword_1011808C0, type metadata accessor for Role);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010ABC8()
{
  sub_10010FFCC(&qword_1011808A8, type metadata accessor for OpenURLOptionsKey);
  sub_10010FFCC(&qword_1011808B0, type metadata accessor for OpenURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010AC84()
{
  sub_10010FFCC(&qword_101180898, type metadata accessor for LaunchOptionsKey);
  sub_10010FFCC(&qword_1011808A0, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010AD40()
{
  sub_10010FFCC(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey);
  sub_10010FFCC(&qword_1011808E0, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10010ADFC@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10010AE44()
{
  sub_10010FFCC(&qword_1011808E8, type metadata accessor for OptionsKey);
  sub_10010FFCC(&qword_1011808F0, type metadata accessor for OptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_10010AF08()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_10010AF44(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_10010AF60()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10010AF9C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10010AFF0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10010B064()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void sub_10010B100(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_9:
    Hasher.init(_seed:)();
    v5 &= v5 - 1;
    String.hash(into:)();

    v7 ^= Hasher._finalize()();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10010B284(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_10010FFCC(&unk_101180200, &type metadata accessor for Playlist.Variant);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      Hasher._combine(_:)(v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10010B4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      ++v4;
      String.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

void sub_10010B570(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      ++v4;
      String.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10010B6F0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MusicLibrary();
  v4 = static MusicLibrary.shared.getter();
  v5 = [objc_opt_self() standardUserDefaults];
  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v9);

  v6 = v9;
  LOBYTE(v9) = 7;
  v10 = v4;
  v11 = a1;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = 260;
  v15 = 0xD000000000000011;
  v16 = 0x8000000100E3C9F0;
  v17 = &_swiftEmptySetSingleton;
  v18 = 0;
  v19 = 0xE000000000000000;
  v20 = _swiftEmptyArrayStorage;
  result = sub_1003754F0(v6);
  if ((result & 0xFF00) == 0x200 && (result = sub_10045FDA0(0xC1u), (result & 0xFF00) == 0x200))
  {
    LOBYTE(v8) = 1;
    result = 4;
  }

  else
  {
    v8 = (result >> 8) & 1;
  }

  *a2 = 7;
  *(a2 + 8) = v4;
  *(a2 + 16) = a1 & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = result;
  *(a2 + 41) = v8;
  *(a2 + 48) = 0xD000000000000011;
  *(a2 + 56) = 0x8000000100E3C9F0;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10010B864(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 41);
  v12 = *(a2 + 41);
  if (sub_1006B8B0C(*(a1 + 40), *(a2 + 40)) & 1) == 0 || ((v11 ^ v12))
  {
    return 0;
  }

  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10018FCA0(*(a1 + 64), *(a2 + 64)) & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 88);
  v14 = *(a2 + 88);

  return sub_10047BC00(v13, v14);
}

unint64_t sub_10010BA14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180418);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_101180420);
      v5 = v11;
      result = sub_1006CCC60(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010BB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011801E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1006BE598(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
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

unint64_t sub_10010BC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&unk_101180220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v13, &unk_1011927D0);
      v5 = v13;
      v6 = v14;
      result = sub_100019C10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10010BDB8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011803C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011803D0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011803C8);
      result = sub_1006BE63C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EditorialVideoArtworkFlavor();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for VideoArtwork();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10010C000(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10010FC20(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100019C10(v6, v7);
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

unint64_t sub_10010C0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180210);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v13, &qword_101180218);
      v5 = v13;
      v6 = v14;
      result = sub_100019C10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10010C22C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011805A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010C328(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011805A0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1006BE788(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1006BE788(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10010C424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_101180470);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  result = sub_1006CCC5C(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
    return _swiftEmptyDictionarySingleton;
  }

  v11 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v12 = v3[7] + 24 * result;
    *v12 = v5;
    *(v12 + 1) = v6 & 1;
    *(v12 + 8) = v7;
    *(v12 + 16) = v8;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    sub_100030444(v7);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v11 - 24);
    v5 = *(v11 - 16);
    v6 = *(v11 - 15);
    v7 = *(v11 - 1);
    v8 = *v11;
    result = sub_1006CCC5C(v4);
    v11 += 4;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10010C578(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011801D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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

unint64_t sub_10010C68C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011805C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1006BE85C(v5);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010C780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180588);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010C884(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180580);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010C988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180428);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1006CCC60(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CA80(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180560);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_101180568);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_101180560);
      result = sub_1006BE63C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EditorialVideoArtworkFlavor();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CC68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011804E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011804A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011804B0);
      v5 = v11;
      result = sub_1006CCC60(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010CEA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180278);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1006BE9AC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D008(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = sub_10010FC20(a2);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_10010FC20(a4);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_1000089F8(v14, v10, a2);
      result = sub_1006BE9F0(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for IndexPath();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D1E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180478);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100019C10(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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

unint64_t sub_10010D324(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011805B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011805C0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011805B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100019C10(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180290);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1000089F8(i, v11, &qword_101180298);
      v5 = v11[0];
      result = sub_1006CCC5C(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180458);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &unk_101180460);
      v5 = v11;
      result = sub_1006CCC60(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D77C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10010FC20(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010D874(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011804C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&unk_10118CF50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &unk_1011804C0);
      result = sub_1006BEB14(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SidebarActivityView.Activity();
      result = sub_100110A60(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SidebarActivityView.Activity);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010DA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180488);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1006BE710(v5);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010DB74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10010FC20(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010DC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180430);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100019C10(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010DD70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_101180558);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1006CCC5C(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 8);
    v13 = *v7;

    result = sub_1006CCC5C(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10010DE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011803B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10010DF7C(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10010FC20(&qword_1011801F8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10010FFCC(&unk_101180200, &type metadata accessor for Playlist.Variant);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10010FFCC(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10010E29C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180260);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = v2 + 56;
    while (1)
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10010E380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180598);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      Hasher.init(_seed:)();
      v8 = v7 - 3;
      if ((v7 - 3) >= 6)
      {
        Hasher._combine(_:)(6uLL);
        v8 = v7;
      }

      Hasher._combine(_:)(v8);
      result = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        break;
      }

LABEL_30:
      *(v5 + 8 * v12) = v13 | v14;
      *(v15 + v11) = v7;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v20;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v16 = ~v10;
    while (1)
    {
      v17 = *(v15 + v11);
      if (v17 > 5)
      {
        switch(v17)
        {
          case 6u:
            if (v7 == 6)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 7u:
            if (v7 == 7)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 8u:
            if (v7 == 8)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
        }
      }

      else
      {
        switch(v17)
        {
          case 3u:
            if (v7 == 3)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 4u:
            if (v7 == 4)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 5u:
            if (v7 == 5)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
        }
      }

      if ((v7 - 9) <= 0xF9u && v17 == v7)
      {
        goto LABEL_3;
      }

LABEL_9:
      v11 = (v11 + 1) & v16;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10010E5A8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_10010FC20(&unk_101180440);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = sub_1007E9160(v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10010FFCC(&unk_10118D420, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10010FFCC(&qword_101180450, &type metadata accessor for AnyCancellable);
      do
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *&v7[8 * v12] = v14 | v13;
    *(*(v3 + 6) + 8 * v11) = v8;
    v16 = *(v3 + 2);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}
__n128 sub_10015FEE8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10015FF14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015FF5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10015FFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10015FFE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100160030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA38, type metadata accessor for AchievementSummaryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001601BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA40, type metadata accessor for ActionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100160254()
{
  v0 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&qword_10094AA50);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  if (sub_100318E24())
  {
    sub_10076336C();
    sub_10076F87C();
    sub_100166C0C();
    sub_10076F83C();
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100783C60;
    sub_10076A91C();
    sub_10076A90C();
    sub_10076A8FC();
    v9 = v5;
    sub_100166D08(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68);
    sub_100166BA8();
    sub_1007712CC();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100783DD0;
    sub_10076A90C();
    v9 = v7;
    sub_100166D08(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68);
    sub_100166BA8();
    return sub_1007712CC();
  }
}

uint64_t sub_100160628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA48, type metadata accessor for AnnotationCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100160768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA78, type metadata accessor for AppShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10016087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1001608F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10016097C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100160A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100160B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA80, type metadata accessor for ArcadeShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100160BA0()
{
  sub_10000A5D4(&qword_10094AA58);
  sub_10076A92C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076A90C();
  sub_100166D08(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000A5D4(&qword_10094AA68);
  sub_100166BA8();
  return sub_1007712CC();
}

uint64_t sub_100160D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100160DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100160E60(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100160EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100160FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100161060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001610E4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100161168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

id sub_100161268()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
  *v1 = 0;
  *(v1 + 1) = 0;

  return sub_1003CE7AC();
}

uint64_t sub_1001612C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA88, type metadata accessor for BrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001613E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA90, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100161508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AA98, type metadata accessor for EditorialCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100161628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAA0, type metadata accessor for EditorialQuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10016173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1001617B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10016183C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_1001618C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001619C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAA8, type metadata accessor for FootnoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100161A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAB0, type metadata accessor for FramedArtworkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100161AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAB8, type metadata accessor for FramedVideoCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100161C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAC0, type metadata accessor for GameCenterReengagementCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100161D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100161DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100161E24(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100161EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100161FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAC8, type metadata accessor for HorizontalRuleCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001620AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAD0, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001621C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10016223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001622C0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100162344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001623E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAD8, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001624F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAE0, type metadata accessor for InformationRibbonCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10016260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100162688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10016270C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100162790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100162898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAE8, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001629B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAF0, type metadata accessor for LargeLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100162ACC()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_100227054(0);
}

uint64_t sub_100162B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AAF8, type metadata accessor for LinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100162BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB00, type metadata accessor for MediumLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100162CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100162D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100162DC4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100162E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100162ECC()
{
  v0 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&unk_1009566B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_10076336C();
  sub_10076F87C();
  sub_100111DA4();
  sub_10076F84C();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100783DD0;
    sub_10076A90C();
  }

  else
  {
    sub_10076F83C();
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100783C60;
    sub_10076A91C();
    sub_10076A90C();
    sub_10076A8FC();
  }

  v8 = v5;
  sub_100166D08(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000A5D4(&qword_10094AA68);
  sub_100166BA8();
  sub_1007712CC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10016323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB08, type metadata accessor for ParagraphCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100163370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB10, type metadata accessor for PosterLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100163488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB18, type metadata accessor for PreorderDisclaimerCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001635A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB20, type metadata accessor for PrivacyCategoryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_1001636B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_100371210(0, 0);
  return sub_10037121C(0, 0);
}

uint64_t sub_10016370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB28, type metadata accessor for PrivacyDefinitionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100163824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB30, type metadata accessor for PrivacyFooterCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100163940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB38, type metadata accessor for PrivacyHeaderCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100163A54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_100496C50(0, 0);
  sub_100496C5C(0, 0);
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  sub_10075FCEC(v3, v1);
  sub_100499334();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_100496C68();
}

uint64_t sub_100163AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB40, type metadata accessor for PrivacyTypeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100163C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB48, type metadata accessor for ProductCapabilityCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100163CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB50, type metadata accessor for ProductMediaCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100163D48()
{
  v0 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&qword_10094AB58);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_10076336C();
  sub_10076F87C();
  sub_100166C60();
  sub_10076F84C();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    sub_10076F83C();
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100783C60;
    sub_10076A91C();
    sub_10076A90C();
    sub_10076A8FC();
  }

  else
  {
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100783DD0;
    sub_10076A90C();
  }

  v7 = v5;
  sub_100166D08(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000A5D4(&qword_10094AA68);
  sub_100166BA8();
  sub_1007712CC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10016413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1001641B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10016423C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_1001642C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10016435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB68, type metadata accessor for LinkableTextCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_100164470()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = 0;

  return sub_10032280C();
}

uint64_t sub_1001644C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB70, type metadata accessor for ProductPageLinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001645DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100164658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001646DC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100164760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001647E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100164868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB78, type metadata accessor for ProductLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100164980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB80, type metadata accessor for QuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100164A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100164B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100164B94(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100164C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100164D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100164D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100164E18(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100164E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100164F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100165028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB88, type metadata accessor for SmallBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10016513C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_10076CABC();
}

uint64_t sub_100165194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB90, type metadata accessor for SmallContactCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001652A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100165324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001653A8(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_10016542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001654B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094AB98, type metadata accessor for SmallLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001655CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100165648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001656CC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100165750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001657D4()
{
  v0 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&qword_10094ABA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_10076336C();
  sub_10076F87C();
  sub_100166CB4();
  sub_10076F84C();
  if (v8 == 1)
  {
    sub_10076F83C();
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100783C60;
    sub_10076A91C();
    sub_10076A90C();
    sub_10076A8FC();
  }

  else
  {
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100783DD0;
    sub_10076A90C();
  }

  v8 = v5;
  sub_100166D08(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000A5D4(&qword_10094AA68);
  sub_100166BA8();
  sub_1007712CC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100165BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100165C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100165CBC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_100165D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100165DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094ABB0, type metadata accessor for UberCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100165E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100165F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100031140(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100165FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100166074(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_100076AD0(a1, WitnessTable, a2);
}

uint64_t sub_1001660F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100076D70(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100166200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094ABB8, type metadata accessor for VideoCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100166344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001663C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007619CC();
  sub_100166D08(&unk_10094CD60, &type metadata accessor for SearchAdAction);
  if (sub_10076334C())
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100763FAC();
    v6 = sub_100763FDC();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_100763FDC();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

void (*sub_100166644(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1006DA288();
  return sub_100019FCC;
}

uint64_t sub_1001666BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, WitnessTable);
}

uint64_t sub_1001667C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100166D08(&qword_10094ABC0, type metadata accessor for ArcadeDownloadPackCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10016686C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_10004B630(v2 + v4, a2);
}

uint64_t sub_1001668CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  sub_1000516DC(a1, v4 + v6);
  return swift_endAccess();
}

uint64_t sub_1001669C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100166A48(uint64_t a1)
{
  result = sub_100166D08(&qword_10094AA18, type metadata accessor for TitledParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166AA0(uint64_t a1)
{
  result = sub_100166D08(&qword_10094AA20, type metadata accessor for ProductDescriptionCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166AF8(uint64_t a1)
{
  result = sub_100166D08(&qword_10094AA28, type metadata accessor for ParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166B50(uint64_t a1)
{
  result = sub_100166D08(&qword_10094AA30, type metadata accessor for AnnotationCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100166BA8()
{
  result = qword_10094AA70;
  if (!qword_10094AA70)
  {
    sub_10000CE78(&qword_10094AA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AA70);
  }

  return result;
}

unint64_t sub_100166C0C()
{
  result = qword_1009566F0;
  if (!qword_1009566F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009566F0);
  }

  return result;
}

unint64_t sub_100166C60()
{
  result = qword_10094AB60;
  if (!qword_10094AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AB60);
  }

  return result;
}

unint64_t sub_100166CB4()
{
  result = qword_10094ABA8;
  if (!qword_10094ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ABA8);
  }

  return result;
}

uint64_t sub_100166D08(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100166D80(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  v11 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_allocWithZone(UIView);
  v13 = v11;
  v14 = [v12 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v14 layer];
  [v15 setCornerRadius:20.0];

  v16 = v13;
  [v16 setBackgroundView:v14];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v16 contentView];
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v16;
}

void sub_100167044()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView];
  if (v5)
  {
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = *&v0[v4];
      if (v6)
      {
        v7 = v6;
        [v0 bounds];
        [v7 setFrame:?];
      }
    }
  }

  v8 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView;
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (v9 && ([v9 isHidden] & 1) == 0)
  {
    v10 = *&v0[v8];
    if (v10)
    {
      v11 = v10;
      [v0 bounds];
      [v11 setFrame:?];
    }
  }
}

id sub_10016722C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *&v2[v3];
    *&v2[v3] = v6;
    v5 = v6;

    v8 = [v2 contentView];
    [v8 addSubview:v5];

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_1001672D4()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v12, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView];
  if (v2)
  {
    [v2 setHidden:1];
    v3 = *&v0[v1];
    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
      v5 = *&v3[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
      *v4 = 0;
      v4[1] = 0;
      v6 = v3;
      sub_1000167E0(v5);
      v7 = &v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
      v8 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
      *v7 = 0;
      v7[1] = 0;
      sub_1000167E0(v8);
      v9 = *v4;
      *v4 = 0;
      v4[1] = 0;
      sub_1000167E0(v9);
      v10 = *v7;
      *v7 = 0;
      v7[1] = 0;
      sub_1000167E0(v10);
    }
  }

  result = *&v0[OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

void sub_100167414()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      aBlock[4] = sub_100167C70;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088A3F8;
      v6 = _Block_copy(aBlock);
      v7 = v2;

      [v4 animateWithDuration:v6 animations:0.5];
      _Block_release(v6);

      return;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v3)
  {
    v8 = v3;
    if (![v8 isHidden])
    {
      [v8 setClipsToBounds:0];
    }
  }
}

void sub_100167590(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_1000CC728;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_10088A358;
LABEL_10:
      v13 = sub_10009AEDC;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_100167C68;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_10088A3A8;
    goto LABEL_10;
  }

LABEL_12:
}

void sub_100167770(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_1000CC708;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_10088A2B8;
LABEL_10:
      v13 = sub_10009AEDC;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_100167C60;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_10088A308;
    goto LABEL_10;
  }

LABEL_12:
}

id sub_100167950()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v5 = &OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView;
      goto LABEL_10;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (!v3)
  {
    return 0;
  }

  v2 = v3;
  if ([v2 isHidden])
  {

    return 0;
  }

  v5 = &OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer;
LABEL_10:
  v6 = *&v2[*v5];

  return v6;
}

id sub_100167A04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewCollectionViewCell()
{
  result = qword_10094AC00;
  if (!qword_10094AC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100167AEC()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100167B94()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v1)
  {
    v2 = v1;
    if (([v2 isHidden] & 1) == 0)
    {
      [v2 setClipsToBounds:1];
    }
  }
}

uint64_t sub_100167C10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100167C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100167CA8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A16D8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v28 = v1[13];
  v28(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_10076D9AC();
  v37 = v27;
  v38 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v36);
  v34 = v0;
  v35 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v33);
  v26 = v1[2];
  v26(v11, v3, v0);
  sub_10076D9BC();
  v12 = v1[1];
  v24 = v1 + 1;
  v25 = v12;
  v12(v3, v0);
  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v4, qword_1009A16F0);
  v21[0] = v7;
  v21[1] = v8;
  v7(v3, v13, v4);
  v14 = v28;
  v28(v3, v9, v0);
  v23 = v10;
  v15 = v27;
  v34 = v27;
  v35 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v33);
  v22 = v9;
  v31 = v0;
  v32 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v30);
  v17 = v26;
  v26(v16, v3, v0);
  sub_10076D9BC();
  v18 = v25;
  v25(v3, v0);
  (v21[0])(v3, v13, v4);
  v14(v3, v22, v0);
  v31 = v15;
  v32 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v30);
  v29[3] = v0;
  v29[4] = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v29);
  v17(v19, v3, v0);
  sub_10076D9BC();
  v18(v3, v0);
  xmmword_10099D2E0 = vdupq_n_s64(0x4044000000000000uLL);
  *algn_10099D2F0 = xmmword_1007905C0;
  xmmword_10099D300 = xmmword_1007905D0;
  sub_10003F19C(&v33, &unk_10099D338);
  sub_10003F19C(&v36, &unk_10099D310);
  return sub_10003F19C(&v30, &unk_10099D360);
}

char *sub_1001680D8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10075FEEC();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076E1EC();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076E21C();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v71 - v15;
  v16 = sub_10076771C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v20 - 8);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v24 = sub_10076341C();
  (*(*(v24 - 8) + 56))(&v4[v23], 1, 1, v24);
  v25 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10093F860 != -1)
  {
    swift_once();
  }

  v74 = v17;
  v75 = xmmword_10099D2E0;
  *&v4[v25] = xmmword_10099D2E0;
  v73 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_alias;
  v86 = v4;
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D3DC();
  v27 = sub_10000A61C(v26, qword_1009A16D8);
  v28 = *(v26 - 8);
  v72 = *(v28 + 16);
  v72(v22, v27, v26);
  v71 = *(v28 + 56);
  v71(v22, 0, 1, v26);
  v29 = enum case for DirectionalTextAlignment.none(_:);
  v30 = *(v74 + 104);
  v30(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v31 = sub_1007626BC();
  v74 = v16;
  v32 = v31;
  v33 = objc_allocWithZone(v31);
  *&v86[v73] = sub_1007626AC();
  v73 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v26, qword_1009A16F0);
  v72(v22, v34, v26);
  v71(v22, 0, 1, v26);
  v30(v19, v29, v74);
  v35 = objc_allocWithZone(v32);
  v36 = sub_1007626AC();
  v37 = v86;
  *&v86[v73] = v36;
  v38 = &v37[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_insets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v38 = UIEdgeInsetsZero.top;
  v38[1] = left;
  v38[2] = bottom;
  v38[3] = right;
  v42 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v76 + 104))(v79, enum case for Separator.Position.bottom(_:), v77);
  v88[3] = sub_10076D67C();
  v88[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v88);
  sub_10076D66C();
  v43 = v78;
  sub_10076E1FC();
  v44 = v80;
  sub_10076E1BC();
  v46 = v81;
  v45 = v82;
  (*(v81 + 8))(v43, v82);
  v47 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v48 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v49 = *(v46 + 40);
  v50 = v47;
  v49(&v47[v48], v44, v45);
  swift_endAccess();

  *&v37[v42] = v50;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v51 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  v87.receiver = v37;
  v87.super_class = v51;
  v52 = objc_msgSendSuper2(&v87, "initWithFrame:", a1, a2, a3, a4);
  v53 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView;
  v54 = *&v52[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView];
  sub_100016F40(0, &qword_100942F10);
  v55 = v52;
  v56 = v54;
  sub_100770D5C();
  sub_10075FB8C();

  v57 = *&v52[v53];
  v58 = v83;
  sub_1007638FC();
  sub_10075FD1C();

  (*(v84 + 8))(v58, v85);
  v59 = [v55 contentView];
  [v59 addSubview:*&v52[v53]];

  v60 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_alias;
  v61 = *&v55[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_alias];
  v62 = sub_100770CFC();
  [v61 setTextColor:v62];

  v63 = [v55 contentView];
  [v63 addSubview:*&v55[v60]];

  v64 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_displayName;
  v65 = *&v55[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_displayName];
  v66 = sub_100770D1C();
  [v65 setTextColor:v66];

  v67 = [v55 contentView];
  [v67 addSubview:*&v55[v64]];

  v68 = [v55 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v69 = [v55 contentView];
  [v69 addSubview:*&v55[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView]];

  return v55;
}

uint64_t sub_100168AB4()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076E21C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  v40.receiver = v1;
  v40.super_class = v10;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView];
  [v1 bounds];
  v12 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v11[v12], v6);
  sub_10076E1CC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  [v11 setFrame:{v14, v16, v18, v20}];
  v21 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (qword_10093F860 != -1)
  {
    swift_once();
  }

  sub_1001691A0(&xmmword_10099D2E0, v37);
  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView];
  v37[24] = sub_10075FD2C();
  v37[25] = &protocol witness table for UIView;
  v37[21] = v30;
  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_alias];
  v38 = sub_1007626BC();
  v39 = &protocol witness table for UILabel;
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_displayName];
  v37[30] = &protocol witness table for UILabel;
  v37[31] = v31;
  v37[29] = v38;
  v37[26] = v32;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v23, v25, v27, v29);
  (*(v3 + 8))(v5, v2);
  return sub_1001691FC(v37);
}

id sub_100168E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallGameCenterPlayerCollectionViewCell()
{
  result = qword_10094AC38;
  if (!qword_10094AC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100168F6C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100169048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_1001690B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_100169120(uint64_t a1)
{
  result = sub_100169148();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100169148()
{
  result = qword_10094AC48;
  if (!qword_10094AC48)
  {
    type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AC48);
  }

  return result;
}

void sub_100169250()
{
  v1 = sub_10076E1EC();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076E21C();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v41 - v6;
  v7 = sub_10076771C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  v15 = *(*(v14 - 8) + 56);
  v54 = v0;
  v15(v0 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10093F860 != -1)
  {
    swift_once();
  }

  v43 = xmmword_10099D2E0;
  *(v54 + v16) = xmmword_10099D2E0;
  v42 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_alias;
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_1009A16D8);
  v19 = *(v17 - 8);
  v41 = *(v19 + 16);
  v41(v12, v18, v17);
  v20 = *(v19 + 56);
  v20(v12, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v8 + 104);
  v44 = v8 + 104;
  v45 = v7;
  v22(v53, enum case for DirectionalTextAlignment.none(_:), v7);
  v23 = sub_1007626BC();
  v24 = objc_allocWithZone(v23);
  *(v54 + v42) = sub_1007626AC();
  v25 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v17, qword_1009A16F0);
  v41(v12, v26, v17);
  v20(v12, 0, 1, v17);
  v22(v53, v21, v45);
  v27 = objc_allocWithZone(v23);
  v28 = sub_1007626AC();
  v29 = v54;
  *(v54 + v25) = v28;
  v30 = (v29 + OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_insets);
  v31 = *&UIEdgeInsetsZero.bottom;
  *v30 = *&UIEdgeInsetsZero.top;
  v30[1] = v31;
  v32 = OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v46 + 104))(v49, enum case for Separator.Position.bottom(_:), v47);
  v55[3] = sub_10076D67C();
  v55[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v55);
  sub_10076D66C();
  v33 = v48;
  sub_10076E1FC();
  v34 = v50;
  sub_10076E1BC();
  v36 = v51;
  v35 = v52;
  (*(v51 + 8))(v33, v52);
  v37 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v39 = *(v36 + 40);
  v40 = v37;
  v39(&v37[v38], v34, v35);
  swift_endAccess();

  *(v29 + v32) = v40;
  sub_10077156C();
  __break(1u);
}

char *sub_100169884(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_10075FEEC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC20ProductPageExtension24TodayCardPlaceholderView_shadowView;
  *&v5[v17] = [objc_allocWithZone(sub_10075F99C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension24TodayCardPlaceholderView_cardPlaceholder;
  v19 = *(v14 + 104);
  v42 = enum case for CornerStyle.continuous(_:);
  v41 = v19;
  v19(v16);
  sub_10076394C();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 secondarySystemBackgroundColor];
  [v22 setBackgroundColor:v23];

  sub_1007638AC();
  v40 = *(v14 + 8);
  v40(v16, v13);
  *&v5[v18] = v22;
  v24 = type metadata accessor for TodayCardPlaceholderView();
  v43.receiver = v5;
  v43.super_class = v24;
  v25 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v30 = OBJC_IVAR____TtC20ProductPageExtension24TodayCardPlaceholderView_shadowView;
  v31 = qword_10093F878;
  v32 = *&v29[OBJC_IVAR____TtC20ProductPageExtension24TodayCardPlaceholderView_shadowView];
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_10076BCFC();
  v34 = sub_10000A61C(v33, qword_10099D408);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v12, v34, v33);
  (*(v35 + 56))(v12, 0, 1, v33);
  sub_10075F97C();

  v36 = *&v29[v30];
  v41(v16, v42, v13);
  v37 = v36;
  sub_10075F98C();

  v40(v16, v13);
  [v29 addSubview:*&v29[v30]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension24TodayCardPlaceholderView_cardPlaceholder]];

  return v29;
}

id sub_100169D5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100169E00()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension24TodayCardPlaceholderView_shadowView;
  *(v1 + v6) = [objc_allocWithZone(sub_10075F99C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC20ProductPageExtension24TodayCardPlaceholderView_cardPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10076394C();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v11];

  sub_1007638AC();
  (*(v3 + 8))(v5, v2);
  *(v1 + v7) = v10;
  sub_10077156C();
  __break(1u);
}

double sub_100169FE8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940568 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D9AC();
  sub_10000A61C(v13, qword_10099FAA0);
  swift_getObjectType();
  sub_10076D17C();
  sub_10076D40C();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SmallLockupView();
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v14 = sub_100763ADC();
  v15 = sub_10000A61C(v14, qword_10099DDA0);
  sub_100262AD0(v15, a7);
  return a1;
}

uint64_t sub_10016A1CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_100763ADC();
  sub_10000A61C(v2, qword_10099DDA0);
  sub_1007639AC();
  sub_100766E2C();
  v3 = sub_100766E4C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_10016A320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016A368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_10000A5D4(&unk_100946760);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v30 - v20;
  v22 = [v3 contentView];
  [v22 layoutMargins];
  [v22 setLayoutMargins:?];

  v23 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView];
  v24 = sub_10000A5D4(&qword_100945590);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_10075F78C();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_1007628DC();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_10000A5D4(&unk_100946750);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = sub_10076C54C();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_1004D0A60(a1, v23, v21, a3, 0, 0, v17, v14, v8, v11);
  sub_10000CFBC(v8, &unk_100949290);
  v23[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10026202C();
  [v23 setNeedsLayout];
  sub_10000CFBC(v11, &qword_10094F730);
  sub_10000CFBC(v14, &unk_1009492A0);
  sub_10000CFBC(v17, &unk_10094D210);
  return sub_10000CFBC(v21, &unk_100946760);
}

void sub_10016A850(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 collectionView];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = &selRef_initWithTabBarSystemItem_tag_;
  [v16 bounds];
  v18 = [v5 layoutAttributesForElementsInRect:?];
  if (!v18 || ((v19 = v18, sub_1000DE4D0(), v20 = sub_1007701BC(), v19, v20 >> 62) ? (v21 = sub_10077158C()) : (v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v21))
  {

LABEL_17:
    v52 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
    v57.receiver = v5;
    v57.super_class = v52;
    objc_msgSendSuper2(&v57, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v22 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v56.receiver = v5;
  v56.super_class = v22;
  objc_msgSendSuper2(&v56, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  [v16 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v58.origin.x = v24;
  v58.origin.y = v26;
  v58.size.width = v28;
  v58.size.height = v30;
  Width = CGRectGetWidth(v58);
  [v5 collectionViewContentSize];
  if (a1 <= 0.0 || floor(v32) <= Width + a1)
  {
LABEL_15:

    return;
  }

  v33 = [v16 numberOfItemsInSection:0];
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v33)
    {
      v53 = a3;
      v34 = 0;
      v54 = (v11 + 8);
      v35 = 0.0;
      v55 = xmmword_100784500;
      do
      {
        v37 = v33;
        v38 = v17;
        sub_10000A5D4(&qword_100952110);
        v39 = swift_allocObject();
        *(v39 + 16) = v55;
        *(v39 + 32) = 0;
        *(v39 + 40) = v34;
        sub_10075E01C();
        isa = sub_10075E02C().super.isa;
        (*v54)(v14, v10);
        v41 = [v5 layoutAttributesForItemAtIndexPath:isa];

        if (!v41)
        {
          break;
        }

        v17 = v38;
        [v41 v38[105]];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v59.origin.x = v43;
        v59.origin.y = v45;
        v59.size.width = v47;
        v59.size.height = v49;
        v50 = CGRectGetWidth(v59);
        [v5 minimumLineSpacing];
        if (v35 < a1 && v35 + v50 + v51 > a1)
        {
          break;
        }

        ++v34;
        [v5 minimumLineSpacing];
        v35 = v35 + v50 + v36;
        v33 = v37;
      }

      while (v37 != v34);
    }

    goto LABEL_15;
  }

  __break(1u);
}

id sub_10016ACCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10016AD24(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_iconPlaceholder;
  sub_10075FD2C();
  v11 = sub_10075FB3C();
  sub_1007638EC();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_headingPlaceholder;
  sub_1007600FC();
  v13 = sub_1007600BC();
  v15 = sub_1004B958C(v13, v14, UIFontTextStyleFootnote);

  *&v5[v12] = v15;
  v16 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_titlePlaceholder;
  v17 = sub_1007600EC();
  v19 = sub_1004B958C(v17, v18, UIFontTextStyleBody);

  *&v5[v16] = v19;
  v20 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_subtitlePlaceholder;
  v21 = sub_10076009C();
  v23 = sub_1004B958C(v21, v22, UIFontTextStyleFootnote);

  *&v5[v20] = v23;
  v24 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_contentType;
  v26 = enum case for Shelf.ContentType.smallLockup(_:);
  v27 = sub_10076B5BC();
  (*(*(v27 - 8) + 104))(&v5[v25], v26, v27);
  v5[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] = 0;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for LockupPlaceholderView();
  v28 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_iconPlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_titlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_subtitlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_offerButtonPlaceholder]];

  return v32;
}

uint64_t sub_10016AFE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_contentType;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, v1 + v10, v3);
  v12 = (*(v4 + 88))(v9, v3);
  if (v12 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return sub_10016B240(a1);
  }

  if (v12 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return sub_10016B758(a1);
  }

  if (v12 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return sub_10016BC38(a1);
  }

  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  sub_10077145C(44);
  v11(v6, v1 + v10, v3);
  sub_10077151C();
  (*(v4 + 8))(v6, v3);
  v15._object = 0x80000001007D1100;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1007700CC(v15);
  result = sub_10077156C();
  __break(1u);
  return result;
}

uint64_t sub_10016B240@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_10076997C();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763ADC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v6, qword_10099DDA0);
  v38 = v7;
  v14 = *(v7 + 16);
  v14(v12, v13, v6);
  sub_100763A5C();
  sub_100763A1C();
  v37 = v9;
  v14(v9, v12, v6);
  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_iconPlaceholder);
  v59[8] = sub_10075FD2C();
  v59[9] = &protocol witness table for UIView;
  v59[5] = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = sub_10076C04C();
  v59[3] = v19;
  v59[4] = sub_10016C474(&qword_100943230, &type metadata accessor for Feature);
  v20 = sub_10000DB7C(v59);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
  sub_10076C90C();
  sub_10000CD74(v59);
  sub_10076996C();
  sub_10076994C();
  (*(v3 + 8))(v5, v35);
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_headingPlaceholder);
    v22 = sub_100016F40(0, &qword_100956550);
    v23 = v21;
    v24 = &protocol witness table for UILabel;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v21 = 0;
    v55 = 0;
    v56 = 0;
  }

  v57 = v22;
  v58 = v24;
  v54 = v21;
  v25 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_titlePlaceholder);
  v52 = sub_100016F40(0, &qword_100956550);
  v53 = &protocol witness table for UILabel;
  v50 = &protocol witness table for UILabel;
  v51 = v25;
  v26 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_subtitlePlaceholder);
  v49 = v52;
  v48 = v26;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v27 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_offerButtonPlaceholder);
  v40 = sub_100016F40(0, &qword_1009441F0);
  v41 = &protocol witness table for UIView;
  v39 = v27;
  v28 = sub_100763AFC();
  v29 = v36;
  v36[3] = v28;
  v29[4] = sub_10016C474(&qword_10094AD78, &type metadata accessor for SmallLockupLayout);
  v29[5] = sub_10016C474(&qword_10094F010, &type metadata accessor for SmallLockupLayout);
  sub_10000DB7C(v29);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  sub_100763AEC();
  return (*(v38 + 8))(v12, v6);
}

uint64_t sub_10016B758@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_10076997C();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076428C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  type metadata accessor for MediumLockupCollectionViewCell();
  v13 = [v1 traitCollection];
  sub_1002AAFCC(v12);

  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_offerButtonPlaceholder];
  [v14 sizeThatFits:{0.0, 0.0}];
  sub_10076427C();
  v15 = *(v7 + 16);
  v37 = v9;
  v38 = v6;
  v15(v9, v12, v6);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_iconPlaceholder];
  v59 = sub_10075FD2C();
  v60 = &protocol witness table for UIView;
  v58 = v16;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_headingPlaceholder];
    v18 = sub_100016F40(0, &qword_100956550);
    v19 = v17;
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v17 = 0;
    v54 = 0;
    v55 = 0;
  }

  v56 = v18;
  v57 = v20;
  v53 = v17;
  v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_titlePlaceholder];
  v51 = sub_100016F40(0, &qword_100956550);
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_subtitlePlaceholder];
  v48 = v51;
  v46 = 0;
  v47 = v22;
  v44 = 0u;
  v45 = 0u;
  v23 = objc_opt_self();
  v24 = v16;
  v25 = v21;
  v26 = v22;
  v27 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
  v28 = sub_10076C04C();
  v43[3] = v28;
  v43[4] = sub_10016C474(&qword_100943230, &type metadata accessor for Feature);
  v29 = sub_10000DB7C(v43);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  sub_10076C90C();
  sub_10000CD74(v43);
  sub_10076996C();
  sub_10076994C();
  (*(v35 + 8))(v5, v36);
  v41 = sub_100016F40(0, &qword_1009441F0);
  v42 = &protocol witness table for UIView;
  v40 = v14;
  v30 = sub_1007642AC();
  v31 = v39;
  v39[3] = v30;
  v31[4] = sub_10016C474(&qword_10094AD68, &type metadata accessor for MediumLockupLayout);
  v31[5] = sub_10016C474(&qword_10094AD70, &type metadata accessor for MediumLockupLayout);
  sub_10000DB7C(v31);
  v32 = v14;
  sub_10076429C();
  return (*(v7 + 8))(v12, v38);
}

uint64_t sub_10016BC38@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1007634CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FD60 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v3, qword_10099E3E8);
  (*(v4 + 16))(v6, v7, v3);
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_iconPlaceholder);
  v34 = sub_10075FD2C();
  v35 = &protocol witness table for UIView;
  v33 = v8;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_headingPlaceholder);
    v10 = sub_100016F40(0, &qword_100956550);
    v11 = v9;
    v12 = &protocol witness table for UILabel;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = 0;
    v29 = 0;
    v30 = 0;
  }

  v31 = v10;
  v32 = v12;
  v28 = v9;
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_titlePlaceholder);
  v26 = sub_100016F40(0, &qword_100956550);
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_subtitlePlaceholder);
  v23 = v26;
  v22 = v14;
  v15 = sub_1007634EC();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  a1[3] = v15;
  a1[4] = sub_10016C474(&qword_10094AD58, &type metadata accessor for LargeLockupLayout);
  a1[5] = sub_10016C474(&qword_10094AD60, &type metadata accessor for LargeLockupLayout);
  sub_10000DB7C(a1);
  v16 = v8;
  v17 = v13;
  v18 = v14;
  return sub_1007634DC();
}

uint64_t sub_10016BFAC()
{
  v1 = sub_10076D1FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1007634EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LockupPlaceholderView();
  v13.receiver = v0;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  sub_10016AFE0(v12);
  if (v0[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    [v0 insertSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_headingPlaceholder] belowSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_titlePlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_headingPlaceholder] removeFromSuperview];
  }

  sub_10016C4BC(v12, v11);
  sub_10000A5D4(&qword_10094AD80);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v8, v5);
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_offerButtonPlaceholder] removeFromSuperview];
  }

  else
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_offerButtonPlaceholder]];
  }

  sub_10000CF78(v12, v12[3]);
  sub_10076422C();
  sub_10076DFCC();
  (*(v2 + 8))(v4, v1);
  return sub_10000CD74(v12);
}

id sub_10016C27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupPlaceholderView()
{
  result = qword_10094AD48;
  if (!qword_10094AD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016C3C4()
{
  result = sub_10076B5BC();
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

uint64_t sub_10016C474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016C4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10016C520()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_iconPlaceholder;
  sub_10075FD2C();
  v3 = sub_10075FB3C();
  sub_1007638EC();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_headingPlaceholder;
  sub_1007600FC();
  v5 = sub_1007600BC();
  v7 = sub_1004B958C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_titlePlaceholder;
  v9 = sub_1007600EC();
  v11 = sub_1004B958C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_subtitlePlaceholder;
  v13 = sub_10076009C();
  v15 = sub_1004B958C(v13, v14, UIFontTextStyleFootnote);

  *(v1 + v12) = v15;
  v16 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.smallLockup(_:);
  v19 = sub_10076B5BC();
  (*(*(v19 - 8) + 104))(v1 + v17, v18, v19);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder) = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_10016C6DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_gradientView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_materialView;
  *&v4[v11] = [objc_allocWithZone(UIVisualEffectView) init];
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_gradientView;
  v14 = *&v12[OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_gradientView];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_materialView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_materialView]];
  v17 = *&v12[v13];
  v17[OBJC_IVAR____TtC20ProductPageExtension12GradientView_kind] = 2;
  v18 = v17;
  v19 = [v18 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  [*&v12[v13] setAlpha:0.5];
  v20 = *&v12[v13];
  v21 = [v20 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v22 = *&v12[v13];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v24 = *&v15[v16];
  sub_10000A5D4(&unk_100942870);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100785D70;
  v26 = objc_opt_self();
  v27 = v24;
  result = [v26 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v25 + 32) = result;
    *(v25 + 40) = [objc_opt_self() colorEffectSaturate:1.5];
    sub_10016D480();
    isa = sub_1007701AC().super.isa;

    [v27 setBackgroundEffects:isa];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10016CB94()
{
  v1 = v0;
  v2 = sub_10076AA6C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ShelfBackgroundMaterialGradientColors.oneColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    sub_10000A5D4(&unk_100942870);
    result = swift_allocObject();
    *(result + 1) = xmmword_1007841E0;
    result[4] = v8;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.twoColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10000A5D4(&unk_100942870);
    result = swift_allocObject();
    v10 = *v6;
    *(result + 1) = xmmword_100785D70;
    *(result + 2) = v10;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.threeColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v11 = *v6;
    sub_10000A5D4(&unk_100942870);
    result = swift_allocObject();
    *(result + 1) = xmmword_100784DC0;
    result[4] = v11;
    *(result + 5) = vextq_s8(*(v6 + 8), *(v6 + 8), 8uLL);
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.fourColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10000A5D4(&unk_100942870);
    result = swift_allocObject();
    v12 = *v6;
    v13 = *(v6 + 1);
    *(result + 1) = xmmword_100786040;
    *(result + 2) = v12;
    *(result + 3) = v13;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10016CEA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007621EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076AA6C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v5 + 96))(v7, v4);
    v13 = *(sub_10000A5D4(qword_10094ADC0) + 48);
    (*(v9 + 32))(v12, v7, v8);
    v14 = sub_1007659CC();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v41 = v12;
    v15 = sub_10016CB94();
    v16 = v15;
    v44 = *&v2[OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_gradientView];
    v42 = v9;
    if (v15 >> 62)
    {
      goto LABEL_45;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      do
      {
        v47 = _swiftEmptyArrayStorage;
        v19 = sub_1007714EC();
        if ((v18 & 0x8000000000000000) == 0)
        {
          v40 = v8;
          v20 = 0;
          v8 = 0;
          v21 = 0;
          v45 = v16 & 0xFFFFFFFFFFFFFF8;
          v46 = v16 & 0xC000000000000001;
          v43 = v16;
          v16 += 32;
          do
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            if (v21)
            {
              goto LABEL_48;
            }

            if (!v17)
            {
              goto LABEL_39;
            }

            v23 = v8 % v17;
            if (v46)
            {
              v24 = sub_10077149C();
            }

            else
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_40;
              }

              if (v23 >= *(v45 + 16))
              {
                goto LABEL_41;
              }

              v24 = *(v16 + 8 * v23);
            }

            v25 = v24;
            v26 = v2;
            v27 = [v2 traitCollection];
            v28 = [v27 userInterfaceStyle];

            v29 = 0.3;
            if (v28 == 2)
            {
              v29 = 0.5;
            }

            v30 = [v25 colorWithAlphaComponent:v29];

            sub_1007714CC();
            v2 = v47[2];
            sub_1007714FC();
            sub_10077150C();
            v19 = sub_1007714DC();
            v21 = v8 == v17;
            if (v8 == v17)
            {
              v8 = 0;
            }

            else
            {
              v31 = __OFADD__(v8++, 1);
              if (v31)
              {
                goto LABEL_43;
              }
            }

            ++v20;
            v2 = v26;
          }

          while (v22 != v18);
          *&v44[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v47;

          sub_1001C05B8();
          v47 = _swiftEmptyArrayStorage;
          v19 = sub_1004BBAA4(0, v18, 0);
          v16 = 0;
          v32 = 0;
          v33 = 0;
          v34 = v47;
          while (1)
          {
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v33)
            {
              goto LABEL_49;
            }

            v47 = v34;
            v36 = *(v34 + 16);
            v35 = *(v34 + 24);
            if (v36 >= v35 >> 1)
            {
              v19 = sub_1004BBAA4((v35 > 1), v36 + 1, 1);
              v34 = v47;
            }

            *(v34 + 16) = v36 + 1;
            *(v34 + 8 * v36 + 32) = v32 / v17;
            v33 = v32 == v17;
            if (v32 == v17)
            {
              v32 = 0;
            }

            else
            {
              v31 = __OFADD__(v32++, 1);
              if (v31)
              {
                goto LABEL_44;
              }
            }

            ++v16;
            if (v8 == v18)
            {

              v37 = v44;
              sub_1001C0414(v34);
              if (v17 == 4)
              {
                v38 = 0.0;
              }

              else
              {
                v38 = 0.5;
              }

              v39 = [v37 layer];
              objc_opt_self();
              [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v38, 0.0}];

              [v37 setNeedsDisplay];
              [v26 setNeedsLayout];
              (*(v42 + 8))(v41, v40);
              return;
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v19 = sub_10077158C();
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v17 = v19;
        v18 = v19 + 1;
      }

      while (!__OFADD__(v19, 1));
    }

    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    *(*&v2[OBJC_IVAR____TtC20ProductPageExtension37MaterialGradientSectionBackgroundView_gradientView] + OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors) = _swiftEmptyArrayStorage;

    sub_1001C05B8();
    sub_1001C0414(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10016D480()
{
  result = qword_1009492C0;
  if (!qword_1009492C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009492C0);
  }

  return result;
}

void *sub_10016D554(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1004BB7D4(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000A570(v4, v16);
      sub_10000A5D4(&unk_100953E10);
      sub_10000A5D4(&qword_10094CF50);
      swift_dynamicCast();
      v20 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004BB7D4((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_10008B8A4(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_10016FC14(v6, v12, &v20, v7, v8);
      sub_10000CD74(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10016D72C(uint64_t a1)
{
  v2 = sub_10076DE7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1004BB834(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_1004BB834((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for VerticalSpaceMeasurable;
      v14 = sub_10000DB7C(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_100012498(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_10016D8F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1004BB874(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10077149C();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1004BB874((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000CD64(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1004BB874((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000CD64(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10016DAC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004BBA04(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_10000A5D4(&unk_100943470);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004BBA04((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10016DBDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1004BB874(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_10000A5D4(&unk_100948BD8);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004BB874((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10000CD64(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_10016DD04(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = _swiftEmptyArrayStorage;
  result = sub_1004BB874(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_10077149C();
        sub_100016F40(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_1004BB874((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_10000CD64(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_100016F40(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_1004BB874((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_10000CD64(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10016DF94(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, void *))
{
  if (a1 >> 62)
  {
    v10 = sub_10077158C();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v26 = _swiftEmptyArrayStorage;
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = sub_10077149C();
        v26 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v22(v15 > 1, v16 + 1, 1);
          v11 = v26;
        }

        ++v13;
        v24 = a3(0);
        v25 = a4;
        v23[0] = v14;
        v11[2] = v16 + 1;
        a5(v23, &v11[5 * v16 + 4]);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v26 = v11;
        v19 = v11[2];
        v20 = v11[3];
        v21 = v18;
        if (v19 >= v20 >> 1)
        {
          v22(v20 > 1, v19 + 1, 1);
          v11 = v26;
        }

        v24 = a3(0);
        v25 = a4;
        v23[0] = v21;
        v11[2] = v19 + 1;
        a5(v23, &v11[5 * v19 + 4]);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

void *sub_10016E174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004BBC08(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1004BBC08((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[5 * v5];
      v6[8] = v10;
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10016E360(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1004BB7D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_10077149C();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1004BB7D4((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_10076DDDC();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_100012498(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_1004BB7D4((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_10076DDDC();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_100012498(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10016E5F0(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_10077158C();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v22 = _swiftEmptyArrayStorage;
  result = sub_1004BBAE4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = sub_10077149C();
        v22 = v9;
        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_1004BBAE4((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_10016FD50(a3, a4);
        *&v19 = v12;
        v9[2] = v14 + 1;
        sub_100012498(&v19, &v9[5 * v14 + 4]);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = v9[2];
        v17 = v9[3];

        if (v18 >= v17 >> 1)
        {
          sub_1004BBAE4((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_10016FD50(a3, a4);
        *&v19 = v16;
        v9[2] = v18 + 1;
        sub_100012498(&v19, &v9[5 * v18 + 4]);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void *sub_10016E87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1004BBC88(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_10000A5D4(&qword_10094AE78);
      sub_10000A5D4(&qword_10094AE80);
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_1004BBC88((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_100012498(&v9, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10016EA00(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1004BB7D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_10077149C();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1004BB7D4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100016F40(0, &qword_1009441F0);
        v16 = &protocol witness table for UIView;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100012498(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1004BB7D4((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100016F40(0, &qword_1009441F0);
        v16 = &protocol witness table for UIView;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100012498(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10016EBF4(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    sub_100016F40(0, a2);

    v5 = sub_10077157C();

    return v5;
  }

  else
  {

    sub_10077168C();
    sub_100016F40(0, a2);
    return a1;
  }
}

uint64_t sub_10016ECE0()
{
  v0 = sub_10075E11C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0CC();
  sub_10075E0EC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10016EDC4()
{
  v0 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v0 - 8);
  sub_10077140C();
  sub_10076FDEC();

  sub_10000A5D4(&unk_1009520B0);
  sub_100071820(&qword_1009564C0, &unk_1009520B0);
  return sub_10076F82C();
}

void sub_10016EF48(uint64_t a1@<X8>)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) == 1)
  {
    sub_10075E08C();
    sub_100761B3C();
    (*(v4 + 8))(v6, v3);
    sub_10000A5D4(&qword_1009575A0);
    sub_10000A5D4(&qword_10094AE68);
    if (swift_dynamicCast())
    {
      sub_100012498(v8, v10);
      v7 = v10[1];
      *a1 = v10[0];
      *(a1 + 16) = v7;
      *(a1 + 32) = v11;
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_10016FBAC(v8);
      sub_10077156C();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_10016F154()
{
  sub_10016EF48(&v2);
  if (v3)
  {
    sub_100012498(&v2, v4);
    sub_10000CF78(v4, v4[3]);
    v0 = sub_100767EDC();
    sub_10000CD74(v4);
    return v0;
  }

  else
  {
    sub_10016FBAC(&v2);
    return sub_100761A8C();
  }
}

uint64_t sub_10016F214()
{
  v0 = sub_10075E11C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016EF48(&v5);
  if (v6)
  {
    sub_100012498(&v5, v7);
    sub_10000CF78(v7, v7[3]);
    sub_100767EEC();
    return sub_10000CD74(v7);
  }

  else
  {
    sub_10016FBAC(&v5);
    sub_10075E08C();
    sub_100761B3C();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_10016F3D8(uint64_t a1, void (*a2)(char *, uint64_t *, void *, uint64_t, uint64_t))
{
  v4 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_10075E08C();
  (*(v8 + 16))(v10, v13, v7);
  sub_10076FDDC();
  v18 = *(v2 + 40);

  v14 = sub_10000A5D4(&unk_1009520B0);
  v15 = sub_100071820(&qword_1009564C0, &unk_1009520B0);
  a2(v6, &v18, &type metadata for Never, v14, v15);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_10016F5F0(uint64_t a1, void (*a2)(char *, void **, void *, uint64_t, uint64_t))
{
  v4 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_10016ECE0();
  (*(v8 + 16))(v10, v13, v7);
  sub_10016FD50(&qword_10094AE48, &type metadata accessor for IndexPath);
  v14 = sub_10077017C();
  v15 = sub_10016E174(v14);

  v20 = v15;
  sub_10000A5D4(&qword_10094AE50);
  sub_100071820(&qword_10094AE58, &qword_10094AE50);
  sub_10076FDCC();
  v20 = *(v2 + 40);

  v16 = sub_10000A5D4(&unk_1009520B0);
  v17 = sub_100071820(&qword_1009564C0, &unk_1009520B0);
  a2(v6, &v20, &type metadata for Never, v16, v17);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_10016F8A8()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E08C();
  if (*(v0 + 32) == 1)
  {
    sub_100761B2C();
  }

  else
  {
    sub_100761ACC();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10016FA20()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10016FA68()
{
  sub_10016FA20();

  return swift_deallocClassInstance();
}

uint64_t sub_10016FBAC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094AE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016FC14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000DB7C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100012498(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10016FCAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 64) = a5;
  *(v14 + 72) = a6;
  *(v14 + 80) = a7;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t sub_10016FD50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016FD98()
{
  result = sub_10075DDBC();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10016FE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100016E2C(a3, v25 - v10, &qword_1009451A0);
  v12 = sub_1007702EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CFBC(v11, &qword_1009451A0);
  }

  else
  {
    sub_1007702DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10077029C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10077005C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000CFBC(a3, &qword_1009451A0);

      return v23;
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

  sub_10000CFBC(a3, &qword_1009451A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100170140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100016E2C(a3, v25 - v10, &qword_1009451A0);
  v12 = sub_1007702EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CFBC(v11, &qword_1009451A0);
  }

  else
  {
    sub_1007702DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10077029C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10077005C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000A5D4(&qword_10094B018);
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

      sub_10000CFBC(a3, &qword_1009451A0);

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

  sub_10000CFBC(a3, &qword_1009451A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000A5D4(&qword_10094B018);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_100170454()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10094AFE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10075DDBC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "prepareForReuse", v8);
  v11 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask])
  {

    sub_10077031C();
  }

  *&v1[v11] = 0;

  sub_10075DDAC();
  v12 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
  swift_beginAccess();
  (*(v7 + 40))(&v1[v12], v10, v6);
  swift_endAccess();
  sub_10075FCAC();
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v13 setHidden:1];
  v14 = &v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *(v14 + 1);
  if (v15)
  {
    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      v18 = sub_10076FF6C();

      [v13 setText:v18];

      [v13 setHidden:0];
    }
  }

  [v1 setNeedsLayout];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;

  sub_10017107C();
  v20 = sub_100768E2C();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_10017504C(v5, &v1[v21]);
  swift_endAccess();
  return [*&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] setImage:0];
}

uint64_t sub_10017079C(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&qword_10094AFD0);
  sub_10076333C();
  if (!v6)
  {
    return sub_10000CFBC(&v5, &qword_10094AFD8);
  }

  sub_100012498(&v5, v7);
  v3 = [sub_100630CB4() traitCollection];
  swift_unknownObjectRelease();
  sub_100172F2C(v7, v3, a2);

  return sub_10000CD74(v7);
}

uint64_t sub_100170914(uint64_t a1, int a2)
{
  v29 = a2;
  v30 = a1;
  v27[1] = *v2;
  v3 = sub_10075DDBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_10094B038);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v27 - v8;
  v10 = sub_10000A5D4(&qword_10094B040);
  __chkstk_darwin(v10 - 8);
  v31 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = v27 - v17;
  (*(v2 + qword_10094AE98))(v16);
  v19 = *(v4 + 16);
  v28 = v2;
  v19(v14, v2 + qword_10094AE90, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_100016E2C(v18, v9, &qword_10094B040);
  sub_100016E2C(v14, &v9[v20], &qword_10094B040);
  v21 = *(v4 + 48);
  if (v21(v9, 1, v3) != 1)
  {
    sub_100016E2C(v9, v31, &qword_10094B040);
    if (v21(&v9[v20], 1, v3) != 1)
    {
      v23 = v27[0];
      (*(v4 + 32))(v27[0], &v9[v20], v3);
      sub_100176EF0(&qword_10094B048, &type metadata accessor for UUID);
      v24 = v31;
      v25 = sub_10076FF1C();
      v26 = *(v4 + 8);
      v26(v23, v3);
      sub_10000CFBC(v14, &qword_10094B040);
      sub_10000CFBC(v18, &qword_10094B040);
      v26(v24, v3);
      result = sub_10000CFBC(v9, &qword_10094B040);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      return sub_10076325C();
    }

    sub_10000CFBC(v14, &qword_10094B040);
    sub_10000CFBC(v18, &qword_10094B040);
    (*(v4 + 8))(v31, v3);
    return sub_10000CFBC(v9, &qword_10094B038);
  }

  sub_10000CFBC(v14, &qword_10094B040);
  sub_10000CFBC(v18, &qword_10094B040);
  if (v21(&v9[v20], 1, v3) != 1)
  {
    return sub_10000CFBC(v9, &qword_10094B038);
  }

  sub_10000CFBC(v9, &qword_10094B040);
  return sub_10076325C();
}

uint64_t sub_100170DFC()
{
  swift_unknownObjectRelease();
  v1 = qword_10094AE90;
  v2 = sub_10075DDBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100170E78()
{
  sub_100170DFC();

  return swift_deallocClassInstance();
}

Swift::Int sub_100170EE4()
{
  sub_10077175C();
  sub_10077176C(v0);
  return sub_1007717AC();
}

void (*sub_100170F34(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10017086C();
  return sub_100170F7C;
}

void sub_100170F7C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1001708C0();
  }

  else
  {
    sub_1001708C0();
  }
}

Swift::Int sub_100171030()
{
  sub_10077175C();
  sub_100170DC4();
  return sub_1007717AC();
}

id sub_10017107C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleText + 8];
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleText] & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel];

      sub_100764BFC();
      v5 = sub_10076FF6C();

      [v4 setText:v5];

      [v4 setHidden:0];
    }
  }

  return [v1 setNeedsLayout];
}

char *sub_100171154(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10075FEEC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_1007626BC();
  *&v4[v17] = sub_10076269C();
  v18 = &v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v21 = sub_100768E2C();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask] = 0;
  sub_10075DDAC();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient] = [objc_allocWithZone(sub_10076B0BC()) init];
  v22 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView] = v22;
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v24 = v22;
  sub_10075FD1C();

  (*(v12 + 8))(v14, v11);
  v25 = *&v5[v23];
  sub_10075FBEC();

  v26 = *&v5[v23];
  sub_10075FBDC();

  v27 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] = v27;
  [v27 _setCornerRadius:12.0];
  v28 = [objc_allocWithZone(sub_100764C2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel] = v28;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32];

  [*&v5[v29] setEditable:0];
  [*&v5[v29] setSelectable:0];
  [*&v5[v29] setUserInteractionEnabled:0];
  v33 = *&v5[v29];
  sub_100764B9C();

  v34 = [v30 redColor];
  v35 = sub_1001718AC(v34);

  *&v5[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea] = v35;
  v36 = [v30 blackColor];
  v37 = sub_1001718AC(v36);

  *&v5[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] = v37;
  v38 = *&v5[v29];
  sub_100764BDC();

  v60.receiver = v5;
  v60.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v40 = [v30 clearColor];
  [v39 setBackgroundColor:v40];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v44 = [v39 contentView];
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v45 = [v39 contentView];
  [v45 addSubview:*&v39[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView]];

  v46 = [v39 contentView];
  [v46 addSubview:*&v39[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient]];

  v47 = [v39 contentView];
  [v47 addSubview:*&v39[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_imageView]];

  v48 = [v39 contentView];
  [v48 addSubview:*&v39[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel]];

  v49 = [v39 contentView];
  v50 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  [v49 addSubview:*&v39[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel]];

  v51 = [*&v39[v50] layer];
  [v51 setCompositingFilter:kCAFilterPlusL];

  v52 = *&v39[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v52)
  {
    v53 = v52;
    v54 = [v39 contentView];
    [v54 addSubview:v53];
  }

  v55 = *&v39[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
  if (v55)
  {
    v56 = v55;
    v57 = [v39 contentView];
    [v57 addSubview:v56];
  }

  sub_10000A5D4(&unk_100945BF0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100783DD0;
  *(v58 + 32) = sub_10076E3FC();
  *(v58 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();
  swift_unknownObjectRelease();

  return v39;
}

id sub_1001718AC(void *a1)
{
  if ((byte_10094DCD0 & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = sub_10077167C();

  if (v2)
  {
LABEL_5:
    v3 = [objc_allocWithZone(UIView) init];
    v4 = [v3 layer];
    v5 = [a1 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v3 layer];
    [v6 setBorderWidth:1.0];

    return v3;
  }

  return 0;
}

void sub_100171A04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_10076B03C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076D1FC();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10094AFE0);
  __chkstk_darwin(v5 - 8);
  v7 = v70 - v6;
  v8 = sub_100768E2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v70 - v14;
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100016E2C(&v1[v16], v7, &unk_10094AFE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &unk_10094AFE0);
    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  sub_100172360();

  sub_10076422C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  sub_1001729E4(v25, v87, v18, v20, v22, v24);
  v26 = *v87;
  v27 = *&v87[1];
  v28 = *&v87[2];
  v29 = *&v87[3];
  v78 = v88;

  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v31 = [v30 textContainer];
  v32 = [v31 exclusionPaths];

  v33 = sub_100016F40(0, &qword_10094B020);
  sub_1007701BC();

  v70[1] = v33;
  LOBYTE(v32) = sub_1007701EC();

  if (v32)
  {
    v34 = [v30 textContainer];
    isa = sub_1007701AC().super.isa;
    [v34 setExclusionPaths:isa];
  }

  if (v88)
  {
    v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
    if (!v36)
    {
      goto LABEL_13;
    }

    if (v78)
    {
      v37 = 0.0;
      v78 = 1;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
LABEL_11:
      [v36 setFrame:{v37, v38, v39, v40}];
      goto LABEL_13;
    }

LABEL_10:
    v78 = 0;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    goto LABEL_11;
  }

  sub_10076422C();
  sub_100770A4C();
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v36)
  {
    goto LABEL_10;
  }

  v78 = 0;
LABEL_13:
  v45 = [v1 contentView];
  [v45 bounds];

  sub_10076B0AC();
  v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_imageView];
  if ([v46 isHidden])
  {
    v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView];
  }

  v47 = v46;
  (*(v9 + 16))(v11, v15, v8);
  v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v85[3] = sub_1007626BC();
  v85[4] = &protocol witness table for UILabel;
  v85[0] = v48;
  v83 = sub_100764C2C();
  v84 = sub_100176EF0(&qword_10094B028, &type metadata accessor for DynamicTypeTextView);
  v82 = v30;
  v49 = sub_100016F40(0, &qword_1009441F0);
  v81 = &protocol witness table for UIView;
  v80 = v49;
  v79 = v47;
  v50 = v48;
  v51 = v30;
  v71 = v47;
  v52 = v74;
  sub_10076B02C();
  sub_10076422C();
  v53 = v72;
  sub_10076AFFC();
  (*(v76 + 8))(v52, v77);
  (*(v73 + 8))(v53, v75);
  LOBYTE(v85[0]) = 2;
  if ((v78 & 1) != 0 || (sub_100172E20(v85, v1) & 1) == 0)
  {
    v69 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
    if (v69)
    {
      [v69 setFrame:{0.0, 0.0, 0.0, 0.0}];

      goto LABEL_21;
    }

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v54 = [v51 font];
    if (v54)
    {
      v55 = v54;
      [v54 lineHeight];
      v57 = v56;

      v58 = v26 + 0.0;
      v59 = v27 + 0.0;
      v60 = v28 + 0.0;
      v61 = v29 + v57 * -0.5;
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] setFrame:{v58, v59, v60, v61}];
      v62 = [v51 textContainer];
      sub_10000A5D4(&unk_100942870);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1007841E0;
      [v1 convertRect:v51 toCoordinateSpace:{v58, v59, v60, v61}];
      *(v63 + 32) = [objc_opt_self() bezierPathWithRect:{v64, v65, v66, v67}];
      v68 = sub_1007701AC().super.isa;

      [v62 setExclusionPaths:v68];

LABEL_21:
      (*(v9 + 8))(v15, v8);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_100172360()
{
  v1 = v0;
  v2 = sub_10076BEDC();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B01C();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D39C();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100767ECC();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10094AFE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_100768E2C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100016E2C(&v1[v20], v15, &unk_10094AFE0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000CFBC(v15, &unk_10094AFE0);
    return 0;
  }

  (*(v17 + 32))(v19, v15, v16);
  if (!sub_100768DDC())
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  sub_100768E0C();
  v21 = v41;
  v22 = (*(v41 + 88))(v12, v10);
  if (v22 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v22 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    [v1 frame];
    sub_10076BEFC();
    v26 = v37;
    sub_10076D3AC();
    sub_10076D30C();
    (*(v38 + 8))(v26, v39);
    sub_10076BDBC();
  }

  else
  {
    if (v22 != enum case for ChartOrCategoryBrickStyle.round(_:))
    {
      (*(v17 + 8))(v19, v16);

      (*(v21 + 8))(v12, v10);
      return 0;
    }

    v23 = v34;
    sub_100768DCC();
    sub_10076B00C();
    v25 = v24;
    (*(v35 + 8))(v23, v36);
    if (v25)
    {
      (*(v17 + 8))(v19, v16);

      return 0;
    }

    v30 = v31;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v32 + 8))(v30, v33);
  }

  v27 = sub_10076BFCC();
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView];
  sub_10076BF7C();
  sub_10075FCCC();
  [v28 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_100016F40(0, &qword_100942F10);
    sub_100770D5C();
  }

  sub_10075FB8C();

  (*(v17 + 8))(v19, v16);
  return v27;
}

uint64_t sub_1001729E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  *&v41 = a1;
  v11 = sub_10076929C();
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = sub_1007692CC();
  *&v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_10094B030);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = sub_1007692EC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100768DFC();
  sub_10000CF78(v42, v42[3]);
  sub_1007655EC();
  v23 = (*(v20 + 48))(v18, 1, v19);
  if (v23 == 1)
  {
    sub_10000CFBC(v18, &qword_10094B030);
    result = sub_10000CD74(v42);
    v25 = 0uLL;
    v26 = 0uLL;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_10000CD74(v42);
    sub_1007692DC();
    sub_1007692AC();
    v27 = sub_100176CD4(v13, [v38 effectiveUserInterfaceLayoutDirection]);
    sub_10076928C();
    sub_1007692BC();
    if (v27 != 3 && v27)
    {
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetMinX(v44);
    }

    else
    {
      v43.origin.x = a3;
      v43.origin.y = a4;
      v43.size.width = a5;
      v43.size.height = a6;
      CGRectGetMaxX(v43);
    }

    v28 = v40;
    v29 = v39;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v33 = a6;
    if (v27 > 1u)
    {
      CGRectGetMidY(*&v30);
    }

    else
    {
      CGRectGetMinY(*&v30);
    }

    sub_1007709CC();
    v39 = v34;
    v40 = v35;
    v38 = v36;
    v41 = v37;
    (*(v29 + 8))(v15, v28);
    result = (*(v20 + 8))(v22, v19);
    *&v26 = v38;
    *&v25 = v39;
    *(&v25 + 1) = v40;
    *(&v26 + 1) = v41;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v23 == 1;
  return result;
}

id sub_100172E20(_BYTE *a1, uint64_t a2)
{
  LODWORD(v2) = *a1;
  if (v2 != 2)
  {
    return (v2 & 1);
  }

  v4 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel);
  [v4 frame];
  Height = CGRectGetHeight(v9);
  result = [v4 font];
  if (result)
  {
    v2 = result;
    [result lineHeight];
    v8 = v7;

    LOBYTE(v2) = v8 * 1.5 < Height;
    swift_beginAccess();
    *a1 = v2;
    return (v2 & 1);
  }

  __break(1u);
  return result;
}

id sub_100172F2C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v58 = a2;
  v6 = sub_10000A5D4(&unk_10094AFE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v9 - 8);
  v56 = &v48 - v10;
  v11 = sub_10075DDBC();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  sub_10000CF78(a1, a1[3]);
  if (sub_1007655FC())
  {

    v16 = *&v3[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    [v16 setHidden:0];
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:1];
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:0];
  }

  sub_10000CF78(a1, a1[3]);
  if (sub_1007696CC())
  {
    sub_10076C02C();
    v18 = sub_1007701EC();

    if (v18)
    {
      sub_10000CF78(a1, a1[3]);
      v19 = sub_1007696BC();
      if (v19)
      {
        v20 = v19;
        sub_10075E33C();
        sub_10076F64C();
        sub_10076FC1C();
        v53 = v20;
        v54 = *&v60[0];
        v21 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
        [v21 setBackgroundColor:v20];
        [v21 setHidden:0];
        [*&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:0];
        [*&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:1];
        sub_10075DDAC();
        v22 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
        swift_beginAccess();
        v23 = v55;
        (*(v55 + 40))(&v4[v22], v15, v11);
        swift_endAccess();
        v24 = *(v23 + 16);
        v24(v57, &v4[v22], v11);
        v52 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask;
        if (*&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask])
        {

          sub_10077031C();
        }

        v25 = sub_1007702EC();
        (*(*(v25 - 8) + 56))(v56, 1, 1, v25);
        v51 = v15;
        v24(v15, v57, v11);
        sub_10000A570(a1, v60);
        sub_1007702CC();
        v49 = v4;

        v50 = v58;
        v48 = sub_1007702BC();
        v26 = v55;
        v27 = (*(v55 + 80) + 40) & ~*(v55 + 80);
        v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 2) = v48;
        *(v30 + 3) = &protocol witness table for MainActor;
        *(v30 + 4) = v49;
        (*(v26 + 32))(&v30[v27], v51, v11);
        sub_100012498(v60, &v30[v28]);
        *&v30[v29] = v54;
        *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v50;
        v31 = sub_10016FE40(0, 0, v56, &unk_100790CE0, v30);

        (*(v26 + 8))(v57, v11);
        *&v4[v52] = v31;
      }
    }
  }

  sub_10000A570(a1, v60);
  sub_10000A570(v60, v59);
  v32 = v58;
  sub_100768DEC();
  sub_10000CD74(v60);
  v33 = sub_100768E2C();
  (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
  v34 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_10017504C(v8, &v4[v34]);
  swift_endAccess();
  sub_100173D44();
  sub_10000CF78(a1, a1[3]);
  v35 = sub_1007655DC();
  v37 = v36;
  [*&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v38 = &v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v38 = v35;
  v38[1] = v37;

  sub_10017107C();
  sub_10000CF78(a1, a1[3]);
  v39 = sub_1007655CC();
  v41 = v40;
  v42 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v42 setHidden:1];
  v43 = &v4[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v43 = v39;
  v43[1] = v41;

  v44 = v43[1];
  if (v44)
  {
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = *v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {

      v46 = sub_10076FF6C();

      [v42 setText:v46];

      [v42 setHidden:0];
    }
  }

  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_1001736C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_10075DDBC();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  sub_1007702CC();
  v8[16] = sub_1007702BC();
  v11 = sub_10077029C();
  v8[17] = v11;
  v8[18] = v10;

  return _swift_task_switch(sub_1001737C4, v11, v10);
}

uint64_t sub_1001737C4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_imageView];
  (*(v2 + 16))(v1, v0[9], v3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000A5D4(&qword_10094AFF0);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v6;
  (*(v2 + 32))(v8 + qword_10094AE90, v1, v3);
  v9 = (v8 + qword_10094AE98);
  *v9 = sub_1001755FC;
  v9[1] = v7;
  v0[7] = v5;
  v10 = v4[3];
  v11 = v4[4];
  v12 = sub_10000CF78(v4, v10);
  v0[5] = v10;
  v0[6] = *(v11 + 8);
  v13 = sub_10000DB7C(v0 + 2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  v14 = v6;
  v15 = [v5 contentView];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = sub_100175604();

  v21 = swift_task_alloc();
  v0[20] = v21;
  v22 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell();
  v23 = sub_100176EF0(&qword_10094B000, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
  *v21 = v0;
  v21[1] = sub_100173A54;
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[9];
  v27.n128_u64[0] = v17;
  v28.n128_u64[0] = v19;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(v0 + 2, v24, v26, v8, v20, v25, v22, v23, v27, v28);
}

uint64_t sub_100173A54()
{
  v1 = *v0;

  sub_10000CD74(v1 + 16);
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_100173B9C, v3, v2);
}

uint64_t sub_100173B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100173C10@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_10075DDBC();
    v6 = *(v5 - 8);
    (*(v6 + 16))(a1, &v4[v3], v5);

    return (*(v6 + 56))(a1, 0, 1, v5);
  }

  else
  {
    v8 = sub_10075DDBC();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100173D44()
{
  v1 = v0;
  v68 = sub_100767ECC();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v58 - v4;
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v67 = &v58 - v6;
  v69 = sub_100768DBC();
  v77 = *(v69 - 8);
  __chkstk_darwin(v69);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100768D6C();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10094AFE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - v13;
  v15 = sub_100768E2C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100016E2C(&v1[v19], v14, &unk_10094AFE0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000CFBC(v14, &unk_10094AFE0);
  }

  v63 = v16;
  v21 = *(v16 + 32);
  v64 = v15;
  v21(v18, v14, v15);
  v22 = [v1 traitCollection];
  v23 = sub_10077073C();

  v74 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v24 = v74;
  v25 = sub_100016F40(0, &qword_100942F10);
  v26 = sub_100770CFC();
  v27 = [v26 resolvedColorWithTraitCollection:v23];

  [v24 setTextColor:v27];
  v65 = v1;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v73 = v28;
  v58 = v25;
  v29 = sub_100770D0C();
  v62 = v23;
  v30 = [v29 resolvedColorWithTraitCollection:v23];

  [v28 setTextColor:v30];
  v66 = v18;
  sub_100768E1C();
  sub_100768D5C();
  v31 = v76;
  v32 = v75 + 8;
  v33 = *(v75 + 8);
  v33(v11, v76);
  sub_100768DAC();
  v35 = v77 + 8;
  v34 = *(v77 + 8);
  v36 = v69;
  v34(v8);
  sub_100764BEC();
  sub_100768E1C();
  sub_100768D4C();
  v33(v11, v31);
  v75 = v32;
  v37 = sub_100768DAC();
  v38 = v36;
  v61 = v34;
  (v34)(v8, v36);
  v77 = v35;
  [v73 setNumberOfLines:v37];
  sub_100768E1C();
  sub_100768D5C();
  v33(v11, v31);
  v39 = v67;
  sub_100768D9C();
  (v34)(v8, v36);
  v40 = sub_10076D3DC();
  v41 = *(v40 - 8);
  v59 = *(v41 + 56);
  v60 = v41 + 56;
  v59(v39, 0, 1, v40);
  sub_100764BBC();
  sub_100768E1C();
  sub_100768D4C();
  v42 = v76;
  v33(v11, v76);
  sub_100768D9C();
  v43 = v61;
  (v61)(v8, v38);
  v59(v39, 0, 1, v40);
  sub_1007625DC();
  v44 = v66;
  sub_100768E1C();
  sub_100768D5C();
  v33(v11, v42);
  sub_100768D8C();
  v43(v8, v38);
  sub_100764C0C();
  sub_100768E1C();
  sub_100768D4C();
  v33(v11, v76);
  sub_100768D8C();
  v45 = v8;
  v47 = v72;
  v46 = v73;
  v48 = v38;
  v49 = v68;
  v43(v45, v48);
  v50 = v70;
  sub_10076264C();
  v51 = v44;
  sub_100768E0C();
  v52 = v71;
  (*(v50 + 104))(v71, enum case for ChartOrCategoryBrickStyle.round(_:), v49);
  sub_100176EF0(&unk_10094B008, &type metadata accessor for ChartOrCategoryBrickStyle);
  sub_10077018C();
  sub_10077018C();
  if (v80 == v78 && v81 == v79)
  {
    v53 = *(v50 + 8);
    v53(v52, v49);
    v53(v47, v49);

LABEL_7:
    v56 = sub_100770D1C();
    [v74 setTextColor:v56];

    v57 = sub_100770D0C();
    [v46 setTextColor:v57];

    goto LABEL_8;
  }

  v54 = sub_10077167C();
  v55 = *(v50 + 8);
  v55(v52, v49);
  v55(v47, v49);

  if (v54)
  {
    goto LABEL_7;
  }

LABEL_8:
  [v65 setNeedsLayout];

  return (*(v63 + 8))(v51, v64);
}

uint64_t type metadata accessor for ChartOrCategoryBrickCollectionViewCell()
{
  result = qword_10094AFA8;
  if (!qword_10094AFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001748D8()
{
  sub_100174A40(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_100174A40(319, &qword_10094AFC0, &type metadata accessor for ChartOrCategoryBrickContext);
    if (v1 <= 0x3F)
    {
      sub_10075DDBC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100174A40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100174A98()
{
  result = sub_100172360();
  if (result)
  {
    sub_10075FD2C();
    sub_100176EF0(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }

  return result;
}

uint64_t sub_100174B58(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_10075FCEC(v4, a3);
  sub_10075FD2C();
  sub_100176EF0(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_100174BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100174CD0;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:size:with:traitCollection:)(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t sub_100174CD0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100174DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_100025A64;
  v22.n128_f64[0] = a9;
  v23.n128_f64[0] = a10;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23);
}

uint64_t sub_100174ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_1000257CC;
  v20.n128_f64[0] = a8;
  v21.n128_f64[0] = a9;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, v20, v21);
}

uint64_t sub_10017504C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094AFE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001750BC()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000CD74(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1001751C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10075DDBC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000257CC;

  return sub_1001736C8(a1, v9, v10, v11, v1 + v6, v1 + v7, v12, v13);
}

uint64_t sub_10017531C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100175414;

  return v6(a1);
}

uint64_t sub_100175414()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10017550C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100025A64;

  return sub_10017531C(a1, v4);
}

uint64_t sub_1001755C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100175604()
{
  result = qword_10094AFF8;
  if (!qword_10094AFF8)
  {
    sub_10000CE78(&qword_10094AFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AFF8);
  }

  return result;
}

uint64_t sub_100175668(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10017575C;

  return v5(v2 + 32);
}

uint64_t sub_10017575C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

double sub_100175870()
{
  v0 = sub_10076DA7C();
  v81 = *(v0 - 8);
  v82 = v0;
  __chkstk_darwin(v0);
  v80 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10076D3DC();
  v88 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100768DBC();
  v94 = *(v89 - 8);
  __chkstk_darwin(v89);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100768D6C();
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10076DD3C();
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v69 - v10;
  __chkstk_darwin(v11);
  v100 = &v69 - v12;
  __chkstk_darwin(v13);
  v91 = &v69 - v14;
  v15 = sub_10076B03C();
  v93 = *(v15 - 8);
  __chkstk_darwin(v15);
  v92 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100767ECC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076C38C();
  v98 = *(v21 - 8);
  v99 = v21;
  __chkstk_darwin(v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100768E2C();
  v96 = *(v24 - 8);
  v97 = v24;
  __chkstk_darwin(v24);
  v90 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  sub_10000A5D4(&qword_10094AFD0);
  sub_10076333C();
  if (!*(&v111 + 1))
  {
    sub_10000CFBC(&v110, &qword_10094AFD8);
    return 0.0;
  }

  v77 = v15;
  sub_100012498(&v110, v113);
  swift_getKeyPath();
  sub_10076338C();

  sub_10000A570(v113, &v110);
  sub_10000A570(&v110, &v107);
  sub_100768DEC();
  sub_10000CD74(&v110);
  swift_getKeyPath();
  sub_10076338C();

  v83 = v110;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  sub_100768E0C();
  v29 = (*(v18 + 88))(v20, v17);
  if (v29 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v29 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    v63 = v96;
    v62 = v97;
    (*(v96 + 16))(v90, v28, v97);
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v109 = 0;
    v108 = 0u;
    v107 = 0u;
    v64 = sub_10076DDDC();
    swift_allocObject();
    v65 = sub_10076DDBC();
    v106[3] = v64;
    v106[4] = &protocol witness table for LayoutViewPlaceholder;
    v106[0] = v65;
    memset(v105, 0, 32);
    v105[32] = 1;
    v66 = v92;
    sub_10076B02C();
    sub_10076AFEC();
    v59 = v67;
    swift_unknownObjectRelease();
    (*(v93 + 8))(v66, v77);
    (*(v98 + 8))(v23, v99);
    (*(v63 + 8))(v28, v62);
    goto LABEL_8;
  }

  if (v29 != enum case for ChartOrCategoryBrickStyle.round(_:))
  {
    swift_unknownObjectRelease();
    (*(v98 + 8))(v23, v99);
    (*(v96 + 8))(v28, v97);
    sub_10000CD74(v113);
    (*(v18 + 8))(v20, v17);
    return 0.0;
  }

  v30 = v85;
  sub_10076DD2C();
  sub_100768E1C();
  sub_100768D5C();
  v31 = v87;
  v32 = v86 + 8;
  v73 = *(v86 + 8);
  v73(v7, v87);
  v33 = v32;
  v34 = v79;
  sub_100768D9C();
  v72 = *(v94 + 8);
  v94 += 8;
  v74 = v28;
  v72(v4, v89);
  sub_10076DCFC();
  v35 = *(v88 + 8);
  v88 += 8;
  v70 = v35;
  v35(v34, v84);
  v36 = v95 + 8;
  v76 = *(v95 + 8);
  v71 = v23;
  v76(v30, v101);
  v75 = v36;
  sub_100768E1C();
  sub_100768D5C();
  v37 = v31;
  v38 = v73;
  v86 = v33;
  v73(v7, v37);
  sub_100768DAC();
  v39 = v89;
  v40 = v72;
  v72(v4, v89);
  v41 = v100;
  sub_10076DD1C();
  v76(v41, v101);
  v42 = v78;
  sub_10076DD2C();
  sub_100768E1C();
  sub_100768D4C();
  v38(v7, v87);
  sub_100768D9C();
  v40(v4, v39);
  v43 = v85;
  sub_10076DCFC();
  v70(v34, v84);
  v44 = v42;
  v45 = v101;
  v46 = v76;
  v76(v44, v101);
  v47 = v74;
  sub_100768E1C();
  sub_100768D4C();
  v73(v7, v87);
  sub_100768DAC();
  v72(v4, v89);
  sub_10076DD1C();
  v48 = v43;
  v46(v43, v45);
  v49 = v47;
  sub_100768DFC();
  sub_10000CF78(&v110, *(&v111 + 1));
  sub_1007655DC();
  v94 = *(v95 + 16);
  v95 += 16;
  (v94)(v48, v91, v45);
  sub_10076DA5C();
  v50 = v80;
  sub_10076DA9C();
  sub_10000CD74(&v110);
  sub_10076DA4C();
  v51 = v82;
  v52 = *(v81 + 8);
  v52(v50, v82);
  sub_100768DFC();
  sub_10000CF78(&v107, *(&v108 + 1));
  sub_1007655CC();
  (v94)(v48, v100, v101);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10000CD74(&v107);
  sub_10076DA4C();
  v52(v50, v51);
  v54 = v96;
  v53 = v97;
  (*(v96 + 16))(v90, v49, v97);
  sub_10000A570(&v107, v106);
  sub_10000A570(&v110, v105);
  v55 = sub_10076DDDC();
  swift_allocObject();
  v56 = sub_10076DDBC();
  v103 = v55;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v56;
  v114 = 0u;
  v115 = 0u;
  v116 = 1;
  v57 = v92;
  sub_10076B02C();
  sub_10076AFEC();
  v59 = v58;
  swift_unknownObjectRelease();
  (*(v93 + 8))(v57, v77);
  sub_10000CD74(&v107);
  sub_10000CD74(&v110);
  v60 = v101;
  v61 = v76;
  v76(v100, v101);
  v61(v91, v60);
  (*(v98 + 8))(v71, v99);
  (*(v54 + 8))(v49, v53);
LABEL_8:
  sub_10000CD74(v113);
  return v59;
}

uint64_t sub_1001765C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076BEDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D39C();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100768E2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094AFD0);
  sub_10076333C();
  if (!v22)
  {
    return sub_10000CFBC(&v21, &qword_10094AFD8);
  }

  v17 = a2;
  v18 = v7;
  sub_100012498(&v21, v23);
  swift_getKeyPath();
  sub_10076338C();

  sub_10000A570(v23, &v21);
  sub_10000A570(&v21, v20);
  sub_100768DEC();
  sub_10000CD74(&v21);
  v14 = _swiftEmptyArrayStorage;
  *&v21 = _swiftEmptyArrayStorage;
  sub_100175870();
  if (sub_100768DDC())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D31C();
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v4 + 8))(v6, v3);
    sub_10076BFCC();
    sub_10077019C();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    (*(v19 + 8))(v9, v18);
    v14 = v21;
  }

  sub_100764B3C();
  if (sub_1007701EC())
  {
    v15._rawValue = v14;
    sub_100760BAC(v15);

    (*(v11 + 8))(v13, v10);
    return sub_10000CD74(v23);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    sub_10000CD74(v23);
  }
}

uint64_t sub_1001769CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100176A04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100025A64;

  return sub_100175668(a1, v4);
}

uint64_t sub_100176ABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000257CC;

  return sub_100175668(a1, v4);
}

void sub_100176B74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_1007626BC();
  *(v1 + v4) = sub_10076269C();
  v5 = (v1 + OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_titleText);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v8 = sub_100768E2C();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask) = 0;
  sub_10075DDAC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100176CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076929C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topTrailing(_:))
  {
    v10 = a2 == 1;
LABEL_5:
    (*(v5 + 8))(a1, v4);
    return v10;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topLeading(_:))
  {
    v10 = a2 != 1;
    goto LABEL_5;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.midLeading(_:))
  {
    (*(v5 + 8))(a1, v4);
    if (a2 == 1)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_10077145C(29);
  v13._object = 0x80000001007D6830;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1007700CC(v13);
  sub_10077151C();
  result = sub_10077156C();
  __break(1u);
  return result;
}

uint64_t sub_100176EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100176F44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100176FA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100177068()
{
  sub_10076108C();
  sub_1001771E4(&qword_10094B050, &type metadata accessor for RibbonBarItem);
  result = sub_10076332C();
  if (v1)
  {
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_1001B878C(v1, v1);
  }

  return result;
}

uint64_t sub_10017714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001771E4(&qword_10094B058, type metadata accessor for RibbonBarItemCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001771E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017722C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100177280()
{
  ObjectType = swift_getObjectType();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v4 = ObjectType;
    if (sub_10077158C())
    {
      sub_1001795AC(_swiftEmptyArrayStorage);
      v2 = v5;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    ObjectType = v4;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews] = v2;
  v0[OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase] = 3;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void sub_100177368(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = ObjectType;
    v6 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v7 = a1;
    sub_100178648(&v29, v7);
    swift_endAccess();

    v8 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase;
    v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase);
    if ((v9 - 1) >= 2)
    {
      if (!*(v2 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase))
      {
        [v7 setAlpha:1.0];
        goto LABEL_18;
      }
    }

    else
    {
      v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
      if (v10)
      {
        sub_10000A5D4(&unk_100942870);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007841E0;
        *(inited + 32) = v7;
        v12 = v7;
        v13 = v10;
        sub_1001795AC(inited);
        v15 = v14;
        swift_setDeallocating();
        swift_arrayDestroy();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v5;
        v17 = objc_allocWithZone(UIViewPropertyAnimator);
        if (v9 == 1)
        {
          v27 = sub_1001798E8;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_10088A838;
        }

        else
        {
          v27 = sub_1001798B0;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_10088A7E8;
        }

        v25 = sub_10009AEDC;
        v26 = v18;
        v21 = _Block_copy(&v23);

        v22 = [v17 initWithDuration:v21 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0, v23, v24}];
        _Block_release(v21);
        v7 = v22;
        [v13 fractionComplete];
        [v7 setFractionComplete:?];
        [v7 startAnimation];

        goto LABEL_18;
      }

      *(v2 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
    }

    v19 = *(v2 + v6);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = sub_10077135C();

      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (*(v2 + v8) == 3 && !UIAccessibilityIsReduceMotionEnabled())
      {
        sub_100177958();
      }

      goto LABEL_18;
    }

    if (*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_18:
  }
}

void sub_1001776D4()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  if (v2)
  {
    [v2 stopAnimation:1];
  }

  v3 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_10077131C();
    sub_1000ACA5C();
    sub_10017AD08(&qword_10094A418, sub_1000ACA5C);
    sub_1007703BC();
    v6 = v20;
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_22:
      sub_100178640();

      return;
    }

    while (1)
    {
      [v18 setAlpha:1.0];

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_10077138C())
      {
        sub_1000ACA5C();
        swift_dynamicCast();
        v18 = v19;
        v16 = v8;
        v17 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100177958()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_10077135C();

    if (v3)
    {
LABEL_3:
      *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 0;
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100179944;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100177EA0;
      aBlock[3] = &unk_10088A888;
      v5 = _Block_copy(aBlock);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:0.8];
      _Block_release(v5);

      v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
      *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = v7;
      v9 = v7;
      [v8 invalidate];

      v10 = [objc_opt_self() mainRunLoop];
      [v10 addTimer:v9 forMode:NSRunLoopCommonModes];

      return;
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_3;
  }

  sub_1001776D4();
}

void sub_100177B54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
    *(Strong + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = 0;
    v2 = Strong;
    [v1 invalidate];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_100177BFC();
  }
}

void sub_100177BFC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1001776D4();
    return;
  }

  v4 = sub_10077135C();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 1;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_10017AD74;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10009AEDC;
  v18 = &unk_10088A8D8;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_10017994C;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10017722C;
  v18 = &unk_10088A900;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_100177EA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100177F08()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1001776D4();
    return;
  }

  v4 = sub_10077135C();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 2;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_10017AD78;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10009AEDC;
  v18 = &unk_10088A950;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_10017997C;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10017722C;
  v18 = &unk_10088A978;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_1001781AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      a3();
    }
  }
}

void sub_100178214(uint64_t a1, double a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10077131C();
    sub_1000ACA5C();
    sub_10017AD08(&qword_10094A418, sub_1000ACA5C);
    sub_1007703BC();
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_100178640();
      return;
    }

    while (1)
    {
      [v15 setAlpha:a2];

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_10077138C())
      {
        sub_1000ACA5C();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10017841C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_10077135C();

    if (!v3)
    {
      return;
    }
  }

  else if (!*(v2 + 16))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) == 3 && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_100177958();
  }
}

unint64_t sub_1001785EC()
{
  result = qword_10094B0A8;
  if (!qword_10094B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B0A8);
  }

  return result;
}

uint64_t sub_100178648(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10077136C();

    if (v9)
    {

      sub_1000ACA5C();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_10077135C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1004B76B4(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1004B78A4();
    }

    v18 = v8;
    sub_1004B7F6C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000ACA5C();
  v11 = sub_100770EDC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_100178AEC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100770EEC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_100178860(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_10076FF9C();
  sub_10077175C();
  sub_10077008C();
  v7 = sub_1007717AC();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_10076FF9C();
      v13 = v12;
      if (v11 == sub_10076FF9C() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_10077167C();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100178C4C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100178A0C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_10077174C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100178E34(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_100178AEC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004B78A4();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1004B7FF0();
      goto LABEL_12;
    }

    sub_100178F54();
  }

  v8 = *v3;
  v9 = sub_100770EDC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000ACA5C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100770EEC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1007716CC();
  __break(1u);
}

uint64_t sub_100178C4C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1004B7ACC();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1004B8140();
      goto LABEL_16;
    }

    sub_100179168();
  }

  v9 = *v3;
  sub_10076FF9C();
  sub_10077175C();
  sub_10077008C();
  v10 = sub_1007717AC();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = sub_10076FF9C();
      v15 = v14;
      if (v13 == sub_10076FF9C() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_10077167C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1007716CC();
  __break(1u);
  return result;
}

uint64_t sub_100178E34(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004B7D48();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1004B8290();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001793BC();
  }

  v8 = *v3;
  result = sub_10077174C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1007716CC();
  __break(1u);
  return result;
}

uint64_t sub_100178F54()
{
  v1 = v0;
  v2 = *v0;
  sub_10000A5D4(&qword_10094B0B0);
  result = sub_10077142C();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100770EDC(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100179168()
{
  v1 = v0;
  v2 = *v0;
  sub_10000A5D4(&qword_10094B0C0);
  result = sub_10077142C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_10076FF9C();
      sub_10077175C();
      v17 = v16;
      sub_10077008C();
      v18 = sub_1007717AC();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001793BC()
{
  v1 = v0;
  v2 = *v0;
  sub_10000A5D4(&qword_10094B0E0);
  result = sub_10077142C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_10077174C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

void sub_1001795AC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10077158C())
    {
LABEL_3:
      sub_10000A5D4(&qword_10094B0B0);
      v3 = sub_10077144C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10077158C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10077149C();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100770EDC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000ACA5C();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100770EEC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100770EDC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000ACA5C();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100770EEC();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100179878()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001798D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017990C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1001799AC(uint64_t a1)
{
  v2 = sub_10075DF5C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000A5D4(&qword_10094B118);
    v9 = sub_10077144C();
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
      sub_10017AD08(&qword_10094B120, &type metadata accessor for Calendar.Component);
      v16 = sub_10076FEAC();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10017AD08(&qword_10094B128, &type metadata accessor for Calendar.Component);
          v23 = sub_10076FF1C();
          v24 = *v15;
          (*v15)(v5, v2);
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

void *sub_100179CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_10094B0C0);
    v3 = sub_10077144C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_10076FF9C();
      sub_10077175C();
      v27 = v7;
      sub_10077008C();
      v8 = sub_1007717AC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_10076FF9C();
        v18 = v17;
        if (v16 == sub_10076FF9C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_10077167C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100179EC0(uint64_t a1)
{
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000A5D4(&qword_10094B0E8);
    v9 = sub_10077144C();
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
      sub_10017AD08(&qword_10094E860, &type metadata accessor for IndexPath);
      v16 = sub_10076FEAC();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10017AD08(&qword_100947F00, &type metadata accessor for IndexPath);
          v23 = sub_10076FF1C();
          v24 = *v15;
          (*v15)(v5, v2);
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

void *sub_10017A1E0(uint64_t a1)
{
  v2 = sub_10076FB6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000A5D4(&qword_10094B0C8);
    v9 = sub_10077144C();
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
      sub_10017AD08(&qword_10094B0D0, &type metadata accessor for MetricsFieldInclusionRequest);
      v16 = sub_10076FEAC();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10017AD08(&qword_10094B0D8, &type metadata accessor for MetricsFieldInclusionRequest);
          v23 = sub_10076FF1C();
          v24 = *v15;
          (*v15)(v5, v2);
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

Swift::Int sub_10017A500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_10094B0B8);
    v3 = sub_10077144C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_10077175C();
      sub_10077176C(v10);
      result = sub_1007717AC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10017A63C(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000A5D4(&qword_10094B0F0);
    v9 = sub_10077144C();
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
      sub_10017AD08(&qword_10094B0F8, &type metadata accessor for Shelf.ContentType);
      v16 = sub_10076FEAC();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10017AD08(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
          v23 = sub_10076FF1C();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_10017A95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_10094B0E0);
    v3 = sub_10077144C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_10077174C();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10017AA74(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_10077158C();
    if (result)
    {
LABEL_3:
      sub_10000A5D4(&qword_10094B100);
      result = sub_10077144C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_10077158C();
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
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_10077149C();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_10076E91C();
    sub_10017AD08(&qword_10094B108, &type metadata accessor for AnyCancellable);
    result = sub_10076FEAC();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10017AD08(&qword_10094B110, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = sub_10076FF1C();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10017AD08(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10017AD94(uint64_t a1, char a2, uint64_t a3)
{
  v68 = a3;
  v66 = a1;
  v5 = sub_10000A5D4(&qword_100945140);
  __chkstk_darwin(v5 - 8);
  v67 = &v66 - v6;
  v7 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v7 - 8);
  v9 = &v66 - v8;
  v69 = sub_10075F37C();
  v10 = *(v69 - 8);
  __chkstk_darwin(v69);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v13 - 8);
  v15 = &v66 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3;
  sub_1006FB794(v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_10005DAD8(v15, v19);
    if (a2)
    {
      v25 = v3;
      v26 = v69;
      (*(v10 + 16))(v12, v3, v69);
      v27 = objc_allocWithZone(type metadata accessor for TabPlaceholderViewController());
      v24 = sub_100320BB0(v12);
    }

    else
    {
      v28 = sub_10076096C();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v29 = sub_10048B0C0(v19, v66, 0, 0, v9, &v70, v68, 1);
      sub_10000CFBC(&v70, &unk_10094A8A0);
      sub_10000CFBC(v9, &unk_100958150);
      if (!v29)
      {
        if (qword_1009412E8 != -1)
        {
          swift_once();
        }

        v63 = sub_10076FD4C();
        sub_10000A61C(v63, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100784500;
        sub_10076F27C();
        v64 = v69;
        *(&v71 + 1) = v69;
        v65 = sub_10000DB7C(&v70);
        (*(v10 + 16))(v65, v20, v64);
        sub_10076F30C();
        sub_10000CFBC(&v70, &unk_1009434C0);
        sub_10076FBEC();

        sub_10005C6E8(v19);
        return 0;
      }

      v24 = v29;
      v25 = v20;
      v26 = v69;
    }

    v30 = sub_1006FC188();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 title];
      [v24 setTitle:v32];

      [v24 setTabBarItem:v31];
    }

    type metadata accessor for StoreCollectionViewController();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      *(v33 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 1;
      v35 = (*((swift_isaMask & *v33) + 0x198))();
      v36 = v24;
      v37 = [v34 navigationItem];
      v38 = v37;
      if (v35)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      [v37 setLargeTitleDisplayMode:{v39, v66}];

      v40 = sub_10075F34C();
      v41 = (v34 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_automationSemanticPageId);
      *v41 = v40;
      v41[1] = v42;

      ObjectType = swift_getObjectType();
      v44 = v67;
      (*(v10 + 16))(v67, v25, v26);
      (*(v10 + 56))(v44, 0, 1, v26);
      v45 = (*(ObjectType + 480))(v68, v44);
      sub_10000CFBC(v44, &qword_100945140);
      v46 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationAccessories);
      *(v34 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationAccessories) = v45;

      v47 = [v34 traitCollection];
      v48 = sub_100527924(v46, v47, v45);

      if ((v48 & 1) == 0)
      {
        (*((swift_isaMask & *v34) + 0x1F0))(v49);
      }
    }

    else
    {
      type metadata accessor for SearchViewController();
      v50 = swift_dynamicCastClass();
      if (!v50)
      {
LABEL_25:

        sub_10005C6E8(v19);
        return v24;
      }

      v51 = v50;
      v52 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle;
      *(v50 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle) = 1;
      v53 = v24;
      v54 = [v51 navigationItem];
      v55 = v54;
      if (v51[v52])
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      [v54 setLargeTitleDisplayMode:{v56, v66}];

      v57 = v67;
      (*(v10 + 16))(v67, v25, v26);
      (*(v10 + 56))(v57, 0, 1, v26);
      v58 = sub_100274B00(v68, v57);
      sub_10000CFBC(v57, &qword_100945140);
      v59 = *&v51[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories];
      *&v51[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories] = v58;

      v60 = [v51 traitCollection];
      v61 = sub_100527924(v59, v60, v58);

      if ((v61 & 1) == 0)
      {
        sub_100272E1C();
      }
    }

    goto LABEL_25;
  }

  sub_10000CFBC(v15, &unk_10094A890);
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v21 = sub_10076FD4C();
  sub_10000A61C(v21, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  v22 = v69;
  *(&v71 + 1) = v69;
  v23 = sub_10000DB7C(&v70);
  (*(v10 + 16))(v23, v3, v22);
  sub_10076F30C();
  sub_10000CFBC(&v70, &unk_1009434C0);
  sub_10076FBEC();

  return 0;
}

id sub_10017B7C8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_tabChangeDelegate] = 0;
  if (a2)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v7, a3);

  v9 = v8;
  [v9 _uip_setTabBarHidden:1];

  return v9;
}

uint64_t sub_10017BA08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076F2EC();
  result = [v1 viewControllers];
  if (!result)
  {
    return result;
  }

  v6 = result;
  sub_10003F040();
  v7 = sub_1007701BC();

  if (v7 >> 62)
  {
    if (sub_10077158C() > a1)
    {
      goto LABEL_4;
    }

LABEL_19:

    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v15._object = 0x80000001007D6950;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    sub_10076F2CC(v15);
    v13[3] = &type metadata for Int;
    v13[0] = a1;
    sub_10076F29C();
    sub_10000CFBC(v13, &unk_1009434C0);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_10076F2CC(v16);
    sub_10076F2FC();
    sub_10076FBCC();
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v8 = [v1 delegate];
  if (v8)
  {
    v9 = v8;
    result = [v8 respondsToSelector:"tabBarController:didSelectViewController:"];
    if ((result & 1) == 0)
    {

      goto LABEL_15;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v10 = *(v7 + 8 * a1 + 32);
LABEL_10:
        v11 = v10;

        [v9 tabBarController:v2 didSelectViewController:v11];

LABEL_15:

        return swift_unknownObjectRelease();
      }

      __break(1u);
      return result;
    }

    v10 = sub_10077149C();
    goto LABEL_10;
  }
}

uint64_t sub_10017BDD4(unsigned int *a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_10076F4FC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100760EFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000A5D4(&qword_10094B168);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v28 - v19;
  (*(v8 + 104))(&v28 - v19, *a1, v7, v18);
  (*(v8 + 56))(v20, 0, 1, v7);
  v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v21)
  {
    sub_10017E160(v20, v16);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_10000CFBC(v20, &qword_10094B168);
      v22 = v16;
      v23 = &qword_10094B168;
    }

    else
    {
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v10, v13, v7);

      sub_10076F4DC();
      sub_10076225C();
      swift_allocObject();
      v24 = sub_10076221C();
      v25 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v5, 1, v25) != 1)
      {
        sub_100263BF0(v24, 1, v21, v5);

        (*(v8 + 8))(v13, v7);
        sub_10000CFBC(v20, &qword_10094B168);
        return (*(v26 + 8))(v5, v25);
      }

      (*(v8 + 8))(v13, v7);
      sub_10000CFBC(v20, &qword_10094B168);
      v23 = &unk_100943200;
      v22 = v5;
    }
  }

  else
  {
    v23 = &qword_10094B168;
    v22 = v20;
  }

  return sub_10000CFBC(v22, v23);
}

void sub_10017C35C()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_100760EFC();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100954460);
  __chkstk_darwin(v7 - 8);
  v63 = &v45 - v8;
  v9 = sub_100760A6C();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v62 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10075F65C();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100765F6C();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100766EDC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076F4FC();
  __chkstk_darwin(v17 - 8);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v22 - 8);
  v24 = &v45 - v23;
  v25 = sub_10076C15C();
  __chkstk_darwin(v25);
  v28 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v28)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    (*(v27 + 104))(&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
    v29 = sub_10075DB7C();
    v52 = v3;
    v51 = v6;
    v30 = v29;
    v31 = *(v29 - 8);
    v46 = *(v31 + 56);
    v47 = v31 + 56;
    v46(v24, 1, 1, v29);
    v32 = sub_10076096C();
    v66 = v28;
    v49 = v32;
    v33 = *(v32 - 8);
    v48 = *(v33 + 56);
    v50 = v33 + 56;
    v48(v21, 1, 1, v32);
    v67 = 0u;
    v68 = 0u;

    sub_10076F4DC();
    (*(v15 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v14);
    (*(v12 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v54);
    (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v34 = sub_10075F5EC();
    v35 = v30;
    v36 = v52;
    v46(v24, 1, 1, v35);
    (*(v60 + 104))(v62, enum case for SearchOrigin.keyboardShortcut(_:), v61);
    v37 = sub_100760A5C();
    (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
    sub_10076F4DC();
    v38 = v66;
    v48(v21, 1, 1, v49);
    v39 = sub_100760A4C();
    swift_allocObject();
    v40 = sub_100760A0C();
    *(&v70 + 1) = v39;
    *&v69 = v40;
    sub_10075F58C();
    sub_10000CFBC(&v69, &unk_1009434C0);
    (*(v64 + 104))(v51, enum case for NavigationTab.search(_:), v65);
    sub_10000A5D4(&unk_100942870);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007841E0;
    *(v41 + 32) = v34;

    sub_10076F4DC();
    sub_10076225C();
    swift_allocObject();
    v42 = sub_10076221C();
    v43 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v36, 1, v43) == 1)
    {

      sub_10000CFBC(v36, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v42, 1, v38, v36);

      (*(v44 + 8))(v36, v43);
    }
  }
}

void sub_10017CD5C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v49 = &v40 - v3;
  v4 = sub_10075F65C();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100765F6C();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100766EDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_10076F4FC();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  v22 = sub_10076C15C();
  __chkstk_darwin(v22);
  v25 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v25)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    (*(v24 + 104))(&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.account(_:));
    v26 = sub_10075DB7C();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v27 = sub_10076096C();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v50 = 0u;
    v51 = 0u;

    sub_10076F4DC();
    v28 = *(v10 + 104);
    v42 = v10 + 104;
    v43 = v9;
    v41 = v28;
    v28(v14, enum case for FlowPresentationContext.infer(_:), v9);
    (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v44);
    (*(v45 + 104))(v47, enum case for FlowOrigin.inapp(_:), v46);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v29 = sub_10075F5EC();
    v30 = ASKDeviceTypeGetCurrent();
    v31 = sub_10076FF9C();
    v33 = v32;
    if (v31 == sub_10076FF9C() && v33 == v34)
    {

      v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }

    else
    {
      v36 = sub_10077167C();

      v35 = &enum case for FlowPresentationContext.presentModal(_:);
      if (v36)
      {
        v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }
    }

    v37 = v49;
    v41(v48, *v35, v43);
    sub_10075F5CC();
    v38 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {

      sub_10000CFBC(v37, &unk_100943200);
    }

    else
    {
      sub_100263C24(v29, 1, v25, v37);

      (*(v39 + 8))(v37, v38);
    }
  }
}

void sub_10017D568(void (*a1)(void, __n128), uint64_t (*a2)(uint64_t))
{
  v5 = sub_10000A5D4(&unk_100943200);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v9)
  {
    a1(0, v6);
    swift_allocObject();

    v11 = a2(v10);
    v12 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {

      sub_10000CFBC(v8, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v11, 1, v9, v8);

      (*(v13 + 8))(v8, v12);
    }
  }
}

void sub_10017D840()
{
  v0 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v0 - 8);
  v52 = &v42 - v1;
  v50 = sub_10075F65C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100765F6C();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100766EDC();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ASKBuildTypeGetCurrent();
  v19 = sub_10076FF9C();
  v21 = v20;
  if (v19 == sub_10076FF9C() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = sub_10077167C();

  if (v23)
  {
    goto LABEL_5;
  }

  v31 = sub_10076FF9C();
  v33 = v32;
  if (v31 == sub_10076FF9C() && v33 == v34)
  {
LABEL_3:

    goto LABEL_6;
  }

  v35 = sub_10077167C();

  if (v35)
  {
LABEL_5:

LABEL_6:
    v24 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
    if (v24)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      (*(v15 + 104))(v17, enum case for FlowPage.debugSettings(_:), v14);
      v25 = sub_10075DB7C();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      v26 = sub_10076096C();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v54 = 0u;
      v55 = 0u;

      sub_10076F4DC();
      (*(v43 + 104))(v47, enum case for FlowPresentationContext.presentModalFormSheet(_:), v44);
      (*(v45 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v46);
      (*(v48 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
      sub_10076FA2C();
      sub_10075F63C();
      swift_allocObject();
      v27 = sub_10075F5EC();
      v28 = sub_10000A5D4(&unk_1009428E0);
      v29 = v52;
      sub_10076F5AC();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) == 1)
      {

        sub_10000CFBC(v29, &unk_100943200);
      }

      else
      {
        sub_100263C24(v27, 1, v24, v29);

        (*(v30 + 8))(v29, v28);
      }
    }

    return;
  }

  v36 = sub_10076FF9C();
  v38 = v37;
  if (v36 == sub_10076FF9C() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_10077167C();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  sub_10076F73C();
  sub_10076F72C();
  if (qword_1009414D0 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A5D4(&unk_100955860);
  sub_10000A61C(v41, qword_1009A3248);
  sub_10076F41C();

  if (v56 != 2 && (v56 & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_10017E160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094B168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10017E360()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() effectWithBlurRadius:26.0];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  v4 = OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_blurView;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_blurView] = v3;
  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  isa = sub_1007703CC().super.super.isa;
  [v5 setValue:isa forKey:kCAFilterInputAmount];

  v7 = [*&v0[v4] contentView];
  v8 = [v7 layer];

  sub_10000A5D4(&unk_1009434B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  *(v9 + 56) = sub_10017E880();
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = sub_1007701AC().super.isa;

  [v8 setFilters:v11];

  *&v0[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_gradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_gradientView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_gradientView]];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = *&v16[v17];
  *&v28.a = _swiftEmptyArrayStorage;
  v20 = v19;
  sub_1007714EC();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  *&v20[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C05B8();

  v21 = *&v16[v17];
  v22 = [v21 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 1.0}];

  v23 = *&v16[v17];
  v24 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v25 = *&v16[v17];
  sub_1001C0414(&off_100882DF0);

  v26 = *&v16[v17];
  CGAffineTransformMakeRotation(&v28, -0.20943951);
  [v26 setTransform:&v28];

  return v16;
}

unint64_t sub_10017E880()
{
  result = qword_100948AC8;
  if (!qword_100948AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100948AC8);
  }

  return result;
}

uint64_t type metadata accessor for ScrollablePillView()
{
  result = qword_10094B1C0;
  if (!qword_10094B1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10017E968()
{
  if (qword_100941378 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A2728;
  qword_10099D3D8 = qword_1009A2728;

  return v1;
}

uint64_t sub_10017E9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1007708CC();
  sub_10011E080(a1, &v24);
  sub_10000A570(a2, v20);
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v6 = qword_10099D3D8;
  v22 = &type metadata for SearchLinkLayout;
  v23 = sub_10017FCFC();
  v7 = swift_allocObject();
  v21 = v7;
  v8 = sub_10017FDA0();
  v9 = swift_allocObject();
  sub_10000A570(v20, v9 + 16);
  sub_10011E080(&v24, &v18);
  if (v19)
  {
    sub_100012498(&v18, v17);
    v10 = swift_allocObject();
    sub_100012498(v17, v10 + 16);
    v11 = v6;
    sub_10000CD74(v20);
    sub_10017FE2C(&v24);
    v12 = &type metadata for AutoAdjustingPlaceable;
    v13 = v8;
  }

  else
  {
    v14 = v6;
    sub_10000CD74(v20);
    sub_10017FE2C(&v24);
    v12 = 0;
    v13 = 0;
    v10 = 0;
  }

  v7[2] = v10;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = v12;
  v7[6] = v13;
  v7[7] = v9;
  v7[10] = &type metadata for AutoAdjustingPlaceable;
  v7[11] = v8;
  v7[12] = v6;
  v7[13] = 0x4014000000000000;
  v25 = sub_10076E04C();
  v26 = &protocol witness table for Margins;
  sub_10000DB7C(&v24);
  sub_10076E03C();
  a3[3] = &type metadata for AutoAdjustingPlaceable;
  a3[4] = v8;
  v15 = swift_allocObject();
  *a3 = v15;
  return sub_100012498(&v24, v15 + 16);
}

char *sub_10017EC04(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v54 = sub_10076DD3C();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  __chkstk_darwin(v15);
  v17 = v53 - v16;
  __chkstk_darwin(v18);
  v53[1] = v53 - v19;
  v20 = qword_10094B1B0;
  *&v4[v20] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_10094B1B8;
  sub_10076D4BC();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = type metadata accessor for ScrollablePillView();
  v56.receiver = v4;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = [v27 layer];
  [v28 setCornerCurve:kCACornerCurveContinuous];

  v29 = [v27 layer];
  [v27 bounds];
  [v29 setCornerRadius:CGRectGetHeight(v57) * 0.5];

  v30 = [v27 layer];
  [v30 setBorderWidth:1.0];

  [v27 setNeedsDisplay];
  v31 = [v27 layer];
  if (qword_100941360 != -1)
  {
    swift_once();
  }

  v32 = [qword_1009A2710 CGColor];
  [v31 setBorderColor:v32];

  [v27 setNeedsDisplay];
  v33 = qword_10094B1B0;
  v34 = qword_100941368;
  v35 = *&v27[qword_10094B1B0];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:qword_1009A2718];

  v36 = *&v27[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_10075FB8C();

  v40 = *&v27[v33];
  sub_10075FC0C();

  v41 = qword_10093F868;
  v42 = *&v27[v33];
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = [objc_opt_self() configurationWithTextStyle:qword_10099D3D8 scale:2];
  sub_10075FC3C();

  [v27 addSubview:*&v27[v33]];
  v44 = qword_10094B1B8;
  v45 = qword_100941350;
  v46 = *&v27[qword_10094B1B8];
  if (v45 != -1)
  {
    swift_once();
  }

  [v46 setTextColor:qword_1009A2700];

  v47 = *&v27[v44];
  v48 = [v27 traitCollection];

  sub_10076DD2C();
  sub_10076DC9C();
  v49 = *(v9 + 8);
  v50 = v11;
  v51 = v54;
  v49(v50, v54);
  sub_10076DD1C();
  v49(v14, v51);
  sub_10076DD0C();
  v49(v17, v51);
  sub_10076D49C();

  [v27 addSubview:*&v27[v44]];
  sub_10017FF5C();
  sub_10077075C();
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v27;
}
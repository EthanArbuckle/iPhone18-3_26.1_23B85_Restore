uint64_t sub_1003812BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_100946720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10076B6EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = sub_10076B8EC();
  v23 = v16;
  v24 = v15;
  v25 = a1;
  sub_10076465C();
  sub_10076B6CC();
  sub_100384AD4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v17 = sub_10077124C();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = 0;
  if (v17)
  {
    sub_1000325F0();
    v19 = sub_100770CFC();
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v5 + 8))(v7, v4);
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  type metadata accessor for Accessory();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100381550(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = sub_10077164C();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007621EC();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15(v11, v8);
  if (v31 && (sub_1007603BC() & 1) != 0)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D9AC();
    sub_10000A61C(v16, qword_1009A2350);
    sub_10076462C();
    sub_10076D17C();
    sub_10076D40C();
    bottom = v17;

    swift_unknownObjectRelease();
    (*(v27 + 8))(v4, v28);
    left = 0.0;
    top = 32.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v19.n128_f64[0] = top;
  v20.n128_f64[0] = left;
  v21.n128_f64[0] = bottom;
  v22.n128_f64[0] = right;
  sub_1006115B8(v7, v19, v20, v21, v22);
  return (*(v5 + 8))(v7, v29);
}

uint64_t sub_1003818EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B5EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100381918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10000A5D4(&unk_100946720);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v10 + 8))(v12, v9);
    v15 = v17;
    if (v17)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1004267C8(v15, Strong, *(v14 + 32), a6, a7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100381AB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10037FCAC(a1, a6, a7);
  }

  return result;
}

uint64_t sub_100381B2C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100383D9C(a1, a6);
  }

  return result;
}

uint64_t sub_100381BA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10037FCAC(*&a1[OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_titleView], a6, a7);
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_10076F64C();
    sub_10076FC1C();
    v15 = v19[0];
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {

      sub_10060FEFC(v19);
      if (v16)
      {

        sub_100016C74(v19);

        v19[3] = type metadata accessor for InteractiveTitleHeaderView();
        v19[4] = &off_1008A3180;
        v19[0] = a1;
        v17 = a1;
        sub_10043DED8(v19);

        return sub_10000CFBC(v19, &unk_1009575D0);
      }
    }

    else
    {
    }

    return sub_100016C74(v19);
  }

  return result;
}

uint64_t sub_100381E08(void *a1)
{
  v2 = sub_10000A5D4(&unk_100946720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_10076F64C();

    sub_10076FC1C();

    v7 = v11[0];
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {

      sub_10060FEFC(v11);
      if (v8)
      {

        sub_100016C74(v11);

        v10[3] = type metadata accessor for InteractiveSectionBackgroundView();
        v10[4] = &off_10088D588;
        v10[0] = a1;
        v9 = a1;
        sub_10043DED8(v10);

        return sub_10000CFBC(v10, &unk_1009575D0);
      }
    }

    sub_100016C74(v11);
  }

  return result;
}

uint64_t sub_10038205C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = sub_10000A5D4(&unk_100946720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 32);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      sub_10076468C();
      a4(v8, ObjectType, v12);
      swift_unknownObjectRelease();
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_1003821B0()
{

  sub_10000CC8C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1003822A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GenericPageShelfSupplementaryProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 32) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 16) = a2;
  return v7;
}

double sub_100382310(double a1, double a2)
{
  v4 = sub_10000A5D4(&unk_100946720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v29)
  {
    v12 = sub_10076461C();
    sub_10076B8EC();
    v14 = v13;
    if (qword_10093F988 != -1)
    {
      swift_once();
    }

    v15 = qword_10094C0F0;
    if (v14)
    {
      v16 = sub_10076FF6C();
    }

    else
    {
      v16 = 0;
    }

    [v15 setTitle:v16 forState:0];

    [v15 setImage:0 forState:0];
    v19 = [v15 titleLabel];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = [v21 font];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];
      }

      else
      {
        v24 = 0;
      }

      [v21 setFont:v24];
    }

    [v15 sizeThatFits:{a1, a2}];
    v26 = v25;

    v18 = v26 + 0.0;
    [v15 setTitle:0 forState:0];
    [v15 setImage:0 forState:0];
  }

  else
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v11(v7, v4);
    if (v29 && (v17 = sub_1007603BC(), , (v17 & 1) != 0))
    {
      return 156.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v18;
}

uint64_t sub_100382688()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10076461C();
  v8 = sub_10077071C();

  if (v8)
  {
    return 0;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v13)
  {

    return 1;
  }

  else
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v10(v3, v0);
    if (v13 && (v11 = sub_1007603BC(), , (v11 & 1) != 0))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100382860()
{
  v0 = sub_10000A5D4(&qword_100944530);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v20 = sub_10076C38C();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = v22;
  if (!v22)
  {
    return 0;
  }

  v19 = v21;
  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v16 = v15;
  (*(v3 + 8))(v5, v20);
  v17 = sub_10076461C();
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13(v9, v6);
  sub_100181114(v19, v14, v17, v2);

  sub_10000CFBC(v2, &qword_100944530);
  return v16;
}

void *sub_100382B5C(uint64_t a1, int *a2)
{
  v2 = COERCE_DOUBLE(sub_10037F5E8(a1, a2));
  if ((v4 & 1) != 0 || ((v5 = v2, v6 = v3, v3 >= v2) ? (v7 = v2) : (v7 = v3), v7 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 absoluteDimension:v5];
    v10 = [v8 estimatedDimension:v6];
    v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v11 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v13 = v12;
  }

  v14 = COERCE_DOUBLE(sub_100382860());
  if ((v16 & 1) != 0 || ((v17 = v14, v18 = v15, v15 >= v14) ? (v19 = v14) : (v19 = v15), v19 <= 0.0))
  {
    v24 = 0;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 absoluteDimension:v17];
    v22 = [v20 absoluteDimension:v18];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionFooter alignment:5];
    v25 = v24;
  }

  v26 = 0;
  v30[4] = v12;
  v30[5] = v24;
  while (v26 != 2)
  {
    v27 = v30[v26++ + 4];
    if (v27)
    {
      v28 = v27;
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }
  }

  sub_10000A5D4(&qword_100954710);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *sub_100382E44()
{
  v0 = sub_1007621EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100946720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v9 = *(sub_10000A5D4(&qword_10094E098) + 48);
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    v11 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_1007708EC();
    v12 = sub_10076FF6C();

    v13 = [v11 backgroundDecorationItemWithElementKind:v12];

    *(v10 + 32) = v13;
    v14 = sub_1007659CC();
    (*(*(v14 - 8) + 8))(&v3[v9], v14);
  }

  else if (v8 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v15 = sub_10000A5D4(&qword_10094B500);
    v16 = v15[12];
    v17 = v15[16];
    v18 = v15[20];
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    v19 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_1007708EC();
    v20 = sub_10076FF6C();

    v21 = [v19 backgroundDecorationItemWithElementKind:v20];

    *(v10 + 32) = v21;
    v22 = sub_1007659CC();
    (*(*(v22 - 8) + 8))(&v3[v18], v22);
    v23 = sub_10076A05C();
    v24 = *(*(v23 - 8) + 8);
    v24(&v3[v17], v23);
    v24(&v3[v16], v23);
  }

  else if (v8 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v25 = *(sub_10000A5D4(qword_10094ADC0) + 48);
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    v26 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_1007708EC();
    v27 = sub_10076FF6C();

    v28 = [v26 backgroundDecorationItemWithElementKind:v27];

    *(v10 + 32) = v28;
    v29 = sub_1007659CC();
    (*(*(v29 - 8) + 8))(&v3[v25], v29);
    v30 = sub_10076AA6C();
    (*(*(v30 - 8) + 8))(v3, v30);
  }

  else if (v8 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else if (v8 == enum case for ShelfBackground.interactive(_:))
  {
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    v31 = objc_opt_self();
    type metadata accessor for InteractiveSectionBackgroundView();
    sub_1007708EC();
    v32 = sub_10076FF6C();

    v33 = [v31 backgroundDecorationItemWithElementKind:v32];

    *(v10 + 32) = v33;
  }

  else
  {
    v34 = enum case for ShelfBackground.editorsChoice(_:);
    v35 = v8;
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    v36 = objc_opt_self();
    if (v35 == v34)
    {
      type metadata accessor for EditorsChoiceBackgroundView();
      sub_1007708EC();
      v37 = sub_10076FF6C();

      v38 = [v36 backgroundDecorationItemWithElementKind:v37];

      *(v10 + 32) = v38;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_1007708EC();
      v39 = sub_10076FF6C();

      v40 = [v36 backgroundDecorationItemWithElementKind:v39];

      *(v10 + 32) = v40;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v10;
}

void *sub_100383578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = sub_1007621EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  LODWORD(v10) = enum case for ShelfBackground.interactive(_:);
  (*(v6 + 8))(v8, v5);
  if (v13 != v10)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  sub_10076F64C();
  sub_10076FC1C();
  v14 = sub_1001485D0(a1, v18, a3);
  sub_10000A5D4(&qword_100944390);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100783DD0;
  v16 = sub_100384AD4(&qword_100954708, type metadata accessor for InteractiveSectionBackgroundScrollObserver);
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;

  return v15;
}

uint64_t sub_10038381C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B5EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100383874()
{
  sub_10076469C();

  return sub_1003845C8();
}

uint64_t sub_1003838D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100383910(void *a1)
{
  sub_10076469C();

  return sub_100381E08(a1);
}

uint64_t sub_1003839AC()
{
  v1 = *(sub_10076469C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_100381550(v0 + v2, *(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_100383A58()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100383BCC()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100383CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_10076469C() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

uint64_t sub_100383D9C(char *a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_10076469C();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v37 = v4;
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007621EC();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100944530);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v43;
  v33 = v42;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17(v13, v10);
  if (qword_10093F928 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ShelfFooterView.Style();
  v20 = sub_10000A61C(v19, qword_10099D618);
  v21 = v41;
  sub_100181FA0(v33, v18, v20, v9, a2);

  sub_10000CFBC(v9, &qword_100944530);
  sub_10076468C();
  swift_getKeyPath();
  v22 = v34;
  sub_10076F49C();

  v17(v16, v10);
  v23 = sub_1004751F8();
  (*(v35 + 8))(v22, v36);
  [v21 setOverrideUserInterfaceStyle:v23];
  v24 = swift_allocObject();
  swift_weakInit();
  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 16))(v38, a2, v40);
  v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  (*(v25 + 32))(v29 + v28, v26, v27);
  v30 = &v21[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction];
  v31 = *&v21[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction];
  *v30 = sub_100384254;
  v30[1] = v29;

  sub_1000167E0(v31);
}

uint64_t sub_10038426C(uint64_t a1, void (*a2)(char *))
{
  v21 = a2;
  v2 = sub_10077164C();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1007621EC();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15(v11, v8);
  if (v22)
  {
    if (sub_1007603BC())
    {
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v16 = sub_10076D9AC();
      sub_10000A61C(v16, qword_1009A2350);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();

      swift_unknownObjectRelease();
      (*(v18 + 8))(v4, v19);
    }

    else
    {
    }
  }

  v21(v7);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_1003845C8()
{
  v0 = sub_10077164C();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007621EC();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13 = *(v7 + 8);
  v13(v12, v6);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13(v9, v6);
  if (v19)
  {
    if (sub_1007603BC())
    {
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v14 = sub_10076D9AC();
      sub_10000A61C(v14, qword_1009A2350);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();

      swift_unknownObjectRelease();
      (*(v16 + 8))(v2, v17);
    }

    else
    {
    }
  }

  return (*(v3 + 8))(v5, v18);
}

uint64_t sub_100384914@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B64C();
  *a1 = result;
  return result;
}

uint64_t sub_100384940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B65C();
  *a1 = result;
  return result;
}

uint64_t sub_100384A08()
{
  sub_10076469C();

  return sub_100382688();
}

uint64_t sub_100384A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100384AD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100384B54()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
  sub_1007644CC();
  v2 = sub_10076FF6C();

  [v1 setText:v2];
}

double sub_100384C60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10076997C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007644CC();
  sub_10005312C();
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  sub_10000A61C(v9, qword_1009A1480);
  v10 = [a4 traitCollection];
  sub_100770B3C();

  v11 = sub_10076C04C();
  v18 = v11;
  v19 = sub_100384F04(&qword_100943230, &type metadata accessor for Feature);
  v12 = sub_10000DB7C(v17);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_10076C90C();
  sub_10000CD74(v17);
  sub_10076996C();
  sub_10076994C();
  (*(v6 + 8))(v8, v5);
  sub_10000CF78(v17, v18);
  sub_10076D2BC();
  v14 = v13;
  sub_10000CD74(v17);
  return v14;
}

uint64_t sub_100384F04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CrossLinkPresenter.adamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v4 = sub_10076B96C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CrossLinkPresenter.isVisible.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100385020(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t CrossLinkPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*CrossLinkPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1003852AC;
}

void sub_1003852AC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t CrossLinkPresenter.__allocating_init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

void *CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v47 = a6;
  v52 = a5;
  v42 = a2;
  v43 = a4;
  v45 = a7;
  v46 = a10;
  v48 = *v10;
  v49 = a3;
  v14 = sub_10075EBAC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = v10 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
  *(v21 + 1) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v23 = sub_10076B96C();
  v50 = *(v23 - 8);
  v51 = v23;
  (*(v50 + 16))(v11 + v22, a1);
  swift_beginAccess();
  v44 = a8;
  *(v21 + 1) = a8;
  v24 = v45;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v53 = a9;
  v54 = a1;
  v25 = v47;
  v26 = sub_10075EE2C();
  v27 = (v11 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_stateMachine);
  *v27 = v26;
  v27[1] = v28;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10075ED2C();
  (*(v15 + 32))(v17, v20, v14);
  v29 = (*(v15 + 88))(v17, v14);
  if (v29 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_1007627AC();
LABEL_3:
    (*(*(v30 - 8) + 8))(v17, v30);
LABEL_6:
    v31 = 1;
    goto LABEL_7;
  }

  if (v29 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_6;
  }

  if (v29 == enum case for LegacyAppState.installing(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_10075EB1C();
    goto LABEL_3;
  }

  if (v29 == enum case for LegacyAppState.openable(_:))
  {
    (*(v15 + 96))(v17, v14);

    v30 = sub_100764E5C();
    goto LABEL_3;
  }

  (*(v15 + 8))(v17, v14);
  v31 = 0;
LABEL_7:
  v32 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible) = v31;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v25 & 1;
  *(v34 + 32) = v48;

  sub_10075ECEC();

  if (v24)
  {
    ObjectType = swift_getObjectType();
    v36 = v44;
    v37 = *(v44 + 40);
    swift_unknownObjectRetain();
    v48 = v26;
    v37(v42, v49, v43, v52, ObjectType, v36);

    swift_unknownObjectRelease();
    v38 = swift_getObjectType();
    swift_beginAccess();
    v39 = *(v11 + v32);
    v40 = *(v36 + 32);
    swift_unknownObjectRetain();
    v40(v39, 0, v38, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    (*(v50 + 8))(v54, v51);
  }

  else
  {

    (*(v50 + 8))(v54, v51);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v11;
}

uint64_t sub_1003859E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100385A18()
{
  v0 = sub_10075EBAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_10075ED2C();
    (*(v1 + 32))(v3, v6, v0);
    v8 = (*(v1 + 88))(v3, v0);
    if (v8 == enum case for LegacyAppState.waiting(_:))
    {
      (*(v1 + 96))(v3, v0);
      v9 = sub_1007627AC();
    }

    else
    {
      if (v8 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v1 + 8))(v3, v0);
        goto LABEL_7;
      }

      if (v8 == enum case for LegacyAppState.installing(_:))
      {
        (*(v1 + 96))(v3, v0);
        v9 = sub_10075EB1C();
      }

      else
      {
        if (v8 != enum case for LegacyAppState.openable(_:))
        {
          (*(v1 + 8))(v3, v0);
          v10 = 0;
          goto LABEL_8;
        }

        (*(v1 + 96))(v3, v0);

        v9 = sub_100764E5C();
      }
    }

    (*(*(v9 - 8) + 8))(v3, v9);
LABEL_7:
    v10 = 1;
LABEL_8:
    sub_100385020(v10);
  }

  return result;
}

uint64_t sub_100385CD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t CrossLinkPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10076B96C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000CC8C(v1 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CrossLinkPresenter.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10076B96C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000CC8C(v1 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100385EF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for CrossLinkPresenter()
{
  result = qword_100954818;
  if (!qword_100954818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100385FCC()
{
  result = sub_10076B96C();
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

unint64_t sub_100386168(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v174 = a3;
  v156 = a2;
  v170 = a1;
  ObjectType = swift_getObjectType();
  v159 = sub_1007679DC();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v6 - 8);
  v160 = &v156 - v7;
  v164 = sub_10000A5D4(&qword_1009548E8);
  __chkstk_darwin(v164);
  v173 = &v156 - v8;
  v9 = sub_10000A5D4(&unk_100962490);
  __chkstk_darwin(v9 - 8);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v156 - v12;
  __chkstk_darwin(v13);
  v171 = &v156 - v14;
  v15 = sub_10076201C();
  v16 = *(v15 - 8);
  v167 = v15;
  v168 = v16;
  __chkstk_darwin(v15);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v163 = &v156 - v19;
  v20 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v20 - 8);
  v175 = &v156 - v21;
  v22 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v22 - 8);
  v172 = &v156 - v23;
  v24 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v27 - 8);
  v29 = &v156 - v28;
  v30 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v30 - 8);
  v32 = &v156 - v31;
  v33 = sub_10076A3AC();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_100946760);
  *&v38 = __chkstk_darwin(v37 - 8).n128_u64[0];
  v40 = &v156 - v39;
  v41 = [v3 traitCollection];
  LODWORD(v169) = sub_10077071C();

  v42 = *(v34 + 104);
  v42(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v33);
  v42(v32, enum case for OfferButtonPresenterViewAlignment.left(_:), v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_10038814C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v43 = v170;
  v44 = v4;
  sub_10076759C();
  v45 = sub_10000A5D4(&qword_100945590);
  (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  v46 = sub_10075F78C();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = sub_1007628DC();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
  v48 = sub_10076C54C();
  v49 = v172;
  (*(*(v48 - 8) + 56))(v172, 1, 1, v48);
  v50 = sub_10000A5D4(&unk_100946750);
  v51 = v175;
  (*(*(v50 - 8) + 56))(v175, 1, 1, v50);
  sub_1004D0A60(v43, v4, v40, v174, 0, (v169 & 1) == 0, v29, v26, v49, v51);
  sub_10000CFBC(v51, &qword_10094F730);
  sub_10000CFBC(v49, &unk_100949290);
  sub_10000CFBC(v26, &unk_1009492A0);
  sub_10000CFBC(v29, &unk_10094D210);
  sub_10000CFBC(v40, &unk_100946760);
  sub_10076289C();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
  }

  v53 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  v54 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  v55 = v173;
  v56 = v171;
  if (v54 && ([v54 isHidden] & 1) == 0 && (v57 = *&v4[v53]) != 0)
  {
    LODWORD(v172) = [v57 hasContent];
  }

  else
  {
    LODWORD(v172) = 0;
  }

  v58 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v59 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v59 && ([v59 isHidden] & 1) == 0 && (v60 = *&v4[v58]) != 0)
  {
    LODWORD(v175) = [v60 hasContent];
  }

  else
  {
    LODWORD(v175) = 0;
  }

  if (sub_10076BB0C() && (v61 = sub_10076518C(), , v61))
  {
  }

  else
  {
    v62 = sub_10076C04C();
    v177 = v62;
    v178 = sub_10038814C(&qword_100943230, &type metadata accessor for Feature);
    v63 = sub_10000DB7C(v176);
    (*(*(v62 - 8) + 104))(v63, enum case for Feature.search_tags(_:), v62);
    LOBYTE(v62) = sub_10076C90C();
    sub_10000CD74(v176);
    if ((v62 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v172)
  {
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    v64 = *&v4[v58];
    if (v64)
    {
      [v64 setHidden:1];
    }
  }

  else if (v175)
  {
    v65 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    LODWORD(v175) = 1;
    [v65 setHidden:1];
    goto LABEL_23;
  }

  LODWORD(v175) = 0;
LABEL_23:
  v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_useAdsLocale] = sub_10076BA3C() & 1;
  if (v52)
  {

    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = sub_1007627DC() & 1;
    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute] = sub_10076286C() & 1;
    v66 = sub_10076C04C();
    v177 = v66;
    v178 = sub_10038814C(&qword_100943230, &type metadata accessor for Feature);
    v67 = sub_10000DB7C(v176);
    (*(*(v66 - 8) + 104))(v67, enum case for Feature.search_tags(_:), v66);
    LOBYTE(v66) = sub_10076C90C();
    sub_10000CD74(v176);
    if (v66 & 1) != 0 && (sub_1007627DC())
    {
      if (sub_10076BB3C())
      {
        v68 = v163;
        sub_100766A8C();
        v69 = v167;
        v70 = v168;
        v71 = v162;
        (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
        sub_10038814C(&unk_100958360, &type metadata accessor for OfferLabelStyle);
        v72 = sub_10076FF1C();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v68, v69);
        if ((v72 & 1) == 0)
        {
          v137 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
          v138 = 1.0;
          if (!v44[v137])
          {
            v138 = 0.0;
          }

          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v138, v156}];
          v139 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
          sub_100523700(v139);

          goto LABEL_98;
        }
      }

      v74 = sub_10076BB8C();
      if (v74)
      {
        v75 = v74;
        sub_10076BA1C();
        if (v76)
        {
          v77 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 1;
          v78 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView;
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:1.0];
          v79 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
          v80 = 0.0;
          if (v44[v77])
          {
            v80 = 1.0;
          }

          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v80, v156}];
          v81 = *&v44[v78];
          [v75 floatValue];
          sub_100062020(v82);

          v83 = *&v44[v79];
          v84 = sub_10076FF6C();

          [v83 setText:v84];

          v85 = sub_10076BA8C();
          v86 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = v85 & 1;
          sub_100523700(v86);

          goto LABEL_98;
        }
      }

      v145 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
      v146 = 1.0;
      if (!v44[v145])
      {
        v146 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:v146];
      v147 = sub_10076BA8C();
      v148 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = v147 & 1;
      sub_100523700(v148);
      goto LABEL_98;
    }

    v169 = v52;
    v87 = v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_100523700(v87);
    v88 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v89 = 1.0;
    if (!v4[v88])
    {
      v89 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v89, v156}];
    if (sub_10076BB3C())
    {
      sub_100766A8C();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v98 = v166;
    v99 = v167;
    v100 = v168;
    v101 = *(v168 + 56);
    v101(v56, v90, 1, v167);
    (*(v100 + 104))(v98, enum case for OfferLabelStyle.arcadeComingSoon(_:), v99);
    v101(v98, 0, 1, v99);
    v102 = *(v164 + 48);
    sub_100016E2C(v56, v55, &unk_100962490);
    sub_100016E2C(v98, v55 + v102, &unk_100962490);
    v103 = *(v100 + 48);
    if (v103(v55, 1, v99) == 1)
    {
      sub_10000CFBC(v98, &unk_100962490);
      v55 = v173;
      sub_10000CFBC(v56, &unk_100962490);
      if (v103(v55 + v102, 1, v99) == 1)
      {
        sub_10000CFBC(v55, &unk_100962490);
LABEL_98:
        v149 = sub_10076284C();
        if (v149)
        {
          v150 = v149;
          if (sub_1000E99EC(v149, 0))
          {
            v151 = sub_10076286C();
            sub_1004ED4D8(v150, v151 & 1, v174);
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      v104 = v161;
      sub_100016E2C(v55, v161, &unk_100962490);
      if (v103(v55 + v102, 1, v99) != 1)
      {
        v106 = v56;
        v107 = v55;
        v108 = v168;
        v109 = v107 + v102;
        v110 = v163;
        (*(v168 + 32))(v163, v109, v99);
        sub_10038814C(&unk_100958360, &type metadata accessor for OfferLabelStyle);
        LODWORD(v170) = sub_10076FF1C();
        v111 = *(v108 + 8);
        v111(v110, v99);
        sub_10000CFBC(v166, &unk_100962490);
        sub_10000CFBC(v106, &unk_100962490);
        v111(v104, v99);
        sub_10000CFBC(v107, &unk_100962490);
        if (v170)
        {
          goto LABEL_98;
        }

LABEL_59:
        if (v172)
        {
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:0];
          v105 = *&v44[v58];
          if (v105)
          {
            [v105 setHidden:0];
          }
        }

        else if (v175)
        {
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:0];
        }

        goto LABEL_98;
      }

      sub_10000CFBC(v166, &unk_100962490);
      sub_10000CFBC(v56, &unk_100962490);
      (*(v168 + 8))(v104, v99);
    }

    sub_10000CFBC(v55, &qword_1009548E8);
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
LABEL_68:
    if (sub_10076BB3C())
    {
      v112 = v163;
      sub_100766A8C();
      v113 = v167;
      v114 = v168;
      v115 = v162;
      (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
      sub_10038814C(&unk_100958360, &type metadata accessor for OfferLabelStyle);
      v116 = sub_10076FF1C();
      v117 = *(v114 + 8);
      v117(v115, v113);
      v117(v112, v113);
      if ((v116 & 1) == 0)
      {
        v122 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
        v123 = 1.0;
        if (!v44[v122])
        {
          v123 = 0.0;
        }

        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v123, v156}];
        v124 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_100523700(v124);

        goto LABEL_108;
      }
    }

    if ((v172 | v175))
    {
      if (!sub_10076BB0C())
      {
        goto LABEL_104;
      }

      v118 = sub_10076518C();

      if (!v118)
      {
        goto LABEL_104;
      }
    }

    if (sub_10076BA8C())
    {
      v119 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
      v120 = 1.0;
      if (!v44[v119])
      {
        v120 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v120, v156}];
      v121 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 1;
LABEL_107:
      sub_100523700(v121);
LABEL_108:
      [v44 setNeedsLayout];
    }

    v125 = sub_10076BB8C();
    if (v125)
    {
      v126 = v125;
      sub_10076BA1C();
      if (v127)
      {
        v128 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_100523700(v128);
        v129 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 1;
        v130 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView;
        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:1.0];
        v131 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
        v132 = 0.0;
        if (v44[v129])
        {
          v132 = 1.0;
        }

        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v132, v156}];
        v133 = *&v44[v130];
        [v126 floatValue];
        sub_100062020(v134);

        v135 = *&v44[v131];
        v136 = sub_10076FF6C();

        [v135 setText:v136];

        goto LABEL_108;
      }
    }

LABEL_104:
    v152 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
    v153 = 1.0;
    if (!v44[v152])
    {
      v153 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:v153];
    v121 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    goto LABEL_107;
  }

  v91 = sub_10076282C();
  if (!v91)
  {

    goto LABEL_68;
  }

  v92 = v91;
  if ((sub_1000E99EC(0, v91) & 1) == 0)
  {

    goto LABEL_68;
  }

  if (sub_10076280C() >> 62)
  {
    sub_10077158C();
  }

  result = sub_10076288C();
  v94 = v160;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_50:

    sub_100016E2C(v156, v94, &unk_1009428D0);
    v96 = sub_10076341C();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_10000CFBC(v94, &unk_1009428D0);
    }

    else
    {
      sub_100763F3C();
      sub_10038814C(&qword_1009548F0, &type metadata accessor for BundleSearchResult);
      sub_10076334C();
      (*(v97 + 8))(v94, v96);
    }

    v140 = v159;
    v141 = v157;
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    sub_10051F824(v92, v141, v174);

    (*(v158 + 8))(v141, v140);
    v142 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_100523700(v142);
    v143 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v144 = 1.0;
    if (!v44[v143])
    {
      v144 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v144, v156}];

    goto LABEL_108;
  }

  v154 = result;
  v155 = sub_10077158C();
  result = v154;
  if (!v155)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_48:

    v95 = sub_10076C41C();

    if (v95 >> 62)
    {
      sub_10077158C();
    }

    goto LABEL_50;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_48;
  }

  __break(1u);
  return result;
}

void sub_100387B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_100522C28([v6 init]);
    v7 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_10076C3FC();
      sub_10076B8EC();
      v11 = v10;

      if (v11)
      {
        v12 = sub_10076FF6C();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_10094CD78];
        v18 = *&v15[qword_10094CD78];
        *v17 = sub_100388144;
        v17[1] = v16;

        v19 = v15;

        sub_1000167E0(v18);
      }
    }

    v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
    if (v20)
    {
      sub_100016F40(0, &qword_100942F10);
      v21 = v20;
      v22 = sub_100770D1C();
      [v21 setTintColor:v22];
    }

    v23 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    sub_100016F40(0, &qword_100942F10);
    v24 = sub_100770D1C();
    [v23 setTextColor:v24];

    v25 = sub_10076C04C();
    v38[3] = v25;
    v38[4] = sub_10038814C(&qword_100943230, &type metadata accessor for Feature);
    v26 = sub_10000DB7C(v38);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25);
    LOBYTE(v24) = sub_10076C90C();
    sub_10000CD74(v38);
    v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
    if (v24)
    {
      v28 = sub_100770D1C();
    }

    else
    {
      v28 = sub_100770D0C();
    }

    v29 = v28;
    [v27 setTextColor:v28];

    sub_10076C3EC();
    v31 = v30;
    v32 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
    v33 = [v32 superview];
    if (!v33 || (v34 = v33, sub_100016F40(0, &qword_1009441F0), v35 = v3, v36 = sub_100770EEC(), v34, v35, (v36 & 1) == 0))
    {
      [v3 addSubview:v32];
    }

    [v32 setHidden:v31 == 0];
    if (v31)
    {
      v37 = sub_10076FF6C();
    }

    else
    {
      v37 = 0;
    }

    [v32 setText:v37];

    [v3 setNeedsLayout];
    v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 1;
    sub_10052385C();
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 0;
    sub_10052385C();
    v13 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_100387F8C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943200);
  }

  v8 = sub_10076C3FC();
  sub_100263BF0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_100388104()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10038814C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ProductEditorsChoiceView()
{
  result = qword_100954918;
  if (!qword_100954918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10038823C@<X0>(char a1@<W2>, uint64_t *a2@<X8>)
{
  v5 = sub_10076D65C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10076D63C();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  sub_10076D64C();

  v13 = *(v6 + 8);
  v13(v8, v5);
  a2[3] = v5;
  a2[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(a2);
  sub_10076D64C();
  return (v13)(v11, v5);
}

char *sub_1003883EC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076771C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v4[qword_100954910] = 0;
  v25 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
  v26 = sub_100040B8C(3u, 0, 0, 0, 1u);
  v56 = v4;
  *&v4[qword_1009548F8] = v26;
  if (qword_100940C40 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v9, qword_1009A12B8);
  v52 = *(v10 + 16);
  v53 = v27;
  v52(v24, v27, v9);
  (*(v10 + 56))(v24, 0, 1, v9);
  (*(v13 + 104))(v18, enum case for DirectionalTextAlignment.none(_:), v12);
  v28 = objc_allocWithZone(type metadata accessor for FadeOutDynamicTypeLabel());
  v29 = qword_100966530;
  *&v28[v29] = [objc_allocWithZone(type metadata accessor for InvertedGradientLayer()) init];
  v30 = &v28[qword_100966538];
  *v30 = 0;
  v30[8] = 1;
  sub_100389394(v24, v21);
  (*(v13 + 16))(v15, v18, v12);
  v31 = sub_1007626AC();
  (*(v13 + 8))(v18, v12);
  sub_1000276DC(v24);
  v32 = v56;
  *&v56[qword_100954900] = v31;
  v33 = [objc_opt_self() clearColor];
  type metadata accessor for FadeInDynamicTypeButton();
  v34 = v54;
  v52(v54, v53, v9);
  v35 = v33;
  v36 = sub_1004CF028(v34, v35);

  v37 = v36;
  v58._countAndFlagsBits = 0x4D5F4E4F49544341;
  v58._object = 0xEB0000000045524FLL;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_1007622EC(v58, v59);
  v38 = sub_10076FF6C();

  [v37 setTitle:v38 forState:0];

  [v37 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v37 setAdjustsImageWhenHighlighted:0];

  *&v32[qword_100954908] = v37;
  v57.receiver = v32;
  v57.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v43 = v39;
  [v43 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v44 = qword_1009548F8;
  v45 = *&v43[qword_1009548F8];
  sub_1000325F0();
  v46 = v45;
  v47 = sub_100770CFC();
  [v46 setTintColor:v47];

  [v43 addSubview:*&v43[v44]];
  v48 = qword_100954900;
  [*&v43[qword_100954900] setLineBreakMode:0];
  [v43 addSubview:*&v43[v48]];
  v49 = qword_100954908;
  [*&v43[qword_100954908] setUserInteractionEnabled:0];
  [v43 addSubview:*&v43[v49]];

  return v43;
}

void sub_1003889FC(uint64_t a1)
{
  *(a1 + qword_100954910) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100388A64@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v8 = *(v1 + qword_1009548F8);
  type metadata accessor for EditorsChoiceView();
  sub_10076D2DC();
  v3 = *(v1 + qword_100954900);
  v6[3] = type metadata accessor for FadeOutDynamicTypeLabel();
  v6[4] = &protocol witness table for UILabel;
  v6[0] = v3;
  v4 = v3;
  sub_10038823C([v8 isHidden], a1);
  sub_10000CD74(v7);
  return sub_10000CD74(v6);
}

id sub_100388B38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1AC();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10076D9AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076DD3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = sub_10076DA7C();
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D9FC();
  v16 = sub_10076DA0C();
  v16();
  if (v0[qword_100954910] == 1)
  {
    v17 = *&v0[qword_100954908];

    return [v17 setHidden:1];
  }

  else
  {
    v58 = v6;
    v59 = v5;
    v60 = *&v0[qword_100954900];
    v19 = [v60 text];
    if (v19)
    {
      v20 = v19;
      sub_10076FF9C();
    }

    sub_10076DD2C();
    if (qword_100940C40 != -1)
    {
      swift_once();
    }

    v21 = sub_10076D3DC();
    sub_10000A61C(v21, qword_1009A12B8);
    sub_10076DCFC();
    (*(v9 + 8))(v11, v8);
    sub_10076DA5C();
    v22 = v15;
    sub_10076DA9C();
    sub_10076422C();
    CGRectGetWidth(v69);
    v23 = [v1 traitCollection];
    sub_10076DA6C();
    v25 = v24;

    v26 = v60;
    [v60 frame];
    Height = CGRectGetHeight(v70);
    v28 = *&v1[qword_100954908];
    if (Height >= v25)
    {
      [*&v1[qword_100954908] setHidden:1];
    }

    else
    {
      [*&v1[qword_100954908] setHidden:0];
      sub_10076422C();
      [v28 sizeThatFits:{v29, v30}];
      v32 = v31;
      *v4 = UIFontTextStyleBody;
      v34 = v61;
      v33 = v62;
      (*(v61 + 104))(v4, enum case for FontSource.textStyle(_:), v62);
      v67[3] = v33;
      v67[4] = &protocol witness table for FontSource;
      v35 = sub_10000DB7C(v67);
      (*(v34 + 16))(v35, v4, v33);
      v36 = UIFontTextStyleBody;
      v37 = v63;
      sub_10076D9BC();
      (*(v34 + 8))(v4, v33);
      sub_10076422C();
      Width = CGRectGetWidth(v71);
      [v26 frame];
      v39 = v32 - (Width - CGRectGetWidth(v72));
      v40 = [v1 traitCollection];
      sub_10076DEDC();
      v41 = v26;
      sub_10000A5D4(&unk_100942870);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007841E0;
      *(v42 + 32) = v40;
      v15 = v22;
      v43 = v40;
      v44 = sub_10076DEEC();
      v45 = v59;
      sub_10076D3EC();
      v47 = v46;

      v48 = &v41[qword_100966538];
      *v48 = v39 + v47;
      *(v48 + 8) = 0;
      [v41 setNeedsLayout];
      sub_10076422C();
      CGRectGetMaxX(v73);
      [v41 frame];
      CGRectGetMaxY(v74);
      v49 = [v1 traitCollection];
      sub_10076422C();
      sub_1007709CC();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v28 setFrame:{v51, v53, v55, v57}];
      (*(v58 + 8))(v37, v45);
    }

    return (*(v64 + 8))(v15, v65);
  }
}

void sub_10038926C()
{
  v1 = *(v0 + qword_100954908);
}

void sub_1003892BC(uint64_t a1)
{
  v2 = *(a1 + qword_100954908);
}

uint64_t sub_100389394(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100389404(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView;
  sub_100016F40(0, &qword_100942F10);
  v14 = sub_100770D2C();
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v13] = sub_10073C780(v14, 0.0, 0.0, 0.0, 0.0);
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView]];

  return v18;
}

uint64_t type metadata accessor for ParagraphCollectionViewCell()
{
  result = qword_100954990;
  if (!qword_100954990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1003899C8(void *a1, char a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  if (a2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if (a1)
  {
    v22 = a9 >= a8 ? a8 : a9;
    if (v22 != 0.0)
    {
      v23 = a1;
      v24 = [a3 traitCollection];
      v25 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v27 = a4;
      v27[1] = a5;
      v27[2] = a6;
      v27[3] = a7;
      *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = v21;
      v28 = &v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v28 = a8;
      v28[1] = a9;
      *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v24;
      *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v23;
      v49.receiver = v26;
      v49.super_class = v25;
      v29 = objc_msgSendSuper2(&v49, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v30 = qword_1009678B0;
      v31 = [qword_1009678B0 objectForKey:v29];
      if (v31)
      {
        v32 = v31;

        a8 = *&v32[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v33 = qword_100941598;
        v32 = v23;
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = sub_10076D3DC();
        v35 = sub_10000A61C(v34, qword_100967898);
        v36 = *(v34 - 8);
        (*(v36 + 16))(v20, v35, v34);
        (*(v36 + 56))(v20, 0, 1, v34);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_10000CFBC(v20, &unk_100943250);
        v43 = type metadata accessor for ExpandableTextView.CacheValue();
        v44 = objc_allocWithZone(v43);
        v45 = &v44[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v45 = a8;
        v45[1] = a4 + a6 + v38;
        *(v45 + 2) = v40;
        *(v45 + 3) = v42;
        v48.receiver = v44;
        v48.super_class = v43;
        v46 = objc_msgSendSuper2(&v48, "init");
        [v30 setObject:v46 forKey:v29];
      }
    }
  }

  return a8;
}

void sub_100389D5C(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_1000325F0();
  a1 = a1;
  v4 = v7;
  v5 = sub_100770EEC();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_10038A0A4();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

uint64_t sub_100389E3C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors) = result;
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , v4 = sub_1000CCE4C(v3, v2), , (v4 & 1) == 0))
  {
LABEL_6:
    sub_10038A1AC();
  }
}

void sub_100389ED4(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchResultBackgroundView();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for SearchCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v1 layer];
    [v6 setCornerRadius:*(v4 + OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_cornerRadius)];

    [v1 setBackgroundColor:*(v4 + OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundColor)];
    v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_borderColor);
    v8 = v7;
    sub_100389D5C(v7);

    sub_100389E3C(v9);
  }
}

void sub_10038A04C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_10038A0A4();
  sub_10038A1AC();
}

void sub_10038A0A4()
{
  v1 = [v0 layer];
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor;
  v4 = 1.0;
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor])
  {
    v4 = 0.0;
  }

  [v1 setBorderWidth:v4];

  v5 = [v0 layer];
  v6 = *&v0[v3];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBorderColor:v7];

  v8 = [v0 layer];
  [v8 setNeedsDisplay];
}

char *sub_10038A1AC()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors];
  p_vtable = &OBJC_METACLASS____TtC20ProductPageExtension47SmallStoryCardShelfComponentTypeMappingProvider.vtable;
  if (!v1)
  {
    v5 = OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer;
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer];
    if (v6)
    {
      [v6 removeFromSuperlayer];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    goto LABEL_25;
  }

  v3 = OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer];
  if (v4)
  {
  }

  else
  {
    v8 = objc_allocWithZone(CAGradientLayer);

    v9 = [v8 init];
    v10 = [v0 layer];
    [v10 addSublayer:v9];

    v11 = *&v0[v3];
    *&v0[v3] = v9;

    v4 = *&v0[v3];
    if (!v4)
    {
LABEL_19:

      goto LABEL_25;
    }
  }

  v12 = v4;
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 setFrame:{v15, v17, v19, v21}];
  v22 = *&v0[v3];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    v23 = sub_10077158C();
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      v35 = v0;
      v38 = _swiftEmptyArrayStorage;
      v24 = v22;
      result = sub_1004BB874(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v38;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v28 = sub_10077149C();
        }

        else
        {
          v28 = *(v1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 CGColor];
        type metadata accessor for CGColor(0);
        v37 = v31;

        *&v36 = v30;
        v38 = v27;
        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          sub_1004BB874((v32 > 1), v33 + 1, 1);
          v0 = v35;
          v27 = v38;
        }

        ++v26;
        v27[2] = v33 + 1;
        sub_10000CD64(&v36, &v27[4 * v33 + 4]);
      }

      while (v23 != v26);

      p_vtable = (&OBJC_METACLASS____TtC20ProductPageExtension47SmallStoryCardShelfComponentTypeMappingProvider + 24);
      goto LABEL_24;
    }
  }

  v24 = v22;

LABEL_24:
  isa = sub_1007701AC().super.isa;

  [v24 setColors:isa];

LABEL_25:
  result = *(p_vtable[310] + v0);
  if (result)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_10038A570(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchResultBackgroundView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10038A624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10038A724()
{
  v0 = sub_10076C38C();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10076718C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007671AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10076997C();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007636DC();
  sub_10038AF0C(&qword_1009540C0, &type metadata accessor for PrivacyDefinition);
  sub_10076332C();
  v10 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v7;
  v43 = v5;
  v44 = v0;
  v45 = v4;
  v11 = sub_10005312C();
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  sub_10000A61C(v12, qword_1009A17F8);
  swift_getKeyPath();
  sub_10076338C();

  v13 = v56[0];
  v14 = sub_100770B3C();

  v52 = v10;
  sub_1007636CC();
  v15 = sub_10076C04C();
  v39 = v11;
  v16 = v15;
  v56[3] = v15;
  v38 = sub_10038AF0C(&qword_100943230, &type metadata accessor for Feature);
  v56[4] = v38;
  v17 = sub_10000DB7C(v56);
  v18 = *(v16 - 8);
  v19 = *(v18 + 104);
  v37 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = v19;
  v35[1] = v18 + 104;
  v19(v17);
  v20 = v14;
  sub_10076C90C();
  sub_10000CD74(v56);
  v40 = v20;
  sub_10076996C();
  sub_10076994C();
  v21 = *(v46 + 8);
  v22 = v47;
  v21(v9, v47);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v12, qword_1009A1810);
  swift_getKeyPath();
  sub_10076338C();

  v23 = v55[0];
  v24 = sub_100770B3C();

  sub_1007636BC();
  v55[3] = v16;
  v55[4] = v38;
  v25 = sub_10000DB7C(v55);
  v36(v25, v37, v16);
  v26 = v24;
  sub_10076C90C();
  sub_10000CD74(v55);
  sub_10076996C();
  sub_10076994C();
  v21(v9, v22);
  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_10000A61C(v49, qword_10099F0D0);
  (*(v48 + 16))(v50, v28, v27);
  sub_10000A570(v56, v54);
  sub_10000A570(v55, v53);
  v29 = v42;
  sub_10076719C();
  swift_getKeyPath();
  v30 = v41;
  sub_10076338C();

  sub_10076C2FC();
  (*(v51 + 8))(v30, v44);
  sub_100630CB4();
  sub_10038AF0C(&qword_100954110, &type metadata accessor for PrivacyDefinitionLayout);
  v31 = v45;
  sub_10076D2AC();
  v33 = v32;

  swift_unknownObjectRelease();

  (*(v43 + 8))(v29, v31);
  sub_10000CD74(v55);
  sub_10000CD74(v56);
  return v33;
}

uint64_t sub_10038AF0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10038AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6, void *a7, char a8)
{
  v14 = a5;
  if (!a5)
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v17 = a8;
    v18 = sub_1006113DC(NSFontAttributeName);
    if ((v19 & 1) == 0)
    {
      return;
    }

    sub_10000CD08(*(a1 + 56) + 32 * v18, v33);
    sub_100016F40(0, &qword_100942F00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = v31;
    a5 = 0;
    a8 = v17;
    if (!v31)
    {
      return;
    }
  }

  v29 = a8;
  v15 = a5;
  v16 = [v14 fontDescriptor];
  if ([v16 objectForKey:UIFontDescriptorTextStyleAttribute])
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    type metadata accessor for TextStyle(0);
    if (swift_dynamicCast())
    {
      v8 = v30;
      a6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v30 compatibleWithTraitCollection:a6];
      v20 = [a6 fontDescriptorWithSymbolicTraits:{objc_msgSend(v16, "symbolicTraits")}];
      v21 = objc_opt_self();
      v22 = "fontWithDescriptor:size:";
      v23 = 0.0;
      if (v20)
      {
        v24 = [v21 fontWithDescriptor:v20 size:0.0];

        v8 = a6;
        a6 = v20;
LABEL_18:

        v21 = v24;
        goto LABEL_19;
      }

LABEL_17:
      v24 = [v21 v22];
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000258C0(v33);
  }

  v21 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:a6];
  if (!v21)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  v25 = v21;
  [a7 removeAttribute:NSFontAttributeName range:{a2, a3}];
  [a7 addAttribute:NSFontAttributeName value:v25 range:{a2, a3}];

  if (v29 & 1) != 0 && *(a1 + 16) && (v26 = sub_1006113DC(NSParagraphStyleAttributeName), (v27) && (sub_10000CD08(*(a1 + 56) + 32 * v26, v33), sub_100016F40(0, &qword_10094D748), (swift_dynamicCast()))
  {
    if (sub_10077056C())
    {
      v28 = sub_10077057C();
      [a7 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
      [a7 addAttribute:NSParagraphStyleAttributeName value:v28 range:{a2, a3}];
    }

    else
    {
    }
  }

  else
  {
  }
}

void *sub_10038B358(void *result, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  if (result[3])
  {
    return [a5 addAttribute:NSForegroundColorAttributeName value:a6 range:{a2, a3}];
  }

  return result;
}

uint64_t sub_10038B390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076944C();
  *a1 = result;
  return result;
}

uint64_t sub_10038B3BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_10000A5D4(&qword_10094D1E8);
  v59 = *(v17 - 8);
  v60 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v58 - v19;
  v21 = [v8 contentView];
  [v21 setLayoutMargins:{a5, a6, a7, a8}];

  *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph] = a3;

  v22 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  sub_10076946C();
  v23 = *(v22 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel);
  v24 = sub_10076FF6C();

  [v23 setText:v24];

  v25 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  sub_10076945C();
  v26 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel);
  v27 = sub_10076FF6C();

  [v26 setText:v27];

  v28 = sub_10076942C();
  if (v28)
  {
    v29 = v28;
    sub_10076B8EC();
    if (v30)
    {
      v31 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton);
      v32 = sub_10076FF6C();

      [v31 setTitle:v32 forState:0];

      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = v29;
      v34 = (v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      v35 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      *v34 = sub_10038C4DC;
      v34[1] = v33;

      v36 = v35;
      goto LABEL_6;
    }
  }

  [*(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton) setTitle:0 forState:{0, v58}];
  v37 = (v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  v36 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  *v37 = 0;
  v37[1] = 0;
LABEL_6:
  sub_1000167E0(v36);
  swift_getObjectType();
  v38 = sub_10038C370(a4);
  v40 = v39;
  v41 = v38;
  result = sub_1002C31CC(v38, v39);
  if (!*&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v43 = sub_10076944C();
  sub_10016E5A8(v43);

  sub_10076AEAC();

  v44 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!v44)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v47 = v58;
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = ObjectType;
  v48 = objc_allocWithZone(sub_10000A5D4(&unk_10094D1F0));

  v49 = v44;
  v50 = sub_10076E72C();
  v51 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource;
  v52 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource];
  *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = v50;
  v53 = v50;

  v54 = swift_allocObject();
  *(v54 + 16) = v41;
  *(v54 + 24) = v40;
  sub_10076E73C();

  sub_10000A5D4(&unk_100942870);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1007841E0;
  *(v55 + 32) = a1;
  swift_getKeyPath();
  sub_10038C4E4(&qword_10094D200, &type metadata accessor for LockupCollectionSearchResult);
  sub_10038C4E4(&qword_10094D208, &type metadata accessor for Lockup);

  sub_10076D47C();

  v56 = *&v9[v51];
  if (v56)
  {
    v57 = v56;
    sub_10076E76C();
  }

  [v9 setNeedsLayout];
  return (*(v59 + 8))(v20, v60);
}

uint64_t sub_10038B958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void *sub_10038BA9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v58 = a3;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v9 - 8);
  v61 = v53 - v10;
  v11 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v14 - 8);
  v60 = v53 - v15;
  v16 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v16 - 8);
  v59 = v53 - v17;
  v18 = sub_10075F78C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  v25 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v25 - 8);
  v27 = v53 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v55 = v13;
  v57 = v27;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007708FC();
  v28 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v54 = a1;
  v30 = [a1 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:isa];

  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v53[1] = v8;
    sub_10000A5D4(&qword_10094D1C8);
    sub_10076F44C();
    v58 = v64;
    if (sub_10076BB3C())
    {
      sub_100766ABC();
      v31 = *(v19 + 104);
      v31(v21, enum case for OfferStyle.infer(_:), v18);
      v32 = sub_10075F77C();
      v33 = *(v19 + 8);
      v33(v21, v18);
      v33(v24, v18);
      if (v32 & 1) != 0 && (v34 = [v54 traitCollection], v35 = sub_1007706FC(), v34, (v35))
      {
        v36 = v57;
        v31(v57, enum case for OfferStyle.white(_:), v18);
        v37 = v36;
        (*(v19 + 56))(v36, 0, 1, v18);
      }

      else
      {
        v37 = v57;
        (*(v19 + 56))(v57, 1, 1, v18);
      }
    }

    else
    {
      v37 = v57;
      (*(v19 + 56))(v57, 1, 1, v18);
    }

    v38 = v56;
    v39 = *(v56 + OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView);
    v40 = sub_10000A5D4(&qword_100945590);
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = sub_1007628DC();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = sub_10000A5D4(&unk_100946750);
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = sub_10076C54C();
    v47 = v61;
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    sub_1004D0A60(v58, v39, v41, Strong, 0, 0, v37, v43, v47, v45);
    sub_10000CFBC(v47, &unk_100949290);
    v39[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v39 setNeedsLayout];
    sub_10000CFBC(v45, &qword_10094F730);
    sub_10000CFBC(v43, &unk_1009492A0);
    sub_10000CFBC(v41, &unk_100946760);
    v48 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v49 = *&v39[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    sub_10075FCAC();
    sub_10075FD2C();
    sub_10038C4E4(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760BFC();
    if (sub_10076BB5C())
    {
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v50 = sub_100763ADC();
      sub_10000A61C(v50, qword_10099DDA0);
      sub_1007639AC();
      [v49 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v49 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();
      v51 = *&v39[v48];
      sub_100760B8C();

      v38 = v56;
      v37 = v57;
    }

    [v38 setNeedsLayout];

    sub_10000CFBC(v37, &unk_10094D210);
  }

  else
  {

    return 0;
  }

  return v38;
}

BOOL sub_10038C370(void *a1)
{
  v1 = a1;
  v2 = [a1 traitCollection];
  sub_10077071C();

  v3 = [v1 traitCollection];
  LOBYTE(v1) = sub_1007706EC();

  return (v1 & 1) == 0;
}

uint64_t sub_10038C400()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10038C45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076944C();
  *a1 = result;
  return result;
}

uint64_t sub_10038C490(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10038C4E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10038C52C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000A5D4(&qword_100954BC0);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10076664C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_1003912D0(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  sub_10077125C();
  v17 = v27;
  sub_1003912D0(&qword_100954BC8, &type metadata accessor for ComponentLayoutOptions);
  v25 = a2;
  v18 = sub_10076FF1C();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_10077129C();
  }

  v21 = v28;
  sub_100023AD0(v7, v28, &qword_100954BC0);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10038C830(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000A5D4(&qword_100954260);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10076CE0C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_1003912D0(&qword_100954270, &type metadata accessor for AppStoreConfig);
  sub_10077125C();
  v17 = v27;
  sub_1003912D0(&qword_100954288, &type metadata accessor for AppStoreConfig);
  v25 = a2;
  v18 = sub_10076FF1C();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_10077129C();
  }

  v21 = v28;
  sub_100023AD0(v7, v28, &qword_100954260);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10038CB34(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000A5D4(&qword_100954BA0);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1007611EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_1003912D0(&unk_1009603F0, &type metadata accessor for VideoControls);
  sub_10077125C();
  v17 = v27;
  sub_1003912D0(&qword_100954BA8, &type metadata accessor for VideoControls);
  v25 = a2;
  v18 = sub_10076FF1C();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_10077129C();
  }

  v21 = v28;
  sub_100023AD0(v7, v28, &qword_100954BA0);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

void sub_10038CE38(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      type metadata accessor for ProductLockupCollectionViewCell();
      v4 = Strong;
      v5 = sub_100770EEC();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_10038F7C4();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_10038CF08(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_10099E390);

    if (a1)
    {
      sub_1003912D0(&qword_100954BB0, type metadata accessor for ChevronView);
    }

    sub_10076667C();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + qword_10099E390);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      sub_1003912D0(&qword_100954BB0, type metadata accessor for ChevronView);
    }

    sub_10076668C();
  }
}

uint64_t sub_10038D070()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ProductScrollObserver();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 32) = sub_100391460;
    *(v1 + 40) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_10038D124(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10038F34C(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_10038D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10038D634(a4, a1, a2);
  }

  return result;
}

uint64_t sub_10038D234()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      memset(v2, 0, sizeof(v2));
      sub_10076955C();

      return sub_10000CFBC(v2, &unk_1009434C0);
    }
  }

  return result;
}

void sub_10038D2C8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v6 = sub_1007611EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10000A5D4(&qword_100952D68);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v28 - v20;
  v22 = *(v7 + 16);
  v22(a4, a1, v6, v19);
  sub_1007611BC();
  (v22)(v11, a4, v6);
  sub_1003912D0(&unk_1009603F0, &type metadata accessor for VideoControls);
  sub_10077125C();
  if (sub_10077127C())
  {
    v23 = *(v7 + 8);
    v23(v14, v6);
    v23(v17, v6);
    v24 = 1;
  }

  else
  {
    sub_10077128C();
    v23 = *(v7 + 8);
    v23(v17, v6);
    (*(v7 + 32))(v21, v14, v6);
    v24 = 0;
  }

  (*(v7 + 56))(v21, v24, 1, v6);
  sub_10000CFBC(v21, &qword_100952D68);
  if (v31)
  {
    v25 = [v30 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 == 2)
    {
      v27 = v29;
      sub_1007611DC();
      sub_10038CB34(v11, v27);
      v23(v27, v6);
      v23(v11, v6);
    }
  }
}

uint64_t sub_10038D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v87 = a1;
  v3 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v3 - 8);
  v80 = &v74 - v4;
  v85 = sub_10075EB1C();
  v88 = *(v85 - 8);
  __chkstk_darwin(v85);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v74 - v7;
  v8 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v74 - v9;
  v11 = sub_10075EBAC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v75 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v74 - v15;
  __chkstk_darwin(v16);
  v82 = &v74 - v17;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v90 = sub_10000A5D4(&qword_100954BB8);
  v83 = *(v90 - 8);
  __chkstk_darwin(v90);
  v22 = &v74 - v21;
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v78 = sub_10076138C();

  sub_10076FC1C();
  v74 = sub_1007613EC();

  sub_10000A5D4(&qword_100943FB0);
  sub_10076F5CC();
  sub_10000CF78(v93, v93[3]);
  v77 = sub_10076184C();
  sub_10000CD74(v93);
  v23 = sub_1001B65D8();
  v91 = v22;
  v89 = v23;
  sub_10076339C();
  swift_getObjectType();
  v24 = v20;
  sub_10075ED1C();
  sub_10075ED3C();
  v25 = sub_10075DD7C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000CFBC(v10, &unk_10094FA00);
    v27 = 0.0;
  }

  else
  {
    sub_10075DD3C();
    v27 = v28;
    (*(v26 + 8))(v10, v25);
  }

  swift_getKeyPath();
  sub_10076F85C();

  v29 = v93[0];
  v30 = *(v12 + 16);
  v31 = v82;
  v30(v82, v20, v11);
  v32 = (*(v12 + 88))(v31, v11);
  v34 = v84;
  v33 = v85;
  if (v32 != enum case for LegacyAppState.downloading(_:))
  {
    if (v32 != enum case for LegacyAppState.installing(_:))
    {
      goto LABEL_12;
    }

    v39 = v75;
    v30(v75, v31, v11);
    (*(v12 + 96))(v39, v11);
    v40 = v76;
    (*(v88 + 32))(v76, v39, v33);
    v41 = v90;
    if ((v29 & 1) != 0 && (sub_10075EAFC() & 1) == 0)
    {
      v94._object = 0x80000001007E1C90;
      v94._countAndFlagsBits = 0xD000000000000024;
      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      v54 = sub_1007622EC(v94, v95);
      v55 = v33;
      v43 = v54;
      v44 = v56;
      (*(v88 + 8))(v40, v55);
      goto LABEL_21;
    }

    (*(v88 + 8))(v40, v33);
LABEL_19:
    v42 = *(v12 + 8);
    v42(v24, v11);
    v43 = 0;
    v44 = 0;
    goto LABEL_22;
  }

  v35 = v78;
  v36 = v79;
  v30(v79, v31, v11);
  (*(v12 + 96))(v36, v11);
  (*(v88 + 32))(v86, v36, v33);
  if ((v77 & (v35 < -v27)) != 0)
  {
    *&v37 = COERCE_DOUBLE(sub_10075EB6C());
    if ((v38 & 1) == 0)
    {
      v45 = *&v37;
      v46 = sub_10075EAFC();
      v41 = v90;
      if ((v46 & 1) == 0 || (v47 = sub_10075EB0C()) == 0 || (v48 = v47, v49 = [v47 completedUnitCount], v48, v50 = v49 <= 0, v33 = v85, !v50))
      {
        if ((v74 < v45) | v29 & 1)
        {
          v51 = sub_10075EB7C();
          v52 = v33;
          v43 = v51;
          v44 = v53;
          (*(v88 + 8))(v86, v52);
LABEL_21:
          v42 = *(v12 + 8);
          v42(v24, v11);
          goto LABEL_22;
        }
      }

      (*(v88 + 8))(v86, v33);
      goto LABEL_19;
    }
  }

  (*(v88 + 8))(v86, v33);
LABEL_12:
  v42 = *(v12 + 8);
  v42(v24, v11);
  v43 = 0;
  v44 = 0;
  v41 = v90;
LABEL_22:
  v42(v31, v11);
  swift_getKeyPath();
  sub_10076F85C();

  if ((v44 != 0) == LOBYTE(v93[0]) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v60 = 0;
  }

  else
  {
    v58 = Strong;
    v59 = [Strong traitCollection];

    v60 = sub_10077071C();
  }

  __chkstk_darwin(Strong);
  *(&v74 - 32) = v61;
  *(&v74 - 3) = v43;
  *(&v74 - 2) = v44;
  v62 = v91;
  sub_10076F83C();

  if (v60)
  {
    v63 = sub_1007702EC();
    v64 = v80;
    (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
    sub_1007702CC();

    v65 = sub_1007702BC();
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = &protocol witness table for MainActor;
    v66[4] = v34;
    sub_100170140(0, 0, v64, &unk_10079EA18, v66);
  }

  else
  {
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      swift_getKeyPath();
      sub_10076F85C();

      v69 = v93[0];
      v70 = v93[1];
      swift_getKeyPath();
      sub_10076F85C();

      v71 = v92;
      v72 = sub_100630CB4();
      swift_getObjectType();
      sub_10030B6DC(v69, v70, v71, v72, v68);
      swift_unknownObjectRelease();
    }
  }

  return (*(v83 + 8))(v62, v41);
}

uint64_t sub_10038E0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007702CC();
  v4[4] = sub_1007702BC();
  v6 = sub_10077029C();

  return _swift_task_switch(sub_10038E158, v6, v5);
}

uint64_t sub_10038E158()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1007694BC();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10038E1E4(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v2 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v2 - 8);
  v103 = &v83 - v3;
  v4 = sub_100768FEC();
  v98 = *(v4 - 8);
  __chkstk_darwin(v4);
  v100 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946750);
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v99 = &v83 - v7;
  v8 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v8 - 8);
  v96 = &v83 - v9;
  v95 = sub_10076A3AC();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v11 - 8);
  v97 = &v83 - v12;
  v13 = sub_10000A5D4(&unk_100962490);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v16 - 8);
  v18 = &v83 - v17;
  v19 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v83 - v20;
  v22 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v22 - 8);
  v108 = &v83 - v23;
  v24 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v30 = sub_10076D39C();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v105 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100762BEC();
  sub_1003912D0(&qword_1009624A0, &type metadata accessor for ProductTopLockup);
  result = sub_10076332C();
  v33 = *&v109[0];
  if (*&v109[0])
  {
    v92 = v21;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v90 = v15;
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v83 = v18;
        v89 = v4;
        v38 = v33;
        v39 = v37;
        v40 = *(v37 + qword_1009A3300);

        v84 = sub_100762BAC();
        v42 = v41;
        sub_1001B5A0C();
        v43 = v105;
        sub_10076D3AC();
        v91 = sub_10076959C();
        v86 = v38;
        v44 = v40;
        v85 = sub_100762AAC();
        v88 = v35;
        v45 = sub_10076954C();
        v46 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
        sub_1005D7450(v84, v42);
        v48 = v106;
        v47 = v107;
        (*(v106 + 16))(v29, v43, v107);
        (*(v48 + 56))(v29, 0, 1, v47);
        v49 = *&v44[v46];
        sub_1003911F0(v29, v26);
        v50 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
        swift_beginAccess();
        sub_100391260(v26, v49 + v50);
        swift_endAccess();
        [v49 setNeedsLayout];
        sub_10000CFBC(v26, &unk_1009467E0);
        sub_10000CFBC(v29, &unk_1009467E0);
        v51 = &v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler];
        v52 = *&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler];
        *v51 = sub_1003911E8;
        v51[1] = v36;
        swift_retain_n();
        sub_1000167E0(v52);
        v53 = *&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer];

        [v53 setEnabled:1];

        v54 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton;
        LODWORD(v84) = [*&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton] isHidden];
        *&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButtonMode] = v45;
        if (sub_100766B6C())
        {
          v55 = *&v44[v54];
          v56 = 1;
          v57 = v108;
        }

        else
        {
          v58 = sub_100767B7C();
          v59 = sub_100767B7C();
          v55 = *&v44[v54];
          v57 = v108;
          if (v58 == v59)
          {
            v56 = 1;
          }

          else
          {
            v56 = v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1];
          }
        }

        v60 = v91;
        [v55 setHidden:v56];
        v61 = sub_100766B5C();
        v87 = v36;
        if (v61)
        {
          v62 = enum case for OfferStyle.disabled(_:);
          v63 = sub_10075F78C();
          v64 = *(v63 - 8);
          (*(v64 + 104))(v57, v62, v63);
          (*(v64 + 56))(v57, 0, 1, v63);
          if (v60)
          {
            v65 = v83;
LABEL_16:
            v67 = sub_1007628DC();
            v68 = v92;
            (*(*(v67 - 8) + 56))(v92, 1, 1, v67);
            v69 = sub_10076C54C();
            (*(*(v69 - 8) + 56))(v65, 1, 1, v69);
            v70 = sub_10076201C();
            v71 = v90;
            (*(*(v70 - 8) + 56))(v90, 1, 1, v70);
            memset(v109, 0, 32);
            v72 = v65;
            v73 = sub_100766A5C();
            sub_10000CFBC(v109, &unk_1009434C0);
            sub_10000CFBC(v71, &unk_100962490);
            sub_10000CFBC(v72, &unk_100949290);
            sub_10000CFBC(v68, &unk_1009492A0);
LABEL_19:
            v75 = v93;
            v76 = v95;
            (*(v93 + 104))(v94, enum case for OfferButtonPresenterViewAlignment.right(_:), v95);
            v77 = 1;
            (*(v75 + 56))(v96, 1, 1, v76);
            sub_1003912D0(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
            v78 = v97;
            sub_10076759C();
            v79 = sub_10000A5D4(&qword_100945590);
            (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
            v80 = v98;
            v81 = v89;
            (*(v98 + 104))(v100, enum case for OfferButtonSubtitlePosition.left(_:), v89);
            (*(v80 + 56))(v103, 1, 1, v81);
            sub_1003912D0(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
            v82 = v99;
            sub_10076759C();
            sub_1001F12C8(v73, v85, 0, v78, v82, v104, 0, 0);
            (*(v101 + 8))(v82, v102);
            sub_10000CFBC(v78, &unk_100946760);
            if ((v84 & 1) == 0)
            {
              v77 = v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1];
            }

            [*&v44[v54] setHidden:v77];

            sub_10000CFBC(v108, &unk_10094D210);
            (*(v106 + 8))(v105, v107);
          }
        }

        else
        {
          v65 = v83;
          if (v60)
          {
            sub_100766ABC();
            v66 = sub_10075F78C();
            (*(*(v66 - 8) + 56))(v57, 0, 1, v66);
            goto LABEL_16;
          }

          v74 = sub_10075F78C();
          (*(*(v74 - 8) + 56))(v57, 1, 1, v74);
        }

        v73 = 0;
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_10038EFC4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v1 = [Strong collectionView];

      if (v1)
      {
        [v1 _scrollToTopIfPossible:1];
      }
    }
  }
}

void sub_10038F064(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong collectionView];

    if (v4)
    {
      sub_100016F40(0, &qword_100954BD0);
      v5 = a1;
      v6 = sub_100770EEC();

      if (v6)
      {
        sub_10038D070();
        sub_100609F80(v5);

        [v5 safeAreaInsets];
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
          if (v10 && v8 > 0.0)
          {
            v32 = v9;
            v11 = v10;
            [v5 bounds];
            v12 = CGRectGetHeight(v34) * -0.5;
            [*&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView] frame];
            v13 = CGRectGetMinY(v35) + v12;
            [v5 contentOffset];
            v15 = v14 / v13;
            if (v14 / v13 < 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v14 / v13;
            }

            v17 = 1.0 - v16;
            [v5 contentOffset];
            v19 = v18 / v8;
            if (v19 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v19;
            }

            v21 = 1.0 - v20;
            sub_10000A5D4(&unk_100942870);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_100784DC0;
            v23 = objc_opt_self();
            *(v22 + 32) = [v23 blackColor];
            v24 = [v23 blackColor];
            v25 = v24;
            if (v15 >= 1.0)
            {
              v26 = 0.0;
            }

            else
            {
              v26 = v17;
            }

            v27 = [v24 colorWithAlphaComponent:v26];

            *(v22 + 40) = v27;
            v28 = [v23 blackColor];
            v29 = v28;
            if (v19 >= 1.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v21;
            }

            v31 = [v28 colorWithAlphaComponent:v30];

            *(v22 + 48) = v31;
            *&v11[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v22;

            sub_1001C05B8();

            v9 = v11;
          }
        }
      }
    }
  }
}

uint64_t sub_10038F34C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    HIDWORD(v29) = sub_1007694DC();
    v32 = sub_100767B7C();
    v31 = sub_100767B7C();
    if (a2)
    {
      v30 = sub_10060A0E0();
    }

    else
    {
      v30 = 0;
    }

    v12 = qword_1009A3300;
    v13 = sub_100766B6C();
    v14 = sub_100767B7C();
    if (v14 == sub_100767B7C())
    {
      v15 = [v11 navigationItem];
      v16 = [v15 rightBarButtonItems];

      if (v16)
      {
        sub_100016F40(0, &qword_100958FF0);
        v17 = sub_1007701BC();
      }

      else
      {
        v17 = 0;
      }

      *&v11[qword_1009A3308] = v17;
    }

    v18 = a2 ^ 1;
    v19 = *&v11[qword_1009A3308];
    if (v19)
    {
      if ((v13 & 1) == 0)
      {
        if (!a1)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v11;
          *(v22 + 24) = v19;

          v28 = v11;
          v19 = sub_1003911E0;
LABEL_21:
          v23 = *&v11[v12];
          v24 = v30;
          sub_1005D6BC8(a1, v30, v18 & 1, v19, v22);

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            sub_1007695BC();
            if (swift_weakLoadStrong())
            {
              sub_10076952C();
            }

            sub_10030CD58(v32 == v31, v24, v18 & 1, (v29 & 0x100000000) == 0, v8);

            sub_1000167E0(v19);

            return sub_10000CFBC(v8, &qword_100942A80);
          }

          else
          {
            v27 = v32 != v31;
            sub_1000167E0(v19);

            *(v3 + 48) = v27;
          }

          return result;
        }

        if (a1 == 1)
        {
          v20 = [v11 navigationItem];
          sub_100016F40(0, &qword_100958FF0);
          isa = sub_1007701AC().super.isa;
          [v20 setRightBarButtonItems:isa animated:0];
        }
      }

      v19 = 0;
    }

    v22 = 0;
    goto LABEL_21;
  }
}

void sub_10038F72C(void *a1)
{
  v1 = [a1 navigationItem];
  sub_100016F40(0, &qword_100958FF0);
  isa = sub_1007701AC().super.isa;
  [v1 setRightBarButtonItems:isa animated:0];
}

void sub_10038F7C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 collectionView];

    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
      v4 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
      if (v4)
      {
        v5 = v3;
        v6 = v4;
        if (([v6 isHidden] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = v3;
      }

      v6 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
LABEL_12:
      v8 = v3;
      v9 = v6;
      if ([v8 isHidden])
      {
        v10 = [v9 isHidden];

        if ((v10 & 1) == 0)
        {

          v11 = v9;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v11 = v9;
      if ([v11 isHidden] || (v55.receiver = v8, v55.super_class = type metadata accessor for OfferButton(), objc_msgSendSuper2(&v55, "frame"), MaxY = CGRectGetMaxY(v57), objc_msgSend(v11, "frame"), MaxY >= CGRectGetMaxY(v58)))
      {

        v11 = v8;
      }

      else
      {
      }

LABEL_20:
      v13 = v11;
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v13 superview];

      [v2 convertRect:v22 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      MinY = CGRectGetMinY(v59);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = [v32 view];
      if (v34)
      {
        v35 = v34;
        type metadata accessor for InsetCollectionViewControllerContentView();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v37 = v36;

          v38 = *(v37 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);
          if (v38)
          {
LABEL_28:
            v52 = sub_10038D070();
            *(v52 + 16) = MinY;
            *(v52 + 24) = 0;
            v53 = *(v52 + 32);
            if (v53)
            {
              v53(*(v52 + 48), 0, *(v52 + 56));
            }

            return;
          }

LABEL_24:
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = 0.0;
          if (v39)
          {
            v41 = v39;
            v42 = [v39 navigationController];

            if (v42)
            {
              v43 = [v42 navigationBar];

              [v43 frame];
              v45 = v44;
              v47 = v46;
              v49 = v48;
              v51 = v50;

              v60.origin.x = v45;
              v60.origin.y = v47;
              v60.size.width = v49;
              v60.size.height = v51;
              v40 = CGRectGetMaxY(v60);
            }
          }

          MinY = MinY - v40;
          goto LABEL_28;
        }
      }

      __break(1u);
      return;
    }
  }
}

uint64_t sub_10038FB90()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10038FC30(void *a1)
{
  [a1 adjustedContentInset];
  v4 = v3;
  [a1 contentOffset];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate) = v4 + v5 <= 0.1;

  sub_10054E180();
}

uint64_t sub_10038FCAC()
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  sub_10076908C();
  swift_allocObject();
  *(v0 + 40) = sub_10076907C();
  return v0;
}

void sub_10038FD60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10075EBAC();
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v109 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &ObjectType - v11;
  v12 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v12 - 8);
  v115 = &ObjectType - v13;
  v14 = sub_10076341C();
  v110 = *(v14 - 8);
  v15 = *(v110 + 64);
  __chkstk_darwin(v14);
  v16 = sub_10076B96C();
  v113 = *(v16 - 8);
  v114 = v16;
  __chkstk_darwin(v16);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductLockupCollectionViewCell();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v108 = v8;
    v112 = a3;
    sub_100762BEC();
    v117 = a2;
    sub_1003912D0(&qword_1009624A0, &type metadata accessor for ProductTopLockup);
    v21 = a1;
    sub_10076332C();
    v22 = v121;
    if (!v121)
    {

      return;
    }

    if (!swift_weakLoadStrong())
    {

LABEL_54:

      return;
    }

    v105 = v21;
    v104 = v20;
    sub_10038CE38(v20);
    sub_10000A5D4(&unk_10094A8C0);
    v103 = v14;
    sub_10076F5CC();
    swift_getObjectType();
    v107 = v22;
    sub_100762BBC();
    v23 = sub_10075EE2C();
    v25 = v24;
    swift_unknownObjectRelease();
    (*(v113 + 8))(v18, v114);
    v26 = v117;
    sub_10038D634(v117, v23, v25);
    ObjectType = swift_getObjectType();
    sub_10075ED0C();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v110;
    v29 = v103;
    (*(v110 + 16))(&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v103);
    v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    (*(v28 + 32))(v31 + v30, &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    *(v31 + ((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v112;
    v32 = v104;

    v110 = v23;
    sub_10075ECEC();

    if ((*(v4 + 48) & 1) == 0)
    {
LABEL_28:
      v55 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow];
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v57 = v55;
      sub_10038CF08(Strong);

      v58 = swift_allocObject();
      swift_weakInit();
      v59 = &v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler];
      v60 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler];
      *v59 = sub_100390BAC;
      v59[1] = v58;

      sub_1000167E0(v60);

      sub_10038E1E4(v117, v112);
      v61 = swift_unknownObjectWeakLoadStrong();
      if (v61)
      {
        v62 = v61;
        v63 = *(v61 + qword_1009A3300);

        v64 = *(*&v63[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView] + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView);
      }

      else
      {
        v64 = 0;
      }

      sub_10076905C();

      v65 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
      sub_10076905C();

      sub_10076906C();
      v66 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
      v67 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = swift_unknownObjectWeakLoadStrong();
      v69 = v67;
      if (v68)
      {
        v70 = [v68 navigationItem];
      }

      else
      {
        v70 = 0;
      }

      v71 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem;
      v72 = *&v69[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
      if (v72)
      {
        v73 = v72;
        v74 = sub_10076FF6C();
        [v73 removeObserver:v69 forKeyPath:v74 context:&unk_10094DB60];

        v75 = *&v69[v71];
      }

      else
      {
        v75 = 0;
      }

      *&v69[v71] = v70;
      v76 = v70;

      v77 = *&v69[v71];
      if (v77)
      {
        v78 = v77;
        v79 = sub_10076FF6C();
        [v78 addObserver:v69 forKeyPath:v79 options:0 context:&unk_10094DB60];

        v80 = *&v69[v71];
        if (v80)
        {
          v80 = [v80 title];
          if (v80)
          {
            v81 = v80;
            v82 = sub_10076FF9C();
            v84 = v83;

            v85 = v84;
            v80 = v82;
          }

          else
          {
            v85 = 0;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v80 = 0;
      }

      v85 = 0;
LABEL_44:
      sub_100209360(v80, v85);

      v86 = *&v32[v66];
      if (v86)
      {
        v87 = swift_unknownObjectWeakLoadStrong();
        if (v87)
        {
          v88 = v87;
          v89 = *(v87 + qword_1009A3310);
          v90 = v86;
        }

        else
        {
          v91 = v86;
          v89 = 0;
        }

        swift_unknownObjectWeakAssign();
        sub_10020989C();

        v92 = *&v32[v66];
        if (v92)
        {
          v93 = *(*(*(v92 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
          if (v93)
          {
            type metadata accessor for VideoView();
            v94 = swift_dynamicCastClass();
            if (v94)
            {
              v95 = v94;
              v96 = swift_allocObject();
              v97 = v105;
              *(v96 + 16) = v105;
              v98 = (v95 + qword_1009A2528);
              v99 = *(v95 + qword_1009A2528);
              *v98 = sub_100390BEC;
              v98[1] = v96;
              v100 = v97;
              v101 = v93;

              sub_1000167E0(v99);
              sub_1005F41B0();

              swift_unknownObjectRelease();

              goto LABEL_54;
            }
          }

          swift_unknownObjectRelease();

LABEL_53:

          goto LABEL_54;
        }
      }

LABEL_52:

      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    *(v4 + 48) = 0;
    v33 = sub_1007694DC();
    v34 = v115;
    sub_100762BBC();
    v35 = v113;
    v36 = v34;
    v37 = v114;
    (*(v113 + 56))(v36, 0, 1, v114);
    if (swift_weakLoadStrong())
    {
      sub_10076952C();
    }

    v38 = (*(v35 + 48))(v115, 1, v37);
    v39 = v108;
    if (v38 == 1 || !*&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
    {
      (*(v116 + 104))(v111, enum case for LegacyAppState.unknown(_:), v108);
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10075ED1C();
      swift_unknownObjectRelease();
    }

    v40 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
    [*(*&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton] + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView) setContentMode:1];
    if (v33)
    {
      v41 = 0;
    }

    else
    {
      v41 = *&v32[v40];
      v42 = v41;
    }

    v43 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
    v44 = v109;
    if (v43 && v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
    {
      goto LABEL_24;
    }

    (*(v116 + 16))(v109, v111, v39);
    v45 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
    v46 = [*&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel] text];
    if (v46)
    {
      v47 = v46;
      sub_10076FF9C();
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = sub_10075EB9C();
    (*(v116 + 8))(v44, v39);
    if (v50)
    {
      if (v49)
      {

        v43 = *&v32[v45];
LABEL_24:
        v51 = v43;
LABEL_27:
        v118 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
        v119 = v41;
        v120 = v43;
        v52 = v118;
        [v52 setAlpha:1.0];
        [v52 setHidden:0];

        v53 = v41;
        [v53 setAlpha:1.0];
        [v53 setHidden:0];

        v54 = v43;
        sub_10000A5D4(&qword_100949D48);
        swift_arrayDestroy();
        [v54 setAlpha:1.0];
        [v54 setHidden:0];

        [v32 setNeedsLayout];
        (*(v116 + 8))(v111, v108);
        sub_10000CFBC(v115, &qword_100942A80);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v43 = 0;
    goto LABEL_27;
  }
}

uint64_t sub_1003909EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100390A24()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100390AFC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10076341C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10038D1A8(a1, a2, v6, v7);
}

uint64_t sub_100390BB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100390BF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10000A5D4(&qword_100954BB8);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10000A5D4(&unk_100946720);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_10076341C();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.productTopLockup(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_10076338C();

      swift_getKeyPath();
      v29 = v46;
      sub_10076F49C();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_1003912D0(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
      sub_10077018C();
      sub_10077018C();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_10077167C();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_10076336C();
    v24 = v33;
    sub_10076F87C();
    sub_1001B65D8();
    v25 = v34;
    sub_10076F83C();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_1003911A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003911F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009467E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100391260(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009467E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003912D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100391318(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10039136C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003913AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000257CC;

  return sub_10038E0C0(a1, v4, v5, v6);
}

void *sub_100391480(void *a1, char a2)
{
  v2 = &unk_100882330;
  if ((a2 & 1) == 0)
  {
    v2 = &unk_1008822E8;
  }

  v3 = *v2;
  if (*v2)
  {
    v5 = a1;
    result = sub_1007714EC();
    if (a2)
    {
      v7 = &off_100882320;
    }

    else
    {
      v7 = &off_1008822D8;
    }

    v8 = (v7 + 4);
    for (i = v3 & ~(v3 >> 63); i; --i)
    {
      v10 = *v8++;
      v11 = [v5 colorWithAlphaComponent:v10];
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      result = sub_1007714DC();
      if (!--v3)
      {

        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1003915B0(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = sub_10076702C();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v45 = a1 & 1;
  v46 = a1;
  v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_style] = a1 & 1;
  v7 = type metadata accessor for GradientView();
  v8 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_overlayView] = v8;
  v9 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_plusDarkerView] = v9;
  v10 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView] = v10;
  result = [objc_opt_self() effectWithBlurRadius:35.0];
  if (result)
  {
    v12 = result;
    v47.receiver = v1;
    v47.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v47, "initWithEffect:", result);

    v14 = v13;
    [v14 setOverrideUserInterfaceStyle:2];
    [v14 setUserInteractionEnabled:0];
    [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v15 = v14;
    [v15 setClipsToBounds:0];
    v16 = [v15 contentView];
    v17 = [v16 layer];

    [v17 setAllowsGroupBlending:0];
    v18 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_overlayView;
    v19 = *&v15[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_overlayView];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 blackColor];
    sub_1007714EC();
    v23 = [v22 colorWithAlphaComponent:0.0];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v24 = [v22 colorWithAlphaComponent:0.2];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();

    *&v21[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C05B8();

    v25 = [v15 contentView];
    [v25 addSubview:*&v15[v18]];

    v26 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_plusDarkerView;
    v27 = *&v15[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_plusDarkerView];
    v28 = [v20 blackColor];
    sub_1007714EC();
    v29 = [v28 colorWithAlphaComponent:0.0];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v30 = [v28 colorWithAlphaComponent:0.2];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();

    *&v27[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C05B8();

    v31 = [*&v15[v26] layer];
    [v31 setCompositingFilter:kCAFilterPlusD];

    v32 = [v15 contentView];
    [v32 addSubview:*&v15[v26]];

    v33 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView;
    v34 = *&v15[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
    v35 = [v20 blackColor];
    v36 = sub_100391480(v35, v45);

    *&v34[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v36;

    sub_1001C05B8();

    v37 = *&v15[v33];
    if (v46)
    {
      v38 = &off_1008823B0;
    }

    else
    {
      v38 = &off_100882368;
    }

    if (v46)
    {
      v39 = &kCAGradientLayerRadial;
    }

    else
    {
      v39 = &kCAGradientLayerAxial;
    }

    sub_1001C0414(v38);

    v40 = *&v15[v33];
    v40[OBJC_IVAR____TtC20ProductPageExtension12GradientView_kind] = v45;
    v41 = v40;
    v42 = [v41 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:*v39];

    v43 = [v15 layer];
    v44 = [*&v15[v33] layer];
    objc_opt_self();
    [v43 setMask:swift_dynamicCastObjCClassUnconditional()];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100391D1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_style] == 1)
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_alignment;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    v10 = [v1 traitCollection];
    sub_10076701C();

    v11 = *(v3 + 8);
    v11(v5, v2);
    v12 = (*(v3 + 88))(v8, v2);
    if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
    {
      v13 = 150.0;
      v14 = 500.0;
    }

    else
    {
      if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
      {
        sub_10076422C();
        v13 = CGRectGetWidth(v22) * 0.5;
        v15 = 350.0;
      }

      else
      {
        if (v12 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
        {
          v11(v8, v2);
          v14 = 0.0;
          v13 = 0.0;
          goto LABEL_10;
        }

        sub_10076422C();
        v13 = CGRectGetWidth(v23) + -150.0;
        v15 = -350.0;
      }

      v14 = v13 + v15;
    }

LABEL_10:
    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
    sub_10076422C();
    v17 = v13 / CGRectGetWidth(v24);
    v18 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v17, 1.0}];

    sub_10076422C();
    v19 = v14 / CGRectGetWidth(v25);
    v20 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v19, 0.0}];
  }
}

uint64_t type metadata accessor for ModuleOverlayGradientBlurView()
{
  result = qword_100954C28;
  if (!qword_100954C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100392240()
{
  result = sub_10076702C();
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

unint64_t sub_100392310()
{
  result = qword_100954C38;
  if (!qword_100954C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C38);
  }

  return result;
}

unint64_t sub_100392378()
{
  result = qword_100954C40;
  if (!qword_100954C40)
  {
    sub_100769BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C40);
  }

  return result;
}

uint64_t sub_1003923D0(void *a1)
{
  v2 = sub_10076F50C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10075F6CC();
    v6 = a1;
    sub_100769BDC();
    sub_10075F68C();

    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    sub_10076FCBC();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v8 = sub_10076FD4C();
    sub_10000A61C(v8, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_1003927B0();
    swift_allocError();
    sub_10076FCAC();
  }
}

uint64_t sub_100392680(uint64_t *a1)
{
  v1 = *a1;
  sub_10000A5D4(&qword_100942C70);
  v2 = sub_10076FCEC();
  sub_10075F6CC();
  v5[3] = sub_100085204();
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = sub_10077068C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_10075F67C();

  sub_10000CD74(v5);
  return v2;
}

uint64_t sub_100392768()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003927B0()
{
  result = qword_100954C48;
  if (!qword_100954C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C48);
  }

  return result;
}

unint64_t sub_100392818()
{
  result = qword_100954C50;
  if (!qword_100954C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C50);
  }

  return result;
}

id sub_100392964()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for VisualEffectContainerView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25VisualEffectContainerView_embeddedView];
  [v0 bounds];
  [v1 sizeThatFits:{CGRectGetWidth(v10), 1.79769313e308}];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  if (Width < v3)
  {
    v3 = Width;
  }

  [v0 bounds];
  v7 = CGRectGetMidX(v12) - v3 * 0.5;
  [v0 bounds];
  return [v1 setFrame:{v7, CGRectGetMidY(v13) - v5 * 0.5, v3, v5}];
}

id sub_100392AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualEffectContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100392B58(void *a1, double a2, double a3)
{
  v7 = *(*v3 + OBJC_IVAR____TtC20ProductPageExtension25VisualEffectContainerView_embeddedView);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007841E0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_10076DEEC();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t SubscriptionLockupPresenter.iapAdamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapAdamId;
  v4 = sub_10076B96C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionLockupPresenter.isIapVisible.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100392D00(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SubscriptionLockupPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*SubscriptionLockupPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100392F8C;
}

void sub_100392F8C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t SubscriptionLockupPresenter.__allocating_init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

char *SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v60 = a5;
  v62 = a7;
  v63 = a4;
  v65 = a6;
  v61 = a1;
  v53 = *v8;
  v12 = sub_10076B96C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = v14;
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10075E56C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = &v8[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v56 = v13;
  v23 = *(v13 + 16);
  v64 = v12;
  v50 = v23;
  v23(&v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapAdamId], a3, v12);
  swift_beginAccess();
  *(v22 + 1) = v60;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v24 = sub_10075EE2C();
  v25 = &v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapStateMachine];
  *v25 = v24;
  v25[1] = v26;

  sub_10075E84C();
  v54 = a2;

  v27 = *(v16 + 16);
  v55 = v21;
  v27(v18, v21, v15);
  v58 = v15;
  v59 = v16;
  v28 = (*(v16 + 88))(v18, v15);
  v30 = v28 == enum case for InAppPurchaseState.buyable(_:) || v28 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v28 == enum case for InAppPurchaseState.unknown(_:);
  v31 = v30;
  if (!v30)
  {
    (*(v59 + 8))(v18, v58);
  }

  v49 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible] = v31;
  if (*&v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapStateMachine])
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();

    sub_10075ECEC();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v52;
  v57 = a3;
  v34 = a3;
  v35 = v64;
  v50(v52, v34, v64);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v33, v35);
  v41 = (v40 + v38);
  v42 = v54;
  *v41 = v61;
  v41[1] = v42;
  *(v40 + v39) = v32;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

  sub_10075E82C();

  if (v63)
  {
    ObjectType = swift_getObjectType();
    v44 = v49;
    swift_beginAccess();
    v45 = v9[v44];
    v46 = v60;
    v47 = *(v60 + 32);
    swift_unknownObjectRetain();
    v47(v45, 0, ObjectType, v46);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v57, v64);
  (*(v59 + 8))(v55, v58);
  return v9;
}

uint64_t sub_1003936B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003936EC()
{
  v0 = sub_10075EBAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075ED1C();
  if ((*(v1 + 88))(v3, v0) != enum case for LegacyAppState.purchased(_:))
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = sub_10076093C();
  (*(*(v4 - 8) + 8))(v3, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100392D00(0);
  }

  return result;
}

uint64_t sub_100393888()
{
  v0 = sub_10075E56C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  sub_10075E84C();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v1 + 16))(v3, v6, v0);
    v7 = (*(v1 + 88))(v3, v0);
    v9 = v7 == enum case for InAppPurchaseState.buyable(_:) || v7 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v7 == enum case for InAppPurchaseState.unknown(_:);
    v10 = v9;
    if (!v9)
    {
      (*(v1 + 8))(v3, v0);
    }

    sub_100392D00(v10);
  }

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100393A6C()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100393B2C()
{
  sub_10076B96C();

  return sub_100393888();
}

uint64_t SubscriptionLockupPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapStateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  sub_10075E1BC();
  if (sub_10075E19C())
  {
    sub_10075E83C();
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapAdamId;
  v3 = sub_10076B96C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000CC8C(v1 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SubscriptionLockupPresenter.__deallocating_deinit()
{
  SubscriptionLockupPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100393D3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for SubscriptionLockupPresenter()
{
  result = qword_100954CB8;
  if (!qword_100954CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100393E10()
{
  result = sub_10076B96C();
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

void sub_100393EBC(char a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(a1 & 1);
  }
}

void sub_100393F6C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize;
  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = a3 & 1;
  *(v6 + 16) = a3 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(a1, a2, v7);
  }
}

void sub_100394040(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *((swift_isaMask & *Strong) + 0x110);
    v5 = Strong;

    v3(v4);
  }
}

void sub_100394110(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(a1);
  }
}

uint64_t sub_1003941C8(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
  swift_beginAccess();
  sub_100395BBC(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100016E2C(v1 + v6, v5, &unk_1009434A0);
    (*((swift_isaMask & *v8) + 0x140))(v5);
  }

  return sub_10000CFBC(a1, &unk_1009434A0);
}

uint64_t sub_10039431C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (v6 != Strong)
    {
      v7 = *(v4 + 8);
      swift_getObjectType();
      v8 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) image];
      (*(v7 + 8))();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_7:

  return swift_unknownObjectRelease();
}

void sub_10039442C()
{
  v1 = sub_10076A75C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10076C38C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16] & 1) == 0 && *&v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics])
  {
    v42 = v2;
    v17 = *v15;
    v16 = v15[1];
    v18 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016E2C(&v0[v18], v10, &unk_1009434A0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000CFBC(v10, &unk_1009434A0);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory];
      if (v19 != 7)
      {

        v20 = v0;
        sub_1005B1CD8(v19);
        v21 = v42;
        v22 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v22 = v23;
        }

        (*(v42 + 104))(v4, *v22, v1);
        (*(v21 + 32))(v7, v4, v1);
        v24 = sub_1007701CC();

        (*(v21 + 8))(v7, v1);
        v25 = v20[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded];
        [v20 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [v20 traitCollection];
        v35 = sub_1006C37A4(v34, v27, v29, v31, v33, v17, v16, v24, v25);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        [*&v20[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] setFrame:{v35, v37, v39, v41}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

char *sub_100394844(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory] = 7;
  v11 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
  v12 = sub_10076C38C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
  v14 = sub_10076BD9C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  v16 = sub_10075DDBC();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for RevealingImageView();
  v17 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView;
  v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView];
  v20 = v17;
  [v19 setContentMode:2];
  v21 = *&v17[v18];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 setClipsToBounds:1];

  return v22;
}

void sub_100394AF0(void *a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView);
      v8 = Strong;
      v9 = [v7 image];
      v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize);
      v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 8);
      v12 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16);
      v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics);
      v14 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
      swift_beginAccess();
      sub_100016E2C(v1 + v14, v5, &unk_1009434A0);
      v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory);

      sub_1003955EC(v9, v10, v11, v12, v13, v5, v15);

      sub_10000CFBC(v5, &unk_1009434A0);
    }
  }
}

void sub_100394D18(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a10;
  v16 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v16 - 8);
  v51 = &v46 - v17;
  v18 = sub_10075DDBC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&qword_10094B038);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = sub_10000A5D4(&qword_10094B040);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!a1)
    {

      return;
    }

    v47 = a9;
    v48 = a1;
    v32 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    (*(v19 + 16))(v29, a8, v18);
    (*(v19 + 56))(v29, 0, 1, v18);
    v33 = *(v21 + 48);
    sub_100016E2C(v31 + v32, v23, &qword_10094B040);
    sub_100016E2C(v29, &v23[v33], &qword_10094B040);
    v34 = *(v19 + 48);
    if (v34(v23, 1, v18) == 1)
    {
      v35 = v48;
      v36 = v48;
      sub_10000CFBC(v29, &qword_10094B040);
      if (v34(&v23[v33], 1, v18) == 1)
      {
        sub_10000CFBC(v23, &qword_10094B040);
LABEL_11:
        v42 = sub_10076C38C();
        v43 = *(v42 - 8);
        v44 = v51;
        (*(v43 + 16))(v51, v50, v42);
        (*(v43 + 56))(v44, 0, 1, v42);
        v45 = v35;
        sub_1003955EC(v35, *&a2, *&a3, 0, v47, v44, a11);

        sub_10000CFBC(v44, &unk_1009434A0);
        return;
      }

LABEL_9:
      sub_10000CFBC(v23, &qword_10094B038);

      return;
    }

    sub_100016E2C(v23, v26, &qword_10094B040);
    v37 = v34(&v23[v33], 1, v18);
    v35 = v48;
    if (v37 == 1)
    {
      v38 = v48;
      sub_10000CFBC(v29, &qword_10094B040);
      (*(v19 + 8))(v26, v18);
      goto LABEL_9;
    }

    v39 = v49;
    (*(v19 + 32))(v49, &v23[v33], v18);
    sub_10039598C();
    v46 = v35;
    v40 = sub_10076FF1C();
    v41 = *(v19 + 8);
    v41(v39, v18);
    sub_10000CFBC(v29, &qword_10094B040);
    v41(v26, v18);
    v35 = v48;
    sub_10000CFBC(v23, &qword_10094B040);
    if (v40)
    {
      goto LABEL_11;
    }
  }
}

id sub_1003952A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingImageView()
{
  result = qword_100954DC0;
  if (!qword_100954DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003953FC()
{
  sub_100395598(319, qword_100946AC0, &type metadata accessor for PageGrid);
  if (v0 <= 0x3F)
  {
    sub_100395598(319, &qword_100954DD0, &type metadata accessor for Artwork.URLTemplate);
    if (v1 <= 0x3F)
    {
      sub_100395598(319, &qword_100954DD8, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100395598(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1003955EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v47 = a4;
  v15 = sub_10000A5D4(&unk_1009434A0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v43 - v17;
  v19 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView);
  v44 = a1;
  v45 = v19;
  [v19 setImage:{a1, v16}];
  v46 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics;
  *(v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics) = a5;

  v20 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *((swift_isaMask & *Strong) + 0x110);
    v43 = v20;
    swift_bridgeObjectRetain_n();
    v23(a5);
  }

  else
  {
  }

  v24 = (v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize);
  *v24 = a2;
  v24[1] = a3;
  v25 = v47 & 1;
  *(v24 + 16) = v47 & 1;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    (*((swift_isaMask & *v26) + 0xF8))(a2, a3, v25);
  }

  sub_100016E2C(a6, v18, &unk_1009434A0);
  sub_1003941C8(v18);
  v28 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory;
  *(v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = a7;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0x128))(a7);
  }

  v31 = v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v44, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v45 image];
    v37 = *v24;
    v38 = v24[1];
    v39 = *(v24 + 16);
    v40 = *(v8 + v46);
    v41 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016E2C(v8 + v41, v18, &unk_1009434A0);
    v42 = *(v8 + v28);

    sub_1003955EC(v36, v37, v38, v39, v40, v18, v42);

    sub_10000CFBC(v18, &unk_1009434A0);
  }

  sub_10039442C();
}

unint64_t sub_10039598C()
{
  result = qword_10094B048;
  if (!qword_10094B048)
  {
    sub_10075DDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B048);
  }

  return result;
}

void sub_1003959E4()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = 7;
  v3 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
  v4 = sub_10076C38C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
  v6 = sub_10076BD9C();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  v8 = sub_10075DDBC();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100395BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100395C2C()
{
  v0 = sub_10000A5D4(&unk_10094C370);
  sub_10000DB18(v0, qword_10099F1E8);
  sub_10000A61C(v0, qword_10099F1E8);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_100395CDC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076640C();
  sub_10000DB18(v4, qword_10099F218);
  sub_10000A61C(v4, qword_10099F218);
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1018);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v12[3] = sub_10076D9AC();
  v12[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v12);
  v10 = v0;
  v11 = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v10 = sub_10076D67C();
  v11 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v9);
  sub_10076D66C();
  return sub_1007663FC();
}

uint64_t sub_100395F20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100945BD0);
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = sub_10076640C();
  sub_10000DB18(v10, a2);
  v20 = sub_10000A61C(v10, a2);
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v17 = sub_10000A61C(v11, qword_1009A1018);
  v12 = *(*(v11 - 8) + 16);
  v12(v6, v17, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = *(v4 + 104);
  v14(v6, enum case for FontSource.useCase(_:), v3);
  sub_10075FE6C();
  sub_10075FE2C();
  (*(v18 + 8))(v9, v19);
  v12(v6, v17, v11);
  v14(v6, v13, v3);
  v22[3] = sub_10076D9AC();
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v21[3] = v3;
  v21[4] = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v21);
  (*(v4 + 16))(v15, v6, v3);
  sub_10076D9BC();
  (*(v4 + 8))(v6, v3);
  return sub_1007663FC();
}

char *sub_100396230(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v82 = sub_10076771C();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = &v74[-v12];
  v14 = sub_10076E1EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10076E21C();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView;
  (*(v15 + 104))(v17, enum case for Separator.Position.bottom(_:), v14, v20);
  v87[3] = sub_10076D67C();
  v87[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v87);
  sub_10076D66C();
  sub_10076E1FC();
  v24 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v26 = *(v19 + 40);
  v27 = v24;
  v26(&v24[v25], v22, v18);
  swift_endAccess();

  *&v5[v23] = v27;
  v28 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  v84 = sub_100016F40(0, &qword_100942F10);
  v29 = sub_100770D2C();
  v30 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v31 = sub_10073C780(v29, 0.0, 0.0, 0.0, 0.0);
  v83 = v5;
  *&v5[v28] = v31;
  v79 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  v33 = sub_10000A61C(v32, qword_1009A1018);
  v34 = *(v32 - 8);
  v77 = *(v34 + 16);
  v78 = v33;
  v77(v13, v33, v32);
  v76 = *(v34 + 56);
  v76(v13, 0, 1, v32);
  v75 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v81;
  v80 = *(v80 + 104);
  v36 = v82;
  (v80)(v81);
  v37 = sub_1007626BC();
  v38 = objc_allocWithZone(v37);
  v39 = sub_1007626AC();
  v40 = v83;
  v41 = v78;
  *&v83[v79] = v39;
  v79 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v77(v13, v41, v32);
  v76(v13, 0, 1, v32);
  (v80)(v35, v75, v36);
  v42 = objc_allocWithZone(v37);
  *&v40[v79] = sub_1007626AC();
  v43 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_itemLayoutContext;
  v44 = sub_10076341C();
  (*(*(v44 - 8) + 56))(&v40[v43], 1, 1, v44);
  v40[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] = 0;
  *&v40[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits] = 0;
  v45 = type metadata accessor for TitledParagraphCollectionViewCell();
  v86.receiver = v40;
  v86.super_class = v45;
  v46 = objc_msgSendSuper2(&v86, "initWithFrame:", a1, a2, a3, a4);
  v47 = [v46 contentView];
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v48 = [v46 contentView];
  v49 = sub_100770D2C();
  [v48 setBackgroundColor:v49];

  v50 = [v46 contentView];
  [v50 addSubview:*&v46[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView]];

  v51 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  v52 = *&v46[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  v53 = sub_100770D1C();
  [v52 setTextColor:v53];

  v54 = *&v46[v51];
  v55 = sub_100770D2C();
  [v54 setBackgroundColor:v55];

  [*&v46[v51] setNumberOfLines:1];
  v56 = [v46 contentView];
  [v56 addSubview:*&v46[v51]];

  v57 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v58 = *&v46[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  v60 = *&v46[v57];
  v61 = sub_100770D2C();
  [v60 setBackgroundColor:v61];

  v62 = v46;
  v63 = [v62 contentView];
  [v63 addSubview:*&v46[v57]];

  v64 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  v65 = qword_1009401F8;
  v66 = *&v62[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10000A5D4(&unk_10094C370);
  sub_10000A61C(v67, qword_10099F1E8);
  v85 = v62;
  sub_10075FDCC();

  v68 = v87[0];
  v69 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v70 = *&v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = v87[0];
  v71 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    [*&v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setNumberOfLines:?];
    v68 = *&v66[v69];
  }

  if (v68 != v70 && (v66[v71] & 1) != 0)
  {
    sub_10073D75C();
  }

  v72 = [v62 contentView];
  [v72 addSubview:*&v62[v64]];

  return v62;
}

id sub_100396B64()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] == 1)
  {
    if (qword_100940B68 != -1)
    {
      swift_once();
    }

    v6 = sub_10076D3DC();
    v7 = sub_10000A61C(v6, qword_1009A1030);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v4, v7, v6);
    (*(v8 + 56))(v4, 0, 1, v6);
    sub_1007625DC();
    sub_100016F40(0, &qword_100942F10);
    v9 = sub_100770CFC();
  }

  else
  {
    if (qword_100940B60 != -1)
    {
      swift_once();
    }

    v10 = sub_10076D3DC();
    v11 = sub_10000A61C(v10, qword_1009A1018);
    v12 = *(v10 - 8);
    (*(v12 + 16))(v4, v11, v10);
    (*(v12 + 56))(v4, 0, 1, v10);
    sub_1007625DC();
    sub_100016F40(0, &qword_100942F10);
    v9 = sub_100770D1C();
  }

  v13 = v9;
  [v5 setTextColor:v9];

  return [v1 setNeedsLayout];
}

void *sub_100396DEC()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076642C();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076640C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = sub_10076E21C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TitledParagraphCollectionViewCell();
  v85.receiver = v1;
  v85.super_class = v19;
  objc_msgSendSuper2(&v85, "layoutSubviews");
  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits];
  if (result)
  {
    v68 = v3;
    v69 = v2;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView];
    v70 = result;
    swift_unknownObjectRetain();
    [v1 bounds];
    v22 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    (*(v16 + 16))(v18, &v21[v22], v15);
    sub_10076E1CC();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v16 + 8))(v18, v15);
    [v21 setFrame:{v24, v26, v28, v30}];
    v31 = [v1 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = [v1 traitCollection];
    v41 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling;
    v42 = v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling];
    v67 = v40;
    if ((v42 & 1) != 0 || (sub_1007663BC() & 1) == 0)
    {
      v50 = sub_10077071C();
      v66 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:0];
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel] setTextAlignment:{v51, *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel]}];
      if (v1[v41] == 1)
      {
        v49 = v68;
        v46 = v14;
        if (qword_100940210 != -1)
        {
          swift_once();
        }

        v52 = qword_10099F230;
      }

      else
      {
        v49 = v68;
        v46 = v14;
        if (qword_100940200 != -1)
        {
          swift_once();
        }

        v52 = qword_10099F200;
      }

      v47 = v7;
      v53 = sub_10000A61C(v6, v52);
      v45 = *(v7 + 16);
      v45(v11, v53, v6);
      (*(v7 + 32))(v46, v11, v6);
    }

    else
    {
      v66 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:2];
      v65 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
      [v65 setTextAlignment:2];
      v86.origin.x = v33;
      v86.origin.y = v35;
      v86.size.width = v37;
      v86.size.height = v39;
      Width = CGRectGetWidth(v86);
      if (qword_100940208 != -1)
      {
        swift_once();
      }

      v44 = sub_10000A61C(v6, qword_10099F218);
      v45 = *(v7 + 16);
      v46 = v14;
      v47 = v7;
      v45(v46, v44, v6);
      v48 = v70;
      sub_100397DE4(v70, Width);
      sub_1007663DC();
      [v48 pageMarginInsets];
      sub_1007663EC();
      v49 = v68;
    }

    v45(v71, v46, v6);
    v54 = sub_1007626BC();
    v68 = v6;
    v55 = v46;
    v83 = v54;
    v84 = &protocol witness table for UIView;
    v56 = v66;
    v81 = &protocol witness table for UIView;
    v82 = v66;
    v80 = v54;
    v57 = v65;
    v79 = v65;
    v58 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
    v59 = type metadata accessor for ExpandableTextView();
    v78 = &protocol witness table for UIView;
    v77 = v59;
    v76 = v58;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v72;
    sub_10076641C();
    v64 = v74;
    sub_1007663CC();
    swift_unknownObjectRelease();

    (*(v49 + 8))(v64, v69);
    (*(v73 + 8))(v63, v75);
    return (*(v47 + 8))(v55, v68);
  }

  return result;
}

double sub_10039760C(void *a1, char a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = sub_10000A5D4(&unk_100943250);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v52 - v17;
  if (a2)
  {
    v19 = [a1 traitCollection];
    v20 = sub_1007663BC();

    if (v20)
    {
      v21 = sub_100397DE4(a6, a3);
      [a6 pageMarginInsets];
      a3 = a3 - (v21 + v22);
    }
  }

  if (a7)
  {
    v23 = a3 <= a4 ? a3 : a4;
    if (v23 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v27 = a7;
      v28 = [a1 traitCollection];
      v29 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v30 = objc_allocWithZone(v29);
      v31 = &v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v31 = UIEdgeInsetsZero.top;
      v31[1] = left;
      v31[2] = bottom;
      v31[3] = right;
      *&v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = a8;
      v32 = &v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v32 = a3;
      v32[1] = a4;
      *&v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v28;
      *&v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v27;
      v53.receiver = v30;
      v53.super_class = v29;
      v33 = objc_msgSendSuper2(&v53, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v34 = qword_1009678B0;
      v35 = [qword_1009678B0 objectForKey:v33];
      if (v35)
      {
        v36 = v35;

        a3 = *&v36[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v37 = qword_100941598;
        v36 = v27;
        if (v37 != -1)
        {
          swift_once();
        }

        v38 = sub_10076D3DC();
        v39 = sub_10000A61C(v38, qword_100967898);
        v40 = *(v38 - 8);
        (*(v40 + 16))(v18, v39, v38);
        (*(v40 + 56))(v18, 0, 1, v38);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        sub_10000CFBC(v18, &unk_100943250);
        v47 = type metadata accessor for ExpandableTextView.CacheValue();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v49 = a3;
        v49[1] = UIEdgeInsetsZero.top + bottom + v42;
        *(v49 + 2) = v44;
        *(v49 + 3) = v46;
        v52.receiver = v48;
        v52.super_class = v47;
        v50 = objc_msgSendSuper2(&v52, "init");
        [v34 setObject:v50 forKey:v33];
      }
    }
  }

  return a3;
}

void sub_100397A14(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  if (qword_1009401F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A5D4(&unk_10094C370);
  sub_10000A61C(v4, qword_10099F1E8);
  v10 = v1;
  v5 = v1;
  sub_10075FDCC();

  v6 = v11;
  v7 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines) = v11;
  v9 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) == 1)
  {
    [*(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:v10];
    v6 = *(v3 + v7);
  }

  if (v6 != v8 && (*(v3 + v9) & 1) != 0)
  {
    sub_10073D75C();
  }
}

id sub_100397BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell()
{
  result = qword_100954E28;
  if (!qword_100954E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100397D1C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100397DE4(void *a1, double a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  [a1 pageMarginInsets];
  v13 = (a2 + v12 * -4.0) / 5.0;
  sub_10076D17C();
  v21 = v13;
  (*(v5 + 16))(v7, v11, v4);
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v15 = round(v13);
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return v15;
  }

  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v5 + 8))(v11, v4);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_10077035C();
    v19 = *(v5 + 8);
    v19(v11, v4);
    v19(v7, v4);
    return v21;
  }
}

void sub_100398054()
{
  v1 = v0;
  v46 = sub_10076771C();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v43 = &v37[-v4];
  v5 = sub_10076E1EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10076E21C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView;
  (*(v6 + 104))(v8, enum case for Separator.Position.bottom(_:), v5, v11);
  v48[3] = sub_10076D67C();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v48);
  sub_10076D66C();
  sub_10076E1FC();
  v15 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v17 = *(v10 + 40);
  v18 = v15;
  v17(&v15[v16], v13, v9);
  swift_endAccess();

  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  sub_100016F40(0, &qword_100942F10);
  v20 = sub_100770D2C();
  v21 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v22 = sub_10073C780(v20, 0.0, 0.0, 0.0, 0.0);
  v47 = v1;
  *(v1 + v19) = v22;
  v42 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1018);
  v25 = *(v23 - 8);
  v40 = *(v25 + 16);
  v41 = v24;
  v26 = v43;
  v40(v43, v24, v23);
  v39 = *(v25 + 56);
  v39(v26, 0, 1, v23);
  v38 = enum case for DirectionalTextAlignment.none(_:);
  v27 = v45;
  v44 = *(v44 + 104);
  v28 = v46;
  (v44)(v45);
  v29 = sub_1007626BC();
  v30 = objc_allocWithZone(v29);
  v31 = sub_1007626AC();
  v32 = v47;
  v33 = v41;
  *(v47 + v42) = v31;
  v42 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v40(v26, v33, v23);
  v39(v26, 0, 1, v23);
  (v44)(v27, v38, v28);
  v34 = objc_allocWithZone(v29);
  *(v32 + v42) = sub_1007626AC();
  v35 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_itemLayoutContext;
  v36 = sub_10076341C();
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  *(v32 + OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling) = 0;
  *(v32 + OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003986B8()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_100954EA0);
  sub_10000A61C(v0, qword_100954EA0);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

char *sub_100398754(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075E77C();
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_metrics;
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v21 = sub_10075E93C();
  v22 = sub_10000A61C(v21, qword_1009A09A0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  v61 = sub_100016F40(0, &qword_100942F10);
  *&v5[v23] = sub_100770D9C();
  if (qword_100940218 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v25 = sub_10000A61C(v24, qword_100954E40);
  v26 = *(v24 - 8);
  v66 = *(v26 + 16);
  v66(v19, v25, v24);
  v65 = *(v26 + 56);
  v65(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v27;
  v27(v16);
  v28 = sub_1007626BC();
  v62 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel] = sub_1007626AC();
  if (qword_100940220 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v24, qword_100954E58);
  v66(v19, v31, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel] = sub_1007626AC();
  if (qword_100940228 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v24, qword_100954E70);
  v66(v19, v33, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel] = sub_1007626AC();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_offerButton] = sub_1001E89B8(0);
  sub_10075E6FC();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView] = sub_1005B7DD4(v12, 1);
  if (qword_100940230 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v24, qword_100954E88);
  v66(v19, v38, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription] = sub_1007626AC();
  v40 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v40;
  v41 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel]];
  v47 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_offerButton]];
  v48 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView]];
  v49 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription]];
  v50 = [*&v45[v48] layer];
  [v50 setCornerRadius:20.0];

  v51 = *&v45[v46];
  v52 = [v45 tintColor];
  [v51 setTextColor:v52];

  v53 = *&v45[v47];
  v54 = sub_100770D1C();
  [v53 setTextColor:v54];

  [*&v45[v48] setBackgroundColor:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor]];
  v55 = qword_100940238;
  v56 = *&v45[v49];
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v57, qword_100954EA0);
  v67 = v45;
  sub_10075FDCC();

  sub_100770E7C();
  v58 = *&v45[v49];
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  return v45;
}

uint64_t sub_100399184()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075E93C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E95C();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v63.receiver = v1;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "layoutSubviews");
  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_metrics], v4);
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_offerButton];
  v35[2] = v10;
  sub_10076422C();
  v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v11[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v11[v13], v60);
    sub_10000CF78(v60, v61);
    sub_100767A2C();
    v15 = v14;
    v17 = v16;
    sub_10000CD74(v60);
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = 0;
  }

  sub_10075E92C();
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
  v19 = sub_1007626BC();
  v35[1] = v7;
  v61 = v19;
  v62 = &protocol witness table for UILabel;
  v60[0] = v18;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel];
  v58 = v19;
  v59 = &protocol witness table for UILabel;
  v57 = v20;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];
  v55 = v19;
  v56 = &protocol witness table for UILabel;
  v54 = v21;
  v52 = type metadata accessor for OfferButton();
  v53 = &protocol witness table for UIView;
  v51 = v11;
  v35[0] = v11;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView];
  v49 = type metadata accessor for InAppPurchaseView();
  v50 = &protocol witness table for UIView;
  v47 = &protocol witness table for UILabel;
  v48 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription];
  v46 = v19;
  v45 = v23;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body];
  v43 = sub_100016F40(0, &qword_1009441F0);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v18;
  v26 = v20;
  v27 = v21;
  v28 = v35[0];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v36;
  sub_10075E94C();
  sub_10076422C();
  v33 = v39;
  sub_10075E8FC();
  (*(v40 + 8))(v33, v41);
  return (*(v37 + 8))(v32, v38);
}

id sub_1003995E0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100940238 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_100954EA0);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

uint64_t sub_100399780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = sub_10075E57C();
  v72 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v71 = sub_100768FEC();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100946750);
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v69 = (&v58 - v15);
  v16 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  sub_10075E7FC();
  sub_10039ABE0(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_10076332C();
  if (v73)
  {
    v64 = v9;
    v65 = v6;
    v20 = sub_10075E7EC();

    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    v63 = v73;

    v21 = v20;
    sub_10076BB6C();
    v23 = v22;
    v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel];
    v61 = v14;
    v62 = a2;
    v60 = v12;
    if (v22)
    {
      v25 = sub_10076FF6C();
    }

    else
    {
      v25 = 0;
    }

    [v24 setText:v25];

    [v24 setHidden:v23 == 0];
    [v3 setNeedsLayout];
    v26 = sub_10075E63C();
    v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
    v28 = "inAppDescription";
    if (v26)
    {
      v28 = "chase.Subtitle.Format";
      v29._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v29._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v29._object = (v28 | 0x8000000000000000);
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    sub_1007622EC(v29, v77);
    v30 = sub_10076FF6C();

    [v27 setText:v30];

    sub_10075E66C();
    v31 = sub_10076BB6C();
    v33 = v32;

    if (v33)
    {
      v76._countAndFlagsBits = 0xD000000000000035;
      v76._object = 0x80000001007E22A0;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      sub_1007622EC(v76, v78);
      sub_10000A5D4(&qword_100966CF0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100783DD0;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000A9040();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_10076FFCC();

      v35 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];

      v36 = sub_10076FF6C();

      [v35 setText:v36];

      [v35 setHidden:0];
    }

    else
    {
      v37 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];
      [v37 setText:0];
      [v37 setHidden:1];
    }

    v38 = v60;
    [v3 setNeedsLayout];
    sub_10075E64C();
    v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription];
    if (v39)
    {
      v41 = sub_10076FF6C();
      [v40 setText:v41];

      [v40 setHidden:0];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription] setText:0];
      [v40 setHidden:1];
    }

    [v3 setNeedsLayout];
    v42 = sub_10076BB3C();
    v43 = sub_10076BA2C();
    v59 = v21;

    v44 = sub_10000A5D4(&qword_100945590);
    (*(*(v44 - 8) + 56))(v18, 1, 1, v44);
    v45 = v67;
    v46 = v71;
    (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.below(_:), v71);
    (*(v45 + 56))(v38, 1, 1, v46);
    sub_10039ABE0(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v47 = v69;
    sub_10076759C();
    sub_1001F12C8(v42, v43, 0, v18, v47, v62, 0, 0);

    v70[1](v47, v61);
    sub_100026190(v18);
    v48 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView];
    v74.value.super.isa = 0;
    v74.is_nil = 0;
    sub_10075FCEC(v74, v49);
    v75.value.super.isa = 0;
    v75.is_nil = 0;
    sub_10075FCEC(v75, v50);
    sub_10075FD2C();
    sub_10039ABE0(&qword_100941820, &type metadata accessor for ArtworkView);
    v51 = v63;
    sub_100760BFC();
    sub_100760BFC();
    v71 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor];
    v52 = v64;
    sub_10075E65C();
    v53 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v54 = v72;
    v55 = v66;
    (*(v72 + 24))(&v48[v53], v52, v66);
    swift_endAccess();
    v69 = *(v54 + 16);
    v56 = v65;
    v69(v65, &v48[v53], v55);
    sub_1005B84F8(v56);
    v70 = v3;
    v57 = *(v54 + 8);
    v57(v56, v55);
    v57(v52, v55);
    [v48 setBackgroundColor:v71];
    sub_1006EC184(v59, v48, v51);
    v69(v52, &v48[v53], v55);
    sub_1005B84F8(v52);
    v57(v52, v55);
    [v48 setNeedsLayout];
    [v70 setNeedsLayout];
  }

  return result;
}

id sub_10039A128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultContentView()
{
  result = qword_100954EF0;
  if (!qword_100954EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10039A2A0()
{
  result = sub_10075E93C();
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

uint64_t sub_10039A350(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a1, v6);
  sub_10000A5D4(&unk_100942830);
  sub_10075E7FC();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = sub_10075E7EC();

    sub_1006EC184(v5, *(v2 + OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView), a2);
  }

  return result;
}

uint64_t sub_10039A40C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v3);
  sub_10075FD2C();
  sub_10039ABE0(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  return sub_100760BFC();
}

uint64_t sub_10039A4F8()
{
  sub_10075E7FC();
  sub_10039ABE0(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_10076332C();
  if (v3)
  {
    sub_10075E7EC();
    v1 = sub_1006EC764();

    v2._rawValue = v1;
    sub_100760BAC(v2);
  }

  return result;
}

uint64_t sub_10039A618(uint64_t a1)
{
  *(a1 + 8) = sub_10039ABE0(&qword_100954F08, type metadata accessor for InAppPurchaseSearchResultContentView);
  result = sub_10039ABE0(&qword_100954F10, type metadata accessor for InAppPurchaseSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

double sub_10039A69C()
{
  v0 = sub_10076443C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_10075E93C();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076469C();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10076C38C();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E7FC();
  sub_10039ABE0(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult);
  sub_10076332C();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v11;
  sub_10075E7EC();

  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();

  sub_10076BB6C();

  sub_10076BBEC();

  v14 = sub_100630CB4();
  sub_10076C2FC();
  sub_100770ACC();
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v15 = v28;
  v16 = sub_10000A61C(v28, qword_1009A09A0);
  v17 = v27;
  (*(v27 + 16))(v9, v16, v15);
  v18 = [v14 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v19 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v19 = qword_100944CA0;
  }

  v21 = sub_10000A61C(v0, v19);
  (*(v1 + 16))(v3, v21, v0);

  (*(v1 + 32))(v6, v3, v0);
  sub_1007643EC();
  sub_10076441C();
  sub_10075E92C();
  sub_10075E90C();
  v20 = v22;

  swift_unknownObjectRelease();
  (*(v1 + 8))(v6, v0);
  (*(v17 + 8))(v9, v28);
  (*(v26 + 8))(v13, v25);
  return v20;
}

uint64_t sub_10039ABE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10039AC2C()
{
  result = qword_100954F18;
  if (!qword_100954F18)
  {
    type metadata accessor for UberHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954F18);
  }

  return result;
}

id sub_10039AC84()
{
  if (!*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    return 0;
  }

  type metadata accessor for VideoView();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    result = *(v1 + qword_1009602D0);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }
  }

  return [result image];
}

void sub_10039AD30(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v3 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v4 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v4)
  {
    v5 = [v4 layer];
    [v5 removeAllAnimations];

    v6 = *(*(v2 + v3) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v6)
    {
      [v6 setAlpha:1.0];
      v7 = *(*(v2 + v3) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v7)
      {
        type metadata accessor for VideoView();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + qword_1009602D0);
        }

        else
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (!v10)
          {
            goto LABEL_9;
          }

          v9 = v10;
        }

        v11 = v7;
        [v9 setImage:a1];
      }
    }
  }

LABEL_9:
}

void sub_10039AE68(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v5 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  if (!*(*(v4 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    goto LABEL_7;
  }

  type metadata accessor for VideoView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + qword_1009602D0);
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [v8 image];
  if (!v9 || (v9, (a2 & 1) != 0))
  {
LABEL_7:
    v10 = *(*(v4 + v5) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v10)
    {
      type metadata accessor for VideoView();
      if (swift_dynamicCastClass())
      {
        v19 = v10;
        sub_1006D9024(a1, a1 == 0);
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = v10;
          [v12 setAlpha:0.0];
          [v12 setImage:a1];
          sub_10039B1D4();
          v14 = sub_10077089C();
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          aBlock[4] = sub_1000718A0;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10009AEDC;
          aBlock[3] = &unk_100892E40;
          v16 = _Block_copy(aBlock);
          v17 = v13;

          [v14 addAnimations:v16];
          _Block_release(v16);
          [v14 startAnimation];
        }
      }
    }

    return;
  }

  v18 = a1;

  sub_10039AD30(a1);
}

void (*sub_10039B120(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10039AC84();
  return sub_10039B168;
}

void sub_10039B168(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10039AD30(v2);
  }

  else
  {
    sub_10039AD30(*a1);
  }
}

unint64_t sub_10039B1D4()
{
  result = qword_100954F20;
  if (!qword_100954F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100954F20);
  }

  return result;
}

uint64_t sub_10039B220()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10039B258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10039B2CC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_10000A5D4(&qword_100954F80);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = sub_1007649CC();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_10000A5D4(&qword_100954F88);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_10000A5D4(&unk_100956700);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10000A5D4(&unk_100946710);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_10075F51C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v12 + 8))(v14, v11);
  sub_10000A5D4(&qword_1009575A0);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    sub_1007633DC();
    v25 = v37;
    sub_10076FDBC();
    v26 = v46;
    sub_10039C8C8();

    sub_10076FD8C();
    sub_1007649EC();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = sub_1007649AC();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_10039C920;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_10000A5D4(&qword_100954F90);
    sub_10039C938();
    v32 = v40;
    sub_10076EC9C();
    sub_10076ECFC();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_100071820(&qword_100954FD0, &qword_100954F80);
    sub_10000DB7C(v48);
    sub_10076EC8C();
    (*(v42 + 8))(v32, v33);
    sub_1007707FC();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_10039C818(v10);
  }
}

uint64_t sub_10039B97C(uint64_t a1)
{
  v2 = sub_1007649CC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);

  sub_10076158C();
  sub_10000A5D4(&qword_100954FC0);
  return sub_1007633AC();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell()
{
  result = qword_100954F58;
  if (!qword_100954F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10039BD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_10000A5D4(&qword_100954F70);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_1007649CC();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100956700);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_10000A5D4(&unk_100946710);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_10075F51C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v39 = a1;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v15 + 8))(v17, v14);
  sub_10000A5D4(&qword_1009575A0);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v37 = v24;
    v27(v21, v24, v18);

    sub_1007649AC();
    v28 = v10;
    if (sub_1007649BC() & 1) != 0 || (, sub_1007649DC(), , v29 = sub_1007622CC(), , (v29))
    {
      sub_10076336C();
      v30 = v40;
      sub_10076F87C();
      sub_10039C8C8();
      v31 = v42;
      sub_10076F83C();

      sub_1007649EC();

      sub_10000A5D4(&qword_10094AA58);
      sub_10076A92C();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100784500;
      sub_10076A91C();
      sub_10076A90C();
      v47 = v32;
      sub_10039C880(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_10000A5D4(&qword_10094AA68);
      sub_100071820(&qword_10094AA70, &qword_10094AA68);
      sub_1007712CC();
      (*(v41 + 8))(v30, v31);
    }

    else
    {
      sub_10000A5D4(&qword_10094AA58);
      sub_10076A92C();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100784500;
      sub_10076A91C();
      sub_10076A90C();
      v47 = v35;
      sub_10039C880(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_10000A5D4(&qword_10094AA68);
      sub_100071820(&qword_10094AA70, &qword_10094AA68);
      sub_1007712CC();
    }

    (*(v44 + 8))(v28, v45);
    return (*(v19 + 8))(v37, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_10039C818(v13);
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100784500;
    sub_10076A91C();
    sub_10076A90C();
    v47 = v33;
    sub_10039C880(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68);
    sub_100071820(&qword_10094AA70, &qword_10094AA68);
    return sub_1007712CC();
  }
}

uint64_t sub_10039C638@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v6 = v11[1];
  v7 = sub_1007706EC();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100763FAC();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_100763FDC();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_10039C7C0(uint64_t a1)
{
  result = sub_10039C880(&qword_100954F68, type metadata accessor for AnnotationCollectionViewHostingCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10039C818(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100956700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039C880(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10039C8C8()
{
  result = qword_100954F78;
  if (!qword_100954F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954F78);
  }

  return result;
}

unint64_t sub_10039C938()
{
  result = qword_100954F98;
  if (!qword_100954F98)
  {
    sub_10000CE78(&qword_100954F90);
    sub_10039C9F0();
    sub_100071820(&qword_100956780, &qword_10094CE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954F98);
  }

  return result;
}

unint64_t sub_10039C9F0()
{
  result = qword_100954FA0;
  if (!qword_100954FA0)
  {
    sub_10000CE78(&qword_100954FA8);
    sub_10000CE78(&qword_100954FB0);
    sub_10000CE78(&qword_100954FB8);
    sub_10076F64C();
    sub_10000CE78(&qword_100954FC0);
    sub_100071820(&qword_100954FC8, &qword_100954FC0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100071820(&unk_100956770, &qword_10094CE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954FA0);
  }

  return result;
}

unint64_t sub_10039CBC4()
{
  result = qword_100954FD8;
  if (!qword_100954FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954FD8);
  }

  return result;
}

unint64_t sub_10039CC1C()
{
  result = qword_100954FE0;
  if (!qword_100954FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954FE0);
  }

  return result;
}

double sub_10039CCBC()
{
  v27 = sub_10076C38C();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v1 = &v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076664C();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&qword_10094DC40);
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v21 = &v20 - v4;
  v5 = sub_10000A5D4(&unk_100946720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_10076469C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100761D1C();
  sub_10039D180(&qword_100944108, &type metadata accessor for UpsellBreakout);
  sub_10076332C();
  if (!v29)
  {
    return 0.0;
  }

  sub_1007632FC();
  sub_10076468C();
  (*(v10 + 8))(v12, v9);
  swift_getKeyPath();
  sub_10076F49C();

  (*(v6 + 8))(v8, v5);

  sub_10076FCFC();
  sub_10039D180(&qword_10094BFE0, &type metadata accessor for NilState);
  v13 = v21;
  sub_10076335C();
  v14 = v24;
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v16 = v15;
  (*(v25 + 8))(v1, v27);
  sub_100630CB4();
  sub_1001A87E4(v16);
  v18 = v17;
  swift_unknownObjectRelease();

  (*(v26 + 8))(v14, v28);
  (*(v22 + 8))(v13, v23);
  return v18;
}

uint64_t sub_10039D180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TodayCardVideoView()
{
  result = qword_100954FE8;
  if (!qword_100954FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10039D26C(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v94 = a7;
  v92 = a6;
  v95 = a5;
  v96 = a4;
  v97 = a3;
  v98 = a2;
  v87 = sub_10076F9AC();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  v17 = sub_10076481C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10075DB7C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v77 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v78 = &v77 - v25;
  __chkstk_darwin(v26);
  v28 = &v77 - v27;
  v29 = objc_allocWithZone(v8);
  v29[qword_10099F298] = 7;
  v29[qword_10099F2A0] = 0;
  v89 = a1;
  sub_10008C3EC(a1, v103);
  v90 = v22;
  v30 = *(v22 + 16);
  v91 = v21;
  v79 = v30;
  v30(v28, v98, v21);
  v88 = v18;
  v31 = *(v18 + 16);
  v84 = v20;
  v93 = v17;
  v83 = v18 + 16;
  v82 = v31;
  v31(v20, v97, v17);
  v32 = v16;
  sub_100016E2C(v96, v16, &unk_10094C030);
  sub_100016E2C(v95, v13, &unk_10094C030);
  sub_100016E2C(v92, v102, &unk_100960410);
  swift_weakInit();
  *&v29[qword_1009602B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_1009602C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_1009602C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = qword_1009602D0;
  *&v29[v33] = [objc_allocWithZone(UIImageView) init];
  v29[qword_1009602D8] = 0;
  v29[qword_1009602E0] = 0;
  v29[qword_1009602E8] = 0;
  *&v29[qword_1009602F0] = 0;
  *&v29[qword_1009602F8] = 0;
  v34 = qword_100960300;
  sub_10076925C();
  *&v29[v34] = sub_10076924C();
  v35 = qword_100960308;
  *&v29[v35] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v36 = v28;
  v37 = &v29[qword_1009A2508];
  v38 = *&UIEdgeInsetsZero.bottom;
  *v37 = *&UIEdgeInsetsZero.top;
  v37[1] = v38;
  v39 = &v29[qword_1009A2510];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  *&v29[qword_1009A2518] = 1;
  v29[qword_100960310] = 0;
  v40 = &v29[qword_1009A2528];
  *v40 = 0;
  v40[1] = 0;
  *&v29[qword_1009A2538 + 8] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_1009A2540] = 0;
  v29[qword_1009A2548] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_100960318] = 0;
  v29[qword_1009A2560] = 0;
  *&v29[qword_100960320] = 0;
  v29[qword_100960328] = 0;
  swift_beginAccess();
  swift_weakAssign();
  sub_10008C3EC(v103, &v29[qword_1009A2530]);
  v41 = sub_10075DB5C();
  v43 = v42;
  v44 = sub_10076BD6C();
  v81 = v36;
  if (v43)
  {
    if (v41 == v44 && v43 == v45)
    {

      v46 = v91;
    }

    else
    {
      v47 = sub_10077167C();

      v46 = v91;
      if ((v47 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v48 = [objc_opt_self() mainBundle];
    sub_10075DB0C();
    v49 = sub_10076FF6C();

    v50 = [v48 URLForResource:v49 withExtension:0];

    if (v50)
    {
      v51 = v77;
      sub_10075DB3C();

      v52 = *(v90 + 32);
      v53 = v78;
      v52(v78, v51, v46);
      v52(&v29[qword_1009A2520], v53, v46);
      goto LABEL_10;
    }
  }

  else
  {

    v46 = v91;
  }

LABEL_9:
  v79(&v29[qword_1009A2520], v36, v46);
LABEL_10:
  v80 = v32;
  sub_100016E2C(v32, &v29[qword_1009A24F0], &unk_10094C030);
  v54 = v13;
  sub_100016E2C(v13, &v29[qword_1009A24F8], &unk_10094C030);
  v55 = v84;
  v56 = v93;
  v82(&v29[qword_1009A2558], v84, v93);
  sub_100016E2C(v102, &v29[qword_1009A2500], &unk_100960410);
  v57 = type metadata accessor for VideoView();
  v101.receiver = v29;
  v101.super_class = v57;
  v58 = objc_msgSendSuper2(&v101, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v58 setClipsToBounds:0];
  v59 = qword_1009602D0;
  [*&v58[qword_1009602D0] setUserInteractionEnabled:0];
  [*&v58[v59] setClipsToBounds:1];
  [v58 addSubview:*&v58[v59]];
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = sub_1007707BC();
  [v61 addObserver:v58 selector:"didChangeAutoPlayVideoSetting" name:v62 object:0];

  v63 = [v60 defaultCenter];
  [v63 addObserver:v58 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v64 = qword_100960308;
  [*&v58[qword_100960308] setHidden:1];
  v65 = *&v58[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  v68 = *&v65[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  *v67 = sub_10039E4D0;
  v67[1] = v66;
  v69 = v65;

  sub_1000167E0(v68);

  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  v70 = v85;
  sub_10076F95C();
  sub_10000CFBC(v99, &unk_1009434C0);
  sub_10000CFBC(v100, &unk_1009434C0);
  sub_100770B9C();
  (*(v86 + 8))(v70, v87);
  [v58 addSubview:*&v58[v64]];
  sub_1005F41B0();

  sub_10000CFBC(v102, &unk_100960410);
  sub_10000CFBC(v54, &unk_10094C030);
  sub_10000CFBC(v80, &unk_10094C030);
  v71 = *(v88 + 8);
  v71(v55, v56);
  v72 = *(v90 + 8);
  v73 = v91;
  v72(v81, v91);
  sub_100016C74(v103);
  v74 = v58[qword_1009602E8];
  v58[qword_1009602E8] = 1;
  if (v74)
  {
  }

  else
  {
    v75 = v58;
    sub_1005ED8D0();
  }

  sub_10000CFBC(v92, &unk_100960410);
  sub_10000CFBC(v95, &unk_10094C030);
  sub_10000CFBC(v96, &unk_10094C030);
  v71(v97, v93);
  v72(v98, v73);
  sub_100016C74(v89);
  return v58;
}

void sub_10039DEFC()
{
  v1 = v0;
  v2 = qword_10099F298;
  v3 = *(v0 + qword_10099F298);
  if (v3 == 4)
  {
    v5 = *(v0 + qword_10099F2A0);
    v6 = *(v0 + qword_1009602E8);
    *(v0 + qword_1009602E8) = v5 ^ 1;
    if (v5 & 1) != 0 || (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 != 7)
  {
    *(v0 + qword_1009602E8) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + qword_1009602E8);
  *(v0 + qword_1009602E8) = 1;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    sub_1005ED8D0();
  }

LABEL_9:
  v7 = qword_1009602F0;
  v8 = *(v0 + qword_1009602F0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1007605AC();

    if (v10 & 1) != 0 || (v11 = *(v1 + v7)) != 0 && (v12 = v11, v13 = sub_10076051C(), v12, (v13))
    {
      if ((*(v1 + qword_10099F2A0) & 1) == 0)
      {
        v14 = *(v1 + v2);
        if (v14 == 7 || v14 == 4)
        {
          v16 = *(v1 + v7);
          if (v16)
          {
            v17 = v16;
            if (sub_10076051C())
            {
              [v17 pause];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10039E07C()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009A2558;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_10076477C();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 || (sub_10076922C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + qword_10099F298);
  if (v7 == 7 || v7 == 4)
  {
    return *(v1 + qword_10099F2A0);
  }

  else
  {
    return 1;
  }
}

void sub_10039E1D8()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_10099F298;
  v7 = *(v0 + qword_10099F298);
  if (v7 == 4)
  {
    v9 = *(v0 + qword_10099F2A0);
    v10 = *(v0 + qword_1009602E8);
    *(v0 + qword_1009602E8) = v9 ^ 1;
    if (v9 & 1) != 0 || (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v7 != 7)
  {
    *(v0 + qword_1009602E8) = 0;
    goto LABEL_9;
  }

  v8 = *(v0 + qword_1009602E8);
  *(v0 + qword_1009602E8) = 1;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    sub_1005ED8D0();
  }

LABEL_9:
  v11 = qword_10099F2A0;
  if (*(v0 + qword_10099F2A0) == 1 && (v12 = qword_1009A2558, swift_beginAccess(), (*(v3 + 16))(v5, v1 + v12, v2), LOBYTE(v12) = sub_10076477C(), (*(v3 + 8))(v5, v2), (v12 & 1) != 0) && (sub_10076922C() & 1) != 0 && ((v13 = *(v1 + v6), v13 != 7) && v13 != 4 || *(v1 + v11) == 1))
  {
    sub_1005EBFD4();
  }

  else
  {
    v14 = qword_1009602F0;
    v15 = *(v1 + qword_1009602F0);
    if (v15)
    {
      v16 = v15;
      v17 = sub_1007605AC();

      if (v17 & 1) != 0 || (v18 = *(v1 + v14)) != 0 && (v19 = v18, v20 = sub_10076051C(), v19, (v20))
      {
        if ((*(v1 + v11) & 1) == 0)
        {
          v21 = *(v1 + v6);
          if (v21 == 7 || v21 == 4)
          {
            v23 = *(v1 + v14);
            if (v23)
            {
              v24 = v23;
              if (sub_10076051C())
              {
                [v24 pause];
              }
            }
          }
        }
      }
    }
  }
}

void sub_10039E45C()
{
  v1 = *(v0 + qword_10099F298);
  v2 = v1 == 7 || v1 == 4;
  if (!v2 || *(v0 + qword_10099F2A0) == 1)
  {
    sub_1005EBFD4();
  }
}

uint64_t sub_10039E498()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10039E524(uint64_t a1)
{
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B66C();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100946720);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_1007658FC();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_10076D39C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v46 - v22;
  sub_100762A6C();
  sub_10039ECA4(&qword_100945AD0, &type metadata accessor for ProductMediaItem);
  result = sub_10076332C();
  if (v61)
  {
    v52 = a1;
    if (sub_100762A4C())
    {
      sub_10076BEFC();
      sub_10076D3AC();

      v24 = *(v19 + 56);
      v24(v14, 0, 1, v18);
      (*(v19 + 32))(v17, v14, v18);
      v24(v17, 0, 1, v18);
      v25 = (*(v19 + 48))(v17, 1, v18);
    }

    else
    {
      v47 = v3;
      v48 = v2;
      v26 = *(v19 + 56);
      v27 = 1;
      v26(v14, 1, 1, v18);
      if (sub_100762A5C())
      {
        sub_10076B84C();

        sub_10076BEFC();
        sub_10076D3AC();

        v27 = 0;
      }

      v26(v17, v27, 1, v18);
      v28 = *(v19 + 48);
      if (v28(v14, 1, v18) != 1)
      {
        sub_10023DEE4(v14);
      }

      v3 = v47;
      v2 = v48;
      v25 = v28(v17, 1, v18);
    }

    if (v25 == 1)
    {

      return sub_10023DEE4(v17);
    }

    (*(v19 + 32))(v60, v17, v18);
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    v29 = v54;
    v30 = v55;
    sub_10076F49C();

    (*(v53 + 8))(v9, v29);
    v32 = v57;
    v31 = v58;
    v33 = v3;
    if ((*(v57 + 88))(v30, v58) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v32 + 96))(v30, v31);
      v35 = v49;
      v34 = v50;
      v36 = v30;
      v37 = v51;
      (*(v50 + 32))(v49, v36, v51);
      v38 = sub_10076588C();
      v39 = v56;
      if (v38)
      {
        v40 = v60;
        v41 = sub_10076D2EC();
        v42 = v34;
        v43 = v41;
        (*(v42 + 8))(v35, v37);
        if ((v43 & 1) == 0 && (sub_10076D2EC() & 1) == 0)
        {
          sub_10076D32C();
LABEL_21:
          swift_getKeyPath();
          v44 = v59;
          sub_10076338C();

          sub_10076C22C();
          (*(v33 + 8))(v44, v2);
          sub_10076D36C();

          v45 = *(v19 + 8);
          v45(v39, v18);
          return (v45)(v40, v18);
        }

LABEL_20:
        (*(v19 + 16))(v39, v40, v18);
        goto LABEL_21;
      }

      (*(v34 + 8))(v35, v37);
    }

    else
    {
      (*(v32 + 8))(v30, v31);
      v39 = v56;
    }

    v40 = v60;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10039ECA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10039ECF8(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100785D70;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();

  v7 = sub_1005BF804(0x6D69542074696157, 0xEF29636573282065, sub_10039F4FC, a1, sub_10039EF68, 0);

  *(v6 + 32) = v7;
  swift_allocObject();

  v8 = sub_1005BF804(0xD00000000000001ELL, 0x80000001007E2420, sub_10039FFA0, a1, sub_10039F014, 0);

  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007841E0;
  type metadata accessor for DebugSection();
  v10 = swift_allocObject();
  sub_10075DDAC();
  v11 = sub_10075DD8C();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v10[2] = v11;
  v10[3] = v13;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v6;
  *(v9 + 32) = v10;
  return v9;
}

uint64_t sub_10039EF80(uint64_t a1, void (*a2)(uint64_t))
{
  sub_10076148C();
  sub_10076F64C();
  v3 = sub_10076FC1C();
  a2(v3);

  return sub_10077163C();
}

unsigned __int8 *sub_10039F02C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_10000A5D4(&unk_10094CE80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v40[-v12];
  sub_10076F73C();
  result = a4();
  if (!a3 || ((v15 = HIBYTE(a3) & 0xF, v16 = a2 & 0xFFFFFFFFFFFFLL, (a3 & 0x2000000000000000) != 0) ? (v17 = HIBYTE(a3) & 0xF) : (v17 = a2 & 0xFFFFFFFFFFFFLL), !v17))
  {
    sub_10076F70C();
    v43 = v7;
    v44 = sub_10039FFD0();
    v23 = sub_10000DB7C(&v41);
    (*(v8 + 16))(v23, v13, v7);
    sub_10076F71C();

    (*(v8 + 8))(v13, v7);
    return sub_10000CD74(&v41);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    v19 = sub_10039F52C(a2, a3, 10);
    v39 = v38;

    if (v39)
    {
      return (*(v8 + 8))(v13, v7);
    }

    goto LABEL_65;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1007714BC();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              v29 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_63;
              }

              ++v27;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_63;
            }

            v34 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v19 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      v40[0] = v15;
      if (v15)
      {
        return (*(v8 + 8))(v13, v7);
      }

LABEL_65:
      sub_10076F70C();
      (*(v8 + 16))(v10, v13, v7);
      v41 = v19;
      LOBYTE(v42) = 0;
      sub_10076F42C();

      return (*(v8 + 8))(v13, v7);
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_63;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_63;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v41 = a2;
  v42 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v35 = &v41;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v24 = &v41 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v30 = &v41 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10039F52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10077014C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10039FAB8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1007714BC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}
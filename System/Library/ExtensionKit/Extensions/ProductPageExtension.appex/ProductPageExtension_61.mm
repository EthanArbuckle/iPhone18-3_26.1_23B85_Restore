uint64_t InAppMessagesMetricsEventRecorder.deinit()
{
  sub_1000167E0(*(v0 + 16));
  sub_1000167E0(*(v0 + 32));
  return v0;
}

uint64_t InAppMessagesMetricsEventRecorder.__deallocating_deinit()
{
  sub_1000167E0(*(v0 + 16));
  sub_1000167E0(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1006EBE28(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100965E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006EBE90()
{
  result = qword_100950AE8;
  if (!qword_100950AE8)
  {
    type metadata accessor for SmallContactCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950AE8);
  }

  return result;
}

double sub_1006EBEE8()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v4 = sub_1006EBFCC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1006EBFCC()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076CB3C();
  sub_10076460C();
  sub_10076C2FC();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_10076460C();
  sub_10076C24C();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_10076461C();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, "init");
  sub_10076CB0C();
  v13 = v12;

  return v13;
}

uint64_t sub_1006EC184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v4 = sub_10075E77C();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10076BF6C();
  v7 = *(v36 - 8);
  v8 = __chkstk_darwin(v36);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = sub_10076BB5C();
  if (v16)
  {
  }

  v37 = v13;
  v32 = v7;
  v17 = sub_10076BB5C();
  if (!v17)
  {
    sub_10075E66C();
    v18 = sub_10076BB5C();

    if (!v18)
    {
      goto LABEL_11;
    }

    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_10076BFCC();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_100760B7C();

    sub_10002CBB4(&v39);
    goto LABEL_11;
  }

  v18 = v17;
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  v35 = v6;
  v19 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);

  [v19 contentMode];
  sub_10076BFCC();
  v20 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
  sub_10076BF7C();
  sub_10075FCCC();
  [v20 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_1000325F0();
    sub_100770D5C();
  }

  sub_10075FB8C();
  sub_10075FD2C();
  sub_10000D7F8();
  sub_100760B8C();

  v6 = v35;
LABEL_11:
  sub_10075E66C();
  v21 = sub_10076BB5C();

  if (!v21)
  {
  }

  if (!v16)
  {
  }

  v31 = v18;
  sub_10075E6FC();
  sub_10076BF7C();
  v22 = v32;
  v23 = v36;
  (*(v32 + 104))(v10, enum case for Artwork.Style.roundedRect(_:), v36);
  v24 = v10;
  sub_10076BF2C();
  v25 = *(v22 + 8);
  v25(v24, v23);
  v25(v15, v23);
  sub_10075E70C();
  sub_10075E70C();
  sub_10076BF1C();
  if (a2)
  {
    v26 = a2;
    v27 = v25;
    v35 = v6;
    v28 = v26;
    [*(v26 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView) contentMode];
    sub_10076BFCC();
    v29 = *(v28 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v29 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v27(v37, v36);
    return (*(v33 + 8))(v35, v34);
  }

  else
  {
    sub_10076BFCC();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_100760B7C();

    sub_10002CBB4(&v39);
    v25(v37, v23);
    return (*(v33 + 8))(v6, v34);
  }
}

void *sub_1006EC764()
{
  v0 = sub_10076BF6C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  __chkstk_darwin(v7);
  v17 = &v16 - v8;
  v18 = sub_10075E77C();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  if (sub_10076BB5C())
  {
    sub_10076BFCC();

    sub_10077019C();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v11 = v19;
  }

  sub_10075E66C();
  v12 = sub_10076BB5C();

  if (v12)
  {
    sub_10075E6FC();
    sub_10076BF7C();
    (*(v1 + 104))(v3, enum case for Artwork.Style.roundedRect(_:), v0);
    v13 = v17;
    sub_10076BF2C();
    v14 = *(v1 + 8);
    v14(v3, v0);
    v14(v6, v0);
    sub_10075E70C();
    sub_10075E70C();
    sub_10076BF1C();
    sub_10076BFCC();

    sub_10077019C();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v14(v13, v0);
    (*(v16 + 8))(v10, v18);
    return v19;
  }

  return v11;
}

double sub_1006ECB3C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076997C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007644DC();
  sub_1006ECF5C(&qword_100954798, &type metadata accessor for PreorderDisclaimer);
  sub_10076332C();
  if (!v20[0])
  {
    return 0.0;
  }

  v18 = v0;
  v19 = v5;
  v8 = sub_1007644CC();
  v17[1] = v9;
  v17[2] = v8;
  sub_10005312C();
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  sub_10000A61C(v10, qword_1009A1480);
  swift_getKeyPath();
  sub_10076338C();

  v11 = v20[0];
  sub_100770B3C();

  v12 = sub_10076C04C();
  v20[3] = v12;
  v20[4] = sub_1006ECF5C(&qword_100943230, &type metadata accessor for Feature);
  v13 = sub_10000DB7C(v20);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
  sub_10076C90C();
  sub_10000CD74(v20);
  sub_10076996C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v1 + 8))(v3, v18);
  swift_getKeyPath();
  sub_10076338C();

  sub_1006ECF5C(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_10076D2AC();
  v15 = v14;
  swift_unknownObjectRelease();

  (*(v19 + 8))(v7, v4);
  return v15;
}

uint64_t sub_1006ECF5C(unint64_t *a1, void (*a2)(uint64_t))
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

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

double UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1006ED2DC(uint64_t a1)
{
  v2 = v1;
  sub_10076533C();
  sub_10076F64C();
  sub_10076FC1C();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate] = v18;
  sub_1000200B4();
  sub_10076FC1C();
  v4 = v18;
  sub_10076148C();
  sub_10076FC1C();
  v5 = sub_10076147C();
  v6 = [v18 ams_activeiTunesAccount];
  v17.receiver = v2;
  v17.super_class = type metadata accessor for WebViewController();
  v7 = objc_msgSendSuper2(&v17, "initWithBag:account:clientInfo:", v5, v6, 0);
  swift_unknownObjectRelease();

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 tableViewAppearance];
  [v9 setAppearance:v10];

  [v9 setDelegate:v9];
  sub_10075DB1C(v11);
  v13 = v12;
  v14 = [v9 loadURL:v12];

  v15 = sub_10075DB7C();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v9;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_1006ED6CC(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_1006ED760(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_10076532C();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006EDDF0;
  aBlock[3] = &unk_1008A0F20;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC20ProductPageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_10076531C();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006EDDF0;
  aBlock[3] = &unk_1008A0F48;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

uint64_t sub_1006ED8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1006EDA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10075DA3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006EDD7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EDDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10075F9EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E66C();
  v9 = sub_10076BB6C();
  v11 = v10;

  if (v11)
  {
    v25 = a3;
    v26 = v3;
    v27._countAndFlagsBits = 0x465F4E4F5F444441;
    v27._object = 0xEE005050415F524FLL;
    v28._object = 0x80000001007D1F20;
    v28._countAndFlagsBits = 0xD000000000000031;
    sub_1007622EC(v27, v28);
    sub_10000A5D4(&qword_100966CF0);
    v13 = swift_allocObject();
    v24 = xmmword_100783DD0;
    *(v13 + 16) = xmmword_100783DD0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000A9040();
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;

    sub_10076FFCC();
    v15 = v14;

    v16 = sub_10075E62C();
    if (v16)
    {
      v17 = v16;
      sub_10000A5D4(&qword_100959B78);
      inited = swift_initStackObject();
      v23[1] = v15;
      v19 = inited;
      *(inited + 16) = v24;
      *(inited + 32) = v9;
      v20 = inited + 32;
      *(inited + 40) = v11;
      *(inited + 48) = v17;
      *(inited + 56) = v25;
      (*(v6 + 104))(v8, enum case for StyledText.MediaType.plainText(_:), v5);
      sub_10075F9FC();
      swift_allocObject();

      v21 = sub_10075F9BC();
      sub_10050C274(v21, 0, v19);

      swift_setDeallocating();
      return sub_1006EE0F4(v20);
    }

    else
    {

      (*(v6 + 104))(v8, enum case for StyledText.MediaType.plainText(_:), v5);
      sub_10075F9FC();
      swift_allocObject();
      v22 = sub_10075F9BC();
      sub_10050C274(v22, 0, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_1006EE0F4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100959B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006EE15C(int a1, int a2)
{
  v66 = a2;
  v3 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v3 - 8);
  v4 = sub_10076C2DC();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  __chkstk_darwin(v4);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v8 - 8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v57 - v11;
  __chkstk_darwin(v12);
  v63 = v57 - v13;
  __chkstk_darwin(v14);
  v62 = v57 - v15;
  __chkstk_darwin(v16);
  v61 = v57 - v17;
  __chkstk_darwin(v18);
  v59 = v57 - v19;
  __chkstk_darwin(v20);
  v57[5] = v57 - v21;
  __chkstk_darwin(v22);
  v57[4] = v57 - v23;
  __chkstk_darwin(v24);
  *&v58 = v57 - v25;
  __chkstk_darwin(v26);
  v57[3] = v57 - v27;
  __chkstk_darwin(v28);
  v57[2] = v57 - v29;
  __chkstk_darwin(v30);
  v57[1] = v57 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_10000A5D4(&qword_100942910);
  v37 = *(sub_10076C20C() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v69 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007844F0;
  v60 = v39;
  v71 = v39 + v38;
  v70 = a1;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0x4000000000000000;
  }

  v74 = v40;
  sub_10001E290();
  sub_10076C29C();
  v74 = 0x4020000000000000;
  sub_10001E290();
  sub_10076C29C();
  v74 = 0x4020000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v46 = *(v73 + 104);
  v68 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v73 += 104;
  v67 = v46;
  v46(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v48 = 0x3FF0000000000000;
  }

  else
  {
    v48 = 0x4000000000000000;
  }

  v74 = v48;
  sub_10076C29C();
  v74 = 0x4024000000000000;
  sub_10076C29C();
  v74 = 0x4024000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v50 = 0x4000000000000000;
  }

  else
  {
    v50 = 0x4008000000000000;
  }

  v74 = v50;
  sub_10076C29C();
  if (v66)
  {
    v51 = 12.0;
  }

  else
  {
    v51 = 20.0;
  }

  v74 = *&v51;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  v58 = left;
  sub_10076C1CC();
  if (v70)
  {
    v52 = 0x4000000000000000;
  }

  else
  {
    v52 = 0x4010000000000000;
  }

  v74 = v52;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  sub_1007704BC();
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v53 = 0x4008000000000000;
  }

  else
  {
    v53 = 0x4014000000000000;
  }

  v74 = v53;
  sub_10076C29C();
  if (v66)
  {
    v54 = 12.0;
  }

  else
  {
    v54 = 24.0;
  }

  v74 = *&v54;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  if (v70)
  {
    v55 = 0x4008000000000000;
  }

  else
  {
    v55 = 0x4018000000000000;
  }

  v74 = v55;
  sub_10076C29C();
  v74 = *&v54;
  sub_10076C29C();
  v74 = *&v51;
  sub_10076C29C();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10076C29C();
  v74 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v60;
}

uint64_t sub_1006EED30()
{

  return swift_deallocClassInstance();
}

void sub_1006EED78()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_100016F40(0, &qword_100942F10);
  v4 = sub_100770D2C();
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView];
  v6 = sub_100770D2C();
  [v5 setBackgroundColor:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addSubview:v5];

  v9 = [v1 traitCollection];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v10 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = sub_1007706CC();

    if (v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
  {
    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  sub_1006F014C();
}

void sub_1006EEF48()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v16, "didReceiveMemoryWarning");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_6;
  }

  v5 = sub_1007706CC();

  if (v5)
  {
    return;
  }

LABEL_6:
  v6 = *&v1[v3];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = sub_10077158C();
  if (v7)
  {
LABEL_8:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController;

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);

        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v12 = *&v1[v8];
      if (!v12)
      {
        goto LABEL_19;
      }

      sub_100016F40(0, &qword_1009453B0);
      v13 = v11;
      v14 = v12;
      v15 = sub_100770EEC();

      if ((v15 & 1) == 0)
      {
        v11 = *(v10 + 56);
LABEL_19:
        *(v10 + 56) = 0;

        goto LABEL_11;
      }

LABEL_10:

LABEL_11:
      if (v7 == ++v9)
      {

        return;
      }
    }
  }
}

void sub_1006EF178(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v4 = &qword_100965000;
  v5 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  v7 = &selRef_initWithTabBarSystemItem_tag_;
  v8 = v6 >> 62;
  if (!a1)
  {
    if (v8)
    {
      goto LABEL_45;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    while (1)
    {
LABEL_16:
      v13 = [v2 v7[274]];
      v14 = *&v2[v4[478]];
      if (v14 >> 62)
      {
        if (sub_10077158C() >= 4)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_18;
      }

      v15 = sub_1007706CC();

      if (v15)
      {
        sub_1006EFBC4();
        v16 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl;
        v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl];
        if (v17)
        {
          [v17 removeFromSuperview];
          v18 = *&v2[v16];
        }

        else
        {
          v18 = 0;
        }

        *&v2[v16] = 0;

        goto LABEL_50;
      }

LABEL_23:
      v44 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
      v19 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (v20 >> 62)
      {
        v4 = sub_10077158C();
        if (!v4)
        {
LABEL_48:
          v34 = v44;
LABEL_49:
          *&v2[v19] = _swiftEmptyArrayStorage;

          sub_1006F014C();
          sub_1006F020C();
          goto LABEL_50;
        }
      }

      else
      {
        v4 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_48;
        }
      }

      v42 = v19;
      v7 = (v20 & 0xC000000000000001);
      v43 = v44;

      v21 = 0;
      while (1)
      {
        if (v7)
        {
          v22 = sub_10077149C();
        }

        else
        {
          if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (!v44 || (sub_100016F40(0, &qword_1009453B0), v25 = v43, v26 = v23, v27 = sub_100770EEC(), v26, v25, (v27 & 1) == 0))
        {
          v28 = [v23 parentViewController];
          if (v28)
          {
            v29 = v28;
            sub_100016F40(0, &qword_1009453B0);
            v30 = v2;
            v31 = sub_100770EEC();

            if (v31)
            {
              if ([v23 isViewLoaded])
              {
                v32 = [v23 view];
                if (!v32)
                {
                  goto LABEL_61;
                }

                v33 = v32;
                [v32 removeFromSuperview];
              }

              [v23 willMoveToParentViewController:0];
              [v23 removeFromParentViewController];
            }
          }
        }

        ++v21;
        if (v24 == v4)
        {

          v19 = v42;
          v34 = v43;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      if (sub_10077158C())
      {
        goto LABEL_50;
      }
    }
  }

  if (v8)
  {
    if (sub_10077158C() > 3)
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > 3)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = sub_1007706CC();
LABEL_10:
  v10 = [v2 traitCollection];
  v11 = *&v2[v5];
  if (v11 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
LABEL_12:

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
    goto LABEL_12;
  }

  v12 = sub_1007706CC() & 1;

  if ((v9 & 1) != v12)
  {
    goto LABEL_16;
  }

LABEL_50:
  v35 = sub_1006F0458();
  v36 = [v2 childViewControllers];
  sub_100016F40(0, &qword_1009453B0);
  v37 = sub_1007701BC();

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_52;
    }

LABEL_59:

    return;
  }

  v38 = sub_10077158C();
  if (!v38)
  {
    goto LABEL_59;
  }

LABEL_52:
  if (v38 >= 1)
  {
    for (i = 0; i != v38; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = sub_10077149C();
      }

      else
      {
        v40 = *(v37 + 8 * i + 32);
      }

      v41 = v40;
      [v2 setOverrideTraitCollection:v35 forChildViewController:v40];
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_1006EF77C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v8 >> 62)
  {
    v9 = sub_10077158C();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 4)
  {
    v10 = sub_1007706CC();

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (a1 != -1)
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController;
    v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        sub_100016F40(0, &qword_1009453B0);
        v16 = v3;
        v17 = sub_100770EEC();

        if (v17)
        {
          if ([v13 isViewLoaded])
          {
            v18 = [v13 view];
            if (!v18)
            {
LABEL_41:
              __break(1u);
              return;
            }

            v19 = v18;
            [v18 removeFromSuperview];
          }

          [v13 willMoveToParentViewController:0];
          [v13 removeFromParentViewController];
        }
      }

      v20 = *&v3[v11];
      *&v3[v11] = 0;
    }
  }

LABEL_15:
  if (a2 == -1)
  {
    goto LABEL_32;
  }

  v21 = *&v3[v7];
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = sub_10077149C();

    v24 = *(v22 + 56);
    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = *(v21 + 8 * a2 + 32);

  v24 = *(v22 + 56);
  if (v24)
  {
LABEL_20:
    v25 = v24;
    goto LABEL_24;
  }

LABEL_23:
  v26 = (*(v22 + 40))(v23);
  v27 = *(v22 + 56);
  *(v22 + 56) = v26;
  v25 = v26;

  v24 = 0;
LABEL_24:
  v28 = v24;
  v29 = [v25 parentViewController];
  if (!v29 || (v30 = v29, sub_100016F40(0, &qword_1009453B0), v31 = v3, v32 = sub_100770EEC(), v30, v31, (v32 & 1) == 0))
  {
    [v3 addChildViewController:v25];
    v33 = [v3 view];
    if (!v33)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = [v25 view];
    if (!v35)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = v35;
    [v34 addSubview:v35];

    swift_getObjectType();
    v37 = swift_conformsToProtocol2();
    if (v37 && v25)
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      v40 = *(v38 + 16);
      v41 = v3;
      v42 = v25;
      v40(v3, &off_1008A1010, ObjectType, v38);
    }
  }

  v43 = sub_1006F0458();
  [v3 setOverrideTraitCollection:v43 forChildViewController:v25];

  v44 = *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController] = v25;

LABEL_32:
  [*&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl] setSelectedSegmentIndex:a2];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v45;
  [v45 bringSubviewToFront:*&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView]];
}

void sub_1006EFBC4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    v48 = v2;
    v5 = sub_10077158C();
    v2 = v48;
    if (v5 >= 4)
    {
LABEL_3:

      goto _objc_release_x1;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= 4)
    {
      goto LABEL_3;
    }
  }

  v49 = v2;
  v6 = sub_1007706CC();

  if (v6)
  {
    v7 = *&v1[v3];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &selRef_initWithTabBarSystemItem_tag_;
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v5 = sub_10077158C();
    v8 = v5;
    v9 = &selRef_initWithTabBarSystemItem_tag_;
    if (v5)
    {
LABEL_10:
      if (v8 >= 1)
      {
        v46 = v7 & 0xC000000000000001;
        v47 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;

        v10 = 0;
        v44 = xmmword_100785D70;
        v45 = v3;
        while (1)
        {
          if (v46)
          {
            v11 = sub_10077149C();
          }

          else
          {
            v11 = *(v7 + 8 * v10 + 32);
          }

          v50 = v10;
          v12 = *(v11 + 56);
          if (v12)
          {
            v13 = *(v11 + 56);
          }

          else
          {
            v14 = (*(v11 + 40))();
            v15 = *(v11 + 56);
            *(v11 + 56) = v14;
            v13 = v14;

            v12 = 0;
          }

          v16 = v12;
          v17 = [v13 parentViewController];
          if (!v17 || (v18 = v17, sub_100016F40(0, &qword_1009453B0), v19 = v1, v20 = sub_100770EEC(), v18, v19, (v20 & 1) == 0))
          {
            [v1 addChildViewController:{v13, v44}];
            v5 = [v1 v9[279]];
            if (!v5)
            {
              goto LABEL_43;
            }

            v21 = v5;
            v5 = [v13 v9[279]];
            if (!v5)
            {
              goto LABEL_44;
            }

            v22 = v5;
            [v21 addSubview:v5];

            swift_getObjectType();
            v23 = swift_conformsToProtocol2();
            if (v23 && v13)
            {
              v24 = v23;
              ObjectType = swift_getObjectType();
              v26 = v8;
              v27 = v9;
              v28 = v7;
              v29 = *(v24 + 16);
              v30 = v1;
              v31 = v13;
              v29(v1, &off_1008A1010, ObjectType, v24);
              v7 = v28;
              v9 = v27;
              v8 = v26;
              v3 = v45;
            }
          }

          v32 = [v1 traitCollection];
          v33 = *&v1[v3];
          v34 = v47;
          if (v33 >> 62)
          {
            if (sub_10077158C() >= 4)
            {
LABEL_27:

LABEL_31:
              v39 = [v1 traitCollection];
              goto LABEL_32;
            }
          }

          else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
          {
            goto LABEL_27;
          }

          v35 = sub_1007706CC();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

          sub_10000A5D4(&unk_100942870);
          v36 = swift_allocObject();
          *(v36 + 16) = v44;
          *(v36 + 32) = [v1 traitCollection];
          v37 = objc_opt_self();
          *(v36 + 40) = [v37 traitCollectionWithHorizontalSizeClass:1];
          sub_100016F40(0, &qword_100944E30);
          isa = sub_1007701AC().super.isa;

          v39 = [v37 traitCollectionWithTraitsFromCollections:isa];

          v34 = v47;
LABEL_32:
          [v1 setOverrideTraitCollection:v39 forChildViewController:v13];

          swift_beginAccess();
          v40 = v13;
          sub_10077019C();
          if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
          swift_endAccess();

          v10 = v50 + 1;

          if (v8 == v50 + 1)
          {

            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
_objc_release_x1:
      _objc_release_x1(v5, v2);
      return;
    }

LABEL_36:
    v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl];
    if (v41)
    {
      v42 = v41;
      v5 = [v1 v9[279]];
      if (!v5)
      {
        goto LABEL_45;
      }

      v43 = v5;
      [v5 bringSubviewToFront:v42];
    }
  }
}

void sub_1006F014C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl;
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl))
  {
    v2 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v2 addTarget:v0 action:"takeSelectedIndexFrom:" forControlEvents:4096];
    [*(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView) addSubview:v2];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1006F020C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl);
  if (v1)
  {
    v9 = v1;
    [v9 removeAllSegments];
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments);
    v8 = v0;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = sub_10077149C();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v3 = sub_10077158C();
            goto LABEL_4;
          }

          v6 = *(v2 + 8 * v4 + 32);

          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v6 + 24))
        {

          v5 = sub_10076FF6C();
        }

        else
        {
          v5 = 0;
        }

        [v9 insertSegmentWithTitle:v5 atIndex:v4 animated:{0, v8}];

        ++v4;
      }

      while (v7 != v3);
    }

    [v9 setSelectedSegmentIndex:*(v8 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex)];
  }
}

id sub_1006F0458()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v3 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_7;
  }

  v4 = sub_1007706CC();

  if (v4)
  {
    sub_10000A5D4(&unk_100942870);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100785D70;
    *(v5 + 32) = [v1 traitCollection];
    v6 = objc_opt_self();
    *(v5 + 40) = [v6 traitCollectionWithHorizontalSizeClass:1];
    sub_100016F40(0, &qword_100944E30);
    isa = sub_1007701AC().super.isa;

    v8 = [v6 traitCollectionWithTraitsFromCollections:isa];

    return v8;
  }

LABEL_7:
  v10 = [v1 traitCollection];

  return v10;
}

void sub_1006F05EC()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SegmentedViewController();
  v46.receiver = v0;
  v46.super_class = v6;
  objc_msgSendSuper2(&v46, "viewWillLayoutSubviews");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 bounds];
  v45 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 pageMarginInsets];
  v17 = v16;
  v44 = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  [v21 layoutFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v47.origin.x = v23;
  v47.origin.y = v25;
  v47.size.width = v27;
  v47.size.height = v29;
  MinY = CGRectGetMinY(v47);
  v31 = v45;
  v33 = sub_1006F09A4(v45, v11, v13, v15, MinY, v17, v32, v44);
  v35 = v34;
  v36 = [v1 traitCollection];
  LOBYTE(v21) = sub_1007706EC();

  v37 = 0.0;
  if (v21)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v38 = sub_10076D9AC();
    sub_10000A61C(v38, qword_1009A2350);
    sub_10076D17C();
    sub_10076D40C();
    v37 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v40 = [v1 traitCollection];
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v41 >> 62)
  {
    v42 = sub_10077158C();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < 4)
  {
    v43 = sub_1007706CC();

    if (v43)
    {
      sub_1006F0EC8(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
  }

  sub_1006F0D30(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
}

double sub_1006F09A4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v32 = a8;
  v33 = a5;
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v19 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerView);
  if (v19)
  {
    v20 = v19;
    [v20 sizeThatFits:{a3, a4, *&v32, *&v33}];
    v22 = v21;
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetWidth(v35);
    sub_100770A4C();
    [v20 setFrame:?];

    v23 = v22 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl);
  if (v24)
  {
    v25 = v24;
    if ([v25 numberOfSegments] < 2)
    {
      [v25 setHidden:1];
    }

    else
    {
      v26 = v25;
      [v26 setHidden:0];
      [v26 sizeThatFits:{a3, a4}];
      v28 = v27;
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      CGRectGetWidth(v36);
      sub_100770A4C();
      [v26 setFrame:?];

      v23 = v23 + v28;
    }
  }

  if (v23 >= COERCE_DOUBLE(1))
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v29 = sub_10076D9AC();
    sub_10000A61C(v29, qword_1009A2350);
    sub_10076D17C();
    sub_10076D40C();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetMinY(v38);
  v30 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView);
  sub_100770A4C();
  [v30 setFrame:?];
  return Width;
}

void sub_1006F0D30(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController];
  if (v9)
  {
    v18 = v9;
    v19 = [v18 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 setFrame:{a1, a2, a3, a4}];

    v21 = [v18 contentScrollView];
    if (v21)
    {
      v22 = v21;
      if ([v21 contentInsetAdjustmentBehavior] != 2)
      {
        [v22 setContentInset:{a5, a6, a7, a8}];
        [v22 setScrollIndicatorInsets:{a5, a6, a7, a8}];
      }

      v23 = v22;
      [v8 setContentScrollView:v23 forEdge:15];
    }
  }

  *&v8[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver] = 0;

  v24 = &v8[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v24 = 0;
  v24[8] = 1;

  sub_1006F1590();
}

id sub_1006F0EC8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  [v8 pageMarginInsets];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  sub_10010F994(v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;
  swift_beginAccess();
  v38 = v8;
  if (*&v8[v14] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v33 = v14;
    v15 = *&v38[v14];
    v16 = v15 >> 62 ? sub_10077158C() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
      break;
    }

LABEL_20:

    v26 = *&v38[v33];
    v14 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v27 = sub_10077158C();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    while (1)
    {
      if (v27 == v28)
      {

        sub_1006F13C8(_swiftEmptyArrayStorage);
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_10077149C();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v29 contentScrollView];

      ++v28;
      if (v32)
      {
        sub_10077019C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v28 = v31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_10077158C();
  }

  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = sub_10077149C();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v20 = *(v15 + 8 * v17 + 32);
    }

    v19 = v20;
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_36;
    }

    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMinX(v40);
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    CGRectGetMinY(v41);
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.width = a3;
    v42.size.height = a4;
    CGRectGetHeight(v42);
    result = [v19 view];
    if (!result)
    {
      break;
    }

    v22 = result;
    sub_100770A4C();
    [v22 setFrame:?];

    v23 = [v19 contentScrollView];
    if (v23)
    {
      v24 = v23;
      if ([v23 contentInsetAdjustmentBehavior] != 2)
      {
        [v24 contentInset];
        [v24 setContentInset:{a5, a6, a7, a8}];
        [v24 setScrollIndicatorInsets:{a5, a6, a7, a8}];
        [v24 contentOffset];
        [v24 setContentOffset:?];
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v18 = [v25 collectionViewLayout];
        [v18 invalidateLayout];
      }

      else
      {
        v18 = v19;
        v19 = v24;
      }
    }

    ++v17;
    if (v14 == v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006F13C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_10077158C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  type metadata accessor for MultipleScrollObserver();
  v4 = swift_allocObject();
  v4[2] = a1;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[3] = sub_1006F1B0C;
  v4[4] = v5;

  sub_1000167E0(0);

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver) = v4;
}

void sub_1006F14C0(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress], v4 = Strong[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress + 8], Strong, v4 != 1))
  {
    if (v3 == a1)
    {
      return;
    }
  }

  else if (a1 == 1.79769313e308)
  {
    return;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = v5 + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress;
    *v7 = a1;
    *(v7 + 8) = 0;
    sub_1006F1590();
  }
}

void sub_1006F1590()
{
  v1 = v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress + 8];
  if (v1)
  {
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  v5 = [v0 navigationItem];
  [v5 _manualScrollEdgeAppearanceProgress];
  v7 = v6;

  if (v7 != v4)
  {
    v8 = [v0 navigationItem];
    [v8 _setManualScrollEdgeAppearanceProgress:v4];
  }

  v9 = [v0 navigationItem];
  v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = [v0 navigationItem];
    [v11 _setManualScrollEdgeAppearanceEnabled:v1 ^ 1u];
  }
}

id sub_1006F1700(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerView] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex] = -1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl] = 0;
  if (a2)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SegmentedViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1006F1890(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerBackgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex] = -1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_multipleScrollObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedViewController] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectorControl] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1006F19BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006F1AD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006F1B14(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_segments];
  if (v5 >> 62)
  {
    if (sub_10077158C() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    return a1;
  }

  v6 = sub_1007706CC();

  if (v6)
  {
    [v2 pageMarginInsets];
    v8 = v7;
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = sub_1007706CC();

    if (v12)
    {
      [v2 pageContainerSize];
      v15 = sub_1006D502C(v13, v14);
      v17 = v16 + v16 + sub_10010F994(v15);
    }

    else
    {
      [v2 pageMarginInsets];
      v19 = v18;
      v21 = v20;
      [v2 pageContainerSize];
      v17 = v22 - v19 - v21;
    }

    v23 = a1 - v8;
    v24 = OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_columnViewControllers;
    swift_beginAccess();
    v25 = *&v2[v24];
    if (v25 >> 62)
    {
      v26 = sub_10077158C();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v23 - v10;
    if (v26 >= 1)
    {
      return a1 / v26 - v17 / v26;
    }
  }

  return a1;
}

void sub_1006F1D48()
{
  v1 = [v0 viewControllers];
  sub_100016F40(0, &qword_1009453B0);
  v2 = sub_1007701BC();

  if (v2 >> 62)
  {
    v3 = sub_10077158C();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    type metadata accessor for CategoryListViewController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = (v8 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler);
      v11 = *(v8 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler);
      *v10 = sub_1006F3A34;
      v10[1] = v9;

      sub_1000167E0(v11);
    }

    else
    {
    }
  }

LABEL_13:
}

void sub_1006F1EE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler];
    if (v4)
    {
      sub_10001CE50(*&Strong[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler]);

      v4(a1);
      sub_1000167E0(v4);
    }

    else
    {
    }
  }
}

void sub_1006F20C8()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 contentScaleFactor];
    v5 = v4;

    [v1 setScale:v5];
    [v1 setPreferredRange:1];
    v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v1 format:{22.0, 22.0}];
    v10[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1004CD72C;
    v10[3] = &unk_1008A1098;
    v7 = _Block_copy(v10);

    v8 = [v6 imageWithActions:v7];

    _Block_release(v7);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage];
      *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage] = v8;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1006F23D8(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100760BDC();
}

id sub_1006F260C(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_10075E11C();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076FF6C();
  v10 = [a1 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v11 = objc_allocWithZone(UITableViewCell);
    v12 = sub_10076FF6C();
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];
  }

  v13 = [v10 imageView];
  if (v13)
  {
    v14 = v13;
    v15 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage);
    [v14 setImage:v15];
  }

  v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_dataSource);
  v36[1] = a2;
  sub_10075E07C();
  sub_10075E0FC();
  sub_10000CF78((v16 + 16), *(v16 + 40));
  v17 = sub_10076972C();
  v36[0] = *(v6 + 8);
  (v36[0])(v8, v37);
  if (v17)
  {
    v18 = [v10 imageView];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage);
      [v19 setImage:v20];
    }

    sub_10076BFCC();
    v21 = [v10 imageView];
    if (v21)
    {
      v38 = v21;
      sub_100016F40(0, &qword_10094A280);
      sub_10040DAF8();
      sub_10077140C();
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    *(swift_allocObject() + 16) = v10;
    v24 = v10;
    sub_100760B7C();

    sub_10000CFBC(v39, &qword_100943310);
  }

  else
  {
    v22 = [v10 imageView];
    if (v22)
    {
      v23 = v22;
      [v22 setImage:0];
    }
  }

  v25 = [v10 textLabel];
  if (v25)
  {
    v26 = v25;
    sub_10075E07C();
    sub_10075E0FC();
    sub_10000CF78((v16 + 16), *(v16 + 40));
    sub_10076971C();
    v28 = v27;
    (v36[0])(v8, v37);
    if (v28)
    {
      v29 = sub_10076FF6C();
    }

    else
    {
      v29 = 0;
    }

    [v26 setText:v29];
  }

  sub_10075E07C();
  sub_10075E0FC();
  sub_10000CF78((v16 + 16), *(v16 + 40));
  v30 = sub_1007696FC();
  v31 = v37;
  v32 = v36[0];
  (v36[0])(v8, v37);
  if (v30)
  {
    [v10 setAccessoryType:1];
  }

  else
  {
    sub_10075E07C();
    sub_10075E0FC();
    sub_10000CF78((v16 + 16), *(v16 + 40));
    v33 = sub_10076973C();
    v32(v8, v31);
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    [v10 setAccessoryType:v34];
  }

  return v10;
}

uint64_t type metadata accessor for CategoryListViewController()
{
  result = qword_1009660F0;
  if (!qword_1009660F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006F3030()
{
  result = sub_10075E11C();
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

uint64_t sub_1006F30EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10075F65C();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100765F6C();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100766EDC();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076F4FC();
  __chkstk_darwin(v12 - 8);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10076C15C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v24 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v30 = &v50 - v29;
  v63 = a2;
  if (a1)
  {
    [v3 setModalPresentationStyle:{7, v28}];
    v31 = [v3 popoverPresentationController];
    [v31 setBarButtonItem:a1];

    v32 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      v34 = v30;
      return sub_10000CFBC(v34, &unk_100943200);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v38 = *(v21 + 104);
    v51 = v23;
    v38(v23, enum case for FlowPage.viewController(_:), v20);
    v39 = sub_10075DB7C();
    v40 = *(*(v39 - 8) + 56);
    v50 = v19;
    v40(v19, 1, 1, v39);
    v41 = sub_10076096C();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    v65 = ObjectType;
    v64 = v3;
    v42 = v3;
    sub_10076F4DC();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v43 = sub_10075F5EC();
    sub_100263C24(v43, 1, v63, v30);

    return (*(v33 + 8))(v30, v32);
  }

  else
  {
    v35 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      v34 = v26;
      return sub_10000CFBC(v34, &unk_100943200);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v44 = *(v21 + 104);
    v51 = v23;
    v44(v23, enum case for FlowPage.viewController(_:), v20);
    v45 = sub_10075DB7C();
    v46 = *(*(v45 - 8) + 56);
    v50 = v19;
    v46(v19, 1, 1, v45);
    v47 = sub_10076096C();
    (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
    v65 = ObjectType;
    v64 = v3;
    v48 = v3;
    sub_10076F4DC();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v49 = sub_10075F5EC();
    sub_100263C24(v49, 1, v63, v26);

    return (*(v36 + 8))(v26, v35);
  }
}

uint64_t sub_1006F39FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1006F3A3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_dataSource];
  sub_10075E07C();
  sub_10075E0FC();
  sub_10000CF78((v6 + 16), *(v6 + 40));
  v7 = sub_1007696FC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_artworkLoader];
    swift_unknownObjectRetain();

    sub_10075E07C();
    sub_10075E0FC();
    v10 = sub_1006F9FE0(v6, v9, v5, objc_allocWithZone(ObjectType));
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler + 8];
    v13 = &v10[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    v14 = *&v10[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    *v13 = v11;
    v13[1] = v12;
    sub_10001CE50(v11);
    sub_1000167E0(v14);
    v15 = [v1 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:v10 animated:1];
    }
  }

  else
  {
    v17 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
    if (v18)
    {

      sub_10075E07C();
      sub_10075E0FC();
      v18(v5);
      sub_1000167E0(v18);
      v8(v5, v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
    v19 = *v17;
    *v17 = 0;
    v17[1] = 0;
    sub_1000167E0(v19);
  }
}

uint64_t sub_1006F3CBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1006F3CF4(uint64_t a1)
{
  v3 = [*(v1 + 16) imageView];
  [v3 setImage:a1];
}

uint64_t sub_1006F3D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1006F3D74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100763E9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v15, qword_1009A0D78);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_100941538 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v11, qword_100966170);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[v19] = sub_1001AB12C(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_100941540 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100966188];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_1006F4160()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763E9C();
  sub_10000DB18(v4, qword_100966170);
  v18 = sub_10000A61C(v4, qword_100966170);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v16 = sub_10000A61C(v5, qword_1009A0D78);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_10076D9AC();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v19);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100763E7C();
}

id sub_1006F44C4()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_100966188 = result;
  return result;
}

uint64_t sub_1006F463C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_10076422C();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = *&v0[v2];
  sub_10076422C();
  MinX = CGRectGetMinX(v17);
  sub_10076422C();
  [v10 setFrame:{MinX, CGRectGetMidY(v18) + v9 * -0.5, v7, v9}];

  v12 = &v0[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {

    v14(v15);
    return sub_1000167E0(v14);
  }

  return result;
}

void sub_1006F47EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v24);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076C84C();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10076C83C(), , v13))
      {
        sub_1007696EC();
        if (swift_dynamicCastClass())
        {
          sub_1007696DC();
          sub_1007606FC();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_100269504(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_1007660EC();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1006F4C40()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1006F4CA0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1006F4D38()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1006F4D94(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_1006F4E54(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_1006F51EC;
}

unint64_t sub_1006F4F20()
{
  result = qword_10095A2A8;
  if (!qword_10095A2A8)
  {
    sub_1007696EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A2A8);
  }

  return result;
}

uint64_t sub_1006F4F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v8 == 7)
  {
    goto LABEL_5;
  }

  switch(a5)
  {
    case 6u:
      if (v8 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v8 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v8 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v8 != a5 || (v8 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v9 = [v5 traitCollection];
  if (v7 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v9 layoutDirection];
  sub_1007708DC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = sub_1007696DC();
  sub_10068A7F8(v19, a2);
}

uint64_t sub_1006F5134()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006F516C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006F51A4()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1006F51F8()
{
  v1 = v0;
  v2 = sub_100763E9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v6, qword_1009A0D78);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_100941538 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v2, qword_100966170);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *(v1 + v10) = sub_1001AB12C(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_100941540 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100966188];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_10077156C();
  __break(1u);
}

double sub_1006F54E8()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v4 = sub_1006F5610();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1006F5610()
{
  v0 = sub_100763E2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_10076460C();
  sub_10076C24C();
  v10 = v9;
  v8(v7, v4);
  v11 = sub_10076461C();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, "init");
  if (qword_10093FF90 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v0, qword_100953B80);
  __chkstk_darwin(v16);
  *(&v20 - 2) = v15;
  sub_10076C13C();

  sub_10076462C();
  sub_100763E4C();
  sub_1006F5948(&qword_100962EB8, &type metadata accessor for ArcadeFooterLayout);
  sub_10076DBDC();
  v18 = v17;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v18;
}

uint64_t sub_1006F5948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006F5994(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_1006F59F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10076C38C();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    sub_10076C31C();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    sub_10076C31C();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_1006F5D5C(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_isPresenterLoaded] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents;
  v6 = [objc_allocWithZone(UISegmentedControl) init];
  v7 = sub_10000A5D4(&qword_1009663A0);
  v8 = objc_allocWithZone(v7);
  *&v8[qword_100966310] = v6;
  v32.receiver = v8;
  v32.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v10 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v9;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 addSubview:v14];

  *&v2[v5] = v10;
  v15 = &v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  *v15 = 0;
  v15[8] = 1;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_objectGraph] = a2;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_artworkLoader] = v31;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_presenter] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TopChartsDiffablePageViewController();

  v16 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_100769D6C();
  if (v17)
  {
    v18 = sub_10076FF6C();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTitle:v18];

  v19 = v16;
  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode:2];

  v21 = *(*&v19[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents] + qword_100966310);
  sub_100016F40(0, &qword_1009641D0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v21;

  v24 = sub_100770F1C();
  [v23 addAction:v24 forControlEvents:{4096, 0, 0, 0, sub_1006F9FD8, v22, v30.receiver, v30.super_class}];

  v25 = [v19 navigationItem];
  v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v25 setStandardAppearance:v26];

  v27 = [v19 navigationItem];
  v28 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v27 setScrollEdgeAppearance:v28];

  return v19;
}

void sub_1006F61B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents;
    v3 = [*(*(Strong + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents) + qword_100966310) selectedSegmentIndex];
    v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v6 = v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
    *v4 = v3;
    v4[8] = 0;
    [*(*&v1[v2] + qword_100966310) setSelectedSegmentIndex:v3];
    if (v6)
    {
      sub_1006F8A44();
    }

    else
    {
      sub_1006F90EC(v3, v5);
    }
  }
}

id sub_1006F62B8()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v11);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_1009413F0 != -1)
  {
    swift_once();
  }

  sub_10076C33C();
  (*(v3 + 8))(v8, v2);
  sub_10076C21C();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  return (v22 > 1.0);
}

id sub_1006F65FC()
{
  v1 = v0;
  v39 = sub_10000A5D4(&qword_1009663E8);
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v31 - v3;
  v38 = sub_10000A5D4(&qword_1009663F0);
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v31 - v6;
  v8 = sub_10000A5D4(&qword_1009663F8);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  v10 = type metadata accessor for TopChartsDiffablePageViewController();
  v42.receiver = v0;
  v42.super_class = v10;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  sub_1006F59F4(0, 0, 1);
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v32 = v8;
    v33 = v7;
    v34 = v5;
    sub_100016F40(0, &qword_100942F10);
    v13 = sub_100770D2C();
    [v12 setBackgroundColor:v13];

    v35 = v10;
    v41 = v10;
    v40[0] = v1;
    v14 = v1;
    v15 = sub_10076FF6C();
    v16 = v41;
    if (v41)
    {
      v17 = sub_10000CF78(v40, v41);
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = sub_10077165C();
      (*(v18 + 8))(v21, v16);
      sub_10000CD74(v40);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:0 target:v22 action:"showCategoriesFor:"];

    swift_unknownObjectRelease();
    v24 = *&v14[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    *&v14[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton] = v23;

    v25 = *&v14[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents];
    [v25 setAutoresizingMask:18];
    [v25 sizeToFit];
    v26 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v25];
    [v26 _setContentViewMarginType:0];
    v27 = [v14 navigationItem];
    v28 = v26;
    [v27 _setBottomPalette:v28];

    swift_unknownObjectWeakAssign();
    sub_1006F8244();

    sub_10076847C();
    sub_10000A5D4(&qword_100966400);
    sub_1006FB610(&qword_100966408, &qword_100966400);
    sub_10076F45C();
    v29 = v36;
    sub_10076F46C();

    sub_10000CD74(v40);
    (*(v37 + 8))(v29, v32);
    sub_100769D4C();
    sub_10000A5D4(&qword_100966410);
    sub_1006FB610(&qword_100966418, &qword_100966410);
    sub_10076F45C();
    v30 = v33;
    sub_10076F46C();

    sub_10000CD74(v40);
    (*(v34 + 8))(v30, v38);
    sub_100769D5C();
    sub_10000A5D4(&qword_100966420);
    sub_1006FB610(&qword_100966428, &qword_100966420);
    sub_10076F45C();
    sub_10076F46C();

    sub_10000CD74(v40);
    return (*(v2 + 8))(v4, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1006F6CB8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006FB74C;
}

uint64_t (*sub_1006F6D1C(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006FB728;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8C1C;
}

uint64_t (*sub_1006F6DAC(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006FB69C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006FB6F8;
}

id sub_1006F709C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
  if (!v1)
  {
    return sub_1006F8390();
  }

  v2 = v1;
  result = [v2 view];
  if (result)
  {
    v4 = result;
    result = [v0 view];
    if (result)
    {
      v5 = result;
      [result bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v4 setFrame:{v7, v9, v11, v13}];
      return sub_1006F8390();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006F7378(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v16 = sub_1006FB5FC;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A13E8;
    v9 = _Block_copy(&v12);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1006FB608;
    v17 = v10;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A1410;
    v11 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v9 completion:v11];
    _Block_release(v11);
    _Block_release(v9);
  }
}

void sub_1006F754C(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1006F59F4(*&a1, *&a2, 0);
  }
}

void sub_1006F75BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006F8244();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1006F8390();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1006F8A44();
  }
}

id sub_1006F76E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100769CEC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.completed(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v11)
    {
      [v11 setEnabled:1];
    }

    sub_1006FA218();
    v12 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10076857C();

    v14 = *&v2[v12];
    *&v2[v12] = 0;

    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v55 = v18;
      v56 = v20;
      v57 = v22;
      v58 = v24;
      v59 = 0;
      sub_10076856C();
      if (sub_10076843C())
      {
        sub_10076366C();
      }

      sub_10076842C();
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.error(_:))
  {
    (*(v6 + 96))(v9, v5);
    v25 = v9[1];
    sub_1006FA310(*v9);
    sub_1000167E0(v25);
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.started(_:))
  {
    sub_10076842C();
    sub_10076DE3C();
    v26 = objc_allocWithZone(sub_10076DE6C());
    v27 = sub_10076DE5C();
    v28 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v29 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10076857C();

    v30 = *&v2[v28];
    *&v2[v28] = v27;
    v31 = v27;

    result = [v2 view];
    if (!result)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v32 = result;
    [result bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v55 = v34;
    v56 = v36;
    v57 = v38;
    v58 = v40;
    v59 = 0;
    sub_10076856C();

    result = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (result)
    {
      return [result setEnabled:0];
    }
  }

  else
  {
    v41 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v42 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10076857C();

    v43 = *&v2[v41];
    *&v2[v41] = 0;

    result = [v2 view];
    if (!result)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v44 = result;
    [result bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v55 = v46;
    v56 = v48;
    v57 = v50;
    v58 = v52;
    v59 = 0;
    sub_10076856C();
    v53 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v53)
    {
      [v53 setEnabled:1];
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_1006F7B98(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    sub_1007714EC();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v31 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v2)
    {
      v4 = sub_10077158C();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = *&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_objectGraph];
    v7 = v4 & ~(v4 >> 63);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_46;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = sub_1006F62B8();
      v10 = v5++ != 0;
      v11 = sub_1006FB57C(&qword_1009663A8, &type metadata accessor for TopChartDiffableSegmentPresenter);
      v12 = sub_1006C7080(v6, v8, v11, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xEF746E656D676553);
      v13 = objc_allocWithZone(type metadata accessor for TopChartDiffableSegmentViewController());
      v13[qword_10095C000] = v9;
      v13[qword_10095C008] = v10;
      v2 = sub_100488204(v8, v12);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v3 != v5);
  }

  v31 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
  v1 = *&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v1 >> 62)
  {
    v14 = sub_10077158C();
  }

  else
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_10077149C();
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_47;
      }

      v19 = [v16 parentViewController];
      if (v19)
      {
        v2 = v19;
        sub_100016F40(0, &qword_1009453B0);
        v20 = v32;
        v21 = sub_100770EEC();

        if (v21)
        {
          [v17 willMoveToParentViewController:0];
          v22 = [v17 view];
          if (!v22)
          {
            __break(1u);
            return;
          }

          v2 = v22;
          [v22 removeFromSuperview];

          [v17 removeFromParentViewController];
        }
      }

      ++v15;
    }

    while (v18 != v14);
  }

  *&v32[v30] = _swiftEmptyArrayStorage;

  sub_1006F8390();
  sub_1006F8A44();
  v30 = qword_100966310;
  v31 = *&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents];
  [*(v31 + qword_100966310) removeAllSegments];
  v23 = sub_100769D1C();
  if (v23 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 > 1)
  {
    v24 = sub_100769D1C();
    v1 = v24;
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_35:
        v26 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v26 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v3 = sub_10077158C();
              goto LABEL_3;
            }
          }

          v2 = *(v31 + v30);
          sub_10076A25C();
          if (v29)
          {
            v27 = sub_10076FF6C();
          }

          else
          {
            v27 = 0;
          }

          [v2 insertSegmentWithTitle:v27 atIndex:v26 animated:{0, v30}];

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = sub_10077158C();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_56:

    if ((v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8] & 1) == 0)
    {
      [*(v31 + v30) setSelectedSegmentIndex:*&v32[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex]];
    }
  }

  sub_1006F8244();
}

void sub_1006F8108(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v4 && (!a2 ? (v5 = v4, v6 = 0) : (v5 = v4, v6 = sub_10076FF6C()), ([v5 setTitle:v6], v5, v6, (v7 = *&v2[v3]) != 0) && (v8 = objc_msgSend(v7, "title")) != 0))
  {

    v10 = [v2 navigationItem];
    v9 = *&v2[v3];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v10 = [v2 navigationItem];
    [v10 setRightBarButtonItem:0];
  }
}

void sub_1006F8244()
{
  v1 = sub_1006F62B8();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents);
  if (v1 || [*&v2[qword_100966310] numberOfSegments] <= 0 && (*(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_isPresenterLoaded) & 1) != 0)
  {
    [v2 setHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setPreferredHeight:0.0];
    }
  }

  else
  {
    [v2 sizeToFit];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v2 frame];
      [v5 setPreferredHeight:CGRectGetHeight(v8)];
    }

    [v2 setHidden:0];
  }
}

id sub_1006F8390()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_10076C38C();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v10);
  v12 = &selRef_initWithTabBarSystemItem_tag_;
  result = [v1 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;

  result = [v1 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v19 = result;
  v66 = v16;
  v67 = v18;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_1009413F0 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v20 = v68;
    sub_10076C33C();
    (*(v3 + 8))(v8, v2);
    v2 = v20;
    sub_10076C31C();
    v22 = v21;
    v61 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
    v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
    v23 = v1;
    if (!(v3 >> 62))
    {
      v66 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v66 = sub_10077158C();
    v3 = *&v1[v61];
    if (!(v3 >> 62))
    {
      goto LABEL_6;
    }

    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_10077158C();
LABEL_7:

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v64 = v3;
    v65 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v26 = sub_10077149C();
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v1 = v26;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = sub_1006F62B8();
      sub_10051F4E0(v28, v25 != 0);
      if (v66 == 1)
      {
        sub_10076C8BC();
      }

      sub_10076C2FC();
      v30 = v29;
      result = [v1 v12[279]];
      if (!result)
      {
        goto LABEL_44;
      }

      v31 = result;
      result = [v23 v12[279]];
      if (!result)
      {
        goto LABEL_45;
      }

      v8 = v23;
      v32 = v12;
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v69.origin.x = v35;
      v69.origin.y = v37;
      v69.size.width = v39;
      v69.size.height = v41;
      MinY = CGRectGetMinY(v69);
      v43 = v32;
      result = [v8 v32[279]];
      if (!result)
      {
        goto LABEL_46;
      }

      v44 = result;
      v23 = v8;
      [result bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v70.origin.x = v46;
      v70.origin.y = v48;
      v70.size.width = v50;
      v70.size.height = v52;
      [v31 setFrame:{v22, MinY, v30, CGRectGetHeight(v70)}];

      v2 = v8;
      if (sub_1006F62B8())
      {
        v2 = v68;
        sub_10076C2BC();
        v54 = v53;

        v22 = v22 + v30 + v54;
      }

      else
      {
      }

      ++v25;
      v12 = v43;
      v3 = v64;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_24:

  if (sub_1006F62B8())
  {
    goto LABEL_25;
  }

  v55 = &v23[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  if (v23[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8])
  {
    goto LABEL_25;
  }

  v56 = *v55;
  if (*v55 < 0)
  {
    goto LABEL_25;
  }

  v57 = *&v23[v61];
  if (v57 >> 62)
  {
    result = sub_10077158C();
    if (v56 >= result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v58 = *&v23[v61];
    if ((v58 & 0xC000000000000001) != 0)
    {

      v59 = sub_10077149C();

      goto LABEL_34;
    }

    if (v56 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * v56 + 32);
LABEL_34:
      v60 = [v59 collectionView];

      [v23 setContentScrollView:v60 forEdge:15];
      return (*(v62 + 8))(v68, v63);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56 < result)
  {
    goto LABEL_31;
  }

LABEL_25:
  [v23 setContentScrollView:0 forEdge:{15, v61}];
  return (*(v62 + 8))(v68, v63);
}

void sub_1006F8A44()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v55 = sub_10076C38C();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v11 >> 62)
  {
LABEL_32:
    v12 = sub_10077158C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex;

  if (v12)
  {
    v14 = 0;
    v42 = &v1[v13];
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11 & 0xC000000000000001;
    v51 = enum case for PageGrid.Direction.vertical(_:);
    v49 = (v3 + 16);
    v50 = (v3 + 104);
    v47 = (v9 + 1);
    v48 = (v3 + 8);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    v9 = &selRef_initWithTabBarSystemItem_tag_;
    v43 = v11;
    v44 = v12;
    v56 = v1;
    while (1)
    {
      if (v53)
      {
        v15 = sub_10077149C();
      }

      else
      {
        if (v14 >= *(v52 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v14 + 1;
      (*v50)(v8, v51, v2);
      v17 = [v1 v9[279]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 bounds];

      v19 = [v1 v9[279]];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      [v19 safeAreaInsets];

      (*v49)(v5, v8, v2);
      if (qword_1009413F0 != -1)
      {
        swift_once();
      }

      v21 = v54;
      sub_10076C33C();
      (*v48)(v8, v2);
      v3 = v21;
      sub_10076C21C();
      v23 = v22;
      (*v47)(v21, v55);
      if (v23 > 1.0 || (v42[8] & 1) == 0 && v14 == *v42)
      {
        v24 = v16;
        v25 = [v24 parentViewController];
        v9 = &selRef_initWithTabBarSystemItem_tag_;
        if (!v25 || (v26 = v25, sub_100016F40(0, &qword_1009453B0), v27 = v8, v28 = v5, v29 = v2, v30 = v56, v31 = sub_100770EEC(), v26, v30, v2 = v29, v5 = v28, v8 = v27, v9 = &selRef_initWithTabBarSystemItem_tag_, (v31 & 1) == 0))
        {
          v32 = v56;
          [v56 addChildViewController:v24];
          v33 = [v32 v9[279]];
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = v33;
          v35 = [v24 v9[279]];
          if (!v35)
          {
            goto LABEL_37;
          }

          v36 = v35;
          [v34 addSubview:v35];

          [v24 didMoveToParentViewController:v32];
        }

        v3 = [v24 v9[279]];

        v11 = v43;
        if (!v3)
        {
          goto LABEL_35;
        }

        [v3 setAlpha:1.0];

        v1 = v56;
      }

      else
      {
        v37 = [v16 parentViewController];
        v9 = &selRef_initWithTabBarSystemItem_tag_;
        v1 = v56;
        if (v37)
        {
          v38 = v37;
          sub_100016F40(0, &qword_1009453B0);
          v39 = v1;
          v3 = sub_100770EEC();

          v11 = v43;
          if (v3)
          {
            [v16 willMoveToParentViewController:0];
            v40 = [v16 view];
            if (!v40)
            {
              goto LABEL_38;
            }

            v3 = v40;
            [v40 removeFromSuperview];

            [v16 removeFromParentViewController];
          }
        }
      }

      ++v14;
      if (v57 == v44)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_1006F90EC(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
    v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v6 = *(v5 + 8 * a2 + 32);
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    v6 = sub_10077149C();

    v5 = *&v2[v4];
    if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_6:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v7 = *(v5 + 8 * a1 + 32);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_18:

    v25 = sub_10077149C();

    v7 = v25;
LABEL_9:
    v8 = v7;
    v9 = [v8 parentViewController];
    if (!v9 || (v10 = v9, sub_100016F40(0, &qword_1009453B0), v11 = v2, v12 = sub_100770EEC(), v10, v11, (v12 & 1) == 0))
    {
      [v2 addChildViewController:v8];
      v13 = [v2 view];
      if (!v13)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13;
      v15 = [v8 view];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v16 = v15;
      [v14 addSubview:v15];

      [v8 didMoveToParentViewController:v2];
    }

    v17 = [v8 view];

    if (v17)
    {
      [v17 setAlpha:0.0];

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v8;
      v30 = sub_1006FB4E0;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_10009AEDC;
      v29 = &unk_1008A1370;
      v20 = _Block_copy(&v26);
      v21 = v8;
      v22 = v6;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_1006FB500;
      v31 = v23;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000513F0;
      v29 = &unk_1008A1398;
      v24 = _Block_copy(&v26);

      [v18 animateWithDuration:v20 animations:v24 completion:0.3];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_1006F949C(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha:0.0];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:1.0];
}

void sub_1006F9540()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006F8A44();
  }
}

id sub_1006F9624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1006F97D0(double a1)
{
  v2 = v1;
  v4 = sub_10076C36C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10076C38C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v10, enum case for PageGrid.Direction.vertical(_:), v4, v13);
  (*(v5 + 16))(v7, v10, v4);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v5 + 8))(v10, v4);
  sub_10076C2EC();
  (*(v12 + 8))(v15, v11);
  sub_100770ACC();
  [*&v2[qword_100966310] sizeThatFits:?];
  [v2 layoutMargins];
  sub_100770AEC();
  return a1;
}

double sub_1006F9A9C(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_1006F97D0(a2);

  return v4;
}

void sub_1006F9AF0()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PaletteContentView();
  v22.receiver = v1;
  v22.super_class = v13;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v1 bounds];
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v3 + 8))(v8, v2);
  sub_10076C2EC();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  [v1 bounds];
  sub_100770ACC();
  v17 = v16;
  [*&v1[qword_100966310] sizeThatFits:?];
  v19 = v18;
  v20 = *&v1[qword_100966310];
  [v1 layoutMargins];
  [v20 setFrame:{v15, v21, v17, v19}];
}

void sub_1006F9E44(void *a1)
{
  v1 = a1;
  sub_1006F9AF0();
}

id sub_1006F9EB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1006F9F4C()
{
  result = qword_100966398;
  if (!qword_100966398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966398);
  }

  return result;
}

uint64_t sub_1006F9FA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1006F9FE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = sub_1006FA9E0(a1, a2, a3, a4);

  return v4;
}

void sub_1006FA028()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_isPresenterLoaded) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents;
  v2 = [objc_allocWithZone(UISegmentedControl) init];
  v3 = sub_10000A5D4(&qword_1009663A0);
  v4 = objc_allocWithZone(v3);
  *&v4[qword_100966310] = v2;
  v12.receiver = v4;
  v12.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v6 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v5;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v6 addSubview:v10];

  *(v0 + v1) = v6;
  v11 = v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_segmentViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1006FA218()
{
  v1 = v0;
  sub_100769D6C();
  if (v2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v0 setTitle:v3];

  v4 = sub_100769D3C();
  v5 = &v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v7 = v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
  *v5 = v4;
  v5[8] = 0;
  [*(*&v1[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_paletteContents] + qword_100966310) setSelectedSegmentIndex:v4];
  if (v7)
  {

    sub_1006F8A44();
  }

  else
  {

    sub_1006F90EC(v4, v6);
  }
}

id sub_1006FA310(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076FA1C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F3BC();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F68C();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_100769D1C();
  if (v17 >> 62)
  {
    v45 = v5;
    v25 = sub_10077158C();
    v5 = v45;

    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_3:
      if (qword_1009412E0 != -1)
      {
        swift_once();
      }

      v19 = sub_10076FD4C();
      sub_10000A61C(v19, qword_1009A25E8);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783C60;
      v53 = type metadata accessor for TopChartsDiffablePageViewController();
      v52[0] = v2;
      v20 = v2;
      sub_10076F30C();
      sub_10000CFBC(v52, &unk_1009434C0);
      sub_10076F27C();
      swift_getErrorValue();
      v21 = v50;
      v22 = v51;
      v53 = v51;
      v23 = sub_10000DB7C(v52);
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      sub_10076F32C();
      sub_10000CFBC(v52, &unk_1009434C0);
      sub_10076FBEC();
    }
  }

  v45 = v5;
  v43 = v4;
  sub_10076DF3C();
  sub_1006FB57C(&qword_1009663B0, &type metadata accessor for TopChartsDiffablePagePresenter);
  swift_errorRetain();

  v44 = a1;
  v26 = sub_10076DEFC();
  v27 = OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController;
  v28 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_overlayViewController];
  sub_10076857C();

  v29 = *&v2[v27];
  *&v2[v27] = v26;
  v30 = v26;

  result = [v2 view];
  if (result)
  {
    v31 = result;
    [result bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v52[0] = v33;
    v52[1] = v35;
    v52[2] = v37;
    v53 = v39;
    v54 = 0;
    sub_10076856C();

    sub_100769D8C();
    v40 = sub_10075DB7C();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v16, 1, v40) == 1)
    {
      sub_10000CFBC(v16, &unk_1009435D0);
    }

    else
    {
      sub_10075DAFC();
      (*(v41 + 8))(v16, v40);
    }

    sub_100762A0C();
    swift_allocObject();
    swift_errorRetain();
    sub_1007629FC();
    sub_10076844C();
    sub_10076084C();
    sub_10076F9FC();
    sub_10076F67C();

    (*(v45 + 8))(v7, v43);
    (*(v48 + 8))(v10, v49);
    return (*(v46 + 8))(v13, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006FA9E0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_selectionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_placeholderImage] = 0;
  v10 = &a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_dataSource];
  *v10 = a1;
  *(v10 + 1) = &off_10089CBE0;
  *&a4[OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_artworkLoader] = a2;
  v11 = OBJC_IVAR____TtC20ProductPageExtensionP33_0DAF38422160BEFD42D8AB01B6955FB726CategoryListViewController_parentIndexPath;
  v12 = sub_10075E11C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a4[v11], a3, v12);
  v18.receiver = a4;
  v18.super_class = ObjectType;

  v14 = objc_msgSendSuper2(&v18, "initWithStyle:", 0);
  v15 = [v14 navigationItem];
  v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v14 action:"dismissSelf"];
  [v15 setRightBarButtonItem:v16];

  (*(v13 + 8))(a3, v12);
  return v14;
}

id sub_1006FAB90(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10000A5D4(&qword_1009663B8);
  __chkstk_darwin(v7 - 8);
  v53 = v45 - v8;
  v9 = sub_10000A5D4(&qword_1009663C0);
  __chkstk_darwin(v9 - 8);
  v11 = v45 - v10;
  v48 = sub_10000A5D4(&qword_1009663C8);
  __chkstk_darwin(v48);
  v13 = v45 - v12;
  v14 = sub_10075E11C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v45 - v19;
  v21 = &a3[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v57.receiver = a3;
  v57.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v57, "initWithNibName:bundle:", 0, 0, v18);
  v23 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v47 = v22;
  v51 = v20;
  sub_10075E10C();
  v24 = *(a1 + 40);
  v54 = a1;
  sub_10000CF78((a1 + 16), v24);
  sub_10076974C();
  v25 = v53;
  sub_1006FB50C(v11, v53);
  v49 = *(v15 + 16);
  v50 = v15 + 16;
  v49(v13, v25, v14);
  v26 = *(sub_10000A5D4(&qword_1009663D0) + 36);
  sub_1006FB57C(&qword_1009663D8, &type metadata accessor for IndexPath);
  sub_10077040C();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v46 = v28;
  v28(v25, v14);
  sub_1007703DC();
  if (*&v13[v26] == v55[0])
  {
    v36 = 0;
    goto LABEL_10;
  }

  v45[1] = v27;
  v53 = sub_1006FB57C(&qword_1009663E0, &type metadata accessor for IndexPath);
  v29 = 0;
  while (1)
  {
    sub_10076FEDC();
    v33 = sub_10077042C();
    v35 = *v34;
    v33(v55, 0);
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29)
    {
      v37 = v35;
      v38 = v51;
      sub_10075E0DC(v37);
      v39 = v52;
      v49(v52, v38, v14);
      v40 = objc_allocWithZone(type metadata accessor for CategoryListViewController());
      v41 = v54;

      sub_1006FA9E0(v41, a2, v39, v40);

      sub_10077019C();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_8:
        sub_10077021C();
      }
    }

    else
    {
      v30 = v54;

      v31 = v52;
      sub_10075E10C();
      v32 = objc_allocWithZone(type metadata accessor for CategoryListViewController());
      sub_1006FA9E0(v30, a2, v31, v32);

      sub_10077019C();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_8;
      }
    }

    sub_10077025C();
    v23 = v56;
    sub_1007703DC();
    ++v29;
    if (*&v13[v26] == v55[0])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *&v13[*(v48 + 36)] = v36;
  sub_10000CFBC(v13, &qword_1009663C8);

  v42 = v47;
  sub_10016EBE0(v23);

  sub_100016F40(0, &qword_1009453B0);
  isa = sub_1007701AC().super.isa;

  [v42 setViewControllers:isa];

  v46(v51, v14);
  return v42;
}

void sub_1006FB198()
{
  v1 = v0;
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_presenter);
  sub_10075E10C();
  v22 = sub_100769D9C();
  v23 = &protocol witness table for TopChartsDiffablePagePresenter;
  *&v21 = v6;
  v7 = *(v3 + 8);

  v7(v5, v2);
  type metadata accessor for TopChartsCategoriesDataSource();
  v8 = swift_allocObject();
  sub_100012498(&v21, v8 + 16);
  sub_100760C4C();
  swift_allocObject();

  v9 = sub_100760C2C();
  v10 = objc_allocWithZone(type metadata accessor for SelectCategoryViewController());
  v11 = sub_1006FAB90(v8, v9, v10);

  v12 = v11;
  v24._object = 0x80000001007F6520;
  v24._countAndFlagsBits = 0xD000000000000015;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1007622EC(v24, v25);
  v13 = sub_10076FF6C();

  [v12 setTitle:v13];

  v14 = &v12[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler];
  v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension28SelectCategoryViewController_selectionHandler];
  *v14 = sub_1006FB508;
  v14[1] = v6;
  swift_retain_n();
  sub_1000167E0(v15);
  sub_1006F1D48();

  v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_categoriesBarButton);
  v17 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_objectGraph);
  v18 = v16;
  sub_1006F30EC(v16, v17);

  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension35TopChartsDiffablePageViewController_selectCategoryViewController) = v12;
}

uint64_t sub_1006FB4A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006FB4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006FB50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009663B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006FB57C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006FB5C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1006FB610(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006FB664()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006FB6C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006FB794@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v1 = sub_1007615AC();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007626DC();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v59 - v6;
  v8 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v8 - 8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v59 - v11;
  __chkstk_darwin(v12);
  v60 = &v59 - v13;
  __chkstk_darwin(v14);
  v62 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v61 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_10075DB7C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10075F2FC();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F31C();
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_10075F35C();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_10000CFBC(v23, &unk_1009435D0);
      v33 = type metadata accessor for FlowDestination();
      return (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
    }

    v37 = *(v25 + 32);
    v37(v27, v23, v24);
    v36 = v70;
    v37(v70, v27, v24);
    v35 = type metadata accessor for FlowDestination();
    goto LABEL_9;
  }

  if (v32 == enum case for StoreTab.Identifier.games(_:) || v32 == enum case for StoreTab.Identifier.apps(_:))
  {
    goto LABEL_17;
  }

  if (v32 != enum case for StoreTab.Identifier.updates(_:))
  {
    if (v32 == enum case for StoreTab.Identifier.search(_:))
    {
      v36 = v70;
      *v70 = 0;
      v35 = type metadata accessor for FlowDestination();
      goto LABEL_9;
    }

    if (v32 == enum case for StoreTab.Identifier.arcade(_:))
    {
      v40 = sub_10075F33C();
      v41 = *(v68 + 104);
      v41(v7, enum case for EditorialPageKey.subscriber(_:), v69);
      if (*(v40 + 16) && (v42 = sub_100610310(v7), (v43 & 1) != 0))
      {
        (*(v25 + 16))(v18, *(v40 + 56) + *(v25 + 72) * v42, v24);
        v44 = *(v68 + 8);
        v44(v7, v69);

        v45 = *(v25 + 56);
        v45(v18, 0, 1, v24);
        v46 = v61;
        (*(v25 + 32))(v61, v18, v24);
        v45(v46, 0, 1, v24);
      }

      else
      {

        v44 = *(v68 + 8);
        v44(v7, v69);
        v45 = *(v25 + 56);
        v45(v18, 1, 1, v24);
        v46 = v61;
        sub_10075F35C();
        if ((*(v25 + 48))(v18, 1, v24) != 1)
        {
          sub_10000CFBC(v18, &unk_1009435D0);
        }
      }

      v48 = sub_10075F33C();
      v49 = v59;
      v41(v59, enum case for EditorialPageKey.nonSubscriber(_:), v69);
      v50 = v49;
      v51 = v62;
      if (*(v48 + 16) && (v52 = sub_100610310(v50), (v53 & 1) != 0))
      {
        v54 = v60;
        (*(v25 + 16))(v60, *(v48 + 56) + *(v25 + 72) * v52, v24);
        v44(v50, v69);

        v45(v54, 0, 1, v24);
        (*(v25 + 32))(v51, v54, v24);
        v45(v51, 0, 1, v24);
      }

      else
      {

        v44(v50, v69);
        v55 = v60;
        v45(v60, 1, 1, v24);
        sub_10075F35C();
        if ((*(v25 + 48))(v55, 1, v24) != 1)
        {
          sub_10000CFBC(v55, &unk_1009435D0);
        }
      }

      sub_100050CC0(v46, v63);
      sub_100050CC0(v51, v64);
      v56 = v65;
      sub_10076159C();
      sub_10000CFBC(v51, &unk_1009435D0);
      sub_10000CFBC(v46, &unk_1009435D0);
      v57 = *(sub_10000A5D4(&qword_1009499D0) + 48);
      v36 = v70;
      *v70 = 0;
      (*(v66 + 32))(&v36[v57], v56, v67);
      v35 = type metadata accessor for FlowDestination();
      goto LABEL_9;
    }

    if (v32 != enum case for StoreTab.Identifier.featured(_:))
    {
      v58 = type metadata accessor for FlowDestination();
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      return (*(v29 + 8))(v31, v28);
    }

LABEL_17:
    sub_10000A5D4(&unk_100964150);
    v47 = v70;
    *v70 = 0;
    sub_10075F35C();
    v35 = type metadata accessor for FlowDestination();
    swift_storeEnumTagMultiPayload();
    v38 = *(*(v35 - 8) + 56);
    v39 = v47;
    return v38(v39, 0, 1, v35);
  }

  v35 = type metadata accessor for FlowDestination();
  v36 = v70;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v35 - 8) + 56);
  v39 = v36;
  return v38(v39, 0, 1, v35);
}

uint64_t sub_1006FC188()
{
  v49 = sub_100760EFC();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075F2FC();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10000A5D4(&qword_100966430);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_10076048C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v51 = v0;
  sub_10075F32C();
  if (v19)
  {

    sub_10076047C();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CFBC(v11, &qword_100966430);
      v20 = sub_10076043C();
    }

    else
    {

      (*(v13 + 32))(v18, v11, v12);
      v20 = sub_10076046C();
      (*(v13 + 8))(v18, v12);
    }
  }

  else
  {
    v20 = 0;
  }

  sub_10075F31C();
  v21 = (*(v52 + 88))(v8, v53);
  if (v21 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_10075F36C();
    if (!v22)
    {
      v54._object = 0x80000001007F65A0;
      v54._countAndFlagsBits = 0xD000000000000010;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      sub_1007622EC(v54, v59);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.docTextImage(_:), v12);
      v23 = sub_10076046C();
      (*(v13 + 8))(v15, v12);
    }

    v26 = &enum case for NavigationTab.today(_:);
LABEL_34:
    v39 = v49;
    (*(v1 + 104))(v3, *v26, v49);
    v40 = v20;
    v41 = sub_100760EDC();
    (*(v1 + 8))(v3, v39);
    v42 = objc_allocWithZone(UITabBarItem);
    v43 = sub_10076FF6C();

    v44 = [v42 initWithTitle:v43 image:v23 tag:v41];

    v45 = v50;
    sub_10075F31C();
    v38 = sub_10077050C();

    (*(v52 + 8))(v45, v53);
    return v38;
  }

  if (v21 == enum case for StoreTab.Identifier.games(_:))
  {
    sub_10075F36C();
    if (!v24)
    {
      v55._object = 0x80000001007F6580;
      v55._countAndFlagsBits = 0xD000000000000010;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      sub_1007622EC(v55, v60);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.rocketFill(_:), v12);
      v23 = sub_10076046C();
      (*(v13 + 8))(v15, v12);
    }

    v26 = &enum case for NavigationTab.games(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.apps(_:))
  {
LABEL_17:
    sub_10075F36C();
    if (!v25)
    {
      v56._countAndFlagsBits = 0x5449545F45474150;
      v56._object = 0xEF535050415F454CLL;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      sub_1007622EC(v56, v61);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.app3Stack3DFill(_:), v12);
      v23 = sub_10076046C();
      (*(v13 + 8))(v15, v12);
    }

    v26 = &enum case for NavigationTab.apps(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.updates(_:))
  {
    sub_10075F36C();
    if (!v27)
    {
      v57._countAndFlagsBits = 0xD000000000000012;
      v57._object = 0x80000001007F6560;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      sub_1007622EC(v57, v62);
    }

    v28 = sub_1005A5DB8(0x5473657461647055, 0xEE006E6F63496261, 0);
    v29 = [v28 _imageThatSuppressesAccessibilityHairlineThickening];

    v30 = v49;
    (*(v1 + 104))(v3, enum case for NavigationTab.updates(_:), v49);
    v31 = sub_100760EDC();
    (*(v1 + 8))(v3, v30);
    v32 = objc_allocWithZone(UITabBarItem);
    v33 = sub_10076FF6C();

    v34 = [v32 initWithTitle:v33 image:v29 tag:v31];

    v35 = v50;
  }

  else
  {
    if (v21 != enum case for StoreTab.Identifier.search(_:))
    {
      if (v21 == enum case for StoreTab.Identifier.arcade(_:))
      {
        sub_10075F36C();
        if (!v47)
        {
          v58._countAndFlagsBits = 0xD000000000000011;
          v58._object = 0x80000001007F6540;
          v63._countAndFlagsBits = 0;
          v63._object = 0xE000000000000000;
          sub_1007622EC(v58, v63);
        }

        if (v20)
        {
          v23 = v20;
        }

        else
        {
          (*(v13 + 104))(v15, enum case for SystemImage.joystickcontrollerFill(_:), v12);
          v23 = sub_10076046C();
          (*(v13 + 8))(v15, v12);
        }

        v26 = &enum case for NavigationTab.arcade(_:);
        goto LABEL_34;
      }

      if (v21 != enum case for StoreTab.Identifier.featured(_:))
      {

        (*(v52 + 8))(v8, v53);
        return 0;
      }

      goto LABEL_17;
    }

    v36 = v49;
    (*(v1 + 104))(v3, enum case for NavigationTab.search(_:), v49);
    v37 = sub_100760EDC();
    (*(v1 + 8))(v3, v36);
    v34 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:v37];
    v35 = v50;
  }

  sub_10075F31C();
  v38 = sub_10077050C();

  (*(v52 + 8))(v35, v53);
  return v38;
}

void sub_1006FCC94(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1006FD86C(&qword_100942810, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    sub_1000ACA5C();
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1006FCE30(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10001913C;
}

id sub_1006FCEA4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView];
  sub_1004B1B8C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  sub_10015A6F0();
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppEventCollectionViewCell()
{
  result = qword_100966468;
  if (!qword_100966468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1006FD090(uint64_t **a1))()
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
  v2[4] = sub_1006FCE30(v2);
  return sub_100019A4C;
}

double sub_1006FD188()
{
  [*(*(*v0 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_10076422C();
  CGRectGetHeight(v3);
  sub_10076422C();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1006FD214()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_10076422C();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1006FD2A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006FD2FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006FD3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006FD86C(&qword_100950E98, type metadata accessor for AppEventCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006FD45C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006FD86C(&qword_100966490, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006FD4D0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006FD86C(&qword_100966490, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1006FD55C(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1006FD86C(&qword_100966490, type metadata accessor for AppEventCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1006FD618(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  sub_1000ACA5C();
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_1006FD798(void *a1)
{
  a1[1] = sub_1006FD86C(&qword_100966488, type metadata accessor for AppEventCollectionViewCell);
  a1[2] = sub_1006FD86C(&qword_100950E88, type metadata accessor for AppEventCollectionViewCell);
  a1[3] = sub_1006FD86C(&qword_100950E90, type metadata accessor for AppEventCollectionViewCell);
  result = sub_1006FD86C(&qword_100950E98, type metadata accessor for AppEventCollectionViewCell);
  a1[4] = result;
  return result;
}

uint64_t sub_1006FD86C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1006FD8B4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076F9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView;
  v10 = *&v8[OBJC_IVAR____TtC20ProductPageExtension26AppEventCollectionViewCell_appEventView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  sub_10076F95C();
  sub_10000CFBC(v17, &unk_1009434C0);
  sub_10000CFBC(v18, &unk_1009434C0);
  sub_100770B9C();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

uint64_t sub_1006FDB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController;
  *&v4[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter] = a1;
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_completionCallback];
  *v10 = a2;
  *(v10 + 1) = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = 2;
LABEL_6:
  v13 = v11;
  [v13 setModalPresentationStyle:v12];
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      v14 = 0;
LABEL_11:
      [*&v13[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController] setModalPresentationStyle:v14];
      [v13 setModalInPresentation:1];

      return v13;
    }

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 16) == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_1006FDDC8()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController];
  [v4 setNavigationBarHidden:1 animated:0];
  [v0 addChildViewController:v4];
  result = [v4 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame:{v8, v10, v12, v14}];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  result = [v4 view];
  if (result)
  {
    v16 = result;
    [v15 addSubview:result];

    [v4 didMoveToParentViewController:v0];
    return sub_1006FDFBC();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1006FDFBC()
{
  v1 = v0;
  v2 = sub_10076F2EC();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    sub_10000A570(v4 + 32, v17);
    v5 = sub_1006FE7AC(v17);
    if (v5)
    {
      v6 = v5;
      if (qword_100941300 != -1)
      {
        swift_once();
      }

      v7 = sub_10076FD4C();
      sub_10000A61C(v7, qword_1009A2648);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F2DC();
      v19._countAndFlagsBits = 0x69746E6573657250;
      v19._object = 0xEB0000000020676ELL;
      sub_10076F2CC(v19);
      v16 = sub_100016F40(0, &qword_1009453B0);
      v15[0] = v6;
      v8 = v6;
      sub_10076F29C();
      sub_10000CFBC(v15, &unk_1009434C0);
      v20._countAndFlagsBits = 0x65747320726F6620;
      v20._object = 0xEA00000000002070;
      sub_10076F2CC(v20);
      v9 = v18;
      v10 = sub_10000CF78(v17, v18);
      v16 = v9;
      v11 = sub_10000DB7C(v15);
      (*(*(v9 - 8) + 16))(v11, v10, v9);
      sub_10076F29C();
      sub_10000CFBC(v15, &unk_1009434C0);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      sub_10076F2CC(v21);
      sub_10076F2FC();
      sub_10076FBCC();

      [v8 preferredContentSize];
      [v1 setPreferredContentSize:?];
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_navController] showViewController:v8 sender:v1];
    }

    else
    {
      v14 = sub_10000E790(v17, 0xD00000000000002ALL, 0x80000001007F67E0);
      sub_1006FDFBC(v14);
    }

    return sub_10000CD74(v17);
  }

  else
  {
    if (qword_100941300 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2648);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    (*&v0[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_completionCallback])(v0);
    if (qword_100941548 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10074BF4C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1006FE500(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (*(v5 + 16))
  {
    sub_10000A570(v5 + 32, v8);
    return sub_10000CFBC(v8, &qword_1009664D8);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10000CFBC(v8, &qword_1009664D8);
    if (qword_100941300 != -1)
    {
      swift_once();
    }

    v7 = sub_10076FD4C();
    sub_10000A61C(v7, qword_1009A2648);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    (*&v2[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_completionCallback])(v2);
    if (qword_100941548 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10074BF4C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1006FE7AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076649C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10000A570(a1, v41);
  sub_10000A5D4(&qword_1009425C8);
  if (swift_dynamicCast())
  {
    v17 = *(v5 + 16);
    v17(v13, v16, v4);
    if (*(*&v2[OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter] + 16) == 2)
    {
      v18 = sub_1006FED7C();
      v19 = *(v5 + 8);
      v19(v13, v4);
      v19(v16, v4);
      goto LABEL_8;
    }

    v37 = v7;
    v38 = v2;
    v20 = *(v5 + 8);
    v20(v13, v4);
    (*(v5 + 32))(v10, v16, v4);
    v21 = v37;
    v17(v37, v10, v4);
    v22 = sub_10076126C();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController());

    v18 = sub_10070E430(v21, v22 & 1, sub_1006FFBBC, v23);

    v20(v10, v4);
    v2 = v38;
LABEL_7:

    goto LABEL_8;
  }

  type metadata accessor for AdPrivacyOnboardingStep();
  if (swift_dynamicCast())
  {
    v18 = sub_1006FF12C();
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_10000FA08(aBlock);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(type metadata accessor for OnboardingLocationPrivacyViewController());
    v18 = sub_10027DAA8(sub_1006FFB84, v30, sub_1006FFBB4, v31);
  }

  else
  {
    type metadata accessor for JourneyDrivenOnboardingStep();
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v33 = v39;
    v18 = *&v39[OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController];
    if (!v18)
    {

      sub_10000CD74(v41);
      return v18;
    }

    v34 = [v18 startEngagement];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1006FFB64;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001FA544;
    aBlock[3] = &unk_1008A1590;
    v36 = _Block_copy(aBlock);

    [v34 addFinishBlock:v36];
    _Block_release(v36);
  }

LABEL_8:
  sub_10000CD74(v41);
  v24 = [v18 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v2 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 tintColor];

      [v25 setTintColor:v28];
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_1006FED7C()
{
  v1 = v0;
  v2 = sub_10075DE9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_10076644C();
  isa = sub_1007701AC().super.isa;

  v8 = [v6 linkWithBundleIdentifiers:isa];

  if (v8)
  {
    v9 = v8;
    [v9 setModalPresentationStyle:{objc_msgSend(v1, "modalPresentationStyle")}];

    v10 = v9;
    sub_10075DE6C();
    sub_10075DDCC();
    (*(v3 + 8))(v5, v2);
    v11 = sub_10076FF6C();

    [v10 setDisplayLanguage:v11];
  }

  v12 = sub_1005A5DB8(0xD000000000000017, 0x80000001007F68D0, 0);
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x80000001007F68F0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1007622EC(v24, v27);
  v25._countAndFlagsBits = 0xD000000000000025;
  v25._object = 0x80000001007F6910;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1007622EC(v25, v28);
  v22[1] = v1;
  v26._object = 0x80000001007F6940;
  v26._countAndFlagsBits = 0xD000000000000013;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007622EC(v26, v29);
  v13 = objc_allocWithZone(AMSUIOnboardingViewController);
  v14 = v8;
  v15 = sub_10076FF6C();

  v16 = sub_10076FF6C();

  v17 = sub_10076FF6C();

  v18 = [v13 initWithHeaderImage:v12 titleText:v15 descriptionText:v16 primaryButtonText:v17 privacyLinkController:v14];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006FFC0C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100177EA0;
  aBlock[3] = &unk_1008A15B8;
  v20 = _Block_copy(aBlock);

  [v18 setPrimaryButtonCallback:v20];

  _Block_release(v20);
  return v18;
}

id sub_1006FF12C()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10050D76C();
  sub_10075DE8C();
  v5 = sub_10075DDCC();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = sub_10076144C();
  v15[0] = v5;
  v15[1] = v7;
  v14 = v15;
  v9 = sub_1001A3D8C(sub_100533F84, v13, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyViewController());
  return sub_1005E9BA0(v4, (v9 & 1) == 0, sub_1006FFBEC, v10);
}

void sub_1006FF2DC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;

    sub_10000EC94();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;

    sub_10000EC9C();
  }

LABEL_7:
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1006FDFBC();
  }
}

void sub_1006FF3C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a3();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1006FDFBC();
  }
}

void sub_1006FF470()
{
  v0 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_10000ED80();
  }

  sub_10075DB6C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CFBC(v2, &unk_1009435D0);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v9 = [objc_opt_self() defaultWorkspace];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v11 = v9;
    sub_10075DB1C(v10);
    v13 = v12;
    [v11 openSensitiveURL:v12 withOptions:0];

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1006FDFBC();
  }
}

uint64_t sub_1006FF6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10076F08C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F0CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v12 = sub_10077068C();
  aBlock[4] = sub_1006FFBF4;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A15E0;
  v13 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1006FF95C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension24OnboardingViewController_presenter);
    v2 = Strong;

    swift_beginAccess();
    v3 = *(v1 + 32);
    if (*(v3 + 16))
    {
      sub_10000A570(v3 + 32, v7);
      sub_10000A5D4(&qword_1009425C8);
      type metadata accessor for JourneyDrivenOnboardingStep();
      if (swift_dynamicCast())
      {
        sub_10000F744(v6, v1);
      }
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1006FDFBC();
  }
}

uint64_t sub_1006FFB2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006FFB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006FFC10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[0] = a2;
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076505C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10076507C();
  sub_100700140();
  result = sub_10076332C();
  if (v25[1])
  {
    sub_10076506C();
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v9 + 96))(v11, v8);
      v14 = *v11;
      type metadata accessor for ProductTapToRateView();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_1004CD07C(v15);
      v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView];
      if (v16)
      {
        swift_getKeyPath();
        v17 = v16;
        sub_10076338C();

        sub_10076C21C();
        v19 = v18;
        (*(v5 + 8))(v7, v4);
        sub_1000BED74(v14, v19 == 1.0, v25[0]);
      }
    }

    else
    {
      if (v13 != enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
      {
        (*(v9 + 8))(v11, v8);
        goto LABEL_10;
      }

      (*(v9 + 96))(v11, v8);
      type metadata accessor for ProductReviewActionsView();
      v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_1004CD088([v20 init]);
      v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
      if (v21)
      {
        v22 = v21;
        v23 = sub_10076509C();
        v24 = sub_10076508C();
        sub_100630CB4();
        sub_1006A7CC4(v23, v24);

        swift_unknownObjectRelease();
      }
    }

LABEL_10:
    [v3 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1006FFF94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006FFFF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1007000BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t sub_100700140()
{
  result = qword_1009435F8;
  if (!qword_1009435F8)
  {
    sub_10076507C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009435F8);
  }

  return result;
}

uint64_t sub_1007001BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100941568 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A3370);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100700398()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A3370);
  v1 = sub_10000A61C(v0, qword_1009A3370);
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1D80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100700518()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_100016F40(0, &qword_100942F00);
  v4 = qword_100941568;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  sub_10000A61C(v6, qword_1009A3370);
  v7 = [v1 traitCollection];
  v8 = sub_100770B3C();

  *(inited + 64) = v3;
  *(inited + 40) = v8;
  v9 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B10);
  v10 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v11 = v10;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_isCentered) == 1)
  {
    [v10 setAlignment:1];
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = sub_10077070C();

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [v11 setAlignment:v14];
  }

  v28 = sub_100016F40(0, &unk_10095D790);
  *&v27 = v11;
  sub_10000CD64(&v27, v26);
  v15 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10024A2F4(v26, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v17 = v9;
  v29 = v9;
  v18 = NSForegroundColorAttributeName;
  v19 = [v1 tintColor];
  if (v19)
  {
    v20 = v19;
    v28 = sub_100016F40(0, &qword_100942F10);
    *&v27 = v20;
    sub_10000CD64(&v27, v26);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10024A2F4(v26, v18, v21);

    v29 = v17;
  }

  else
  {
    sub_1001E165C(v18, &v27);

    sub_10000CFBC(&v27, &unk_1009434C0);
  }

  v22 = objc_allocWithZone(NSAttributedString);

  v23 = sub_10076FF6C();

  type metadata accessor for Key(0);
  sub_100701808(&qword_100943320, type metadata accessor for Key);
  isa = sub_10076FE3C().super.isa;

  v25 = [v22 initWithString:v23 attributes:isa];

  sub_10076265C();
  [v1 setNeedsLayout];
}

uint64_t sub_100700924()
{
  ObjectType = swift_getObjectType();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1007018F0;
  *(v4 + 24) = v3;
  v9[4] = sub_1000349FC;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001C5148;
  v9[3] = &unk_1008A16D0;
  v5 = _Block_copy(v9);
  v6 = v0;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_100700AA4(uint64_t a1)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_titleLabel);
  sub_10076422C();
  [v6 sizeThatFits:{v7, v8}];
  sub_10076422C();
  CGRectGetWidth(v13);
  sub_10076422C();
  CGRectGetMinX(v14);
  sub_10076422C();
  CGRectGetMinY(v15);
  if (qword_100941558 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D9AC();
  sub_10000A61C(v9, qword_1009A3340);
  sub_10076D17C();
  v10 = [v6 traitCollection];
  sub_10076D97C();

  [v6 firstBaselineFromTop];
  (*(v3 + 8))(v5, v2);
  sub_10076422C();
  sub_100770A4C();
  return [v6 setFrame:?];
}

void sub_100700D88()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_titleLabel];
  v3 = [v2 attributedText];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v4];
      v8 = [v4 length];
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_10000A694;
      *(v10 + 24) = v9;
      v14[4] = sub_10000A6AC;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1002464A8;
      v14[3] = &unk_1008A1658;
      v11 = _Block_copy(v14);
      v12 = v7;
      v13 = v6;

      [v4 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v8 usingBlock:{0x100000, v11}];

      _Block_release(v11);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        [v2 setAttributedText:v12];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10070101C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text];
  *v1 = 0;
  *(v1 + 1) = 0;

  sub_100700518();
  v0[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_isCentered] = 0;
  sub_100700518();
  v2 = &v0[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  return sub_1000167E0(v3);
}

void sub_10070123C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076771C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_tapGestureRecognizer] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_isCentered] = 0;
  v10 = &v1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
  *v11 = 0;
  v11[1] = 0;
  if (qword_100941568 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A3370);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v15 = objc_allocWithZone(sub_1007626BC());
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_titleLabel] = sub_1007626AC();
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_titleLabel;
  v18 = *&v16[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_titleLabel];
  v19 = v16;
  [v19 addSubview:v18];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"buttonTapped"];
  v21 = *&v19[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_tapGestureRecognizer];
  *&v19[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_tapGestureRecognizer] = v20;
  v22 = v20;

  if (v22)
  {
    v23 = *&v16[v17];
    [v23 addGestureRecognizer:v22];

    [*&v16[v17] setUserInteractionEnabled:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100701570(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_100941568 != -1)
    {
      swift_once();
    }

    v2 = sub_10076D3DC();
    sub_10000A61C(v2, qword_1009A3370);
    v3 = sub_10076C04C();
    v6[3] = v3;
    v6[4] = sub_100701808(&qword_100943230, &type metadata accessor for Feature);
    v4 = sub_10000DB7C(v6);
    (*(*(v3 - 8) + 104))(v4, enum case for Feature.measurement_with_labelplaceholder(_:), v3);
    sub_10076C90C();
    sub_10000CD74(v6);
    sub_10076991C();
    if (qword_100941558 != -1)
    {
      swift_once();
    }

    v5 = sub_10076D9AC();
    sub_10000A61C(v5, qword_1009A3340);
    sub_10076D42C();
    if (qword_100941560 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v5, qword_1009A3358);
    sub_10076D3FC();
  }
}

uint64_t sub_100701808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100701850()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1007018A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1007018B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for FadeOutDynamicTypeLabel()
{
  result = qword_100966540;
  if (!qword_100966540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007019A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v24 = a3;
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_100966530;
  v20 = objc_allocWithZone(type metadata accessor for InvertedGradientLayer());
  *&v18[v19] = [v20 init];
  v21 = &v18[qword_100966538];
  *v21 = 0;
  v21[8] = 1;
  sub_100389394(a1, v17);
  (*(v12 + 16))(v14, a6, v11);
  v22 = sub_1007626AC();
  (*(v12 + 8))(a6, v11);
  sub_1000276DC(a1);
  return v22;
}

void sub_100701B88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076DA7C();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10076D7FC();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v16);
  v19 = [v1 text];
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  v59 = sub_10076FF9C();
  v22 = v21;

  if (v1[qword_100966538 + 8])
  {

LABEL_4:
    v23 = [v1 layer];
    [v23 setMask:0];

    return;
  }

  v56 = v22;
  v58 = v10;
  v24 = *&v1[qword_100966538];
  sub_1007625CC();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    *v18 = UIFontTextStyleBody;
    *(v18 + 2) = 0;
    (*(v15 + 104))(v18, enum case for FontUseCase.preferredFont(_:), v14);
    v26 = v25(v13, 1, v14);
    v27 = UIFontTextStyleBody;
    if (v26 != 1)
    {
      sub_1000276DC(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_10005312C();
  v28 = [v1 traitCollection];
  v29 = sub_100770B3C();

  (*(v15 + 8))(v18, v14);
  v30 = v29;
  [v1 bounds];
  CGRectGetWidth(v65);
  sub_10076D7EC();
  v31 = v58;
  sub_10076D7DC();
  v32 = v60;
  v33 = v63;
  v57 = *(v60 + 8);
  v57(v7, v63);
  (*(v32 + 16))(v7, v31, v33);
  sub_10076DA5C();
  sub_10076DA8C();
  v34 = [v1 traitCollection];
  sub_10076DA6C();
  v36 = v35;
  v38 = v37;

  (*(v61 + 8))(v5, v62);
  [v1 bounds];
  v66.size.width = v36;
  v66.size.height = v38;
  Height = CGRectGetHeight(v66);
  [v1 bounds];
  v40 = CGRectGetHeight(v67);
  v41 = [v1 layer];
  v42 = v41;
  if (v40 <= Height)
  {
    v44 = *&v1[qword_100966530];
    [v41 setMask:v44];

    [v30 lineHeight];
    *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_lineHeight] = v45;
    *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientStart] = v24 + 20.0;
    *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientEnd] = v24 + -5.0;
    v46 = v30;
    v47 = v31;
    v48 = [v1 textAlignment];
    v49 = [v1 traitCollection];
    v50 = sub_10077070C();

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = 2;
    }

    v52 = v48 == v51;
    v53 = [v1 traitCollection];
    v54 = sub_10077070C();

    if ((v54 ^ v52))
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_textDirection] = v55;
    [v1 bounds];
    [v44 setFrame:?];
    [v44 setNeedsDisplay];

    v43 = v47;
  }

  else
  {
    [v41 setMask:0];

    v43 = v31;
  }

  v57(v43, v63);
}

void sub_100702220(void *a1)
{
  v1 = a1;
  sub_100701B88();
}

void sub_100702290(CGContext *a1)
{
  v2 = v1;
  v4 = sub_10076C89C();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 CGColor];

  CGContextSetFillColorWithColor(a1, v8);
  [v1 bounds];
  x = v42.origin.x;
  width = v42.size.width;
  v12 = v11 - *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_lineHeight];
  v37 = a1;
  v42.size.height = v12;
  CGContextFillRect(a1, v42);
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_textDirection];
  sub_10000A5D4(&unk_100942870);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100785D70;
  if (v13 == 3)
  {
    v15 = &selRef_blackColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v13 == 3)
  {
    v16 = &selRef_clearColor;
  }

  else
  {
    v16 = &selRef_blackColor;
  }

  if (v13 == 3)
  {
    v17 = &unk_1008835E0;
  }

  else
  {
    v17 = &unk_100883610;
  }

  v18 = [v6 *v15];
  v19 = [v18 CGColor];

  *(v14 + 32) = v19;
  v20 = [v6 *v16];
  v21 = [v20 CGColor];

  *(v14 + 40) = v21;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColor(0);
  v38 = DeviceRGB;
  isa = sub_1007701AC().super.isa;

  v24 = CGGradientCreateWithColors(v38, isa, v17);

  if (v24)
  {
    if (v13 == 3)
    {
      [v2 bounds];
      v25 = CGRectGetMaxX(v43) - *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientStart];
      [v2 bounds];
      v26 = CGRectGetMaxX(v44) - *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientEnd];
      v27 = 1;
    }

    else
    {
      v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientEnd];
      v26 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientStart];
      v27 = 2;
    }

    [v2 bounds];
    v46.size.height = CGRectGetHeight(v45);
    v29 = v37;
    v46.origin.x = x;
    v46.origin.y = v12;
    v46.size.width = width;
    CGContextAddRect(v37, v46);
    v31 = v34;
    v30 = v35;
    v32 = v36;
    (*(v35 + 104))(v34, enum case for CGPathFillRule.winding(_:), v36);
    sub_10077045C();
    (*(v30 + 8))(v31, v32);
    v40.y = 0.5;
    v41.y = 0.5;
    v40.x = v25;
    v41.x = v26;
    CGContextDrawLinearGradient(v29, v24, v40, v41, v27);
  }

  else
  {
    v28 = v38;
  }
}

id sub_100702844(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_lineHeight] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientStart] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientEnd] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_textDirection] = 3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InvertedGradientLayer();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10070290C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvertedGradientLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100702978(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 2)
  {
    return v4 != 2 && ((v4 ^ v2) & 1) == 0;
  }

  return v4 == 2;
}

uint64_t sub_1007029DC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009665D8);
  sub_10000A61C(v4, qword_1009665D8);
  if (qword_100941008 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1E10);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_100702BB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_100941000 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v10, qword_1009A1DF8);
  v22 = *(v11 + 16);
  v22(v19, v21, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[v20] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons] = _swiftEmptyArrayStorage;
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *&v5[v25] = [objc_allocWithZone(CALayer) init];
  v26 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_10076313C();
  if (qword_100941008 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v10, qword_1009A1E10);
  v22(v55, v27, v10);
  *&v5[v26] = sub_10076312C();
  v28 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *&v5[v28] = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  v29 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_dividerView;
  *&v5[v29] = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 0;
  v30 = &v5[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v5[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v32 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  *v31 = 0;
  v31[1] = 0;
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v36 = v33;
  [v35 setTextAlignment:1];
  v37 = v36;
  v38 = [v37 contentView];
  [v38 addSubview:*&v33[v34]];

  v39 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  v40 = *&v37[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  v41 = [v37 tintColor];

  if (v41)
  {
    v42 = [v41 CGColor];

    [v40 setBackgroundColor:v42];
    [*&v37[v39] setCornerRadius:20.0];
    v43 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
    v44 = *&v37[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
    v57._countAndFlagsBits = 0x465F54494D425553;
    v57._object = 0xEF4B434142444545;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    sub_1007622EC(v57, v58);
    v45 = sub_10076FF6C();

    [v44 setTitle:v45 forState:0];

    [*&v37[v43] addTarget:v37 action:"didTapSubmitButton:" forControlEvents:64];
    [*&v37[v43] setEnabled:0];
    v46 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
    [*&v37[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer] setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
    v47 = *&v37[v46];
    v48 = *&v37[v43];
    v49 = *&v47[OBJC_IVAR____TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer_submitButton];
    *&v47[OBJC_IVAR____TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer_submitButton] = v48;
    v50 = v48;
    v51 = v47;

    [v51 addSubview:v50];
    [v51 setNeedsLayout];

    v52 = [v37 contentView];
    [v52 addSubview:*&v37[v46]];

    v53 = [v37 contentView];
    [v53 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_dividerView]];
  }

  else
  {
    __break(1u);
  }
}

id sub_10070328C(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v4 >> 62)
  {
    result = sub_10077158C();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = sub_10077158C();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_10077149C();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          v14 = [v1 contentView];
          [v14 addSubview:v13];

          [v13 addTarget:v1 action:"feedbackButtonSelectedWithFeedbackOptioButton:" forControlEvents:64];
        }

        while (v10 != v11);

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_10070347C()
{
  v76 = sub_10076D1FC();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10077164C();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10076DD5C();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v70 - v8;
  v79 = sub_10076DD7C();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10076DC0C();
  v103 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10076DC2C();
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10076DC3C();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076DC5C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10076DC7C();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  v119.receiver = v0;
  v119.super_class = v20;
  v81 = v20;
  objc_msgSendSuper2(&v119, "layoutSubviews");
  (*(v15 + 104))(v17, enum case for VerticalStackLayout.Alignment.center(_:), v14);
  v117 = sub_10076D67C();
  v118 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v116);
  sub_10076D66C();
  v100 = v19;
  sub_10076DC6C();
  v21 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v98 = v21 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v72 = v2;
    v23 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex;

    v24 = &protocol witness table for UIView;
    v71 = v6;
    v80 = v0;
    if (!i)
    {
      break;
    }

    v25 = 0;
    v70 = 0;
    v102 = (v0 + v23);
    v91 = v21 & 0xC000000000000001;
    v89 = enum case for VerticalStackLayout.Child.Alignment.center(_:);
    v88 = (v11 + 104);
    v87 = (v103 + 8);
    v86 = (v11 + 8);
    ++v85;
    v90 = v21;
    while (1)
    {
      if (v91)
      {
        v26 = sub_10077149C();
      }

      else
      {
        if (v25 >= *(v98 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v0 = v26;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v11 = i;
      v27 = v4;
      [v26 setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
      v28 = v24;
      v117 = type metadata accessor for FeedbackButton();
      v118 = v24;
      v116 = v0;
      v29 = qword_100941570;
      v103 = v0;
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_10076D9AC();
      v31 = sub_10000A61C(v30, qword_1009665D8);
      v114 = v30;
      v115 = &protocol witness table for StaticDimension;
      v32 = sub_10000DB7C(&v113);
      (*(*(v30 - 8) + 16))(v32, v31, v30);
      v33 = v94;
      v34 = v95;
      (*v88)(v94, v89, v95);
      v110 = _swiftEmptyArrayStorage;
      sub_100707510(&qword_100966718, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_10000A5D4(&qword_100966720);
      sub_100707558();
      v35 = v96;
      v36 = v97;
      sub_1007712CC();
      v37 = v92;
      sub_10076DC1C();
      (*v87)(v35, v36);
      (*v86)(v33, v34);
      sub_10000CD74(&v113);
      sub_10000CD74(&v116);
      sub_10076DC4C();
      (*v85)(v37, v93);
      if ((*(v102 + 8) & 1) != 0 || v25 != *v102)
      {

        ++v25;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          v103 = v70;
          goto LABEL_19;
        }
      }

      else
      {

        ++v25;
        v70 = v103;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v98 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v103 = 0;
  v6 = v99;
  v0 = v101;
LABEL_19:

  v38 = v84;
  v117 = v84;
  v118 = &protocol witness table for VerticalStackLayout;
  v39 = sub_10000DB7C(&v116);
  (*(v83 + 16))(v39, v100, v38);
  v40 = v80;
  v41 = *&v80[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v114 = sub_1007626BC();
  v115 = v24;
  v113 = v41;
  v42 = v24;
  v43 = enum case for FlankedVerticalLayout.Alignment.center(_:);
  v44 = v0[13];
  v101 = v0 + 13;
  v44(v82, enum case for FlankedVerticalLayout.Alignment.center(_:), v6);
  v45 = qword_1009411F0;
  v46 = v41;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_10076D9AC();
  sub_10000A61C(v47, qword_1009A2350);
  sub_10076D17C();
  sub_10076D40C();
  v49 = v48;
  v50 = v73;
  v102 = *(v72 + 8);
  v102(v4, v73);
  v111 = &type metadata for CGFloat;
  v112 = &protocol witness table for CGFloat;
  v110 = v49;
  v51 = *&v40[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer];
  v52 = type metadata accessor for SubmitButtonContainer();
  v109 = v42;
  v108 = v52;
  v107 = v51;
  v44(v71, v43, v6);
  v53 = qword_100941200;
  v54 = v51;
  if (v53 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v47, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v56 = v55;
  v102(v4, v50);
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v56;
  v57 = v77;
  sub_10076DD6C();
  v58 = [v40 traitCollection];
  sub_10076E20C();
  v60 = v59;

  sub_10076422C();
  v61 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider;
  if (v40[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] == 1)
  {
    sub_10076D17C();
    sub_10076D40C();
    v102(v4, v50);
  }

  v62 = v74;
  sub_10076DD4C();
  (*(v75 + 8))(v62, v76);
  v63 = v103;
  if (v103)
  {
    v64 = *&v40[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
    v65 = v103;
    [v64 setAnchorPoint:{0.0, 0.0}];
    [v65 frame];
    sub_100770A7C();
    [v64 setFrame:?];
  }

  if (v40[v61] == 1)
  {
    v66 = *&v40[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_dividerView];
    sub_10076422C();
    MinX = CGRectGetMinX(v120);
    sub_10076422C();
    v68 = CGRectGetMaxY(v121) - v60;
    sub_10076422C();
    [v66 setFrame:{MinX, v68, CGRectGetWidth(v122), v60}];
  }

  (*(v78 + 8))(v57, v79);
  return (*(v83 + 8))(v100, v84);
}

id sub_1007043AC()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:0];
  v12 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v4 != *v1)
      {
        v5 = [v8 tintColor];
        v6 = v9;
        v7 = v5;
      }

      else
      {
        v5 = [objc_opt_self() whiteColor];
        v6 = v5;
        v7 = v9;
      }

      [v9 setTitleColor:v5 forState:0];

      ++v4;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return [v12 setNeedsLayout];
}

id sub_1007045D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_41:
    v3 = sub_10077158C();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v2 = 0;
      goto LABEL_15;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v5 = *(v1 + v4 + 4);
    }

    v6 = v5;
    sub_100016F40(0, &qword_10094D040);
    v7 = sub_100770EEC();

    if (v7)
    {
      break;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_40;
    }
  }

  v2 = v4;
LABEL_15:

  v9 = *&v23[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  [v9 removeFromSuperlayer];
  v10 = &v23[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v10 = v2;
  v10[8] = v3 == v4;
  if (v3 != v4)
  {
    v1 = [v23 contentView];
    v11 = [v1 layer];

    [v11 insertSublayer:v9 atIndex:0];
  }

  [*&v23[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:v3 != v4];
  v12 = *&v23[v22];
  if (v12 >> 62)
  {
    v13 = sub_10077158C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = sub_10077149C();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = *(v12 + 8 * v14 + 32);
      }

      v18 = v17;
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v10[8] & 1) != 0 || v14 != *v10)
      {
        v15 = [v17 tintColor];
        v16 = v18;
        v1 = v15;
      }

      else
      {
        v15 = [objc_opt_self() whiteColor];
        v16 = v15;
        v1 = v18;
      }

      [v18 setTitleColor:v15 forState:0];

      ++v14;
      if (v2 == v13)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_31:

  result = [v23 setNeedsLayout];
  if ((v10[8] & 1) == 0)
  {
    v20 = *&v23[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
    if (v20)
    {
      v21 = *v10;

      v20(v21);

      return sub_1000167E0(v20);
    }
  }

  return result;
}

uint64_t sub_100704A2C()
{
  sub_10000A5D4(&qword_100966708);
  sub_10070741C();
  return sub_10076F83C();
}

uint64_t sub_100704AA4()
{
  sub_10000A5D4(&qword_100966708);
  sub_10070741C();
  return sub_10076F83C();
}

id sub_100704B1C()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription] setText:0];
  sub_10070328C(_swiftEmptyArrayStorage);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
  [v2 setEnabled:0];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  v20 = v2;
  v21 = v0;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v5 != *v1)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:{0, v20}];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_15:

  [v21 setNeedsLayout];
  v12 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  *(v21 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  aBlock[4] = sub_10070820C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A1808;
  v15 = _Block_copy(aBlock);
  v16 = v21;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
  _Block_release(v15);
  [v16 setUserInteractionEnabled:(*(v21 + v12) & 1) == 0];
  if (*(v21 + v12) == 1)
  {
    v17._countAndFlagsBits = 0x455454494D425553;
    v17._object = 0xE900000000000044;
  }

  else
  {
    v17._countAndFlagsBits = 0x465F54494D425553;
    v17._object = 0xEF4B434142444545;
  }

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1007622EC(v17, v23);
  v18 = sub_10076FF6C();

  [v20 setTitle:v18 forState:0];

  [v20 setEnabled:(*(v21 + v12) & 1) == 0];
  [v20 setNeedsLayout];
  v16[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:0];
  return [v16 setNeedsLayout];
}

uint64_t type metadata accessor for FeedbackButton()
{
  result = qword_100966688;
  if (!qword_100966688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100705030()
{
  sub_1001D92E0();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100705380()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SubmitButtonContainer();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer_submitButton];
  if (v1)
  {
    v2 = v1;
    sub_10076422C();
    [v2 measurementsWithFitting:v0 in:{v3, v4}];
    v5 = v2;
    sub_10076422C();
    [v5 setFrame:?];
  }
}

id sub_1007054AC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100705518()
{
  v0 = sub_10076B75C();
  if (*(v0 + 16))
  {
    sub_10000A570(v0 + 32, v3);

    sub_10000A5D4(&qword_1009575A0);
    sub_100769C2C();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
  }

  return 0;
}

double sub_1007055B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v81 = a4;
  v75 = a3;
  v102 = a2;
  v101 = a1;
  v83 = sub_10077164C();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076DC0C();
  v73 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10076DC2C();
  v72 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10076DC3C();
  v71 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10076DC5C();
  v12 = *(v85 - 1);
  __chkstk_darwin(v85);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10076DC7C();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v103 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076997C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100016F40(0, &qword_100942F00);
  if (qword_100941000 != -1)
  {
    swift_once();
  }

  v80 = v8;
  v82 = v6;
  v20 = sub_10076D3DC();
  sub_10000A61C(v20, qword_1009A1DF8);
  v21 = [a5 traitCollection];
  v22 = sub_100770B3C();

  v23 = sub_10076C04C();
  v111 = v23;
  v97 = sub_100707510(&qword_100943230, &type metadata accessor for Feature);
  v112 = v97;
  v24 = sub_10000DB7C(&v110);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98 = v23;
  v95 = v26;
  v94 = v25 + 104;
  v26(v24);
  v27 = v19;
  v28 = v22;
  sub_10076C90C();
  sub_10000CD74(&v110);

  v77 = v28;
  sub_10076996C();
  sub_10076994C();
  v29 = *(v16 + 8);
  v99 = v18;
  v102 = v15;
  v101 = v16 + 8;
  v93 = v29;
  v29(v18, v15);
  if (qword_100941008 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v20, qword_1009A1E10);
  v84 = a5;
  v31 = [a5 traitCollection];
  v74 = v30;
  v76 = v27;
  v100 = sub_100770B3C();

  (*(v12 + 104))(v86, enum case for VerticalStackLayout.Alignment.center(_:), v85);
  v108 = sub_10076D67C();
  v109 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v107);
  sub_10076D66C();
  sub_10076DC6C();
  v32 = *(v75 + 16);
  if (v32)
  {
    LODWORD(v86) = enum case for VerticalStackLayout.Child.Alignment.left(_:);
    v85 = (v72 + 104);
    v33 = (v73 + 8);
    v34 = (v72 + 8);
    v35 = (v71 + 8);
    v36 = v75 + 40;
    v37 = v89;
    do
    {
      v38 = v98;
      v108 = v98;
      v109 = v97;
      v39 = sub_10000DB7C(&v107);
      v95(v39, v96, v38);

      v40 = v100;
      sub_10076C90C();
      sub_10000CD74(&v107);
      v41 = v99;
      sub_10076996C();
      sub_10076994C();
      v93(v41, v102);
      v42 = v108;
      v43 = v109;
      v44 = sub_10000CF78(&v107, v108);
      v106[3] = v42;
      v106[4] = v43[1];
      v45 = sub_10000DB7C(v106);
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      if (qword_100941570 != -1)
      {
        swift_once();
      }

      v46 = sub_10076D9AC();
      v47 = sub_10000A61C(v46, qword_1009665D8);
      v105[3] = v46;
      v105[4] = &protocol witness table for StaticDimension;
      v48 = sub_10000DB7C(v105);
      (*(*(v46 - 8) + 16))(v48, v47, v46);
      v49 = v90;
      (*v85)(v37, v86, v90);
      v104 = _swiftEmptyArrayStorage;
      sub_100707510(&qword_100966718, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_10000A5D4(&qword_100966720);
      sub_100707558();
      v50 = v91;
      v51 = v92;
      sub_1007712CC();
      v52 = v87;
      sub_10076DC1C();
      (*v33)(v50, v51);
      (*v34)(v37, v49);
      sub_10000CD74(v105);
      sub_10000CD74(v106);
      sub_10000CD74(&v107);
      sub_10076DC4C();
      (*v35)(v52, v88);
      v36 += 16;
      --v32;
    }

    while (v32);
  }

  v53 = v84;
  [v84 pageMarginInsets];
  v92 = v54;
  sub_100770ACC();
  sub_10000CF78(&v110, v111);
  sub_10076D2BC();
  v55 = v79;
  sub_10076D2AC();
  v56 = [v53 traitCollection];
  v57 = sub_100770B3C();

  v113._countAndFlagsBits = 0x465F54494D425553;
  v113._object = 0xEF4B434142444545;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  sub_1007622EC(v113, v114);
  v58 = v98;
  v108 = v98;
  v109 = v97;
  v59 = sub_10000DB7C(&v107);
  v95(v59, v96, v58);
  v60 = v57;
  sub_10076C90C();
  sub_10000CD74(&v107);
  v61 = v99;
  sub_10076996C();
  sub_10076994C();
  v93(v61, v102);
  sub_10000CF78(&v107, v108);
  sub_10076D2BC();
  sub_100770AEC();
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v62 = sub_10076D9AC();
  sub_10000A61C(v62, qword_1009A2350);
  v63 = v80;
  sub_10076D17C();
  sub_10076D40C();
  v64 = *(v82 + 8);
  v65 = v83;
  v64(v63, v83);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v62, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v64(v63, v65);
  if (v81)
  {
    sub_10076D17C();
    sub_10076D40C();
    v64(v63, v65);
    v66 = [v53 traitCollection];
    sub_10076E20C();
  }

  sub_100770AEC();
  v68 = v67;

  (*(v78 + 8))(v103, v55);
  sub_10000CD74(&v107);
  sub_10000CD74(&v110);
  return v68;
}

uint64_t sub_1007064DC(uint64_t a1, void *a2)
{
  result = sub_100705518();
  if (!result)
  {
    return result;
  }

  v4 = sub_100769C0C();
  v6 = v5;
  v7 = sub_100769C1C();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_10077158C();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

LABEL_16:
    v17 = sub_100769BFC();
    sub_1007055B0(v4, v6, _swiftEmptyArrayStorage, v17 & 1, a2);
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1004BBB24(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v18 = v4;
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      v11 = sub_10076A8DC();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1004BBB24((v14 > 1), v15 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
    }

    while (v9 != v10);

    v4 = v18;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007066CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v79 = a3;
  v80 = a4;
  v86 = a2;
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v88 = v75 - v8;
  v9 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v9 - 8);
  v11 = v75 - v10;
  v12 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v12 - 8);
  v78 = v75 - v13;
  v84 = sub_10000A5D4(&qword_100966708);
  v14 = *(v84 - 8);
  v15 = v14[8];
  __chkstk_darwin(v84);
  __chkstk_darwin(v16);
  v85 = v75 - v17;
  result = sub_100705518();
  if (result)
  {
    v75[1] = v15;
    v76 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = v5;
    v19 = *&v5[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
    v20 = result;
    v21 = v19;
    sub_100769C0C();
    v22 = sub_10076FF6C();

    [v21 setText:v22];

    v82 = v20;
    v23 = sub_100769C1C();
    v24 = v23;
    if (v23 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
    {
      v81 = v14;
      v77 = a5;
      if (i)
      {
        aBlock = _swiftEmptyArrayStorage;
        result = sub_1007714EC();
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v87 = v24 & 0xC000000000000001;
        do
        {
          if (v87)
          {
            v27 = sub_10077149C();
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = sub_10076A8EC();
          v29 = type metadata accessor for FeedbackButton();
          v30 = objc_allocWithZone(v29);
          if (v28)
          {
            v90 = v28;
            sub_10076B90C();
            v89 = v27;
            sub_10076F64C();
            sub_100707510(&qword_100956710, &type metadata accessor for Action);
            sub_10076F56C();
            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = sub_10000A5D4(&qword_100955BD0);
          (*(*(v32 - 8) + 56))(v11, v31, 1, v32);
          sub_10070721C(v11, v30 + qword_100966670);
          v97.receiver = v30;
          v97.super_class = v29;
          v33 = objc_msgSendSuper2(&v97, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

          v34 = qword_100941008;
          v35 = v33;
          if (v34 != -1)
          {
            swift_once();
          }

          ++v26;
          v36 = sub_10076D3DC();
          v37 = sub_10000A61C(v36, qword_1009A1E10);
          v38 = *(v36 - 8);
          v39 = v88;
          (*(v38 + 16))(v88, v37, v36);
          (*(v38 + 56))(v39, 0, 1, v36);
          sub_10076311C();

          sub_10076A8DC();
          v40 = sub_10076FF6C();

          [v35 setTitle:v40 forState:0];

          sub_1007714CC();
          sub_1007714FC();
          sub_10077150C();
          sub_1007714DC();
        }

        while (i != v26);

        v41 = aBlock;
        v14 = v81;
      }

      else
      {

        v41 = _swiftEmptyArrayStorage;
      }

      v42 = v83;
      sub_10070328C(v41);
      swift_getObjectType();
      sub_1007687FC();
      v43 = v85;
      sub_10076F87C();
      v89 = v14[2];
      v44 = v76;
      v45 = v43;
      v46 = v84;
      (v89)(v76, v45, v84);
      v11 = ((*(v14 + 80) + 16) & ~*(v14 + 80));
      v47 = swift_allocObject();
      v48 = v14[4];
      v14 += 4;
      a5 = v48;
      (v48)(&v11[v47], v44, v46);
      v49 = &v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v50 = *&v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      *v49 = sub_100707290;
      v49[1] = v47;
      sub_1000167E0(v50);
      (v89)(v44, v85, v46);
      v51 = swift_allocObject();
      (v48)(&v11[v51], v44, v46);
      v52 = &v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v53 = *&v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      *v52 = sub_1007073A0;
      v52[1] = v51;
      sub_1000167E0(v53);
      v54 = sub_100769BFC();
      v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = v54 & 1;
      [*&v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:(v54 & 1) == 0];
      [v42 setNeedsLayout];
      [v77 pageMarginInsets];
      [v42 setLayoutMargins:?];
      v88 = sub_10070741C();
      sub_10076F84C();
      v55 = aBlock;
      v56 = v92;
      v57 = *&v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
      [v57 removeFromSuperlayer];
      v58 = &v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
      *v58 = v55;
      v58[8] = v56;
      if ((v56 & 1) == 0)
      {
        v59 = [v42 contentView];
        v60 = [v59 layer];

        [v60 insertSublayer:v57 atIndex:0];
      }

      v89 = *&v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
      [v89 setEnabled:v56 ^ 1u];
      v61 = *&v42[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
      v24 = v61 >> 62 ? sub_10077158C() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v24)
      {
        break;
      }

      v62 = 0;
      while (1)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v64 = sub_10077149C();
        }

        else
        {
          if (v62 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v64 = *(v61 + 8 * v62 + 32);
        }

        v65 = v64;
        v11 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if ((v58[8] & 1) != 0 || v62 != *v58)
        {
          v63 = [v64 tintColor];
          a5 = v65;
          v14 = v63;
        }

        else
        {
          v63 = [objc_opt_self() whiteColor];
          a5 = v63;
          v14 = v65;
        }

        [v65 setTitleColor:v63 forState:0];

        ++v62;
        if (v11 == v24)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_34:

    v66 = v83;
    [v83 setNeedsLayout];
    sub_10076F84C();
    v67 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
    v66[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = BYTE1(v92) & 1;
    v68 = objc_opt_self();
    v69 = swift_allocObject();
    *(v69 + 16) = v66;
    v95 = sub_1007074A8;
    v96 = v69;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_10009AEDC;
    v94 = &unk_1008A17B8;
    v70 = _Block_copy(&aBlock);
    v71 = v66;

    [v68 animateWithDuration:4 delay:v70 options:0 animations:0.2 completion:0.0];
    _Block_release(v70);
    [v71 setUserInteractionEnabled:(v66[v67] & 1) == 0];
    if (v66[v67])
    {
      v72._countAndFlagsBits = 0x455454494D425553;
      v72._object = 0xE900000000000044;
    }

    else
    {
      v72._countAndFlagsBits = 0x465F54494D425553;
      v72._object = 0xEF4B434142444545;
    }

    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_1007622EC(v72, v98);
    v73 = sub_10076FF6C();

    v74 = v89;
    [v89 setTitle:v73 forState:0];

    [v74 setEnabled:(v66[v67] & 1) == 0];
    [v74 setNeedsLayout];
    [v71 setNeedsLayout];

    return v81[1](v85, v84);
  }

  return result;
}

uint64_t sub_10070721C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100952650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100707290()
{
  sub_10000A5D4(&qword_100966708);

  return sub_100704A2C();
}

uint64_t sub_10070730C()
{
  v1 = sub_10000A5D4(&qword_100966708);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1007073A0()
{
  sub_10000A5D4(&qword_100966708);

  return sub_100704AA4();
}

unint64_t sub_10070741C()
{
  result = qword_100966710;
  if (!qword_100966710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966710);
  }

  return result;
}

uint64_t sub_100707470()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1007074A8()
{
  v1 = *(v0 + 16);
  v2 = 0.6;
  if (!v1[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted])
  {
    v2 = 1.0;
  }

  return [v1 setAlpha:v2];
}

uint64_t sub_1007074DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100707500(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100707510(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100707558()
{
  result = qword_100966728;
  if (!qword_100966728)
  {
    sub_10000CE78(&qword_100966720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966728);
  }

  return result;
}

void sub_1007075BC()
{
  v1 = v0;
  v2 = sub_10076D3DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_100941000 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v2, qword_1009A1DF8);
  v14 = *(v3 + 16);
  v14(v11, v13, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v12) = sub_1007626AC();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons) = _swiftEmptyArrayStorage;
  v16 = v1 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *(v1 + v17) = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_10076313C();
  if (qword_100941008 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v2, qword_1009A1E10);
  v14(v25, v19, v2);
  *(v1 + v18) = sub_10076312C();
  v20 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *(v1 + v20) = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider) = 1;
  v21 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_dividerView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v22 = (v1 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton);
  *v23 = 0;
  v23[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1007079C0()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_10000A5D4(&qword_100955BD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex + 8])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  v12 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v13 >> 62)
  {
    if (v11 >= sub_10077158C())
    {
      return;
    }
  }

  else if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v14 = *&v0[v12];
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = sub_10077149C();

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v15 = *(v14 + 8 * v11 + 32);
LABEL_8:
  sub_1003A683C(v15 + qword_100966670, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_100952650);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_100761FDC();
    v16 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();

    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v3, 1, v16) == 1)
    {
      (*(v8 + 8))(v10, v7);
      sub_10000CFBC(v3, &unk_100943200);
    }

    else
    {
      sub_100761FEC();
      v18 = sub_100761FDC();
      sub_100263BF0(aBlock[0], 1, v18, v3);

      (*(v8 + 8))(v10, v7);

      (*(v17 + 8))(v3, v16);
    }
  }

  v19 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  v0[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 1;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  aBlock[4] = sub_10070820C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A1858;
  v22 = _Block_copy(aBlock);
  v23 = v0;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.2 completion:0.0];
  _Block_release(v22);
  [v23 setUserInteractionEnabled:(v0[v19] & 1) == 0];
  if (v0[v19] == 1)
  {
    v24._countAndFlagsBits = 0x455454494D425553;
    v24._object = 0xE900000000000044;
  }

  else
  {
    v24._countAndFlagsBits = 0x465F54494D425553;
    v24._object = 0xEF4B434142444545;
  }

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007622EC(v24, v29);
  v25 = *&v23[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
  v26 = sub_10076FF6C();

  [v25 setTitle:v26 forState:0];

  [v25 setEnabled:(v0[v19] & 1) == 0];
  [v25 setNeedsLayout];
  v27 = *&v23[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  if (v27)
  {

    v27(1);
    sub_1000167E0(v27);
  }
}
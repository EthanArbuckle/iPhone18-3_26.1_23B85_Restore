uint64_t sub_10051E220()
{
  v0 = sub_10076FBAC();
  sub_10000DB18(v0, qword_1009A0660);
  sub_10000A61C(v0, qword_1009A0660);
  return sub_10076FB9C();
}

uint64_t sub_10051E28C()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v4, v0);
  qword_10095BFC0 = sub_10076FD4C();
  unk_10095BFC8 = &protocol witness table for OSLogger;
  sub_10000DB7C(qword_10095BFA8);
  return sub_10076FD3C();
}

uint64_t sub_10051E3D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10000A5D4(&qword_100956EF8);
  v3 = sub_10076FCEC();
  v4 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((v4 - 1) < 2)
  {
    goto LABEL_6;
  }

  if ((v4 - 3) < 2)
  {
    LOBYTE(v9[0]) = 1;
LABEL_7:
    sub_10076FCBC();
    return v3;
  }

  if (v4)
  {
LABEL_6:
    LOBYTE(v9[0]) = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17EventStoreManager_eventStore);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = ObjectType;
  v9[4] = sub_10051E810;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005F04D8;
  v9[3] = &unk_100898DA8;
  v7 = _Block_copy(v9);

  [v5 requestWriteOnlyAccessToEventsWithCompletion:v7];
  _Block_release(v7);
  return v3;
}

uint64_t sub_10051E53C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_10076FCBC();
  }

  swift_errorRetain();
  if (qword_1009407E0 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10095BFA8, qword_10095BFC0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000DB7C(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_10076F32C();
  sub_1000258C0(v5);
  sub_10076FBCC();

  sub_10076FCAC();
}

uint64_t sub_10051E7D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10051E818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10051E830(char a1)
{
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v58 = &v45 - v3;
  v56 = sub_10076C2DC();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v7 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49.i64[0] = &v45 - v10;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v61 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  sub_10000A5D4(&qword_100942910);
  v20 = *(sub_10076C20C() - 8);
  v57 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 16) = xmmword_1007844F0;
  v54 = v22 + v21;
  if (a1)
  {
    v23 = 1.5;
  }

  else
  {
    v23 = 2.0;
  }

  v63 = *&v23;
  sub_10001E290();
  sub_10076C29C();
  v62 = 0x4030000000000000;
  v63 = 0x4020000000000000;
  sub_10076C27C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v60 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v29 = *(v4 + 104);
  v59 = v4 + 104;
  v55 = v29;
  v30 = v56;
  (v29)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  v45 = v13;
  sub_10076C29C();
  v53 = v18;
  sub_10076C1CC();
  v63 = *&v23;
  sub_10076C29C();
  v62 = 0x4034000000000000;
  v63 = 0x4024000000000000;
  sub_10076C27C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v60;
  v34 = v55;
  v55(v6, v60, v30);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  v35 = v57;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_10076C1CC();
  v46 = 2 * v35;
  v63 = 0x4008000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  v51 = v6;
  *v6 = v49;
  v36 = v56;
  v34(v6, v33, v56);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  v37 = v46;
  v38 = v51;
  sub_10076C1CC();
  v39 = v57;
  v46 = v37 + v57;
  v63 = 0x4010000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  *v38 = v49;
  v40 = v36;
  v41 = v55;
  v55(v38, v60, v40);
  sub_1007704BC();
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  v42 = v51;
  sub_10076C1CC();
  v46 = 4 * v39;
  v63 = 0x4014000000000000;
  sub_10076C29C();
  v63 = 0x4038000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v42 = v49;
  v43 = v56;
  v41(v42, v60, v56);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v63 = 0x4018000000000000;
  sub_10076C29C();
  v63 = 0x4038000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  *v42 = v49;
  v55(v42, v60, v43);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v50;
}

uint64_t sub_10051F26C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_10095C000);
  v4 = *(v1 + qword_10095C008);
  v5 = type metadata accessor for TopChartsSegmentPageGridProvider();
  v6 = swift_allocObject();
  sub_100760F1C();
  swift_allocObject();
  *(v6 + 24) = sub_100760F0C();
  *(v6 + 16) = v3;
  *(v6 + 17) = v4;
  a1[3] = v5;
  result = sub_10051F7D8(&qword_10095C5B8, type metadata accessor for TopChartsSegmentPageGridProvider);
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_10051F338@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1[3] = &type metadata for TopChartSegmentPageShelfLayoutSpacingProvider;
  result = sub_10051F784();
  a1[4] = result;
  *a1 = sub_10051F764;
  a1[1] = v2;
  return result;
}

void *sub_10051F3AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TopChartSegmentShelfSupplementaryProvider();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_10051F820;
  v3[4] = v2;
  sub_10051F7D8(&qword_10095C5A8, type metadata accessor for TopChartSegmentShelfSupplementaryProvider);

  return v3;
}

uint64_t sub_10051F47C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong[qword_10095C000];

  return v1;
}

uint64_t sub_10051F4E0(char a1, char a2)
{
  swift_getObjectType();
  v5 = qword_10095C000;
  *(v2 + qword_10095C000) = a1 & 1;
  *(v2 + qword_10095C008) = a2 & 1;
  sub_10051F7D8(&qword_10095C598, type metadata accessor for TopChartDiffableSegmentViewController);
  sub_10076A64C();
  sub_10000A5D4(&unk_100950690);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  result = swift_dynamicCast();
  if (result)
  {
    *(v7 + 16) = *(v2 + v5);
    *(v7 + 17) = a2 & 1;
    sub_10051F7D8(&qword_10095C5A0, type metadata accessor for TopChartsSegmentPageGridProvider);
    sub_1007620CC();
  }

  return result;
}

uint64_t type metadata accessor for TopChartDiffableSegmentViewController()
{
  result = qword_10095C038;
  if (!qword_10095C038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10051F6D8()
{
  result = qword_10095C590;
  if (!qword_10095C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C590);
  }

  return result;
}

uint64_t sub_10051F72C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10051F784()
{
  result = qword_10095C5B0;
  if (!qword_10095C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C5B0);
  }

  return result;
}

uint64_t sub_10051F7D8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10051F824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v44 = a2;
  v4 = sub_1007679DC();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007688CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v62 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
  v59 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
  v56 = enum case for MetadataRibbonItemViewType.starRating(_:);
  v57 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
  v54 = enum case for MetadataRibbonItemViewType.divider(_:);
  v55 = enum case for MetadataRibbonItemViewType.textLabel(_:);
  v61 = a1 & 0xC000000000000001;
  v53 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
  v51 = a1;
  if (v13)
  {
    v52 = v9;
    v9 = v13;
    v14 = 0;
    v60 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 + 11);
    v50 = v7++;
    while (1)
    {
      if (v61)
      {
        sub_10077149C();
        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v24 = v62;
          v13 = v9;
          v9 = v52;
          v7 = v50;
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *(v60 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v13 = sub_10077158C();
          goto LABEL_3;
        }

        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      sub_10076432C();
      v17 = (*v15)(v12, v6);
      if (v17 == v59 || v17 == v58 || v17 == v57 || v17 == v56 || v17 == v55 || v17 == v54 || v17 == v53)
      {
        sub_1007714CC();
        sub_1007714FC();
        a1 = v51;
        sub_10077150C();
        sub_1007714DC();
      }

      else
      {

        (*v7)(v12, v6);
      }

      ++v14;
      if (v16 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v60 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = _swiftEmptyArrayStorage;
LABEL_35:
  v25 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  v26 = v48;
  swift_beginAccess();
  *&v26[v25] = v24;

  if (v13)
  {
    v52 = v13;
    v27 = 0;
    v28 = (v7 + 11);
    ++v7;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v50 = v29;
      v12 = v27;
      while (1)
      {
        if (v61)
        {
          sub_10077149C();
          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v60 + 16))
          {
            goto LABEL_70;
          }

          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        sub_10076432C();
        v30 = (*v28)(v9, v6);
        if (v30 == v59)
        {
          type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
          v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
          v32 = &unk_1009428B8;
          goto LABEL_60;
        }

        if (v30 == v58)
        {
          type metadata accessor for MetadataRibbonEditorsChoiceView();
          v31 = type metadata accessor for MetadataRibbonEditorsChoiceView;
          v32 = &unk_1009428B0;
          goto LABEL_60;
        }

        if (v30 == v57)
        {
          type metadata accessor for MetadataRibbonIconWithLabelView(0);
          v31 = type metadata accessor for MetadataRibbonIconWithLabelView;
          v32 = &unk_1009428A8;
          goto LABEL_60;
        }

        if (v30 == v56)
        {
          type metadata accessor for MetadataRibbonStarRatingView();
          v31 = type metadata accessor for MetadataRibbonStarRatingView;
          v32 = &unk_1009428C0;
          goto LABEL_60;
        }

        if (v30 == v55)
        {
          type metadata accessor for MetadataRibbonTagView();
          v31 = type metadata accessor for MetadataRibbonTagView;
          v32 = &unk_100942898;
          goto LABEL_60;
        }

        if (v30 == v54)
        {
          type metadata accessor for MetadataRibbonBarView();
          v31 = type metadata accessor for MetadataRibbonBarView;
          v32 = &unk_1009428A0;
          goto LABEL_60;
        }

        if (v30 == v53)
        {
          break;
        }

        (*v7)(v9, v6);
        ++v12;
        if (v27 == v52)
        {
          v29 = v50;
          goto LABEL_67;
        }
      }

      type metadata accessor for MetadataRibbonHighlightedTextView();
      v31 = type metadata accessor for MetadataRibbonHighlightedTextView;
      v32 = &unk_100942888;
LABEL_60:
      v33 = sub_100521F9C(v32, v31);
      v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10076697C();
      sub_10076434C();
      sub_10076695C();

      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10049D090(0, v29[2] + 1, 1, v29);
      }

      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        v29 = sub_10049D090((v35 > 1), v36 + 1, 1, v29);
      }

      v29[2] = (v36 + 1);
      v37 = &v29[2 * v36];
      v37[4] = v34;
      v37[5] = v33;
      a1 = v51;
    }

    while (v27 != v52);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_67:
  v38 = v48;
  sub_10052032C(v29);
  v40 = v46;
  v39 = v47;
  v41 = v45;
  (*(v46 + 16))(v45, v44, v47);
  v42 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v40 + 24))(&v38[v42], v41, v39);
  swift_endAccess();
  [v38 setNeedsLayout];
  (*(v40 + 8))(v41, v39);
  return [v38 setNeedsLayout];
}

id sub_1005201B0()
{
  v1 = v0;
  v2 = sub_1007679DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v7 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);

  v8 = sub_1007679BC();
  (*(v3 + 8))(v5, v2);
  result = sub_100236B78(v8, v6);
  v13 = (v12 >> 1) - v11;
  if (v12 >> 1 == v11)
  {
    goto LABEL_5;
  }

  if ((v12 >> 1) > v11)
  {
    v14 = (v10 + 16 * v11);
    do
    {
      v15 = *v14;
      v14 += 2;
      [v1 addSubview:v15];
      --v13;
    }

    while (v13);
LABEL_5:
    swift_unknownObjectRelease();
    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

id sub_10052032C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      [*(v4 + v6) removeFromSuperview];
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + v3) = a1;

  return sub_1005201B0();
}

uint64_t MetadataRibbonView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  v4 = sub_1007679DC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100520450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  v5 = sub_1007679DC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1005204DC(uint64_t a1, void **a2)
{
  v4 = sub_1007679DC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 24))(&v9[v10], v8, v4);
  swift_endAccess();
  [v9 setNeedsLayout];
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall MetadataRibbonView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_10076D1FC();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007679DC();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007679EC();
  v28 = *(v29 - 8);
  *&v5 = __chkstk_darwin(v29).n128_u64[0];
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v31 = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v5);
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      swift_getObjectType();
      v13 = v12;
      sub_10076690C();
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v34 = v40;
      v35 = v41;

      if (*(&v35 + 1))
      {
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v45 = v39;
        v40 = v34;
        v41 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10049CD80(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_10049CD80((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        v16 = &v10[11 * v15];
        v17 = v41;
        *(v16 + 2) = v40;
        *(v16 + 3) = v17;
        v18 = v42;
        v19 = v43;
        v20 = v44;
        *(v16 + 56) = v45;
        *(v16 + 5) = v19;
        *(v16 + 6) = v20;
        *(v16 + 4) = v18;
      }

      else
      {
        sub_10000CFBC(&v34, &qword_10095C5C8);
      }

      ++v9;
      v11 += 16;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v25 + 16))(v24, &v1[v21], v27);
    v22 = v26;
    sub_10076798C();
    sub_10076422C();
    v23 = v30;
    sub_1007679AC();
    (*(v32 + 8))(v23, v33);
    (*(v28 + 8))(v22, v29);
  }
}

uint64_t MetadataRibbonView.measurements(fitting:in:)(uint64_t a1)
{
  v29 = a1;
  v27 = sub_1007679DC();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1007679EC();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = v4 + 40;
    while (v7 < *(v4 + 16))
    {
      v10 = *(v9 - 8);
      swift_getObjectType();
      v11 = v10;
      sub_10076690C();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;

      if (*(&v31 + 1))
      {
        v38 = v32;
        v39 = v33;
        v40 = v34;
        v41 = v35;
        v36 = v30;
        v37 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10049CD80(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_10049CD80((v12 > 1), v13 + 1, 1, v8);
          v8 = result;
        }

        v8[2] = v13 + 1;
        v14 = &v8[11 * v13];
        v15 = v37;
        *(v14 + 2) = v36;
        *(v14 + 3) = v15;
        v16 = v38;
        v17 = v39;
        v18 = v40;
        *(v14 + 56) = v41;
        *(v14 + 5) = v17;
        *(v14 + 6) = v18;
        *(v14 + 4) = v16;
      }

      else
      {
        result = sub_10000CFBC(&v30, &qword_10095C5C8);
      }

      ++v7;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v19 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    v20 = v28;
    swift_beginAccess();
    (*(v25 + 16))(v23, v20 + v19, v27);
    v21 = v22;
    sub_10076798C();
    sub_10076799C();
    return (*(v24 + 8))(v21, v26);
  }

  return result;
}

uint64_t MetadataRibbonView.hasContent.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1000E99EC(0, v2);

  return v3 & 1;
}

uint64_t MetadataRibbonView.isInsideSearchAd.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MetadataRibbonView.isInsideSearchAd.setter(char a1)
{
  v3 = sub_1007679DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v1[v7] = a1;
  if (a1)
  {
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    v9 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v4 + 24))(&v1[v9], v6, v3);
    swift_endAccess();
    [v1 setNeedsLayout];
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void (*MetadataRibbonView.isInsideSearchAd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_1007679DC();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  v4[9] = v7;
  v4[10] = v8;
  swift_beginAccess();
  return sub_100521360;
}

void sub_100521360(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    if (v4[*(v3 + 80)] == 1)
    {
      v6 = *(v3 + 64);
      v5 = *(v3 + 72);
      v7 = *(v3 + 56);
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      v8 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v4[v8], v5, v7);
      swift_endAccess();
      [v4 setNeedsLayout];
      (*(v6 + 8))(v5, v7);
    }
  }

  free(*(v3 + 72));

  free(v3);
}

uint64_t type metadata accessor for MetadataRibbonView()
{
  result = qword_10095C5F8;
  if (!qword_10095C5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100521534()
{
  result = sub_1007679DC();
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

uint64_t sub_1005215E8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10076BEDC();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews);
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_24;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v10)
    {
      v11 = 0;
      v23 = v10;
      v24 = v7 & 0xC000000000000001;
      v17 = v3 + 1;
      v18 = v7;
      v12 = 32;
      v19 = v8;
      do
      {
        if (v24)
        {
          sub_10077149C();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v10 = sub_10077158C();
            goto LABEL_4;
          }
        }

        v13 = *(v8 + 16);
        if (v11 == v13)
        {

          break;
        }

        if (v11 >= v13)
        {
          goto LABEL_23;
        }

        v3 = *(v8 + v12);
        type metadata accessor for MetadataRibbonIconWithLabelView(0);
        if (swift_dynamicCastClass())
        {
          v14 = v3;
          v15 = sub_10076436C();
          if (v15)
          {
            v3 = v15;
            v16 = v20;
            sub_10076BEEC();
            sub_10076BE9C();
            (*v17)(v16, v21);
            sub_10076BFCC();
            sub_100760C4C();
            sub_10075FD2C();
            sub_100760BCC();
            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_100760B7C();

            sub_10000CFBC(v25, &qword_100943310);
            v7 = v18;
            v8 = v19;
          }

          else
          {
          }

          v10 = v23;
        }

        else
        {
        }

        ++v11;
        v12 += 16;
      }

      while (v10 != v11);
    }
  }

  return result;
}

uint64_t sub_100521944()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100521984(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = sub_10076BEDC();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10076D39C();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076AA4C();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007688CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_10077158C();
    if (result)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (result >= 1)
  {
    v16 = 0;
    v39 = a1 & 0xC000000000000001;
    v38 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
    v37 = (v9 + 104);
    v17 = (v9 + 8);
    v27 = (v4 + 8);
    v26 = (v6 + 8);
    v25 = (v36 + 8);
    v35 = _swiftEmptyArrayStorage;
    v36 = a1;
    v40 = result;
    while (1)
    {
      if (v39)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_10076432C();
      (*v37)(v11, v38, v8);
      sub_100521F9C(&qword_10095C608, &type metadata accessor for MetadataRibbonItemViewType);
      sub_10077018C();
      sub_10077018C();
      if (v41[0] == v41[5] && v41[1] == v41[6])
      {
        v18 = *v17;
        (*v17)(v11, v8);
        v18(v14, v8);
      }

      else
      {
        v19 = sub_10077167C();
        v20 = *v17;
        (*v17)(v11, v8);
        v20(v14, v8);

        if ((v19 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (sub_10076436C())
      {
        v21 = v28;
        sub_10076AA2C();
        sub_10076AA1C();
        sub_10000CF78(v41, v41[3]);
        sub_10076D41C();
        sub_10000CD74(v41);
        sub_10076BEFC();
        v22 = v30;
        sub_10076D3AC();
        sub_10076D35C();
        (*v27)(v22, v31);
        (*v26)(v21, v29);
        v23 = v32;
        sub_10076BEEC();
        sub_10076BE9C();
        (*v25)(v23, v33);
        sub_10076BFCC();
        sub_10077019C();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v35 = v42;
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      if (v40 == ++v16)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100521F9C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100521FE4(int a1, int a2, int a3, int a4, int a5, id a6, double a7)
{
  v9 = [a6 traitCollection];
  if (sub_1007706FC())
  {
    sub_10077071C();
  }

  v10 = sub_1000BF38C(a6, a7);

  return v10;
}

uint64_t sub_100522118(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100522160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView];
  v8 = [v3 traitCollection];
  v9 = sub_1007706FC();

  if (v9)
  {
    v10 = [v4 traitCollection];
    v11 = sub_10077071C();

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  [v7 setHidden:v12 & 1];
  sub_1000BED74(a1, 0, a3);

  return [v4 setNeedsLayout];
}

double sub_10052225C()
{
  v1 = v0;
  v2 = sub_10076747C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076749C();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v2, qword_1009A0690);
  (*(v3 + 16))(v5, v8, v2);
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v9[v11], v120);
    sub_10000CF78(v120, v121);
    sub_100767A2C();
    v13 = v12;
    v15 = v14;
    sub_10000CD74(v120);
    *v10 = v13;
    *(v10 + 1) = v15;
    v10[16] = 0;
  }

  sub_10076746C();
  v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v17 = sub_10075FD2C();
  v122 = &protocol witness table for UIView;
  v121 = v17;
  v67 = v16;
  v120[0] = v16;
  v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  v66 = v18;
  if (v18)
  {
    v19 = sub_1007626BC();
    v20 = &protocol witness table for UILabel;
    v21 = v18;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v116 = 0;
    v117 = 0;
  }

  v115 = v21;
  v118 = v19;
  v119 = v20;
  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v23 = sub_1007626BC();
  v24 = v23;
  v114 = &protocol witness table for UILabel;
  v113 = v23;
  v112 = v22;
  v25 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v111 = &protocol witness table for UILabel;
  v110 = v23;
  v64 = v25;
  v65 = v22;
  v109 = v25;
  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    v29 = v23;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v105 = 0;
    v106 = 0;
  }

  v104 = v28;
  v107 = v29;
  v108 = v27;
  v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v102 = v23;
  v103 = &protocol witness table for UILabel;
  v63 = v30;
  v101 = v30;
  v99 = type metadata accessor for OfferButton();
  v100 = &protocol witness table for UIView;
  v98 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView);
  v96 = type metadata accessor for RatingView();
  v97 = &protocol witness table for UIView;
  v94 = &protocol witness table for UILabel;
  v95 = v31;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel);
  v93 = v24;
  v61 = v32;
  v62 = v31;
  v92 = v32;
  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView);
  v68 = v9;
  if (v33)
  {
    v34 = type metadata accessor for EditorsChoiceView();
    v35 = &protocol witness table for UIView;
    v36 = v33;
  }

  else
  {
    v36 = 0;
    v34 = 0;
    v35 = 0;
    v88 = 0;
    v89 = 0;
  }

  v87 = v36;
  v90 = v34;
  v91 = v35;
  v37 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton);
  v69 = v5;
  if (v37)
  {
    v38 = type metadata accessor for SearchAdTransparencyButton();
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v83 = 0;
    v84 = 0;
  }

  v81 = &protocol witness table for UILabel;
  v82 = v37;
  v85 = v38;
  v86 = v39;
  v40 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel);
  v80 = v24;
  v79 = v40;
  v41 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v77 = type metadata accessor for MetadataRibbonView();
  v78 = &protocol witness table for UIView;
  v76 = v41;
  v42 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView);
  v74 = type metadata accessor for SearchTagsRibbonView();
  v75 = &protocol witness table for UIView;
  v73 = v42;
  v43 = v33;
  v44 = v37;
  v45 = v40;
  v46 = v41;
  v42;
  v47 = v67;
  v48 = v66;
  v49 = v65;
  v50 = v64;
  v51 = v26;
  v52 = v63;
  v53 = v68;
  v54 = v62;
  v55 = v61;
  MetadataRibbonView.hasContent.getter();
  sub_1004EEFC8();
  v56 = v70;
  sub_10076748C();
  sub_100526680(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout);
  v57 = v72;
  sub_10076D2AC();
  v59 = v58;
  (*(v71 + 8))(v56, v57);
  return v59;
}

id sub_100522870()
{
  v1 = v0;
  v2 = sub_1007679DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_10075FCEC(v20, v6);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, sub_100016F40(0, &qword_1009441F0), v10 = v0, v11 = sub_100770EEC(), v9, v10, (v11 & 1) == 0))
  {
    [v1 addSubview:v7];
  }

  [v7 setHidden:1];
  [v7 setText:0];
  [v1 setNeedsLayout];
  v12 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v12];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v12] = 0;

  v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v16 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  *&v15[v16] = _swiftEmptyArrayStorage;

  sub_10052032C(_swiftEmptyArrayStorage);
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  v17 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v15[v17], v5, v2);
  swift_endAccess();
  [v15 setNeedsLayout];
  (*(v3 + 8))(v5, v2);
  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = _swiftEmptyArrayStorage;

  return sub_1004EDB68(_swiftEmptyArrayStorage);
}

uint64_t sub_100522B20()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_10076611C();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  type metadata accessor for SearchTagsRibbonView();
  sub_100526680(&qword_10095C6D0, type metadata accessor for SearchTagsRibbonView);
  return sub_10076A02C();
}

void sub_100522C28(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }
}

uint64_t sub_100522CD0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076747C();
  sub_10000DB18(v4, qword_1009A0690);
  v46 = sub_10000A61C(v4, qword_1009A0690);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0x4024000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CD0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  v7(v3, enum case for FontSource.useCase(_:), v0);
  v50 = v7;
  v93 = sub_10076D9AC();
  v94 = &protocol witness table for StaticDimension;
  v8 = v93;
  v47 = v93;
  sub_10000DB7C(v92);
  v90 = v0;
  v91 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v89);
  v52 = v1[2];
  v52(v9, v3, v0);
  v48 = v1 + 2;
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v53 = v1 + 1;
  *v3 = UIFontTextStyleBody;
  v49 = enum case for FontSource.textStyle(_:);
  v54 = v1 + 13;
  (v7)(v3);
  v90 = v8;
  v91 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v89);
  v87 = v0;
  v88 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v86);
  v12 = v52;
  v52(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_10076D9BC();
  v10(v3, v0);
  *v3 = v13;
  v14 = v49;
  v15 = v50;
  v50(v3, v49, v0);
  v87 = v47;
  v88 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v86);
  v84 = v0;
  v85 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v83);
  v12(v16, v3, v0);
  v17 = v13;
  sub_10076D9BC();
  v10(v3, v0);
  v51 = v10;
  *v3 = v17;
  v15(v3, v14, v0);
  v18 = v47;
  v84 = v47;
  v85 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v83);
  v81 = v0;
  v82 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v80);
  v20 = v52;
  v52(v19, v3, v0);
  v21 = v17;
  sub_10076D9BC();
  v10(v3, v0);
  *v3 = v21;
  v50(v3, v49, v0);
  v81 = v18;
  v82 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v80);
  v78 = v0;
  v79 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v77);
  v20(v22, v3, v0);
  v23 = v21;
  sub_10076D9BC();
  v51(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v24 = v49;
  v25 = v50;
  v50(v3, v49, v0);
  v26 = v18;
  v78 = v18;
  v79 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v77);
  v75 = v0;
  v76 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v74);
  v28 = v52;
  v52(v27, v3, v0);
  v29 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v30 = v51;
  v51(v3, v0);
  *v3 = v29;
  v25(v3, v24, v0);
  v75 = v26;
  v76 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v71);
  v28(v31, v3, v0);
  v32 = v29;
  sub_10076D9BC();
  v30(v3, v0);
  *v3 = v32;
  v33 = v49;
  v34 = v50;
  v50(v3, v49, v0);
  v72 = v26;
  v73 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v68);
  v52(v35, v3, v0);
  v36 = v32;
  sub_10076D9BC();
  v51(v3, v0);
  *v3 = v36;
  v34(v3, v33, v0);
  v69 = v26;
  v70 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(v65);
  v38 = v52;
  v52(v37, v3, v0);
  v39 = v36;
  sub_10076D9BC();
  v40 = v51;
  v51(v3, v0);
  *v3 = v39;
  v34(v3, v33, v0);
  v66 = v26;
  v67 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v41 = sub_10000DB7C(v62);
  v38(v41, v3, v0);
  v42 = v39;
  sub_10076D9BC();
  v40(v3, v0);
  v64 = &protocol witness table for Double;
  v63 = &type metadata for Double;
  v61[19] = &protocol witness table for Double;
  v62[0] = 0x4024000000000000;
  v61[18] = &type metadata for Double;
  v61[14] = &protocol witness table for Double;
  v61[15] = 0x4010000000000000;
  v61[13] = &type metadata for Double;
  v61[9] = &protocol witness table for Double;
  v61[10] = 0x4020000000000000;
  v61[8] = &type metadata for Double;
  v61[5] = 0x401C000000000000;
  *v3 = v42;
  v50(v3, v49, v0);
  v61[3] = v47;
  v61[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(v58);
  v52(v43, v3, v0);
  v44 = v42;
  sub_10076D9BC();
  v51(v3, v0);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v57 = &protocol witness table for Double;
  v58[0] = 0x4040000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4024000000000000;
  return sub_10076744C();
}

uint64_t sub_100523664()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_10095C660);
  sub_10000A61C(v0, qword_10095C660);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_100523700(char a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] != (a1 & 1))
  {
    v2 = v1;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice])
    {
      v3 = v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_useAdsLocale];
      v4 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
      v5 = sub_100040B8C(2u, 0, 0, v3, 0);
      v6 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView;
      v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
      *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView] = v5;

      v8 = *&v2[v6];
      if (!v8 || (sub_100016F40(0, &qword_100942F10), v9 = v8, v10 = sub_100770D1C(), [v9 setTintColor:v10], v9, v10, !*&v2[v6]))
      {
        __break(1u);
        return;
      }

      [v2 addSubview:?];
    }

    else
    {
      v11 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView;
      v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v11] = 0;
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_10052385C()
{
  v1 = sub_1007679DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v6 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd;
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v5[v8] = v7;
  if (v7 == 1)
  {
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    v10 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v2 + 24))(&v5[v10], v4, v1);
    swift_endAccess();
    [v5 setNeedsLayout];
    result = (*(v2 + 8))(v4, v1);
  }

  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView) + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_isInsideSearchAd) = *(v0 + v6);
  return result;
}

char *sub_1005239EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v101 = sub_10076771C();
  v103 = *(v101 - 1);
  __chkstk_darwin(v101);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v15 = sub_10076D1AC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRegularMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataSmallMargin] = 0x401C000000000000;
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v98 = v11;
  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1D80);
  v100 = *(v19 - 8);
  v102 = *(v100 + 16);
  v104 = v100 + 16;
  v102(v18, v20, v19);
  (*(v16 + 104))(v18, enum case for FontSource.useCase(_:), v15);
  v109 = v15;
  v110 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v108);
  (*(v16 + 16))(v21, v18, v15);
  sub_10076D9BC();
  (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = 0x4040000000000000;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
  v22 = type metadata accessor for RatingView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v24 = &v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v24 = 0;
  v24[8] = 1;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v25 = qword_100944D30;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 3;
  *v24 = 0;
  v24[8] = 1;
  v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 0;
  v26 = type metadata accessor for StarRow();
  v27 = objc_allocWithZone(v26);
  v28 = v25;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 3, 0, 1, 0, 0);
  v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v29 = objc_allocWithZone(v26);
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 3, 0, 1, 0, 0);
  v107.receiver = v23;
  v107.super_class = v22;
  v30 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v31 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v32 = *&v30[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v33 = *&v32[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v32[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v30[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v34 = v32;
  sub_100062B94(v33);

  if (*&v30[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v30 addSubview:?];
  }

  v35 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView;
  [v30 addSubview:*&v30[v31]];

  *&v5[v35] = v30;
  v36 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
  v37 = v103;
  if (qword_100940E88 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v19, qword_1009A1990);
  v102(v14, v38, v19);
  v39 = *(v100 + 56);
  v39(v14, 0, 1, v19);
  v40 = *(v37 + 104);
  v103 = v37 + 104;
  v41 = v98;
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v97 = v40;
  v40(v98);
  v42 = sub_1007626BC();
  v43 = objc_allocWithZone(v42);
  *&v5[v36] = sub_1007626AC();
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_useAdsLocale] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView] = 0;
  v44 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView;
  *&v5[v44] = [objc_allocWithZone(type metadata accessor for MetadataRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView;
  *&v5[v45] = [objc_allocWithZone(type metadata accessor for SearchTagsRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute] = 2;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsCalculator] = 0;
  v46 = &v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock];
  *v46 = 0;
  v46[1] = 0;
  if (qword_100940E80 != -1)
  {
    swift_once();
  }

  v47 = sub_10000A61C(v19, qword_1009A1978);
  v48 = v102;
  v102(v14, v47, v19);
  v95 = v19;
  v96 = v39;
  v39(v14, 0, 1, v19);
  v97(v41, v100, v101);
  v49 = objc_allocWithZone(v42);
  v50 = &unk_1009A0000;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel] = sub_1007626AC();
  v106.receiver = v5;
  v106.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v106, "initWithFrame:", a1, a2, a3, a4);
  v52 = sub_10076C04C();
  v109 = v52;
  v53 = sub_100526680(&qword_100943230, &type metadata accessor for Feature);
  v110 = v53;
  v54 = sub_10000DB7C(v108);
  v55 = *(v52 - 8);
  v56 = *(v55 + 104);
  LODWORD(v103) = enum case for Feature.search_tags(_:);
  ObjectType = v52;
  v100 = v55 + 104;
  v101 = v56;
  (v56)(v54);
  LOBYTE(v52) = sub_10076C90C();
  sub_10000CD74(v108);
  v57 = v48;
  if (v52)
  {
    v98 = v53;
    v58 = v51;
    if (qword_100940A60 != -1)
    {
      swift_once();
    }

    v59 = v95;
    v60 = sub_10000A61C(v95, qword_1009A0D30);
    v48(v14, v60, v59);
    v61 = v14;
    v62 = v14;
    v63 = v96;
    v96(v61, 0, 1, v59);
    sub_1007625DC();
    v64 = qword_100940A70;
    v65 = *&v58[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    if (v64 != -1)
    {
      swift_once();
    }

    v66 = sub_10000A61C(v59, qword_1009A0D60);
    v57(v62, v66, v59);
    v63(v62, 0, 1, v59);
    sub_1007625DC();

    v67 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
    v68 = *&v58[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_10076D84C();
    if (qword_10093F6A0 != -1)
    {
      swift_once();
    }

    v69 = sub_10076715C();
    v70 = sub_10000A61C(v69, qword_10099CE50);
    v109 = v69;
    v110 = sub_100526680(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
    v71 = sub_10000DB7C(v108);
    (*(*(v69 - 8) + 16))(v71, v70, v69);
    sub_1007625FC();

    v72 = *&v58[v67];
    sub_100016F40(0, &qword_100942F10);
    v73 = v72;
    v74 = sub_100770D1C();
    [v73 setTextColor:v74];

    [*&v58[v67] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v75 = v98;
    v50 = &unk_1009A0000;
  }

  else
  {
    v76 = *&v51[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_100016F40(0, &qword_100942F10);
    v77 = v76;
    v78 = sub_100770D0C();
    [v77 setTextColor:v78];

    v75 = v53;
    v58 = v51;
  }

  v79 = v50[220];
  v80 = *&v58[v79];
  sub_100016F40(0, &qword_100942F10);
  v81 = v80;
  v82 = sub_100770D1C();
  [v81 setTextColor:v82];

  [*&v58[v79] setUserInteractionEnabled:0];
  v83 = v103;
  if (qword_1009407F0 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v84, qword_10095C660);
  v105 = v58;
  v85 = v58;
  sub_10075FDCC();

  sub_100770E7C();
  [v85 addSubview:*&v85[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView]];
  v86 = ObjectType;
  v109 = ObjectType;
  v110 = v75;
  v87 = sub_10000DB7C(v108);
  v88 = v101;
  v101(v87, v83, v86);
  v89 = sub_10076C90C();
  sub_10000CD74(v108);
  if (v89)
  {
    [v85 addSubview:*&v85[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel]];
  }

  v109 = v86;
  v110 = v75;
  v90 = sub_10000DB7C(v108);
  v88(v90, v83, v86);
  v91 = sub_10076C90C();
  sub_10000CD74(v108);
  v92 = &OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView;
  if ((v91 & 1) == 0)
  {
    v92 = &OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView;
  }

  [v85 addSubview:*&v85[*v92]];
  *(*&v85[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding) = 0;
  return v85;
}

double sub_100524828(void *a1)
{
  v112 = a1;
  v2 = sub_10076749C();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin(v2);
  v100 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007679DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076997C();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076443C();
  v109 = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  v105 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v82 - v12;
  v13 = sub_10076747C();
  v106 = *(v13 - 8);
  __chkstk_darwin(v13);
  v99 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v24 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v25 = *(v23 + v24);
  v26 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v22, v23 + v26, v4);
  v86 = v5;
  v87 = v4;
  v27 = *(v5 + 56);
  v103 = v22;
  v27(v22, 0, 1, v4);
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView];
  v29 = *(v28 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
  v84 = *(v28 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_shouldEvenlyDistribute);
  v104 = v29;

  v111 = v25;

  [v1 layoutMargins];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v13, qword_1009A0690);
  v96 = *(v106 + 16);
  v97 = v106 + 16;
  v96(v17, v30, v13);
  v31 = v112;
  v32 = sub_10077071C();
  v108 = v13;
  if (v32)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v33 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v33 = qword_100944CA0;
  }

  v34 = v110;
  v35 = sub_10000A61C(v110, v33);
  v36 = v109;
  v37 = v105;
  (*(v109 + 16))(v105, v35, v34);
  (*(v36 + 32))(v107, v37, v34);
  v38 = [v31 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  v105 = v17;
  sub_10076745C();
  v92 = sub_10076DDDC();
  swift_allocObject();
  v98 = sub_10076DDBC();
  v39 = objc_opt_self();
  v90 = v39;
  v40 = [v39 preferredFontForTextStyle:UIFontTextStyleBody];
  v41 = sub_10076C04C();
  v149[3] = v41;
  v42 = sub_100526680(&qword_100943230, &type metadata accessor for Feature);
  v149[4] = v42;
  v43 = sub_10000DB7C(v149);
  v44 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v45 = *(v41 - 8);
  v91 = *(v45 + 104);
  v46 = v45 + 104;
  v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v91(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
  v89 = v46;
  sub_10076C90C();
  sub_10000CD74(v149);
  v47 = v93;
  sub_10076996C();
  sub_10076994C();
  v48 = v95;
  v94 = *(v94 + 8);
  (v94)(v47, v95);
  v49 = [v39 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v148[3] = v41;
  v148[4] = v42;
  v50 = sub_10000DB7C(v148);
  v51 = v44;
  v52 = v91;
  v91(v50, v51, v41);
  sub_10076C90C();
  sub_10000CD74(v148);
  sub_10076996C();
  sub_10076994C();
  v53 = v94;
  (v94)(v47, v48);
  v54 = [v90 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v41;
  v147[4] = v42;
  v55 = sub_10000DB7C(v147);
  v52(v55, v88, v41);
  sub_10076C90C();
  sub_10000CD74(v147);
  sub_10076996C();
  sub_10076994C();
  v53(v47, v48);
  v56 = v111;
  LODWORD(v95) = sub_10001D420(0, v111) & (v56 != 0);
  if (v95 == 1)
  {
    v57 = v92;
    v58 = objc_allocWithZone(sub_10076DEDC());
    v59 = v112;
    v60 = sub_10076DECC();
    v61 = v83;
    sub_10047C764(v103, v83);
    v63 = v86;
    v62 = v87;
    v64 = *(v86 + 48);
    if (v64(v61, 1, v87) == 1)
    {
      v65 = v85;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v64(v61, 1, v62) != 1)
      {
        sub_100526618(v61);
      }
    }

    else
    {
      v65 = v85;
      (*(v63 + 32))(v85, v61, v62);
    }

    v67 = v60;
    sub_10001A588(v111, v65, v67);

    (*(v63 + 8))(v65, v62);
    swift_allocObject();
    v66 = sub_10076DDAC();
  }

  else
  {
    v57 = v92;
    swift_allocObject();
    v66 = sub_10076DDBC();
  }

  v68 = v66;

  v69 = v104;
  if ((sub_10001D420(v104, 0) & (v69 != 0)) == 1)
  {
    sub_1004EF9EC(v69, v84);
    swift_allocObject();
    v70 = sub_10076DDAC();
  }

  else
  {
    swift_allocObject();
    v70 = sub_10076DDBC();
  }

  v71 = v70;
  v96(v99, v105, v108);
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v57;
  v144 = v98;
  v143 = 0;
  *&v141[40] = 0u;
  v142 = 0u;
  sub_10000A570(v149, v141);
  sub_10000A570(v148, &v140);
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;

  v72 = sub_10076DDCC();
  v133 = &protocol witness table for LayoutViewPlaceholder;
  v132 = v57;
  v131 = v72;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v121 = 0;
  v120 = 0u;
  *&v119[40] = 0u;
  sub_10000A570(v147, v119);
  v117 = v57;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  v116 = v68;
  v114 = v57;
  v113 = v71;
  v73 = v100;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1007841E0;
  v75 = v112;
  *(v74 + 32) = v112;
  v76 = v75;
  v77 = sub_10076DEEC();
  sub_100526680(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout);
  v78 = v102;
  sub_10076D2AC();
  v80 = v79;

  (*(v101 + 8))(v73, v78);
  sub_10000CD74(v147);
  sub_10000CD74(v148);
  sub_10000CD74(v149);
  (*(v109 + 8))(v107, v110);
  (*(v106 + 8))(v105, v108);
  sub_100526618(v103);
  return v80;
}

uint64_t sub_1005255EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076747C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076749C();
  v74 = *(v9 - 8);
  v75 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130.receiver = v1;
  v130.super_class = ObjectType;
  v77 = ObjectType;
  objc_msgSendSuper2(&v130, "layoutSubviews", v10);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v5, qword_1009A0690);
  (*(v6 + 16))(v8, v12, v5);
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v13[v15], v127);
    sub_10000CF78(v127, v128);
    sub_100767A2C();
    v17 = v16;
    v19 = v18;
    sub_10000CD74(v127);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_10076746C();
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v21 = sub_10075FD2C();
  v129 = &protocol witness table for UIView;
  v128 = v21;
  v71 = v20;
  v127[0] = v20;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  v70 = v22;
  if (v22)
  {
    v23 = sub_1007626BC();
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v123 = 0;
    v124 = 0;
  }

  v122 = v25;
  v125 = v23;
  v126 = v24;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  v27 = sub_1007626BC();
  v28 = v27;
  v121 = &protocol witness table for UILabel;
  v120 = v27;
  v119 = v26;
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  v118 = &protocol witness table for UILabel;
  v117 = v27;
  v67 = v29;
  v68 = v26;
  v116 = v29;
  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v30)
  {
    v31 = &protocol witness table for UILabel;
    v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    v33 = v27;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v112 = 0;
    v113 = 0;
  }

  v111 = v32;
  v114 = v33;
  v115 = v31;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
  v109 = v27;
  v110 = &protocol witness table for UILabel;
  v66 = v34;
  v108 = v34;
  v106 = type metadata accessor for OfferButton();
  v107 = &protocol witness table for UIView;
  v105 = v13;
  v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView];
  v103 = type metadata accessor for RatingView();
  v104 = &protocol witness table for UIView;
  v101 = &protocol witness table for UILabel;
  v102 = v35;
  v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
  v100 = v28;
  v64 = v36;
  v65 = v35;
  v99 = v36;
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
  if (v37)
  {
    v38 = type metadata accessor for EditorsChoiceView();
    v39 = &protocol witness table for UIView;
    v40 = v37;
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v95 = 0;
    v96 = 0;
  }

  v94 = v40;
  v97 = v38;
  v98 = v39;
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  v72 = v8;
  v69 = v13;
  v42 = 0;
  if (v41)
  {
    v42 = type metadata accessor for SearchAdTransparencyButton();
    v43 = &protocol witness table for UIView;
  }

  else
  {
    v43 = 0;
    v90 = 0;
    v91 = 0;
  }

  v88 = &protocol witness table for UILabel;
  v89 = v41;
  v92 = v42;
  v93 = v43;
  v44 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
  v87 = v28;
  v86 = v44;
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v84 = type metadata accessor for MetadataRibbonView();
  v85 = &protocol witness table for UIView;
  v83 = v45;
  v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView];
  v81 = type metadata accessor for SearchTagsRibbonView();
  v82 = &protocol witness table for UIView;
  v80 = v46;
  v47 = v37;
  v48 = v41;
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v52 = v71;
  v53 = v70;
  v54 = v68;
  v55 = v67;
  v56 = v30;
  v57 = v66;
  v58 = v69;
  v59 = v65;
  v60 = v64;
  MetadataRibbonView.hasContent.getter();
  sub_1004EEFC8();
  v61 = v73;
  sub_10076748C();
  sub_10076422C();
  v62 = v76;
  sub_10076743C();
  (*(v78 + 8))(v62, v79);
  return (*(v74 + 8))(v61, v75);
}

id sub_100525CA8(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v8)
  {
    v9 = v8;
    [v3 convertPoint:v9 toCoordinateSpace:{a2, a3}];
    v10 = [v9 pointInside:a1 withEvent:?];
    result = v8;
    if (v10)
    {
      return result;
    }
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
}

id sub_100525DFC(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009407F0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_10095C660);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

uint64_t sub_10052600C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataTextSpace;
  v2 = sub_10076D9AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);

  return sub_1000167E0(v3);
}

uint64_t type metadata accessor for SmallSearchLockupView()
{
  result = qword_10095C6B8;
  if (!qword_10095C6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10052625C()
{
  result = sub_10076D9AC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1005263B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10052646C()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1005264C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

uint64_t sub_100526588()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_100526680(&qword_10095C6D0, type metadata accessor for SearchTagsRibbonView);
  return sub_10076A03C();
}

uint64_t sub_100526618(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100957F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100526680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RoundedTitledButton()
{
  result = qword_10095C6E0;
  if (!qword_10095C6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100526714()
{
  result = sub_10076D9AC();
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

char *sub_1005267B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v8 = qword_10095C6D8;
  swift_beginAccess();
  v9 = sub_10076D9AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v12 = v7;
  v11(&v7[v8], a2, v9);
  swift_endAccess();
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, a1, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = v12;
  sub_10076311C();

  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_1000325F0();
  v16 = sub_100770DAC();
  [v15 _setBackgroundColor:v16];

  [v15 addTarget:v15 action:"didTapButton:" forControlEvents:64];
  v17 = sub_100770D6C();
  [v15 setTintColor:v17];

  (*(v10 + 8))(a2, v9);
  (*(v14 + 8))(a1, v13);
  return v15;
}

UIFontTextStyle sub_100526A50()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A0728);
  v1 = sub_10000A61C(v0, qword_1009A0728);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_100526B00()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A0740);
  sub_10000A61C(v4, qword_1009A0740);
  if (qword_1009407F8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0728);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

double sub_100526CDC(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D9AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = a1;
  v21.super_class = ObjectType;
  v15 = a1;
  objc_msgSendSuper2(&v21, "sizeThatFits:", a2, a3);
  v17 = v16;
  v18 = qword_10095C6D8;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v15[v18], v11);
  sub_10076D17C();
  sub_10076D40C();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v17;
}

void sub_100526EEC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_100526F68(char *result)
{
  v1 = *&result[qword_1009A0758];
  if (v1)
  {
    v2 = result;
    v3 = sub_10001CE50(v1);
    v1(v3);

    return sub_1000167E0(v1);
  }

  return result;
}

id sub_100526FEC(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

id sub_100527054(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = qword_10095C6D8;
  if (qword_100940800 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D9AC();
  v13 = sub_10000A61C(v12, qword_1009A0740);
  (*(*(v12 - 8) + 16))(&a1[v11], v13, v12);
  v14 = &a1[qword_1009A0758];
  *v14 = 0;
  *(v14 + 1) = 0;
  v16.receiver = a1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t sub_100527164()
{
  v1 = qword_10095C6D8;
  v2 = sub_10076D9AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1009A0758);

  return sub_1000167E0(v3);
}

uint64_t sub_1005271E0(uint64_t a1)
{
  v2 = qword_10095C6D8;
  v3 = sub_10076D9AC();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_1009A0758);

  return sub_1000167E0(v4);
}

uint64_t sub_100527268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005272B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100527318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_10076FF9C();
  v6 = v5;
  if (v4 == sub_10076FF9C() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_10077167C();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1005273CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10076D8DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D8AC();
  sub_10011E080(v2, &v15);
  if (*(&v16 + 1))
  {
    sub_100012498(&v15, v21);
    sub_1005277E4(v2, &v15);
    v8 = swift_allocObject();
    v9 = v18;
    v8[3] = v17;
    v8[4] = v9;
    v10 = v20;
    v8[5] = v19;
    v8[6] = v10;
    v11 = v16;
    v8[1] = v15;
    v8[2] = v11;
    sub_10076D89C();

    sub_10000CD74(v21);
  }

  else
  {
    sub_10017FE2C(&v15);
  }

  sub_10076D89C();
  a1[3] = v4;
  a1[4] = &protocol witness table for HorizontalStack;
  v12 = sub_10000DB7C(a1);
  return (*(v5 + 32))(v12, v7, v4);
}

double sub_100527584()
{
  sub_1005273CC(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = ceil(v0);
  sub_100527790(v3);
  return v1;
}

uint64_t sub_100527628()
{
  sub_1005273CC(v1);
  sub_10000CF78(v1, v1[3]);
  sub_10076E0EC();
  return sub_100527790(v1);
}

uint64_t sub_1005276C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005278BC();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100527720()
{
  result = qword_10095C730;
  if (!qword_10095C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C730);
  }

  return result;
}

uint64_t sub_10052781C()
{
  if (*(v0 + 40))
  {
    sub_10000CD74(v0 + 16);
  }

  sub_10000CD74(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_1005278BC()
{
  result = qword_10095C738;
  if (!qword_10095C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C738);
  }

  return result;
}

uint64_t sub_100527924(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v5 = type metadata accessor for Accessory();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v13 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != sub_10077158C())
      {
        return 0;
      }
    }

    else if (i != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v31 = a1;
    if (v11)
    {
      break;
    }

    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return 1;
    }

LABEL_9:
    v15 = 0;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v40 = a3 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v16 = v31;
    }

    else
    {
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = v16;
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    v37 = v31 & 0xC000000000000001;
    v38 = a3 + 32;
    v35 = a1 >> 62;
    v36 = v31 + 32;
    v30 = a3;
    v34 = v14;
    while (1)
    {
      if (v40)
      {
        v43 = sub_10077149C();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_48;
        }

        v43 = *(v38 + 8 * v15);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      if (v13)
      {
        v18 = sub_10077158C();
      }

      else
      {
        v18 = *(v11 + 16);
      }

      if (v15 == v18)
      {

        return 1;
      }

      v41 = v17;
      if (v37)
      {
        v19 = sub_10077149C();
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_49;
        }

        v19 = *(v36 + 8 * v15);
      }

      v20 = v42;
      a1 = v43;
      v21 = (*(v43 + 16))(v42);
      if (v21 != (*(v19 + 16))(v20) || (v22 = *(a1 + 32), v23 = *(v19 + 32), v11 = *(v22 + 16), v11 != *(v23 + 16)))
      {
LABEL_40:

        return 0;
      }

      if (v11 && v22 != v23)
      {
        break;
      }

LABEL_34:
      v15 = v41;
      v13 = v35;
      v11 = v33;
      if (v41 == v34)
      {
        return 1;
      }
    }

    a1 = 0;
    v24 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    a3 = v22 + v24;
    v25 = v23 + v24;
    while (a1 < *(v22 + 16))
    {
      v26 = *(v44 + 72) * a1;
      sub_10024DFF0(a3 + v26, v10);
      if (a1 >= *(v23 + 16))
      {
        goto LABEL_46;
      }

      sub_10024DFF0(v25 + v26, v7);
      v27 = sub_10052A9D0(v10, v7);
      sub_100036758(v7);
      sub_100036758(v10);
      if ((v27 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v11 == ++a1)
      {

        a3 = v30;
        goto LABEL_34;
      }
    }

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
    ;
  }

  v14 = sub_10077158C();
  if (v14)
  {
    goto LABEL_9;
  }

  return 1;
}

void sub_100527CDC(uint64_t a1)
{
  v130 = a1;
  v1 = sub_10076F9AC();
  v128 = *(v1 - 8);
  v129 = v1;
  __chkstk_darwin(v1);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10076771C();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v125 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10076048C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100945140);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v120 - v11;
  v13 = sub_10076D3DC();
  v131 = *(v13 - 8);
  v132 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v19 - 8);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Accessory();
  __chkstk_darwin(v31);
  v33 = (&v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10024DFF0(v133, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v87 = objc_allocWithZone(type metadata accessor for SearchButton());

        sub_10044E8CC(v88);
        return;
      }

      if (EnumCaseMultiPayload != 9)
      {
        v104 = v121;
        v105 = v120;
        v106 = v122;
        (*(v121 + 104))(v120, enum case for SystemImage.chevronForward(_:), v122);
        v107 = sub_10076046C();
        (*(v104 + 8))(v105, v106);
        v108 = [v107 imageWithRenderingMode:2];

        v109 = [objc_allocWithZone(UIImageView) initWithImage:v108];
        sub_100016F40(0, &qword_100942F10);
        v110 = sub_100770D4C();
        [v109 setTintColor:v110];

        return;
      }

      v47 = objc_opt_self();
      v48 = sub_10076FF6C();
      v49 = [v47 kitImageNamed:v48];

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = [v49 imageWithRenderingMode:2];

      v51 = [v50 imageFlippedForRightToLeftLayoutDirection];
      v52 = [objc_allocWithZone(UIImageView) initWithImage:v51];
      sub_100016F40(0, &qword_100942F10);
      isa = sub_100770E4C(0.82098, 0.82153, 0.83748, 1.0).super.isa;
      [v52 setTintColor:isa];
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v79 = v33[1];
      if (qword_100940A18 != -1)
      {
        swift_once();
      }

      v80 = v132;
      v81 = sub_10000A61C(v132, qword_1009A0C58);
      v82 = v131;
      (*(v131 + 16))(v21, v81, v80);
      (*(v82 + 56))(v21, 0, 1, v80);
      (*(v123 + 104))(v125, enum case for DirectionalTextAlignment.trailing(_:), v124);
      v83 = objc_allocWithZone(sub_1007626BC());
      v84 = sub_1007626AC();
      sub_100016F40(0, &qword_100942F10);
      v85 = v84;
      v86 = sub_100770D1C();
      [v85 setTextColor:v86];

      if (v79)
      {
        v51 = sub_10076FF6C();
      }

      else
      {
        v51 = 0;
      }

      [v85 setText:v51];
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v33[1];
        v36 = v33[2];
        sub_10075FD2C();
        v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_10076BDBC();
        sub_10076BFCC();
        sub_10076BF7C();
        sub_10075FCCC();
        [v37 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10);
          sub_100770D5C();
        }

        sub_10075FB8C();
        v38 = sub_10075FC6C();
        *(v39 + 16) = v35;
        *(v39 + 24) = v36;
        v38(&v134, 0);
        v40 = [objc_opt_self() clearColor];
        sub_10075FB8C();
        memset(&v134, 0, 32);
        memset(v135, 0, 32);
        v41 = v37;
        v42 = v127;
        sub_10076F97C();
        sub_10000CFBC(v135, &unk_1009434C0);
        sub_10000CFBC(&v134, &unk_1009434C0);
        sub_100770B9C();
        (*(v128 + 8))(v42, v129);
        sub_100760C4C();
        sub_10076F64C();
        sub_10076FC1C();
        sub_10052BE20(&qword_100941820, &type metadata accessor for ArtworkView);
        sub_100760B8C();

        return;
      }

      v51 = v33[2];
      v96 = v33[4];
      v97 = v33[6];
      v98 = [objc_opt_self() configurationWithFont:v51 scale:v33[3]];
      v99 = sub_10076FF6C();

      v100 = [objc_opt_self() systemImageNamed:v99 withConfiguration:v98];

      v101 = [objc_opt_self() buttonWithType:0];
      [v101 setPreferredSymbolConfiguration:v98 forImageInState:0];
      [v101 setImage:v100 forState:0];
      [v101 setTintColor:v96];
      v102 = v101;
      if (v97)
      {
        v103 = sub_10076FF6C();
      }

      else
      {
        v103 = 0;
      }

      [v101 setAccessibilityLabel:v103];
    }

LABEL_65:

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v33[1];
      v55 = v33[2];

      v56 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
      sub_1007641DC();

      v57 = v56;
      if (v54)
      {
        v58 = sub_10076FF6C();
      }

      else
      {
        v58 = 0;
      }

      [v56 setTitle:v58 forState:0];

      if (v55)
      {
        [v56 setTintColor:v55];

        return;
      }

      sub_100016F40(0, &qword_100942F10);
      v51 = sub_100770E1C();
      [v56 setTintColor:v51];

      goto LABEL_65;
    }

    v92 = v33[1];
    v93 = sub_10000A5D4(&qword_10095C8F0);
    sub_100023AD0(v33 + *(v93 + 48), v30, &unk_100943250);
    v94 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
    sub_1007641DC();

    if (v92)
    {
      v95 = sub_10076FF6C();
    }

    else
    {
      v95 = 0;
    }

    v113 = v131;
    v112 = v132;
    v114 = v24;
    [v94 setTitle:v95 forState:0];

    sub_100016E2C(v30, v24, &unk_100943250);
    v115 = *(v113 + 48);
    if (v115(v24, 1, v112) == 1)
    {
      v116 = qword_100940A10;
      v117 = v94;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_10000A61C(v112, qword_1009A0C40);
      (*(v113 + 16))(v27, v118, v112);
      if (v115(v114, 1, v112) != 1)
      {
        sub_10000CFBC(v114, &unk_100943250);
      }
    }

    else
    {
      (*(v113 + 32))(v27, v24, v112);
      v119 = v94;
    }

    (*(v113 + 56))(v27, 0, 1, v112);
    sub_10076311C();

    sub_10000CFBC(v30, &unk_100943250);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v59 = v18;
    v60 = v33[2];
    v61 = *(v33 + 3);
    type metadata accessor for HeaderButton();
    v62 = qword_10093F980;
    v63 = v60;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = v132;
    v65 = sub_10000A61C(v132, qword_10094C0D8);
    v66 = *(v131 + 16);
    v66(v18, v65, v64);
    v66(v15, v18, v64);
    v67 = sub_10076312C();
    *&v67[qword_10094C0F8] = v61;
    v68 = v67;
    v69 = [v68 traitCollection];
    v70 = sub_10077070C();

    v71 = v68;
    v72 = v71;
    if (v70)
    {
      v73 = v61;
    }

    else
    {
      v73 = 0.0;
    }

    if (v70)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v61;
    }

    if (v70)
    {
      v75 = -v61;
    }

    else
    {
      v75 = v61;
    }

    if ((v70 & 1) == 0)
    {
      v61 = -v61;
    }

    [v71 setContentEdgeInsets:{0.0, v74, 0.0, v73}];
    [v72 setImageEdgeInsets:{0.0, v61, 0.0, v75}];
    v76 = sub_10076FF6C();

    [v72 setTitle:v76 forState:0];

    [v72 setImage:v63 forState:0];
    CGAffineTransformMakeScale(&v134, -1.0, 1.0);
    [v72 setTransform:&v134];

    v77 = [v72 titleLabel];
    if (v77)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v77 setTransform:&v134];
    }

    v78 = [v72 imageView];

    if (v78)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v78 setTransform:&v134];

      (*(v131 + 8))(v59, v132);
    }

    else
    {
      (*(v131 + 8))(v59, v132);
    }

    v111 = v72;
    sub_1007641DC();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v43 = *v33;
    v44 = sub_10000A5D4(&qword_1009453E8);
    sub_100023AD0(v33 + *(v44 + 48), v12, &qword_100945140);
    sub_100016E2C(v12, v9, &qword_100945140);
    v45 = objc_allocWithZone(type metadata accessor for AccountButton());
    v46 = v130;

    sub_100070D70(v43, v9, v46);

    sub_10000CFBC(v12, &qword_100945140);
  }

  else
  {
    v89 = *v33;
    v90 = v33[1];
    v91 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    sub_10026A064(1, v89, v90);
  }
}

void sub_100528FA8(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_10076DD3C();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v10 = sub_10076DA7C();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076048C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Accessory();
  __chkstk_darwin(v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  sub_10024DFF0(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 10)
    {
      (*(v13 + 104))(v15, enum case for SystemImage.chevronForward(_:), v12);
      v36 = sub_10076046C();
      (*(v13 + 8))(v15, v12);
      [v36 size];

      return;
    }

    if (EnumCaseMultiPayload != 9)
    {
      goto LABEL_11;
    }

    v28 = objc_opt_self();
    v29 = sub_10076FF6C();
    v30 = [v28 kitImageNamed:v29];

    if (!v30)
    {
      __break(1u);
      return;
    }

    [v30 size];
LABEL_15:

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v33 = *v18;
    v34 = v18[1];
    v35 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    v30 = sub_10026A064(1, v33, v34);
    [v30 sizeThatFits:{0.0, 0.0}];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_10076DD2C();
    if (qword_100940A18 != -1)
    {
      swift_once();
    }

    v20 = sub_10076D3DC();
    sub_10000A61C(v20, qword_1009A0C58);
    sub_10076DCFC();
    v21 = *(v37 + 8);
    v21(v5, v3);
    sub_10076DD1C();
    v21(v8, v3);
    sub_10076DA5C();
    v22 = v38;
    sub_10076DA9C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007841E0;
    v24 = v42;
    *(v23 + 32) = v42;
    v25 = v24;
    v26 = sub_10076DEEC();
    v27 = v41;
    sub_10076D2AC();

    (*(v40 + 8))(v22, v27);
    return;
  }

LABEL_11:
  if (qword_1009412D8 != -1)
  {
    swift_once();
  }

  v31 = sub_10076FD4C();
  sub_10000A61C(v31, qword_1009A25D0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  sub_10076F27C();
  v43[3] = v16;
  v32 = sub_10000DB7C(v43);
  sub_10024DFF0(v39, v32);
  sub_10076F30C();
  sub_10000CFBC(v43, &unk_1009434C0);
  sub_10076F27C();
  sub_10076FBDC();

  sub_100036758(v18);
}

void sub_100529668(uint64_t a1)
{
  v56 = a1;
  v1 = sub_10075F37C();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100945140);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_10076D3DC();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Accessory();
  __chkstk_darwin(v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10024DFF0(v55, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_10077176C(4uLL);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_10077176C(5uLL);
      }

      else
      {
        sub_10077176C(6uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *v21;
        v24 = *(v21 + 1);
        v25 = *(v21 + 2);
        sub_10077176C(9uLL);
        v57 = v23;
        sub_10076C02C();
        sub_10052BE20(&qword_10094E848, &type metadata accessor for Artwork);
        sub_10076FEBC();
        if (v24 == 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        sub_10077178C(*&v26);
        if (v25 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v25;
        }

        sub_10077178C(*&v27);

        return;
      }

      v43 = *(v21 + 2);
      v44 = *(v21 + 3);
      v45 = *(v21 + 4);
      v46 = *(v21 + 6);
      sub_10077176C(0xAuLL);
      sub_10077008C();

      sub_100770EFC();
      sub_10077176C(v44);
      if (v45)
      {
        sub_10077177C(1u);
        v47 = v45;
        sub_100770EFC();

        if (v46)
        {
LABEL_37:
          sub_10077177C(1u);
          sub_10077008C();

LABEL_53:

          return;
        }
      }

      else
      {
        sub_10077177C(0);
        if (v46)
        {
          goto LABEL_37;
        }
      }

      sub_10077177C(0);
      goto LABEL_53;
    }

    v39 = *(v21 + 1);
    sub_10077176C(8uLL);
    if (v39)
    {
LABEL_32:
      sub_10077177C(1u);
      sub_10077008C();

      return;
    }

LABEL_41:
    sub_10077177C(0);
    return;
  }

  v52 = v15;
  v55 = v12;
  v28 = v54;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v41 = *(v21 + 1);
      v42 = sub_10000A5D4(&qword_10095C8F0);
      sub_100023AD0(&v21[*(v42 + 48)], v18, &unk_100943250);
      sub_10077176C(1uLL);
      if (v41)
      {
        sub_10077177C(1u);
        sub_10077008C();
      }

      else
      {
        sub_10077177C(0);
      }

      v48 = v10;
      v50 = v52;
      v49 = v53;
      v51 = v55;
      sub_100016E2C(v18, v52, &unk_100943250);
      if ((*(v49 + 48))(v50, 1, v48) == 1)
      {
        sub_10077177C(0);
      }

      else
      {
        (*(v49 + 32))(v51, v50, v48);
        sub_10077177C(1u);
        sub_10052BE20(&qword_10095C928, &type metadata accessor for FontUseCase);
        sub_10076FEBC();
        (*(v49 + 8))(v51, v48);
      }

      sub_10000CFBC(v18, &unk_100943250);
      return;
    }

    v32 = *(v21 + 1);
    v33 = *(v21 + 2);
    v34 = *(v21 + 4);
    sub_10077176C(0);
    if (v32)
    {
      sub_10077177C(1u);
      sub_10077008C();

      if (v33)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_10077177C(0);
      if (v33)
      {
LABEL_23:
        sub_10077177C(1u);
        v35 = v33;
        sub_100770EFC();

        if (v34)
        {
LABEL_24:
          sub_10077177C(1u);
          sub_10077008C();

          return;
        }

LABEL_45:
        sub_10077177C(0);

        return;
      }
    }

    sub_10077177C(0);
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v21 + 2);
    v37 = *(v21 + 3);
    sub_10077176C(2uLL);
    sub_10077008C();

    sub_100770EFC();
    v38 = 0.0;
    if (v37 != 0.0)
    {
      v38 = v37;
    }

    sub_10077178C(*&v38);
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v40 = *(v21 + 1);
      sub_10077176C(7uLL);
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    v29 = v9;
    v30 = *v21;
    v31 = sub_10000A5D4(&qword_1009453E8);
    sub_100023AD0(&v21[*(v31 + 48)], v29, &qword_100945140);
    sub_10077176C(3uLL);
    sub_10077177C(v30);
    sub_100016E2C(v29, v6, &qword_100945140);
    if ((*(v28 + 48))(v6, 1, v1) == 1)
    {
      sub_10077177C(0);
    }

    else
    {
      (*(v28 + 32))(v3, v6, v1);
      sub_10077177C(1u);
      sub_10052BE20(&qword_10095C920, &type metadata accessor for StoreTab);
      sub_10076FEBC();
      (*(v28 + 8))(v3, v1);
    }

    sub_10000CFBC(v29, &qword_100945140);
  }
}

Swift::Int sub_100529F4C()
{
  sub_10077175C();
  sub_100529668(v1);
  return sub_1007717AC();
}

Swift::Int sub_100529F90()
{
  sub_10077175C();
  sub_100529668(v1);
  return sub_1007717AC();
}

uint64_t sub_100529FCC(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Accessory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (v42 - v9);
  v11 = *(v1 + 32);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v42[1] = v8;
  v45 = _swiftEmptyArrayStorage;
  sub_1007714EC();
  v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = *(v4 + 72);
  while (1)
  {
    sub_10024DFF0(v14, v10);
    swift_beginAccess();
    v18 = *(v2 + 40);
    if (*(v18 + 16))
    {
      v19 = sub_100610020(v10);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v21;
        goto LABEL_5;
      }
    }

    swift_endAccess();
    sub_100527CDC(v43);
    v24 = v23;
    sub_10024DFF0(v10, v6);
    swift_beginAccess();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v2 + 40);
    v27 = v44;
    *(v2 + 40) = 0x8000000000000000;
    v28 = sub_100610020(v6);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_100246940(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_100610020(v6);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      v36 = v44;
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v40 = v28;
    sub_10024BC64();
    v28 = v40;
    v36 = v44;
    if ((v34 & 1) == 0)
    {
LABEL_15:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = v28;
      sub_10024DFF0(v6, v36[6] + v28 * v15);
      *(v36[7] + 8 * v37) = v25;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v36[2] = v39;
      goto LABEL_4;
    }

LABEL_3:
    v16 = v36[7];
    v17 = *(v16 + 8 * v28);
    *(v16 + 8 * v28) = v25;

LABEL_4:
    sub_100036758(v6);
    *(v2 + 40) = v36;
    swift_endAccess();
LABEL_5:
    sub_100036758(v10);
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v14 += v15;
    if (!--v12)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

uint64_t sub_10052A2E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (sub_1007706EC())
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_10052A324()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Accessory()
{
  result = qword_10095C868;
  if (!qword_10095C868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10052A3EC()
{
  sub_10052A4E8();
  if (v0 <= 0x3F)
  {
    sub_10052A578();
    if (v1 <= 0x3F)
    {
      sub_10052A604();
      if (v2 <= 0x3F)
      {
        sub_10052A688();
        if (v3 <= 0x3F)
        {
          sub_10052A700(319, &qword_10095C898);
          if (v4 <= 0x3F)
          {
            sub_10052A700(319, &qword_10095C8A0);
            if (v5 <= 0x3F)
            {
              sub_10052A748();
              if (v6 <= 0x3F)
              {
                sub_10052A7BC(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10052A4E8()
{
  if (!qword_10095C878)
  {
    sub_10000CE78(&unk_100943470);
    sub_10000CE78(&qword_100946798);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10095C878);
    }
  }
}

void sub_10052A578()
{
  if (!qword_10095C880)
  {
    sub_10000CE78(&unk_100943470);
    sub_10000CE78(&unk_100943250);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10095C880);
    }
  }
}

void sub_10052A604()
{
  if (!qword_10095C888)
  {
    sub_100016F40(255, &qword_10094F610);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10095C888);
    }
  }
}

void sub_10052A688()
{
  if (!qword_10095C890)
  {
    sub_10000CE78(&qword_100945140);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10095C890);
    }
  }
}

void sub_10052A700(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1001962D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10052A748()
{
  if (!qword_10095C8A8)
  {
    sub_10076C02C();
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10095C8A8);
    }
  }
}

void sub_10052A7BC(uint64_t a1)
{
  if (!qword_10095C8B0)
  {
    __chkstk_darwin(a1);
    sub_100016F40(255, &qword_100942F00);
    type metadata accessor for SymbolScale(255);
    sub_10000CE78(&qword_100946798);
    sub_10000CE78(&unk_100943470);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10095C8B0);
    }
  }
}

unint64_t sub_10052A97C()
{
  result = qword_10095C8E8;
  if (!qword_10095C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C8E8);
  }

  return result;
}

uint64_t sub_10052A9D0(uint64_t a1, double *a2)
{
  v186 = a1;
  v187 = a2;
  v174 = sub_10075F37C();
  v185 = *(v174 - 8);
  __chkstk_darwin(v174);
  v169 = &v168 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_10000A5D4(&qword_10095C8F8);
  __chkstk_darwin(v184);
  v183 = &v168 - v3;
  v4 = sub_10000A5D4(&qword_100945140);
  __chkstk_darwin(v4 - 8);
  v171 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v178 = &v168 - v7;
  __chkstk_darwin(v8);
  v179 = &v168 - v9;
  v10 = sub_10076D3DC();
  v172 = *(v10 - 8);
  v173 = v10;
  __chkstk_darwin(v10);
  v176 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_10000A5D4(&qword_10095C900);
  __chkstk_darwin(v175);
  v182 = &v168 - v12;
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v170 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v177 = &v168 - v16;
  __chkstk_darwin(v17);
  v181 = &v168 - v18;
  v19 = type metadata accessor for Accessory();
  __chkstk_darwin(v19);
  v21 = (&v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v180 = &v168 - v23;
  __chkstk_darwin(v24);
  v26 = (&v168 - v25);
  __chkstk_darwin(v27);
  v29 = (&v168 - v28);
  __chkstk_darwin(v30);
  v32 = &v168 - v31;
  __chkstk_darwin(v33);
  v35 = &v168 - v34;
  __chkstk_darwin(v36);
  v38 = (&v168 - v37);
  __chkstk_darwin(v39);
  v41 = (&v168 - v40);
  v42 = sub_10000A5D4(&qword_10095C908);
  __chkstk_darwin(v42 - 8);
  v44 = &v168 - v43;
  v46 = (&v168 + *(v45 + 56) - v43);
  sub_10024DFF0(v186, &v168 - v43);
  v47 = v187;
  v187 = v46;
  sub_10024DFF0(v47, v46);
  v188 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v58 = v32;
    v60 = v184;
    v59 = v185;
    v61 = v181;
    v62 = v182;
    v63 = v183;
    if (EnumCaseMultiPayload > 1)
    {
      v64 = v188;
      if (EnumCaseMultiPayload == 2)
      {
        sub_10024DFF0(v188, v35);
        v84 = *v35;
        v83 = *(v35 + 1);
        v85 = *(v35 + 2);
        v86 = *(v35 + 3);
        v87 = v187;
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          goto LABEL_61;
        }

        v88 = *(v87 + 2);
        v89 = v87[3];
        if (v84 == *v87 && v83 == *(v87 + 1))
        {
        }

        else
        {
          v128 = sub_10077167C();

          if ((v128 & 1) == 0)
          {

            goto LABEL_98;
          }
        }

        sub_100016F40(0, &qword_10094D040);
        v129 = sub_100770EEC();

        if (v129)
        {
          v56 = v86 == v89;
          v57 = v64;
LABEL_73:
          sub_100036758(v57);
          return v56;
        }

        goto LABEL_98;
      }

      v65 = v187;
      if (EnumCaseMultiPayload == 3)
      {
        v66 = v58;
        sub_10024DFF0(v188, v58);
        v67 = *(sub_10000A5D4(&qword_1009453E8) + 48);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_10000CFBC(&v66[v67], &qword_100945140);
          goto LABEL_61;
        }

        v68 = *v66;
        v69 = *v65;
        v70 = &v66[v67];
        v71 = v179;
        sub_100023AD0(v70, v179, &qword_100945140);
        v72 = v65 + v67;
        v73 = v178;
        sub_100023AD0(v72, v178, &qword_100945140);
        if (v68 == v69)
        {
          v130 = *(v60 + 48);
          v131 = v63;
          sub_100016E2C(v71, v63, &qword_100945140);
          v132 = v130;
          sub_100016E2C(v73, v131 + v130, &qword_100945140);
          v133 = v59;
          v134 = *(v59 + 48);
          v135 = v174;
          if (v134(v131, 1, v174) == 1)
          {
            sub_10000CFBC(v73, &qword_100945140);
            sub_10000CFBC(v71, &qword_100945140);
            if (v134(v131 + v132, 1, v135) == 1)
            {
              sub_10000CFBC(v131, &qword_100945140);
              goto LABEL_116;
            }
          }

          else
          {
            v144 = v171;
            sub_100016E2C(v131, v171, &qword_100945140);
            if (v134(v131 + v132, 1, v135) != 1)
            {
              v157 = v131 + v132;
              v158 = v144;
              v159 = v169;
              (*(v133 + 32))(v169, v157, v135);
              sub_10052BE20(&qword_10095C910, &type metadata accessor for StoreTab);
              v160 = sub_10076FF1C();
              v161 = *(v133 + 8);
              v161(v159, v135);
              sub_10000CFBC(v178, &qword_100945140);
              sub_10000CFBC(v179, &qword_100945140);
              v161(v158, v135);
              sub_10000CFBC(v131, &qword_100945140);
              if (v160)
              {
                goto LABEL_116;
              }

              goto LABEL_98;
            }

            sub_10000CFBC(v178, &qword_100945140);
            sub_10000CFBC(v179, &qword_100945140);
            (*(v133 + 8))(v144, v135);
          }

          v75 = &qword_10095C8F8;
          v74 = v131;
        }

        else
        {
          sub_10000CFBC(v73, &qword_100945140);
          v74 = v71;
          v75 = &qword_100945140;
        }

        sub_10000CFBC(v74, v75);
        goto LABEL_98;
      }

      sub_10024DFF0(v188, v29);
      v95 = *v29;
      v94 = v29[1];
      v96 = swift_getEnumCaseMultiPayload();
      if (v96 == 4)
      {
        v91 = *(v65 + 1);
        if (v94)
        {
          if (v91)
          {
            v92 = *v65;
            goto LABEL_40;
          }

LABEL_64:

          goto LABEL_98;
        }

LABEL_63:
        if (!v91)
        {
          goto LABEL_116;
        }

        goto LABEL_64;
      }

LABEL_43:

      goto LABEL_61;
    }

    v76 = v188;
    if (!EnumCaseMultiPayload)
    {
      sub_10024DFF0(v188, v41);
      v78 = *v41;
      v77 = v41[1];
      v80 = v41[2];
      v79 = v41[3];
      v81 = v41[4];
      v82 = v187;
      if (swift_getEnumCaseMultiPayload())
      {
        v64 = v76;

        goto LABEL_61;
      }

      v125 = *(v82 + 1);
      v124 = *(v82 + 2);
      v127 = *(v82 + 3);
      v126 = *(v82 + 4);
      if (v77)
      {
        if (v125)
        {
          if (v78 == *v187 && v77 == v125)
          {

            goto LABEL_110;
          }

          v153 = sub_10077167C();

          if (v153)
          {
LABEL_110:
            if (v80)
            {
              if (!v124)
              {

                goto LABEL_128;
              }

              sub_100016F40(0, &qword_100942F10);
              v154 = v80;
              v155 = v124;
              v156 = sub_100770EEC();

              if ((v156 & 1) == 0)
              {

LABEL_128:

                goto LABEL_142;
              }
            }

            else if (v124)
            {

              goto LABEL_143;
            }

            if (v81)
            {
              if (!v126)
              {

                goto LABEL_142;
              }

              if (v79 == v127 && v81 == v126)
              {

                v162 = v188;
                goto LABEL_117;
              }

              v166 = sub_10077167C();

              if ((v166 & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            else
            {

              if (v126)
              {
                goto LABEL_142;
              }
            }

            v162 = v188;
            goto LABEL_117;
          }
        }

        else
        {
        }

        goto LABEL_143;
      }

      if (v125)
      {

LABEL_142:

        goto LABEL_143;
      }

      goto LABEL_110;
    }

    sub_10024DFF0(v188, v38);
    v98 = *v38;
    v97 = v38[1];
    v99 = *(sub_10000A5D4(&qword_10095C8F0) + 48);
    v100 = v187;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000CFBC(v38 + v99, &unk_100943250);

      v64 = v188;
      goto LABEL_61;
    }

    v101 = v100[1];
    v186 = *v100;
    sub_100023AD0(v38 + v99, v61, &unk_100943250);
    v102 = v177;
    sub_100023AD0(v100 + v99, v177, &unk_100943250);
    if (v97)
    {
      if (v101)
      {
        v103 = v62;
        if (v98 == v186 && v97 == v101)
        {

          v104 = v175;
          v105 = v176;
          goto LABEL_101;
        }

        v145 = sub_10077167C();

        v104 = v175;
        v105 = v176;
        if (v145)
        {
LABEL_101:
          v146 = *(v104 + 48);
          sub_100016E2C(v61, v103, &unk_100943250);
          sub_100016E2C(v102, v103 + v146, &unk_100943250);
          v147 = v172;
          v148 = v173;
          v149 = *(v172 + 48);
          if (v149(v103, 1, v173) == 1)
          {
            sub_10000CFBC(v102, &unk_100943250);
            sub_10000CFBC(v61, &unk_100943250);
            v150 = v149(v103 + v146, 1, v148);
            v151 = v188;
            if (v150 == 1)
            {
              sub_10000CFBC(v103, &unk_100943250);
LABEL_126:
              v162 = v151;
              goto LABEL_117;
            }
          }

          else
          {
            v152 = v170;
            sub_100016E2C(v103, v170, &unk_100943250);
            if (v149(v103 + v146, 1, v148) != 1)
            {
              (*(v147 + 32))(v105, v103 + v146, v148);
              sub_10052BE20(&qword_10095C918, &type metadata accessor for FontUseCase);
              v163 = v147;
              v164 = sub_10076FF1C();
              v165 = *(v163 + 8);
              v165(v105, v148);
              sub_10000CFBC(v177, &unk_100943250);
              sub_10000CFBC(v61, &unk_100943250);
              v165(v152, v148);
              sub_10000CFBC(v103, &unk_100943250);
              v151 = v188;
              if (v164)
              {
                goto LABEL_126;
              }

LABEL_107:
              sub_100036758(v151);
              return 0;
            }

            sub_10000CFBC(v177, &unk_100943250);
            sub_10000CFBC(v61, &unk_100943250);
            (*(v147 + 8))(v152, v148);
            v151 = v188;
          }

          sub_10000CFBC(v103, &qword_10095C900);
          goto LABEL_107;
        }

LABEL_90:
        sub_10000CFBC(v102, &unk_100943250);
        sub_10000CFBC(v61, &unk_100943250);
        goto LABEL_143;
      }
    }

    else
    {
      v103 = v62;
      v104 = v175;
      v105 = v176;
      if (!v101)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_90;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v93 = swift_getEnumCaseMultiPayload();
      v64 = v188;
      if (v93 != 8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v64 = v188;
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v122 = swift_getEnumCaseMultiPayload();
        if (v122 != 10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v49 = v180;
      sub_10024DFF0(v188, v180);
      v51 = *(v49 + 8);
      v50 = *(v49 + 16);
      v52 = v187;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v54 = v52[1];
        v53 = v52[2];
        sub_10076C02C();
        v55 = sub_10076BE5C();

        if (v55)
        {
          v56 = v50 == v53 && v51 == v54;
          v57 = v188;
          goto LABEL_73;
        }

        goto LABEL_143;
      }

      v64 = v188;
      goto LABEL_61;
    }

    v106 = v188;
    sub_10024DFF0(v188, v21);
    v107 = *v21;
    v108 = v21[1];
    v109 = v21[2];
    v110 = v21[3];
    v111 = v21[4];
    v112 = v21[5];
    v113 = v21[6];
    v114 = v187;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v115 = v113;
      v186 = v112;
      v116 = *v114;
      v117 = *(v114 + 1);
      v118 = v114;
      v120 = *(v114 + 2);
      v119 = *(v114 + 3);
      v121 = *(v118 + 4);
      v185 = *(v118 + 5);
      v187 = *(v118 + 6);
      if (v107 == v116 && v108 == v117)
      {

LABEL_78:
        sub_100016F40(0, &qword_10094D040);
        v137 = sub_100770EEC();
        v138 = v188;
        if ((v137 & 1) != 0 && v110 == v119)
        {
          if (v111)
          {
            if (!v121)
            {

              goto LABEL_137;
            }

            sub_100016F40(0, &qword_100942F10);
            v139 = v111;
            v140 = v121;
            v141 = v121;
            v142 = sub_100770EEC();

            if ((v142 & 1) == 0)
            {

LABEL_137:

LABEL_138:

              goto LABEL_85;
            }

LABEL_131:
            if (v115)
            {
              if (!v187)
              {

                goto LABEL_138;
              }

              if (v186 == v185 && v115 == v187)
              {

                v162 = v138;
                goto LABEL_117;
              }

              v167 = sub_10077167C();

              if ((v167 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {

              if (v187)
              {
                goto LABEL_138;
              }
            }

            v162 = v138;
            goto LABEL_117;
          }

          v140 = v121;
          if (!v121)
          {
            goto LABEL_131;
          }
        }

        else
        {
        }

LABEL_85:
        sub_100036758(v138);
        return 0;
      }

      v136 = sub_10077167C();

      if (v136)
      {
        goto LABEL_78;
      }

LABEL_143:
      sub_100036758(v188);
      return 0;
    }

    v64 = v106;
LABEL_61:
    sub_10000CFBC(v64, &qword_10095C908);
    return 0;
  }

  v64 = v188;
  sub_10024DFF0(v188, v26);
  v95 = *v26;
  v94 = v26[1];
  v90 = v187;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_43;
  }

  v91 = *(v90 + 1);
  if (!v94)
  {
    goto LABEL_63;
  }

  if (!v91)
  {
    goto LABEL_64;
  }

  v92 = *v90;
LABEL_40:
  if (v95 != v92 || v94 != v91)
  {
    v143 = sub_10077167C();

    if (v143)
    {
      goto LABEL_116;
    }

LABEL_98:
    sub_100036758(v64);
    return 0;
  }

LABEL_116:
  v162 = v64;
LABEL_117:
  sub_100036758(v162);
  return 1;
}

uint64_t sub_10052BE20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10052BE68()
{
  v0 = sub_10075EBAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B96C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10075F19C())
  {
    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    sub_10076FC1C();
    v11 = v0;
    swift_getObjectType();
    sub_10075F1DC();
    sub_10076BB7C();

    sub_10075EE2C();
    (*(v5 + 8))(v7, v4);
    swift_getObjectType();
    sub_10075F1DC();
    sub_10076BA7C();

    sub_10075ED2C();
    v8 = sub_10075EB5C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v3, v11);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

id sub_10052C0C8(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&qword_100943190);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v27 - v12;
  if ((a2 & 1) == 0)
  {
    v28 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    v15 = *&a1[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    [v15 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v15, "isHidden")}];
    v16 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10003267C(&v15[v16], v13);
    v17 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_1003EAED8(v13, v14 + v17);
    swift_endAccess();
    v18 = [*&v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] image];
    if (v18)
    {
      v19 = &v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
      if ((v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16] & 1) != 0 || (v20 = *&v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v21 = *v19;
        v27 = v19[1];
        v22 = v18;

        v23 = v22;
        sub_1003955EC(v22, v21, v27, 0, v20, a3, v28);
      }
    }

    v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v25 = *&a1[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
    [v25 frame];
    [v24 setFrame:?];
    [v24 setHidden:{objc_msgSend(v25, "isHidden")}];
  }

  return [v5 setHidden:{objc_msgSend(a1, "isHidden", v11)}];
}

char *sub_10052C358(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_sourceView] = a1;
  v5 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v6 = type metadata accessor for RevealingImageMirrorView();
  v21.receiver = objc_allocWithZone(v6);
  v21.super_class = v6;
  v7 = a1;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  if (qword_10093F488 != -1)
  {
    swift_once();
  }

  v20[4] = *&byte_10099C930[64];
  v20[5] = *&byte_10099C930[80];
  v20[6] = *&byte_10099C930[96];
  v20[7] = *&byte_10099C930[112];
  v20[0] = *byte_10099C930;
  v20[1] = *&byte_10099C930[16];
  v20[2] = *&byte_10099C930[32];
  v20[3] = *&byte_10099C930[48];
  [v10 setTransform:v20];

  v11 = &v8[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v11 + 1) = &off_100884870;
  swift_unknownObjectWeakAssign();
  sub_100394AF0(Strong);

  *&v2[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView] = v9;
  v13 = *&v7[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
  v14 = objc_allocWithZone(type metadata accessor for RevealingVideoMirrorView());
  *&v2[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView] = sub_1006C4F8C(v13);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
  v17 = v15;
  [v17 addSubview:v16];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView]];
  [v17 setClipsToBounds:1];

  return v17;
}

id sub_10052C608()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  v3 = OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_sourceView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_sourceView] frame];
  v4 = MidX - CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [*&v0[v3] frame];
  Width = CGRectGetWidth(v17);
  [*&v0[v3] frame];
  [v1 setFrame:{v4, MinX, Width, CGRectGetHeight(v18)}];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
  [v0 bounds];
  v8 = CGRectGetMidX(v19);
  [*&v0[v3] frame];
  v9 = v8 - CGRectGetWidth(v20) * 0.5;
  [v0 bounds];
  v10 = CGRectGetMinX(v21);
  [*&v0[v3] frame];
  v11 = CGRectGetWidth(v22);
  [*&v0[v3] frame];
  return [v7 setFrame:{v9, v10, v11, CGRectGetHeight(v23)}];
}

uint64_t sub_10052C890(uint64_t a1, char a2)
{
  v63 = a1;
  v66 = sub_10000A5D4(&qword_10095B618);
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v51 - v3;
  v4 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v4 - 8);
  v70 = v51 - v5;
  v74 = sub_10076C2DC();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v9 - 8);
  v69 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  __chkstk_darwin(v14);
  v16 = v51 - v15;
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  if (a2)
  {
    v20 = 1.1;
  }

  else
  {
    v20 = 1.0;
  }

  sub_10000A5D4(&qword_100942910);
  v21 = *(sub_10076C20C() - 8);
  v72 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v58 = v23;
  *(v23 + 16) = xmmword_1007844F0;
  v24 = v23 + v22;
  v77 = *&v20;
  sub_10001E290();
  sub_10076C29C();
  v77 = 0x4020000000000000;
  v75 = 0x4030000000000000;
  sub_10076C27C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v67 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v30 = *(v6 + 104);
  v68 = v6 + 104;
  v71 = v30;
  (v30)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v65 = v24;
  v51[1] = v19;
  v64 = v16;
  v59 = v13;
  sub_10076C1CC();
  v77 = *&v20;
  sub_10076C29C();
  v77 = 0x4024000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  v34 = v8;
  *v8 = _Q0;
  v35 = v8;
  v36 = v67;
  v37 = v71;
  v71(v35, v67, v74);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v38 = v72;
  top = UIEdgeInsetsZero.top;
  v55 = left;
  v56 = bottom;
  sub_10076C1CC();
  v61 = 2 * v38;
  v77 = *&v20;
  sub_10076C29C();
  v77 = 0x4034000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v34 = v54;
  v37(v34, v36, v74);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v39 = v61;
  v40 = v34;
  sub_10076C1CC();
  v79 = 0x4000000000000000;
  v53 = v39 + v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v61 = sub_10050BAC4();
  v41 = v62;
  sub_10076757C();
  v42 = v66;
  sub_10076758C();
  v43 = *(v73 + 8);
  v73 += 8;
  v60 = v43;
  v43(v41, v42);
  v75 = v77;
  sub_10076C29C();
  v77 = 0x4034000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  *v40 = v54;
  v52 = v40;
  v44 = v74;
  v71(v40, v67, v74);
  sub_1007704BC();
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v79 = 0x4000000000000000;
  v53 = 4 * v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v45 = v62;
  sub_10076757C();
  v46 = v66;
  sub_10076758C();
  v60(v45, v46);
  v75 = v77;
  sub_10076C29C();
  v77 = 0x4038000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  v54 = vdupq_n_s64(0x404A000000000000uLL);
  v47 = v52;
  *v52 = v54;
  v71(v47, v67, v44);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v48 = v53;
  sub_10076C1CC();
  v79 = 0x4004000000000000;
  v72 += v48;
  v77 = 0x4000000000000000;
  v78 = 0;
  v75 = 0x3FF8000000000000;
  v76 = 0;
  sub_10076757C();
  v49 = v66;
  sub_10076758C();
  v60(v45, v49);
  v75 = v77;
  sub_10076C29C();
  v77 = 0x4038000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  *v47 = v54;
  v71(v47, v67, v74);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v58;
}

uint64_t sub_10052D554(uint64_t a1)
{
  v51 = a1;
  v50 = sub_10000A5D4(&qword_10095B618);
  v56.i64[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v41 - v1;
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v59 = sub_10076C2DC();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v7 - 8);
  v61 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = v41 - v11;
  __chkstk_darwin(v13);
  v57 = v41 - v14;
  sub_10000A5D4(&qword_100942910);
  v15 = *(sub_10076C20C() - 8);
  v55 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v48 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v18 = v17 + v16;
  v65 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v65 = 0x4020000000000000;
  v63 = 0x4030000000000000;
  sub_10076C27C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v58 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v62 + 104);
  v62 += 104;
  v60 = v24;
  v25 = v59;
  (v24)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  v54 = v18;
  v52 = v12;
  sub_10076C1CC();
  v65 = 0x3FF0000000000000;
  sub_10076C29C();
  v65 = 0x4024000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  v49 = v6;
  *v6 = _Q0;
  v28 = v58;
  v29 = v60;
  v60(v6, v58, v25);
  LOBYTE(v65) = 0;
  v53 = v4;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  v30 = v55;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v31 = v49;
  sub_10076C1CC();
  v44 = 2 * v30;
  v65 = 0x3FF0000000000000;
  sub_10076C29C();
  v65 = 0x4034000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v42 = vdupq_n_s64(0x4041000000000000uLL);
  *v31 = v42;
  v29(v31, v28, v59);
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  v32 = v44;
  sub_10076C1CC();
  v67 = 0x4000000000000000;
  v33 = v55;
  v41[1] = v32 + v55;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  v44 = sub_10050BAC4();
  v34 = v47;
  sub_10076757C();
  v35 = v50;
  sub_10076758C();
  v36 = *(v56.i64[0] + 8);
  v56.i64[0] += 8;
  v43 = v36;
  v36(v34, v35);
  v63 = v65;
  sub_10076C29C();
  v65 = 0x4034000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v37 = v49;
  *v49 = v42;
  v60(v37, v58, v59);
  sub_1007704BC();
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v67 = 0x4000000000000000;
  v42.i64[0] = 4 * v33;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  sub_10076757C();
  v38 = v50;
  sub_10076758C();
  v43(v34, v38);
  v63 = v65;
  sub_10076C29C();
  v65 = 0x4038000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v56 = vdupq_n_s64(0x404A000000000000uLL);
  *v37 = v56;
  v39 = v59;
  v60(v37, v58, v59);
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v65 = 0x4000000000000000;
  sub_10076C29C();
  v65 = 0x4038000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  *v37 = v56;
  v60(v37, v58, v39);
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v48;
}

double sub_10052E1C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F1FC();
  sub_10052E580(&qword_100948270, &type metadata accessor for AppEvent);
  sub_10076332C();
  v7 = v17;
  if (!v17)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v10 = sub_100630CB4();
  v11 = type metadata accessor for AppEventView();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10069CFD8(v9, v7, v10, a2, v11, ObjectType);
  v14 = v13;
  swift_unknownObjectRelease_n();

  return v14;
}

double sub_10052E3A8(uint64_t a1, char a2)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  v9 = sub_100630CB4();
  v10 = type metadata accessor for AppEventView();
  sub_1007600FC();
  v11 = sub_1007600CC();
  v13 = v12;
  v14 = sub_1007600AC();
  v16 = v15;
  v17 = sub_1007600DC();
  v19 = v18;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10069D1E0(v11, v13, v14, v16, v17, v19, a2, v9, v8, v10, ObjectType);
  v22 = v21;

  swift_unknownObjectRelease_n();
  return v22;
}

uint64_t sub_10052E580(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10052E5CC()
{
  result = qword_100950A28;
  if (!qword_100950A28)
  {
    type metadata accessor for VideoCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A28);
  }

  return result;
}

double sub_10052E624()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  sub_10076462C();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_1000C31A8(v5);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

double sub_10052E790()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076469C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_10076460C();
  sub_10076C2FC();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  sub_10076462C();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_1000C31A8(v9);
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_10052E9A0()
{
  result = swift_checkMetadataState();
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

id sub_10052EAAC()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for MetricsViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x68));
  [v0 addChildViewController:v1];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [v4 addSubview:result];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result superview];
  if (v7)
  {
    v8 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_opt_self();
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100786040;
    v11 = [v6 leftAnchor];
    v12 = [v8 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v6 rightAnchor];
    v15 = [v8 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v10 + 40) = v16;
    v17 = [v6 topAnchor];
    v18 = [v8 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v10 + 48) = v19;
    v20 = [v6 bottomAnchor];
    v21 = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v10 + 56) = v22;
    sub_10052F0E0();
    isa = sub_1007701AC().super.isa;

    [v9 activateConstraints:isa];
  }

  return [v1 didMoveToParentViewController:v0];
}

void sub_10052EE60(void *a1)
{
  v1 = a1;
  sub_10052EAAC();
}

void sub_10052EEA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10052F0B0();
}

id sub_10052EF18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10052EF88(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)]);
  v2 = *&a1[*((swift_isaMask & *a1) + 0x68)];
}

unint64_t sub_10052F0E0()
{
  result = qword_100945D78;
  if (!qword_100945D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100945D78);
  }

  return result;
}

uint64_t sub_10052F12C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 16) == 1)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_10049E878(0, v8[2] + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_10049E878((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1000349FC;
    v12[5] = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_10052F24C()
{
  v1 = sub_10076F08C();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F0CC();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10052FA88;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100899228;
  v8 = _Block_copy(aBlock);

  sub_10076F0AC();
  v13 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_10052F520()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16) == 1)
    {
      *(result + 16) = 0;
      v1 = result;
      swift_beginAccess();
      v2 = *(v1 + 24);
      v3 = *(v2 + 16);
      if (v3)
      {

        v4 = v2 + 40;
        do
        {
          v5 = *(v4 - 8);

          v5(v6);

          v4 += 16;
          --v3;
        }

        while (v3);

        v7 = v1;
      }

      else
      {
        v7 = v1;
      }

      *(v7 + 24) = _swiftEmptyArrayStorage;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10052F618()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10052F67C()
{
  v9 = sub_10077067C();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10077063C();
  __chkstk_darwin(v4);
  v5 = sub_10076F0CC();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v6 = sub_100085204();
  v8[0] = "isScrollingAccessQueue";
  v8[1] = v6;
  sub_10076F0AC();
  v10 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_10094D780, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A5D4(&qword_10094D788);
  sub_100048C98(&qword_10094D790, &qword_10094D788);
  sub_1007712CC();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = sub_1007706AC();
  return v0;
}

uint64_t sub_10052F8DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_10052F24C();
  }

  return result;
}

uint64_t sub_10052F8E8()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10052FA1C;
  *(v2 + 24) = v0;
  v5[4] = sub_1000349FC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1001C5148;
  v5[3] = &unk_1008991D8;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10052FA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10052FA50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10052FA90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10052FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10000CFBC(v7, &unk_100943200);
    }

    else
    {
      sub_100263BF0(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

void sub_10052FC50(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_10075FCEC(v17, a3);
  sub_10075FD2C();
  sub_100532590(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_1009602D0;
    v7 = Strong;
    v8 = [*(Strong + qword_1009602D0) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView();
    sub_100532590(&unk_100942840, type metadata accessor for VideoView);
    sub_100760BFC();
  }

  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_10075FCEC(v18, v14);

    v15 = *&v9[v10];
    sub_100760BFC();
  }
}

double sub_10052FE70(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100530A94(a2, v11, a7, a5, v7, ObjectType);
}

double sub_10052FF80(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, int *a11)
{
  v80 = a6;
  v81 = a7;
  v90 = a3;
  v75 = a1;
  v76 = a2;
  v84 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v84);
  v78 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v85);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076997C();
  v72 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = v70 - v19;
  __chkstk_darwin(v20);
  v70[0] = v70 - v21;
  v22 = sub_10076DDDC();
  swift_allocObject();
  v97 = sub_10076DDBC();
  swift_allocObject();
  v96 = sub_10076DDBC();
  swift_allocObject();
  v95 = sub_10076DDBC();
  swift_allocObject();
  v94 = sub_10076DDBC();
  swift_allocObject();
  v100 = sub_10076DDBC();
  swift_allocObject();
  v93 = sub_10076DDBC();
  swift_allocObject();
  v92 = sub_10076DDBC();
  swift_allocObject();
  v99 = sub_10076DDBC();
  v23 = [a9 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v83 = sub_10076DDBC();
  v24 = 0;
  v25 = 0;
  if (a8)
  {
    swift_allocObject();
    v25 = sub_10076DDBC();
    swift_allocObject();
    v24 = sub_10076DDBC();
  }

  v91 = v24;
  v82 = v25;
  v26 = [a9 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = sub_10077087C();

  v98 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v89 = sub_10076D3DC();
  sub_10000A61C(v89, qword_1009A2098);
  v29 = a9;
  v30 = [a9 traitCollection];
  v31 = sub_100770B3C();

  v71 = v28;
  v32 = sub_10076C04C();
  v122[3] = v32;
  v88 = sub_100532590(&qword_100943230, &type metadata accessor for Feature);
  v122[4] = v88;
  v33 = sub_10000DB7C(v122);
  v34 = *(*(v32 - 8) + 104);
  v87 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v86 = v34;
  v34(v33);
  sub_10076C90C();
  sub_10000CD74(v122);

  v35 = v31;
  v70[1] = ~v28;
  v36 = v70[0];
  v73 = v35;
  sub_10076996C();
  sub_10076994C();
  v37 = *(v72 + 1);
  v37(v36, v16);
  if (qword_1009410E8 != -1)
  {
    swift_once();
  }

  v72 = a11;
  sub_10000A61C(v89, qword_1009A20B0);
  v38 = [v29 traitCollection];
  v39 = sub_100770B3C();

  v121[3] = v32;
  v121[4] = v88;
  v40 = sub_10000DB7C(v121);
  v86(v40, v87, v32);
  sub_10076C90C();
  sub_10000CD74(v121);
  v90 = v29;

  v41 = v39;
  v42 = v74;
  v76 = v41;
  sub_10076996C();
  sub_10076994C();
  v37(v42, v16);
  if (qword_1009410F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v89, qword_1009A20C8);
  v43 = [v90 traitCollection];
  v44 = sub_100770B3C();

  v120[3] = v32;
  v120[4] = v88;
  v45 = sub_10000DB7C(v120);
  v86(v45, v87, v32);
  sub_10076C90C();
  sub_10000CD74(v120);

  v46 = v44;
  v47 = v77;
  v98 = v46;
  sub_10076996C();
  sub_10076994C();
  v37(v47, v16);
  if (qword_10093F850 != -1)
  {
    swift_once();
  }

  v48 = sub_10000A61C(v84, qword_10099D2B0);
  v49 = v78;
  sub_10015B0D4(v48, v78);
  v119 = &protocol witness table for LayoutViewPlaceholder;
  v118 = v22;
  *&v117 = v97;
  v116 = &protocol witness table for LayoutViewPlaceholder;
  v115 = v22;
  v113 = &protocol witness table for LayoutViewPlaceholder;
  *&v114 = v96;
  v112 = v22;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v111 = v95;
  v109 = v22;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v94;
  v106 = v22;
  *&v105 = v100;
  sub_10000A570(v122, v104);
  sub_10000A570(v121, v103);
  sub_10000A570(v120, v101);
  v50 = v82;
  if (v82)
  {
    v51 = v22;
  }

  else
  {
    v51 = 0;
  }

  if (v82)
  {
    v52 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v52 = 0;
  }

  v88 = v52;
  v89 = v51;
  v53 = v91;
  if (v91)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  if (v91)
  {
    v55 = v22;
  }

  else
  {
    v55 = 0;
  }

  v56 = v79;
  sub_10015B138(v49, v79);
  v57 = v85;
  sub_100012498(&v117, v56 + *(v85 + 20));
  sub_100012498(&v114, v56 + v57[6]);
  sub_100012498(&v111, v56 + v57[7]);
  sub_100012498(&v108, v56 + v57[8]);
  sub_100012498(&v105, v56 + v57[9]);
  v58 = (v56 + v57[10]);
  v59 = v92;
  *v58 = v93;
  v58[3] = v22;
  v58[4] = &protocol witness table for LayoutViewPlaceholder;
  v60 = (v56 + v57[11]);
  *v60 = v59;
  v60[3] = v22;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v61 = (v56 + v57[12]);
  *v61 = v99;
  v61[3] = v22;
  v61[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_100012498(v104, v56 + v57[13]);
  sub_100012498(v103, v56 + v57[14]);
  v62 = v56 + v57[15];
  v63 = v101[1];
  *v62 = v101[0];
  *(v62 + 16) = v63;
  *(v62 + 32) = v102;
  v64 = (v56 + v57[16]);
  *v64 = v83;
  v64[3] = v22;
  v64[4] = &protocol witness table for LayoutViewPlaceholder;
  v65 = (v56 + v57[17]);
  *v65 = v50;
  v65[1] = 0;
  v66 = v88;
  v67 = v89;
  v65[2] = 0;
  v65[3] = v67;
  v65[4] = v66;
  v68 = (v56 + v57[18]);
  *v68 = v53;
  v68[1] = 0;
  v68[2] = 0;
  v68[3] = v55;
  v68[4] = v54;

  sub_1006061E0(v90, v56, v72);

  sub_10001D3B8(v56);
  sub_10000CD74(v120);
  sub_10000CD74(v121);
  sub_10000CD74(v122);
  return a4;
}

double sub_100530A94(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = sub_10075F1BC();
  v11 = v10;
  v12 = sub_10075F1AC();
  v14 = v13;
  v15 = sub_10075F1EC();
  v17 = v16;
  v18 = sub_10052BE68();
  v19 = sub_10052FF80(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, a5, a6);

  return v19;
}

uint64_t sub_100530B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v167 = a2;
  v5 = sub_10076F68C();
  v165 = *(v5 - 8);
  v166 = v5;
  __chkstk_darwin(v5);
  v164 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v7 - 8);
  v161 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v160 = &v142 - v10;
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v158 = &v142 - v12;
  v13 = sub_1007611EC();
  __chkstk_darwin(v13 - 8);
  v156 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v155 = &v142 - v16;
  v17 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v17 - 8);
  v154 = &v142 - v18;
  v152 = sub_10076121C();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v153 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_10076481C();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v163 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v21 - 8);
  v143 = &v142 - v22;
  v23 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v23 - 8);
  v145 = &v142 - v24;
  v25 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v25 - 8);
  v149 = &v142 - v26;
  v27 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v27 - 8);
  v146 = &v142 - v28;
  v29 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v29 - 8);
  v147 = &v142 - v30;
  v31 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v31 - 8);
  v33 = &v142 - v32;
  v34 = sub_10076A3AC();
  v144 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v37 - 8);
  v148 = &v142 - v38;
  v39 = sub_10076361C();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10075F1AC();
  sub_10015818C(v43, v44);
  v45 = sub_10075F1BC();
  sub_100158198(v45, v46);
  v47 = sub_10075F1EC();
  sub_100158300(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
  sub_10075F16C();
  v50 = sub_1007635FC();
  v51 = v39;
  v52 = v167;
  (*(v40 + 8))(v42, v51);
  v150 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_100157B38();
  v168 = a1;
  v53 = sub_10052BE68();
  v162 = v3;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView])
    {
      v55 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10015AEE8();
      v56 = *&v3[v54];
      *&v3[v54] = v55;
      v57 = v55;

      sub_100158884();
    }

    v58 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView])
    {
      v59 = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v60 = *&v3[v58];
      if (v60)
      {
        [v60 removeFromSuperview];
        v61 = *&v3[v58];
      }

      else
      {
        v61 = 0;
      }

      *&v3[v58] = v59;
      v69 = v59;

      sub_100158A4C();
    }

    v70 = *&v3[v54];
    if (v70)
    {
      [v70 setHidden:0];
    }

    v71 = *&v3[v58];
    if (v71)
    {
      [v71 setHidden:0];
      v72 = *&v3[v58];
      if (v72)
      {
        v142 = v58;
        v73 = v72;
        v74 = sub_10075F1DC();
        v75 = v144;
        v76 = *(v144 + 104);
        v76(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v34);
        v76(v33, enum case for OfferButtonPresenterViewAlignment.left(_:), v34);
        (*(v75 + 56))(v33, 0, 1, v34);
        sub_100532590(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
        v77 = v148;
        sub_10076759C();
        v78 = sub_10000A5D4(&qword_100945590);
        (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
        v79 = sub_10075F78C();
        v80 = v147;
        (*(*(v79 - 8) + 56))(v147, 1, 1, v79);
        v81 = sub_1007628DC();
        v82 = v146;
        (*(*(v81 - 8) + 56))(v146, 1, 1, v81);
        v83 = sub_10000A5D4(&unk_100946750);
        v84 = v149;
        (*(*(v83 - 8) + 56))(v149, 1, 1, v83);
        v85 = sub_10076C54C();
        v86 = v145;
        (*(*(v85 - 8) + 56))(v145, 1, 1, v85);
        v144 = v74;
        sub_1004D0A60(v74, v73, v77, v167, 0, 0, v80, v82, v86, v84);
        sub_10000CFBC(v86, &unk_100949290);
        v73[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
        sub_10026202C();
        [v73 setNeedsLayout];
        v87 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
        v88 = *&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
        if (v88)
        {
          [v88 setHidden:1];
          v89 = *&v73[v87];
          if (v89)
          {
            [v89 setText:0];
          }
        }

        v90 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
        v91 = *&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
        if (v91)
        {
          if (([v91 isHidden] & 1) == 0)
          {
            v92 = *&v73[v90];
            if (v92)
            {
              if ([v92 hasContent])
              {
                v93 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
                [*&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
                [*&v73[v93] setText:0];
              }
            }
          }
        }

        v94 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
        if ([*&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] isHidden] || !objc_msgSend(*&v73[v94], "hasContent"))
        {

          sub_10000CFBC(v149, &qword_10094F730);
          sub_10000CFBC(v82, &unk_1009492A0);
          sub_10000CFBC(v80, &unk_10094D210);
          sub_10000CFBC(v148, &unk_100946760);
        }

        else
        {
          v95 = *&v73[v90];
          if (v95)
          {
            [v95 setHidden:1];
            v96 = *&v73[v90];
            if (v96)
            {
              [v96 setText:0];
            }
          }

          v97 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
          [*&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v73[v97] setText:0];

          sub_10000CFBC(v149, &qword_10094F730);
          sub_10000CFBC(v82, &unk_1009492A0);
          sub_10000CFBC(v80, &unk_10094D210);
          sub_10000CFBC(v148, &unk_100946760);
        }

        v98 = *&v3[v142];
        if (v98)
        {
          v99 = *(v98 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
          if (!v99)
          {
            goto LABEL_37;
          }

          v100 = qword_100940AD8;
          v101 = v99;
          if (v100 != -1)
          {
            swift_once();
          }

          v102 = sub_10076D3DC();
          v103 = sub_10000A61C(v102, qword_1009A0E98);
          v104 = *(v102 - 8);
          v105 = v143;
          (*(v104 + 16))(v143, v103, v102);
          (*(v104 + 56))(v105, 0, 1, v102);
          sub_1007625DC();

          v98 = *&v3[v142];
          if (v98)
          {
LABEL_37:
            v106 = *(v98 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
            if (v106)
            {
              v107 = qword_100940AF0;
              v108 = v106;
              if (v107 != -1)
              {
                swift_once();
              }

              v109 = sub_10076D3DC();
              v110 = sub_10000A61C(v109, qword_1009A0EE0);
              v111 = *(v109 - 8);
              v112 = v143;
              (*(v111 + 16))(v143, v110, v109);
              (*(v111 + 56))(v112, 0, 1, v109);
              sub_1007625DC();
            }
          }
        }
      }
    }

    sub_10075F1DC();
    v113 = sub_10076B9FC();

    if (v113)
    {
      v114 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v115 = swift_allocObject();
      v52 = v167;
      v115[2] = v114;
      v115[3] = v52;
      v115[4] = v113;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_100532658;
      *(v113 + 24) = v115;

      v116 = sub_100098284;
    }

    else
    {
      v116 = 0;
      v52 = v167;
    }

    v117 = v3;
    v66 = v163;
    v118 = &v117[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v117[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    *v118 = v116;
    v118[1] = v113;
  }

  else
  {
    v62 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView;
    v63 = *&v3[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView];
    if (v63)
    {
      [v63 removeFromSuperview];
      v64 = *&v3[v62];
    }

    else
    {
      v64 = 0;
    }

    v65 = v3;
    v66 = v163;
    *&v65[v62] = 0;

    sub_100158A4C();
    v67 = &v65[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v65[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    *v67 = 0;
    *(v67 + 1) = 0;
  }

  sub_1000167E0(v68);
  if (sub_10075F12C())
  {
    (*(v151 + 104))(v153, enum case for VideoFillMode.scaleAspectFill(_:), v152);
    sub_10076B84C();
    sub_10076BEFC();
    v119 = v154;
    sub_10076D3AC();

    v120 = sub_10076D39C();
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    v121 = v169[0];
    sub_10076B7CC();
    v122 = v158;
    sub_10076B85C();
    v123 = sub_10075DB7C();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    v124 = v160;
    sub_10076B81C();
    v125 = v161;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_100532590(&qword_100942810, type metadata accessor for VideoView);
    v167 = v121;
    v126 = sub_100762EEC();
    v127 = v66;
    sub_10000CFBC(v125, &unk_10094C030);
    sub_10000CFBC(v124, &unk_10094C030);
    sub_10000CFBC(v122, &unk_1009435D0);
    sub_10000CFBC(v169, &qword_100943310);
    v128 = v162;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v130 = Strong;
      [v150 insertSubview:Strong aboveSubview:*&v128[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v128 setNeedsLayout];

      (*(v157 + 8))(v127, v159);
    }

    else
    {
      (*(v157 + 8))(v127, v159);
    }
  }

  else
  {
    v128 = v162;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    v131 = swift_unknownObjectWeakLoadStrong();
    if (v131)
    {
      v132 = v131;
      [v150 insertSubview:v131 aboveSubview:*&v128[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v128 setNeedsLayout];
    }
  }

  sub_100767C9C();
  sub_10076F64C();
  sub_10076FC1C();
  v133 = v169[0];

  v134 = sub_10075F17C();
  type metadata accessor for NotifyMeButtonPresenter();
  v135 = swift_allocObject();
  v136 = v135 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  *(v135 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v135 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v135 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v136 + 8) = &off_10088A018;
  swift_unknownObjectWeakAssign();
  *(v135 + 16) = v133;
  *(v135 + 24) = v134;

  v137 = v164;
  v138 = v166;
  sub_10076FC1C();
  (*(v165 + 32))(v135 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_metricsPipeline, v137, v138);
  *(v135 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_objectGraph) = v52;
  sub_10076148C();

  sub_10076FC1C();
  *(v135 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_bag) = v169[5];
  sub_10074F1BC();
  sub_10074F8C8();
  v139 = [objc_opt_self() defaultCenter];

  v140 = sub_100767C0C();
  [v139 addObserver:v135 selector:"userNotificationsDidChangeNotification:" name:v140 object:0];

  sub_10015A064(v135);
  v128[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_includeBorderInDarkMode] = sub_10075F18C() & 1;
  sub_100157B38();
}

void *sub_1005321BC(uint64_t a1, void *a2)
{
  v3 = sub_10076BEDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _swiftEmptyArrayStorage;
  if (qword_10093F850 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000A61C(v7, qword_10099D2B0);
  sub_10076D36C();
  if (sub_10075F12C())
  {
    sub_10076B84C();
  }

  else if (!sub_10075F14C())
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  sub_10076BEEC();
  sub_10076BE9C();
  (*(v4 + 8))(v6, v3);
  sub_10076BFCC();

  sub_10077019C();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  v8 = v16;
LABEL_9:
  sub_10075F1DC();
  v9 = sub_10076BB9C();

  if (v9)
  {
    v10 = [a2 traitCollection];
    v11 = sub_10077071C();

    if (v11)
    {
      if (qword_10093F848 != -1)
      {
        swift_once();
      }

      v12 = qword_10099D298;
    }

    else
    {
      if (qword_10093F840 != -1)
      {
        swift_once();
      }

      v12 = qword_10099D280;
    }

    v13 = sub_100763ADC();
    sub_10000A61C(v13, v12);
    sub_1007639AC();
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v4 + 8))(v6, v3);
    sub_10076BFCC();

    sub_10077019C();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    return v16;
  }

  else
  {
  }

  return v8;
}

uint64_t sub_100532590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005325D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100532610()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100532664()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100763ADC();
  v44 = *(v10 - 1);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076BF6C();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10076BEDC();
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a4;
  v50[4] = a5;
  v17 = sub_10000DB7C(v50);
  (*(*(a4 - 8) + 16))(v17, a1, a4);
  sub_10000A570(v50, v49);
  sub_10000A5D4(&unk_100942830);
  sub_10075F1FC();
  if (!swift_dynamicCast())
  {
    return sub_10000CD74(v50);
  }

  v18 = v48;
  if (qword_10093F850 != -1)
  {
    swift_once();
  }

  v46 = v14;
  v43 = a2;
  v19 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000A61C(v19, qword_10099D2B0);
  sub_10076D36C();
  v20 = sub_10075F12C();
  v42 = v18;
  if (v20)
  {
    sub_10076B84C();

    v21 = v47;
LABEL_8:
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v21 + 8))(v16, v46);
    sub_10076BFCC();
    v23 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v23 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      type metadata accessor for VideoView();
      sub_100532590(&unk_100942840, type metadata accessor for VideoView);
      sub_100760B8C();
    }

    else
    {
      sub_10075FD2C();
      sub_100532590(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }

    v21 = v47;
    goto LABEL_14;
  }

  v22 = sub_10075F14C();
  v21 = v47;
  if (v22)
  {

    goto LABEL_8;
  }

LABEL_14:
  v26 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
  if (v26)
  {
    v27 = v26;
    sub_10075F1DC();
    v28 = sub_10076BB9C();

    if (v28)
    {
      v29 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      v31 = v44;
      v30 = v45;
      (*(v44 + 16))(v12, &v27[v29], v45);
      sub_1007639AC();
      (*(v31 + 8))(v12, v30);
      sub_10076BEEC();
      sub_10076BE9C();
      v44 = *(v21 + 8);
      (v44)(v16, v46);
      v32 = sub_10076BFCC();
      v41 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v33 = *&v27[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
      v45 = v27;
      v34 = v33;
      sub_10076BF7C();
      sub_10075FCCC();
      [v34 setContentMode:sub_10076BDBC()];
      v47 = v32;
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v35 = v41;
      v36 = *&v27[v41];
      sub_10076BEEC();
      v37 = sub_10076BE9C();
      (v44)(v16, v46);
      [v36 setContentMode:v37];

      v27 = *&v27[v35];
      v38 = v45;

      sub_10075FD2C();
      sub_100532590(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }
  }

  else
  {
  }

  return sub_10000CD74(v50);
}

id sub_100532DD4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_10000A5D4(&unk_100946700);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = sub_10076B6EC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10000A5D4(&unk_100946710);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v17 + 8))(v19, v16);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v20 = sub_100630CB4();
  sub_10000A570(v39, v38);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076BC0C();
  if (swift_dynamicCast())
  {
    v21 = v37;
    v22 = v31;
    (*(v10 + 16))(v12, v15, v31);
    sub_10076FCFC();
    v23 = v27;
    sub_10076F87C();
    v24 = v36;
    sub_10046ABE0(v21, v23, v28, v9, v6, v20);
    swift_unknownObjectRelease();

    (*(v29 + 8))(v23, v30);
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v22);
    sub_10000CD74(v39);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v31);
    sub_10000CD74(v39);
    v24 = v36;
  }

  v25 = [v24 contentView];
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return [v24 setNeedsLayout];
}

uint64_t sub_1005332F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_10053334C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10053341C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_10095CC20;
    v15 = sub_10000A5D4(&qword_10095CC20);
    sub_100071820(&qword_10095CC28, &qword_10095CC20);
    sub_100071820(&qword_10095CC30, &qword_10095CC20);
    v16 = &unk_10095CC38;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v15 = sub_100689BF0(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v15;
    }

    v14 = &qword_10095CC00;
    v15 = sub_10000A5D4(&qword_10095CC00);
    sub_100071820(&qword_10095CC08, &qword_10095CC00);
    sub_100071820(&qword_10095CC10, &qword_10095CC00);
    v16 = &unk_10095CC18;
  }

  sub_100071820(v16, v14);
  return v15;
}

uint64_t sub_1005337B0()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10095CC40);
  sub_10000A61C(v4, qword_10095CC40);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

NSString sub_100533904()
{
  result = sub_10076FF6C();
  qword_10095CC58 = result;
  return result;
}

uint64_t sub_10053393C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100533998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = HIDWORD(a1);
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = HIDWORD(a4);
  v15 = sub_10076F2EC();
  __chkstk_darwin(v15 - 8);
  token.val[0] = v10;
  token.val[1] = v11;
  token.val[2] = v9;
  token.val[3] = v12;
  token.val[4] = v8;
  token.val[5] = v13;
  token.val[6] = v7;
  token.val[7] = v14;
  v16 = SecTaskCreateWithAuditToken(0, &token);
  if (!v16)
  {
    if (qword_100940808 != -1)
    {
      swift_once();
    }

    v24 = sub_10076FD4C();
    sub_10000A61C(v24, qword_10095CC40);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    return 0;
  }

  v17 = v16;
  error = 0;
  if (qword_100940810 != -1)
  {
    swift_once();
  }

  v18 = SecTaskCopyValueForEntitlement(v17, qword_10095CC58, &error);
  if (!v18)
  {
    v25 = error;
    if (!error)
    {
      goto LABEL_22;
    }

    if (qword_100940808 != -1)
    {
      swift_once();
    }

    v26 = sub_10076FD4C();
    sub_10000A61C(v26, qword_10095CC40);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v33._countAndFlagsBits = 0xD000000000000031;
    v33._object = 0x80000001007ECC60;
    sub_10076F2CC(v33);
    *&token.val[6] = sub_10000A5D4(&qword_10095CD08);
    *token.val = v25;
    sub_10076F29C();
    sub_1000258C0(&token);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_10076F2CC(v34);
    sub_10076F2FC();
    sub_10076FBEC();

LABEL_20:
    v22 = error;
    if (error)
    {
LABEL_21:
    }

LABEL_22:

    return 0;
  }

  *token.val = v18;
  swift_unknownObjectRetain();
  sub_10000A5D4(&unk_10094BB60);
  v19 = swift_dynamicCast();
  if (!v19)
  {
    if (qword_100940808 != -1)
    {
      swift_once();
    }

    v27 = sub_10076FD4C();
    sub_10000A61C(v27, qword_10095CC40);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v20 = v30;
  *token.val = a5;
  *&token.val[2] = v29;
  __chkstk_darwin(v19);
  *(&v28 - 2) = &token;
  v21 = sub_1001A3D8C(sub_100533F84, (&v28 - 4), v20);
  swift_unknownObjectRelease();

  v22 = error;
  if ((v21 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (error)
  {
  }

  return 1;
}

void (*sub_100533FA4(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100534008;
}

void sub_100534008(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10053DC84(&qword_100942810, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016F40(0, &qword_1009441F0);
        v10 = v4;
        v11 = sub_100770EEC();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_10057E5D8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10053DC84(&qword_100942810, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016F40(0, &qword_1009441F0);
      v16 = v4;
      v17 = sub_100770EEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_10057E5D8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

id (*sub_1005342CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100534330;
}

id sub_100534330(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
    v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton);
    if (v7)
    {
      [v7 addTarget:? action:? forControlEvents:?];
      v5 = *(a1 + 24);
    }

    v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);

    return [v8 addTarget:v5 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return result;
}

char *sub_1005343E0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsCalculator] = 0;
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock];
  v13 = type metadata accessor for AdvertsSearchResultContentView();
  *v12 = 0;
  *(v12 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView]];

  return v18;
}

id sub_100534634()
{
  v1 = v0;
  v2 = sub_10076749C();
  v142 = *(v2 - 8);
  v143 = v2;
  __chkstk_darwin(v2);
  v141 = &v110[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1007679DC();
  v145 = *(v4 - 8);
  v146 = v4;
  __chkstk_darwin(v4);
  v113 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10076997C();
  v130 = *(v6 - 8);
  v131 = v6;
  __chkstk_darwin(v6);
  v129 = &v110[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10076443C();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v127 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v152 = &v110[-v11];
  v157 = sub_10076747C();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157);
  v137 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v158 = &v110[-v14];
  v15 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v15 - 8);
  v112 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v156 = &v110[-v18];
  v19 = sub_10000A5D4(&unk_100942850);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v110[-v21];
  v23 = type metadata accessor for AdvertsSearchResultContentView();
  v196.receiver = v0;
  v196.super_class = v23;
  objc_msgSendSuper2(&v196, "layoutSubviews");
  sub_10076422C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  sub_10052225C();
  sub_100770A4C();
  [v32 setFrame:?];
  sub_10076ABBC();
  v33 = [v0 traitCollection];
  v34 = sub_10076DEDC();
  v136 = sub_10000A5D4(&unk_100942870);
  v35 = swift_allocObject();
  v150 = xmmword_1007841E0;
  *(v35 + 16) = xmmword_1007841E0;
  *(v35 + 32) = v33;
  v36 = v33;
  v147 = v34;
  v37 = sub_10076DEEC();
  v133 = sub_10001CE64();
  sub_10076D3EC();
  v132 = v38;

  v39 = *(v20 + 8);
  v138 = v22;
  v139 = v20 + 8;
  v140 = v19;
  v135 = v39;
  v39(v22, v19);
  v197.origin.x = v25;
  v197.origin.y = v27;
  v197.size.width = v29;
  v197.size.height = v31;
  MinX = CGRectGetMinX(v197);
  [v32 frame];
  MaxY = CGRectGetMaxY(v198);
  v40 = *&v32[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8];
  v119 = *&v32[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title];
  v41 = *&v32[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  v118 = v40;

  v42 = [v41 text];
  if (v42)
  {
    v43 = v42;
    v44 = sub_10076FF9C();
    v121 = v45;
    v122 = v44;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v46 = [*&v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel] text];
  v47 = v145;
  if (v46)
  {
    v48 = v46;
    v49 = sub_10076FF9C();
    v123 = v50;
    v124 = v49;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v51 = *&v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v52 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = *(*&v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
  v111 = v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute];
  v149 = v54;

  v155 = v53;

  v55 = [v1 traitCollection];
  (*(v47 + 56))(v156, 1, 1, v146);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v56 = v157;
  v57 = sub_10000A61C(v157, qword_1009A0690);
  v125 = *(v151 + 16);
  v126 = v151 + 16;
  v125(v158, v57, v56);
  v58 = sub_10077071C();
  v144 = v1;
  if (v58)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v59 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v59 = qword_100944CA0;
  }

  v60 = v154;
  v61 = sub_10000A61C(v154, v59);
  v62 = v153;
  v63 = v127;
  (*(v153 + 16))(v127, v61, v60);
  (*(v62 + 32))(v152, v63, v60);
  v64 = [v55 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v120 = sub_10076DDDC();
  swift_allocObject();
  v127 = sub_10076DDBC();
  v65 = objc_opt_self();
  v116 = v65;
  v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v148 = v55;
  v67 = sub_10076C04C();
  v195[3] = v67;
  v68 = sub_10053DC84(&qword_100943230, 255, &type metadata accessor for Feature);
  v195[4] = v68;
  v115 = v68;
  v69 = sub_10000DB7C(v195);
  v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v71 = *(v67 - 8);
  v72 = *(v71 + 104);
  v117 = v71 + 104;
  v114 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10076C90C();
  sub_10000CD74(v195);
  v73 = v129;
  sub_10076996C();
  sub_10076994C();
  v74 = v131;
  v130 = *(v130 + 8);
  (v130)(v73, v131);
  v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v194[3] = v67;
  v194[4] = v68;
  v76 = sub_10000DB7C(v194);
  v72(v76, v70, v67);
  sub_10076C90C();
  sub_10000CD74(v194);
  sub_10076996C();
  sub_10076994C();
  v77 = v130;
  (v130)(v73, v74);
  v78 = [v116 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v193[3] = v67;
  v193[4] = v115;
  v79 = sub_10000DB7C(v193);
  v72(v79, v114, v67);
  sub_10076C90C();
  sub_10000CD74(v193);
  sub_10076996C();
  sub_10076994C();
  v77(v73, v74);
  v80 = v155;
  LODWORD(v131) = sub_10001D420(0, v155) & (v80 != 0);
  if (v131 == 1)
  {
    v81 = v120;
    v82 = objc_allocWithZone(v147);
    v83 = v148;
    v84 = sub_10076DECC();
    v85 = v112;
    sub_100016E2C(v156, v112, &unk_100957F90);
    v87 = v145;
    v86 = v146;
    v88 = *(v145 + 48);
    if (v88(v85, 1, v146) == 1)
    {
      v89 = v113;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v88(v85, 1, v86) != 1)
      {
        sub_10000CFBC(v85, &unk_100957F90);
      }
    }

    else
    {
      v89 = v113;
      (*(v87 + 32))(v113, v85, v86);
    }

    v91 = v84;
    sub_10001A588(v155, v89, v91);

    (*(v87 + 8))(v89, v86);
    swift_allocObject();
    v90 = sub_10076DDAC();
  }

  else
  {
    v81 = v120;
    swift_allocObject();
    v90 = sub_10076DDBC();
  }

  v92 = v90;

  v93 = v149;
  if ((sub_10001D420(v149, 0) & (v93 != 0)) == 1)
  {
    sub_1004EF9EC(v93, v111);
    swift_allocObject();
    v94 = sub_10076DDAC();
  }

  else
  {
    swift_allocObject();
    v94 = sub_10076DDBC();
  }

  v95 = v94;
  v125(v137, v158, v157);
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v81;
  v190 = v127;
  v189 = 0;
  *&v187[40] = 0u;
  v188 = 0u;
  sub_10000A570(v195, v187);
  sub_10000A570(v194, &v186);
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;

  v146 = v95;
  v96 = sub_10076DDCC();
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v178 = v81;
  v177 = v96;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0;
  v166 = 0u;
  *&v165[40] = 0u;
  sub_10000A570(v193, v165);
  v163 = v81;
  v164 = &protocol witness table for LayoutViewPlaceholder;
  v161 = &protocol witness table for LayoutViewPlaceholder;
  v162 = v92;
  v160 = v81;
  v159 = v95;
  v97 = v141;
  sub_10076748C();
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  v99 = v148;
  *(v98 + 32) = v148;
  v100 = v99;
  v101 = sub_10076DEEC();
  sub_10053DC84(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
  v102 = v143;
  sub_10076D2AC();

  (*(v142 + 8))(v97, v102);
  sub_10000CD74(v193);
  sub_10000CD74(v194);
  sub_10000CD74(v195);
  (*(v153 + 8))(v152, v154);
  (*(v151 + 8))(v158, v157);
  sub_10000CFBC(v156, &unk_100957F90);
  v103 = v138;
  sub_10076ABBC();
  v104 = swift_allocObject();
  *(v104 + 16) = v150;
  *(v104 + 32) = v100;
  v105 = v100;
  v106 = sub_10076DEEC();
  v107 = v140;
  sub_10076D3EC();

  v135(v103, v107);
  v108 = *&v144[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  sub_100770A4C();
  return [v108 setFrame:?];
}

uint64_t sub_1005357B4(uint64_t a1, char *a2)
{
  KeyPath = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v6 - 8);
  v105 = &v89 - v7;
  v8 = sub_1007673CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v108 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v89 - v12;
  v13 = sub_10076350C();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v110 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v89 - v16;
  __chkstk_darwin(v17);
  v19 = &v89 - v18;
  v20 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v20 - 8);
  v113 = &v89 - v21;
  v22 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v22 - 8);
  v24 = &v89 - v23;
  v25 = sub_10076C38C();
  v109 = *(v25 - 8);
  __chkstk_darwin(v25);
  v114 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A14C();
  result = sub_10076F63C();
  v28 = v116;
  if (!v116)
  {
    return result;
  }

  v107 = a1;
  v29 = sub_10076A11C();
  if (!v29)
  {
  }

  v102 = v19;
  v104 = v28;
  v30 = v29;
  sub_10076763C();
  sub_10000A5D4(&unk_10095CDA0);
  sub_10076289C();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v97 = v30;
  v103 = v9;
  v98 = v25;
  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10076C22C();
  v31 = *&KeyPath[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  *(v31 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing) = v32;
  [v31 setNeedsLayout];
  sub_10076C2FC();
  v34 = v33;
  v36 = v35;
  v37 = sub_10076341C();
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);

  v101 = a2;
  sub_100386168(v38, v24, a2);
  sub_10000CFBC(v24, &unk_1009428D0);
  sub_100016F40(0, &qword_100942F10);
  v39 = sub_100770D2C();
  [KeyPath setBackgroundColor:v39];

  v40 = sub_10076280C();
  if (v40 >> 62)
  {
    v59 = v40;
    v41 = sub_10077158C();
    v40 = v59;
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v111;
  v111 = v8;
  if (v41)
  {
    v43 = v110;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v100 = sub_10077149C();
    }

    else
    {
      if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v100 = *(v40 + 32);
    }
  }

  else
  {

    v100 = 0;
    v43 = v110;
  }

  v94 = *&KeyPath[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  a1 = sub_10076283C();
  v93 = sub_10076281C();
  v44 = sub_10076288C();
  if (v44 >> 62)
  {
    v60 = v44;
    v45 = sub_10077158C();
    v44 = v60;
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = KeyPath;
  v95 = v31;
  v110 = a1;
  if (v45)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v92 = sub_10077149C();
    }

    else
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v92 = *(v44 + 32);
    }
  }

  else
  {

    v92 = 0;
  }

  v46 = ASKDeviceTypeGetCurrent();
  KeyPath = swift_getKeyPath();
  sub_10076338C();

  v47 = v116;
  sub_100460BD4(v113);

  v31 = sub_10076283C();
  a1 = sub_10076281C();
  v48 = sub_10076280C();
  if (v48 >> 62)
  {
    v61 = v48;
    v49 = sub_10077158C();
    v48 = v61;
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v103;
  if (v49)
  {
    if ((v48 & 0xC000000000000001) == 0)
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_57;
      }

      KeyPath = *(v48 + 32);

      goto LABEL_29;
    }

LABEL_53:
    KeyPath = sub_10077149C();
LABEL_29:

    goto LABEL_31;
  }

  KeyPath = 0;
LABEL_31:
  v50 = sub_10076288C();
  if (v50 >> 62)
  {
    v62 = v50;
    v51 = sub_10077158C();
    v50 = v62;
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = v13;
  if (v51)
  {
    if ((v50 & 0xC000000000000001) == 0)
    {
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v52 = *(v50 + 32);

LABEL_37:

        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    v52 = sub_10077149C();
    goto LABEL_37;
  }

  v52 = 0;
LABEL_39:
  sub_10076285C();
  if (sub_1007673BC())
  {
    if (!(a1 | v31))
    {
      v53 = sub_10057F8EC(KeyPath, v52, 0, 1);
      v31 = v53;
      a1 = v53 >> 62;
      if (!(v53 >> 62))
      {
        ObjectType = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (KeyPath)
        {
LABEL_43:
          v54 = sub_1007601CC();
          goto LABEL_60;
        }

LABEL_59:
        v54 = 0;
LABEL_60:
        v90 = sub_10057FC34(v54);

        v107 = KeyPath;
        v63 = v43;
        if (KeyPath)
        {
          v64 = sub_1007601CC();
        }

        else
        {
          v64 = 0;
        }

        v65 = v105;
        v66 = v111;
        (*(v24 + 2))(v105, v42, v111);
        (*(v24 + 7))(v65, 0, 1, v66);
        v91 = sub_10058015C(v64, v65);

        sub_10000CFBC(v65, &qword_10094E260);
        if (a1)
        {
          result = sub_10077158C();
        }

        else
        {
          result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v67 = v63;
        if (result)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
          }

          else
          {
            if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          v68 = sub_10076BDCC();

          if (v68)
          {

            v69 = *(v24 + 1);
            v69(v42, v111);
            v55 = v112;
            v70 = v106;
            v71 = v99;
            (*(v112 + 104))(v106, enum case for LockupMediaLayout.DisplayType.landscape(_:), v99);
LABEL_81:
            ObjectType = v69;
            v56 = v102;
            (*(v55 + 32))(v102, v70, v71);
            goto LABEL_82;
          }
        }

        else
        {
        }

        v72 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v73 = v112;
        v71 = v99;
        v105 = *(v112 + 104);
        (v105)(v63, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v99);
        v74 = sub_1007634FC();
        v75 = *(v73 + 8);
        v75(v67, v71);
        if (((ObjectType >= v74) & v91) != 0 || (v72 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v71), v76 = sub_1007634FC(), v75(v67, v71), ((ObjectType >= v76) & v90) != 0) || (v72 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v71), v77 = sub_1007634FC(), v75(v67, v71), ObjectType >= v77))
        {

          v69 = *(v103 + 1);
          v69(v42, v111);
        }

        else
        {
          v72 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
          (v105)(v67, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v71);
          v78 = sub_1007634FC();

          v75(v67, v71);
          v69 = *(v103 + 1);
          v69(v42, v111);
          if (ObjectType != v78)
          {
            v79 = enum case for LockupMediaLayout.DisplayType.none(_:);
            v70 = v106;
            v80 = v106;
LABEL_80:
            (v105)(v80, v79, v71);
            v55 = v112;
            goto LABEL_81;
          }
        }

        v70 = v106;
        v80 = v106;
        v79 = v72;
        goto LABEL_80;
      }

LABEL_58:
      ObjectType = sub_10077158C();
      if (KeyPath)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v57 = v106;
    sub_10076D3AC();

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v58 = v99;
    (*(v112 + 104))(v57, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v99);
    v56 = v102;
    (*(v55 + 32))(v102, v57, v58);
  }

  else
  {

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v56 = v102;
    (*(v112 + 104))(v102, enum case for LockupMediaLayout.DisplayType.none(_:), v99);
  }

LABEL_82:
  v81 = v108;
  sub_10076285C();
  v82 = ASKDeviceTypeGetCurrent();
  v83 = v113;
  sub_100142514(v110, v93, v100, v92, v113, v56, v81, v101, v34, v36, 0);

  ObjectType(v81, v111);
  (*(v55 + 8))(v56, v99);
  sub_10000CFBC(v83, &unk_1009467E0);
  v84 = sub_10076BB0C();

  if (v84)
  {
    v85 = sub_10076518C();

    v86 = v96;
    if (v85)
    {
      v87 = [objc_opt_self() clearColor];
      [v86 setBackgroundColor:v87];
    }
  }

  else
  {
    v85 = 0;
    v86 = v96;
  }

  v88 = v109;
  sub_100387B00(v85, v101);
  [v86 setNeedsLayout];

  [v86 setNeedsLayout];

  return (*(v88 + 8))(v114, v98);
}

uint64_t sub_100536790(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100942850);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v181 = &v146 - v6;
  v7 = sub_10076749C();
  v180 = *(v7 - 8);
  __chkstk_darwin(v7);
  v179 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007679DC();
  v183 = *(v9 - 8);
  *&v184 = v9;
  __chkstk_darwin(v9);
  v173 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076997C();
  v176 = *(v11 - 8);
  v177 = v11;
  __chkstk_darwin(v11);
  v175 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076443C();
  v187 = *(v13 - 8);
  v188 = v13;
  __chkstk_darwin(v13);
  v174 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v186 = &v146 - v16;
  v191 = sub_10076747C();
  v185 = *(v191 - 8);
  __chkstk_darwin(v191);
  v178 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v190 = &v146 - v19;
  v20 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v20 - 8);
  v172 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v189 = &v146 - v23;
  v192 = sub_1007673CC();
  v24 = *(v192 - 8);
  __chkstk_darwin(v192);
  v26 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v146 - v28;
  v30 = sub_10076BF6C();
  __chkstk_darwin(v30 - 8);
  v182 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A14C();
  result = sub_10076F63C();
  if (!v232[0])
  {
    return result;
  }

  v169 = v5;
  v170 = v4;
  v194 = v232[0];
  v171 = a1;
  sub_10000A570(a1, v232);
  sub_10000A5D4(&unk_100942830);
  v33 = sub_10076499C();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v168 = v7;
  v34 = v231[0];
  v233 = v33;
  v234 = sub_10053DC84(&qword_100948A38, 255, &type metadata accessor for AdvertsSearchResult);
  v232[0] = v34;

  v35 = sub_10076A10C();
  sub_10000CD74(v232);
  if (!v35)
  {
  }

  sub_10076763C();
  sub_10000A5D4(&unk_10095CDA0);
  sub_10076289C();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v162 = v35;
  v163 = v24;
  v159 = v26;
  v166 = v29;
  v36 = v231[0];
  v37 = v193;
  v38 = *&v193[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  v39 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v165 = v38;
  v40 = *(v38 + v39);
  if (v40 >> 62)
  {
    v41 = sub_10077158C();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v195 = a2;
  v167 = v34;
  v164 = v36;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_22;
    }

    v42 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = sub_10077149C();
      }

      else
      {
        v43 = *(v40 + v42 + 4);
      }

      v44 = v43;
      ++v42;
      v231[0] = v43;
      type metadata accessor for BorderedScreenshotView();
      sub_10053DC84(&qword_10094A410, 255, type metadata accessor for BorderedScreenshotView);
      v45 = v44;
      sub_10077140C();
      a2 = v195;
      sub_100760BEC();
      sub_100016C74(v232);
      v46 = *&v45[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      v235.value.super.isa = 0;
      v235.is_nil = 0;
      sub_10075FCEC(v235, v47);
    }

    while (v41 != v42);

    v37 = v193;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    v231[0] = v49;
    type metadata accessor for VideoView();
    sub_10053DC84(&qword_100957FA0, 255, type metadata accessor for VideoView);
    v50 = v49;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v232);
  }

  v37 = *&v37[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  v24 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v51 = *&v37[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v236.value.super.isa = 0;
  v236.is_nil = 0;
  sub_10075FCEC(v236, v52);

  v53 = *&v37[v24];
  v54 = sub_10075FD2C();
  v55 = sub_10053DC84(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v56 = v53;
  v160 = v55;
  v161 = v54;
  sub_100760BFC();

  v57 = sub_10076BB5C();
  v58 = v192;
  if (!v57)
  {
    goto LABEL_25;
  }

  v59 = qword_10093FBE0;
  v40 = *&v37[v24];
  if (v59 != -1)
  {
    goto LABEL_59;
  }

LABEL_22:
  v60 = sub_100763ADC();
  sub_10000A61C(v60, qword_10099DDA0);
  sub_1007639AC();
  [v40 contentMode];
  sub_10076BFCC();
  sub_10076BF7C();
  sub_10075FCCC();
  [v40 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_100016F40(0, &qword_100942F10);
    sub_100770D5C();
  }

  sub_10075FB8C();
  v61 = *&v37[v24];
  sub_100760B8C();

  v58 = v192;
LABEL_25:
  v62 = *&v37[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  sub_1005215E8(v171, a2);

  v63 = v166;
  sub_10076285C();
  if ((sub_1007673BC() & 1) == 0)
  {

    return (*(v163 + 8))(v63, v58);
  }

  v64 = sub_10076BB6C();
  v149 = v65;
  v150 = v64;
  v66 = sub_10076BBEC();
  v68 = v67;
  v69 = sub_10076BB0C();

  v151 = v68;
  v152 = v66;
  if (v69)
  {
    v70 = sub_10076518C();

    v71 = v190;
    v72 = v183;
    v73 = v174;
    if (v70)
    {
      v74 = sub_10076C3EC();
      v153 = v75;
      v154 = v74;
    }

    else
    {
      v153 = 0;
      v154 = 0;
    }

    v76 = v184;
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v71 = v190;
    v72 = v183;
    v76 = v184;
    v73 = v174;
  }

  v182 = sub_10076282C();
  v174 = sub_10076284C();
  v77 = sub_10076286C();
  v78 = [v193 traitCollection];
  (*(v72 + 56))(v189, 1, 1, v76);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v79 = v191;
  v80 = sub_10000A61C(v191, qword_1009A0690);
  v81 = v185 + 16;
  v82 = *(v185 + 16);
  v82(v71, v80, v79);
  v83 = sub_10077071C();
  LODWORD(v146) = v77;
  v156 = v82;
  v157 = v81;
  if ((v83 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v84 = qword_100944CA0;
    goto LABEL_41;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v84 = qword_100944C88;
LABEL_41:
    v85 = v188;
    v86 = sub_10000A61C(v188, v84);
    v87 = v187;
    (*(v187 + 16))(v73, v86, v85);
    (*(v87 + 32))(v186, v73, v85);
    v88 = [v78 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v155 = sub_10076DDDC();
    swift_allocObject();
    v171 = sub_10076DDBC();
    v89 = objc_opt_self();
    v147 = v89;
    v90 = [v89 preferredFontForTextStyle:UIFontTextStyleBody];
    v91 = sub_10076C04C();
    v233 = v91;
    v160 = sub_10053DC84(&qword_100943230, 255, &type metadata accessor for Feature);
    v234 = v160;
    v92 = sub_10000DB7C(v232);
    v93 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v94 = *(v91 - 8);
    v148 = *(v94 + 104);
    v158 = v94 + 104;
    HIDWORD(v146) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v148(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v91);
    sub_10076C90C();
    sub_10000CD74(v232);
    v95 = v175;
    sub_10076996C();
    sub_10076994C();
    v96 = v177;
    v161 = v78;
    v97 = *(v176 + 8);
    v97(v95, v177);
    v98 = [v89 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v231[3] = v91;
    v231[4] = v160;
    v99 = sub_10000DB7C(v231);
    v100 = v93;
    v101 = v148;
    v148(v99, v100, v91);
    sub_10076C90C();
    sub_10000CD74(v231);
    sub_10076996C();
    sub_10076994C();
    v97(v95, v96);
    v102 = [v147 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v230[3] = v91;
    v230[4] = v160;
    v103 = sub_10000DB7C(v230);
    v101(v103, HIDWORD(v146), v91);
    sub_10076C90C();
    sub_10000CD74(v230);
    sub_10076996C();
    sub_10076994C();
    v97(v95, v96);
    v104 = v182;
    LODWORD(v177) = sub_10001D420(0, v182) & (v104 != 0);
    if (v177 == 1)
    {
      v105 = objc_allocWithZone(sub_10076DEDC());
      v106 = v161;
      v107 = sub_10076DECC();
      v108 = v172;
      sub_100016E2C(v189, v172, &unk_100957F90);
      v110 = v183;
      v109 = v184;
      v111 = *(v183 + 48);
      if (v111(v108, 1, v184) == 1)
      {
        v112 = v173;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v111(v108, 1, v109) != 1)
        {
          sub_10000CFBC(v108, &unk_100957F90);
        }
      }

      else
      {
        v112 = v173;
        (*(v110 + 32))(v173, v108, v109);
      }

      v115 = v107;
      sub_10001A588(v182, v112, v115);

      (*(v110 + 8))(v112, v109);
      v113 = v155;
      swift_allocObject();
      v114 = sub_10076DDAC();
    }

    else
    {
      v113 = v155;
      swift_allocObject();
      v114 = sub_10076DDBC();
    }

    v116 = v114;

    v117 = v174;
    v118 = sub_10001D420(v174, 0) & (v117 != 0);
    v119 = v156;
    if (v118 == 1)
    {
      sub_1004EF9EC(v117, v146 & 1);
      swift_allocObject();
      v120 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v120 = sub_10076DDBC();
    }

    v121 = v120;
    v119(v178, v190, v191);
    v229 = &protocol witness table for LayoutViewPlaceholder;
    v228 = v113;
    v227 = v171;
    v226 = 0;
    *&v224[40] = 0u;
    v225 = 0u;
    sub_10000A570(v232, v224);
    sub_10000A570(v231, &v223);
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0;
    v217 = 0u;
    v218 = 0u;

    v122 = sub_10076DDCC();
    v216 = &protocol witness table for LayoutViewPlaceholder;
    v215 = v113;
    v214 = v122;
    v213 = 0;
    v211 = 0u;
    v212 = 0u;
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    v207 = 0;
    v205 = 0u;
    v206 = 0u;
    v204 = 0;
    v203 = 0u;
    *&v202[40] = 0u;
    sub_10000A570(v230, v202);
    v200 = v113;
    v201 = &protocol witness table for LayoutViewPlaceholder;
    v198 = &protocol witness table for LayoutViewPlaceholder;
    v199 = v116;
    v197 = v113;
    v196 = v121;
    v123 = v179;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v124 = swift_allocObject();
    v184 = xmmword_1007841E0;
    *(v124 + 16) = xmmword_1007841E0;
    v125 = v161;
    *(v124 + 32) = v161;
    v73 = v125;
    v126 = sub_10076DEEC();
    sub_10053DC84(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
    v127 = v168;
    sub_10076D2AC();

    (*(v180 + 8))(v123, v127);
    sub_10000CD74(v230);
    sub_10000CD74(v231);
    sub_10000CD74(v232);
    (*(v187 + 8))(v186, v188);
    (*(v185 + 8))(v190, v191);
    sub_10000CFBC(v189, &unk_100957F90);
    v78 = v181;
    sub_10076ABBC();
    v128 = swift_allocObject();
    *(v128 + 16) = v184;
    *(v128 + 32) = v73;
    v129 = v73;
    v130 = sub_10076DEEC();
    sub_10001CE64();
    v131 = v170;
    sub_10076D3EC();

    (*(v169 + 8))(v78, v131);
    v132 = sub_10076283C();
    v133 = sub_10076281C();
    v134 = sub_10076280C();
    if (v134 >> 62)
    {
      v136 = v134;
      v137 = sub_10077158C();
      v134 = v136;
      v135 = v163;
      if (!v137)
      {
LABEL_61:

        v73 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v135 = v163;
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }
    }

    if ((v134 & 0xC000000000000001) != 0)
    {
      v73 = sub_10077149C();
    }

    else
    {
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_75;
      }

      v73 = *(v134 + 32);
    }

LABEL_62:
    v138 = sub_10076288C();
    if (!(v138 >> 62))
    {
      if (!*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_64;
    }

    v140 = v138;
    v141 = sub_10077158C();
    v138 = v140;
    if (!v141)
    {
      break;
    }

LABEL_64:
    if ((v138 & 0xC000000000000001) != 0)
    {
      v139 = sub_10077149C();
      goto LABEL_67;
    }

    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v139 = *(v138 + 32);

LABEL_67:

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v139 = 0;
LABEL_70:
  v142 = [v193 traitCollection];
  v143 = v159;
  sub_10076285C();
  sub_100140784(v132, v133, v73, v139, v142, v195, v143);

  v144 = *(v135 + 8);
  v145 = v192;
  v144(v143, v192);
  return v144(v166, v145);
}

uint64_t sub_100537FE8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_10076611C();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  return sub_100522B20();
}

id sub_1005380A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertsSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100538200(void *a1)
{
  sub_10053DB0C();
}

uint64_t (*sub_100538238(uint64_t **a1))()
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
  v2[4] = sub_100533FA4(v2);
  return sub_100019A4C;
}

uint64_t sub_1005382B8(uint64_t a1, uint64_t a2)
{
  sub_10053D600(a1, a2);

  return sub_1000167E0(a1);
}

uint64_t (*sub_100538300(uint64_t *a1))()
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
  *(v2 + 32) = sub_1005342CC(v2);
  return sub_10001D41C;
}

uint64_t sub_1005383B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10053847C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_10001CE50(*v4);
  return v5;
}

uint64_t sub_1005384D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

uint64_t sub_100538594()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_10053DC84(&qword_10095C6D0, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_10076A03C();
}

uint64_t sub_10053863C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100538690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005386FC(uint64_t *a1))()
{
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
  swift_getWitnessTable();
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100538798(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016F40(0, &qword_1009441F0);
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_100538954(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10053DC84(&qword_10095CD88, a2, type metadata accessor for AdvertsSearchResultContentView);
  result = sub_10053DC84(&unk_10095CD90, v3, type metadata accessor for AdvertsSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1005389D8(unint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v2 - 8);
  v4 = &v165 - v3;
  v5 = sub_10076350C();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v188 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v165 - v8;
  __chkstk_darwin(v10);
  v12 = &v165 - v11;
  v13 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v165 - v14;
  v16 = sub_10000A5D4(&unk_100942850);
  v190 = *(v16 - 8);
  v191 = v16;
  __chkstk_darwin(v16);
  v189 = &v165 - v17;
  v18 = sub_10076749C();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin(v18);
  v205 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1007679DC();
  *&v210 = *(v211 - 1);
  __chkstk_darwin(v211);
  v195 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076997C();
  v202 = *(v21 - 8);
  v203 = v21;
  __chkstk_darwin(v21);
  v201 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076443C();
  v215 = *(v23 - 8);
  v216 = v23;
  __chkstk_darwin(v23);
  v25 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v214 = &v165 - v27;
  v218 = sub_10076747C();
  v213 = *(v218 - 8);
  __chkstk_darwin(v218);
  v204 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v220 = &v165 - v30;
  v31 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v31 - 8);
  v194 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v217 = &v165 - v34;
  v35 = sub_10076469C();
  __chkstk_darwin(v35 - 8);
  v37 = &v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10076C38C();
  v199 = *(v38 - 8);
  v200 = v38;
  __chkstk_darwin(v38);
  v212 = &v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1007673CC();
  v208 = *(v40 - 8);
  v209 = v40;
  __chkstk_darwin(v40);
  v219 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076499C();
  sub_10053DC84(&qword_100948A38, 255, &type metadata accessor for AdvertsSearchResult);
  result = sub_10076332C();
  if (!v257[0])
  {
    return result;
  }

  v196 = v257[0];
  v43 = sub_10076498C();
  if (!(v43 >> 62))
  {
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_51:
  }

  v109 = v43;
  v110 = sub_10077158C();
  v43 = v109;
  if (!v110)
  {
    goto LABEL_51;
  }

LABEL_4:
  v166 = v4;
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = sub_10077149C();
LABEL_7:
    v171 = v15;

    sub_10076285C();
    sub_1007632FC();
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    sub_10076C32C();
    sub_10076C2FC();

    v45 = sub_10076BB6C();
    v177 = v46;
    v178 = v45;
    v47 = sub_10076BBEC();
    v179 = v48;
    v180 = v47;
    v49 = sub_10076BB0C();
    v197 = v44;

    if (v49)
    {
      v50 = sub_10076518C();

      v51 = v210;
      if (v50)
      {
        v52 = sub_10076C3EC();
        v181 = v53;
        v182 = v52;
      }

      else
      {
        v181 = 0;
        v182 = 0;
      }

      v54 = v211;
    }

    else
    {
      v181 = 0;
      v182 = 0;
      v54 = v211;
      v51 = v210;
    }

    v198 = sub_10076282C();
    (*(v51 + 56))(v217, 1, 1, v54);
    v55 = sub_10076284C();
    v169 = sub_10076286C();
    swift_getKeyPath();
    sub_10076338C();

    v4 = v257[5];
    if (qword_1009407E8 != -1)
    {
      swift_once();
    }

    v56 = v218;
    v57 = sub_10000A61C(v218, qword_1009A0690);
    v58 = v213 + 16;
    v183 = *(v213 + 16);
    v183(v220, v57, v56);
    v59 = sub_10077071C();
    v170 = v5;
    v186 = a1;
    v167 = v9;
    v168 = v12;
    v192 = v55;
    v184 = v58;
    if ((v59 & 1) == 0)
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v60 = qword_100944CA0;
      goto LABEL_24;
    }

    if (qword_10093F520 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v60 = qword_100944C88;
LABEL_24:
      v61 = v216;
      v62 = sub_10000A61C(v216, v60);
      v63 = v215;
      (*(v215 + 16))(v25, v62, v61);
      (*(v63 + 32))(v214, v25, v61);
      v64 = [v4 preferredContentSizeCategory];
      sub_10077084C();

      sub_1007643EC();
      sub_10076441C();
      sub_10076746C();
      sub_10076745C();
      v176 = sub_10076DDDC();
      swift_allocObject();
      v185 = sub_10076DDBC();
      v65 = objc_opt_self();
      v174 = v65;
      v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
      v187 = v4;
      v67 = sub_10076C04C();
      v257[3] = v67;
      v68 = sub_10053DC84(&qword_100943230, 255, &type metadata accessor for Feature);
      v257[4] = v68;
      v173 = v68;
      v69 = sub_10000DB7C(v257);
      v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v71 = *(v67 - 8);
      v72 = *(v71 + 104);
      v175 = v71 + 104;
      v172 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
      sub_10076C90C();
      sub_10000CD74(v257);
      v73 = v201;
      sub_10076996C();
      sub_10076994C();
      v74 = v203;
      v202 = *(v202 + 8);
      (v202)(v73, v203);
      v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v256[3] = v67;
      v256[4] = v68;
      v76 = sub_10000DB7C(v256);
      v72(v76, v70, v67);
      sub_10076C90C();
      sub_10000CD74(v256);
      sub_10076996C();
      sub_10076994C();
      v77 = v202;
      (v202)(v73, v74);
      v78 = [v174 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v255[3] = v67;
      v255[4] = v173;
      v79 = sub_10000DB7C(v255);
      v72(v79, v172, v67);
      sub_10076C90C();
      sub_10000CD74(v255);
      sub_10076996C();
      sub_10076994C();
      v77(v73, v74);
      v80 = v198;
      LODWORD(v203) = sub_10001D420(0, v198) & (v80 != 0);
      if (v203 == 1)
      {
        v81 = v176;
        v82 = objc_allocWithZone(sub_10076DEDC());
        v83 = v187;
        v84 = sub_10076DECC();
        v85 = v194;
        sub_100016E2C(v217, v194, &unk_100957F90);
        v86 = v210;
        v87 = *(v210 + 48);
        v88 = v211;
        v89 = v87(v85, 1, v211);
        v90 = v183;
        if (v89 == 1)
        {
          v91 = v195;
          _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
          if (v87(v85, 1, v88) != 1)
          {
            sub_10000CFBC(v85, &unk_100957F90);
          }
        }

        else
        {
          v91 = v195;
          (*(v86 + 32))(v195, v85, v88);
        }

        v95 = v84;
        sub_10001A588(v198, v91, v95);

        (*(v86 + 8))(v91, v88);
        v92 = v81;
        swift_allocObject();
        v93 = sub_10076DDAC();
        v94 = v187;
      }

      else
      {
        v92 = v176;
        swift_allocObject();
        v93 = sub_10076DDBC();
        v94 = v187;
        v90 = v183;
      }

      v96 = v192;
      if ((sub_10001D420(v192, 0) & (v96 != 0)) == 1)
      {
        sub_1004EF9EC(v96, v169 & 1);
        swift_allocObject();
        v97 = sub_10076DDAC();
      }

      else
      {
        swift_allocObject();
        v97 = sub_10076DDBC();
      }

      v98 = v97;
      v90(v204, v220, v218);
      v254 = &protocol witness table for LayoutViewPlaceholder;
      v253 = v92;
      v9 = v185;
      v252 = v185;
      v251 = 0;
      *&v249[40] = 0u;
      v250 = 0u;
      sub_10000A570(v257, v249);
      sub_10000A570(v256, &v248);
      v247 = 0;
      v245 = 0u;
      v246 = 0u;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;

      v99 = sub_10076DDCC();
      v241 = &protocol witness table for LayoutViewPlaceholder;
      v240 = v92;
      v239 = v99;
      v238 = 0;
      v236 = 0u;
      v237 = 0u;
      v235 = 0;
      v233 = 0u;
      v234 = 0u;
      v232 = 0;
      v230 = 0u;
      v231 = 0u;
      v229 = 0;
      v228 = 0u;
      *&v227[40] = 0u;
      sub_10000A570(v255, v227);
      v226 = &protocol witness table for LayoutViewPlaceholder;
      v225 = v92;
      v223 = &protocol witness table for LayoutViewPlaceholder;
      v224 = v93;
      v222 = v92;
      v221 = v98;
      v100 = v205;
      sub_10076748C();
      v101 = sub_10076DEDC();
      sub_10000A5D4(&unk_100942870);
      v102 = swift_allocObject();
      v210 = xmmword_1007841E0;
      *(v102 + 16) = xmmword_1007841E0;
      *(v102 + 32) = v94;
      v103 = v94;
      v211 = v101;
      v104 = sub_10076DEEC();
      sub_10053DC84(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
      v25 = v207;
      sub_10076D2AC();

      (*(v206 + 8))(v100, v25);
      sub_10000CD74(v255);
      sub_10000CD74(v256);
      sub_10000CD74(v257);
      (*(v215 + 8))(v214, v216);
      (*(v213 + 8))(v220, v218);
      sub_10000CFBC(v217, &unk_100957F90);
      v105 = sub_10076280C();
      if (v105 >> 62)
      {
        v37 = sub_10077158C();
      }

      else
      {
        v37 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = sub_10076283C();
      if (a1)
      {
      }

      v4 = sub_10076281C();
      if (v4)
      {
      }

      v106 = sub_10076288C();
      if (v106 >> 62)
      {
        v111 = v106;
        v112 = sub_10077158C();
        v106 = v111;
        if (!v112)
        {
LABEL_55:

          v108 = a1 | v37;
          goto LABEL_56;
        }
      }

      else if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      if ((v106 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_45;
      }

      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v43 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_66:
  sub_10077149C();
LABEL_45:

  v107 = sub_10076C41C();

  if (v107 >> 62)
  {
    v108 = sub_10077158C();
  }

  else
  {
    v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 | v37)
  {
    if ((sub_1007673BC() & 1) == 0)
    {
LABEL_64:

      (*(v199 + 8))(v212, v200);
      return (*(v208 + 8))(v219, v209);
    }
  }

  else
  {
LABEL_56:
    if ((sub_1007673BC() & 1) == 0 || !(v108 | v4))
    {
      goto LABEL_64;
    }
  }

  v113 = v189;
  sub_10076ABBC();
  swift_getKeyPath();
  sub_10076338C();

  v114 = v257[0];
  v115 = swift_allocObject();
  *(v115 + 16) = v210;
  *(v115 + 32) = v114;
  v116 = v114;
  v117 = sub_10076DEEC();
  sub_10001CE64();
  v118 = v191;
  sub_10076D3EC();

  (*(v190 + 8))(v113, v118);
  v119 = sub_10076283C();
  v120 = sub_10076281C();
  v121 = sub_10076280C();
  if (v121 >> 62)
  {
    v124 = v121;
    v125 = sub_10077158C();
    v121 = v124;
    v122 = v171;
    if (v125)
    {
      goto LABEL_60;
    }

LABEL_71:

    v123 = 0;
    goto LABEL_72;
  }

  v122 = v171;
  if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

LABEL_60:
  if ((v121 & 0xC000000000000001) != 0)
  {
    v123 = sub_10077149C();
  }

  else
  {
    if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v123 = *(v121 + 32);
  }

LABEL_72:
  v126 = sub_10076288C();
  if (v126 >> 62)
  {
    v130 = v126;
    v127 = sub_10077158C();
    v126 = v130;
  }

  else
  {
    v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v220 = v119;
  v217 = v120;
  v218 = v123;
  if (v127)
  {
    if ((v126 & 0xC000000000000001) != 0)
    {
      v216 = sub_10077149C();
    }

    else
    {
      if (!*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_109;
      }

      v216 = *(v126 + 32);
    }
  }

  else
  {

    v216 = 0;
  }

  v128 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_10076338C();

  v120 = v257[0];
  sub_100460BD4(v122);

  v9 = sub_10076283C();
  v119 = sub_10076281C();
  v129 = sub_10076280C();
  if (v129 >> 62)
  {
    v131 = v129;
    v132 = sub_10077158C();
    v129 = v131;
    if (v132)
    {
LABEL_82:
      if ((v129 & 0xC000000000000001) == 0)
      {
        if (!*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_111;
        }

        a1 = *(v129 + 32);

        goto LABEL_85;
      }

LABEL_107:
      a1 = sub_10077149C();
LABEL_85:

      goto LABEL_89;
    }
  }

  else if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  a1 = 0;
LABEL_89:
  v133 = sub_10076288C();
  if (v133 >> 62)
  {
    v135 = v133;
    v136 = sub_10077158C();
    v133 = v135;
    if (v136)
    {
LABEL_91:
      if ((v133 & 0xC000000000000001) == 0)
      {
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v134 = *(v133 + 32);

LABEL_94:

          goto LABEL_97;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        v215 = sub_10077158C();
        if (a1)
        {
          goto LABEL_101;
        }

LABEL_113:
        v138 = 0;
        goto LABEL_114;
      }

LABEL_109:
      v134 = sub_10077149C();
      goto LABEL_94;
    }
  }

  else if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_91;
  }

  v134 = 0;
LABEL_97:
  if ((sub_1007673BC() & 1) == 0)
  {

    v139 = v193;
    v140 = v168;
    (*(v193 + 104))(v168, enum case for LockupMediaLayout.DisplayType.none(_:), v170);
LABEL_136:
    type metadata accessor for LockupMediaView();
    v162 = sub_100630CB4();
    swift_getObjectType();
    v163 = v219;
    v164 = v171;
    sub_100141F14(v220, v217, v218, v216, v171, v140, v162, v219);

    swift_unknownObjectRelease();

    (*(v139 + 8))(v140, v170);
    sub_10000CFBC(v164, &unk_1009467E0);
    (*(v199 + 8))(v212, v200);
    return (*(v208 + 8))(v163, v209);
  }

  if (v119 | v9)
  {
    v141 = v167;
    sub_10076D3AC();

    v139 = v193;
    v142 = v170;
    (*(v193 + 104))(v141, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v170);
    v140 = v168;
    (*(v139 + 32))(v168, v141, v142);
    goto LABEL_136;
  }

  v137 = sub_10057F8EC(a1, v134, 0, 1);
  v119 = v137;
  v120 = (v137 >> 62);
  if (v137 >> 62)
  {
    goto LABEL_112;
  }

  v215 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_113;
  }

LABEL_101:
  v138 = sub_1007601CC();
LABEL_114:
  v143 = sub_10057FC34(v138);

  LODWORD(v213) = v143;
  if (a1)
  {
    v144 = sub_1007601CC();
  }

  else
  {
    v144 = 0;
  }

  v146 = v208;
  v145 = v209;
  v147 = v166;
  (*(v208 + 16))(v166, v219, v209);
  (*(v146 + 56))(v147, 0, 1, v145);
  v148 = sub_10058015C(v144, v147);

  sub_10000CFBC(v147, &qword_10094E260);
  if (v120)
  {
    result = sub_10077158C();
  }

  else
  {
    result = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v149 = v188;
  if (!result)
  {

    goto LABEL_127;
  }

  if ((v119 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_124:

    v150 = sub_10076BDCC();

    if (v150)
    {

      v139 = v193;
      v151 = v167;
      v152 = v170;
      (*(v193 + 104))(v167, enum case for LockupMediaLayout.DisplayType.landscape(_:), v170);
LABEL_135:
      v140 = v168;
      (*(v139 + 32))(v168, v151, v152);
      goto LABEL_136;
    }

LABEL_127:
    v153 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v154 = v193;
    v152 = v170;
    v214 = *(v193 + 104);
    (v214)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v170);
    v155 = sub_1007634FC();
    v211 = *(v154 + 8);
    (v211)(v149, v152);
    if (((v215 >= v155) & v148) != 0 || (v153 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v152), v156 = sub_1007634FC(), v157 = v211, (v211)(v149, v152), ((v215 >= v156) & v213) != 0) || (v153 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v152), v158 = sub_1007634FC(), v157(v149, v152), v215 >= v158))
    {
    }

    else
    {
      v153 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v214)(v149, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v152);
      v159 = sub_1007634FC();

      v157(v149, v152);
      if (v215 != v159)
      {
        v160 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v151 = v167;
        v161 = v167;
LABEL_134:
        (v214)(v161, v160, v152);
        v139 = v193;
        goto LABEL_135;
      }
    }

    v151 = v167;
    v161 = v167;
    v160 = v153;
    goto LABEL_134;
  }

  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_124;
  }

  __break(1u);
  return result;
}
double sub_100707F80()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer_submitButton];
  if (!v1)
  {
    return JUMeasurementsZero[0];
  }

  v2 = v1;
  [v0 layoutMargins];
  sub_100770ACC();
  [v2 measurementsWithFitting:v0 in:?];
  [v0 layoutMargins];
  sub_100770AEC();
  v4 = v3;
  [v0 layoutMargins];
  [v0 layoutMargins];

  return v4;
}

uint64_t initializeBufferWithCopyOfBuffer for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_100708150()
{
  result = qword_100966730;
  if (!qword_100966730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966730);
  }

  return result;
}

unint64_t sub_1007081A8()
{
  result = qword_100966738;
  if (!qword_100966738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966738);
  }

  return result;
}

uint64_t sub_10070821C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_100763F9C();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10077164C();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100945BD0);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v27 - v6;
  v7 = sub_10000A5D4(&unk_10094CD50);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v34 = sub_10076428C();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100946720);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v14 + 8))(v16, v13);
  if (v41 && (v17 = sub_1007603BC(), , (v17 & 1) != 0))
  {
    v18 = 1;
    v19 = v38;
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    v20 = v41;
    sub_1002AAFCC(v12);

    swift_getKeyPath();
    sub_10076338C();

    v21 = v41;
    v22 = sub_10077071C();

    if ((v22 & 1) == 0)
    {
      sub_10076425C();
      swift_getKeyPath();
      sub_10076338C();

      v39 = v40;
      sub_10075FDCC();
      swift_unknownObjectRelease();
      (*(v27 + 8))(v9, v7);
      v23 = v28;
      sub_10076426C();
      swift_getKeyPath();
      sub_10076338C();

      v24 = v31;
      sub_10076D17C();
      sub_10075FE7C();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v24, v33);
      (*(v29 + 8))(v23, v30);
    }

    (*(v36 + 104))(v35, enum case for ComponentSeparator.Position.bottom(_:), v37);
    v19 = v38;
    sub_100763FAC();
    (*(v10 + 8))(v12, v34);
    v18 = 0;
  }

  v25 = sub_100763FDC();
  return (*(*(v25 - 8) + 56))(v19, v18, 1, v25);
}

uint64_t sub_10070882C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v50 = sub_10076C38C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v54);
  v57 = &v47 - v4;
  v5 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v14 - 8);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v47 - v17;
  v18 = sub_10000A5D4(&unk_100946720);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v56 = sub_10076B5BC();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076468C();
  swift_getKeyPath();
  v55 = v23;
  sub_10076F49C();

  v24 = *(v19 + 8);
  v24(v21, v18);
  v49 = a1;
  sub_10076463C();
  sub_10000CFBC(v7, &qword_1009499A0);
  sub_10002AB4C(v10, v13);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_10000CFBC(v13, &qword_1009499A0);
    v25 = 1;
    v26 = v52;
  }

  else
  {
    swift_getKeyPath();
    v26 = v52;
    sub_10076F49C();

    v24(v13, v18);
    v25 = 0;
  }

  v27 = v53;
  v28 = v56;
  (*(v53 + 56))(v26, v25, 1, v56);
  v29 = v55;
  v30 = *(v54 + 48);
  v31 = v57;
  (*(v27 + 16))(v57, v55, v28);
  sub_10002ABBC(v26, v31 + v30);
  if ((*(v27 + 48))(v31 + v30, 1, v28) == 1)
  {
    v32 = v47;
    sub_10076460C();
    sub_10076C23C();
    v34 = v33;
    (*(v48 + 8))(v32, v50);
    v35 = v58;
    v58[3] = &type metadata for CGFloat;
    v35[4] = &protocol witness table for CGFloat;
    *v35 = v34;
    sub_10000CFBC(v26, &unk_1009568A0);
    v36 = *(v27 + 8);
    v36(v29, v28);
    sub_10000CFBC(v31 + v30, &unk_1009568A0);
    return (v36)(v31, v28);
  }

  else
  {
    v38 = v51;
    sub_10002ABBC(v31 + v30, v51);
    v39 = (*(v27 + 88))(v38, v28);
    if (v39 == enum case for Shelf.ContentType.appShowcase(_:) || v39 == enum case for Shelf.ContentType.arcadeShowcase(_:))
    {
      sub_10000CFBC(v31 + v30, &unk_1009568A0);
      v42 = *(v27 + 8);
      v42(v31, v28);
      if (qword_100941200 != -1)
      {
        swift_once();
      }

      v43 = sub_10076D9AC();
      v44 = sub_10000A61C(v43, qword_1009A2380);
      v45 = v58;
      v58[3] = v43;
      v45[4] = &protocol witness table for StaticDimension;
      v46 = sub_10000DB7C(v45);
      (*(*(v43 - 8) + 16))(v46, v44, v43);
      sub_10000CFBC(v26, &unk_1009568A0);
      return (v42)(v29, v28);
    }

    else
    {
      v40 = *(v27 + 8);
      v40(v51, v28);
      v41 = v58;
      v58[3] = &type metadata for Double;
      v41[4] = &protocol witness table for Double;
      *v41 = 0;
      sub_10000CFBC(v26, &unk_1009568A0);
      v40(v29, v28);
      return sub_10000CFBC(v31, &qword_100942F28);
    }
  }
}

uint64_t sub_100708F54@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v43 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v43);
  v46 = &v40 - v1;
  v2 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v11 - 8);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v40 - v14;
  v15 = sub_10000A5D4(&unk_100946720);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v45 = sub_10076B5BC();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076468C();
  swift_getKeyPath();
  v44 = v20;
  sub_10076F49C();

  v21 = *(v16 + 8);
  v21(v18, v15);
  sub_10076463C();
  sub_10000CFBC(v7, &qword_1009499A0);
  sub_10002AB4C(v4, v10);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_10000CFBC(v10, &qword_1009499A0);
    v22 = 1;
    v23 = v40;
  }

  else
  {
    swift_getKeyPath();
    v24 = v40;
    sub_10076F49C();

    v21(v10, v15);
    v22 = 0;
    v23 = v24;
  }

  v25 = v41;
  v26 = v45;
  (*(v41 + 56))(v23, v22, 1, v45);
  v27 = v44;
  v28 = *(v43 + 48);
  v29 = v46;
  (*(v25 + 16))(v46, v44, v26);
  sub_10002ABBC(v23, v29 + v28);
  v30 = *(v25 + 88);
  v31 = v30(v29, v26);
  v32 = enum case for Shelf.ContentType.horizontalRule(_:);
  v33 = v42;
  if (v31 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    goto LABEL_10;
  }

  if ((*(v25 + 48))(v29 + v28, 1, v26) != 1)
  {
    sub_10002ABBC(v29 + v28, v33);
    if (v30(v33, v26) == v32)
    {
      sub_10000CFBC(v29 + v28, &unk_1009568A0);
      (*(v25 + 8))(v29, v26);
LABEL_11:
      v34 = v47;
      v47[3] = &type metadata for Double;
      v34[4] = &protocol witness table for Double;
      *v34 = 0;
      sub_10000CFBC(v23, &unk_1009568A0);
      return (*(v25 + 8))(v27, v26);
    }

    (*(v25 + 8))(v33, v26);
  }

  if (v30(v29, v26) == enum case for Shelf.ContentType.appShowcase(_:))
  {
LABEL_10:
    sub_10000CFBC(v29 + v28, &unk_1009568A0);
    goto LABEL_11;
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v36 = sub_10076D9AC();
  v37 = sub_10000A61C(v36, qword_1009A2380);
  v38 = v47;
  v47[3] = v36;
  v38[4] = &protocol witness table for StaticDimension;
  v39 = sub_10000DB7C(v38);
  (*(*(v36 - 8) + 16))(v39, v37, v36);
  sub_10000CFBC(v23, &unk_1009568A0);
  (*(v25 + 8))(v27, v26);
  return sub_10000CFBC(v29, &qword_100942F28);
}

uint64_t sub_1007095BC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A3398);
  sub_10000A61C(v4, qword_1009A3398);
  if (qword_100940998 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0AD8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10070982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v74[2] = a3;
  v78 = a2;
  v74[1] = a1;
  v79 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v79);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10076771C();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = v74 - v9;
  v11 = sub_10076D1AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_divider;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v14 = UIFontTextStyleBody;
  (*(v12 + 104))(v14, enum case for FontSource.textStyle(_:), v11);
  v86[3] = v11;
  v86[4] = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v86);
  (*(v12 + 16))(v16, v14, v11);
  v17 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v12 + 8))(v14, v11);
  v84 = v4;
  v18 = &v4[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_title];
  *v18 = 0;
  v18[1] = 0;
  v77 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_titleLabel;
  if (qword_100940998 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A0AD8);
  v21 = *(v19 - 8);
  v76 = *(v21 + 16);
  v76(v10, v20, v19);
  v75 = *(v21 + 56);
  v75(v10, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v6 + 104);
  v23(v82, enum case for DirectionalTextAlignment.none(_:), v83);
  v24 = sub_1007626BC();
  v25 = objc_allocWithZone(v24);
  v26 = sub_1007626AC();
  v27 = v84;
  *&v84[v77] = v26;
  v28 = &v27[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_descriptionText];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_descriptionLabel;
  if (qword_100940E78 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v19, qword_1009A1960);
  v76(v10, v30, v19);
  v75(v10, 0, 1, v19);
  v23(v82, v22, v83);
  v31 = objc_allocWithZone(v24);
  v32 = sub_1007626AC();
  v33 = v84;
  *&v84[v29] = v32;
  v33[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_hasDivider] = 0;
  v34 = type metadata accessor for EmptyStateView();
  v85.receiver = v33;
  v85.super_class = v34;
  v35 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v36 = sub_100016F40(0, &qword_100942F10);
  v37 = v35;
  v38 = sub_100770D2C();
  [v37 setBackgroundColor:v38];

  if (v78)
  {
    v39 = *&v37[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_titleLabel];
    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v41 = qword_10093F688;
    v42 = v39;
    v43 = NSParagraphStyleAttributeName;
    if (v41 != -1)
    {
      swift_once();
    }

    v44 = qword_10099CDE0;
    *(inited + 64) = sub_100016F40(0, &qword_10094D748);
    *(inited + 40) = v44;
    v45 = v44;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_1001E4F90(inited + 32);
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = sub_10076FF6C();

    type metadata accessor for Key(0);
    sub_1001E4F38();
    isa = sub_10076FE3C().super.isa;

    v49 = [v46 initWithString:v47 attributes:isa];

    [v42 setAttributedText:v49];
  }

  [v37 addSubview:*&v37[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_titleLabel]];
  v50 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_descriptionLabel;
  [*&v37[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_descriptionLabel] setNumberOfLines:0];
  if (v81)
  {
    v51 = *&v37[v50];
    sub_10000A5D4(&unk_10094E7E0);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_100784500;
    *(v52 + 32) = NSParagraphStyleAttributeName;
    v53 = qword_10093F688;
    v54 = v51;
    v55 = NSParagraphStyleAttributeName;
    if (v53 != -1)
    {
      swift_once();
    }

    v56 = qword_10099CDE0;
    v57 = sub_100016F40(0, &qword_10094D748);
    *(v52 + 40) = v56;
    *(v52 + 64) = v57;
    *(v52 + 72) = NSForegroundColorAttributeName;
    v58 = v56;
    v59 = NSForegroundColorAttributeName;
    v60 = sub_100770D1C();
    *(v52 + 104) = v36;
    *(v52 + 80) = v60;
    sub_1000FC5F4(v52);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B10);
    swift_arrayDestroy();
    v61 = objc_allocWithZone(NSAttributedString);
    v62 = sub_10076FF6C();

    type metadata accessor for Key(0);
    sub_1001E4F38();
    v63 = sub_10076FE3C().super.isa;

    v64 = [v61 initWithString:v62 attributes:v63];

    [v54 setAttributedText:v64];
  }

  [v37 addSubview:*&v37[v50]];
  v65 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_divider;
  [*&v37[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_divider] setHidden:(v37[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_hasDivider] & 1) == 0];
  v66 = qword_100940950;
  v67 = *&v37[v65];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_10000A61C(v79, qword_1009A0A20);
  v69 = v80;
  sub_100206DD0(v68, v80);
  v70 = &v67[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v69, v70);
  swift_endAccess();
  v71 = &v67[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v72 = *(v70 + 1);
  *v71 = *v70;
  *(v71 + 1) = v72;
  [v67 setNeedsLayout];
  [v67 setNeedsLayout];

  sub_100206E98(v69);
  [v37 addSubview:*&v37[v65]];

  return v37;
}

uint64_t sub_10070A2A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmptyStateView();
  v22.receiver = v0;
  v22.super_class = v7;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_divider];
  [v0 frame];
  Width = CGRectGetWidth(v23);
  if (qword_100940950 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for DividerView.Style(0);
  sub_10000A61C(v10, qword_1009A0A20);
  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v11 = floor(*&qword_1009A0A00);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  [v8 setFrame:{0.0, 0.0, Width, v11 + v13}];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10070AAE4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1000349FC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C5148;
  aBlock[3] = &unk_1008A1970;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_10070A5DC(char *a1)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_titleLabel];
  [a1 bounds];
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v14 = *&a1[OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_descriptionLabel];
  [a1 bounds];
  [v14 sizeThatFits:{v15, v16}];
  v18 = v17;
  v20 = v19;
  v21 = v13 + v19;
  [a1 bounds];
  v22 = (CGRectGetWidth(v32) - v11) * 0.5;
  [a1 bounds];
  [v7 setFrame:{v22, (CGRectGetHeight(v33) - v21) * 0.5, v11, v13}];
  [a1 bounds];
  Width = CGRectGetWidth(v34);
  [v7 lastBaselineMaxY];
  v25 = v24;
  if (qword_100941578 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D9AC();
  sub_10000A61C(v26, qword_1009A3398);
  v27 = [a1 traitCollection];
  sub_10076D17C();
  sub_10076D97C();
  v29 = v28;

  (*(v3 + 8))(v6, v2);
  return [v14 setFrame:{(Width - v18) * 0.5, v25 + v29, v18, v20}];
}

id sub_10070A8A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyStateView()
{
  result = qword_100966788;
  if (!qword_100966788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10070A9F4()
{
  result = sub_10076D9AC();
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

uint64_t sub_10070AAAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10070AAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10070AB14()
{
  v1 = sub_10076771C();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_10076D1AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_divider;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v9 = UIFontTextStyleBody;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v36[3] = v6;
  v36[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v36);
  (*(v7 + 16))(v11, v9, v6);
  v12 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v7 + 8))(v9, v6);
  v34 = v0;
  v13 = (v0 + OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_title);
  *v13 = 0;
  v13[1] = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_titleLabel;
  if (qword_100940998 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A0AD8);
  v16 = *(v14 - 8);
  v30 = *(v16 + 16);
  v30(v5, v15, v14);
  v17 = *(v16 + 56);
  v17(v5, 0, 1, v14);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v19 = *(v35 + 104);
  v32 = v1;
  v35 += 104;
  v19(v33, enum case for DirectionalTextAlignment.none(_:), v1);
  v20 = sub_1007626BC();
  v21 = objc_allocWithZone(v20);
  v22 = sub_1007626AC();
  v23 = v34;
  *(v34 + v31) = v22;
  v24 = (v23 + OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_descriptionText);
  *v24 = 0;
  v24[1] = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_descriptionLabel;
  if (qword_100940E78 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v14, qword_1009A1960);
  v30(v5, v25, v14);
  v17(v5, 0, 1, v14);
  v19(v33, v18, v32);
  v26 = objc_allocWithZone(v20);
  v27 = sub_1007626AC();
  v28 = v34;
  *(v34 + v31) = v27;
  *(v28 + OBJC_IVAR____TtC20ProductPageExtension14EmptyStateView_hasDivider) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10070B010(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [*(v5 + 16) startAnimationAfterDelay:*(v5 + 24)];

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_10070B110()
{
  sub_1000167E0(*(v0 + 32));
  sub_1000167E0(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_10070B158()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_10070B1B8(1);
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_10070B1B8(char a1)
{
  v2 = v1;
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100785D70;
  sub_10070B8B0(*(v1 + 32), a1);
  *(v4 + 32) = v5;
  *(v4 + 40) = sub_10070BA58(*(v1 + 40), a1);
  v36 = v4;
  v6 = *(v1 + 48);
  if (v6 && (*(v1 + 72) & 1) == 0)
  {
    v7 = v6;
    sub_10070CB70(v7, a1 & 1);
    sub_10077019C();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v4 = v36;
  }

  v8 = *(v1 + 64);
  sub_100016F40(0, &qword_100947240);
  if (sub_1007701EC())
  {
    if (v8 >> 62)
    {
      sub_100016F40(0, &qword_1009441F0);

      v35 = sub_10077157C();

      v8 = v35;
    }

    else
    {

      sub_10077168C();
      sub_100016F40(0, &qword_1009441F0);
    }

    sub_10070BC14(v8, a1 & 1);

    sub_10077019C();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v4 = v36;
  }

  v9 = *(v2 + 56);
  if (v9)
  {
    v10 = *(v2 + 96);
    v11 = v9;
    sub_10070BDD4(v11, a1 & 1, v10);
    sub_10077019C();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v4 = v36;
  }

  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = *(v2 + 24);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_10070CD4C(v14, v15, a1 & 1);
      sub_10077019C();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v4 = v36;
    }

    else
    {
      v16 = v12;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v2 + 88);
    v18 = swift_unknownObjectRetain();
    sub_10070CEF8(v18, v17, a1 & 1);
    swift_unknownObjectRelease();
    sub_10077019C();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    swift_unknownObjectRelease();
    v4 = v36;
  }

  if (v12)
  {
    ObjectType = swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (v20 && *(*(*&v12[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) == 1 && !*(v2 + 24) && (*(v2 + 72) & 1) == 0)
    {
      v21 = v20;
      v22 = *(v20 + 8);
      v23 = *(v22 + 160);
      v24 = v12;
      v25 = v23(ObjectType, v22);
      if (v25 != 7)
      {
        if (v25 == 6)
        {
          sub_10070D208(v24, v21, a1 & 1);
          goto LABEL_37;
        }

        if (v25 == 4)
        {
          sub_10070D068(v24, v21, a1 & 1);
LABEL_37:
          sub_10077019C();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          v4 = v36;
          goto LABEL_40;
        }
      }
    }

LABEL_40:
    v26 = swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && (*(v27 + 160))(v26, v27) == 4 && (v29 = swift_getObjectType(), (v30 = swift_conformsToProtocol2()) != 0) && (*(v30 + 32))(v29, v30))
    {
      v32 = v31;
      v33 = swift_getObjectType();
      v34 = (*(v32 + 16))(v33, v32);
      swift_unknownObjectRelease();
      sub_10070D430(v34, a1 & 1);
      sub_10077019C();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      return v36;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_10070B854()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_10070B1B8(0);
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_10070B8B0(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0;
    v7 = [v5 initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
    v8 = 0.0;
  }

  else
  {
    v7 = [v5 initWithDuration:0 controlPoint1:0.14 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
    v8 = 0.3;
    v6 = 0x3FC5C28F5C28F5C3;
  }

  v9 = v7;
  [a1 setAlpha:v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v15[4] = sub_10070DAB8;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10009AEDC;
  v15[3] = &unk_1008A1E70;
  v11 = _Block_copy(v15);
  v12 = a1;

  [v9 addAnimations:v11];

  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  result = 0.0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 16) = v9;
  *(v13 + 24) = v6;
  return result;
}

void *sub_10070BA58(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0.15;
    v7 = 0.46;
    v8 = 0.8;
  }

  else
  {
    v6 = 0.36;
    v7 = 0.2;
    v8 = 0.21;
  }

  v9 = [v5 initWithDuration:0 controlPoint1:v6 controlPoint2:v7 animations:{0.0, v8, 1.0}];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a2 & 1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v19[4] = sub_10070DA60;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10009AEDC;
  v19[3] = &unk_1008A1DF8;
  v12 = _Block_copy(v19);
  v13 = v9;
  v14 = a1;

  [v13 addAnimations:v12];

  _Block_release(v12);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v15 = swift_allocObject();
  v15[6] = 0;
  v15[7] = 0;
  v15[2] = v13;
  v15[3] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v11;
  *(v16 + 32) = v2;
  v15[4] = sub_10070DAA8;
  v15[5] = v16;
  v17 = v14;
  return v15;
}

void *sub_10070BC14(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v2;
  v12[4] = sub_10070DB5C;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10009AEDC;
  v12[3] = &unk_1008A1A38;
  v7 = _Block_copy(v12);

  [v5 addAnimations:v7];
  _Block_release(v7);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = 0x3FB999999999999ALL;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  *(v9 + 32) = v2;
  v8[4] = sub_10070D6A4;
  v8[5] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v2;
  v8[6] = sub_10070D6B0;
  v8[7] = v10;
  swift_bridgeObjectRetain_n();
  return v8;
}

uint64_t sub_10070BDD4(void *a1, char a2, void *a3)
{
  v7 = 0.0;
  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.17 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a2 & 1) == 0)
  {
    v7 = 0.1;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = v3;
  v22[4] = sub_10070D714;
  v22[5] = v9;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10009AEDC;
  v22[3] = &unk_1008A1AD8;
  v10 = _Block_copy(v22);
  v11 = v8;
  v12 = a1;
  v13 = a3;

  [v11 addAnimations:v10];

  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v12;
  *(v15 + 32) = v13;
  *(v15 + 40) = v3;
  *(v14 + 32) = sub_10070D764;
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v13;
  *(v16 + 32) = v12;
  *(v14 + 48) = sub_10070D7B4;
  *(v14 + 56) = v16;
  v17 = v12;
  v18 = v13;
  v19 = v17;
  v20 = v18;
  return v14;
}

uint64_t sub_10070C004(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_10077149C();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v8 = *(v6 + 32);
      if (v8)
      {

        v8(v9);

        sub_1000167E0(v8);
      }

      else
      {
      }

      ++v5;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

void sub_10070C130(void *a1, char a2)
{
  if (a2)
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_10070C1C4(void *a1, char a2)
{
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 50.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_10070C2B0(char a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      for (j = 0; ; ++j)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v5 = sub_10077149C();
        }

        else
        {
          if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a2 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v5 setAlpha:0.0];

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }
}

void sub_10070C38C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      if (a2)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_10077149C();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v6 setAlpha:v5];

        ++v4;
        if (v8 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v9 = a2;
      v10 = sub_10077158C();
      a2 = v9;
      v3 = v10;
    }

    while (v10);
  }
}

void sub_10070C484(id a1, char a2, id a3)
{
  if (a2)
  {
    if ([a3 userInterfaceIdiom] == 1)
    {
      v5 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a1 _setContinuousCornerRadius:v5];
  }

  else
  {
    [a1 _setContinuousCornerRadius:20.0];
    if (sub_1007706FC())
    {
      v6 = [a1 layer];
      [v6 setMaskedCorners:15];
    }
  }
}

void sub_10070C580(char a1, id a2, void *a3)
{
  if (a1)
  {
    [a2 _setContinuousCornerRadius:20.0];
    [a2 setClipsToBounds:1];
    if ([a3 horizontalSizeClass] != 2)
    {
      return;
    }

    v5 = 3;
    goto LABEL_11;
  }

  [a2 _continuousCornerRadius];
  if (v6 == 0.0)
  {
    if ([a3 userInterfaceIdiom] == 1)
    {
      v7 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a2 _setContinuousCornerRadius:v7];
    [a2 setClipsToBounds:1];
  }

  if (sub_1007706EC())
  {
    v5 = 15;
LABEL_11:
    v8 = [a2 layer];
    [v8 setMaskedCorners:v5];
  }
}

void sub_10070C6C4(char a1, uint64_t a2)
{
  if (a1)
  {
    if (!a2)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = 1;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v3 = v5;
    v4 = 0;
  }

  v6 = v3;
  sub_1000B779C(v4);
}

id sub_10070C768(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (v5)
  {
    v6 = 1.0;
    if (a3)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }

  if (a3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView) setAlpha:v7];
  v8 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v8)
  {
    if (a3)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer);

  return [v10 setAlpha:v7];
}

id sub_10070C840(id result, uint64_t a2)
{
  if (!result)
  {
    v19 = v3;
    v20 = v2;
    v9 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      v10 = v9;
      [v10 alpha];
      [v10 setHidden:v11 == 0.0];
    }

    v12 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView);
    [v12 alpha];
    [v12 setHidden:v13 == 0.0];
    v14 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v14)
    {
      v15 = v14;
      [v15 alpha];
      [v15 setHidden:v16 == 0.0];
    }

    v17 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer);
    [v17 alpha];

    return [v17 setHidden:v18 == 0.0];
  }

  return result;
}

id sub_10070C950(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
  v6 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (v6)
  {
    v7 = 0.0;
    if (a3)
    {
      v7 = 1.0;
    }

    [v6 setAlpha:v7];
    v8 = *(a1 + v5);
    if (v8)
    {
      [v8 setHidden:0];
    }
  }

  v9 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView);
  if (a3)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView) setAlpha:v10];
  [v9 setHidden:0];
  v11 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
  v12 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v12)
  {
    v13 = (a3 & 1) != 0 ? 1.0 : 0.0;
    [v12 setAlpha:v13];
    v14 = *(a1 + v11);
    if (v14)
    {
      [v14 setHidden:0];
    }
  }

  v15 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer);
  [v15 setAlpha:v10];

  return [v15 setHidden:0];
}

id *sub_10070CA84()
{

  sub_10000CC8C((v0 + 10));

  return v0;
}

uint64_t sub_10070CAF4()
{
  sub_10070CA84();

  return swift_deallocClassInstance();
}

void *sub_10070CB70(void *a1, char a2)
{
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v5 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.15 controlPoint2:0.46 animations:{0.0, 0.8, 1.0}];
    v7 = 0.9;
  }

  else
  {
    v7 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.36 controlPoint2:0.2 animations:{0.0, 0.21, 1.0}];
    v5 = 0.9;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v7;
  v16[4] = sub_10070DB2C;
  v16[5] = v8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10009AEDC;
  v16[3] = &unk_1008A19C0;
  v9 = _Block_copy(v16);
  v10 = v6;
  v11 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v12 = swift_allocObject();
  v12[6] = 0;
  v12[7] = 0;
  v12[2] = v10;
  v12[3] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v5;
  v12[4] = sub_10070D614;
  v12[5] = v13;
  v14 = v11;
  return v12;
}

uint64_t sub_10070CD4C(void *a1, void *a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a3 & 1) == 0)
  {
    v6 = 0.1;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a1;
  v17[4] = sub_10070D814;
  v17[5] = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10009AEDC;
  v17[3] = &unk_1008A1B78;
  v9 = _Block_copy(v17);
  v10 = v7;
  v11 = a2;
  v12 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 16) = v10;
  *(v13 + 24) = v6;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v11;
  *(v13 + 32) = sub_10070D8B4;
  *(v13 + 40) = v14;
  v15 = v11;
  return v13;
}

double sub_10070CEF8(uint64_t a1, uint64_t a2, char a3)
{
  if (sub_1007706EC())
  {
    v6 = 0.62;
  }

  else
  {
    v6 = 0.61;
  }

  if (sub_1007706EC())
  {
    v7 = 0.8;
  }

  else
  {
    v7 = 0.84;
  }

  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 dampingRatio:v6 animations:v7];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v13[4] = sub_10070D910;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10009AEDC;
  v13[3] = &unk_1008A1BF0;
  v10 = _Block_copy(v13);
  swift_unknownObjectRetain();

  [v8 addAnimations:v10];
  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  result = 0.0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 16) = v8;
  *(v11 + 24) = 0;
  return result;
}

uint64_t sub_10070D068(void *a1, uint64_t a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.2 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v15[4] = sub_10070D954;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10009AEDC;
  v15[3] = &unk_1008A1C40;
  v9 = _Block_copy(v15);
  v10 = a1;

  [v7 addAnimations:v9];
  _Block_release(v9);
  if (a3)
  {
    v6 = 0.3;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v10;
  *(v12 + 32) = a2;
  *(v11 + 32) = sub_10070D988;
  *(v11 + 40) = v12;
  v13 = v10;
  return v11;
}

void *sub_10070D208(void *a1, uint64_t a2, char a3)
{
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v21 = sub_10070D9E4;
  v22 = v7;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10009AEDC;
  v20 = &unk_1008A1CB8;
  v8 = _Block_copy(&v17);
  v9 = a1;

  [v6 addAnimations:v8];
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v21 = sub_10070D9F0;
  v22 = v10;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10017722C;
  v20 = &unk_1008A1D08;
  v11 = _Block_copy(&v17);
  v12 = v9;

  [v6 addCompletion:v11];
  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[2] = v6;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v13[4] = sub_10070D9F8;
  v13[5] = v14;
  v15 = v12;
  return v13;
}

uint64_t sub_10070D430(void *a1, char a2)
{
  v4 = 0.1;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v13[4] = sub_10070DA3C;
  v13[5] = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10009AEDC;
  v13[3] = &unk_1008A1D80;
  v7 = _Block_copy(v13);
  v8 = a1;

  [v5 addAnimations:v7];
  _Block_release(v7);
  if ((a2 & 1) == 0)
  {
    v4 = 0.0;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v9 + 32) = sub_10015AFC8;
  *(v9 + 40) = v10;
  v11 = v8;
  return v9;
}

uint64_t sub_10070D5C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10070D5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10070D634()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10070D66C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10070D6D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10070D724()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10070D774()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10070D7B4()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 32);
    if (sub_1007706EC())
    {

      [v1 _setContinuousCornerRadius:0.0];
    }
  }
}

id sub_10070D814()
{
  v1 = *(v0 + 32);
  if (*(v0 + 16))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(v0 + 16))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + 24) setAlpha:v2];

  return [v1 setAlpha:v3];
}

uint64_t sub_10070D87C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10070D8B4()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10070D8D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10070D91C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10070D954()
{
  if (*(v0 + 16) == 1)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer) setAlpha:1.0];
  }

  return result;
}

uint64_t sub_10070D9AC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10070DA04()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10070DA3C()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_10070DA70()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10070DAB8()
{
  v1 = 0.3;
  if (!*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_10070DB60()
{
  v1 = sub_100760B1C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10076646C();
  if (result)
  {
    v6 = sub_10076645C();
    v7 = *(v6 + 16);
    if (v7)
    {
      v26 = v1;
      v27 = v0;
      v9 = *(v2 + 16);
      v8 = v2 + 16;
      v10 = *(v8 + 64);
      v22 = v6;
      v11 = v6 + ((v10 + 32) & ~v10);
      v23 = *(v8 + 56);
      v24 = v9;
      v25 = v8;
      v12 = (v8 - 8);
      v9(v4, v11, v1);
      while (1)
      {
        v18 = sub_100760AEC();
        sub_100760B0C();
        v19 = sub_10076FF6C();

        sub_100760AFC();
        v20 = sub_10076FF6C();

        sub_100760ADC();
        v21 = sub_10076FF6C();

        if (v18)
        {
          v14 = [objc_opt_self() imageNamed:{v21, v22}];

          if (v14)
          {
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v21 = v14;
          }

          else
          {
            v21 = [objc_allocWithZone(UIImage) init];
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v14 = v21;
          }

          v15 = v19;
          v16 = v20;
        }

        else
        {
          v13 = &selRef_addBulletedListItemWithTitle_description_symbolName_;
          v14 = v19;
          v15 = v20;
          v16 = v21;
        }

        [v27 *v13];

        v17 = v26;
        (*v12)(v4, v26);
        v11 += v23;
        if (!--v7)
        {
          break;
        }

        v24(v4, v11, v17);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10070DDFC()
{
  v1 = v0;
  v2 = sub_10076F9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075DE9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  sub_10076644C();
  isa = sub_1007701AC().super.isa;

  v12 = [v10 linkWithBundleIdentifiers:isa];

  if (v12)
  {
    v13 = v12;
    sub_10075DE6C();
    sub_10075DDCC();
    (*(v7 + 8))(v9, v6);
    v14 = sub_10076FF6C();

    [v13 setDisplayLanguage:v14];
  }

  v15 = [v1 buttonTray];
  [v15 setPrivacyLinkController:v12];

  v16 = [objc_opt_self() boldButton];
  v21._object = 0x80000001007F7120;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1007622EC(v21, v22);
  v17 = sub_10076FF6C();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_10076F8FC();
  sub_1000258C0(v19);
  sub_1000258C0(v20);
  sub_100770B9C();
  (*(v3 + 8))(v5, v2);
  v18 = [v1 buttonTray];
  [v18 addButton:v16];
}

uint64_t type metadata accessor for OnboardingWelcomeViewController()
{
  result = qword_1009669D8;
  if (!qword_1009669D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10070E390()
{
  result = sub_10076649C();
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

id sub_10070E430(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10075EC0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension31OnboardingWelcomeViewController_onboardingStep;
  v15 = sub_10076649C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v32 = v15;
  v17(&v5[v14], a1);
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension31OnboardingWelcomeViewController_primaryButtonCallback];
  *v18 = a3;
  *(v18 + 1) = a4;

  v33 = a1;
  if (sub_10076646C())
  {
    v19 = "Onboarding.Welcome.Description";
    if (a2)
    {
      v19 = "New.Title.NoArcade";
      v20._countAndFlagsBits = 0xD000000000000019;
    }

    else
    {
      v20._countAndFlagsBits = 0xD000000000000022;
    }

    v20._object = (v19 | 0x8000000000000000);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_1007622EC(v20, v38);
    v21 = sub_10076FF6C();

    v34.receiver = v5;
    v34.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v34, "initWithTitle:detailText:icon:contentLayout:", v21, 0, 0, 2);

    v23 = v22;
    sub_10070DB60();
  }

  else
  {
    v36._object = 0x80000001007F7090;
    v36._countAndFlagsBits = 0xD000000000000018;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_1007622EC(v36, v39);
    v37._countAndFlagsBits = 0xD00000000000001ELL;
    v37._object = 0x80000001007F70B0;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    sub_1007622EC(v37, v40);
    v24 = sub_10076FF6C();

    v25 = sub_10076FF6C();

    (*(v11 + 104))(v13, enum case for SystemAppIcon.AppStore(_:), v10);
    v26 = [objc_opt_self() mainScreen];
    [v26 scale];

    v27 = sub_10075EBFC();
    (*(v11 + 8))(v13, v10);
    v35.receiver = v5;
    v35.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v35, "initWithTitle:detailText:icon:contentLayout:", v24, v25, v27, 2);

    v23 = v28;
  }

  sub_10070DDFC();
  [v23 setModalInPresentation:1];

  (*(v16 + 8))(v33, v32);
  return v23;
}

uint64_t sub_10070E7C0(uint64_t result, float64x2_t a2, float64_t a3)
{
  v3 = (&unk_1007B57E0 + 8 * result);
  a2.f64[1] = a3;
  v4 = vld1q_dup_f64(v3);
  v5 = vdivq_f64(a2, v4);
  __asm { FMOV            V2.2D, #15.0 }

  v11 = vsubq_f64(v5, vrndmq_f64(vdivq_f64(vmulq_f64(v5, _Q2), v4)));
  __asm { FMOV            V1.2D, #1.0 }

  v13 = vrndpq_f64(vaddq_f64(v11, _Q1));
  *&v14 = *&vmulq_laneq_f64(v13, v13, 1);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10070E848(void *a1, unint64_t a2)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v3;
  v5 = a2;
  v4 = a1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkImages;
  result = swift_beginAccess();
  v9 = *&v3[v6];
  v10 = *(v9 + 16);
  v11 = v7 - v10 < 0;
  v12 = v7 <= v10;
  v13 = v7 - v10;
  if (v12)
  {
LABEL_9:
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v6] = v9;
    if (result)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = sub_1004BDB24();
    v9 = result;
    *&v2[v6] = result;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (*(v9 + 16) > v5)
      {
        v14 = v9 + 8 * v5;
        v15 = *(v14 + 32);
        *(v14 + 32) = v4;
        *&v2[v6] = v9;
        v16 = v4;
        swift_endAccess();

        return [v2 setNeedsLayout];
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v11)
  {
    swift_beginAccess();
    do
    {
      sub_10077019C();
      if (*(*&v2[v6] + 16) >= *(*&v2[v6] + 24) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      --v13;
    }

    while (v13);
    v9 = *&v2[v6];
    swift_endAccess();
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_10070E9C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    sub_10075FCAC();
    [v11 setHidden:1];
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v12 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkImages;
      swift_beginAccess();
      *(v1 + v12) = _swiftEmptyArrayStorage;

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10070EB1C(uint64_t result, double a2, double a3)
{
  v3 = 8 * result;
  v4.f64[0] = *(&unk_1007B5740 + v3);
  v4.f64[1] = *(&unk_1007B5800 + v3);
  v5 = vdupq_lane_s64(*&a3, 0);
  v6 = vaddq_f64(v4, v5);
  v7.f64[0] = *(&unk_1007B5760 + v3);
  v7.f64[1] = *(&unk_1007B5820 + v3);
  v8 = vaddq_f64(v7, v5);
  v9.f64[0] = *(&unk_1007B5780 + v3);
  v9.f64[1] = *(&unk_1007B5840 + v3);
  v10.f64[0] = *(&unk_1007B57A0 + v3);
  v10.f64[1] = *(&unk_1007B5860 + v3);
  v11 = vdupq_lane_s64(*&a2, 0);
  v12 = vsubq_f64(v6, vmulq_f64(vsubq_f64(v9, v11), vdivq_f64(vsubq_f64(v6, v8), vsubq_f64(v9, v10))));
  v13 = vsubq_f64(v11, v10);
  v14 = vsubq_f64(v12, v8);
  v15 = vsqrtq_f64(vaddq_f64(vmulq_f64(v13, v13), vmulq_f64(v14, v14)));
  v16 = *(&unk_1007B57E0 + v3);
  if (v15.f64[0] <= v15.f64[1])
  {
    v15.f64[0] = v15.f64[1];
  }

  v17 = ceil(v15.f64[0] / (v16 + 15.0));
  v18 = floor(dbl_1007B57C0[result] / v16) + v17 + v17;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 9.22337204e18)
  {
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10070EC64()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v0, qword_1009669F0);
  sub_10000A61C(v0, qword_1009669F0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDDC();
}

void sub_10070ED18()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  v2 = v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v24, "frame");
  v4.f64[0] = v3;
  v6 = sub_10070E7C0(v2, v4, v5);
  v7 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 48) + ((v13 << 9) | (8 * v15)));
    if (v16 >= v6)
    {
      swift_beginAccess();
      v17 = sub_10060FF40(v16);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *&v1[v7];
        *&v1[v7] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10024C3DC();
        }

        v22 = v19;
        v23 = *(*(v21 + 56) + 8 * v19);
        sub_1001E2904(v22, v21);
        *&v1[v7] = v21;
        swift_endAccess();
        [v23 removeFromSuperview];
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10070EEE8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkImages;
  result = swift_beginAccess();
  v3 = *(*(v0 + v1) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages);
  v5 = v4 - v3;
  if (v4 > v3)
  {
    if (v4 - v3 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      do
      {
        sub_10077019C();
        if (*(*(v0 + v1) + 16) >= *(*(v0 + v1) + 24) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        --v5;
      }

      while (v5);
      return swift_endAccess();
    }
  }

  return result;
}

char *sub_10070F0AC(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_10075FEEC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkViews;
  *&v5[v16] = sub_1000FD920(_swiftEmptyArrayStorage);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_showBorder] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_isLazyLayoutEnabled] = 1;
  v17 = &v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds];
  *v17 = 0u;
  v17[1] = 0u;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType] = a1;
  v18 = sub_1000FD920(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *&v5[v16] = v18;

  *&v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkImages] = _swiftEmptyArrayStorage;
  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_contentView] = v19;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_imageBorderView] = [objc_allocWithZone(sub_10075F56C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, "initWithFrame:", a2, a3, a4, a5);
  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_contentView];
  v22 = v20;
  [v22 addSubview:v21];
  v23 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_imageBorderView;
  v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_imageBorderView];
  sub_10075FD2C();
  v25 = v24;
  sub_10075FBAC();
  sub_10075F55C();

  v26 = *&v22[v23];
  sub_10075FB9C();
  sub_10075F54C();

  v27 = *&v22[v23];
  (*(v13 + 104))(v15, enum case for CornerStyle.arc(_:), v12);
  v28 = v27;
  sub_1007616AC();

  (*(v13 + 8))(v15, v12);
  [v22 addSubview:*&v22[v23]];
  [v22 setClipsToBounds:1];

  return v22;
}

id sub_10070F488()
{
  ObjectType = swift_getObjectType();
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v5 = v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v26, "frame");
  v8 = sub_10070EB1C(v5, v6, v7);
  if (v0[v4] == 3)
  {
    v10 = sub_10070FE70(v8, v9);
  }

  else
  {
    v10 = sub_10071024C(v8, v9);
  }

  v11 = v10;
  [v0 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_contentView];
  [v20 setBounds:?];
  [v0 center];
  [v20 setCenter:?];
  if (qword_100941580 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A5D4(&unk_100945BD0);
  sub_10000A61C(v21, qword_1009669F0);
  *&v24.a = v0;
  v22 = v0;
  sub_10075FDCC();

  CGAffineTransformMakeRotation(&v24, angle);
  [v20 setTransform:&v24];
  [*&v22[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_imageBorderView] setFrame:{v13, v15, v17, v19}];
  sub_1007103CC(v11);
  sub_10071072C(v11);

  return [v2 setAnimationsEnabled:v3];
}

void sub_10070F720()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_isLazyLayoutEnabled) == 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_10070F8E4()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_isLazyLayoutEnabled] != 1)
  {
LABEL_8:
    v6 = 0;
LABEL_9:

    sub_10070FA68(v6);
    return;
  }

  v1 = [v0 superview];
  if (!v1)
  {
LABEL_6:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_8;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      break;
    }

    v4 = [v2 superview];

    v2 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v7 = v3;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, sub_100016F40(0, &unk_10094D220), v11 = v2, v10 = sub_100770EEC(), v11, v9, (v10 & 1) == 0))
  {
    v6 = v7;
    goto LABEL_9;
  }
}

void sub_10070FA68(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_10070FB20(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_10070F8E4();
}

unint64_t sub_10070FD54()
{
  result = qword_100966A80;
  if (!qword_100966A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966A80);
  }

  return result;
}

void sub_10070FDA8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkViews;
  *(v0 + v1) = sub_1000FD920(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_showBorder) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_isLazyLayoutEnabled) = 1;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds);
  *v2 = 0u;
  v2[1] = 0u;
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

char *sub_10070FE70(uint64_t a1, int64_t a2)
{
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_61;
  }

  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v9 = v8 * v7;
  if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (__OFSUB__(v9, 3))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v9 - 3 > 0)
  {
    v10 = v7 / 2;
    v40 = v8 / 2;
    v11 = 1;
    v38 = a1;
    v39 = a2;
    v12 = sub_10049EB64(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = v10;
    v2 = v12;
    a1 = v38;
    a2 = v39;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v9 - 2;
    while (1)
    {
      v4 = (v16 + v13);
      if (__OFADD__(v16, v13))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v5 = v15 + v40;
      if (__OFADD__(v15, v40))
      {
        goto LABEL_56;
      }

      v6 = *(v2 + 2);
      v18 = *(v2 + 3);
      v3 = v6 + 1;
      if (v6 >= v18 >> 1)
      {
        v22 = v2;
        v23 = v13;
        v24 = sub_10049EB64((v18 > 1), v6 + 1, 1, v22);
        v13 = v23;
        v2 = v24;
        a1 = v38;
        a2 = v39;
      }

      *(v2 + 2) = v3;
      v19 = &v2[16 * v6];
      *(v19 + 4) = v4;
      *(v19 + 5) = v5;
      if (v16 < 1)
      {
        if (v16 < 0)
        {
          if (v15 != v16 && (v16 ^ v15) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_23;
          }
        }

        else if (v15 != v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (__OFSUB__(0, v15))
        {
          goto LABEL_59;
        }

        if (v15 != v16 && -v15 != v16)
        {
          goto LABEL_23;
        }
      }

      v20 = -v11;
      if (__OFSUB__(0, v11))
      {
        goto LABEL_60;
      }

      v11 = v14;
      v14 = v20;
LABEL_23:
      v21 = __OFADD__(v16, v14);
      v16 += v14;
      if (v21)
      {
        goto LABEL_57;
      }

      v21 = __OFADD__(v15, v11);
      v15 += v11;
      if (v21)
      {
        goto LABEL_58;
      }

      if (--v17 <= 1)
      {
        goto LABEL_28;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
LABEL_28:
  if (v3 >= 4)
  {
    v3 = a1 * a2;
    if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
    {
      v25 = sub_100236B78(a1 * a2, v2);
      v4 = v26;
      v5 = v27;
      v6 = v28;
      if (v28)
      {
        sub_10077169C();
        swift_unknownObjectRetain_n();

        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();
          v30 = _swiftEmptyArrayStorage;
        }

        v31 = v30[2];

        if (__OFSUB__(v6 >> 1, v5))
        {
          goto LABEL_75;
        }

        if (v31 != (v6 >> 1) - v5)
        {
          goto LABEL_76;
        }

        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          goto LABEL_40;
        }

        v4 = _swiftEmptyArrayStorage;
        goto LABEL_39;
      }

      while (1)
      {
        sub_100234CB8(v25, v4, v5, v6);
        v4 = v29;
LABEL_39:
        swift_unknownObjectRelease();
LABEL_40:
        v32 = *(v4 + 2);
        v5 = v32 - 2;
        if (v32 < 2)
        {
LABEL_66:
          __break(1u);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v4;
          if (!isUniquelyReferenced_nonNull_native || v5 > *(v4 + 3) >> 1)
          {
            v4 = sub_10049EB64(isUniquelyReferenced_nonNull_native, v32, 1, v4);
            v41 = v4;
          }

          sub_10061BFB8(0, 2, 0);
          a2 = *(v4 + 2);
          if (a2 >= 2)
          {
            v41 = v4;
            if ((a2 - 1) <= *(v4 + 3) >> 1)
            {
              goto LABEL_46;
            }

            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_68:
        v4 = sub_10049EB64(1, a2, 1, v4);
        v41 = v4;
LABEL_46:
        v25 = &v41;
        sub_10061BFB8(1uLL, 2, 0);
        v41 = v4;
        v34 = v3 + 2;
        if (__OFADD__(v3, 2))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (v34 < v3)
        {
          goto LABEL_70;
        }

        v21 = __OFADD__(v34, 1);
        v35 = v3 + 3;
        if (v21)
        {
          goto LABEL_71;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        v36 = *(v2 + 2);
        if (v36 < v3 || v36 < v35)
        {
          goto LABEL_73;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          sub_1000F9B04(v2, (v2 + 32), v3, (2 * v35) | 1);
          return v41;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_unknownObjectRelease();
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  return v2;
}

char *sub_10071024C(char *result, uint64_t a2)
{
  v2 = a2 * result;
  if ((a2 * result) >> 64 != (a2 * result) >> 63)
  {
    goto LABEL_31;
  }

  if (v2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result / 2;
  v4 = a2 / 2;
  result = sub_10049EB64(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v3;
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v2 + 1;
  v11 = -1;
  while (1)
  {
    v12 = v9 + v5;
    if (__OFADD__(v9, v5))
    {
      break;
    }

    if (__OFADD__(v8, v4))
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 2);
    v13 = *(v6 + 3);
    if (v14 >= v13 >> 1)
    {
      v20 = v5;
      result = sub_10049EB64((v13 > 1), v14 + 1, 1, v6);
      v5 = v20;
      v6 = result;
    }

    *(v6 + 2) = v14 + 1;
    v15 = &v6[16 * v14];
    *(v15 + 4) = v12;
    *(v15 + 5) = v8 + v4;
    if (v9 < 0)
    {
      v17 = -v9;
      if (__OFSUB__(0, v9))
      {
        goto LABEL_30;
      }

      if (v8 != v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v8 == v9;
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v8 != v9)
      {
        v17 = 1 - v9;
LABEL_14:
        v16 = v8 == v17;
LABEL_15:
        if (!v16)
        {
          goto LABEL_19;
        }
      }
    }

    v18 = -v11;
    if (__OFSUB__(0, v11))
    {
      goto LABEL_29;
    }

    v11 = v7;
    v7 = v18;
LABEL_19:
    v19 = __OFADD__(v9, v7);
    v9 += v7;
    if (v19)
    {
      goto LABEL_27;
    }

    v19 = __OFADD__(v8, v11);
    v8 += v11;
    if (v19)
    {
      goto LABEL_28;
    }

    if (--v10 <= 1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1007103CC(int64x2_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType;
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
  [(int64x2_t *)&v46 frame];
  result = sub_10070EB1C(v6, v7, v8);
  if (!a1[1].i64[0])
  {
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = a1[2];
  v12 = a1[2].i64[0];
  if (v12 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_31;
  }

  v13 = v12 % result;
  _VF = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (_VF)
  {
    goto LABEL_28;
  }

  if (!v10)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v11.i64[1] == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_32;
  }

  v16 = v11.i64[1] % v10 + 1;
  if (__OFADD__(v11.i64[1] % v10, 1))
  {
    goto LABEL_30;
  }

  v17.f64[0] = v15;
  if (v2[v5] > 1u)
  {
    if (v2[v5] == 2)
    {
      v17.f64[1] = v16;
      __asm { FMOV            V2.2D, #15.0 }

      recta.origin = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x406A000000000000uLL)), vmulq_f64(v17, _Q2));
      y = recta.origin.y;
      v28 = 0x406A000000000000;
LABEL_21:
      v25 = *&v28;
      v26 = [v2 traitCollection];
      goto LABEL_22;
    }
  }

  else if (v2[v5])
  {
    v17.f64[1] = v16;
    __asm { FMOV            V2.2D, #15.0 }

    v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4067E00000000000uLL)), vmulq_f64(v17, _Q2));
    goto LABEL_18;
  }

  v17.f64[1] = v16;
  __asm { FMOV            V2.2D, #15.0 }

  v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4056000000000000uLL)), vmulq_f64(v17, _Q2));
  y = v22.y;
  if (v2[v5] > 1u)
  {
    recta.origin = v22;
    goto LABEL_20;
  }

  if (v2[v5])
  {
LABEL_18:
    recta.origin = v22;
    y = v22.y;
LABEL_20:
    v28 = 0x4067E00000000000;
    goto LABEL_21;
  }

  v25 = 88.0;
  v26 = [v2 traitCollection];
LABEL_22:
  v29 = v26;
  v30 = sub_10077070C();

  if (v30)
  {
    v47.origin.x = recta.origin.x;
    v47.origin.y = y;
    v47.size.width = v25;
    v47.size.height = v25;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = recta.origin.x;
    v48.origin.y = y;
    v48.size.width = v25;
    v48.size.height = v25;
    MaxY = CGRectGetMaxY(v48);
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{MinX, MaxY}];
    v35 = v34;
    v49.origin.x = recta.origin.x;
    v49.origin.y = y;
    v49.size.width = v25;
    v49.size.height = v25;
    MaxX = CGRectGetMaxX(v49);
  }

  else
  {
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{recta.origin.x, y}];
    v35 = v37;
    v50.origin.x = recta.origin.x;
    v50.origin.y = y;
    v50.size.width = v25;
    v50.size.height = v25;
    MaxX = CGRectGetMinX(v50);
  }

  v38 = MaxX;
  v51.origin.x = recta.origin.x;
  v51.origin.y = y;
  v51.size.width = v25;
  v51.size.height = v25;
  [v2 convertPoint:v33 fromCoordinateSpace:{v38, CGRectGetMaxY(v51)}];
  v40 = v39;
  v41 = dbl_1007B5880[v2[v5]];
  *&recta.size.width = v2;
  *&recta.size.height = ObjectType;
  [(CGSize *)&recta.size frame];
  v42 = CGRectGetHeight(v52) - dbl_1007B58A0[v2[v5]] - v40;
  [v33 center];
  return [v33 setCenter:{v41 - v35 + v43, v42 + v44}];
}

void sub_10071072C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType;
  v92.receiver = v2;
  v92.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v92, "frame");
  v9 = sub_10070EB1C(v6, v7, v8);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_80;
  }

  v12 = v9;
  v13 = v10;
  v91.receiver = v2;
  v91.super_class = ObjectType;
  v14 = v2[v5];
  objc_msgSendSuper2(&v91, "frame");
  v16.f64[0] = v15;
  v87 = sub_10070E7C0(v14, v16, v17);
  sub_10070F720();
  if (v11 < 0)
  {
LABEL_81:
    __break(1u);
  }

  else
  {
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    if (!v11)
    {
LABEL_68:
      v72 = &v2[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds];
      *v72 = v22;
      v72[1] = v23;
      v72[2] = v24;
      v72[3] = v25;
      return;
    }

    if (v12)
    {
      _ZF = v13 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v85 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkViews;
      v86 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_contentView;
      v88 = a1 + 32;
      v89 = *(a1 + 16);
      v83 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkImages;
      swift_beginAccess();
      v27 = 0;
      v28 = 0;
      v29 = v12 / 2 - 1;
      v30 = v13 / 2;
      v31 = v13 / 2 - 1;
      v32 = v12 * v31;
      v81 = (v12 * v31) >> 64 != (v12 * v31) >> 63;
      v33 = v29 + v12 * v31;
      v34 = __OFADD__(v29, v32);
      v80 = v34;
      v79 = (v12 * v30) >> 64 != (v12 * v30) >> 63;
      _VF = __OFADD__(v29, v12 * v30);
      v36 = v29 + v12 * v30;
      v37 = _VF;
      v75 = v33 + 1;
      v76 = v36;
      v38 = __OFADD__(v33, 1);
      v77 = v38;
      v78 = v37;
      v73 = v36 + 1;
      v39 = __OFADD__(v36, 1);
      v74 = v39;
      __asm { FMOV            V0.2D, #15.0 }

      v82 = v5;
      v84 = v11;
      while (1)
      {
        if (v28 == v89)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v45 = *(v88 + 16 * v28);
        v46 = *(v88 + 16 * v28);
        if (v46 == 0x8000000000000000 && v12 == -1)
        {
          goto LABEL_72;
        }

        if (__OFADD__(v46 % v12, 1))
        {
          goto LABEL_70;
        }

        if (*(&v45 + 1) == 0x8000000000000000 && v13 == -1)
        {
          goto LABEL_73;
        }

        if (__OFADD__(*(&v45 + 1) % v13, 1))
        {
          goto LABEL_71;
        }

        if (v2[v5] > 1u)
        {
          if (v2[v5] == 2)
          {
            goto LABEL_40;
          }
        }

        else if (v2[v5])
        {
          goto LABEL_40;
        }

        if (v2[v5] > 1u)
        {
          if (v81)
          {
            goto LABEL_74;
          }

          if (v80)
          {
            goto LABEL_75;
          }

          if (v79)
          {
            goto LABEL_76;
          }

          if (v78)
          {
            goto LABEL_77;
          }

          sub_10000A5D4(&qword_100952110);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100783C60;
          if (v77)
          {
            goto LABEL_78;
          }

          *(inited + 32) = v75;
          *(inited + 40) = v76;
          if (v74)
          {
            goto LABEL_79;
          }

          *(inited + 48) = v73;
          v48 = sub_10017A95C(inited);
          swift_setDeallocating();
          if (!v48[2])
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

LABEL_40:
        v48 = _swiftEmptySetSingleton;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_45;
        }

LABEL_41:
        v49 = sub_10077174C();
        v50 = -1 << *(v48 + 32);
        v51 = v49 & ~v50;
        if ((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51))
        {
          v52 = ~v50;
          while (*(v48[6] + 8 * v51) != v28)
          {
            v51 = (v51 + 1) & v52;
            if (((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_25;
        }

LABEL_45:

        v53 = *&v2[v86];
        [v2 convertRect:v53 fromCoordinateSpace:?];
        v95.origin.x = v22;
        v95.origin.y = v23;
        v95.size.width = v24;
        v95.size.height = v25;
        if (!CGRectIntersectsRect(v94, v95) || v27 >= v87)
        {
          goto LABEL_25;
        }

        swift_beginAccess();
        v55 = *&v2[v85];
        if (*(v55 + 16) && (v56 = sub_10060FF40(v28), (v57 & 1) != 0))
        {
          v58 = v27;
          v59 = *(*(v55 + 56) + 8 * v56);
          swift_endAccess();
          v60 = v59;
        }

        else
        {
          v58 = v27;
          swift_endAccess();
          sub_10075FD2C();
          v61 = sub_10075FB3C();
          swift_beginAccess();
          v60 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = *&v2[v85];
          *&v2[v85] = 0x8000000000000000;
          sub_10024B52C(v60, v28, isUniquelyReferenced_nonNull_native);
          *&v2[v85] = v90;
          swift_endAccess();
          [v53 addSubview:v60];
        }

        [v60 setHidden:{0, v73}];
        v63 = *&v2[v83];
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = *(v63 + 8 * (v28 % v64) + 32);
          if (v65)
          {
            v66 = v65;
            v67 = sub_10075FC9C();
            if (v67)
            {
              v68 = v67;
              sub_100016F40(0, &qword_10094F610);
              v69 = v66;
              v70 = sub_100770EEC();

              if (v70)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v43 = v66;
            }

            v93.value.super.isa = v65;
            v93.is_nil = 0;
            sub_10075FCEC(v93, v44);
LABEL_23:

            v5 = v82;
          }
        }

        sub_10075FC8C();

        v27 = v58 + 1;
        v11 = v84;
LABEL_25:
        if (++v28 == v11)
        {
          goto LABEL_68;
        }
      }
    }
  }

  __break(1u);
}

void sub_100710DDC()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_isLazyLayoutEnabled] == 1)
  {
    v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds];
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds];
    rect_8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds + 8];
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds + 16];
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_lastVisibleBounds + 24];
    sub_10070F720();
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v9 = CGRectGetWidth(v12);
    v13.origin.x = v2;
    v13.origin.y = rect_8;
    v13.size.width = v3;
    v13.size.height = v4;
    if (CGRectGetWidth(v13) < v9 || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, v10 = CGRectGetHeight(v14), v15.origin.x = v2, v15.origin.y = rect_8, v15.size.width = v3, v15.size.height = v4, CGRectGetHeight(v15) < v10))
    {
      [v0 setNeedsLayout];
      *v1 = x;
      v1[1] = y;
      v1[2] = width;
      v1[3] = height;
    }
  }
}

id sub_100710ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x108uLL);
  v13 = *(a2 + 16);
  *(a7 + 264) = *a2;
  *(a7 + 280) = v13;
  *(a7 + 296) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 304) = *a3;
  *(a7 + 320) = v14;
  *(a7 + 336) = *(a3 + 32);
  sub_100012498(a4, a7 + 344);
  sub_100012498(a5, a7 + 384);

  return sub_100012498(a6, a7 + 424);
}

uint64_t ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v52 = a2;
  v53 = sub_10076D1FC();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = sub_10077164C();
  v13 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100102958(v6 + 264, &v59);
  v16 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    sub_100012498(&v59, v54);
    sub_10000CF78(v54, v55);
    sub_10076D2BC();
    v18 = v17;
    v20 = v19;
    v65.origin.x = a3;
    v65.origin.y = a4;
    v65.size.width = a5;
    v65.size.height = a6;
    v21 = CGRectGetMidX(v65) + v18 * -0.5;
    v66.origin.x = a3;
    v66.origin.y = a4;
    v66.size.width = a5;
    v66.size.height = a6;
    MinY = CGRectGetMinY(v66);
    sub_10000CF78(v54, v55);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v54);
  }

  else
  {
    sub_1001029C8(&v59);
    v21 = 0.0;
    MinY = 0.0;
    v18 = 0.0;
    v20 = 0;
  }

  sub_100102958(v6 + 304, &v59);
  v23 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    *&v47 = v20;
    sub_100012498(&v59, v54);
    swift_getObjectType();
    sub_100711D44(a1, v6, a5);
    *&v48 = v24;
    sub_10000CF78(v6, *(v6 + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v26 = v25;
    (*(v13 + 8))(v15, v49);
    if (v16)
    {
      v67.origin.x = v21;
      v67.origin.y = MinY;
      v67.size.width = v18;
      *&v67.size.height = v47;
      v26 = v26 + CGRectGetMaxY(v67);
    }

    v68.origin.x = a3;
    v68.origin.y = a4;
    v68.size.width = a5;
    v68.size.height = a6;
    MinX = CGRectGetMinX(v68);
    v69.origin.x = a3;
    v69.origin.y = a4;
    v69.size.width = a5;
    v69.size.height = a6;
    Width = CGRectGetWidth(v69);
    sub_10000CF78(v54, v55);
    v44 = Width;
    v45 = MinX;
    v29 = v26;
    v30 = *&v48;
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v54);
  }

  else
  {
    sub_1001029C8(&v59);
    v44 = 0.0;
    v45 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
  }

  v31 = *(v6 + 80);
  v48 = *(v6 + 96);
  v49 = v31;
  sub_10000A570(v6 + 112, v61);
  v32 = *(v6 + 152);
  v46 = *(v6 + 168);
  v47 = v32;
  sub_10000A570(v6 + 184, &v63);
  sub_10000A570(v6 + 224, &v64);
  v59 = v49;
  v60 = v48;
  v62 = v46;
  *&v61[40] = v47;
  sub_1002033D4(&v59, v54);
  sub_10000A570(v6 + 344, &v56);
  sub_10000A570(v6 + 384, &v57);
  sub_10000A570(v6 + 424, &v58);
  swift_getObjectType();
  sub_100711FFC(a5, a1, v54);
  v34 = v33;
  if (v23 && (v70.size.width = v44, v70.origin.x = v45, v70.origin.y = v29, v43 = v29, v70.size.height = v30, v35 = v30, v36 = v34 + CGRectGetMaxY(v70), v71.origin.x = a3, v71.origin.y = a4, v71.size.width = a5, v71.size.height = a6, CGRectGetMaxY(v71) < v36))
  {
    v72.size.width = v44;
    v72.origin.x = v45;
    v72.origin.y = v43;
    v72.size.height = v35;
    MaxY = CGRectGetMaxY(v72);
  }

  else
  {
    v73.origin.x = a3;
    v73.origin.y = a4;
    v73.size.width = a5;
    v73.size.height = a6;
    MaxY = CGRectGetMaxY(v73) - v34;
  }

  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v74.size.height = a6;
  v38 = CGRectGetMinX(v74);
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  v39 = CGRectGetWidth(v75);
  v40 = v50;
  sub_1007117A0(v38, MaxY, v39, v34);
  sub_10076D1EC();
  sub_10076D1DC();
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetHeight(v76);
  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  CGRectGetMinX(v77);
  v78.origin.x = a3;
  v78.origin.y = a4;
  v78.size.width = a5;
  v78.size.height = a6;
  CGRectGetMinY(v78);
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetWidth(v79);
  sub_10076D1BC();
  (*(v51 + 8))(v40, v53);
  sub_100203430(v54);
  return sub_100203484(&v59);
}

double ArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_100711D44(a1, v2, a2);
}

void ArcadeSubscribePageLayout.Metrics.detailsMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

void ArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t ArcadeSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 184);

  return sub_100012498(a1, v1 + 184);
}

uint64_t ArcadeSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 224);

  return sub_100012498(a1, v1 + 224);
}

uint64_t sub_1007117A0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v36 = *v4;
  v37 = v14;
  sub_10000CF78((v4 + 104), *(v4 + 128));
  sub_1000FF02C();
  sub_10076D40C();
  v35 = v15;
  v16 = *(v11 + 8);
  v16(v13, v10);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetHeight(v39);
  sub_10000CF78(v5 + 23, v5[26]);
  sub_10076D2BC();
  v18 = v17;
  v20 = v19;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  v21 = CGRectGetMidX(v40) + v18 * -0.5;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  v22 = v36 + CGRectGetMinY(v41);
  sub_10000CF78(v5 + 23, v5[26]);
  sub_100770A4C();
  sub_10076D23C();
  v34 = v21;
  v42.origin.x = v21;
  v42.origin.y = v22;
  v42.size.width = v18;
  v36 = v20;
  v42.size.height = v20;
  CGRectGetMaxY(v42);
  sub_10000CF78(v5 + 28, v5[31]);
  if (sub_10076D24C())
  {
    sub_10000CF78((v4 + 224), *(v4 + 248));
    sub_10076D23C();
  }

  else
  {
    sub_10000CF78((v4 + 32), *(v4 + 56));
    sub_1000FF02C();
    sub_10076D40C();
    v33 = v23;
    v16(v13, v10);
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    v24 = CGRectGetWidth(v43) - *(v4 + 80) - *(v4 + 96);
    sub_10000CF78((v4 + 224), *(v4 + 248));
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    CGRectGetWidth(v44);
    sub_10076D2BC();
    if (v24 <= v25)
    {
      v24 = v25;
    }

    v45.origin.x = a1;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    Width = CGRectGetWidth(v45);
    if (Width < v24)
    {
      v24 = Width;
    }

    v46.origin.x = a1;
    v46.origin.y = a2;
    v46.size.width = a3;
    v46.size.height = a4;
    v27 = CGRectGetMidX(v46) + v24 * -0.5;
    v47.origin.x = v34;
    v47.origin.y = v22;
    v47.size.width = v18;
    v47.size.height = v36;
    v28 = v37 + CGRectGetMaxY(v47);
    sub_10000CF78((v4 + 224), *(v4 + 248));
    v29 = v33;
    sub_100770A4C();
    sub_10076D23C();
    v48.origin.x = v27;
    v48.origin.y = v28;
    v48.size.width = v24;
    v48.size.height = v29;
    CGRectGetMaxY(v48);
  }

  sub_10000CF78((v4 + 264), *(v4 + 288));
  v30 = sub_10076D24C();
  sub_10000CF78((v4 + 264), *(v4 + 288));
  if ((v30 & 1) == 0)
  {
    sub_10076D2BC();
    v49.origin.x = a1;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    CGRectGetMidX(v49);
    sub_10000CF78((v4 + 264), *(v4 + 288));
    sub_100770A4C();
  }

  sub_10076D23C();
  return sub_10076D1BC();
}

double sub_100711CE8(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_100711FFC(a2, a1, v2);
}

double sub_100711D44(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = v10;
  sub_10000A570(a2 + 112, v26);
  v11 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = v11;
  sub_10000A570(a2 + 184, &v28);
  sub_10000A570(a2 + 224, &v29);
  v25[0] = v17;
  v25[1] = v16;
  v27 = v14;
  *&v26[40] = v15;
  sub_1002033D4(v25, v21);
  sub_10000A570(a2 + 344, &v22);
  sub_10000A570(a2 + 384, &v23);
  sub_10000A570(a2 + 424, &v24);
  sub_10000CF78(a2, *(a2 + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_100711FFC(a3, a1, v21);
  sub_100102958(a2 + 264, &v18);
  if (v19)
  {
    sub_100012498(&v18, v20);
    sub_10000CF78(v20, v20[3]);
    sub_10076D2BC();
    sub_10000CD74(v20);
  }

  else
  {
    sub_1001029C8(&v18);
  }

  sub_10000CF78((a2 + 40), *(a2 + 64));
  sub_1000FF02C();
  sub_10076D40C();
  v12(v9, v6);
  sub_100203430(v21);
  sub_100203484(v25);
  return a3;
}

double sub_100711FFC(double a1, uint64_t a2, void *a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a3 + 23, a3[26]);
  sub_10076D2BC();
  sub_10000CF78(a3 + 18, a3[21]);
  sub_1000FF02C();
  sub_10076D40C();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000CF78(a3 + 28, a3[31]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 4, a3[7]);
    sub_1000FF02C();
    sub_10076D40C();
    v9(v8, v5);
  }

  sub_10000CF78(a3 + 33, a3[36]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 33, a3[36]);
    sub_10076D2BC();
  }

  sub_10000CF78(a3 + 28, a3[31]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 33, a3[36]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(a3 + 13, a3[16]);
      sub_1000FF02C();
      sub_10076D40C();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_100712344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10071238C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100712464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007124AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10071254C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100712594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100712610@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_10000A5D4(&qword_100966B78);
  __chkstk_darwin(v1 - 8);
  sub_10076CA5C();
  v12 = sub_10076CA7C();
  v11 = v2;
  v10 = sub_10076CA8C();
  v9 = v3;
  sub_10076C9EC();
  sub_10076CA3C();
  sub_10076C9FC();
  sub_10076CA2C();
  sub_10076CA0C();
  sub_10076CA1C();
  v4 = objc_opt_self();
  result = [v4 shared];
  if (result)
  {
    v6 = result;
    v7 = [result isAccountModificationRestricted];

    if (v7)
    {
LABEL_5:
      sub_10076CA6C();
      return sub_10076CA4C();
    }

    result = [v4 shared];
    if (result)
    {
      v8 = result;
      [result isAddingFriendsRestricted];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10071280C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10076CA9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  sub_1007698BC();
  sub_10076CA0C();
  v13 = *(v7 + 8);
  v13(v12, v6);
  if (!v28[3])
  {
    return sub_10000CFBC(v28, &qword_100966B70);
  }

  sub_10000A5D4(&qword_1009592D0);
  sub_10076B90C();
  result = swift_dynamicCast();
  if (result)
  {
    v24 = v27;
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      sub_1007698BC();
      sub_10076CA5C();
      v13(v9, v6);
      v17 = swift_dynamicCast();
      v18 = v17 == 0;
      if (v17)
      {
        v19 = v25;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

      sub_100068CA0(v19, v20);
    }

    v21 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v5, 1, v21) == 1)
    {

      return sub_10000CFBC(v5, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v24, 1, a2, v5);

      return (*(v22 + 8))(v5, v21);
    }
  }

  return result;
}

uint64_t sub_100712B94(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = sub_10076CA9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1007698BC();
  sub_10076CA1C();
  (*(v7 + 8))(v9, v6);
  if (!v16)
  {
    return sub_10000CFBC(v15, &qword_100966B70);
  }

  sub_10000A5D4(&qword_1009592D0);
  sub_10076B90C();
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v14;
    v12 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {

      return sub_10000CFBC(v5, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v11, 1, a2, v5);

      return (*(v13 + 8))(v5, v12);
    }
  }

  return result;
}

uint64_t sub_100712E00(uint64_t result)
{
  if (result)
  {

    sub_10076BFBC();
    sub_100760C4C();
    sub_10076CB3C();
    sub_100760BCC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v1, &qword_100943310);
  }

  return result;
}

void sub_100712F24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_smallPlayerCard);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_smallPlayerCard);

      v6 = sub_10076CB2C();
      if (v6)
      {
      }
    }

    sub_10076CAFC();
  }
}

uint64_t sub_100713064()
{
  sub_100760C4C();
  sub_10076CB3C();
  sub_100760BCC();
  sub_100760BEC();
  return sub_100016C74(v1);
}

uint64_t sub_1007130E4()
{
  sub_10076CB3C();
  sub_10076CB0C();
  v1 = [objc_opt_self() absoluteDimension:v0];
  v2 = sub_1007665BC();

  return v2;
}

uint64_t sub_100713218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100713260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076CA9C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_1007698BC();
  sub_100712610(v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_10076CB1C();
  v12(v11, v5);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = v13;

  sub_10076CACC();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;

  return sub_10076CAEC();
}

uint64_t sub_10071347C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1007134B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1007134FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100713590()
{
  sub_10076653C();
  sub_1007136D4(&qword_100949AE0, &type metadata accessor for ArcadeDownloadPackCard);
  sub_10076332C();
  if (!v6)
  {
    return 0.0;
  }

  v0 = sub_10076651C();
  if (v1)
  {
    v2 = sub_10076652C();
    if (v2 >> 62)
    {
      v3 = sub_10077158C();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v3 = v0;
  }

  swift_getKeyPath();
  sub_10076338C();

  v4 = sub_10054D204(v3, v6);

  return v4;
}

uint64_t sub_1007136D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100713764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100958FE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - v6;
  v8 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-1] - v9;
  v11 = sub_10076F50C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for ActionOutcome.performed(_:), v11, v13);
  sub_10076FCBC();
  (*(v12 + 8))(v15, v11);
  v16 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    return sub_10000CFBC(v10, &unk_100943200);
  }

  v20[3] = sub_10076B90C();
  v20[4] = sub_10071430C(&qword_10095D660, &type metadata accessor for Action);
  v20[0] = a3;
  (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v4);

  sub_10076F6CC();

  (*(v5 + 8))(v7, v4);
  sub_10000CD74(v20);
  return (*(v17 + 8))(v10, v16);
}

uint64_t sub_100713A8C()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_10076FCBC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100713B78()
{
  sub_1007141E4();
  swift_allocError();
  *v0 = 1;
  sub_10076FCAC();
}

uint64_t sub_100713BE0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_10000A5D4(&qword_100966B88);
  __chkstk_darwin(v2 - 8);
  v42 = &v35 - v3;
  v4 = sub_10000A5D4(&qword_100966B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v35 - v8;
  v9 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_10076B96C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_10000A5D4(&qword_100942C70);
  v19 = sub_10076FCEC();
  v20 = sub_1007606AC();
  if (!v21)
  {
    goto LABEL_4;
  }

  v41 = v20;
  sub_10076069C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_10000CFBC(v11, &qword_100942A80);
LABEL_4:
    sub_1007141E4();
    swift_allocError();
    *v22 = 0;
    sub_10076FCAC();

    return v19;
  }

  v39 = v13;
  v40 = v12;
  (*(v13 + 32))(v18, v11, v12);
  v23 = sub_10076066C();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v19;
    v25[3] = v43;
    v25[4] = v24;

    v37 = sub_100714300;
  }

  else
  {
    v37 = sub_100714238;
    v25 = v19;
  }

  v26 = v44;
  v27 = sub_100768CCC();
  v35 = *(*(v27 - 8) + 56);
  v35(v26, 1, 1, v27);
  swift_retain_n();
  v38 = v25;

  sub_10076067C();
  v36 = v18;
  if (v46)
  {
    sub_10000CD64(&v45, v47);
    (*(v39 + 16))(v15, v18, v40);
    sub_10000CD08(v47, &v45);

    sub_100768CBC();
    sub_10000CD74(v47);
    sub_10000CFBC(v26, &qword_100966B90);
    v35(v6, 0, 1, v27);
    sub_100714248(v6, v26);
  }

  else
  {
    sub_10000CFBC(&v45, &unk_1009434C0);
  }

  sub_100765D7C();
  sub_10076F64C();
  sub_10076FC1C();
  v28 = *&v47[0];
  sub_100767E8C();
  sub_10076FC1C();
  v29 = *&v47[0];
  sub_10076068C();

  v30 = v42;
  sub_100767E4C();
  v31 = sub_100767E5C();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v36;
  v33 = v44;
  sub_100767E3C();

  sub_10000CFBC(v30, &qword_100966B88);
  sub_10000CFBC(v33, &qword_100966B90);
  (*(v39 + 8))(v32, v40);
  return v19;
}

unint64_t sub_1007141E4()
{
  result = qword_100966B98;
  if (!qword_100966B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966B98);
  }

  return result;
}

uint64_t sub_100714248(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100966B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007142B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10071430C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100714374()
{
  result = qword_100966BA0;
  if (!qword_100966BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966BA0);
  }

  return result;
}

uint64_t sub_1007143C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100714424(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1007144EC()
{
  sub_100761C1C();
  sub_100714590();
  result = sub_10076332C();
  if (v6)
  {
    v2 = sub_100761C0C();
    v4 = v3;

    v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_placement);
    swift_beginAccess();
    *v5 = v2;
    v5[1] = v4;
  }

  return result;
}

unint64_t sub_100714590()
{
  result = qword_10095FD38;
  if (!qword_10095FD38)
  {
    sub_100761C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095FD38);
  }

  return result;
}

id sub_1007145E8(void *a1)
{
  [a1 frame];

  return [a1 setFrame:?];
}

void *sub_100714670(void (*a1)(void))
{
  v3 = [v1 subviews];
  sub_100016F40(0, &qword_1009441F0);
  v4 = sub_1007701BC();

  if (v4 >> 62)
  {
LABEL_19:
    v5 = sub_10077158C();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      a1(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_20;
      }
    }

    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  while (v6 != v5);
LABEL_20:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100714830()
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2350);
  qword_1009A33E0 = v0;
  unk_1009A33E8 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_1009A33C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1007148EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for BundleSearchResultContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_bundleView]];

  return v15;
}

id sub_100714B24()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for BundleSearchResultContentView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_lockupView];
  sub_10076422C();
  v2 = sub_10052225C();
  v4 = v3;
  sub_10076422C();
  MinX = CGRectGetMinX(v16);
  sub_10076422C();
  MinY = CGRectGetMinY(v17);
  [v1 setFrame:{MinX, MinY, v2, v4}];
  v7 = 0.0;
  if ((MetadataRibbonView.hasContent.getter() & 1) == 0 && (sub_1004EEFC8() & 1) == 0)
  {
    if (qword_100941588 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_1009A33C8, qword_1009A33E0);
    v8 = [v0 traitCollection];
    sub_10076D41C();
    v7 = v9;
  }

  sub_10076422C();
  Height = CGRectGetHeight(v18);
  v19.origin.x = MinX;
  v19.origin.y = MinY;
  v19.size.width = v2;
  v19.size.height = v4;
  v11 = Height - (v7 + CGRectGetHeight(v19));
  sub_10076422C();
  v12 = CGRectGetMinX(v20);
  v21.origin.x = MinX;
  v21.origin.y = MinY;
  v21.size.width = v2;
  v21.size.height = v4;
  v13 = v7 + CGRectGetMaxY(v21);
  sub_10076422C();
  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_bundleView] setFrame:{v12, v13, CGRectGetWidth(v22), v11}];
}

uint64_t sub_100714D90(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  sub_100763F3C();
  sub_100716B78(&qword_1009548F0, 255, &type metadata accessor for BundleSearchResult);
  result = sub_10076332C();
  if (v14[1])
  {
    v10 = sub_100763F2C();
    v11 = sub_10076341C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a1, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_100386168(v10, v8, a2);

    sub_10000CFBC(v8, &unk_1009428D0);
    sub_100763F2C();
    v13 = sub_10076BBDC();

    if (!v13)
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_10053FB7C(v13);

    [v3 setNeedsLayout];
  }

  return result;
}

id sub_100714FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100715058()
{
  sub_100522870();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_bundleView);
  sub_10053F768();
  sub_10053F998();
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView);
  v3 = v2;
  v4 = v2;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v3);
}

uint64_t sub_100715140(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_100716B78(&qword_100966BE8, a2, type metadata accessor for BundleSearchResultContentView);
  result = sub_100716B78(&qword_100966BF0, v3, type metadata accessor for BundleSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

void sub_1007151C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  sub_10000A570(a1, v17);
  sub_10000A5D4(&unk_100942830);
  sub_100763F3C();
  if (swift_dynamicCast())
  {
    sub_100763F2C();
    v7 = sub_10076BB5C();

    if (v7)
    {
      v8 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v16 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_lockupView);
      v9 = qword_10093FBE0;
      v10 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_100763ADC();
      sub_10000A61C(v11, qword_10099DDA0);
      sub_1007639AC();
      [v10 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v10 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v12 = *(v16 + v8);
      sub_10075FD2C();
      sub_100716B78(&qword_100941820, 255, &type metadata accessor for ArtworkView);
      v13 = v12;
      sub_100760B8C();
    }

    sub_100763F2C();
    v14 = sub_10076BBDC();

    if (v14)
    {
      sub_10053EC80(v14, a2);
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
    sub_1005215E8(a1, a2);
  }
}

uint64_t sub_1007154E8(uint64_t a1)
{
  v2 = sub_10076BF6C();
  v116 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v88[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10076749C();
  v115 = *(v5 - 8);
  __chkstk_darwin(v5);
  v114 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1007679DC();
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v108 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10076997C();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10076443C();
  v122 = *(v11 - 8);
  v123 = v11;
  __chkstk_darwin(v11);
  v13 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v121 = &v88[-v15];
  v128 = sub_10076747C();
  v120 = *(v128 - 8);
  __chkstk_darwin(v128);
  v113 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v127 = &v88[-v18];
  v19 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v19 - 8);
  v107 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v125 = &v88[-v22];
  v23 = sub_10076469C();
  __chkstk_darwin(v23 - 8);
  v24 = sub_10076C38C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v126 = &v88[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100763F3C();
  sub_100716B78(&qword_1009548F0, 255, &type metadata accessor for BundleSearchResult);
  result = sub_10076332C();
  v124 = v165[0];
  if (v165[0])
  {
    v101 = v5;
    sub_1007632FC();
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    sub_10076C32C();
    sub_100763F2C();
    v28 = sub_10076BB6C();
    v94 = v29;
    v95 = v28;

    sub_100763F2C();
    v30 = sub_10076BBEC();
    v96 = v31;
    v97 = v30;

    sub_100763F2C();
    v117 = sub_10076282C();

    (*(v118 + 56))(v125, 1, 1, v119);
    sub_100763F2C();
    sub_10076286C();

    swift_getKeyPath();
    sub_10076338C();

    v32 = v165[5];
    sub_10076C2FC();
    if (qword_1009407E8 != -1)
    {
      swift_once();
    }

    v33 = v128;
    v34 = sub_10000A61C(v128, qword_1009A0690);
    v98 = *(v120 + 16);
    v99 = v120 + 16;
    v98(v127, v34, v33);
    v35 = sub_10077071C();
    v105 = v2;
    v106 = a1;
    v103 = v24;
    v104 = v4;
    v102 = v25;
    if (v35)
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v36 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v36 = qword_100944CA0;
    }

    v37 = v123;
    v38 = sub_10000A61C(v123, v36);
    v39 = v122;
    (*(v122 + 16))(v13, v38, v37);
    (*(v39 + 32))(v121, v13, v37);
    v40 = [v32 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v93 = sub_10076DDDC();
    swift_allocObject();
    v100 = sub_10076DDBC();
    v41 = objc_opt_self();
    v91 = v41;
    v42 = [v41 preferredFontForTextStyle:UIFontTextStyleBody];
    v43 = sub_10076C04C();
    v165[3] = v43;
    v44 = sub_100716B78(&qword_100943230, 255, &type metadata accessor for Feature);
    v165[4] = v44;
    v90 = v44;
    v45 = sub_10000DB7C(v165);
    v46 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92 = *(*(v43 - 8) + 104);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    sub_10076C90C();
    v109 = v32;
    sub_10000CD74(v165);
    v47 = v110;
    sub_10076996C();
    sub_10076994C();
    v48 = v112;
    v111 = *(v111 + 8);
    (v111)(v47, v112);
    v49 = [v41 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v164[3] = v43;
    v164[4] = v44;
    v50 = sub_10000DB7C(v164);
    v51 = v46;
    v52 = v92;
    v92(v50, v51, v43);
    sub_10076C90C();
    sub_10000CD74(v164);
    sub_10076996C();
    sub_10076994C();
    v53 = v111;
    (v111)(v47, v48);
    v54 = [v91 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v163[3] = v43;
    v163[4] = v90;
    v55 = sub_10000DB7C(v163);
    v52(v55, v89, v43);
    sub_10076C90C();
    sub_10000CD74(v163);
    sub_10076996C();
    sub_10076994C();
    v53(v47, v48);
    v56 = v117;
    LODWORD(v112) = sub_10001D420(0, v117) & (v56 != 0);
    if (v112 == 1)
    {
      v57 = v93;
      v58 = objc_allocWithZone(sub_10076DEDC());
      v59 = v109;
      v60 = sub_10076DECC();
      v61 = v107;
      sub_10047C764(v125, v107);
      v63 = v118;
      v62 = v119;
      v64 = *(v118 + 48);
      if (v64(v61, 1, v119) == 1)
      {
        v65 = v108;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v64(v61, 1, v62) != 1)
        {
          sub_10000CFBC(v61, &unk_100957F90);
        }
      }

      else
      {
        v65 = v108;
        (*(v63 + 32))(v108, v61, v62);
      }

      v67 = v60;
      sub_10001A588(v56, v65, v67);

      (*(v63 + 8))(v65, v62);
      swift_allocObject();
      v66 = sub_10076DDAC();
    }

    else
    {
      v57 = v93;
      swift_allocObject();
      v66 = sub_10076DDBC();
    }

    v68 = v66;

    sub_10001D420(0, 0);
    swift_allocObject();
    v69 = sub_10076DDBC();
    v70 = v127;
    v98(v113, v127, v128);
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v161 = v57;
    v160 = v100;
    v159 = 0;
    *&v157[40] = 0u;
    v158 = 0u;
    sub_10000A570(v165, v157);
    sub_10000A570(v164, &v156);
    v155 = 0;
    v153 = 0u;
    v154 = 0u;
    v152 = 0;
    v150 = 0u;
    v151 = 0u;

    v71 = sub_10076DDCC();
    v149 = &protocol witness table for LayoutViewPlaceholder;
    v148 = v57;
    v147 = v71;
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0;
    v136 = 0u;
    *&v135[40] = 0u;
    sub_10000A570(v163, v135);
    v133 = v57;
    v134 = &protocol witness table for LayoutViewPlaceholder;
    v131 = &protocol witness table for LayoutViewPlaceholder;
    v132 = v68;
    v130 = v57;
    v129 = v69;
    v72 = v114;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1007841E0;
    v74 = v109;
    *(v73 + 32) = v109;
    v75 = v74;
    v76 = sub_10076DEEC();
    sub_100716B78(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
    v77 = v101;
    sub_10076D2AC();

    (*(v115 + 8))(v72, v77);
    sub_10000CD74(v163);
    sub_10000CD74(v164);
    sub_10000CD74(v165);
    (*(v122 + 8))(v121, v123);
    (*(v120 + 8))(v70, v128);
    sub_10000CFBC(v125, &unk_100957F90);
    v78 = v116;
    v80 = v104;
    v79 = v105;
    (*(v116 + 104))(v104, enum case for Artwork.Style.roundedRect(_:), v105);
    v81 = v126;
    sub_10076C2FC();
    sub_100763F2C();
    v82 = sub_10076BBDC();

    if (!v82)
    {
      v82 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for BundleView();
    v83 = sub_100630CB4();
    swift_getObjectType();
    sub_100541BC8(v80, v82, v83);
    swift_unknownObjectRelease();

    (*(v78 + 8))(v80, v79);
    sub_100763F2C();
    v84 = sub_10076284C();
    v85 = sub_10076282C();
    v86 = sub_10001D420(v84, v85);

    if (v86)
    {
      (*(v102 + 8))(v81, v103);
    }

    else
    {
      if (qword_100941588 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_1009A33C8, qword_1009A33E0);
      swift_getKeyPath();
      sub_10076338C();

      v87 = v165[0];
      sub_10076D41C();

      return (*(v102 + 8))(v126, v103);
    }
  }

  return result;
}

uint64_t sub_100716634()
{
  sub_100763F3C();
  sub_100716B78(&qword_1009548F0, 255, &type metadata accessor for BundleSearchResult);
  result = sub_10076332C();
  if (v6)
  {
    sub_100763F2C();

    v1 = sub_10076282C();
    if (v1)
    {
      v2 = v1;
      swift_getKeyPath();
      sub_10076338C();

      v3 = sub_100521984(v2, v5);

      sub_1000F92B4(v3);
      v4._rawValue = _swiftEmptyArrayStorage;
      sub_100760BAC(v4);
    }
  }

  return result;
}

void sub_100716770()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_lockupView];
  v3 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  sub_10075FCEC(v40, v5);

  v6 = *(v2 + v3);
  sub_10075FD2C();
  sub_100716B78(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v7 = v6;
  sub_100760BFC();

  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v10 = *(v9 + 16);
  if (v10)
  {
    v36 = v1;
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v35 = v8;

    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      if (swift_dynamicCastClass())
      {
        v13 = v12;
        v41.value.super.isa = 0;
        v41.is_nil = 0;
        sub_10075FCEC(v41, v14);
        sub_100760BFC();
      }

      v11 += 16;
      --v10;
    }

    while (v10);

    v1 = v36;
  }

  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_bundleView];
  v15 = sub_100714670(type metadata accessor for BundleChildView);
  v16 = v15;
  if (v15 >> 62)
  {
    v17 = sub_10077158C();
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = sub_10077149C();
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon;
    v22 = *&v19[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon];
    v42.value.super.isa = 0;
    v42.is_nil = 0;
    sub_10075FCEC(v42, v23);

    v24 = *&v20[v21];
    sub_100760BFC();
  }

  while (v17 != v18);
LABEL_16:

  v25 = sub_100714670(type metadata accessor for BorderedScreenshotView);
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = sub_10077158C();
    if (v27)
    {
LABEL_18:
      if (v27 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = sub_10077149C();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          v31 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
          v32 = *&v29[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
          v43.value.super.isa = 0;
          v43.is_nil = 0;
          sub_10075FCEC(v43, v33);

          v34 = *&v30[v31];
          sub_100760BFC();
        }

        while (v27 != v28);
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }
  }

LABEL_25:

  v38 = *&v37[OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView];
  sub_100760BFC();
}

uint64_t sub_100716B78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100716BD0(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v4 = sub_10076670C();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075DB7C();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v11 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v11 - 8);
  v13 = v46 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  v61 = 0u;
  v62 = 0u;

  sub_10012062C(v21, &v61, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000CFBC(v13, &unk_10094A890);
  }

  else
  {
    sub_10005DAD8(v13, v20);
    sub_10005C684(v20, v17);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v48 = *v17;
      v49 = a1;
      v22 = sub_10000A5D4(&qword_1009499B8);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = v59;
      v26 = *(v59 + 32);
      v46[1] = v59 + 32;
      v47 = v26;
      v54 = v10;
      v26(v10, &v17[v24], v6);
      v27 = sub_100762FAC();
      (*(*(v27 - 8) + 8))(&v17[v23], v27);
      sub_10000A5D4(&qword_100942C70);
      v28 = sub_10076FCEC();
      sub_1007666FC();
      v51 = sub_1007666EC();
      v29 = v55;
      (*(v25 + 16))(v55, v10, v6);
      v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = v4;
      v53 = v20;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = v6;
      v34 = swift_allocObject();
      v35 = v47;
      *(v34 + 16) = v48;
      v35(v34 + v30, v29, v6);
      v36 = v49;
      *(v34 + v31) = v49;
      v38 = v56;
      v37 = v57;
      *(v34 + v32) = v56;
      *(v34 + v33) = v37;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v28;
      v40 = sub_100016F40(0, &qword_1009471F0);

      v41 = v38;

      swift_retain_n();
      swift_retain_n();
      v42 = sub_10077068C();
      *(&v62 + 1) = v40;
      v63 = &protocol witness table for OS_dispatch_queue;
      *&v61 = v42;
      sub_10076FC6C();

      (*(v58 + 8))(v60, v52);
      (*(v59 + 8))(v54, v50);
      sub_10005DB58(v53, type metadata accessor for FlowDestination);
      sub_10000CD74(&v61);
      return v28;
    }

    sub_10005DB58(v20, type metadata accessor for FlowDestination);
    sub_10005DB58(v17, type metadata accessor for FlowDestination);
  }

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v43 = sub_10076FD4C();
  sub_10000A61C(v43, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  *(&v62 + 1) = sub_10075F63C();
  *&v61 = a1;

  sub_10076F28C();
  sub_10000CFBC(&v61, &unk_1009434C0);
  sub_10076FBEC();

  sub_10000A5D4(&qword_100942C70);
  sub_1007179B4();
  swift_allocError();
  *v44 = 1;
  return sub_10076FC7C();
}

uint64_t sub_100717314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v43 = a2;
  v8 = type metadata accessor for FlowDestination();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10076779C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v41 - v25;
  v27 = *(v11 + 16);
  v27(v19, a1, v10, v24);
  v28 = (*(v11 + 88))(v19, v10);
  if (v28 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (v27)(v13, v19, v10);
    (*(v11 + 96))(v13, v10);
    if (*v13 == 1)
    {
      v29 = sub_10000A5D4(&qword_1009499B8);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.createNewFamily(_:);
LABEL_7:
      v34 = *v32;
      v35 = sub_100762FAC();
      (*(*(v35 - 8) + 104))(&v26[v30], v34, v35);
      v36 = sub_10075DB7C();
      (*(*(v36 - 8) + 16))(&v26[v31], v42, v36);
      v37 = v50;
      swift_storeEnumTagMultiPayload();
      v38 = v49;
      (*(v49 + 56))(v26, 0, 1, v37);

      goto LABEL_9;
    }
  }

  else if (v28 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (v27)(v16, v19, v10);
    (*(v11 + 96))(v16, v10);
    if (*v16 == 1)
    {
      v33 = sub_10000A5D4(&qword_1009499B8);
      v30 = *(v33 + 48);
      v31 = *(v33 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.familyOrganizer(_:);
      goto LABEL_7;
    }
  }

  v38 = v49;
  v37 = v50;
  (*(v49 + 56))(v26, 1, 1, v50);
LABEL_9:
  (*(v11 + 8))(v19, v10);
  sub_100016E2C(v26, v22, &unk_10094A890);
  if ((*(v38 + 48))(v22, 1, v37) == 1)
  {
    sub_10000CFBC(v26, &unk_10094A890);
  }

  else
  {
    v39 = v44;
    sub_10005DAD8(v22, v44);
    sub_100718104(v39, v45, v46, v47, v48);
    sub_10005DB58(v39, type metadata accessor for FlowDestination);
    v22 = v26;
  }

  return sub_10000CFBC(v22, &unk_10094A890);
}

uint64_t sub_100717800(uint64_t a1, uint64_t a2)
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076FD4C();
  sub_10000A61C(v3, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  v5[3] = sub_10075F63C();
  v5[0] = a2;

  sub_10076F28C();
  sub_10000CFBC(v5, &unk_1009434C0);
  sub_10076FBEC();

  return sub_10076FCAC();
}

unint64_t sub_1007179B4()
{
  result = qword_100966BF8;
  if (!qword_100966BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966BF8);
  }

  return result;
}

uint64_t sub_100717A08()
{
  v1 = sub_10075DB7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100717B20(uint64_t a1)
{
  v3 = *(sub_10075DB7C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100717314(a1, v10, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_100717BE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100717C2C()
{
  v0 = sub_10076C15C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_10075F5FC();
  (*(v1 + 104))(v3, enum case for FlowPage.arcadeWelcome(_:), v0);
  sub_1007191E8(&qword_10094A8D0, &type metadata accessor for FlowPage);
  sub_10077018C();
  sub_10077018C();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10077167C();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_100717E08(uint64_t a1, void *a2)
{
  v4 = sub_100765F6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100766EDC();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100016F40(0, &qword_1009453B0);
  v14 = sub_1007701BC();

  if (v14 >> 62)
  {
    v15 = sub_10077158C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_1007191E8(&qword_10094CE48, &type metadata accessor for FlowPresentationContext);
    v16 = sub_10076FF1C();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints();
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_100718104(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v95 = a4;
  v92 = sub_10076F50C();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v93 = &v89 - v9;
  v10 = sub_100766EDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v89 - v14;
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  v18 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F5BC();
  sub_10075F5AC();
  v21 = [a3 traitCollection];
  v94 = a1;
  sub_1001489F0(v17);

  v22 = sub_100376418(a3);
  if (!v22)
  {
    sub_1007179B4();
    swift_allocError();
    *v42 = 0;
    sub_10076FCAC();
    (*(v11 + 8))(v17, v10);
    sub_10005DB58(v20, type metadata accessor for FlowPresentationHints);
  }

  v99 = v17;
  v96 = v20;
  v101 = v11;
  v98 = v10;
  v23 = v22;
  v24 = [v23 traitCollection];
  v25 = sub_10075F57C();
  v27 = v26;
  v28 = v93;
  sub_10075F59C();
  *&v102[0] = v23;
  sub_100016F40(0, &qword_100944C68);
  v29 = v23;
  sub_10000A5D4(&qword_100944C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v105 = 0;
    v103 = 0u;
    v104 = 0u;
  }

  v30 = sub_10048B0C0(v94, v24, v25, v27, v28, &v103, v95, 1);

  sub_10000CFBC(v28, &unk_100958150);
  sub_10000CFBC(&v103, &unk_10094A8A0);
  if (!v30)
  {

    v44 = v91;
    v45 = v90;
    v46 = v92;
    (*(v91 + 104))(v90, enum case for ActionOutcome.unsupported(_:), v92);
    sub_10076FCBC();

    (*(v44 + 8))(v45, v46);
    (*(v101 + 8))(v99, v98);
    return sub_10005DB58(v96, type metadata accessor for FlowPresentationHints);
  }

  v31 = [v29 presentingViewController];

  v32 = v98;
  v33 = v101;
  v34 = v96;
  v35 = v99;
  if (!v31)
  {
LABEL_24:
    v54 = sub_100717E08(v34, v29);
    v55 = *(v33 + 104);
    v55(v97, enum case for FlowPresentationContext.push(_:), v32);
    sub_1007191E8(&qword_10094A530, &type metadata accessor for FlowPresentationContext);
    sub_10077018C();
    sub_10077018C();
    LODWORD(v95) = v54;
    if (v103 == v102[0])
    {
      v56 = 1;
    }

    else
    {
      v56 = sub_10077167C();
    }

    v57 = v33 + 8;
    v24 = *(v33 + 8);
    v33 = v98;
    v101 = v57;
    (v24)(v97, v98);

    if (v56)
    {
      [v30 setModalPresentationCapturesStatusBarAppearance:1];
      v103 = xmmword_10094FFD8;
      v104 = xmmword_10094FFE8;
      v105 = xmmword_10094FFF8;
      v106 = xmmword_100950008;
      v107 = xmmword_100950018;
      v58 = qword_100950028;
      v108 = qword_100950028;
      v59 = BYTE8(xmmword_10094FFF8);
      if (BYTE8(xmmword_10094FFF8) != 255)
      {
        v60 = v103;
        v62 = v104;
        v61 = *&v105;
        v63 = v106;
        v64 = v107;
        v65 = v103;
        v66 = [v30 popoverPresentationController];
        if (v66)
        {
          v67 = v66;
          if (v59)
          {
            sub_100016E2C(&v103, v102, &unk_1009505F0);
            v68 = v67;
            [v68 setSourceView:v60];
            [v68 setSourceRect:{*(&v60 + 1), v62, v61}];
            v33 = v98;
            sub_10000CFBC(&v103, &unk_1009505F0);
          }

          else
          {
            [v66 setBarButtonItem:v60];
          }

          [v67 setPopoverLayoutMargins:{v63, v64}];
          [v67 setPermittedArrowDirections:v58];
        }

        else
        {
          if (qword_1009412E8 != -1)
          {
            swift_once();
          }

          v85 = sub_10076FD4C();
          sub_10000A61C(v85, qword_1009A2600);
          sub_10000A5D4(&unk_100942A60);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F27C();
          sub_10076FBFC();
        }

        sub_10000CFBC(&v103, &unk_1009505F0);
      }

      [v29 pushViewController:v30 animated:v95 & 1];
      goto LABEL_58;
    }

    v69 = v89;
    v55(v89, enum case for FlowPresentationContext.replace(_:), v33);
    sub_10077018C();
    sub_10077018C();
    if (v103 == v102[0])
    {
      (v24)(v69, v33);
    }

    else
    {
      v70 = sub_10077167C();
      (v24)(v69, v33);

      if ((v70 & 1) == 0)
      {
LABEL_58:
        v86 = v91;
        v87 = v90;
        v88 = v92;
        (*(v91 + 104))(v90, enum case for ActionOutcome.performed(_:), v92);
        sub_10076FCBC();

        (*(v86 + 8))(v87, v88);
        (v24)(v99, v33);
        return sub_10005DB58(v96, type metadata accessor for FlowPresentationHints);
      }
    }

    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (!v71)
    {
      v78 = [v29 viewControllers];
      sub_100016F40(0, &qword_1009453B0);
      v35 = sub_1007701BC();

      v36 = (v35 >> 62);
      if (!(v35 >> 62))
      {
        if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_45:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v36 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v35 = sub_1004BE250(v35);
        }

        v80 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          v81 = v80 - 1;
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 8 * v81 + 0x20);
          *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) = v81;
          *&v103 = v35;
          v82 = [v36 tabBarItem];
          [v30 setTabBarItem:v82];

          v83 = v30;
          sub_10077019C();
          if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_50:
            sub_10077025C();
            isa = sub_1007701AC().super.isa;

            [v29 setViewControllers:isa animated:v95 & 1];

            goto LABEL_58;
          }

LABEL_68:
          sub_10077021C();
          v33 = v98;
          goto LABEL_50;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_65:
      if (!sub_10077158C())
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    v34 = v71;
    v35 = v30;
    v72 = [v29 viewControllers];
    v36 = sub_100016F40(0, &qword_1009453B0);
    v33 = sub_1007701BC();

    v32 = v33 >> 62;
    if (!(v33 >> 62))
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_38:
        v73 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v32 || (v73 & 1) == 0)
        {
          v33 = sub_1004BE250(v33);
        }

        v74 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v74)
        {
          v75 = v74 - 1;
          v76 = *((v33 & 0xFFFFFFFFFFFFFF8) + 8 * v75 + 0x20);
          *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) = v75;

          v77 = sub_1007701AC().super.isa;

          [v29 setViewControllers:v77];

          [v29 presentViewController:v34 animated:0 completion:0];
          v33 = v98;
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    if (sub_10077158C())
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v36 = [v29 viewControllers];
  sub_100016F40(0, &qword_1009453B0);
  v37 = sub_1007701BC();

  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  if (!sub_10077158C())
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_8:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = sub_10077149C();
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_62;
    }

    v38 = *(v37 + 32);
  }

  v39 = v38;

  if ((sub_1003BE8F8(v39) & 1) == 0)
  {
    goto LABEL_14;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  v41 = v29;
  if (sub_1003BE8F8(v30))
  {

LABEL_14:

    goto LABEL_24;
  }

  v47 = [v30 navigationItem];
  v48 = [v47 rightBarButtonItems];
  if (v48)
  {
    v49 = v48;
    sub_100016F40(0, &qword_100958FF0);
    v50 = sub_1007701BC();
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  *&v103 = v50;
  sub_100016F40(0, &qword_100958FF0);
  sub_100016F40(0, &qword_1009641D0);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1001D1F90;
  *(v51 + 24) = v40;

  v109.value.super.super.isa = sub_100770F1C();
  v109.is_nil = 0;
  v52.super.super.isa = sub_10077054C(UIBarButtonSystemItemClose, v109, v110).super.super.isa;
  if (!(v50 >> 62) || (result = sub_10077158C(), (result & 0x8000000000000000) == 0))
  {
    sub_10061BDB0(0, 0, v52.super.super.isa);
    v53 = sub_1007701AC().super.isa;

    [v47 setRightBarButtonItems:v53];

    v32 = v98;
    v33 = v101;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100719178()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1007191B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1007191E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100719244()
{
  result = qword_100966C00;
  if (!qword_100966C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966C00);
  }

  return result;
}

uint64_t sub_100719298(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(&v30 + 1) = sub_100016F40(0, &qword_1009441F0);
  *&v31 = &protocol witness table for UIView;
  *&v29 = a1;
  v8 = (a3 & 1) == 0;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = &type metadata for CGFloat;
  }

  if (v8)
  {
    v10 = &protocol witness table for CGFloat;
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    a2 = 0;
  }

  sub_100012498(&v29, v35);
  v36 = a2;
  v37 = 0;
  v38 = 0;
  v39 = v9;
  v40 = v10;
  v11 = OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v12 = *&v4[v11];
  v13 = a1;

  v14 = sub_10071969C(v13, v12);

  if (v14)
  {
    v15 = swift_beginAccess();
    __chkstk_darwin(v15);
    result = sub_10061B750(&v4[v11], sub_100719BFC);
    v17 = *(*&v4[v11] + 16);
    if (v17 < result)
    {
      __break(1u);
      return result;
    }

    sub_10061BA08(result, v17);
    swift_endAccess();
    v18 = &selRef_bringSubviewToFront_;
  }

  else
  {
    v18 = &selRef_addSubview_;
  }

  [v4 *v18];
  *&v29 = v13;
  sub_10062CB18(v35, &v29 + 8);
  swift_beginAccess();
  v19 = *&v4[v11];
  v20 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v11] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_10049DFD0(0, v19[2] + 1, 1, v19);
    *&v4[v11] = v19;
  }

  v23 = v19[2];
  v22 = v19[3];
  if (v23 >= v22 >> 1)
  {
    v19 = sub_10049DFD0((v22 > 1), v23 + 1, 1, v19);
  }

  v19[2] = v23 + 1;
  v24 = &v19[11 * v23];
  v25 = v30;
  *(v24 + 2) = v29;
  *(v24 + 3) = v25;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  v24[14] = v34;
  *(v24 + 5) = v27;
  *(v24 + 6) = v28;
  *(v24 + 4) = v26;
  *&v4[v11] = v19;
  swift_endAccess();
  [v4 setNeedsLayout];
  return sub_10062CBC0(v35);
}

void *sub_10071958C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1004BBDD0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10061BB3C(v4, &v12);
      sub_10062CB18(&v13, v14);
      sub_10061BBAC(&v12);
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004BBDD0((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[10 * v6];
      v7[2] = v14[0];
      v8 = v14[1];
      v9 = v14[2];
      v10 = v14[4];
      v7[5] = v14[3];
      v7[6] = v10;
      v7[3] = v8;
      v7[4] = v9;
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL sub_10071969C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 32;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 88;
    sub_100016F40(0, &qword_10094D040);
    v5 = sub_100770EEC();
    v2 = v4;
  }

  while ((v5 & 1) == 0);
  return v3 != 0;
}

uint64_t sub_10071972C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  sub_1005652F4(v1 + OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_layoutMetrics, v16);
  swift_beginAccess();

  v9 = sub_10071958C(v8);

  v17 = v9;
  sub_10076422C();
  sub_10062C63C(v1, v10, v11, v12, v13);
  (*(v4 + 8))(v7, v3);
  return sub_100719C50(v16);
}

double sub_1007198D8(uint64_t a1, double a2)
{
  v5 = sub_10076543C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1005652F4(v2 + OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_layoutMetrics, v15);
  swift_beginAccess();

  v10 = sub_10071958C(v9);

  v16 = v10;
  if (v10[2])
  {
    sub_10062BEA4(a1, v8);
    sub_10076537C();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    if (v12 > a2)
    {
      a2 = v12;
    }
  }

  else
  {
    a2 = JUMeasurementsZero[0];
  }

  sub_100719C50(v15);
  return a2;
}

void sub_100719CA4()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_baseGradientView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_baseGradientView] removeFromSuperview];
  v4 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientMaskView] removeFromSuperview];
  v5 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_bottomRightOverlayView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_bottomRightOverlayView] removeFromSuperview];
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v2 setBackgroundColor:v7];

  v8 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors;
  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors];
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 <= 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_42;
      }

      v6 = type metadata accessor for GradientView();
      v22 = [objc_allocWithZone(v6) init];
      v23 = *&v2[v3];
      *&v2[v3] = v22;
      v24 = v22;

      v5 = sub_10000A5D4(&unk_100942870);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100785D70;
      v1 = *&v2[v8];
      if ((v1 & 0xC000000000000001) != 0)
      {

        v69 = sub_10077149C();

        v26 = v69;
        v1 = *&v2[v8];
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v26 = *(v1 + 32);
      }

      *(v25 + 32) = v26;
      if ((v1 & 0xC000000000000001) != 0)
      {

        v71 = sub_10077149C();

        v27 = v71;
      }

      else
      {
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v27 = *(v1 + 40);
      }

      *(v25 + 40) = v27;
      *&v24[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v25;

      sub_1001C05B8();

      v28 = *&v2[v3];
      v1 = &off_100911000;
      v29 = [v28 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

      v30 = *&v2[v3];
      v31 = [v30 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100785D70;
      v32 = *&v2[v8];
      if ((v32 & 0xC000000000000001) != 0)
      {
        goto LABEL_56;
      }

      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v33 = *(v32 + 48);
LABEL_28:
        *(v5 + 32) = v33;
        if ((v32 & 0xC000000000000001) != 0)
        {
LABEL_61:

          v74 = sub_10077149C();

          v34 = v74;
          goto LABEL_31;
        }

        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v34 = *(v32 + 56);
LABEL_31:
          *(v5 + 40) = v34;
          v35 = [objc_allocWithZone(v6) init];
          *&v35[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v5;

          sub_1001C05B8();
          sub_1001C0414(&off_1008825B8);
          v36 = v35;
          v37 = [v36 *(v1 + 2192)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

          v38 = [v36 *(v1 + 2192)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

          v39 = [v36 *(v1 + 2192)];
          [v39 setMask:0];

          v40 = *&v2[v4];
          *&v2[v4] = v36;

          sub_10071A9E4();
          [v2 addSubview:*&v2[v3]];
          [v2 addSubview:{*&v2[v4], v75}];
          goto LABEL_42;
        }

LABEL_64:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v77 = type metadata accessor for GradientView();
    v41 = [objc_allocWithZone(v77) init];
    v42 = *&v2[v3];
    *&v2[v3] = v41;
    v43 = v41;

    sub_10000A5D4(&unk_100942870);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100785D70;
    v44 = *&v2[v8];
    if ((v44 & 0xC000000000000001) != 0)
    {

      v75 = sub_10077149C();

      v45 = v75;
      v44 = *&v2[v8];
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_55:
        __break(1u);
LABEL_56:

        v73 = sub_10077149C();

        v33 = v73;
        v32 = *&v2[v8];
        goto LABEL_28;
      }

      v45 = *(v44 + 40);
    }

    *(v1 + 32) = v45;
    if ((v44 & 0xC000000000000001) != 0)
    {

      v72 = sub_10077149C();

      v46 = v72;
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v46 = *(v44 + 48);
    }

    *(v1 + 40) = v46;
    *&v43[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v1;

    sub_1001C05B8();

    v47 = *&v2[v3];
    v48 = [v47 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

    v49 = *&v2[v3];
    v50 = [v49 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

    v51 = [objc_allocWithZone(v77) init];
    v52 = *&v2[v4];
    *&v2[v4] = v51;
    v53 = v51;

    v54 = *&v2[v8];
    if ((v54 & 0xC000000000000001) != 0)
    {

      v56 = sub_10077149C();

      v57 = &off_100911000;
      v55 = &selRef_initWithTabBarSystemItem_tag_;
    }

    else
    {
      v55 = &selRef_initWithTabBarSystemItem_tag_;
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v56 = *(v54 + 32);
      v57 = &off_100911000;
    }

    [v53 v55[196]];

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100785D70;
    *(v58 + 32) = [v6 clearColor];
    v59 = [v6 blackColor];
    v60 = [v59 colorWithAlphaComponent:0.2];

    *(v58 + 40) = v60;
    v61 = [objc_allocWithZone(v77) init];
    *&v61[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v58;

    sub_1001C05B8();
    sub_1001C0414(&off_100882588);
    v62 = v61;
    v63 = [v62 v57[274]];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

    v64 = [v62 v57[274]];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

    v65 = [v62 v57[274]];
    [v65 setMask:0];

    v66 = *&v2[v5];
    *&v2[v5] = v62;

    v67 = *&v2[v4];
    [v67 addSubview:v62];

    sub_10071A9E4();
    [v2 addSubview:*&v2[v3]];
    [v2 addSubview:{*&v2[v4], v76}];
    goto LABEL_42;
  }

  v10 = sub_10077158C();
  if (v10 > 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v10 == 1)
  {
    v20 = *&v2[v8];
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = sub_10077149C();
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v21 = *(v20 + 32);
    }

    [v2 setBackgroundColor:v21];

    goto LABEL_42;
  }

  if (v10 == 2)
  {
    v11 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
    v12 = *&v2[v3];
    *&v2[v3] = v11;
    v13 = v11;

    sub_10000A5D4(&unk_100942870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100785D70;
    v5 = *&v2[v8];
    if ((v5 & 0xC000000000000001) != 0)
    {

      v68 = sub_10077149C();

      v14 = v68;
      v5 = *&v2[v8];
      goto LABEL_8;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v14 = *(v5 + 40);
LABEL_8:
      *(v6 + 32) = v14;
      if ((v5 & 0xC000000000000001) != 0)
      {

        v70 = sub_10077149C();

        v15 = v70;
        goto LABEL_11;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v5 + 32);
LABEL_11:
        *(v6 + 40) = v15;
        *&v13[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v6;

        sub_1001C05B8();

        v16 = *&v2[v3];
        v17 = [v16 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

        v18 = *&v2[v3];
        v19 = [v18 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

        [v2 addSubview:{*&v2[v3], v75}];
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_42:
  [v2 setNeedsLayout];

  [v2 setNeedsDisplay];
}

uint64_t sub_10071A900(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors) = a1;

  v5 = sub_1000CCE4C(v4, v3);

  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + v2);
    if (v7 >> 62)
    {
      result = sub_10077158C();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *((swift_isaMask & *v1) + 0xF0);

    return v8();
  }

  return result;
}

void sub_10071A9E4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors);
  if (v2 >> 62)
  {
    if (sub_10077158C() < 3)
    {
      return;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
    return;
  }

  sub_10000A5D4(&unk_100942870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100785D70;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 clearColor];
  *(v3 + 40) = [v4 whiteColor];
  v5 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v3;

  sub_1001C05B8();
  sub_1001C0414(&off_100882558);
  v6 = v5;
  v7 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

  v8 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.0, 1.0}];

  v9 = [v6 layer];
  [v9 setMask:0];

  v10 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientMaskView;
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientMaskView) = v6;

  v12 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientView) layer];
  v13 = [*(v1 + v10) layer];
  [v12 setMask:v13];
}

id sub_10071AC8C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_baseGradientView;
  v10 = type metadata accessor for GradientView();
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientView;
  *&v4[v11] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientMaskView;
  *&v4[v12] = [objc_allocWithZone(v10) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_bottomRightOverlayView;
  *&v4[v13] = [objc_allocWithZone(v10) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for MultiCornerGradientView();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setRasterizationScale:v18];
  return v14;
}

void sub_10071AE58()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MultiCornerGradientView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_baseGradientView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientView];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientMaskView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_bottomRightOverlayView];
  [v0 bounds];
  [v4 setFrame:?];
}

id sub_10071AFAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiCornerGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10071B080()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientView;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_secondaryGradientMaskView;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_bottomRightOverlayView;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  sub_10077156C();
  __break(1u);
}

double sub_10071B174(double a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v92) = a4;
  v7 = sub_10076443C();
  v90 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v89 - v11;
  v13 = sub_10075E93C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10071C268();
  v93 = v4;
  v91 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v20 = a1 - v18 - v19;
  [a3 minimumInteritemSpacing];
  v22 = (v20 - v21) * 0.5;
  sub_10076499C();
  if (swift_dynamicCastClass())
  {
    if (v17 & 1 | ((v92 & 1) == 0))
    {
      v23 = v93;
      if (*(v93 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        sub_10076763C();

        sub_10000A5D4(&unk_10095CDA0);
        sub_10076289C();
        if (swift_dynamicCast())
        {
          v24 = v94;
          v25 = type metadata accessor for AdvertSearchResultCollectionViewCell();
          v26 = *(v23 + v91);
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          v28 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_100461BC4(v24, v26, v28, v25, ObjectType);
          v22 = v29;

LABEL_8:
          swift_unknownObjectRelease_n();
          return v22;
        }
      }
    }

    else
    {
      v39 = v93;
      if (*(v93 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        sub_10076763C();

        sub_10000A5D4(&unk_10095CDA0);
        sub_10076289C();
        if (swift_dynamicCast())
        {
          v40 = v94;
          v41 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v42 = *(v39 + v91);
          v43 = swift_getObjectType();
          swift_unknownObjectRetain();
          v44 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_10029A6AC(v40, v42, v44, v41, v43);
          v22 = v45;

          swift_unknownObjectRelease_n();
          return v22;
        }
      }
    }

    return 0.0;
  }

  v30 = v9;
  v31 = v14;
  v32 = v90;
  sub_10075ECBC();
  if (swift_dynamicCastClass())
  {
    v33 = type metadata accessor for ContentSearchResultCollectionViewCell();
    v34 = sub_10075ECAC();
    v35 = *(v93 + v91);
    v36 = swift_getObjectType();
    swift_unknownObjectRetain();
    v37 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    sub_10029A6AC(v34, v35, v37, v33, v36);
    v22 = v38;

    goto LABEL_8;
  }

  sub_100763F3C();
  if (swift_dynamicCastClass())
  {
    sub_100763F2C();
    v46 = sub_10076BB6C();
    v48 = v47;
    v49 = sub_10076BBEC();
    v51 = v50;
    v52 = sub_10076BBDC();
    v22 = sub_10014D8F4(v46, v48, v49, v51, v52, [*(v93 + v91) snapshotPageTraitEnvironment], v22);
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  sub_100765F5C();
  v53 = swift_dynamicCastClass();
  if (v53)
  {
    v22 = sub_1001444EC(v22, v53, [*(v93 + v91) snapshotPageTraitEnvironment]);
    swift_unknownObjectRelease();
    return v22;
  }

  sub_10075E7FC();
  if (!swift_dynamicCastClass())
  {
    sub_10076947C();
    if (!swift_dynamicCastClass())
    {
      sub_10075EEBC();
      v76 = swift_dynamicCastClass();
      if (v76)
      {
        v77 = v76;
        v78 = v93;
        if (sub_100766C2C())
        {
          v79 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v80 = [*(v78 + v91) snapshotPageTraitEnvironment];
          v81 = swift_getObjectType();
          v82 = *(v78 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          v22 = sub_1003C5128(v77, v80, v82, v22, v79, v81);
        }

        else
        {
          v83 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v84 = sub_10075EEAC();
          v85 = *(v78 + v91);
          v86 = swift_getObjectType();
          swift_unknownObjectRetain();
          v87 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_10029A6AC(v84, v85, v87, v83, v86);
          v22 = v88;
        }

        goto LABEL_8;
      }

      return 0.0;
    }

    v62 = type metadata accessor for SearchLockupListCollectionViewCell();
    v63 = [*(v93 + v91) snapshotPageTraitEnvironment];
    swift_getObjectType();
    LODWORD(v92) = sub_10038C370(v63);
    v93 = v64;
    v65 = sub_10076946C();
    v67 = v66;
    v68 = sub_10076945C();
    v70 = v69;
    if (sub_10076942C())
    {
      v71 = sub_10076B8EC();
      v73 = v72;
    }

    else
    {
      v71 = 0;
      v73 = 0;
    }

    v22 = sub_1002C4688(v65, v67, v68, v70, v71, v73, v92 & 1, v93, v63, v62);
    swift_unknownObjectRelease();

LABEL_15:

    return v22;
  }

  v54 = sub_10075E7EC();
  v92 = [*(v93 + v91) snapshotPageTraitEnvironment];
  v93 = v54;
  sub_10075E66C();
  v55 = sub_10076BB6C();
  v57 = v56;

  if (v57)
  {
    v95._object = 0x80000001007E22A0;
    v95._countAndFlagsBits = 0xD000000000000035;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    v91 = sub_1007622EC(v95, v96);
    v89 = v55;
    sub_10000A5D4(&qword_100966CF0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100783DD0;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_1000A9040();
    *(v58 + 32) = v89;
    *(v58 + 40) = v57;
    sub_10076FFCC();
  }

  sub_10076BB6C();

  sub_100770ACC();
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v59 = sub_10000A61C(v13, qword_1009A09A0);
  (*(v31 + 16))(v16, v59, v13);
  v60 = [v92 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v61 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v61 = qword_100944CA0;
  }

  v74 = sub_10000A61C(v7, v61);
  (*(v32 + 16))(v30, v74, v7);

  (*(v32 + 32))(v12, v30, v7);
  sub_1007643EC();
  sub_10076441C();
  sub_10075E92C();
  sub_10075E90C();

  swift_unknownObjectRelease();
  (*(v32 + 8))(v12, v7);
  (*(v31 + 8))(v16, v13);
  return v22;
}

void sub_10071BE40(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075E0AC();
  v34 = a2;
  sub_10071C58C(v9, a2);
  v10 = sub_10071C7BC();
  v11 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
  swift_beginAccess();
  if (!*(*(v2 + v11) + 16) || (sub_10060FF40(v10), (v12 & 1) == 0))
  {
    v32 = v11;
    sub_10071C86C();
    v15 = 0.0;
    v16 = 0.0;
    if (v13 == v14)
    {
LABEL_15:
      v29 = sub_10071C7BC();
      v30 = v32;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v3 + v30);
      *(v3 + v30) = 0x8000000000000000;
      sub_10024B540(v29, isUniquelyReferenced_nonNull_native, v15, v16);
      *(v3 + v30) = v35;
      swift_endAccess();
    }

    else
    {
      v17 = v13;
      v18 = v14;
      if (v14 >= v13)
      {
        v33 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
        v19 = (v6 + 8);
        v20 = 0.0;
        while (v17 < v18)
        {
          sub_10075E0AC();
          sub_10075E08C();
          v21 = sub_100766C7C();
          if (v21)
          {
            v22 = v21;
            v23 = sub_10075E09C() == 0;
            [*(v3 + v33) pageContainerSize];
            v25 = sub_10071B174(v24, v22, v34, v23);
            v27 = v26;
            LOBYTE(v23) = v28;

            (*v19)(v8, v5);
            if (v23)
            {
              v15 = v25;
              v16 = v27;
              goto LABEL_15;
            }

            if (v20 < v27)
            {
              v15 = v25;
              v16 = v27;
              v20 = v27;
            }
          }

          else
          {
            (*v19)(v8, v5);
          }

          if (v18 == ++v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_10071C268()
{
  v1 = sub_1007673CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075ECBC();
  if (swift_dynamicCastClass())
  {
    sub_10075ECAC();
  }

  else
  {
    sub_10075EEBC();
    if (swift_dynamicCastClass())
    {
      if (sub_100766C2C())
      {
        return 0;
      }

      sub_10075EEAC();
    }

    else
    {
      sub_10076499C();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {
        return 0;
      }

      sub_10076763C();

      sub_10000A5D4(&unk_10095CDA0);
      sub_10076289C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_10076285C();
  v5 = sub_1007673BC();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_10076280C();
  if (v6 >> 62)
  {
    v9 = sub_10077158C();

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
LABEL_6:

      return 1;
    }
  }

  v10 = sub_10076288C();
  v11 = v10;
  if (v10 >> 62)
  {
    result = sub_10077158C();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_18:
  if ((v11 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v12 = sub_10076C41C();

  if (v12 >> 62)
  {
    v13 = sub_10077158C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 != 0;
}

void sub_10071C58C(uint64_t a1, void *a2)
{
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) == 2)
  {
    sub_10075E08C();
    v9 = sub_100766C7C();
    if (v9)
    {
      v10 = v9;
      [*(v2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageContainerSize];
      v12 = sub_10071B174(v11, v10, a2, 1);
      v15 = v14;
      if (v14)
      {
        v16 = v12;
        v17 = v13;
        v18 = sub_10071C7BC();
        v19 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v2 + v19);
        *(v2 + v19) = 0x8000000000000000;
        sub_10024B540(v18, isUniquelyReferenced_nonNull_native, v16, v17);
        *(v2 + v19) = v21;
        swift_endAccess();

        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*(v5 + 8))(v7, v4, v12);
      }

      *(v2 + v8) = v15 & 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_10071C7BC()
{
  result = sub_10075E09C();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v3 = v2 != 2 && (v2 & 1) != 0;
  v4 = result + v3;
  if (__OFADD__(result, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
    v6 = [v5 horizontalSizeClass];

    v7 = 1;
    if (v6 != 1)
    {
      v7 = 2;
    }

    return v4 / v7;
  }

  return result;
}

void sub_10071C86C()
{
  v1 = sub_10071C7BC();
  v2 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
  v3 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v1 * v5;
  if ((v1 * v5) >> 64 != (v1 * v5) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v8 = v7 != 2 && (v7 & 1) != 0;
  v9 = v6 - v8;
  if (__OFSUB__(v6, v8))
  {
    goto LABEL_16;
  }

  v10 = [*(v0 + v2) traitCollection];
  v11 = [v10 horizontalSizeClass];

  v12 = 1;
  if (v11 != 1)
  {
    v12 = 2;
  }

  if (__OFADD__(v9, v12))
  {
    goto LABEL_17;
  }

  if (v9 + v12 < v9)
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_10071C988()
{
  result = sub_100766C7C();
  if (result)
  {
    sub_10076499C();
    if (swift_dynamicCastClass())
    {

      return 3;
    }

    else
    {
      sub_10076947C();
      if (swift_dynamicCastClass() && (sub_100766C1C() & 1) == 0)
      {
        v2 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) "snapshotPageTraitEnvironment")];
        swift_unknownObjectRelease();
        v3 = sub_1007706FC();

        if (v3)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

double sub_10071CAFC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_10076443C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v99 - v13;
  v15 = sub_10075E93C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075ECBC();
  v106 = a1;
  if (swift_dynamicCastClass())
  {
    v19 = type metadata accessor for ContentSearchResultCollectionViewCell();
    sub_10075ECAC();
    v20 = sub_10067B958(a2 & 1);

    v21 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits);
    ObjectType = swift_getObjectType();
    [swift_unknownObjectRetain() pageMarginInsets];
    v23 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    v24 = v20;
    v25 = v21;
    v26 = v23;
    v27 = v19;
    v28 = ObjectType;
LABEL_3:
    sub_10029A6AC(v24, v25, v26, v27, v28);
    a3 = v29;

LABEL_4:
    swift_unknownObjectRelease_n();
    return a3;
  }

  v100 = v11;
  v101 = v18;
  v104 = v9;
  v105 = v4;
  v102 = v14;
  v103 = v16;
  sub_100763F3C();
  if (swift_dynamicCastClass())
  {
    sub_100763F2C();
    v30 = sub_10076BB6C();
    v32 = v31;
    v33 = sub_10076BBEC();
    v35 = v34;
    v36 = sub_10076BBDC();
    v37 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v38 = v105;
    v39 = [*(v105 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v38 + v37) pageMarginInsets];
    a3 = sub_10014D8F4(v30, v32, v33, v35, v36, v39, a3);
    swift_unknownObjectRelease();

    return a3;
  }

  sub_10076499C();
  if (swift_dynamicCastClass())
  {
    v40 = v105;
    if (*(v105 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      sub_10076763C();

      sub_10000A5D4(&unk_10095CDA0);
      sub_10076289C();
      if (swift_dynamicCast())
      {
        v41 = type metadata accessor for AdvertSearchResultCollectionViewCell();
        v42 = sub_10067B958(a2 & 1);
        v43 = *(v40 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits);
        v44 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v45 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        sub_100461BC4(v42, v43, v45, v41, v44);
        a3 = v46;

        goto LABEL_4;
      }
    }

    return 0.0;
  }

  sub_100765F5C();
  v47 = swift_dynamicCastClass();
  if (v47)
  {
    v48 = v47;
    v49 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v50 = v105;
    v51 = [*(v105 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v50 + v49) pageMarginInsets];
    a3 = sub_1001444EC(a3, v48, v51);
    swift_unknownObjectRelease();
    return a3;
  }

  sub_10075E7FC();
  if (swift_dynamicCastClass())
  {
    sub_10075E7EC();
    v52 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v53 = v105;
    v54 = [*(v105 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v53 + v52) pageMarginInsets];
    sub_10075E66C();
    v55 = sub_10076BB6C();
    v57 = v56;

    if (v57)
    {
      v107._object = 0x80000001007E22A0;
      v107._countAndFlagsBits = 0xD000000000000035;
      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      sub_1007622EC(v107, v108);
      sub_10000A5D4(&qword_100966CF0);
      v58 = v54;
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100783DD0;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_1000A9040();
      *(v59 + 32) = v55;
      *(v59 + 40) = v57;
      v54 = v58;
      sub_10076FFCC();
    }

    sub_10076BB6C();

    sub_100770ACC();
    v60 = v8;
    v62 = v100;
    v61 = v101;
    if (qword_100940928 != -1)
    {
      swift_once();
    }

    v63 = v15;
    v64 = sub_10000A61C(v15, qword_1009A09A0);
    v65 = v103;
    (*(v103 + 16))(v61, v64, v15);
    v66 = [v54 traitCollection];
    v67 = sub_10077071C();
    v68 = v104;
    if (v67)
    {
      v69 = v102;
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v70 = qword_100944C88;
    }

    else
    {
      v69 = v102;
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v70 = qword_100944CA0;
    }

    v85 = sub_10000A61C(v60, v70);
    (*(v68 + 16))(v62, v85, v60);

    (*(v68 + 32))(v69, v62, v60);
    sub_1007643EC();
    sub_10076441C();
    sub_10075E92C();
    sub_10075E90C();

    swift_unknownObjectRelease();
    (*(v68 + 8))(v69, v60);
    (*(v65 + 8))(v61, v63);
  }

  else
  {
    sub_10076947C();
    if (!swift_dynamicCastClass())
    {
      sub_10075EEBC();
      v86 = swift_dynamicCastClass();
      if (v86)
      {
        v87 = v86;
        v88 = v105;
        if (sub_100766C2C())
        {
          v89 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v90 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v91 = [*(v88 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
          v92 = swift_getObjectType();
          [*(v88 + v90) pageMarginInsets];
          v93 = *(v88 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          a3 = sub_1003C5128(v87, v91, v93, a3, v89, v92);
          goto LABEL_4;
        }

        v95 = type metadata accessor for ContentSearchResultCollectionViewCell();
        sub_10075EEAC();
        v96 = sub_10067B958(a2 & 1);

        v97 = *(v88 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits);
        v98 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v23 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        v24 = v96;
        v25 = v97;
        v26 = v23;
        v27 = v95;
        v28 = v98;
        goto LABEL_3;
      }

      return 0.0;
    }

    v71 = type metadata accessor for SearchLockupListCollectionViewCell();
    v72 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v73 = v105;
    v74 = [*(v105 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v73 + v72) pageMarginInsets];
    swift_getObjectType();
    LODWORD(v105) = sub_10038C370(v74);
    v106 = v75;
    v76 = sub_10076946C();
    v78 = v77;
    v79 = sub_10076945C();
    v81 = v80;
    if (sub_10076942C())
    {
      v82 = sub_10076B8EC();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    a3 = sub_1002C4688(v76, v78, v79, v81, v82, v84, v105 & 1, v106, v74, v71);
    swift_unknownObjectRelease();
  }

  return a3;
}

double sub_10071D6B8(void *a1)
{
  v2 = v1;
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 2)
  {
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    sub_10000A61C(v11, qword_1009A2380);
    v12 = [a1 traitCollection];
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007841E0;
    *(v13 + 32) = v12;
    v14 = v12;
    v15 = sub_10076DEEC();
    sub_10076D3EC();
    v17 = v16;

    v18 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    [*(v2 + v18) pageMarginInsets];
  }

  else
  {
    if (qword_10093F970 != -1)
    {
      swift_once();
    }

    v19 = sub_10076D9AC();
    sub_10000A61C(v19, qword_10099D6D8);
    v20 = [a1 traitCollection];
    sub_10076D17C();
    sub_10076D97C();
    v17 = v21;

    (*(v5 + 8))(v8, v4);
  }

  return v17;
}

double sub_10071D968(void *a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = a1;
    v10 = sub_100766C7C();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
      v13 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v14 = [v13 horizontalSizeClass];

      if (v14 == 1)
      {
        v15 = [*(v2 + v12) traitCollection];
        v16 = sub_100766C6C();

        [*(v3 + v12) pageContainerSize];
        v18 = sub_10071CAFC(v11, v16 & 1, v17);
      }

      else
      {
        sub_10071BE40(a2, v8);
      }

      v7 = v18;
    }

    else
    {
    }
  }

  return v7;
}

unint64_t sub_10071DAD8()
{
  sub_10000A5D4(&unk_100947120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  sub_10076FF9C();
  sub_10077140C();
  *(inited + 96) = &type metadata for UInt32;
  *(inited + 72) = 0;
  sub_10076FF9C();
  sub_10077140C();
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = 0;
  sub_10076FF9C();
  sub_10077140C();
  *(inited + 240) = &type metadata for UInt32;
  *(inited + 216) = 0;
  v1 = sub_1000FCED4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B20);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_10071DC1C()
{
  sub_100768EFC();
  v0 = sub_10071DDD4();
  v1 = sub_1007703FC();
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
LABEL_6:
    sub_1002517E4(v2);
  }

  v3 = v1;
  v19 = _swiftEmptyArrayStorage;
  sub_1004BBC68(0, v1 & ~(v1 >> 63), 0);
  v2 = _swiftEmptyArrayStorage;
  result = sub_1007703DC();
  if ((v3 & 0x8000000000000000) == 0)
  {
    do
    {
      v5 = sub_10077042C();

      v5(v18, 0);
      v6 = sub_10076324C();
      v16 = v7;
      v17 = v6;
      v8 = sub_10076322C();
      v15 = v9;
      v10 = sub_10076320C();

      v19 = v2;
      v11 = v0;
      v13 = *(v2 + 2);
      v12 = *(v2 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_1004BBC68((v12 > 1), v13 + 1, 1);
        v2 = v19;
      }

      *(v2 + 2) = v13 + 1;
      v14 = &v2[40 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v16;
      *(v14 + 6) = v8;
      *(v14 + 7) = v15;
      v14[64] = v10 & 1;
      sub_10077041C();
      --v3;
      v0 = v11;
    }

    while (v3);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10071DDD4()
{
  result = qword_10094F450;
  if (!qword_10094F450)
  {
    sub_100768EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F450);
  }

  return result;
}

double sub_10071DE78(uint64_t a1)
{
  v191 = sub_10076892C();
  v171 = *(v191 - 8);
  __chkstk_darwin(v191);
  v172 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076894C();
  v176 = *(v4 - 8);
  __chkstk_darwin(v4);
  v175 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_10076771C();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v169 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v166 = &v152 - v8;
  v174 = sub_100762FFC();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v182 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v152 - v11;
  __chkstk_darwin(v12);
  v161 = &v152 - v13;
  v165 = sub_10077164C();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_10076C38C();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v162 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v188 = &v152 - v17;
  v196 = sub_1007608DC();
  v198 = *(v196 - 8);
  __chkstk_darwin(v196);
  v185 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v177 = (&v152 - v20);
  __chkstk_darwin(v21);
  v194 = &v152 - v22;
  v181 = sub_10076B5BC();
  v180 = *(v181 - 1);
  __chkstk_darwin(v181);
  v155 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v24);
  v192 = &v152 - v25;
  v26 = sub_10000A5D4(&unk_100946720);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v178 = &v152 - v28;
  v29 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v29);
  v31 = &v152 - v30;
  v32 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v32 - 8);
  v34 = &v152 - v33;
  v35 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v35 - 8);
  v159 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v179 = &v152 - v38;
  __chkstk_darwin(v39);
  v187 = &v152 - v40;
  sub_10076092C();
  sub_1007200B8(&qword_100947638, &type metadata accessor for ProductMedia);
  v41 = a1;
  sub_10076332C();
  v42 = v203;
  if (!v203)
  {
    return 0.0;
  }

  v158 = v24;
  v154 = v4;
  v184 = sub_10076091C();
  v195 = sub_1007608BC();
  v153 = sub_1007608CC();
  v160 = v43;
  v183 = v42;
  v156 = sub_1007608FC();
  v186 = v44;
  v197 = sub_100630CB4();
  swift_getKeyPath();
  v193 = v41;
  sub_10076338C();

  sub_10002AB4C(&v31[*(v29 + 48)], v34);
  v45 = v27;
  v46 = v26;
  if ((*(v27 + 48))(v34, 1, v26) == 1)
  {
    sub_10000CFBC(v31, &qword_1009499A0);
    sub_10000CFBC(v34, &qword_1009499A0);
    v47 = v180;
    v48 = v187;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v187, 1, 1, v181);
  }

  else
  {
    swift_getKeyPath();
    v48 = v187;
    sub_10076F49C();

    (*(v27 + 8))(v34, v26);
    v47 = v180;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v48, 0, 1, v181);
    sub_10000CFBC(v31, &qword_1009499A0);
  }

  swift_getKeyPath();
  v50 = v178;
  sub_10076338C();

  swift_getKeyPath();
  v51 = v179;
  sub_10076F49C();

  (*(v45 + 8))(v50, v46);
  v52 = v51;
  v157(v51, 0, 1, v49);
  v53 = *(v158 + 48);
  v54 = v192;
  sub_10002ABBC(v48, v192);
  sub_10002ABBC(v52, &v54[v53]);
  v55 = *(v47 + 48);
  v56 = v55(v54, 1, v49);
  v181 = (v195 >> 62);
  v57 = v48;
  v58 = v197;
  if (v56 != 1)
  {
    v64 = v159;
    sub_10002ABBC(v54, v159);
    v65 = v55(&v54[v53], 1, v49);
    v61 = v196;
    if (v65 != 1)
    {
      v74 = v155;
      (*(v47 + 32))(v155, &v54[v53], v49);
      sub_1007200B8(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
      LODWORD(v180) = sub_10076FF1C();
      v75 = *(v47 + 8);
      v75(v74, v49);
      sub_10000CFBC(v52, &unk_1009568A0);
      sub_10000CFBC(v187, &unk_1009568A0);
      v61 = v196;
      v75(v64, v49);
      sub_10000CFBC(v54, &unk_1009568A0);
      v62 = v195;
      v63 = v181;
      if (v180)
      {
        goto LABEL_22;
      }

LABEL_11:
      v66 = v184;
      if (v63)
      {
        v67 = sub_10077158C();
        if (v67)
        {
LABEL_13:
          v68 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          else if ((v62 & 0xC000000000000001) == 0)
          {
            if ((v68 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v68 < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v69 = *(v62 + 8 * v68 + 32);

              v203 = v66;
              if (v69)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_94;
          }

          v69 = sub_10077149C();
          v203 = v66;
          if (v69)
          {
LABEL_18:
            v199 = v69;
            sub_100760E9C();
            sub_1007200B8(&qword_100947630, &type metadata accessor for MediaPlatform);
            v70 = sub_10076FF1C();

            if (!v63)
            {
              v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v72 = v71 != 1;
              if (v70)
              {
LABEL_39:
                v76 = 0;
                goto LABEL_40;
              }

              goto LABEL_20;
            }

LABEL_38:
            v71 = sub_10077158C();
            v72 = v71 != 1;
            if (v70)
            {
              goto LABEL_39;
            }

LABEL_20:
            v73 = v72;
            v66 = v184;
            goto LABEL_29;
          }

LABEL_27:

          if (!v63)
          {
            v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v73 = v71 != 1;
LABEL_29:
            if (v63)
            {
              v77 = sub_10077158C();
            }

            else
            {
              v77 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v78 = v198;
            v79 = v177;
            if (v77)
            {
              v76 = v73;
              if ((v62 & 0xC000000000000001) != 0)
              {

                v80 = sub_10077149C();
                v203 = v66;
                if (v80)
                {
LABEL_35:
                  v199 = v80;
                  sub_100760E9C();
                  sub_1007200B8(&qword_100947630, &type metadata accessor for MediaPlatform);
                  v81 = sub_10076FF1C();

                  if (v81)
                  {
                    goto LABEL_41;
                  }

                  swift_unknownObjectRelease();

                  goto LABEL_85;
                }
              }

              else
              {
                if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_98;
                }

                v80 = *(v62 + 32);

                v203 = v66;
                if (v80)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {

              v203 = v66;
            }

            swift_unknownObjectRelease();

LABEL_85:

            return 0.0;
          }

          v70 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v67 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_13;
        }
      }

      v203 = v66;
      goto LABEL_27;
    }

    sub_10000CFBC(v52, &unk_1009568A0);
    v59 = v192;
    sub_10000CFBC(v187, &unk_1009568A0);
    (*(v47 + 8))(v64, v49);
    v62 = v195;
LABEL_10:
    sub_10000CFBC(v59, &qword_100942C28);
    v63 = v181;
    goto LABEL_11;
  }

  sub_10000CFBC(v52, &unk_1009568A0);
  v59 = v192;
  sub_10000CFBC(v57, &unk_1009568A0);
  v60 = v55(&v59[v53], 1, v49);
  v61 = v196;
  v62 = v195;
  if (v60 != 1)
  {
    goto LABEL_10;
  }

  sub_10000CFBC(v59, &unk_1009568A0);
  v63 = v181;
LABEL_22:
  v70 = 1;
  if ((v62 & 0x8000000000000000) != 0 || (v62 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v76 = 0;
  v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  v78 = v198;
  v79 = v177;
LABEL_41:
  sub_1007608EC();
  v82 = *(v78 + 104);
  v187 = (v78 + 104);
  v181 = v82;
  (v82)(v79, enum case for ProductMedia.DescriptionPlacement.top(_:), v61);
  v83 = sub_1007200B8(&qword_100966CF8, &type metadata accessor for ProductMedia.DescriptionPlacement);
  sub_10077018C();
  v180 = v83;
  sub_10077018C();
  v179 = v71;
  if (v203 == v199 && v204 == v200)
  {
    v84 = 1;
  }

  else
  {
    v84 = sub_10077167C();
  }

  v85 = *(v78 + 8);
  (v85)(v79, v61);

  v1 = 0.0;
  v79 = &qword_100940000;
  v198 = v78 + 8;
  v192 = v85;
  if ((v84 & 1) == 0)
  {
    goto LABEL_61;
  }

  v177 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v86 = v188;
  sub_10076338C();

  sub_10076C2FC();
  (*(v189 + 8))(v86, v190);
  LODWORD(v178) = v76;
  if (v76)
  {
    if (qword_100940760 != -1)
    {
      swift_once();
    }

    [qword_10095B420 size];
  }

  else if (v179 > 1)
  {
    sub_100760E9C();
    sub_10000A5D4(&unk_100942870);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1007841E0;
    *(v87 + 32) = v184;

    v63 = sub_100760E5C();

    v159 = v153;
    goto LABEL_53;
  }

  sub_100760E9C();
  v63 = sub_100760E5C();
  v159 = v156;
LABEL_53:
  v195 = v62;

  if (qword_100940768 != -1)
  {
LABEL_94:
    swift_once();
  }

  v88 = sub_10000A61C(v191, qword_10095B428);
  sub_10076891C();
  sub_10000CF78(&v203, v205);
  swift_getObjectType();
  v89 = v163;
  sub_1000FF02C();
  sub_10076D40C();
  v91 = v90;
  (*(v164 + 8))(v89, v165);
  sub_10050A104(v63, v91);
  sub_10000CD74(&v203);
  if (v63 >> 62)
  {
    sub_10077158C();
  }

  v92 = v197;
  sub_100762FEC();
  v93 = sub_100509DF4(v63, v92);

  v177 = v93;
  v94 = sub_1007688DC();
  if (qword_100940B88 != -1)
  {
    swift_once();
  }

  v95 = sub_10076D3DC();
  v96 = sub_10000A61C(v95, qword_1009A1090);
  v97 = *(v95 - 8);
  v98 = v166;
  (*(v97 + 16))(v166, v96, v95);
  (*(v97 + 56))(v98, 0, 1, v95);
  (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
  v99 = sub_1007626BC();
  v100 = objc_allocWithZone(v99);
  v101 = sub_1007626AC();
  [v101 setAttributedText:v94];
  v159 = v94;
  if (qword_100940760 != -1)
  {
    swift_once();
  }

  [qword_10095B420 size];
  v102 = sub_10076DDDC();
  swift_allocObject();
  v103 = sub_10076DDBC();
  (*(v171 + 16))(v172, v88, v191);
  v104 = v173;
  v105 = v161;
  v106 = v174;
  (*(v173 + 16))(v170, v161, v174);
  v205 = v99;
  v206 = &protocol witness table for UILabel;
  v203 = v101;
  v201 = v102;
  v202 = &protocol witness table for LayoutViewPlaceholder;
  v199 = v103;
  v107 = v101;

  v108 = v175;
  sub_10076893C();
  v58 = v197;
  [v197 pageMarginInsets];
  sub_100770ACC();
  sub_1007200B8(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout);
  v109 = v154;
  sub_10076D2AC();
  sub_100770AEC();
  v1 = v110;

  (*(v176 + 8))(v108, v109);
  (*(v104 + 8))(v105, v106);
  v61 = v196;
  v85 = v192;
  v76 = v178;
  v79 = &qword_100940000;
LABEL_61:
  (v181)(v185, enum case for ProductMedia.DescriptionPlacement.bottom(_:), v61);
  sub_10077018C();
  sub_10077018C();
  if (v203 == v199 && v204 == v200)
  {
    (v85)(v185, v61);

    goto LABEL_65;
  }

  v111 = sub_10077167C();
  (v85)(v185, v61);

  if (v111)
  {
LABEL_65:
    type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v112 = v188;
    sub_10076338C();

    sub_10076C2FC();
    (*(v189 + 8))(v112, v190);
    if (!v76)
    {
      if (v179 > 1)
      {

        sub_100760E9C();
        sub_10000A5D4(&unk_100942870);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1007841E0;
        *(v113 + 32) = v184;

        v114 = sub_100760E5C();
        v156 = v153;
LABEL_71:

        if (v79[237] != -1)
        {
          swift_once();
        }

        v115 = sub_10000A61C(v191, qword_10095B428);
        sub_10076891C();
        sub_10000CF78(&v203, v205);
        swift_getObjectType();
        v116 = v163;
        sub_1000FF02C();
        sub_10076D40C();
        v118 = v117;
        (*(v164 + 8))(v116, v165);
        sub_10050A104(v114, v118);
        sub_10000CD74(&v203);
        if (v114 >> 62)
        {
          sub_10077158C();
        }

        sub_100762FEC();
        v119 = sub_100509DF4(v114, v58);

        v195 = v119;
        v120 = sub_1007688DC();
        if (qword_100940B88 != -1)
        {
          swift_once();
        }

        v121 = sub_10076D3DC();
        v122 = sub_10000A61C(v121, qword_1009A1090);
        v123 = *(v121 - 8);
        v124 = v166;
        (*(v123 + 16))(v166, v122, v121);
        (*(v123 + 56))(v124, 0, 1, v121);
        (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
        v125 = sub_1007626BC();
        v126 = objc_allocWithZone(v125);
        v127 = sub_1007626AC();
        [v127 setAttributedText:v120];
        v187 = v120;
        if (qword_100940760 != -1)
        {
          swift_once();
        }

        [qword_10095B420 size];
        v128 = sub_10076DDDC();
        swift_allocObject();
        v129 = sub_10076DDBC();
        (*(v171 + 16))(v172, v115, v191);
        v130 = v173;
        v131 = v182;
        v132 = v174;
        (*(v173 + 16))(v170, v182, v174);
        v205 = v125;
        v206 = &protocol witness table for UILabel;
        v203 = v127;
        v201 = v128;
        v202 = &protocol witness table for LayoutViewPlaceholder;
        v199 = v129;
        v133 = v127;

        v134 = v175;
        sub_10076893C();
        [v197 pageMarginInsets];
        sub_100770ACC();
        sub_1007200B8(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout);
        v135 = v154;
        sub_10076D2AC();
        sub_100770AEC();
        v137 = v136;

        (*(v176 + 8))(v134, v135);
        (*(v130 + 8))(v131, v132);
        goto LABEL_81;
      }

LABEL_70:
      sub_100760E9C();
      v114 = sub_100760E5C();
      goto LABEL_71;
    }

    if (qword_100940760 == -1)
    {
LABEL_67:
      [qword_10095B420 size];
      goto LABEL_70;
    }

LABEL_98:
    swift_once();
    goto LABEL_67;
  }

  v137 = 0.0;
  v186 = v160;
LABEL_81:

  LODWORD(v195) = v1 > 0.0;
  LODWORD(v191) = v137 > 0.0;
  v138 = sub_100630CB4();
  swift_getKeyPath();
  v139 = v188;
  sub_10076338C();

  sub_10076C24C();
  v141 = v140;
  v142 = *(v189 + 8);
  v143 = v190;
  v142(v139, v190);
  swift_getKeyPath();
  v144 = v162;
  sub_10076338C();

  sub_10076C26C();
  v146 = v145;
  v142(v144, v143);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v148 = v147;
  v142(v139, v143);
  sub_100597094(v183, v195, v191, v138, v1, v137, v141, v146, v148);
  v150 = v149;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (v192)(v194, v196);
  return v150;
}

uint64_t sub_1007200B8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100720100(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer;
  *&v2[v4] = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshView;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_riverViewStyling;
  v67 = sub_100762CAC();
  v69 = *(v67 - 8);
  (*(v69 + 16))(&v2[v8], a1, v67);
  v9 = sub_100723614(0.0, 0.0, 1.0, 0.0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_leftMaskLayer;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_leftMaskLayer] = v9;
  v11 = v10;
  v64 = v10;
  v12 = sub_100723614(1.0, 0.0, 0.0, 0.0);
  v70 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_rightMaskLayer;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_rightMaskLayer] = v12;
  v13 = sub_100723614(0.0, 0.0, 0.0, 1.0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topMaskLayer;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topMaskLayer] = v13;
  v15 = sub_100723614(0.0, 1.0, 0.0, 0.0);
  v65 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomMaskLayer;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomMaskLayer] = v15;
  v16 = *&v2[v14];
  v17 = *&v2[v11];
  v18 = objc_allocWithZone(CAGradientLayer);
  v19 = v16;
  v20 = v17;
  v21 = [v18 init];
  [v21 setType:kCAGradientLayerAxial];
  sub_10000A5D4(&unk_100942870);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100785D70;
  sub_100016F40(0, &qword_1009492D0);
  *(v22 + 32) = sub_100770EBC(0.25);
  *(v22 + 40) = sub_100770EBC(0.75);
  isa = sub_1007701AC().super.isa;

  [v21 setLocations:isa];

  [v21 setStartPoint:{0.0, 0.0}];
  [v21 setEndPoint:{1.0, 1.0}];
  [v19 setMask:v20];
  [v21 setMask:v19];

  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer] = v21;
  v24 = *&v2[v14];
  v25 = *&v2[v70];
  v26 = objc_allocWithZone(CAGradientLayer);
  v27 = v24;
  v28 = v25;
  v29 = [v26 init];
  [v29 setType:kCAGradientLayerAxial];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100785D70;
  *(v30 + 32) = sub_100770EBC(0.25);
  *(v30 + 40) = sub_100770EBC(0.75);
  v31 = sub_1007701AC().super.isa;

  [v29 setLocations:v31];

  [v29 setStartPoint:{1.0, 0.0}];
  [v29 setEndPoint:{0.0, 1.0}];
  [v27 setMask:v28];
  [v29 setMask:v27];

  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topRightGradientLayer] = v29;
  v32 = *&v2[v65];
  v33 = *&v2[v64];
  v34 = objc_allocWithZone(CAGradientLayer);
  v35 = v32;
  v36 = v33;
  v37 = [v34 init];
  [v37 setType:kCAGradientLayerAxial];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100785D70;
  *(v38 + 32) = sub_100770EBC(0.25);
  *(v38 + 40) = sub_100770EBC(0.75);
  v39 = sub_1007701AC().super.isa;

  [v37 setLocations:v39];

  [v37 setStartPoint:{0.0, 1.0}];
  [v37 setEndPoint:{1.0, 0.0}];
  [v35 setMask:v36];
  [v37 setMask:v35];

  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer] = v37;
  v40 = *&v2[v65];
  v41 = *&v2[v70];
  v42 = objc_allocWithZone(CAGradientLayer);
  v43 = v40;
  v44 = v41;
  v45 = [v42 init];
  [v45 setType:kCAGradientLayerAxial];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100785D70;
  *(v46 + 32) = sub_100770EBC(0.25);
  *(v46 + 40) = sub_100770EBC(0.75);
  v47 = sub_1007701AC().super.isa;

  [v45 setLocations:v47];

  [v45 setStartPoint:{1.0, 1.0}];
  [v45 setEndPoint:{0.0, 0.0}];
  [v43 setMask:v44];
  [v45 setMask:v43];

  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer] = v45;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_overlayLayer] = sub_100723840();
  v72.receiver = v2;
  v72.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 whiteColor];
  [v50 setBackgroundColor:v51];

  v52 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshView;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshView]];
  v53 = [*&v50[v52] layer];

  v54 = sub_10013B5A4();

  [v53 setMeshTransform:v54];

  v55 = [*&v50[v52] layer];
  v56 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer;
  [v55 addSublayer:*&v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer]];

  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_overlayLayer]];
  v50[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
  v57 = objc_opt_self();
  v58 = [v57 defaultCenter];
  [v58 addObserver:v50 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v59 = [v57 defaultCenter];
  [v59 addObserver:v50 selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v60 = [v57 defaultCenter];
  [v60 addObserver:v50 selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_10000A5D4(&unk_100945BF0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100783DD0;
  *(v61 + 32) = sub_10076E88C();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v71[3] = ObjectType;
  v71[0] = v50;
  v62 = v50;
  sub_100770C5C();

  swift_unknownObjectRelease();

  (*(v69 + 8))(a1, v67);
  sub_10000CD74(v71);
  return v62;
}

void sub_100720B00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();

  LOBYTE(a1) = sub_1000CCE4C(v4, a1);

  if (a1)
  {
    return;
  }

  v5 = *&v1[v3];
  if (v5 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_100720C14();
    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v1[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] == 1 && (v6 = [v1 window]) != 0 && (v6, (objc_msgSend(v1, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_100720EDC();
    sub_100720C14();
    sub_100721994();
    sub_100721F0C();
    sub_100722050();
    sub_100721B8C();
  }

  else
  {
    sub_100720EDC();
  }
}

uint64_t sub_100720C14()
{
  sub_10000A5D4(&unk_100942870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B6210;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topRightGradientLayer];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshView];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  *(inited + 72) = [v7 layer];
  *(inited + 80) = [v0 layer];
  v13 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = *(inited + 32); ; i = sub_10077149C())
  {
    v15 = i;
    [i removeAllAnimations];

    if (v13)
    {
      v16 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_23;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 removeAllAnimations];

    if (v13)
    {
      v18 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_23;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 removeAllAnimations];

    if (v13)
    {
      v20 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_23;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 removeAllAnimations];

    if (v13)
    {
      v22 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_23;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 removeAllAnimations];

    if (v13)
    {
      v24 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_23;
      }

      v24 = *(inited + 72);
    }

    v25 = v24;
    [v24 removeAllAnimations];

    if (v13)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v26 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v26 = sub_10077149C();
LABEL_22:
  v27 = v26;
  [v26 removeAllAnimations];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_100720EDC()
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
    {
      return;
    }

LABEL_3:
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer);
    swift_beginAccess();
    v5 = *(v0 + v2);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v42 = v4;
      v8 = sub_10077149C();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v5 + 32);
      v7 = v4;
      v8 = v6;
    }

    v9 = v8;
    swift_endAccess();
    sub_10000A5D4(&unk_100942870);
    inited = swift_initStackObject();
    v46 = xmmword_100785D70;
    *(inited + 16) = xmmword_100785D70;
    v1 = &off_100911000;
    *(inited + 32) = [v9 CGColor];
    v11 = [v9 colorWithAlphaComponent:0.0];
    v12 = [v11 CGColor];

    *(inited + 40) = v12;
    sub_10016D8F8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_1007701AC().super.isa;

    [v4 setColors:isa];

    v14 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topRightGradientLayer);
    swift_beginAccess();
    v15 = *(v0 + v2);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v43 = v14;
      v18 = sub_10077149C();
    }

    else
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_24;
      }

      v16 = *(v15 + 40);
      v17 = v14;
      v18 = v16;
    }

    v19 = v18;
    swift_endAccess();
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_100785D70;
    *(v20 + 32) = [v19 CGColor];
    v21 = [v19 colorWithAlphaComponent:0.0];
    v22 = [v21 CGColor];

    *(v20 + 40) = v22;
    sub_10016D8F8(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v23 = sub_1007701AC().super.isa;

    [v14 setColors:v23];

    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer);
    swift_beginAccess();
    v24 = *(v0 + v2);
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *(v24 + 48);
      v26 = v4;
      v27 = v25;
      goto LABEL_12;
    }

LABEL_22:
    v44 = v4;
    v27 = sub_10077149C();
LABEL_12:
    v28 = v27;
    swift_endAccess();
    v29 = swift_initStackObject();
    *(v29 + 16) = v46;
    *(v29 + 32) = [v28 v1[350]];
    v30 = [v28 colorWithAlphaComponent:0.0];
    v31 = [v30 v1[350]];

    *(v29 + 40) = v31;
    sub_10016D8F8(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    v32 = sub_1007701AC().super.isa;

    [v4 setColors:v32];

    v14 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer);
    swift_beginAccess();
    v33 = *(v0 + v2);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v34 = *(v33 + 56);
        v35 = v14;
        v36 = v34;
LABEL_15:
        v37 = v36;
        swift_endAccess();
        v38 = swift_initStackObject();
        *(v38 + 16) = v46;
        *(v38 + 32) = [v37 v1[350]];
        v39 = [v37 colorWithAlphaComponent:0.0];
        v40 = [v39 v1[350]];

        *(v38 + 40) = v40;
        sub_10016D8F8(v38);
        swift_setDeallocating();
        swift_arrayDestroy();
        v41 = sub_1007701AC().super.isa;

        [v14 setColors:v41];

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    v45 = v14;
    v36 = sub_10077149C();
    goto LABEL_15;
  }

  if (sub_10077158C() >= 4)
  {
    goto LABEL_3;
  }
}

void sub_1007214A0()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] == 1 && (v1 = [v0 window]) != 0 && (v1, (objc_msgSend(v0, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v6 = sub_10076FF6C();
    v7 = [v5 animationForKey:v6];

    if (v7)
    {
    }

    else
    {
      sub_100720EDC();
      sub_100720C14();
      sub_100721994();
      sub_100721F0C();
      sub_100722050();
    }

    sub_100721B8C();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v3 = sub_10076FF6C();
    v4 = [v2 animationForKey:v3];

    if (v4)
    {

      sub_100721D90();
    }
  }
}

id sub_10072161C()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshView];
  [v0 bounds];
  v2 = -CGRectGetMidY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);
  [v0 bounds];
  Height = CGRectGetHeight(v26);
  [v1 setFrame:{0.0, v2, Width, Height + Height}];
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
  [v0 bounds];
  [v5 frame];
  [v5 setFrame:?];
  [v0 bounds];
  MidY = CGRectGetMidY(v27);
  [v5 frame];
  [v5 setFrame:{0.0, MidY}];
  [v0 bounds];
  v7 = CGRectGetWidth(v28);
  [v0 bounds];
  v8 = CGRectGetHeight(v29);
  v9 = hypot(v7, v8) * 1.2;
  [v0 bounds];
  v10 = CGRectGetWidth(v30);
  v11 = v10 + v10;
  if (v11 > v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  [v0 bounds];
  v13 = CGRectGetHeight(v31);
  v14 = v13 + v13;
  if (v14 > v9)
  {
    v9 = v14;
  }

  [v0 bounds];
  v15 = (v12 - CGRectGetWidth(v32)) * -0.5;
  [v0 bounds];
  v16 = (v9 - CGRectGetHeight(v33)) * -0.5;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  v17 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_overlayLayer] setFrame:{v15, v16, v12, v9}];
  v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topMaskLayer];
  [*&v0[v17] bounds];
  [v18 setFrame:?];
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomMaskLayer];
  [*&v0[v17] bounds];
  [v19 setFrame:?];
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_leftMaskLayer];
  [*&v0[v17] bounds];
  [v20 setFrame:?];
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_rightMaskLayer];
  [*&v0[v17] bounds];
  return [v21 setFrame:?];
}

void sub_100721994()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CABasicAnimation) init];
  v3 = sub_10076FF6C();
  [v2 setKeyPath:v3];

  v4 = sub_10013B5A4();
  [v2 setFromValue:v4];

  v5 = sub_10013B604();
  [v2 setToValue:v5];

  v6 = v2;
  [v6 setDuration:3.5];
  [v6 setAutoreverses:1];
  LODWORD(v7) = 2139095039;
  [v6 setRepeatCount:v7];
  v8 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v9) = 1054280253;
  LODWORD(v10) = 1056293519;
  LODWORD(v11) = 1.0;
  v12 = [v8 initWithControlPoints:v9 :0.0 :v10 :v11];
  [v6 setTimingFunction:v12];

  v13 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshView) layer];
  v14 = sub_10076FF6C();
  [v13 addAnimation:v6 forKey:v14];
}

void sub_100721B8C()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 1.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = sub_10076FF6C();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 timeOffset];
      v9 = v8;

      v10 = [v0 layer];
      LODWORD(v11) = 1.0;
      [v10 setSpeed:v11];

      v12 = [v0 layer];
      [v12 setTimeOffset:0.0];

      v13 = [v0 layer];
      [v13 setBeginTime:0.0];

      v14 = [v0 layer];
      [v14 convertTime:0 fromLayer:CACurrentMediaTime()];
      v16 = v15;

      v17 = [v0 layer];
      [v17 setBeginTime:v16 - v9];
    }
  }
}

void sub_100721D90()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 0.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = sub_10076FF6C();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 convertTime:0 fromLayer:CACurrentMediaTime()];
      v9 = v8;

      v10 = [v0 layer];
      [v10 setSpeed:0.0];

      v11 = [v0 layer];
      [v11 setTimeOffset:v9];
    }
  }
}

void sub_100721F0C()
{
  v1 = [objc_allocWithZone(CABasicAnimation) init];
  v2 = sub_10076FF6C();
  [v1 setKeyPath:v2];

  isa = sub_10077033C().super.super.isa;
  [v1 setToValue:isa];

  v4 = v1;
  [v4 setDuration:20.0];
  LODWORD(v5) = 2139095039;
  [v4 setRepeatCount:v5];

  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer);
  v7 = sub_10076FF6C();
  [v6 addAnimation:v4 forKey:v7];
}

void sub_100722050()
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v101 = v0;
  v5 = *&v0[v4];
  if (v5 >> 62)
  {
    goto LABEL_155;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:
    v6 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_riverViewStyling;
    v7 = v101;
    sub_100762C7C();
    v9 = v8;
    sub_100762C9C();
    v11 = v10;
    v12 = &v101[v6];
    sub_100762C3C();
    v14 = v13;
    v15 = *&v101[v4];
    if (!(v15 >> 62))
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v7 >> 1;
      goto LABEL_5;
    }

    v97 = sub_10077158C();
    if (v97 < -1)
    {
      __break(1u);
LABEL_159:
      if (v6 < 0)
      {
        v1 = v6;
      }

      else
      {
        v1 = v16;
      }

      v97 = sub_10077158C();
      if (v97 < 0)
      {
        __break(1u);
        goto LABEL_181;
      }

      if (sub_10077158C() >= v12)
      {
        goto LABEL_7;
      }

LABEL_164:
      __break(1u);
LABEL_165:
      v30 = sub_10077158C();
      if (v30 >= v12)
      {
        goto LABEL_26;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    while (1)
    {
      v7 = v97;
      v12 = v97 / 2;
LABEL_5:
      swift_beginAccess();
      v6 = *&v101[v4];
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v2 = v6 >> 62;
      if (v6 >> 62)
      {
        goto LABEL_159;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
      {
        goto LABEL_164;
      }

LABEL_7:
      if ((v6 & 0xC000000000000001) != 0 && v7 + 1 > 2)
      {
        sub_100016F40(0, &qword_100942F10);

        v17 = 0;
        do
        {
          v18 = v17 + 1;
          sub_10077147C(v17);
          v17 = v18;
        }

        while (v12 != v18);
        if (!v2)
        {
LABEL_12:
          v19 = 0;
          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          v1 = v20 + 32;
          v21 = (2 * v12) | 1;
          goto LABEL_15;
        }
      }

      else
      {

        if (!v2)
        {
          goto LABEL_12;
        }
      }

      v20 = sub_10077159C();
      v1 = v22;
      v19 = v23;
      v21 = v24;
LABEL_15:
      swift_endAccess();
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v3 = sub_10077169C();
      swift_unknownObjectRetain_n();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = v26[2];

      if (__OFSUB__(v21 >> 1, v19))
      {
        __break(1u);
LABEL_177:
        swift_unknownObjectRelease();
LABEL_16:
        sub_1002347E0(v20, v1, v19, v21);
        v7 = v25;
        goto LABEL_23;
      }

      if (v27 != (v21 >> 1) - v19)
      {
        goto LABEL_177;
      }

      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
        goto LABEL_24;
      }

      v7 = _swiftEmptyArrayStorage;
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      v104 = v7;
      v28 = *&v101[v4];
      if (v28 >> 62)
      {
        goto LABEL_165;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFF8;
      v30 = *(v29 + 16);
      if (v30 < v12)
      {
        goto LABEL_166;
      }

LABEL_26:
      swift_beginAccess();
      v7 = *&v101[v4];
      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v4 = v7 >> 62;
      if (!(v7 >> 62))
      {
        v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31 >= v12)
        {
          if (v31 >= v30)
          {
LABEL_29:
            if ((v7 & 0xC000000000000001) == 0 || v12 == v30)
            {

              if (!v4)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (v12 >= v30)
              {
                __break(1u);
                goto LABEL_178;
              }

              sub_100016F40(0, &qword_100942F10);

              v32 = v12;
              do
              {
                v33 = v32 + 1;
                sub_10077147C(v32);
                v32 = v33;
              }

              while (v30 != v33);
              if (!v4)
              {
LABEL_36:
                v7 &= 0xFFFFFFFFFFFFFF8uLL;
                v1 = v7 + 32;
                v30 = (2 * v30) | 1;
                goto LABEL_39;
              }
            }

            v7 = sub_10077159C();
            v1 = v34;
            v12 = v35;
            v30 = v36;
LABEL_39:
            swift_endAccess();
            if ((v30 & 1) == 0)
            {
LABEL_40:
              sub_1002347E0(v7, v1, v12, v30);
              v38 = v37;
              goto LABEL_47;
            }

            sub_10077169C();
            swift_unknownObjectRetain_n();
            v39 = swift_dynamicCastClass();
            if (!v39)
            {
              swift_unknownObjectRelease();
              v39 = _swiftEmptyArrayStorage;
            }

            v40 = v39[2];

            if (__OFSUB__(v30 >> 1, v12))
            {
LABEL_178:
              __break(1u);
            }

            else if (v40 == (v30 >> 1) - v12)
            {
              v38 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v38)
              {
                v38 = _swiftEmptyArrayStorage;
LABEL_47:
                swift_unknownObjectRelease();
              }

              v103 = v38;
              sub_100722F14(2);
              sub_100722F14(2);
              v12 = *&v101[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer];
              v30 = v104;
              v3 = (v104 & 0xFFFFFFFFFFFFFF8);
              if (!(v104 >> 62))
              {
                v2 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
                v4 = v30 & 0xC000000000000001;
                v98 = v12;
                v102 = v3;
                if (!v2)
                {
LABEL_71:
                  v50 = (v11 + v14) / v9;
                  v51 = (v50 + v50) * 0.15;
                  v52 = _swiftEmptyArrayStorage[2];
                  if (v52)
                  {
                    sub_1007714EC();
                    v53 = 5;
                    v54 = v30;
                    do
                    {
                      v55 = _swiftEmptyArrayStorage[v53];
                      sub_1007714CC();
                      sub_1007714FC();
                      sub_10077150C();
                      sub_1007714DC();
                      v53 += 2;
                      --v52;
                    }

                    while (v52);
                  }

                  else
                  {

                    v54 = v30;
                  }

                  v1 = 0xEE006E6F6974616DLL;
                  v56 = sub_100723CBC(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 * 0.5);

                  v57 = sub_10076FF6C();
                  [v98 addAnimation:v56 forKey:v57];

                  v99 = *&v101[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_topRightGradientLayer];
                  if (v2)
                  {
                    v58 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v59 = sub_10077149C();
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      else
                      {
                        if (v58 >= v3[2])
                        {
                          goto LABEL_149;
                        }

                        v59 = *(v54 + 8 * v58 + 32);
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      if (v58)
                      {
                        v1 = v59;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_1004BBA84(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v62 = _swiftEmptyArrayStorage[2];
                        v61 = _swiftEmptyArrayStorage[3];
                        v63 = v1;
                        if (v62 >= v61 >> 1)
                        {
                          sub_1004BBA84((v61 > 1), v62 + 1, 1);
                          v63 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v62 + 1;
                        v64 = &_swiftEmptyArrayStorage[2 * v62];
                        v64[4] = v58;
                        v64[5] = v63;
                        v3 = v102;
                        if (v60 == v2)
                        {
                          break;
                        }

                        v58 = v60;
                      }

                      else
                      {

                        ++v58;
                        if (v60 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v1 = _swiftEmptyArrayStorage[2];
                  if (v1)
                  {
                    sub_1007714EC();
                    v65 = 5;
                    v66 = v99;
                    do
                    {
                      v67 = _swiftEmptyArrayStorage[v65];
                      sub_1007714CC();
                      sub_1007714FC();
                      sub_10077150C();
                      sub_1007714DC();
                      v65 += 2;
                      --v1;
                    }

                    while (v1);
                  }

                  else
                  {

                    v66 = v99;
                  }

                  v68 = sub_100723CBC(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + v50 * 0.5);

                  v69 = sub_10076FF6C();
                  [v66 addAnimation:v68 forKey:v69];

                  v70 = *&v101[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
                  if (v103 >> 62)
                  {
                    v2 = sub_10077158C();
                  }

                  else
                  {
                    v2 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v4 = v103 & 0xC000000000000001;
                  v100 = v70;
                  if (v2)
                  {
                    v1 = 0;
                    v3 = (v103 + 32);
                    do
                    {
                      v71 = v1;
                      if (v4)
                      {
                        v73 = sub_10077149C();
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      else
                      {
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v1 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_150;
                        }

                        v73 = v3[v1];
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      if (v1)
                      {

                        if (v74 == v2)
                        {
                          break;
                        }

                        if (v4)
                        {
                          v75 = sub_10077149C();
                        }

                        else
                        {
                          if (v74 >= *(v72 + 16))
                          {
                            goto LABEL_150;
                          }

                          v75 = v3[v74];
                        }

                        v73 = v75;
                        v1 = v74 | 1;
                      }

                      else
                      {
                        v1 = v74;
                        v74 = v71;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1004BBA84(0, _swiftEmptyArrayStorage[2] + 1, 1);
                      }

                      v77 = _swiftEmptyArrayStorage[2];
                      v76 = _swiftEmptyArrayStorage[3];
                      if (v77 >= v76 >> 1)
                      {
                        sub_1004BBA84((v76 > 1), v77 + 1, 1);
                      }

                      _swiftEmptyArrayStorage[2] = v77 + 1;
                      v78 = &_swiftEmptyArrayStorage[2 * v77];
                      v78[4] = v74;
                      v78[5] = v73;
                    }

                    while (v1 != v2);
                  }

                  v79 = _swiftEmptyArrayStorage[2];
                  if (v79)
                  {
                    sub_1007714EC();
                    v1 = 40;
                    do
                    {
                      v80 = *(_swiftEmptyArrayStorage + v1);
                      sub_1007714CC();
                      sub_1007714FC();
                      sub_10077150C();
                      sub_1007714DC();
                      v1 += 16;
                      --v79;
                    }

                    while (v79);
                  }

                  v81 = sub_100723CBC(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, 0.0);

                  v82 = sub_10076FF6C();
                  [v100 addAnimation:v81 forKey:v82];

                  v83 = *&v101[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer];
                  v84 = v103 & 0xFFFFFFFFFFFFFF8;
                  if (v2)
                  {
                    v3 = _swiftEmptyArrayStorage;
                    v85 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v86 = sub_10077149C();
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      else
                      {
                        if (v85 >= *(v84 + 16))
                        {
                          goto LABEL_152;
                        }

                        v86 = *(v103 + 8 * v85 + 32);
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      if (v85)
                      {
                        v1 = v86;
                        v101 = v83;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_1004BBA84(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v89 = _swiftEmptyArrayStorage[2];
                        v88 = _swiftEmptyArrayStorage[3];
                        v90 = v1;
                        if (v89 >= v88 >> 1)
                        {
                          sub_1004BBA84((v88 > 1), v89 + 1, 1);
                          v90 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v89 + 1;
                        v91 = &_swiftEmptyArrayStorage[2 * v89];
                        v91[4] = v85;
                        v91[5] = v90;
                        v84 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v87 == v2)
                        {
                          break;
                        }

                        v85 = v87;
                      }

                      else
                      {

                        ++v85;
                        if (v87 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v92 = _swiftEmptyArrayStorage[2];
                  if (v92)
                  {
                    sub_1007714EC();
                    v93 = 5;
                    do
                    {
                      v94 = _swiftEmptyArrayStorage[v93];
                      sub_1007714CC();
                      sub_1007714FC();
                      sub_10077150C();
                      sub_1007714DC();
                      v93 += 2;
                      --v92;
                    }

                    while (v92);
                  }

                  v95 = sub_100723CBC(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + 0.0);

                  v96 = sub_10076FF6C();
                  [v83 addAnimation:v95 forKey:v96];

                  return;
                }

                v41 = 0;
                v42 = v30 + 32;
                while (1)
                {
                  if (v4)
                  {
                    v43 = sub_10077149C();
                  }

                  else
                  {
                    if (v41 >= v3[2])
                    {
                      goto LABEL_147;
                    }

                    v43 = *(v42 + 8 * v41);
                  }

                  v44 = v43;
                  v45 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_153;
                  }

                  if (v41)
                  {

                    if (v45 == v2)
                    {
                      goto LABEL_71;
                    }

                    if (v4)
                    {
                      v46 = sub_10077149C();
                    }

                    else
                    {
                      if (v45 >= v3[2])
                      {
LABEL_147:
                        __break(1u);
LABEL_148:
                        __break(1u);
LABEL_149:
                        __break(1u);
LABEL_150:
                        __break(1u);
LABEL_151:
                        __break(1u);
LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        if (sub_10077158C() < 4)
                        {
                          return;
                        }

                        goto LABEL_3;
                      }

                      v46 = *(v42 + 8 * v45);
                    }

                    v44 = v46;
                    v1 = v45 | 1;
                  }

                  else
                  {
                    v1 = v41 + 1;
                    v45 = v41;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1004BBA84(0, _swiftEmptyArrayStorage[2] + 1, 1);
                  }

                  v48 = _swiftEmptyArrayStorage[2];
                  v47 = _swiftEmptyArrayStorage[3];
                  if (v48 >= v47 >> 1)
                  {
                    sub_1004BBA84((v47 > 1), v48 + 1, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v48 + 1;
                  v49 = &_swiftEmptyArrayStorage[2 * v48];
                  v49[4] = v45;
                  v49[5] = v44;
                  v41 = v1;
                  v3 = v102;
                  if (v1 == v2)
                  {
                    goto LABEL_71;
                  }
                }
              }

LABEL_174:
              v2 = sub_10077158C();
              goto LABEL_50;
            }

            swift_unknownObjectRelease();
            goto LABEL_40;
          }

LABEL_172:
          __break(1u);
        }

        __break(1u);
        goto LABEL_174;
      }

LABEL_167:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v1 = v7;
      }

      else
      {
        v1 = v29;
      }

      v97 = sub_10077158C();
      if (v97 >= v12)
      {
        if (sub_10077158C() >= v30)
        {
          goto LABEL_29;
        }

        goto LABEL_172;
      }

LABEL_181:
      __break(1u);
    }
  }
}

uint64_t sub_100722F14(uint64_t a1)
{
  v5 = v1;
  v7 = *v5;
  v8 = *v5 >> 62;
  if (!v8)
  {
    result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result <= a1)
    {
      return result;
    }

LABEL_3:
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v8)
      {
        if (v7 < 0)
        {
          v2 = v7;
        }

        else
        {
          v2 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v3 = sub_10077158C();
        if (sub_10077158C() < 0)
        {
          goto LABEL_54;
        }

        if (v3 >= a1)
        {
          v13 = a1;
        }

        else
        {
          v13 = v3;
        }

        if (v3 < 0)
        {
          v13 = a1;
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v13;
        }

        else
        {
          v3 = 0;
        }

        v10 = sub_10077158C();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= a1)
        {
          v11 = a1;
        }

        else
        {
          v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v11;
        }

        else
        {
          v3 = 0;
        }
      }

      if (v10 >= v3)
      {
        if ((v7 & 0xC000000000000001) != 0 && v3)
        {
          sub_100016F40(0, &qword_100942F10);

          v14 = 0;
          do
          {
            v15 = v14 + 1;
            sub_10077147C(v14);
            v14 = v15;
          }

          while (v3 != v15);
          if (!v8)
          {
LABEL_30:
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
            v2 = v7 + 32;
            v3 = (2 * v3) | 1;
            v8 = 0;
            if (v12)
            {
              goto LABEL_38;
            }

            result = *(v7 + 16);
            if (result < 0)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }
        }

        else
        {

          if (!v8)
          {
            goto LABEL_30;
          }
        }

        v7 = sub_10077159C();
        v2 = v16;
        v8 = v17;
        v3 = v18;
        if (v12)
        {
          goto LABEL_38;
        }

        result = sub_10077158C();
        if (result < 0)
        {
LABEL_37:
          sub_10061B728(0, a1);
LABEL_38:
          v4 = *v5;
          if ((v3 & 1) == 0)
          {
            swift_unknownObjectRetain();
LABEL_40:
            sub_1002347E0(v7, v2, v8, v3);
            v20 = v19;
            goto LABEL_47;
          }

          sub_10077169C();
          swift_unknownObjectRetain_n();
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            swift_unknownObjectRelease();
            v21 = _swiftEmptyArrayStorage;
          }

          v22 = v21[2];

          if (!__OFSUB__(v3 >> 1, v8))
          {
            if (v22 == (v3 >> 1) - v8)
            {
              v20 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v20)
              {
LABEL_48:
                sub_1000F96E8(v20);
                result = swift_unknownObjectRelease();
                *v5 = v4;
                return result;
              }

              v20 = _swiftEmptyArrayStorage;
LABEL_47:
              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_55:
          __break(1u);
LABEL_56:
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

LABEL_36:
        if (result < a1)
        {
          __break(1u);
          return result;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = sub_10077158C();
  if (result > a1)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10072324C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10075D7BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for RiverTodayCardBackgroundView()
{
  result = qword_100966DA0;
  if (!qword_100966DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100723540()
{
  result = sub_100762CAC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_100723614(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000A5D4(&unk_100942870);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100785D70;
  sub_100016F40(0, &qword_1009492D0);
  *(v9 + 32) = sub_100770EBC(0.25);
  *(v9 + 40) = sub_100770EBC(0.75);
  isa = sub_1007701AC().super.isa;

  [v8 setLocations:isa];

  [v8 setStartPoint:{a1, a2}];
  [v8 setEndPoint:{a3, a4}];
  sub_10000A5D4(&unk_1009434B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100784500;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 clearColor];
  v18 = [v17 CGColor];

  *(v11 + 88) = v16;
  *(v11 + 64) = v18;
  v19 = sub_1007701AC().super.isa;

  [v8 setColors:v19];

  return v8;
}

char *sub_100723840()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000A5D4(&unk_100942870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784DC0;
  v2 = objc_opt_self();
  *(inited + 32) = [v2 blackColor];
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  *(inited + 40) = v4;
  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  *(inited + 48) = v6;
  v35 = _swiftEmptyArrayStorage;
  result = sub_1004BB874(0, 3, 0);
  v8 = _swiftEmptyArrayStorage;
  v9 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v10 = sub_10077149C();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      return result;
    }

    v10 = *(inited + 32);
  }

  v11 = v10;
  v12 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v14 = v13;
  v34 = v13;

  *&v33 = v12;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004BB874((v15 > 1), v16 + 1, 1);
    v8 = v35;
  }

  v8[2] = v16 + 1;
  sub_10000CD64(&v33, &v8[4 * v16 + 4]);
  if (v9)
  {
    v17 = sub_10077149C();
  }

  else
  {
    v17 = *(inited + 40);
  }

  v18 = v17;
  v19 = [v17 CGColor];
  v34 = v14;

  *&v33 = v19;
  v35 = v8;
  v21 = v8[2];
  v20 = v8[3];
  if (v21 >= v20 >> 1)
  {
    sub_1004BB874((v20 > 1), v21 + 1, 1);
    v8 = v35;
  }

  v8[2] = v21 + 1;
  sub_10000CD64(&v33, &v8[4 * v21 + 4]);
  if (v9)
  {
    v22 = sub_10077149C();
  }

  else
  {
    v22 = *(inited + 48);
  }

  v23 = v22;
  v24 = [v22 CGColor];
  v34 = v14;

  *&v33 = v24;
  v35 = v8;
  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    sub_1004BB874((v25 > 1), v26 + 1, 1);
    v8 = v35;
  }

  v8[2] = v26 + 1;
  sub_10000CD64(&v33, &v8[4 * v26 + 4]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = sub_1007701AC().super.isa;

  [v0 setColors:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  sub_100016F40(0, &qword_1009492D0);
  *(v28 + 32) = sub_100770ECC(0);
  *(v28 + 40) = sub_100770EBC(0.4);
  *(v28 + 48) = sub_100770EBC(1.0);
  v29 = sub_1007701AC().super.isa;

  [v0 setLocations:v29];

  [v0 setStartPoint:{0.0, 1.0}];
  [v0 setEndPoint:{1.0, 0.0}];
  v30 = v0;
  LODWORD(v31) = 1045220557;
  [v30 setOpacity:v31];
  [v30 setCompositingFilter:kCAFilterPlusD];

  return v30;
}

id sub_100723CBC(unint64_t a1, double a2, double a3, double a4)
{
  v7 = a1;
  v64 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v9 = &v71;
    v68 = v7;
    if (i)
    {
      v67 = (v7 & 0xC000000000000001);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v10 = *(v7 + 32);
      }

      v72[0] = v10;
      v70 = _swiftEmptyArrayStorage;
      if (!v10)
      {
        v63 = _swiftEmptyArrayStorage;
LABEL_12:
        sub_10072459C(v9 + 32);
        v13 = 0;
        v70 = _swiftEmptyArrayStorage;
        v66 = v7 & 0xFFFFFFFFFFFFFF8;
        v65 = i;
        while (1)
        {
          if (v67)
          {
            v14 = sub_10077149C();
          }

          else
          {
            if (v13 >= *(v66 + 16))
            {
              goto LABEL_66;
            }

            v14 = *(v7 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          sub_10000A5D4(&qword_1009591F8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100784500;
          sub_10000A5D4(&unk_100942870);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_100785D70;
          *(v18 + 32) = [v15 CGColor];
          v19 = [v15 colorWithAlphaComponent:0.0];
          v20 = [v19 CGColor];

          *(v18 + 40) = v20;
          *(inited + 32) = v18;
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_100785D70;
          *(v21 + 32) = [v15 CGColor];
          v22 = [v15 colorWithAlphaComponent:0.0];
          v23 = [v22 CGColor];

          v7 = v68;
          *(v21 + 40) = v23;
          *(inited + 40) = v21;

          sub_1000F95E4(inited);
          ++v13;
          if (v16 == v65)
          {
            i = _swiftEmptyArrayStorage;
            v12 = v63;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v11 = v10;
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_10077025C();
        v63 = v70;
        goto LABEL_12;
      }

LABEL_74:
      sub_10077021C();
      goto LABEL_9;
    }

    v72[0] = 0;
    sub_10072459C(v72);
    v12 = _swiftEmptyArrayStorage;
    i = _swiftEmptyArrayStorage;
LABEL_20:
    if (v12 >> 62)
    {
      v62 = v12;
      v9 = sub_10077158C();
      v12 = v62;
    }

    else
    {
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v24 = v12;
      v70 = _swiftEmptyArrayStorage;
      sub_1004BBA44(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        goto LABEL_73;
      }

      v67 = _swiftEmptyArrayStorage;
      v25 = 0;
      v26 = v24;
      v27 = v24 & 0xC000000000000001;
      v28 = v24;
      do
      {
        if (v27)
        {
          v29 = sub_10077149C();
        }

        else
        {
          v29 = *(v26 + 8 * v25 + 32);
        }

        v30 = v29;
        sub_10000A5D4(&unk_100942870);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100785D70;
        *(v31 + 32) = [v30 CGColor];
        v32 = [v30 colorWithAlphaComponent:0.0];
        v33 = [v32 CGColor];

        *(v31 + 40) = v33;
        v35 = _swiftEmptyArrayStorage[2];
        v34 = _swiftEmptyArrayStorage[3];
        if (v35 >= v34 >> 1)
        {
          sub_1004BBA44((v34 > 1), v35 + 1, 1);
        }

        ++v25;
        _swiftEmptyArrayStorage[2] = v35 + 1;
        _swiftEmptyArrayStorage[v35 + 4] = v31;
        v26 = v28;
      }

      while (v9 != v25);

      v7 = v68;
    }

    else
    {
    }

    sub_1000F95E4(_swiftEmptyArrayStorage);
    v36 = v64 ? sub_10077158C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a3 = a2 + a3;
    v37 = _swiftEmptyArrayStorage[2];
    if (!v37)
    {
      break;
    }

    v69 = v36;
    v38 = sub_10049DB70(0, 1, 1, _swiftEmptyArrayStorage);
    for (j = 0; j != v37; ++j)
    {
      if (j)
      {
        v40 = a3 * (j >> 1) + a2;
      }

      else
      {
        v40 = a3 * (j >> 1);
      }

      v42 = *(v38 + 2);
      v41 = *(v38 + 3);
      v7 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v38 = sub_10049DB70((v41 > 1), v42 + 1, 1, v38);
      }

      *(v38 + 2) = v7;
      *&v38[8 * v42 + 32] = v40;
    }

LABEL_47:
    v70 = _swiftEmptyArrayStorage;
    sub_1004BBA24(0, v7, 0);
    v43 = *(v38 + 2);
    if (v43)
    {
      a2 = *(v38 + 4);
      v45 = _swiftEmptyArrayStorage[2];
      v44 = _swiftEmptyArrayStorage[3];
      if (v45 >= v44 >> 1)
      {
        sub_1004BBA24((v44 > 1), v45 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v45 + 1;
      *&_swiftEmptyArrayStorage[v45 + 4] = a2;
      v46 = v7 - 1;
      if (v7 == 1)
      {
LABEL_51:

        v47 = v69;
        goto LABEL_52;
      }

      v51 = 0;
      v52 = v43 - 1;
      while (v52 != v51)
      {
        if ((v51 + 1) >= *(v38 + 2))
        {
          goto LABEL_68;
        }

        a2 = *&v38[8 * v51 + 40];
        v70 = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[3];
        v7 = v45 + v51 + 2;
        if (v51 + 1 + v45 >= v53 >> 1)
        {
          sub_1004BBA24((v53 > 1), v45 + v51 + 2, 1);
        }

        _swiftEmptyArrayStorage[2] = v7;
        *&_swiftEmptyArrayStorage[v45 + 5 + v51++] = a2 + a4;
        if (v46 == v51)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    v69 = v36;
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v61 = v36;

  v47 = v61;
LABEL_52:
  v48 = a3 * v47 + a4;
  v49 = _swiftEmptyArrayStorage[2];
  if (v49)
  {
    sub_1007714EC();
    v50 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithDouble:*&_swiftEmptyArrayStorage[v50] / v48];
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      ++v50;
      --v49;
    }

    while (v49);
  }

  v54 = sub_10076FF6C();
  v55 = [objc_opt_self() animationWithKeyPath:v54];

  sub_10016DBDC(_swiftEmptyArrayStorage);

  isa = sub_1007701AC().super.isa;

  [v55 setValues:isa];

  sub_100016F40(0, &qword_1009492D0);
  v57 = sub_1007701AC().super.isa;

  [v55 setKeyTimes:v57];

  v58 = v55;
  [v58 setDuration:v48];
  LODWORD(v59) = 2139095039;
  [v58 setRepeatCount:v59];
  [v58 setCalculationMode:kCAAnimationLinear];
  [v58 setRemovedOnCompletion:0];

  return v58;
}

uint64_t sub_10072459C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100946798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100724604()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating) = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_gradientBackingLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v0 + v3) = v4;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1007246F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100724754(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100724820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100724AAC(&qword_100950BE8, type metadata accessor for ProductRatingsCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1007248B8()
{
  v0 = sub_10076B6EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_10076C0CC();
  sub_100724AAC(&qword_10094F090, &type metadata accessor for Ratings);
  result = sub_10076332C();
  v8 = v12;
  if (v12)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076B68C();
    sub_100724AAC(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
    v9 = sub_10077124C();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    sub_1004648B8(v8, v9 & 1);
  }

  return result;
}

uint64_t sub_100724AAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100724C38(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 presentingViewController];
  if (v4)
  {
    v39 = v4;
    v5 = [a1 viewForKey:UITransitionContextFromViewKey];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 containerView];
      v8 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v8)
      {
        [v7 insertSubview:v8 belowSubview:v6];
      }

      [a1 initialFrameForViewController:v40];
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v13 = CGRectGetWidth(v48) * 0.2;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v14 = CGRectGetHeight(v49) * 0.2;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectInset(v50, v13, v14);
      if (v1[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect + 32])
      {
        v15 = v51.origin.x;
        v16 = v51.origin.y;
        v17 = v51.size.width;
        v18 = v51.size.height;
        v19 = v1;
      }

      else
      {
        v19 = v1;
        [v7 convertRect:0 fromView:{*&v1[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect], *&v1[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect + 8], *&v1[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect + 16], *&v1[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect + 24]}];
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
      }

      v25 = [swift_unknownObjectRetain() containerView];
      v26 = [v25 traitCollection];

      LOBYTE(v25) = sub_1007706EC();
      swift_unknownObjectRelease();
      if (v25)
      {
        v27 = 0.62;
      }

      else
      {
        v27 = 0.61;
      }

      v28 = [a1 containerView];
      v29 = [v28 traitCollection];

      LOBYTE(v28) = sub_1007706EC();
      if (v28)
      {
        v30 = 0.8;
      }

      else
      {
        v30 = 0.84;
      }

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 2) = v19;
      *(v32 + 3) = v6;
      v32[4] = v15;
      v32[5] = v16;
      v32[6] = v17;
      v32[7] = v18;
      v45 = sub_1007255A8;
      v46 = v32;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_10009AEDC;
      v44 = &unk_1008A25D8;
      v33 = _Block_copy(&aBlock);
      v34 = v19;
      v35 = v6;

      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      *(v36 + 24) = v34;
      v45 = sub_10056D104;
      v46 = v36;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1000513F0;
      v44 = &unk_1008A2628;
      v37 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v38 = v34;

      [v31 animateWithDuration:129 delay:v33 usingSpringWithDamping:v37 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

      _Block_release(v37);
      _Block_release(v33);
      return;
    }

    v20 = v39;
  }

  else
  {
    v20 = v40;
  }
}

id sub_1007250C0(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  sub_1000730D8(1);
  result = [a2 setFrame:{a3, a4, a5, a6}];
  if (*(a1 + OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect + 32) == 1)
  {

    return [a2 setAlpha:0.0];
  }

  return result;
}

void sub_100725178(void *a1)
{
  v2 = v1;
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  if (v4)
  {
    v5 = v4;
    [v4 setAlpha:1.0];
    v6 = [swift_unknownObjectRetain() containerView];
    v7 = [v6 traitCollection];

    LOBYTE(v6) = sub_1007706EC();
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = 0.62;
    }

    else
    {
      v8 = 0.61;
    }

    v9 = [a1 containerView];
    v10 = [v9 traitCollection];

    LOBYTE(v9) = sub_1007706EC();
    if (v9)
    {
      v11 = 0.8;
    }

    else
    {
      v11 = 0.84;
    }

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    v24 = sub_100725504;
    v25 = v13;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10009AEDC;
    v23 = &unk_1008A2538;
    v14 = _Block_copy(&v20);
    v15 = v2;
    v16 = v5;

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v15;
    v24 = sub_10056CF68;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000513F0;
    v23 = &unk_1008A2588;
    v18 = _Block_copy(&v20);
    swift_unknownObjectRetain();
    v19 = v15;

    [v12 animateWithDuration:129 delay:v14 usingSpringWithDamping:v18 initialSpringVelocity:v8 options:0.0 animations:v11 completion:1.0];

    _Block_release(v18);
    _Block_release(v14);
  }
}

id sub_10072546C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionDismissAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007254C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100725504()
{
  v1 = *(v0 + 24);
  sub_1000730D8(1);

  return [v1 setAlpha:0.0];
}

uint64_t sub_100725550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100725568()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_1007255F0(uint64_t a1, double (*a2)(double, double), double a3, double a4)
{
  v9 = sub_10076DFEC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  v22 = a2(a3, a4);
  v23 = [v4 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == 2)
  {
    v25 = 635.0;
  }

  else
  {
    v25 = a3;
  }

  if (v25 <= v22)
  {
    sub_10000A570(a1, v42);
    *(v21 + 3) = &type metadata for CGFloat;
    *(v21 + 4) = &protocol witness table for CGFloat;
    *v21 = v25;
    v34 = *(v10 + 104);
    v34(v21, enum case for Resize.Rule.replaced(_:), v9);
    v35 = enum case for Resize.Rule.unchanged(_:);
    v34(v18, enum case for Resize.Rule.unchanged(_:), v9);
    v34(v15, v35, v9);
    v34(v12, v35, v9);
    v44 = sub_10076DFFC();
    v45 = &protocol witness table for Resize;
    sub_10000DB7C(v43);
    sub_10076E00C();
  }

  else
  {
    sub_10076DACC();
    v27 = v26;
    v29 = v28;
    sub_10000A570(a1, v42);
    sub_10076DACC();
    v31 = v30;
    v33 = v32;
    v44 = sub_10076E0CC();
    v45 = &protocol witness table for Constrain;
    sub_10000DB7C(v43);
    v41 = v31 & 1;
    v40[0] = v33 & 1;
    sub_10076E0DC();
    v42[0] = v27 & 1;
    v41 = v29 & 1;
    sub_10076DAEC();
  }

  sub_10000CF78(v43, v44);
  v36 = [v4 traitCollection];
  sub_10076E0FC();
  v38 = v37;

  sub_10000CD74(v43);
  return v38;
}

char *sub_1007259AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_100766FCC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076702C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100766F4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_100766FBC();
  sub_100766F5C();
  v21 = &v4[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_lockupView]];
  sub_10000A5D4(&unk_100945BF0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100783DD0;
  *(v30 + 32) = sub_10076E88C();
  *(v30 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C4C();

  swift_unknownObjectRelease();

  return v26;
}

uint64_t sub_100725E4C@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = sub_10076D65C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_10076D58C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D55C();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_10076D63C();
  v14 = *&v13[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView();
  v26 = sub_100727240(&qword_100955DD0, type metadata accessor for CarouselItemModuleHeaderView);
  v24[0] = v14;
  v15 = v14;
  sub_10076D64C();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_10000CD74(v24);
  v17 = *&v13[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_lockupView];
  v23[3] = type metadata accessor for CarouselItemModuleLockupView();
  v23[4] = sub_100727240(&qword_100966E50, type metadata accessor for CarouselItemModuleLockupView);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_10000DB7C(v24);
  v18 = v17;
  sub_10076D64C();
  v16(v8, v2);
  sub_10000CD74(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v19);
  sub_10076D57C();
  (*(v10 + 8))(v12, v9);
  return sub_10000CD74(v24);
}

uint64_t sub_100726284()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_10076D67C();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_10076D4FC();
}

uint64_t sub_100726378(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076703C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_100766FEC();
  (*(v8 + 8))(v10, v7);
  sub_10076700C();
  (*(v4 + 8))(v6, v3);
  return sub_10076D5EC();
}

id sub_1007266C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076703C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076704C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v7 + 40))(&v3[v10], v9, v6);
  swift_endAccess();
  sub_10010E96C(a1, a2);
  sub_10076704C();
  v11 = sub_1007670AC();
  v13 = v12;
  v14 = sub_10076706C();
  sub_100588A20(v9, v11, v13, v14, v15);

  (*(v7 + 8))(v9, v6);
  return [v3 setNeedsLayout];
}

void sub_100726874()
{
  v1 = sub_10076BF6C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076BEDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_lockupView);
  if (sub_10076709C())
  {
    v7 = sub_10076BB9C();

    if (v7)
    {
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v3 + 8))(v5, v2);
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v8 = sub_100763ADC();
      sub_10000A61C(v8, qword_10099DDA0);
      sub_1007639AC();
      sub_10076BFCC();
      v9 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView;
      v10 = *(*(v6 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v10 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v11 = *(*(v6 + v9) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10075FD2C();
      sub_100727240(&qword_100941820, &type metadata accessor for ArtworkView);
      v12 = v11;
      sub_100760B8C();
    }
  }
}

uint64_t type metadata accessor for CarouselItemSingleModuleOverlay()
{
  result = qword_100966E38;
  if (!qword_100966E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100726C60()
{
  result = sub_10076703C();
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

uint64_t sub_100726D0C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001CE50(a1);
  sub_10001CE50(a1);
  sub_1000167E0(v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000167E0(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000167E0(a1);
}

void sub_100726DC4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_100727240(&qword_100941820, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100760BFC();
}

void sub_100726E94()
{
  v1 = sub_100766FCC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_100766FBC();
  sub_100766F5C();
  v13 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_100727128(void *a1)
{
  v2 = [a1 touchesForView:*(*(*(v1 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v4 = sub_10077039C();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_10077135C();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_100727200()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100727240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10072729C()
{
  result = qword_10094F080;
  if (!qword_10094F080)
  {
    sub_10076008C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F080);
  }

  return result;
}

uint64_t sub_1007272F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100016F40(0, &qword_100966E60);
    v4 = sub_1007701BC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100727398(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F50C();
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin(v4);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F4FC();
  __chkstk_darwin(v6 - 8);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100764E5C();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v84 - v11;
  v111 = sub_10075EBAC();
  v107 = *(v111 - 8);
  __chkstk_darwin(v111);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v84 - v14;
  __chkstk_darwin(v15);
  v104 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  v23 = sub_10076B96C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v91 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v84 - v27;
  v87 = sub_10000A5D4(&qword_100942C70);
  v109 = sub_10076FCEC();
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F64C();
  v105 = a2;
  sub_10076FC1C();
  v29 = v113;
  ObjectType = swift_getObjectType();
  sub_10076006C();
  v96 = ObjectType;
  v97 = v29;
  v31 = sub_10075EE2C();
  v33 = v32;
  v106 = *(v24 + 8);
  v101 = v23;
  v102 = v28;
  v103 = v24 + 8;
  v106(v28, v23);
  swift_getObjectType();
  sub_10076004C();
  sub_10075ED2C();
  v34 = v107;
  v35 = *(v107 + 16);
  v110 = v22;
  v36 = v111;
  v35(v19, v22, v111);
  v37 = v19;
  v38 = v19;
  v39 = v36;
  v40 = (*(v34 + 88))(v38, v36);
  if (v40 == enum case for LegacyAppState.waiting(_:))
  {
    v41 = v108;
    v85 = v37;
    v42 = v37;
    v43 = v39;
    v35(v108, v42, v39);
    (*(v34 + 96))(v41, v39);
    sub_100729DF0(a1, 1, v31, v33);
    v44 = v109;
    sub_10076FC4C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v45 = *(v34 + 8);
    v45(v110, v43);
    v46 = sub_1007627AC();
    (*(*(v46 - 8) + 8))(v41, v46);
    v45(v85, v43);
    return v44;
  }

  v84 = v33;
  v48 = v106;
  v90 = a1;
  v86 = v31;
  if (v40 == enum case for LegacyAppState.purchased(_:))
  {
    v49 = v104;
    v50 = v111;
    v35(v104, v37, v111);
    v51 = v37;
    v52 = v50;
    v53 = v34;
    (*(v34 + 96))(v49, v52);
    v54 = sub_10076093C();
    v55 = *(v54 - 8);
    if ((*(v55 + 88))(v49, v54) != enum case for PurchaseType.preorder(_:))
    {
      (*(v55 + 8))(v49, v54);
LABEL_6:
      v56 = v102;
      sub_10076006C();
      sub_10075EDFC();
      v48(v56, v101);
      v58 = v98;
      v57 = v99;
      v59 = v100;
      (*(v99 + 104))(v98, enum case for ActionOutcome.performed(_:), v100);
      v47 = v109;
      sub_10076FCBC();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v58, v59);
      v60 = *(v53 + 8);
      v61 = v111;
      v60(v110, v111);
      v60(v51, v61);
      return v47;
    }

LABEL_19:
    v70 = *(v53 + 8);
    v71 = v111;
    v70(v51, v111);
    sub_10072848C(v90, v86, v84, v105);
    v47 = v109;
    sub_10076FC4C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v70(v110, v71);
    return v47;
  }

  v53 = v34;
  v51 = v37;
  if (v40 == enum case for LegacyAppState.updatable(_:) || v40 == enum case for LegacyAppState.downloadable(_:))
  {
    goto LABEL_19;
  }

  if (v40 == enum case for LegacyAppState.paused(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_100728060(v90);
LABEL_13:
    v47 = v109;
    sub_10076FC4C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v64 = *(v34 + 8);
    v64(v110, v63);
    v65 = sub_10075EB1C();
    (*(*(v65 - 8) + 8))(v62, v65);
    v64(v37, v63);
    return v47;
  }

  if (v40 == enum case for LegacyAppState.downloading(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_10072BE6C(v90);
    goto LABEL_13;
  }

  if (v40 != enum case for LegacyAppState.openable(_:))
  {
    if (v40 != enum case for LegacyAppState.buyable(_:) && v40 != enum case for LegacyAppState.unknown(_:))
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v66 = v92;
  v67 = v111;
  v35(v92, v37, v111);
  (*(v34 + 96))(v66, v67);

  (*(v94 + 32))(v93, v66, v95);
  v68 = v90;
  if (sub_10076005C())
  {
    sub_10072848C(v68, v86, v84, v105);
    v69 = v110;
  }

  else
  {
    v73 = v91;
    sub_10076006C();
    v74 = sub_10076B91C();
    v75 = v101;
    v48(v73, v101);
    if (v74)
    {
      v108 = v74;
      sub_1007654EC();
      sub_10076F63C();
      if (v112)
      {
        v76 = v102;
        sub_10076006C();
        sub_1007654CC();

        v48(v76, v75);
      }

      v69 = v110;
      v67 = v111;
      sub_10076006C();
      (*(v94 + 16))(v88, v93, v95);
      sub_10076F4DC();
      sub_10075EA9C();
      swift_allocObject();
      v82 = sub_10075EA7C();
      sub_100564010(v82, 1, v105);
    }

    else
    {
      v77 = v102;
      sub_10076006C();
      v78 = sub_10076B92C();
      v80 = v79;
      v48(v77, v75);
      sub_10072B7A0();
      swift_allocError();
      *v81 = v78;
      *(v81 + 8) = v80;
      *(v81 + 16) = 0;
      sub_10076FC7C();
      v69 = v110;
      v67 = v111;
    }
  }

  v47 = v109;
  sub_10076FC4C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v94 + 8))(v93, v95);
  v83 = *(v53 + 8);
  v83(v69, v67);
  v83(v37, v67);
  return v47;
}

uint64_t sub_100728060(uint64_t a1)
{
  v2 = sub_10076B96C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  sub_10076006C();
  v9 = sub_10076B91C();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10000A5D4(&qword_100942C70);
    v11 = sub_10076FCEC();
    sub_10000A5D4(&unk_100942870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007841E0;
    *(v12 + 32) = v9;
    sub_100016F40(0, &qword_1009492D0);
    v13 = v9;
    isa = sub_1007701AC().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_10072C29C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007272F4;
    aBlock[3] = &unk_1008A2758;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v20 = sub_10076FD4C();
    sub_10000A61C(v20, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_10000A5D4(&qword_100942C70);
    sub_10076006C();
    v21 = sub_10076B92C();
    v23 = v22;
    v10(v5, v2);
    sub_10072B7A0();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return sub_10076FC7C();
  }
}

id sub_10072848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v7 = sub_10075EBAC();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076B96C();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_100966E68);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v40 = sub_1007618FC();
  v16 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdHeaderProvider();
  v38 = a4;
  sub_10076F63C();
  if (v42[0])
  {

    sub_10000A5D4(&qword_100966E70);
    sub_10076ACAC();
  }

  swift_unknownObjectRetain();

  sub_1007618EC();
  v18 = v40;
  if ((*(v16 + 48))(v15, 1, v40) == 1)
  {
    sub_10000CFBC(v15, &qword_100966E68);
    sub_10000A5D4(&qword_100942C70);
    sub_10072B7A0();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 7;
    v20 = sub_10076FC7C();

    return v20;
  }

  (*(v16 + 32))(v39, v15, v18);
  sub_10000A5D4(&qword_100942C70);
  v34 = sub_10076FCEC();
  sub_1007654EC();
  sub_10076F63C();
  if (v42[0])
  {
    sub_10076006C();
    swift_getObjectType();
    sub_10075ED1C();
    sub_10076547C();

    (*(v36 + 8))(v9, v7);
    (*(v35 + 8))(v12, v10);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v22 = result;
    v23 = sub_10076FF6C();
    v24 = [v22 applicationIsInstalled:v23];

    if (v24)
    {
      v36 = v16;
      sub_10076007C();
      if (v25 && (v26 = objc_allocWithZone(LSApplicationRecord), v27 = sub_10072B7F4(), v27))
      {

        sub_100728B64(a1, a2, v41, v38);
        v20 = v34;
        sub_10076FC4C();

        (*(v36 + 8))(v39, v40);
      }

      else
      {
        sub_10076C12C();
        sub_10076F64C();
        v28 = v38;
        sub_10076FC1C();
        v29 = v41;
        sub_10076C11C();
        sub_10072C2CC(v37, v42);
        v30 = swift_allocObject();
        v20 = v34;
        v30[2] = v34;
        v30[3] = a1;
        sub_10072C3F0(v42, (v30 + 4));
        v30[6] = v28;
        v30[7] = a2;
        v30[8] = v29;
        v31 = sub_100016F40(0, &qword_1009471F0);
        swift_unknownObjectRetain();

        v32 = sub_10077068C();
        v42[3] = v31;
        v42[4] = &protocol witness table for OS_dispatch_queue;
        v42[0] = v32;
        sub_10076FC6C();

        (*(v36 + 8))(v39, v40);
        sub_10000CD74(v42);
      }
    }

    else
    {
      sub_10072B8C0(a1, v38);
      v33 = v16;
      v20 = v34;
      sub_10076FC4C();

      (*(v33 + 8))(v39, v40);
    }

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100728B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v4 = sub_10075EBAC();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007627AC();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v50 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076B96C();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  sub_10076007C();
  if (!v15)
  {
    goto LABEL_4;
  }

  v42 = v7;
  v16 = objc_allocWithZone(LSApplicationRecord);

  v17 = sub_10072B7F4();
  if (!v17)
  {

LABEL_4:
    sub_10000A5D4(&qword_100942C70);
    v18 = sub_10076007C();
    v20 = v19;
    sub_10072B7A0();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 3;
    return sub_10076FC7C();
  }

  v23 = objc_allocWithZone(ASDSystemAppRequest);
  v24 = sub_10076FF6C();

  v25 = [v23 initWithBundleID:v24];

  sub_10076006C();
  v26 = sub_10076B91C();
  v40 = *(v47 + 8);
  v41 = v47 + 8;
  v40(v14, v48);
  [v25 setStoreItemID:v26];

  v39 = v25;
  [v25 setUserInitiated:1];
  swift_getObjectType();
  sub_10075ED1C();
  v27 = v43;
  v28 = (*(v43 + 88))(v6, v4);
  if (v28 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v27 + 8))(v6, v4);
    (*(v49 + 104))(v50, enum case for InstallationType.redownload(_:), v42);
  }

  else
  {
    v29 = *(v49 + 104);
    if (v28 == enum case for LegacyAppState.buyable(_:) || v28 == enum case for LegacyAppState.unknown(_:))
    {
      v29(v50, enum case for InstallationType.purchase(_:), v42);
    }

    else
    {
      v29(v50, enum case for InstallationType.unknown(_:), v42);
      (*(v27 + 8))(v6, v4);
    }
  }

  v30 = sub_10075ECFC();
  v31 = v46;
  if (!v30)
  {
    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    sub_10076FC1C();
  }

  swift_getObjectType();
  sub_10076006C();
  sub_10075EE0C();
  v32 = v48;
  v40(v14, v48);
  sub_10076006C();
  sub_10000A5D4(&qword_100942C70);
  v33 = sub_10076FCEC();
  v34 = v47;
  (*(v47 + 16))(v11, v14, v32);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  (*(v34 + 32))(v36 + v35, v11, v32);
  aBlock[4] = sub_10072C654;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DA39C;
  aBlock[3] = &unk_1008A2870;
  v37 = _Block_copy(aBlock);

  v38 = v39;
  [v39 startWithErrorHandler:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();

  v40(v14, v32);
  (*(v49 + 8))(v50, v42);
  return v33;
}

void sub_1007291C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v54 = a2;
  v8 = sub_10076B96C();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F50C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076190C();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for PurchaseResult.askToBuy(_:))
  {
    (*(v16 + 96))(v19, v15);
    v21 = [objc_opt_self() defaultCenter];
    v22 = sub_10076A3DC();
    sub_10000A5D4(&unk_100947120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v55 = sub_10076A3EC();
    v56 = v24;
    sub_10077140C();
    *(inited + 96) = v8;
    sub_10000DB7C((inited + 72));
    sub_10076B94C();
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B20);
    isa = sub_10076FE3C().super.isa;

    [v21 postNotificationName:v22 object:0 userInfo:isa];

    (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
    sub_10076FCBC();
    (*(v12 + 8))(v14, v11);
    return;
  }

  v49 = v10;
  v48 = v8;
  if (v20 != enum case for PurchaseResult.completed(_:))
  {
    if (v20 == enum case for PurchaseResult.canceled(_:))
    {
      v36 = v49;
      sub_10076006C();
      v37 = sub_10076B92C();
      v39 = v38;
      (*(v53 + 8))(v36, v48);
      sub_10072B7A0();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      v41 = 1;
    }

    else
    {
      if (v20 != enum case for PurchaseResult.unknown(_:))
      {
        (*(v16 + 8))(v19, v15);
        return;
      }

      v42 = v49;
      sub_10076006C();
      v43 = sub_10076B92C();
      v45 = v44;
      (*(v53 + 8))(v42, v48);
      sub_10072B7A0();
      swift_allocError();
      *v40 = v43;
      *(v40 + 8) = v45;
      v41 = 2;
    }

    *(v40 + 16) = v41;
    sub_10076FCAC();

    return;
  }

  (*(v16 + 96))(v19, v15);
  v26 = v19[2];
  (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
  sub_10076FCBC();
  (*(v12 + 8))(v14, v11);
  v27 = sub_10076001C();
  if (v27)
  {
    sub_100563DC4(v27, 1, v52);
  }

  v28 = v49;
  if (v26)
  {
    type metadata accessor for InAppMessagesManager();
    sub_10076F64C();
    sub_10076FC1C();
    v29 = *(v55 + 16);
    v30 = objc_allocWithZone(IAMCountableEvent);
    v31 = sub_10076FF6C();
    v32 = [v30 initWithName:v31];

    [v29 receiveEvent:v32];
    sub_1002846D4();
  }

  sub_10076601C();
  v33 = sub_10076600C();
  v34 = sub_100765FEC();

  if (v34)
  {
    swift_getObjectType();
    v35 = sub_10075ECFC();
    if (v35)
    {
      v55 = v35;
    }

    else
    {
      sub_10000A5D4(&unk_10094A8C0);
      sub_10076F64C();
      sub_10076FC1C();
    }

    v46 = v48;
    swift_getObjectType();
    sub_10076006C();
    sub_10075EE4C();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v28, v46);
  }
}

uint64_t sub_1007298E4()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000DB7C(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_10076F32C();
  sub_10000CFBC(v4, &unk_1009434C0);
  sub_10076FBEC();
}

uint64_t sub_100729AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10076B96C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F64C();
  sub_10076FC1C();
  v11 = v17[2];
  v12 = v17[3];
  if (a1)
  {
    swift_errorRetain();
    sub_10076FCAC();
    swift_getObjectType();
    sub_10075EE5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17[1] = swift_getObjectType();
    (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v12;
    (*(v8 + 32))(v16 + v14, v10, v7);
    *(v16 + v15) = a3;
    swift_unknownObjectRetain();

    sub_10075EE3C();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100729CC8()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075EE5C();
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  sub_10076FCBC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100729DF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v59 = a2;
  v65 = sub_10076D13C();
  v61 = *(v65 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_10076B96C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v62 = a1;
  sub_10076006C();
  v17 = sub_10076B91C();
  v18 = *(v11 + 8);
  v18(v16, v10);
  if (v17)
  {
    sub_10000A5D4(&qword_100942C70);
    v19 = sub_10076FCEC();
    v57 = a3;
    v58 = v19;
    swift_getObjectType();
    v20 = sub_10075ECDC() & v59;
    sub_10076F8EC();
    sub_10076F8DC();
    sub_10076D12C();
    sub_1007707EC();
    v21 = sub_10076F8DC();
    v59 = v20 & 1;
    if (v20)
    {
      v22 = "ActionDispatcher[ASDAppQuery.BetaApps]:cancelAction";
    }

    else
    {
      v22 = "ActionDispatcher[ASDAppQuery]:cancelAction";
    }

    if (v20)
    {
      v23 = 51;
    }

    else
    {
      v23 = 42;
    }

    v54 = v23;
    v55 = v22;
    if (v20)
    {
      v24 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v24 = &selRef_queryForStoreItemIDs_;
    }

    v56 = v9;
    sub_10076D11C();

    sub_10000A5D4(&unk_100942870);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1007841E0;
    *(v25 + 32) = v17;
    sub_100016F40(0, &qword_1009492D0);
    v52 = v17;
    isa = sub_1007701AC().super.isa;

    v53 = [objc_opt_self() *v24];

    v27 = v61;
    v28 = v9;
    v29 = v65;
    (*(v61 + 16))(v63, v28, v65);
    sub_10072C2CC(v60, v67);
    v30 = (*(v27 + 80) + 33) & ~*(v27 + 80);
    v31 = v30 + v6;
    v32 = (v30 + v6) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v54;
    *(v36 + 16) = v55;
    *(v36 + 24) = v37;
    *(v36 + 32) = 2;
    (*(v27 + 32))(v36 + v30, v63, v29);
    *(v36 + v31) = v59;
    sub_10072C3F0(v67, v36 + v32 + 8);
    *(v36 + v33) = v62;
    v38 = (v36 + v34);
    v39 = v58;
    v40 = v64;
    *v38 = v57;
    v38[1] = v40;
    *(v36 + v35) = v39;
    v41 = v52;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
    aBlock[4] = sub_10072C428;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007272F4;
    aBlock[3] = &unk_1008A27F8;
    v42 = _Block_copy(aBlock);
    v43 = v41;

    swift_unknownObjectRetain();

    v44 = v53;
    [v53 executeQueryWithResultHandler:v42];
    _Block_release(v42);

    (*(v27 + 8))(v56, v65);
    return v39;
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v46 = sub_10076FD4C();
    sub_10000A61C(v46, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_10000A5D4(&qword_100942C70);
    sub_10076006C();
    v47 = sub_10076B92C();
    v49 = v48;
    v18(v13, v10);
    sub_10072B7A0();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = 0;
    return sub_10076FC7C();
  }
}

uint64_t sub_10072A46C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v44 = a8;
  v45 = a13;
  v42 = a10;
  v43 = a11;
  v49 = a9;
  v50 = a12;
  v15 = sub_10076F50C();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076B96C();
  v47 = *(v18 - 8);
  v48 = v18;
  __chkstk_darwin(v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007707DC();
  sub_10076F8EC();
  v20 = sub_10076F8DC();
  sub_10076D11C();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_10077158C())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = sub_10077149C();
        goto LABEL_7;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(a1 + 32);
LABEL_7:
        v22 = v21;
        v23 = [v21 progress];
        if (v23)
        {
          v24 = v23;
          [v23 cancel];
          v25 = v41;
          (*(v41 + 104))(v17, enum case for ActionOutcome.performed(_:), v15);
          sub_10076FCBC();

          return (*(v25 + 8))(v17, v15);
        }

        if (qword_1009412E8 != -1)
        {
          swift_once();
        }

        v27 = sub_10076FD4C();
        sub_10000A61C(v27, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100783C60;
        sub_10076F27C();
        v52 = sub_100016F40(0, &qword_1009492D0);
        v51[0] = v45;
        v28 = v45;
        sub_10076F28C();
        sub_10000CFBC(v51, &unk_1009434C0);
        sub_10076F27C();
        sub_10076FBEC();

        v29 = v46;
        sub_10076006C();
        v30 = sub_10076B92C();
        v32 = v31;
        (*(v47 + 8))(v29, v48);
        sub_10072B7A0();
        swift_allocError();
        *v33 = v30;
        *(v33 + 8) = v32;
        *(v33 + 16) = 4;
        sub_10076FCAC();
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((a7 & 1) == 0)
  {
    if (qword_1009412E8 == -1)
    {
LABEL_18:
      v34 = sub_10076FD4C();
      sub_10000A61C(v34, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783C60;
      sub_10076F27C();
      v52 = sub_100016F40(0, &qword_1009492D0);
      v51[0] = v45;
      v35 = v45;
      sub_10076F28C();
      sub_10000CFBC(v51, &unk_1009434C0);
      sub_10076F27C();
      sub_10076FBEC();

      v36 = v46;
      sub_10076006C();
      v37 = sub_10076B92C();
      v39 = v38;
      (*(v47 + 8))(v36, v48);
      sub_10072B7A0();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      *(v40 + 16) = 4;
      sub_10076FCAC();
    }

LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  sub_100729DF0(v49, 0, v42, v43);
  sub_10076FC4C();
}

uint64_t sub_10072AB50(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10076F50C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076B96C();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v26 = sub_10076FD4C();
    sub_10000A61C(v26, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783C60;
    sub_10076F27C();
    v37 = sub_100016F40(0, &qword_1009492D0);
    v36[0] = a3;
    v27 = a3;
    sub_10076F28C();
    sub_10000CFBC(v36, &unk_1009434C0);
    sub_10076F27C();
    sub_10076FBEC();

    sub_10076006C();
    v28 = sub_10076B92C();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_10072B7A0();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 5;
    sub_10076FCAC();
  }

  if (!sub_10077158C())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_10077149C();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 pause];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      sub_10076FCBC();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_1009412E8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = sub_10076FD4C();
  v32 = sub_10000A61C(v20, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  sub_10076F27C();
  v37 = sub_100016F40(0, &qword_1009492D0);
  v36[0] = a3;
  v21 = a3;
  sub_10076F28C();
  sub_10000CFBC(v36, &unk_1009434C0);
  sub_10076F27C();
  sub_10076FBEC();

  sub_10076006C();
  v22 = sub_10076B92C();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_10072B7A0();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 5;
  sub_10076FCAC();
}

uint64_t sub_10072B174(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10076F50C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076B96C();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v26 = sub_10076FD4C();
    sub_10000A61C(v26, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783C60;
    sub_10076F27C();
    v37 = sub_100016F40(0, &qword_1009492D0);
    v36[0] = a3;
    v27 = a3;
    sub_10076F28C();
    sub_10000CFBC(v36, &unk_1009434C0);
    sub_10076F27C();
    sub_10076FBEC();

    sub_10076006C();
    v28 = sub_10076B92C();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_10072B7A0();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 6;
    sub_10076FCAC();
  }

  if (!sub_10077158C())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_10077149C();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 resume];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      sub_10076FCBC();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_1009412E8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = sub_10076FD4C();
  v32 = sub_10000A61C(v20, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  sub_10076F27C();
  v37 = sub_100016F40(0, &qword_1009492D0);
  v36[0] = a3;
  v21 = a3;
  sub_10076F28C();
  sub_10000CFBC(v36, &unk_1009434C0);
  sub_10076F27C();
  sub_10076FBEC();

  sub_10076006C();
  v22 = sub_10076B92C();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_10072B7A0();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 6;
  sub_10076FCAC();
}

unint64_t sub_10072B7A0()
{
  result = qword_100966E58;
  if (!qword_100966E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966E58);
  }

  return result;
}

id sub_10072B7F4()
{
  v1 = sub_10076FF6C();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_10075DA4C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10072B8C0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_10076253C();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B96C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v31 = _swiftEmptyArrayStorage;
  sub_10076F4DC();
  sub_10076006C();
  (*(v5 + 56))(v10, 0, 1, v4);
  sub_10075EC8C();
  swift_allocObject();
  v12 = sub_10075EC7C();

  sub_10077019C();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  v24 = v12;
  sub_10077025C();
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_10077145C(35);

  v29 = 0xD000000000000021;
  v30 = 0x80000001007F7A90;
  sub_10076006C();
  v13 = sub_10076B92C();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v32._countAndFlagsBits = v13;
  v32._object = v15;
  sub_1007700CC(v32);

  sub_10076F4DC();
  sub_1007631AC();
  swift_allocObject();
  if (sub_10076319C())
  {

    sub_10077019C();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  sub_10076F4DC();
  sub_10076167C();
  swift_allocObject();
  v16 = sub_10076165C();
  v33._countAndFlagsBits = 0xD000000000000023;
  v33._object = 0x80000001007F7AC0;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v17 = sub_1007622EC(v33, v36);
  v19 = v18;
  v34._object = 0x80000001007F7AF0;
  v34._countAndFlagsBits = 0xD00000000000001ALL;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_1007622EC(v34, v37);
  v35._countAndFlagsBits = 0xD00000000000001CLL;
  v35._object = 0x80000001007F7B10;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_1007622EC(v35, v38);
  sub_10000A5D4(&qword_100966E78);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100783DD0;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 48) = v16;
  *(v20 + 56) = 0u;

  sub_10076F4DC();
  (*(v25 + 104))(v27, enum case for AlertActionStyle.normal(_:), v26);
  sub_10075FAAC();
  swift_allocObject();
  v21 = sub_10075FA7C();
  v22 = sub_100564070(v21, 1, v28);

  return v22;
}

uint64_t sub_10072BE6C(uint64_t a1)
{
  v2 = sub_10076B96C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  sub_10076006C();
  v9 = sub_10076B91C();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10000A5D4(&qword_100942C70);
    v11 = sub_10076FCEC();
    sub_10000A5D4(&unk_100942870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007841E0;
    *(v12 + 32) = v9;
    sub_100016F40(0, &qword_1009492D0);
    v13 = v9;
    isa = sub_1007701AC().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_10072C2C0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007272F4;
    aBlock[3] = &unk_1008A27A8;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v20 = sub_10076FD4C();
    sub_10000A61C(v20, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_10000A5D4(&qword_100942C70);
    sub_10076006C();
    v21 = sub_10076B92C();
    v23 = v22;
    v10(v5, v2);
    sub_10072B7A0();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return sub_10076FC7C();
  }
}

uint64_t sub_10072C2A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10072C304()
{
  v1 = sub_10076D13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10072C428(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_10076D13C() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10072A46C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8, *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10072C51C()
{

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10072C588()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10072C654(uint64_t a1)
{
  v3 = *(sub_10076B96C() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100729AB0(a1, v4, v5, v6);
}

uint64_t sub_10072C6C8()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10072C7A0()
{
  sub_10076B96C();

  return sub_100729CC8();
}

uint64_t sub_10072C830(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_10072C84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10072C894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_10072C8D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10072C91C()
{
  type metadata accessor for DebugMetricsViewModel();
  swift_allocObject();
  return sub_10072E038();
}

uint64_t sub_10072C954@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_10000A5D4(&qword_100966F70);
  __chkstk_darwin(v2 - 8);
  v57 = &v37 - v3;
  v4 = sub_10076EC2C();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10076EA2C();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10000A5D4(&qword_100966F78);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v37 - v8;
  v45 = sub_10000A5D4(&qword_100966F80);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v37 - v10;
  v47 = sub_10000A5D4(&qword_100966F88);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v38 = &v37 - v12;
  v50 = sub_10000A5D4(&qword_100966F90);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v37 - v13;
  v14 = *(v1 + 16);
  v54 = *(v1 + 8);
  v53 = v14;
  v52 = *(v1 + 24);
  type metadata accessor for DebugMetricsViewModel();
  sub_10072E7E8(&qword_100966F98, type metadata accessor for DebugMetricsViewModel);
  sub_10076E9CC();
  v44 = v1;
  v67 = *(v1 + 32);
  v15 = *(v1 + 48);
  v62 = *(v1 + 32);
  v63 = v15;
  v37 = v15;
  sub_10000A5D4(&qword_100966FA0);
  sub_10076EF2C();
  v16 = sub_10072D22C(v65, *(&v65 + 1));

  *&v62 = v16;
  v59 = &v62;
  v60 = sub_10072D680;
  v61 = 0;
  sub_10000A5D4(&qword_100966FA8);
  sub_10072E548();
  sub_10076ED7C();

  sub_10076EA1C();
  v17 = sub_100071820(&qword_100966FC8, &qword_100966F78);
  v18 = v11;
  v19 = v39;
  v20 = v42;
  sub_10076EEEC();
  (*(v43 + 8))(v7, v20);
  (*(v40 + 8))(v9, v19);
  v65 = v67;
  v66 = v15;
  sub_10076EF3C();
  v21 = v49;
  sub_10076EC1C();
  *&v62 = v19;
  *(&v62 + 1) = v20;
  v63 = v17;
  v64 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v38;
  sub_10076EE3C();

  (*(v55 + 8))(v21, v56);
  (*(v46 + 8))(v18, v22);
  v62 = __PAIR128__(OpaqueTypeConformance2, v22);
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  v26 = v47;
  sub_10076EE5C();
  (*(v48 + 8))(v23, v26);
  v27 = v57;
  sub_10076ECDC();
  v28 = sub_10076ECEC();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  *&v62 = v26;
  *(&v62 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v58;
  v30 = v50;
  sub_10076EECC();
  sub_10000CFBC(v27, &qword_100966F70);
  (*(v51 + 8))(v25, v30);
  v31 = v44;
  v62 = v67;
  v68 = v37;
  v32 = swift_allocObject();
  v33 = *(v31 + 16);
  *(v32 + 16) = *v31;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v31 + 32);
  *(v32 + 64) = *(v31 + 48);
  v34 = (v29 + *(sub_10000A5D4(&qword_100966FD0) + 36));
  *v34 = sub_10072E654;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;

  sub_10072E65C();
  sub_1000B8A4C(&v62, &v65);
  return sub_10072E664(&v68, &v65);
}

void *sub_10072D22C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949DF0);
  __chkstk_darwin(v4 - 8);
  v38 = &v29 - v5;
  v29 = sub_1007630EC();
  v39 = *(v29 - 8);
  __chkstk_darwin(v29);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  if (!a2)
  {
    goto LABEL_17;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10076E95C();

    return v42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10076E95C();

  result = v42;
  v36 = *(v42 + 16);
  if (!v36)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_19:

    return v13;
  }

  v34 = a1;
  v35 = a2;
  v12 = 0;
  v31 = (v39 + 32);
  v32 = v39 + 16;
  v30 = (v39 + 8);
  v13 = _swiftEmptyArrayStorage;
  v14 = v29;
  v33 = v42;
  while (v12 < result[2])
  {
    v15 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v16 = *(v39 + 72);
    (*(v39 + 16))(v9, result + v15 + v16 * v12, v14);
    v17 = v14;
    sub_1007630CC();
    v18 = sub_10076FE5C();
    v20 = v19;

    v42 = v18;
    v43 = v20;
    v40 = v34;
    v41 = v35;
    v21 = sub_10075DE9C();
    v22 = v38;
    (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
    sub_10002564C();
    sub_10077122C();
    v24 = v23;
    sub_10000CFBC(v22, &qword_100949DF0);

    if (v24)
    {
      (*v30)(v9, v17);
      v14 = v17;
    }

    else
    {
      v25 = *v31;
      (*v31)(v37, v9, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v17;
      }

      else
      {
        sub_1004BBDF0(0, v13[2] + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v28 = v13[2];
      v27 = v13[3];
      if (v28 >= v27 >> 1)
      {
        sub_1004BBDF0(v27 > 1, v28 + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v13[2] = v28 + 1;
      v25(v13 + v15 + v28 * v16, v37, v14);
    }

    ++v12;
    result = v33;
    if (v36 == v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10072D680(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  v5 = sub_1007630EC();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  sub_10072E7E8(&qword_100958688, type metadata accessor for DebugMetricsEventDetailView.Summary);
  sub_10072E7E8(&qword_100967018, type metadata accessor for DebugMetricsEventDetailView);
  return sub_10076EA0C();
}

uint64_t sub_10072D7F4(void *a1)
{
  type metadata accessor for DebugMetricsViewModel();
  sub_10072E7E8(&qword_100966F98, type metadata accessor for DebugMetricsViewModel);
  *(sub_10076E9CC() + OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel_recorder) = *a1;
  swift_retain_n();

  sub_10072D950();
}

uint64_t sub_10072D8D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10076E95C();

  return v1;
}

uint64_t sub_10072D950()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100966FD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10000A5D4(&qword_100966FE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_10000A5D4(&qword_100966FE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  if (_swiftEmptyArrayStorage >> 62 && sub_10077158C())
  {
    v13 = sub_10017AA74(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = _swiftEmptySetSingleton;
  }

  v14 = OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v14) = v13;

  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel_recorder))
  {
    v24 = *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel_recorder);

    sub_100767FBC();
    sub_100085204();
    v16 = sub_10077068C();
    v22 = v8;
    v23 = v9;
    v17 = v16;
    v25 = v16;
    v18 = sub_10077066C();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_100071820(&qword_100966FF0, &qword_100966FE0);
    sub_10072E7E8(&qword_100966FF8, sub_100085204);
    v19 = v22;
    sub_10076E98C();
    sub_10000CFBC(v4, &qword_100966FD8);

    (*(v6 + 8))(v19, v5);
    swift_allocObject();
    swift_weakInit();
    sub_100071820(&qword_100967000, &qword_100966FE8);
    v20 = v23;
    sub_10076E99C();

    (*(v10 + 8))(v12, v20);
    swift_beginAccess();
    sub_10076E90C();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10072DD68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1005D5650(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10076E96C();
  }

  return result;
}

uint64_t sub_10072DE04()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel__eventsSnapshot;
  v2 = sub_10000A5D4(&qword_100966F68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugMetricsViewModel()
{
  result = qword_100966EC0;
  if (!qword_100966EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072DF20()
{
  sub_10072DFC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10072DFC8()
{
  if (!qword_100966ED0)
  {
    sub_10000CE78(&unk_100966ED8);
    v0 = sub_10076E97C();
    if (!v1)
    {
      atomic_store(v0, &qword_100966ED0);
    }
  }
}

uint64_t sub_10072E038()
{
  v1 = sub_10000A5D4(&qword_100966F68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel__eventsSnapshot;
  v8[1] = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_100966ED8);
  sub_10076E94C();
  (*(v2 + 32))(v0 + v5, v4, v1);
  if (_swiftEmptyArrayStorage >> 62 && sub_10077158C())
  {
    v6 = sub_10017AA74(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel_cancellables) = v6;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtensionP33_CC57A79F670941418A3BB78518FB454121DebugMetricsViewModel_recorder) = 0;
  return v0;
}

uint64_t sub_10072E18C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076E93C();
  *a1 = result;
  return result;
}

uint64_t sub_10072E1DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10076E95C();

  *a1 = v3;
  return result;
}

uint64_t sub_10072E25C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10076E96C();
}

uint64_t sub_10072E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10000A5D4(&unk_100966ED8);
  sub_10075DDBC();
  sub_10000A5D4(&qword_100966FC0);
  sub_100071820(&qword_100967008, &unk_100966ED8);
  sub_100071820(&qword_100966FB8, &qword_100966FC0);
  sub_10072E7E8(&qword_100967010, &type metadata accessor for DebugMetricsEvent);
  return sub_10076EF5C();
}

uint64_t sub_10072E47C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10072E4C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10072E548()
{
  result = qword_100966FB0;
  if (!qword_100966FB0)
  {
    sub_10000CE78(&qword_100966FA8);
    sub_100071820(&qword_100966FB8, &qword_100966FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966FB0);
  }

  return result;
}

uint64_t sub_10072E5F8()
{

  sub_10072E64C();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10072E664(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100957B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10072E6D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10072E71C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10072E77C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1007630EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_10072E7E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10072E834()
{
  result = qword_100967020;
  if (!qword_100967020)
  {
    sub_10000CE78(&qword_100966FD0);
    sub_10000CE78(&qword_100966F90);
    sub_10000CE78(&qword_100966F88);
    sub_10000CE78(&qword_100966F80);
    sub_10000CE78(&qword_100966F78);
    sub_10076EA2C();
    sub_100071820(&qword_100966FC8, &qword_100966F78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100967020);
  }

  return result;
}

uint64_t sub_10072EA0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076FF6C();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_10075F2DC();
    }
  }

  else
  {
    sub_10000CFBC(v9, &unk_1009434C0);
  }

  v6 = sub_10075F2FC();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

uint64_t sub_10072EB44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_10095D440);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_1005E9444(a1, &v12 - v5);
  v7 = sub_10075F2FC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_10095D440);
    v9 = sub_10076FF6C();
    [v2 removeObjectForKey:v9];
  }

  else
  {
    sub_10075F2EC();
    (*(v8 + 8))(v6, v7);
    v10 = sub_10076FF6C();

    v9 = sub_10076FF6C();
    [v2 setObject:v10 forKey:v9];
  }

  return sub_10000CFBC(a1, &qword_10095D440);
}

uint64_t sub_10072ED1C()
{
  v1 = sub_10076FF6C();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1001E2870();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CFBC(v7, &unk_1009434C0);
    return 0;
  }
}

uint64_t sub_10072EE14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076FF6C();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_10075DD7C();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000CFBC(v11, &unk_1009434C0);
    v8 = sub_10075DD7C();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10072EF70()
{
  v1 = sub_10076FF6C();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1001E2870();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CFBC(v7, &unk_1009434C0);
    return 0;
  }
}

uint64_t sub_10072F068@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076FF6C();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_10075DD7C();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000CFBC(v11, &unk_1009434C0);
    v8 = sub_10075DD7C();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10072F1C4()
{
  v1 = sub_10076FF6C();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1001E2870();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CFBC(v7, &unk_1009434C0);
    return 0;
  }
}

uint64_t sub_10072F2BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076FF6C();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_10075DD7C();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000CFBC(v11, &unk_1009434C0);
    v8 = sub_10075DD7C();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10072F418()
{
  v1 = sub_10076FF6C();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1001E2870();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CFBC(v7, &unk_1009434C0);
    return 0;
  }
}

uint64_t sub_10072F510@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076FF6C();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_10075DD7C();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000CFBC(v11, &unk_1009434C0);
    v8 = sub_10075DD7C();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

id sub_10072F66C()
{
  v1 = ASKBuildTypeGetCurrent();
  sub_10000A5D4(&qword_100967028);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100783C60;
  v3 = ASKBuildTypeDebug;
  v4 = ASKBuildTypeConvergence;
  *(v2 + 32) = ASKBuildTypeDebug;
  *(v2 + 40) = v4;
  v5 = ASKBuildTypeInternal;
  *(v2 + 48) = ASKBuildTypeInternal;
  type metadata accessor for BuildType(0);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  isa = sub_1007701AC().super.isa;

  IsAnyOf = ASKBuildTypeIsAnyOf();

  if (IsAnyOf)
  {
    v11 = sub_10076FF6C();
    v12 = [v0 objectForKey:v11];

    if (v12)
    {
      sub_10077123C();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      sub_1001E2870();
      if (swift_dynamicCast())
      {
        v13 = [v15 BOOLValue];

        return v13;
      }
    }

    else
    {
      sub_10000CFBC(v18, &unk_1009434C0);
    }
  }

  return 0;
}

id sub_10072F844()
{
  v1 = sub_10076FF6C();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1001E2870();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_10000CFBC(v8, &unk_1009434C0);
  }

  return 0;
}

uint64_t sub_10072F954()
{
  v1 = sub_10076FF6C();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000CFBC(v7, &unk_1009434C0);
  }

  return 1;
}

uint64_t sub_10072FA90(uint64_t a1)
{
  v2 = sub_100767B4C();
  __chkstk_darwin(v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100767B6C();
  v67 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076C38C();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_10095EC88);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  sub_10076453C();
  sub_1007303E4(&unk_10095EC20, &type metadata accessor for ProductDescription);
  result = sub_10076332C();
  v15 = aBlock[0];
  if (aBlock[0])
  {
    v63 = v5;
    sub_100166C60();
    v68 = a1;
    sub_10076335C();
    sub_10076FD8C();
    v16 = aBlock[0];
    v61 = v10;
    v62 = v7;
    v59 = v4;
    v60 = v11;
    v58 = v13;
    v55 = v15;
    if (LOBYTE(aBlock[0]) == 2)
    {
      sub_10076452C();
      v16 = sub_10076C56C();
    }

    v57 = sub_10076452C();
    if (v16)
    {
      v17 = sub_10076C57C();
      v54 = 3;
    }

    else
    {
      v17 = sub_10076C5AC();
      v54 = 0;
    }

    v18 = [sub_100630CB4() traitCollection];
    swift_unknownObjectRelease();
    v19 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v17];
    v20 = [v17 length];
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = 1;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1000275EC;
    *(v22 + 24) = v21;
    v78 = sub_1000ACB04;
    v79 = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v77 = &unk_1008A2AA0;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    v25 = v19;

    v56 = v17;
    [v17 enumerateAttributesInRange:0 options:v20 usingBlock:{0x100000, v23}];

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = sub_10076451C();
      v29 = sub_10076450C();
      v30 = sub_1007644FC();
      if (sub_1007644EC())
      {
        v31 = sub_10076B8EC();
        v52 = v32;
        v53 = v31;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v33 = sub_100630CB4();
      swift_getKeyPath();
      v34 = v64;
      sub_10076338C();

      sub_10076C2FC();
      (*(v65 + 8))(v34, v66);
      v35 = swift_allocObject();
      v36 = v54;
      *(v35 + 16) = v27;
      *(v35 + 24) = v36;
      v37 = sub_10076DDDC();
      swift_allocObject();
      v38 = v27;
      v39 = sub_10076DD9C();
      v77 = v37;
      v78 = &protocol witness table for LayoutViewPlaceholder;
      aBlock[0] = v39;
      v40 = swift_allocObject();
      v40[2] = v28;
      v40[3] = v29;
      v40[4] = v30;
      v40[5] = v33;
      swift_allocObject();

      swift_unknownObjectRetain();
      v41 = sub_10076DD9C();
      v75[3] = v37;
      v75[4] = &protocol witness table for LayoutViewPlaceholder;
      v75[0] = v41;
      v42 = type metadata accessor for DeveloperLinkView();
      v43 = swift_allocObject();
      v44 = v52;
      v45 = v53;
      v43[2] = v42;
      v43[3] = v45;
      v43[4] = v44;
      swift_allocObject();
      v46 = sub_10076DD9C();
      v74[3] = v37;
      v74[4] = &protocol witness table for LayoutViewPlaceholder;
      v74[0] = v46;
      sub_10076108C();
      LOBYTE(v42) = sub_1007701EC();

      if (v42)
      {
        sub_10000A570(v75, v72);
      }

      else
      {
        v73 = 0;
        memset(v72, 0, sizeof(v72));
      }

      v47 = v62;
      v48 = v60;
      v49 = v58;
      sub_1002C6478(v59);
      sub_10000A570(aBlock, &v71);
      sub_10000A570(v75, &v70);
      sub_10000A570(v74, &v69);
      sub_100767B5C();
      sub_1007303E4(&qword_10095EC90, &type metadata accessor for ProductDescriptionLayout);
      v50 = v63;
      sub_10076D2AC();

      swift_unknownObjectRelease();

      (*(v67 + 8))(v47, v50);
      sub_1001029C8(v72);
      (*(v48 + 8))(v49, v61);
      sub_10000CD74(v74);
      sub_10000CD74(v75);
      return sub_10000CD74(aBlock);
    }
  }

  return result;
}

uint64_t sub_1007302C0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100730318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100730334()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10073036C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1007303AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1007303E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10073042C()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView] setAlpha:0.0];
  v1 = [v0 buttonTray];
  [v1 setAlpha:0.0];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_100731C68;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_10009AEDC;
  v12 = &unk_1008A2B68;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_100731C88;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000513F0;
  v12 = &unk_1008A2BB8;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.2];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_1007305FC()
{
  v1 = sub_10076DE4C();
  __chkstk_darwin(v1 - 8);
  sub_10076DE3C();
  v2 = objc_allocWithZone(sub_10076DE6C());
  v3 = sub_10076DE5C();
  sub_100731B30(v3);

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView] setHidden:1];
  v4 = [v0 buttonTray];
  [v4 setHidden:1];
}

void sub_1007306F4()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeDownloadPackViewController();
  v7.receiver = v0;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_10000CF78(&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v1);
  sub_10075F2BC();
  (*(v2 + 8))(v4, v1);
  sub_100760C9C();
  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode:2];
}

uint64_t sub_1007308CC(char a1)
{
  v2 = v1;
  v4 = sub_10075DD7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075F2AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArcadeDownloadPackViewController();
  v14.receiver = v2;
  v14.super_class = v12;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v8);
  sub_10075F2BC();
  (*(v9 + 8))(v11, v8);
  result = sub_100760C6C();
  if (result)
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v5 + 8))(v7, v4);
    sub_10076367C();
  }

  return result;
}

uint64_t sub_100730B48(char a1)
{
  v2 = v1;
  v4 = sub_10075DD7C();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076FAAC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100946A10);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10075F2AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArcadeDownloadPackViewController();
  v20.receiver = v2;
  v20.super_class = v15;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v12 + 104))(v14, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v11);
  sub_10075F2BC();
  (*(v12 + 8))(v14, v11);
  result = sub_100760C6C();
  if (result)
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v18 + 8))(v6, v19);
    sub_10076369C();
    v17 = sub_1007636AC();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    sub_10076368C();
  }

  return result;
}

uint64_t sub_100730EC8(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeDownloadPackViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v17, v14, a3);
  sub_10000CF78(&v15[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v15[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v12, *a5, v9);
  sub_10075F2BC();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100731034(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(&a1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_10075F2BC();

  return (*(v6 + 8))(v8, v5);
}

void sub_100731160()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_overlayViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100731290()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v38, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView + 8];
  ObjectType = swift_getObjectType();
  [v5 bounds];
  [v3 convertRect:v5 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v1 view];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v1 buttonTray];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 buttonTray];
  [v16 convertRect:v26 fromCoordinateSpace:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  CGRectGetMinY(v39);
  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  CGRectGetMinY(v40);
  v41.origin.x = v8;
  v41.origin.y = v10;
  v41.size.width = v12;
  v41.size.height = v14;
  CGRectGetWidth(v41);
  sub_100760C8C();
  sub_1007660FC();

  v35 = sub_100760C8C();
  v36 = [v1 view];
  if (v36)
  {
    v37 = v36;
    (*(v4 + 8))(v35, v36, ObjectType, v4);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100731554(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setAlpha:0.0];
  }

  [*&a1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView] setAlpha:1.0];
  v5 = [a1 buttonTray];
  [v5 setAlpha:1.0];
}

id sub_10073179C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100731870(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_objectGraph);
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_1000527AC(v5);
  }

  sub_100263BF0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

void sub_1007319B0()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView] setHidden:0];
  v1 = [v0 buttonTray];
  [v1 setHidden:0];
}

void sub_100731A2C()
{
  sub_10076DF3C();
  sub_100731AD8();
  swift_errorRetain();

  v0 = sub_10076DEFC();
  sub_100731B30(v0);
}

unint64_t sub_100731AD8()
{
  result = qword_100967088;
  if (!qword_100967088)
  {
    sub_100760CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100967088);
  }

  return result;
}

id sub_100731B30(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_overlayViewController];
  sub_10076857C();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_10076856C();
    v9 = *&v1[v3] == 0;

    return [v1 setModalInPresentation:v9];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100731C30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100731C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100731CBC(uint64_t a1)
{
  v2 = sub_10076F1BC();
  v108 = *(v2 - 8);
  __chkstk_darwin(v2);
  v106 = v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076F51C();
  v98 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076FD4C();
  v112 = *(v116 - 8);
  __chkstk_darwin(v116);
  v111 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10076127C();
  v117 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075DE9C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076148C();
  v13 = sub_10076F64C();
  sub_10076FC1C();
  v113 = v119;
  sub_1000200B4();
  v110 = v13;
  sub_10076FC1C();
  v14 = v119;
  v15 = [v119 ams_activeiTunesAccount];
  if (v15)
  {
    v16 = v15;
    if ([v15 ams_isManagedAppleID])
    {
      if (qword_1009412F8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v116, qword_1009A2630);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783C60;
      sub_10076F27C();
      v121 = &type metadata for String;
      v119 = 0xD000000000000020;
      v120 = 0x80000001007F7C60;
      sub_10076F30C();
      sub_10000CFBC(&v119, &unk_1009434C0);
      sub_10076F27C();
      sub_10076FBCC();

      return a1;
    }
  }

  v97 = v2;
  v17 = [objc_opt_self() ams_sharedAccountStore];
  v18 = [v17 ams_fetchLocaliTunesAccount];

  v119 = 0;
  v19 = [v18 resultWithError:&v119];

  if (!v19)
  {
    v23 = v119;
    sub_10075DA4C();

    swift_willThrow();

    goto LABEL_11;
  }

  v20 = v119;
  v21 = [v19 ams_storefront];

  if (!v21)
  {
LABEL_11:
    v93 = 0;
    v104 = 0;
    goto LABEL_12;
  }

  v93 = sub_10076FF9C();
  v104 = v22;

LABEL_12:
  sub_10075DE6C();
  v92 = sub_10075DDCC();
  v103 = v24;
  (*(v10 + 8))(v12, v9);
  if (sub_10076132C())
  {
    LODWORD(v109) = 1;
  }

  else
  {
    v25 = sub_10076129C();
    v26 = v117;
    v28 = v114;
    v27 = v115;
    (*(v117 + 104))(v114, enum case for ASKBagContract.AdPlacementBagValue.searchLanding(_:), v115);
    LODWORD(v109) = sub_100489454(v28, v25);

    (*(v26 + 8))(v28, v27);
  }

  v95 = v6;
  v96 = v4;
  v105 = v14;
  v107 = a1;
  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v116, qword_1009A2630);
  v30 = *(v112 + 16);
  v91[4] = v29;
  v30(v111);
  v31 = sub_10000A5D4(&unk_100942A60);
  v32 = *(sub_10076F33C() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v91[1] = *(v32 + 80);
  v91[3] = v31;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1007ADDC0;
  v91[2] = v34;
  sub_10076F27C();
  v121 = &type metadata for String;
  v119 = 0xD000000000000020;
  v120 = 0x80000001007F7C60;
  sub_10076F30C();
  sub_10000CFBC(&v119, &unk_1009434C0);
  sub_10076F27C();
  v35 = sub_1007612CC();
  if (v35)
  {
    v36 = 0x64656C62616E45;
  }

  else
  {
    v36 = 0x64656C6261736944;
  }

  v37 = 0xE800000000000000;
  v121 = &type metadata for String;
  if (v35)
  {
    v37 = 0xE700000000000000;
  }

  v119 = v36;
  v120 = v37;
  sub_10076F30C();
  sub_10000CFBC(&v119, &unk_1009434C0);
  sub_10076F27C();
  if (v109)
  {
    v38 = 0x64656C62616E45;
  }

  else
  {
    v38 = 0x64656C6261736944;
  }

  v121 = &type metadata for String;
  v39 = 0xE700000000000000;
  if ((v109 & 1) == 0)
  {
    v39 = 0xE800000000000000;
  }

  v119 = v38;
  v120 = v39;
  sub_10076F30C();
  sub_10000CFBC(&v119, &unk_1009434C0);
  sub_10076F27C();
  v40 = sub_10076129C();
  v41 = v117;
  v43 = v117 + 104;
  v42 = *(v117 + 104);
  v45 = v114;
  v44 = v115;
  (v42)(v114, enum case for ASKBagContract.AdPlacementBagValue.today(_:), v115);
  v109 = v42;
  v46 = sub_100489454(v45, v40);

  v49 = *(v41 + 8);
  v48 = v41 + 8;
  v47 = v49;
  v49(v45, v44);
  v50 = 0x64656C6261736944;
  if (v46)
  {
    v50 = 0x64656C62616E45;
  }

  v51 = 0xE800000000000000;
  if (v46)
  {
    v51 = 0xE700000000000000;
  }

  v121 = &type metadata for String;
  v119 = v50;
  v120 = v51;
  sub_10076F30C();
  sub_10000CFBC(&v119, &unk_1009434C0);
  sub_10076F27C();
  v52 = sub_10076129C();
  v99 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:);
  v42(v45);
  v53 = sub_100489454(v45, v52);

  v47(v45, v44);
  v54 = 0x64656C62616E45;
  if (!v53)
  {
    v54 = 0x64656C6261736944;
  }

  v121 = &type metadata for String;
  v55 = 0xE800000000000000;
  if (v53)
  {
    v55 = 0xE700000000000000;
  }

  v119 = v54;
  v120 = v55;
  sub_10076F30C();
  sub_10000CFBC(&v119, &unk_1009434C0);
  sub_10076F27C();
  v56 = v113;
  v57 = sub_10076129C();
  v94 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:);
  v102 = v43;
  v109(v45);
  v58 = sub_100489454(v45, v57);

  v117 = v48;
  v101 = v47;
  v47(v45, v44);
  v59 = 0x64656C62616E45;
  if (!v58)
  {
    v59 = 0x64656C6261736944;
  }

  v60 = 0xE800000000000000;
  if (v58)
  {
    v60 = 0xE700000000000000;
  }

  v121 = &type metadata for String;
  v119 = v59;
  v120 = v60;
  v91[0] = v33;
  sub_10076F30C();
  sub_10000CFBC(&v119, &unk_1009434C0);
  v61 = v116;
  v62 = v111;
  sub_10076FBCC();

  (*(v112 + 8))(v62, v61);
  v118 = _swiftEmptyArrayStorage;
  v112 = type metadata accessor for AdHeaderProvider();
  v63 = swift_allocObject();
  v119 = sub_1000FD520(_swiftEmptyArrayStorage);
  sub_10000A5D4(&qword_100967090);
  swift_allocObject();
  *(v63 + 16) = sub_10076ACBC();
  v64 = v56;
  if (sub_1007612CC())
  {
    sub_100732FA8(&qword_100943FC0, &type metadata accessor for MetricsLogger.Configuration);
    v65 = v95;
    v66 = v96;
    sub_10076FC0C();
    sub_1000F9700(_swiftEmptyArrayStorage);
    (*(v98 + 8))(v65, v66);
  }

  v67 = sub_10076129C();
  v69 = v114;
  v68 = v115;
  v70 = v109;
  (v109)(v114, v99, v115);
  v71 = sub_100489454(v69, v67);

  v72 = v101;
  v101(v69, v68);
  if (v71 || (v73 = v63, v74 = v72, v75 = sub_10076129C(), (v70)(v69, v94, v68), v76 = sub_100489454(v69, v75), , v74(v69, v68), v63 = v73, v76))
  {
    sub_10000A5D4(&unk_10094A8C0);
    a1 = v107;
    sub_10076FC1C();
    v77 = v119;
    if (v104)
    {
      v78 = v120;
      v79 = v64;
      v80 = v104;
      v81 = sub_1007613DC();
      v82 = type metadata accessor for PromotedContentOnDeviceAdProvider();
      swift_allocObject();

      swift_unknownObjectRetain();
      v83 = sub_10036F6E4(v93, v80, v92, v103, v81, v63, v79, v77, v78);

      swift_unknownObjectRelease();
      sub_10000A5D4(&qword_10094F420);
      v84 = swift_allocObject();
      *(v84 + 1) = xmmword_100783DD0;
      sub_10000A5D4(&qword_100967098);
      v121 = v82;
      v122 = sub_100732FA8(&qword_1009670A8, type metadata accessor for PromotedContentOnDeviceAdProvider);
      v119 = v83;

      sub_10076F1AC();
      sub_10000CD74(&v119);
    }

    else
    {

      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBEC();

      v84 = _swiftEmptyArrayStorage;
    }

    sub_1000F9700(v84);
    swift_unknownObjectRelease();
  }

  else
  {

    a1 = v107;
  }

  v85 = v105;
  v86 = v106;
  v87 = v118;
  if (v118[2])
  {
    v119 = v63;
    sub_10076F1AC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_10049DC98(0, v87[2] + 1, 1, v87);
    }

    v89 = v87[2];
    v88 = v87[3];
    if (v89 >= v88 >> 1)
    {
      v87 = sub_10049DC98(v88 > 1, v89 + 1, 1, v87);
    }

    v87[2] = v89 + 1;
    (*(v108 + 32))(v87 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v89, v86, v97);
    v119 = v87;
    sub_10000A5D4(&qword_100943F98);
    sub_1006C7ADC();
    a1 = sub_10076F61C();
  }

  else
  {
  }

  sub_10075F4BC();
  sub_10076FC1C();
  sub_10000A5D4(&unk_100960AB8);
  sub_10076F63C();
  sub_10000A5D4(&qword_100967098);
  sub_10076F63C();
  sub_10075F4AC();

  swift_unknownObjectRelease();
  sub_10000CFBC(&v119, &qword_1009670A0);
  return a1;
}

uint64_t sub_100732FA8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100733020()
{
  v0 = sub_10073325C();
  v1 = v0;
  return v0;
}

uint64_t sub_10073304C()
{
  v0 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v1 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (sub_10077087C())
  {
    v3 = sub_10077088C();

    if (v3)
    {
      return 2;
    }
  }

  else
  {
  }

  v4 = UIContentSizeCategoryAccessibilityMedium;
  v5 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_10077088C();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((sub_10077087C() & 1) == 0)
  {

    return 2;
  }

  v6 = sub_10077088C();

  if ((v6 & 1) == 0)
  {
    return 2;
  }

  v7 = sub_10076FF9C();
  v9 = v8;
  if (v7 == sub_10076FF9C() && v9 == v10)
  {

    return 2;
  }

  else
  {
    v11 = sub_10077167C();

    if (v11)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

void *sub_1007331DC()
{
  v0 = sub_10073330C();
  v1 = v0;
  return v0;
}

uint64_t sub_100733208()
{
  if (sub_10077084C())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_10073325C()
{
  v0 = UIContentSizeCategoryAccessibilityMedium;
  v1 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_10077088C();
  if (result)
  {
    if (sub_10077087C())
    {
      v3 = sub_10077088C();

      if (v3)
      {
        return UIContentSizeCategoryExtraExtraExtraLarge;
      }
    }

    else
    {
    }

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10073330C()
{
  v0 = UIContentSizeCategoryAccessibilityMedium;
  v1 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_10077088C();
  if (result)
  {
    if (sub_10077087C())
    {
      v3 = sub_10077088C();

      if (v3)
      {
        v4 = &UIContentSizeCategoryAccessibilityLarge;
        return *v4;
      }
    }

    else
    {
    }

    v4 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
    return *v4;
  }

  __break(1u);
  return result;
}

void sub_1007334E4(void *a1)
{
  v2 = v1;
  sub_1000730D8(0);
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  v5 = &off_100911000;
  if (v4)
  {
    v6 = v4;
    [a1 finalFrameForViewController:v4];
  }

  else
  {
    v6 = [a1 containerView];
    [v6 bounds];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v114.origin.x = v11;
  v114.origin.y = v12;
  v114.size.width = v13;
  v114.size.height = v14;
  MidX = CGRectGetMidX(v114);
  v115.origin.x = v11;
  v115.origin.y = v12;
  v115.size.width = v13;
  v115.size.height = v14;
  MidY = CGRectGetMidY(v115);
  v116.origin.x = v11;
  v116.origin.y = v12;
  v116.size.width = v13;
  v116.size.height = v14;
  v104 = CGRectGetMidX(v116);
  v117.origin.x = v11;
  v117.origin.y = v12;
  v117.size.width = v13;
  v117.size.height = v14;
  v102 = CGRectGetMidY(v117);
  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController];
  v16 = 0.0;
  if (v15)
  {
    v17 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController] view];
    v18 = 0.0;
    if (v17)
    {
      v19 = v17;
      [v17 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [a1 containerView];
      [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
      v16 = v29;
      v18 = v30;

      MidY = MidY - v18;
      MidX = MidX - v16;
    }
  }

  else
  {
    v18 = 0.0;
  }

  v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCardView];
  v32 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCenter];
  v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCenter + 8];
  v34 = v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCenter + 16];
  if (v31 && (v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCenter + 16] & 1) == 0)
  {
    if (v15)
    {
      v35 = v31;
      v36 = v15;
      v37 = [v36 view];
      if (!v37)
      {
        __break(1u);
        return;
      }

      v38 = v37;
      [v37 addSubview:v35];

      v5 = &off_100911000;
    }

    else
    {
      v39 = v31;
      v38 = [a1 containerView];
      [v38 addSubview:v39];
    }

    [v31 setCenter:{v32, v33}];
  }

  v40 = [a1 viewForKey:{UITransitionContextToViewKey, *&v102}];
  v41 = v40;
  if (!v15)
  {
    v44 = 0.25;
    if (!v40)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v42 = [v15 traitCollection];
  v43 = [v42 horizontalSizeClass];

  if (v43 == 1)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 0.25;
  }

  if (v41)
  {
LABEL_22:
    v45 = v41;
    v46 = [a1 v5[265]];
    [v46 addSubview:v45];

    if ((v31 == 0) | v34 & 1)
    {
      v118.origin.x = v11;
      v118.origin.y = v12;
      v118.size.width = v13;
      v118.size.height = v14;
      v47 = v44 * CGRectGetWidth(v118);
      v119.origin.x = v11;
      v119.origin.y = v12;
      v119.size.width = v13;
      v119.size.height = v14;
      v48 = CGRectGetHeight(v119) * 0.25;
      v120.origin.x = v11;
      v120.origin.y = v12;
      v120.size.width = v13;
      v120.size.height = v14;
      v121 = CGRectInset(v120, v47, v48);
      width = v121.size.width;
      height = v121.size.height;
      v121.origin.x = v11;
      v121.origin.y = v12;
      v121.size.width = v13;
      v121.size.height = v14;
      v51 = CGRectGetMidX(v121);
      v122.origin.x = v11;
      v122.origin.y = v12;
      v122.size.width = v13;
      v122.size.height = v14;
      v52 = CGRectGetMidY(v122);
      v53 = 0.0;
      v54 = 0.0;
    }

    else
    {
      [v31 bounds];
      width = v55;
      height = v56;
      v51 = v16 + v32;
      v52 = v18 + v33;
    }

    [v45 setBounds:{v53, v54, width, height}];
    [v45 setCenter:{v51, v52}];
    [v45 setNeedsLayout];
    [v45 layoutIfNeeded];
    [v45 setAlpha:0.0];
  }

LABEL_26:
  v57 = _swiftEmptyArrayStorage;
  v113 = _swiftEmptyArrayStorage;
  v58 = &off_100911000;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v59 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v60 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v59 timingParameters:0.0];

    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    *(v61 + 24) = v31;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = v13;
    *(v61 + 56) = v14;
    *(v61 + 64) = MidX;
    *(v61 + 72) = MidY;
    *(v61 + 80) = v41;
    *(v61 + 88) = v104;
    *(v61 + 96) = v103;
    v111 = sub_100734544;
    v112 = v61;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_10009AEDC;
    v110 = &unk_1008A2C08;
    v62 = _Block_copy(&aBlock);
    v63 = v31;
    v64 = v41;
    v65 = v2;

    [v60 addAnimations:v62];
    _Block_release(v62);
    v66 = swift_allocObject();
    *(v66 + 16) = a1;
    *(v66 + 24) = v65;
    v111 = sub_10073457C;
    v112 = v66;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v58 = &off_100911000;
    v109 = sub_10017722C;
    v110 = &unk_1008A2C58;
    v67 = _Block_copy(&aBlock);
    v68 = v65;
    swift_unknownObjectRetain();

    [v60 addCompletion:v67];
    _Block_release(v67);
    v69 = v60;
    sub_10077019C();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v57 = v113;
  }

  if (v31)
  {
    v70 = v31;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      v72 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_1002955D8;
      v112 = v71;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_10009AEDC;
      v110 = &unk_1008A2D98;
      v73 = _Block_copy(&aBlock);
      v74 = v70;

      v75 = [v72 initWithDuration:v73 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
      _Block_release(v73);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      v111 = sub_1002955EC;
      v112 = v76;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_10017722C;
      v110 = &unk_1008A2DE8;
      v77 = _Block_copy(&aBlock);
      v78 = v74;

      [v75 v58[508]];
      _Block_release(v77);

      v79 = v75;
      sub_10077019C();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v57 = v113;
      if (!v41)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }
  }

  if (v41)
  {
LABEL_38:
    v80 = v41;
    if (UIAccessibilityIsReduceMotionEnabled())
    {
    }

    else
    {
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      v82 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_1000718A0;
      v112 = v81;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_10009AEDC;
      v110 = &unk_1008A2D48;
      v83 = _Block_copy(&aBlock);
      v84 = v80;

      v85 = [v82 initWithDuration:v83 controlPoint1:0.13 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
      _Block_release(v83);

      if (v85)
      {
        v86 = v85;
        sub_10077019C();
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v57 = v113;
      }
    }
  }

LABEL_44:
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [v41 setBounds:{0.0, 0.0, v13, v14}];
    [v41 setCenter:{v104, v103}];
    v87 = swift_allocObject();
    *(v87 + 16) = v2;
    *(v87 + 24) = v41;
    v88 = objc_allocWithZone(UIViewPropertyAnimator);
    v111 = sub_1007345C0;
    v112 = v87;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_10009AEDC;
    v110 = &unk_1008A2CA8;
    v89 = _Block_copy(&aBlock);
    v90 = v41;
    v91 = v2;

    v92 = [v88 initWithDuration:0 curve:v89 animations:0.3];
    _Block_release(v89);
    v93 = swift_allocObject();
    *(v93 + 16) = a1;
    *(v93 + 24) = v91;
    v111 = sub_10073463C;
    v112 = v93;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_10017722C;
    v110 = &unk_1008A2CF8;
    v94 = _Block_copy(&aBlock);
    v95 = v91;
    swift_unknownObjectRetain();

    [v92 v58[508]];
    _Block_release(v94);
    v96 = v92;
    sub_10077019C();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v57 = v113;
  }

  if (v57 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v98 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v99 = sub_10077149C();
      }

      else
      {
        if (v98 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v99 = *(v57 + 8 * v98 + 32);
      }

      v100 = v99;
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      [v99 startAnimation];

      ++v98;
      if (v101 == i)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:
}

id sub_100734224(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_1000730D8(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  [a11 setBounds:{a1, a2, a3, a4}];

  return [a11 setCenter:{a7, a8}];
}

id sub_100734310(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 48);
    v9 = (v6 + 48);
    do
    {
      v10 = *v9;
      v9 += 24;
      if (v10 == 1)
      {
        v11 = *(v8 - 2);

        v11(1, 1);
      }

      v8 = v9;
      --v7;
    }

    while (v7);
  }

  if (a2)
  {
    return [a2 setAlpha:1.0];
  }

  return result;
}

void sub_100734418()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController);
}

id sub_100734458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionPageOpenAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007344FC()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100734560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100734580()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1007345C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100734640(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100942440);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v71[-v7];
  (*(v6 + 16))(&v71[-v7], a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v9 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v9 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v59 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
        v60 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
        sub_10076857C();

        v61 = *&v2[v59];
        *&v2[v59] = 0;

        result = [v2 view];
        if (result)
        {
          v62 = result;
          [result bounds];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;

          v72 = v64;
          v73 = v66;
          v74 = v68;
          v75 = v70;
          v76 = 0;
          sub_10076856C();
          return (*(v6 + 8))(v8, v5);
        }

        goto LABEL_19;
      }

      sub_10076842C();
      sub_10076DE3C();
      v44 = objc_allocWithZone(sub_10076DE6C());
      v45 = sub_10076DE5C();
      v46 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v47 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v48 = *&v2[v46];
      *&v2[v46] = v45;
      v49 = v45;

      result = [v2 view];
      if (result)
      {
        v50 = result;
        [result bounds];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v72 = v52;
        v73 = v54;
        v74 = v56;
        v75 = v58;
        v76 = 0;
        sub_10076856C();

        sub_10076A57C();
        sub_100739754(&qword_100958E18, 255, &type metadata accessor for SearchLandingDiffablePagePresenter);
        return sub_1007657EC();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v8, v5);
    v29 = *(v8 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958E18, 255, &type metadata accessor for SearchLandingDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v29);
    v30 = sub_10076DEFC();
    v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v32 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v33 = *&v2[v31];
    *&v2[v31] = v30;
    v34 = v30;

    result = [v2 view];
    if (result)
    {
      v35 = result;
      [result bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v72 = v37;
      v73 = v39;
      v74 = v41;
      v75 = v43;
      v76 = 0;
      sub_10076856C();

      sub_1000167E0(v29);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v8, v5);
  v2[qword_10099E368] = 1;
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v12 = *&v2[v10];
  *&v2[v10] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v72 = v16;
  v73 = v18;
  v74 = v20;
  v75 = v22;
  v76 = 0;
  sub_10076856C();
  if (sub_10076843C())
  {
    sub_10076366C();
  }

  v23 = qword_1009503C0;
  swift_beginAccess();
  v24 = *&v2[v23];
  if (v24)
  {
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = &v24[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v27 = *&v24[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v26 = sub_1007397C0;
    *(v26 + 1) = v25;
    v28 = v24;

    sub_1000167E0(v27);
  }

  sub_10076842C();
}

id sub_100734CD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100944B20);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
        sub_10076857C();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10076856C();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10076842C();
      sub_10076DE3C();
      v45 = objc_allocWithZone(sub_10076DE6C());
      v46 = sub_10076DE5C();
      v47 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10076856C();

        sub_10076A24C();
        sub_100739754(&qword_100958E38, 255, &type metadata accessor for SearchFocusDiffablePagePresenter);
        return sub_1007657EC();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958E38, 255, &type metadata accessor for SearchFocusDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v30);
    v31 = sub_10076DEFC();
    v32 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10076856C();

      sub_1000167E0(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10099E368] = 1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10076856C();
  if (sub_10076843C())
  {
    sub_10076366C();
  }

  v24 = qword_1009503C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_100739738;
    v27[1] = v26;
    v29 = v25;

    sub_1000167E0(v28);
  }

  sub_10076842C();
}

uint64_t sub_100735368(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100946560);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10099E368) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10076843C())
    {
      sub_10076366C();
    }

    v11 = qword_1009503C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_1007397C0;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_1000167E0(v15);
    }

    sub_10076842C();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958E78, 255, &type metadata accessor for ArcadeDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v18);
    v19 = sub_10076DEFC();
    (*((swift_isaMask & *v2) + 0x168))(v19);
    sub_1000167E0(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10076842C();
    sub_10076DE3C();
    v20 = objc_allocWithZone(sub_10076DE6C());
    v21 = sub_10076DE5C();
    (*((swift_isaMask & *v2) + 0x168))(v21);
    sub_100768CAC();
    sub_100739754(&qword_100958E78, 255, &type metadata accessor for ArcadeDiffablePagePresenter);
    return sub_1007657EC();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1007358B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100947158);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10099E368) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10076843C())
    {
      sub_10076366C();
    }

    v11 = qword_1009503C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_1007397C0;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_1000167E0(v15);
    }

    sub_10076842C();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&unk_100947220, 255, &type metadata accessor for ArticleDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v18);
    v19 = sub_10076DEFC();
    (*((swift_isaMask & *v2) + 0x168))(v19);
    sub_1000167E0(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10076842C();
    sub_10076DE3C();
    v20 = objc_allocWithZone(sub_10076DE6C());
    v21 = sub_10076DE5C();
    (*((swift_isaMask & *v2) + 0x168))(v21);
    sub_10076921C();
    sub_100739754(&unk_100947220, 255, &type metadata accessor for ArticleDiffablePagePresenter);
    return sub_1007657EC();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v6 + 8))(v9, v5);
  }
}

id sub_100735E08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100947D10);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
        sub_10076857C();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10076856C();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10076842C();
      sub_10076DE3C();
      v45 = objc_allocWithZone(sub_10076DE6C());
      v46 = sub_10076DE5C();
      v47 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10076856C();

        sub_10076A60C();
        sub_100739754(&qword_100958FC8, 255, &type metadata accessor for SearchResultsDiffablePagePresenter);
        return sub_1007657EC();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958FC8, 255, &type metadata accessor for SearchResultsDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v30);
    v31 = sub_10076DEFC();
    v32 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10076856C();

      sub_1000167E0(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10099E368] = 1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10076856C();
  if (sub_10076843C())
  {
    sub_10076366C();
  }

  v24 = qword_1009503C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_1007397C0;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000167E0(v28);
  }

  sub_10076842C();
}

id sub_10073649C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100951958);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
        sub_10076857C();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10076856C();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10076842C();
      sub_10076DE3C();
      v45 = objc_allocWithZone(sub_10076DE6C());
      v46 = sub_10076DE5C();
      v47 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10076856C();

        sub_100768B9C();
        sub_100739754(&qword_100958EC0, 255, &type metadata accessor for TodayDiffablePagePresenter);
        return sub_1007657EC();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958EC0, 255, &type metadata accessor for TodayDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v30);
    v31 = sub_10076DEFC();
    v32 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10076856C();

      sub_1000167E0(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10099E368] = 1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10076856C();
  if (sub_10076843C())
  {
    sub_10076366C();
  }

  v24 = qword_1009503C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_1007397C0;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000167E0(v28);
  }

  sub_10076842C();
}

id sub_100736B30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_10095AB78);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
        sub_10076857C();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10076856C();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10076842C();
      sub_10076DE3C();
      v45 = objc_allocWithZone(sub_10076DE6C());
      v46 = sub_10076DE5C();
      v47 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10076856C();

        sub_10076966C();
        sub_100739754(&qword_100958F08, 255, &type metadata accessor for ReviewsDiffablePagePresenter);
        return sub_1007657EC();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958F08, 255, &type metadata accessor for ReviewsDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v30);
    v31 = sub_10076DEFC();
    v32 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10076856C();

      sub_1000167E0(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10099E368] = 1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10076856C();
  if (sub_10076843C())
  {
    sub_10076366C();
  }

  v24 = qword_1009503C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_1007397C0;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000167E0(v28);
  }

  sub_10076842C();
}

uint64_t sub_1007371C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100964160);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10099E368) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10076843C())
    {
      sub_10076366C();
    }

    v11 = qword_1009503C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_1007397C0;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_1000167E0(v15);
    }

    sub_10076842C();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958E98, 255, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v18);
    v19 = sub_10076DEFC();
    (*((swift_isaMask & *v2) + 0x168))(v19);
    sub_1000167E0(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10076842C();
    sub_10076DE3C();
    v20 = objc_allocWithZone(sub_10076DE6C());
    v21 = sub_10076DE5C();
    (*((swift_isaMask & *v2) + 0x168))(v21);
    sub_10076AB5C();
    sub_100739754(&qword_100958E98, 255, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    return sub_1007657EC();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v6 + 8))(v9, v5);
  }
}

id sub_100737714(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100967800);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
        sub_10076857C();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10076856C();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10076842C();
      sub_10076DE3C();
      v45 = objc_allocWithZone(sub_10076DE6C());
      v46 = sub_10076DE5C();
      v47 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10076856C();

        sub_10076B11C();
        sub_100739754(&qword_100958E58, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
        return sub_1007657EC();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958E58, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v30);
    v31 = sub_10076DEFC();
    v32 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10076856C();

      sub_1000167E0(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10099E368] = 1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10076856C();
  if (sub_10076843C())
  {
    sub_10076366C();
  }

  v24 = qword_1009503C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_1007397C0;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000167E0(v28);
  }

  sub_10076842C();
}

id sub_100737DA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076DE4C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_100965B18);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
        sub_10076857C();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10076856C();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10076842C();
      sub_10076DE3C();
      v45 = objc_allocWithZone(sub_10076DE6C());
      v46 = sub_10076DE5C();
      v47 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10076856C();

        sub_1007695CC();
        sub_100739754(&qword_100958DF0, 255, &type metadata accessor for ProductDiffablePagePresenter);
        return sub_1007657EC();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_10076DF3C();
    sub_100739754(&qword_100958DF0, 255, &type metadata accessor for ProductDiffablePagePresenter);
    swift_errorRetain();

    sub_10001CE50(v30);
    v31 = sub_10076DEFC();
    v32 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10076856C();

      sub_1000167E0(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10099E368] = 1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10076856C();
  if (sub_10076843C())
  {
    sub_10076366C();
  }

  v24 = qword_1009503C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_1007397C0;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000167E0(v28);
  }

  sub_10076842C();
}

uint64_t sub_10073843C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = sub_10076843C();

    if (v2)
    {
      sub_10076366C();
    }
  }

  return result;
}

void sub_1007384CC(uint64_t a1)
{
  v3 = sub_10000A5D4(&qword_100967800);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_100737714(a1);
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_100769A7C();
    if (v7)
    {
      v8 = sub_10076FF6C();
    }

    else
    {
      v8 = 0;
    }

    [v1 setTitle:v8];
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100738658()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_100739754(&qword_1009677F0, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_100739754(&qword_1009677F8, v4, type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_100738758@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10076B0FC();
  v4 = v3;
  sub_100760F1C();
  swift_allocObject();
  v5 = sub_100760F0C();
  swift_allocObject();
  v6 = sub_100760F0C();
  a1[3] = &type metadata for SearchChartsAndCategoriesPageGridProvider;
  a1[4] = sub_10073966C();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v2;
  *(result + 40) = v4 & 1;
  return result;
}

unint64_t sub_100738820@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchChartsAndCategoriesPageShelfLayoutSpacingProvider;
  result = sub_100739618();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100738854(uint64_t a1)
{
  v2 = sub_10075DB7C();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100739550(a1, v9, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1007395B8(v9, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000A5D4(&unk_100964150);
  sub_100023AD0(&v9[*(v19 + 48)], v18, &unk_1009435D0);
  sub_100765E7C();
  v20 = *(v4 + 48);
  sub_100016E2C(v15, v6, &unk_1009435D0);
  sub_100016E2C(v18, &v6[v20], &unk_1009435D0);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016E2C(v6, v12, &unk_1009435D0);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100739754(&qword_100944C38, 255, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_10076FF1C();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000CFBC(v15, &unk_1009435D0);
      sub_10000CFBC(v18, &unk_1009435D0);
      v27(v12, v2);
      sub_10000CFBC(v6, &unk_1009435D0);
      return v23 & 1;
    }

    sub_10000CFBC(v15, &unk_1009435D0);
    sub_10000CFBC(v18, &unk_1009435D0);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000CFBC(v15, &unk_1009435D0);
  sub_10000CFBC(v18, &unk_1009435D0);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000CFBC(v6, &unk_100964140);
    goto LABEL_9;
  }

  sub_10000CFBC(v6, &unk_1009435D0);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController()
{
  result = qword_100967118;
  if (!qword_100967118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100738E08@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v58 = sub_100763BBC();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v2 - 8);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v7 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v45 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = (&v45 - v17);
  v19 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = sub_10076034C();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = sub_100763BAC();
  v51 = *(v27 - 8);
  v52 = v27;
  v28 = *(v51 + 56);
  v46 = v6;
  v28(v6, 1, 1);
  v47 = v24;
  sub_100016E2C(v24, v21, &unk_10094BB80);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10000CFBC(v21, &unk_10094BB80);
    v29 = 0;
  }

  else
  {
    v29 = sub_1007602EC();
    (*(v26 + 8))(v21, v25);
  }

  sub_100286F40(v29, v18);

  if (qword_10093FC70 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v11, qword_10099E000);
  if (qword_10093FC48 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v11, qword_10099DF88);
  v32 = v50;
  sub_100739550(v31, v50, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v12 + 56))(v32, 0, 1, v11);
  v33 = v48;
  sub_100739550(v18, v48, type metadata accessor for TitleHeaderView.TextConfiguration);
  v34 = v49;
  sub_100739550(v30, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  v35 = v53;
  sub_100016E2C(v32, v53, &qword_100949718);
  v36 = v46;
  v37 = v55;
  sub_100016E2C(v46, v55, &qword_100949710);
  v38 = v56;
  (*(v56 + 104))(v57, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v58);
  sub_1000325F0();
  v45 = sub_100770CDC();
  sub_10000CFBC(v36, &qword_100949710);
  sub_10000CFBC(v32, &qword_100949718);
  sub_1007395B8(v18, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(v47, &unk_10094BB80);
  v39 = type metadata accessor for TitleHeaderView.Style(0);
  v40 = v39[8];
  v41 = v54;
  sub_10013B084(v33, v54);
  sub_10013B084(v34, v41 + v39[5]);
  sub_100023AD0(v35, v41 + v39[6], &qword_100949718);
  *(v41 + v39[7]) = 0;
  *(v41 + v40) = 0;
  *(v41 + v39[9]) = 1;
  *(v41 + v39[14]) = 0x4030000000000000;
  *(v41 + v39[12]) = 0;
  *(v41 + v39[13]) = v45;
  (*(v38 + 32))(v41 + v39[11], v57, v58);
  v43 = v51;
  v42 = v52;
  if ((*(v51 + 48))(v37, 1, v52) != 1)
  {
    return (*(v43 + 32))(v41 + v39[10], v37, v42);
  }

  sub_10000CFBC(v37, &qword_100949710);
  return (*(v43 + 104))(v41 + v39[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v42);
}

uint64_t sub_100739550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007395B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100739618()
{
  result = qword_1009677E0;
  if (!qword_1009677E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009677E0);
  }

  return result;
}

unint64_t sub_10073966C()
{
  result = qword_1009677E8;
  if (!qword_1009677E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009677E8);
  }

  return result;
}

uint64_t sub_1007396C0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100739700()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100739754(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall UIImageView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  v3 = v2;
  isa = image.value.super.isa;
  if (!image.is_nil)
  {
    goto LABEL_4;
  }

  v5 = [v3 image];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  v7 = [v3 layer];
  [v7 removeAllAnimations];

  if (isa)
  {
    if (v6)
    {
      v8 = isa;
      [v3 setAlpha:0.0];
      [v3 setImage:v8];
      sub_100016F40(0, &qword_100954F20);
      v9 = sub_10077089C();
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      v15[4] = sub_1000718A0;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_10009AEDC;
      v15[3] = &unk_1008A3000;
      v11 = _Block_copy(v15);
      v12 = v3;

      [v9 addAnimations:v11];
      _Block_release(v11);
      [v9 startAnimation];

      return;
    }

    v13 = v3;
    v14 = isa;
  }

  else
  {
    v13 = v3;
    v14 = 0;
  }

  [v13 setImage:v14];
}

uint64_t sub_1007399C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1007399FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100739A18()
{
  v1 = [v0 image];

  return v1;
}

void sub_100739A50(void *a1)
{
  [v1 setImage:a1];
}

void (*sub_100739A98(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 image];
  return sub_1006D92F0;
}

uint64_t sub_100739AF8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *v5;
  Width = CGRectGetWidth(*&a2);
  v13 = Width;
  if (v11 == 1)
  {
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetWidth(v53);
    v14 = *(v5 + 9);
  }

  else
  {
    v13 = Width * 0.5;
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v15 = CGRectGetWidth(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    Height = CGRectGetHeight(v55);
    if (Height >= v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = Height;
    }
  }

  sub_10000CF78(v5 + 10, *(v5 + 13));
  v43 = v14;
  sub_1007709CC();
  sub_10076E0EC();
  v17 = *(v5 + 2);
  v18 = *(v5 + 6);
  if (v11)
  {
    v19 = *(v5 + 2);
  }

  else
  {
    v19 = *(v5 + 6);
  }

  v38 = v19;
  v44 = v13;
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  CGRectGetHeight(v56);
  sub_10000CF78(v5 + 15, *(v5 + 18));
  sub_10076E0FC();
  v21 = v20;
  v40 = v22;
  v41 = v17;
  if (v11)
  {
    v23 = *(v5 + 1);
    v37 = v23;
  }

  else
  {
    v37 = *(v5 + 1);
    v23 = *(v5 + 5);
    v17 = v18;
  }

  sub_10000CF78(v5 + 15, *(v5 + 18));
  v39 = v23;
  v36 = v21;
  sub_1007709CC();
  sub_10076E0EC();
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  CGRectGetWidth(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v44;
  v58.size.height = v43;
  CGRectGetHeight(v58);
  v35 = v17;
  if (v11)
  {
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v24 = v41;
    CGRectGetWidth(v59);
  }

  else
  {
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v44;
    v60.size.height = v43;
    CGRectGetMaxX(v60);
    v24 = v41;
  }

  v25 = v5[2] | v11 ^ 1;
  sub_10000CF78(v5 + 25, *(v5 + 28));
  sub_10076D2DC();
  sub_10000CF78(v51, v52);
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CD74(v51);
  v61.origin.x = a2;
  v61.origin.y = a3;
  v42 = a4;
  v61.size.width = a4;
  v61.size.height = a5;
  CGRectGetHeight(v61);
  sub_10000CF78(v5 + 20, *(v5 + 23));
  sub_10076E0FC();
  v27 = v26;
  v29 = v28;
  v30 = v24;
  v31 = v37;
  if (v25 == 1)
  {
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.height = v43;
    v62.size.width = v44;
    MaxY = CGRectGetMaxY(v62);
    v33 = 56;
    if (v11)
    {
      v33 = 24;
    }

    v31 = MaxY - *&v5[v33] - v29;
    v30 = v38;
  }

  sub_10000CF78(v5 + 20, *(v5 + 23));
  sub_1007709CC();
  sub_10076E0EC();
  if (v11)
  {
    type metadata accessor for TodayListCardLockupContainer();
    sub_10027B748(*(v5 + 35), a1);
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.height = v43;
  v63.size.width = v44;
  CGRectGetMaxY(v63);
  v64.origin.x = v30;
  v64.origin.y = v31;
  v64.size.width = v27;
  v64.size.height = v29;
  CGRectGetMaxY(v64);
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = v42;
  v65.size.height = a5;
  CGRectGetWidth(v65);
  sub_10000CF78(v5 + 30, *(v5 + 33));
  sub_10076D2DC();
  sub_10000CF78(v51, v52);
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CD74(v51);
  sub_10011E080((v5 + 328), &v49);
  if (v50)
  {
    sub_100012498(&v49, v51);
    sub_10011E080((v5 + 288), &v47);
    if (v48)
    {
      sub_100012498(&v47, &v49);
      sub_10011E080((v5 + 368), &v45);
      if (v46)
      {
        sub_100012498(&v45, &v47);
        sub_10000CF78(v51, v52);
        sub_10076E0FC();
        v66.origin.y = a3;
        v66.origin.x = a2;
        v66.size.width = v42;
        v66.size.height = a5;
        CGRectGetHeight(v66);
        v67.origin.x = v35;
        v67.origin.y = v39;
        v67.size.width = v36;
        v67.size.height = v40;
        CGRectGetMaxY(v67);
        v68.origin.x = v35;
        v68.origin.y = v39;
        v68.size.width = v36;
        v68.size.height = v40;
        CGRectGetMaxY(v68);
        sub_10000CF78(&v49, v50);
        sub_1007709CC();
        sub_10076E0EC();
        sub_10000CF78(v51, v52);
        sub_10076E0EC();
        sub_10000CF78(&v47, v48);
        sub_1007709CC();
        sub_10076E0EC();
        sub_10000CD74(&v47);
        sub_10000CD74(&v49);
        return sub_10000CD74(v51);
      }

      sub_10017FE2C(&v45);
      sub_10000CD74(&v49);
    }

    else
    {
      sub_10017FE2C(&v47);
    }

    sub_10000CD74(v51);
  }

  else
  {
    sub_10017FE2C(&v49);
  }

  sub_10011E080((v5 + 288), v51);
  if (v52)
  {
    sub_10000CF78(v51, v52);
    sub_10076E0EC();
    sub_10000CD74(v51);
  }

  else
  {
    sub_10017FE2C(v51);
  }

  sub_10011E080((v5 + 328), v51);
  if (v52)
  {
    sub_10000CF78(v51, v52);
    sub_10076E0EC();
    sub_10000CD74(v51);
  }

  else
  {
    sub_10017FE2C(v51);
  }

  sub_10011E080((v5 + 288), v51);
  if (v52)
  {
    sub_10000CF78(v51, v52);
    sub_10076E0EC();
    return sub_10000CD74(v51);
  }

  return sub_10017FE2C(v51);
}

uint64_t sub_10073A36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10073A3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10073A470@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10073A48C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10073A4E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_10073A548(unint64_t a1)
{
  v56 = sub_10076BEDC();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10076BD9C();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_10075DB7C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_10073B414(v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v62 = *(v1 + v15);
  v40 = v1;
  if (v13)
  {
    v13 = sub_10077158C();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    v59 = a1 & 0xC000000000000001;
    v1 = (v62 & 0xFFFFFFFFFFFFFF8);
    if (v62 < 0)
    {
      v16 = v62;
    }

    else
    {
      v16 = v62 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = v16;
    v54 = v62 & 0xC000000000000001;
    v53 = (v5 + 8);
    v52 = (v11 + 48);
    v50 = (v11 + 32);
    v42 = "eExtension11BundleImage";
    v51 = (v11 + 8);
    v45 = (v3 + 8);
    v17 = 4;
    v57 = v62 >> 62;
    v41 = xmmword_100784500;
    v46 = v62 & 0xFFFFFFFFFFFFFF8;
    v43 = a1;
    v49 = v10;
    v48 = v9;
    v47 = v13;
    do
    {
      v5 = v17 - 4;
      if (v59)
      {
        sub_10077149C();
        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v5 >= *(v58 + 16))
        {
          goto LABEL_45;
        }

        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v14 = sub_10077158C();
          goto LABEL_3;
        }
      }

      if (v57)
      {
        if (v5 == sub_10077158C())
        {
LABEL_38:

          break;
        }
      }

      else if (v5 == v1[2])
      {
        goto LABEL_38;
      }

      v63 = v3;
      if (v54)
      {
        v18 = sub_10077149C();
      }

      else
      {
        if (v5 >= v1[2])
        {
          goto LABEL_46;
        }

        v18 = *(v62 + 8 * v17);
      }

      v11 = v18;
      v19 = v60;
      sub_10076C01C();
      sub_10076BD8C();
      (*v53)(v19, v61);
      sub_10075DB6C();

      if ((*v52)(v9, 1, v10) == 1)
      {

        return sub_10000CFBC(v9, &unk_1009435D0);
      }

      (*v50)(v64, v9, v10);
      v20 = sub_10075DB4C();
      if (!v21)
      {

LABEL_43:

        return (*v51)(v64, v10);
      }

      v22 = v20;
      v23 = v21;
      if ((sub_10076BDFC() & 1) == 0)
      {

        goto LABEL_43;
      }

      v24.value.super.super.isa = 0;
      v25 = sub_10076BDEC(v24);
      if (qword_100940938 != -1)
      {
        swift_once();
      }

      v26 = qword_10095E478;
      v27 = v25;
      v28 = sub_10076FF6C();
      v29 = [objc_opt_self() imageNamed:v28 inBundle:v26 withConfiguration:{v27, v39}];

      if (!v29)
      {
        if (qword_1009412D8 != -1)
        {
          swift_once();
        }

        v30 = sub_10076FD4C();
        v44 = sub_10000A61C(v30, qword_1009A25D0);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = v41;
        sub_10076F27C();
        v65[3] = &type metadata for String;
        v65[0] = v22;
        v65[1] = v23;

        sub_10076F32C();
        sub_10000CFBC(v65, &unk_1009434C0);
        sub_10076FBEC();

        v29 = [objc_allocWithZone(UIImage) init];
        a1 = v43;
      }

      v10 = v49;
      (*v51)(v64, v49);
      [v29 size];
      if (qword_100941590 != -1)
      {
        swift_once();
      }

      v31 = sub_1007664FC();
      sub_10000A61C(v31, qword_1009A33F8);
      sub_1007664DC();
      v3 = v55;
      sub_10076BEEC();
      sub_10076BE9C();
      (*v45)(v3, v56);
      sub_100770A9C();
      [v11 setFrame:{0.0, 0.0, v32, v33}];
      v34 = v29;
      v35 = [v11 layer];
      [v35 removeAllAnimations];

      v36 = v34;
      [v11 setImage:v36];

      ++v17;
      v13 = v47;
      v9 = v48;
      v1 = v46;
    }

    while (v63 != v47);
  }

  v37 = v40;
  [v40 invalidateIntrinsicContentSize];
  return [v37 setNeedsLayout];
}

unint64_t sub_10073AEB4()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_10073BDC8();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_10077158C();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_1006BD1A0(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_1006BD1A0(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_10077158C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10073B0F4()
{
  v0 = sub_1007664FC();
  sub_10000DB18(v0, qword_1009A33F8);
  sub_10000A61C(v0, qword_1009A33F8);
  return sub_1007664EC();
}

id sub_10073B298(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&qword_100967858);
  __chkstk_darwin(v4);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension20AnnotationImagesView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  sub_10076D4CC();
  sub_10073BD40();
  sub_10076E18C();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v10 = v5;
    [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  return v6;
}

uint64_t sub_10073B414(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    result = sub_10077158C();
    if (result == a1)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == a1)
    {
      return result;
    }
  }

  v6 = *&v1[v3];
  if (v6 >> 62)
  {
    if (sub_10077158C() > a1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_5:
    swift_beginAccess();
    v7 = sub_10073AEB4();
    result = swift_endAccess();
    if (!v7)
    {
      __break(1u);
      return result;
    }

    [v7 removeFromSuperview];
    swift_beginAccess();
    sub_10000A5D4(&qword_100967890);
    sub_10076E17C();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_10000A5D4(&qword_100967890);
  sub_10076E15C();
  swift_endAccess();
  swift_beginAccess();
  v7 = v8;
  sub_10077019C();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  [v1 addSubview:v7];
LABEL_13:

  return sub_10073B414(a1);
}

uint64_t sub_10073B810()
{
  ObjectType = swift_getObjectType();
  v17 = sub_10076D1FC();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007664FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_10076650C();
  v9 = *(v16[0] - 8);
  *&v10 = __chkstk_darwin(v16[0]).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16[1] = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v10);
  swift_beginAccess();

  sub_10016EC98(v13);

  if (qword_100941590 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v5, qword_1009A33F8);
  (*(v6 + 16))(v8, v14, v5);
  sub_1007664CC();
  sub_10076422C();
  sub_1007664BC();
  (*(v2 + 8))(v4, v17);
  return (*(v9 + 8))(v12, v16[0]);
}

id sub_10073BB14@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AnnotationImagesView()
{
  result = qword_100967840;
  if (!qword_100967840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10073BC30()
{
  sub_10073BCD0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10073BCD0()
{
  if (!qword_100967850)
  {
    sub_10000CE78(&qword_100967858);
    sub_10073BD40();
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_100967850);
    }
  }
}

unint64_t sub_10073BD40()
{
  result = qword_100967860;
  if (!qword_100967860)
  {
    sub_10000CE78(&qword_100967858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100967860);
  }

  return result;
}

uint64_t sub_10073BDC8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1004BE250(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10073BE2C(unint64_t a1, uint64_t a2)
{
  v46 = sub_10076BEDC();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076BD9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - v11;
  v54 = sub_10075DB7C();
  v13 = *(v54 - 8);
  __chkstk_darwin(v54);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = sub_10077158C();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    goto LABEL_28;
  }

  v56 = _swiftEmptyArrayStorage;
  v53 = v16;
  result = sub_1007714EC();
  if (v53 < 0)
  {
    __break(1u);
    return result;
  }

  v50 = v15;
  v37[1] = a2;
  v19 = 0;
  v51 = (v7 + 8);
  v52 = a1 & 0xC000000000000001;
  v20 = (v13 + 48);
  v47 = (v13 + 8);
  v48 = (v13 + 32);
  v39 = "eExtension11BundleImage";
  v43 = (v4 + 8);
  v38 = xmmword_100784500;
  v44 = a1;
  v49 = v6;
  v42 = (v13 + 48);
  do
  {
    v21 = v54;
    if (v52)
    {
      sub_10077149C();
    }

    else
    {
    }

    sub_10076C01C();
    sub_10076BD8C();
    (*v51)(v9, v6);
    sub_10075DB6C();

    if ((*v20)(v12, 1, v21) == 1)
    {
      sub_10000CFBC(v12, &unk_1009435D0);
LABEL_7:
      sub_10076DDDC();
      swift_allocObject();
      sub_10076DDBC();
      goto LABEL_8;
    }

    v22 = v50;
    (*v48)(v50, v12, v21);
    v23 = sub_10075DB4C();
    if (!v24)
    {
      (*v47)(v22, v21);
LABEL_26:
      v6 = v49;
      goto LABEL_7;
    }

    v25 = v23;
    v26 = v24;
    if ((sub_10076BDFC() & 1) == 0)
    {

      (*v47)(v50, v21);
      goto LABEL_26;
    }

    v27.value.super.super.isa = 0;
    v28 = sub_10076BDEC(v27);
    if (qword_100940938 != -1)
    {
      swift_once();
    }

    v29 = qword_10095E478;
    v30 = v28;
    v31 = sub_10076FF6C();
    v32 = [objc_opt_self() imageNamed:v31 inBundle:v29 withConfiguration:v30];

    if (!v32)
    {
      v41 = v30;
      if (qword_1009412D8 != -1)
      {
        swift_once();
      }

      v33 = sub_10076FD4C();
      v40 = sub_10000A61C(v33, qword_1009A25D0);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = v38;
      sub_10076F27C();
      v55[3] = &type metadata for String;
      v55[0] = v25;
      v55[1] = v26;

      sub_10076F32C();
      sub_10000CFBC(v55, &unk_1009434C0);
      sub_10076FBEC();

      v32 = [objc_allocWithZone(UIImage) init];
      v30 = v41;
    }

    (*v47)(v50, v54);
    [v32 size];
    if (qword_100941590 != -1)
    {
      swift_once();
    }

    v34 = sub_1007664FC();
    sub_10000A61C(v34, qword_1009A33F8);
    sub_1007664DC();
    v35 = v45;
    sub_10076BEEC();
    sub_10076BE9C();
    (*v43)(v35, v46);
    sub_100770A9C();
    sub_10076DDDC();
    swift_allocObject();
    sub_10076DDBC();

    v6 = v49;
    v20 = v42;
LABEL_8:

    ++v19;
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
  }

  while (v53 != v19);
  v17 = v56;
LABEL_28:
  sub_10016E360(v17);

  if (qword_100941590 != -1)
  {
    swift_once();
  }

  v36 = sub_1007664FC();
  sub_10000A61C(v36, qword_1009A33F8);
  sub_1007664AC();
}

uint64_t sub_10073C6B8()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_100967898);
  v1 = sub_10000A61C(v0, qword_100967898);
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1000);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10073C780(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = sub_10076D3DC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton] = 1;
  v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  *&v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = 3;
  v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 1;
  *&v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString] = 0;
  v21 = &v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  *v21 = 0;
  v21[1] = 0;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v17, qword_1009A1000);
  type metadata accessor for FadeInDynamicTypeButton();
  v23 = *(v18 + 16);
  v23(v20, v22, v17);
  v24 = a1;
  v25 = sub_1004CF028(v20, v24);

  v26 = v25;
  v47._countAndFlagsBits = 0x4D5F4E4F49544341;
  v47._object = 0xEB0000000045524FLL;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_1007622EC(v47, v48);
  v27 = sub_10076FF6C();

  [v26 setTitle:v27 forState:0];

  [v26 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v26 setAdjustsImageWhenHighlighted:0];

  *&v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] = v26;
  sub_1007626BC();
  v28 = sub_10076269C();
  *&v6[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] = v28;
  v29 = v28;
  sub_10076266C();

  v30 = type metadata accessor for ExpandableTextView();
  v46.receiver = v6;
  v46.super_class = v30;
  v31 = objc_msgSendSuper2(&v46, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 setUserInteractionEnabled:1];
  [v35 setBackgroundColor:v24];
  v36 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
  [*&v35[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setNumberOfLines:*&v35[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines]];
  [*&v35[v36] setLineBreakMode:0];
  [*&v35[v36] setTextAlignment:4];
  if (qword_100941598 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v17, qword_100967898);
  v23(v16, v37, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100016E2C(v16, v45, &unk_100943250);
  sub_1007625DC();
  sub_10000CFBC(v16, &unk_100943250);
  [v35 addSubview:*&v35[v36]];
  v38 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton;
  v39 = [*&v35[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] traitCollection];
  v40 = [v39 preferredContentSizeCategory];

  sub_10077088C();
  v41 = *&v35[v38];
  [v41 addTarget:v35 action:"moreFrom:" forControlEvents:64];

  v42 = *&v35[v38];
  sub_1007641DC();

  [v35 addSubview:*&v35[v38]];
  return v35;
}

void sub_10073CEFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel);
  v7 = [v6 text];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

LABEL_11:
    v14 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_100764D2C();

      sub_100764CDC();
      sub_100764CCC();
      v15 = sub_100764D4C();
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_10076FF9C();
  v11 = v10;

  if (a2)
  {
    if (v11)
    {
      if (v9 == a1 && v11 == a2)
      {

LABEL_24:

        return;
      }

      v13 = sub_10077167C();

      if (v13)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    return;
  }

  v15 = 0;
  v16 = 1;
LABEL_19:
  v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString);
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString) = v15;
  v18 = v15;

  if (v15)
  {
    sub_100764D0C();

LABEL_27:
    v19 = sub_10076FF6C();

    goto LABEL_28;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:
  [v6 setText:v19];

  sub_10073D75C();
}

void sub_10073D114(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel);
  v5 = [v4 attributedText];
  v6 = v5;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v8 = a1;
LABEL_8:
    v17 = v8;
    if ([v8 length])
    {
      v9 = sub_100764D2C();
      v10 = v17;
      sub_100764CCC();
      v11 = objc_allocWithZone(v9);
      v12 = sub_100764D3C();
LABEL_11:
      v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString);
      *(v2 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString) = v12;
      v14 = v12;

      if (v12)
      {
        v15 = sub_100764CBC();

        v18 = a1;
      }

      else
      {
        v18 = a1;
        v15 = v18;
      }

      [v4 setAttributedText:v15];

      sub_10073D75C();
      v8 = v18;
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  sub_100016F40(0, &qword_1009544A0);
  v16 = a1;
  v7 = sub_100770EEC();

  v8 = v16;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
}

id sub_10073D404()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ExpandableTextView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  sub_10076422C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  [v10 setFrame:{v3, v5, CGRectGetWidth(v19), v12}];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton];
  result = [v13 isHidden];
  if ((result & 1) == 0)
  {
    result = [v10 numberOfLines];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString];
      if (v15)
      {
        v16 = v15;
        [v10 numberOfLines];
        [v10 lineBreakMode];
        v17 = sub_100764CEC();
      }

      else
      {
        v17 = 0;
      }

      [v13 sizeThatFits:{v7, v9}];
      v20.origin.x = v3;
      v20.origin.y = v5;
      v20.size.width = v7;
      v20.size.height = v9;
      CGRectGetMaxX(v20);
      v21.origin.x = v3;
      v21.origin.y = v5;
      v21.size.width = v7;
      v21.size.height = v9;
      CGRectGetMaxY(v21);
      sub_10076422C();
      sub_100770A5C();
      [v13 setFrame:?];
      *(v13 + qword_10095A078) = v17 == 1;
      return sub_1004CEBB0();
    }
  }

  return result;
}

id sub_10073D75C()
{
  v7 = sub_10000A5D4(&unk_100943250);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v47 - v9;
  v11 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] attributedText];
  if (v11)
  {
    if (v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton] == 1 && v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
    {
      if (v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] == 1)
      {
        v12 = v11;
        [*&v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setHidden:0];
LABEL_23:

        return [v0 setNeedsLayout];
      }

      v12 = v11;
      v14 = [v11 length];
      v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton];
      if (!v14)
      {
        [*&v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setHidden:1];
        goto LABEL_23;
      }

      v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
      type metadata accessor for ExpandableTextView();
      sub_10076422C();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v4 = v17;
        v3 = v18;
        v21 = fabs(v17);
        if (v17 > 1.79769313e308)
        {
          v21 = 1.79769313e308;
        }

        v22 = 0.0;
        if (v21 == 0.0)
        {
          goto LABEL_22;
        }

        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v2 = v12;
        v25 = [v0 traitCollection];
        v26 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
        v27 = objc_allocWithZone(v26);
        v28 = &v27[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
        *v28 = UIEdgeInsetsZero.top;
        v28[1] = left;
        v28[2] = bottom;
        v28[3] = right;
        *&v27[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = v20;
        v29 = &v27[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
        *v29 = v4;
        *(v29 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v27[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v25;
        *&v27[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v2;
        v48.receiver = v27;
        v48.super_class = v26;
        v1 = objc_msgSendSuper2(&v48, "init");
        if (qword_1009415A0 == -1)
        {
LABEL_15:
          v30 = qword_1009678B0;
          v31 = [qword_1009678B0 objectForKey:v1];
          if (v31)
          {
            v32 = v31;

            v22 = *&v32[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements + 8];
          }

          else
          {
            v33 = qword_100941598;
            v32 = v2;
            if (v33 != -1)
            {
              swift_once();
            }

            v34 = sub_10076D3DC();
            v35 = sub_10000A61C(v34, qword_100967898);
            v36 = *(v34 - 8);
            (*(v36 + 16))(v10, v35, v34);
            (*(v36 + 56))(v10, 0, 1, v34);
            sub_10076D80C();
            sub_10076D82C();
            sub_10076D81C();
            v38 = v37;
            v40 = v39;
            v42 = v41;

            sub_10000CFBC(v10, &unk_100943250);
            v22 = top + bottom + v38;
            v43 = type metadata accessor for ExpandableTextView.CacheValue();
            v44 = objc_allocWithZone(v43);
            v45 = &v44[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
            *v45 = v4;
            v45[1] = v22;
            *(v45 + 2) = v40;
            *(v45 + 3) = v42;
            v47.receiver = v44;
            v47.super_class = v43;
            v46 = objc_msgSendSuper2(&v47, "init");
            [v30 setObject:v46 forKey:v1];
          }

LABEL_22:
          [v15 setHidden:v3 >= v22];
          goto LABEL_23;
        }
      }

      swift_once();
      goto LABEL_15;
    }
  }

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setHidden:1];
  return [v0 setNeedsLayout];
}

id sub_10073DD40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandableTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id (*sub_10073DE5C(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) numberOfLines];
  return sub_10073DEBC;
}

id (*sub_10073DF04(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) lineBreakMode];
  return sub_10073DF64;
}

id sub_10073DF88()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) font];

  return v1;
}

void sub_10073DFCC(void *a1)
{
  [*(*v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setFont:a1];
}

void (*sub_10073E020(void *a1))(id *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel);
  a1[1] = v3;
  *a1 = [v3 font];
  return sub_10073E088;
}

void sub_10073E088(id *a1)
{
  v1 = *a1;
  [a1[1] setFont:?];
}

uint64_t sub_10073E138(uint64_t a1)
{
  swift_getObjectType();
  sub_100016E2C(a1, v11, &unk_1009434C0);
  if (!v12)
  {
    sub_10000CFBC(v11, &unk_1009434C0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins);
  v4 = &v10[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
  if (*(v1 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins) != *&v10[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins] || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || *(v1 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines) != *&v10[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] || *(v1 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize) != *&v10[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize] || *(v1 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize + 8) != *&v10[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize + 8] || (sub_100016F40(0, &qword_10094D040), v5 = *&v10[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection], v6 = sub_100770EEC(), v5, (v6 & 1) == 0))
  {

    goto LABEL_14;
  }

  v7 = *&v10[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText];
  v8 = sub_100770EEC();

  return v8 & 1;
}

Swift::Int sub_10073E358()
{
  sub_1007717BC();
  sub_1007704DC();
  sub_10077176C(*(v0 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines));
  v1 = v0 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize;
  v2 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_10077178C(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_10077178C(*&v3);
  sub_100770EFC();
  sub_100770EFC();
  return sub_10077179C();
}

uint64_t sub_10073E4D8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_100016E2C(a1, v17, &unk_1009434C0);
  v4 = v18;
  if (v18)
  {
    v5 = sub_10000CF78(v17, v18);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_10077165C();
    (*(v6 + 8))(v9, v4);
    sub_10000CD74(v17);
  }

  else
  {
    v10 = 0;
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "isEqual:", v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_100016E2C(a1, v17, &unk_1009434C0);
    if (v18)
    {
      if (swift_dynamicCast())
      {
        v12 = v15[1];
        v13 = JUMeasurementsEqual();

        return v13;
      }
    }

    else
    {
      sub_10000CFBC(v17, &unk_1009434C0);
    }
  }

  return 0;
}

uint64_t sub_10073E6FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10000CFBC(v10, &unk_1009434C0);
  return v8 & 1;
}

Swift::Int sub_10073E7B8()
{
  sub_1007717BC();
  v1 = (v0 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements);
  v2 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_10077178C(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_10077178C(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_10077178C(*&v4);
  v5 = v1[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_10077178C(*&v5);
  return sub_10077179C();
}

id sub_10073E8B8()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_1009678B0 = result;
  return result;
}

BOOL sub_10073E8EC(id a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v20 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v20 - 8);
  v22 = &v50 - v21;
  v23 = __OFADD__(a2, 1);
  v24 = a2 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = fabs(a8);
  if (a8 > 1.79769313e308)
  {
    v25 = 1.79769313e308;
  }

  v26 = 0.0;
  if (v25 != 0.0)
  {
    v9 = a1;
    v27 = [a3 traitCollection];
    v28 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
    v29 = objc_allocWithZone(v28);
    v30 = &v29[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
    *v30 = a4;
    v30[1] = a5;
    v30[2] = a6;
    v30[3] = a7;
    *&v29[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = v24;
    v31 = &v29[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
    *v31 = a8;
    *(v31 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v29[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v27;
    *&v29[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v9;
    v51.receiver = v29;
    v51.super_class = v28;
    v10 = &off_100911000;
    a1 = objc_msgSendSuper2(&v51, "init");
    if (qword_1009415A0 == -1)
    {
LABEL_6:
      v32 = qword_1009678B0;
      v33 = [qword_1009678B0 objectForKey:a1];
      if (v33)
      {
        v34 = v33;

        v26 = *&v34[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements + 8];
      }

      else
      {
        v35 = qword_100941598;
        v34 = v9;
        if (v35 != -1)
        {
          swift_once();
        }

        v36 = sub_10076D3DC();
        v37 = sub_10000A61C(v36, qword_100967898);
        v38 = *(v36 - 8);
        (*(v38 + 16))(v22, v37, v36);
        (*(v38 + 56))(v22, 0, 1, v36);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v40 = v39;
        v42 = v41;
        v44 = v43;

        sub_10000CFBC(v22, &unk_100943250);
        v26 = a4 + a6 + v40;
        v45 = type metadata accessor for ExpandableTextView.CacheValue();
        v46 = objc_allocWithZone(v45);
        v47 = &v46[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v47 = a8;
        v47[1] = v26;
        *(v47 + 2) = v42;
        *(v47 + 3) = v44;
        v50.receiver = v46;
        v50.super_class = v45;
        v48 = objc_msgSendSuper2(&v50, v10[185]);
        [v32 setObject:v48 forKey:a1];
      }

      return v26 > a9;
    }

LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  return v26 > a9;
}

void sub_10073EC90(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString;
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100764D0C();
    v9 = v8;

    if (!v3)
    {
      if (!v9)
      {
        return;
      }

      v3 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
    v7 = 0;
  }

  v10 = v3;
  v11 = sub_100764D0C();
  v13 = v12;

  if (!v9)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v13)
  {
LABEL_17:

LABEL_18:
    v16 = v10;
    v17 = sub_100764D1C();

    if (v17)
    {
      v3 = 0;
    }

    else
    {
      v18 = v16;
    }

LABEL_21:
    v19 = *(v2 + v4);
    *(v2 + v4) = v3;
    v20 = v3;

    v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel);
    if (v3)
    {
      v22 = sub_100764CBC();
    }

    else
    {
      v22 = 0;
    }

    [v21 setAttributedText:v22];

    sub_10073D75C();
    return;
  }

  if (v7 != v11 || v9 != v13)
  {
    v15 = sub_10077167C();

    if (v15)
    {
      return;
    }

    goto LABEL_18;
  }
}

id sub_10073EE5C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_1009A3418];
  v12 = sub_10075FD2C();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a1[qword_1009A3410] = v13;
  v15.receiver = a1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t type metadata accessor for FramedArtworkCollectionViewCell()
{
  result = qword_1009679C8;
  if (!qword_1009679C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10073F050()
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_10073F140(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_10073F0E8(uint64_t a1)
{
  result = sub_10073F140(&qword_100967B50, type metadata accessor for FramedArtworkCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10073F140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10073F188(void *a1)
{
  if (*v1 != *a1 || (sub_1007713EC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v3 = *(result + 56) == v1[7] && *(result + 64) == v1[8];
  if (v3 || (v4 = result, v5 = sub_10077167C(), result = v4, (v5)) && (*(result + 80) == v1[10] && *(result + 88) == v1[11] || (sub_10077167C()))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_10073F284()
{
  sub_1007713FC();
  sub_10077008C();
  sub_10077177C(0);
  sub_10077008C();
  sub_10077177C(0);
}

uint64_t sub_10073F2E4()
{
}

uint64_t sub_10073F314()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_10073F3A0(uint64_t a1, int a2)
{
  v5 = sub_10076D39C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007619EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = _swiftEmptyArrayStorage;
  sub_1007619FC();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for ShareSheetData.Metadata.article(_:))
  {
    LODWORD(v109) = a2;
    v45 = a1;
    if (v13 == enum case for ShareSheetData.Metadata.product(_:))
    {
      v110 = v6;
      v111 = v5;
      (*(v10 + 96))(v12, v9);
      v46 = *v12;
      sub_10000A5D4(&unk_1009609A0);
      inited = swift_initStackObject();
      v106 = xmmword_100783DD0;
      *(inited + 16) = xmmword_100783DD0;
      v48 = UIActivityTypeSaveToNotes;
      *(inited + 32) = UIActivityTypeSaveToNotes;
      v49 = v48;
      v50 = sub_100179CCC(inited);
      swift_setDeallocating();
      sub_1007404F4(inited + 32);
      v51 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

      v52 = sub_1005FF6B0(v2, a1, v50);
      sub_10077019C();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v107 = v52;
      sub_10077025C();
      v108 = v46;
      v53 = sub_1007683CC();
      v54 = swift_initStackObject();
      *(v54 + 16) = v106;
      *(v54 + 32) = v49;
      v55 = v54 + 32;
      v56 = sub_100179CCC(v54);
      swift_setDeallocating();
      sub_1007404F4(v55);
      v57 = type metadata accessor for ArtworkActivityItemProvider();
      v58 = objc_allocWithZone(v57);
      v59 = OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_imageBox;
      v117 = 0;
      sub_10000A5D4(&qword_100967C38);
      swift_allocObject();
      *&v58[v59] = sub_10076ACBC();
      *&v58[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artwork] = v53;
      *&v58[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkLoader] = v45;

      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D38C();
      (*(v110 + 8))(v8, v111);
      sub_10076BEFC();
      sub_100770A9C();
      *&v58[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10076BFCC();
      if (qword_100941450 != -1)
      {
        swift_once();
      }

      v60 = qword_1009626F8;

      sub_100740404(v56, v60);
      *&v58[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v61;
      v58[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = v109 & 1;
      v62 = [objc_allocWithZone(UIImage) init];
      v115.receiver = v58;
      v115.super_class = v57;
      v63 = objc_msgSendSuper2(&v115, "initWithPlaceholderItem:", v62);

      sub_10000A5D4(&unk_100942870);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1007841E0;
      *(v64 + 32) = *&v63[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig];
      v65 = v63;

      v66._rawValue = v64;
      sub_100760BAC(v66);

      v67 = v65;
      sub_10077019C();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v28 = v119;
      v68 = sub_10076838C();
      v69 = v107;
      if (!v68)
      {

        return v28;
      }

      v70 = v68;
      v71 = type metadata accessor for NotesMetadataActivityItemProvider();
      v72 = objc_allocWithZone(v71);
      *&v72[OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_1007B6FA0;
      *&v72[OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider_metadata] = v70;

      v73 = sub_10076FF6C();
      v114.receiver = v72;
      v114.super_class = v71;
      v74 = objc_msgSendSuper2(&v114, "initWithPlaceholderItem:", v73);

      v75 = v74;
      sub_10077019C();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      goto LABEL_38;
    }

    if (v13 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v10 + 8))(v12, v9);
      return _swiftEmptyArrayStorage;
    }

    v111 = v5;
    (*(v10 + 96))(v12, v9);
    v76 = *v12;
    v77 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

    v78 = sub_1005FF6B0(v2, a1, &_swiftEmptySetSingleton);
    sub_10077019C();
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    v109 = v78;
    v110 = v6;
    sub_10077025C();
    v79 = sub_10075E14C();
    v81 = v80;
    v82 = type metadata accessor for TextActivityItemProvider();
    v83 = objc_allocWithZone(v82);
    v84 = &v83[OBJC_IVAR____TtC20ProductPageExtension24TextActivityItemProvider_text];
    *v84 = v79;
    v84[1] = v81;
    v85 = qword_100941310;

    if (v85 != -1)
    {
      swift_once();
    }

    v86 = qword_100960F20;

    sub_100740404(&_swiftEmptySetSingleton, v86);
    *&v83[OBJC_IVAR____TtC20ProductPageExtension24TextActivityItemProvider_excludedActivityTypes] = v87;
    v88 = sub_10076FF6C();

    v118.receiver = v83;
    v118.super_class = v82;
    v89 = objc_msgSendSuper2(&v118, "initWithPlaceholderItem:", v88);

    v27 = v89;
    sub_10077019C();
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v28 = v119;
    v90 = sub_10075E15C();
    if (v90)
    {
      v91 = v90;
      v108 = v76;
      sub_10000A5D4(&unk_1009609A0);
      v92 = swift_initStackObject();
      *(v92 + 16) = xmmword_100783DD0;
      v93 = UIActivityTypeSaveToNotes;
      *(v92 + 32) = UIActivityTypeSaveToNotes;
      v94 = v93;
      v107 = sub_100179CCC(v92);
      swift_setDeallocating();
      sub_1007404F4(v92 + 32);
      v95 = type metadata accessor for ArtworkActivityItemProvider();
      v96 = objc_allocWithZone(v95);
      v97 = OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_imageBox;
      v117 = 0;
      sub_10000A5D4(&qword_100967C38);
      swift_allocObject();

      *&v96[v97] = sub_10076ACBC();
      *&v96[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artwork] = v91;
      *&v96[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkLoader] = a1;

      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D38C();
      (*(v110 + 8))(v8, v111);
      sub_10076BEFC();
      sub_100770A9C();
      *&v96[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10076BFCC();
      if (qword_100941450 != -1)
      {
        swift_once();
      }

      v98 = qword_1009626F8;

      sub_100740404(v107, v98);
      *&v96[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v99;
      v96[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
      v100 = [objc_allocWithZone(UIImage) init];
      v116.receiver = v96;
      v116.super_class = v95;
      v101 = objc_msgSendSuper2(&v116, "initWithPlaceholderItem:", v100);

      sub_10000A5D4(&unk_100942870);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1007841E0;
      *(v102 + 32) = *&v101[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig];
      v103 = v101;

      v104._rawValue = v102;
      sub_100760BAC(v104);

      v44 = v103;
      sub_10077019C();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      goto LABEL_37;
    }

LABEL_39:

    return v28;
  }

  v111 = v5;
  (*(v10 + 96))(v12, v9);
  v14 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

  v15 = sub_1005FF6B0(v2, a1, &_swiftEmptySetSingleton);
  sub_10077019C();
  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  v109 = v15;
  v110 = v6;
  sub_10077025C();
  v16 = sub_10076834C();
  v18 = v17;
  v19 = type metadata accessor for TextActivityItemProvider();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC20ProductPageExtension24TextActivityItemProvider_text];
  *v21 = v16;
  v21[1] = v18;
  v22 = qword_100941310;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_100960F20;

  sub_100740404(&_swiftEmptySetSingleton, v23);
  *&v20[OBJC_IVAR____TtC20ProductPageExtension24TextActivityItemProvider_excludedActivityTypes] = v24;
  v25 = sub_10076FF6C();

  v113.receiver = v20;
  v113.super_class = v19;
  v26 = objc_msgSendSuper2(&v113, "initWithPlaceholderItem:", v25);

  v27 = v26;
  sub_10077019C();
  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v28 = v119;
  v29 = sub_10076835C();
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = v29;
  sub_10000A5D4(&unk_1009609A0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_100783DD0;
  v32 = UIActivityTypeSaveToNotes;
  *(v31 + 32) = UIActivityTypeSaveToNotes;
  v33 = v32;
  v108 = sub_100179CCC(v31);
  swift_setDeallocating();
  sub_1007404F4(v31 + 32);
  v34 = type metadata accessor for ArtworkActivityItemProvider();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_imageBox;
  v117 = 0;
  sub_10000A5D4(&qword_100967C38);
  swift_allocObject();

  *&v35[v36] = sub_10076ACBC();
  *&v35[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artwork] = v30;
  *&v35[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkLoader] = a1;

  sub_10076BEFC();
  sub_10076D3AC();
  sub_10076D38C();
  (*(v110 + 8))(v8, v111);
  sub_10076BEFC();
  sub_100770A9C();
  *&v35[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10076BFCC();
  if (qword_100941450 != -1)
  {
    swift_once();
  }

  v37 = qword_1009626F8;

  sub_100740404(v108, v37);
  *&v35[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v38;
  v35[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v39 = [objc_allocWithZone(UIImage) init];
  v112.receiver = v35;
  v112.super_class = v34;
  v40 = objc_msgSendSuper2(&v112, "initWithPlaceholderItem:", v39);

  sub_10000A5D4(&unk_100942870);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1007841E0;
  *(v41 + 32) = *&v40[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig];
  v42 = v40;

  v43._rawValue = v41;
  sub_100760BAC(v43);

  v44 = v42;
  sub_10077019C();
  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

LABEL_37:
  sub_10077025C();

LABEL_38:

  return v119;
}

void sub_100740404(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_100178860(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1007404F4(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100740550(void *a1, uint64_t a2, uint64_t a3)
{
  v30[1] = a2;
  v31 = a1;
  v4 = sub_100770F9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075D9EC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_10077107C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10077108C();
  (*(v13 + 104))(v15, enum case for UIButton.Configuration.Size.large(_:), v12);
  sub_100770F8C();
  if (a3)
  {
    v30[0] = v4;
    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = NSFontAttributeName;
    v17 = qword_1009415B8;

    v18 = NSFontAttributeName;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_100967C40;
    *(inited + 64) = sub_100016F40(0, &qword_100942F00);
    *(inited + 40) = v19;
    v20 = v19;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B10);
    sub_10075DA0C();
    sub_10075D9AC();
    v21 = sub_10075D99C();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
    sub_10077101C();
    v4 = v30[0];
  }

  sub_100770FEC();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  sub_100770FAC();
  v22 = sub_100770F5C();
  sub_10076E44C();
  v22(v32, 0);
  sub_100016F40(0, &qword_100942F10);
  v23 = objc_opt_self();
  v24 = [v23 systemGray6Color];
  v25.super.isa = [v23 secondarySystemBackgroundColor];
  v26.super.isa = v24;
  sub_100770DEC(v26, v25);
  sub_10077103C();
  sub_100770FBC();
  if (qword_1009415C0 != -1)
  {
    swift_once();
  }

  v27 = qword_100967C48;
  sub_100770F4C();
  v28 = v31;
  return sub_1007710BC();
}

uint64_t sub_100740A18(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_10076048C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a2, v5, v7);
  v10 = sub_10076046C();
  result = (*(v6 + 8))(v9, v5);
  *a3 = v10;
  return result;
}

void sub_100740B14()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleHeadline;
  v2 = [v0 preferredFontDescriptorWithTextStyle:v1];
  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

  qword_100967C40 = v3;
}

void sub_100740BB8()
{
  if (qword_1009415B8 != -1)
  {
    swift_once();
  }

  v0 = qword_100967C40;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_100967C48 = v3;
}

char *sub_100740C54(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewAction;
  v13 = sub_10000A5D4(&qword_100955BD0);
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportAction], 1, 1, v13);
  v15 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton] = v15;
  v16 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton] = v16;
  v17 = type metadata accessor for ProductReviewActionsView();
  v42.receiver = v4;
  v42.super_class = v17;
  v18 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton;
  v24 = qword_1009415A8;
  v25 = *&v22[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton];
  if (v24 != -1)
  {
    swift_once();
  }

  sub_100740550(qword_1009A3420, 0, 0);
  v26 = sub_10077111C();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 0, 1, v26);
  sub_10077114C();

  v28 = [*&v22[v23] titleLabel];
  if (v28)
  {
    if (qword_1009415B8 != -1)
    {
      v40 = v28;
      swift_once();
      v28 = v40;
    }

    v29 = v28;
    [v28 setFont:qword_100967C40];
  }

  [*&v22[v23] addTarget:v22 action:"writeReviewWithSender:" forControlEvents:64];
  v30 = *&v22[v23];
  v31 = [v22 tintColor];
  [v30 setTitleColor:v31 forState:0];

  [v22 addSubview:*&v22[v23]];
  v32 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton;
  v33 = qword_1009415B0;
  v34 = *&v22[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton];
  if (v33 != -1)
  {
    swift_once();
  }

  sub_100740550(qword_1009A3428, 0, 0);
  v27(v11, 0, 1, v26);
  sub_10077114C();

  v35 = [*&v22[v32] titleLabel];
  if (v35)
  {
    if (qword_1009415B8 != -1)
    {
      v41 = v35;
      swift_once();
      v35 = v41;
    }

    v36 = v35;
    [v35 setFont:qword_100967C40];
  }

  [*&v22[v32] addTarget:v22 action:"supportWithSender:" forControlEvents:64];
  v37 = *&v22[v32];
  v38 = [v22 tintColor];

  [v37 setTitleColor:v38 forState:0];
  [v22 addSubview:*&v22[v32]];

  return v22;
}

uint64_t sub_100741274(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_10000A5D4(&qword_100955BD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = *a2;
  swift_beginAccess();
  sub_1003A683C(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_100952650;
    v16 = v9;
    return sub_10000CFBC(v16, v15);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_100761FDC();
  v17 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();

  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v15 = &unk_100943200;
    v16 = v6;
    return sub_10000CFBC(v16, v15);
  }

  sub_100761FEC();
  v20 = sub_100761FDC();
  sub_100263BF0(v21, 1, v20, v6);

  (*(v11 + 8))(v13, v10);

  return (*(v18 + 8))(v6, v17);
}

uint64_t sub_1007415B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CFBC(v9, &unk_1009434C0);
}

uint64_t sub_10074163C@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_10076DFEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_10076D8DC();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_10076D8AC();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100016F40(0, &qword_100947240);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView();
  v20 = v19;
  sub_10076422C();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v21 * 0.5 + -6.0;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_10076DFFC();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000DB7C(v49);
  v24 = v8;
  v25 = v5;
  sub_10076E00C();
  sub_10076D8BC();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_10000CD74(v49);
  v29 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_10076422C();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31 * 0.5 + -6.0;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000DB7C(v49);
  sub_10076E00C();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for HorizontalStack;
  sub_10000DB7C(v32);
  v33 = v44;
  sub_10076D8BC();
  v26(v33, v28);
  return sub_10000CD74(v49);
}

uint64_t sub_100741AF8@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_10076DFEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_10076D65C();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_10076D63C();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100016F40(0, &qword_100947240);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView();
  v20 = v19;
  sub_10076422C();
  Width = CGRectGetWidth(v52);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = Width;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_10076DFFC();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000DB7C(v49);
  v24 = v8;
  v25 = v5;
  sub_10076E00C();
  sub_10076D64C();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_10000CD74(v49);
  v29 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_10076422C();
  v31 = CGRectGetWidth(v53);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000DB7C(v49);
  sub_10076E00C();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v32);
  v33 = v44;
  sub_10076D64C();
  v26(v33, v28);
  return sub_10000CD74(v49);
}

uint64_t sub_100741F94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton);
  type metadata accessor for ProductReviewActionsView();
  sub_10076422C();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton);
  sub_10076422C();
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  sub_10076422C();
  v14 = v13 * 0.5 + -6.0;
  if (v14 < v7 || v14 < v12)
  {

    return sub_100741AF8(a1);
  }

  else
  {

    return sub_10074163C(a1);
  }
}

double sub_10074218C(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton);
  v7 = [v6 titleForState:0];
  if (v7)
  {
    v8 = v7;
LABEL_3:
    v9 = sub_10076FF9C();
    v11 = v10;

    goto LABEL_7;
  }

  v12 = [v6 titleLabel];
  if (v12)
  {
    v13 = v12;
    v8 = [v12 text];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = 0;
LABEL_7:
  v14 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton);
  v15 = [v14 titleForState:0];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v20 = [v14 titleLabel];
    if (!v20 || (v21 = v20, v16 = [v20 text], v21, !v16))
    {
      v17 = 0;
      v19 = 0;
      goto LABEL_13;
    }
  }

  v17 = sub_10076FF9C();
  v19 = v18;

LABEL_13:
  v22 = sub_1007425DC(v9, v11, v17, v19, a1, a2);

  return v22;
}

id sub_100742388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewActionsView()
{
  result = qword_100967C80;
  if (!qword_100967C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10074249C()
{
  sub_1001D92E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1007425DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = sub_10077111C();
  __chkstk_darwin(v12 - 8);
  sub_100016F40(0, &qword_100947240);
  if (qword_1009415A8 != -1)
  {
    swift_once();
  }

  sub_100740550(qword_1009A3420, a1, a2);
  v13 = sub_10077112C();
  [v13 sizeThatFits:{a5, a6}];
  if (qword_1009415B0 != -1)
  {
    swift_once();
  }

  sub_100740550(qword_1009A3428, a3, a4);
  v14 = sub_10077112C();
  [v14 sizeThatFits:{a5, a6}];

  return a5;
}

uint64_t sub_1007427BC(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_1007713EC())
    {
      type metadata accessor for NavigationActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v1[7] && *(result + 64) == v1[8];
      if (v5 || (sub_10077167C() & 1) != 0)
      {
        v6 = *(v4 + 72);
        if (v6)
        {

          v8 = v6(v7);
          v10 = v9;
          v11 = v1[9];
          if (!v11)
          {
            if (!v9)
            {
              goto LABEL_23;
            }

LABEL_19:

            return 0;
          }

          v12 = v8;
          v13 = v11();
          v15 = v14;
          if (v10)
          {
            if (v14)
            {
              if (v12 == v13 && v10 == v14)
              {
              }

              else
              {
                v19 = sub_10077167C();

                if ((v19 & 1) == 0)
                {
LABEL_28:

                  return 0;
                }
              }

LABEL_23:
              v20 = *(v4 + 88);
              v21 = v2[11];
              if (!v20)
              {
                v25 = v21;

                if (!v21)
                {
                  return 1;
                }

                return 0;
              }

              if (v21)
              {
                type metadata accessor for DebugSettingsProvider();
                v22 = v21;
                v23 = v20;
                v24 = sub_100770EEC();

                return v24 & 1;
              }

              goto LABEL_28;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v16 = v1[9];

          if (!v16)
          {
            goto LABEL_23;
          }

          v16(v17);
          v15 = v18;
        }

        if (!v15)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }
  }

  return 0;
}

void sub_1007429F8()
{
  sub_1007713FC();
  v1 = sub_10077008C();
  v2 = *(v0 + 72);
  if (v2 && (v2(v1), v3))
  {
    sub_10077177C(1u);
    sub_10077008C();
  }

  else
  {
    sub_10077177C(0);
  }

  v4 = *(v0 + 88);
  if (v4)
  {
    sub_10077177C(1u);
    v5 = v4;
    sub_100770EFC();
  }

  else
  {
    sub_10077177C(0);
  }
}

uint64_t sub_100742B04()
{

  sub_1000167E0(*(v0 + 72));
}

uint64_t sub_100742B44()
{
  sub_100016C74(v0 + 16);

  sub_1000167E0(*(v0 + 72));

  return swift_deallocClassInstance();
}

UIColor sub_100742C0C(double a1, uint64_t a2, UIColor *a3)
{
  sub_1000325F0();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  v8 = [v5 whiteColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  v10.super.isa = v7;
  v11.super.isa = v9;
  result.super.isa = sub_100770DEC(v10, v11).super.isa;
  a3->super.isa = result.super.isa;
  return result;
}

char *sub_100742CE4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_currentState;
  v11 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveTitleHeaderView();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_titleView]];

  return v14;
}

id sub_100743108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTitleHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InteractiveTitleHeaderView()
{
  result = qword_100967DA0;
  if (!qword_100967DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007431E0()
{
  sub_10021B8CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100743280@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  return sub_1007435D8(v3 + v4, a1);
}

id sub_100743300(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v11 = sub_1004751F8();
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_titleView];
  result = [v12 overrideUserInterfaceStyle];
  if (result != v11)
  {
    v14 = OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_currentState;
    swift_beginAccess();
    sub_1007435D8(v2 + v14, v9);
    v15 = *(v10 - 8);
    v16 = (*(v15 + 48))(v9, 1, v10);
    sub_100743648(v9);
    if (v16 == 1)
    {
      [v12 setOverrideUserInterfaceStyle:v11];
    }

    else
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      aBlock[4] = sub_1007436E8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_1008A31C0;
      v19 = _Block_copy(aBlock);
      v20 = v2;

      [v17 transitionWithView:v12 duration:5308420 options:v19 animations:0 completion:0.4];
      _Block_release(v19);
    }

    sub_10021C620(a1, v6);
    (*(v15 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_10021C684(v6, v2 + v14);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1007435D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100957590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100743648(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100957590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007436B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100743704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10074371C()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_1009A3460);
  sub_10000A61C(v4, qword_1009A3460);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

NSString sub_100743870()
{
  result = sub_10076FF6C();
  qword_1009A3478 = result;
  return result;
}

uint64_t sub_100743904()
{
  v7 = sub_10077067C();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10077063C();
  __chkstk_darwin(v3);
  v4 = sub_10076F0CC();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100016F40(0, &qword_1009471F0);
  sub_10076F0AC();
  v8 = _swiftEmptyArrayStorage;
  sub_10074E520(&qword_10094D780, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A5D4(&qword_10094D788);
  sub_100048C98(&qword_10094D790, &qword_10094D788);
  sub_1007712CC();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_1007706AC();
  qword_1009A3480 = result;
  return result;
}

void sub_100743B64(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR___RootViewController_isVisibleInClientWindow);
  *(v2 + OBJC_IVAR___RootViewController_isVisibleInClientWindow) = a1;
  if (v10 != v4)
  {
    if (a1)
    {
      v11 = v7;
      sub_10074A4C8();
      sub_1007466CC();
      sub_100766B2C();
      sub_10075DD6C();
      sub_10075DD4C();
      (*(v6 + 8))(v9, v11);
      sub_100766B1C();
      sub_10076F69C();
      if (*(v2 + OBJC_IVAR___RootViewController_isViewAppeared))
      {
        sub_10076B1BC();
      }
    }

    else
    {
      sub_100746E10();
      if ((*(v2 + OBJC_IVAR___RootViewController_startedDisappearTransition) & 1) == 0)
      {
        sub_10074ADB0();
      }
    }

    sub_10076B1BC();
  }
}

uint64_t sub_100743CFC()
{
  v1 = OBJC_IVAR___RootViewController____lazy_storage___entitlementHelper;
  if (*(v0 + OBJC_IVAR___RootViewController____lazy_storage___entitlementHelper))
  {
    v2 = *(v0 + OBJC_IVAR___RootViewController____lazy_storage___entitlementHelper);
  }

  else
  {
    type metadata accessor for EntitlementHelper();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = 2;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_100743D90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_10076162C();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___RootViewController_installAttributionGate;
  if (qword_1009415E8 != -1)
  {
    swift_once();
  }

  v11 = qword_1009A3480;
  sub_10076B1EC();
  swift_allocObject();
  v12 = v11;
  *&v3[v10] = sub_10076B19C();
  v13 = OBJC_IVAR___RootViewController_viewAppeared;
  sub_10076B1DC();
  swift_allocObject();
  *&v3[v13] = sub_10076B1CC();
  v14 = OBJC_IVAR___RootViewController_prewarmFetchFinished;
  swift_allocObject();
  *&v3[v14] = sub_10076B1CC();
  v15 = OBJC_IVAR___RootViewController_onboardingCompleted;
  swift_allocObject();
  *&v3[v15] = sub_10076B1CC();
  v16 = OBJC_IVAR___RootViewController_visibleInClientWindow;
  swift_allocObject();
  *&v3[v16] = sub_10076B1CC();
  v3[OBJC_IVAR___RootViewController_isVisibleInClientWindow] = 0;
  v3[OBJC_IVAR___RootViewController_isViewAppeared] = 0;
  v3[OBJC_IVAR___RootViewController_isPreview] = 0;
  *&v3[OBJC_IVAR___RootViewController_adAttributionManager] = 0;
  *&v3[OBJC_IVAR___RootViewController_currentUISnapshot] = 0;
  *&v3[OBJC_IVAR___RootViewController____lazy_storage___entitlementHelper] = 0;
  *&v3[OBJC_IVAR___RootViewController_objectGraph] = 0;
  *&v3[OBJC_IVAR___RootViewController_freshnessWatchdog] = 0;
  *&v3[OBJC_IVAR___RootViewController_currentItem] = 0;
  *&v3[OBJC_IVAR___RootViewController_currentParameters] = 0;
  v17 = &v3[OBJC_IVAR___RootViewController_clientBundleId];
  *v17 = 0;
  *(v17 + 1) = 0;
  v3[OBJC_IVAR___RootViewController_startedDisappearTransition] = 0;
  *&v3[OBJC_IVAR___RootViewController_rootViewController] = 0;
  *&v3[OBJC_IVAR___RootViewController_storeNavigationController] = 0;
  v18 = OBJC_IVAR___RootViewController_bootstrapPendingClosuresHandler;
  sub_100769DEC();
  swift_allocObject();
  *&v3[v18] = sub_100769DDC();
  v19 = &v3[OBJC_IVAR___RootViewController_cancelButtonTitle];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v3[OBJC_IVAR___RootViewController_rightBarButtonTitle];
  *v20 = 0;
  *(v20 + 1) = 0;
  v3[OBJC_IVAR___RootViewController_showsStoreButton] = 1;
  v21 = &v3[OBJC_IVAR___RootViewController_promptString];
  *v21 = 0;
  *(v21 + 1) = 0;
  v3[OBJC_IVAR___RootViewController_askToBuy] = 2;
  *&v3[OBJC_IVAR___RootViewController____lazy_storage___closeBarButtonItem] = 0;
  *&v3[OBJC_IVAR___RootViewController____lazy_storage___customCloseButtonItem] = 1;
  *&v3[OBJC_IVAR___RootViewController____lazy_storage___viewInStoreBarButtonItem] = 1;
  *&v3[OBJC_IVAR___RootViewController____lazy_storage___customRightBarButtonItem] = 1;
  v3[OBJC_IVAR___RootViewController_appHasBeenInBackground] = 0;
  v3[OBJC_IVAR___RootViewController_isOnboardingFinished] = 0;
  v3[OBJC_IVAR___RootViewController_isPresentingContentFinished] = 0;
  if (a2)
  {
    v22 = sub_10076FF6C();
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for RootViewController();
  v44.receiver = v4;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", v22, a3);

  v25 = objc_opt_self();
  v26 = v24;
  [v25 as_activatePresentationHack];
  v27 = [objc_opt_self() sharedCoordinator];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10074E568;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A34D0;
  v29 = _Block_copy(aBlock);

  [v27 registerAppBootstrapHandler:v29];
  _Block_release(v29);

  sub_10076B18C();

  sub_10076B18C();

  sub_10076B18C();

  sub_10076B18C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v26;

  sub_10076B1AC();

  v40 = a3;
  if (qword_100941548 != -1)
  {
    swift_once();
  }

  qword_1009A3330 = &off_1008A3208;
  swift_unknownObjectWeakAssign();

  v31 = objc_opt_self();
  [v31 setFlushTimerEnabled:0];
  [v31 setDisableBackgroundMetrics:1];
  v39 = OBJC_IVAR___RootViewController_bootstrapPendingClosuresHandler;
  v32 = enum case for BootstrapPhase.onboarding(_:);
  v33 = v41;
  v34 = *(v41 + 104);
  v35 = v9;
  v36 = v9;
  v37 = v42;
  v34(v36, enum case for BootstrapPhase.onboarding(_:), v42);
  sub_100769DCC();
  v41 = *(v33 + 8);
  (v41)(v35, v37);
  sub_100745F68();
  sub_10074B4DC();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34(v35, v32, v37);

  sub_100769DCC();

  (v41)(v35, v37);

  return v30;
}

void sub_100744560()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___RootViewController_adAttributionManager);
    v2 = Strong;

    if (v1)
    {
LABEL_3:

      goto LABEL_18;
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___RootViewController_currentParameters);
    v5 = v3;

    if (v4)
    {
      sub_1007654EC();
      if (sub_10076548C())
      {
        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = *(v6 + OBJC_IVAR___RootViewController_currentItem);
          v8 = v6;
          v9 = v7;

          if (v7)
          {
            swift_beginAccess();
            v10 = swift_unknownObjectWeakLoadStrong();
            if (v10)
            {
              v11 = *(v10 + OBJC_IVAR___RootViewController_clientBundleId + 8);
              v12 = v10;

              if (v11)
              {
                swift_beginAccess();
                v13 = swift_unknownObjectWeakLoadStrong();
                if (v13)
                {
                  v14 = v13;
                  swift_beginAccess();
                  v15 = swift_unknownObjectWeakLoadStrong();
                  v16 = v15;
                  if (v15)
                  {
                    if (*(v15 + OBJC_IVAR___RootViewController_objectGraph) && (sub_10076148C(), , sub_10076F5AC(), , v20))
                    {
                      sub_1007613CC();
                    }

                    else
                    {
                    }
                  }

                  swift_allocObject();
                  *&v14[OBJC_IVAR___RootViewController_adAttributionManager] = sub_1007654AC();

                  goto LABEL_3;
                }

                goto LABEL_18;
              }
            }
          }
        }
      }
    }
  }

LABEL_18:
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR___RootViewController_adAttributionManager);
    v19 = v17;

    if (v18)
    {
      sub_10076549C();
    }
  }
}

id sub_100744840()
{
  v0 = objc_opt_self();
  [v0 setFlushTimerEnabled:1];

  return [v0 setDisableBackgroundMetrics:0];
}

uint64_t sub_10074489C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_10076B1BC();
  }

  return result;
}

uint64_t sub_100744998()
{
  v1 = *(v0 + OBJC_IVAR___RootViewController_currentParameters);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_100561E0C(0x73776F7242626577, 0xEA00000000007265);
    if (v3)
    {
      sub_10000CD08(*(v1 + 56) + 32 * v2, v6);

      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_100744A50(void *a1, uint64_t a2)
{
  v3 = v2;
  v68 = sub_10076162C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100963670);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  v16 = *&v2[OBJC_IVAR___RootViewController_currentItem];
  *&v3[OBJC_IVAR___RootViewController_currentItem] = a1;
  v17 = a1;

  *&v3[OBJC_IVAR___RootViewController_currentParameters] = a2;

  v69 = v17;
  sub_100749898(v17, a2, v15);
  v18 = sub_10074D188(a1);
  v70 = v15;
  if (v18)
  {
    v65 = a2;
    sub_100016E2C(v15, v12, &qword_100963670);
    v19 = sub_10076C0FC();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v12, 1, v19) == 1)
    {
      sub_10000CFBC(v12, &qword_100963670);
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = sub_10076C0EC();
      v23 = v25;
      (*(v20 + 8))(v12, v19);
    }

    v26 = v21(v70, 1, v19) != 1;
    type metadata accessor for ArcadeSubscribePageBootstrap();
    v27 = swift_allocObject();
    *(v27 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_delegate + 8) = 0;
    v28 = swift_unknownObjectWeakInit();
    *(v27 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_lookupItem) = a1;
    *(v27 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_parameters) = v65;
    v29 = (v27 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_promptString);
    *v29 = v22;
    v29[1] = v23;
    *(v27 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_askToBuy) = v26;
    *(v28 + 8) = &off_1008A3230;
    swift_unknownObjectWeakAssign();
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v30 = type metadata accessor for StoreNavigationController();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = 0;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v71.receiver = v31;
    v71.super_class = v30;
    v33 = v69;

    v34 = objc_msgSendSuper2(&v71, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v34 setDelegate:v34];
    *(v27 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController) = v34;
    v35 = sub_100045598();
    v36 = &off_10088FCF8;
    goto LABEL_16;
  }

  v24 = OBJC_IVAR___RootViewController_adAttributionManager;
  if (!*&v3[OBJC_IVAR___RootViewController_adAttributionManager])
  {
    sub_1007654EC();
    if (sub_10076548C())
    {
      if (*&v3[OBJC_IVAR___RootViewController_clientBundleId + 8])
      {
        v65 = *&v3[OBJC_IVAR___RootViewController_clientBundleId];
        if (*&v3[OBJC_IVAR___RootViewController_objectGraph])
        {
          sub_10076148C();

          sub_10076F5AC();

          if (v72)
          {
            v64 = sub_1007613CC();

LABEL_14:
            swift_allocObject();
            v37 = v69;

            *&v3[v24] = sub_1007654AC();

            goto LABEL_15;
          }
        }

        else
        {
        }

        v64 = 0;
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  sub_100016E2C(v15, v9, &qword_100963670);
  v38 = *&v3[v24];

  v65 = sub_100743CFC();
  type metadata accessor for ProductPageBootstrap();
  v39 = swift_allocObject();
  v40 = v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_delegate;
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v41 = v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_ppeInteractionObserver;
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_ppeInteractionObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  v42 = v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_bannerVisibilityDelegate;
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_bannerVisibilityDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap____lazy_storage___isItemArticle) = 2;
  v43 = v69;
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_lookupItem) = v69;
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_parameters) = a2;
  sub_100016E2C(v9, v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_askToBuy, &qword_100963670);
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_adAttributionManager) = v38;
  *(v40 + 8) = &off_1008A3230;
  swift_unknownObjectWeakAssign();
  *(v41 + 8) = &off_1008A31F8;
  swift_unknownObjectWeakAssign();
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  v44 = type metadata accessor for StoreNavigationController();
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = 0;
  v46 = swift_getObjCClassFromMetadata();
  v74.receiver = v45;
  v74.super_class = v44;
  v47 = v43;

  v48 = objc_msgSendSuper2(&v74, "initWithNavigationBarClass:toolbarClass:", v46, 0);
  [v48 setDelegate:v48];
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController) = v48;
  *(v39 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_entitlementHelper) = v65;
  *(v42 + 8) = &off_1008A31E8;
  swift_unknownObjectWeakAssign();
  v35 = sub_100045598();

  sub_10000CFBC(v9, &qword_100963670);
  v36 = &off_1008A3920;
LABEL_16:
  swift_unknownObjectRetain();
  v49 = sub_100745400();
  if (v49)
  {
    v50 = v49;
    v51 = [objc_opt_self() defaultCenter];
    v52 = ASKClientRemoteDownloadIdentifiersDidChangeNotification;
    sub_10000A5D4(&unk_100947120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v72 = sub_10076FF9C();
    v73 = v54;
    sub_10077140C();
    *(inited + 96) = sub_10000A5D4(&unk_10094BB60);
    *(inited + 72) = v50;
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B20);
    isa = sub_10076FE3C().super.isa;

    [v51 postNotificationName:v52 object:0 userInfo:isa];
  }

  sub_100761FAC();
  sub_100761F8C();
  sub_100761EFC();

  sub_100744998();
  sub_1007643AC();
  v56 = swift_allocObject();
  v56[2] = v3;
  v56[3] = v35;
  v56[4] = v36;
  v57 = v67;
  v58 = v66;
  v59 = v68;
  (*(v67 + 104))(v66, enum case for BootstrapPhase.onboarding(_:), v68);
  swift_unknownObjectRetain();
  v60 = v3;
  sub_100769DCC();

  (*(v57 + 8))(v58, v59);
  swift_getObjectType();
  v61 = (v36[1])();
  swift_unknownObjectRelease_n();
  sub_10000CFBC(v70, &qword_100963670);
  return v61;
}

uint64_t sub_100745400()
{
  v1 = sub_10076F2EC();
  __chkstk_darwin(v1 - 8);
  v2 = *(v0 + OBJC_IVAR___RootViewController_currentParameters);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_10076FF9C();
  v5 = v4;
  if (!*(v2 + 16) || (v6 = v3, , v7 = sub_100561E0C(v6, v5), v9 = v8, , (v9 & 1) == 0))
  {

    return 0;
  }

  sub_10000CD08(*(v2 + 56) + 32 * v7, &v18);

  sub_10000CD64(&v18, v20);
  sub_10000CD08(v20, &v18);
  v10 = sub_10000A5D4(&unk_10094BB60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1009415D8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_1009A3460);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    v23._object = 0x80000001007F8B80;
    sub_10076F2CC(v23);
    sub_10000CD08(v20, &v18);
    v14 = sub_10076FFFC();
    v19 = &type metadata for String;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    sub_10076F2BC();
    sub_10000CFBC(&v18, &unk_1009434C0);
    v24._object = 0x80000001007F8BB0;
    v24._countAndFlagsBits = 0xD000000000000020;
    sub_10076F2CC(v24);
    sub_10076F2FC();
    sub_10076FBEC();
    goto LABEL_16;
  }

  if (!*(v17 + 16))
  {

    if (qword_1009415D8 != -1)
    {
      swift_once();
    }

    v16 = sub_10076FD4C();
    sub_10000A61C(v16, qword_1009A3460);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
LABEL_16:

    sub_10000CD74(v20);
    return 0;
  }

  if (qword_1009415D8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076FD4C();
  sub_10000A61C(v11, qword_1009A3460);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v21._countAndFlagsBits = 0xD000000000000025;
  v21._object = 0x80000001007F8BE0;
  sub_10076F2CC(v21);
  v19 = v10;
  *&v18 = v17;

  sub_10076F2BC();
  sub_10000CFBC(&v18, &unk_1009434C0);
  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  sub_10076F2CC(v22);
  sub_10076F2FC();
  sub_10076FBCC();

  sub_10000CD74(v20);
  return v17;
}

id sub_1007459A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076162C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___RootViewController_objectGraph;
  *&v0[OBJC_IVAR___RootViewController_objectGraph] = 0;

  v8 = *&v0[OBJC_IVAR___RootViewController_storeNavigationController];
  *&v0[OBJC_IVAR___RootViewController_storeNavigationController] = 0;

  *&v0[OBJC_IVAR___RootViewController_freshnessWatchdog] = 0;

  v9 = OBJC_IVAR___RootViewController_isOnboardingFinished;
  v0[OBJC_IVAR___RootViewController_isOnboardingFinished] = 0;
  v0[OBJC_IVAR___RootViewController_isPresentingContentFinished] = 0;
  v10 = *&v0[OBJC_IVAR___RootViewController_currentItem];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR___RootViewController_currentParameters];
    if (v11)
    {
      v42[1] = v9;
      v12 = v10;

      v43 = v12;
      v13 = sub_100744A50(v12, v11);

      sub_10074DAF4();
      v14 = OBJC_IVAR___RootViewController_rootViewController;
      v15 = *&v1[OBJC_IVAR___RootViewController_rootViewController];
      *&v1[OBJC_IVAR___RootViewController_rootViewController] = v13;
      v16 = v13;

      v17 = *&v1[v14];
      v44 = v7;
      if (!v17)
      {
LABEL_18:

        v35 = swift_allocObject();
        *(v35 + 16) = v1;
        *(v35 + 24) = ObjectType;
        v36 = *(v4 + 104);
        v36(v6, enum case for BootstrapPhase.onboarding(_:), v3);
        v42[0] = ObjectType;
        v37 = v1;
        sub_100769DCC();

        v38 = *(v4 + 8);
        v38(v6, v3);
        v39 = swift_allocObject();
        v40 = v42[0];
        *(v39 + 16) = v37;
        *(v39 + 24) = v40;
        v36(v6, enum case for BootstrapPhase.initialBootstrap(_:), v3);
        v41 = v37;
        sub_100769DCC();

        return (v38)(v6, v3);
      }

      v18 = v17;
      v19 = [v18 parentViewController];
      if (v19)
      {
        v20 = v19;

        v16 = v18;
        v18 = v20;
LABEL_17:

        v16 = v18;
        goto LABEL_18;
      }

      v23 = v3;
      [v1 addChildViewController:v18];
      result = [v18 view];
      if (result)
      {
        v24 = result;
        result = [v1 view];
        if (result)
        {
          v25 = result;
          [result bounds];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;

          [v24 setFrame:{v27, v29, v31, v33}];
          result = [v18 view];
          if (result)
          {
            v34 = result;
            [result setAutoresizingMask:18];

            [v18 didMoveToParentViewController:v1];
            v3 = v23;
            if (v1[OBJC_IVAR___RootViewController_isViewAppeared] == 1 && v1[OBJC_IVAR___RootViewController_isVisibleInClientWindow] == 1)
            {
              sub_1007466CC();
            }

            goto LABEL_17;
          }

          goto LABEL_21;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v21 = sub_10076FD4C();
  sub_10000A61C(v21, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();
}

uint64_t sub_100745F68()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076162C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = ObjectType;
  (*(v3 + 104))(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v7 = v0;
  sub_100769DCC();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1007460DC(uint64_t a1)
{
  v1 = OBJC_IVAR___RootViewController_objectGraph;
  if (*(a1 + OBJC_IVAR___RootViewController_objectGraph))
  {

    v4 = sub_100731CBC(v3);

    *(a1 + v1) = v4;
  }

  else
  {
    if (qword_1009415D8 != -1)
    {
      swift_once();
    }

    v6 = sub_10076FD4C();
    sub_10000A61C(v6, qword_1009A3460);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }
}

void sub_100746414(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for RootViewController();
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1 & 1);
  if (*&v2[OBJC_IVAR___RootViewController_adAttributionManager])
  {

    sub_1007654DC();
  }

  v2[OBJC_IVAR___RootViewController_isViewAppeared] = 0;
  v4 = OBJC_IVAR___RootViewController_startedDisappearTransition;
  if (v2[OBJC_IVAR___RootViewController_startedDisappearTransition] == 1)
  {
    sub_100746E10();
    sub_10074ADB0();
    v2[v4] = 0;
  }
}

void sub_10074650C()
{
  v1 = *&v0[OBJC_IVAR___RootViewController_rootViewController];
  if (!v1)
  {
    return;
  }

  v19 = v1;
  v2 = [v19 parentViewController];
  if (!v2)
  {
    [v0 addChildViewController:v19];
    v5 = [v19 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v0 view];
      if (v7)
      {
        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        [v6 setFrame:{v10, v12, v14, v16}];
        v17 = [v19 view];
        if (v17)
        {
          v18 = v17;
          [v17 setAutoresizingMask:18];

          [v19 didMoveToParentViewController:v0];
          if (v0[OBJC_IVAR___RootViewController_isViewAppeared] == 1 && v0[OBJC_IVAR___RootViewController_isVisibleInClientWindow] == 1)
          {
            sub_1007466CC();
          }

          v4 = v19;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;

  v4 = v3;
LABEL_12:
}

void sub_1007466CC()
{
  v1 = *&v0[OBJC_IVAR___RootViewController_rootViewController];
  if (!v1)
  {
    return;
  }

  v34 = v1;
  v2 = [v34 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_27;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (!v4)
  {
    if (v0[OBJC_IVAR___RootViewController_isVisibleInClientWindow] != 1)
    {
      sub_100746F1C();
LABEL_22:
      v5 = v34;
      goto LABEL_23;
    }

    [v34 beginAppearanceTransition:1 animated:0];
    v6 = [v34 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        [v7 setFrame:{v11, v13, v15, v17}];
        v18 = [v0 view];
        if (v18)
        {
          v19 = v18;
          v20 = [v34 view];
          if (v20)
          {
            v21 = v20;
            [v19 addSubview:v20];

            v22 = OBJC_IVAR___RootViewController_currentUISnapshot;
            v23 = *&v0[OBJC_IVAR___RootViewController_currentUISnapshot];
            if (v23)
            {
              v24 = v23;
              [v24 removeFromSuperview];
              v25 = *&v0[v22];
              [v25 removeFromSuperview];

              v26 = *&v0[v22];
              *&v0[v22] = 0;
            }

            [v34 endAppearanceTransition];
            type metadata accessor for StoreNavigationController();
            v27 = swift_dynamicCastClass();
            if (v27)
            {
              v28 = v27;
              v29 = v34;
              v30 = [v28 topViewController];
              if (v30)
              {
                v31 = v30;
                objc_opt_self();
                v32 = swift_dynamicCastObjCClass();
                if (v32)
                {
                  v33 = [v32 collectionViewLayout];
                  [v33 invalidateLayout];

                  v29 = v31;
                  v31 = v33;
                }

                v29 = v31;
              }
            }

            if (v0[OBJC_IVAR___RootViewController_isViewAppeared] == 1)
            {
              sub_10076B1BC();
            }

            goto LABEL_22;
          }

LABEL_30:
          __break(1u);
          return;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
LABEL_23:
}

id sub_1007469E4()
{
  v1 = v0;
  v2 = sub_10075D7AC();
  if (v2)
  {
    v3 = v2;
    sub_10077140C();
    if (*(v3 + 16) && (v4 = sub_10060FEFC(v9), (v5 & 1) != 0))
    {
      sub_10000CD08(*(v3 + 56) + 32 * v4, v10);
      sub_100016C74(v9);

      if (swift_dynamicCast())
      {
        return [v1 setModalInPresentation:100];
      }
    }

    else
    {

      sub_100016C74(v9);
    }

    if (qword_1009415D8 != -1)
    {
      swift_once();
    }

    v7 = sub_10076FD4C();
    sub_10000A61C(v7, qword_1009A3460);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();
  }

  else
  {
    if (qword_1009415D8 != -1)
    {
      swift_once();
    }

    v8 = sub_10076FD4C();
    sub_10000A61C(v8, qword_1009A3460);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();
  }
}

void sub_100746E10()
{
  v1 = *(v0 + OBJC_IVAR___RootViewController_rootViewController);
  if (!v1)
  {
    return;
  }

  v7 = v1;
  v2 = [v7 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (v4)
  {

    [v7 beginAppearanceTransition:0 animated:0];
    sub_100746F1C();
    v5 = [v7 view];
    if (v5)
    {
      v6 = v5;
      [v5 removeFromSuperview];

      [v7 endAppearanceTransition];
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
}

void sub_100746F1C()
{
  v1 = *&v0[OBJC_IVAR___RootViewController_rootViewController];
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR___RootViewController_currentUISnapshot;
  if (*&v0[OBJC_IVAR___RootViewController_currentUISnapshot])
  {
    return;
  }

  v58 = *&v0[OBJC_IVAR___RootViewController_rootViewController];
  if ((v0[OBJC_IVAR___RootViewController_isVisibleInClientWindow] & 1) == 0 && (v0[OBJC_IVAR___RootViewController_isViewAppeared] & 1) == 0)
  {
    v21 = v1;
    [v21 beginAppearanceTransition:1 animated:0];
    v22 = [v21 view];
    if (v22)
    {
      v23 = v22;
      v24 = [v0 view];
      if (v24)
      {
        v25 = v24;
        [v24 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        [v23 setFrame:{v27, v29, v31, v33}];
        v34 = [v0 view];
        if (v34)
        {
          v35 = v34;
          v36 = [v21 view];
          if (v36)
          {
            v37 = v36;
            [v35 addSubview:v36];

            v38 = [v21 view];
            if (v38)
            {
              v39 = v38;
              v40 = [v38 snapshotViewAfterScreenUpdates:1];

              if (v40)
              {
                v41 = *&v0[v2];
                v42 = v40;
                [v41 removeFromSuperview];
                v43 = *&v0[v2];
                *&v0[v2] = v40;

                v44 = [v0 view];
                if (!v44)
                {
LABEL_34:
                  __break(1u);
                  goto LABEL_35;
                }

                v45 = v44;
                [v44 bounds];
                v47 = v46;
                v49 = v48;
                v51 = v50;
                v53 = v52;

                [v42 setFrame:{v47, v49, v51, v53}];
                v54 = [v0 view];
                if (!v54)
                {
LABEL_35:
                  __break(1u);
                  return;
                }

                v55 = v54;
                [v54 addSubview:v42];
              }

              [v21 beginAppearanceTransition:0 animated:0];
              v56 = [v21 view];
              if (v56)
              {
                v57 = v56;
                [v56 removeFromSuperview];

                [v21 endAppearanceTransition];
                goto LABEL_22;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = v3;
  v5 = [v3 snapshotViewAfterScreenUpdates:1];

  if (v5)
  {
    v6 = *&v0[v2];
    v7 = v5;
    [v6 removeFromSuperview];
    v8 = *&v0[v2];
    *&v0[v2] = v5;

    v9 = [v0 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v7 setFrame:{v12, v14, v16, v18}];
      v19 = [v0 view];
      if (v19)
      {
        v20 = v19;
        [v19 addSubview:v7];

        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
}

uint64_t sub_100747388(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100762F3C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_100762F2C();
  if (*(v3 + OBJC_IVAR___RootViewController_clientBundleId + 8))
  {
    sub_10076601C();

    v8 = sub_10076600C();
    sub_100765FFC();
  }

  v9 = sub_100745400();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() defaultCenter];
    v12 = ASKClientRemoteDownloadIdentifiersDidChangeNotification;
    sub_10000A5D4(&unk_100947120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    sub_10076FF9C();
    sub_10077140C();
    *(inited + 96) = sub_10000A5D4(&unk_10094BB60);
    *(inited + 72) = v10;
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B20);
    isa = sub_10076FE3C().super.isa;

    [v11 postNotificationName:v12 object:0 userInfo:isa];
  }

  v15 = [objc_opt_self() defaultCenter];
  if (qword_1009415E0 != -1)
  {
    swift_once();
  }

  [v15 addObserver:v4 selector:? name:? object:?];

  *(v4 + OBJC_IVAR___RootViewController_objectGraph) = a3;

  v16 = *(v4 + OBJC_IVAR___RootViewController_storeNavigationController);
  *(v4 + OBJC_IVAR___RootViewController_storeNavigationController) = a1;
  v17 = a1;

  *(v4 + OBJC_IVAR___RootViewController_freshnessWatchdog) = a2;
}

uint64_t sub_100747680(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v79 = a3;
  v80 = a1;
  v6 = sub_10076162C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075DB7C();
  v77 = *(v9 - 8);
  v78 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v75 = v11;
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___RootViewController_currentItem;
  v13 = *&v3[OBJC_IVAR___RootViewController_currentItem];
  if (v13)
  {
    v14 = *&v3[OBJC_IVAR___RootViewController_currentParameters];

    v15 = v13;
    v16 = sub_100743CFC();
    LOBYTE(v13) = sub_10068A12C(v14, v16);
  }

  v17 = OBJC_IVAR___RootViewController_isPreview;
  v18 = v3[OBJC_IVAR___RootViewController_isPreview];
  v19 = [a2 navigationController];
  if (v19)
  {
    v20 = (v18 | v13) & 1;
    v21 = v19;
    [v19 setNavigationBarHidden:v20 animated:1];
  }

  if (v4[v17] == 1)
  {
    swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      if (a2)
      {
        v23 = v22;
        ObjectType = swift_getObjectType();
        (*(v23 + 32))(0, ObjectType, v23);
      }
    }
  }

  if (v13)
  {
    type metadata accessor for ArticleDiffablePageViewController();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      v27 = *(v25 + qword_10099CC50);
      *(v25 + qword_10099CC50) = 0;
      v28 = a2;
      sub_1000AECA4(v27);
      sub_1000AE67C(0, 0);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = (v26 + qword_10099CC70);
      v31 = *(v26 + qword_10099CC70);
      *v30 = sub_10074D884;
      v30[1] = v29;

      sub_1000167E0(v31);

      sub_10076601C();
      v32 = sub_10076600C();
      LOBYTE(v31) = sub_100765FEC();

      if (v31)
      {
      }

      else
      {
        v61 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v62 = (v26 + qword_10099CC78);
        v63 = *(v26 + qword_10099CC78);
        *v62 = sub_10074D88C;
        v62[1] = v61;

        sub_1000167E0(v63);
      }

      goto LABEL_35;
    }
  }

  if (*&v4[OBJC_IVAR___RootViewController_objectGraph])
  {
    sub_10076148C();

    sub_10076F5AC();

    if (v84)
    {
      v33 = sub_1007612AC();

      if (v33)
      {
        v34 = v4[OBJC_IVAR___RootViewController_askToBuy];
        if (v34 != 2 && (v34 & 1) != 0)
        {
          v35 = *&v4[v12];
          v36 = v35;
          v37 = sub_10074D188(v35);

          if ((v37 & 1) == 0)
          {
            v64 = [a2 navigationItem];
            sub_10000A5D4(&unk_100942870);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007841E0;
            v66 = sub_100748D2C();
            *(inited + 32) = v66;
            v67 = (inited + 32);
            v84 = _swiftEmptyArrayStorage;
            if ((inited & 0xC000000000000001) != 0)
            {
              sub_10077149C();
            }

            else
            {
              if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_53;
              }

              v68 = v66;
            }

            sub_10077019C();
            if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v74 = v7;
              sub_10077021C();
              v7 = v74;
            }

            sub_10077025C();
            swift_setDeallocating();
            swift_arrayDestroy();
            sub_100016F40(0, &qword_100958FF0);
            isa = sub_1007701AC().super.isa;

            [v64 setLeftBarButtonItems:isa];

            v37 = [a2 navigationItem];
            v67 = &v82;
            v70 = sub_100748DD0();
            v83 = v70;
            v84 = _swiftEmptyArrayStorage;
            if (!v70)
            {
              a2 = v81;
              goto LABEL_47;
            }

            v71 = v70;
            sub_10077019C();
            a2 = v81;
            if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_45:
              sub_10077025C();
LABEL_47:
              sub_10000CFBC((v67 + 32), &qword_100967ED8);
              v72 = sub_1007701AC().super.isa;

              [v37 setRightBarButtonItems:v72];

              goto LABEL_36;
            }

LABEL_53:
            sub_10077021C();
            goto LABEL_45;
          }
        }
      }
    }
  }

  v38 = sub_100748DB4();
  if (!v38)
  {
    v38 = sub_100748D2C();
  }

  v39 = v38;
  v40 = [a2 navigationItem];
  sub_10000A5D4(&unk_100942870);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1007841E0;
  *(v41 + 32) = v39;
  v84 = _swiftEmptyArrayStorage;
  v42 = v39;
  v74 = v42;
  if ((v41 & 0xC000000000000001) != 0)
  {
    v43 = v7;
    v44 = v6;
    sub_10077149C();
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_50:
      sub_10077021C();
      v47 = &selRef_initWithTabBarSystemItem_tag_;
      goto LABEL_33;
    }

    v43 = v7;
    v44 = v6;
    v45 = v42;
  }

  sub_10077019C();
  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100016F40(0, &qword_100958FF0);
  v46 = sub_1007701AC().super.isa;

  [v40 setLeftBarButtonItems:v46];

  v40 = sub_100749448();
  if (!v40)
  {
    v40 = sub_100748DD0();
  }

  v47 = &selRef_initWithTabBarSystemItem_tag_;
  v48 = [a2 navigationItem];
  v49 = [v48 rightBarButtonItems];

  v6 = v44;
  if (v49)
  {
    v50 = sub_1007701BC();
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  v7 = v43;
  v84 = v50;
  if (!v40)
  {
    goto LABEL_34;
  }

  v51 = v40;
  sub_10077019C();
  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_50;
  }

LABEL_33:
  sub_10077025C();
LABEL_34:
  v52 = [a2 v47[159]];
  v53 = sub_1007701AC().super.isa;

  [v52 setRightBarButtonItems:v53];

LABEL_35:
  a2 = v81;
LABEL_36:
  v55 = v77;
  v54 = v78;
  v56 = v76;
  (*(v77 + 16))(v76, v79, v78);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v80;
  *(v58 + 24) = v4;
  (*(v55 + 32))(v58 + v57, v56, v54);
  (*(v7 + 13))(a2, enum case for BootstrapPhase.onboarding(_:), v6);

  v59 = v4;
  sub_100769DCC();

  return (*(v7 + 1))(a2, v6);
}

void sub_1007480E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong finishWithResult:3 completion:0];
  }
}

void sub_100748144(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_1007481A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v46 = sub_100767DEC();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v5 - 8);
  v42 = &v39 - v6;
  v7 = sub_10076910C();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10075DB7C();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100762FDC();
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076421C();
  sub_10076F64C();
  sub_10076FC1C();
  v14 = OBJC_IVAR___RootViewController_currentItem;
  v15 = *(a2 + OBJC_IVAR___RootViewController_currentItem);
  v16 = v15;
  v17 = sub_10074D188(v15);

  v18 = *(a2 + v14);
  if (!v18)
  {
    if ((*(a2 + OBJC_IVAR___RootViewController_isVisibleInClientWindow) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_10076B1BC();
  }

  v39 = v12;
  v19 = *(a2 + OBJC_IVAR___RootViewController_currentParameters);

  v20 = v18;
  v21 = sub_100743CFC();
  v22 = sub_10068A12C(v19, v21);

  if (*(a2 + OBJC_IVAR___RootViewController_isVisibleInClientWindow))
  {
    goto LABEL_6;
  }

  if (v22)
  {
    v51 = 0xD000000000000011;
    v52 = 0x80000001007F8A50;
    sub_10077140C();
    (*(v9 + 16))(v11, v50, v49);
    v23 = v40;
    sub_100762FCC();
    sub_10074E520(&unk_100967EF0, &type metadata accessor for ArticlePageIntent);
    v24 = v39;
    sub_10076420C();
    v25 = sub_100016F40(0, &qword_1009471F0);
    v26 = sub_10077068C();
    v54 = v25;
    v55 = &protocol witness table for OS_dispatch_queue;
    v53[0] = v26;
    sub_10076FC6C();
    sub_10000CD74(v53);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_10077068C();
    v54 = v25;
    v55 = &protocol witness table for OS_dispatch_queue;
    v53[0] = v27;
    sub_10076FC9C();

    v28 = v41;
    goto LABEL_9;
  }

LABEL_7:
  (*(v9 + 16))(v11, v50, v49);
  if (!v17)
  {
    v33 = sub_10076096C();
    (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
    v34 = v45;
    sub_1007690FC();
    sub_10074E520(&qword_100967EE0, &type metadata accessor for ShelfBasedProductPageIntent);
    v35 = v48;
    sub_10076420C();
    v54 = sub_10076F81C();
    v55 = &protocol witness table for SyncTaskScheduler;
    sub_10000DB7C(v53);
    sub_10076F80C();
    sub_10076FC5C();
    sub_10000CD74(v53);
    v36 = sub_100016F40(0, &qword_1009471F0);
    v37 = sub_10077068C();
    v54 = v36;
    v55 = &protocol witness table for OS_dispatch_queue;
    v53[0] = v37;
    sub_10076FC6C();
    sub_10000CD74(v53);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = sub_10077068C();
    v54 = v36;
    v55 = &protocol witness table for OS_dispatch_queue;
    v53[0] = v38;
    sub_10076FC9C();

    (*(v47 + 8))(v34, v35);
    return sub_10000CD74(v53);
  }

  v23 = v43;
  sub_100767DDC();
  sub_10074E520(&qword_100967EE8, &type metadata accessor for ArcadeSubscribePageIntent);
  v24 = v46;
  sub_10076420C();
  v30 = sub_100016F40(0, &qword_1009471F0);
  v31 = sub_10077068C();
  v54 = v30;
  v55 = &protocol witness table for OS_dispatch_queue;
  v53[0] = v31;
  sub_10076FC6C();
  sub_10000CD74(v53);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_10077068C();
  v54 = v30;
  v55 = &protocol witness table for OS_dispatch_queue;
  v53[0] = v32;
  sub_10076FC9C();

  v28 = v44;
LABEL_9:
  (*(v28 + 8))(v23, v24);
  return sub_10000CD74(v53);
}

uint64_t sub_100748AAC()
{
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F0C();
}

uint64_t sub_100748AFC()
{
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F0C();
}

uint64_t sub_100748B48()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_10076B1BC();
  }

  return result;
}

id sub_100748D2C()
{
  v1 = OBJC_IVAR___RootViewController____lazy_storage___closeBarButtonItem;
  v2 = *(v0 + OBJC_IVAR___RootViewController____lazy_storage___closeBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___RootViewController____lazy_storage___closeBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"closeBarButtonPressed"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100748DD0()
{
  v1 = OBJC_IVAR___RootViewController____lazy_storage___viewInStoreBarButtonItem;
  v2 = *(v0 + OBJC_IVAR___RootViewController____lazy_storage___viewInStoreBarButtonItem);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100748E40(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10074D72C(v4);
  }

  sub_10074D73C(v2);
  return v3;
}

id sub_100748E40(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_10076048C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10077111C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(a1 + OBJC_IVAR___RootViewController_showsStoreButton) == 1)
  {
    v17 = [objc_allocWithZone(UIButton) init];
    v27 = v4;
    v18 = v17;
    v19 = [objc_opt_self() labelColor];
    [v18 setTintColor:v19];

    v20 = v18;
    [v20 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
    [v20 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
    [v20 addTarget:a1 action:"storeButtonPressed:" forControlEvents:64];
    sub_1007710CC();
    (*(v9 + 104))(v11, enum case for SystemImage.appstore(_:), v8);
    sub_10076046C();
    (*(v9 + 8))(v11, v8);
    sub_1007710BC();
    v21 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:2];
    sub_100770F4C();
    sub_100770FBC();
    sub_100770FEC();
    v28._object = 0x80000001007F8A00;
    v28._countAndFlagsBits = 0xD000000000000017;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_1007622EC(v28, v29);
    sub_1007710EC();
    *(swift_allocObject() + 16) = v20;
    v22 = v20;
    sub_10076E8AC();
    v23 = sub_10076E89C();
    (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
    sub_10077106C();
    v24 = v27;
    (*(v13 + 16))(v27, v15, v12);
    (*(v13 + 56))(v24, 0, 1, v12);
    sub_10077114C();
    v25 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v22];

    [v25 setSharesBackground:0];
    (*(v13 + 8))(v15, v12);
    return v25;
  }

  return result;
}

uint64_t sub_100749304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10075D9EC();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = objc_opt_self();
  v8 = UIFontSystemFontDesignDefault;
  v9 = [a2 traitCollection];
  [v7 _preferredFontForTextStyle:UIFontTextStyleBody design:v8 variant:0 weight:UIContentSizeCategoryExtraExtraLarge maximumContentSizeCategory:v9 compatibleWithTraitCollection:UIFontWeightMedium];

  sub_100016BD0();
  return sub_10075D9FC();
}

id sub_100749464(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  v6 = v5;
  if (v5 == 1)
  {
    v6 = sub_1007494D0(v3, a2, a3);
    v7 = *&v3[v4];
    *&v3[v4] = v6;
    v8 = v6;
    sub_10074D72C(v7);
  }

  sub_10074D73C(v5);
  return v6;
}

id sub_1007494D0(char *a1, void *a2, uint64_t *a3)
{
  if (!*&a1[*a2 + 8])
  {
    return 0;
  }

  v5 = type metadata accessor for RootViewController();
  v18[3] = v5;
  v18[0] = a1;

  v6 = a1;
  v7 = sub_10076FF6C();

  if (v5)
  {
    v8 = sub_10000CF78(v18, v5);
    v9 = *(v5 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_10077165C();
    (*(v9 + 8))(v12, v5);
    sub_10000CD74(v18);
  }

  else
  {
    v13 = 0;
  }

  v15 = *a3;
  v16 = objc_allocWithZone(UIBarButtonItem);
  v14 = [v16 initWithTitle:v7 style:0 target:v13 action:{v15, v18[0]}];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_100749680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = (v8 + OBJC_IVAR___RootViewController_cancelButtonTitle);
  *v15 = a1;
  v15[1] = a2;

  v16 = (v8 + OBJC_IVAR___RootViewController_rightBarButtonTitle);
  *v16 = a3;
  v16[1] = a4;

  *(v8 + OBJC_IVAR___RootViewController_showsStoreButton) = a5;
  v17 = (v8 + OBJC_IVAR___RootViewController_promptString);
  *v17 = a6;
  v17[1] = a7;

  *(v8 + OBJC_IVAR___RootViewController_askToBuy) = a8;
  return result;
}

uint64_t sub_100749898@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR___RootViewController_askToBuy);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v10 = sub_10076C0FC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a3, 1, 1, v10);
  }

  else
  {
    if (*(a2 + 16))
    {
      v8 = sub_100561E0C(0x7470656378457369, 0xEB000000006E6F69);
      if (v9)
      {
        sub_10000CD08(*(a2 + 56) + 32 * v8, v19);
        swift_dynamicCast();
      }
    }

    swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_allocObject();
    swift_unknownObjectUnownedInit();

    v13 = a1;
    v14 = [v13 itemKind];
    if (v14)
    {
      v15 = sub_10076FF9C();
      v17 = v16;

      if (v15 == 0x6572617774666F73 && v17 == 0xED00006E4F646441)
      {
      }

      else
      {
        sub_10077167C();
      }
    }

    sub_10076C0DC();
    v18 = sub_10076C0FC();
    return (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
  }
}

uint64_t sub_100749B84()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v45 = &v44 - v3;
  v4 = sub_10076F4FC();
  __chkstk_darwin(v4 - 8);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075DB7C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v20 = __chkstk_darwin(v18);
  v21 = &v44 - v19;
  v22 = OBJC_IVAR___RootViewController_currentItem;
  v23 = *(v0 + OBJC_IVAR___RootViewController_currentItem);
  if (!v23)
  {
    goto LABEL_8;
  }

  v46 = v7;
  v47 = &v44 - v19;
  v24 = v1;
  v25 = *(v1 + OBJC_IVAR___RootViewController_currentParameters);

  v26 = v23;
  v27 = sub_100743CFC();
  v28 = sub_10068A12C(v25, v27);

  v1 = v24;

  v29 = *(v24 + v22);
  if (v28)
  {
    if (v29)
    {
      v30 = v29;
      sub_10068A2F4(v17);

      v7 = v46;
      v21 = v47;
    }

    else
    {
      v7 = v46;
      (*(v46 + 56))(v17, 1, 1, v6);
      v21 = v47;
    }

    goto LABEL_12;
  }

  v7 = v46;
  v21 = v47;
  if (!v29)
  {
LABEL_8:
    (*(v7 + 56))(v17, 1, 1, v6, v20);
    goto LABEL_12;
  }

  v31 = [v29 productPageURL];
  if (v31)
  {
    v32 = v31;
    sub_10075DB3C();

    v1 = v24;
    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  sub_100050DA4(v14, v17);
LABEL_12:
  sub_100050DA4(v17, v21);
  sub_100016E2C(v21, v11, &unk_1009435D0);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    sub_10000CFBC(v21, &unk_1009435D0);
    v33 = v11;
    v34 = &unk_1009435D0;
    return sub_10000CFBC(v33, v34);
  }

  v35 = v49;
  (*(v7 + 32))(v49, v11, v6);
  v36 = *(v1 + OBJC_IVAR___RootViewController_objectGraph);
  if (!v36)
  {
LABEL_19:
    (*(v7 + 8))(v35, v6);
    v34 = &unk_1009435D0;
    v33 = v21;
    return sub_10000CFBC(v33, v34);
  }

  sub_10075DAFC();
  sub_10076F4DC();
  sub_1007631AC();
  swift_allocObject();
  v37 = sub_10076319C();
  if (!v37)
  {

    goto LABEL_19;
  }

  v38 = v37;
  v39 = v21;
  v40 = sub_10000A5D4(&unk_1009428E0);
  v41 = v45;
  sub_10076F5AC();
  v42 = *(v40 - 8);
  if ((*(v42 + 48))(v41, 1, v40) != 1)
  {
    sub_10026433C(v38, 1, v36, v41);

    (*(v7 + 8))(v35, v6);
    sub_10000CFBC(v39, &unk_1009435D0);
    return (*(v42 + 8))(v41, v40);
  }

  (*(v7 + 8))(v35, v6);
  sub_10000CFBC(v39, &unk_1009435D0);
  v34 = &unk_100943200;
  v33 = v41;
  return sub_10000CFBC(v33, v34);
}

void sub_10074A22C(void *a1)
{
  v3 = [a1 BOOLValue];
  v4 = OBJC_IVAR___RootViewController_isPreview;
  if (v3 == *(v1 + OBJC_IVAR___RootViewController_isPreview))
  {
    return;
  }

  *(v1 + v4) = [a1 BOOLValue];
  v5 = *(v1 + OBJC_IVAR___RootViewController_rootViewController);
  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v15 = v5;
  [v7 setNavigationBarHidden:objc_msgSend(a1 animated:{"BOOLValue"), 1}];
  v8 = [v7 visibleViewController];
  if (v8)
  {
    swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (!v9)
    {

      v8 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([a1 BOOLValue])
  {
    if (v8)
    {
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      v11(0, ObjectType, v9);

      swift_unknownObjectRelease_n();
      return;
    }

    goto LABEL_16;
  }

  if (!v8)
  {
LABEL_16:

    return;
  }

  v12 = swift_getObjectType();
  v13 = *(v9 + 40);
  swift_unknownObjectRetain();
  v13(v12, v9);
  swift_unknownObjectRelease();

  v14 = swift_getObjectType();
  (*(v9 + 48))(v14, v9);

  swift_unknownObjectRelease();
}

uint64_t sub_10074A4C8()
{
  v1 = v0;
  v24 = sub_10076162C();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075EE7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v23 = OBJC_IVAR___RootViewController_appHasBeenInBackground;
  if (*(v1 + OBJC_IVAR___RootViewController_appHasBeenInBackground))
  {
    v13 = &enum case for AppEnterMetricsEvent.EnterKind.taskSwitch(_:);
  }

  else
  {
    v13 = &enum case for AppEnterMetricsEvent.EnterKind.launch(_:);
  }

  (*(v6 + 104))(v12, *v13, v5, v10);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *(v6 + 16);
  v25 = v12;
  v15(v8, v12, v5);
  v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  (*(v6 + 32))(v17 + v16, v8, v5);
  v18 = v2;
  v19 = *(v2 + 104);
  v20 = v24;
  v19(v4, enum case for BootstrapPhase.presentingContent(_:), v24);

  sub_100769DCC();

  (*(v18 + 8))(v4, v20);

  if (*(v1 + v23) == 1 && *(v1 + OBJC_IVAR___RootViewController_freshnessWatchdog))
  {

    sub_100764C8C();
  }

  return (*(v6 + 8))(v25, v5);
}

void sub_10074A7F0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v40 = a1;
  v2 = sub_10076FA1C();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076F68C();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10076F3BC();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F08C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10076F0CC();
  v10 = *(v39 - 8);
  __chkstk_darwin(v39);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FAA8 != -1)
  {
    swift_once();
  }

  v38 = qword_10094D778;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = AVAudioSessionCategoryPlayback;
  v13[5] = AVAudioSessionModeDefault;
  v13[6] = 1;
  aBlock[4] = sub_1005F5E1C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A3390;
  v14 = _Block_copy(aBlock);
  v15 = AVAudioSessionCategoryPlayback;
  v16 = AVAudioSessionModeDefault;
  sub_10076F0AC();
  v41 = _swiftEmptyArrayStorage;
  sub_10074E520(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v39);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR___RootViewController_objectGraph);
    v19 = Strong;

    if (v18)
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20 && (v21 = v20, v22 = sub_100744998(), v21, (v22 & 1) != 0))
      {
      }

      else
      {
        v23 = v28;
        sub_10075EE8C();
        sub_10076F64C();
        v24 = v30;
        v25 = v35;
        sub_10076FC1C();
        v26 = v34;
        sub_10076F9FC();
        sub_10076F67C();

        (*(v36 + 8))(v26, v37);
        (*(v33 + 8))(v24, v25);
        (*(v29 + 8))(v23, v31);
      }
    }
  }
}

void sub_10074ADB0()
{
  v1 = *(v0 + OBJC_IVAR___RootViewController_objectGraph);
  if (v1)
  {

    if (sub_100744998())
    {
    }

    else
    {
      v2 = [objc_opt_self() processInfo];
      v3 = sub_10076FF6C();
      v5[4] = sub_10074D3E0;
      v5[5] = v1;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 1107296256;
      v5[2] = sub_1000513F0;
      v5[3] = &unk_1008A3278;
      v4 = _Block_copy(v5);

      [v2 performExpiringActivityWithReason:v3 usingBlock:v4];
      _Block_release(v4);
    }
  }

  *(v0 + OBJC_IVAR___RootViewController_appHasBeenInBackground) = 1;
}

void sub_10074AF0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F08C();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v15 = *(v6 - 8);
  v16 = v6;
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch_semaphore_create(0);
  sub_100016F40(0, &qword_1009471F0);
  v10 = sub_10077068C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = v9;
  aBlock[4] = sub_10074D440;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A32C8;
  v12 = _Block_copy(aBlock);

  v13 = v9;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10074E520(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v12);

  (*(v17 + 8))(v5, v3);
  (*(v15 + 8))(v8, v16);
  sub_10077082C();
}

uint64_t sub_10074B20C(uint64_t a1, void *a2)
{
  v21 = a2;
  v2 = sub_10076FA1C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F68C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076F3BC();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075EE6C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_10076F9FC();
  sub_10076F67C();
  (*(v3 + 8))(v5, v2);
  v13 = swift_allocObject();
  v14 = v21;
  *(v13 + 16) = v21;
  v15 = sub_100016F40(0, &qword_1009471F0);
  v16 = v14;
  v17 = sub_10077068C();
  v22[3] = v15;
  v22[4] = &protocol witness table for OS_dispatch_queue;
  v22[0] = v17;
  sub_10076FC9C();

  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v20);
  return sub_10000CD74(v22);
}

uint64_t sub_10074B4DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076162C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = ObjectType;
  (*(v3 + 104))(v5, enum case for BootstrapPhase.initialBootstrap(_:), v2);
  v7 = v0;
  sub_100769DCC();

  return (*(v3 + 8))(v5, v2);
}

void sub_10074B658(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v46 = &v34 - v3;
  v44 = sub_10075F65C();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100766EDC();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100765F6C();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F4FC();
  __chkstk_darwin(v8 - 8);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v10 - 8);
  v37 = &v34 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_10076C15C();
  v34 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941550 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    if (sub_100744998())
    {
      if (qword_1009415D8 != -1)
      {
        swift_once();
      }

      v25 = sub_10076FD4C();
      sub_10000A61C(v25, qword_1009A3460);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();
    }

    else
    {
      v26 = *(a1 + OBJC_IVAR___RootViewController_objectGraph);
      if (v26)
      {
        sub_10076148C();
        sub_10076F64C();

        sub_10076FC1C();
        sub_1005CC9D4(v50, 1);
        sub_10000A5D4(&qword_1009425C8);
        v27 = sub_1007701EC();

        if (v27)
        {
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
          (*(v34 + 104))(v17, enum case for FlowPage.onboarding(_:), v15);
          v28 = sub_10075DB7C();
          (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
          v29 = sub_10076096C();
          (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
          v49 = &type metadata for OnboardingConfiguration;
          v48 = 1;
          sub_10076F4DC();
          (*(v35 + 104))(v41, enum case for FlowAnimationBehavior.never(_:), v36);
          (*(v39 + 104))(v43, enum case for FlowPresentationContext.infer(_:), v40);
          (*(v42 + 104))(v45, enum case for FlowOrigin.inapp(_:), v44);
          sub_10076FA2C();
          sub_10075F63C();
          swift_allocObject();
          v30 = sub_10075F5EC();
          v31 = sub_10000A5D4(&unk_1009428E0);
          v32 = v46;
          sub_10076F5AC();
          v33 = *(v31 - 8);
          if ((*(v33 + 48))(v32, 1, v31) == 1)
          {

            sub_10000CFBC(v32, &unk_100943200);
          }

          else
          {
            sub_100263C24(v30, 1, v26, v32);

            (*(v33 + 8))(v32, v31);
          }

          return;
        }
      }
    }

    sub_10074BF4C();
    return;
  }

  while (1)
  {
    v47 = Strong;
    v20 = [Strong viewIfLoaded];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 window];

      if (v22)
      {
        v23 = [v22 isHidden];

        if ((v23 & 1) == 0)
        {
          break;
        }
      }
    }

    v19 = [v47 presentedViewController];

    Strong = v19;
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  v24 = v47;
}

uint64_t sub_10074BF4C()
{
  v1 = v0;
  v2 = sub_10076162C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F13C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016F40(0, &qword_1009471F0);
  *v9 = sub_10077068C();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_10076F16C();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR___RootViewController_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.onboarding(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v14 = sub_100769DAC();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR___RootViewController_isOnboardingFinished;
  if (*(v1 + OBJC_IVAR___RootViewController_isOnboardingFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_1009412E8 == -1)
    {
LABEL_5:
      v16 = sub_10076FD4C();
      v17[0] = sub_10000A61C(v16, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      sub_100769DBC();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10074C2D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10076F13C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016F40(0, &qword_1009471F0);
  *v8 = sub_10077068C();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = sub_10076F16C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(v3 + OBJC_IVAR___RootViewController_storeNavigationController);
  if (!v10)
  {
    if (qword_1009415D8 == -1)
    {
LABEL_8:
      v15 = sub_10076FD4C();
      sub_10000A61C(v15, qword_1009A3460);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBEC();
    }

LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v11 = *(v3 + OBJC_IVAR___RootViewController_objectGraph);
  if (!v11)
  {
    v16 = qword_1009415D8;
    v17 = v10;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_10076FD4C();
    sub_10000A61C(v18, qword_1009A3460);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }

  v12 = v10;

  if (sub_10003DF78())
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v12, v11, 0, ObjectType, a2);
  }

  sub_10074C6D0();
}

uint64_t sub_10074C6D0()
{
  v1 = v0;
  v2 = sub_10076162C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F13C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016F40(0, &qword_1009471F0);
  *v9 = sub_10077068C();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_10076F16C();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR___RootViewController_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.presentingContent(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.presentingContent(_:), v2);
  v14 = sub_100769DAC();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR___RootViewController_isPresentingContentFinished;
  if (*(v1 + OBJC_IVAR___RootViewController_isPresentingContentFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_1009415D8 == -1)
    {
LABEL_5:
      v16 = sub_10076FD4C();
      v17[0] = sub_10000A61C(v16, qword_1009A3460);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      sub_100769DBC();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

void sub_10074CA5C(char a1)
{
  v2 = *(v1 + OBJC_IVAR___RootViewController_askToBuy);
  if (v2 == 2)
  {
    return;
  }

  if ((v2 & 1) == 0)
  {
    return;
  }

  v3 = v1;
  if (!*(v1 + OBJC_IVAR___RootViewController_objectGraph))
  {
    return;
  }

  sub_10076148C();

  sub_10076F5AC();

  if (!v32)
  {
    return;
  }

  v5 = sub_1007612AC();

  if ((v5 & 1) == 0)
  {
    return;
  }

  v6 = *(v1 + OBJC_IVAR___RootViewController_currentItem);
  v7 = v6;
  LOBYTE(v6) = sub_10074D188(v6);

  if (v6)
  {
    return;
  }

  v8 = *(v3 + OBJC_IVAR___RootViewController_storeNavigationController);
  if (!v8)
  {
    return;
  }

  v9 = [v8 topViewController];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = a1;
  v12 = [v9 navigationItem];
  if (v11)
  {
    sub_10000A5D4(&unk_100942870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007841E0;
    v14 = sub_100748D2C();
    *(inited + 32) = v14;
    v15 = (inited + 32);
    v32 = _swiftEmptyArrayStorage;
    if ((inited & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      goto LABEL_13;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = v14;
LABEL_13:
      sub_10077019C();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_100016F40(0, &qword_100958FF0);
      isa = sub_1007701AC().super.isa;

      [v12 setLeftBarButtonItems:isa];

      v18 = [v10 navigationItem];
      v19 = &v26;
      v20 = sub_100748DD0();
      v27 = v20;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_28;
  }

  v15 = &v30;
  v21 = sub_100748DB4();
  v31 = v21;
  v32 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v22 = v21;
    sub_10077019C();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_18:
      sub_10077025C();
      goto LABEL_19;
    }

LABEL_28:
    sub_10077021C();
    goto LABEL_18;
  }

LABEL_19:
  sub_10000CFBC((v15 + 32), &qword_100967ED8);
  sub_100016F40(0, &qword_100958FF0);
  v23 = sub_1007701AC().super.isa;

  [v12 setLeftBarButtonItems:v23];

  v18 = [v10 navigationItem];
  v19 = &v28;
  v20 = sub_100749448();
  v29 = v20;
LABEL_20:
  v32 = _swiftEmptyArrayStorage;
  if (v20)
  {
    v24 = v20;
    sub_10077019C();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  sub_10000CFBC((v19 + 32), &qword_100967ED8);
  v25 = sub_1007701AC().super.isa;

  [v18 setRightBarButtonItems:v25];
}

id sub_10074CEA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10074D0AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10076FF6C();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10075DA4C();

    swift_willThrow();
  }

  return v6;
}

BOOL sub_10074D188(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 itemDictionary];
    v3 = sub_10076FE4C();

    sub_10077140C();
    if (*(v3 + 16) && (v4 = sub_10060FEFC(v14), (v5 & 1) != 0))
    {
      sub_10000CD08(*(v3 + 56) + 32 * v4, v15);
      sub_100016C74(v14);

      if (swift_dynamicCast())
      {
        v6 = [v1 itemKind];
        if (v6)
        {
          v7 = v6;
          v8 = sub_10076FF9C();
          v10 = v9;

          if (v8 == 0x6572617774666F73 && v10 == 0xED00006E4F646441)
          {

LABEL_14:
            v16._object = 0x80000001007F88A0;
            v16._countAndFlagsBits = 0xD000000000000010;
            v11 = sub_10077011C(v16);

            return v11;
          }

          v13 = sub_10077167C();

          if (v13)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
      }
    }

    else
    {

      sub_100016C74(v14);
    }
  }

  return 0;
}

uint64_t sub_10074D3A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10074D3E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10074D400()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10074D448()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10074D4A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10074D4DC()
{
  v1 = sub_10075EE7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10074D5A0()
{
  v1 = *(sub_10075EE7C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10074A7F0(v2, v3);
}

uint64_t sub_10074D604()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10074D654()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10074D68C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong finishWithResult:2 completion:0];
}

void sub_10074D6DC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong finishWithResult:0 completion:0];
}

void sub_10074D72C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10074D73C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10074D754()
{
  v1 = sub_10075DB7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10074D820()
{
  v1 = *(sub_10075DB7C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1007481A0(v2, v3, v4);
}

void sub_10074D8E0()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *&v0[OBJC_IVAR___RootViewController_currentParameters];
  if (v6)
  {
    v7 = v3;
    v8 = sub_10076FF9C();
    v10 = v9;
    if (*(v6 + 16) && (v11 = v8, v12 = v0, , v13 = sub_100561E0C(v11, v10), LOBYTE(v11) = v14, , (v11 & 1) != 0))
    {
      sub_10000CD08(*(v6 + 56) + 32 * v13, v20);

      if (swift_dynamicCast() & 1) != 0 && (v19[15])
      {
        v15 = *&v12[OBJC_IVAR___RootViewController_currentItem];
        if (v15)
        {
          v16 = [v15 iTunesStoreIdentifier];
          if (v16)
          {
            v17 = v16;
            sub_10076B95C();
            v18 = sub_10076B93C();
            (*(v2 + 8))(v5, v7);
            if (v18)
            {
              [v12 userDidInteractWithProduct:2];
              [v12 finishWithResult:0 completion:0];
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

id sub_10074DAF4()
{
  v1 = OBJC_IVAR___RootViewController_rootViewController;
  result = *(v0 + OBJC_IVAR___RootViewController_rootViewController);
  if (!result)
  {
    return result;
  }

  result = [result willMoveToParentViewController:0];
  v3 = *(v0 + v1);
  if (!v3)
  {
    return result;
  }

  v4 = v3;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = [result superview];

  if (!v6)
  {
    goto LABEL_7;
  }

  [v4 beginAppearanceTransition:0 animated:0];
  sub_100746F1C();
  result = [v4 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = result;
  [result removeFromSuperview];

  [v4 endAppearanceTransition];
LABEL_7:

  result = *(v0 + v1);
  if (result)
  {

    return [result removeFromParentViewController];
  }

  return result;
}

uint64_t sub_10074DC28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10074DC94()
{
  v1 = OBJC_IVAR___RootViewController_installAttributionGate;
  if (qword_1009415E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1009A3480;
  sub_10076B1EC();
  swift_allocObject();
  v3 = v2;
  *(v0 + v1) = sub_10076B19C();
  v4 = OBJC_IVAR___RootViewController_viewAppeared;
  sub_10076B1DC();
  swift_allocObject();
  *(v0 + v4) = sub_10076B1CC();
  v5 = OBJC_IVAR___RootViewController_prewarmFetchFinished;
  swift_allocObject();
  *(v0 + v5) = sub_10076B1CC();
  v6 = OBJC_IVAR___RootViewController_onboardingCompleted;
  swift_allocObject();
  *(v0 + v6) = sub_10076B1CC();
  v7 = OBJC_IVAR___RootViewController_visibleInClientWindow;
  swift_allocObject();
  *(v0 + v7) = sub_10076B1CC();
  *(v0 + OBJC_IVAR___RootViewController_isVisibleInClientWindow) = 0;
  *(v0 + OBJC_IVAR___RootViewController_isViewAppeared) = 0;
  *(v0 + OBJC_IVAR___RootViewController_isPreview) = 0;
  *(v0 + OBJC_IVAR___RootViewController_adAttributionManager) = 0;
  *(v0 + OBJC_IVAR___RootViewController_currentUISnapshot) = 0;
  *(v0 + OBJC_IVAR___RootViewController____lazy_storage___entitlementHelper) = 0;
  *(v0 + OBJC_IVAR___RootViewController_objectGraph) = 0;
  *(v0 + OBJC_IVAR___RootViewController_freshnessWatchdog) = 0;
  *(v0 + OBJC_IVAR___RootViewController_currentItem) = 0;
  *(v0 + OBJC_IVAR___RootViewController_currentParameters) = 0;
  v8 = (v0 + OBJC_IVAR___RootViewController_clientBundleId);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR___RootViewController_startedDisappearTransition) = 0;
  *(v0 + OBJC_IVAR___RootViewController_rootViewController) = 0;
  *(v0 + OBJC_IVAR___RootViewController_storeNavigationController) = 0;
  v9 = OBJC_IVAR___RootViewController_bootstrapPendingClosuresHandler;
  sub_100769DEC();
  swift_allocObject();
  *(v0 + v9) = sub_100769DDC();
  v10 = (v0 + OBJC_IVAR___RootViewController_cancelButtonTitle);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR___RootViewController_rightBarButtonTitle);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR___RootViewController_showsStoreButton) = 1;
  v12 = (v0 + OBJC_IVAR___RootViewController_promptString);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR___RootViewController_askToBuy) = 2;
  *(v0 + OBJC_IVAR___RootViewController____lazy_storage___closeBarButtonItem) = 0;
  *(v0 + OBJC_IVAR___RootViewController____lazy_storage___customCloseButtonItem) = 1;
  *(v0 + OBJC_IVAR___RootViewController____lazy_storage___viewInStoreBarButtonItem) = 1;
  *(v0 + OBJC_IVAR___RootViewController____lazy_storage___customRightBarButtonItem) = 1;
  *(v0 + OBJC_IVAR___RootViewController_appHasBeenInBackground) = 0;
  *(v0 + OBJC_IVAR___RootViewController_isOnboardingFinished) = 0;
  *(v0 + OBJC_IVAR___RootViewController_isPresentingContentFinished) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10074DF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F2EC();
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  v6 = objc_allocWithZone(LSApplicationRecord);

  v8 = sub_10074D0AC(a1, a2, 1);
  v9 = [v8 appClipMetadata];

  if (!v9)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10074E2D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076095C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076096C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074DF80(a1, a2);
  v15 = &enum case for ReferrerData.Kind.appClip(_:);
  if ((v14 & 1) == 0)
  {
    v15 = &enum case for ReferrerData.Kind.unspecified(_:);
  }

  (*(v7 + 104))(v9, *v15, v6);

  sub_10076094C();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F1C();

  sub_100761F8C();
  sub_100761EEC();

  v16 = (v3 + OBJC_IVAR___RootViewController_clientBundleId);
  *v16 = a1;
  v16[1] = a2;

  sub_10076601C();
  v17 = sub_10076600C();
  sub_100765FFC();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10074E520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10074E5F8()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F9E0 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_10099D858);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10074E740()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F9D8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_10099D840);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10074E918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10074E960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = sub_10075DFDC();
  __chkstk_darwin(v20);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_10000A5D4(&unk_10094CF38);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  sub_1001D42E4();
  v19[1] = a1;
  result = sub_100763C2C();
  v13 = result;
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_100763C1C();
    sub_100763C0C();
    sub_10000A5D4(&unk_100943120);
    sub_10075FDEC();
    v17 = sub_10000A5D4(&qword_10094CF18);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    v18 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
    swift_beginAccess();
    sub_10074EBEC(v11, v4 + v18);
    swift_endAccess();
    return [v4 setNeedsLayout];
  }

  result = sub_10077158C();
  v14 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_10077149C();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      sub_1001D447C(v16, a3);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10074EBEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094CF38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.didTapButton(sender:)(UIButton sender)
{
  v2 = *(v1 + 24);
  if (v2 && (*(v1 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) & 1) == 0)
  {

    if (sub_10076123C())
    {
      if (sub_100767C7C())
      {
        sub_10075103C(v2);
      }

      else
      {
        sub_10075148C(v2);
      }
    }

    else
    {
      sub_100767C4C();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      v6[2].super.super.super.super.isa = v4;
      v6[3].super.super.super.super.isa = v5;
      v6[4].super.super.super.super.isa = v2;
      v6[5].super.super.super.super.isa = sender.super.super.super.super.isa;
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      v9 = sub_100016F40(0, &qword_1009471F0);
      swift_retain_n();
      v10 = sender.super.super.super.super.isa;

      v11[3] = v9;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = sub_10077068C();
      sub_10076FC6C();

      sub_10000CD74(v11);
    }
  }
}

uint64_t sub_10074EEFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t NotifyMeButtonPresenter.__allocating_init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10076F68C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  *(v13 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v13 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v14 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_10076F64C();

  sub_10076FC1C();
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_metricsPipeline, v12, v9);
  *(v13 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_10076148C();

  sub_10076FC1C();
  *(v13 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_bag) = v18;
  sub_10074F1BC();
  sub_10074F8C8();
  v15 = [objc_opt_self() defaultCenter];
  sub_100767C9C();

  v16 = sub_100767C0C();
  [v15 addObserver:v13 selector:"userNotificationsDidChangeNotification:" name:v16 object:0];

  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_10074F1BC()
{
  v1 = sub_10075DD7C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  if (!*(v0 + 24))
  {
    v16 = v0 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 40))(1, 0, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  sub_10075EFFC();
  sub_10075DD6C();
  sub_100751A64(&unk_100968060, &type metadata accessor for Date);
  v8 = sub_10076FF0C();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = sub_100767C7C();
  v11 = v0 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 40))((v8 & 1) == 0, 0, v13, v12);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v11 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v10 & 1, 0, v15, v14);

    return swift_unknownObjectRelease();
  }
}

uint64_t NotifyMeButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_10074F1BC();
  return swift_unknownObjectRelease();
}

void (*NotifyMeButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10074F5C4;
}

void sub_10074F5C4(uint64_t a1, char a2)
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
    sub_10074F1BC();
  }

  free(v3);
}

uint64_t NotifyMeButtonPresenter.init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_10076F68C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v15 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_10076F64C();

  sub_10076FC1C();
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_metricsPipeline, v14, v11);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_10076148C();

  sub_10076FC1C();
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_bag) = v19;
  sub_10074F1BC();
  sub_10074F8C8();
  v16 = [objc_opt_self() defaultCenter];
  sub_100767C9C();

  v17 = sub_100767C0C();
  [v16 addObserver:v6 selector:"userNotificationsDidChangeNotification:" name:v17 object:0];

  swift_unknownObjectRelease();

  return v6;
}

void sub_10074F8C8()
{
  v1 = v0;
  v2 = sub_10075DD7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (*(v0 + 24))
  {
    sub_10075EFFC();
    (*(v3 + 32))(v11, v8, v2);
    sub_10075DD6C();
    v12 = sub_10075DD0C();
    v13 = *(v3 + 8);
    v13(v5, v2);
    if ((v12 & 1) != 0 && (v14 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer, !*(v1 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer)))
    {
      isa = sub_10075DCFC().super.isa;

      v16 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v1 target:"displayTimeReached" selector:0 userInfo:0 repeats:0.0];

      v17 = [objc_opt_self() mainRunLoop];
      [v17 addTimer:v16 forMode:NSRunLoopCommonModes];

      v13(v11, v2);
      v18 = *(v1 + v14);
      *(v1 + v14) = v16;
    }

    else
    {
      v13(v11, v2);
    }
  }
}

uint64_t NotifyMeButtonPresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_metricsPipeline;
  v3 = sub_10076F68C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view);

  return v0;
}

uint64_t NotifyMeButtonPresenter.__deallocating_deinit()
{
  NotifyMeButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10074FC48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v12 = Strong;
    if (v9)
    {

      v13 = sub_100767C7C();

      if (v13)
      {
        sub_10075103C(a4);
      }

      else
      {
        sub_10075148C(a4);
      }

      goto LABEL_11;
    }

    v14 = sub_10075F02C();
    if (!v14)
    {
LABEL_11:
    }

    v15 = v14;
    v16 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {

      return sub_10000CFBC(v8, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v15, 1, v12, v8);

      return (*(v17 + 8))(v8, v16);
    }
  }

  return result;
}

uint64_t sub_10074FE90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10074FEEC()
{
  v0 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_10075F00C();
    if (v5)
    {
      v6 = v5;
      v7 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v2, 1, v7) == 1)
      {

        return sub_10000CFBC(v2, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v6, 1, v4, v2);

        return (*(v8 + 8))(v2, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10075009C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1007500E4(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_100767C5C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 88))(v8, v5);
    if (v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) || v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      v13 = sub_10075F01C();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = sub_10000A5D4(&unk_1009428E0);
          sub_10076F5AC();
          v18 = *(v17 - 8);
          if ((*(v18 + 48))(v4, 1, v17) == 1)
          {

            sub_10000CFBC(v4, &unk_100943200);
          }

          else
          {
            sub_100263BF0(v14, 1, v16, v4);

            (*(v18 + 8))(v4, v17);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      if (v11 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = sub_10077166C();
        __break(1u);
        return result;
      }

      v19 = v10 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 32))(0, 0, ObjectType, v20);
        swift_unknownObjectRelease();
      }
    }

    *(v10 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_100750438(uint64_t a1)
{
  v2 = sub_100767C5C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) && v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      if (v8 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = sub_10077166C();
        __break(1u);
        return result;
      }

      v10 = v7 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(1, 0, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }

    *(v7 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_100750608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_10075F00C();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = sub_10000A5D4(&unk_1009428E0);
        sub_10076F5AC();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v8, 1, v15) == 1)
        {

          sub_10000CFBC(v8, &unk_100943200);
        }

        else
        {
          sub_100263BF0(v12, 1, v14, v8);

          (*(v16 + 8))(v8, v15);
        }
      }

      else
      {
      }
    }

    v17 = v10 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 32))(a5 & 1, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    *(v10 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

void sub_100750860()
{
  v1 = sub_10076F08C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v29 = v7;

    v10 = sub_10075D7AC();
    if (v10)
    {
      v11 = v10;
      sub_100767C9C();
      v30 = sub_100767C2C();
      v31 = v12;
      sub_10077140C();
      if (*(v11 + 16) && (v13 = sub_10060FEFC(aBlock), (v14 & 1) != 0))
      {
        sub_10000CD08(*(v11 + 56) + 32 * v13, v32);
        sub_100016C74(aBlock);

        if (swift_dynamicCast())
        {
          v15 = v31;
          v28 = v30;
          if (v28 == sub_10075EFEC() && v15 == v16)
          {
          }

          else
          {
            LODWORD(v28) = sub_10077167C();

            if ((v28 & 1) == 0)
            {
LABEL_21:

              return;
            }
          }
        }
      }

      else
      {

        sub_100016C74(aBlock);
      }
    }

    v17 = sub_10075D7AC();
    if (v17)
    {
      v18 = v17;
      sub_100767C9C();
      v30 = sub_100767C3C();
      v31 = v19;
      sub_10077140C();
      if (*(v18 + 16) && (v20 = sub_10060FEFC(aBlock), (v21 & 1) != 0))
      {
        sub_10000CD08(*(v18 + 56) + 32 * v20, v32);
        sub_100016C74(aBlock);

        sub_100016F40(0, &qword_1009441F0);
        if (swift_dynamicCast())
        {
          v22 = v30;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            swift_unknownObjectRelease();

            if (v22 == v24)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_100016C74(aBlock);
      }
    }

    sub_100016F40(0, &qword_1009471F0);
    v25 = sub_10077068C();
    v26 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100751A44;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_1008A3610;
    v27 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100751A64(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_1000852B8();
    sub_1007712CC();
    sub_10077069C();

    _Block_release(v27);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v29);
  }
}

uint64_t sub_100750D7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10074F1BC();
  }

  return result;
}

uint64_t sub_10075103C(uint64_t a1)
{
  v24 = sub_10076FA1C();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_10076F3BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v23 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22[1] = v1;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(0, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_10075EFDC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &unk_10094C030);
  }

  else
  {
    v15 = v23;
    (*(v10 + 32))(v23, v8, v9);
    sub_10076F9FC();
    sub_10076F67C();

    (*(v3 + 8))(v5, v24);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_100767C8C();
  swift_unknownObjectRelease();
  swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = sub_100016F40(0, &qword_1009471F0);

  v20 = sub_10077068C();
  v25[3] = v19;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v20;
  sub_10076FC6C();

  sub_10000CD74(v25);
}

uint64_t sub_10075148C(uint64_t a1)
{
  v28 = sub_10076FA1C();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_10076F3BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = v10;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v10 = v26;
    (*(v13 + 32))(1, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_10075EFCC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &unk_10094C030);
  }

  else
  {
    v15 = v27;
    (*(v10 + 32))(v27, v8, v9);
    sub_10076F9FC();
    sub_10076F67C();

    (*(v3 + 8))(v5, v28);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_100767C6C();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a1;
  v21[4] = v20;
  v22 = sub_100016F40(0, &qword_1009471F0);
  swift_retain_n();

  v23 = sub_10077068C();
  v29[3] = v22;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v23;
  sub_10076FC6C();

  sub_10000CD74(v29);
}

uint64_t type metadata accessor for NotifyMeButtonPresenter()
{
  result = qword_100967FA0;
  if (!qword_100967FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10075197C()
{
  result = sub_10076F68C();
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

uint64_t sub_100751A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100751A64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GenericPageLayoutSectionProvider()
{
  result = qword_100968070;
  if (!qword_100968070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100751BA4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a4;
  v42 = a5;
  v13 = sub_10076B5BC();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100946720);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v35 = a2;
  v36 = a3;
  v44 = a2;
  v45 = a3;
  sub_10076980C();
  v20 = sub_10076981C();
  v37 = a10;
  v33 = a9;
  v21 = v13;
  v22 = v20(a1, sub_10012CD94, v43, v41, v42, v38, v39, v40, a9, a10);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v17 + 8))(v19, v16);
  v23 = v34;
  v24 = (*(v34 + 88))(v15, v21);
  if (v24 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    v25 = v35();
    v26 = sub_10075203C(a1, v25, v41, v42, v38, v39, v40, v33, v37);

LABEL_5:

    return v26;
  }

  v27 = v37;
  v28 = v41;
  v29 = v42;
  if (v24 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v30 = v35();
    v26 = sub_100753380(a1, v30, v28, v29, v38, v39, v40, v33, v27);

    goto LABEL_5;
  }

  if (v24 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    [v22 setOrthogonalScrollingBehavior:2];
  }

  else
  {
    (*(v23 + 8))(v15, v21);
  }

  return v22;
}

uint64_t sub_100751F08(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  sub_10000A5D4(&qword_100948BB0);
  v9 = sub_1007701BC();

  swift_unknownObjectRetain();
  v8(v9, a5, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100751FC4(uint64_t a1)
{
  swift_allocObject();
  sub_10000A570(a1, v4);
  v2 = sub_1007697CC();
  sub_10000CD74(a1);
  return v2;
}

uint64_t sub_10075203C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v159 = a8;
  v160 = a7;
  v133 = a6;
  v132 = a5;
  v134 = a4;
  v135 = a3;
  v156 = a1;
  v10 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v10 - 8);
  v142 = &v128 - v11;
  v153 = sub_10000A5D4(&unk_1009680C0);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v128 - v12;
  v147 = sub_10076738C();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v128 - v15;
  v144 = sub_10076D7FC();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v136 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v128 - v18;
  __chkstk_darwin(v19);
  v138 = &v128 - v20;
  __chkstk_darwin(v21);
  v139 = &v128 - v22;
  __chkstk_darwin(v23);
  v140 = &v128 - v24;
  __chkstk_darwin(v25);
  v141 = &v128 - v26;
  v150 = sub_10076DA7C();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v158 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10076C38C();
  v157 = *(v155 - 8);
  __chkstk_darwin(v155);
  v154 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076341C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = _swiftEmptyArrayStorage;
  v33 = *(a2 + 16);
  v161 = v30;
  v130 = a2;
  v131 = v33;
  if (v33)
  {
    sub_10076108C();
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    *&v163 = v35;
    v36 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v162 = _swiftEmptyArrayStorage;
    v35(v32, v36, v29);
    while (1)
    {
      sub_100754F34(&qword_10094B050, &type metadata accessor for RibbonBarItem);
      sub_10076332C();
      (*(v34 - 8))(v32, v29);
      if (v168[0])
      {
        sub_10077019C();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v162 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10077021C();
        }

        sub_10077025C();
        v162 = aBlock;
      }

      v36 += v37;
      if (!--v33)
      {
        break;
      }

      (v163)(v32, v36, v29);
    }
  }

  else
  {
    v162 = _swiftEmptyArrayStorage;
  }

  v38 = v154;
  v39 = v156;
  sub_10076460C();
  sub_10076C24C();
  v41 = v40;
  v42 = v157 + 8;
  v43 = *(v157 + 8);
  v44 = v155;
  v43(v38, v155);
  v45 = sub_10076461C();
  v46 = type metadata accessor for SnapshotPageTraitEnvironment();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v48 = v41;
  *(v48 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v47[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v45;
  v169.receiver = v47;
  v169.super_class = v46;
  v49 = objc_msgSendSuper2(&v169, "init");
  v50 = [v49 traitCollection];

  sub_10076460C();
  sub_10076C2FC();
  v52 = v51;
  v43(v38, v44);
  sub_10076460C();
  sub_10076C2EC();
  v54 = v53;
  v43(v38, v44);
  v55 = sub_1001BA414(v162, v50, v52, v54);

  if ((sub_1007701EC() & 1) == 0)
  {

    sub_100016F40(0, &unk_1009632E0);
    v67 = sub_10076469C();
    v68 = *(v67 - 8);
    v69 = v142;
    (*(v68 + 16))(v142, v39, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = sub_10077096C();

    sub_10000CFBC(v69, &unk_10095DCF0);
    return v70;
  }

  v142 = v43;
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v162 = a9;
  v56 = sub_10076D3DC();
  sub_10000A61C(v56, qword_1009A1DE0);
  v57 = sub_100770B3C();
  v58 = v136;
  sub_10076D7EC();
  v59 = v137;
  *&v163 = v57;
  sub_10076D7DC();
  v60 = *(v143 + 8);
  v61 = v144;
  v60(v58, v144);
  v62 = v138;
  sub_10076D73C();
  v60(v59, v61);
  v63 = v139;
  sub_10076D79C();
  v60(v62, v61);
  v64 = v140;
  sub_10076D78C();
  v60(v63, v61);
  sub_10076D7AC();
  v60(v64, v61);
  sub_10076DA5C();
  sub_10076DA8C();
  v65 = sub_10077071C();
  v129 = v55;
  v66 = v145;
  if (v65)
  {
    sub_1001B997C(v50, v145);
  }

  else
  {
    sub_1001B9CB4();
  }

  (*(v146 + 32))(v149, v66, v147);
  v166 = 0;
  aBlock = 0u;
  v165 = 0u;
  v71 = v150;
  v168[3] = v150;
  v168[4] = &protocol witness table for LabelPlaceholder;
  v72 = sub_10000DB7C(v168);
  v73 = v148;
  v74 = v158;
  (*(v148 + 16))(v72, v158, v71);
  v75 = sub_1007673AC();
  swift_allocObject();
  *&aBlock = sub_10076739C();
  sub_100754F34(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout);
  v76 = v151;
  v149 = v75;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v77 = v153;
  sub_10076E0FC();
  v79 = v78;

  (*(v152 + 8))(v76, v77);
  (*(v73 + 8))(v74, v71);
  v168[0] = _swiftEmptyArrayStorage;
  v80 = v129;
  *&v163 = v129[2];
  v157 = v42;
  if (!v163)
  {
    v86 = 0.0;
LABEL_26:

    v95 = (v163 - 1);
    sub_10076732C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v96 = swift_allocObject();
    v163 = xmmword_1007841E0;
    *(v96 + 16) = xmmword_1007841E0;
    *(v96 + 32) = v50;
    v97 = v50;
    v98 = sub_10076DEEC();
    sub_10077036C();
    v100 = v99;

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v86 + v100 * v95];
    v104 = [v102 absoluteDimension:v79];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_100016F40(0, &qword_100952C70);
    isa = sub_1007701AC().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v108 = objc_opt_self();
    sub_10076732C();
    v109 = swift_allocObject();
    *(v109 + 16) = v163;
    *(v109 + 32) = v97;
    *&v163 = v97;
    v110 = sub_10076DEEC();
    sub_10077036C();
    v112 = v111;

    v113 = [v108 fixedSpacing:v112];
    [v107 setInterItemSpacing:v113];

    v70 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    v114 = v134;
    sub_100768A7C();
    sub_100016F40(0, &qword_100948C70);
    v115 = sub_1007701AC().super.isa;

    [v70 setBoundarySupplementaryItems:v115];

    sub_100768A6C();
    sub_100016F40(0, &qword_100949DE8);
    v116 = sub_1007701AC().super.isa;

    [v70 setDecorationItems:v116];

    v117 = v154;
    sub_10076460C();
    sub_10076C31C();
    v119 = v118;
    v121 = v120;
    (v142)(v117, v155);
    sub_10000CF78(v114, v114[3]);
    sub_100768A3C();
    v123 = v122;
    sub_10000CF78(v114, v114[3]);
    sub_100768A5C();
    [v70 setContentInsets:{v123, v119, v124, v121}];
    [v70 setOrthogonalScrollingBehavior:1];
    sub_1007697FC();
    v125 = sub_1007701DC();
    v127 = v126;

    if (v125)
    {
      v166 = v125;
      v167 = v127;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v165 = sub_100751F08;
      *(&v165 + 1) = &unk_1008A36B0;
      v125 = _Block_copy(&aBlock);
    }

    [v70 setVisibleItemsInvalidationHandler:v125];
    _Block_release(v125);

    return v70;
  }

  v81 = objc_opt_self();
  v158 = objc_opt_self();
  result = objc_opt_self();
  if (v131)
  {
    if (v163 <= v131)
    {
      v83 = result;
      v153 = v50;
      swift_getObjectType();
      v84 = 0;
      v85 = v80 + 4;
      v86 = 0.0;
      do
      {
        v87 = *&v85[v84];
        v88 = [v81 absoluteDimension:v87];
        v89 = [v81 absoluteDimension:v79];
        v90 = [v158 sizeWithWidthDimension:v88 heightDimension:v89];

        sub_10076815C();
        sub_100016F40(0, &unk_10095DD70);
        v91 = v90;
        v92 = sub_1007701AC().super.isa;

        v93 = [v83 itemWithLayoutSize:v91 supplementaryItems:v92];

        v94 = v93;
        sub_10077019C();
        if (*((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        ++v84;
        sub_10077025C();

        v86 = v86 + v87;
      }

      while (v163 != v84);
      v50 = v153;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100753380(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v187 = a4;
  v227 = a8;
  v230 = a7;
  v185 = a5;
  v186 = a6;
  v188 = a3;
  v193 = a1;
  v10 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v10 - 8);
  v189 = &v182 - v11;
  v12 = sub_10000A5D4(&qword_100959228);
  v13 = *(v12 - 8);
  v233 = v12;
  v234 = v13;
  __chkstk_darwin(v12);
  v226 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v203 = &v182 - v16;
  v215 = sub_10000A5D4(&unk_1009680C0);
  v224 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v182 - v17;
  v213 = sub_10076738C();
  v223 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v231 = &v182 - v20;
  v211 = sub_10076D7FC();
  v222 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v209 = &v182 - v23;
  __chkstk_darwin(v24);
  v208 = &v182 - v25;
  __chkstk_darwin(v26);
  v207 = &v182 - v27;
  __chkstk_darwin(v28);
  v206 = &v182 - v29;
  __chkstk_darwin(v30);
  v205 = &v182 - v31;
  v204 = sub_10076DA7C();
  v221 = *(v204 - 8);
  __chkstk_darwin(v204);
  v229 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10076C38C();
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_10076341C();
  v34 = *(v232 - 1);
  __chkstk_darwin(v232);
  v217 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  *&v235 = _swiftEmptyArrayStorage;
  v39 = *(a2 + 16);
  v182 = a2;
  v183 = v34;
  v184 = v39;
  if (v39)
  {
    sub_10076108C();
    v41 = *(v34 + 16);
    v40 = v34 + 16;
    ObjectType = v41;
    v42 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v225 = *(v40 + 56);
    v218 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v232;
      (ObjectType)(v38, v42, v232);
      sub_100754F34(&qword_10094B050, &type metadata accessor for RibbonBarItem);
      sub_10076332C();
      (*(v40 - 8))(v38, v43);
      if (v254[0])
      {
        sub_10077019C();
        if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v218 = v235;
      }

      v42 += v225;
      --v39;
    }

    while (v39);
  }

  else
  {
    v218 = _swiftEmptyArrayStorage;
  }

  v44 = v191;
  sub_10076460C();
  sub_10076C24C();
  v46 = v45;
  v47 = *(v194 + 8);
  v194 += 8;
  v190 = v47;
  v47(v44, v192);
  v48 = sub_10076461C();
  v49 = type metadata accessor for SnapshotPageTraitEnvironment();
  v50 = objc_allocWithZone(v49);
  v51 = &v50[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v51 = v46;
  *(v51 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v50[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v48;
  v258.receiver = v50;
  v258.super_class = v49;
  v52 = objc_msgSendSuper2(&v258, "init");
  v53 = [v52 traitCollection];

  v54 = v218;
  if (v218 >> 62)
  {
    v94 = v218;
    v55 = sub_10077158C();
    v54 = v94;
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_37:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v55 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    goto LABEL_37;
  }

LABEL_11:
  v56 = v54;
  v257 = _swiftEmptyArrayStorage;
  sub_1004BBBE8(0, v55 & ~(v55 >> 63), 0);
  if (v55 < 0)
  {
    goto LABEL_94;
  }

  v57 = v257;
  v58 = sub_100016F40(0, &qword_100942F00);
  v59 = 0;
  v60 = v56;
  v200 = v56 & 0xC000000000000001;
  v201 = v58;
  v198 = (v223 + 32);
  v199 = (v222 + 8);
  v196 = v224 + 1;
  v197 = (v221 + 2);
  v195 = (v221 + 1);
  v216 = v53;
  v202 = v55;
  do
  {
    if (v200)
    {
      v61 = sub_10077149C();
    }

    else
    {
      v61 = *(v60 + 8 * v59 + 32);
    }

    v62 = sub_10076106C();
    v221 = v63;
    v222 = v62;
    v64 = sub_10076107C();
    ObjectType = v57;
    if (v64)
    {
      sub_10076BEFC();
      v66 = v65;
      v68 = v67;

      v219 = v68;
      v220 = v66;
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    v69 = sub_10076107C();
    if (v69)
    {
    }

    v223 = v69;
    v225 = v61;
    if (qword_100940FF8 != -1)
    {
      swift_once();
    }

    v70 = sub_10076D3DC();
    sub_10000A61C(v70, qword_1009A1DE0);
    v53 = v216;
    v71 = sub_100770B3C();
    v72 = v210;
    sub_10076D7EC();
    v73 = v209;
    v224 = v71;
    sub_10076D7DC();
    v74 = *v199;
    v75 = v211;
    (*v199)(v72, v211);
    v76 = v208;
    sub_10076D73C();
    v74(v73, v75);
    v77 = v207;
    sub_10076D79C();
    v74(v76, v75);
    v78 = v206;
    sub_10076D78C();
    v74(v77, v75);
    sub_10076D7AC();
    v74(v78, v75);
    sub_10076DA5C();
    sub_10076DA8C();
    if (sub_10077071C())
    {
      v79 = v212;
      sub_1001B997C(v53, v212);
    }

    else
    {
      v79 = v212;
      if (v64)
      {
        sub_100770A9C();
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4028000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0;
      }

      else
      {
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4024000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0x4024000000000000;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0x4024000000000000;
      }

      sub_10076735C();
      v53 = v216;
    }

    (*v198)(v231, v79, v213);
    if (v223)
    {
      v80 = sub_1007616FC();
      swift_allocObject();
      v81 = sub_1007616EC();
      *(&v236 + 1) = v80;
      v237 = sub_100754F34(&qword_1009680E0, &type metadata accessor for EmptyPlaceable);
      *&v235 = v81;
    }

    else
    {
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
    }

    v82 = v204;
    v255 = v204;
    v256 = &protocol witness table for LabelPlaceholder;
    v83 = sub_10000DB7C(v254);
    v84 = v229;
    (*v197)(v83, v229, v82);
    sub_1007673AC();
    swift_allocObject();
    *&v235 = sub_10076739C();
    sub_100754F34(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout);
    v85 = v214;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v86 = v215;
    sub_10076E0FC();
    v88 = v87;
    v90 = v89;

    (*v196)(v85, v86);
    (*v195)(v84, v82);
    v57 = ObjectType;
    v257 = ObjectType;
    v92 = *(ObjectType + 16);
    v91 = *(ObjectType + 24);
    if (v92 >= v91 >> 1)
    {
      sub_1004BBBE8((v91 > 1), v92 + 1, 1);
      v57 = v257;
    }

    ++v59;
    v57[2] = v92 + 1;
    v93 = &v57[2 * v92];
    v93[4] = v88;
    v93[5] = v90;
    v60 = v218;
  }

  while (v202 != v59);

LABEL_38:
  type metadata accessor for CGSize(0);
  if ((sub_1007701EC() & 1) == 0)
  {

    sub_100016F40(0, &unk_1009632E0);
    v129 = sub_10076469C();
    v130 = *(v129 - 8);
    v131 = v189;
    (*(v130 + 16))(v189, v193, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    v132 = sub_10077096C();

    sub_10000CFBC(v131, &unk_10095DCF0);
    return v132;
  }

  sub_1007673AC();
  sub_10076732C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1007841E0;
  *(v95 + 32) = v53;
  v96 = v53;
  v97 = sub_10076DEEC();
  sub_10077036C();
  v99 = v98;

  v100 = v191;
  sub_10076460C();
  sub_10076C8BC();
  sub_10076C2FC();
  v102 = v101;
  result = v190(v100, v192);
  v104 = v57[2];
  v105 = _swiftEmptyArrayStorage;
  v216 = v96;
  ObjectType = v57;
  if (!v104)
  {
    v224 = _swiftEmptyArrayStorage;
LABEL_67:
    v225 = a9;

    v55 = _swiftEmptyArrayStorage;
    v254[0] = _swiftEmptyArrayStorage;
    v222 = v105[2];
    if (!v222)
    {

      v159 = _swiftEmptyArrayStorage;
      v134 = 0.0;
LABEL_86:
      v160 = objc_opt_self();
      v161 = [v160 absoluteDimension:v102];
      v162 = [v160 absoluteDimension:v134];
      v55 = [objc_opt_self() sizeWithWidthDimension:v161 heightDimension:v162];

      if (!(v159 >> 62))
      {

        sub_10077168C();
        sub_100016F40(0, &qword_100952C70);
LABEL_88:

        v163 = objc_opt_self();
        sub_100016F40(0, &qword_100952C70);
        isa = sub_1007701AC().super.isa;

        v165 = [v163 verticalGroupWithLayoutSize:v55 subitems:isa];

        v166 = [objc_opt_self() fixedSpacing:10.0];
        [v165 setInterItemSpacing:v166];

        v167 = objc_opt_self();
        v234 = v165;
        v132 = [v167 sectionWithGroup:v165];
        swift_getObjectType();
        v168 = v187;
        sub_100768A7C();
        sub_100016F40(0, &qword_100948C70);
        v169 = sub_1007701AC().super.isa;

        [v132 setBoundarySupplementaryItems:v169];

        sub_100768A6C();
        sub_100016F40(0, &qword_100949DE8);
        v170 = sub_1007701AC().super.isa;

        [v132 setDecorationItems:v170];

        v171 = v191;
        sub_10076460C();
        sub_10076C31C();
        v173 = v172;
        v175 = v174;
        v190(v171, v192);
        sub_10000CF78(v168, v168[3]);
        sub_100768A3C();
        v177 = v176;
        sub_10000CF78(v168, v168[3]);
        sub_100768A5C();
        [v132 setContentInsets:{v177, v173, v178, v175}];
        sub_1007697FC();
        v179 = sub_1007701DC();
        v181 = v180;

        if (v179)
        {
          v237 = v179;
          v238 = v181;
          *&v235 = _NSConcreteStackBlock;
          *(&v235 + 1) = 1107296256;
          *&v236 = sub_100751F08;
          *(&v236 + 1) = &unk_1008A36D8;
          v179 = _Block_copy(&v235);
        }

        [v132 setVisibleItemsInvalidationHandler:{v179, v182, v183}];
        _Block_release(v179);

        return v132;
      }

LABEL_95:
      sub_100016F40(0, &qword_100952C70);

      sub_10077157C();

      goto LABEL_88;
    }

    v221 = v105 + 4;
    v219 = objc_opt_self();
    v232 = objc_opt_self();
    v231 = objc_opt_self();
    v218 = objc_opt_self();
    v133 = 0;
    v134 = 0.0;
    v220 = v105;
    while (v133 < v105[2])
    {
      v223 = v133;
      v135 = v221[v133];
      v136 = *(v135 + 16);
      if (v136)
      {
        *&v235 = _swiftEmptyArrayStorage;

        sub_1007714EC();
        v229 = (v135 + ((v234[80] + 32) & ~v234[80]));
        ObjectType = swift_getObjectType();
        v137 = objc_opt_self();
        v138 = 0;
        v139 = 0.0;
        v140 = 0.0;
        while (v138 < *(v135 + 16))
        {
          v141 = v226;
          sub_100754EC4(&v229[*(v234 + 9) * v138], v226);
          v142 = (v141 + *(v233 + 48));
          v143 = *v142;
          v144 = v142[1];
          if (v140 <= v144)
          {
            v140 = v142[1];
          }

          ++v138;
          v139 = v139 + v143;
          sub_10076815C();
          v145 = v232;
          v146 = [v232 absoluteDimension:v143];
          v147 = [v145 absoluteDimension:v144];
          v55 = [v231 sizeWithWidthDimension:v146 heightDimension:v147];

          sub_100016F40(0, &unk_10095DD70);
          v148 = sub_1007701AC().super.isa;

          v149 = [v137 itemWithLayoutSize:v55 supplementaryItems:v148];

          sub_10000CFBC(v141, &qword_100959228);
          sub_1007714CC();
          sub_1007714FC();
          sub_10077150C();
          sub_1007714DC();
          if (v136 == v138)
          {

            v55 = _swiftEmptyArrayStorage;
            goto LABEL_78;
          }
        }

        __break(1u);
        break;
      }

      v139 = 0.0;
      v140 = 0.0;
LABEL_78:
      if (v136 <= 1)
      {
        v150 = 1;
      }

      else
      {
        v150 = v136;
      }

      v151 = v232;
      v152 = [v232 absoluteDimension:{v99 * (v150 - 1) + v139, v182, v183}];
      v153 = [v151 absoluteDimension:v140];
      v154 = [v231 sizeWithWidthDimension:v152 heightDimension:v153];

      sub_100016F40(0, &qword_100952C70);
      v155 = sub_1007701AC().super.isa;

      v156 = [v219 horizontalGroupWithLayoutSize:v154 subitems:v155];

      v157 = [v218 fixedSpacing:v99];
      [v156 setInterItemSpacing:v157];

      v158 = v156;
      sub_10077019C();
      if (*((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v133 = v223 + 1;
      sub_10077025C();

      v134 = v134 + v140 + 10.0;
      v105 = v220;
      if (v133 == v222)
      {
        v159 = v254[0];

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v184)
  {
    if (v104 <= v184)
    {
      v106 = *(v183 + 16);
      v107 = v182 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v231 = *(v183 + 72);
      v108 = (v183 + 8);
      v109 = (v57 + 5);
      v110 = v102;
      v224 = _swiftEmptyArrayStorage;
      do
      {
        v111 = *(v109 - 1);
        v112 = *v109;
        (v106)(v217, v107, v232);
        v113 = ceil(v111);
        if (v102 > v111)
        {
          v114 = v113;
        }

        else
        {
          v114 = v102;
        }

        if (v110 >= v114)
        {
          v117 = v105;
          v118 = v224;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_10049E4A4(0, v105[2] + 1, 1, v105);
          }

          v116 = v105[2];
          v115 = v105[3];
          v117 = v105;
          if (v116 >= v115 >> 1)
          {
            v117 = sub_10049E4A4((v115 > 1), v116 + 1, 1, v105);
          }

          v117[2] = v116 + 1;
          v117[v116 + 4] = v224;
          v110 = v102;
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = (v203 + *(v233 + 48));
        v106();
        *v119 = v114;
        v119[1] = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v118;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = sub_10049E480(0, v118[2] + 1, 1, v118);
        }

        v123 = v121[2];
        v122 = v121[3];
        v224 = v121;
        if (v123 >= v122 >> 1)
        {
          v224 = sub_10049E480(v122 > 1, v123 + 1, 1, v224);
        }

        v124 = v224;
        v224[2] = (v123 + 1);
        sub_100754E54(v203, v124 + ((v234[80] + 32) & ~v234[80]) + *(v234 + 9) * v123);
        if (v104 == 1)
        {

          v125 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_10049E4A4(0, v117[2] + 1, 1, v117);
          }

          v127 = v125[2];
          v126 = v125[3];
          v128 = v125;
          if (v127 >= v126 >> 1)
          {
            v128 = sub_10049E4A4((v126 > 1), v127 + 1, 1, v125);
          }

          (*v108)(v217, v232);
          v128[2] = v127 + 1;
          v105 = v128;
          v128[v127 + 4] = v224;
        }

        else
        {
          (*v108)(v217, v232);
          v105 = v117;
        }

        v110 = v110 - (v99 + v114);
        v107 += v231;
        v109 += 2;
        --v104;
      }

      while (v104);
      goto LABEL_67;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100754E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100754E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959228);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100754EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100754F34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100754F98()
{
  result = qword_1009680F0;
  if (!qword_1009680F0)
  {
    sub_10076295C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009680F0);
  }

  return result;
}

uint64_t sub_100754FF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075EBAC();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v24 - v6;
  v27 = sub_10000A5D4(&unk_1009428E0);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v33 = &v24 - v7;
  v26 = sub_10076B96C();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70);
  v29 = sub_10076FCEC();
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F64C();
  sub_10076FC1C();
  swift_getObjectType();
  sub_10076294C();
  sub_10075EE2C();
  swift_unknownObjectRelease();
  v11 = v10;
  v12 = v27;
  v13 = v28;
  (*(v8 + 8))(v11, v26);
  sub_10076FC1C();
  v14 = sub_10076291C();
  swift_getObjectType();
  sub_10076293C();
  sub_10075ED2C();
  if ((sub_10075EB9C() & 1) == 0 && (sub_10075EB2C() & 1) == 0)
  {
    v18 = v31;
    v17 = v32;
    v21 = v25;
    (*(v31 + 16))(v25, v13, v32);
    if ((*(v18 + 88))(v21, v17) == enum case for LegacyAppState.openable(_:))
    {
      (*(v18 + 96))(v21, v17);

      v22 = sub_100764E5C();
      (*(*(v22 - 8) + 8))(v21, v22);
      v23 = sub_10076290C();
      if (v23)
      {
        v16 = v23;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v18 + 8))(v21, v17);
    }

    v16 = v14;
    goto LABEL_7;
  }

  v15 = sub_1007628FC();
  if (v15)
  {
    v16 = v15;
  }

  else
  {

    v16 = v14;
  }

  v18 = v31;
  v17 = v32;
LABEL_7:
  sub_100563DC4(v16, 1, a2);

  v19 = v29;
  sub_10076FC4C();

  swift_unknownObjectRelease();

  (*(v18 + 8))(v13, v17);
  (*(v30 + 8))(v33, v12);
  return v19;
}

id sub_1007554A4(uint64_t a1, int a2, char a3, char a4)
{
  v5 = v4;
  v48 = a2;
  v9 = sub_10000A5D4(&qword_100956100);
  __chkstk_darwin(v9 - 8);
  v50 = &v47 - v10;
  v11 = sub_10075D99C();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = *&v5[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel];
  v49 = a1;
  if (a3)
  {
    sub_100760FCC();
    if (a4)
    {
      v19 = [v5 traitCollection];
      v20 = sub_1007706FC();

      goto LABEL_7;
    }
  }

  else
  {
    sub_100760FFC();
    v21 = [v5 traitCollection];
    v22 = sub_1003D9E44(v14, 0, v21);

    (*(v12 + 8))(v14, v11);
    v23 = [v5 traitCollection];
    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
    v47 = [v22 length];
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = v23;
    *(v17 + 4) = v24;
    v17[40] = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1000275EC;
    *(v25 + 24) = v17;
    v55 = sub_1000ACB04;
    v56 = v25;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100026610;
    v54 = &unk_1008A3770;
    v26 = _Block_copy(&aBlock);
    v12 = v56;
    v27 = v23;
    v11 = v24;

    [v22 enumerateAttributesInRange:0 options:v47 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = 0;
LABEL_7:
  v28 = [v5 traitCollection];
  v29 = sub_1003D9E44(v17, v20 & 1, v28);

  (*(v12 + 8))(v17, v11);
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v47 = [v29 length];
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  *(v32 + 40) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100027A88;
  *(v33 + 24) = v32;
  v55 = sub_1003BE1CC;
  v56 = v33;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100026610;
  v54 = &unk_1008A37E8;
  v34 = _Block_copy(&aBlock);
  v35 = v30;
  v11 = v31;

  [v29 enumerateAttributesInRange:0 options:v47 usingBlock:{0x100000, v34}];

  _Block_release(v34);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return result;
  }

LABEL_8:
  sub_10073D114(v11);
  v37 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v38 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
  v39 = v48;
  *(v18 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = v48 & 1;
  if (v39)
  {
    v40 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  else
  {
    v40 = 0;
  }

  [*(v18 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:v40];
  if (v38 != *(v18 + v37))
  {
    sub_10073D75C();
  }

  v41 = sub_10076100C();
  v42 = &v5[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle];
  *v42 = v41;
  v42[1] = v43;

  sub_1003D9414();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtwork] = sub_100760FBC();

  sub_1003D9414();

  v44 = v50;
  sub_100760FEC();
  v45 = sub_100760FDC();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100755BBC(v44, &v5[v46]);
  swift_endAccess();
  sub_1003D9414();
  sub_100755C2C(v44);
  return [v5 setNeedsLayout];
}

uint64_t sub_100755BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100755BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956100);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100755C2C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100956100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LinkableHeaderViewLayout.init(metrics:topSeparator:text:bottomSeparator:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a1[7];
  a5[6] = a1[6];
  a5[7] = v8;
  v9 = a1[9];
  a5[8] = a1[8];
  a5[9] = v9;
  v10 = a1[3];
  a5[2] = a1[2];
  a5[3] = v10;
  v11 = a1[5];
  a5[4] = a1[4];
  a5[5] = v11;
  v12 = a1[1];
  *a5 = *a1;
  a5[1] = v12;
  sub_100012498(a2, (a5 + 10));
  sub_100012498(a3, a5 + 200);

  return sub_100012498(a4, (a5 + 15));
}

uint64_t LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v4 + 20, v4[23]);
  sub_10076D2BC();
  v34 = v15;
  v35 = v14;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  MinY = CGRectGetMinY(v38);
  sub_10000CF78(v5 + 20, v5[23]);
  sub_10076D23C();
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  sub_10000CF78(v5, v5[3]);
  sub_1000FF02C();
  sub_10076D40C();
  (*(v11 + 8))(v13, v10);
  v32 = a1;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  CGRectGetHeight(v40);
  sub_10000CF78(v5 + 25, v5[28]);
  sub_10076D2AC();
  v18 = v17;
  v20 = v19;
  *&v31[1] = a2;
  v31[2] = v21;
  v36 = v22;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v23 = a4;
  v41.size.height = a4;
  v24 = CGRectGetMidX(v41) + v18 * -0.5;
  v42.origin.x = MinX;
  v42.size.height = v34;
  v42.origin.y = MinY;
  v42.size.width = v35;
  MaxY = CGRectGetMaxY(v42);
  sub_10000CF78(v5 + 5, v5[8]);
  sub_10076D42C();
  v27 = MaxY + v26;
  sub_10000CF78(v5 + 25, v5[28]);
  sub_10076D23C();
  sub_10000CF78(v5 + 30, v5[33]);
  sub_10076D2BC();
  v34 = v29;
  v35 = v28;
  v43.origin.x = v32;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = v23;
  CGRectGetMinX(v43);
  v44.origin.x = v24;
  v44.origin.y = v27;
  v44.size.width = v18;
  v44.size.height = v20;
  CGRectGetMaxY(v44);
  sub_10000CF78(v5 + 10, v5[13]);
  sub_10076D3FC();
  sub_10000CF78(v5 + 30, v5[33]);
  sub_10076D23C();
  return sub_10076D1BC();
}

double LinkableHeaderViewLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1007561B8(a2, a1, v2);
}

double sub_1007561B8(double a1, uint64_t a2, void *a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a3, a3[3]);
  sub_1000FF02C();
  sub_10076D40C();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000CF78(a3 + 25, a3[28]);
  sub_10076D2AC();
  sub_10062CB50((a3 + 15), v12);
  if (v13)
  {
    sub_10000CF78(v12, v13);
    sub_1000FF02C();
    sub_10076D40C();
    v9(v8, v5);
    sub_10000CD74(v12);
  }

  else
  {
    sub_1000F00E0(v12);
  }

  sub_10000CF78(a3 + 30, a3[33]);
  sub_10076D2BC();
  sub_10000CF78(a3 + 20, a3[23]);
  sub_10076D2BC();
  sub_10000CF78(a3 + 5, a3[8]);
  sub_10076D42C();
  sub_10000CF78(a3 + 10, a3[13]);
  sub_10076D3FC();
  return a1;
}

uint64_t sub_1007564C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100756508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007565B0()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_1009680F8);
  sub_10000A61C(v4, qword_1009680F8);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

id sub_100756704()
{
  v0 = sub_100758D30();

  return v0;
}

uint64_t sub_100756730(uint64_t a1)
{
  v3 = sub_10076FBBC();
  v4 = __chkstk_darwin(v3);
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController);
  (*(v7 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  objc_allocWithZone(sub_100765D7C());
  v8 = v6;
  return sub_100765D8C();
}

void sub_10075681C()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController);
  sub_10000A5D4(&unk_100942870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007841E0;
  *(v6 + 32) = v4;
  sub_100016F40(0, &qword_1009453B0);
  v7 = v4;
  isa = sub_1007701AC().super.isa;

  [v5 setViewControllers:isa];
}

uint64_t sub_100756958(uint64_t a1)
{
  v34 = sub_10076F1BC();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009428E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = sub_10000A5D4(&qword_100968398);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - v9;
  v31[2] = sub_100048158(a1);
  sub_10000A5D4(&qword_10094F420);
  v33 = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100783C60;
  v12 = sub_10076533C();
  v13 = sub_1007652EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = objc_allocWithZone(v12);
  v15 = sub_1007652FC();
  v35 = v15;
  sub_10076F1AC();

  v16 = [objc_allocWithZone(type metadata accessor for AppEventLiveIndicatorAnimationCoordinator()) init];
  v35 = v16;
  sub_10076F1AC();

  v17 = v31[1];
  sub_100756DD8();
  sub_10076F1AC();
  (*(v5 + 8))(v7, v4);
  v18 = v17;
  v35 = v11;
  sub_10000A5D4(&qword_100943F98);
  sub_100071820(&qword_100943FA0, &qword_100943F98);
  v19 = sub_10076F61C();

  v20 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_adAttributionManager);
  if (v20)
  {
    sub_1007654EC();
    v35 = v20;

    v21 = v32;
    sub_10076F1AC();
    v22 = sub_10076F60C();

    v24 = v33;
    v23 = v34;
    (*(v33 + 8))(v21, v34);
    v19 = v22;
  }

  else
  {
    v24 = v33;
    v23 = v34;
    v21 = v32;
  }

  v25 = v18 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_bannerVisibilityDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = *(v25 + 8);
    sub_10000A5D4(&qword_100965B10);
    v35 = v27;
    v36 = v28;
    sub_10076F1AC();
    v29 = sub_10076F60C();

    swift_unknownObjectRelease();
    (*(v24 + 8))(v21, v23);
    return v29;
  }

  return v19;
}

uint64_t sub_100756DD8()
{
  v1 = sub_10000A5D4(&qword_1009683A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  sub_10076F64C();
  sub_10076F6DC();
  sub_10000A5D4(&unk_1009428E0);
  sub_10075A674();
  sub_10076F6BC();
  sub_10075A6C8();
  sub_10076F6BC();
  sub_10075A71C();
  sub_10076F6BC();
  sub_10075A770();
  sub_10076F6BC();
  sub_10075A7C4();
  sub_10076F6BC();
  sub_10076AF2C();
  sub_100071820(&qword_1009683D0, &qword_1009683A0);
  sub_10076F6BC();
  (*(v2 + 8))(v4, v1);
  sub_10075A818();
  sub_10076F6BC();
  sub_10075A86C();
  sub_10076F6BC();
  sub_10075A8C0();
  sub_10076F6BC();
  sub_10075A914();
  sub_10076F6BC();
  sub_10075A968();
  sub_10076F6BC();
  sub_10075A9BC();
  sub_10076F6BC();
  sub_10075AA10();
  sub_10076F6BC();
  sub_10075AA64();
  sub_10076F6BC();
  sub_10075AAB8();
  sub_10076F6BC();
  sub_100444F78();
  sub_10076F6BC();
  sub_100758D30();
  swift_unknownObjectUnownedInit();
  sub_10075AB0C();
  sub_10076F6BC();
  sub_10075AB60(&v15);
  sub_100758D30();
  sub_10000A5D4(&qword_100968428);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100785C70;
  *(v5 + 56) = &type metadata for ArticlePresentingFlowActionLogic;
  *(v5 + 64) = &off_100885A70;
  *(v5 + 96) = &type metadata for ArcadeWelcomeFlowActionLogic;
  *(v5 + 104) = &off_1008A23A0;
  *(v5 + 136) = &type metadata for NavigationControllerFlowActionLogic;
  *(v5 + 144) = &off_10088BBC0;
  *(v5 + 176) = &type metadata for TabBarControllerFlowActionLogic;
  *(v5 + 184) = &off_10088E588;
  *(v5 + 216) = &type metadata for RootFlowActionLogic;
  *(v5 + 224) = &off_100889D28;
  type metadata accessor for FlowActionImplementation();
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v6 + 24) = v5;
  v15 = v6;
  sub_10075ABB4();
  sub_10076F6BC();

  sub_100758D30();
  swift_unknownObjectUnownedInit();
  sub_10075AC0C();
  sub_10076F6BC();
  sub_10075AC60(&v15);
  sub_10075ACB4();
  sub_10076F6BC();
  sub_10075AD08();
  sub_10076F6BC();
  sub_10075AD5C();
  sub_10076F6BC();
  sub_10075ADB0();
  sub_10076F6BC();
  sub_10075AE04();
  sub_10076F6BC();
  sub_100758D30();
  swift_unknownObjectUnownedInit();
  sub_10075AE58();
  sub_10076F6BC();
  sub_10075AEAC(&v15);
  sub_10075AF00();
  sub_10076F6BC();
  sub_10075AF54();
  sub_10076F6BC();
  sub_10075AFA8();
  sub_10076F6BC();
  sub_10075AFFC();
  sub_10076F6BC();
  sub_10075B050();
  sub_10076F6BC();
  sub_10075B0A4();
  sub_10076F6BC();
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_ppeInteractionObserver;
  swift_unknownObjectWeakLoadStrong();
  v8 = *(v7 + 8);
  v16 = 0;
  swift_unknownObjectWeakInit();
  v16 = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_10075B0F8();
  sub_10076F6BC();
  sub_10075B14C(&v15);
  sub_10075B1A0();
  sub_10076F6BC();
  swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  v16 = 0;
  swift_unknownObjectWeakInit();
  v16 = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_10075B1F4();
  sub_10076F6BC();
  sub_10075B248(&v15);
  sub_10075B29C();
  sub_10076F6BC();
  sub_10075B2F0();
  sub_10076F6BC();
  sub_10075B344();
  sub_10076F6BC();
  sub_10075B398();
  sub_10076F6BC();
  sub_100640BBC();
  sub_10076F6BC();
  sub_100758D30();
  swift_unknownObjectUnownedInit();
  sub_10075B3EC();
  sub_10076F6BC();
  sub_10075B440(&v15);
  sub_10075B494();
  sub_10076F6BC();
  sub_10075B4E8();
  sub_10076F6BC();
  sub_10075B53C();
  sub_10076F6BC();
  sub_100758D30();
  swift_unknownObjectUnownedInit();
  sub_10075B590();
  sub_10076F6BC();
  sub_10075B5E4(&v15);
  v10 = sub_100758D30();
  v11 = objc_allocWithZone(type metadata accessor for SignInActionImplementation.SignInDelegate());
  v12 = v10;
  v16 = [v11 init];
  swift_unknownObjectUnownedInit();

  sub_10075B638();
  sub_10076F6BC();
  sub_10075B68C(&v15);
  sub_10075B6E0();
  sub_10076F6BC();
  sub_10075B734();
  sub_10076F6BC();
  sub_10075B788();
  sub_10076F6BC();
  sub_10075B7DC();
  sub_10076F6BC();
  sub_100758D30();
  swift_unknownObjectUnownedInit();
  sub_10075B830();
  sub_10076F6BC();
  sub_10075B884(&v15);
  swift_unknownObjectWeakLoadStrong();
  v13 = *(v7 + 8);
  v16 = 0;
  swift_unknownObjectWeakInit();
  v16 = v13;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_10075B8D8();
  sub_10076F6BC();
  return sub_10075B92C(&v15);
}

void sub_1007576D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = sub_10076162C();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100968398);
  __chkstk_darwin(v8 - 8);
  v10 = (&v27 - v9);
  v11 = sub_10076880C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v15 = v32;
  *v14 = 1;
  (*(v12 + 104))(v14, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v11);
  v31 = v15;
  sub_100767E7C();

  (*(v12 + 8))(v14, v11);
  type metadata accessor for AdHeaderProvider();
  sub_10076F63C();
  v30 = v32;
  sub_100016F40(0, &unk_10095D650);
  sub_10076FC1C();
  v16 = v32;
  sub_10076533C();
  sub_10076FC1C();
  v17 = v32;
  v18 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController);
  *v10 = v18;
  v19 = enum case for URLProtocolDelegate.DialogStyle.alert(_:);
  v20 = sub_1007652EC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v10, v19, v20);
  (*(v21 + 56))(v10, 0, 1, v20);
  v22 = v18;
  sub_10076530C();
  [v16 setDelegate:v17];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100747388(v22, v27, a1);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v26 = v28;
    v25 = v29;
    (*(v28 + 104))(v7, enum case for BootstrapPhase.initialBootstrap(_:), v29);
    sub_100769DBC();
    (*(v26 + 8))(v7, v25);
    if (*&v24[OBJC_IVAR___RootViewController_freshnessWatchdog])
    {

      sub_100764C7C();
    }

    [v24 loadDidFinish];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100757B04@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v58 = a2;
  v57 = sub_10075D7DC();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = v46 - v6;
  v7 = sub_10000A5D4(&qword_100958C40);
  __chkstk_darwin(v7 - 8);
  v9 = v46 - v8;
  v10 = sub_10075D86C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v13 - 8);
  v15 = v46 - v14;
  v16 = sub_10075DB7C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100758508(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &unk_1009435D0;
    v21 = v15;
LABEL_5:
    sub_10000CFBC(v21, v20);
    return (*(v17 + 56))(v58, 1, 1, v16);
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_10075D80C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v20 = &qword_100958C40;
    v21 = v9;
    goto LABEL_5;
  }

  v46[0] = v17;
  v47 = v19;
  v49 = v16;
  v51 = v4;
  v48 = v11;
  v23 = *(v11 + 32);
  v50 = v10;
  v23(v55, v9, v10);
  sub_10076148C();
  sub_10076F5CC();
  v46[1] = v63[0];
  v24 = sub_10076136C();
  v25 = sub_1007591E0(*(v2 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_parameters), v24);

  v26 = v25 + 8;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25[8];
  v30 = (v27 + 63) >> 6;
  v52 = v59 + 32;
  v56 = v25;

  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
  v54 = v30;
  while (v29)
  {
LABEL_16:
    v34 = __clz(__rbit64(v29)) | (v31 << 6);
    v35 = (v56[6] + 16 * v34);
    v37 = *v35;
    v36 = v35[1];
    sub_10000CD08(v56[7] + 32 * v34, &v64);
    v63[0] = v37;
    v63[1] = v36;
    sub_100016E2C(v63, &v62, &qword_10094A670);

    if (swift_dynamicCast())
    {
      sub_10075D7CC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10049DE1C(0, v32[2] + 1, 1, v32);
      }

      v39 = v32[2];
      v38 = v32[3];
      v30 = v54;
      if (v39 >= v38 >> 1)
      {
        v32 = sub_10049DE1C(v38 > 1, v39 + 1, 1, v32);
      }

      v32[2] = v39 + 1;
      (*(v59 + 32))(v32 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v39, v60, v57);
    }

    else
    {
      v53 = v32;
      sub_100016E2C(v63, &v62, &qword_10094A670);

      if (swift_dynamicCast())
      {
        v62 = v61;
        sub_10077163C();
        sub_10075D7CC();

        v40 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v40;
        v30 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_10049DE1C(0, v40[2] + 1, 1, v40);
        }

        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_10049DE1C(v43 > 1, v44 + 1, 1, v42);
        }

        v42[2] = v44 + 1;
        (*(v59 + 32))(v42 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v44, v51, v57);
        v32 = v42;
      }

      else
      {
        v32 = v53;

        v30 = v54;
      }
    }

    v29 &= v29 - 1;
    result = sub_10000CFBC(v63, &qword_10094A670);
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {

      v45 = v55;
      sub_10075D7FC();
      sub_10075D81C();

      (*(v48 + 8))(v45, v50);
      return (*(v46[0] + 8))(v47, v49);
    }

    v29 = v26[v33];
    ++v31;
    if (v29)
    {
      v31 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_100758334()
{
  v1 = v0;
  v2 = sub_10076DF1C();
  __chkstk_darwin(v2 - 8);
  sub_10076DF0C();
  v3 = objc_allocWithZone(sub_10076DF3C());

  swift_errorRetain();
  v4 = sub_10076DF2C();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController);
  sub_10000A5D4(&unk_100942870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007841E0;
  *(v6 + 32) = v4;
  sub_100016F40(0, &qword_1009453B0);
  v7 = v4;
  isa = sub_1007701AC().super.isa;

  [v5 setViewControllers:isa];
}

uint64_t sub_100758494()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap____lazy_storage___isItemArticle;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap____lazy_storage___isItemArticle);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_10068A12C(*(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_parameters), *(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_entitlementHelper));
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_100758508@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  if (sub_100758494())
  {
    return sub_10068A2F4(a1);
  }

  v7 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_lookupItem) productPageURL];
  if (v7)
  {
    v8 = v7;
    sub_10075DB3C();

    v9 = sub_10075DB7C();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v10 = sub_10075DB7C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  return sub_100050DA4(v5, a1);
}

uint64_t sub_10075864C()
{

  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_askToBuy, &qword_100963670);
  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_delegate);
  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_ppeInteractionObserver);

  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_bannerVisibilityDelegate;

  return sub_10000CC8C(v1);
}

uint64_t sub_10075870C()
{
  sub_10000CC8C(v0 + 16);
  v1 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_logger;
  v2 = sub_10076F59C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_askToBuy, &qword_100963670);
  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_delegate);
  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_ppeInteractionObserver);

  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_bannerVisibilityDelegate);
  return v0;
}

uint64_t sub_100758858()
{
  sub_10075870C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductPageBootstrap()
{
  result = qword_100968188;
  if (!qword_100968188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100758904()
{
  sub_1007589E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007589E0()
{
  if (!qword_100968198)
  {
    sub_10076C0FC();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100968198);
    }
  }
}

unint64_t *sub_100758A44(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100758FF8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100758AE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000A5D4(&qword_100948BC8);
  result = sub_1007715DC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_10000CD08(v17 + 32 * v16, v33);
    sub_10000CD64(v33, v32);
    sub_10077175C();

    sub_10077008C();
    result = sub_1007717AC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_10000CD64(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100758D30()
{
  v1 = v0;
  v2 = sub_1007614EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DE4C();
  __chkstk_darwin(v6 - 8);
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) = 1;
    sub_10076DE3C();
    v7 = objc_allocWithZone(sub_10076DE6C());
    v8 = sub_10076DE5C();
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController);
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    *(v10 + 32) = v8;
    sub_100016F40(0, &qword_1009453B0);
    v11 = v8;
    isa = sub_1007701AC().super.isa;

    [v9 setViewControllers:isa];

    sub_100045B74(v5);
    sub_1007614DC();
    v13 = sub_100016F40(0, &qword_1009471F0);
    swift_retain_n();
    v14 = sub_10077068C();
    v17[3] = v13;
    v17[4] = &protocol witness table for OS_dispatch_queue;
    v17[0] = v14;
    sub_10076FC6C();

    sub_10000CD74(v17);
    sub_10075EABC();
    sub_10075EAAC();
    (*(v3 + 8))(v5, v2);
  }

  return *(v1 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController);
}

unint64_t *sub_100758FF8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v28 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v28 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_10000CD08(*(v28 + 56) + 32 * v13, v27);
    v25[0] = v15;
    v25[1] = v16;
    v17 = sub_10000CD08(v27, &v26);
    v24[0] = v15;
    v24[1] = v16;
    __chkstk_darwin(v17);
    v19[2] = v24;
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1001A3D8C(sub_100533F84, v19, v23);
    sub_10000CFBC(v25, &qword_10094A670);
    sub_10000CD74(v27);

    if (v15)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100758AE0(v21, v20, v22, v28);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100758AE0(v21, v20, v22, v28);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1007591E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_100758A44(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100758FF8((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1007593A0(unint64_t *a1, int a2)
{
  v141 = a2;
  v4 = sub_10076FD4C();
  v146 = *(v4 - 8);
  v147 = v4;
  __chkstk_darwin(v4);
  v144 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v120 = v109 - v7;
  v119 = sub_10076F68C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v9 - 8);
  v139 = v109 - v10;
  v11 = type metadata accessor for FlowDestination();
  v137 = *(v11 - 8);
  v138 = v11;
  __chkstk_darwin(v11);
  v140 = (v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_10075F65C();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v135 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100765F6C();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v133 = v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100766EDC();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v131 = v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076F4FC();
  __chkstk_darwin(v16 - 8);
  v128 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v18 - 8);
  v136 = v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = v109 - v21;
  v123 = sub_10076C15C();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&qword_100963670);
  __chkstk_darwin(v23 - 8);
  v121 = v109 - v24;
  v25 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v25 - 8);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v109 - v29;
  __chkstk_darwin(v31);
  v115 = v109 - v32;
  __chkstk_darwin(v33);
  v116 = v109 - v34;
  __chkstk_darwin(v35);
  v37 = v109 - v36;
  __chkstk_darwin(v38);
  v40 = v109 - v39;
  v41 = sub_10075DB7C();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = v109 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v46 = a1;
  v47 = v2;
  sub_100757B04(v46, v40);
  v142 = v42[6];
  v143 = v42 + 6;
  v48 = v142(v40, 1, v41);
  v145 = v42;
  if (v48 == 1)
  {
    v49 = v41;
    sub_10000CFBC(v40, &unk_1009435D0);
    if (qword_1009415F0 != -1)
    {
      swift_once();
    }

    v50 = v147;
    v51 = sub_10000A61C(v147, qword_1009680F8);
    v52 = v146;
    (*(v146 + 16))(v144, v51, v50);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v53 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_lookupItem) productPageURL];
    v54 = v49;
    v55 = v145;
    if (v53)
    {
      v56 = v53;
      sub_10075DB3C();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    (v55[7])(v27, v57, 1, v54);
    sub_100050DA4(v27, v30);
    if (v142(v30, 1, v54) == 1)
    {
      sub_10000CFBC(v30, &unk_1009435D0);
      v149 = 0u;
      v150 = 0u;
    }

    else
    {
      *(&v150 + 1) = v54;
      v97 = sub_10000DB7C(&v149);
      (v55[4])(v97, v30, v54);
    }

    sub_10076F30C();
    sub_10000CFBC(&v149, &unk_1009434C0);
    v98 = v144;
    sub_10076FBEC();

    return (*(v52 + 8))(v98, v50);
  }

  else
  {
    v58 = v42[4];
    v109[1] = v42 + 4;
    v109[0] = v58;
    v58(v44, v40, v41);
    sub_10076148C();
    v144 = v45;
    sub_10076F5CC();
    v114 = v149;
    v59 = sub_10076135C();
    sub_10076018C();
    v60 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_lookupItem);
    v61 = v121;
    sub_100016E2C(v2 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_askToBuy, v121, &qword_100963670);
    v112 = v60;
    v62 = ProductPage.init(lookupItem:askToBuy:enablePrerenderedIconArtwork:)(v112, v61, v59 & 1);
    v63 = sub_10076629C();

    v121 = v62;
    v64 = sub_10076627C();
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v113 = v47;
    v65 = sub_100758494();
    v66 = &enum case for FlowPage.article(_:);
    if ((v65 & 1) == 0)
    {
      v66 = &enum case for FlowPage.product(_:);
    }

    (*(v122 + 13))(v124, *v66, v123);
    v67 = v42[2];
    v122 = v44;
    v67(v37, v44, v41);
    v68 = v42[7];
    v123 = v41;
    v111 = v42 + 7;
    v110 = v68;
    v68(v37, 0, 1, v41);
    v69 = sub_10076096C();
    (*(*(v69 - 8) + 56))(v125, 1, 1, v69);
    if (!v64)
    {
      v63 = 0;
      v148[1] = 0;
      v148[2] = 0;
    }

    v70 = v138;
    v148[0] = v64;
    v148[3] = v63;
    v138 = v64;

    sub_10076F4DC();
    (*(v126 + 104))(v131, enum case for FlowPresentationContext.infer(_:), v127);
    (*(v129 + 104))(v133, enum case for FlowAnimationBehavior.infer(_:), v130);
    (*(v132 + 104))(v135, enum case for FlowOrigin.inapp(_:), v134);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v71 = sub_10075F5EC();
    v72 = v113;
    v73 = [sub_100758D30() traitCollection];
    v151 = 0;
    v149 = 0u;
    v150 = 0u;

    sub_10076B87C();
    v74 = v139;
    sub_10012062C(v71, v148, v139);
    v75 = *(v137 + 48);
    if (v75(v74, 1, v70) == 1)
    {
      v76 = v140;
      swift_storeEnumTagMultiPayload();
      v77 = v75(v74, 1, v70);
      v79 = v146;
      v78 = v147;
      v80 = v76;
      if (v77 != 1)
      {
        sub_10000CFBC(v74, &unk_10094A890);
      }
    }

    else
    {
      v80 = v140;
      sub_10005DAD8(v74, v140);
      v79 = v146;
      v78 = v147;
    }

    v81 = sub_10075F57C();
    v83 = v82;
    v84 = v136;
    sub_10075F59C();
    v85 = sub_10048B0C0(v80, v73, v81, v83, v84, &v149, v144, v141 & 1);

    sub_10000CFBC(v84, &unk_100958150);
    sub_10005C6E8(v80);
    sub_10000CFBC(&v149, &unk_10094A8A0);
    if (v85)
    {
      v86 = *(v72 + OBJC_IVAR____TtC20ProductPageExtension20ProductPageBootstrap_navigationController);
      sub_10000A5D4(&unk_100942870);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1007841E0;
      *(v87 + 32) = v85;
      sub_100016F40(0, &qword_1009453B0);
      v88 = v85;
      isa = sub_1007701AC().super.isa;

      v90 = v86;
      v91 = v144;
      [v90 setViewControllers:isa];

      Strong = swift_unknownObjectWeakLoadStrong();
      v93 = v122;
      if (Strong)
      {
        sub_100747680(v91, v88, v122);
        swift_unknownObjectRelease();
      }

      sub_10076F64C();
      v94 = v117;
      v95 = v119;
      sub_10076FC1C();
      sub_1007612FC();
      sub_10075EC5C();

      (*(v118 + 8))(v94, v95);
      return (v145[1])(v93, v123);
    }

    else
    {
      if (qword_1009415F0 != -1)
      {
        swift_once();
      }

      v99 = sub_10000A61C(v78, qword_1009680F8);
      (*(v79 + 16))(v120, v99, v78);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      v100 = [v112 productPageURL];
      v101 = v116;
      v102 = v115;
      if (v100)
      {
        v103 = v100;
        sub_10075DB3C();

        v104 = 0;
      }

      else
      {
        v104 = 1;
      }

      v105 = v123;
      v110(v102, v104, 1, v123);
      sub_100050DA4(v102, v101);
      if (v142(v101, 1, v105) == 1)
      {
        sub_10000CFBC(v101, &unk_1009435D0);
        v149 = 0u;
        v150 = 0u;
      }

      else
      {
        *(&v150 + 1) = v105;
        v106 = sub_10000DB7C(&v149);
        (v109[0])(v106, v101, v105);
      }

      v107 = v145;
      sub_10076F30C();
      sub_10000CFBC(&v149, &unk_1009434C0);
      v108 = v120;
      sub_10076FBEC();

      (*(v79 + 8))(v108, v78);
      return (v107[1])(v122, v105);
    }
  }
}

unint64_t sub_10075A674()
{
  result = qword_1009683A8;
  if (!qword_1009683A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683A8);
  }

  return result;
}

unint64_t sub_10075A6C8()
{
  result = qword_1009683B0;
  if (!qword_1009683B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683B0);
  }

  return result;
}

unint64_t sub_10075A71C()
{
  result = qword_1009683B8;
  if (!qword_1009683B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683B8);
  }

  return result;
}

unint64_t sub_10075A770()
{
  result = qword_1009683C0;
  if (!qword_1009683C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683C0);
  }

  return result;
}

unint64_t sub_10075A7C4()
{
  result = qword_1009683C8;
  if (!qword_1009683C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683C8);
  }

  return result;
}

unint64_t sub_10075A818()
{
  result = qword_1009683D8;
  if (!qword_1009683D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683D8);
  }

  return result;
}

unint64_t sub_10075A86C()
{
  result = qword_1009683E0;
  if (!qword_1009683E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683E0);
  }

  return result;
}

unint64_t sub_10075A8C0()
{
  result = qword_1009683E8;
  if (!qword_1009683E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683E8);
  }

  return result;
}

unint64_t sub_10075A914()
{
  result = qword_1009683F0;
  if (!qword_1009683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683F0);
  }

  return result;
}

unint64_t sub_10075A968()
{
  result = qword_1009683F8;
  if (!qword_1009683F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009683F8);
  }

  return result;
}

unint64_t sub_10075A9BC()
{
  result = qword_100968400;
  if (!qword_100968400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968400);
  }

  return result;
}

unint64_t sub_10075AA10()
{
  result = qword_100968408;
  if (!qword_100968408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968408);
  }

  return result;
}

unint64_t sub_10075AA64()
{
  result = qword_100968410;
  if (!qword_100968410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968410);
  }

  return result;
}

unint64_t sub_10075AAB8()
{
  result = qword_100968418;
  if (!qword_100968418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968418);
  }

  return result;
}

unint64_t sub_10075AB0C()
{
  result = qword_100968420;
  if (!qword_100968420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968420);
  }

  return result;
}

unint64_t sub_10075ABB4()
{
  result = qword_100968430;
  if (!qword_100968430)
  {
    type metadata accessor for FlowActionImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968430);
  }

  return result;
}

unint64_t sub_10075AC0C()
{
  result = qword_100968438;
  if (!qword_100968438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968438);
  }

  return result;
}

unint64_t sub_10075ACB4()
{
  result = qword_100968440;
  if (!qword_100968440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968440);
  }

  return result;
}

unint64_t sub_10075AD08()
{
  result = qword_100968448;
  if (!qword_100968448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968448);
  }

  return result;
}

unint64_t sub_10075AD5C()
{
  result = qword_100968450;
  if (!qword_100968450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968450);
  }

  return result;
}

unint64_t sub_10075ADB0()
{
  result = qword_100968458;
  if (!qword_100968458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968458);
  }

  return result;
}

unint64_t sub_10075AE04()
{
  result = qword_100968460;
  if (!qword_100968460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968460);
  }

  return result;
}

unint64_t sub_10075AE58()
{
  result = qword_100968468;
  if (!qword_100968468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968468);
  }

  return result;
}

unint64_t sub_10075AF00()
{
  result = qword_100968470;
  if (!qword_100968470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968470);
  }

  return result;
}

unint64_t sub_10075AF54()
{
  result = qword_100968478;
  if (!qword_100968478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968478);
  }

  return result;
}

unint64_t sub_10075AFA8()
{
  result = qword_100968480;
  if (!qword_100968480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968480);
  }

  return result;
}

unint64_t sub_10075AFFC()
{
  result = qword_100968488;
  if (!qword_100968488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968488);
  }

  return result;
}

unint64_t sub_10075B050()
{
  result = qword_100968490;
  if (!qword_100968490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968490);
  }

  return result;
}

unint64_t sub_10075B0A4()
{
  result = qword_100968498;
  if (!qword_100968498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968498);
  }

  return result;
}

unint64_t sub_10075B0F8()
{
  result = qword_1009684A0;
  if (!qword_1009684A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684A0);
  }

  return result;
}

unint64_t sub_10075B1A0()
{
  result = qword_1009684A8;
  if (!qword_1009684A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684A8);
  }

  return result;
}

unint64_t sub_10075B1F4()
{
  result = qword_1009684B0;
  if (!qword_1009684B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684B0);
  }

  return result;
}

unint64_t sub_10075B29C()
{
  result = qword_1009684B8;
  if (!qword_1009684B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684B8);
  }

  return result;
}

unint64_t sub_10075B2F0()
{
  result = qword_1009684C0;
  if (!qword_1009684C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684C0);
  }

  return result;
}

unint64_t sub_10075B344()
{
  result = qword_1009684C8;
  if (!qword_1009684C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684C8);
  }

  return result;
}

unint64_t sub_10075B398()
{
  result = qword_1009684D0;
  if (!qword_1009684D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684D0);
  }

  return result;
}

unint64_t sub_10075B3EC()
{
  result = qword_1009684D8;
  if (!qword_1009684D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684D8);
  }

  return result;
}

unint64_t sub_10075B494()
{
  result = qword_1009684E0;
  if (!qword_1009684E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684E0);
  }

  return result;
}

unint64_t sub_10075B4E8()
{
  result = qword_1009684E8;
  if (!qword_1009684E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684E8);
  }

  return result;
}

unint64_t sub_10075B53C()
{
  result = qword_1009684F0;
  if (!qword_1009684F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684F0);
  }

  return result;
}

unint64_t sub_10075B590()
{
  result = qword_1009684F8;
  if (!qword_1009684F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009684F8);
  }

  return result;
}

unint64_t sub_10075B638()
{
  result = qword_100968500;
  if (!qword_100968500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968500);
  }

  return result;
}

unint64_t sub_10075B6E0()
{
  result = qword_100968508;
  if (!qword_100968508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968508);
  }

  return result;
}

unint64_t sub_10075B734()
{
  result = qword_100968510;
  if (!qword_100968510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968510);
  }

  return result;
}

unint64_t sub_10075B788()
{
  result = qword_100968518;
  if (!qword_100968518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968518);
  }

  return result;
}

unint64_t sub_10075B7DC()
{
  result = qword_100968520;
  if (!qword_100968520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968520);
  }

  return result;
}

unint64_t sub_10075B830()
{
  result = qword_100968528;
  if (!qword_100968528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968528);
  }

  return result;
}

unint64_t sub_10075B8D8()
{
  result = qword_100968530;
  if (!qword_100968530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100968530);
  }

  return result;
}

double sub_10075B9CC()
{
  v1 = sub_10076C38C();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100956718);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_10000A5D4(&unk_100956700);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = sub_10075F51C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075BD98(&unk_100957B20, &type metadata accessor for Annotation);
  sub_10076332C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10039C818(v9);
    return 0.0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100166C0C();
    sub_10076335C();
    sub_10076FD8C();
    v19[1] = v0;
    if (v23)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_10075F4DC();
    }

    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v20 + 8))(v3, v21);
    v16 = sub_100630CB4();
    swift_getObjectType();
    sub_10031CFDC(v13, v15 & 1, v16);
    v14 = v17;
    swift_unknownObjectRelease();
    (*(v22 + 8))(v6, v4);
    (*(v11 + 8))(v13, v10);
  }

  return v14;
}

uint64_t sub_10075BD98(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10075BF34()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()
{
  result = qword_100968568;
  if (!qword_100968568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10075C0DC()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  objc_msgSendSuper2(&v7, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 panGestureRecognizer];

    [v6 addTarget:v0 action:"panGestureRecognizedBy:"];
  }
}

void sub_10075C2E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - v11;
  v13 = sub_10075E11C();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v4 collectionView];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v19 bounds];
  v20 = [v4 layoutAttributesForElementsInRect:?];
  if (!v20 || ((v21 = v20, sub_1000DE4D0(), v22 = sub_1007701BC(), v21, v22 >> 62) ? (v23 = sub_10077158C()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v23))
  {

LABEL_14:
    v36 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
    v78.receiver = v5;
    v78.super_class = v36;
    objc_msgSendSuper2(&v78, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v24 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  v77.receiver = v5;
  v77.super_class = v24;
  objc_msgSendSuper2(&v77, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  v26 = v25;
  v27 = [v19 numberOfItemsInSection:0];
  v28 = v27 - 1;
  if (v27 < 1)
  {
    goto LABEL_23;
  }

  v74[1] = v26;
  [v19 frame];
  v30 = v29 + a1;
  [v5 collectionViewContentSize];
  if (v30 >= v31)
  {
    goto LABEL_23;
  }

  v32 = [v19 traitCollection];
  v33 = sub_10077070C();

  v76 = v33;
  if (v33)
  {
    v34 = v28;
  }

  else
  {
    v34 = 0;
  }

  if (a1 > 0.0)
  {
    v35 = 0.0;
    v75 = xmmword_100784500;
    do
    {
      sub_10000A5D4(&qword_100952110);
      v38 = swift_allocObject();
      *(v38 + 16) = v75;
      *(v38 + 32) = 0;
      *(v38 + 40) = v34;
      sub_10075E01C();
      isa = sub_10075E02C().super.isa;
      (*(v14 + 8))(v17, v13);
      v40 = [v5 layoutAttributesForItemAtIndexPath:isa];

      if (!v40)
      {
        goto LABEL_23;
      }

      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v79.origin.x = v42;
      v79.origin.y = v44;
      v79.size.width = v46;
      v79.size.height = v48;
      Width = CGRectGetWidth(v79);
      if (v35 + Width * 0.5 >= a1)
      {
        break;
      }

      [v5 minimumLineSpacing];
      if (v76)
      {
        v37 = __OFSUB__(v34--, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v37 = __OFADD__(v34++, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v35 = v35 + Width + v50;
    }

    while (v35 < a1);
  }

  v51 = OBJC_IVAR____TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  swift_beginAccess();
  sub_1000DE51C(v5 + v51, v12);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    sub_10043AEE0(v12);
    v52 = &selRef_initWithTabBarSystemItem_tag_;
    goto LABEL_40;
  }

  v53 = sub_10075E09C();
  sub_10043AEE0(v12);
  v52 = &selRef_initWithTabBarSystemItem_tag_;
  if (v34 != v53)
  {
    goto LABEL_40;
  }

  if (!((a3 >= 0.0) | v76 & 1))
  {
LABEL_31:
    if (!__OFSUB__(v34, 1))
    {
      v34 = (v34 - 1) & ~((v34 - 1) >> 63);
      goto LABEL_40;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a3 <= 0.0)
  {
    if (a3 < 0.0 && ((v76 ^ 1) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    sub_10000A5D4(&qword_100952110);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100784500;
    *(v55 + 32) = 0;
    *(v55 + 40) = v34;
    sub_10075E01C();
    v56 = sub_10075E02C().super.isa;
    (*(v14 + 8))(v17, v13);
    v57 = [v5 layoutAttributesForItemAtIndexPath:v56];

    if (v57)
    {
      [v57 frame];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      [v19 v52[105]];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v80.origin.x = v67;
      v80.origin.y = v69;
      v80.size.width = v71;
      v80.size.height = v73;
      CGRectGetWidth(v80);
      v81.origin.x = v59;
      v81.origin.y = v61;
      v81.size.width = v63;
      v81.size.height = v65;
      CGRectGetWidth(v81);

      return;
    }

LABEL_23:

    return;
  }

  if (v76)
  {
    goto LABEL_31;
  }

LABEL_35:
  v54 = [v19 numberOfItemsInSection:0];
  if (__OFSUB__(v54, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!__OFADD__(v34, 1))
  {
    if (v34 + 1 >= v54 - 1)
    {
      v34 = v54 - 1;
    }

    else
    {
      ++v34;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

id sub_10075C98C(void *a1)
{
  v3 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v30 - v8;
  result = [a1 state];
  if (result == 1)
  {
    v11 = [v1 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 collectionView];
      if (v13)
      {
        v14 = v13;
        [v14 bounds];
        MidX = CGRectGetMidX(v31);
        [v14 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v32.origin.x = v17;
        v32.origin.y = v19;
        v32.size.width = v21;
        v32.size.height = v23;
        MidY = CGRectGetMidY(v32);
      }

      else
      {
        MidX = 0.0;
        MidY = 0.0;
      }

      v26 = [v12 indexPathForItemAtPoint:{MidX, MidY}];

      if (v26)
      {
        sub_10075E06C();

        v27 = sub_10075E11C();
        (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
      }

      else
      {
        v28 = sub_10075E11C();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      }

      sub_10021559C(v5, v9);
    }

    else
    {
      v25 = sub_10075E11C();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    }

    v29 = OBJC_IVAR____TtC20ProductPageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
    swift_beginAccess();
    sub_10021560C(v9, v1 + v29);
    return swift_endAccess();
  }

  return result;
}

double sub_10075CC94(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1007601DC();
  v10 = sub_1007601CC();
  v11 = sub_1003782D0(v9, v10, a7, 0.0, 0.0, a1);

  return v11;
}

uint64_t sub_10075CDBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10075CE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_10076D39C();
  v11 = *(v74 - 8);
  __chkstk_darwin(v74);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v68 - v14;
  v15 = sub_1007601CC();
  v86 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform] = v15;

  v16 = *&v5[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_flowLayout];
  ObjectType = swift_getObjectType();
  [a5 pageMarginInsets];
  [v16 setSectionInset:?];
  v17 = [a5 snapshotPageTraitEnvironment];
  v82 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits] = v17;
  swift_unknownObjectRelease();
  v18 = sub_1007601DC();
  v19 = *&v5[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork];
  v71 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork] = v18;

  v21 = sub_1000CCE04(v20, v19);

  p_vtable = &OBJC_METACLASS____TtC20ProductPageExtension47SmallStoryCardShelfComponentTypeMappingProvider.vtable;
  v23 = &off_100911000;
  if ((v21 & 1) == 0)
  {
    [*&v5[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView] reloadData];
  }

  v24 = sub_1007601DC();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_58;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v27 = v74;
  v28 = v83;
  if (v26)
  {
    v78 = v26;
    v29 = 0;
    v79 = sub_1007601EC();
    v80 = v25 & 0xC000000000000001;
    v73 = v25 & 0xFFFFFFFFFFFFFF8;
    v75 = v25;
    v72 = v25 + 32;
    v76 = (v11 + 2);
    v77 = (v11 + 1);
    v11 = _swiftEmptyArrayStorage;
    v69 = a5;
    v68 = v10;
    v70 = v6;
    while (1)
    {
      if (v80)
      {
        v23 = sub_10077149C();
        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v29 >= *(v73 + 16))
        {
          goto LABEL_57;
        }

        v23 = *(v72 + 8 * v29);

        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      sub_10076BEFC();
      sub_10076D3AC();
      v25 = *&v6[v86];
      v84 = v23;
      if (v25)
      {

        v31 = sub_100760E4C();

        if (v31)
        {
          v32 = *&v6[v71];
          v6 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v32 >> 62)
          {
            p_vtable = sub_10077158C();
          }

          else
          {
            p_vtable = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = (v32 & 0xC000000000000001);

          v33 = 0;
          while (1)
          {
            v23 = p_vtable != v33;
            if (p_vtable == v33)
            {
LABEL_28:

              v6 = v70;
              a5 = v69;
              v10 = v68;
              v27 = v74;
              v28 = v83;
              goto LABEL_29;
            }

            if (v10)
            {
              v25 = sub_10077149C();
              if (__OFADD__(v33, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v25 = *(v32 + 8 * v33 + 32);

              if (__OFADD__(v33, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                v26 = sub_10077158C();
                goto LABEL_5;
              }
            }

            a5 = sub_10076BD4C();

            ++v33;
            if (a5)
            {
              goto LABEL_28;
            }
          }
        }
      }

      LOBYTE(v23) = 0;
LABEL_29:

      sub_10007AFB4(v34, v10);

      v35 = v10[8];
      v36 = v10[10];
      sub_100125E90(v10);
      result = *&v6[v82];
      if (!result)
      {
        break;
      }

      [result pageContainerSize];
      [v6 bounds];
      v39 = v38;
      if (v23)
      {
        if (sub_10076D2EC())
        {
          (*v76)(v85, v28, v27);
        }

        else
        {
          sub_10076D32C();
        }

        v40 = 1;
      }

      else
      {
        (*v76)(v85, v28, v27);
        v40 = sub_10076D2EC();
      }

      v41 = [a5 traitCollection];
      v42 = sub_1007706CC();

      if (v42)
      {
        [a5 pageMarginInsets];
        v44 = v43;
        [a5 pageMarginInsets];
        v46 = v44 + v45;
        PageTraitEnvironment.pageColumnMargin.getter();
        v48 = v39 - (v46 + v47 + v47);
        v49 = v47 * 0.0;
        v50 = v48 * 0.333333333;
      }

      else
      {
        if (v40)
        {
          v51 = 2.0;
        }

        else
        {
          v51 = 1.0;
        }

        if (v40)
        {
          v52 = 3.0;
        }

        else
        {
          v52 = 1.0;
        }

        [a5 pageMarginInsets];
        v54 = v53;
        [a5 pageMarginInsets];
        v56 = v54 + v55;
        PageTraitEnvironment.pageColumnMargin.getter();
        v58 = v39 - (v56 + (v52 + -1.0) * v57);
        v49 = (v51 + -1.0) * v57;
        v50 = v51 / v52 * v58;
      }

      v59 = v49 + v50;
      v60 = [a5 traitCollection];
      sub_1007706CC();

      v61 = v85;
      sub_10076D36C();
      v62 = v59 - (v35 + v36);
      sub_10076D36C();
      v64 = v63;
      p_vtable = v77;
      v65 = *v77;
      (*v77)(v61, v27);
      v28 = v83;
      v65(v83, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10049D474(0, v11[2] + 1, 1, v11);
      }

      v23 = v11[2];
      v66 = v11[3];
      v25 = v23 + 1;
      if (v23 >= v66 >> 1)
      {
        v11 = sub_10049D474((v66 > 1), v23 + 1, 1, v11);
      }

      v11[2] = v25;
      v67 = &v11[3 * v23];
      *(v67 + 4) = v84;
      v67[5] = v62;
      *(v67 + 6) = v64;
      if (v29 == v78)
      {

        v23 = 0x100911000;
        p_vtable = 0x100954000;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
LABEL_53:
    *&v6[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork] = v11;

    return [*&v6[*(p_vtable + 1016)] *(v23 + 1624)];
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}
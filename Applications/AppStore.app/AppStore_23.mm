uint64_t sub_10029AB8C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppShowcaseType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppShowcaseLockupViewLayout();
  v44 = *(v11 - 8);
  v45 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v0;
  v76.super_class = ObjectType;
  v47 = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v12);
  v14 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v14], v4);
  v15 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v10;
  sub_100298E8C(v7, v15, v0, v10);

  (*(v5 + 8))(v7, v4);
  v16 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView];
  v74 = type metadata accessor for ArtworkView();
  v75 = &protocol witness table for UIView;
  v41 = v16;
  v73 = v16;
  v17 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18)
  {
    v19 = type metadata accessor for WordmarkView();
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v40 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel];
  v21 = v40;
  v22 = type metadata accessor for DynamicTypeLabel();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton];
  v60 = type metadata accessor for OfferButton();
  v61 = &protocol witness table for UIView;
  v25 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel];
  v58 = &protocol witness table for UILabel;
  v59 = v24;
  v57 = v22;
  v55 = &protocol witness table for UILabel;
  v56 = v25;
  v26 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v54 = v22;
  v52 = &protocol witness table for UILabel;
  v53 = v26;
  v27 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v51 = v22;
  v50 = v27;
  v28 = v41;
  v29 = v18;
  v30 = v40;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v43;
  AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v37 = v46;
  AppShowcaseLockupViewLayout.placeChildren(relativeTo:in:)();
  (*(v48 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

uint64_t sub_10029B0B4(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_10002849C(&qword_100973210);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B15F0;
    v9 = *(v3 + *a2);
    v10 = *(v3 + *a3);
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    *(v3 + v4) = v6;
    v11 = v9;
    v12 = v10;
  }

  return v6;
}

void sub_10029B160(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_10029B0B4(&OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel);
    v5 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews;
    v6 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
    v7 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  }

  else
  {
    if (([*(v2 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_10029B0B4(&OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel);
    v5 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews;
    v6 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
    v7 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  }

  v8 = sub_10029B0B4(v5, v6, v7);
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    if (v4 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_39;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v9 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20)
      {
LABEL_30:
        v4 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v21 = *(v9 + 8 * v4 + 32);
          }

          v22 = v21;
          v23 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_42;
          }

          [v21 setAlpha:1.0];
          [v22 setHidden:0];

          ++v4;
        }

        while (v23 != v20);
      }
    }

    else
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_30;
      }
    }

    return;
  }

  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 setHidden:0];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v9;
  v33 = sub_100140F44;
  v34 = v25;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100007A08;
  v32 = &unk_1008BC020;
  v26 = _Block_copy(&v29);

  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  v33 = sub_100140F4C;
  v34 = v27;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100504C5C;
  v32 = &unk_1008BC070;
  v28 = _Block_copy(&v29);

  [v24 animateWithDuration:4 delay:v26 options:v28 animations:0.33 completion:0.0];
  _Block_release(v28);
  _Block_release(v26);
}

uint64_t type metadata accessor for AppShowcaseLockupView()
{
  result = qword_10097D8D0;
  if (!qword_10097D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029B790()
{
  result = type metadata accessor for AppShowcaseType();
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

uint64_t sub_10029B8A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10029B95C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_10029BA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029BA78(uint64_t a1)
{
  v20 = type metadata accessor for ComponentDecoration();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppShowcaseType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v19 = a1;
  AppShowcase.type.getter();
  (*(v6 + 104))(v8, enum case for AppShowcaseType.large(_:), v5);
  sub_10029BD90(&qword_1009745B0, &type metadata accessor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v23 == v21 && v24 == v22)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);

LABEL_5:
    AppShowcase.lockup.getter();
    v16 = dispatch thunk of Lockup.decorations.getter();

    v17 = v20;
    (*(v2 + 104))(v4, enum case for ComponentDecoration.arcade(_:), v20);
    v15 = sub_100295C14(v4, v16);

    (*(v2 + 8))(v4, v17);
    return v15 & 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);

  v15 = 0;
  if (v13)
  {
    goto LABEL_5;
  }

  return v15 & 1;
}

uint64_t sub_10029BD90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10029BDD8()
{
  v1 = v0;
  v43 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView;
  type metadata accessor for ArtworkView();
  *(v0 + v8) = static ArtworkView.iconArtworkView.getter();
  *(v0 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView) = 0;
  v9 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
  v42 = type metadata accessor for DynamicTypeLabel();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1640);
  v13 = *(v11 - 8);
  v39 = *(v13 + 16);
  v39(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = v2;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v15 + 104);
  v41 = v15 + 104;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v43);
  v17 = objc_allocWithZone(v42);
  *(v1 + v10) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v18 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton;
  v19 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v18) = sub_1000F5284(0);
  v20 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_1009D0710);
  v39(v7, v21, v11);
  v14(v7, 0, 1, v11);
  v40(v4, v16, v43);
  v22 = objc_allocWithZone(v42);
  *(v1 + v20) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = (v1 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter);
  *v23 = 0u;
  v23[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter) = 0;
  v37 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
  v38 = v1;
  if (qword_10096E250 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v11, qword_1009D1670);
  v39(v7, v24, v11);
  v14(v7, 0, 1, v11);
  v25 = v43;
  LODWORD(v39) = v16;
  v26 = v40;
  v40(v4, v16, v43);
  v36 = v14;
  v27 = v42;
  v28 = objc_allocWithZone(v42);
  v29 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v30 = v7;
  v31 = v38;
  *(v38 + v37) = v29;
  v37 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v36(v30, 1, 1, v11);
  v26(v4, v39, v25);
  v32 = objc_allocWithZone(v27);
  *(v31 + v37) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v33 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  v34 = enum case for AppShowcaseType.large(_:);
  v35 = type metadata accessor for AppShowcaseType();
  (*(*(v35 - 8) + 104))(v31 + v33, v34, v35);
  *(v31 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews) = 0;
  *(v31 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10029C394()
{
  result = [objc_opt_self() configurationWithPointSize:12.0];
  qword_10097D908 = result;
  return result;
}

void sub_10029C3E0(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = UIFontTextStyleTitle3;
  v5 = [v3 configurationWithTextStyle:v4];

  *a2 = v5;
}

id sub_10029C454(unsigned __int8 a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_10096D538 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_10096D530 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
    if (qword_10096D540 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_10032FEB0(0x654C6C657275614CLL, 0xEF656772614C7466, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
  if (qword_10096D548 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = static SystemImage.load(_:with:)();
  (*(v3 + 8))(v6, v2);
  return v10;
}

id sub_10029C720(unsigned __int8 a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_10096D538 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_10096D530 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
    if (qword_10096D540 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_10032FEB0(0xD000000000000010, 0x800000010080B7D0, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
  if (qword_10096D548 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = static SystemImage.load(_:with:)();
  (*(v3 + 8))(v6, v2);
  return v10;
}

unint64_t sub_10029C9E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A03F0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10029CA1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10029CA6C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10029CAA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_10029CAF0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_10029CB10(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_10029CB28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    if (Locale.isChinese.getter())
    {
      if (qword_10096E008 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for FontUseCase();
      v4 = v3;
      v5 = qword_1009D0F98;
      goto LABEL_27;
    }

    if (Locale.isJapanese.getter())
    {
      if (qword_10096E010 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for FontUseCase();
      v4 = v3;
      v5 = qword_1009D0FB0;
      goto LABEL_27;
    }

    if (Locale.isKorean.getter())
    {
      if (qword_10096E018 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for FontUseCase();
      v4 = v3;
      v5 = qword_1009D0FC8;
      goto LABEL_27;
    }
  }

  else if (a1 == 1)
  {
    if (Locale.isChinese.getter())
    {
      if (qword_10096DFD8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for FontUseCase();
      v4 = v3;
      v5 = qword_1009D0F08;
LABEL_27:
      v6 = sub_1000056A8(v3, v5);
      v13 = *(v4 - 8);
      (*(v13 + 16))(a2, v6, v4);
      v7 = *(v13 + 56);
      v8 = a2;
      v9 = 0;
      v10 = v4;
      goto LABEL_29;
    }

    if (Locale.isJapanese.getter())
    {
      if (qword_10096DFE0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for FontUseCase();
      v4 = v3;
      v5 = qword_1009D0F20;
      goto LABEL_27;
    }

    if (Locale.isKorean.getter())
    {
      if (qword_10096DFE8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for FontUseCase();
      v4 = v3;
      v5 = qword_1009D0F38;
      goto LABEL_27;
    }
  }

  v11 = type metadata accessor for FontUseCase();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a2;
  v9 = 1;
LABEL_29:

  return v7(v8, v9, 1, v10);
}

char *sub_10029CDF8(unsigned __int8 a1, char a2, char a3, char a4, unsigned __int8 a5)
{
  v6 = v5;
  LODWORD(v85) = a5;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for Locale();
  v80 = *(v12 - 8);
  v81 = v12;
  __chkstk_darwin(v12);
  v79 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FontUseCase();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v75 - v16;
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v78 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v83 = &v75 - v20;
  v21 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale] = 0;
  v22 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v6[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView;
  *&v6[v23] = [objc_allocWithZone(UIImageView) init];
  v24 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView;
  *&v6[v24] = [objc_allocWithZone(UIImageView) init];
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size] = a1;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_preferredLineCount] = a2 & 1;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_shouldCapWidthByAvailableWidth] = a3;
  v6[v21] = a4;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase] = a5;
  v25 = type metadata accessor for EditorsChoiceView();
  v88.receiver = v6;
  v88.super_class = v25;
  v26 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor:v31];

  v32 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel;
  v33 = *&v30[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];
  v34 = [v30 tintColor];

  [v33 setTextColor:v34];
  [*&v30[v32] setLineBreakMode:4];
  v35 = *&v30[v32];
  if (v85)
  {
    v36 = v35;
    v37 = [v30 traitCollection];
    v38 = a1;
    v39 = a1;
    *&v85 = v36;
    v75.super.isa = v37;
    if (a1 <= 1u)
    {
      v40 = v84;
      v41 = v82;
      v42 = v77;
      if (v38)
      {
        if (qword_10096DFD0 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0EF0;
      }

      else
      {
        if (qword_10096DFC8 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0ED8;
      }
    }

    else
    {
      v40 = v84;
      v41 = v82;
      v42 = v77;
      if (v38 == 2)
      {
        if (qword_10096DFF0 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0F50;
      }

      else if (v38 == 3)
      {
        if (qword_10096E020 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0FE0;
      }

      else
      {
        if (qword_10096E028 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0FF8;
      }
    }

    v48 = sub_1000056A8(v42, v43);
    (*(v40 + 16))(v41, v48, v42);
    v49 = v79;
    static Locale.storefront.getter();
    v50 = v78;
    sub_10029CB28(v39, v78);
    (*(v80 + 8))(v49, v81);
    if ((*(v40 + 48))(v50, 1, v42) == 1)
    {

      sub_10025BAF0(v50);
      v51 = v83;
      (*(v40 + 32))(v83, v41, v42);
    }

    else
    {
      v52 = v76;
      v82 = *(v40 + 32);
      (v82)(v76, v50, v42);
      isa = v75.super.isa;
      v54 = FontUseCase.makeFontDescriptor(compatibleWith:)(v75).super.isa;
      [(objc_class *)v54 pointSize];
      v56 = v55;
      v57 = FontUseCase.makeFontDescriptor(compatibleWith:)(isa).super.isa;
      [(objc_class *)v57 pointSize];
      v59 = v58;

      v40 = v84;
      v60 = *(v40 + 8);
      if (v59 >= v56)
      {
        v60(v52, v42);
        v51 = v83;
        v61 = v83;
        v62 = v41;
      }

      else
      {
        v60(v41, v42);
        v51 = v83;
        v61 = v83;
        v62 = v52;
      }

      (v82)(v61, v62, v42);
    }

    v63 = v85;
    (*(v40 + 56))(v51, 0, 1, v42);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  else
  {
    v44 = v35;
    static CustomTextStyle<>.metadataRibbon.getter();
    if (qword_10096EE60 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for MetadataRibbonTextStyle();
    v46 = sub_1000056A8(v45, qword_1009D3728);
    v87[3] = v45;
    v87[4] = sub_1002A03A8(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
    v47 = sub_1000056E0(v87);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    dispatch thunk of DynamicTypeLabel.customTextStyle.setter();
  }

  [*&v30[v32] setAdjustsFontSizeToFitWidth:{1, v75.super.isa}];
  v64 = *&v30[v32];
  v65 = v30;
  [v65 addSubview:v64];
  if (v65[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size] == 4)
  {

    [v65 setContentMode:3];
  }

  else
  {
    v66 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView;
    v67 = *&v65[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView];
    v68 = [v65 tintColor];
    [v67 setTintColor:v68];

    v69 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView;
    v70 = *&v65[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView];
    v71 = [v65 tintColor];

    [v70 setTintColor:v71];
    [*&v65[v66] setSemanticContentAttribute:3];
    [*&v65[v69] setSemanticContentAttribute:3];
    [v65 addSubview:*&v65[v69]];
    [v65 addSubview:*&v65[v66]];
  }

  sub_10029E330();
  sub_10029E49C();
  sub_10002849C(&qword_10097B110);
  v72 = swift_allocObject();
  v85 = xmmword_1007B10D0;
  *(v72 + 16) = xmmword_1007B10D0;
  *(v72 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v72 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v73 = swift_allocObject();
  *(v73 + 16) = v85;
  *(v73 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v73 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v65;
}

void sub_10029D9CC()
{
  ObjectType = swift_getObjectType();
  v53.receiver = v0;
  v53.super_class = type metadata accessor for EditorsChoiceView();
  objc_msgSendSuper2(&v53, "layoutSubviews");
  v2 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_preferredLineCount];
  v3 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size];
  v4 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale;
  v5 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale];
  v6 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v54);
  v7 = sub_10029E79C(v2, v3, v5, v6, v0, ObjectType);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];
  v10 = v9 & 1;
  [v8 setNumberOfLines:{(v9 & 1u) + 1, v7}];
  sub_1002A0400(v10, v0[v4]);
  v11 = String._bridgeToObjectiveC()();

  [v8 setText:v11];

  v12 = [v0 traitCollection];
  if (v6 == 1)
  {
    v13 = v12;
    v14 = [v12 preferredContentSizeCategory];
    v15 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v15)
    {
      [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView] setHidden:1];
      LayoutMarginsAware<>.layoutFrame.getter();
      Width = CGRectGetWidth(v55);
      LayoutMarginsAware<>.layoutFrame.getter();
      [v8 sizeThatFits:{Width, CGRectGetHeight(v56)}];
      v18 = v17;
      v20 = v19;
      LayoutMarginsAware<>.layoutFrame.getter();
      v21 = CGRectGetMidX(v57) - v18 * 0.5;
      LayoutMarginsAware<>.layoutFrame.getter();
      [v8 setFrame:{v21, CGRectGetMidY(v58) - v20 * 0.5, Width, v20}];
      return;
    }
  }

  else
  {
  }

  v22 = v3;
  v23 = sub_10029C454(v3);
  v24 = sub_10029C720(v22);
  v25 = 12.0;
  if (v22 != 4)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v59);
    [v23 size];
    if (v27 < Height)
    {
      Height = v27;
    }

    [v23 size];
    v29 = Height * v28;
    [v23 size];
    v31 = v29 / v30;
    [v0 bounds];
    MinX = CGRectGetMinX(v60);
    [v0 bounds];
    v33 = CGRectGetMidY(v61) - Height * 0.5;
    v34 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView];
    [v34 setHidden:0];
    [v34 setImage:v23];
    [v34 setFrame:{MinX, v33, v31, Height}];
    [v0 bounds];
    v35 = CGRectGetHeight(v62);
    [v24 size];
    if (v36 < v35)
    {
      v35 = v36;
    }

    [v24 size];
    v38 = v35 * v37;
    [v24 size];
    v40 = v38 / v39;
    [v0 bounds];
    v41 = CGRectGetMaxX(v63) - v40;
    [v0 bounds];
    v42 = CGRectGetMidY(v64) - v35 * 0.5;
    v43 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView];
    [v43 setHidden:0];
    [v43 setImage:v24];
    [v43 setFrame:{v41, v42, v40, v35}];
    v25 = dbl_1007C4E18[v22];
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v44 = CGRectGetWidth(v65);
  [v23 size];
  v46 = v25 + v25 + v45;
  [v24 size];
  v48 = v44 - (v46 + v47);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v8 sizeThatFits:{v48, CGRectGetHeight(v66)}];
  v50 = v49;
  [v23 size];
  v52 = v25 + v51;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v8 setFrame:{v52, CGRectGetMidY(v67) + v50 * -0.5, v48, v50}];
}

void sub_10029DED0(double a1, double a2, double a3, double a4)
{
  if (*(v4 + OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size) != 4)
  {
    v31.receiver = v4;
    v31.super_class = type metadata accessor for EditorsChoiceView();
    objc_msgSendSuper2(&v31, "drawRect:", a1, a2, a3, a4);
    return;
  }

  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v4 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 CGColor];

    CGContextSetFillColorWithColor(v7, v10);
  }

  v11 = sub_10029C454(4u);
  [v4 bounds];
  Height = CGRectGetHeight(v33);
  [v11 size];
  if (v13 < Height)
  {
    Height = v13;
  }

  [v11 size];
  v15 = Height * v14;
  [v11 size];
  v17 = v15 / v16;
  [v4 bounds];
  MinX = CGRectGetMinX(v34);
  [v4 bounds];
  [v11 drawInRect:{MinX, CGRectGetMidY(v35) - Height * 0.5, v17, Height}];
  v30 = sub_10029C720(4u);
  [v4 bounds];
  v19 = CGRectGetHeight(v36);
  [v30 size];
  if (v20 < v19)
  {
    v19 = v20;
  }

  [v30 size];
  v22 = v19 * v21;
  [v30 size];
  v24 = v22 / v23;
  [v4 bounds];
  v25 = CGRectGetMaxX(v37) - v24;
  [v4 bounds];
  [v30 drawInRect:{v25, CGRectGetMidY(v38) - v19 * 0.5, v24, v19}];
}

void sub_10029E1C4()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];
  v2 = [v0 tintColor];
  [v1 setTextColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView];
  v4 = [v0 tintColor];
  [v3 setTintColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView];
  v6 = [v0 tintColor];
  [v5 setTintColor:v6];

  if (v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size] == 4)
  {

    [v0 setNeedsDisplay];
  }
}

void sub_10029E330()
{
  if (v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase] == 1)
  {
    v1 = [v0 layer];
    [v1 setAllowsGroupBlending:0];

    v2 = [v0 traitCollection];
    [v2 userInterfaceStyle];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    v4 = [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView] layer];
    [v4 setCompositingFilter:v3];

    v5 = [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView] layer];
    [v5 setCompositingFilter:v3];
  }
}

id sub_10029E49C()
{
  v1 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase];
  v2 = [v0 traitCollection];
  if (v1 == 1)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v5)
    {
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 1;
LABEL_6:
  v7 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];

  return [v7 setTextAlignment:v6];
}

id sub_10029E5B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorsChoiceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10029E698()
{
  result = qword_10097D980;
  if (!qword_10097D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D980);
  }

  return result;
}

unint64_t sub_10029E6F0()
{
  result = qword_10097D988;
  if (!qword_10097D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D988);
  }

  return result;
}

unint64_t sub_10029E748()
{
  result = qword_10097D990;
  if (!qword_10097D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D990);
  }

  return result;
}

double sub_10029E79C(char a1, void *a2, int a3, int a4, void *a5, uint64_t a6)
{
  LODWORD(v113) = a3;
  v117 = a2;
  v118 = a6;
  v121 = a4;
  v8 = a4;
  v9 = type metadata accessor for Locale();
  v115 = *(v9 - 8);
  v116 = v9;
  __chkstk_darwin(v9);
  v114 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v111 = v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v109 - v14;
  v16 = type metadata accessor for FontUseCase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v119 = v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v112 = v109 - v20;
  __chkstk_darwin(v21);
  v120 = v109 - v22;
  __chkstk_darwin(v23);
  v25 = v109 - v24;
  __chkstk_darwin(v26);
  v28 = v109 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v110 = v109 - v31;
  v122 = a5;
  v32 = [a5 traitCollection];
  if (v8 != 1)
  {

    goto LABEL_5;
  }

  v33 = v32;
  v34 = [v32 preferredContentSizeCategory];
  v35 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v35 & 1) == 0)
  {
LABEL_5:
    v37 = v117;
    v38 = sub_10029C454(v117);
    v39 = sub_10029C720(v37);
    [v38 size];
    [v39 size];

    v36 = v119;
    goto LABEL_6;
  }

  v36 = v119;
  v37 = v117;
LABEL_6:
  if (a1)
  {
    goto LABEL_44;
  }

  v40 = 0xD00000000000001ALL;
  v41 = 0x8000000100808300;
  if (v113)
  {
    v44 = localizedStringForAdsLanguage(_:)(*&v40);
    object = v44._object;
    countAndFlagsBits = v44._countAndFlagsBits;
  }

  else
  {
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v46 = localizedString(_:comment:)(*&v40, v45);
    object = v46._object;
    countAndFlagsBits = v46._countAndFlagsBits;
  }

  v47 = countAndFlagsBits;
  v48 = object;
  v49 = [v122 traitCollection];
  v109[2] = v48;
  v109[1] = v47;
  if (v37 <= 1u)
  {
    if (v37)
    {
      if (qword_10096DFD0 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0EF0;
    }

    else
    {
      if (qword_10096DFC8 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0ED8;
    }
  }

  else if (v37 == 2)
  {
    if (v121)
    {
      if (qword_10096DFF0 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0F50;
    }

    else
    {
      if (qword_10096DFF8 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0F68;
    }
  }

  else if (v37 == 3)
  {
    if (qword_10096E020 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D0FE0;
  }

  else
  {
    if (qword_10096E028 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D0FF8;
  }

  v51 = sub_1000056A8(v16, v50);
  (*(v17 + 16))(v28, v51, v16);
  v52 = v114;
  static Locale.storefront.getter();
  sub_10029CB28(v37, v15);
  (*(v115 + 8))(v52, v116);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10025BAF0(v15);
    v53 = v110;
    (*(v17 + 32))(v110, v28, v16);
    v36 = v119;
  }

  else
  {
    v54 = *(v17 + 32);
    v54(v25, v15, v16);
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v49).super.isa;
    [(objc_class *)isa pointSize];
    v57 = v56;
    v58 = FontUseCase.makeFontDescriptor(compatibleWith:)(v49).super.isa;
    [(objc_class *)v58 pointSize];
    v60 = v59;

    v61 = *(v17 + 8);
    if (v60 >= v57)
    {
      v61(v25, v16);
      v53 = v110;
      v62 = v110;
      v63 = v28;
    }

    else
    {
      v61(v28, v16);
      v53 = v110;
      v62 = v110;
      v63 = v25;
    }

    v54(v62, v63, v16);
    v36 = v119;
    v37 = v117;
  }

  v64 = v121;
  v65 = [v122 traitCollection];
  if (v64 == 1)
  {
    v66 = v65;
    v67 = [v65 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  else
  {
  }

  v68 = type metadata accessor for Feature();
  v124 = v68;
  v125 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature);
  v69 = sub_1000056E0(v123);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  isFeatureEnabled(_:)();
  sub_100007000(v123);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v71 = v70;

  (*(v17 + 8))(v53, v16);
  v72 = CGFloat.isLessThanOrEffectivelyEqualTo(_:accuracy:)();
  if (v121)
  {
    if ((v72 & 1) == 0)
    {
LABEL_44:
      v73 = 0x80000001007FF2F0;
      if (v113)
      {
        v74 = 0xD000000000000017;
        v77 = localizedStringForAdsLanguage(_:)(*(&v73 - 1));
        v76 = v77._object;
        v75 = v77._countAndFlagsBits;
      }

      else
      {
        v78._countAndFlagsBits = 0xD000000000000050;
        v78._object = 0x80000001007FF310;
        v79 = 0xD000000000000017;
        v80 = localizedString(_:comment:)(*(&v73 - 1), v78);
        v76 = v80._object;
        v75 = v80._countAndFlagsBits;
      }

      v81 = v75;
      v82 = v76;
      v84 = v111;
      v83 = v112;
      v85 = [v122 traitCollection];
      v117 = v82;
      v113 = v81;
      if (v37 <= 1u)
      {
        if (v37)
        {
          if (qword_10096DFD0 != -1)
          {
            swift_once();
          }

          v86 = qword_1009D0EF0;
        }

        else
        {
          if (qword_10096DFC8 != -1)
          {
            swift_once();
          }

          v86 = qword_1009D0ED8;
        }
      }

      else if (v37 == 2)
      {
        if (v121)
        {
          if (qword_10096DFF0 != -1)
          {
            swift_once();
          }

          v86 = qword_1009D0F50;
        }

        else
        {
          if (qword_10096DFF8 != -1)
          {
            swift_once();
          }

          v86 = qword_1009D0F68;
        }
      }

      else if (v37 == 3)
      {
        if (qword_10096E020 != -1)
        {
          swift_once();
        }

        v86 = qword_1009D0FE0;
      }

      else
      {
        if (qword_10096E028 != -1)
        {
          swift_once();
        }

        v86 = qword_1009D0FF8;
      }

      v87 = sub_1000056A8(v16, v86);
      (*(v17 + 16))(v83, v87, v16);
      v88 = v114;
      static Locale.storefront.getter();
      sub_10029CB28(v37, v84);
      (*(v115 + 8))(v88, v116);
      if ((*(v17 + 48))(v84, 1, v16) == 1)
      {

        sub_10025BAF0(v84);
        (*(v17 + 32))(v120, v83, v16);
      }

      else
      {
        v89 = v83;
        v90 = *(v17 + 32);
        v90(v36, v84, v16);
        v91 = FontUseCase.makeFontDescriptor(compatibleWith:)(v85).super.isa;
        [(objc_class *)v91 pointSize];
        v93 = v92;
        v94 = FontUseCase.makeFontDescriptor(compatibleWith:)(v85).super.isa;
        [(objc_class *)v94 pointSize];
        v96 = v95;

        v97 = *(v17 + 8);
        if (v96 >= v93)
        {
          v97(v36, v16);
          v98 = v120;
          v99 = v89;
        }

        else
        {
          v97(v89, v16);
          v98 = v120;
          v99 = v36;
        }

        v90(v98, v99, v16);
      }

      v100 = v121;
      v101 = [v122 traitCollection];
      if (v100 == 1)
      {
        v102 = v101;
        v103 = [v101 preferredContentSizeCategory];
        UIContentSizeCategory.isAccessibilityCategory.getter();
      }

      else
      {
      }

      v104 = type metadata accessor for Feature();
      v124 = v104;
      v125 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature);
      v105 = sub_1000056E0(v123);
      (*(*(v104 - 8) + 104))(v105, enum case for Feature.measurement_with_labelplaceholder(_:), v104);
      isFeatureEnabled(_:)();
      sub_100007000(v123);
      v106 = v120;
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      v71 = v107;

      (*(v17 + 8))(v106, v16);
    }
  }

  return v71;
}

double sub_10029F56C(char a1, void *a2, int a3, int a4, id a5)
{
  LODWORD(v116) = a3;
  v124 = a2;
  v123 = a4;
  v7 = a4;
  v8 = type metadata accessor for Locale();
  v119 = *(v8 - 8);
  v120 = v8;
  __chkstk_darwin(v8);
  v118 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v114 = v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v111 - v13;
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v115 = v111 - v20;
  __chkstk_darwin(v21);
  v122 = v111 - v22;
  __chkstk_darwin(v23);
  v25 = v111 - v24;
  __chkstk_darwin(v26);
  v28 = v111 - v27;
  __chkstk_darwin(v29);
  v113 = v111 - v30;
  v117 = type metadata accessor for EditorsChoiceView();
  v31 = [a5 traitCollection];
  v112 = v25;
  if (v7 == 1)
  {
    v32 = a5;
    v33 = v31;
    v34 = [v31 preferredContentSizeCategory];
    v35 = UIContentSizeCategory.isAccessibilityCategory.getter();

    a5 = v32;
    if (v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v36 = v124;
  v37 = sub_10029C454(v124);
  v38 = sub_10029C720(v36);
  [v37 size];
  [v38 size];

LABEL_6:
  v39 = v18;
  v121 = a5;
  if (a1)
  {
    goto LABEL_44;
  }

  v40 = 0xD00000000000001ALL;
  v41 = 0x8000000100808300;
  if (v116)
  {
    v44 = localizedStringForAdsLanguage(_:)(*&v40);
    object = v44._object;
    countAndFlagsBits = v44._countAndFlagsBits;
  }

  else
  {
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v46 = localizedString(_:comment:)(*&v40, v45);
    object = v46._object;
    countAndFlagsBits = v46._countAndFlagsBits;
  }

  v47 = countAndFlagsBits;
  v48 = object;
  v49 = [a5 traitCollection];
  v111[2] = v48;
  v111[1] = v47;
  if (v124 <= 1u)
  {
    if (v124)
    {
      if (qword_10096DFD0 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0EF0;
    }

    else
    {
      if (qword_10096DFC8 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0ED8;
    }
  }

  else if (v124 == 2)
  {
    if (v123)
    {
      if (qword_10096DFF0 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0F50;
    }

    else
    {
      if (qword_10096DFF8 != -1)
      {
        swift_once();
      }

      v50 = qword_1009D0F68;
    }
  }

  else if (v124 == 3)
  {
    if (qword_10096E020 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D0FE0;
  }

  else
  {
    if (qword_10096E028 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D0FF8;
  }

  v51 = sub_1000056A8(v15, v50);
  (*(v16 + 16))(v28, v51, v15);
  v52 = v118;
  static Locale.storefront.getter();
  sub_10029CB28(v124, v14);
  (*(v119 + 8))(v52, v120);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_10025BAF0(v14);
    v53 = v113;
    (*(v16 + 32))(v113, v28, v15);
    a5 = v121;
  }

  else
  {
    v111[0] = v18;
    v54 = *(v16 + 32);
    v55 = v112;
    v54(v112, v14, v15);
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v49).super.isa;
    [(objc_class *)isa pointSize];
    v58 = v57;
    v59 = FontUseCase.makeFontDescriptor(compatibleWith:)(v49).super.isa;
    [(objc_class *)v59 pointSize];
    v61 = v60;

    v62 = *(v16 + 8);
    if (v61 >= v58)
    {
      v62(v55, v15);
      v53 = v113;
      v63 = v113;
      v64 = v28;
    }

    else
    {
      v62(v28, v15);
      v53 = v113;
      v63 = v113;
      v64 = v55;
    }

    v54(v63, v64, v15);
    a5 = v121;
    v39 = v111[0];
  }

  v65 = v123;
  v66 = [a5 traitCollection];
  if (v65 == 1)
  {
    v67 = v66;
    v68 = [v66 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  else
  {
  }

  v69 = type metadata accessor for Feature();
  v126 = v69;
  v127 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature);
  v70 = sub_1000056E0(v125);
  (*(*(v69 - 8) + 104))(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v69);
  isFeatureEnabled(_:)();
  sub_100007000(v125);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v72 = v71;

  (*(v16 + 8))(v53, v15);
  v73 = CGFloat.isLessThanOrEffectivelyEqualTo(_:accuracy:)();
  if (v123)
  {
    if ((v73 & 1) == 0)
    {
LABEL_44:
      v74 = 0x80000001007FF2F0;
      if (v116)
      {
        v75 = 0xD000000000000017;
        v78 = localizedStringForAdsLanguage(_:)(*(&v74 - 1));
        v77 = v78._object;
        v76 = v78._countAndFlagsBits;
      }

      else
      {
        v79._countAndFlagsBits = 0xD000000000000050;
        v79._object = 0x80000001007FF310;
        v80 = 0xD000000000000017;
        v81 = localizedString(_:comment:)(*(&v74 - 1), v79);
        v77 = v81._object;
        v76 = v81._countAndFlagsBits;
      }

      v82 = v76;
      v83 = v77;
      v85 = v114;
      v84 = v115;
      v86 = [a5 traitCollection];
      v116 = v82;
      if (v124 <= 1u)
      {
        if (v124)
        {
          v87 = v86;
          if (qword_10096DFD0 != -1)
          {
            swift_once();
          }

          v88 = qword_1009D0EF0;
        }

        else
        {
          v87 = v86;
          if (qword_10096DFC8 != -1)
          {
            swift_once();
          }

          v88 = qword_1009D0ED8;
        }
      }

      else if (v124 == 2)
      {
        if (v123)
        {
          v87 = v86;
          if (qword_10096DFF0 != -1)
          {
            swift_once();
          }

          v88 = qword_1009D0F50;
        }

        else
        {
          v87 = v86;
          if (qword_10096DFF8 != -1)
          {
            swift_once();
          }

          v88 = qword_1009D0F68;
        }
      }

      else if (v124 == 3)
      {
        v87 = v86;
        if (qword_10096E020 != -1)
        {
          swift_once();
        }

        v88 = qword_1009D0FE0;
      }

      else
      {
        v87 = v86;
        if (qword_10096E028 != -1)
        {
          swift_once();
        }

        v88 = qword_1009D0FF8;
      }

      v89 = sub_1000056A8(v15, v88);
      (*(v16 + 16))(v84, v89, v15);
      v90 = v118;
      static Locale.storefront.getter();
      sub_10029CB28(v124, v85);
      (*(v119 + 8))(v90, v120);
      if ((*(v16 + 48))(v85, 1, v15) == 1)
      {

        sub_10025BAF0(v85);
        (*(v16 + 32))(v122, v84, v15);
      }

      else
      {
        v124 = v83;
        v91 = v84;
        v92 = *(v16 + 32);
        v92(v39, v85, v15);
        v93 = FontUseCase.makeFontDescriptor(compatibleWith:)(v87).super.isa;
        [(objc_class *)v93 pointSize];
        v95 = v94;
        v96 = FontUseCase.makeFontDescriptor(compatibleWith:)(v87).super.isa;
        [(objc_class *)v96 pointSize];
        v98 = v97;

        v99 = *(v16 + 8);
        if (v98 >= v95)
        {
          v99(v39, v15);
          v100 = v122;
          v101 = v91;
        }

        else
        {
          v99(v91, v15);
          v100 = v122;
          v101 = v39;
        }

        v92(v100, v101, v15);
      }

      v102 = v123;
      v103 = [v121 traitCollection];
      if (v102 == 1)
      {
        v104 = v103;
        v105 = [v103 preferredContentSizeCategory];
        UIContentSizeCategory.isAccessibilityCategory.getter();
      }

      else
      {
      }

      v106 = type metadata accessor for Feature();
      v126 = v106;
      v127 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature);
      v107 = sub_1000056E0(v125);
      (*(*(v106 - 8) + 104))(v107, enum case for Feature.measurement_with_labelplaceholder(_:), v106);
      isFeatureEnabled(_:)();
      sub_100007000(v125);
      v108 = v122;
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      v72 = v109;

      (*(v16 + 8))(v108, v15);
    }
  }

  return v72;
}

uint64_t sub_1002A03A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002A03F0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1002A0400(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0x80000001007FF2F0;
      v3 = 0xD000000000000017;
      return localizedStringForAdsLanguage(_:)(*&v3)._countAndFlagsBits;
    }

    v5 = 0x80000001007FF2F0;
    v6 = 0xD000000000000050;
    v7 = 0x80000001007FF310;
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
    if (a2)
    {
      v2 = 0x8000000100808300;
      return localizedStringForAdsLanguage(_:)(*&v3)._countAndFlagsBits;
    }

    v5 = 0x8000000100808300;
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  return localizedString(_:comment:)(*&v3, *&v6)._countAndFlagsBits;
}

void sub_1002A047C()
{
  *(v0 + OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale) = 0;
  v1 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002A0550(void *a1, char a2, int a3, id a4, char a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = [a4 traitCollection];
  if (v13 == 1)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];
    v17 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_10029C454(a1);
  v19 = sub_10029C720(a1);
  [v18 size];
  [v19 size];

LABEL_6:
  sub_10029E79C(a2 & 1, a1, a5 & 1, a6, a4, a7);
}

void sub_1002A06E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002A180C(&qword_100970E80, &type metadata accessor for ArtworkView);
  v2 = v1;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView);
  if (v3)
  {
    v4 = v3;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  v5 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_1002A180C(&unk_1009840E0, type metadata accessor for VideoView);
      v6 = v5;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }
  }
}

uint64_t sub_1002A08A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1002A0A18(*(a1 + 16), a5);
  v6 = [objc_opt_self() absoluteDimension:v5];
  v7 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v7;
}

uint64_t sub_1002A0930(uint64_t a1)
{
  result = sub_1002A180C(&qword_10097D998, type metadata accessor for PosterLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_1002A0A18(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PosterLockupLayout.aspectRatio.getter();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  AspectRatio.height(fromWidth:)();
  (*(v5 + 8))(v7, v4);
  [a2 pageContainerSize];
  v9 = v8;
  [a2 pageMarginInsets];
  v11 = v9 - v10;
  [a2 pageMarginInsets];
  v13 = v11 - v12;
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = v14;
  PageTraitEnvironment.pageColumnMargin.getter();
  if (v13 < (v15 + v16) * a1)
  {
    PageTraitEnvironment.pageColumnWidth.getter();
  }
}

id sub_1002A0B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v102 = a3;
  v6 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v6 - 8);
  v101 = &v83 - v7;
  v99 = type metadata accessor for OfferButtonSubtitlePosition();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10002849C(&unk_1009701A0);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v83 - v9;
  v10 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v10 - 8);
  v94 = &v83 - v11;
  v12 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v12 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v83 - v15;
  v16 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v16 - 8);
  v89 = &v83 - v17;
  v18 = type metadata accessor for VideoControls();
  __chkstk_darwin(v18 - 8);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v21 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v83 - v22;
  v24 = type metadata accessor for VideoFillMode();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for VideoConfiguration();
  v92 = *(v28 - 8);
  v93 = v28;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v4 contentView];
  if (PosterLockup.isDark.getter())
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  [v32 setOverrideUserInterfaceStyle:v33];

  v34 = PosterLockup.posterVideo.getter();
  if (v34)
  {
    v35 = v34;
    v87 = a1;
    *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;

    v36 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer];
    v86 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
    v37 = *(v36 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v84 = v31;
    v38 = v36;
    v39 = *(v37 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    *(v37 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
    sub_10047C6C8(v39);

    sub_10047B37C();
    v85 = v4;
    *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = v35;

    (*(v25 + 104))(v27, enum case for VideoFillMode.scaleAspectFill(_:), v24);
    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v40 = type metadata accessor for AspectRatio();
    (*(*(v40 - 8) + 56))(v23, 0, 1, v40);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    v41 = v84;
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v42 = v103;
    Video.playbackId.getter();
    v43 = v89;
    Video.videoUrl.getter();
    v44 = type metadata accessor for URL();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = v90;
    Video.templateMediaEvent.getter();
    v46 = v91;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1002A180C(&qword_100973190, type metadata accessor for VideoView);
    v88 = v42;
    v47 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v46, &unk_100973A50);
    sub_10002B894(v45, &unk_100973A50);
    sub_10002B894(v43, &qword_100982460);
    sub_10002B894(&v103, &qword_10096FB90);
    v48 = *(v38 + v86);
    if (v47)
    {
      v49 = v47;
      v50 = [v49 superview];
      if (v50)
      {
        v51 = v50;
        sub_100005744(0, &qword_100972EB0);
        v52 = v48;
        v53 = static NSObject.== infix(_:_:)();

        if (v53)
        {
          [v49 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v59 = *&v48[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v48[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v47;
    v60 = v47;
    sub_10047C6C8(v59);

    (*(v92 + 8))(v41, v93);
    v4 = v85;
  }

  else
  {
    v54 = PosterLockup.posterArtwork.getter();
    if (v54)
    {
      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = v54;

      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;

      v55 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
      v56 = *(*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v57 = *(v56 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      *(v56 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v55;
      v58 = v55;
      sub_10047C6C8(v57);

      sub_10047B37C();
    }

    else
    {
      v69 = *(*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v70 = *(v69 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      *(v69 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
      sub_10047C6C8(v70);

      sub_10047B37C();
      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;

      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;
    }
  }

  v61 = Lockup.title.getter();
  v62 = &v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle];
  *v62 = v61;
  v62[1] = v63;

  sub_10038A1E8();
  v64 = PosterLockup.epicHeading.getter();
  if (v64)
  {
    *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork] = v64;

    [*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:1];
  }

  else
  {
    v65 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
    if (v65)
    {
      [v65 setHidden:1];
    }

    v66 = v62[1];
    if (v66)
    {
      if ((v66 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v67 = *v62 & 0xFFFFFFFFFFFFLL;
      }

      v68 = v67 == 0;
    }

    else
    {
      v68 = 1;
    }

    [*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:v68];
  }

  v71 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton];
  v72 = Lockup.offerDisplayProperties.getter();
  v73 = Lockup.buttonAction.getter();
  v74 = sub_10002849C(&unk_100973240);
  v75 = v94;
  (*(*(v74 - 8) + 56))(v94, 1, 1, v74);
  v76 = v95;
  v77 = v99;
  (*(v95 + 104))(v96, enum case for OfferButtonSubtitlePosition.below(_:), v99);
  (*(v76 + 56))(v101, 1, 1, v77);
  sub_1002A180C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v78 = v97;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v72, v73, 0, v75, v78, v102, 0, 0);

  (*(v98 + 8))(v78, v100);
  sub_10002B894(v75, &unk_100973230);
  [v71 setOverrideUserInterfaceStyle:1];
  v79 = PosterLockup.footerText.getter();
  v80 = &v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText];
  *v80 = v79;
  v80[1] = v81;

  return sub_10038A36C();
}

uint64_t sub_1002A180C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002A1854(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Artwork.Crop();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PosterLockupLayout.Metrics();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v8 - 8);
  v53 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v10 - 8);
  v12 = v44 - v11;
  v13 = type metadata accessor for VideoConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspectRatio();
  v45 = *(v17 - 8);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 contentView];
  [v21 bounds];

  if (*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video])
  {
    v22 = *(*(*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v22)
    {
      v44[3] = type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v44[0] = v20;
        v44[2] = a1;
        v24 = qword_1009D2200;
        v25 = v17;
        v26 = v23;
        swift_beginAccess();
        v27 = *(v14 + 16);
        v44[1] = v26;
        v28 = v26 + v24;
        v29 = v25;
        v27(v16, v28, v13);

        v30 = v22;
        VideoConfiguration.aspectRatio.getter();
        (*(v14 + 8))(v16, v13);
        v31 = v45;
        if ((*(v45 + 48))(v12, 1, v25) != 1)
        {
          v43 = v44[0];
          (*(v31 + 32))(v44[0], v12, v29);
          AspectRatio.maxSize(filling:)();
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          sub_1002A180C(&unk_1009840E0, type metadata accessor for VideoView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          (*(v31 + 8))(v43, v29);
          v32 = &selRef__setDefaultAttributes_;
          goto LABEL_10;
        }

        sub_10002B894(v12, &unk_1009732A0);
      }
    }
  }

  v32 = &selRef__setDefaultAttributes_;
  if (*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork])
  {

    Artwork.config(_:mode:prefersLayeredImage:)();
    v33 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView;
    v34 = *&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v34 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v35 = *&v2[v33];
    type metadata accessor for ArtworkView();
    sub_1002A180C(&qword_100970E80, &type metadata accessor for ArtworkView);
    v36 = v35;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork])
  {

    [v2 bounds];
    v37 = v46;
    sub_10038A03C();
    [v2 bounds];
    static PosterLockupLayout.maximiumLogoArtworkSize(metrics:containerSize:)();
    (*(v47 + 8))(v37, v48);
    v38 = sub_10038A0E8();
    v39 = v50;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v51 + 8))(v39, v52);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v38 v32[481]];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    v40 = [objc_opt_self() clearColor];
    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_1002A180C(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v41 = *&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
    if (v41)
    {
      v42 = v41;
      [v42 setHidden:0];
    }
  }
}

uint64_t sub_1002A2134(char *a1, char *a2)
{
  v102 = a2;
  v116 = sub_10002849C(&qword_10096FE48);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v125 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v95 - v5;
  __chkstk_darwin(v6);
  v113 = &v95 - v7;
  v8 = sub_10002849C(&qword_10097D9F8);
  __chkstk_darwin(v8 - 8);
  v121 = &v95 - v9;
  v129 = type metadata accessor for PurchaseIntent();
  v109 = *(v129 - 8);
  __chkstk_darwin(v129);
  v120 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v95 - v12;
  v13 = type metadata accessor for LegacyAppState.AppInstallationDetails();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v107 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for LegacyAppState();
  v103 = *(v119 - 8);
  __chkstk_darwin(v119);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v95 - v18;
  v20 = sub_10002849C(&qword_100975D08);
  v133 = *(v20 - 8);
  v134 = v20;
  __chkstk_darwin(v20);
  v108 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v104 = (&v95 - v23);
  __chkstk_darwin(v24);
  v131 = (&v95 - v25);
  __chkstk_darwin(v26);
  v110 = (&v95 - v27);
  v28 = type metadata accessor for AppStore.AppStoreAction();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for AdamId();
  v32 = *(v132 - 8);
  __chkstk_darwin(v132);
  v34 = (&v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = ArcadePackOfferAction.offerActions.getter();
  v36 = v35;
  v130 = v35;
  if (v35 >> 62)
  {
    goto LABEL_93;
  }

  v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v118 = v13;
    v105 = v16;
    v111 = v19;
    if (!v37)
    {

      goto LABEL_12;
    }

    if (v37 < 1)
    {
      break;
    }

    v38 = 0;
    v127 = a1;
    v128 = (v36 & 0xC000000000000001);
    ObjectType = v32;
    v39 = (v29 + 8);
    do
    {
      v40 = v37;
      if (v128)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v38;
      OfferAction.adamId.getter();
      AdamId.stringValue.getter();
      (*(v32 + 8))(v34, v132);
      defaultStoreKitAppAction.getter();
      setStoreKitLastAppAction(adamId:app:)();

      (*v39)(v31, v28);
      v37 = v40;
    }

    while (v40 != v38);

    v19 = v111;
    v32 = ObjectType;
LABEL_12:
    v16 = sub_10002849C(&unk_100973AF0);
    v28 = type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v123 = v135[0];
    v130 = v135[1];
    v41 = ArcadePackOfferAction.offerActions.getter();
    if (v41 >> 62)
    {
      v16 = v41;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v41 = v16;
    }

    else
    {
      v29 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v119;
    v101 = v28;
    if (v29)
    {
      v42 = v41;
      v135[0] = _swiftEmptyArrayStorage;
      sub_100144410(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        goto LABEL_96;
      }

      v43 = v135[0];
      ObjectType = swift_getObjectType();
      v127 = v29;
      v44 = 0;
      v45 = v42;
      v124 = v42 & 0xC000000000000001;
      v122 = (v32 + 8);
      v128 = v42;
      do
      {
        v16 = v43;
        if (v124)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v31 = *&v45[8 * v44 + 32];
        }

        OfferAction.adamId.getter();
        v46 = dispatch thunk of AppStateController.stateMachine(forApp:)();
        v48 = v47;
        (*v122)(v34, v132);
        v29 = swift_getObjectType();
        OfferAction.includeBetaApps.getter();
        v49 = v134;
        v50 = v131;
        dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
        v51 = v50;
        v52 = (v50 + *(v49 + 64));
        *v50 = v31;
        *v52 = v46;
        v52[1] = v48;
        v43 = v16;
        v135[0] = v16;
        v28 = *(v16 + 16);
        v53 = *(v16 + 24);
        if (v28 >= v53 >> 1)
        {
          sub_100144410(v53 > 1, v28 + 1, 1);
          v51 = v131;
          v43 = v135[0];
        }

        v44 = (v44 + 1);
        *(v43 + 2) = v28 + 1;
        sub_1000476A0(v51, v43 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v28, &qword_100975D08);
        v45 = v128;
      }

      while (v127 != v44);

      a1 = v119;
      v19 = v111;
    }

    else
    {

      v43 = _swiftEmptyArrayStorage;
    }

    v34 = v110;
    v132 = *(v43 + 2);
    if (v132)
    {
      v13 = 0;
      v130 = (v103 + 88);
      v131 = (v103 + 16);
      LODWORD(v124) = enum case for LegacyAppState.paused(_:);
      v117 = (v103 + 8);
      v127 = (v103 + 96);
      v32 = (v112 + 4);
      ++v112;
      v16 = &qword_100975D08;
      v28 = &unk_1007BA9A8;
      while (v13 < *(v43 + 2))
      {
        ObjectType = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v29 = *(v133 + 72);
        sub_100031660(v43 + ObjectType + v29 * v13, v34, &qword_100975D08);
        v54 = v34 + *(v134 + 48);
        v128 = *v131;
        (v128)(v19, v54, a1);
        v31 = *v130;
        v55 = (*v130)(v19, a1);
        if (v55 == v124)
        {
          (*v127)(v19, a1);
          v56 = v107;
          v57 = v19;
          v58 = v118;
          (*v32)(v107, v57, v118);
          v59 = LegacyAppState.AppInstallationDetails.downloadingPhaseProgress.getter();
          [v59 resume];

          a1 = v119;
          v60 = v56;
          v34 = v110;
          v61 = v58;
          v19 = v111;
          (*v112)(v60, v61);
        }

        else
        {
          (*v117)(v19, a1);
        }

        ++v13;
        sub_10002B894(v34, &qword_100975D08);
        if (v132 == v13)
        {
          v16 = 0;
          LODWORD(v122) = enum case for LegacyAppState.waiting(_:);
          LODWORD(v111) = enum case for LegacyAppState.purchased(_:);
          LODWORD(v110) = enum case for LegacyAppState.updatable(_:);
          LODWORD(v103) = enum case for LegacyAppState.downloadable(_:);
          v100 = enum case for LegacyAppState.downloading(_:);
          v99 = enum case for LegacyAppState.installing(_:);
          v98 = enum case for LegacyAppState.openable(_:);
          v97 = enum case for LegacyAppState.buyable(_:);
          v96 = enum case for LegacyAppState.installed(_:);
          v95 = enum case for LegacyAppState.unknown(_:);
          v32 = v43 + ObjectType;
          LODWORD(v107) = enum case for PurchaseType.preorder(_:);
          v13 = _swiftEmptyArrayStorage;
          v28 = v105;
          v34 = v104;
          v19 = v128;
          while (1)
          {
            if (v16 >= *(v43 + 2))
            {
              goto LABEL_90;
            }

            sub_100031660(v32, v34, &qword_100975D08);
            (v19)(v28, v34 + *(v134 + 48), a1);
            v63 = (v31)(v28, a1);
            if (v63 == v122)
            {
              break;
            }

            if (v63 == v111)
            {
              (*v127)(v28, a1);
              v65 = type metadata accessor for PurchaseType();
              v66 = v28;
              v67 = *(v65 - 8);
              v68 = (*(v67 + 88))(v66, v65);
              if (v68 == v107)
              {
                goto LABEL_50;
              }

              v62 = v105;
              (*(v67 + 8))(v105, v65);
              v28 = v62;
              v19 = v128;
              v34 = v104;
              a1 = v119;
            }

            else
            {
              if (v63 == v110 || v63 == v103)
              {
                (*v117)(v28, a1);
LABEL_50:
                sub_1000476A0(v34, v108, &qword_100975D08);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v135[0] = v13;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100144410(0, *(v13 + 16) + 1, 1);
                  v13 = v135[0];
                }

                a1 = v119;
                v71 = *(v13 + 16);
                v70 = *(v13 + 24);
                if (v71 >= v70 >> 1)
                {
                  sub_100144410(v70 > 1, v71 + 1, 1);
                  a1 = v119;
                  v13 = v135[0];
                }

                *(v13 + 16) = v71 + 1;
                sub_1000476A0(v108, v13 + ObjectType + v71 * v29, &qword_100975D08);
                v28 = v105;
                v34 = v104;
                v19 = v128;
                goto LABEL_35;
              }

              if (v63 == v124 || v63 == v100 || v63 == v99)
              {
                (*v127)(v28, a1);
                (*v112)(v28, v118);
                goto LABEL_34;
              }

              if (v63 == v98)
              {
                (*v127)(v28, a1);

                v64 = type metadata accessor for OpenableDestination();
                goto LABEL_39;
              }

              if (v63 == v97)
              {
                goto LABEL_50;
              }

              a1 = v119;
              v28 = v105;
              if (v63 != v96)
              {
                if (v63 == v95)
                {
                  goto LABEL_50;
                }

                v28 = v105;
                a1 = v119;
                (*v117)(v105, v119);
              }
            }

LABEL_34:
            sub_10002B894(v34, &qword_100975D08);
LABEL_35:
            ++v16;
            v32 += v29;
            if (v132 == v16)
            {
              goto LABEL_62;
            }
          }

          (*v127)(v28, a1);
          v64 = type metadata accessor for InstallationType();
LABEL_39:
          (*(*(v64 - 8) + 8))(v28, v64);
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
LABEL_62:

      type metadata accessor for AdHeaderProvider();
      a1 = v102;
      BaseObjectGraph.optional<A>(_:)();
      v130 = v135[0];
      v132 = *(v13 + 16);
      if (!v132)
      {
        v76 = _swiftEmptyArrayStorage;
        v131 = _swiftEmptyArrayStorage;
LABEL_85:

        if (*(v76 + 2))
        {
          sub_10002849C(&qword_100970D48);
          v86 = static _DictionaryStorage.allocate(capacity:)();
        }

        else
        {
          v86 = &_swiftEmptyDictionarySingleton;
        }

        v135[0] = v86;

        sub_1002A41C0(v87, 1, v135);

        v88 = v135[0];
        sub_10002849C(&qword_1009764A0);
        v89 = Promise.__allocating_init()();
        type metadata accessor for Commerce();
        v90 = v102;
        inject<A, B>(_:from:)();
        dispatch thunk of Commerce.purchase(with:)();

        v91 = swift_allocObject();
        *(v91 + 16) = v88;
        *(v91 + 24) = v90;
        v92 = sub_1000076C0();

        v93 = static OS_dispatch_queue.main.getter();
        v135[3] = v92;
        v135[4] = &protocol witness table for OS_dispatch_queue;
        v135[0] = v93;
        Promise.then(perform:orCatchError:on:)();

        swift_unknownObjectRelease();

        sub_100007000(v135);
        return v89;
      }

      v19 = 0;
      v34 = (v109 + 48);
      v32 = v109 + 32;
      v131 = _swiftEmptyArrayStorage;
      while (v19 < *(v13 + 16))
      {
        v29 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v16 = *(v133 + 72);
        v28 = *(v13 + v29 + v16 * v19);
        if (v130)
        {
          sub_10002849C(&qword_10097DA00);
          Box.read<A>(with:)();
        }

        swift_unknownObjectRetain();

        v31 = v121;
        PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)();
        a1 = v129;
        if ((*v34)(v31, 1, v129) == 1)
        {
          sub_10002B894(v31, &qword_10097D9F8);
        }

        else
        {
          v28 = *v32;
          v72 = v106;
          (*v32)(v106, v31, a1);
          (v28)(v120, v72, a1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_100034C04(0, *(v131 + 2) + 1, 1, v131);
          }

          v74 = *(v131 + 2);
          v73 = *(v131 + 3);
          a1 = (v74 + 1);
          if (v74 >= v73 >> 1)
          {
            v131 = sub_100034C04(v73 > 1, v74 + 1, 1, v131);
          }

          v75 = v131;
          *(v131 + 2) = a1;
          (v28)(v75 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v74, v120, v129);
        }

        if (v132 == ++v19)
        {
          v32 = 0;
          v29 += v13;
          v76 = _swiftEmptyArrayStorage;
          v28 = &qword_10096FE48;
          v34 = &unk_1007B14E0;
          while (v32 < *(v13 + 16))
          {
            a1 = *v29;
            v77 = OfferAction.buyCompletedAction.getter();
            if (v77)
            {
              v78 = v77;
              v134 = v16;
              v79 = v13;
              v31 = *(v116 + 48);
              v80 = v34;
              v81 = v28;
              v82 = v114;
              OfferAction.adamId.getter();
              *&v82[v31] = v78;
              v83 = v82;
              v28 = v81;
              v34 = v80;
              v84 = v113;
              sub_1000476A0(v83, v113, v28);
              sub_1000476A0(v84, v125, v28);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v76 = sub_100034BE0(0, *(v76 + 2) + 1, 1, v76);
              }

              v19 = *(v76 + 2);
              v85 = *(v76 + 3);
              a1 = (v19 + 1);
              v13 = v79;
              if (v19 >= v85 >> 1)
              {
                v76 = sub_100034BE0(v85 > 1, v19 + 1, 1, v76);
              }

              v16 = v134;
              *(v76 + 2) = a1;
              sub_1000476A0(v125, v76 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v19, v28);
            }

            ++v32;
            v29 += v16;
            if (v132 == v32)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_92;
        }
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v130;
  }

  __break(1u);
LABEL_96:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1002A3650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v90 = a1;
  v4 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v4 - 8);
  v88 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v83 - v7;
  __chkstk_darwin(v9);
  v11 = &v83 - v10;
  v12 = type metadata accessor for AdamId();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v83 - v17;
  v18 = sub_10002849C(&qword_10097DA08);
  __chkstk_darwin(v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = *(a2 + 64);
  v91 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v85 = (v24 + 63) >> 6;
  v86 = a2;
  v98 = v13 + 16;
  v95 = (v13 + 32);
  v93 = v13;
  v100 = (v13 + 8);
  v27 = &v83 - v22;

  v29 = 0;
  v87 = v8;
  v96 = v11;
  v101 = v12;
  v102 = v15;
  v94 = v20;
  v89 = v27;
  while (1)
  {
    if (!v26)
    {
      if (v85 <= v29 + 1)
      {
        v31 = v29 + 1;
      }

      else
      {
        v31 = v85;
      }

      v32 = v31 - 1;
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30 >= v85)
        {
          v56 = sub_10002849C(&qword_10097DA10);
          (*(*(v56 - 8) + 56))(v20, 1, 1, v56);
          v26 = 0;
          v29 = v32;
          goto LABEL_18;
        }

        v26 = *(v91 + 8 * v30);
        ++v29;
        if (v26)
        {
          v29 = v30;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v30 = v29;
LABEL_17:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v86;
    v36 = v93;
    v37 = v99;
    v38 = v101;
    (*(v93 + 16))(v99, *(v86 + 48) + *(v93 + 72) * v34, v101);
    v39 = *(*(v35 + 56) + 8 * v34);
    v40 = sub_10002849C(&qword_10097DA10);
    v41 = *(v40 + 48);
    v42 = *(v36 + 32);
    v12 = v38;
    v20 = v94;
    v42(v94, v37, v12);
    *&v20[v41] = v39;
    (*(*(v40 - 8) + 56))(v20, 0, 1, v40);

    v15 = v102;
    v11 = v96;
LABEL_18:
    v43 = v89;
    sub_1000476A0(v20, v89, &qword_10097DA08);
    v44 = sub_10002849C(&qword_10097DA10);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      break;
    }

    v45 = *(v43 + *(v44 + 48));
    (*v95)(v15, v43, v12);
    v46 = BulkPurchaseResult.purchasedApps.getter();
    if (*(v46 + 16))
    {
      v92 = v45;
      sub_1002A471C(&qword_100970CD8, &type metadata accessor for AdamId);
      v47 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v48 = -1 << *(v46 + 32);
      v49 = v47 & ~v48;
      v97 = (v46 + 56);
      if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
      {
        v50 = ~v48;
        v51 = *(v93 + 72);
        v52 = *(v93 + 16);
        while (1)
        {
          v53 = v99;
          v54 = v101;
          v52(v99, *(v46 + 48) + v51 * v49, v101);
          sub_1002A471C(&qword_100972728, &type metadata accessor for AdamId);
          v55 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v100)(v53, v54);
          if (v55)
          {
            break;
          }

          v49 = (v49 + 1) & v50;
          if (((*&v97[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_1005D0214(v92, 1, v84);

        v11 = v96;
        v12 = v101;
        v15 = v102;
        v20 = v94;
      }

      else
      {
LABEL_5:

        v11 = v96;
        v12 = v101;
        v15 = v102;
        v20 = v94;
      }
    }

    else
    {
    }

    result = (*v100)(v15, v12);
  }

  type metadata accessor for InAppMessagesManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v102 = v103;
  result = BulkPurchaseResult.numberOfPurchasedArcadeGames.getter();
  if (result < 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v57 = result;
  if (result)
  {
    v58 = objc_opt_self();
    v100 = "tArcadeGameInstallDSID";
    v101 = "Provider with error";
    v99 = "timeSinceLastArcadeGameInstall";
    v97 = v58;
    v98 = 0xD000000000000014;
    v59 = &unk_1007BB7C0;
    do
    {
      v61 = v102;
      v62 = *(v102 + 2);
      v63 = objc_allocWithZone(IAMCountableEvent);
      v64 = String._bridgeToObjectiveC()();
      v65 = [v63 initWithName:v64];

      [v62 receiveEvent:v65];
      v66 = [*(*(v61 + 3) + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
      v67 = [v66 ams_DSID];

      v68 = v59;
      v69 = v97;
      v70 = [v97 standardUserDefaults];
      v71 = v67;
      v72 = String._bridgeToObjectiveC()();
      v73 = v87;
      [v70 setObject:v71 forKey:v72];

      Date.init()();
      v74 = type metadata accessor for Date();
      v75 = v11;
      v76 = *(v74 - 8);
      (*(v76 + 56))(v75, 0, 1, v74);
      v77 = v69;
      v59 = v68;
      v78 = [v77 standardUserDefaults];
      sub_100031660(v75, v73, &qword_100979710);
      v79 = v88;
      sub_100031660(v73, v88, &qword_100979710);
      v80 = (*(v76 + 48))(v79, 1, v74);
      isa = 0;
      if (v80 != 1)
      {
        v82 = v88;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v73 = v87;
        (*(v76 + 8))(v82, v74);
      }

      v60 = String._bridgeToObjectiveC()();
      [v78 setObject:isa forKey:v60];

      swift_unknownObjectRelease();
      sub_10002B894(v73, &qword_100979710);
      v11 = v96;
      sub_10002B894(v96, &qword_100979710);
      --v57;
    }

    while (v57);
  }
}

uint64_t sub_1002A3FEC()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.sensitive(_:)();
  sub_10002B894(v4, &unk_1009711D0);
  Logger.error(_:)();
}

uint64_t sub_1002A41C0(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for AdamId();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10096FE48);
  __chkstk_darwin(v11);
  v15 = v56 - v14;
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v56[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v62 = a1;
  v56[0] = v17;
  sub_100031660(a1 + v17, v56 - v14, &qword_10096FE48);
  v57 = v8;
  v63 = *(v8 + 32);
  v64 = v7;
  v63(v10, v15, v7);
  v59 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1003D7438(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_10004F338(v25, a2 & 1);
    v20 = sub_1003D7438(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_100054E14();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v67 = v28;
    swift_errorRetain();
    sub_10002849C(&qword_10098A690);
    v29 = swift_dynamicCast();
    v30 = v64;
    if ((v29 & 1) == 0)
    {

      (*(v57 + 8))(v10, v30);
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v58 = *(v57 + 72);
  v35 = v20;
  v63((v34 + v58 * v20), v10, v64);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v62;
    if (v61 == 1)
    {
    }

    v39 = v62 + v60 + v56[0];
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_100031660(v39, v15, &qword_10096FE48);
      v63(v10, v15, v64);
      v41 = *&v15[v59];
      v42 = *a3;
      v43 = sub_1003D7438(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_10004F338(v47, 1);
        v43 = sub_1003D7438(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v63((v50[6] + v58 * v43), v10, v64);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v60;
      v38 = v62;
      if (v61 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v54._object = 0x800000010080B8A0;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v54);
  _print_unlocked<A, B>(_:_:)();
  v55._countAndFlagsBits = 39;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A471C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002A4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Artwork.Crop();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18[1] = a2;

    Artwork.crop.getter();
    v13 = (*(a4 + 32))(v12, a3, a4);
    (*(v10 + 8))(v12, v9);
    (*(a4 + 24))(a3, a4);
    v18[0] = v13;
    Artwork.config(_:mode:prefersLayeredImage:)();
    v14 = *(a4 + 16);
    v15 = v14(a3, a4);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v15 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v16 = v14(a3, a4);
    [v16 setContentMode:v18[0]];

    v17 = v14(a3, a4);
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_1002A4A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = v6(a3, a4);
  ArtworkView.isImageHidden.setter();

  v8 = v6(a3, a4);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double *sub_1002A4AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100143F04(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_10002C0AC(v4, v16);
      sub_10002849C(&unk_10097E950);
      sub_10002849C(&unk_10097E960);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_100143F04((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_100047650(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_1000B3484(v6, v12, &v20, v7, v8);
      sub_100007000(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double *sub_1002A4CCC(uint64_t a1)
{
  v2 = type metadata accessor for VerticalSpaceMeasurable();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100143F64(0, v6, 0);
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
      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_100143F64((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for VerticalSpaceMeasurable;
      v14 = sub_1000056E0(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      *(v21 + 2) = v13 + 1;
      sub_100005A38(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_1002A4E98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100143FA4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          sub_100143FA4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v7 + 1;
        sub_100056164(v12, &v3[4 * v7 + 4]);
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
        v11 = *(v3 + 2);
        v10 = *(v3 + 3);
        if (v11 >= v10 >> 1)
        {
          sub_100143FA4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v11 + 1;
        sub_100056164(v12, &v3[4 * v11 + 4]);
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

double *sub_1002A5064(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_100143FA4(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_10002849C(&qword_10096FCA0);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_100143FA4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 2) = v6 + 1;
      sub_100056164(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1002A5208(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, double *))
{
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
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
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = v11;
        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v22(v15 > 1, v16 + 1, 1);
          v11 = v26;
        }

        ++v13;
        v24 = a3(0);
        v25 = a4;
        v23[0] = v14;
        *(v11 + 2) = v16 + 1;
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
        v19 = *(v11 + 2);
        v20 = *(v11 + 3);
        v21 = v18;
        if (v19 >= v20 >> 1)
        {
          v22(v20 > 1, v19 + 1, 1);
          v11 = v26;
        }

        v24 = a3(0);
        v25 = a4;
        v23[0] = v21;
        *(v11 + 2) = v19 + 1;
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

char *sub_1002A548C(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = &_swiftEmptyArrayStorage;
  result = sub_100143FA4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100005744(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 2);
        v8 = *(v5 + 3);
        if (v9 >= v8 >> 1)
        {
          sub_100143FA4((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 2) = v9 + 1;
        sub_100056164(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_100005744(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 2);
        v12 = *(v5 + 3);
        if (v13 >= v12 >> 1)
        {
          sub_100143FA4((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 2) = v13 + 1;
        sub_100056164(v14, &v5[4 * v13 + 4]);
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

double *sub_1002A5678(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
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
  result = sub_100143F04(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          sub_100143F04((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LayoutViewPlaceholder();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v6;
        *(v3 + 2) = v8 + 1;
        sub_100005A38(&v13, &v3[5 * v8 + 4]);
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
        v11 = *(v3 + 2);
        v12 = *(v3 + 3);

        if (v11 >= v12 >> 1)
        {
          sub_100143F04((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LayoutViewPlaceholder();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v10;
        *(v3 + 2) = v11 + 1;
        sub_100005A38(&v13, &v3[5 * v11 + 4]);
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

double *sub_1002A5878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001443AC(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_10002849C(&unk_100984350);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (*&v6 >= *&v5 >> 1)
      {
        sub_1001443AC((*&v5 > 1uLL), *&v6 + 1, 1);
        v4 = v8;
      }

      *&_swiftEmptyArrayStorage[2] = *&v6 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_1002A5990(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
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
  result = sub_100143F04(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          sub_100143F04((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100005744(0, &qword_100972EB0);
        v16 = &protocol witness table for UIView;
        *&v14 = v6;
        *(v3 + 2) = v8 + 1;
        sub_100005A38(&v14, &v3[5 * v8 + 4]);
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
        v12 = *(v3 + 2);
        v11 = *(v3 + 3);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_100143F04((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100005744(0, &qword_100972EB0);
        v16 = &protocol witness table for UIView;
        *&v14 = v13;
        *(v3 + 2) = v12 + 1;
        sub_100005A38(&v14, &v3[5 * v12 + 4]);
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

double *sub_1002A5BCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
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
  result = sub_100144450(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          sub_100144450((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100005744(0, &qword_100982AC0);
        v16 = sub_1002A6AF0();
        *&v14 = v6;
        *(v3 + 2) = v8 + 1;
        sub_100005A38(&v14, &v3[5 * v8 + 4]);
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
        v11 = *(v3 + 2);
        v12 = *(v3 + 3);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_100144450((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100005744(0, &qword_100982AC0);
        v16 = sub_1002A6AF0();
        *&v14 = v13;
        *(v3 + 2) = v11 + 1;
        sub_100005A38(&v14, &v3[5 * v11 + 4]);
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

double *sub_1002A5DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_100144490(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_10002849C(&qword_10096FC88);
      sub_10002849C(&qword_10096FE00);
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 2);
      v6 = *(v2 + 3);
      if (v7 >= v6 >> 1)
      {
        sub_100144490((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 2) = v7 + 1;
      sub_100005A38(&v9, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double *sub_1002A5F94(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = &_swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v22 = &_swiftEmptyArrayStorage;
  result = sub_1001442CC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = v9;
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          sub_1001442CC((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_1002A6AA8(a3, a4);
        *&v19 = v12;
        *(v9 + 2) = v14 + 1;
        sub_100005A38(&v19, &v9[5 * v14 + 4]);
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
        v18 = *(v9 + 2);
        v17 = *(v9 + 3);

        if (v18 >= v17 >> 1)
        {
          sub_1001442CC((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_1002A6AA8(a3, a4);
        *&v19 = v16;
        *(v9 + 2) = v18 + 1;
        sub_100005A38(&v19, &v9[5 * v18 + 4]);
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

uint64_t sub_1002A6190(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    sub_100005744(0, a2);

    v5 = _bridgeCocoaArray<A>(_:)();

    return v5;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, a2);
    return a1;
  }
}

double *sub_1002A62D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001445B8(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (*&v5 >= *&v4 >> 1)
      {
        sub_1001445B8((*&v4 > 1uLL), *&v5 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v5 + 1;
      v6 = &_swiftEmptyArrayStorage[5 * *&v5];
      *(v6 + 8) = v10;
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_1002A63D8(uint64_t a1)
{
  v16 = sub_10002849C(&qword_10096FE60);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_10002849C(&qword_100975D18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1001445F8(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1002A6B58(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_1001445F8(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 2) = v14 + 1;
      sub_1002A6BC8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

double *sub_1002A6638(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100144658(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (*&v7 >= *&v6 >> 1)
        {
          v9 = v5;
          sub_100144658((*&v6 > 1uLL), *&v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        *&_swiftEmptyArrayStorage[2] = *&v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * *&v7];
        *(v8 + 4) = v5;
        *(v8 + 5) = &protocol witness table for MSOPersonalizationDataSource;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * *&v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (*&v11 >= *&v14 >> 1)
        {
          sub_100144658((*&v14 > 1uLL), *&v11 + 1, 1);
        }

        *&_swiftEmptyArrayStorage[2] = *&v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        *(v15 + 4) = v13;
        *(v15 + 5) = &protocol witness table for MSOPersonalizationDataSource;
        v12 += 2;
        ++v10;
        ++*&v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

double *UITabBarController.tabItems.getter()
{
  v1 = [v0 tabBar];
  v2 = [v1 items];

  if (v2)
  {
    sub_100005744(0, &qword_100982AC0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_1002A5BCC(v3);
  }

  return v2;
}

double *sub_1002A68B4()
{
  v1 = [*v0 tabBar];
  v2 = [v1 items];

  if (v2)
  {
    sub_100005744(0, &qword_100982AC0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_1002A5BCC(v3);
  }

  return v2;
}

uint64_t UITabBarItem.tab.getter()
{
  [v0 tag];

  return NavigationTab.init(intValue:)();
}

uint64_t UITabBarItem.badge.getter()
{
  v1 = [v0 badgeValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002A69FC()
{
  [*v0 tag];

  return NavigationTab.init(intValue:)();
}

uint64_t sub_1002A6A40()
{
  v1 = [*v0 badgeValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002A6AA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002A6AF0()
{
  result = qword_10097DA28;
  if (!qword_10097DA28)
  {
    sub_100005744(255, &qword_100982AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA28);
  }

  return result;
}

uint64_t sub_1002A6B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A6BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975D18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double *sub_1002A6C68(void (*a1)(void))
{
  v3 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_19:
    v5 = _CocoaArrayWrapper.endIndex.getter();
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
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v6 != v5);
LABEL_20:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002A6E28()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009CEC60 = v0;
  unk_1009CEC68 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009CEC48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1002A6EE4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for BundleSearchResultContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView]];

  return v15;
}

id sub_1002A711C()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for BundleSearchResultContentView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  v2 = sub_1000AB0CC();
  v4 = v3;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v16);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v17);
  [v1 setFrame:{MinX, MinY, v2, v4}];
  v7 = 0.0;
  if ((MetadataRibbonView.hasContent.getter() & 1) == 0 && (sub_100045A48() & 1) == 0)
  {
    if (qword_10096D550 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009CEC48, qword_1009CEC60);
    v8 = [v0 traitCollection];
    AnyDimension.value(with:)();
    v7 = v9;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  Height = CGRectGetHeight(v18);
  v19.origin.x = MinX;
  v19.origin.y = MinY;
  v19.size.width = v2;
  v19.size.height = v4;
  v11 = Height - (v7 + CGRectGetHeight(v19));
  LayoutMarginsAware<>.layoutFrame.getter();
  v12 = CGRectGetMinX(v20);
  v21.origin.x = MinX;
  v21.origin.y = MinY;
  v21.size.width = v2;
  v21.size.height = v4;
  v13 = v7 + CGRectGetMaxY(v21);
  LayoutMarginsAware<>.layoutFrame.getter();
  return [*&v0[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView] setFrame:{v12, v13, CGRectGetWidth(v22), v11}];
}

uint64_t sub_1002A7388(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  type metadata accessor for BundleSearchResult();
  sub_1002A9030(&qword_10097C378, 255, &type metadata accessor for BundleSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v14[1])
  {
    v10 = BundleSearchResult.lockup.getter();
    v11 = type metadata accessor for ItemLayoutContext();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a1, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_100279F24(v10, v8, a2);

    sub_10002B894(v8, &unk_1009731E0);
    BundleSearchResult.lockup.getter();
    v13 = Lockup.children.getter();

    if (!v13)
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_100209EF0(v13);

    [v3 setNeedsLayout];
  }

  return result;
}

id sub_1002A75AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002A7650()
{
  sub_1000ACF48();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView);
  sub_100209ADC();
  sub_100209D0C();
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView);
  v3 = v2;
  v4 = v2;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v3);
}

uint64_t sub_1002A7738(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1002A9030(&qword_10097DA70, a2, type metadata accessor for BundleSearchResultContentView);
  result = sub_1002A9030(&qword_10097DA78, v3, type metadata accessor for BundleSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002A77BC(uint64_t a1)
{
  v2 = type metadata accessor for Artwork.Style();
  v116 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v88[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SmallSearchLockupLayout();
  v115 = *(v5 - 8);
  __chkstk_darwin(v5);
  v114 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v108 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LabelPlaceholderCompatibility();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for OfferButtonMetrics();
  v122 = *(v11 - 8);
  v123 = v11;
  __chkstk_darwin(v11);
  v13 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v121 = &v88[-v15];
  v128 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v120 = *(v128 - 8);
  __chkstk_darwin(v128);
  v113 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v127 = &v88[-v18];
  v19 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v19 - 8);
  v107 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v125 = &v88[-v22];
  v23 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v23 - 8);
  v24 = type metadata accessor for PageGrid();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v126 = &v88[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for BundleSearchResult();
  sub_1002A9030(&qword_10097C378, 255, &type metadata accessor for BundleSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v124 = v165[0];
  if (v165[0])
  {
    v101 = v5;
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    BundleSearchResult.lockup.getter();
    v28 = Lockup.title.getter();
    v94 = v29;
    v95 = v28;

    BundleSearchResult.lockup.getter();
    v30 = Lockup.subtitle.getter();
    v96 = v31;
    v97 = v30;

    BundleSearchResult.lockup.getter();
    v117 = MixedMediaLockup.metadataRibbonItems.getter();

    (*(v118 + 56))(v125, 1, 1, v119);
    BundleSearchResult.lockup.getter();
    MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v32 = v165[5];
    PageGrid.componentMeasuringSize(spanning:)();
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v33 = v128;
    v34 = sub_1000056A8(v128, qword_1009CDC00);
    v98 = *(v120 + 16);
    v99 = v120 + 16;
    v98(v127, v34, v33);
    v35 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v105 = v2;
    v106 = a1;
    v103 = v24;
    v104 = v4;
    v102 = v25;
    if (v35)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v36 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v36 = qword_100991028;
    }

    v37 = v123;
    v38 = sub_1000056A8(v123, v36);
    v39 = v122;
    (*(v122 + 16))(v13, v38, v37);
    (*(v39 + 32))(v121, v13, v37);
    v40 = [v32 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v93 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v100 = LayoutViewPlaceholder.init(representing:)();
    v41 = objc_opt_self();
    v91 = v41;
    v42 = [v41 preferredFontForTextStyle:UIFontTextStyleBody];
    v43 = type metadata accessor for Feature();
    v165[3] = v43;
    v44 = sub_1002A9030(&qword_100972E50, 255, &type metadata accessor for Feature);
    v165[4] = v44;
    v90 = v44;
    v45 = sub_1000056E0(v165);
    v46 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92 = *(*(v43 - 8) + 104);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    isFeatureEnabled(_:)();
    v109 = v32;
    sub_100007000(v165);
    v47 = v110;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v48 = v112;
    v111 = *(v111 + 8);
    (v111)(v47, v112);
    v49 = [v41 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v164[3] = v43;
    v164[4] = v44;
    v50 = sub_1000056E0(v164);
    v51 = v46;
    v52 = v92;
    v92(v50, v51, v43);
    isFeatureEnabled(_:)();
    sub_100007000(v164);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v53 = v111;
    (v111)(v47, v48);
    v54 = [v91 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v163[3] = v43;
    v163[4] = v90;
    v55 = sub_1000056E0(v163);
    v52(v55, v89, v43);
    isFeatureEnabled(_:)();
    sub_100007000(v163);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v53(v47, v48);
    v56 = v117;
    LODWORD(v112) = sub_1000AE138(0, v117) & (v56 != 0);
    if (v112 == 1)
    {
      v57 = v93;
      v58 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v59 = v109;
      v60 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v61 = v107;
      sub_1001EB5B0(v125, v107);
      v63 = v118;
      v62 = v119;
      v64 = *(v118 + 48);
      if (v64(v61, 1, v119) == 1)
      {
        v65 = v108;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v64(v61, 1, v62) != 1)
        {
          sub_10002B894(v61, &unk_1009912C0);
        }
      }

      else
      {
        v65 = v108;
        (*(v63 + 32))(v108, v61, v62);
      }

      v67 = v60;
      sub_1000AD91C(v56, v65, v67);

      (*(v63 + 8))(v65, v62);
      swift_allocObject();
      v66 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v57 = v93;
      swift_allocObject();
      v66 = LayoutViewPlaceholder.init(representing:)();
    }

    v68 = v66;

    sub_1000AE138(0, 0);
    swift_allocObject();
    v69 = LayoutViewPlaceholder.init(representing:)();
    v70 = v127;
    v98(v113, v127, v128);
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v161 = v57;
    v160 = v100;
    v159 = 0;
    *&v157[40] = 0u;
    v158 = 0u;
    sub_10002C0AC(v165, v157);
    sub_10002C0AC(v164, &v156);
    v155 = 0;
    v153 = 0u;
    v154 = 0u;
    v152 = 0;
    v150 = 0u;
    v151 = 0u;

    v71 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
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
    sub_10002C0AC(v163, v135);
    v133 = v57;
    v134 = &protocol witness table for LayoutViewPlaceholder;
    v131 = &protocol witness table for LayoutViewPlaceholder;
    v132 = v68;
    v130 = v57;
    v129 = v69;
    v72 = v114;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1007B0B70;
    v74 = v109;
    *(v73 + 32) = v109;
    v75 = v74;
    v76 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1002A9030(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
    v77 = v101;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v115 + 8))(v72, v77);
    sub_100007000(v163);
    sub_100007000(v164);
    sub_100007000(v165);
    (*(v122 + 8))(v121, v123);
    (*(v120 + 8))(v70, v128);
    sub_10002B894(v125, &unk_1009912C0);
    v78 = v116;
    v80 = v104;
    v79 = v105;
    (*(v116 + 104))(v104, enum case for Artwork.Style.roundedRect(_:), v105);
    v81 = v126;
    PageGrid.componentMeasuringSize(spanning:)();
    BundleSearchResult.lockup.getter();
    v82 = Lockup.children.getter();

    if (!v82)
    {
      v82 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for BundleView();
    v83 = sub_100079F24();
    swift_getObjectType();
    sub_10020BCC0(v80, v82, v83);
    swift_unknownObjectRelease();

    (*(v78 + 8))(v80, v79);
    BundleSearchResult.lockup.getter();
    v84 = MixedMediaLockup.searchTagRibbonItems.getter();
    v85 = MixedMediaLockup.metadataRibbonItems.getter();
    v86 = sub_1000AE138(v84, v85);

    if (v86)
    {
      (*(v102 + 8))(v81, v103);
    }

    else
    {
      if (qword_10096D550 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009CEC48, qword_1009CEC60);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v87 = v165[0];
      AnyDimension.value(with:)();

      return (*(v102 + 8))(v126, v103);
    }
  }

  return result;
}

void sub_1002A8908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  sub_10002C0AC(a1, v17);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for BundleSearchResult();
  if (swift_dynamicCast())
  {
    BundleSearchResult.lockup.getter();
    v7 = Lockup.icon.getter();

    if (v7)
    {
      v8 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v16 = *(v2 + OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView);
      v9 = qword_10096EE80;
      v10 = *(v16 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v11, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v10 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v10 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v12 = *(v16 + v8);
      type metadata accessor for ArtworkView();
      sub_1002A9030(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
      v13 = v12;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    BundleSearchResult.lockup.getter();
    v14 = Lockup.children.getter();

    if (v14)
    {
      sub_100208FF4(v14, a2);
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView) + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
    sub_10032A784(a1, a2);
  }
}

void sub_1002A8C2C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView];
  v3 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v40, v5);

  v6 = *(v2 + v3);
  type metadata accessor for ArtworkView();
  sub_1002A9030(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v8 = *(v2 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v9 = *&v8[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
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
        ArtworkView.setImage(image:animated:)(v41, v14);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v11 += 16;
      --v10;
    }

    while (v10);

    v1 = v36;
  }

  v37 = *&v1[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView];
  v15 = sub_1002A6C68(type metadata accessor for BundleChildView);
  v16 = v15;
  if (v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
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
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
    v22 = *&v19[OBJC_IVAR____TtC8AppStore15BundleChildView_icon];
    v42.value.super.isa = 0;
    v42.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v42, v23);

    v24 = *&v20[v21];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  while (v17 != v18);
LABEL_16:

  v25 = sub_1002A6C68(type metadata accessor for BorderedScreenshotView);
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
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
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          v31 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
          v32 = *&v29[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
          v43.value.super.isa = 0;
          v43.is_nil = 0;
          ArtworkView.setImage(image:animated:)(v43, v33);

          v34 = *&v30[v31];
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
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

  v38 = *&v37[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1002A9030(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1002A9078()
{
  type metadata accessor for BundleSearchResult();
  sub_1002A9030(&qword_10097C378, 255, &type metadata accessor for BundleSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (using._rawValue)
  {
    BundleSearchResult.lockup.getter();

    v1 = MixedMediaLockup.metadataRibbonItems.getter();
    if (v1)
    {
      v2 = v1;
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v3 = sub_10032AAE8(v2, v4);

      sub_100394974(v3);
      ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);
    }
  }

  return result;
}

double sub_1002A91B4(double a1, double a2)
{
  v3 = v2;
  v24 = type metadata accessor for ComponentLayoutOptions();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(qword_10097DB40);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  AnyHashable.init<A>(_:)();
  StatePath.init(component:)();
  v26 = *(v2 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore);

  sub_10002849C(&unk_100980500);
  sub_100097060(&qword_10097DB00, &unk_100980500);
  StateLens.init<A>(contentsOf:in:)();
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model;
  sub_10002849C(&qword_10097DB08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B1890;
  static ComponentLayoutOptions.separatorHidden.getter();
  static ComponentLayoutOptions.overflowed.getter();
  v26 = v15;
  sub_1002AA9B0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  sub_10002849C(&qword_10097DB18);
  sub_100097060(&qword_10097DB20, &qword_10097DB18);
  v16 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, a1, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

id sub_1002A9620()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Shelf.PresentationHints();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&unk_10097DAF0);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      AnyHashable.init<A>(_:)();
      StatePath.init(component:)();
      v45[0] = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore];

      sub_10002849C(&unk_100980500);
      sub_100097060(&qword_10097DB00, &unk_100980500);
      WritableStateLens.init<A>(contentsOf:in:)();
      v21 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph];
      sub_10002849C(&qword_10097DB08);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1007B1890;
      static ComponentLayoutOptions.separatorHidden.getter();
      static ComponentLayoutOptions.overflowed.getter();
      v45[0] = v23;
      sub_1002AA9B0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
      sub_10002849C(&qword_10097DB18);
      sub_100097060(&qword_10097DB20, &qword_10097DB18);
      v24 = v37;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v45[0] = _swiftEmptyArrayStorage;
      sub_1002AA9B0(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
      sub_10002849C(&qword_10097DB30);
      sub_100097060(&qword_10097DB38, &qword_10097DB30);
      v25 = v41;
      v26 = v34;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_10002C0AC(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      tryToFetch(artworkFor:into:on:asPartOf:)();
      sub_1002AA9F8(v45);
      sub_100007000(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1002A9D60()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17 = sub_1002A91B4(v14, v16);
  v19 = v18;
  [v1 frame];
  Height = CGRectGetHeight(v42);
  v21 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = result;
  if (v19 <= Height)
  {
    v19 = Height;
  }

  [result bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v44.origin.x = v34;
  v44.origin.y = v36;
  v44.size.width = v38;
  v44.size.height = v40;
  [v21 setFrame:{MinX, CGRectGetMinY(v44), v17, v19}];
  [v1 setContentSize:{v17, v19}];
  return [v0 setPreferredContentSize:{v17, v19}];
}

void sub_1002AA078(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_1002AA19C()
{
  v1 = type metadata accessor for Shelf.PresentationHints();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ComponentLayoutOptions();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&unk_10097DAF0);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  AnyHashable.init<A>(_:)();
  StatePath.init(component:)();
  v28 = *(v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore);

  sub_10002849C(&unk_100980500);
  sub_100097060(&qword_10097DB00, &unk_100980500);
  WritableStateLens.init<A>(contentsOf:in:)();
  v18 = *(v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model;
  sub_10002849C(&qword_10097DB08);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B10D0;
  static ComponentLayoutOptions.separatorHidden.getter();
  v28 = v10;
  sub_1002AA9B0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  sub_10002849C(&qword_10097DB18);
  sub_100097060(&qword_10097DB20, &qword_10097DB18);
  v11 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = _swiftEmptyArrayStorage;
  sub_1002AA9B0(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  sub_10002849C(&qword_10097DB30);
  sub_100097060(&qword_10097DB38, &qword_10097DB30);
  v13 = v24;
  v12 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

id sub_1002AA6B4(uint64_t a1)
{
  v3 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
  v7 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = type metadata accessor for IndexPath();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_1000F4070(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

void sub_1002AA998()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_1002AA9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002AA9F8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097DBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002AAAC8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_1009CEC88);
    if (v18 && *&v4[qword_1009CEC88])
    {
      v46 = *(v16 + qword_1009CEC88 + 8);
      v19 = *&v4[qword_1009CEC88 + 8];
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_1009CEC70;
    v25 = *&v4[qword_1009CEC70];
    v26 = [*&v17[qword_1009CEC70] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_1009CEC78;
    v29 = *&v4[qword_1009CEC78];
    v30 = [*&v17[qword_1009CEC78] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

id sub_1002AAF08(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v54[1] = swift_isaMask & *v4;
  v9 = type metadata accessor for TodayCard.Style();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = type metadata accessor for PageGrid();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v56 = a3;
  v18(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v15, &v5[v19]);
  swift_endAccess();
  sub_1004EAB3C(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = TodayCard.backgroundColor.getter();
    if (!v22)
    {
      sub_100005744(0, &qword_100970180);
      v22 = static UIColor.todayCardDefaultBackground.getter();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v55 = a2;
  v24 = *&v5[qword_1009CEC70];
  TodayCard.heading.getter();
  if (v25)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  TodayCard.style.getter();
  v27 = TodayCard.Style.cardHeadingTextColor.getter();
  v28 = *(v10 + 8);
  v28(v12, v9);
  [v24 setTextColor:v27];

  v29 = a1;
  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_1009CEC78];
  v32 = v29;
  TodayCard.title.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  v35 = v55;
  [v31 setText:v34];

  TodayCard.style.getter();
  v36 = TodayCard.Style.cardTitleTextColor.getter();
  v28(v12, v9);
  [v31 setTextColor:v36];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v56;
  if (v37)
  {
    v39 = v37;
    v40 = TodayCard.backgroundColor.getter();
    if (!v40)
    {
      sub_100005744(0, &qword_100970180);
      v40 = static UIColor.todayCardDefaultBackground.getter();
    }

    v41 = v40;
    [v39 setBackgroundColor:v40];
  }

  v42 = [v5 contentView];
  v43 = [v5 traitCollection];
  if (v35 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v43 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v42 setLayoutMargins:{v45, v47, v49, v51}];
  v52 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  sub_1005F3EC8(v32, v38, v35, v57, v52, &off_1008BC450);
  return [v5 setNeedsLayout];
}

void sub_1002AB474()
{
  sub_1004EE4C4();
  if (*(v0 + qword_1009CEC88))
  {
    v1 = *(v0 + qword_1009CEC88 + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded);
    v4 = *(v1 + 32);
    swift_unknownObjectRetain();
    v4(v3, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (*(v0 + qword_1009CEC88))
  {
    if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 20.0;
    }

    v6 = *(v0 + qword_1009CEC88 + 8);
    v7 = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(v7, v6);
    swift_unknownObjectRelease();
    [v9 _setContinuousCornerRadius:v5];
  }
}

uint64_t sub_1002AB5E0(uint64_t a1)
{
  sub_10002C0AC(a1, v7);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for TodayCard();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = TodayCard.overlay.getter();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + qword_1009CEC88);
      if (v5)
      {
        v7[3] = type metadata accessor for TodayCardOverlay();
        v7[4] = sub_1002AD904();
        v7[0] = v4;
        v6[3] = swift_getObjectType();
        v6[0] = v5;
        swift_unknownObjectRetain_n();

        tryToFetch(artworkFor:into:on:asPartOf:)();
        swift_unknownObjectRelease();

        sub_100007000(v6);
        return sub_10002B894(v7, &unk_10097DBE0);
      }
    }
  }

  return result;
}

uint64_t sub_1002AB728(uint64_t result)
{
  if (*(v1 + qword_1009CEC88))
  {
    v2 = result;
    v3 = *(v1 + qword_1009CEC88 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(v2, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002AB7CC()
{
  sub_1004EB9C0();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_1009CEC70] text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_1009CEC78] text];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_1009CEC88])
  {
    v12 = *&v0[qword_1009CEC88 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_10002849C(&unk_100984350);
      swift_arrayDestroy();
      sub_10002849C(&unk_100977380);
      sub_10015872C();
      BidirectionalCollection<>.joined(separator:)();

      v31 = String._bridgeToObjectiveC()();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100033E38(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_100033E38((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[2 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1002ABAEC(uint64_t result, char a2)
{
  v3 = v2 + qword_1009CEC80;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002ABB08(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1009CEC88);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_1002ABB34()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v6 = [v0 traitCollection];
    v7 = sub_100467DF8(v6, v0);
  }

  else
  {
    if (qword_10096E4B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for StaticDimension();
    sub_1000056A8(v8, qword_1009D1D08);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v7 = v9;
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

double sub_1002ABCBC()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E4C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D1D38);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

void sub_1002ABDFC(CGFloat *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  if (*&v1[qword_1009CEC88])
  {
    v7 = *&v1[qword_1009CEC88 + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v50 = v9(ObjectType, v7);
    v10 = v9(ObjectType, v7);
    v11 = [v10 isHidden];

    if (v11)
    {
      swift_unknownObjectRelease();
      v12 = v50;
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) == 1)
      {
        if ((*(v7 + 72))(ObjectType, v7))
        {
          sub_1004EC024();
          v14 = v13;
          v16 = v15;
        }

        else
        {
          v29 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_1000A833C(v2 + v29, v6);
          v30 = [v2 traitCollection];
          sub_1004EDF34(v6, v30);
          v14 = v31;
          v16 = v32;

          sub_10002B894(v6, &qword_10097DBD0);
        }

        v33 = [v2 traitCollection];
        v34 = UITraitCollection.prefersRightToLeftLayouts.getter();

        [v50 layoutMargins];
        [v50 setLayoutMargins:?];
        [v50 layoutMargins];
        if ((v34 & 1) == 0)
        {
          v14 = v16;
        }
      }

      else
      {
        v17 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_1000A833C(v2 + v17, v6);
        LOBYTE(v17) = *(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
        v18 = [v2 traitCollection];
        sub_1004EE9F4(v6, v17, v18);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v14 = v25;

        sub_10002B894(v6, &qword_10097DBD0);
        v26 = v24;
        v27 = v22;
        v28 = v20;
      }

      [v50 setLayoutMargins:{v28, v27, v26, v14}];
      v35 = [v2 contentView];
      [v35 bounds];
      v37 = v36;
      v39 = v38;

      [v50 sizeThatFits:{v37, v39}];
      v41 = v40;
      v42 = *a1;
      v43 = a1[1];
      v44 = a1[2];
      v45 = a1[3];
      v52.origin.x = *a1;
      v52.origin.y = v43;
      v52.size.width = v44;
      v52.size.height = v45;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v42;
      v53.origin.y = v43;
      v53.size.width = v44;
      v53.size.height = v45;
      v47 = CGRectGetMaxY(v53) - v41;
      v54.origin.x = v42;
      v54.origin.y = v43;
      v54.size.width = v44;
      v54.size.height = v45;
      Width = CGRectGetWidth(v54);
      [v50 setFrame:{MinX, v47, Width, v41}];
      v55.origin.x = MinX;
      v55.origin.y = v47;
      v55.size.width = Width;
      v55.size.height = v41;
      Height = CGRectGetHeight(v55);
      swift_unknownObjectRelease();

      a1[3] = v45 - Height;
    }
  }
}

double sub_1002AC268(CGFloat *a1)
{
  v3 = sub_1002ABB34();
  v36 = sub_1002ABCBC();
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    sub_1004EC024();
    v9 = v8;
  }

  else
  {
    v10 = [v1 contentView];
    [v10 layoutMargins];
    v9 = v11;
  }

  v12 = v7 - v9;
  v13 = *&v1[qword_1009CEC70];
  [v13 measurementsWithFitting:v1 in:{v12, v6}];
  v15 = v14;
  v17 = v16;
  v34 = v18;
  v37.origin.x = v5;
  v37.origin.y = v4;
  v37.size.width = v12;
  v37.size.height = v6;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v5;
  v38.origin.y = v4;
  v38.size.width = v12;
  v38.size.height = v6;
  v20 = CGRectGetMinY(v38) + v3 - v17;
  v39.origin.x = v5;
  v39.origin.y = v4;
  v39.size.width = v12;
  v39.size.height = v6;
  Width = CGRectGetWidth(v39);
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v13 setFrame:?];
  v40.origin.x = MinX;
  v40.origin.y = v20;
  v40.size.width = Width;
  v40.size.height = v15;
  v22 = CGRectGetMaxY(v40) - v34;
  v23 = *&v1[qword_1009CEC78];
  v41.origin.x = v5;
  v41.origin.y = v4;
  v41.size.width = v12;
  v41.size.height = v6;
  v24 = CGRectGetWidth(v41);
  v42.origin.x = v5;
  v42.origin.y = v4;
  v42.size.width = v12;
  v42.size.height = v6;
  [v23 measurementsWithFitting:v1 in:{v24, CGRectGetHeight(v42) - v22}];
  v26 = v25;
  v28 = v27;
  v35 = v29;
  v43.origin.x = v5;
  v43.origin.y = v4;
  v43.size.width = v12;
  v43.size.height = v6;
  v30 = CGRectGetMinX(v43);
  v44.origin.x = v5;
  v44.origin.y = v4;
  v44.size.width = v12;
  v44.size.height = v6;
  v31 = CGRectGetWidth(v44);
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v23 setFrame:?];
  v45.origin.x = v30;
  v45.origin.y = v22 + v36 - v28;
  v45.size.width = v31;
  v45.size.height = v26;
  v32 = CGRectGetMaxY(v45) - v35;
  a1[1] = v4 + v32;
  result = v6 - v32;
  a1[3] = result;
  return result;
}

void sub_1002AC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = &selRef__setDefaultAttributes_;
  v9 = &StringUserDefaultsDebugSetting;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = *(a4 + 16);
    v13 = v12(ObjectType, a4);
    [v13 removeFromSuperview];

    v14 = swift_getObjectType();
    v15 = v12(v14, a4);
    [v15 _setContinuousCornerRadius:0.0];

    v9 = &StringUserDefaultsDebugSetting;
    v16 = v12(v14, a4);
    v17 = [v16 layer];

    [v17 setMaskedCorners:15];
    v8 = &selRef__setDefaultAttributes_;
  }

  if (a1)
  {
    v18 = v8;
    v19 = swift_getObjectType();
    v20 = *(a2 + 16);
    swift_unknownObjectRetain();
    v21 = v20(v19, a2);
    v22 = v21;
    v23 = 20.0;
    if (v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v23 = 0.0;
    }

    [v21 v18[358]];
    v24 = [v22 v9[43].base_prots];
    [v24 setMaskedCorners:12];

    v25 = [v5 contentView];
    [v25 addSubview:v22];
    swift_unknownObjectRelease();
  }
}

char *sub_1002AC718(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v47 = swift_isaMask & *v4;
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v18 - 8);
  v20 = &v40 - v19;
  v21 = &v5[qword_1009CEC80];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[qword_1009CEC88];
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_weakInit();
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1490);
  v25 = *(v23 - 8);
  v46 = *(v25 + 16);
  v46(v20, v24, v23);
  v45 = *(v25 + 56);
  v45(v20, 0, 1, v23);
  v26 = *(v15 + 104);
  v40 = v15 + 104;
  v44 = enum case for DirectionalTextAlignment.none(_:);
  v43 = v26;
  v26(v17);
  v42 = type metadata accessor for DynamicTypeLabel();
  v27 = objc_allocWithZone(v42);
  v41 = v14;
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[qword_1009CEC70] = v28;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v51, &unk_1009711D0);
  sub_10002B894(&v53, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v30 = *(v49 + 8);
  v49 += 8;
  v30(v13, v48);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v23, qword_1009D14A8);
  v46(v20, v31, v23);
  v45(v20, 0, 1, v23);
  v43(v17, v44, v41);
  v32 = objc_allocWithZone(v42);
  v33 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[qword_1009CEC78] = v33;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = v33;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v51, &unk_1009711D0);
  sub_10002B894(&v53, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v30(v13, v48);
  v35 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  v50.receiver = v5;
  v50.super_class = v35;
  v36 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 addSubview:*&v36[qword_1009CEC70]];

  v38 = [v36 contentView];
  [v38 addSubview:*&v36[qword_1009CEC78]];

  return v36;
}

uint64_t sub_1002ACD40()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v6 - 8);
  v8 = v32 - v7 + 16;
  v9 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  v35.receiver = v0;
  v35.super_class = v9;
  objc_msgSendSuper2(&v35, "layoutSubviews");
  v10 = [v0 contentView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v32[0] = v12;
  v32[1] = v14;
  v33 = v16;
  v34 = v18;
  sub_1002ABDFC(v32);
  v19 = [v1 contentView];
  [v19 layoutMargins];
  v21 = v20;
  v23 = v22;

  if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v24 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A833C(v1 + v24, v8);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_10002B894(v8, &qword_10097DBD0);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_10002B894(v8, &qword_10097DBD0);
      v25 = [v1 traitCollection];
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
      [v25 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      v21 = v26;
      v23 = v27;

      (*(v3 + 8))(v5, v2);
    }
  }

  v32[0] = v12 + v21;
  v33 = v16 - (v23 + v21);
  v28.n128_f64[0] = sub_1002AC268(v32);
  v29 = (*((swift_isaMask & *v1) + 0x338))(v32, v28);
  return (*((swift_isaMask & *v1) + 0x1A8))(v29);
}

void sub_1002AD0FC(void *a1)
{
  v1 = a1;
  sub_1002ACD40();
}

uint64_t sub_1002AD144()
{
  v1 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, "prepareForReuse");
  return sub_1005F4320(v1, &off_1008BC450);
}

void sub_1002AD1BC(void *a1)
{
  v1 = a1;
  sub_1002AD144();
}

id sub_1002AD204(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LegacyTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E4B8 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_1009D1D20);
    v7 = v1;
    Conditional.evaluate(with:)();

    UILabel.alignment.setter();
    if (qword_10096E4C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D1D50);
    v8 = v7;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

void sub_1002AD3D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002AD204(a3);
}

Class sub_1002AD444(void *a1)
{
  v1 = a1;
  v2 = sub_1002AD4B4();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_1002AD4B4()
{
  sub_10002849C(&qword_1009701B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100005744(0, &qword_100972EB0);
  *(v1 + 32) = v2;
  if (*&v0[qword_1009CEC88] && (v3 = *&v0[qword_1009CEC88 + 8], ObjectType = swift_getObjectType(), v5 = *(v3 + 144), swift_unknownObjectRetain(), v6 = v5(ObjectType, v3), swift_unknownObjectRelease(), v6))
  {
    v7 = v6;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  sub_100394AC0(v7);
  return v1;
}

void sub_1002AD5D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1002AD64C(v4);
}

void sub_1002AD64C(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for LegacyTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v3, "setAccessibilityElements:", v2.super.isa);
}

uint64_t sub_1002AD704()
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

id sub_1002AD764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002AD7C0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

uint64_t sub_1002AD89C()
{
  sub_1002AD8F0();
}

unint64_t sub_1002AD904()
{
  result = qword_10097DBD8;
  if (!qword_10097DBD8)
  {
    type metadata accessor for TodayCardOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DBD8);
  }

  return result;
}

uint64_t sub_1002AD95C()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v11 = *(v5 + 8);
  v11(v10, v4);
  v12 = (*(v1 + 88))(v3, v0);
  if (v12 == enum case for Shelf.ContentType.annotation(_:))
  {
    v13 = 1;
    return v13 & 1;
  }

  if (v12 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v13 = sub_10011A2D4();
    (*(v1 + 8))(v3, v0);
    return v13 & 1;
  }

  result = ItemLayoutContext.index.getter();
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v11(v7, v4);
    v16 = *(v17[1] + 16);

    v13 = v15 < v16;
    return v13 & 1;
  }

  __break(1u);
  return result;
}

UIColor sub_1002ADC74(double a1, uint64_t a2, UIColor *a3)
{
  sub_100028BB8();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  v8 = [v5 whiteColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  result.super.isa = UIColor.init(light:dark:)(v7, v9).super.isa;
  a3->super.isa = result.super.isa;
  return result;
}

char *sub_1002ADD4C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_currentState;
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
  [v14 addSubview:*&v14[OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView]];

  return v14;
}

id sub_1002AE170()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTitleHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InteractiveTitleHeaderView()
{
  result = qword_10097DCE8;
  if (!qword_10097DCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AE248()
{
  sub_1002AE2E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002AE2E8()
{
  if (!qword_10097DCF8)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097DCF8);
    }
  }
}

uint64_t sub_1002AE340@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  return sub_1002AE698(v3 + v4, a1);
}

id sub_1002AE3C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v11 = sub_1001AAD64();
  v12 = *&v1[OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView];
  result = [v12 overrideUserInterfaceStyle];
  if (result != v11)
  {
    v14 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_currentState;
    swift_beginAccess();
    sub_1002AE698(v2 + v14, v9);
    v15 = *(v10 - 8);
    v16 = (*(v15 + 48))(v9, 1, v10);
    sub_1002AE708(v9);
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
      aBlock[4] = sub_1002AE844;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008BC4F0;
      v19 = _Block_copy(aBlock);
      v20 = v2;

      [v17 transitionWithView:v12 duration:5308420 options:v19 animations:0 completion:0.4];
      _Block_release(v19);
    }

    sub_1002AE770(a1, v6);
    (*(v15 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_1002AE7D4(v6, v2 + v14);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1002AE698(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097E110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE708(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097E110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AE770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097E110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1002AE860(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = &v4[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler];
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

  v28 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView]];
  sub_10002849C(&qword_10097B110);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007B10D0;
  *(v30 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v30 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v26;
}

uint64_t sub_1002AED00@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DisjointStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DisjointStack.init(with:)();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  VerticalStack.init(with:)();
  v14 = *&v13[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView();
  v26 = sub_1002B00A8(&qword_100990FE0, type metadata accessor for CarouselItemModuleHeaderView);
  v24[0] = v14;
  v15 = v14;
  VerticalStack.adding(_:with:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_100007000(v24);
  v17 = *&v13[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView];
  v23[3] = type metadata accessor for CarouselItemModuleLockupView();
  v23[4] = sub_1002B00A8(&qword_10097DD70, type metadata accessor for CarouselItemModuleLockupView);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_1000056E0(v24);
  v18 = v17;
  VerticalStack.adding(_:with:)();
  v16(v8, v2);
  sub_100007000(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v19);
  DisjointStack.inserting(_:at:with:)();
  (*(v10 + 8))(v12, v9);
  return sub_100007000(v24);
}

uint64_t sub_1002AF138()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = type metadata accessor for ZeroDimension();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return DisjointStack.Properties.bottomEdge.setter();
}

uint64_t sub_1002AF22C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v8 + 8))(v10, v7);
  HeroCarouselItemOverlay.DisplayOptions.Placement.verticalStackAlignment.getter();
  (*(v4 + 8))(v6, v3);
  return VerticalStack.Properties.alignment.setter();
}

id sub_1002AF564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeroCarouselItemOverlay.displayOptions.getter();
  v10 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v7 + 40))(&v3[v10], v9, v6);
  swift_endAccess();
  sub_10026FA50(a1, a2);
  HeroCarouselItemOverlay.displayOptions.getter();
  v11 = HeroCarouselItemOverlay.badgeText.getter();
  v13 = v12;
  v14 = HeroCarouselItemOverlay.descriptionText.getter();
  sub_1004D877C(v9, v11, v13, v14, v15);

  (*(v7 + 8))(v9, v6);
  return [v3 setNeedsLayout];
}

void sub_1002AF714()
{
  v1 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Artwork.Crop();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView);
  if (HeroCarouselItemOverlay.lockup.getter())
  {
    v7 = dispatch thunk of Lockup.artwork.getter();

    if (v7)
    {
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v3 + 8))(v5, v2);
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v8, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      v9 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView;
      v10 = *(*(v6 + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v10 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v11 = *(*(v6 + v9) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      type metadata accessor for ArtworkView();
      sub_1002B00A8(&qword_100970E80, &type metadata accessor for ArtworkView);
      v12 = v11;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }
}

uint64_t type metadata accessor for CarouselItemSingleModuleOverlay()
{
  result = qword_10097DD48;
  if (!qword_10097DD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AFB00()
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_1002AFBAC(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10000827C(a1);
  sub_10000827C(a1);
  sub_10001F63C(v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_10001F63C(a1);
}

void sub_1002AFC64()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002B00A8(&qword_100970E80, &type metadata accessor for ArtworkView);
  v2 = v1;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1002AFD34()
{
  v1 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v13 = (v0 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_1002AFFC8(void *a1)
{
  v2 = [a1 touchesForView:*(*(*(v1 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_1002B00A8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1002B00F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView] = 0;
  v17 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
  v18 = type metadata accessor for Separator();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = 0;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v19 setClipsToBounds:0];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView;
  v25 = *(*&v19[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v25;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0);
  sub_10002B894(&v45, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = *(*&v19[v24] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0);
  sub_10002B894(&v45, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v30 = *(*&v19[v24] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v30;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0);
  sub_10002B894(&v45, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v32 = *(*&v19[v24] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v32;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0);
  sub_10002B894(&v45, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v34 = *&v19[v24];
  v35 = *(v34 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v35)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v35;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(&v43, &unk_1009711D0);
    sub_10002B894(&v45, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v37 = *(v34 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v37)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v37;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(&v43, &unk_1009711D0);
    sub_10002B894(&v45, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v39 = *(v34 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v39;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0);
  sub_10002B894(&v45, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v41 = [v19 contentView];

  [v41 addSubview:*&v19[v24]];
  return v19;
}

id sub_1002B0944()
{
  v1 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Separator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A3C4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10002B894(v3, &unk_100970E10);
    result = *&v0[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_1002B0D28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Separator();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v30 = v10;
  v31 = v12;
  v32 = v14;
  v33 = v16;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if ([v18 isHidden])
  {

LABEL_4:
    v19 = 0;
LABEL_7:
    [*&v1[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView] setFrame:{v10, v12, v14, v16}];
    return sub_10001F63C(v19);
  }

  v28 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &v30;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002B183C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10006F094;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000489A8;
  aBlock[3] = &unk_1008BC610;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v28 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v23[v26], v3);
    CGRect.inset(bySeparator:in:)();

    (*(v4 + 8))(v7, v3);
    v10 = v30;
    v12 = v31;
    v14 = v32;
    v16 = v33;
    v19 = sub_1002B183C;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1002B107C(char *a1)
{
  v2 = type metadata accessor for Separator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  Separator.frame(forBoundingRect:in:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return [a1 setFrame:{v8, v10, v12, v14}];
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell()
{
  result = qword_10097DDA0;
  if (!qword_10097DDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B139C()
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1002B14DC()
{
  v1 = type metadata accessor for SmallLockupLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView);
  v6 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1002B1610()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.isImageHidden.setter();

  v4 = *(v1 + v2);
  type metadata accessor for ArtworkView();
  sub_1002B174C(&qword_100970E80, &type metadata accessor for ArtworkView);
  v5 = v4;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1002B16F4(uint64_t a1)
{
  result = sub_1002B174C(&qword_10097DDB0, type metadata accessor for SmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002B174C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1002B1794(void *a1)
{
  type metadata accessor for SmallLockupView();
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v3 = sub_1000056A8(v2, qword_1009D3798);
  sub_10070B598(v3, a1);
  return v4;
}

uint64_t sub_1002B1844()
{

  return swift_deallocClassInstance();
}

void sub_1002B188C()
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
  sub_100005744(0, &qword_100970180);
  v4 = static UIColor.defaultBackground.getter();
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView];
  v6 = static UIColor.defaultBackground.getter();
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
  v10 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v10 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = UITraitCollection.isRegularPad.getter();

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
  sub_1002B2C60();
}

void sub_1002B1A5C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v16, "didReceiveMemoryWarning");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_6;
  }

  v5 = UITraitCollection.isRegularPad.getter();

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

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (v7)
  {
LABEL_8:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController;

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

      sub_100005744(0, &qword_1009711C0);
      v13 = v11;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

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

void sub_1002B1C8C(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v4 = &off_10097D000;
  v5 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  v7 = &selRef_setRequiresColorStatistics_;
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
      v13 = [v2 v7[35]];
      v14 = *(v4[441] + v2);
      if (v14 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 4)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_18;
      }

      v15 = UITraitCollection.isRegularPad.getter();

      if (v15)
      {
        sub_1002B26D8();
        v16 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl;
        v17 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl];
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
      v44 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
      v19 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (v20 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_48:
          v34 = v44;
LABEL_49:
          *&v2[v19] = _swiftEmptyArrayStorage;

          sub_1002B2C60();
          sub_1002B2D20();
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
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

        if (!v44 || (sub_100005744(0, &qword_1009711C0), v25 = v43, v26 = v23, v27 = static NSObject.== infix(_:_:)(), v26, v25, (v27 & 1) == 0))
        {
          v28 = [v23 parentViewController];
          if (v28)
          {
            v29 = v28;
            sub_100005744(0, &qword_1009711C0);
            v30 = v2;
            v31 = static NSObject.== infix(_:_:)();

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
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_50;
      }
    }
  }

  if (v8)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 3)
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

  v9 = UITraitCollection.isRegularPad.getter();
LABEL_10:
  v10 = [v2 traitCollection];
  v11 = *&v2[v5];
  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
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

  v12 = UITraitCollection.isRegularPad.getter() & 1;

  if ((v9 & 1) != v12)
  {
    goto LABEL_16;
  }

LABEL_50:
  v35 = sub_1002B2F6C();
  v36 = [v2 childViewControllers];
  sub_100005744(0, &qword_1009711C0);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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

  v38 = _CocoaArrayWrapper.endIndex.getter();
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
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

void sub_1002B2290(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v8 = *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 4)
  {
    v10 = UITraitCollection.isRegularPad.getter();

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
    v11 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController;
    v12 = *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        sub_100005744(0, &qword_1009711C0);
        v16 = v3;
        v17 = static NSObject.== infix(_:_:)();

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

    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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
  if (!v29 || (v30 = v29, sub_100005744(0, &qword_1009711C0), v31 = v3, v32 = static NSObject.== infix(_:_:)(), v30, v31, (v32 & 1) == 0))
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
      v40(v3, &off_1008BC638, ObjectType, v38);
    }
  }

  v43 = sub_1002B2F6C();
  [v3 setOverrideTraitCollection:v43 forChildViewController:v25];

  v44 = *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController] = v25;

LABEL_32:
  [*&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl] setSelectedSegmentIndex:a2];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v45;
  [v45 bringSubviewToFront:*&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView]];
}

void sub_1002B26D8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    v51 = v2;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v51;
    if (v5 >= 4)
    {
LABEL_3:

      goto _objc_release_x1;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
    goto LABEL_3;
  }

  v52 = v2;
  v6 = UITraitCollection.isRegularPad.getter();

  if (v6)
  {
    v7 = *&v1[v3];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &selRef_setRequiresColorStatistics_;
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v8 = _CocoaArrayWrapper.endIndex.getter();
    v9 = &selRef_setRequiresColorStatistics_;
    if (v8)
    {
LABEL_10:
      if (v8 >= 1)
      {
        v49 = v7 & 0xC000000000000001;
        v50 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;

        v10 = 0;
        v47 = xmmword_1007B15F0;
        v48 = v3;
        while (1)
        {
          if (v49)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v11 = *(v7 + 8 * v10 + 32);
          }

          v53 = v10;
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
          if (!v17 || (v18 = v17, sub_100005744(0, &qword_1009711C0), v19 = v1, v20 = static NSObject.== infix(_:_:)(), v18, v19, (v20 & 1) == 0))
          {
            [v1 addChildViewController:{v13, v47}];
            v21 = [v1 v9[40]];
            if (!v21)
            {
              goto LABEL_43;
            }

            v22 = v21;
            v23 = [v13 v9[40]];
            if (!v23)
            {
              goto LABEL_44;
            }

            v24 = v23;
            [v22 addSubview:v23];

            swift_getObjectType();
            v25 = swift_conformsToProtocol2();
            if (v25 && v13)
            {
              v26 = v25;
              ObjectType = swift_getObjectType();
              v28 = v8;
              v29 = v9;
              v30 = v7;
              v31 = *(v26 + 16);
              v32 = v1;
              v33 = v13;
              v31(v1, &off_1008BC638, ObjectType, v26);
              v7 = v30;
              v9 = v29;
              v8 = v28;
              v3 = v48;
            }
          }

          v34 = [v1 traitCollection];
          v35 = *&v1[v3];
          v36 = v50;
          if (v35 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter() >= 4)
            {
LABEL_27:

LABEL_31:
              v41 = [v1 traitCollection];
              goto LABEL_32;
            }
          }

          else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
          {
            goto LABEL_27;
          }

          v37 = UITraitCollection.isRegularPad.getter();

          if ((v37 & 1) == 0)
          {
            goto LABEL_31;
          }

          sub_10002849C(&qword_100973210);
          v38 = swift_allocObject();
          *(v38 + 16) = v47;
          *(v38 + 32) = [v1 traitCollection];
          v39 = objc_opt_self();
          *(v38 + 40) = [v39 traitCollectionWithHorizontalSizeClass:1];
          sub_100005744(0, &qword_100972780);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v41 = [v39 traitCollectionWithTraitsFromCollections:isa];

          v36 = v50;
LABEL_32:
          [v1 setOverrideTraitCollection:v41 forChildViewController:v13];

          swift_beginAccess();
          v42 = v13;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v1[v36] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v36] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          v10 = v53 + 1;

          if (v8 == v53 + 1)
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
      _objc_release_x1();
      return;
    }

LABEL_36:
    v43 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl];
    if (v43)
    {
      v44 = v43;
      v45 = [v1 v9[40]];
      if (!v45)
      {
        goto LABEL_45;
      }

      v46 = v45;
      [v45 bringSubviewToFront:v44];
    }
  }
}

void sub_1002B2C60()
{
  v1 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl;
  if (!*(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl))
  {
    v2 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v2 addTarget:v0 action:"takeSelectedIndexFrom:" forControlEvents:4096];
    [*(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView) addSubview:v2];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1002B2D20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl);
  if (v1)
  {
    v9 = v1;
    [v9 removeAllSegments];
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments);
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
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
            v3 = _CocoaArrayWrapper.endIndex.getter();
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

          v5 = String._bridgeToObjectiveC()();
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

    [v9 setSelectedSegmentIndex:*(v8 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex)];
  }
}

id sub_1002B2F6C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_7;
  }

  v4 = UITraitCollection.isRegularPad.getter();

  if (v4)
  {
    sub_10002849C(&qword_100973210);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B15F0;
    *(v5 + 32) = [v1 traitCollection];
    v6 = objc_opt_self();
    *(v5 + 40) = [v6 traitCollectionWithHorizontalSizeClass:1];
    sub_100005744(0, &qword_100972780);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v6 traitCollectionWithTraitsFromCollections:isa];

    return v8;
  }

LABEL_7:
  v10 = [v1 traitCollection];

  return v10;
}

void sub_1002B3100()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
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
  v33 = sub_1002B34B8(v45, v11, v13, v15, MinY, v17, v32, v44);
  v35 = v34;
  v36 = [v1 traitCollection];
  LOBYTE(v21) = UITraitCollection.isSizeClassCompact.getter();

  v37 = 0.0;
  if (v21)
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for StaticDimension();
    sub_1000056A8(v38, qword_1009D2430);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v37 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v40 = [v1 traitCollection];
  v41 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < 4)
  {
    v43 = UITraitCollection.isRegularPad.getter();

    if (v43)
    {
      sub_1002B39DC(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
  }

  sub_1002B3844(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
}

double sub_1002B34B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v32 = a8;
  v33 = a5;
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v19 = *(v8 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerView);
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
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v20 setFrame:?];

    v23 = v22 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(v8 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl);
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
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v26 setFrame:?];

      v23 = v23 + v28;
    }
  }

  if (v23 >= COERCE_DOUBLE(1))
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for StaticDimension();
    sub_1000056A8(v29, qword_1009D2430);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
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
  v30 = *(v9 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v30 setFrame:?];
  return Width;
}

void sub_1002B3844(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *&v8[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
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

  *&v8[OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver] = 0;

  v24 = &v8[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
  *v24 = 0;
  v24[8] = 1;

  sub_1002B40A4();
}

id sub_1002B39DC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  [v8 pageMarginInsets];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  j_j___s8AppStore20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v13);
  v14 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;
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
    v16 = v15 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
      break;
    }

LABEL_20:

    v26 = *&v38[v33];
    v14 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
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

        sub_1002B3EDC(_swiftEmptyArrayStorage);
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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
    _CocoaArrayWrapper.endIndex.getter();
  }

  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    CGRect.withLayoutDirection(in:relativeTo:)();
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

uint64_t sub_1002B3EDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
  v4[3] = sub_1002B45E8;
  v4[4] = v5;

  sub_10001F63C(0);

  *(v1 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver) = v4;
}

void sub_1002B3FD4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = *&Strong[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress], v4 = Strong[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress + 8], Strong, v4 != 1))
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
    v7 = v5 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress;
    *v7 = a1;
    *(v7 + 8) = 0;
    sub_1002B40A4();
  }
}

void sub_1002B40A4()
{
  v1 = v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress + 8];
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

  v4 = *&v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
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
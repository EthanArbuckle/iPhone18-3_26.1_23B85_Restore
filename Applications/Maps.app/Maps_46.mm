uint64_t sub_10051908C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 7)
  {
    if (a4 <= 9 && a4 == 8)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v10._object = 0x800000010123F3E0;
      v6._countAndFlagsBits = 0x657461657243;
      v7._countAndFlagsBits = 0xD000000000000024;
      v7._object = 0x800000010123F3B0;
      v10._countAndFlagsBits = 0xD00000000000001FLL;
      v6._object = 0xE600000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, qword_1019600D8, v6, v10);
    }

    goto LABEL_17;
  }

  if (a4 <= 2)
  {
    if (a4 != 1)
    {
      goto LABEL_17;
    }

    return static CardButtonViewModel.close(tintColor:enabled:action:)();
  }

  else
  {
    if (a4 != 4)
    {
LABEL_17:
      v8 = a1;

      return CardButtonViewModel.init(systemImageName:title:tintColor:enabled:systemImagePadding:fontPointSize:fontWeight:axID:showChevron:height:helpText:action:)();
    }

    return static CardButtonViewModel.share(tintColor:enabled:action:)();
  }
}

unint64_t sub_100519460@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10051B46C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_100519594(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_100519688(uint64_t result, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = result;
  v4[1] = a2;
  if (a2)
  {
    if (v6)
    {
      v7 = v5 == result && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v6)
  {
    return result;
  }

  sub_100519EEC();
LABEL_11:
}

void sub_1005197A8(_BYTE *a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1[*a4];
  a1[*a4] = a3;
  if (v5 != a3)
  {
    v6 = a1;
    sub_100519EEC();
  }
}

void sub_100519A74(id a1, void *a2, unint64_t *a3)
{
  v5 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    v9 = v5;
    goto LABEL_8;
  }

  v9 = v5;
  if (!v5)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100014C84(0, a3);
  a1 = a1;
  v6 = v9;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
LABEL_8:
    sub_100519EEC();

    v8 = v9;
    goto LABEL_9;
  }

  v8 = v6;
LABEL_9:
}

id sub_100519B58()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_viewSize];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize] = 1;
  v3 = &v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_title];
  *v3 = 0;
  *(v3 + 1) = 0;
  v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_textHidden] = 0;
  v4 = &v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_titleCustomAXID];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_subtitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_interactiveSubtitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_leadingImage] = 0;
  v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_clipImage] = 1;
  v7 = &v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_userInterfaceIdiom];
  *v7 = 0;
  v7[8] = 1;
  *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate] = 0;
  *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_parentViewController] = 0;
  v8 = AnyView.init<A>(_:)();
  v9 = objc_allocWithZone(sub_1000CE6B8(&qword_101911790));
  v13 = v8;
  *&v1[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerHostingController] = UIHostingController.init(rootView:)();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SwiftContainerHeaderView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10051AC1C();

  return v10;
}

id sub_100519CF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_viewSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize] = 1;
  v11 = &v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_textHidden] = 0;
  v12 = &v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_titleCustomAXID];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_subtitle];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_interactiveSubtitle];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_leadingImage] = 0;
  v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_clipImage] = 1;
  v15 = &v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_userInterfaceIdiom];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_parentViewController] = 0;
  v16 = AnyView.init<A>(_:)();
  v17 = objc_allocWithZone(sub_1000CE6B8(&qword_101911790));
  v21 = v16;
  *&v5[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerHostingController] = UIHostingController.init(rootView:)();
  v20.receiver = v5;
  v20.super_class = type metadata accessor for SwiftContainerHeaderView();
  v18 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  sub_10051AC1C();

  return v18;
}

uint64_t sub_100519EEC()
{
  v1 = sub_1000CE6B8(&qword_101925458);
  __chkstk_darwin(v1);
  v3 = &v71 - v2;
  v4 = type metadata accessor for LeadingCardHeaderViewModel();
  v85 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CardButtonViewModel();
  v7 = *(v90 - 8);
  __chkstk_darwin(v90);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v10 - 8);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  v15 = type metadata accessor for CardHeaderSize();
  v89 = *(v15 - 8);
  __chkstk_darwin(v15);
  v87 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  v21.n128_f64[0] = __chkstk_darwin(v20);
  v88 = &v71 - v22;
  v23 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize];
  v72 = v9;
  if (v23)
  {
    if (v23 != 1)
    {
      *&v94 = v23;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v24 = &enum case for CardHeaderSize.large(_:);
  }

  else
  {
    v24 = &enum case for CardHeaderSize.medium(_:);
  }

  v25 = v89;
  (*(v89 + 104))(v19, *v24, v15, v21);
  (*(v25 + 32))(v88, v19, v15);
  v26 = v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_textHidden];
  v86 = v4;
  v80 = v14;
  if (v26)
  {
    v78 = 0;
    v74 = 0;
    v73 = 0;
    v76 = 0;
    v75 = 0;
    v77 = 0xE000000000000000;
  }

  else
  {
    v27 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_title + 8];
    if (v27)
    {
      v78 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_title];
      v77 = v27;
    }

    else
    {
      v78 = 0;
      v77 = 0xE000000000000000;
    }

    v28 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_subtitle + 8];
    v76 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_subtitle];
    v29 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_interactiveSubtitle + 8];
    v74 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_interactiveSubtitle];
    v73 = v29;

    v75 = v28;
  }

  v81 = v15;
  v82 = v3;
  v30 = *&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons];
  v91 = v0;
  v83 = v1;
  v84 = v6;
  if (v30 >> 62)
  {
LABEL_41:
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v92 = _swiftEmptyArrayStorage;
  while (v31 != v32)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v33 = *(v30 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = [v33 integerValue];

    ++v32;
    if (v36 < 0xD)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v37 = v92;
      }

      else
      {
        v37 = sub_100356B7C(0, *(v92 + 2) + 1, 1, v92);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_100356B7C((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v92 = v37;
      *&v37[8 * v39 + 32] = v36;
      v32 = v35;
    }
  }

  v40 = *(v92 + 2);
  if (v40)
  {
    *&v94 = _swiftEmptyArrayStorage;
    sub_10051161C(0, v40, 0);
    v41 = v94;
    v42 = 32;
    v43 = v72;
    do
    {
      v44 = *&v92[v42];
      v45 = swift_allocObject();
      v46 = v91;
      *(v45 + 16) = v91;
      *(v45 + 24) = v44;
      v47 = v46;
      sub_10051908C(0, sub_10051B258, v45, v44);

      *&v94 = v41;
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_10051161C(v48 > 1, v49 + 1, 1);
        v41 = v94;
      }

      *(v41 + 16) = v49 + 1;
      (*(v7 + 32))(v41 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v49, v43, v90);
      v42 += 8;
      --v40;
    }

    while (v40);
  }

  v50 = v91;
  v51 = *&v91[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_titleCustomAXID + 8];
  v52 = v84;
  v54 = v81;
  v53 = v82;
  v55 = v80;
  if (v51)
  {
    *v80 = *&v91[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_titleCustomAXID];
    *(v55 + 8) = v51;
    v56 = enum case for MapsDesignAccessibilityString.custom(_:);
    v57 = type metadata accessor for MapsDesignAccessibilityString();
    v58 = *(v57 - 8);
    (*(v58 + 104))(v55, v56, v57);
    (*(v58 + 56))(v55, 0, 1, v57);
  }

  else
  {
    v59 = type metadata accessor for MapsDesignAccessibilityString();
    (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
  }

  sub_1000D2DFC(v55, v79, &unk_101910FC0);
  (*(v89 + 16))(v87, v88, v54);
  v60 = *&v50[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_leadingImage];
  if (v60)
  {
    v61 = sub_100014C84(0, &qword_10190AB90);
    v62 = sub_10027CF34();
  }

  else
  {
    v61 = 0;
    v62 = 0;
    *(&v94 + 1) = 0;
    *&v95 = 0;
  }

  *&v94 = v60;
  *(&v95 + 1) = v61;
  *&v96 = v62;

  v63 = v60;
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  *v53 = static HorizontalAlignment.center.getter();
  *(v53 + 1) = 0;
  v53[16] = 0;
  v64 = sub_1000CE6B8(&qword_101925460);
  sub_10051A8A4(v52, &v53[*(v64 + 44)]);
  *&v53[*(sub_1000CE6B8(&qword_101925468) + 36)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = &v53[*(v83 + 36)];
  v66 = v95;
  *v65 = v94;
  *(v65 + 1) = v66;
  *(v65 + 2) = v96;
  sub_10051B2E0();
  v67 = AnyView.init<A>(_:)();
  v68 = *&v50[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerHostingController];
  v93 = v67;
  v69 = v68;

  dispatch thunk of UIHostingController.rootView.setter();

  sub_100024F64(v55, &unk_101910FC0);
  (*(v89 + 8))(v88, v54);
  return (*(v85 + 8))(v52, v86);
}

uint64_t sub_10051A8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for LeadingCardHeaderViewModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101925490);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v4 + 16))(v6, a1, v3, v12);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = &v14[*(v8 + 44)];
  *v16 = sub_1000CD948;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_10051B464;
  *(v16 + 3) = v15;
  sub_1000D2DFC(v14, v10, &qword_101925490);
  v17 = v21;
  sub_1000D2DFC(v10, v21, &qword_101925490);
  v18 = v17 + *(sub_1000CE6B8(&qword_101925498) + 48);
  *v18 = 0;
  *(v18 + 8) = 0;
  sub_100024F64(v14, &qword_101925490);
  return sub_100024F64(v10, &qword_101925490);
}

void sub_10051AB10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate);
    if (v2)
    {
      if ([*(Strong + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate) respondsToSelector:"headerViewInteractiveSubtitleTappedWithHeaderView:"])
      {
        [v2 headerViewInteractiveSubtitleTappedWithHeaderView:v1];
      }
    }
  }
}

void sub_10051ABA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = &Strong[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_viewSize];
    *v4 = v1;
    *(v4 + 1) = v2;
    v5 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }
}

void sub_10051AC1C()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  v2 = __chkstk_darwin(v1 - 8);
  v3 = OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerHostingController;
  v4 = [*&v0[OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerHostingController] view];
  if (v4)
  {
    v5 = v4;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];

    [v0 addSubview:v5];
    v7 = objc_opt_self();
    sub_1000CE6B8(&qword_101908400);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1011E5C00;
    v9 = [v5 leadingAnchor];
    v10 = [v0 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v8 + 32) = v11;
    v12 = [v5 trailingAnchor];
    v13 = [v0 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v8 + 40) = v14;
    v15 = [v5 topAnchor];
    v16 = [v0 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v8 + 48) = v17;
    v18 = [v5 bottomAnchor];
    v19 = [v0 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v8 + 56) = v20;
    sub_100014C84(0, &qword_10190B720);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 activateConstraints:isa];

    v22 = *&v0[v3];
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    [v0 invalidateIntrinsicContentSize];
  }
}

double sub_10051AF64()
{
  static MapsDesignConstants.Sizes.cardButtonHeight()();
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      static MapsDesignConstants.Spacing.cardHeaderInterButtonSpacing.getter();
      v11 = v10;

      v6 = v6 + v2 + v11;
      ++v5;
    }

    while (v9 != v4);

    if (v6 > 0.0)
    {
      static MapsDesignConstants.Spacing.cardHeaderHorizontalControlPadding.getter();
      return v6 + v12;
    }
  }

  else
  {

    return 0.0;
  }

  return v6;
}

id sub_10051B0CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftContainerHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10051B204()
{
  result = qword_101925450;
  if (!qword_101925450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925450);
  }

  return result;
}

void sub_10051B258()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate);
  if (v2)
  {
    v3 = *(v0 + 24);
    if ([*(v1 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate) respondsToSelector:"headerViewButtonTappedWithHeaderView:buttonType:"])
    {

      [v2 headerViewButtonTappedWithHeaderView:v1 buttonType:v3];
    }
  }
}

unint64_t sub_10051B2E0()
{
  result = qword_101925470;
  if (!qword_101925470)
  {
    sub_1000D6664(&qword_101925458);
    sub_10051B36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925470);
  }

  return result;
}

unint64_t sub_10051B36C()
{
  result = qword_101925478;
  if (!qword_101925478)
  {
    sub_1000D6664(&qword_101925468);
    sub_10051B3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925478);
  }

  return result;
}

unint64_t sub_10051B3F8()
{
  result = qword_101925480;
  if (!qword_101925480)
  {
    sub_1000D6664(&qword_101925488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925480);
  }

  return result;
}

unint64_t sub_10051B46C(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

void sub_10051B47C()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_viewSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_headerSize) = 1;
  v2 = (v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_title);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_textHidden) = 0;
  v3 = (v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_titleCustomAXID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_interactiveSubtitle);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_leadingImage) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_clipImage) = 1;
  v6 = v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_userInterfaceIdiom;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_trailingButtons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_delegate) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps24SwiftContainerHeaderView_parentViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10051B5B8()
{
  result = qword_1019254A0;
  if (!qword_1019254A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019254A0);
  }

  return result;
}

id sub_10051B748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryEVChargerDownloader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10051B7B0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10051B830()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10051B8B4@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10051B934()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void *sub_10051B9A8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100222634(13);
  if (result)
  {
    v38 = _swiftEmptyArrayStorage;
    v8 = result[2];
    if (v8)
    {
      v9 = *(v4 + 80);
      v37 = result;
      v10 = result + ((v9 + 32) & ~v9);
      v11 = *(v4 + 72);
      v12 = _swiftEmptyArrayStorage;
      do
      {
        sub_1003D1C5C(v10, v6);
        if (swift_getEnumCaseMultiPayload() == 13)
        {
          swift_beginAccess();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v36 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v12 = v38;
        }

        else
        {
          sub_1003D1CC0(v6);
        }

        v10 += v11;
        --v8;
      }

      while (v8);

      if (!(v12 >> 62))
      {
LABEL_11:
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }
      }
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_11;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_12:
      v13 = [a2 _realTimeAvailableEVCharger];
      if (v13)
      {
        v14 = v13;
        if (v12 >> 62)
        {
          goto LABEL_32;
        }

        for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          result = objc_opt_self();
          if (i < 1)
          {
            __break(1u);
            return result;
          }

          v16 = result;
          v17 = 0;
          v36 = i;
          v37 = v12 & 0xC000000000000001;
          v18 = &selRef_setUseCompactVerticalLayout_;
          while (1)
          {
            if (v37)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            v21 = v18;
            v22 = [v16 v18[479]];
            v23 = [v22 virtualGarage];

            if (!v23)
            {
              v28 = sub_1004CE2F4([v14 availableEVChargers], objc_msgSend(v14, "totalEVChargers"), objc_msgSend(v14, "_realTimePlugAvailabilityStatus"), 0);
              v30 = v31;
              goto LABEL_26;
            }

            v24 = [objc_opt_self() getRealTimeEVChargerInfo:v23 charger:v14];
            v25 = [v24 total];
            v26 = [v24 available];
            v27 = [v24 status];
            if ((v26 | v25) < 0)
            {
              break;
            }

            v28 = sub_1004CE2F4(v26, v25, v27, 0);
            v30 = v29;

LABEL_26:
            swift_getKeyPath();
            swift_getKeyPath();
            v38 = v28;
            v39 = v30;

            static Published.subscript.setter();
            v18 = v21;
            v32 = [v16 v21[479]];
            v33 = [v32 virtualGarage];

            if (v33)
            {
              v34 = [objc_opt_self() getRealTimeEVChargerInfo:v33 charger:v14];
              v19 = [v34 status];
            }

            else
            {
              v19 = [v14 _realTimePlugAvailabilityStatus];
            }

            v20 = v36;
            ++v17;
            swift_getKeyPath();
            swift_getKeyPath();
            LODWORD(v38) = v19;
            static Published.subscript.setter();
            if (v20 == v17)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_32:
          ;
        }

LABEL_33:
      }
    }
  }

  return result;
}

id static MapsUIImageCache.imageCache(forCarPlay:)(char a1)
{
  result = objc_opt_self();
  if (a1)
  {
    result = [result sharedCarCache];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result sharedCache];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *MapsUIImageCacheImageProvider.uiImage.getter()
{
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_10051C008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t type metadata accessor for MapsUIImageCacheImageProvider()
{
  result = qword_101925520;
  if (!qword_101925520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MapsUIImageCacheImageProvider.uiImage.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10051D1C0(&qword_1019254E0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000F1178();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_10051C26C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  v5 = a2;
}

void (*MapsUIImageCacheImageProvider.uiImage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC4Maps29MapsUIImageCacheImageProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10051BF10();
  return sub_10051C40C;
}

void sub_10051C40C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

void *MapsUIImageCacheImageProvider.placeholderImage(for:)()
{
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_10051C534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_10051C5D8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10051D1C0(&qword_1019254E0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000F1178();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_10051C744()
{
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_10051C7D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_10051C864(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10051D1C0(&qword_1019254E0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10051C960()
{
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 34);
}

uint64_t sub_10051C9EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 34);
  return result;
}

uint64_t sub_10051CA80(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10051D1C0(&qword_1019254E0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void MapsUIImageCacheImageProvider.fetchImage(for:imageLoaded:)(uint64_t a1, void (*a2)(void *))
{
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4)
  {
    swift_getKeyPath();
    v5 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v2 + 34) & 1) == 0)
    {
      v6 = v5;
      a2(v4);

      return;
    }
  }

  if (*(v2 + 32) == 1)
  {
    *(v2 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v8 = *(v2 + 33);
  v9 = objc_opt_self();
  if (v8 != 1)
  {
    goto LABEL_11;
  }

  v9 = [v9 sharedCarCache];
  if (!v9)
  {
    __break(1u);
LABEL_11:
    v9 = [v9 sharedCache];
    if (!v9)
    {
      __break(1u);
    }
  }

  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MapsUIImageCacheImageProvider.deinit()
{
  v1 = OBJC_IVAR____TtC4Maps29MapsUIImageCacheImageProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MapsUIImageCacheImageProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC4Maps29MapsUIImageCacheImageProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void MapsUIImageCacheImageProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10051D0C4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10051D1C0(&qword_1019254E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 24);
  v3 = v2;
  return v2;
}

uint64_t sub_10051D1C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MapsUIImageCacheImageProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_10051D204()
{
  Hasher.init(_seed:)();
  (*(**v0 + 360))(v2);
  return Hasher._finalize()();
}

uint64_t sub_10051D274()
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

void AppIconImageProvider.fetchImage(for:imageLoaded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_opt_self();
  if ((a6 & 0x100000000) == 0)
  {
    v9 = [v9 sharedCache];
    if (v9)
    {
LABEL_5:
      v10 = v9;
      v11 = String._bridgeToObjectiveC()();
      v12 = swift_allocObject();
      *(v12 + 16) = a2;
      *(v12 + 24) = a3;
      v14[4] = sub_1000D2C74;
      v14[5] = v12;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_100271778;
      v14[3] = &unk_10161FC98;
      v13 = _Block_copy(v14);

      [v10 getImageForAppIcon:v11 format:a6 completion:v13];
      _Block_release(v13);

      return;
    }

    __break(1u);
  }

  v9 = [v9 sharedCarCache];
  if (v9)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t static AppIconImageProvider.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a3 != a6)
    {
      return 0;
    }

    return BYTE4(a3) & 1 ^ ((a6 & &_mh_execute_header) == 0);
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && a3 == a6)
  {
    return BYTE4(a3) & 1 ^ ((a6 & &_mh_execute_header) == 0);
  }

  return result;
}

void AppIconImageProvider.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(BYTE4(a4) & 1);
}

Swift::Int AppIconImageProvider.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(BYTE4(a3) & 1);
  return Hasher._finalize()();
}

void sub_10051D5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &_mh_execute_header;
  if (!*(v3 + 20))
  {
    v4 = 0;
  }

  AppIconImageProvider.fetchImage(for:imageLoaded:)(a1, a2, a3, *v3, *(v3 + 8), v4 | *(v3 + 16));
}

uint64_t sub_10051D5EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

Swift::Int sub_10051D678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10051D6F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10051D740()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10051D7BC()
{
  result = qword_1019256F0;
  if (!qword_1019256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019256F0);
  }

  return result;
}

unint64_t sub_10051D814()
{
  result = qword_1019256F8;
  if (!qword_1019256F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019256F8);
  }

  return result;
}

__n128 sub_10051D868(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_10051D87C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10051D8C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10051D930@<X0>(unsigned int *a1@<X1>, char *a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v39 = sub_1000CE6B8(&qword_10190EBC0);
  __chkstk_darwin(v39);
  v40 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v38 - v4;
  v5 = type metadata accessor for Date();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_101925700);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for DateInterval();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *v43, v10, v19);
  Calendar.dateInterval(of:for:)();
  (*(v11 + 8))(v13, v10);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100024F64(v16, &qword_101925700);
LABEL_5:
    v26 = sub_1000CE6B8(&unk_10190EB90);
    return (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  }

  (*(v18 + 32))(v21, v16, v17);
  DateInterval.start.getter();
  v22 = v42;
  DateInterval.end.getter();
  sub_10051DF34(&qword_101917318, &type metadata accessor for Date);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = v41;
  v25 = *(v41 + 8);
  v25(v22, v5);
  v25(v9, v5);
  if (v23)
  {
    (*(v18 + 8))(v21, v17);
    goto LABEL_5;
  }

  v28 = v24;
  DateInterval.start.getter();
  DateInterval.end.getter();
  sub_10051DF34(&qword_10190EBD8, &type metadata accessor for Date);
  v29 = dispatch thunk of static Comparable.<= infix(_:_:)();
  result = (*(v18 + 8))(v21, v17);
  v30 = v44;
  if (v29)
  {
    v31 = *(v28 + 32);
    v32 = v38;
    v31(v38, v9, v5);
    v33 = v39;
    v31((v32 + *(v39 + 48)), v42, v5);
    v34 = v40;
    sub_1000D2DFC(v32, v40, &qword_10190EBC0);
    v35 = *(v33 + 48);
    v31(v30, v34, v5);
    v25((v34 + v35), v5);
    sub_10051DF7C(v32, v34);
    v36 = *(v33 + 48);
    v37 = sub_1000CE6B8(&unk_10190EB90);
    v31(&v30[*(v37 + 36)], (v34 + v36), v5);
    v25(v34, v5);
    return (*(*(v37 - 8) + 56))(v30, 0, 1, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10051DF34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10051DF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190EBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10051DFEC()
{
  v0 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v31[2] = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Calendar();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000CE6B8(&qword_10190EC18);
  __chkstk_darwin(v9 - 8);
  v11 = v31 - v10;
  v12 = sub_1000CE6B8(&qword_10190EC20);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - v13;
  v15 = type metadata accessor for Date.FormatStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v31 - v20;
  __chkstk_darwin(v22);
  v31[0] = v31 - v23;
  v31[1] = *(type metadata accessor for VisitedPlacesCalendarMonth(0) + 28);
  v24 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  v25 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v26 = v32;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v33 + 8))(v26, v34);
  v27 = *(v16 + 8);
  v27(v18, v15);
  v28 = v35;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v29 = v31[0];
  Date.FormatStyle.year(_:)();
  (*(v36 + 8))(v28, v37);
  v27(v21, v15);
  sub_10051DF34(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v27(v29, v15);
  return v38;
}

uint64_t sub_10051E594()
{
  _StringGuts.grow(_:)(16);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 3832109;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A6172652DLL;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return 14957;
}

uint64_t sub_10051E6B8()
{
  v0 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v25 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TimeZone();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Calendar();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000CE6B8(&qword_10190EC18);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_1000CE6B8(&qword_10190EC20);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for Date.FormatStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v24 - v17;
  v24[1] = *(type metadata accessor for VisitedPlacesCalendarMonth(0) + 28);
  v19 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v21 = v25;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  Date.FormatStyle.month(_:)();
  (*(v26 + 8))(v21, v27);
  v22 = *(v13 + 8);
  v22(v15, v12);
  sub_10051DF34(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v22(v18, v12);
  return v28;
}

uint64_t sub_10051EB98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10051E594();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10051EBC0()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3A6172652DLL;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 121;
}

uint64_t sub_10051EC88()
{
  v0 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TimeZone();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Calendar();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000CE6B8(&qword_10190EC18);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1000CE6B8(&qword_10190EC20);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for Date.FormatStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021578(v16, qword_101960530);
  sub_100021540(v12, qword_101960530);
  v17 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v19 = v22;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v23 + 8))(v19, v24);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10051F0C8()
{
  v0 = type metadata accessor for Date.FormatStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906920 != -1)
  {
    swift_once();
  }

  v4 = sub_100021540(v0, qword_101960530);
  (*(v1 + 16))(v3, v4, v0);
  sub_10051DF34(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10051F26C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10051EBC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10051F294(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v137 = type metadata accessor for VisitedPlacesCalendarMonth(0);
  v146 = *(v137 - 8);
  __chkstk_darwin(v137);
  v143 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_1000CE6B8(&qword_10190EBC0);
  __chkstk_darwin(v136);
  v135 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v134 = &v105 - v7;
  v8 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v8 - 8);
  v132 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v149 = &v105 - v11;
  v150 = type metadata accessor for Date();
  v115 = *(v150 - 8);
  __chkstk_darwin(v150);
  v145 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v133 = &v105 - v14;
  __chkstk_darwin(v15);
  v114 = &v105 - v16;
  v17 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v17 - 8);
  v141 = &v105 - v18;
  v19 = sub_1000CE6B8(&qword_1019205A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v105 - v20;
  v140 = type metadata accessor for DateComponents();
  v113 = *(v140 - 8);
  __chkstk_darwin(v140);
  v130 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v121 = &v105 - v24;
  v25 = type metadata accessor for Calendar.Component();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v111 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v31 = &v105 - v30;
  v32 = *(v26 + 104);
  v107 = enum case for Calendar.Component.month(_:);
  v32(&v105 - v30, v29);
  v139 = Calendar.component(_:from:)();
  v33 = *(v26 + 8);
  v33(v31, v25);
  v106 = enum case for Calendar.Component.year(_:);
  (v32)(v31);
  v34 = Calendar.component(_:from:)();
  v33(v31, v25);
  v109 = v26 + 104;
  v108 = v32;
  (v32)(v31, enum case for Calendar.Component.era(_:), v25);
  v142 = a1;
  v35 = Calendar.component(_:from:)();
  v112 = (v26 + 8);
  v110 = v33;
  v33(v31, v25);
  v36 = type metadata accessor for Calendar();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v129 = v36;
  v128 = v38;
  v127 = v37 + 56;
  (v38)(v21, 1, 1);
  v39 = type metadata accessor for TimeZone();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v126 = v39;
  v125 = v41;
  v124 = v40 + 56;
  (v41)(v141, 1, 1);
  v131 = v21;
  v147 = v35;
  v148 = v34;
  v42 = v121;
  v43 = v150;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v44 = v149;
  v138 = a2;
  Calendar.date(from:)();
  v45 = v44;
  v46 = v115;
  v47 = *(v115 + 48);
  v123 = v115 + 48;
  v122 = v47;
  if (v47(v45, 1, v43) == 1)
  {
    sub_100024F64(v45, &qword_10190EBD0);
    (v113)[1](v42, v140);
    return _swiftEmptyArrayStorage;
  }

  v48 = *(v46 + 32);
  v49 = v114;
  v48(v114, v45, v43);
  sub_1000CE6B8(&qword_10191AFC8);
  v50 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v117 = v146[9];
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1011E1D30;
  v118 = sub_10051DF34(&qword_10190EBD8, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v116 = v50;
    v53 = (v51 + v50);
    v146 = v51;
    v149 = v48;
    v144 = v46 + 32;
    v54 = v46;
    v55 = *(v46 + 16);
    v56 = v134;
    v55(v134, v49, v150);
    v57 = v136;
    v58 = v56 + *(v136 + 48);
    v120 = v46 + 16;
    v119 = v55;
    v55(v58, v142, v150);
    v59 = v135;
    sub_1000D2DFC(v56, v135, &qword_10190EBC0);
    v60 = *(v57 + 48);
    v61 = v53 + *(v137 + 28);
    (v149)(v61, v59, v150);
    v62 = *(v54 + 8);
    v62(v59 + v60, v150);
    v63 = v56;
    v64 = v150;
    sub_10051DF7C(v63, v59);
    v65 = *(v57 + 48);
    v115 = sub_1000CE6B8(&unk_10190EB90);
    (v149)(&v61[*(v115 + 36)], v59 + v65, v64);
    v62(v59, v64);
    v66 = v62;
    v67 = v139;
    v68 = v147;
    v69 = v148;
    *v53 = v139;
    v53[1] = v69;
    v53[2] = v68;
    v70 = v108;
    (v108)(v31, v107, v25);
    v71 = v111;
    (v70)(v111, v106, v25);
    v72 = Calendar.range(of:in:for:)();
    LOBYTE(v70) = v73;
    v74 = v110;
    v110(v71, v25);
    v74(v31, v25);
    if (v70)
    {

      v66(v114, v64);
      (v113)[1](v121, v140);
    }

    else
    {
      v78 = v72 - v67;
      v76 = v72 == v67;
      v77 = v72 <= v67;
      v79 = v140;
      v80 = v121;
      v81 = v113;
      if (v77)
      {
        v142 = v66;
        v82 = (v113 + 1);
        v75 = v146;
        if (v76)
        {
          v142(v114, v64);
          (*v82)(v80, v79);
        }

        else
        {
          v83 = v133;
          v119(v133, v114, v64);
          v84 = v139 - 1;
          v113 = v81 + 1;
          while (1)
          {
            v139 = v78;
            v146 = v75;
            v128(v131, 1, 1, v129);
            v125(v141, 1, 1, v126);
            v75 = v130;
            DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
            v85 = v132;
            Calendar.date(from:)();
            v86 = *v82;
            (*v82)(v75, v79);
            if (v122(v85, 1, v64) == 1)
            {

              sub_100024F64(v85, &qword_10190EBD0);
              v103 = v142;
              v142(v83, v64);
              v103(v114, v64);
              v86(v121, v79);
              return _swiftEmptyArrayStorage;
            }

            v112 = v86;
            v79 = v145;
            (v149)(v145, v85, v64);
            if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
            {
              break;
            }

            v87 = v134;
            v88 = v119;
            v119(v134, v79, v64);
            v89 = v136;
            v88(v87 + *(v136 + 48), v83, v150);
            v90 = v135;
            sub_1000D2DFC(v87, v135, &qword_10190EBC0);
            v91 = *(v89 + 48);
            v92 = v143;
            v93 = v143 + *(v137 + 28);
            (v149)(v93, v90, v150);
            v94 = (v90 + v91);
            v95 = v142;
            v142(v94, v150);
            sub_10051DF7C(v87, v90);
            v96 = *(v89 + 48);
            v64 = v150;
            (v149)(&v93[*(v115 + 36)], v90 + v96, v150);
            v95(v90, v64);
            v97 = v147;
            v98 = v148;
            *v92 = v84;
            v92[1] = v98;
            v92[2] = v97;
            v75 = v146;
            v100 = v146[2];
            v99 = v146[3];
            if (v100 >= v99 >> 1)
            {
              v75 = sub_100357304(v99 > 1, v100 + 1, 1, v146);
            }

            v79 = v140;
            v82 = v113;
            v101 = v133;
            v142(v133, v64);
            v75[2] = v100 + 1;
            v102 = v75 + v116 + v100 * v117;
            v83 = v101;
            sub_100521184(v143, v102, type metadata accessor for VisitedPlacesCalendarMonth);
            (v149)(v101, v145, v64);
            --v84;
            v78 = v139 + 1;
            if (v139 == -1)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_21:
          v104 = v142;
          v142(v83, v64);
          v104(v114, v64);
          v112(v121, v79);
        }

        return v75;
      }

      v66(v114, v64);
      (v81)[1](v80, v79);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100520224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = a3;
  v125 = sub_1000CE6B8(&qword_10190EBC0);
  __chkstk_darwin(v125);
  v124 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v123 = v99 - v6;
  v7 = type metadata accessor for VisitedPlacesCalendarYear(0);
  v121 = *(v7 - 8);
  v122 = v7;
  __chkstk_darwin(v7);
  v132 = (v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v9 - 8);
  v11 = v99 - v10;
  v12 = sub_1000CE6B8(&qword_1019205A0);
  __chkstk_darwin(v12 - 8);
  v120 = v99 - v13;
  v14 = type metadata accessor for DateComponents();
  v127 = *(v14 - 8);
  __chkstk_darwin(v14);
  v119 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v16 - 8);
  v126 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = v99 - v19;
  __chkstk_darwin(v20);
  v131 = v99 - v21;
  v136 = type metadata accessor for Date();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v23 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v134 = v99 - v25;
  __chkstk_darwin(v26);
  v128 = v99 - v27;
  __chkstk_darwin(v28);
  v30 = v99 - v29;
  v31 = type metadata accessor for Calendar.Component();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v115 = a1;
  v129 = v23;
  v103 = v30;
  v117 = v14;
  v35 = v11;
  v36 = *(v32 + 104);
  v110 = enum case for Calendar.Component.year(_:);
  v36(v34);
  Calendar.component(_:from:)();
  v37 = *(v32 + 8);
  v37(v34, v31);
  v104 = enum case for Calendar.Component.era(_:);
  v109 = v32 + 104;
  v108 = v36;
  v36(v34);
  v38 = v35;
  Calendar.component(_:from:)();
  v111 = v34;
  v112 = v31;
  v130 = v32 + 8;
  v107 = v37;
  v37(v34, v31);
  v39 = type metadata accessor for Calendar();
  v40 = *(v39 - 8);
  v114 = *(v40 + 56);
  v113 = v40 + 56;
  v114(v120, 1, 1, v39);
  v41 = type metadata accessor for TimeZone();
  v42 = *(v41 - 8);
  v102 = *(v42 + 56);
  v101 = v42 + 56;
  v102(v35, 1, 1, v41);
  v43 = v119;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v44 = v131;
  Calendar.date(from:)();
  v45 = v127 + 1;
  v46 = v127[1];
  (v46)(v43, v117);
  v47 = v133;
  v48 = *(v133 + 48);
  v49 = v136;
  v106 = v133 + 48;
  v105 = v48;
  if (v48(v44, 1, v136) == 1)
  {
    sub_100024F64(v44, &qword_10190EBD0);
    return _swiftEmptyArrayStorage;
  }

  v100 = v46;
  v50 = *(v47 + 32);
  v51 = v103;
  v131 = (v47 + 32);
  v50(v103, v44, v49);
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    (*(v47 + 8))(v51, v49);
    return _swiftEmptyArrayStorage;
  }

  v118 = v50;
  v52 = v111;
  v127 = v45;
  v53 = v112;
  v99[0] = v38;
  v54 = v108;
  (v108)(v111, v110, v112);
  v99[1] = Calendar.component(_:from:)();
  v55 = v107;
  v107(v52, v53);
  (v54)(v52, v104, v53);
  Calendar.component(_:from:)();
  v55(v52, v53);
  v114(v120, 1, 1, v39);
  v102(v99[0], 1, 1, v41);
  v56 = v119;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v57 = v116;
  Calendar.date(from:)();
  (v100)(v56, v117);
  if (v105(v57, 1, v49) == 1)
  {
    sub_100024F64(v57, &qword_10190EBD0);
    (*(v133 + 8))(v103, v49);
    return _swiftEmptyArrayStorage;
  }

  v118(v128, v57, v49);
  v60 = v133 + 16;
  v102 = *(v133 + 16);
  (v102)(v134, v103, v49);
  v58 = _swiftEmptyArrayStorage;
  v133 = v60;
  v127 = (v60 - 8);
  v61 = 101;
  while (1)
  {
    v117 = v61;
    v120 = v58;
    v62 = v111;
    v63 = v110;
    v64 = v112;
    v65 = v108;
    (v108)(v111, v110, v112);
    v66 = v126;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v67 = v107;
    v107(v62, v64);
    v68 = v66;
    v69 = v66;
    v70 = v136;
    if (v105(v69, 1, v136) == 1)
    {
      v96 = *v127;
      (*v127)(v134, v70);
      (v96)(v128, v70);
      (v96)(v103, v70);
      sub_100024F64(v68, &qword_10190EBD0);
      return v120;
    }

    v71 = v129;
    v118(v129, v68, v70);
    v65(v62, v63, v64);
    v72 = Calendar.component(_:from:)();
    v67(v62, v64);
    v65(v62, v104, v64);
    v73 = Calendar.component(_:from:)();
    v67(v62, v64);
    v74 = v136;
    v75 = sub_10051DF34(&qword_10190EBD8, &type metadata accessor for Date);
    v76 = v134;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      break;
    }

    v116 = v75;
    v77 = v123;
    v78 = v102;
    (v102)(v123, v71, v74);
    v79 = v125;
    v78(v77 + *(v125 + 48), v76, v74);
    v80 = v124;
    sub_1000D2DFC(v77, v124, &qword_10190EBC0);
    v113 = *(v79 + 48);
    v81 = v74;
    v82 = v132;
    v83 = v132 + *(v122 + 24);
    v115 = v72;
    v84 = v118;
    v118(v83, v80, v81);
    v114 = v73;
    v85 = *v127;
    v119 = v85;
    (v85)(v80 + v113, v81);
    sub_10051DF7C(v77, v80);
    v86 = *(v79 + 48);
    v87 = sub_1000CE6B8(&unk_10190EB90);
    v84(&v83[*(v87 + 36)], v80 + v86, v81);
    (v85)(v80, v81);
    v88 = v114;
    *v82 = v115;
    v82[1] = v88;
    v58 = v120;
    v89 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_10035732C(0, *(v58 + 2) + 1, 1, v58);
    }

    v91 = *(v58 + 2);
    v90 = *(v58 + 3);
    v92 = v129;
    v93 = v134;
    if (v91 >= v90 >> 1)
    {
      v58 = sub_10035732C(v90 > 1, v91 + 1, 1, v58);
    }

    *(v58 + 2) = v91 + 1;
    sub_100521184(v132, &v58[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v91], type metadata accessor for VisitedPlacesCalendarYear);
    v94 = dispatch thunk of static Comparable.< infix(_:_:)();
    (v119)(v93, v81);
    v95 = v117;
    if ((v94 & 1) == 0)
    {
      v97 = v92;
      goto LABEL_22;
    }

    v89(v93, v92, v81);
    v61 = v95 - 1;
    if (!v61)
    {
      v97 = v93;
LABEL_22:
      v98 = v119;
      (v119)(v97, v81);
      v98(v128, v81);
      v98(v103, v81);
      return v58;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100521184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100521214()
{
  sub_100521298();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100521298()
{
  if (!qword_101925770)
  {
    type metadata accessor for Date();
    sub_10051DF34(&qword_10190EBD8, &type metadata accessor for Date);
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_101925770);
    }
  }
}

void sub_100521354()
{
  sub_100521298();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1005213D0(uint64_t a1)
{
  result = sub_10051DF34(&qword_101925840, type metadata accessor for VisitedPlacesCalendarMonth);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100521428(uint64_t a1)
{
  result = sub_10051DF34(&qword_101925848, type metadata accessor for VisitedPlacesCalendarYear);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100521480@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100521500(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

double sub_100521570@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1005215F0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void sub_100521960()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel];
  if (v1 && *(v1 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 1)
  {
    v2 = _UISolariumEnabled();
    v3 = objc_opt_self();
    v4 = &selRef_clearColor;
    if (v2)
    {
      v4 = &selRef_secondarySystemGroupedBackgroundColor;
    }
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_clearColor;
  }

  v5 = [v3 *v4];
  [v0 setBackgroundColor:v5];
}

id sub_100521A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_hasActionButtons] = 0;
  *&v3[OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel] = 0;
  if (a3)
  {

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for PlaceSummaryTableViewCell();
  v7 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v6);

  v8 = v7;
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setAccessibilityIdentifier:v9];

  v10 = v7;
  v11 = [v10 contentView];
  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor:v12];

  [v10 setSelectionStyle:0];
  return v10;
}

void sub_100521EB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel;
  v8 = *(v3 + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel);
  if (v8)
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    v9 = v8;
    v10 = a1;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      return;
    }

    v12 = *(v4 + v7);
  }

  else
  {
    v12 = 0;
  }

  *(v4 + v7) = a1;
  v13 = a1;

  sub_100521960();
  swift_unknownObjectWeakAssign();
  if (a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = [objc_opt_self() sharedInstance];
    if (v14)
    {
      v15 = v14;
      [v14 screenScale];
      v17 = v16;

      sub_100305A18(v18, v17);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10052212C()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101925898);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v15 = type metadata accessor for PlaceSummaryTableViewCell();
  v26.receiver = v0;
  v26.super_class = v15;
  objc_msgSendSuper2(&v26, "_bridgedUpdateConfigurationUsingState:", isa);

  v16 = *&v0[OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel];
  if (v16)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = v16;
      v20 = UICellConfigurationState.traitCollection.getter();
      [v20 userInterfaceStyle];

      __chkstk_darwin(v21);
      v23[-4] = v19;
      v23[-3] = v1;
      v23[1] = v18;
      v23[-2] = v18;
      sub_1000CE6B8(&qword_1019258A0);
      sub_1005236A8();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.leading.getter();
      UIHostingConfiguration.margins(_:_:)();
      v22 = *(v24 + 8);
      v22(v4, v2);
      static Edge.Set.trailing.getter();
      UIHostingConfiguration.margins(_:_:)();
      v22(v7, v2);
      static Edge.Set.top.getter();
      UIHostingConfiguration.margins(_:_:)();
      v22(v10, v2);
      static Edge.Set.bottom.getter();
      v25[3] = v2;
      v25[4] = sub_1000414C8(&unk_101925970, &qword_101925898);
      sub_10001A848(v25);
      UIHostingConfiguration.margins(_:_:)();
      v22(v13, v2);
      UITableViewCell.contentConfiguration.setter();

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100522558@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_100523D20();
  v8 = EnvironmentObject.init()();
  v49 = v9;
  v50 = v8;
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  v47 = static ObservableObject.environmentStore.getter();
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v10;
  *(v45 + 24) = a3;
  v44 = swift_getKeyPath();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v11;
  *(v43 + 24) = a3;
  v42 = swift_getKeyPath();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v12;
  *(v41 + 24) = a3;
  v40 = swift_getKeyPath();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v13;
  *(v39 + 24) = a3;
  v38 = swift_getKeyPath();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v14;
  *(v37 + 24) = a3;
  swift_unknownObjectRetain();
  v36 = swift_getKeyPath();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v15;
  *(v35 + 24) = a3;
  swift_unknownObjectRetain();
  v34 = swift_getKeyPath();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v16;
  *(v33 + 24) = a3;
  swift_unknownObjectRetain();
  v32 = swift_getKeyPath();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  swift_unknownObjectRetain();
  v31 = swift_getKeyPath();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  swift_unknownObjectRetain();
  v30 = swift_getKeyPath();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a3;
  swift_unknownObjectRetain_n();
  v23 = a1;
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = a4 + *(sub_1000CE6B8(&qword_1019258A0) + 36);
  sub_1005231C8(v23, a2, v27);
  result = sub_1000CE6B8(&qword_10190D678);
  v29 = (v27 + *(result + 36));
  *v29 = v24;
  v29[1] = v26;
  *a4 = v50;
  *(a4 + 8) = v49;
  *(a4 + 16) = IsEnabled_SearchAndDiscovery;
  *(a4 + 20) = *&v51[3];
  *(a4 + 17) = *v51;
  *(a4 + 24) = v47;
  *(a4 + 32) = a1;
  *(a4 + 40) = KeyPath;
  *(a4 + 48) = sub_100523D78;
  *(a4 + 56) = v45;
  *(a4 + 64) = v44;
  *(a4 + 72) = sub_100523D9C;
  *(a4 + 80) = v43;
  *(a4 + 88) = v42;
  *(a4 + 96) = sub_100523DA4;
  *(a4 + 104) = v41;
  *(a4 + 112) = v40;
  *(a4 + 120) = sub_100523DAC;
  *(a4 + 128) = v39;
  *(a4 + 136) = v38;
  *(a4 + 144) = sub_100523DB4;
  *(a4 + 152) = v37;
  *(a4 + 160) = v36;
  *(a4 + 168) = sub_100523DD8;
  *(a4 + 176) = v35;
  *(a4 + 184) = v34;
  *(a4 + 192) = sub_100523DE0;
  *(a4 + 200) = v33;
  *(a4 + 208) = v32;
  *(a4 + 216) = sub_100523E04;
  *(a4 + 224) = v18;
  *(a4 + 232) = v31;
  *(a4 + 240) = sub_100523E28;
  *(a4 + 248) = v20;
  *(a4 + 256) = v30;
  *(a4 + 264) = sub_100523E8C;
  *(a4 + 272) = v22;
  return result;
}

void sub_100522AA4(unint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_10;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      sub_100523EB0();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v9 = &selRef_didTapOnCuratedGuides_cell_;
LABEL_13:
      [a3 *v9];

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v7 = *(v4 + 32);
    }

    isa = v7;
    if (v4 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() != 1)
      {
        goto LABEL_9;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
LABEL_9:

      goto LABEL_10;
    }

    v9 = &selRef_didTapOnCuratedGuide_cell_;
    goto LABEL_13;
  }
}

void sub_100522C18(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [a4 didTapOnItemInChildItems:v8 cell:v7 buttonIndex:v5];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_100522D14(unint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v4 >> 61;
    if ((v4 >> 61) <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v10 = &selRef_didTapOnAccessoryEntityDirectionsWithCell_;
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 != 3)
        {
          v8 = __ROR8__(v4 ^ 0x8000000000000000, 3);
          if (v8 > 2)
          {
            if (v8 == 3)
            {
              v10 = &selRef_didTapOnAccessoryEntityWebsiteWithCell_;
            }

            else
            {
              if (v8 != 4)
              {
                goto LABEL_15;
              }

              v10 = &selRef_didTapOnAccessoryEntityQueryAcceleratorWithCell_;
            }
          }

          else
          {
            v9 = &selRef_didTapOnAccessoryEntityLookAroundWithCell_;
            if (v8 != 1)
            {
              v9 = &selRef_didTapOnAccessoryEntityCallWithCell_;
            }

            if (v8)
            {
              v10 = v9;
            }

            else
            {
              v10 = &selRef_didTapOnAccessoryEntityFlyoverWithCell_;
            }
          }

          goto LABEL_14;
        }

LABEL_15:

        return;
      }

      v10 = &selRef_didTapOnAddStop_;
    }

LABEL_14:
    [a3 *v10];
    goto LABEL_15;
  }
}

void sub_100522E5C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_unknownObjectRetain();
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [a3 didTapOnResultRefinement:v6 cell:v5];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

double sub_100522F30@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  EnvironmentValues.subscript.getter();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100522FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a5(a1, a2);

  return EnvironmentValues.subscript.setter();
}

void sub_100523010(uint64_t *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a3 *a4];
  }
}

void sub_100523088(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v4 _geoMapItem];
    if (v7)
    {
      v8 = [v7 _identifier];
      swift_unknownObjectRelease();
      if (v8)
      {
        [a3 didTapOnTappableEntryWithMapItemIdentifier:v8 cell:v6];

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

void sub_100523150(uint64_t *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a3 *a4];
  }
}

uint64_t sub_1005231C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InsetGroupedUIPlatter();
  v13 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MapsFeature_IsEnabled_SearchAndDiscovery() && *(a1 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2 && (v9 = *(a1 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics)) != 0 && *(v9 + OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_showPlatter) == 1 && ![PlaceSummaryTableViewCell canBecomeFirstResponder]_0(a2))
  {
    InsetGroupedUIPlatter.init(topLeft:topRight:bottomLeft:bottomRight:)();
    (*(v13 + 32))(a3, v8, v6);
    return (*(v13 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v10 = *(v13 + 56);

    return v10(a3, 1, 1, v6);
  }
}

id sub_100523570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005236A8()
{
  result = qword_1019258A8;
  if (!qword_1019258A8)
  {
    sub_1000D6664(&qword_1019258A0);
    sub_100523760();
    sub_1000414C8(&qword_10190D670, &qword_10190D678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019258A8);
  }

  return result;
}

unint64_t sub_100523760()
{
  result = qword_1019258B0;
  if (!qword_1019258B0)
  {
    sub_1000D6664(&qword_1019258B8);
    sub_100523818();
    sub_1000414C8(&qword_101918270, &qword_101918278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019258B0);
  }

  return result;
}

unint64_t sub_100523818()
{
  result = qword_1019258C0;
  if (!qword_1019258C0)
  {
    sub_1000D6664(&qword_1019258C8);
    sub_1005238D0();
    sub_1000414C8(&qword_101918260, &qword_101918268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019258C0);
  }

  return result;
}

unint64_t sub_1005238D0()
{
  result = qword_1019258D0;
  if (!qword_1019258D0)
  {
    sub_1000D6664(&qword_1019258D8);
    sub_100523988();
    sub_1000414C8(&qword_101918260, &qword_101918268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019258D0);
  }

  return result;
}

unint64_t sub_100523988()
{
  result = qword_1019258E0;
  if (!qword_1019258E0)
  {
    sub_1000D6664(&qword_1019258E8);
    sub_100523A40();
    sub_1000414C8(&qword_101925960, &qword_101925968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019258E0);
  }

  return result;
}

unint64_t sub_100523A40()
{
  result = qword_1019258F0;
  if (!qword_1019258F0)
  {
    sub_1000D6664(&qword_1019258F8);
    sub_100523AF8();
    sub_1000414C8(&qword_101925950, &qword_101925958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019258F0);
  }

  return result;
}

unint64_t sub_100523AF8()
{
  result = qword_101925900;
  if (!qword_101925900)
  {
    sub_1000D6664(&qword_101925908);
    sub_100523BB0();
    sub_1000414C8(&qword_101918260, &qword_101918268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925900);
  }

  return result;
}

unint64_t sub_100523BB0()
{
  result = qword_101925910;
  if (!qword_101925910)
  {
    sub_1000D6664(&qword_101925918);
    sub_100523C68();
    sub_1000414C8(&qword_101925940, &qword_101925948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925910);
  }

  return result;
}

unint64_t sub_100523C68()
{
  result = qword_101925920;
  if (!qword_101925920)
  {
    sub_1000D6664(&qword_101925928);
    sub_1002AF81C();
    sub_1000414C8(&qword_101925930, &qword_101925938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925920);
  }

  return result;
}

unint64_t sub_100523D20()
{
  result = qword_10190BE38;
  if (!qword_10190BE38)
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BE38);
  }

  return result;
}

double sub_100523E30@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  EnvironmentValues.subscript.getter();
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_100523EB0()
{
  result = qword_10190D6B0;
  if (!qword_10190D6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190D6B0);
  }

  return result;
}

uint64_t sub_100523EFC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC4Maps28PlaceSummaryAsyncDataManager_imageDownloader);

    v4 = *(v0 + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel);
    if (v4)
    {
      v5 = v4;
      v6 = sub_100222FE8();
    }

    else
    {
      v6 = 0;
    }

    sub_1004316D8(v6);
  }

  return result;
}

char *sub_100524044(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource] = 0;
  v3 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_searchController;
  *&v1[v3] = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  v4 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_tableView;
  *&v1[v4] = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakAssign();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ChargingNetworkPickerViewController();
  v5 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  v6 = objc_allocWithZone(type metadata accessor for ChargingNetworksDataSource());
  v7 = v5;
  v8 = sub_100524D10(a1, 1, v7, v6);
  swift_unknownObjectRelease();
  v9 = *&v7[OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource];
  *&v7[OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource] = v8;

  return v7;
}

void sub_100524228()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource) = 0;
  v1 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_searchController;
  *(v0 + v1) = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  v2 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_tableView;
  *(v0 + v2) = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100524348()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for ChargingNetworkPickerViewController();
  objc_msgSendSuper2(&v36, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_searchController];
  v2 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource;
  [v1 setSearchResultsUpdater:*&v0[OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource]];
  [v1 setObscuresBackgroundDuringPresentation:0];
  v3 = [v1 searchBar];
  [v3 setReturnKeyType:9];

  v4 = [v1 searchBar];
  [v4 setShowsCancelButton:1];

  v5 = [v1 searchBar];
  [v5 setDelegate:v0];

  [v1 setHidesNavigationBarDuringPresentation:0];
  v6 = [v0 navigationItem];
  [v6 setSearchController:v1];

  v7 = [v0 navigationItem];
  [v7 setHidesSearchBarWhenScrolling:0];

  v8 = [v0 navigationItem];
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v37._object = 0x800000010123F7F0;
  v9._countAndFlagsBits = 0xD000000000000025;
  v9._object = 0x800000010123F7A0;
  v10._object = 0x800000010123F7D0;
  v37._countAndFlagsBits = 0xD000000000000027;
  v10._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v37);
  v11 = String._bridgeToObjectiveC()();

  [v8 setTitle:v11];

  v12 = *&v0[OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_tableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setDataSource:*&v0[v2]];
  [v12 setDelegate:*&v0[v2]];
  sub_100014C84(0, &qword_101912870);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = String._bridgeToObjectiveC()();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  [result addSubview:v12];

  sub_1000CE6B8(&qword_101908400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E5C00;
  v18 = [v12 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = result;
  v20 = [result leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v17 + 32) = v21;
  v22 = [v12 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = result;
  v24 = [result trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v17 + 40) = v25;
  v26 = [v12 topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = result;
  v28 = [result topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v17 + 48) = v29;
  v30 = [v12 bottomAnchor];
  result = [v0 view];
  if (result)
  {
    v31 = result;
    v32 = objc_opt_self();
    v33 = [v31 bottomAnchor];

    v34 = [v30 constraintEqualToAnchor:v33];
    *(v17 + 56) = v34;
    sub_100014C84(0, &qword_10190B720);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 activateConstraints:isa];

    return [v12 reloadData];
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_100524968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargingNetworkPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100524A30(void *a1, char a2)
{
  v5 = [objc_opt_self() sharedService];
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = 455;
    }

    else
    {
      v7 = 443;
    }

    [v5 captureUserAction:v7 onTarget:122 eventValue:0];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_1000CE6B8(&qword_101908400);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1011E47B0;
      *(v10 + 32) = a1;
      sub_100014C84(0, &unk_101917480);
      v11 = a1;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 networkPickerControllerDidSelectNetworks:isa];

      swift_unknownObjectRelease();
    }

    v13 = [v2 presentingViewController];
    if (v13)
    {
      v14 = v13;
      [v13 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_100524D10(void *a1, uint64_t a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_provider] = 0;
  swift_unknownObjectWeakInit();
  v8 = &a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_searchString];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_suggestedNetworks] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_otherNetworks] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredSuggestedNetworks] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_filteredOtherNetworks] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_selectedNetworks] = &_swiftEmptySetSingleton;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_excludedNetworks] = v9;
  swift_unknownObjectWeakAssign();

  *&a4[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_context] = a2;
  v16.receiver = a4;
  v16.super_class = type metadata accessor for ChargingNetworksDataSource();
  v10 = objc_msgSendSuper2(&v16, "init");
  v11 = objc_allocWithZone(VGChargingNetworkAvailabilityProvider);
  v12 = v10;
  v13 = [v11 initWithDelegate:v12];
  v14 = *&v12[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_provider];
  *&v12[OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_provider] = v13;

  return v12;
}

void sub_100524E8C()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource) = 0;
  v1 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_searchController;
  *(v0 + v1) = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  v2 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_tableView;
  *(v0 + v2) = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100524F6C()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_dataSource) = 0;
  v1 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_searchController;
  *(v0 + v1) = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  v2 = OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_tableView;
  *(v0 + v2) = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10052504C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100527570(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots);
}

uint64_t sub_10052512C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100527570(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);
  return result;
}

uint64_t sub_10052530C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_1005253FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_cellModelProvider);
  swift_getKeyPath();
  sub_100527570(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(*(v1 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots) + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(v0 + OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_shelfViewModel);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_100062A9C();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 identifierPathByAppendingIdentifier:v5];

  v7 = type metadata accessor for HomeRecentsShelfCellModel();
  v8 = sub_100527570(&qword_101925A08, type metadata accessor for HomeRecentsShelfCellModel);
  sub_1000CE6B8(&qword_101915FE0);
  result = swift_allocObject();
  *(result + 1) = xmmword_1011E1D30;
  result[4] = v6;
  result[5] = v3;
  result[8] = v7;
  result[9] = v8;
  return result;
}

void sub_1005255A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_shelfViewModel);
}

id sub_1005255E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListRecentsSectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100525668@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v11._object = 0x800000010123FA90;
  v3._countAndFlagsBits = 0x73746E65636552;
  v4._object = 0x800000010123FA60;
  v11._countAndFlagsBits = 0xD00000000000003ELL;
  v4._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0xE700000000000000;
  *a1 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, qword_1019600D8, v3, v11);
  *(a1 + 16) = 256;
  swift_unknownObjectWeakInit();
  v10 = sub_1000CE6B8(&qword_101915FE8);
  v8 = v1;
  v9 = &off_10161FF98;
  sub_10005E838(&v8, v10);
  DynamicType = swift_getDynamicType();
  v6 = v1;
  sub_10004E3D0(&v8);
  if (swift_isClassType() && DynamicType)
  {
    v8 = v6;
    v9 = &off_10161FF98;
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
  }

  else
  {

    result = swift_unknownObjectWeakAssign();
  }

  *(a1 + 32) = 0x65636552656D6F48;
  *(a1 + 40) = 0xEB0000000073746ELL;
  return result;
}

uint64_t sub_10052580C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v55 - v15;
  v61 = v10[13];
  v62 = v10 + 13;
  v61(&v55 - v15, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v9, v14);
  v17 = v10[2];
  v65 = v16;
  v66 = v9;
  v17(v12, v16, v9);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v63 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(v2 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &v67);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v67);
  if (Strong)
  {
    v56 = v4;
    v59 = a1;
    v60 = v6;
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v2)
    {
      goto LABEL_22;
    }

    v19 = v2;
    v20 = sub_10053C718();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v24 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v24)
    {
      v25 = v21;
      v55 = v2;
      v26 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v27 = v20;
      sub_1000F0120(v24);
      sub_100368A2C(v27, v25, v23, 0, v26, &v67);

      swift_bridgeObjectRelease_n();
      if (v67)
      {
        sub_100024F64(&v67, &unk_101915FD0);
        (*(v58 + 104))(v57, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v56);
        UICollectionLayoutListConfiguration.headerMode.setter();
        swift_unknownObjectRelease();
        v2 = v55;
        v6 = v60;
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
      v2 = v55;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    v6 = v60;
    sub_100024F64(&v67, &unk_101915FD0);
  }

LABEL_10:
  v28 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  sub_100014C84(0, &unk_101910E00);
  v29 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v29 contentInsets];
  [v29 setContentInsets:0.0];
  [v29 contentInsets];
  [v29 setContentInsets:?];
  v30 = v66;
  (v61)(v12, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v66);
  v31 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  v32 = v10[1];
  v32(v12, v30);
  if (v31)
  {
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  }

  [v29 contentInsets];
  [v29 setContentInsets:?];
  [v29 contentInsets];
  [v29 setContentInsets:?];
  (*(v64 + 8))(v8, v6);
  v32(v65, v66);
  sub_10003E48C(v2 + v63, &v67);
  v33 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v67);
  if (!v33)
  {
    return v29;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && v2)
  {
    v34 = v2;
    v35 = sub_10053C718();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    v39 = *(v33 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v39)
    {
      v40 = v36;
      v41 = *(v33 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v42 = v35;
      sub_1000F0120(v39);
      sub_100368A2C(v42, v40, v38, 0, v41, &v67);

      swift_bridgeObjectRelease_n();
      if (v67)
      {
        sub_100024F64(&v67, &unk_101915FD0);
        v43 = objc_opt_self();
        v44 = [v43 fractionalWidthDimension:1.0];
        [objc_opt_self() estimatedHeight];
        v45 = [v43 estimatedDimension:?];
        v46 = [objc_opt_self() sizeWithWidthDimension:v44 heightDimension:v45];

        v47 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v46 elementKind:UICollectionElementKindSectionHeader alignment:1];
        static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
        v49 = v48;
        v50 = v47;
        [v50 setContentInsets:{0.0, v49, 0.0, v49}];

        swift_unknownObjectRelease();
        sub_1000CE6B8(&qword_101908400);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1011E47B0;
        *(v51 + 32) = v50;
        sub_100014C84(0, &unk_101910E10);
        v52 = v50;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v29 setBoundarySupplementaryItems:isa];

        return v29;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    sub_100024F64(&v67, &unk_101915FD0);
    return v29;
  }

LABEL_22:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10052610C()
{
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_10003E4E8(v3);
  if (Strong)
  {
    [Strong homeSectionHeaderButtonTapped:5];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100526180()
{
  sub_100525668(v7);
  if (!v8)
  {
    v4 = &qword_101915FF0;
    v5 = v7;
    return sub_100024F64(v5, v4);
  }

  sub_1000D2DFC(&v9, v6, &qword_101915FF8);
  sub_100266460(v7);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v4 = &qword_101915FF8;
    v5 = v6;
    return sub_100024F64(v5, v4);
  }

  swift_unknownObjectRetain();
  swift_getObjectType();
  v0 = swift_conformsToProtocol2();
  if (v0)
  {
    v1 = v0;
    sub_100024F64(v6, &qword_101915FF8);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005262D4()
{
  sub_100525668(v2);
  if (v2[1])
  {
    v0 = v3;
    sub_100266460(v2);
  }

  else
  {
    sub_100024F64(v2, &qword_101915FF0);
    return 0;
  }

  return v0;
}

uint64_t sub_100526360(uint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for HomeListRecentsSectionController();
  objc_msgSendSuper2(&v23, "collectionView:didSelectItemAtIndexPath:", a1, isa);

  sub_10003E48C(v2 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v22);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v22);
  if (Strong)
  {
    v6 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    receiver = v22[0].receiver;
    if (v22[0].receiver)
    {
      if (*(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
      {
        v8 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

        sub_100368890(receiver, 2, 0, 2, v8, v22);

        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();
  }

  memset(v22, 0, 48);
LABEL_8:
  sub_1000D2DFC(v22, &v14, &qword_101916000);
  if (!v14)
  {
    sub_100024F64(v22, &qword_101916000);
    sub_100024F64(&v14, &qword_101916000);
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = -1;
LABEL_16:
    v10 = &qword_101909870;
    v11 = &v18;
    return sub_100024F64(v11, v10);
  }

  sub_1000D2DFC(&v15, v13, &unk_10191C220);
  sub_10005E7BC(v13, v16);
  sub_10019D044(&v14);
  sub_1000CE6B8(&unk_101911D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    goto LABEL_15;
  }

  if (v21 == 255)
  {
LABEL_15:
    sub_100024F64(v22, &qword_101916000);
    goto LABEL_16;
  }

  sub_1000D671C(&v18, &v14);
  sub_100340568(&v14, v16);
  if (v17 != 4)
  {
    sub_1003405A8(&v14);
    sub_100024F64(v22, &qword_101916000);
    return sub_1003405A8(v16);
  }

  v9 = [v16[0] mspHistoryEntry];
  sub_1005271B4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1003405A8(&v14);
  v10 = &qword_101916000;
  v11 = v22;
  return sub_100024F64(v11, v10);
}

uint64_t sub_100526768(uint64_t a1, char a2, uint64_t a3)
{
  sub_1000D2DFC(a1, &aBlock, &qword_101916000);
  if (!aBlock)
  {
    return sub_100024F64(&aBlock, &qword_101916000);
  }

  v24[0] = aBlock;
  v24[1] = v18;
  v24[2] = v19;
  sub_1000D2DFC(v24 + 8, &v20, &unk_10191C220);
  sub_10005E7BC(&v20, &aBlock);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    sub_1000D671C(&v20, v23);
    if (a2 == 2)
    {
      sub_10053E580(v24, a3);
    }

    else if (a2 == 9)
    {
      sub_100340568(v23, &aBlock);
      if (BYTE8(v18) == 3)
      {
        v6 = aBlock;
        sub_10003E48C(v3 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &aBlock);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_10003E4E8(&aBlock);
        if (Strong && (v8 = [Strong homeDeleteDelegate], swift_unknownObjectRelease(), v8))
        {
          [v8 deleteMarkedLocation:v6];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        sub_1003405A8(&aBlock);
        v10 = sub_10033F4D4();
        if (v10)
        {
          v11 = v10;
          v12 = *(v3 + OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_cellModelProvider);
          sub_1000CE6B8(&qword_101908400);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1011E47B0;
          *(inited + 32) = v11;
          v14 = *(v12 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataProvider);
          swift_unknownObjectRetain();
          sub_100192CBC(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          isa = Array._bridgeToObjectiveC()().super.isa;

          *&v19 = UIView.annotateView(with:);
          *(&v19 + 1) = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v18 = sub_1002B0058;
          *(&v18 + 1) = &unk_10161FFF0;
          v16 = _Block_copy(&aBlock);

          [v14 deleteRecents:isa completion:v16];
          _Block_release(v16);
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1003405A8(v23);
    return sub_10019D044(v24);
  }

  else
  {
    sub_10019D044(v24);
    v21 = 0;
    v20 = 0uLL;
    v22 = -1;
    return sub_100024F64(&v20, &qword_101909870);
  }
}

uint64_t sub_100526AC8(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2DFC(a1, &v23, &qword_101916000);
  if (!v23)
  {
    return sub_100024F64(&v23, &qword_101916000);
  }

  v30[0] = v23;
  v30[1] = v24;
  v30[2] = v25;
  sub_1000D2DFC(v30 + 8, &v26, &unk_10191C220);
  sub_10005E7BC(&v26, &v23);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    sub_1000D671C(&v26, v29);
    v7 = v1;
    v8 = sub_10033F5E0();
    if (v8)
    {
      v9 = v8;
      sub_10003E48C(v7 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10003E4E8(&v23);
      if (Strong)
      {
        [Strong homeItemTapped:v9];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_100340568(v29, &v23);
    if (BYTE8(v24) == 4)
    {
      v22[2] = v23;
      v22[1] = [v23 mspHistoryEntry];
      v12 = *(v7 + OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_cellModelProvider);
      swift_getKeyPath();
      *&v23 = v12;
      sub_100527570(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22[0] = v22;
      v14 = *(v12 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots);
      __chkstk_darwin(v13);
      v22[-2] = v30;

      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = v14 + 32;
        do
        {
          v18 = sub_100526F04();
          if (v18)
          {
            break;
          }

          ++v16;
          v17 += 48;
        }

        while (v15 != v16);
        v19 = v18 ^ 1;
      }

      else
      {
        v19 = 1;
      }

      v21 = v19 & 1;

      if (v21)
      {
        sub_1003405A8(v29);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return sub_10019D044(v30);
      }

      IndexPath.init(item:section:)();
      sub_1005271B4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
      v20 = v29;
    }

    else
    {
      sub_1003405A8(v29);
      v20 = &v23;
    }

    sub_1003405A8(v20);
    return sub_10019D044(v30);
  }

  v26 = 0uLL;
  v27 = 0;
  v28 = -1;
  sub_100024F64(&v26, &qword_101909870);
  return sub_10019D044(v30);
}

id sub_100526F64(void *a1, void *a2, uint64_t a3, char a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v10 = &a5[OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__itemCount;
  *&a5[OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__itemCount] = 0;
  ObservationRegistrar.init()();
  *&a5[OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider] = a1;
  swift_unknownObjectWeakInit();
  v22 = sub_1000CE6B8(&qword_10191A5D8);
  v20 = a2;
  v21 = &off_10161FF60;
  sub_10005E838(&v20, v22);
  DynamicType = swift_getDynamicType();
  v13 = a1;
  v14 = a2;
  sub_10004E3D0(&v20);
  if (swift_isClassType() && DynamicType)
  {
    v20 = v14;
    v21 = &off_10161FF60;
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectWeakAssign();
  }

  sub_1005275B8(v23, &a5[OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__delegate]);
  *v10 = a3;
  v10[8] = a4 & 1;
  *&a5[OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__groups] = &_swiftEmptyArrayStorage;
  *&a5[v11] = 0;
  v19.receiver = a5;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "init");
  sub_1004DC000();
  swift_allocObject();
  v16 = swift_unknownObjectWeakInit();
  __chkstk_darwin(v16);
  withObservationTracking<A>(_:onChange:)();

  return v15;
}

void sub_1005271B4()
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (!v2)
    {
      v9 = objc_opt_self();
      v18 = IndexPath.item.getter();
      dispatch thunk of CustomStringConvertible.description.getter();
      v1 = String._bridgeToObjectiveC()();

      [v9 captureUserAction:2064 target:8 value:{v1, v18, &OBJC_PROTOCOL___MSPHistoryEntryRoute}];
      goto LABEL_19;
    }

    v3 = v2;
    swift_unknownObjectRetain();
    v1 = [v3 endWaypoint];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRetain();
      v10 = [v3 waypoints];
      sub_100014C84(0, &qword_101914500);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12 > 2)
      {
        v13 = 302;
      }

      else
      {
        v13 = 303;
      }

      v14 = objc_opt_self();
      v19 = IndexPath.item.getter();
      dispatch thunk of CustomStringConvertible.description.getter();
      v1 = String._bridgeToObjectiveC()();

      [v14 captureUserAction:v13 target:8 value:{v1, v19, &OBJC_PROTOCOL___MSPHistoryEntryRoute}];
      goto LABEL_18;
    }

    v5 = [v4 route];
    v6 = [v5 source];

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v15 = objc_opt_self();
        v20 = IndexPath.item.getter();
        dispatch thunk of CustomStringConvertible.description.getter();
        v8 = String._bridgeToObjectiveC()();

        [v15 captureUserAction:468 target:8 value:{v8, v20, &OBJC_PROTOCOL___MSPHistoryEntryRoute}];
        goto LABEL_17;
      }
    }

    else if (v6 == 2)
    {
      v7 = objc_opt_self();
      v17 = IndexPath.item.getter();
      dispatch thunk of CustomStringConvertible.description.getter();
      v8 = String._bridgeToObjectiveC()();

      [v7 captureUserAction:462 target:8 value:{v8, v17, &OBJC_PROTOCOL___MSPHistoryEntryRoute}];
LABEL_17:
    }

LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v0 = objc_opt_self();
  v16 = IndexPath.item.getter();
  dispatch thunk of CustomStringConvertible.description.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 captureUserAction:175 target:8 value:{v1, v16, v21}];
LABEL_19:
}

uint64_t sub_100527570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005275B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101923ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100527640(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10005EFF0(v3, 0);
  sub_100249D04(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1005276D4(uint64_t *a1)
{
  v38 = type metadata accessor for Date();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = v28 - v6;
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10056DDF4(v7);
    *a1 = v7;
  }

  v9 = *(v7 + 16);
  v30 = (v7 + 32);
  v42[0] = v7 + 32;
  v42[1] = v9;
  v10 = _minimumMergeRunLength(_:)(v9);
  if (v10 >= v9)
  {
    if (v9 >= 2)
    {
      v28[0] = a1;
      v28[1] = v1;
      v35 = *(v3 + 16);
      v36 = v3 + 16;
      v34 = (v3 + 8);
      v13 = -1;
      v14 = 1;
      v15 = v30;
      v29 = v9;
      do
      {
        v32 = v14;
        v33 = v13;
        v16 = v30[v14];
        v31 = v15;
        do
        {
          v17 = *v15;
          v19 = v37;
          v18 = v38;
          v20 = v35;
          v35(v37, v16 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v38);
          v21 = v17 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime;
          v40 = v17;
          v22 = v39;
          v20(v39, v21, v18);

          v23 = Date.compare(_:)();
          v24 = *v34;
          (*v34)(v22, v18);
          v24(v19, v18);

          if (v23 != -1)
          {
            break;
          }

          v25 = *v15;
          v16 = v15[1];
          *v15 = v16;
          v15[1] = v25;
          --v15;
        }

        while (!__CFADD__(v13++, 1));
        v14 = v32 + 1;
        v15 = v31 + 1;
        v13 = v33 - 1;
      }

      while (v32 + 1 != v29);
    }
  }

  else
  {
    v11 = v10;
    if (v9 >= 2)
    {
      type metadata accessor for GEOAPSessionSpecificModelItem(0);
      v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9 >> 1;
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    v41[0] = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
    v41[1] = (v9 >> 1);
    sub_10052D598(v41, v43, v42, v11);
    *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_1005279B8(void **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10056D604(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10052D1F0(v5);
  *a1 = v3;
}

void sub_100527A60()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 16);
  v6(v5, v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_section, v1, v3);
  sub_100529C18(&qword_10190BAA0, 255, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v7 = *(v2 + 8);
  v7(v5, v1);
  (v6)(v5, v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v1);
  dispatch thunk of Hashable.hash(into:)();
  v7(v5, v1);
  v8 = *(v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_duration);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  (v6)(v5, v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_endTime, v1);
  dispatch thunk of Hashable.hash(into:)();
  v7(v5, v1);
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_eventCount));
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_byteCount));
}

uint64_t sub_100527C84()
{
  v1 = OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_section;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v2);
  v3(v0 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_endTime, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100527D94()
{
  result = type metadata accessor for Date();
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

Swift::Int sub_100527E98()
{
  Hasher.init(_seed:)();
  sub_100527A60();
  return Hasher._finalize()();
}

Swift::Int sub_100527F00()
{
  Hasher.init(_seed:)();
  sub_100527A60();
  return Hasher._finalize()();
}

id sub_100527F54(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1005303D4(a4);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10052805C()
{
  v1[14] = v0;
  v2 = type metadata accessor for Calendar.Identifier();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Calendar();
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v1[20] = *(v4 + 64);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10052818C, 0, 0);
}

id sub_10052818C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyDictionarySingleton;
  (*(v2 + 104))(v1, enum case for Calendar.Identifier.gregorian(_:), v3);
  Calendar.init(identifier:)();
  (*(v2 + 8))(v1, v3);
  result = [objc_opt_self() sharedManager];
  v19 = result;
  if (result)
  {
    v6 = v0[21];
    v18 = v0[22];
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[18];
    v10 = v0[14];
    (*(v7 + 16))(v6);
    v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    (*(v7 + 32))(v13 + v11, v6, v9);
    *(v13 + v12) = v4;
    v0[6] = sub_100530934;
    v0[7] = v13;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100567A38;
    v0[5] = &unk_101620100;
    v14 = _Block_copy(v0 + 2);

    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v10;
    v0[12] = sub_100530A38;
    v0[13] = v15;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100039C64;
    v0[11] = &unk_101620150;
    v16 = _Block_copy(v0 + 8);

    [v19 showHistoryOfAge:10000000 withVisitorBlock:v14 completion:v16];
    _Block_release(v16);
    _Block_release(v14);

    (*(v7 + 8))(v18, v9);

    v17 = v0[1];

    return v17();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005284C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v82 = a6;
  v83 = a7;
  v84 = a4;
  v86 = a3;
  v87 = type metadata accessor for Date();
  v13 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = type metadata accessor for DateComponents();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v22 - 8);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  __chkstk_darwin(v28);
  v30 = &v71 - v29;
  __chkstk_darwin(v31);
  if (*(a10 + 44))
  {
    return;
  }

  v36 = a5 == 8 ? 7 : a5;
  if (v36 != *(a10 + 40))
  {
    return;
  }

  v74 = v33;
  v75 = v35;
  v79 = v34;
  v81 = &v71 - v32;
  sub_1002323DC(v86, v30);
  v37 = v87;
  v77 = *(v13 + 48);
  v78 = v13 + 48;
  v38 = v77(v30, 1, v87);
  v80 = v21;
  v73 = v18;
  v72 = v19;
  v76 = v17;
  if (v38 == 1)
  {
    sub_100232374(v30);
    v39 = 1;
    v40 = v81;
  }

  else
  {
    v40 = v81;
    Date.addingTimeInterval(_:)();
    (*(v13 + 8))(v30, v37);
    v39 = 0;
  }

  (*(v13 + 56))(v40, v39, 1, v37);
  sub_1000CE6B8(&qword_10191A210);
  v41 = type metadata accessor for Calendar.Component();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1011E1D40;
  v46 = v45 + v44;
  v47 = *(v42 + 104);
  v47(v46, enum case for Calendar.Component.year(_:), v41);
  v47(v46 + v43, enum case for Calendar.Component.month(_:), v41);
  v48 = v87;
  v47(v46 + 2 * v43, enum case for Calendar.Component.day(_:), v41);
  sub_10052FAE8(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1002323DC(v40, v27);
  v49 = v77;
  if (v77(v27, 1, v48) == 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  Calendar.dateComponents(_:from:)();

  v50 = *(v13 + 8);
  v50(v27, v48);
  v51 = v75;
  Calendar.date(from:)();
  v52 = v49(v51, 1, v48);
  v53 = v76;
  if (v52 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v54 = *(v13 + 32);
  v54(v76, v51, v48);
  (*(v13 + 16))(v85, v53, v48);
  v55 = v79;
  sub_1002323DC(v81, v79);
  if (v49(v55, 1, v48) == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v75 = v50;
  v56 = v74;
  sub_1002323DC(v86, v74);
  if (v49(v56, 1, v48) == 1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v57 = v48;
  v58 = v84;
  v59 = v82;
  v60 = v83;
  type metadata accessor for GEOAPSessionSpecificModelItem(0);
  v61 = swift_allocObject();
  v54((v61 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_section), v85, v57);
  v54((v61 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime), v79, v57);
  *(v61 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_duration) = v58;
  v54((v61 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_endTime), v56, v57);
  *(v61 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_eventCount) = v59;
  *(v61 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_byteCount) = v60;
  swift_beginAccess();
  v62 = *(a12 + 16);
  if (*(v62 + 16) && (v63 = sub_100297604(v53), (v64 & 1) != 0))
  {
    v89 = *(*(v62 + 56) + 8 * v63);
    swift_endAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v65 = v72;
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v66 = v89;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = *(a12 + 16);
    *(a12 + 16) = 0x8000000000000000;
    sub_10012B840(v66, v53, isUniquelyReferenced_nonNull_native);
    *(a12 + 16) = v88;
    swift_endAccess();

    v75(v53, v87);
    (*(v65 + 8))(v80, v73);
  }

  else
  {
    swift_endAccess();
    sub_1000CE6B8(&qword_101908400);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1011E47B0;
    *(v68 + 32) = v61;

    v69 = sub_100527640(v68);
    swift_beginAccess();
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(a12 + 16);
    *(a12 + 16) = 0x8000000000000000;
    sub_10012B840(v69, v53, v70);
    *(a12 + 16) = v89;
    swift_endAccess();

    v75(v53, v87);
    (*(v72 + 8))(v80, v73);
  }

  sub_100232374(v81);
}

uint64_t sub_100528D70(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_101925F28);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  type metadata accessor for GEOAPSessionSpecificModelItem(0);
  sub_100529C18(&qword_10190BAA0, 255, &type metadata accessor for Date);
  sub_100529C18(&unk_101925C18, 255, type metadata accessor for GEOAPSessionSpecificModelItem);
  v57 = v15;
  NSDiffableDataSourceSnapshot.init()();
  swift_beginAccess();
  v54 = a1;
  v55 = v7;
  v16 = *(a1 + 16);
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = sub_100358C54(*(v16 + 16), 0);
  sub_10041714C(v59, &v18[(*(v7 + 80) + 32) & ~*(v7 + 80)], v17, v16);
  v20 = v19;
  rawValue = v59[1]._rawValue;
  v56 = v59[2]._rawValue;
  v52 = v59[4]._rawValue;
  v53 = v59[3]._rawValue;

  sub_10005F150();
  if (v20 != v17)
  {
    __break(1u);
LABEL_4:
    v18 = _swiftEmptyArrayStorage;
  }

  v49 = v11;
  v59[0]._rawValue = v18;

  sub_1005279B8(v59);
  v21 = v55;

  v22 = v59[0]._rawValue;
  NSDiffableDataSourceSnapshot.appendSections(_:)(v59[0]);
  v56 = v22;
  v53 = v22[2];
  if (!v53)
  {
LABEL_19:

    v35 = v54;
    swift_beginAccess();
    v36 = v50;
    *(v50 + 16) = *(v35 + 16);

    v37 = OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificDataModel_snapshot;
    swift_beginAccess();
    v38 = v49;
    v39 = v57;
    (*(v49 + 24))(v36 + v37, v57, v10);
    swift_endAccess();
    v40 = *(v36 + 32);
    if (!v40)
    {
      return (*(v38 + 8))(v39, v10);
    }

    v41 = v36 + v37;
    v42 = v48;
    (*(v38 + 16))(v48, v41, v10);
    v43 = v40;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v44 = *(v38 + 8);
    v44(v42, v10);
    return (v44)(v39, v10);
  }

  v23 = 0;
  v52 = v56 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  rawValue = (v21 + 16);
  v51 = (v21 + 56);
  v24 = (v21 + 8);
  while (v23 < v56[2])
  {
    v25 = v10;
    v26 = *(v21 + 16);
    v26(v9, &v52[*(v21 + 72) * v23], v6);
    v27 = v54;
    swift_beginAccess();
    v28 = *(v27 + 16);
    if (!*(v28 + 16))
    {
      goto LABEL_24;
    }

    v29 = sub_100297604(v9);
    if ((v30 & 1) == 0)
    {
      goto LABEL_24;
    }

    v31 = *(*(v28 + 56) + 8 * v29);
    swift_endAccess();
    if (!(v31 >> 62))
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFF8);

LABEL_12:

      goto LABEL_13;
    }

    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      v32 = _swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    v47 = v33;
    v32 = sub_10005EFF0(v33, 0);
    swift_bridgeObjectRetain_n();
    sub_100249D04((v32 + 4), v47, v31);
    v46 = v34;

    if (v46 != v47)
    {
      goto LABEL_25;
    }

LABEL_13:
    v59[0]._rawValue = v32;
    sub_1005276D4(v59);
    ++v23;

    v26(v5, v9, v6);
    (*v51)(v5, 0, 1, v6);
    v10 = v25;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    sub_100232374(v5);
    (*v24)(v9, v6);
    v21 = v55;
    if (v53 == v23)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_24:
  swift_endAccess();
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100529400(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  objc_allocWithZone(type metadata accessor for GEOAPSessionSpecificDataSource(0));
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10053084C;
  *(v7 + 24) = v2;

  v8 = a1;
  v9 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v10 = *(v2 + 32);
  *(v2 + 32) = v9;

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;

  sub_10020AAE4(0, 0, v6, &unk_10120EEF0, v12);
}

void sub_10052958C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000CE6B8(&qword_101925F28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v26 = type metadata accessor for Date();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v27 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 dequeueReusableCellWithIdentifier:v11];

  if (!v12)
  {
    goto LABEL_14;
  }

  type metadata accessor for GEOAPSessionSpecificUploadTableViewCell();
  v23 = swift_dynamicCastClassUnconditional();
  v13 = IndexPath.section.getter();
  v24 = IndexPath.row.getter();
  v14 = OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificDataModel_snapshot;
  swift_beginAccess();
  v15 = *(v7 + 16);
  v15(v9, a4 + v14, v6);
  v16 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v17 = *(v7 + 8);
  v25 = v7 + 8;
  v17(v9, v6);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 >= *(v16 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v13;
  v13 = v26;
  (*(v28 + 16))(v27, v18, v26);

  v15(v9, a4 + v14, v6);
  v19 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v17(v9, v6);
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v24 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 8 * v24 + 32);

LABEL_8:

    (*(v28 + 8))(v27, v13);
    type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v23 + OBJC_IVAR____TtC4Maps39GEOAPSessionSpecificUploadTableViewCell_cellConfig) = v21;

    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1005298F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_10052805C();
}

uint64_t sub_100529988()
{

  v1 = OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificDataModel_snapshot;
  v2 = sub_1000CE6B8(&qword_101925F28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100529A70()
{
  sub_100529B24();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100529B24()
{
  if (!qword_101925C10)
  {
    type metadata accessor for Date();
    type metadata accessor for GEOAPSessionSpecificModelItem(255);
    sub_100529C18(&qword_10190BAA0, 255, &type metadata accessor for Date);
    sub_100529C18(&unk_101925C18, 255, type metadata accessor for GEOAPSessionSpecificModelItem);
    v0 = type metadata accessor for NSDiffableDataSourceSnapshot();
    if (!v1)
    {
      atomic_store(v0, &qword_101925C10);
    }
  }
}

uint64_t sub_100529C18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_100529C60()
{
  *&v0[OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency] = 0;
  *&v0[OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_indicatorRects] = _swiftEmptyArrayStorage;
  v69.receiver = v0;
  v69.super_class = type metadata accessor for GEOAPUploadLatencyBarView();
  v1 = objc_msgSendSuper2(&v69, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v2 = objc_allocWithZone(UIView);
  v3 = v1;
  v4 = [v2 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v3;
  [v5 addSubview:v4];
  v6 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E5C00;
  v8 = [v4 topAnchor];
  v9 = [v5 layoutMarginsGuide];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v7 + 32) = v11;
  v12 = [v4 leadingAnchor];
  v13 = [v5 layoutMarginsGuide];

  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];

  *(v7 + 40) = v15;
  v16 = [v4 trailingAnchor];
  v17 = [v5 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  *(v7 + 48) = v19;
  v20 = [v4 bottomAnchor];
  v21 = [v5 layoutMarginsGuide];
  v67 = v5;

  v22 = v4;
  v23 = [v21 bottomAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v7 + 56) = v24;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v65 = v6;
  [v6 activateConstraints:isa];

  v66 = v22;
  v26 = [v22 leftAnchor];
  v27 = objc_opt_self();
  v63 = OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_indicatorRects;
  v28 = 6;
  v29 = &selRef_setAge_;
  v64 = v27;
  do
  {
    v68 = v28;
    v30 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v27 systemBlackColor];
    [v30 v29[343]];

    [v66 addSubview:v30];
    v32 = v30;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [v27 systemWhiteColor];
    [v33 v29[343]];

    [v32 addSubview:v33];
    swift_beginAccess();
    v35 = v33;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v67 + v63) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v67 + v63) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1011E7920;
    v37 = [v32 leftAnchor];
    v38 = [v37 constraintEqualToAnchor:v26];

    *(v36 + 32) = v38;
    v39 = [v32 topAnchor];
    v40 = [v66 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v36 + 40) = v41;
    v42 = [v32 bottomAnchor];
    v43 = [v66 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    *(v36 + 48) = v44;
    v45 = [v32 widthAnchor];
    v46 = [v66 widthAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 multiplier:0.166666667];

    *(v36 + 56) = v47;
    v48 = [v35 leftAnchor];
    v49 = [v32 leftAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:1.0];

    *(v36 + 64) = v50;
    v51 = [v35 rightAnchor];
    v52 = [v32 rightAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:-1.0];

    *(v36 + 72) = v53;
    v54 = [v35 topAnchor];
    v55 = [v32 topAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:1.0];

    *(v36 + 80) = v56;
    v57 = [v35 bottomAnchor];
    v58 = [v32 bottomAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:-1.0];

    *(v36 + 88) = v59;
    v60 = Array._bridgeToObjectiveC()().super.isa;

    [v65 activateConstraints:v60];

    v61 = [v32 rightAnchor];
    v26 = v61;
    v28 = v68 - 1;
    v27 = v64;
    v29 = &selRef_setAge_;
  }

  while (v68 != 1);

  return v67;
}

void sub_10052A5D8(unsigned int a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_latency) = a1;
  v3 = 0;
  if (a1 > 0x384)
  {
    v3 = 1;
    if (a1 > 0x708)
    {
      v3 = 2;
      if (a1 > 0xE10)
      {
        v3 = 3;
        if (a1 > 0x5460)
        {
          v3 = 4;
          if (a1 > 0xA8C0)
          {
            v3 = 5;
          }
        }
      }
    }
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC4Maps25GEOAPUploadLatencyBarView_indicatorRects;
  swift_beginAccess();
  v6 = 4;
  do
  {
    v9 = v6 - 4;
    if (v4 < v6 - 4)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v10 = *(v2 + v5);
      if ((v10 & 0xC000000000000001) != 0)
      {

        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v11 = *(v10 + 8 * v6);
      }

      isa = [objc_opt_self() systemWhiteColor];
      goto LABEL_25;
    }

    v13 = *(v2 + v5);
    v14 = v13 & 0xC000000000000001;
    if (v9 >= 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = v6 - 4;
    }

    if (v9 <= 5)
    {
      if (v14)
      {

        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v11 = *(v13 + 8 * v6);
      }

      sub_100014C84(0, &qword_10190CA00);
      v16._countAndFlagsBits = *&a22ff22[8 * v15];
      v16._object = 0xE600000000000000;
      isa = UIColor.init(hex:)(v16).super.isa;
LABEL_25:
      v17 = isa;
      [v11 setBackgroundColor:isa];

      if (v6 == 9)
      {
        return;
      }

      goto LABEL_10;
    }

    if (v14)
    {

      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v7 = *(v13 + 8 * v6);
    }

    v8 = [objc_opt_self() systemLightGrayColor];
    [v7 setBackgroundColor:v8];

LABEL_10:
    ++v6;
  }

  while (v9 != -1);
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

id sub_10052AC00(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10052AC6C(uint64_t a1)
{
  sub_10005EB40(a1, v5);
  sub_1000CE6B8(&qword_101914930);
  type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration();
  if (swift_dynamicCast())
  {
    *(v1 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView_currentConfig) = v4;
    swift_retain_n();

    sub_10052BE84(v4);
  }

  return sub_10004E3D0(a1);
}

void (*sub_10052AD20(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView_currentConfig;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = *(v1 + v5);
  v7 = type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration();
  v4[13] = v7;
  v4[3] = v7;
  v4[4] = sub_100529C18(&qword_101925F18, v8, type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration);
  *v4 = v6;

  return sub_10052ADF0;
}

void sub_10052ADF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10005EB40(*a1, (v2 + 5));
    sub_10052AC6C((v2 + 5));
  }

  else
  {
    sub_10005EB40(*a1, (v2 + 5));
    sub_1000CE6B8(&qword_101914930);
    if (swift_dynamicCast())
    {
      v3 = v2[10];
      *(v2[11] + v2[12]) = v3;
      swift_retain_n();

      sub_10052BE84(v3);
    }
  }

  sub_10004E3D0(v2);

  free(v2);
}

id sub_10052AECC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___timeLabel] = 0;
  *&v1[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___eventCountLabel] = 0;
  *&v1[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___byteCountLabel] = 0;
  *&v1[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___labelContainerView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___latencyView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView_currentConfig] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GEOAPSessionSpecificUploadTableViewCellView();

  v3 = objc_msgSendSuper2(&v5, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10052B2D4();
  sub_10052BE84(a1);

  return v3;
}

id sub_10052AFD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [objc_opt_self() systemLightGrayColor];
    [v7 setBackgroundColor:v8];

    [v7 setTextAlignment:a2];
    v9 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_10052B0D0()
{
  v1 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10052B168()
{
  v1 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___labelContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___labelContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___labelContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [objc_opt_self() systemLightGrayColor];
    [v4 setBackgroundColor:v5];

    [v4 _setCornerRadius:8.0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10052B250()
{
  v1 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___latencyView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___latencyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___latencyView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for GEOAPUploadLatencyBarView()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10052B2D4()
{
  v1 = sub_10052B0D0();
  [v0 addSubview:v1];

  v2 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___containerView;
  v3 = *&v0[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___containerView];
  v4 = sub_10052B168();
  [v3 addSubview:v4];

  v5 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___labelContainerView;
  v6 = *&v0[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___labelContainerView];
  v7 = sub_10052AFA4();
  [v6 addSubview:v7];

  v8 = *&v0[v5];
  v9 = sub_10052AFB4();
  [v8 addSubview:v9];

  v10 = *&v0[v5];
  v11 = sub_10052AFC4();
  [v10 addSubview:v11];

  v12 = *&v0[v2];
  v13 = sub_10052B250();
  [v12 addSubview:v13];

  v96 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10120EC20;
  v15 = [*&v0[v2] leadingAnchor];
  v16 = [v0 layoutMarginsGuide];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v14 + 32) = v18;
  v19 = [*&v0[v2] topAnchor];
  v20 = [v0 layoutMarginsGuide];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v14 + 40) = v22;
  v23 = [*&v0[v2] trailingAnchor];
  v24 = [v0 layoutMarginsGuide];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v14 + 48) = v26;
  v27 = [*&v0[v2] bottomAnchor];
  v28 = [v0 layoutMarginsGuide];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v14 + 56) = v30;
  v31 = [*&v0[v2] heightAnchor];
  v32 = [v31 constraintEqualToConstant:56.0];

  *(v14 + 64) = v32;
  v33 = [*&v0[v5] leadingAnchor];
  v34 = [*&v0[v2] leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v14 + 72) = v35;
  v36 = [*&v0[v5] trailingAnchor];
  v37 = [*&v0[v2] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v14 + 80) = v38;
  v39 = [*&v0[v5] topAnchor];
  v40 = [*&v0[v2] topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v14 + 88) = v41;
  v42 = [*&v0[v5] heightAnchor];
  v43 = [v42 constraintEqualToConstant:24.0];

  *(v14 + 96) = v43;
  v44 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___timeLabel;
  v45 = [*&v0[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___timeLabel] leadingAnchor];
  v46 = [*&v0[v5] leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:5.0];

  *(v14 + 104) = v47;
  v48 = [*&v0[v44] topAnchor];
  v49 = [*&v0[v5] topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v14 + 112) = v50;
  v51 = [*&v0[v44] widthAnchor];
  v52 = [*&v0[v5] widthAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 multiplier:0.2];

  *(v14 + 120) = v53;
  v54 = [*&v0[v44] bottomAnchor];
  v55 = [*&v0[v5] bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v14 + 128) = v56;
  v57 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___eventCountLabel;
  v58 = [*&v0[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___eventCountLabel] topAnchor];
  v59 = [*&v0[v5] topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v14 + 136) = v60;
  v61 = [*&v0[v57] leftAnchor];
  v62 = [*&v0[v44] rightAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v14 + 144) = v63;
  v64 = [*&v0[v57] bottomAnchor];
  v65 = [*&v0[v5] bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v14 + 152) = v66;
  v67 = [*&v0[v57] widthAnchor];
  v68 = [*&v0[v5] widthAnchor];
  v69 = [v67 constraintLessThanOrEqualToAnchor:v68 multiplier:0.25];

  *(v14 + 160) = v69;
  v70 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___byteCountLabel;
  v71 = [*&v0[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___byteCountLabel] topAnchor];
  v72 = [*&v0[v5] topAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v14 + 168) = v73;
  v74 = [*&v0[v70] trailingAnchor];
  v75 = [*&v0[v5] trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:-5.0];

  *(v14 + 176) = v76;
  v77 = [*&v0[v70] bottomAnchor];
  v78 = [*&v0[v5] bottomAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v14 + 184) = v79;
  v80 = [*&v0[v70] leftAnchor];
  v81 = [*&v0[v57] rightAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v14 + 192) = v82;
  v83 = OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___latencyView;
  v84 = [*&v0[OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___latencyView] leftAnchor];
  v85 = [*&v0[v2] leftAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v14 + 200) = v86;
  v87 = [*&v0[v83] topAnchor];
  v88 = [*&v0[v5] bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v14 + 208) = v89;
  v90 = [*&v0[v83] rightAnchor];
  v91 = [*&v0[v2] rightAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v14 + 216) = v92;
  v93 = [*&v0[v83] bottomAnchor];
  v94 = [*&v0[v2] bottomAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v14 + 224) = v95;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v96 activateConstraints:isa];
}

uint64_t sub_10052BE84(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v2 - 8);
  v39 = &v36 - v3;
  v4 = sub_1000CE6B8(&qword_1019205A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for DateComponents();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = objc_allocWithZone(NSDateFormatter);

  v16 = [v15 init];
  v17 = String._bridgeToObjectiveC()();
  [v16 setDateFormat:v17];

  v18 = sub_10052AFA4();
  (*(v11 + 16))(v13, v14 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v10);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v13, v10);
  v36 = v16;
  v20 = [v16 stringFromDate:isa];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v18 setText:v20];

  v21 = sub_10052AFB4();
  sub_1000CE6B8(&unk_10190D5C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1011E1D30;
  v23 = *(v14 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_eventCount);
  *(v22 + 56) = &type metadata for UInt;
  *(v22 + 64) = &protocol witness table for UInt;
  *(v22 + 32) = v23;
  String.init(format:_:)();
  v24 = String._bridgeToObjectiveC()();

  [v21 setText:v24];

  v25 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v25 setUnitsStyle:5];
  [v25 setIncludesTimeRemainingPhrase:0];
  [v25 setAllowedUnits:240];
  v26 = type metadata accessor for Calendar();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = type metadata accessor for TimeZone();
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  result = DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v29 = OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_duration;
  v30 = *(v14 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_duration);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  DateComponents.second.setter();
  v31 = sub_10052AFC4();
  v32 = DateComponents._bridgeToObjectiveC()().super.isa;
  v33 = [v25 stringFromDateComponents:v32];

  [v31 setText:v33];
  result = sub_10052B250();
  v34 = *(v14 + v29);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v34 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v34 < 4294967300.0)
  {
    v35 = result;
    sub_10052A5D8(v34);

    return (*(v37 + 8))(v9, v38);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10052C5C4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView_currentConfig);
  a1[3] = type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration();
  a1[4] = sub_100529C18(&qword_101925F18, v4, type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration);
  *a1 = v3;
}

void (*sub_10052C64C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_10052AD20(v2);
  return sub_10023194C;
}

uint64_t sub_10052C6C0()
{

  return swift_deallocClassInstance();
}

id sub_10052C71C()
{
  v0 = objc_allocWithZone(type metadata accessor for GEOAPSessionSpecificUploadTableViewCellView());

  v2 = sub_10052AECC(v1);
  sub_100529C18(&qword_101925F20, v3, type metadata accessor for GEOAPSessionSpecificUploadTableViewCellView);
  return v2;
}

id sub_10052CA74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps45GEOAPSessionSpecificHistoricalDebugController_dataModel;
  type metadata accessor for GEOAPSessionSpecificDataModel(0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 44) = 1;
  type metadata accessor for Date();
  type metadata accessor for GEOAPSessionSpecificModelItem(0);
  sub_100529C18(&qword_10190BAA0, 255, &type metadata accessor for Date);
  sub_100529C18(&unk_101925C18, 255, type metadata accessor for GEOAPSessionSpecificModelItem);
  NSDiffableDataSourceSnapshot.init()();
  *(v4 + 16) = _swiftEmptyDictionarySingleton;
  *&v1[v3] = v4;
  v5 = &v1[OBJC_IVAR____TtC4Maps45GEOAPSessionSpecificHistoricalDebugController_modelSectionType];
  *v5 = 0x4649434550534E55;
  *(v5 + 1) = 0xEB00000000444549;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GEOAPSessionSpecificHistoricalDebugController();
  return objc_msgSendSuper2(&v7, "initWithStyle:", a1);
}

id sub_10052CC10()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for GEOAPSessionSpecificHistoricalDebugController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_46;
  }

  v3 = result;
  type metadata accessor for GEOAPSessionSpecificUploadTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  v6 = *&v1[OBJC_IVAR____TtC4Maps45GEOAPSessionSpecificHistoricalDebugController_dataModel];
  result = [v1 tableView];
  if (!result)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v7 = result;

  v8 = String._bridgeToObjectiveC()();
  if ([v8 isEqualToString:@"UNSPECIFIED"])
  {
    v9 = 0;
  }

  else if ([v8 isEqualToString:@"COHORT"])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:@"15MO"])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:@"LONG"])
  {
    v9 = 3;
  }

  else if ([v8 isEqualToString:@"LONG_APPID"])
  {
    v9 = 4;
  }

  else if ([v8 isEqualToString:@"SHORT"])
  {
    v9 = 5;
  }

  else if ([v8 isEqualToString:@"SHORT_NAV"])
  {
    v9 = 6;
  }

  else if ([v8 isEqualToString:@"NO"])
  {
    v9 = 7;
  }

  else if ([v8 isEqualToString:@"NO_WITH_TIME"])
  {
    v9 = 8;
  }

  else if ([v8 isEqualToString:@"NAV_TRACE"])
  {
    v9 = 9;
  }

  else if ([v8 isEqualToString:@"REALTIME_TRAFFIC"])
  {
    v9 = 10;
  }

  else if ([v8 isEqualToString:@"BATCH_TRAFFIC"])
  {
    v9 = 11;
  }

  else if ([v8 isEqualToString:@"WIFI_PROBE"])
  {
    v9 = 12;
  }

  else if ([v8 isEqualToString:@"PRESSURE_DATA"])
  {
    v9 = 13;
  }

  else if ([v8 isEqualToString:@"CURATED_COLLECTION"])
  {
    v9 = 14;
  }

  else if ([v8 isEqualToString:@"LOG_DISCARD"])
  {
    v9 = 15;
  }

  else if ([v8 isEqualToString:@"POI_BUSYNESS"])
  {
    v9 = 16;
  }

  else if ([v8 isEqualToString:@"PREDEX_TRAINING"])
  {
    v9 = 17;
  }

  else if ([v8 isEqualToString:@"STRN_HARVEST"])
  {
    v9 = 19;
  }

  else if ([v8 isEqualToString:@"LOC_INTEL"])
  {
    v9 = 20;
  }

  else
  {
    v9 = 0;
  }

  *(v6 + 40) = v9;
  *(v6 + 44) = 0;
  sub_100529400(v7);
}

void sub_10052D1F0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10052DE18(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10052D31C(0, v2, 1, a1);
  }
}

void sub_10052D31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v30 - v11;
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v18 = *(v13 + 72);
    v19 = (v13 + 8);
    v20 = (v17 + v18 * (a3 - 1));
    v37 = -v18;
    v38 = (v13 + 32);
    v21 = a1 - a3;
    v39 = v17;
    v31 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    while (1)
    {
      v23 = v41;
      (v41)(v16, v22, v8, v14);
      v24 = v43;
      v23(v43, v20, v8);
      v25 = Date.compare(_:)();
      v26 = *v19;
      (*v19)(v24, v8);
      v26(v16, v8);
      if (v25 != -1)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = &v35[v31];
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v20, v28, v8);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10052D598(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v120 = type metadata accessor for Date();
  __chkstk_darwin(v120);
  v121 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v122 = &v106 - v13;
  v14 = a3[1];
  v109 = a3;
  if (v14 >= 1)
  {
    v106 = a4;
    v15 = 0;
    v118 = (v11 + 8);
    v119 = (v11 + 16);
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      v17 = v15++;
      if (v15 < v14)
      {
        v116 = v14;
        v18 = *a3;
        v19 = *(*a3 + 8 * v15);
        v111 = 8 * v17;
        v20 = (v18 + 8 * v17);
        v21 = *v20;
        v5 = (v20 + 2);
        v22 = *v119;
        v123 = v19;
        v108 = v17;
        v23 = v120;
        (v22)(v122, v19 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v120, v12);
        v24 = v121;
        v113 = v22;
        (v22)(v121, v21 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v23);

        v25 = v122;
        v117 = Date.compare(_:)();
        v26 = *v118;
        (*v118)(v24, v23);
        v112 = v26;
        (v26)(v25, v23);

        v27 = (v108 + 2);
        v114 = v16;
        while (1)
        {
          v15 = v116;
          if (v116 == v27)
          {
            break;
          }

          v115 = v6;
          LODWORD(v123) = v117 == -1;
          v28 = *(v5 - 8);
          v29 = v122;
          v30 = v120;
          v31 = v113;
          v113(v122, *v5 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v120);
          v32 = v121;
          v31(v121, v28 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v30);

          v33 = Date.compare(_:)();
          v34 = v112;
          (v112)(v32, v30);
          v34(v29, v30);

          v35 = v33 != -1;
          v16 = v114;
          v6 = v115;
          ++v27;
          v5 += 8;
          if (((v123 ^ v35) & 1) == 0)
          {
            v15 = (v27 - 1);
            break;
          }
        }

        v17 = v108;
        a3 = v109;
        v36 = v111;
        if (v117 == -1)
        {
          if (v15 < v108)
          {
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            return;
          }

          if (v108 < v15)
          {
            v37 = 8 * v15 - 8;
            v38 = v15;
            v39 = v108;
            do
            {
              if (v39 != --v38)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v40 = *(v41 + v36);
                *(v41 + v36) = *(v41 + v37);
                *(v41 + v37) = v40;
              }

              ++v39;
              v37 -= 8;
              v36 += 8;
            }

            while (v39 < v38);
          }
        }
      }

      v42 = a3[1];
      if (v15 < v42)
      {
        if (__OFSUB__(v15, v17))
        {
          goto LABEL_114;
        }

        if (v15 - v17 < v106)
        {
          v43 = (v17 + v106);
          if (__OFADD__(v17, v106))
          {
            goto LABEL_115;
          }

          if (v43 >= v42)
          {
            v43 = a3[1];
          }

          if (v43 < v17)
          {
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          if (v15 != v43)
          {
            v114 = v16;
            v115 = v6;
            v44 = *a3;
            v116 = *v119;
            v117 = v44;
            v45 = (v44 + 8 * v15 - 8);
            v108 = v17;
            v46 = v17 - v15;
            v110 = v43;
            do
            {
              v112 = v45;
              v113 = v15;
              v5 = *(v117 + 8 * v15);
              v111 = v46;
              do
              {
                v47 = *v45;
                v48 = v122;
                v49 = v120;
                v50 = v116;
                (v116)(v122, v5 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v120, v12);
                v51 = v121;
                (v50)(v121, v47 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v49);

                v123 = Date.compare(_:)();
                v52 = *v118;
                (*v118)(v51, v49);
                v52(v48, v49);

                if (v123 != -1)
                {
                  break;
                }

                if (!v117)
                {
                  goto LABEL_119;
                }

                v53 = *v45;
                v5 = v45[1];
                *v45 = v5;
                v45[1] = v53;
                --v45;
              }

              while (!__CFADD__(v46++, 1));
              v15 = v113 + 1;
              v45 = (v112 + 8);
              v46 = v111 - 1;
            }

            while (v113 + 1 != v110);
            v15 = v110;
            v16 = v114;
            v6 = v115;
            v17 = v108;
            a3 = v109;
          }
        }
      }

      if (v15 < v17)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100097874(0, *(v16 + 2) + 1, 1, v16);
      }

      v56 = *(v16 + 2);
      v55 = *(v16 + 3);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v16 = sub_100097874((v55 > 1), v56 + 1, 1, v16);
      }

      *(v16 + 2) = v57;
      v58 = &v16[16 * v56];
      *(v58 + 4) = v17;
      *(v58 + 5) = v15;
      v59 = *v107;
      if (!*v107)
      {
        goto LABEL_123;
      }

      if (v56)
      {
        while (1)
        {
          v5 = v57 - 1;
          if (v57 >= 4)
          {
            break;
          }

          if (v57 == 3)
          {
            v60 = *(v16 + 4);
            v61 = *(v16 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_55:
            if (v63)
            {
              goto LABEL_102;
            }

            v76 = &v16[16 * v57];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_105;
            }

            v82 = &v16[16 * v5 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_109;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v5 = v57 - 2;
              }

              goto LABEL_76;
            }

            goto LABEL_69;
          }

          v86 = &v16[16 * v57];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_69:
          if (v81)
          {
            goto LABEL_104;
          }

          v89 = &v16[16 * v5];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_107;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_76:
          v97 = v5 - 1;
          if (v5 - 1 >= v57)
          {
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_120;
          }

          v98 = *&v16[16 * v97 + 32];
          v99 = *&v16[16 * v5 + 40];
          sub_10052E7D0((*a3 + 8 * v98), (*a3 + 8 * *&v16[16 * v5 + 32]), (*a3 + 8 * v99), v59);
          if (v6)
          {
            goto LABEL_96;
          }

          if (v99 < v98)
          {
            goto LABEL_98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_10056D550(v16);
          }

          if (v97 >= *(v16 + 2))
          {
            goto LABEL_99;
          }

          v100 = &v16[16 * v97];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          v124 = v16;
          sub_10056D4C4(v5);
          v16 = v124;
          v57 = *(v124 + 2);
          if (v57 <= 1)
          {
            goto LABEL_3;
          }
        }

        v64 = &v16[16 * v57 + 32];
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_100;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_101;
        }

        v71 = &v16[16 * v57];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_103;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_106;
        }

        if (v75 >= v67)
        {
          v93 = &v16[16 * v5 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_110;
          }

          if (v62 < v96)
          {
            v5 = v57 - 2;
          }

          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_3:
      v14 = a3[1];
      if (v15 >= v14)
      {
        goto LABEL_86;
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_86:
  v5 = *v107;
  if (!*v107)
  {
    goto LABEL_124;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_117:
    v16 = sub_10056D550(v16);
  }

  v124 = v16;
  v101 = *(v16 + 2);
  if (v101 >= 2)
  {
    do
    {
      v102 = *a3;
      if (!*a3)
      {
        goto LABEL_121;
      }

      a3 = (v101 - 1);
      v103 = *&v16[16 * v101];
      v104 = *&v16[16 * v101 + 24];
      sub_10052E7D0((v102 + 8 * v103), (v102 + 8 * *&v16[16 * v101 + 16]), (v102 + 8 * v104), v5);
      if (v6)
      {
        break;
      }

      if (v104 < v103)
      {
        goto LABEL_111;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10056D550(v16);
      }

      if (v101 - 2 >= *(v16 + 2))
      {
        goto LABEL_112;
      }

      v105 = &v16[16 * v101];
      *v105 = v103;
      *(v105 + 1) = v104;
      v124 = v16;
      sub_10056D4C4(v101 - 1);
      v16 = v124;
      v101 = *(v124 + 2);
      a3 = v109;
    }

    while (v101 > 1);
  }

LABEL_96:
}

void sub_10052DE18(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v118 = a1;
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8);
  v121 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = &v116 - v11;
  __chkstk_darwin(v12);
  v136 = &v116 - v13;
  v16.n128_f64[0] = __chkstk_darwin(v14);
  v137 = &v116 - v17;
  v18 = a3[1];
  v127 = v15;
  if (v18 >= 1)
  {
    v116 = a4;
    v19 = 0;
    v134 = (v15 + 8);
    v135 = v15 + 16;
    v133 = (v15 + 32);
    v20 = _swiftEmptyArrayStorage;
    v138 = v8;
    v120 = a3;
    while (1)
    {
      v21 = v19;
      v128 = v20;
      if ((v19 + 1) >= v18)
      {
        v34 = (v19 + 1);
      }

      else
      {
        v129 = v18;
        v117 = v5;
        v22 = *a3;
        v23 = v127;
        v24 = *(v127 + 9);
        v25 = v19;
        v119 = v19;
        v26 = v22 + v24 * (v19 + 1);
        v27 = v22;
        v124 = v22;
        v19 = *(v127 + 2);
        (v19)(v137, v26, v8, v16);
        v28 = v27 + v24 * v25;
        v29 = v136;
        v126 = v19;
        (v19)(v136, v28, v8);
        v30 = v137;
        v130 = Date.compare(_:)();
        v31 = *(v23 + 1);
        v31(v29, v8);
        v125 = v31;
        v31(v30, v8);
        v32 = v119 + 2;
        v132 = v24;
        v33 = v124 + v24 * (v119 + 2);
        while (1)
        {
          v34 = v129;
          if (v129 == v32)
          {
            break;
          }

          v35 = v130 == -1;
          v36 = v137;
          v19 = v138;
          v37 = v126;
          (v126)(v137, v33, v138);
          v38 = v136;
          v37(v136, v26, v19);
          v39 = Date.compare(_:)();
          v40 = v125;
          (v125)(v38, v19);
          v40(v36, v19);
          v41 = v35 ^ (v39 != -1);
          v20 = v128;
          ++v32;
          v33 += v132;
          v26 += v132;
          if ((v41 & 1) == 0)
          {
            v34 = v32 - 1;
            break;
          }
        }

        v8 = v138;
        v5 = v117;
        v21 = v119;
        a3 = v120;
        if (v130 == -1)
        {
          if (v34 < v119)
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            return;
          }

          if (v119 < v34)
          {
            v42 = v34;
            v43 = v132 * (v34 - 1);
            v44 = v34 * v132;
            v129 = v34;
            v45 = v119;
            v46 = v119 * v132;
            do
            {
              if (v45 != --v42)
              {
                v48 = *v120;
                if (!*v120)
                {
                  goto LABEL_130;
                }

                v19 = *v133;
                (*v133)(v121, v48 + v46, v138);
                if (v46 < v43 || v48 + v46 >= (v48 + v44))
                {
                  v47 = v138;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v47 = v138;
                  if (v46 != v43)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                (v19)(v48 + v43, v121, v47);
                v20 = v128;
              }

              ++v45;
              v43 -= v132;
              v44 -= v132;
              v46 += v132;
            }

            while (v45 < v42);
            v5 = v117;
            v21 = v119;
            a3 = v120;
            v8 = v138;
            v34 = v129;
          }
        }
      }

      v49 = a3[1];
      if (v34 >= v49)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 >= v116)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v21, v116))
      {
        goto LABEL_123;
      }

      if (v21 + v116 >= v49)
      {
        v19 = a3[1];
      }

      else
      {
        v19 = (v21 + v116);
      }

      if (v19 < v21)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v34 == v19)
      {
LABEL_32:
        v19 = v34;
        if (v34 < v21)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v117 = v5;
        v96 = *a3;
        v97 = *(v127 + 9);
        v132 = *(v127 + 2);
        v98 = (v96 + v97 * (v34 - 1));
        v99 = -v97;
        v119 = v21;
        v100 = (v21 - v34);
        v130 = v96;
        v122 = v97;
        v123 = v19;
        v101 = v96 + v34 * v97;
        do
        {
          v129 = v34;
          v124 = v101;
          v125 = v100;
          v126 = v98;
          do
          {
            v102 = v137;
            v103 = v132;
            (v132)(v137, v101, v8);
            v104 = v136;
            v103(v136, v98, v138);
            v105 = Date.compare(_:)();
            v106 = *v134;
            v107 = v104;
            v8 = v138;
            (*v134)(v107, v138);
            v106(v102, v8);
            if (v105 != -1)
            {
              break;
            }

            if (!v130)
            {
              goto LABEL_127;
            }

            v108 = *v133;
            v109 = v131;
            (*v133)(v131, v101, v8);
            swift_arrayInitWithTakeFrontToBack();
            (v108)(v98, v109, v8);
            v98 += v99;
            v101 += v99;
          }

          while (!__CFADD__(v100++, 1));
          v34 = v129 + 1;
          v19 = v123;
          v98 = &v126[v122];
          v100 = v125 - 1;
          v101 = v124 + v122;
        }

        while ((v129 + 1) != v123);
        v5 = v117;
        v21 = v119;
        a3 = v120;
        v20 = v128;
        if (v123 < v119)
        {
          goto LABEL_121;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100097874(0, *(v20 + 2) + 1, 1, v20);
      }

      v51 = *(v20 + 2);
      v50 = *(v20 + 3);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v20 = sub_100097874((v50 > 1), v51 + 1, 1, v20);
      }

      *(v20 + 2) = v52;
      v53 = &v20[16 * v51];
      *(v53 + 4) = v21;
      *(v53 + 5) = v19;
      v54 = *v118;
      if (!*v118)
      {
        goto LABEL_131;
      }

      if (v51)
      {
        while (1)
        {
          v21 = v52 - 1;
          if (v52 >= 4)
          {
            break;
          }

          if (v52 == 3)
          {
            v55 = *(v20 + 4);
            v56 = *(v20 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_52:
            if (v58)
            {
              goto LABEL_110;
            }

            v71 = &v20[16 * v52];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_113;
            }

            v77 = &v20[16 * v21 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_117;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v21 = v52 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v81 = &v20[16 * v52];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_66:
          if (v76)
          {
            goto LABEL_112;
          }

          v84 = &v20[16 * v21];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_115;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_73:
          v92 = v21 - 1;
          if (v21 - 1 >= v52)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v93 = *&v20[16 * v92 + 32];
          v94 = *&v20[16 * v21 + 40];
          sub_10052EC80(*a3 + *(v127 + 9) * v93, *a3 + *(v127 + 9) * *&v20[16 * v21 + 32], *a3 + *(v127 + 9) * v94, v54);
          if (v5)
          {
            goto LABEL_104;
          }

          if (v94 < v93)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_10056D550(v20);
          }

          if (v92 >= *(v20 + 2))
          {
            goto LABEL_107;
          }

          v95 = &v20[16 * v92];
          *(v95 + 4) = v93;
          *(v95 + 5) = v94;
          v139 = v20;
          sub_10056D4C4(v21);
          v20 = v139;
          v52 = *(v139 + 2);
          v8 = v138;
          if (v52 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = &v20[16 * v52 + 32];
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_108;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_109;
        }

        v66 = &v20[16 * v52];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_111;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v70 >= v62)
        {
          v88 = &v20[16 * v21 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_118;
          }

          if (v57 < v91)
          {
            v21 = v52 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v18 = a3[1];
      if (v19 >= v18)
      {
        goto LABEL_94;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_94:
  v21 = *v118;
  if (!*v118)
  {
    goto LABEL_132;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v127;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_125:
    v20 = sub_10056D550(v20);
  }

  v139 = v20;
  v112 = *(v20 + 2);
  if (v112 >= 2)
  {
    while (*a3)
    {
      v113 = *&v20[16 * v112];
      v114 = *&v20[16 * v112 + 24];
      sub_10052EC80(*a3 + *(v19 + 9) * v113, *a3 + *(v19 + 9) * *&v20[16 * v112 + 16], *a3 + *(v19 + 9) * v114, v21);
      if (v5)
      {
        goto LABEL_104;
      }

      if (v114 < v113)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10056D550(v20);
      }

      if (v112 - 2 >= *(v20 + 2))
      {
        goto LABEL_120;
      }

      v115 = &v20[16 * v112];
      *v115 = v113;
      *(v115 + 1) = v114;
      v139 = v20;
      sub_10056D4C4(v112 - 1);
      v20 = v139;
      v112 = *(v139 + 2);
      if (v112 <= 1)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_129;
  }

LABEL_104:
}

uint64_t sub_10052E7D0(char *a1, char *a2, char *a3, char *a4)
{
  v53 = type metadata accessor for Date();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v44 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    if (a4 != a2 || &a2[8 * v14] <= a4)
    {
      memmove(a4, a2, 8 * v14);
    }

    v57 = &a4[8 * v14];
    if (a3 - a2 < 8)
    {
      v27 = a2;
    }

    else
    {
      v27 = a2;
      if (a2 > a1)
      {
        v28 = *(v55 + 16);
        v46 = a4;
        v47 = v28;
        v55 += 16;
        v45 = (v55 - 8);
        v50 = a1;
LABEL_26:
        v51 = v27;
        v29 = v27 - 8;
        v30 = a3 - 8;
        v31 = v57;
        v48 = v27 - 8;
        do
        {
          v56 = v30;
          v32 = v30 + 8;
          v33 = *(v31 - 1);
          v31 -= 8;
          v34 = *v29;
          v36 = v52;
          v35 = v53;
          v37 = v47;
          v47(v52, v33 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v53);
          v38 = v54;
          v37(v54, v34 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v35);

          v49 = Date.compare(_:)();
          v39 = *v45;
          (*v45)(v38, v35);
          v39(v36, v35);

          if (v49 == -1)
          {
            v41 = v50;
            a4 = v46;
            a3 = v56;
            v42 = v48;
            if (v32 != v51)
            {
              *v56 = *v48;
            }

            if (v57 <= a4 || (v27 = v42, v42 <= v41))
            {
              v27 = v42;
              goto LABEL_38;
            }

            goto LABEL_26;
          }

          a4 = v46;
          v40 = v56;
          if (v32 != v57)
          {
            *v56 = *v31;
          }

          v30 = v40 - 8;
          v57 = v31;
          v29 = v48;
        }

        while (v31 > a4);
        v57 = v31;
        v27 = v51;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v12] <= a4)
    {
      memmove(a4, a1, 8 * v12);
    }

    v57 = &a4[8 * v12];
    if (a2 - a1 >= 8)
    {
      v15 = a2;
      if (a2 < a3)
      {
        v16 = *(v55 + 16);
        v55 += 16;
        v56 = a3;
        v48 = (v55 - 8);
        v49 = v16;
        while (1)
        {
          v50 = a1;
          v51 = v15;
          v17 = *a4;
          v18 = v52;
          v19 = v53;
          v20 = v49;
          v49(v52, *v15 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v53);
          v21 = v54;
          v20(v54, v17 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v19);

          v22 = a4;
          v23 = Date.compare(_:)();
          v24 = *v48;
          (*v48)(v21, v19);
          v24(v18, v19);

          if (v23 != -1)
          {
            break;
          }

          v26 = v50;
          v25 = v51;
          v15 = v51 + 8;
          a4 = v22;
          if (v50 != v51)
          {
            goto LABEL_14;
          }

LABEL_15:
          a1 = v26 + 8;
          if (a4 >= v57 || v15 >= v56)
          {
            goto LABEL_36;
          }
        }

        v25 = v22;
        a4 = v22 + 8;
        v26 = v50;
        v15 = v51;
        if (v50 == v22)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v26 = *v25;
        goto LABEL_15;
      }
    }

LABEL_36:
    v27 = a1;
  }

LABEL_38:
  if (v27 != a4 || v27 >= &a4[(v57 - a4 + (v57 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v27, a4, 8 * ((v57 - a4) / 8));
  }

  return 1;
}

void sub_10052EC80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = &v49 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v64 = a1;
  v63 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a2;
    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v54 = v9 + 8;
      v55 = (v9 + 16);
      v34 = a4 + v18;
      v35 = a3;
      v52 = a1;
      v53 = a4;
      v56 = v33;
      while (2)
      {
        while (1)
        {
          v50 = v32;
          v36 = v57;
          v57 += v33;
          v58 = v36;
          while (1)
          {
            if (v36 <= a1)
            {
              v64 = v36;
              v62 = v50;
              goto LABEL_59;
            }

            v39 = v35;
            v51 = v32;
            v40 = v35 + v33;
            v41 = v34 + v33;
            v42 = *v55;
            v43 = v60;
            (*v55)(v60, v41, v8);
            v44 = v61;
            v42(v61, v57, v8);
            v59 = Date.compare(_:)();
            v45 = *v54;
            (*v54)(v44, v8);
            v45(v43, v8);
            if (v59 == -1)
            {
              break;
            }

            v32 = v41;
            v35 = v40;
            if (v39 < v34 || v40 >= v34)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v40;
              a1 = v52;
              v37 = v53;
            }

            else
            {
              a1 = v52;
              v37 = v53;
              if (v39 != v34)
              {
                v46 = v35;
                swift_arrayInitWithTakeBackToFront();
                v35 = v46;
              }
            }

            v34 = v41;
            v38 = v41 > v37;
            v33 = v56;
            v36 = v58;
            if (!v38)
            {
              v57 = v58;
              goto LABEL_58;
            }
          }

          v35 = v40;
          if (v39 < v58 || v40 >= v58)
          {
            break;
          }

          a1 = v52;
          v47 = v53;
          v32 = v51;
          v33 = v56;
          if (v39 != v58)
          {
            v48 = v35;
            swift_arrayInitWithTakeBackToFront();
            v35 = v48;
          }

          if (v34 <= v47)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v35 = v40;
        a1 = v52;
        v32 = v51;
        v33 = v56;
        if (v34 > v53)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v64 = v57;
    v62 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v17;
    v62 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v56 = *(v9 + 16);
      v57 = v9 + 16;
      v54 = v14;
      v55 = (v9 + 8);
      v58 = a3;
      do
      {
        v20 = v60;
        v21 = v56;
        v56(v60, a2, v8);
        v22 = v8;
        v23 = v61;
        v21(v61, a4, v22);
        v24 = Date.compare(_:)();
        v25 = a2;
        v26 = a4;
        v27 = *v55;
        v28 = v23;
        v8 = v22;
        (*v55)(v28, v22);
        (v27)(v20, v22);
        if (v24 == -1)
        {
          v29 = v54;
          a2 = v25 + v54;
          if (a1 < v25 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v58;
          }

          else
          {
            v31 = v58;
            if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_33;
        }

        v29 = v54;
        a4 += v54;
        v30 = v26;
        if (a1 < v26 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
          v31 = v58;
        }

        else
        {
          a2 = v25;
          v31 = v58;
          if (a1 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
            v63 = a4;
            goto LABEL_33;
          }
        }

        v63 = a4;
LABEL_33:
        a1 += v29;
        v64 = a1;
      }

      while (a4 < v59 && a2 < v31);
    }
  }

LABEL_59:
  sub_10052F278(&v64, &v63, &v62, &type metadata accessor for Date);
}

uint64_t sub_10052F278(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_10052F360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = *(v5 + 16);
  v12(&v18 - v10, a1 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_section, v4, v9);
  (v12)(v7, a2 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_section, v4);
  v13 = static Date.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v11, v4);
  if (v13 & 1) != 0 && ((v12)(v11, a1 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v4), (v12)(v7, a2 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_startTime, v4), v15 = static Date.== infix(_:_:)(), v14(v7, v4), v14(v11, v4), (v15) && *(a1 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_duration) == *(a2 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_duration) && ((v12)(v11, a1 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_endTime, v4), (v12)(v7, a2 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_endTime, v4), v16 = static Date.== infix(_:_:)(), v14(v7, v4), v14(v11, v4), (v16) && *(a1 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_eventCount) == *(a2 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_eventCount))
  {
    return *(a1 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_byteCount) == *(a2 + OBJC_IVAR____TtC4Maps29GEOAPSessionSpecificModelItem_byteCount);
  }

  else
  {
    return 0;
  }
}

void *sub_10052F604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CE6B8(&qword_10190B8A0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

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
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void sub_10052F7F8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000CE6B8(&unk_101919350);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
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
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100014C84(0, &qword_101922CC0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

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
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
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
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100014C84(0, &qword_101922CC0);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_10052FAE8(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000CE6B8(&qword_101925F30);
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
      sub_100529C18(&qword_101925F38, 255, &type metadata accessor for Calendar.Component);
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100529C18(&qword_101925F40, 255, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
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

unint64_t sub_10052FE10(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000CE6B8(&qword_101925F48);
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
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100529C18(&qword_101925F50, 255, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100529C18(&qword_101925F58, 255, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
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

void *sub_1005300AC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000CE6B8(&qword_101919360);
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
      sub_100529C18(&qword_1019156D0, 255, &type metadata accessor for UUID);
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100529C18(&qword_101916EA8, 255, &type metadata accessor for UUID);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
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

uint64_t sub_1005303D4(unint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101925F28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();
  result = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    (*(v3 + 16))(v5, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * a1, v2);

    v11 = [objc_allocWithZone(NSDateFormatter) init];
    v12 = String._bridgeToObjectiveC()();
    [v11 setDateFormat:v12];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = [v11 stringFromDate:isa];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    return v15;
  }

  __break(1u);
  return result;
}

void sub_100530650()
{
  *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___timeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___eventCountLabel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___byteCountLabel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___labelContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps43GEOAPSessionSpecificUploadTableViewCellView____lazy_storage___latencyView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005306F4()
{
  v1 = OBJC_IVAR____TtC4Maps45GEOAPSessionSpecificHistoricalDebugController_dataModel;
  type metadata accessor for GEOAPSessionSpecificDataModel(0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 44) = 1;
  type metadata accessor for Date();
  type metadata accessor for GEOAPSessionSpecificModelItem(0);
  sub_100529C18(&qword_10190BAA0, 255, &type metadata accessor for Date);
  sub_100529C18(&unk_101925C18, 255, type metadata accessor for GEOAPSessionSpecificModelItem);
  NSDiffableDataSourceSnapshot.init()();
  *(v2 + 16) = _swiftEmptyDictionarySingleton;
  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100530880()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_1005298F8();
}

void sub_100530934(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, uint64_t a8, int a9)
{
  v18 = *(type metadata accessor for Calendar() - 8);
  v19 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  LODWORD(v20) = a9;
  sub_1005284C8(a1, a2, a3, a4, a5, a6, a7, a8, v20, *(v9 + 16), v9 + v19, *(v9 + ((*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *sub_100530A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  v15 = v4;
  sub_100532828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a4;
  swift_beginAccess();
  v9 = *(v15 + v8);
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_100297040(a1, a2);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = v12;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_100530B78()
{
  swift_getKeyPath();
  sub_100532828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100530C34@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100532828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_100530CDC()
{
  swift_getKeyPath();
  sub_100532828();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100530DB8()
{
  swift_getKeyPath();
  sub_100532828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100530E40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100532828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps21PinnedItemsController__suggestedById;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100530ED8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();

  sub_100226AFC(v5, a1);
  v7 = v6;

  if (v7)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100532828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100530FF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

id sub_10053105C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  *&v0[OBJC_IVAR____TtC4Maps21PinnedItemsController__pinnedItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps21PinnedItemsController__suggestedItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps21PinnedItemsController__pinnedById] = sub_1000D2370(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC4Maps21PinnedItemsController__suggestedById] = sub_1000D2370(_swiftEmptyArrayStorage);
  ObservationRegistrar.init()();
  v20.receiver = v0;
  v20.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v20, "init");
  v6 = qword_1019066C8;
  v7 = v5;
  if (v6 != -1)
  {
    v19 = v7;
    swift_once();
    v7 = v19;
  }

  v8 = v7;
  v9 = sub_1002E2C5C();
  [v9 registerObserver:v8];

  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v4, 1, 1, v10);
  type metadata accessor for MainActor();
  v12 = v8;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  sub_10020AAE4(0, 0, v4, &unk_10120F080, v14);

  v11(v4, 1, 1, v10);
  v15 = v12;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_10020AAE4(0, 0, v4, &unk_10120F088, v17);

  return v15;
}

uint64_t sub_100531324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005313BC, v7, v6);
}

id sub_1005313BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() editSessionWithShortcut:v0[13]];
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v0[6] = sub_10053156C;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1002ABAC8;
    v0[5] = &unk_101620178;
    v4 = _Block_copy(v0 + 2);
    [v3 removeFromShortcutsWithCompletion:v4];
    _Block_release(v4);
    result = [objc_opt_self() sharedService];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;

    [v6 captureUserAction:2056 onTarget:254 eventValue:0];
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

void sub_10053156C()
{
  v0 = MapsSuggestionsEngineForMapsProcess();
  if (v0)
  {
    v1 = v0;
    [v0 hintRefreshOfType:18];
  }
}

uint64_t sub_1005315CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  type metadata accessor for MainActor();
  *(v4 + 96) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100531664, v6, v5);
}

uint64_t sub_100531664()
{

  if (qword_1019066C8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = qword_10195FEF8;
  v2 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__setupButtons;
  swift_beginAccess();
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));

  v5 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v6 = *(v1 + v5);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  sub_100054B58(v7);
  if (v4 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v0[11];
  if (v8)
  {
    v9 = 0;
    v23 = OBJC_IVAR____TtC4Maps21PinnedItemsController__pinnedById;
    do
    {
      v10 = v9;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v4 + 8 * v10 + 32);
        }

        v12 = v11;
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        type metadata accessor for PinnedItem();
        swift_allocObject();
        v13 = v12;
        v14 = sub_1003C15AC(v13);
        if (v14)
        {
          break;
        }

        ++v10;
        if (v9 == v8)
        {
          goto LABEL_18;
        }
      }

      v15 = v0[11];
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      swift_getKeyPath();
      v0[8] = v15;
      sub_100532828();
      v24 = v13;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[8] = v15;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v25 + v23);
      *(v25 + v23) = 0x8000000000000000;
      sub_10012BA0C(v24, v22, v21, isUniquelyReferenced_nonNull_native);

      *(v25 + v23) = v26;
      swift_endAccess();
      v0[8] = v15;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v9 != v8);
  }

LABEL_18:
  v17 = v0[11];

  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  *(v18 + 24) = _swiftEmptyArrayStorage;
  v0[8] = v17;
  sub_100532828();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100531AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v6;
  v4[12] = v5;

  return _swift_task_switch(sub_100531B84, v6, v5);
}

uint64_t sub_100531B84()
{
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_100531C4C;

  return sub_1002E3750(0);
}

uint64_t sub_100531C4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_100532148;
  }

  else
  {
    v7 = sub_100531D90;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100531D90()
{
  v26 = v0;
  v1 = v0[14];

  v24 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_24:
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v0[9];
  if (v3)
  {
    v4 = 0;
    v20 = OBJC_IVAR____TtC4Maps21PinnedItemsController__suggestedById;
    v5 = v1 & 0xC000000000000001;
    v6 = v0[14] + 32;
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v4;
      while (1)
      {
        if (v5)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_23;
          }

          v8 = *(v6 + 8 * v7);
        }

        v1 = v8;
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        type metadata accessor for PinnedItem();
        v9 = swift_allocObject();
        v10 = v1;
        v1 = v9;
        v11 = sub_1003C18A0(v10);
        if (v11)
        {
          break;
        }

        ++v7;
        if (v4 == v3)
        {
          goto LABEL_19;
        }
      }

      v12 = v0[9];
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      swift_getKeyPath();
      v0[5] = v12;
      sub_100532828();
      v22 = v10;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[6] = v12;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v23 + v20);
      *(v23 + v20) = 0x8000000000000000;
      sub_10012BA0C(v22, v19, v18, isUniquelyReferenced_nonNull_native);

      *(v23 + v20) = v25;
      swift_endAccess();
      v0[7] = v12;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v1 = &v24;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v24;
    }

    while (v4 != v3);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

LABEL_19:
  v14 = v0[9];

  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = v21;
  v0[8] = v14;
  sub_100532828();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v16 = v0[1];

  return v16();
}

uint64_t sub_100532148()
{

  if (qword_101906928 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960590);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching suggested items: %@", v4, 0xCu);
    sub_1000DCD10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t type metadata accessor for PinnedItemsController()
{
  result = qword_101925FB0;
  if (!qword_101925FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005323E4()
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

uint64_t sub_100532488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000CE6B8(&unk_10190BA50);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10053255C, v6, v5);
}

uint64_t sub_10053255C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = v2;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_10020AAE4(0, 0, v1, &unk_10120F010, v7);

  v4(v1, 1, 1, v3);
  v8 = v5;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_10020AAE4(0, 0, v1, &unk_10120F020, v10);

  v11 = v0[1];

  return v11();
}

unint64_t sub_100532828()
{
  result = qword_101925FC0;
  if (!qword_101925FC0)
  {
    type metadata accessor for PinnedItemsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925FC0);
  }

  return result;
}

uint64_t sub_100532880()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960590);
  sub_100021540(v0, qword_101960590);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100532950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_100532488(a1, v4, v5, v6);
}

uint64_t sub_100532A04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1005315CC(a1, v4, v5, v6);
}

uint64_t sub_100532AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_100531AEC(a1, v4, v5, v6);
}

uint64_t sub_100532BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100531AEC(a1, v4, v5, v6);
}

void *sub_100532C90()
{
  swift_getKeyPath();
  sub_1005334A4(&unk_101926030);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image);
  v2 = v1;
  return v1;
}

id sub_100532D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005334A4(&unk_101926030);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image);
  *a2 = v4;

  return v4;
}

void sub_100532DD8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image);
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
    sub_1005334A4(&unk_101926030);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000F1178();
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

id sub_100532F4C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for UserGuideCoverPhotoImageProvider()
{
  result = qword_101926010;
  if (!qword_101926010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100533130()
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
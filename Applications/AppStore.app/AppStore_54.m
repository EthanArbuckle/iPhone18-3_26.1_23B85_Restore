void sub_10060CF54(void *a1)
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_100005744(0, &qword_10098F180);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;

        [v3 isOn];
        dispatch thunk of GenericAccountPagePresenter.setPersonalizedRecommendationsEnabled(_:)();
      }
    }
  }

  else
  {
    sub_10002B894(v6, &unk_1009711D0);
  }
}

id sub_10060D198(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccountSection.ContentItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  if ((*(v5 + 88))(v8, v4) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v5 + 8))(v8, v4);
    result = [v2 tableView];
    if (result)
    {
      v10 = result;
      v11 = String._bridgeToObjectiveC()();
      v12 = [v10 dequeueReusableCellWithIdentifier:v11];

      if (!v12)
      {
        v13 = objc_allocWithZone(UITableViewCell);
        v14 = String._bridgeToObjectiveC()();
        v12 = [v13 initWithStyle:1 reuseIdentifier:v14];
      }

      return v12;
    }

    __break(1u);
  }

  else
  {
    result = [v2 tableView];
    if (result)
    {
      v15 = result;
      v16 = String._bridgeToObjectiveC()();
      v12 = [v15 dequeueReusableCellWithIdentifier:v16];

      if (!v12)
      {
        v17 = objc_allocWithZone(UITableViewCell);
        v18 = String._bridgeToObjectiveC()();
        v12 = [v17 initWithStyle:0 reuseIdentifier:v18];
      }

      (*(v5 + 8))(v8, v4);
      return v12;
    }
  }

  __break(1u);
  return result;
}

id sub_10060D458(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_10060D518(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = dispatch thunk of GenericAccountPagePresenter.title(forSection:)();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_10096EB20 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_10098F068, qword_10098F080);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      [a1 layoutMargins];
      v14 = [v2 tableView];
      if (v14)
      {
        v15 = v14;
        [v14 layoutMargins];

        v16 = [v3 tableView];
        if (v16)
        {
          v17 = v16;
          [v16 layoutMargins];

          [a1 frame];
          CGRectGetWidth(v19);
          sub_10060FF98(v12, v13, a1);

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
}

void sub_10060D7DC(void *a1, void *a2)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8AppStore10HeaderViewCMa_0();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v32 = a2;
    v11 = dispatch thunk of GenericAccountPagePresenter.title(forSection:)();
    if (v12)
    {
      v30[1] = v11;
      v31 = v2;
      v13 = qword_10096EB20;
      v14 = v32;
      if (v13 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_10098F068, qword_10098F080);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      [a1 layoutMargins];
      v18 = v17;
      [a1 layoutMargins];
      [v10 setLayoutMargins:{0.0, v18, v16}];

      v19 = v14;
      v20 = [v10 textLabel];
      if (v20)
      {
        v21 = v20;
        v22 = String._bridgeToObjectiveC()();

        [v21 setText:v22];
      }

      else
      {
      }

      v26 = [v10 textLabel];

      if (v26)
      {
        v27 = [v31 traitCollection];
        v28 = UITraitCollection.prefersRightToLeftLayouts.getter();

        if (v28)
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [v26 setTextAlignment:v29];
      }
    }

    else
    {
      v23 = [v10 textLabel];
      if (v23)
      {
        v24 = v23;
        [v23 setText:0];
      }

      v25 = v32;
    }
  }
}

uint64_t sub_10060DB98(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for AccountSectionLink.LinkDisplayType();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = type metadata accessor for AccountSectionLink();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10098F170);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = type metadata accessor for AccountSection.ContentItem();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter);
  result = dispatch thunk of GenericAccountPagePresenter.action(at:)();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_100005744(0, &qword_1009729E0);
      *v28 = static OS_dispatch_queue.main.getter();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = _dispatchPreconditionTest(_:)();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_100975F50;
      v92 = xmmword_100975F60;
      v93 = xmmword_100975F70;
      v89 = xmmword_100975F30;
      v90 = xmmword_100975F40;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_100975F30;
      v101[1] = xmmword_100975F40;
      v101[3] = xmmword_100975F60;
      v101[4] = xmmword_100975F70;
      v94 = qword_100975F80;
      v100 = v88;
      v102 = qword_100975F80;
      v101[2] = xmmword_100975F50;
      sub_100357ED0(&v89, v81);
      xmmword_100975F50 = v97;
      xmmword_100975F60 = v98;
      xmmword_100975F70 = v99;
      qword_100975F80 = v100;
      xmmword_100975F30 = v95;
      xmmword_100975F40 = v96;
      sub_10002B894(v101, &unk_10097F520);
      v45 = *(v77 + OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph);
      v46 = sub_10002849C(&unk_100974490);
      sub_10019DADC(&v83, v81);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10002B894(v24, &unk_100972A00);
      }

      else
      {

        sub_1005F9AF4(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_100975F50;
      v81[3] = xmmword_100975F60;
      v81[4] = xmmword_100975F70;
      v82 = qword_100975F80;
      v81[0] = xmmword_100975F30;
      v81[1] = xmmword_100975F40;
      xmmword_100975F30 = v89;
      xmmword_100975F40 = v90;
      xmmword_100975F50 = v91;
      xmmword_100975F60 = v92;
      xmmword_100975F70 = v93;
      qword_100975F80 = v94;
      sub_10002B894(v81, &unk_10097F520);
      sub_10019DB38(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph);
      v49 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10002B894(v21, &unk_100972A00);
      }

      else
      {

        sub_1005F9AF4(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    dispatch thunk of GenericAccountPagePresenter.contentItem(at:)();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10002B894(v13, &qword_10098F170);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    AccountSectionLink.displayType.getter();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_1006106AC(&qword_10098F178, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

id sub_10060E70C(void *a1, uint64_t a2)
{
  sub_10060EB38(a1, a2);
  result = [v2 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result layoutMargins];

  result = [v2 tableView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  [result layoutMargins];

  result = dispatch thunk of GenericAccountPagePresenter.footer(forSection:)();
  if (result)
  {
    [a1 frame];
    CGRectGetWidth(v9);
    v7 = LinkableText.plainText.getter();
    sub_1006102BC(v7, v8, a1);
  }

  return result;
}

void sub_10060E8B4(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (dispatch thunk of GenericAccountPagePresenter.footer(forSection:)())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_10060EB38(a1, a3)}];

      v11 = OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
      v13 = LinkableText.linkedSubstrings.getter();
      v14 = sub_1000D6F24(v13, sub_1000C17B0);

      v15 = LinkableText.styledText.getter();
      sub_1002F6004(v15, 0, v14);

      v18 = *&v8[v11];
      v16 = [v3 traitCollection];
      LOBYTE(v14) = UITraitCollection.prefersRightToLeftLayouts.getter();

      if (v14)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      [v18 setTextAlignment:v17];
    }

    else
    {
      v18 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
      sub_1002F62D8();
    }
  }
}

double sub_10060EB38(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of GenericAccountPagePresenter.numberOfSections.getter();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v13[1] = 0x4041800000000000;
    static Dimensions.defaultRoundingRule.getter();
  }

  else
  {
    if (qword_10096EB08 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098EFF0, qword_10098F008);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  }

  AnyDimension.value(in:rounded:)();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_10096EB18 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_10002A400(qword_10098F040, qword_10098F058);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v11 = v10;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v11;
}

void sub_10060EDB0()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  dispatch thunk of GenericAccountPagePresenter.title.getter();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10060EE8C()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  if (dispatch thunk of GenericAccountPagePresenter.numberOfSections.getter())
  {
    v3 = OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }

    __break(1u);
  }

  else
  {
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v8 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v9 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v10 = OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }
  }

  __break(1u);
}

id sub_10060F084()
{
  v1 = OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10060F250()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_10098F0A8);
  sub_1000056A8(v0, qword_10098F0A8);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_10060F2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel;
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v5, qword_1009D1748);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v3[v9] = sub_1002F5B8C(v8, 0, 0);
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
  v17 = qword_10096EB30;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v20, qword_10098F0A8);
  v28[0] = v18;
  v21 = v18;
  Conditional.evaluate(with:)();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_10060F774()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  CGSize.rounded(_:)();
  (*(v3 + 8))(v5, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  v13 = [v1 contentView];
  LayoutMarginsAware<>.layoutFrame.getter();

  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v7 setFrame:?];
}

uint64_t sub_10060FA0C(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || (result = UITraitCollection.prefersRightToLeftLayouts.getter(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
    if (qword_10096EB30 != -1)
    {
      swift_once();
    }

    v8 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v8, qword_10098F0A8);
    v10 = v2;
    v9 = v2;
    Conditional.evaluate(with:)();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_10060FBFC()
{
  v5.receiver = v0;
  v5.super_class = _s8AppStore10HeaderViewCMa_0();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    LayoutMarginsAware<>.layoutFrame.getter();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();

    CGRect.withLayoutDirection(in:relativeTo:)();
    [v3 setFrame:?];
  }
}

id sub_10060FEAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10060FF98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for LabelPlaceholderCompatibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E2D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  sub_1000056A8(v8, qword_1009D1808);
  v9 = [a3 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v10 = type metadata accessor for Feature();
  v16[3] = v10;
  v16[4] = sub_1006106AC(&qword_100972E50, 255, &type metadata accessor for Feature);
  v11 = sub_1000056E0(v16);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.measurement_with_labelplaceholder(_:), v10);
  isFeatureEnabled(_:)();
  sub_100007000(v16);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  CGSize.subtracting(insets:)();
  sub_1006106AC(qword_100982720, 255, &type metadata accessor for LabelPlaceholderCompatibility);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  return v13;
}

double sub_1006102BC(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = a1;
  v19[2] = a2;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGSize.subtracting(insets:)();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  sub_1000056A8(v12, qword_1009D1748);
  v13 = [a3 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v14 = type metadata accessor for Feature();
  v21 = v14;
  v22 = sub_1006106AC(&qword_100972E50, 255, &type metadata accessor for Feature);
  v15 = sub_1000056E0(v20);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  isFeatureEnabled(_:)();
  sub_100007000(v20);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v9 + 8))(v11, v8);
  sub_10002A400(v20, v21);
  Measurable.measuredSize(fitting:in:)();
  CGSize.adding(outsets:)();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  CGSize.rounded(_:)();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  sub_100007000(v20);
  return v17;
}

uint64_t sub_1006106AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1006106F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.trailing(_:), v3);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v6 = type metadata accessor for ComponentSeparator();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

char *sub_100610808(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D0E48);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  v33 = *&v30[OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v34 = v33;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v35 = *&v30[v32];
  sub_100028BB8();
  v36 = v35;
  v37 = static UIColor.secondaryText.getter();
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v32]];

  return v30;
}

uint64_t sub_100610C38()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreorderDisclaimerLayout();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "layoutSubviews", v8);
  v11 = *&v0[OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v14[4] = type metadata accessor for DynamicTypeLabel();
  v14[5] = &protocol witness table for UILabel;
  v14[1] = v11;
  v12 = v11;
  PreorderDisclaimerLayout.init(disclaimer:)();
  [v0 bounds];
  PreorderDisclaimerLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for PreorderDisclaimerCollectionViewCell()
{
  result = qword_10098F1D0;
  if (!qword_10098F1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100610EF0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D0E48);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100611234(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 collectionView];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = &selRef__setDefaultAttributes_;
  [v16 bounds];
  v18 = [v5 layoutAttributesForElementsInRect:?];
  if (!v18 || ((v19 = v18, sub_10025A08C(), v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v20 >> 62) ? (v21 = _CocoaArrayWrapper.endIndex.getter()) : (v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v21))
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
      v55 = xmmword_1007B1890;
      do
      {
        v37 = v33;
        v38 = v17;
        sub_10002849C(&qword_100980550);
        v39 = swift_allocObject();
        *(v39 + 16) = v55;
        *(v39 + 32) = 0;
        *(v39 + 40) = v34;
        IndexPath.init(arrayLiteral:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*v54)(v14, v10);
        v41 = [v5 layoutAttributesForItemAtIndexPath:isa];

        if (!v41)
        {
          break;
        }

        v17 = v38;
        [v41 v38[378]];
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

id sub_1006116B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100611708@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v3 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell()
{
  result = qword_10098F230;
  if (!qword_10098F230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100611864(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v7 - 8);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10002849C(&qword_100984348);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessory;
  swift_beginAccess();
  v17 = *(v13 + 56);
  v28 = a1;
  sub_100031660(a1, v15, &qword_100984340);
  sub_100031660(v2 + v16, &v15[v17], &qword_100984340);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) == 1)
  {
    if (v18(&v15[v17], 1, v4) == 1)
    {
      sub_10002B894(v15, &qword_100984340);
      return;
    }
  }

  else
  {
    sub_100031660(v15, v11, &qword_100984340);
    if (v18(&v15[v17], 1, v4) != 1)
    {
      v23 = v25;
      sub_1000561D8(&v15[v17], v25);
      v24 = sub_1000C6830(v11, v23);
      sub_1000C7C80(v23);
      sub_1000C7C80(v11);
      sub_10002B894(v15, &qword_100984340);
      if (v24)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000C7C80(v11);
  }

  sub_10002B894(v15, &qword_100984348);
LABEL_7:
  swift_beginAccess();
  v19 = v28;
  sub_1006148B0(v28, v2 + v16);
  swift_endAccess();
  v20 = v27;
  sub_100031660(v19, v27, &qword_100984340);
  if (v18(v20, 1, v4) == 1)
  {
    sub_10002B894(v20, &qword_100984340);
    sub_1006122E8(0);
  }

  else
  {
    sub_1000C4450(v26);
    v22 = v21;
    sub_1000C7C80(v20);
    sub_1006122E8(v22);
  }
}

void sub_100611C08(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
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

uint64_t sub_100611CB0()
{
  v0 = type metadata accessor for ActionLayout.Metrics();
  sub_100005644(v0, qword_1009D2F68);
  v1 = sub_1000056A8(v0, qword_1009D2F68);
  return sub_100611CFC(v1);
}

uint64_t sub_100611CFC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v42 = type metadata accessor for FontSource();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v49 = &v37 - v3;
  v4 = sub_10002849C(&unk_10098F2D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_10002849C(&unk_100970EA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v58 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v55 = _Q0;
  sub_10002849C(&qword_100973F50);
  type metadata accessor for CGSize(0);
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v58 = xmmword_1007D9F50;
  v55 = xmmword_1007D9F60;
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v22 = *(v8 + 16);
  v43 = v10;
  v39 = v16;
  v22(v10, v16, v7);
  v41 = v13;
  v22(v6, v13, v7);
  v45 = v8;
  v46 = v6;
  v23 = *(v8 + 56);
  v47 = v7;
  v23(v6, 0, 1, v7);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v58.i64[0] = 0x4034000000000000;
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v54[14] = &protocol witness table for Double;
  *&v55 = 0x4048000000000000;
  v54[13] = &type metadata for Double;
  v54[10] = 0x4028000000000000;
  if (qword_10096DCC8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v38 = sub_1000056A8(v24, qword_1009D05F0);
  v25 = *(*(v24 - 8) + 16);
  v26 = v49;
  v25(v49, v38, v24);
  v27 = enum case for FontSource.useCase(_:);
  v28 = v40;
  v29 = v26;
  v30 = *(v40 + 104);
  v31 = v42;
  v30(v29, enum case for FontSource.useCase(_:), v42);
  v54[8] = &type metadata for Double;
  v54[9] = &protocol witness table for Double;
  v54[5] = 0x4022000000000000;
  v32 = v44;
  v25(v44, v38, v24);
  v30(v32, v27, v31);
  v54[3] = type metadata accessor for StaticDimension();
  v54[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v54);
  v52 = v31;
  v53 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v51);
  (*(v28 + 16))(v33, v32, v31);
  StaticDimension.init(_:scaledLike:)();
  (*(v28 + 8))(v32, v31);
  v53 = &protocol witness table for Double;
  v52 = &type metadata for Double;
  v51[0] = 0x4020000000000000;
  v50[3] = type metadata accessor for ZeroDimension();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v50);
  static ZeroDimension.zero.getter();
  ActionLayout.Metrics.init(artworkSize:maxArtworkSize:artworkMargin:artworkLeadingMargin:labelWithArtworkLeadingMargin:accessoryMargin:labelFontSource:labelVerticalMargin:searchAdButtonTopMargin:searchAdButtonLeadingMargin:shouldLabelFitAvailableWidth:)();
  v34 = *(v45 + 8);
  v35 = v47;
  v34(v41, v47);
  return (v34)(v39, v35);
}

uint64_t sub_10061224C()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_10098F240);
  sub_1000056A8(v0, qword_10098F240);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1006122E8(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView];
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
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_1006123AC()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100970EA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  }

  else
  {
    swift_beginAccess();
    ActionLayout.Metrics.artworkSize.getter();
    swift_endAccess();
    v9 = [v0 traitCollection];
    Conditional.evaluate<>(in:)();

    (*(v3 + 8))(v5, v2);
    v10 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v17[1], v17[2]}];
    v11 = [objc_opt_self() clearColor];
    ArtworkView.backgroundColor.setter();
    [v10 setHidden:1];
    v12 = *&v1[v6];
    v13 = v10;
    if (v12)
    {
      [v12 removeFromSuperview];
      v12 = *&v1[v6];
    }

    *&v1[v6] = v10;
    v8 = v10;

    v14 = [v1 contentView];
    [v14 addSubview:v8];

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

char *sub_1006125E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = 0;
  v20 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for ActionLayout.Metrics();
  v22 = sub_1000056A8(v21, qword_1009D2F68);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = &v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView] = 0;
  v26 = &v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryAction];
  *v26 = 0;
  v26[1] = 0;
  if (qword_10096DCC8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  v28 = sub_1000056A8(v27, qword_1009D05F0);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v17, v28, v27);
  (*(v29 + 56))(v17, 0, 1, v27);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v30 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView] = v31;
  v49.receiver = v5;
  v49.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 layer];
  [v33 setAllowsGroupOpacity:0];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v37 = [v32 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100005744(0, &qword_100970180);
  v39 = static UIColor.tableViewCellSelectedBackground.getter();
  [v38 setBackgroundColor:v39];

  [v38 setOpaque:0];
  [v38 setUserInteractionEnabled:0];
  [v32 setSelectedBackgroundView:v38];
  v40 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView;
  v41 = *&v32[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  v42 = static UIColor.defaultLine.getter();
  [v41 setBackgroundColor:v42];

  [*&v32[v40] setHidden:0];
  v43 = [v32 contentView];
  [v43 addSubview:*&v32[v40]];

  v44 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel;
  [*&v32[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel] setLineBreakMode:0];
  v45 = *&v32[v44];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v44]];

  sub_100612CB8();
  sub_10002849C(&qword_10097B110);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007B10D0;
  *(v47 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v47 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v32;
}

void sub_100612CB8()
{
  v1 = v0;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1006123AC();
  swift_beginAccess();
  ActionLayout.Metrics.labelFontSource.getter();
  swift_endAccess();
  v7 = [v0 traitCollection];
  isa = FontSource.font(compatibleWith:)(v7).super.isa;

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() configurationWithFont:isa scale:1];

  ArtworkView.preferredSymbolConfiguration.setter();
  v10 = sub_1006123AC();
  LOBYTE(v6) = ArtworkView.isDisplayingSymbolImage.getter();

  if (v6)
  {
    v11 = sub_1006123AC();
    v12 = ArtworkView.preferredSymbolConfiguration.getter();

    if (v12)
    {
      v13 = sub_1006123AC();
      v14 = ArtworkView.image.getter();

      if (v14)
      {
        v15 = [v14 imageWithConfiguration:v12];

        [v15 size];
        v17 = v16;
        v19 = v18;

        v20 = &v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
        *v20 = v17;
        *(v20 + 1) = v19;
        v20[16] = 0;
        [v1 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_100612F40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = type metadata accessor for LayoutRect();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ActionLayout();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100970EA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - v7;
  v9 = type metadata accessor for ActionLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  objc_msgSendSuper2(&v100, "layoutSubviews", v13);
  v16 = [v1 contentView];
  v17 = sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v28 = v27;

  v29 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  swift_beginAccess();
  v74 = v10;
  v30 = *(v10 + 16);
  v80 = v15;
  v30(v15, &v1[v29], v9);
  v31 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  v78 = v9;
  if (v32)
  {
    v33 = &v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
    if ((v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (v35 = *v33, v34 = v33[1], *v33 == 0.0) && v34 == 0.0)
    {
      v70 = v6;
      v36 = qword_10096EB38;
      v37 = v32;
      if (v36 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v9, qword_1009D2F68);
      ActionLayout.Metrics.artworkSize.getter();
      v38 = [v1 traitCollection];
      Conditional.evaluate<>(in:)();

      v9 = v78;
      (*(v70 + 8))(v8, v5);
      v35 = v95;
      v34 = v96;
    }

    else
    {
      v37 = v32;
    }

    v39 = ArtworkView.frame.modify();
    *(v40 + 16) = v35;
    *(v40 + 24) = v34;
    v39(&v95, 0);
  }

  if (v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] == 1)
  {
    v41 = *&v1[v31];
    if (v41)
    {
      v42 = type metadata accessor for ArtworkView();
      v43 = v41;
      v44 = &protocol witness table for UIView;
      goto LABEL_15;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = 0;
  v44 = 0;
LABEL_15:
  v95 = *&v41;
  v96 = 0.0;
  v97 = 0;
  v98 = v42;
  v99 = v44;
  v30(v79, v80, v9);
  sub_100031660(&v95, v94, &qword_100975610);
  v45 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  v46 = type metadata accessor for DynamicTypeLabel();
  v93 = &protocol witness table for UILabel;
  v92 = v46;
  v91 = v45;
  v47 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView];
  if (v47)
  {
    v48 = &protocol witness table for UIView;
    v49 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView];
  }

  else
  {
    v49 = 0;
    v17 = 0;
    v48 = 0;
    v88 = 0;
    v87 = 0;
  }

  v86 = v49;
  v89 = v17;
  v90 = v48;
  v50 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
  if (v50)
  {
    v51 = type metadata accessor for SearchAdTransparencyButton();
    v52 = &protocol witness table for UIView;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v83 = 0;
    v82 = 0;
  }

  v53 = v21 + v28;
  v54 = v25 - v28;
  v81 = v50;
  v84 = v51;
  v85 = v52;
  v55 = *&v1[v31];
  v56 = v55;
  v57 = v50;
  v58 = v45;
  v59 = v47;

  if (v55)
  {
    ArtworkView.imageBaselineOffsetFromBottom.getter();
  }

  swift_unknownObjectRetain();
  v60 = v75;
  ActionLayout.init(metrics:artworkView:labelView:accessoryView:searchAdButton:artworkBaselineOffsetFromBottom:isDisplayingSearchTrendingItem:restrictArtworkSizeToMetrics:in:)();
  v61 = v71;
  ActionLayout.placeChildren(relativeTo:in:)();
  (*(v72 + 8))(v61, v73);
  v62 = [v1 traitCollection];
  LOBYTE(v61) = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v61)
  {
    v63 = v19;
    v64 = v53;
    v65 = v23;
    v66 = v25 - v28;
  }

  else
  {
    [v58 frame];
  }

  MinX = CGRectGetMinX(*&v63);
  [v1 bounds];
  MaxY = CGRectGetMaxY(v101);
  v102.origin.x = v19;
  v102.origin.y = v53;
  v102.size.width = v23;
  v102.size.height = v54;
  [*&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView] setFrame:{MinX, MaxY - v28, CGRectGetWidth(v102), v28}];
  (*(v76 + 8))(v60, v77);
  sub_10002B894(&v95, &qword_100975610);
  return (*(v74 + 8))(v80, v78);
}

double sub_10061376C()
{
  v1 = sub_10002849C(&unk_100970EA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = &v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
  if ((v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (result = *v5, *v5 == 0.0) && v5[1] == 0.0)
  {
    if (qword_10096EB38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for ActionLayout.Metrics();
    sub_1000056A8(v7, qword_1009D2F68);
    ActionLayout.Metrics.artworkSize.getter();
    v8 = [v0 traitCollection];
    Conditional.evaluate<>(in:)();

    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

id sub_100613930(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", a1, v7);
  v10 = [v2 traitCollection];
  v11 = [v10 layoutDirection];

  if (!a1 || v11 != [a1 layoutDirection])
  {
    if (qword_10096EB40 != -1)
    {
      swift_once();
    }

    v12 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v12, qword_10098F240);
    v13 = [v2 traitCollection];
    Conditional.evaluate<>(in:)();

    UILabel.alignment.setter();
  }

  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_100612CB8();
    v23 = *&v2[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
    swift_beginAccess();
    ActionLayout.Metrics.labelFontSource.getter();
    swift_endAccess();
    v24 = [v2 traitCollection];
    isa = FontSource.font(compatibleWith:)(v24).super.isa;

    (*(v6 + 8))(v9, v5);
    [v23 setFont:isa];

    return [v2 setNeedsLayout];
  }

  v16 = [a1 preferredContentSizeCategory];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_100613CEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100970EA0);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ActionLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artwork.Crop();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a2;
    v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 1;

    Artwork.crop.getter();
    v32 = Artwork.Crop.preferredContentMode.getter();
    (*(v16 + 8))(v18, v15);
    v19 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, &v3[v19], v11);
    v20 = sub_100615280(a1, v14, v3);
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v23 = &v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
    *v23 = v20;
    v23[1] = v22;
    *(v23 + 16) = 0;
    if (v20 == 0.0 && v22 == 0.0)
    {
      if (qword_10096EB38 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v11, qword_1009D2F68);
      ActionLayout.Metrics.artworkSize.getter();
      v24 = [v3 traitCollection];
      v25 = v35;
      Conditional.evaluate<>(in:)();

      (*(v34 + 8))(v10, v25);
    }

    Artwork.config(using:)();
    v26 = sub_1006123AC();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v26 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v27 = sub_1006123AC();
    [v27 setContentMode:v32];

    v38 = v3;
    sub_100615520(&qword_10098F2E0, type metadata accessor for ActionCollectionViewCell);
    v28 = v3;
    AnyHashable.init<A>(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(&v39, &qword_10096FB90);
  }

  else
  {
    v29 = sub_1006123AC();
    v40.value.super.isa = 0;
    v40.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v40, v30);

    v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  }
}

void sub_100614250(objc_class *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1006123AC();

    v12.is_nil = (a2 & 1) == 0;
    v12.value.super.isa = a1;
    ArtworkView.show(image:isAnimationPermitted:)(v12, v7);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_100612CB8();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }
}

uint64_t type metadata accessor for ActionCollectionViewCell()
{
  result = qword_10098F2B0;
  if (!qword_10098F2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006145B0()
{
  sub_100614734(319, &qword_100984180, type metadata accessor for Accessory);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionLayout.Metrics();
    if (v1 <= 0x3F)
    {
      sub_100614734(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100614734(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100614794()
{
  v0 = sub_1006123AC();
  ArtworkView.isImageHidden.setter();

  v1 = sub_1006123AC();
  type metadata accessor for ArtworkView();
  sub_100615520(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100614858(uint64_t a1)
{
  result = sub_100615520(&qword_10098F2C0, type metadata accessor for ActionCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006148B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100984340);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100614920(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7)
{
  v55 = a7;
  v50 = a6;
  v54 = a4;
  v53 = a3;
  v64 = a2;
  v62 = a1;
  v57 = type metadata accessor for ActionLayout.Metrics();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for ActionLayout();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = type metadata accessor for LabelPlaceholderCompatibility();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FontSource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Accessory();
  __chkstk_darwin(v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_10002849C(&unk_100970EA0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49[-v21];
  v63 = 0;
  if (a5)
  {
    ActionLayout.Metrics.artworkSize.getter();
    v76 = *&v64;
    Conditional.evaluate(with:)();
    (*(v20 + 8))(v22, v19);
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v63 = LayoutViewPlaceholder.init(representing:)();
  }

  if (v50)
  {
    swift_storeEnumTagMultiPayload();
    v23 = v64;
    v24 = [v64 traitCollection];
    sub_1000C571C(v24);

    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v25 = LayoutViewPlaceholder.init(representing:)();
    sub_1000C7C80(v18);
  }

  else
  {
    v25 = 0;
    v23 = v64;
  }

  v26 = v62;
  ActionLayout.Metrics.labelFontSource.getter();
  v27 = [v23 traitCollection];
  isa = FontSource.font(compatibleWith:)(v27).super.isa;

  (*(v13 + 8))(v15, v12);
  v29 = type metadata accessor for Feature();
  v81[3] = v29;
  v81[4] = sub_100615520(&qword_100972E50, &type metadata accessor for Feature);
  v30 = sub_1000056E0(v81);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);

  v31 = isa;
  isFeatureEnabled(_:)();
  sub_100007000(v81);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v51 + 8))(v11, v52);
  v32 = 0;
  if (v55)
  {
    v33 = [v23 traitCollection];
    sub_100118D54(v33, 0, 0);

    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v32 = LayoutViewPlaceholder.init(representing:)();
  }

  (*(v56 + 16))(v58, v26, v57);
  v34 = v63;
  if (v63)
  {
    v35 = type metadata accessor for LayoutViewPlaceholder();
    v36 = &protocol witness table for LayoutViewPlaceholder;
    v37 = *&v34;
  }

  else
  {
    v37 = 0.0;
    v35 = 0;
    v36 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v37;
  v79 = v35;
  v80 = v36;
  sub_10002C0AC(v81, v75);
  if (v25)
  {
    v38 = type metadata accessor for LayoutViewPlaceholder();
    v39 = &protocol witness table for LayoutViewPlaceholder;
    v40 = v25;
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v72 = 0;
    v71 = 0;
  }

  v70 = v40;
  v73 = v38;
  v74 = v39;
  v41 = 0;
  if (v32)
  {
    v41 = type metadata accessor for LayoutViewPlaceholder();
    v42 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v42 = 0;
    v67 = 0;
    v66 = 0;
  }

  v65 = v32;
  v68 = v41;
  v69 = v42;
  swift_unknownObjectRetain();
  v43 = v59;
  ActionLayout.init(metrics:artworkView:labelView:accessoryView:searchAdButton:artworkBaselineOffsetFromBottom:isDisplayingSearchTrendingItem:restrictArtworkSizeToMetrics:in:)();
  CGSize.subtracting(insets:)();
  sub_100615520(&qword_10098F2C8, &type metadata accessor for ActionLayout);
  v44 = v61;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v76 = v45;
  v77 = v46;
  CGSize.add(outsets:)();
  v47 = [v23 traitCollection];
  static Separator.thickness(compatibleWith:)();

  (*(v60 + 8))(v43, v44);
  sub_100007000(v81);
  return v76;
}

double sub_100615214(uint64_t a1, void *a2)
{
  static ActionLayout.estimatedMeasurements(fitting:using:in:)();
  v4 = v3;
  v5 = [a2 traitCollection];
  static Separator.thickness(compatibleWith:)();

  return v4;
}

double sub_100615280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100970EA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10002849C(&unk_10098F2D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for AspectRatio();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  ActionLayout.Metrics.maxArtworkSize.getter();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10002B894(v10, &unk_10098F2D0);
    ActionLayout.Metrics.artworkSize.getter();
    v19 = a3;
    Conditional.evaluate(with:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v19 = a3;
    Conditional.evaluate(with:)();
    (*(v5 + 8))(v10, v4);
  }

  AspectRatio.maxSize(fitting:)();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_100615520(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100615570()
{
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView) = 0;
  v1 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessory;
  v2 = type metadata accessor for Accessory();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchTrendingAction) = 0;
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ActionLayout.Metrics();
  v5 = sub_1000056A8(v4, qword_1009D2F68);
  (*(*(v4 - 8) + 16))(v0 + v3, v5, v4);
  v6 = v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView) = 0;
  v9 = (v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_100615954()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SearchBar();
  v1 = objc_msgSendSuper2(&v10, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100005744(0, &qword_100982610);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = v3;
  v4 = UIKeyInputEscape;
  v5._object = 0x800000010080FCC0;
  v5._countAndFlagsBits = 0xD000000000000035;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  localizedString(_:comment:)(v5, v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"handleCancelKeyCommand" discoverabilityTitle:v7];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v11;
}

void sub_100615BAC()
{
  v1 = [v0 searchTextField];
  v2 = [v1 font];

  if (v2)
  {
    v3._object = 0x800000010081DAF0;
    v3._countAndFlagsBits = 0xD000000000000012;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    localizedString(_:comment:)(v3, v4);
    v5 = String._bridgeToObjectiveC()();
    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_100005744(0, &qword_1009730E0);
    *(inited + 40) = v2;
    v7 = NSFontAttributeName;
    v8 = v2;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10005DC58(inited + 32);
    type metadata accessor for Key(0);
    sub_10006F0F0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 sizeWithAttributes:isa];
    v11 = v10;

    v12 = [v0 searchTextField];
    v13 = [v0 searchTextField];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v12 textRectForBounds:{v15, v17, v19, v21}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v33.origin.x = v23;
    v33.origin.y = v25;
    v33.size.width = v27;
    v33.size.height = v29;
    if (ceil(v11) > CGRectGetWidth(v33))
    {

      v30._countAndFlagsBits = 0xD00000000000001ALL;
      v30._object = 0x800000010081DB10;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      localizedString(_:comment:)(v30, v31);
    }

    v32 = String._bridgeToObjectiveC()();

    [v0 setPlaceholder:v32];
  }
}

id sub_100615E68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100615F0C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppShowcase();
  sub_1006160B0(&qword_10098BB38, &type metadata accessor for AppShowcase);
  ItemLayoutContext.typedModel<A>(as:)();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  v5 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  sub_100104C50(v4, v5);
  v7 = v6;

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1006160B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006160F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10018957C();
  result = sub_100616368(a1);
  if (result)
  {
    v8 = TodayCard.backgroundColor.getter();
    if (!v8)
    {
      v9 = Artwork.backgroundColor.getter();
      if (!v9)
      {
LABEL_6:
        v12[3] = type metadata accessor for TodayCard();
        v12[4] = &protocol witness table for TodayCard;
        v12[0] = a1;
        type metadata accessor for ArtworkLoader();

        BaseObjectGraph.inject<A>(_:)();
        (*((swift_isaMask & *v4) + 0xE0))(v12, v11, a3);

        return sub_100007000(v12);
      }

      v10 = v9;
      [*(v4 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView) setBackgroundColor:v9];
      v8 = v10;
    }

    goto LABEL_6;
  }

  return result;
}

id sub_100616238()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];

  return [v1 setBackgroundColor:0];
}

uint64_t sub_100616294()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];
  sub_10019FDD0();
  sub_1006174BC(&qword_10098BC70, sub_10019FDD0);
  v2 = v1;
  AnyHashable.init<A>(_:)();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
  return sub_10003D614(v4);
}

uint64_t sub_100616368(uint64_t a1)
{
  if (!a1 || (v2 = v1, v12[0] = TodayCard.media.getter(), type metadata accessor for TodayCardMedia(), sub_10002849C(&qword_100972DD0), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_8;
  }

  if (!*(&v10 + 1))
  {
LABEL_8:
    sub_10002B894(&v9, &qword_100972DD8);
    return 0;
  }

  sub_100005A38(&v9, v12);
  sub_10002A400(v12, v13);
  v3 = [v1 traitCollection];
  v4 = TodayCardMediaWithArtwork.artwork(for:)();

  v5 = v4;
  if (!v4)
  {
    sub_10002A400(v12, v13);
    v6 = [v2 traitCollection];
    v7 = TodayCardMediaWithArtwork.video(for:)();

    if (v7)
    {
      v5 = Video.preview.getter();
    }

    else
    {
      v5 = 0;
    }
  }

  sub_100007000(v12);
  return v5;
}

char *sub_1006164EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  v12 = *&v10[OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  v13 = v10;
  [v12 setContentMode:4];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [*&v13[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:*&v10[v11] atIndex:0];

  return v13;
}

void sub_1006166AC(uint64_t a1)
{
  v2 = type metadata accessor for Artwork.Crop();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    ArtworkLoaderConfig.crop.getter();
    v9 = Artwork.Crop.preferredContentMode.getter();
    (*(v3 + 8))(v5, v2);
    [v8 setContentMode:v9];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    [v12 setImage:a1];
  }
}

id sub_100616854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TodayBrickCollectionViewCellWithBackground()
{
  result = qword_10098F338;
  if (!qword_10098F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006168F0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = type metadata accessor for Artwork.Crop();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspectRatio();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for PageGrid();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A833C(v2 + v20, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10002B894(v15, &qword_10097DBD0);
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_10002C0AC(a1, v41);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for TodayCard();
  if (swift_dynamicCast())
  {
    v32 = v40;
    sub_10002C0AC(a1, v41);
    if (swift_dynamicCast())
    {
      v22 = v40;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_100616368(v22);

    if (v23)
    {
      v31 = v2;
      v24 = [v2 traitCollection];
      sub_100187A84(v24, v12);
      PageGrid.componentMeasuringSize(spanning:)();
      SmallStoryCardLayout.Metrics.contentAspectRatio.getter();
      AspectRatio.height(fromWidth:)();
      (*(v33 + 8))(v9, v34);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v37 + 8))(v6, v38);
      v25 = Artwork.config(_:mode:prefersLayeredImage:)();

      (*(v35 + 8))(v12, v36);
      v40 = *(v31 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
      v26 = v40;
      sub_10019FDD0();
      sub_1006174BC(&qword_10098BC70, sub_10019FDD0);
      v27 = v26;
      AnyHashable.init<A>(_:)();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v25;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v41, &qword_10096FB90);
      (*(v17 + 8))(v19, v16);
    }

    (*((swift_isaMask & *v2) + 0x120))(v32, v39);
  }

  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_100616F20(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Artwork.Crop();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AspectRatio();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PageGrid();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCard();
  sub_1006174BC(&qword_100977390, &type metadata accessor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v36[0])
  {
    v27 = v9;
    v14 = TodayCard.media.getter();

    v36[0] = v14;
    type metadata accessor for TodayCardMedia();
    sub_10002849C(&qword_100972DD0);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1))
      {
        v24 = v4;
        v25 = v3;
        v26 = a2;
        sub_100005A38(&v33, v36);
        sub_10002A400(v36, v37);
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v15 = v33;
        v16 = TodayCardMediaWithArtwork.artwork(for:)();

        if (!v16)
        {
          sub_10002A400(v36, v37);
          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v17 = v33;
          v18 = TodayCardMediaWithArtwork.video(for:)();

          if (!v18)
          {
            return sub_100007000(v36);
          }

          Video.preview.getter();
        }

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v19 = v33;
        sub_100187A84(v33, v11);
        PageGrid.componentMeasuringSize(spanning:)();
        SmallStoryCardLayout.Metrics.contentAspectRatio.getter();
        AspectRatio.height(fromWidth:)();
        (*(v29 + 8))(v8, v31);
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v24 + 8))(v6, v25);
        v20 = Artwork.config(_:mode:prefersLayeredImage:)();

        (*(v32 + 8))(v11, v27);
        (*(v28 + 8))(v13, v30);
        sub_10002849C(&qword_100973210);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1007B0B70;
        *(v21 + 32) = v20;

        ArtworkLoader.prefetchArtwork(using:)(v21);

        return sub_100007000(v36);
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  return sub_10002B894(&v33, &qword_100972DD8);
}

uint64_t sub_1006174BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100617504()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppPlatform();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform])
  {

    MediaPlatform.appPlatform.getter();
    if ((*(v6 + 88))(v9, v5) == enum case for AppPlatform.watch(_:))
    {
      v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v11 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
      v12 = *&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v1[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v1[v11] = v10;
      v20 = v10;

      sub_1006177B8();
    }

    else
    {
      v17 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
      v18 = *&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
      if (v18)
      {
        [v18 removeFromSuperview];
        v19 = *&v1[v17];
      }

      else
      {
        v19 = 0;
      }

      *&v1[v17] = 0;

      sub_1006177B8();
      (*(v6 + 8))(v9, v5);
    }

    type metadata accessor for Screenshots();

    sub_10061B788(v21, v4);

    sub_100617A0C(v4);
    [v1 setNeedsLayout];
  }

  else
  {
    v14 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
    v15 = *&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *&v1[v14];
    }

    else
    {
      v16 = 0;
    }

    *&v1[v14] = 0;

    sub_1006177B8();
  }
}

void sub_1006177B8()
{
  v1 = v0;
  v2 = type metadata accessor for AppPlatform();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
  if (v6)
  {
    if (*&v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform])
    {
      swift_retain_n();
      v7 = v6;
      MediaPlatform.appPlatform.getter();
      if ((*(v3 + 88))(v5, v2) == enum case for AppPlatform.watch(_:))
      {
        if (qword_10096EB58 != -1)
        {
          swift_once();
        }

        v8 = qword_10098F580;
      }

      else
      {
        if (qword_10096EB60 != -1)
        {
          swift_once();
        }

        v8 = qword_10098F588;

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      v9 = qword_10096EB60;
      v10 = v6;
      if (v9 != -1)
      {
        swift_once();
      }

      v8 = qword_10098F588;
    }

    [v6 setBackgroundColor:v8];

    [v1 insertSubview:v6 belowSubview:*&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView]];
  }
}

uint64_t sub_100617A0C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_1001BAB64(a1, v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  v7 = *(v4 + 48);
  v8 = *&v2[v5];
  v9 = v7;
  dispatch thunk of RoundedCornerView.borderColor.setter();

  [v2 setNeedsLayout];
  return sub_1001BABC8(a1);
}

char *sub_100617ADC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView] = 0;
  v9 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
  if (qword_10096EB50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  v11 = sub_1000056A8(v10, qword_1009D2FE8);
  sub_1001BAB00(v11, &v4[v9]);
  *&v4[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BorderedScreenshotView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView]];

  return v16;
}

void sub_100617D38()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BorderedScreenshotView();
  v40.receiver = v0;
  v40.super_class = v16;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v17 = &v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v41);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v42);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMidX(v43);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMidY(v44);
  v18 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
  v19 = *&v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
  ArtworkView.frame.setter();

  sub_1001BAB00(v17, v15);
  sub_1001BABC8(v15);
  v20 = *&v1[v18];
  sub_1001BAB00(v17, v12);
  LODWORD(v18) = v12[16];
  v21 = v20;
  sub_1001BABC8(v12);
  v22 = &enum case for CornerStyle.arc(_:);
  if (!v18)
  {
    v22 = &enum case for CornerStyle.continuous(_:);
  }

  v23 = v39;
  (*(v3 + 104))(v39, *v22, v2);
  (*(v3 + 32))(v7, v23, v2);
  ArtworkView.setCorner(radius:style:)();

  (*(v3 + 8))(v7, v2);
  v24 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
  if (v25)
  {
    v26 = v25;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v26 setFrame:?];
  }

  v27 = *&v1[v24];
  if (*(v17 + 16))
  {
    if (v27)
    {
      [*&v1[v24] _setContinuousCornerRadius:10.0];
    }
  }

  else if (v27)
  {
    v28 = v38;
    sub_1001BAB00(v17, v38);
    v29 = v27;
    LayoutMarginsAware<>.layoutFrame.getter();
    if (*(v28 + 16))
    {
      v32 = *v28;
      sub_1001BABC8(v28);
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = *(v28 + 8);
      sub_1001BABC8(v28);
      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v32 = v36 * v35;
    }

    [v29 _setContinuousCornerRadius:v32];
  }
}

id sub_1006182AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderedScreenshotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BorderedScreenshotView()
{
  result = qword_10098F388;
  if (!qword_10098F388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006183A4()
{
  result = type metadata accessor for ScreenshotDisplayConfiguration();
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

uint64_t sub_100618450(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_10002849C(&qword_10098F3F8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = type metadata accessor for AnnotationViewModel();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_10002849C(&qword_10098F400);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_10002849C(&qword_10098F3E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10002849C(&unk_1009731D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Annotation();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v12 + 8))(v14, v11);
  sub_10002849C(&qword_100973D50);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    ItemLayoutContext.state.getter();
    v25 = v37;
    StateLens.init(_:)();
    v26 = v46;
    sub_100619A4C();

    StateLens<A>.currentValue.getter();
    AnnotationViewState.isExpanded.setter();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = AnnotationViewModel.init(annotation:objectGraph:forceExpanded:)();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_100619AA0;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_10002849C(&qword_10098F408);
    sub_100619AB8();
    v32 = v40;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_100097060(&qword_10098F448, &qword_10098F3F8);
    sub_1000056E0(v48);
    UIHostingConfiguration.margins(_:_:)();
    (*(v42 + 8))(v32, v33);
    UICollectionViewCell.contentConfiguration.setter();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_10061999C(v10);
  }
}

uint64_t sub_100618B00(uint64_t a1)
{
  v2 = type metadata accessor for AnnotationViewModel();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);

  AnnotationView.init(viewModel:viewState:)();
  sub_10002849C(&qword_10098F438);
  return ItemLayoutContext.id.getter();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell()
{
  result = qword_10098F3C8;
  if (!qword_10098F3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100618E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_10002849C(&qword_10098F3E0);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = type metadata accessor for AnnotationViewModel();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10098F3E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_10002849C(&unk_1009731D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = type metadata accessor for Annotation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v39 = a1;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v15 + 8))(v17, v14);
  sub_10002849C(&qword_100973D50);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v37 = v24;
    v27(v21, v24, v18);

    AnnotationViewModel.init(annotation:objectGraph:forceExpanded:)();
    v28 = v10;
    if (AnnotationViewModel.canBeExpanded.getter() & 1) != 0 || (, AnnotationViewState.collapsedTruncationState.getter(), , v29 = dispatch thunk of TruncationState.isTruncated.getter(), , (v29))
    {
      ItemLayoutContext.mutableState.getter();
      v30 = v40;
      WritableStateLens.init(_:)();
      sub_100619A4C();
      v31 = v42;
      WritableStateLens<A>.updateValue(_:)();

      AnnotationViewState.isExpanded.setter();

      sub_10002849C(&qword_100975748);
      type metadata accessor for SelectableShelfComponentViewReaction();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1007B1890;
      static SelectableShelfComponentViewReaction.propagate.getter();
      static SelectableShelfComponentViewReaction.deselect.getter();
      v47 = v32;
      sub_100619A04(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_10002849C(&qword_100975758);
      sub_100097060(&qword_100975760, &qword_100975758);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v41 + 8))(v30, v31);
    }

    else
    {
      sub_10002849C(&qword_100975748);
      type metadata accessor for SelectableShelfComponentViewReaction();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1007B1890;
      static SelectableShelfComponentViewReaction.propagate.getter();
      static SelectableShelfComponentViewReaction.deselect.getter();
      v47 = v35;
      sub_100619A04(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
      sub_10002849C(&qword_100975758);
      sub_100097060(&qword_100975760, &qword_100975758);
      dispatch thunk of SetAlgebra.init<A>(_:)();
    }

    (*(v44 + 8))(v28, v45);
    return (*(v19 + 8))(v37, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_10061999C(v13);
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    v47 = v33;
    sub_100619A04(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758);
    sub_100097060(&qword_100975760, &qword_100975758);
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }
}

uint64_t sub_1006197BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = v11[1];
  v7 = UITraitCollection.isSizeClassCompact.getter();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for ComponentSeparator();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_100619944(uint64_t a1)
{
  result = sub_100619A04(&qword_10098F3D8, type metadata accessor for AnnotationCollectionViewHostingCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10061999C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098F3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100619A04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100619A4C()
{
  result = qword_10098F3F0;
  if (!qword_10098F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F3F0);
  }

  return result;
}

unint64_t sub_100619AB8()
{
  result = qword_10098F410;
  if (!qword_10098F410)
  {
    sub_10002D1A8(&qword_10098F408);
    sub_100619B70();
    sub_100097060(&qword_100993090, &qword_100982F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F410);
  }

  return result;
}

unint64_t sub_100619B70()
{
  result = qword_10098F418;
  if (!qword_10098F418)
  {
    sub_10002D1A8(&qword_10098F420);
    sub_10002D1A8(&qword_10098F428);
    sub_10002D1A8(&qword_10098F430);
    type metadata accessor for BaseObjectGraph();
    sub_10002D1A8(&qword_10098F438);
    sub_100097060(&qword_10098F440, &qword_10098F438);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100097060(&unk_100993080, &qword_100982F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F418);
  }

  return result;
}

unint64_t sub_100619D44()
{
  result = qword_10098F450;
  if (!qword_10098F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F450);
  }

  return result;
}

unint64_t sub_100619D9C()
{
  result = qword_10098F458;
  if (!qword_10098F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F458);
  }

  return result;
}

uint64_t sub_100619DF0()
{
  v1 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_10002849C(&unk_100982AA0);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = type metadata accessor for SearchOrigin();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_1005E017C(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_10002849C(&qword_100988670);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_1007B5350;
      *(inited + 16) = xmmword_1007B5350;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_100398EF4(v35);
      swift_setDeallocating();
      v48[2] = sub_10002849C(&unk_100982880);
      swift_arrayDestroy();
      sub_10002849C(&unk_10098A308);
      type metadata accessor for MetricsFieldInclusionRequest();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007B1E00;
      static MetricsFieldInclusionRequest.pageFields.getter();
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      static MetricsFieldInclusionRequest.searchGhostHint.getter();
      sub_100083F08(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for ClickMetricsEvent();
      swift_allocObject();
      v48[1] = ClickMetricsEvent.init(targetType:targetId:including:excluding:eventFields:)();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_100398EF4(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      type metadata accessor for SearchMetricsEvent();
      swift_allocObject();
      v51 = SearchMetricsEvent.init(eventFields:)();
      sub_10002849C(&unk_100988E30);
      type metadata accessor for MetricsData();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      dispatch thunk of MetricsEvent.metricsData.getter();
      dispatch thunk of MetricsEvent.metricsData.getter();
      ScalarDictionary.init()();
      v39 = v62;
      ActionMetrics.init(data:custom:)();
      v40 = type metadata accessor for URL();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = type metadata accessor for SearchEntity();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = type metadata accessor for ReferrerData();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      type metadata accessor for SearchAction();
      swift_allocObject();

      v46 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_10061A83C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AutomationSemantics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_10002849C(&unk_10098F570);
  swift_allocObject();
  *&v1[v8] = SyncEvent.init()();
  *&v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  static AutomationSemantics.searchField()();
  UIView.setAutomationSemantics(_:)();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_10061AA50(uint64_t a1)
{
  v2 = type metadata accessor for SearchTextSnapshot();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v37 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v35 = ObjectType;
      v36 = v13;
      v33 = v15;
      v34 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v31 = v3;
        v32 = v2;
        v30 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v37;
        v23.value._countAndFlagsBits = v20;
        v23.value._object = v22;
        v24 = String.isValid(expansionFor:)(v23);

        v3 = v31;
        if (v24)
        {
          v25 = v30;
          v34(v35, v33);
        }

        else
        {
        }

        v2 = v32;
      }

      else
      {

        v5 = v37;
      }
    }

    *(a1 + v6) = 0;
    v26 = [v7 text];
    if (v26)
    {
      v27 = v3;
      v28 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = v27;
    }

    v29 = [v7 markedTextRange];
    if (v29)
    {
    }

    SearchTextSnapshot.init(prefixText:prefixIsProvisional:expansionText:)();
    SyncEvent.post(_:)();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10061AD78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [a1 selectedTextRange];
  if (!v7)
  {
    v13 = 1;
    return v13 & 1;
  }

  v8 = v7;
  sub_10061B29C();
  v9 = [v8 end];
  v10 = [a1 endOfDocument];
  v11 = static NSObject.== infix(_:_:)();

  v12 = a3 < 1 || String.count.getter() != 0;
  v14 = [a1 markedTextRange];
  if (v14)
  {
  }

  else if (!v12 && (v11 & 1) != 0)
  {
    v15 = 1;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:
  v16 = *(v4 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction);
  v17 = v15;
  if (v16)
  {
    v17 = v15 | [v16 isHandlingWriting];
  }

  *(v4 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled) = v17 & 1;
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = a1 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  if (v20 == 1)
  {
    v21 = v18;
    ObjectType = swift_getObjectType();
    v23 = a1;
    v24 = sub_1005E017C(ObjectType, v21);
    if (v24)
    {
      (*(v21 + 16))(0, 0, ObjectType, v21);
    }

    v13 = !v24;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_10061B18C(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

unint64_t sub_10061B29C()
{
  result = qword_100978360;
  if (!qword_100978360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100978360);
  }

  return result;
}

void sub_10061B2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SearchTextSnapshot();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v12;
    v41 = v10;
    *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v38 = v21;
      v21(v20, v19);
      if (v23)
      {
        v36 = v20;
        v37 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v29.value._countAndFlagsBits = v26;
        v29.value._object = v28;
        v30 = String.isValid(expansionFor:)(v29);

        v31 = v37;
        if (v30)
        {
          v38(v36, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v32 = [v16 text];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = [v16 markedTextRange];
    if (v34)
    {
    }

    v35 = v39;
    SearchTextSnapshot.init(prefixText:prefixIsProvisional:expansionText:)();
    SyncEvent.post(_:)();
    (*(v40 + 8))(v35, v41);
  }
}

uint64_t type metadata accessor for ScreenshotDisplayConfiguration()
{
  result = qword_10098F608;
  if (!qword_10098F608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10061B66C()
{
  sub_10061B738();
  if (v0 <= 0x3F)
  {
    sub_100028BB8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AspectRatio();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10061B738()
{
  if (!qword_10098F618)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098F618);
    }
  }
}

__n128 sub_10061B788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppPlatform();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  if (a1)
  {
    v46 = v13;

    MediaPlatform.appPlatform.getter();

    v50 = v5;
    v16 = *(v5 + 88);
    v17 = v16(v15, v4);
    v18 = enum case for AppPlatform.watch(_:);
    v19 = 0.0;
    v20 = 0.0;
    if (v17 != enum case for AppPlatform.watch(_:))
    {
      (*(v50 + 8))(v15, v4);
      v20 = 5.0;
    }

    v49 = MediaPlatform.deviceCornerRadiusFactor.getter();
    v47 = v21;
    v48 = MediaPlatform.deviceBorderThickness.getter();
    v52.n128_u32[0] = v22;

    MediaPlatform.appPlatform.getter();

    if (v16(v11, v4) != v18)
    {
      (*(v50 + 8))(v11, v4);
      v19 = 1.0;
    }

    MediaPlatform.appPlatform.getter();
    if (v16(v8, v4) == v18)
    {
      if (qword_10096EB58 != -1)
      {
        swift_once();
      }

      v23 = qword_10098F580;
    }

    else
    {
      if (qword_10096EB60 != -1)
      {
        swift_once();
      }

      v23 = qword_10098F588;

      (*(v50 + 8))(v8, v4);
    }

    v30 = v52.n128_u8[0];

    v31 = v46;
    MediaPlatform.appPlatform.getter();
    if (v16(v31, v4) == v18)
    {
      v32 = MediaPlatform.deviceBorderThickness.getter();
      v25 = v23;
      if (v33)
      {
        v28 = v30;
        if (qword_10096EB48 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for AspectRatio();
        sub_1000056A8(v34, qword_1009D2FD0);
        AspectRatio.verticalFraction.getter();
        v36 = v35;

        __asm { FMOV            V1.2D, #15.0 }

        *_Q1.i64 = v36 * 15.0;
        v51 = _Q1;
        v52 = _Q1;
        v26 = v48;
        v27 = v49;
        goto LABEL_24;
      }

      v43 = v32;

      v51 = vdupq_n_s64(v43);
      v52 = v51;
      v26 = v48;
      v27 = v49;
    }

    else
    {
      v42 = *&UIEdgeInsetsZero.top;
      v51 = *&UIEdgeInsetsZero.bottom;
      v52 = v42;

      (*(v50 + 8))(v31, v4);
      v26 = v48;
      v27 = v49;
      v25 = v23;
    }

    v28 = v30;
LABEL_24:
    v29 = v47;
    goto LABEL_25;
  }

  if (qword_10096EB60 != -1)
  {
    swift_once();
  }

  v24 = *&UIEdgeInsetsZero.top;
  v51 = *&UIEdgeInsetsZero.bottom;
  v52 = v24;
  v25 = qword_10098F588;
  v26 = 0;
  v27 = 0;
  v20 = 5.0;
  v28 = 1;
  v19 = 1.0;
  v29 = 1;
LABEL_25:
  type metadata accessor for ScreenshotDisplayConfiguration();
  AspectRatio.init(_:_:)();
  *a2 = v20;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28 & 1;
  *(a2 + 40) = v19;
  *(a2 + 48) = v25;
  result = v52;
  *(a2 + 72) = v51;
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_10061BC60()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D2FD0);
  sub_1000056A8(v0, qword_1009D2FD0);
  return AspectRatio.init(_:_:)();
}

uint64_t sub_10061BCB4()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  sub_100005644(v4, qword_1009D2FE8);
  v5 = sub_1000056A8(v4, qword_1009D2FE8);
  if (qword_10096EB60 != -1)
  {
    swift_once();
  }

  v6 = qword_10096EB68;
  v7 = qword_10098F588;
  if (v6 != -1)
  {
    swift_once();
  }

  v10 = unk_10098F5A0;
  v11 = xmmword_10098F590;
  AspectRatio.init(_:_:)();
  *v5 = 0x4014000000000000;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0x3FF0000000000000;
  *(v5 + 48) = v7;
  v8 = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v8;
  return (*(v1 + 32))(v5 + *(v4 + 40), v3, v0);
}

id sub_10061BE70()
{
  result = [objc_opt_self() blackColor];
  qword_10098F580 = result;
  return result;
}

uint64_t sub_10061BEAC()
{
  sub_100028BB8();
  result = static UIColor.mediaBorder.getter();
  qword_10098F588 = result;
  return result;
}

__n128 sub_10061BEE0()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_10098F590 = *&UIEdgeInsetsZero.top;
  unk_10098F5A0 = v1;
  return result;
}

uint64_t sub_10061BEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_10002849C(&qword_100978E28);
  v59 = *(v17 - 8);
  v60 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v58 - v19;
  v21 = [v8 contentView];
  [v21 setLayoutMargins:{a5, a6, a7, a8}];

  *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph] = a3;

  v22 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView];
  LockupCollectionSearchResult.heading.getter();
  v23 = *(v22 + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel);
  v24 = String._bridgeToObjectiveC()();

  [v23 setText:v24];

  v25 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView];
  LockupCollectionSearchResult.title.getter();
  v26 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel);
  v27 = String._bridgeToObjectiveC()();

  [v26 setText:v27];

  v28 = LockupCollectionSearchResult.detailAction.getter();
  if (v28)
  {
    v29 = v28;
    Action.title.getter();
    if (v30)
    {
      v31 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton);
      v32 = String._bridgeToObjectiveC()();

      [v31 setTitle:v32 forState:0];

      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = v29;
      v34 = (v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
      v35 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
      *v34 = sub_10061CF98;
      v34[1] = v33;

      v36 = v35;
      goto LABEL_6;
    }
  }

  [*(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton) setTitle:0 forState:{0, v58}];
  v37 = (v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  v36 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  *v37 = 0;
  v37[1] = 0;
LABEL_6:
  sub_10001F63C(v36);
  swift_getObjectType();
  v38 = sub_10061CEB0(a4);
  v40 = v39;
  v41 = v38;
  result = sub_1000FB91C(v38, v39);
  if (!*&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v43 = LockupCollectionSearchResult.items.getter();
  sub_1002A5430(v43);

  dispatch thunk of NestedCollectionViewImpressionsCoordinator.models.setter();

  v44 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
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
  v48 = objc_allocWithZone(sub_10002849C(&unk_100978E30));

  v49 = v44;
  v50 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v51 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource;
  v52 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource];
  *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource] = v50;
  v53 = v50;

  v54 = swift_allocObject();
  *(v54 + 16) = v41;
  *(v54 + 24) = v40;
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  sub_10002849C(&qword_100973210);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1007B0B70;
  *(v55 + 32) = a1;
  swift_getKeyPath();
  sub_10061CFA0(&qword_100978E40, &type metadata accessor for LockupCollectionSearchResult);
  sub_10061CFA0(&qword_100978E48, &type metadata accessor for Lockup);

  static DiffableData.makeSnapshot<A, B>(fromSections:withItemsAt:)();

  v56 = *&v9[v51];
  if (v56)
  {
    v57 = v56;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  [v9 setNeedsLayout];
  return (*(v59 + 8))(v20, v60);
}

uint64_t sub_10061C498(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void *sub_10061C5DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v58 = a3;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v9 - 8);
  v61 = v53 - v10;
  v11 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v14 - 8);
  v60 = v53 - v15;
  v16 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v16 - 8);
  v59 = v53 - v17;
  v18 = type metadata accessor for OfferStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  v25 = sub_10002849C(&qword_100973AE0);
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
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v28 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v54 = a1;
  v30 = [a1 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:isa];

  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v53[1] = v8;
    sub_10002849C(&qword_100974478);
    DiffableLens.value.getter();
    v58 = v64;
    if (Lockup.offerDisplayProperties.getter())
    {
      OfferDisplayProperties.style.getter();
      v31 = *(v19 + 104);
      v31(v21, enum case for OfferStyle.infer(_:), v18);
      v32 = static OfferStyle.== infix(_:_:)();
      v33 = *(v19 + 8);
      v33(v21, v18);
      v33(v24, v18);
      if (v32 & 1) != 0 && (v34 = [v54 traitCollection], v35 = UITraitCollection.isSizeClassRegular.getter(), v34, (v35))
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
    v39 = *(v56 + OBJC_IVAR____TtC8AppStore35SmallSearchLockupCollectionViewCell_lockupView);
    v40 = sub_10002849C(&unk_100973240);
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = type metadata accessor for OfferEnvironment();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = sub_10002849C(&unk_1009701A0);
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = type metadata accessor for OfferTint();
    v47 = v61;
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    sub_1004F3190(v58, v39, v41, Strong, 0, 0, v37, v43, v47, v45);
    sub_10002B894(v47, &unk_100973AD0);
    v39[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v39 setNeedsLayout];
    sub_10002B894(v45, &unk_100970150);
    sub_10002B894(v43, &unk_100970160);
    sub_10002B894(v41, &unk_100973230);
    v48 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v49 = *&v39[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    ArtworkView.image.setter();
    type metadata accessor for ArtworkView();
    sub_10061CFA0(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    if (Lockup.icon.getter())
    {
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v50, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v49 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v49 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v51 = *&v39[v48];
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v38 = v56;
      v37 = v57;
    }

    [v38 setNeedsLayout];

    sub_10002B894(v37, &qword_100973AE0);
  }

  else
  {

    return 0;
  }

  return v38;
}

BOOL sub_10061CEB0(void *a1)
{
  v1 = a1;
  v2 = [a1 traitCollection];
  UITraitCollection.prefersAccessibilityLayouts.getter();

  v3 = [v1 traitCollection];
  LOBYTE(v1) = UITraitCollection.isSizeClassCompact.getter();

  return (v1 & 1) == 0;
}

uint64_t sub_10061CF4C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10061CFA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CardHeaderButton()
{
  result = qword_10098F6A8;
  if (!qword_10098F6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10061D0A0(char a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = (v3 + 32);
  v10 = *(v3 + 104);
  if (a1)
  {
    if (a1 != 1)
    {
      v10(v6, enum case for SystemImage.appstore(_:), v2);
      (*v9)(v8, v6, v2);
      v12 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:12.0];
      goto LABEL_7;
    }

    v11 = &enum case for SystemImage.chevronBackward(_:);
  }

  else
  {
    v11 = &enum case for SystemImage.xmark(_:);
  }

  v10(v6, *v11, v2);
  (*v9)(v8, v6, v2);
  v12 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
LABEL_7:
  v13 = v12;
  v14 = static SystemImage.load(_:with:)();

  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t sub_10061D28C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10061D378()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10061D414()
{
  String.hash(into:)();
}

Swift::Int sub_10061D49C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10061D534@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10061E6B4(*a1);
  *a2 = result;
  return result;
}

void sub_10061D564(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_10061D5DC(unsigned __int8 a1)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = qword_10098F670;
  v5 = v1[qword_10098F670];
  v1[qword_10098F670] = a1;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x746867696CLL;
    }

    else
    {
      v7 = 1802658148;
    }

    if (v6 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0x6974616D6F747561;
    v8 = 0xE900000000000063;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 != 1)
  {
    v2 = 0xE400000000000000;
    if (v7 != 1802658148)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v2 = 0xE500000000000000;
  v3 = 0x746867696CLL;
LABEL_13:
  if (v7 != v3)
  {
LABEL_20:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      sub_10061E208(v1[v4]);

      return [v1 setNeedsDisplay];
    }

    return result;
  }

LABEL_16:
  if (v8 != v2)
  {
    goto LABEL_20;
  }
}

char *sub_10061D748(unsigned __int8 a1)
{
  v3 = a1;
  v4 = type metadata accessor for AutomationSemantics();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[qword_10098F670] = 0;
  v7 = qword_10098F678;
  *&v1[v7] = [objc_opt_self() secondaryLabelColor];
  v8 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_10098F680] = v8;
  v9 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_10098F688] = v9;
  v10 = [objc_allocWithZone(UIImageView) init];
  v11 = 0;
  *&v1[qword_10098F690] = v10;
  if (v3 == 2)
  {
    v11 = [objc_allocWithZone(UILabel) init];
  }

  *&v1[qword_10098F698] = v11;
  v1[qword_10098F6A0] = a1;
  v12 = type metadata accessor for CardHeaderButton();
  v51.receiver = v1;
  v51.super_class = v12;
  v13 = objc_msgSendSuper2(&v51, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = qword_10098F680;
  v15 = *&v13[qword_10098F680];
  v16 = v13;
  [v15 setClipsToBounds:1];
  v17 = [*&v13[v14] layer];
  [v17 setCornerRadius:15.0];

  [*&v13[v14] setUserInteractionEnabled:0];
  v18 = *&v13[v14];
  v19 = [v16 imageView];
  [v16 insertSubview:v18 below:v19];

  v20 = [*&v13[v14] contentView];
  v21 = qword_10098F688;
  [v20 addSubview:*&v16[qword_10098F688]];

  v22 = qword_10098F690;
  v23 = *&v16[qword_10098F690];
  v24 = sub_10061D0A0(a1);
  [v23 setImage:v24];

  v25 = *&v16[v22];
  v26 = objc_opt_self();
  v27 = v25;
  if (v3 >= 2)
  {
    v28 = 12.0;
    v29 = v26;
    v30 = 6;
  }

  else
  {
    v28 = 15.0;
    v29 = v26;
    v30 = 7;
  }

  v31 = [v29 configurationWithPointSize:v30 weight:2 scale:{v28, v49, v50}];
  [v27 setPreferredSymbolConfiguration:v31];

  v32 = [*&v16[v21] contentView];
  [v32 addSubview:*&v16[v22]];

  v33 = *&v16[qword_10098F698];
  if (v33)
  {
    v34 = v33;
    if (a1 >= 2u)
    {
      v36._object = 0x800000010081DE10;
      v36._countAndFlagsBits = 0xD00000000000001DLL;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      localizedString(_:comment:)(v36, v37);
      v35 = String._bridgeToObjectiveC()();
    }

    else
    {
      v35 = 0;
    }

    [v33 setText:v35];

    v38 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
    [v33 setFont:v38];

    [v33 setNumberOfLines:2];
    v39 = [*&v16[v21] contentView];
    [v39 addSubview:v33];
  }

  else
  {
    [*&v16[v22] setContentMode:4];
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setContentEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setImageEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (a1)
  {
    if (a1 == 1)
    {
      v43 = 0xEC0000004E4F5454;
      v44 = 0x55425F45534F4C43;
    }

    else
    {
      v44 = 0xD00000000000001DLL;
      v43 = 0x800000010081DE10;
    }
  }

  else
  {
    v43 = 0xEB000000004E4F54;
    v44 = 0x5455425F4B434142;
  }

  v45 = v43;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v44, v46);

  v47 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityLabel:v47];

  static AutomationSemantics.dismissButton()();
  UIView.setAutomationSemantics(_:)();
  (*(v49 + 8))(v6, v50);
  sub_10061DD78();
  sub_10061E208(v16[qword_10098F670]);

  return v16;
}

void sub_10061DD78()
{
  v1 = v0;
  v2 = *&v0[qword_10098F680];
  [v1 intrinsicContentSize];
  [v2 setFrame:{0.0, 0.0, v3, v4}];
  v5 = *&v1[qword_10098F688];
  [v1 intrinsicContentSize];
  [v5 setFrame:{0.0, 0.0, v6, v7}];
  v8 = *&v1[qword_10098F698];
  if (v8)
  {
    v9 = v8;
    [v1 intrinsicContentSize];
    v10 = v1[qword_10098F6A0];
    v11 = sub_10061D0A0(v10);
    [v11 size];
    v13 = v12;

    [v9 measurementsWithFitting:v1 in:{280.0, 1.79769313e308}];
    v25 = v9;
    [v25 sizeThatFits:{280.0, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    [v1 intrinsicContentSize];
    v19 = v18 * 0.5 - v17 * 0.5 + 0.5;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v25 setFrame:?];

    v20 = sub_10061D0A0(v10);
    UIImage.baselineOffsetFromBottom.getter();

    v27.origin.x = v13 + 12.0 + 4.0;
    v27.origin.y = v19;
    v27.size.width = v15;
    v27.size.height = v17;
    CGRectGetMinY(v27);
    v21 = *&v1[qword_10098F690];
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v21 setFrame:?];
  }

  else
  {
    v22 = *&v1[qword_10098F690];
    [v1 intrinsicContentSize];

    [v22 setFrame:{0.0, 0.0, v23, v24}];
  }
}

double sub_10061E06C(void *a1)
{
  v1 = a1;
  sub_10061E0B0();
  v3 = v2;

  return v3;
}

void sub_10061E0B0()
{
  if (*(v0 + qword_10098F6A0) >= 2u)
  {
    v1 = sub_10061D0A0(2);
    [v1 size];

    v2 = *(v0 + qword_10098F698);
    if (v2)
    {
      [v2 sizeThatFits:{280.0, 1.79769313e308}];
    }
  }
}

id sub_10061E17C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      return 0;
    }
  }

  return [objc_opt_self() whiteColor];
}

void sub_10061E208(char a1)
{
  v3 = sub_10061E5D8(a1);
  v4 = *&v1[qword_10098F680];
  v12 = v3;
  [v4 setEffect:?];
  v5 = sub_10061E17C(a1);
  [v1 setTintColor:v5];

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [v1 traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v8 == 2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v9 = [objc_opt_self() effectForBlurEffect:v12 style:v6];
  v10 = *&v1[qword_10098F688];
  v11 = v9;
  [v10 setEffect:v11];
}

void sub_10061E344(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for CardHeaderButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_10061E208(v1[qword_10098F670]);
}

void sub_10061E3DC()
{
  v1 = *(v0 + qword_10098F698);
}

id sub_10061E44C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardHeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10061E484(uint64_t a1)
{
  v2 = *(a1 + qword_10098F698);
}

unint64_t sub_10061E52C()
{
  result = qword_10098F6F8;
  if (!qword_10098F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F6F8);
  }

  return result;
}

unint64_t sub_10061E584()
{
  result = qword_10098F700;
  if (!qword_10098F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F700);
  }

  return result;
}

uint64_t sub_10061E5D8(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      if (qword_10096EB70 != -1)
      {
        swift_once();
      }

      v2 = &qword_10098F660;
      return *v2;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      goto LABEL_3;
    }
  }

  if (qword_10096EB78 != -1)
  {
    swift_once();
  }

  v2 = &qword_10098F668;
  return *v2;
}

unint64_t sub_10061E6B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B02C8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10061E708(uint64_t a1, char a2)
{
  result = sub_1001C82BC(a1, a2);
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = &_swiftEmptyArrayStorage;
    while (v5 < *(v3 + 16))
    {
      sub_10002C0AC(v6, &v12);
      sub_10002A400(&v12, v13);
      if (dispatch thunk of OnboardingStep.shouldShow.getter())
      {
        sub_100005A38(&v12, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10014432C(0, v7[2] + 1, 1);
          v7 = v14;
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          sub_10014432C((v9 > 1), v10 + 1, 1);
          v7 = v14;
        }

        v7[2] = v10 + 1;
        result = sub_100005A38(v11, &v7[5 * v10 + 4]);
      }

      else
      {
        result = sub_100007000(&v12);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_13:

    return v7;
  }

  return result;
}

Swift::Int OnboardingConfiguration.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10061E8D4()
{
  result = qword_10098F708;
  if (!qword_10098F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F708);
  }

  return result;
}

uint64_t sub_10061E938()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.componentBackgroundStandout.getter();
  qword_1009D3010 = result;
  return result;
}

char *sub_10061E97C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v4[v12] = DynamicTypeLabel.__allocating_init(frame:)();
  v13 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel;
  *&v4[v13] = DynamicTypeLabel.__allocating_init(frame:)();
  v14 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel;
  *&v4[v14] = DynamicTypeLabel.__allocating_init(frame:)();
  v15 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton;
  v16 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v4[v15] = sub_1000F5284(0);
  v17 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v18 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v4[v17] = sub_1002EB7C0(v11, 1);
  static CondensedSearchInAppPurchaseCardLayout.Metrics.baseMetrics.getter();
  *&v4[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_tileOffset] = 0;
  v19 = type metadata accessor for CondensedInAppPurchaseContentView();
  v37.receiver = v4;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel]];
  v26 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel]];
  v27 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView]];
  v28 = *&v24[v25];
  v29 = [v24 tintColor];
  [v28 setTextColor:v29];

  [*&v24[v25] setNumberOfLines:1];
  [*&v24[v26] setNumberOfLines:1];
  v30 = *&v24[v26];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  [v32 setTextColor:v33];

  v34 = *&v24[v27];
  v35 = [v31 secondaryLabelColor];
  [v34 setTextColor:v35];

  sub_100621080();
  return v24;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.layoutSubviews()()
{
  v1 = v0;
  v191 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = (v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v188 = v176 - v4;
  v5 = type metadata accessor for FlankedHorizontalLayout();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v192 = v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for LayoutRect();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v199 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v227 = *(v222 - 8);
  __chkstk_darwin(v222);
  v198 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v229 = *(v223 - 8);
  __chkstk_darwin(v223);
  v197 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for VerticalFlowLayout();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = v176 - v13;
  v14 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v226 = v176 - v19;
  v20 = type metadata accessor for CondensedInAppPurchaseContentView();
  v257.receiver = v0;
  v257.super_class = v20;
  objc_msgSendSuper2(&v257, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v21 = [v0 traitCollection];
  v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

  (*(v15 + 16))(v17, &v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics], v14);
  v225 = v1;
  v202 = v14;
  if (v22)
  {
    CondensedSearchInAppPurchaseCardLayout.Metrics.withCornerTileOffset(_:)();
    v23 = *(v15 + 8);
    v201 = v15 + 8;
    v190 = v23;
    v23(v17, v14);
    v24 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v253 = type metadata accessor for InAppPurchaseView();
    v254 = &protocol witness table for UIView;
    v252[0] = v24;
    v25 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
    v26 = type metadata accessor for DynamicTypeLabel();
    v251 = &protocol witness table for UILabel;
    v250 = v26;
    v249[0] = v25;
    v27 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];
    v248 = &protocol witness table for UILabel;
    v247 = v26;
    v246[0] = v27;
    v28 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    v245 = &protocol witness table for UILabel;
    v244 = v26;
    v243[0] = v28;
    v29 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton];
    v30 = type metadata accessor for OfferButton();
    v242 = &protocol witness table for UIView;
    v241 = v30;
    v240[0] = v29;
    sub_10002849C(&qword_10096FC30);
    v31 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v193 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v188 = (4 * v193);
    v33 = swift_allocObject();
    v189 = v33;
    *(v33 + 16) = xmmword_1007B5360;
    *&v221 = v33 + v32;
    v187 = v24;
    v34 = v25;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    *(&v238 + 1) = &type metadata for CGFloat;
    v239 = &protocol witness table for CGFloat;
    *&v237 = v38;
    CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
    LODWORD(v185) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v194 = v229[13];
    v196 = (v229 + 13);
    v39 = v197;
    (v194)(v197);
    v209 = sub_10002849C(&unk_10098D820);
    v40 = v227;
    v41 = *(v227 + 72);
    v195 = *(v227 + 80);
    v42 = (v195 + 32) & ~v195;
    v207 = 3 * v41;
    v219 = v41;
    v220 = 2 * v41;
    v43 = swift_allocObject();
    v218 = xmmword_1007B1E00;
    *(v43 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v231 = v43;
    *&v217 = sub_1006219DC(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v216 = sub_10002849C(&unk_10098D830);
    v215 = sub_1000364CC();
    v44 = v198;
    v45 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    LODWORD(v214) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v46 = v228;
    v47 = *(v228 + 104);
    v212 = (v228 + 104);
    v213 = v47;
    v48 = v199;
    v49 = v224;
    v47(v199);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208 = *(v46 + 8);
    v228 = v46 + 8;
    v208(v48, v49);
    v50 = *(v40 + 8);
    v227 = v40 + 8;
    v211 = v50;
    v50(v44, v45);
    v51 = v229[1];
    ++v229;
    v210 = v51;
    v52 = v223;
    v51(v39, v223);
    sub_100036530(&v234);
    sub_100007000(&v237);
    v53 = v250;
    v54 = v251;
    v55 = sub_10002A400(v249, v250);
    *(&v238 + 1) = v53;
    v239 = v54[1];
    v56 = sub_1000056E0(&v237);
    (*(*(v53 - 8) + 16))(v56, v55, v53);
    CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    LODWORD(v192) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v57 = v194;
    (v194)(v39);
    v191 = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v230[0] = v58;
    v59 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v213(v48, v214, v49);
    v60 = v193;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208(v48, v49);
    v211(v44, v59);
    v210(v39, v52);
    sub_100036530(&v231);
    sub_100007000(&v234);
    sub_100007000(&v237);
    v184 = (2 * v60);
    v61 = v247;
    v62 = v248;
    v63 = sub_10002A400(v246, v247);
    *(&v238 + 1) = v61;
    v239 = v62[1];
    v64 = sub_1000056E0(&v237);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    (v57)(v39, v192, v52);
    v65 = swift_allocObject();
    *(v65 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v230[0] = v65;
    v66 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v224;
    v213(v48, v214, v224);
    v68 = v184;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208(v48, v67);
    v211(v44, v66);
    v69 = v39;
    v70 = v39;
    v71 = v223;
    v210(v69, v223);
    sub_100036530(&v231);
    sub_100007000(&v234);
    sub_100007000(&v237);
    v193 += v68;
    v72 = v244;
    v73 = v245;
    v74 = sub_10002A400(v243, v244);
    *(&v238 + 1) = v72;
    v239 = v73[1];
    v75 = sub_1000056E0(&v237);
    (*(*(v72 - 8) + 16))(v75, v74, v72);
    CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v76 = v71;
    (v194)(v70, v192, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v230[0] = v77;
    v78 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v79 = v224;
    v213(v48, v214, v224);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208(v48, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_100036530(&v231);
    sub_100007000(&v234);
    sub_100007000(&v237);
    CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    (v194)(v70, v185, v76);
    v80 = swift_allocObject();
    *(v80 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v231 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v213(v48, v214, v79);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v81 = v48;
    v82 = v225;
    v83 = v187;
    v208(v81, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_100036530(&v234);
    sub_100007000(&v237);
    v84 = v186;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    sub_100007000(v240);
    sub_100007000(v243);
    sub_100007000(v246);
    sub_100007000(v249);
    sub_100007000(v252);
    v85 = v203;
    v86 = v200;
    dispatch thunk of Layout.placeChildren(relativeTo:in:)();
    (*(v204 + 8))(v85, v206);
    [v83 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [v82 traitCollection];
    LOBYTE(v85) = UITraitCollection.prefersRightToLeftLayouts.getter();

    CondensedSearchInAppPurchaseCardLayout.Metrics.tileOffset.getter();
    sub_10002A400(v252, v253);
    v96 = [v82 traitCollection];
    AnyDimension.value(with:)();
    v98 = v97;

    if (v85)
    {
      sub_100007000(v252);
      v99 = v88 - v98;
    }

    else
    {
      v99 = v88 + v98;
      sub_100007000(v252);
    }

    v175 = v205;
    [v83 setFrame:{v99, v90 + 0.0, v92, v94}];
    v190(v226, v202);
    (*(v175 + 8))(v84, v86);
  }

  else
  {
    v100 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v255 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
    v101 = v255;
    v256 = v100;
    v102 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];
    v253 = type metadata accessor for DynamicTypeLabel();
    v254 = &protocol witness table for UILabel;
    v252[0] = v102;
    v201 = v15;
    v103 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    v251 = &protocol witness table for UILabel;
    v250 = v253;
    v249[0] = v103;
    v182 = v5;
    v104 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton];
    v105 = type metadata accessor for OfferButton();
    v248 = &protocol witness table for UIView;
    v247 = v105;
    v246[0] = v104;
    v181 = v100;
    v180 = v101;
    v106 = v102;
    v107 = v103;
    v108 = v104;
    v109 = [v1 traitCollection];
    CondensedSearchInAppPurchaseCardLayout.Metrics.textTopMargin.getter();
    sub_10002A400(v243, v244);
    AnyDimension.value(with:)();
    v194 = v17;
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v178 = type metadata accessor for TraitEnvironmentPlaceholder();
    v179 = sub_10002849C(&qword_100973210);
    v110 = swift_allocObject();
    v221 = xmmword_1007B0B70;
    *(v110 + 16) = xmmword_1007B0B70;
    *(v110 + 32) = v109;
    v177 = v109;
    v111 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    sub_100007000(v243);
    sub_10002849C(&qword_10096FC30);
    v112 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v185 = *(v112 + 72);
    v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v114 = swift_allocObject();
    v176[1] = v114;
    *(v114 + 16) = xmmword_1007B5350;
    v226 = (v114 + v113);
    LayoutView.withLayoutMargins(_:)();
    CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    LODWORD(v186) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v115 = v229;
    v116 = v229[13];
    v184 = (v229 + 13);
    v195 = v116;
    v117 = v197;
    v118 = v223;
    v116(v197);
    v196 = sub_10002849C(&unk_10098D820);
    v119 = v227;
    v120 = *(v227 + 72);
    v121 = *(v227 + 80);
    v207 = 3 * v120;
    v219 = 2 * v120;
    v220 = v121;
    *&v218 = v120;
    v183 = (v121 + 32) & ~v121;
    v122 = swift_allocObject();
    v217 = xmmword_1007B1E00;
    *(v122 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v234 = v122;
    v215 = sub_1006219DC(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v214 = sub_10002849C(&unk_10098D830);
    v216 = sub_1000364CC();
    v123 = v198;
    v124 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    LODWORD(v213) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v125 = v118;
    v126 = v228;
    v127 = *(v228 + 104);
    v211 = (v228 + 104);
    v212 = v127;
    v128 = v199;
    v129 = v224;
    v127(v199);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v130 = *(v126 + 8);
    v228 = v126 + 8;
    v210 = v130;
    v130(v128, v129);
    v131 = *(v119 + 8);
    v227 = v119 + 8;
    v209 = v131;
    v132 = v124;
    v131(v123, v124);
    v133 = v115[1];
    v229 = v115 + 1;
    v208 = v133;
    v133(v117, v125);
    sub_100036530(&v237);
    sub_100007000(v240);
    sub_100007000(v243);
    v134 = v253;
    v135 = v254;
    v136 = sub_10002A400(v252, v253);
    v244 = v134;
    v245 = v135[1];
    v137 = sub_1000056E0(v243);
    (*(*(v134 - 8) + 16))(v137, v136, v134);
    CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    v138 = v125;
    (v195)(v117, v186, v125);
    v139 = swift_allocObject();
    *(v139 + 16) = v217;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v234 = v139;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v140 = v224;
    v212(v128, v213, v224);
    v141 = v185;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v210(v128, v140);
    v209(v123, v132);
    v142 = v117;
    v143 = v117;
    v144 = v138;
    v208(v142, v138);
    sub_100036530(&v237);
    sub_100007000(v240);
    sub_100007000(v243);
    v176[0] = 2 * v141;
    v145 = v250;
    v146 = v251;
    v147 = sub_10002A400(v249, v250);
    v244 = v145;
    v245 = v146[1];
    v148 = sub_1000056E0(v243);
    (*(*(v145 - 8) + 16))(v148, v147, v145);
    CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    (v195)(v143, v186, v144);
    v149 = swift_allocObject();
    *(v149 + 16) = v217;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v234 = v149;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v150 = v224;
    v212(v128, v213, v224);
    v151 = v176[0];
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v210(v128, v150);
    v209(v123, v132);
    v152 = v223;
    v208(v143, v223);
    sub_100036530(&v237);
    sub_100007000(v240);
    sub_100007000(v243);
    v186 = (v151 + v185);
    CondensedSearchInAppPurchaseCardLayout.Metrics.offerButtonTopMargin.getter();
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v241 = &type metadata for CGFloat;
    v242 = &protocol witness table for CGFloat;
    v240[0] = v153;
    (v195)(v143, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v152);
    v154 = swift_allocObject();
    *(v154 + 16) = v217;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v237 = v154;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v155 = v224;
    v212(v128, v213, v224);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v210(v128, v155);
    v209(v123, v132);
    v208(v143, v152);
    sub_100007000(v243);
    sub_100036530(v240);
    v156 = v187;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v157 = swift_allocObject();
    *(v157 + 16) = v221;
    v158 = v177;
    *(v157 + 32) = v177;
    v159 = v158;
    v160 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v161 = swift_allocObject();
    *(v161 + 16) = v221;
    *(v161 + 32) = v159;
    v162 = v159;
    v163 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v164 = swift_allocObject();
    *(v164 + 16) = v221;
    *(v164 + 32) = v162;
    v229 = v162;
    v165 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    CondensedSearchInAppPurchaseCardLayout.Metrics.artworkTrailingMargin.getter();
    sub_10002A400(v243, v244);
    AnyDimension.value(with:)();
    sub_100007000(v243);
    type metadata accessor for InAppPurchaseView();
    LayoutView.withLayoutMargins(_:)();
    v166 = v200;
    v241 = v200;
    v242 = &protocol witness table for VerticalFlowLayout;
    v167 = sub_1000056E0(v240);
    v168 = v205;
    (*(v205 + 16))(v167, v156, v166);
    sub_10002C0AC(v243, &v237);
    v236 = &protocol witness table for Double;
    *(&v235 + 1) = &type metadata for Double;
    *&v234 = 0;
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v169 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v170 = *(v189 + 104);
    v171 = v191;
    v170(v188, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v191);
    v230[3] = type metadata accessor for ZeroDimension();
    v230[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v230);
    static ZeroDimension.zero.getter();
    v170(v190, v169, v171);
    v172 = v192;
    FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();

    sub_100007000(v243);
    (*(v168 + 8))(v156, v166);
    (*(v201 + 8))(v194, v202);
    sub_100007000(v246);
    sub_100007000(v249);
    sub_100007000(v252);

    v173 = v203;
    v174 = v182;
    dispatch thunk of Layout.placeChildren(relativeTo:in:)();
    (*(v204 + 8))(v173, v206);
    (*(v193 + 8))(v172, v174);
  }
}

uint64_t type metadata accessor for CondensedInAppPurchaseContentView()
{
  result = qword_10098F778;
  if (!qword_10098F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.prepareForReuse()()
{
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView);

  [v1 setHidden:1];
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedInAppPurchaseContentView();
  v26.receiver = v1;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v9 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v9 = 0;
  }

  v10 = &selRef_setRequiresColorStatistics_;
  v11 = [v2 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = &StringUserDefaultsDebugSetting;
  if (!v9)
  {

LABEL_12:
    sub_100621080();
    [v2 v13[41].base_meths];
    goto LABEL_13;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    v13 = &StringUserDefaultsDebugSetting;
    v10 = &selRef_setRequiresColorStatistics_;
    if (isa)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 2;
    goto LABEL_17;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v13 = &StringUserDefaultsDebugSetting;
  v10 = &selRef_setRequiresColorStatistics_;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!isa)
  {
    goto LABEL_16;
  }

LABEL_14:
  v20 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
LABEL_17:
  v21 = [v2 v10[35]];
  v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v20 == 2 || ((v22 ^ v20) & 1) != 0)
  {
    v23 = *&v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics], v4);
    v24 = [v2 v10[35]];
    v25 = CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v24);

    (*(v5 + 8))(v7, v4);
    [v23 setNumberOfLines:v25];
    [v2 v13[41].base_meths];
  }
}

id sub_100621080()
{
  v1 = v0;
  v39 = type metadata accessor for FontUseCase();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
  v9 = sub_100005744(0, &qword_1009730E0);
  v38 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics;
  v10 = *(v5 + 16);
  v41 = v9;
  v42 = v5 + 16;
  v36 = v4;
  v10(v7, &v0[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics], v4);
  v11 = v10;
  v34 = v10;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerFont.getter();
  v37 = *(v5 + 8);
  v35 = v5 + 8;
  v37(v7, v4);
  v12 = [v0 traitCollection];
  v13 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v14 = *(v43 + 8);
  v43 += 8;
  v40 = v14;
  v15 = v39;
  v14(v3, v39);
  [v8 setFont:v13];

  [v8 setLineBreakMode:4];
  v16 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];
  v17 = v38;
  v18 = v36;
  v11(v7, &v1[v38], v36);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleFont.getter();
  v19 = v18;
  v20 = v37;
  v37(v7, v19);
  v21 = [v1 traitCollection];
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v40(v3, v15);
  [v16 setFont:v22];

  [v16 setLineBreakMode:4];
  v33 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
  v23 = &v1[v17];
  v24 = v36;
  v25 = v34;
  v34(v7, v23, v36);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleFont.getter();
  v20(v7, v24);
  v26 = [v1 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v40(v3, v39);
  v28 = v33;
  [v33 setFont:v27];

  v25(v7, &v1[v38], v24);
  v29 = [v1 traitCollection];
  v30 = CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v29);

  v37(v7, v24);
  [v28 setNumberOfLines:v30];
  return [v28 setLineBreakMode:4];
}

id CondensedInAppPurchaseContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedInAppPurchaseContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006215DC()
{
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1006219DC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v2)
  {
    InAppPurchaseSearchResult.lockup.getter();
    v1 = sub_1001BD3AC();

    ArtworkLoader.prefetchArtwork(using:)(v1);
  }

  return result;
}

uint64_t sub_1006216B4(uint64_t a1)
{
  *(a1 + 24) = sub_1006219DC(&qword_10098F738, type metadata accessor for CondensedInAppPurchaseContentView);
  result = sub_1006219DC(&qword_10098F740, type metadata accessor for CondensedInAppPurchaseContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100621788()
{
  result = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
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

void sub_10062183C()
{
  v1 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v0 + v4) = DynamicTypeLabel.__allocating_init(frame:)();
  v5 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel;
  *(v0 + v5) = DynamicTypeLabel.__allocating_init(frame:)();
  v6 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel;
  *(v0 + v6) = DynamicTypeLabel.__allocating_init(frame:)();
  v7 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton;
  v8 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v0 + v7) = sub_1000F5284(0);
  v9 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *(v0 + v9) = sub_1002EB7C0(v3, 1);
  static CondensedSearchInAppPurchaseCardLayout.Metrics.baseMetrics.getter();
  *(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_tileOffset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006219DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100621A24(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v63 = a3;
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  Shelf.contentType.getter();
  v20 = sub_1005D8420();
  if (!v20)
  {
LABEL_67:
    (*(v8 + 8))(v19, v7);
    return;
  }

  v57 = v13;
  v58 = v10;
  v60 = v21;
  v61 = v20;
  type metadata accessor for GenericPagePresenter();
  sub_100623E08(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
  if (dispatch thunk of ShelfPresenter.doesShelfExist(for:)())
  {
    v62 = v8;
    if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a2 || (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) != 0)
    {
      v56 = 0;
    }

    else
    {
      v22 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
      if (sub_100647D24(a2))
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v56 = v23;
    }

    v8 = v62;
  }

  else
  {
    v56 = 0;
  }

  v62 = a1;
  v24 = Shelf.isHorizontal.getter();
  v25 = *(v8 + 16);
  v25(v16, v19, v7);
  v59 = *(v8 + 88);
  v26 = v59(v16, v7);
  if (v26 == enum case for Shelf.ContentType.smallLockup(_:) || v26 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v49 = v26 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v26 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v49 || v26 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_19;
  }

  if (v26 == enum case for Shelf.ContentType.editorialCard(_:) || v26 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_17;
  }

  v28 = 1;
  if (v26 == enum case for Shelf.ContentType.brick(_:) || v26 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.reviews(_:) || v26 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v26 == enum case for Shelf.ContentType.framedVideo(_:) || v26 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v26 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v26 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v26 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v26 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v26 == enum case for Shelf.ContentType.posterLockup(_:) || v26 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_17:
    v28 = v24;
    goto LABEL_20;
  }

  if (v26 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v28 = v24;
    if (v26 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v8 + 8))(v16, v7);
      v28 = 0;
    }
  }

LABEL_20:
  v29 = *&v4[qword_1009728F0];
  v30 = v63;
  [v63 bounds];
  [v30 safeAreaInsets];
  CGSize.subtracting(insets:)();
  v32 = v31.n128_f64[0];
  v34 = v33;
  if ((v28 & 1) != 0 || (v63 = v25, (v35 = sub_1005D8420()) == 0) || (v37 = v35, v38 = v36, [v4 pageMarginInsets], v40 = (*(v38 + 32))(0, v4, v37, v38, v39), v32 = v32 - (v40 + v41), v42 = objc_msgSend(v4, "traitCollection"), v43 = *v29, v55[0] = *(*v29 + 696), v55[1] = v43 + 696, LOBYTE(v37) = (v55[0])(v19, v42), v42, (v37 & 1) == 0))
  {
LABEL_64:
    v31.n128_u64[0] = 0;
    if (v32 > 0.0)
    {
      v31.n128_f64[0] = v32;
    }

    (*(v60 + 24))(v62, v28 & 1, v4, *&v4[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_artworkLoader], v31, v34);
    goto LABEL_67;
  }

  v44 = v57;
  v63(v57, v19, v7);
  v45 = v59(v44, v7);
  v46 = 0;
  if (v45 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v45 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v57, v7);
    v47 = [v4 traitCollection];
    v48 = (v55[0])(v19, v47);

    if (v48)
    {
      v46 = sub_1006235A8(v56, v4, v19);
    }

    else
    {
      v46 = 1;
    }
  }

  v51 = v58;
  v63(v58, v19, v7);
  v52 = v59(v51, v7);
  if (v52 == enum case for Shelf.ContentType.annotation(_:) || v52 == enum case for Shelf.ContentType.productCapability(_:) || v52 == enum case for Shelf.ContentType.productPageLink(_:) || v52 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 + (v46 - 1) * -30.0;
      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
    v53 = (*(v8 + 8))(v58, v7);
    v31.n128_f64[0] = j_j___s8AppStore20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v53);
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 - v31.n128_f64[0] * (v46 - 1);
LABEL_63:
      v32 = v54 / v46;
      goto LABEL_64;
    }
  }

  __break(1u);
}

void sub_100622230()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100972A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = *&v0[qword_1009728F0];
  type metadata accessor for GenericPagePresenter();
  sub_100623E08(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
  dispatch thunk of ShelfPresenter.sectionCount.getter();
  TransientStateStore.removeAllState()();
  if (*(v5 + 112))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  v6 = &StringUserDefaultsDebugSetting;
  v7 = [v0 collectionView];
  [v7 reloadData];

  sub_100623E08(&qword_100983820, &type metadata accessor for GenericPagePresenter);
  if (dispatch thunk of MetricsPagePresenter.pendingPageRender.getter())
  {
    PendingPageRender.isLayoutPending.setter();
  }

  v8 = [v1 collectionView];
  v9 = &StringUserDefaultsDebugSetting;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 collectionViewLayout];

    if (v11)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = (v13 + OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v16 = *(v13 + OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        *v15 = sub_100623E50;
        v15[1] = v14;

        v9 = &StringUserDefaultsDebugSetting;
        sub_10001F63C(v16);

        v6 = &StringUserDefaultsDebugSetting;
      }

      else
      {
      }
    }
  }

  v17 = [v1 v6[50].weak_ivar_lyt];
  if (v17 && (v18 = v17, v19 = [v17 v9[51].weak_ivar_lyt], v18, v19))
  {
    type metadata accessor for BaseCollectionCompositionalLayout();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for IndexSet();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_100055BB8(v4);

  sub_10002B894(v4, &unk_100972A20);
  v22 = dispatch thunk of MetricsPagePresenter.pageRenderMetrics.getter();
  v23 = [objc_opt_self() sharedApplication];
  v24 = [v23 launchedToTest];

  if (v24)
  {
    if (v22)
    {
      v25 = objc_opt_self();

      v26 = [v25 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v27 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v26 addObserver:v1 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v27 object:v22];
    }

    else
    {
      sub_100094120();
      v28 = swift_allocError();
      sub_10021CA80(v28);
    }
  }

  else
  {
  }
}

void sub_100622690(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        type metadata accessor for GenericPagePresenter();
        sub_100623E08(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
        v11 = dispatch thunk of ShelfPresenter.shelf(for:)();
        sub_100621A24(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_100622848()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10039E290();
    sub_100622690(v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    type metadata accessor for GenericPagePresenter();
    sub_100623E08(&qword_100983820, &type metadata accessor for GenericPagePresenter);
    v5 = dispatch thunk of MetricsPagePresenter.pendingPageRender.getter();

    if (v5)
    {
      PendingPageRender.isLayoutPending.setter();
    }
  }

  return result;
}

void sub_10062296C(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfSections] >= 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_100623E58;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1006D1458;
      v11[3] = &unk_1008CC0B0;
      v10 = _Block_copy(v11);

      [a1 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }
  }
}

uint64_t sub_100622AC0(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100623E60;
  *(v4 + 24) = a2;
  v7[4] = sub_10006F094;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000489A8;
  v7[3] = &unk_1008CC100;
  v5 = _Block_copy(v7);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_100622C0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100622C60();
  }
}

id sub_100622C60()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_100622230();
  if (**&v0[qword_1009728F0] == &off_100990560)
  {
    sub_100647F78(v14);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  v15 = qword_10098F790;
  swift_beginAccess();
  sub_1000F4070(v14, &v0[v15]);
  result = swift_endAccess();
  if (v0[qword_10098F788] == 1)
  {
    sub_10022BA04(&v0[v15], v11);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      return sub_10002B894(v11, &unk_10097DAE0);
    }

    else
    {
      (*(v3 + 32))(v5, v11, v2);
      result = [v0 collectionView];
      if (result)
      {
        v17 = result;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v17 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        (*(v3 + 8))(v5, v2);
        (*(v3 + 56))(v8, 1, 1, v2);
        swift_beginAccess();
        sub_1000F4070(v8, &v1[v15]);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_100622F98(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10062296C(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_100623018(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v13);
  if ((*(v2 + qword_10098F788) & 1) == 0)
  {
    *(v2 + qword_10098F788) = 1;
  }

  v16 = qword_10098F790;
  swift_beginAccess();
  sub_10022BA04(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10002B894(v10, &unk_10097DAE0);
  }

  (*(v12 + 32))(v15, v10, v11);
  result = [v2 collectionView];
  if (result)
  {
    v18 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_1000F4070(v7, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006232C0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100623018(a3);
}

double sub_100623314(void *a1)
{
  v1 = a1;
  sub_100048DF0();
  v3 = v2;

  return v3;
}

uint64_t type metadata accessor for PrivacyDetailViewController()
{
  result = qword_10098F7C0;
  if (!qword_10098F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100623424()
{
  sub_10022B99C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1006235A8(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
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

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void sub_100623AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AutomationSemantics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10098F788) = 0;
  v10 = qword_10098F790;
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  type metadata accessor for PrivacyDetailDataSource();
  swift_allocObject();
  v12 = swift_retain_n();
  v13 = sub_1003C940C(v12);

  v14 = sub_1003B71B8(a1, v13, a2);
  sub_100623E08(&qword_10098FDB8, type metadata accessor for PrivacyDetailViewController);
  v15 = v14;

  v16 = v15;
  dispatch thunk of BaseGenericPagePresenter.view.setter();
  v16[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
  v17 = *&v16[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber];
  v18 = [v16 navigationItem];
  v19 = v18;
  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 3;
  }

  [v18 setLargeTitleDisplayMode:v20];

  v21 = v16;
  dispatch thunk of BaseGenericPagePresenter.pageTitle.getter();
  v23 = v22;

  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v21 setTitle:v24];

  v25 = [v21 view];
  if (v25)
  {
    memset(v26, 0, sizeof(v26));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v26, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100623E08(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100623F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTableLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100623FBC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 tabBarController];
    if (!v3)
    {
LABEL_10:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v8 = v11;
        v12 = a1;
      }

      else
      {
        v8 = [a1 navigationController];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }
  }

  v5 = [v3 selectedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v9 = [v3 selectedViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v8 = [v9 navigationController];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = [v8 presentedViewController];
  if (v13)
  {
    type metadata accessor for PresentationContextViewController();
    v14 = swift_dynamicCastClass();
    if (!v14 || (v15 = [v14 presentedViewController], v13, (v13 = v15) != 0))
    {
      v16 = v13;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v35[0] = v16;
  v35[1] = v13;
  v35[2] = v8;
  v35[3] = a1;
  v17 = v8;
  v18 = a1;
  v34 = v16;
  result = v13;
  v20 = result;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 <= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = v21;
    while (1)
    {
      if (v23 == v24)
      {
        __break(1u);
        return result;
      }

      v25 = v35[v24];
      if (v25)
      {
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (result)
        {
          break;
        }
      }

      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    v33 = v20;
    v26 = result;
    v32 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v3;
    if ((result & 1) == 0)
    {
      result = sub_10003491C(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v29 = *(v22 + 2);
    v28 = *(v22 + 3);
    if (v29 >= v28 >> 1)
    {
      result = sub_10003491C((v28 > 1), v29 + 1, 1, v22);
      v22 = result;
    }

    v21 = v24 + 1;
    *(v22 + 2) = v29 + 1;
    v30 = &v22[2 * v29];
    *(v30 + 4) = v32;
    *(v30 + 5) = v26;
    v3 = v27;
    v20 = v33;
  }

  while (v24 != 3);
LABEL_34:
  sub_10002849C(&qword_100979948);
  swift_arrayDestroy();
  if (*(v22 + 2))
  {
    v31 = *(v22 + 4);

    v8 = *&v31[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController];
  }

  else
  {

    if (v13)
    {

      return v13;
    }
  }

  return v8;
}

unint64_t sub_100624370(void *a1)
{
  v1 = sub_100623FBC(a1);
  if (!v1)
  {
LABEL_12:

    return a1;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 8 * result + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

id sub_100624488(uint64_t a1, int a2, char a3, char a4)
{
  v5 = v4;
  v48 = a2;
  v9 = sub_10002849C(&qword_1009918B0);
  __chkstk_darwin(v9 - 8);
  v50 = &v47 - v10;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = *&v5[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel];
  v49 = a1;
  if (a3)
  {
    ReviewSummary.attributedBodyWithTitle.getter();
    if (a4)
    {
      v19 = [v5 traitCollection];
      v20 = UITraitCollection.isSizeClassRegular.getter();

      goto LABEL_7;
    }
  }

  else
  {
    ReviewSummary.attributedBodyWithoutTitle.getter();
    v21 = [v5 traitCollection];
    v22 = sub_1006A1914(v14, 0, v21);

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
    *(v25 + 16) = sub_10010279C;
    *(v25 + 24) = v17;
    v55 = sub_1001027AC;
    v56 = v25;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1006606C4;
    v54 = &unk_1008CC178;
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
  v29 = sub_1006A1914(v17, v20 & 1, v28);

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
  *(v33 + 16) = sub_100126854;
  *(v33 + 24) = v32;
  v55 = sub_100126848;
  v56 = v33;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_1006606C4;
  v54 = &unk_1008CC1F0;
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
  sub_10059FCD8(v11);
  v37 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v38 = *(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  v39 = v48;
  *(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = v48 & 1;
  if (v39)
  {
    v40 = *(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  }

  else
  {
    v40 = 0;
  }

  [*(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v40];
  if (v38 != *(v18 + v37))
  {
    sub_1005A0320();
  }

  v41 = ReviewSummary.subtitle.getter();
  v42 = &v5[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle];
  *v42 = v41;
  v42[1] = v43;

  sub_1006A0EE4();
  *&v5[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork] = ReviewSummary.subtitleArtwork.getter();

  sub_1006A0EE4();

  v44 = v50;
  ReviewSummary.subtitleArtworkAlignment.getter();
  v45 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100624B74(v44, &v5[v46]);
  swift_endAccess();
  sub_1006A0EE4();
  sub_100624BE4(v44);
  return [v5 setNeedsLayout];
}

uint64_t sub_100624B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009918B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100624BE4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009918B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double *sub_100624C54(uint64_t a1, int *a2)
{
  v60 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v60);
  v61 = &v53 - v5;
  v6 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  __chkstk_darwin(v16);
  v63 = &v53 - v17;
  v18 = type metadata accessor for Shelf.ContentType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_10002849C(&unk_1009731F0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v55 = v2;
  v64 = sub_10026CF10(a1, a2);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = *(v25 + 8);
  v28(v27, v24);
  v29 = v19;
  v30 = (*(v19 + 88))(v23, v18);
  if (v30 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v32 = v57;
    v31 = v58;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v32, &unk_10098FFB0);
    v33 = v59;
    sub_100094E74(v31, v59);
    v34 = (*(v25 + 48))(v33, 1, v24);
    v58 = a1;
    if (v34 == 1)
    {
      sub_10002B894(v33, &unk_10098FFB0);
      v35 = 1;
      v36 = v29;
      v37 = v63;
    }

    else
    {
      swift_getKeyPath();
      v37 = v63;
      ReadOnlyLens.subscript.getter();

      v28(v33, v24);
      v35 = 0;
      v36 = v29;
    }

    v38 = v62;
    v39 = *(v36 + 56);
    v39(v37, v35, 1, v18);
    (*(v36 + 104))(v38, enum case for Shelf.ContentType.reviewSummary(_:), v18);
    v39(v38, 0, 1, v18);
    v40 = v61;
    v41 = *(v60 + 48);
    sub_100094EE4(v37, v61);
    sub_100094EE4(v38, v40 + v41);
    v42 = *(v36 + 48);
    if (v42(v40, 1, v18) == 1)
    {
      sub_10002B894(v38, &unk_100992460);
      sub_10002B894(v37, &unk_100992460);
      if (v42(v40 + v41, 1, v18) == 1)
      {
        sub_10002B894(v40, &unk_100992460);
LABEL_17:
        v43 = 28.0;
        v44 = 12.0;
        v45 = v58;
        v46 = 5;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v47 = v56;
    sub_100094EE4(v40, v56);
    if (v42(v40 + v41, 1, v18) == 1)
    {
      sub_10002B894(v62, &unk_100992460);
      sub_10002B894(v63, &unk_100992460);
      (*(v36 + 8))(v47, v18);
LABEL_14:
      sub_10002B894(v40, &qword_100975F10);
      return v64;
    }

    v48 = v40 + v41;
    v49 = v54;
    (*(v36 + 32))(v54, v48, v18);
    sub_1001D74CC();
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v51 = *(v36 + 8);
    v51(v49, v18);
    sub_10002B894(v62, &unk_100992460);
    sub_10002B894(v63, &unk_100992460);
    v51(v47, v18);
    sub_10002B894(v40, &unk_100992460);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  else if (v30 == enum case for Shelf.ContentType.productReview(_:))
  {
    sub_1006253A0(&v64, a1);
  }

  else
  {
    if (v30 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      v43 = -24.0;
      v44 = -16.0;
      v45 = a1;
      v46 = 1;
LABEL_18:
      sub_100626450(&v64, v43, v44, v45, v46);
      return v64;
    }

    (*(v19 + 8))(v23, v18);
  }

  return v64;
}

void sub_1006253A0(void *a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = ReviewsDiffablePagePresenter.selectedSortOption.getter();

    if (v5)
    {
      v6 = ReviewsPage.SortOption.selectedActionTitle.getter();
      Strong = v7;
    }

    else
    {
      v6 = 0;
      Strong = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  v8 = sub_1005B2950(a2, v6, Strong);

  static UICollectionReusableView.elementKind.getter();
  v9 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v8 elementKind:v9 alignment:1];

  v10 = *a1;
  v37 = *a1 >> 62;
  v38 = a1;
  if (v37)
  {
    goto LABEL_48;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_8;
    }

    v16 = [v14 elementKind];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {

LABEL_26:
      if (!v37)
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v39;
        if (v23)
        {
          goto LABEL_28;
        }

LABEL_45:

        *v38 = _swiftEmptyArrayStorage;
        return;
      }

      v23 = _CocoaArrayWrapper.endIndex.getter();
      v24 = v39;
      if (!v23)
      {
        goto LABEL_45;
      }

LABEL_28:
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        do
        {
          if (v13)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v10 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = [v29 elementKind];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
          {

            v27 = v24;
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v30;
            }
          }

          ++v25;
          v28 = v27;

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v23 != v25);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_50;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v12;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v39 = v39;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_50:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_22:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

double sub_1006257DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v9 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10002849C(&qword_1009751D0);
    a5[4] = sub_10022AA64(&qword_10098FFA0, &qword_1009751D0);
    sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
LABEL_6:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  v24 = v10;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v16 == a2)
  {

LABEL_11:
    a5[3] = sub_10002849C(&qword_100987A70);
    a5[4] = sub_10022AA64(&unk_10098FF90, &qword_100987A70);
    v23[2] = sub_1000056E0(a5);

    v23[1] = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v24;
    (*(v24 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
    v20 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v19 + 32))(v21 + v20, v12, v9);
    goto LABEL_6;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_11;
  }

  v22 = v25;

  return sub_100268C44(a1, a2, v22, a4, a5);
}

uint64_t sub_100625B2C(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentSeparator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_100503F40();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_100625D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_weakLoadStrong() && (v8 = ReviewsDiffablePagePresenter.selectedSortOption.getter(), , v8))
    {
      v9 = ReviewsPage.SortOption.selectedActionTitle.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v12.super.super.isa = sub_100625E54().super.super.isa;
    }

    else
    {
      v12.super.super.isa = 0;
    }

    sub_1005B1308(a6, v9, v11, v12.super.super.isa);
  }

  return result;
}

UIMenu sub_100625E54()
{
  v0 = ReviewsDiffablePagePresenter.sortActions.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_36:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v1 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          Action.title.getter();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_37;
          }
        }

        Action.id.getter();
        v8 = swift_dynamicCast();
        v9 = v25;
        if (!v8)
        {
          v9 = 0;
        }

        v23 = v9;
        if (v8)
        {
          v10 = v26;
        }

        else
        {
          v10 = 0;
        }

        if (ReviewsDiffablePagePresenter.selectedSortOption.getter())
        {
          v22 = ReviewsPage.SortOption.id.getter();
          v24 = v11;

          if (v10)
          {
            if (v24)
            {
              if (v23 == v22 && v10 == v24)
              {
              }

              else
              {
                _stringCompareWithSmolCheck(_:_:expecting:)();
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_30;
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else if (v10)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_100005744(0, &qword_10097CD40);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v6;
        v21._rawValue = 0;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v4 != v3);
    }
  }

LABEL_37:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_39;
    }

LABEL_50:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_39:
  v14 = ReviewsDiffablePagePresenter.sortMenuTitle.getter();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100005744(0, &qword_1009818C0);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_100005744(0, &qword_10097AAF0);
  v19._countAndFlagsBits = v16;
  v19._object = v17;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v21);
}

uint64_t sub_100626290()
{

  sub_10001F64C(v0 + 24);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1006262FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100625D4C(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100626398(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4[3] = sub_100005744(0, &qword_10097CD40);
    v4[0] = a1;
    v3 = a1;
    ReviewsDiffablePagePresenter.perform(action:sender:)();

    return sub_10002B894(v4, &unk_1009711D0);
  }

  return result;
}

uint64_t sub_100626450(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&qword_100979010);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v31 = a3;
  v32 = a2;
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension:1.0];
  v16 = ShelfLayoutContext.traitCollection.getter();
  static ComponentSeparator.thickness(compatibleWith:)();
  v18 = v17;

  v19 = [v14 absoluteDimension:v18];
  v20 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v19];

  type metadata accessor for SeparatorSupplementaryView();
  static UICollectionReusableView.elementKind.getter();
  ShelfLayoutContext.traitEnvironment.getter();
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = v28;
  (*(v8 + 8))(v10, v7);
  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v24 alignment:v29 absoluteOffset:{0.0, v22}];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return (*(v11 + 8))(v13, v30);
}

void sub_100626788(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10062B4C8(&qword_100973190, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

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
    [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void sub_100626914()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;
  }
}

id sub_1006269C4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  v4 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
  v5 = [v4 text];
  if (v5)
  {

    [v4 setText:0];
    [v1 setNeedsLayout];
  }

  sub_100626BD8(0, 0);
  v6 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView];
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v16, v7);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
  if (v8)
  {
    [v8 setHidden:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView];
  if (v9)
  {
    [v9 setHidden:1];
  }

  v10 = &v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  v11 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_10001F63C(v11);
  sub_10062B374();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:v6];
    [v1 setNeedsLayout];
  }

  sub_10062735C(0);
  v15[0] = 0x3FF0000000000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 0x3FF0000000000000;
  v15[4] = 0;
  v15[5] = 0;
  [v1 setTransform:v15];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

void sub_100626BD8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v49 = v13;
  v16 = v6;
  v17 = a1;
  v18 = v15;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (!a2)
  {

    v6 = v16;
    v13 = v49;
    v24 = *&v2[v49];
    if (v24)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v16;
    v13 = v49;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_11:
    v24 = *&v2[v13];
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    v25 = v2;
    if (qword_10096E3B0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for FontUseCase();
    v27 = sub_1000056A8(v26, qword_1009D1A90);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v12, v27, v26);
    (*(v28 + 56))(v12, 0, 1, v26);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v29 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v30 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v2 = v25;
    v31 = *&v25[v13];
    *&v25[v13] = v30;

    v32 = *&v25[v13];
    if (v32)
    {
      sub_100005744(0, &qword_100970180);
      v33 = v32;
      v2 = v25;
      v34 = static UIColor.secondaryText.getter();
      [v33 setTextColor:v34];
    }

    v35 = [v2 traitCollection];
    v36 = [v35 preferredContentSizeCategory];
    v37 = static UIContentSizeCategory.>= infix(_:_:)();

    v38 = *&v2[v13];
    if (v37)
    {
      if (v38)
      {
        [v38 setNumberOfLines:0];
        v39 = *&v2[v13];
        if (v39)
        {
          v40 = [v39 layer];
          [v40 setCompositingFilter:0];

          if (*&v2[v13])
          {
            v41 = &OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else if (v38)
    {
      [v38 setNumberOfLines:2];
      v42 = *&v2[v13];
      if (v42)
      {
        v43 = [v42 layer];
        v41 = &OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView;
        v44 = [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] traitCollection];
        [v44 userInterfaceStyle];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = String._bridgeToObjectiveC()();

        [v43 setCompositingFilter:v45];

        if (*&v2[v13])
        {
LABEL_30:
          [*&v2[*v41] addSubview:?];
          v24 = *&v2[v13];
          if (!v24)
          {

LABEL_35:
            [v2 setNeedsLayout];
            return;
          }

LABEL_31:
          v46 = v24;
          if (a2)
          {
            v47 = String._bridgeToObjectiveC()();
          }

          else
          {
            v47 = 0;
          }

          [v46 setText:v47];

          goto LABEL_35;
        }
      }
    }

    __break(1u);
    return;
  }

LABEL_24:
}

id sub_10062715C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  [v1 setHidden:v3 == 2];
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  LOBYTE(v3) = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] overrideUserInterfaceStyle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();

    v7 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
    if (v7)
    {
      v8 = [v7 layer];
      [v8 setCompositingFilter:v6];
    }

    v9 = [*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel] layer];
    [v9 setCompositingFilter:v6];
  }

  if (v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView];

  return [v13 setHidden:v12];
}

void sub_10062735C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

uint64_t sub_1006273F0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3028);
  sub_1000056A8(v0, qword_1009D3028);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100627554(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v46 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0860);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = type metadata accessor for StaticDimension();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v6, qword_1009D0878);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v54);
  v44(v17, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v54);
  v21 = v44;
  v44(v20, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v54);
  v21(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v54);
  v21(v28, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_1000056A8(v45, qword_1009D08A8);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v54);
  v21(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v29, qword_1009D0890);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v54);
  v37 = v44;
  v44(v36, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v54);
  v37(v39, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_100627DA8()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3040);
  sub_1000056A8(v0, qword_1009D3040);
  if (qword_10096EB88 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3028);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100627F0C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for AspectRatio();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_100005644(v6, qword_1009D3058);
  v28 = v6;
  v31 = sub_1000056A8(v6, qword_1009D3058);
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  *&v55 = 0x4030000000000000;
  v29 = v5;
  AspectRatio.init(_:_:)();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  *&v52 = 0x4024000000000000;
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D1A60);
  v38 = *(*(v7 - 8) + 16);
  v38(v3, v8, v7);
  v9 = enum case for FontSource.useCase(_:);
  v35 = v1[13];
  v35(v3, enum case for FontSource.useCase(_:), v0);
  v34 = type metadata accessor for StaticDimension();
  v50 = v34;
  v51 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(&v46);
  v11 = v1[2];
  v37 = v1 + 2;
  v33 = v11;
  v11(v10, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v36 = v13;
  v13(v3, v0);
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v7, qword_1009D1A78);
  v38(v3, v14, v7);
  v35(v3, v9, v0);
  v47 = v34;
  v48 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v46);
  v44 = v0;
  v45 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v43);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  v27 = v12;
  if (qword_10096E3B0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v7, qword_1009D1A90);
  v38(v3, v26, v7);
  v25 = v9;
  v16 = v35;
  v35(v3, v9, v0);
  v17 = v34;
  v44 = v34;
  v45 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v43);
  v41 = v0;
  v42 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v40);
  v19 = v33;
  v33(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  v38(v3, v26, v7);
  v16(v3, v25, v0);
  v41 = v17;
  v42 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v40);
  v39[3] = v0;
  v39[4] = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v39);
  v19(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  v21 = v31;
  sub_100005A38(&v55, v31);
  v22 = v28;
  (*(v30 + 32))(v21 + v28[5], v29, v32);
  sub_100005A38(&v52, v21 + v22[6]);
  sub_100005A38(&v49, v21 + v22[7]);
  sub_100005A38(&v46, v21 + v22[8]);
  sub_100005A38(&v43, v21 + v22[9]);
  return sub_100005A38(&v40, v21 + v22[10]);
}

UIColor sub_100628504()
{
  sub_100005744(0, &qword_100970180);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 whiteColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_1009D3070 = result.super.isa;
  return result;
}

id sub_100628598()
{
  v1 = v0;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Separator.Position();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Separator();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = static UIContentSizeCategory.>= infix(_:_:)();

  v16 = OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView];
  if (v15)
  {
    v73 = v5;
    v74 = v12;
    v75 = v9;
    v76 = v8;
    if (v17)
    {
      [v17 setHidden:1];
    }

    v18 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
    [v18 setNumberOfLines:{0, v73}];
    v19 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView];
    [v19 addSubview:v18];
    v20 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
    [v20 setNumberOfLines:0];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    [v19 addSubview:v20];
    v22 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
    if (v22)
    {
      v23 = v22;
      [v23 setNumberOfLines:0];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      [v19 addSubview:v23];
    }

    v25 = OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView;
    v26 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView];
    if (v26 || (((*(v73 + 104))(v7, enum case for Separator.Position.top(_:), v4), v80[3] = type metadata accessor for ZeroDimension(), v80[4] = &protocol witness table for ZeroDimension, sub_1000056E0(v80), static ZeroDimension.zero.getter(), v27 = v74, Separator.init(position:leadingInset:trailingInset:verticalOutset:)(), v28 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v29 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator, swift_beginAccess(), v30 = *(v75 + 40), v31 = v28, v30(&v28[v29], v27, v76), swift_endAccess(), v31, (v32 = *&v1[v25]) == 0) ? (v33 = 0) : (objc_msgSend(v32, "removeFromSuperview"), v33 = *&v1[v25]), *&v1[v25] = v31, v54 = v31, v33, objc_msgSend(v19, "addSubview:", v54), v54, objc_msgSend(v1, "setNeedsLayout"), v54, (v26 = *&v1[v25]) != 0))
    {
      [v26 setHidden:0];
    }

    v55 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
    v56 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
    if (v56)
    {
      v57 = qword_10096EB90;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = v79;
      v60 = sub_1000056A8(v79, qword_1009D3040);
      v62 = v77;
      v61 = v78;
      (*(v78 + 16))(v77, v60, v59);
      v63 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v61 + 24))(&v58[v63], v62, v59);
      swift_endAccess();
      [v58 setNeedsLayout];

      (*(v61 + 8))(v62, v59);
      v64 = *&v1[v55];
      if (v64)
      {
        [v64 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
      }
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_10;
    }

    v50 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
    v51 = sub_100251D00(0);
    v52 = *&v1[v16];
    if (v52)
    {
      [v52 removeFromSuperview];
      v53 = *&v1[v16];
    }

    else
    {
      v53 = 0;
    }

    *&v1[v16] = v51;
    v66 = v51;

    v67 = *&v1[v16];
    if (v67)
    {
      v68 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
      v69 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
      if (v69)
      {
        v70 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
      }

      else
      {
        v70 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
        v69 = 0;
      }

      v71 = v69;
      [v68 insertSubview:v67 belowSubview:v70];
    }

    [v1 setNeedsLayout];

    v72 = *&v1[v16];
    if (v72)
    {
      [v72 setUserInteractionEnabled:0];
      v17 = *&v1[v16];
      if (v17)
      {
LABEL_10:
        [v17 setHidden:0];
      }
    }

    v34 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
    [v34 setNumberOfLines:1];
    v35 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    [v35 addSubview:v34];
    v36 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
    [v36 setNumberOfLines:1];
    [v35 addSubview:v36];
    v37 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
    if (v37)
    {
      v38 = v37;
      [v38 setNumberOfLines:2];
      [v35 addSubview:v38];
    }

    v39 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView];
    if (v39)
    {
      [v39 setHidden:1];
    }

    v40 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
    v41 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
    if (v41)
    {
      v42 = qword_10096EB88;
      v43 = v41;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = v79;
      v45 = sub_1000056A8(v79, qword_1009D3028);
      v47 = v77;
      v46 = v78;
      (*(v78 + 16))(v77, v45, v44);
      v48 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v46 + 24))(&v43[v48], v47, v44);
      swift_endAccess();
      [v43 setNeedsLayout];

      (*(v46 + 8))(v47, v44);
      v49 = *&v1[v40];
      if (v49)
      {
        [v49 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
      }
    }

    sub_10062715C();
  }

  return [v1 setNeedsLayout];
}

id sub_100628E24(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return sub_100628598();
    }
  }

  return result;
}

id sub_100628F40(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    sub_10062715C();

    return [a1 setNeedsLayout];
  }

  return result;
}

id sub_100629040()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v5 = *(v3 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v5)
    {
      [v5 invalidate];
      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_100629278()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView];
  if (v1)
  {
    v2 = qword_10096EBA0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_1009D3070];
    [*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView] addSubview:v3];
    v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
    v5 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer] = v4;

    result = *&v0[v5];
    if (!result || ([result setDelegate:v0], (result = *&v0[v5]) == 0) || (result = objc_msgSend(result, "addTarget:action:", v0, "handleTapWithGestureRecognizer:"), !*&v0[v5]))
    {
      __break(1u);
      return result;
    }

    [v3 addGestureRecognizer:?];
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView];
      if (v11)
      {
        v12 = v11;
        [v12 setHidden:0];
      }
    }
  }

  return [v0 setNeedsLayout];
}

id sub_100629440()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for SmallLockupLayout.Metrics();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v14)
    {
      if (qword_10096EB90 != -1)
      {
        swift_once();
      }

      v15 = sub_1000056A8(v5, qword_1009D3040);
      (*(v6 + 16))(v9, v15, v5);
      v16 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v16], v9, v5);
      swift_endAccess();
      v17 = 16.0;
    }

    else
    {
      if (qword_10096EB88 != -1)
      {
        swift_once();
      }

      v18 = sub_1000056A8(v5, qword_1009D3028);
      (*(v6 + 16))(v9, v18, v5);
      v19 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v19], v9, v5);
      swift_endAccess();
      v17 = 4.0;
    }

    v20 = v11;
    [v20 setNeedsLayout];
    (*(v6 + 8))(v9, v5);
    [v20 setLayoutMargins:{v17, 0.0, v17, 0.0}];

    v21 = *&v20[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
    v22 = qword_10096DDA0;
    v23 = v20;
    v24 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for FontUseCase();
    v26 = sub_1000056A8(v25, qword_1009D0878);
    v27 = *(v25 - 8);
    v28 = *(v27 + 16);
    v28(v4, v26, v25);
    v29 = *(v27 + 56);
    v29(v4, 0, 1, v25);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v30 = *&v23[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    if (qword_10096DDA8 != -1)
    {
      swift_once();
    }

    v31 = sub_1000056A8(v25, qword_1009D0890);
    v28(v4, v31, v25);
    v29(v4, 0, 1, v25);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v32 = qword_10096EBA0;
    v33 = v23;
    if (v32 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_1009D3070];

    v34 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView];
    if (v34)
    {
      v35 = v34;
      [v35 addSubview:v33];
    }
  }

  return [v1 setNeedsLayout];
}

void (*sub_10062997C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore16AppEventCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1006299D0;
}

void sub_1006299D0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_100629AE8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100629FBC(v10);
  AppEventCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_100250FB4(v26);
      v42 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_1001A9220(v10);
  }

  else
  {
    sub_1001A9220(v10);
  }
}

id sub_100629FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EB98 != -1)
  {
    v59 = v4;
    swift_once();
    v4 = v59;
  }

  v7 = sub_1000056A8(v4, qword_1009D3058);
  v76 = v6;
  sub_100150A20(v7, v6);
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView);
  v103 = type metadata accessor for ShadowView();
  v104 = &protocol witness table for UIView;
  v82 = v8;
  *&v102 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView);
  v100 = type metadata accessor for RoundedCornerView();
  v101 = &protocol witness table for UIView;
  v98 = &protocol witness table for UIView;
  *&v99 = v9;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView);
  v97 = v100;
  v80 = v10;
  v81 = v9;
  *&v96 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  v12 = sub_100005744(0, &qword_100972EB0);
  v94 = v12;
  v95 = &protocol witness table for UIView;
  v79 = v11;
  *&v93 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView);
  v91 = type metadata accessor for ArtworkView();
  v92 = &protocol witness table for UIView;
  v78 = v13;
  *&v90 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = type metadata accessor for VideoView();
    v71 = &protocol witness table for UIView;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v77 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView);
  if (v77)
  {
    v70 = type metadata accessor for MediaOverlayGradientBlurView();
    v69 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v75 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton);
  if (v75)
  {
    v68 = type metadata accessor for NotifyMeButton();
    v67 = &protocol witness table for UIView;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel);
  v16 = type metadata accessor for DynamicTypeLabel();
  v17 = &protocol witness table for UILabel;
  v88 = v16;
  v89 = &protocol witness table for UILabel;
  v73 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel);
  v74 = v15;
  v86 = &protocol witness table for UILabel;
  *&v87 = v15;
  v85 = v16;
  *&v84 = v73;
  v18 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel);
  v19 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView);
  if (v19)
  {
    v65 = type metadata accessor for SeparatorView();
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v83 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView);
  v20 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v20)
  {
    v63 = type metadata accessor for SmallLockupView();
    v64 = &protocol witness table for UIView;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  if (v83)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v83)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v22 = 0;
  }

  v61 = v22;
  v62 = v21;
  if (!v18)
  {
    v16 = 0;
    v17 = 0;
  }

  sub_100151060(v76, a1);
  v23 = type metadata accessor for AppEventCardLayout(0);
  sub_100005A38(&v102, a1 + v23[5]);
  sub_100005A38(&v99, a1 + v23[6]);
  sub_100005A38(&v96, a1 + v23[7]);
  sub_100005A38(&v93, a1 + v23[8]);
  sub_100005A38(&v90, a1 + v23[9]);
  v24 = (a1 + v23[10]);
  *v24 = Strong;
  v24[1] = 0;
  v25 = v71;
  v26 = v72;
  v24[2] = 0;
  v24[3] = v26;
  v24[4] = v25;
  v27 = (a1 + v23[11]);
  v28 = v77;
  *v27 = v77;
  v27[1] = 0;
  v29 = v69;
  v30 = v70;
  v27[2] = 0;
  v27[3] = v30;
  v27[4] = v29;
  v31 = (a1 + v23[12]);
  v32 = v75;
  *v31 = v75;
  v31[1] = 0;
  v33 = v67;
  v34 = v68;
  v31[2] = 0;
  v31[3] = v34;
  v31[4] = v33;
  sub_100005A38(&v87, a1 + v23[13]);
  sub_100005A38(&v84, a1 + v23[14]);
  v35 = (a1 + v23[15]);
  *v35 = v18;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = v16;
  v35[4] = v17;
  v36 = (a1 + v23[16]);
  *v36 = v19;
  v36[1] = 0;
  v38 = v65;
  v37 = v66;
  v36[2] = 0;
  v36[3] = v38;
  v36[4] = v37;
  v39 = (a1 + v23[17]);
  *v39 = v83;
  v39[1] = 0;
  v40 = v61;
  v41 = v62;
  v39[2] = 0;
  v39[3] = v41;
  v39[4] = v40;
  v42 = (a1 + v23[18]);
  *v42 = v20;
  v42[1] = 0;
  v44 = v63;
  v43 = v64;
  v42[2] = 0;
  v42[3] = v44;
  v42[4] = v43;
  v45 = v20;
  v46 = v82;
  v47 = v81;
  v48 = v80;
  v49 = v79;
  v50 = v78;
  v51 = v28;
  v52 = v32;
  v53 = v74;
  v54 = v73;
  v55 = v18;
  v56 = v19;
  v57 = v83;

  return v57;
}
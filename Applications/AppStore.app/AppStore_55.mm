void sub_10062A688()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton;
  if (!*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton])
  {
    v7 = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(v12);
    sub_10003D444(v13);
    UIView.setAutomationSemantics(_:)();
    (*(v3 + 8))(v5, v2);
    [v7 addTarget:v1 action:"notifyMeButtonTapped:" forControlEvents:64];
    v8 = v7[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style];
    v7[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style] = 0;
    if (v8)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        sub_1004ABCF0();
      }
    }

    else
    {
    }

    [*&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] addSubview:v7];
    v10 = *&v1[v6];
    *&v1[v6] = v7;
    v11 = v7;

    [v1 setNeedsLayout];
  }
}

void *(*sub_10062A8CC(void *a1))(void *result, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_10062A924;
}

void *sub_10062A924(void *result, char a2)
{
  if (a2)
  {

    sub_10062735C(v2);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *result;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }
}

id sub_10062A9CC(char a1, char a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
  if (v4)
  {
    v4[OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive] = a1 & 1;
    v6 = v4;
    sub_1004ACDC0();
    sub_1004ACEC4(a2 & 1);
  }

  return [v3 setNeedsLayout];
}

void sub_10062AA4C(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    sub_10062A688();
  }

  v5 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
  if (v5)
  {
    v6 = v5;
    v17 = v6;
    if (a2)
    {
      if ((a1 & 1) == 0)
      {
        if ([v6 isHidden])
        {
          [v17 setAlpha:0.0];
          [v17 setHidden:0];
        }
      }

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v17;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v22 = sub_100039BC4;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100007A08;
      v21 = &unk_1008CC328;
      v10 = _Block_copy(&aBlock);
      v11 = v17;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v9;
      *(v13 + 32) = v12;
      v22 = sub_10062B4B8;
      v23 = v13;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100504C5C;
      v21 = &unk_1008CC3A0;
      v14 = _Block_copy(&aBlock);
      v15 = v11;

      [v7 animateWithDuration:v10 animations:v14 completion:0.3];

      _Block_release(v14);
      _Block_release(v10);
    }

    else
    {
      if (a1)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      [v6 setHidden:a1 & 1];
      [v17 setAlpha:v16];
      [v2 setNeedsLayout];
    }
  }
}

void sub_10062AD04(int a1, id a2, char a3)
{
  [a2 setHidden:a3 & 1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsLayout];
  }
}

uint64_t (*sub_10062AE9C(uint64_t **a1))()
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
  v2[4] = sub_10062997C(v2);
  return sub_1000B4CAC;
}

uint64_t (*sub_10062AF20(void *a1))()
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
  v2[4] = sub_10062A8CC(v2);
  return sub_1000C2700;
}

uint64_t sub_10062AF9C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10062B4C8(&unk_100990090, v1, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10062B010(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10062B4C8(&unk_100990090, v5, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10062B09C(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_10062B4C8(&unk_100990090, v3, type metadata accessor for AppEventCardView);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10062B158(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

id sub_10062B2CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer);
  if (v3)
  {
    [v3 removeTarget:v0 action:0];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  result = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView);
  if (result)
  {

    return [result setHidden:1];
  }

  return result;
}

void sub_10062B374()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10062B4C8(&qword_100973190, 255, type metadata accessor for VideoView);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
      sub_100005744(0, &qword_100972EB0);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_10062B4C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_10062B510()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  __chkstk_darwin(v2);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v5 - 8);
  *&v94 = &v82 - v6;
  v93 = type metadata accessor for AutomationSemantics();
  v89 = *(v93 - 1);
  __chkstk_darwin(v93);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DirectionalTextAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] = v17;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1A78);
  v20 = *(v18 - 8);
  v87 = *(v20 + 16);
  v87(v14, v19, v18);
  v86 = *(v20 + 56);
  (v86)(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v9 + 104);
  v84 = v9 + 104;
  v22(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = objc_allocWithZone(v23);
  v83 = v8;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v18, qword_1009D1A60);
  v87(v14, v25, v18);
  (v86)(v14, 0, 1, v18);
  v22(v11, v21, v83);
  v26 = objc_allocWithZone(v23);
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView] = v27;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v31 = v28;
  v32 = v30;
  v33 = v85;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34 = *(v89 + 8);
  v35 = v93;
  v34(v33, v93);
  v89 = v29;
  v36 = *&v28[v29];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v37 = v36;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  ObjCClassFromMetadata = OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView;
  v38 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v39 = v38;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  v87 = OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel;
  v40 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v41 = v40;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  v86 = OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel;
  v42 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v43 = v42;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v31 setClipsToBounds:0];
  v44 = OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView;
  v45 = qword_10096DA88;
  v46 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView];
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Shadow();
  v48 = sub_1000056A8(v47, qword_1009CFDF8);
  v49 = *(v47 - 8);
  v50 = v94;
  (*(v49 + 16))(v94, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  dispatch thunk of ShadowView.shadow.setter();

  v51 = *&v31[v44];
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  v52 = *&v31[v44];
  v53 = v91;
  v54 = v92;
  v55 = *(v92 + 104);
  v56 = v90;
  LODWORD(v94) = enum case for CornerStyle.continuous(_:);
  v93 = v55;
  v55(v90);
  v57 = v52;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v92 = *(v54 + 8);
  (v92)(v56, v53);
  v58 = *&v31[v44];
  v59 = [v31 traitCollection];
  v60 = [v59 userInterfaceStyle];

  [v58 setHidden:v60 == 2];
  [v31 addSubview:*&v31[v44]];
  v61 = v89;
  v62 = qword_10096EBA0;
  v63 = *&v28[v89];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_1009D3070;
  [v63 setBackgroundColor:qword_1009D3070];

  v65 = *&v28[v61];
  (v93)(v56, v94, v53);
  v66 = v65;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  (v92)(v56, v53);
  [v31 addSubview:*&v28[v61]];
  v67 = OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView;
  [*&v28[v61] addSubview:*&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView]];
  [*&v31[v67] addSubview:*(ObjCClassFromMetadata + v31)];
  v68 = *(v87 + v31);
  sub_100005744(0, &qword_100970180);
  v69 = v68;
  v70 = static UIColor.primaryText.getter();
  [v69 setTextColor:v70];

  v71 = *&v86[v31];
  v72 = static UIColor.secondaryText.getter();
  [v71 setTextColor:v72];

  v73 = OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView;
  v74 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView];
  v75 = v64;
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v76 = *&v31[v73];
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*&v31[v73] setUserInteractionEnabled:0];
  [*&v31[v73] setHidden:1];
  v77 = *&v31[v73];
  (v93)(v56, v94, v53);
  v78 = v77;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  (v92)(v56, v53);
  [v31 addSubview:*&v31[v73]];
  sub_100628598();
  sub_10062715C();
  sub_10002849C(&qword_10097B110);
  v79 = swift_allocObject();
  v94 = xmmword_1007B10D0;
  *(v79 + 16) = xmmword_1007B10D0;
  *(v79 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v80 = swift_allocObject();
  *(v80 + 16) = v94;
  *(v80 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v80 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v31;
}

void sub_10062C2F4()
{
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_10062C3E0(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction] != 0;
    }

    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = v2;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

char *sub_10062C520(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2;
  *&v4[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CollectionLockupArtwork();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4]];

  return v18;
}

uint64_t sub_10062C8C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount);
  switch(v2)
  {
    case 3:

      return sub_10062CC64(a1);
    case 2:

      return sub_10062C9E8(a1);
    case 1:
      type metadata accessor for ArtworkView();
      LayoutView.withMeasurements(representing:)();
      sub_10002A400(v4, v4[3]);
      Measurable.placeable.getter();
      return sub_100007000(v4);
    default:

      return sub_10062CFA8(a1);
  }
}

uint64_t sub_10062C9E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DisjointStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  DisjointStack.init(with:)();
  v12[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1);
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v13, v14);
  Measurable.placeable.getter();
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v12);
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100007000(v13);
  v12[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v13, v14);
  Measurable.placeable.getter();
  a1[3] = v3;
  a1[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(a1);
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v12);
  v10(v9, v3);
  return sub_100007000(v13);
}

uint64_t sub_10062CC64@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for DisjointStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  DisjointStack.init(with:)();
  v17[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1);
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v18, v19);
  Measurable.placeable.getter();
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v17);
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_100007000(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v18, v19);
  Measurable.placeable.getter();
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v17);
  v12(v8, v2);
  sub_100007000(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v18, v19);
  Measurable.placeable.getter();
  v13 = v16;
  v16[3] = v2;
  v13[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v13);
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v17);
  v12(v11, v2);
  return sub_100007000(v18);
}

uint64_t sub_10062CFA8@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for HorizontalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v25 = type metadata accessor for VerticalStack();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v22 - v12;
  VerticalStack.init(with:)();
  HorizontalStack.init(with:)();
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1);
  v22 = v1;
  v29[0] = v13;
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v32, v33);
  Measurable.placeable.getter();
  HorizontalStack.adding(_:with:)();
  sub_100007000(v29);
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_100007000(v32);
  v32[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v29, v30);
  Measurable.placeable.getter();
  v33 = v2;
  v34 = &protocol witness table for HorizontalStack;
  sub_1000056E0(v32);
  HorizontalStack.adding(_:with:)();
  sub_100007000(v28);
  v14(v8, v2);
  sub_100007000(v29);
  VerticalStack.adding(_:with:)();
  v15 = *(v27 + 8);
  v27 += 8;
  v23 = v15;
  v15(v10, v25);
  sub_100007000(v32);
  HorizontalStack.init(with:)();
  v16 = v22;
  v29[0] = *(v22 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v32, v33);
  Measurable.placeable.getter();
  HorizontalStack.adding(_:with:)();
  sub_100007000(v29);
  v14(v5, v2);
  sub_100007000(v32);
  v29[0] = *(v16 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v32, v33);
  Measurable.placeable.getter();
  v30 = v2;
  v31 = &protocol witness table for HorizontalStack;
  sub_1000056E0(v29);
  HorizontalStack.adding(_:with:)();
  sub_100007000(v28);
  v14(v8, v2);
  sub_100007000(v32);
  v17 = v25;
  v33 = v25;
  v34 = &protocol witness table for VerticalStack;
  sub_1000056E0(v32);
  v18 = v26;
  VerticalStack.adding(_:with:)();
  v23(v18, v17);
  sub_100007000(v29);
  static Center.Axis.neither.getter();
  v19 = type metadata accessor for Center();
  v20 = v24;
  v24[3] = v19;
  v20[4] = &protocol witness table for Center;
  sub_1000056E0(v20);
  return Center.init(_:filling:)();
}

id sub_10062D4DC(unint64_t a1, char *a2)
{
  v27 = a2;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v26 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Artwork.Crop();
  v6 = *(v25 - 8);
  *&v7 = __chkstk_darwin(v25).n128_u64[0];
  v24 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 setNeedsLayout];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v11 = 0;
      v20 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4];
      v22 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3];
      v19 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2];
      v21 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1];
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = a1 & 0xC000000000000001;
      v23 = (v6 + 8);
      while (v29)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_19;
        }

LABEL_9:
        if (v11 > 1)
        {
          v13 = v22;
          if (v11 == 2 || (v13 = v20, v11 == 3))
          {
LABEL_15:
            v14 = *v13;
            v15 = v24;
            Artwork.crop.getter();
            v16 = Artwork.Crop.preferredContentMode.getter();
            (*v23)(v15, v25);
            Artwork.config(_:mode:prefersLayeredImage:)();
            Artwork.style.getter();
            ArtworkView.style.setter();
            v17 = v14;
            [v17 setContentMode:Artwork.contentMode.getter()];
            ArtworkLoaderConfig.size.getter();
            ArtworkView.imageSize.setter();
            if (!Artwork.backgroundColor.getter())
            {
              sub_100028BB8();
              static UIColor.placeholderBackground.getter();
            }

            ArtworkView.backgroundColor.setter();
            [v17 setContentMode:v16];

            v6 = type metadata accessor for ArtworkView();
            sub_10009A098();
            v2 = v27;
            ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
          }
        }

        else
        {
          v13 = v21;
          if (!v11)
          {
            goto LABEL_15;
          }

          v13 = v19;
          if (v11 == 1)
          {
            goto LABEL_15;
          }
        }

        ++v11;
        if (v12 == v10)
        {
          return result;
        }
      }

      if (v11 >= *(v28 + 16))
      {
        goto LABEL_20;
      }

      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = _CocoaArrayWrapper.endIndex.getter();
      v10 = result;
    }

    while (result);
  }

  return result;
}

id sub_10062D844()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionLockupArtwork();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10062D908()
{
  sub_10062C8C0(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = v0;
  sub_100007000(v3);
  return v1;
}

uint64_t sub_10062D9F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DisjointStack.EdgePosition();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v12 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v13 = *(v8 + 104);
  (v13)(v11, enum case for DisjointStack.EdgePosition.anchored(_:), v7, v9);
  DisjointStack.Properties.topEdge.setter();
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v13(v11, v12, v7);
  return DisjointStack.Properties.leadingEdge.setter();
}

void sub_10062DB6C()
{
  v1 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3;
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10062DC8C(uint64_t a1)
{
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *&v1[OBJC_IVAR____TtC8AppStore21GalleryViewController_artworkLoader] = v12;
  *&v1[OBJC_IVAR____TtC8AppStore21GalleryViewController_artwork] = a1;
  v3 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v3 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v3 setMinimumInteritemSpacing:0.0];
  [v3 setMinimumLineSpacing:0.0];
  [v3 setScrollDirection:1];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for GalleryViewController();
  v4 = objc_msgSendSuper2(&v11, "initWithCollectionViewLayout:", v3);
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setContentInsetAdjustmentBehavior:2];
  }

  v7 = v4;
  v8 = [v7 navigationItem];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v7 action:"dismissFrom:"];

  [v8 setRightBarButtonItem:v9];

  return v7;
}

id sub_10062DEBC()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 barHideOnTapGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for GalleryViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_10062E074(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for GalleryViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  ArtworkLoader.isOccluded.setter();
}

void sub_10062E0FC(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for GalleryViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  ArtworkLoader.isOccluded.setter();
}

void sub_10062E16C()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 setHidesBarsOnTap:1];
  }

  v3 = [v0 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 barHideOnTapGestureRecognizer];

    [v5 addTarget:v0 action:"tapStateChangedOn:"];
  }

  v6 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v6 setDirection:8];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 addGestureRecognizer:v6];

    v9 = [v0 collectionView];
    if (v9)
    {
      if (qword_10096EBA8 != -1)
      {
        v23 = v9;
        swift_once();
        v9 = v23;
      }

      v10 = v9;
      [v9 setBackgroundColor:qword_1009900F0];
    }

    v11 = [v0 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 setAllowsSelection:0];
    }

    v13 = [v0 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setAlwaysBounceHorizontal:1];
    }

    v15 = [v0 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setShowsHorizontalScrollIndicator:0];
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      [v17 setPagingEnabled:1];
    }

    v19 = [v0 collectionView];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for ArtworkCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v22 = String._bridgeToObjectiveC()();

      [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10062E4A0(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

id sub_10062E63C(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_10062F348;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100007A08;
    v7[3] = &unk_1008CC440;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:UINavigationControllerHideShowBarDuration];
    _Block_release(v5);
    return [v6 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_10062E760(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isNavigationBarHidden];

  v5 = [a1 collectionView];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    if (qword_10096EBB0 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    v6 = &qword_1009900F8;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    if (qword_10096EBA8 != -1)
    {
      v9 = v5;
      swift_once();
      v5 = v9;
    }

    v6 = &qword_1009900F0;
  }

  v7 = v5;
  [v5 setBackgroundColor:*v6];
}

void sub_10062E910()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isNavigationBarHidden];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v10[4] = sub_10062F340;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100007A08;
      v10[3] = &unk_1008CC3F0;
      v6 = _Block_copy(v10);
      v7 = v0;

      [v4 animateWithDuration:v6 animations:UINavigationControllerHideShowBarDuration];
      _Block_release(v6);
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 setNavigationBarHidden:1 animated:1];
      }

      [v7 setNeedsStatusBarAppearanceUpdate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10062EA98(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    if (qword_10096EBB0 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 setBackgroundColor:qword_1009900F8];
  }
}

unint64_t sub_10062EBFC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ArtworkCollectionViewCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v5 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClassUnconditional();
  v9 = OBJC_IVAR____TtC8AppStore25ArtworkCollectionViewCell_artworkView;
  [*&v8[OBJC_IVAR____TtC8AppStore25ArtworkCollectionViewCell_artworkView] setContentMode:1];
  v10 = *(v2 + OBJC_IVAR____TtC8AppStore21GalleryViewController_artwork);
  result = IndexPath.item.getter();
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v7;
  [v8 frame];
  CGRectGetWidth(v24);
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  Artwork.size.getter();
  Artwork.size.getter();
  Artwork.size.getter();
  [*&v8[v9] contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  v21 = *&v8[v9];
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v21 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100028BB8();
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();

  v22 = *&v8[v9];
  type metadata accessor for ArtworkView();
  sub_10009A098();
  v23 = v22;
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

  return v8;
}

double sub_10062F358(void *a1, uint64_t a2, void *a3, double a4)
{
  v82 = a2;
  v89 = type metadata accessor for TitledParagraphLayout();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TitledParagraphLayout.Metrics();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75[0] = v75 - v10;
  __chkstk_darwin(v11);
  v84 = v75 - v12;
  v80 = type metadata accessor for LabelPlaceholderCompatibility();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitledParagraphStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v77 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v75 - v18;
  v90 = a1;
  v20 = dispatch thunk of TitledParagraph.text.getter();
  v92 = a3;
  v21 = [a3 traitCollection];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v91 = [v20 length];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100126854;
  *(v24 + 24) = v23;
  v104 = sub_100126848;
  v105 = v24;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_1006606C4;
  v103 = &unk_1008CC610;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v22;

  [v20 enumerateAttributesInRange:0 options:v91 usingBlock:{0x100000, v25}];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v91 = v27;
  TitledParagraph.style.getter();
  v28 = v77;
  v15[13](v77, enum case for TitledParagraphStyle.detail(_:), v14);
  sub_1006312CC(&qword_1009786A0, &type metadata accessor for TitledParagraphStyle);
  v29 = v19;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v97[0] && v101 == v97[1])
  {
    v76 = 1;
  }

  else
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v30 = v92;
  v31 = v15[1];
  v31(v28, v14);
  v31(v29, v14);

  TitledParagraph.primarySubtitle.getter();
  v75[2] = TitledParagraph.secondarySubtitle.getter();
  v75[1] = v32;
  v77 = v91;
  v15 = [v30 traitCollection];
  sub_1000367E8();
  if (qword_10096DE20 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  v33 = type metadata accessor for FontUseCase();
  sub_1000056A8(v33, qword_1009D09E0);
  v90 = v15;
  v34 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v35 = type metadata accessor for Feature();
  v103 = v35;
  v36 = sub_1006312CC(&qword_100972E50, &type metadata accessor for Feature);
  v104 = v36;
  v37 = sub_1000056E0(&aBlock);
  v38 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v39 = *(*(v35 - 1) + 104);
  v39(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
  v40 = v34;
  isFeatureEnabled(_:)();
  sub_100007000(&aBlock);
  v41 = v78;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42 = v79[1];
  v43 = v80;
  v42(v41, v80);
  v98 = v35;
  v99 = v36;
  v44 = sub_1000056E0(v97);
  v39(v44, v38, v35);
  v45 = v40;
  isFeatureEnabled(_:)();
  sub_100007000(v97);
  v79 = v45;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42(v41, v43);
  v46 = 0;
  v47 = v76;
  if ((v76 & 1) == 0)
  {
    v46 = static TitledParagraphLayout.isMultiColumn(compatibleWith:)();
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v46 & 1;
  v49 = v92;
  *(v48 + 24) = v81;
  *(v48 + 32) = v49;
  v50 = v82;
  *(v48 + 40) = v91;
  *(v48 + 48) = v50;
  v51 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v52 = v77;
  swift_unknownObjectRetain();
  v53 = LayoutViewPlaceholder.init(measureWith:)();
  v96[3] = v51;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  v96[0] = v53;
  v54 = v87;
  v55 = v85;
  v56 = v84;
  if (v46)
  {
    if (qword_10096D660 != -1)
    {
      swift_once();
    }

    v57 = sub_1000056A8(v54, qword_1009CF358);
    v58 = *(v55 + 16);
    v58(v56, v57, v54);
    sub_1002DBD10(v49, a4);
    TitledParagraphLayout.Metrics.columnWidth.setter();
    [v49 pageMarginInsets];
    TitledParagraphLayout.Metrics.columnMargin.setter();
  }

  else
  {
    if (v47)
    {
      if (qword_10096D668 != -1)
      {
        swift_once();
      }

      v59 = qword_1009CF370;
    }

    else
    {
      if (qword_10096D658 != -1)
      {
        swift_once();
      }

      v59 = qword_1009CF340;
    }

    v60 = sub_1000056A8(v54, v59);
    v58 = *(v55 + 16);
    v61 = v75[0];
    v58(v75[0], v60, v54);
    (*(v55 + 32))(v56, v61, v54);
  }

  v58(v83, v56, v54);
  v62 = v103;
  v63 = v104;
  v64 = sub_10002A400(&aBlock, v103);
  v95[3] = v62;
  v95[4] = *(v63 + 1);
  v65 = sub_1000056E0(v95);
  (*(*(v62 - 1) + 16))(v65, v64, v62);
  v66 = v98;
  v67 = v99;
  v68 = sub_10002A400(v97, v98);
  v94[3] = v66;
  v94[4] = *(v67 + 8);
  v69 = sub_1000056E0(v94);
  (*(*(v66 - 8) + 16))(v69, v68, v66);
  sub_10002C0AC(v96, v93);
  v70 = v86;
  TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)();
  sub_1006312CC(&unk_1009901A0, &type metadata accessor for TitledParagraphLayout);
  v71 = v89;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v73 = v72;

  (*(v88 + 8))(v70, v71);
  (*(v55 + 8))(v56, v54);
  sub_100007000(v96);
  sub_100007000(v97);
  sub_100007000(&aBlock);
  return v73;
}

uint64_t sub_10062FFEC()
{
  sub_10002849C(&qword_100975780);
  sub_100135EAC();
  WritableStateLens<A>.updateValue(_:)();
  return 3;
}

uint64_t sub_100630064()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_1006301FC()
{
  result = qword_100990188;
  if (!qword_100990188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990188);
  }

  return result;
}

unint64_t sub_100630254()
{
  result = qword_100990190;
  if (!qword_100990190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990190);
  }

  return result;
}

void sub_1006302A8(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10002849C(&qword_100978688);
  sub_100135EAC();
  StateLens<A>.currentValue.getter();
  if (v10 == 1)
  {
    if (qword_10096D650 != -1)
    {
      swift_once();
    }

    v8 = sub_10002849C(&unk_100973B30);
    sub_1000056A8(v8, qword_1009CF328);
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_10062F358(a1, v9, a5, a2);
}

id sub_1006303D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v113 = a3;
  v114 = a2;
  v119 = a1;
  v111 = type metadata accessor for Paragraph.Alignment();
  v118 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v103 - v9;
  __chkstk_darwin(v10);
  v105 = &v103 - v11;
  __chkstk_darwin(v12);
  v104 = &v103 - v13;
  v14 = sub_10002849C(&qword_10097C3F0);
  __chkstk_darwin(v14 - 8);
  v110 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = &v103 - v17;
  __chkstk_darwin(v18);
  v109 = &v103 - v19;
  __chkstk_darwin(v20);
  v116 = &v103 - v21;
  v112 = type metadata accessor for ComponentLayoutOptions();
  v22 = *(v112 - 8);
  __chkstk_darwin(v112);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TitledParagraphStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v103 - v31;
  v115 = a5;
  v33 = [a5 snapshotPageTraitEnvironment];
  v34 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits] = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*&v5[v34])
  {
    [v5 setNeedsLayout];
  }

  v117 = v5;
  swift_unknownObjectRelease();
  TitledParagraph.style.getter();
  (*(v26 + 104))(v28, enum case for TitledParagraphStyle.detail(_:), v25);
  sub_1006312CC(&qword_1009786A0, &type metadata accessor for TitledParagraphStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v126 && v121 == v127)
  {
    v35 = 1;
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v36 = *(v26 + 8);
  v36(v28, v25);
  v36(v32, v25);

  v37 = v117;
  v117[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling] = v35 & 1;
  sub_1002DAA90();
  v38 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView];
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1006312CC(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v39 = v112;
  v40 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v22 + 8))(v24, v39);
  [v38 setHidden:v40 & 1];
  sub_10002849C(&qword_100975780);
  sub_100135EAC();
  WritableStateLens<A>.currentValue.getter();
  v41 = aBlock;
  if (qword_10096D650 != -1)
  {
    swift_once();
  }

  v42 = sub_10002849C(&unk_100973B30);
  sub_1000056A8(v42, qword_1009CF328);
  v43 = v115;
  v126 = v115;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  result = swift_unknownObjectRelease();
  v45 = v119;
  v46 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  type metadata accessor for TitledParagraphCollectionViewCell();
  [v37 frame];
  v48 = v47;
  sub_10062F358(v45, v46, v43, v49);
  if (v48 < v50)
  {
    v51 = v41;
  }

  else
  {
    v51 = 0;
  }

  if ((v51 & 1) == 0)
  {
    v73 = dispatch thunk of TitledParagraph.text.getter();
    v74 = [v43 traitCollection];
    v75 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v73];
    v76 = [v73 length];
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = v74;
    *(v77 + 32) = v75;
    *(v77 + 40) = 1;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_10010279C;
    *(v78 + 24) = v77;
    v124 = sub_1001027AC;
    v125 = v78;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_1006606C4;
    v123 = &unk_1008CC520;
    v79 = _Block_copy(&aBlock);
    v80 = v74;
    v81 = v75;

    [v73 enumerateAttributesInRange:0 options:v76 usingBlock:{0x100000, v79}];

    _Block_release(v79);
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if (v73)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v72 = v108;
    v61 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
    v82 = v111;
    (*(v118 + 56))(v108, 1, 1, v111);
    v83 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v84 = v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
    v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
    v116 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
    v85 = *&v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v86 = v81;
    [v85 setNumberOfLines:0];
    if (v84 != v61[v83])
    {
      sub_1005A0320();
    }

    v68 = v86;
    sub_10059FCD8(v86);
    v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v87 = v110;
    sub_10027D5B8(v72, v110);
    v88 = v118;
    v71 = &StringUserDefaultsDebugSetting;
    if ((*(v118 + 48))(v87, 1, v82) == 1)
    {
      sub_100574EB4(v87);
      goto LABEL_46;
    }

    v93 = v107;
    (*(v88 + 32))(v107, v87, v82);
    v94 = v106;
    (*(v88 + 16))(v106, v93, v82);
    v95 = (*(v88 + 88))(v94, v82);
    if (v95 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v95 == enum case for Paragraph.Alignment.center(_:))
      {
        v96 = 1;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.right(_:))
      {
        v96 = 2;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.justified(_:))
      {
        v96 = 3;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.localized(_:))
      {
        v96 = 4;
        goto LABEL_45;
      }

      (*(v88 + 8))(v106, v82);
    }

    v96 = 0;
LABEL_45:
    [*&v61[v116] setTextAlignment:v96];
    (*(v88 + 8))(v107, v82);
    goto LABEL_46;
  }

  v52 = dispatch thunk of TitledParagraph.collapsedText.getter();
  v53 = [v43 traitCollection];
  v54 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v52];
  v55 = [v52 length];
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = v53;
  *(v56 + 32) = v54;
  *(v56 + 40) = 1;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_100126854;
  *(v57 + 24) = v56;
  v124 = sub_100126848;
  v125 = v57;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_1006606C4;
  v123 = &unk_1008CC598;
  v58 = _Block_copy(&aBlock);
  v59 = v53;
  v60 = v54;

  [v52 enumerateAttributesInRange:0 options:v55 usingBlock:{0x100000, v58}];

  _Block_release(v58);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v37 = v117;
  v61 = *&v117[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
  v62 = v111;
  (*(v118 + 56))(v116, 1, 1, v111);
  v63 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v64 = v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
  v65 = *&v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  v66 = *&v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v67 = v60;
  [v66 setNumberOfLines:v65];
  if (v64 != v61[v63])
  {
    sub_1005A0320();
  }

  v68 = v67;
  sub_10059FCD8(v67);
  v61[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  v69 = v109;
  sub_10027D5B8(v116, v109);
  v70 = v118;
  v71 = &StringUserDefaultsDebugSetting;
  if ((*(v118 + 48))(v69, 1, v62) != 1)
  {
    v89 = v104;
    (*(v70 + 32))(v104, v69, v62);
    v90 = v105;
    (*(v70 + 16))(v105, v89, v62);
    v91 = (*(v70 + 88))(v90, v62);
    if (v91 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v91 == enum case for Paragraph.Alignment.center(_:))
      {
        v92 = 1;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.right(_:))
      {
        v92 = 2;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.justified(_:))
      {
        v92 = 3;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.localized(_:))
      {
        v92 = 4;
        goto LABEL_42;
      }

      (*(v70 + 8))(v105, v62);
    }

    v92 = 0;
LABEL_42:
    [v66 setTextAlignment:v92];
    (*(v70 + 8))(v89, v62);
    v72 = v116;
    goto LABEL_46;
  }

  sub_100574EB4(v69);
  v72 = v116;
LABEL_46:
  [v61 v71[41].base_meths];

  sub_100574EB4(v72);
  v97 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  TitledParagraph.primarySubtitle.getter();
  if (v98)
  {
    v99 = String._bridgeToObjectiveC()();
  }

  else
  {
    v99 = 0;
  }

  [v97 setText:v99];

  v100 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  TitledParagraph.secondarySubtitle.getter();
  if (v101)
  {
    v102 = String._bridgeToObjectiveC()();
  }

  else
  {
    v102 = 0;
  }

  [v100 setText:v102];

  return [v37 v71[41].base_meths];
}

uint64_t sub_1006312CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100631334@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - v6;
  v7 = sub_10002849C(&unk_100970EA0);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - v8;
  UITraitCollection.prefersAccessibilityLayouts.getter();
  UITraitCollection.prefersAccessibilityLayouts.getter();
  v96 = vdupq_n_s64(0x405A400000000000uLL);
  v93 = vdupq_n_s64(0x4056000000000000uLL);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for CGSize(0);
  Conditional<>.init(regularValue:compactValue:)();
  v96.i64[0] = 0x402E000000000000;
  v93.i64[0] = 0x402C000000000000;
  Conditional<>.init(regularValue:compactValue:)();
  *v4 = UIFontTextStyleBody;
  v62 = enum case for FontSource.textStyle(_:);
  v60 = v2[13];
  v61 = v2 + 13;
  v60(v4);
  v97 = type metadata accessor for StaticDimension();
  v98 = &protocol witness table for StaticDimension;
  v9 = v97;
  v57 = v97;
  sub_1000056E0(v96.i64);
  v94 = v1;
  v95 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v93.i64);
  v58 = v2[2];
  v58(v10, v4, v1);
  v59 = v2 + 2;
  v11 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v12 = v2[1];
  v55 = v2 + 1;
  v12(v4, v1);
  v13 = v12;
  v56 = v12;
  *v4 = v11;
  v14 = v62;
  v15 = v60;
  (v60)(v4, v62, v1);
  v94 = v9;
  v95 = &protocol witness table for StaticDimension;
  v50 = sub_1000056E0(v93.i64);
  v91 = v1;
  v92 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v90);
  v17 = v58;
  v58(v16, v4, v1);
  v18 = v11;
  v51 = v18;
  StaticDimension.init(_:scaledLike:)();
  v13(v4, v1);
  *v4 = v18;
  v15(v4, v14, v1);
  v19 = v15;
  v20 = v57;
  v91 = v57;
  v92 = &protocol witness table for StaticDimension;
  sub_1000056E0(v90);
  v88 = v1;
  v89 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v87);
  v17(v21, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v22 = v56;
  v56(v4, v1);
  *v4 = v51;
  v23 = v62;
  v19(v4, v62, v1);
  v88 = v20;
  v89 = &protocol witness table for StaticDimension;
  sub_1000056E0(v87);
  v85 = v1;
  v86 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v84);
  v58(v24, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v22(v4, v1);
  *v4 = UIFontTextStyleFootnote;
  v25 = v60;
  (v60)(v4, v23, v1);
  v85 = v20;
  v86 = &protocol witness table for StaticDimension;
  sub_1000056E0(v84);
  v82 = v1;
  v83 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v81);
  v27 = v58;
  v58(v26, v4, v1);
  v28 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v29 = v56;
  v56(v4, v1);
  *v4 = v28;
  v25(v4, v62, v1);
  v82 = v57;
  v83 = &protocol witness table for StaticDimension;
  sub_1000056E0(v81);
  v79 = v1;
  v80 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v78);
  v27(v30, v4, v1);
  v31 = v28;
  StaticDimension.init(_:scaledLike:)();
  v29(v4, v1);
  *v4 = v31;
  v32 = v60;
  (v60)(v4, v62, v1);
  v33 = v57;
  v79 = v57;
  v80 = &protocol witness table for StaticDimension;
  sub_1000056E0(v78);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v75);
  v35 = v58;
  v58(v34, v4, v1);
  v36 = v31;
  StaticDimension.init(_:scaledLike:)();
  v56(v4, v1);
  *v4 = v36;
  v37 = v62;
  v32(v4, v62, v1);
  v76 = v33;
  v77 = &protocol witness table for StaticDimension;
  sub_1000056E0(v75);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v72);
  v35(v38, v4, v1);
  v39 = v36;
  StaticDimension.init(_:scaledLike:)();
  v40 = v56;
  v56(v4, v1);
  *v4 = v39;
  (v60)(v4, v37, v1);
  v73 = v33;
  v74 = &protocol witness table for StaticDimension;
  v50 = sub_1000056E0(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v41 = sub_1000056E0(v69);
  v35(v41, v4, v1);
  v42 = v39;
  v51 = v42;
  StaticDimension.init(_:scaledLike:)();
  v40(v4, v1);
  *v4 = v42;
  v43 = v62;
  v44 = v60;
  (v60)(v4, v62, v1);
  v70 = v33;
  v71 = &protocol witness table for StaticDimension;
  sub_1000056E0(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_1000056E0(v66);
  v46 = v58;
  v58(v45, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v40(v4, v1);
  *v4 = v51;
  v44(v4, v43, v1);
  v67 = v57;
  v68 = &protocol witness table for StaticDimension;
  sub_1000056E0(v66);
  v64 = v1;
  v65 = &protocol witness table for FontSource;
  v47 = sub_1000056E0(v63);
  v46(v47, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v40(v4, v1);
  v64 = type metadata accessor for ZeroDimension();
  v65 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v63);
  static ZeroDimension.zero.getter();
  return MediumLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleSpace:titleWithHeadingRegularSpace:titleWithHeadingShortSpace:subtitleRegularSpace:subtitleShortSpace:tertiaryTitleRegularSpace:tertiaryTitleShortSpace:offerTextRegularSpace:offerTextShortSpace:offerButtonTopMargin:offerButtonBottomMargin:offerButtonSize:layoutMargins:)();
}

void sub_100631CEC(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

uint64_t sub_100631DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&qword_100979010);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = sub_10002849C(&unk_100970EA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v26 = type metadata accessor for MediumLockupLayout.Metrics();
  v24 = *(v26 - 8);
  *&v12 = __chkstk_darwin(v26).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v16 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v16)
  {
    if (qword_10096D670 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Separator();
    v18 = sub_1000056A8(v17, qword_1009CF3B8);
    v19 = *(*(v17 - 8) + 16);
    v20 = v30;

    return v19(v20, v18, v17);
  }

  else
  {
    v22 = [a1 traitCollection];
    sub_100631334(v14);

    MediumLockupLayout.Metrics.artworkSize.getter();
    v31 = a1;
    Conditional.evaluate(with:)();
    (*(v9 + 8))(v11, v8);
    MediumLockupLayout.Metrics.artworkMargin.getter();
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v28 + 8))(v5, v29);
    (*(v25 + 8))(v7, v27);
    if (qword_10096D670 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Separator();
    sub_1000056A8(v23, qword_1009CF3B8);
    Separator.withLeadingInset(_:)();
    return (*(v24 + 8))(v14, v26);
  }
}

id sub_100632200(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_10096DD00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for FontUseCase();
    v17 = sub_1000056A8(v16, qword_1009D0698);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v20 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v2 = v15;
    sub_10003D8D0(v20, &OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_1006324B0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D0788);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v15 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  sub_10003D8D0(v15, &OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100005744(0, &qword_100970180);
      v18 = v17;
      v19 = static UIColor.tertiaryText.getter();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

char *sub_100632760(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = v60 - v15;
  v17 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v19 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  v21 = sub_1000056A8(v20, qword_1009D0710);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v67 = v21;
  v69 = v22 + 16;
  v70 = v23;
  (v23)(v16);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v66 = v25;
  v25(v16, 0, 1, v20);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v64 = *(v11 + 104);
  v65 = v11 + 104;
  v64(v13);
  v27 = v10;
  v63 = type metadata accessor for DynamicTypeLabel();
  v28 = objc_allocWithZone(v63);
  *&v5[v19] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = &v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView] = 0;
  v30 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
  v31 = type metadata accessor for Separator();
  (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
  type metadata accessor for ArtworkView();
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_artworkView] = static ArtworkView.iconArtworkView.getter();
  v62 = v5;
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v20, qword_1009D06B0);
  v70(v16, v32, v20);
  v33 = v66;
  v66(v16, 0, 1, v20);
  v60[1] = v24;
  v61 = v27;
  v34 = v64;
  (v64)(v13, v26, v27);
  v35 = v63;
  v36 = objc_allocWithZone(v63);
  v37 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v38 = v62;
  *&v62[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel] = v37;
  v70(v16, v67, v20);
  v33(v16, 0, 1, v20);
  v34(v13, v26, v61);
  v39 = objc_allocWithZone(v35);
  *&v38[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v38[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerButton] = sub_1000F5284(0);
  v71.receiver = v38;
  v71.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  v42 = [v41 contentView];
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v43 = [v41 contentView];
  [v43 addSubview:*&v41[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_artworkView]];

  v44 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel;
  v45 = *&v41[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v46 = [v41 contentView];
  [v46 addSubview:*&v41[v44]];

  v47 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel;
  v48 = *&v41[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel];
  sub_100005744(0, &qword_100970180);
  v49 = v48;
  v50 = static UIColor.secondaryText.getter();
  [v49 setTextColor:v50];

  v51 = *&v41[v47];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v52 = v41;
  v53 = [v52 contentView];
  [v53 addSubview:*&v41[v47]];

  v54 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();

  v55 = [v52 contentView];
  [v55 addSubview:*&v52[v54]];

  v56 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel;
  [*&v52[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v52[v56] setText:0];
  [*&v52[v56] setHidden:1];
  v57 = *&v52[v56];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v58 = [v52 contentView];
  [v58 addSubview:*&v52[v56]];

  return v52;
}

double sub_100632EFC()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100970EA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = type metadata accessor for MediumLockupLayout.Metrics();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 traitCollection];
  sub_100631334(v10);

  MediumLockupLayout.Metrics.artworkSize.getter();
  (*(v7 + 8))(v10, v6);
  v13[1] = v1;
  Conditional.evaluate(with:)();
  (*(v3 + 8))(v5, v2);
  return *&v13[2];
}

id sub_1006330C8()
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
  v11 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A3C4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10002B894(v3, &unk_100970E10);
    result = *&v0[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView];
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

uint64_t sub_1006334AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = type metadata accessor for LayoutRect();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for MediumLockupLayout();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediumLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for Separator();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  v75 = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v13);
  v16 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v105 = v18;
  v106 = v20;
  v107 = v22;
  v108 = v24;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView];
  v76 = v10;
  v77 = v6;
  v78 = v5;
  if (v25)
  {
    v26 = v25;
    if ([v26 isHidden])
    {
    }

    else
    {
      v27 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v12 + 16);
      v28(v15, &v26[v27], v11);
      Separator.frame(forBoundingRect:in:)();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v68 = *(v12 + 8);
      v68(v15, v11);
      [v26 setFrame:{v30, v32, v34, v36}];
      v37 = &v26[v27];
      v5 = v78;
      v28(v15, v37, v11);
      v10 = v76;
      v6 = v77;
      CGRect.inset(bySeparator:in:)();

      v68(v15, v11);
    }
  }

  v38 = [v1 traitCollection];
  sub_100631334(v10);

  v39 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerButton];
  v40 = &v39[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v39[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v41 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v39[v41], v102);
    sub_10002A400(v102, v103);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v43 = v42;
    v45 = v44;
    sub_100007000(v102);
    *v40 = v43;
    *(v40 + 1) = v45;
    v40[16] = 0;
  }

  MediumLockupLayout.Metrics.offerButtonSize.setter();
  (*(v6 + 16))(v79, v10, v5);
  v46 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_artworkView];
  v103 = type metadata accessor for ArtworkView();
  v104 = &protocol witness table for UIView;
  v102[0] = v46;
  v47 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
  if (v47)
  {
    v48 = type metadata accessor for DynamicTypeLabel();
    v49 = &protocol witness table for UILabel;
    v50 = v47;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = v50;
  v100 = v48;
  v101 = v49;
  v51 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel];
  v52 = type metadata accessor for DynamicTypeLabel();
  v95 = v52;
  v96 = &protocol witness table for UILabel;
  v93 = &protocol witness table for UILabel;
  v94 = v51;
  v53 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel];
  v92 = v52;
  v91 = v53;
  v54 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v54)
  {
    v55 = &protocol witness table for UILabel;
    v56 = v52;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v87 = 0;
    v88 = 0;
  }

  v85 = &protocol witness table for UILabel;
  v86 = v54;
  v89 = v56;
  v90 = v55;
  v57 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel];
  v84 = v52;
  v83 = v57;
  v81 = type metadata accessor for OfferButton();
  v82 = &protocol witness table for UIView;
  v80 = v39;
  v58 = v47;
  v59 = v51;
  v60 = v53;
  v61 = v54;
  v62 = v57;
  v63 = v39;
  v64 = v46;
  v65 = v70;
  MediumLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)();
  v66 = v69;
  MediumLockupLayout.placeChildren(relativeTo:in:)();
  (*(v71 + 8))(v66, v73);
  sub_1006342F0(&qword_10097B058, type metadata accessor for MediumLockupCollectionViewCell);
  AvatarShowcaseDisplaying.placeAvatarShowcase()();
  (*(v72 + 8))(v65, v74);
  return (*(v77 + 8))(v76, v78);
}

uint64_t type metadata accessor for MediumLockupCollectionViewCell()
{
  result = qword_1009901D8;
  if (!qword_1009901D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100633D74()
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

uint64_t sub_100633EBC()
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_1006342F0(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100633F54(uint64_t a1)
{
  result = sub_1006342F0(&qword_1009901E8, type metadata accessor for MediumLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_100633FAC(void *a1)
{
  v2 = type metadata accessor for MediumLockupLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v21 - v12;
  v14 = [a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v15 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v15 = qword_100991028;
  }

  v16 = sub_1000056A8(v6, v15);
  (*(v7 + 16))(v9, v16, v6);

  (*(v7 + 32))(v13, v9, v6);
  v17 = [a1 traitCollection];
  sub_100631334(v5);

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  MediumLockupLayout.Metrics.offerButtonSize.setter();
  type metadata accessor for MediumLockupLayout();
  sub_1006342F0(&qword_1009739C0, &type metadata accessor for MediumLockupLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_1006342F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100634338()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v11 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D0710);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v11) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v16 = (v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter);
  *v16 = 0u;
  v16[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView) = 0;
  v17 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
  v18 = type metadata accessor for Separator();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1006346A4()
{
  v0 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AspectRatio();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageGrid.Direction();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  type metadata accessor for FramedArtwork();
  sub_1006355D8(&qword_100990200, &type metadata accessor for FramedArtwork);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = FramedMedia.isFullWidth.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v20 = (v13 + 8);
  if (v19)
  {
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    PageGrid.containerWidth.getter();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.containerHeight.getter();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v25 + 8))(v11, v7);
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = FramedArtwork.artwork.getter();
  v29 = v89;
  if (v28)
  {
    Artwork.size.getter();
    v30 = v86;
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = FramedMedia.isFullWidth.getter();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = FramedMedia.caption.getter();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  CGSize.subtracting(insets:)();
  FramedMedia.ordinal.getter();
  v38 = &qword_10096E000;
  if (v39)
  {
    if (qword_10096E228 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for FontUseCase();
    sub_1000056A8(v40, qword_1009D15F8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v41 = type metadata accessor for Feature();
    v92 = v41;
    v93 = sub_1006355D8(&qword_100972E50, &type metadata accessor for Feature);
    v42 = sub_1000056E0(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    isFeatureEnabled(_:)();
    sub_100007000(aBlock);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_10096E690 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for StaticDimension();
    sub_1000056A8(v44, qword_1009D2368);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_10096E6A0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v44, qword_1009D2398);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_10096E698 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v44, qword_1009D2380);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &qword_10096E000;
  }

  v53 = FramedMedia.caption.getter();

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_10010279C;
  v58[3] = v57;
  v93 = sub_1001027AC;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v92 = &unk_1008CC758;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_10096E220;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = type metadata accessor for FontUseCase();
  v64 = sub_1000056A8(v63, qword_1009D15E0);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v67 = type metadata accessor for Feature();
  v92 = v67;
  v93 = sub_1006355D8(&qword_100972E50, &type metadata accessor for Feature);
  v68 = sub_1000056E0(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_10025BAF0(v66);
  if (qword_10096E690 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for StaticDimension();
  sub_1000056A8(v71, qword_1009D2368);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.topMargin(from:in:)();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[211] != -1)
  {
    swift_once();
  }

  sub_1000056A8(v71, qword_1009D2380);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.bottomMargin(from:in:)();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_1006355D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100635620(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v7);
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 104))(a1);
    }
  }
}

uint64_t sub_100635730()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10063579C()
{
  Hasher.init(_seed:)();
  sub_100635620(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100635804()
{
  Hasher.init(_seed:)();
  sub_100635620(v1);
  return Hasher._finalize()();
}

unint64_t sub_100635854()
{
  result = qword_1009902C8;
  if (!qword_1009902C8)
  {
    type metadata accessor for DebugSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009902C8);
  }

  return result;
}

uint64_t sub_1006358A8(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_1006E1A84(v6, v7);
}

double sub_100635984()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyCategory();
  sub_100635B80(&qword_100977780, &type metadata accessor for PrivacyCategory);
  ItemLayoutContext.typedModel<A>(as:)();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  v5 = sub_100079F24();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v10 = sub_10037A62C(v4, v5);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v7 = v6;

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_100635B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CappedSizeDynamicTypeLabel()
{
  result = qword_1009902D8;
  if (!qword_1009902D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100635C60(void *a1)
{
  v3 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_1009902D0];
  *&v1[qword_1009902D0] = a1;
  v21 = v10;
  if (!a1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v19 = a1;
    goto LABEL_14;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v13 != v14)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = a1;

    if (v16)
    {

      v18 = v21;

      return;
    }

LABEL_14:
    dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_10025BAF0(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      dispatch thunk of DynamicTypeLabel.updateFont(to:)();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v9, v6);
    }

    return;
  }
}

uint64_t sub_100635F14()
{
  v1 = *(v0 + qword_1009902D0);
  if (v1)
  {
    type metadata accessor for DynamicTypeLabel();
    v2 = method lookup function for DynamicTypeLabel();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = static UIContentSizeCategory.> infix(_:_:)();
    if (v4)
    {
      sub_10002849C(&qword_100973210);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1007B15F0;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10025BAA4();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  type metadata accessor for DynamicTypeLabel();
  v11 = method lookup function for DynamicTypeLabel();

  return v11();
}

id sub_1006360FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100636198(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shelf.ContentsMetadata();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10002849C(&unk_1009731F0);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = type metadata accessor for ProductMediaMetadata();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for AspectRatio();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v42 - v21;
  type metadata accessor for ProductMediaItem();
  sub_10063690C(&qword_100972AC0, &type metadata accessor for ProductMediaItem);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v57)
  {
    v44 = a1;
    if (ProductMediaItem.screenshot.getter())
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v23 = *(v18 + 56);
      v23(v13, 0, 1, v17);
      (*(v18 + 32))(v16, v13, v17);
      v23(v16, 0, 1, v17);
      v24 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v43 = v6;
      v45 = v2;
      v25 = *(v18 + 56);
      v26 = 1;
      v25(v13, 1, 1, v17);
      if (ProductMediaItem.video.getter())
      {
        Video.preview.getter();

        Artwork.size.getter();
        AspectRatio.init(_:_:)();

        v26 = 0;
      }

      v25(v16, v26, 1, v17);
      v27 = *(v18 + 48);
      if (v27(v13, 1, v17) != 1)
      {
        sub_100072810(v13);
      }

      v2 = v45;
      v6 = v43;
      v24 = v27(v16, 1, v17);
    }

    if (v24 == 1)
    {

      return sub_100072810(v16);
    }

    v45 = v2;
    (*(v18 + 32))(v56, v16, v17);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    v28 = v51;
    v29 = v49;
    ReadOnlyLens.subscript.getter();

    (*(v6 + 8))(v8, v29);
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 88))(v28, v53) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v31 + 96))(v28, v30);
      v32 = v46;
      v33 = v47;
      v34 = v28;
      v35 = v48;
      (*(v47 + 32))(v46, v34, v48);
      v36 = ProductMediaMetadata.hasPortraitPhoneMedia.getter();
      (*(v33 + 8))(v32, v35);
      v37 = v50;
      v38 = v56;
      v39 = v45;
      if ((v36 & 1) != 0 && (AspectRatio.isPortrait.getter() & 1) == 0)
      {
        AspectRatio.inverted.getter();
LABEL_18:
        swift_getKeyPath();
        v40 = v54;
        ItemLayoutContext.subscript.getter();

        PageGrid.columnWidth.getter();
        (*(v55 + 8))(v40, v39);
        AspectRatio.height(fromWidth:)();

        v41 = *(v18 + 8);
        v41(v37, v17);
        return (v41)(v38, v17);
      }
    }

    else
    {
      (*(v31 + 8))(v28, v30);
      v37 = v50;
      v38 = v56;
      v39 = v45;
    }

    (*(v18 + 16))(v37, v38, v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10063690C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100636954(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PerformanceTestCase();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v71 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v61 - v14;
  __chkstk_darwin(v15);
  v69 = &v61 - v16;
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v61 - v22;
  v24 = [v3 collectionView];
  if (v24)
  {
    v61 = v9;
    v67 = a2;
    v25 = ObjectType;
    v73 = v24;
    sub_10002C0AC(a2, v78);
    v65 = v3;
    v26 = *(v11 + 16);
    v26(v23, a1, v10);
    v62 = v26;
    sub_10002C0AC(v78, v77);
    v26(v19, v23, v10);
    v72 = a1;
    v27 = *(v11 + 80);
    v66 = v19;
    v28 = (v27 + 64) & ~v27;
    v64 = v12 + 7;
    v74 = v11;
    v29 = swift_allocObject();
    v30 = v23;
    v31 = v25;
    v63 = v25;
    v32 = v29;
    sub_100005A38(v78, v29 + 16);
    *(v32 + 56) = v73;
    v33 = v30;
    v34 = *(v11 + 32);
    v34(v32 + v28, v33, v10);
    v68 = v32;
    *(v32 + ((v12 + 7 + v28) & 0xFFFFFFFFFFFFFFF8)) = v31;
    sub_10002C0AC(v67, v76);
    v35 = v69;
    v36 = v62;
    v62(v69, v72, v10);
    v37 = swift_allocObject();
    sub_100005A38(v76, v37 + 16);
    v67 = v37;
    v34(v37 + ((v27 + 56) & ~v27), v35, v10);
    v38 = v70;
    v36(v70, v72, v10);
    v39 = v71;
    v36(v71, v38, v10);
    v40 = (v27 + 24) & ~v27;
    v41 = (v64 + v40) & 0xFFFFFFFFFFFFFFF8;
    v42 = v10;
    v43 = swift_allocObject();
    v44 = v65;
    *(v43 + 16) = v65;
    v34(v43 + v40, v38, v42);
    v45 = v63;
    *(v43 + v41) = v63;
    v46 = v73;
    v47 = v44;
    v48 = v45;
    LOBYTE(v45) = sub_100637A7C(v47, v39, v45);
    v49 = v74 + 8;
    v50 = *(v74 + 8);
    v50(v39, v42);
    if (v45)
    {
      v73 = v46;
      v74 = v49;
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for OSLogger();
      sub_1000056A8(v51, qword_1009CE278);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v52._object = 0x8000000100807A40;
      v52._countAndFlagsBits = 0xD000000000000010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      v75[3] = swift_getMetatypeMetadata();
      v75[0] = v48;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(v75);
      v53._countAndFlagsBits = 0xD000000000000025;
      v53._object = 0x8000000100807A60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v54 = v73;
      v55 = v66;
      sub_1006371FC(v77, v73, v66, v48);

      v50(v55, v42);
      return sub_100007000(v77);
    }

    else
    {
      v57 = v67;
      v50(v66, v42);
      sub_100007000(v77);
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for OSLogger();
      sub_1000056A8(v58, qword_1009CE278);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      type metadata accessor for ReadyObserver();
      v59 = swift_allocObject();
      v60 = v68;
      v59[2] = sub_100639004;
      v59[3] = v60;
      v59[4] = sub_1006390E0;
      v59[5] = v57;
      v59[6] = sub_100639224;
      v59[7] = v43;
      swift_beginAccess();

      objc_setAssociatedObject(v47, &unk_10097A040, v59, 0x301);
      swift_endAccess();
    }
  }

  else
  {
    sub_10002A400(a2, a2[3]);
    return dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

uint64_t sub_1006371FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a4;
  v38 = a1;
  v39 = a3;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PerformanceTestCase();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for DispatchTime();
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_100005744(0, &qword_1009729E0);
  v37 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v13 = 300;
  (*(v11 + 104))(v13, enum case for DispatchTimeInterval.milliseconds(_:), v10);
  DispatchTime.advanced(by:)();
  (*(v11 + 8))(v13, v10);
  v20 = *(v14 + 8);
  v36 = v14 + 8;
  v21 = v34;
  v20(v16, v34);
  sub_10002C0AC(v38, v49);
  v22 = v35;
  (*(v7 + 16))(v9, v39, v35);
  v23 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_100005A38(v49, v25 + 16);
  v26 = v41;
  *(v25 + 56) = v41;
  (*(v7 + 32))(v25 + v23, v9, v22);
  *(v25 + v24) = v42;
  aBlock[4] = sub_1006393B8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008CC898;
  v27 = _Block_copy(aBlock);
  v28 = v26;

  v29 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  v31 = v43;
  v30 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v37;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v47 + 8))(v31, v30);
  (*(v45 + 8))(v29, v46);
  return (v20)(v19, v21);
}

void sub_100637764(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  sub_10002A400(a1, a1[3]);
  if (sub_10021DCD4(a2))
  {
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CE278);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x2074736554;
    v10._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v11 = PerformanceTestCase.name.getter();
    MetatypeMetadata = &type metadata for String;
    v17[0] = v11;
    v17[1] = v12;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v17);
    v13._countAndFlagsBits = 0xD000000000000013;
    v13._object = 0x8000000100807810;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v17[0] = a4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v17);
    v14._countAndFlagsBits = 0xD00000000000002BLL;
    v14._object = 0x8000000100807830;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    MetatypeMetadata = sub_100005744(0, &qword_100978E50);
    v17[0] = a2;
    v15 = a2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v17);
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    [v15 setContentOffset:{0.0, 0.0}];
    UIScrollView.perform(_:using:)(a3, a1);
  }

  else
  {
    sub_10002A400(a1, a1[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

uint64_t sub_100637A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for PaginatedPagePresenterState();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = qword_1009CF3E8;
  if (*(a1 + qword_1009CF3E8) != 1 || *(a1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController) && (type metadata accessor for JULoadingViewController(), swift_dynamicCastClass()) || (ArtworkLoader.isFetchingAssets.getter() & 1) != 0)
  {
    v35 = 0;
  }

  else
  {
    v33 = a2;
    dispatch thunk of DiffablePagePresenter.paginationState.getter();
    v31 = v34;
    if ((*(v6 + 88))(v8, v34) == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
    {
      (*(v6 + 96))(v8, v31);
      sub_100007000(v8);
      v35 = 0;
    }

    else
    {
      (*(v6 + 8))(v8, v31);
      v35 = 1;
    }
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for OSLogger();
  v32 = sub_1000056A8(v33, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2074736554;
  v14._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = PerformanceTestCase.name.getter();
  MetatypeMetadata = &type metadata for String;
  v36[0] = v15;
  v36[1] = v16;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v17._object = 0x8000000100807A90;
  v17._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v36[0] = a3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v18._countAndFlagsBits = 0x646165527369202CLL;
  v18._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v35;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v19._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0x8000000100807AB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v20 = *(a1 + v13);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v20;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v21._object = 0x8000000100807AD0;
  v21._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  v22 = sub_10002849C(&qword_100979948);
  MetatypeMetadata = sub_10002849C(&unk_100979950);
  v36[0] = v22;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v23._countAndFlagsBits = 0xD000000000000014;
  v23._object = 0x8000000100807AF0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v24 = ArtworkLoader.isFetchingAssets.getter();
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v24 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v25._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0x8000000100807B10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  dispatch thunk of DiffablePagePresenter.paginationState.getter();
  v26 = v34;
  v27 = (*(v6 + 88))(v11, v34);
  v28 = enum case for PaginatedPagePresenterState.preparingNextPage(_:);
  if (v27 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v6 + 96))(v11, v26);
    sub_100007000(v11);
  }

  else
  {
    (*(v6 + 8))(v11, v26);
  }

  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v27 == v28;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v35;
}

uint64_t sub_10063804C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PerformanceTestCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v46 - v10;
  __chkstk_darwin(v11);
  v49 = &v46 - v12;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  sub_10002C0AC(a2, v61);
  v19 = *(v7 + 16);
  v19(v18, a1, v6);
  sub_10002C0AC(v61, v60);
  v53 = v15;
  v19(v15, v18, v6);
  v20 = *(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v56;
  sub_100005A38(v61, v21 + 24);
  v54 = v7;
  v47 = *(v7 + 32);
  v52 = v21;
  v47(v21 + ((v20 + 64) & ~v20), v18, v6);
  sub_10002C0AC(v51, v59);
  v22 = v49;
  v23 = v48;
  v19(v49, v48, v6);
  v24 = swift_allocObject();
  sub_100005A38(v59, v24 + 16);
  v51 = v24;
  v25 = v24 + ((v20 + 56) & ~v20);
  v26 = v47;
  v47(v25, v22, v6);
  v27 = v55;
  v19(v55, v23, v6);
  v28 = v57;
  v19(v57, v27, v6);
  v29 = (v20 + 24) & ~v20;
  v30 = (v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v56;
  *(v31 + 16) = v56;
  v26(v31 + v29, v55, v6);
  v33 = v28;
  v34 = ObjectType;
  *(v31 + v30) = ObjectType;
  v35 = v32;
  if (sub_100638B48(v35, v33, v34))
  {
    v56 = v35;
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for OSLogger();
    sub_1000056A8(v36, qword_1009CE278);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._object = 0x8000000100807A40;
    v37._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    v58[3] = swift_getMetatypeMetadata();
    v58[0] = v34;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v58);
    v38._countAndFlagsBits = 0xD000000000000025;
    v38._object = 0x8000000100807A60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v39 = v53;
    sub_100638804(v56, v60, v53);
  }

  else
  {
    v40 = v51;
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for OSLogger();
    sub_1000056A8(v41, qword_1009CE278);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    type metadata accessor for ReadyObserver();
    v42 = swift_allocObject();
    v43 = v52;
    v42[2] = sub_100638F84;
    v42[3] = v43;
    v42[4] = sub_1001FE008;
    v42[5] = v40;
    v42[6] = sub_100638FEC;
    v42[7] = v31;
    swift_beginAccess();

    objc_setAssociatedObject(v35, &unk_10097A040, v42, 0x301);
    swift_endAccess();

    v39 = v53;
  }

  sub_100007000(v60);
  v44 = *(v54 + 8);
  v44(v39, v6);
  return (v44)(v57, v6);
}

void sub_100638804(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (*(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8))
  {
    goto LABEL_11;
  }

  v7 = *(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex);
  v8 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
  v9 = *(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= v10)
  {
LABEL_11:
    sub_10002A400(a2, a2[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
    return;
  }

  v11 = *(a1 + v8);
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v12 = *(v11 + 8 * v7 + 32);
LABEL_8:
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSLogger();
  sub_1000056A8(v13, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2074736554;
  v14._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = PerformanceTestCase.name.getter();
  v21 = &type metadata for String;
  v20[0] = v15;
  v20[1] = v16;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v17._countAndFlagsBits = 0xD00000000000002BLL;
  v17._object = 0x800000010081E330;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v21 = type metadata accessor for TopChartDiffableSegmentViewController();
  v20[0] = v12;
  v18 = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100636954(a3, a2);
}

uint64_t sub_100638B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TopChartsDiffablePagePresenter.SegmentPresentersState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController) && (type metadata accessor for JULoadingViewController(), swift_dynamicCastClass()))
  {
    v10 = 0;
  }

  else
  {
    TopChartsDiffablePagePresenter.segmentPresentersState.getter();
    v10 = TopChartsDiffablePagePresenter.SegmentPresentersState.isComplete.getter();
    (*(v7 + 8))(v9, v6);
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSLogger();
  v22[1] = sub_1000056A8(v11, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x2074736554;
  v12._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = PerformanceTestCase.name.getter();
  MetatypeMetadata = &type metadata for String;
  v23[0] = v13;
  v23[1] = v14;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v15._object = 0x8000000100807A90;
  v15._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v23[0] = a3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v16._countAndFlagsBits = 0x646165527369202CLL;
  v16._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v23[0]) = v10 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v17._object = 0x800000010081C520;
  v17._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = sub_10002849C(&qword_100979948);
  MetatypeMetadata = sub_10002849C(&unk_100979950);
  v23[0] = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x800000010081E2F0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  MetatypeMetadata = v6;
  sub_1000056E0(v23);
  TopChartsDiffablePagePresenter.segmentPresentersState.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v10 & 1;
}

void sub_100638F84()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_100638804(v2, (v0 + 24), v3);
}

uint64_t sub_10063901C()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  sub_100007000(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1006390E0(uint64_t a1)
{
  type metadata accessor for PerformanceTestCase();

  return sub_1001FDAD0(a1, (v1 + 16));
}

uint64_t sub_100639154()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10063923C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_1006392E0()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007000(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1006393D0(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v1 + 56);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + 16, v4, v1 + v3, v5);
}

char *sub_100639478(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore30SearchActionCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore30SearchActionCollectionViewCell_actionContentView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for SearchActionContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SearchActionCollectionViewCell();
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC8AppStore30SearchActionCollectionViewCell_actionContentView]];

  return v16;
}

id sub_100639864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchActionCollectionViewCell()
{
  result = qword_100990358;
  if (!qword_100990358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10063999C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v4, a3);
  type metadata accessor for ArtworkView();
  sub_100639A8C(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100639A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100639AD4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v24 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B0B70;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B15F0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0x6574616C756D6953;
  *(v7 + 64) = 0xEF65676E61684320;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_100639DF8;
  *(v7 + 112) = 0;
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v26 = v8;
  v27 = v10;
  AnyHashable.init<A>(_:)();
  *(v6 + 32) = v7;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v14 = swift_allocObject();
  v14[7] = 0x6C6C412077656956;
  v14[8] = 0xE800000000000000;
  v14[10] = 0;
  v14[11] = 0;
  v14[9] = 0;
  v14[12] = sub_10063B254;
  v14[13] = v13;

  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;

  v18 = v24;
  v11(v5, v24);
  v26 = v15;
  v27 = v17;
  AnyHashable.init<A>(_:)();

  *(v6 + 40) = v14;
  type metadata accessor for DebugSection();
  v19 = swift_allocObject();
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  v11(v5, v18);
  v19[2] = v20;
  v19[3] = v22;
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v19[6] = v6;
  result = v25;
  *(v25 + 32) = v19;
  return result;
}

void sub_100639DF8()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:ASDAppCapabilitiesDidChangeNotification object:0];
}

void sub_100639E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10063B25C(a3);
  }
}

uint64_t sub_100639EC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v121 = a2;
  v3 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v3 - 8);
  v132 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for UUID();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityMetadata();
  __chkstk_darwin(v6 - 8);
  v120 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Shelf.ContentsMetadata();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v119 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Shelf.PresentationHints();
  __chkstk_darwin(v114);
  v117 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ShelfBackground();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v115 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ShelfHorizontalScrollTargetBehavior();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v113 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strategy = type metadata accessor for IncompleteShelfFetchStrategy();
  v106 = *(Strategy - 8);
  __chkstk_darwin(Strategy);
  v127 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v13 - 8);
  v123 = v99 - v14;
  v15 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v15 - 8);
  v126 = v99 - v16;
  v17 = sub_10002849C(&qword_10097BA20);
  __chkstk_darwin(v17 - 8);
  v125 = v99 - v18;
  v19 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v19 - 8);
  v108 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = v99 - v22;
  v23 = type metadata accessor for ShelfHeader.Configuration();
  __chkstk_darwin(v23 - 8);
  v102 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v25 - 8);
  v100 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v101 = v99 - v28;
  v29 = sub_10002849C(&qword_1009903A8);
  __chkstk_darwin(v29 - 8);
  v31 = v99 - v30;
  v32 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v32 - 8);
  v34 = v99 - v33;
  v35 = type metadata accessor for Shelf.ContentType();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = *a1;
  v39 = a1[1];
  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v40 = *(v36 + 104);
  v103 = v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40();
  v41 = *(v36 + 56);
  v104 = v34;
  v41(v34, 1, 1, v35);
  v42 = type metadata accessor for ShelfMarker();
  v43 = *(*(v42 - 8) + 56);
  v105 = v31;
  v43(v31, 1, 1, v42);
  *&v136 = 0;
  *(&v136 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  *&v136 = 0xD000000000000018;
  *(&v136 + 1) = 0x800000010081E410;
  v44 = objc_opt_self();
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 isCapableOfAction:0 capability:v45];

  if (v46)
  {
    v47 = 7562585;
  }

  else
  {
    v47 = 28494;
  }

  if (v46)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = 0xE200000000000000;
  }

  v49 = v48;
  String.append(_:)(*&v47);

  v139 = v136;
  *&v136 = 0x203A6E65704FLL;
  *(&v136 + 1) = 0xE600000000000000;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v44 isCapableOfAction:3 capability:v50];

  if (v51)
  {
    v52 = 7562585;
  }

  else
  {
    v52 = 28494;
  }

  if (v51)
  {
    v53 = 0xE300000000000000;
  }

  else
  {
    v53 = 0xE200000000000000;
  }

  v54 = v53;
  String.append(_:)(*&v52);

  v99[1] = v136;
  v140 = v136;
  v99[0] = *(&v136 + 1);
  *&v136 = 0x203A657461647055;
  *(&v136 + 1) = 0xE800000000000000;
  v99[5] = v38;
  v99[4] = v39;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v44 isCapableOfAction:1 capability:v55];

  if (v56)
  {
    v57 = 7562585;
  }

  else
  {
    v57 = 28494;
  }

  v58 = v123;
  if (v56)
  {
    v59 = 0xE300000000000000;
  }

  else
  {
    v59 = 0xE200000000000000;
  }

  v60 = v59;
  String.append(_:)(*&v57);

  v99[3] = v136;
  v141 = v136;
  v99[2] = *(&v136 + 1);
  v145 = _swiftEmptyArrayStorage;
  sub_1001442CC(0, 3, 0);
  v61 = v145;

  v62 = v130;
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v64;
  v66 = *(v133 + 8);
  v133 += 8;
  v122 = v66;
  v66(v62, v131);
  v134 = v63;
  v135 = v65;
  AnyHashable.init<A>(_:)();
  static ActionMetrics.notInstrumented.getter();
  v67 = type metadata accessor for ImpressionMetrics();
  v68 = *(v67 - 8);
  v129 = *(v68 + 56);
  v128 = v68 + 56;
  v129(v58, 1, 1, v67);
  v69 = type metadata accessor for Action();
  swift_allocObject();
  v70 = Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  v145 = v61;
  v72 = *(v61 + 2);
  v71 = *(v61 + 3);
  if (v72 >= v71 >> 1)
  {
    sub_1001442CC((v71 > 1), v72 + 1, 1);
    v61 = v145;
  }

  v137 = v69;
  v73 = sub_10063BA9C(&qword_100992FB0, &type metadata accessor for Action);
  v138 = v73;
  *&v136 = v70;
  *(v61 + 2) = v72 + 1;
  sub_100005A38(&v136, &v61[5 * v72 + 4]);

  v74 = v130;
  UUID.init()();
  v75 = UUID.uuidString.getter();
  v77 = v76;
  v122(v74, v131);
  v134 = v75;
  v135 = v77;
  AnyHashable.init<A>(_:)();
  static ActionMetrics.notInstrumented.getter();
  v129(v58, 1, 1, v67);
  swift_allocObject();
  v78 = Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  v145 = v61;
  v80 = *(v61 + 2);
  v79 = *(v61 + 3);
  v81 = v58;
  if (v80 >= v79 >> 1)
  {
    v97 = v78;
    sub_1001442CC((v79 > 1), v80 + 1, 1);
    v78 = v97;
    v81 = v58;
    v61 = v145;
  }

  v137 = v69;
  v138 = v73;
  *&v136 = v78;
  *(v61 + 2) = v80 + 1;
  sub_100005A38(&v136, &v61[5 * v80 + 4]);

  v82 = v130;
  UUID.init()();
  v83 = UUID.uuidString.getter();
  v85 = v84;
  v122(v82, v131);
  v134 = v83;
  v135 = v85;
  AnyHashable.init<A>(_:)();
  static ActionMetrics.notInstrumented.getter();
  v129(v81, 1, 1, v67);
  swift_allocObject();
  v86 = Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  v145 = v61;
  v87 = v81;
  v89 = *(v61 + 2);
  v88 = *(v61 + 3);
  if (v89 >= v88 >> 1)
  {
    v98 = v86;
    sub_1001442CC((v88 > 1), v89 + 1, 1);
    v86 = v98;
    v61 = v145;
  }

  v137 = v69;
  v138 = v73;
  *&v136 = v86;
  *(v61 + 2) = v89 + 1;
  sub_100005A38(&v136, &v61[5 * v89 + 4]);
  swift_arrayDestroy();
  v90 = type metadata accessor for ShelfHeader.ArtworkType();
  v91 = *(*(v90 - 8) + 56);
  v91(v101, 1, 1, v90);
  v91(v100, 1, 1, v90);

  ShelfHeader.Configuration.init(eyebrowColor:eyebrowImageColor:titleColor:titleImageColor:subtitleColor:accessoryColor:includeSeparator:includeTrailingArtwork:prefersShelfHeader:)();
  type metadata accessor for ShelfHeader();
  swift_allocObject();
  v133 = ShelfHeader.init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)();
  v92 = type metadata accessor for URL();
  v93 = *(*(v92 - 8) + 56);
  v93(v124, 1, 1, v92);
  v94 = type metadata accessor for ShelfFooterStyle();
  (*(*(v94 - 8) + 56))(v125, 1, 1, v94);
  v95 = type metadata accessor for Date();
  (*(*(v95 - 8) + 56))(v126, 1, 1, v95);
  v129(v87, 1, 1, v67);
  v93(v108, 1, 1, v92);
  (*(v106 + 104))(v127, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), Strategy);
  (*(v109 + 104))(v113, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v110);
  (*(v111 + 104))(v115, enum case for ShelfBackground.none(_:), v112);
  sub_10002849C(&qword_1009903B0);
  swift_allocObject();
  AsyncEvent.init()();
  *&v136 = _swiftEmptyArrayStorage;
  sub_10063BA9C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  sub_10002849C(&qword_10097DB30);
  sub_10063BAE4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v116 + 104))(v119, enum case for Shelf.ContentsMetadata.none(_:), v118);
  AccessibilityMetadata.init(label:roleDescription:)();
  type metadata accessor for Shelf();
  swift_allocObject();
  result = Shelf.init(id:contentType:placeholderContentType:marker:items:header:url:mergeWhenFetched:batchGroup:fetchStrategy:footerTitle:footerAction:footerStyle:isHidden:isHorizontal:horizontalScrollTargetBehavior:isPersonalized:rowsPerColumn:background:onShouldRemoveModel:removeModelEvents:presentationHints:contentsMetadata:nextPreferredContentRefreshDate:impressionMetrics:refreshUrl:pageChangeMetrics:accessibilityMetadata:)();
  *v121 = result;
  return result;
}

id sub_10063B1FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCapabilitiesSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10063B25C(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10002849C(&unk_100974490);
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v45 = &v33 - v2;
  v3 = sub_10002849C(&qword_100990398);
  __chkstk_darwin(v3 - 8);
  v44 = &v33 - v4;
  v5 = type metadata accessor for PageMetrics();
  __chkstk_darwin(v5 - 8);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FlowOrigin();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FlowAnimationBehavior();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FlowPresentationContext();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = type metadata accessor for FlowPage();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v51 = 0xD00000000000001ELL;
  *(&v51 + 1) = "utomatic";

  sub_100639EC4(&v51, v54);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = "uses-non-webkit-browser-engine";

  sub_100639EC4(&v51, v54);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  swift_arrayDestroy();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.page(_:), v19);
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = type metadata accessor for ReferrerData();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v49 = 0u;
  v50 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v34);
  (*(v36 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v37);
  (*(v39 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v25 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v51 = 0u;
  v52 = 0u;
  static PageMetrics.notInstrumented.getter();
  v26 = type metadata accessor for JSONContext();
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v27 = type metadata accessor for GenericPage();
  swift_allocObject();
  v28 = GenericPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)();
  *(&v52 + 1) = v27;
  *&v51 = v28;
  FlowAction.setPageData(_:)();
  sub_10003D444(&v51);
  type metadata accessor for BaseObjectGraph();
  v30 = v45;
  v29 = v46;
  v31 = v48;
  inject<A, B>(_:from:)();
  sub_1005F9C8C(v25, 1, v29, v30);

  return (*(v47 + 8))(v30, v31);
}

uint64_t sub_10063BA9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10063BAE4()
{
  result = qword_10097DB38;
  if (!qword_10097DB38)
  {
    sub_10002D1A8(&qword_10097DB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DB38);
  }

  return result;
}

char *sub_10063BB48(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_isFirstSetup] = 1;
  v12 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl] = v12;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl]];

  return v17;
}

uint64_t sub_10063BE68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = type metadata accessor for ItemLayoutContext();
  v38 = *(v35 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v35);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageTabs();
  sub_10063CD04(&qword_100990400, &type metadata accessor for PageTabs);
  v39 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  v7 = v45;
  if (v45)
  {
    v33 = *(v3 + OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl);
    [v33 removeAllSegments];
    v8 = PageTabs.tabs.getter();
    v9 = v8;
    v37 = v3;
    v25 = v7;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      v31 = v9 & 0xFFFFFFFFFFFFFF8;
      v32 = v9 & 0xC000000000000001;
      v27 = v5 + 7;
      v28 = v38 + 16;
      v26 = v38 + 32;
      v29 = i;
      v30 = v9;
      v12 = v35;
      while (v32)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v44 = v13;
        v43 = sub_1001C0570();
        v14 = PageTab.title.getter();
        v41 = v15;
        v42 = v14;
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = v38;
        v20 = *(v38 + 16);
        v40 = v5;
        v5 = v34;
        v20(v34, v39, v12);
        v21 = (*(v19 + 80) + 40) & ~*(v19 + 80);
        v22 = (v27 + v21) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 2) = v16;
        *(v23 + 3) = v17;
        *(v23 + 4) = v18;
        v9 = v30;
        (*(v19 + 32))(&v23[v21], v5, v12);
        *&v23[v22] = v11;
        v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v33 insertSegmentWithAction:v24 atIndex:v11 animated:{0, v25, v26}];

        ++v11;
        if (v44 == v29)
        {
          goto LABEL_15;
        }
      }

      if (v11 >= *(v31 + 16))
      {
        goto LABEL_13;
      }

      v5 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_10063C22C(v25, v39);
  }

  return result;
}

uint64_t sub_10063C22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v5 - 8);
  v39 = &v30 - v6;
  v7 = sub_10002849C(&qword_100990408);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10002849C(&qword_100990410);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10063CDF0();
  ItemLayoutContext.typedState<A>(as:)();
  v38 = v14;
  StateLens<A>.currentValue.getter();
  if (v42)
  {
    v31 = v9;
    v32 = v13;
    v33 = a2;
    v34 = v11;
    v36 = v10;
    v37 = v2;
    v15 = PageTabs.tabs.getter();
    v16 = v15;
    v35 = v7;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_23:
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (1)
    {
      if (v18 == v19)
      {
        v19 = 0;
        goto LABEL_19;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v20 = PageTab.id.getter();
      v22 = v21;
      if (v20 == PageTabs.selectedTabId.getter() && v22 == v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_19;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_22;
      }
    }

LABEL_19:

    ItemLayoutContext.mutableState.getter();
    v26 = v31;
    v27 = WritableStateLens.init(_:)();
    __chkstk_darwin(v27);
    *(&v30 - 2) = v19;
    *(&v30 - 8) = 0;
    v28 = v35;
    WritableStateLens<A>.updateValue(_:)();
    (*(v40 + 8))(v26, v28);
    v10 = v36;
    v3 = v37;
    v11 = v34;
    v13 = v32;
  }

  else
  {
    v19 = v41;
  }

  [*(v3 + OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl) setSelectedSegmentIndex:v19];
  return (*(v11 + 8))(v13, v10);
}

void sub_10063C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_100990408);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = a5;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v25 = v10;
        v26 = a6;
        v20 = sub_10002849C(&unk_100974490);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v15, 1, v20) == 1)
        {
          sub_10002B894(v15, &unk_100972A00);
        }

        else
        {
          v22 = PageTab.action.getter();
          v24 = sub_1005FA320(v22, 1, v19, v15);

          (*(v21 + 8))(v15, v20);
        }

        ItemLayoutContext.mutableState.getter();
        v23 = WritableStateLens.init(_:)();
        __chkstk_darwin(v23);
        *(&v24 - 2) = v26;
        *(&v24 - 8) = 0;
        sub_10063CDF0();
        WritableStateLens<A>.updateValue(_:)();

        (*(v25 + 8))(v12, v9);
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

uint64_t type metadata accessor for SegmentedControlCollectionViewCell()
{
  result = qword_1009903F0;
  if (!qword_1009903F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063CA5C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10063CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10063CD04(&qword_1009747B0, type metadata accessor for SegmentedControlCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10063CBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10063CC3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10063CD04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10063CD4C(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemLayoutContext() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10063C620(a1, v5, v6, v7, v1 + v4, v8);
}

unint64_t sub_10063CDF0()
{
  result = qword_100990418;
  if (!qword_100990418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990418);
  }

  return result;
}

uint64_t sub_10063CE44(uint64_t result)
{
  v2 = *(v1 + 24);
  *result = *(v1 + 16);
  *(result + 8) = v2;
  return result;
}

uint64_t sub_10063CE58(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageTabs();
  sub_10063CD04(&qword_100990400, &type metadata accessor for PageTabs);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v7 = v30;
  if (!v30)
  {
    return result;
  }

  v8 = PageTabs.tabs.getter();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v5;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_15:

    v12 = _swiftEmptyArrayStorage;
LABEL_16:
    swift_getKeyPath();
    v19 = v29;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v21 = v20;
    v23 = v22;
    (*(v3 + 8))(v19, v2);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v24 = v30;
    sub_10070BBC8(v12, v21, v23);
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v29 = v5;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  v30 = _swiftEmptyArrayStorage;
  result = sub_100144128(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = v7;
    v26 = v3;
    v27 = v2;
    v28 = a1;
    v11 = 0;
    v12 = v30;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v13 = PageTab.title.getter();
      v15 = v14;

      v30 = v12;
      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        sub_100144128((v16 > 1), v17 + 1, 1);
        v12 = v30;
      }

      ++v11;
      *(v12 + 2) = v17 + 1;
      v18 = &v12[2 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
    }

    while (v10 != v11);

    v2 = v27;
    v3 = v26;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_10063D17C()
{
  result = qword_100990420;
  if (!qword_100990420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990420);
  }

  return result;
}

unint64_t sub_10063D1D4()
{
  result = qword_100990428;
  if (!qword_100990428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990428);
  }

  return result;
}

char *sub_10063D240(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundViewCornerRadius] = 0x403B000000000000;
  v19 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_itemLayoutContext;
  v20 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView;
  if (qword_10096DE38 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v15, qword_1009D0A28);
  v23 = *(v16 + 16);
  v23(v18, v22, v15);
  v24 = type metadata accessor for DynamicTypeLinkedTextView();
  v25 = objc_allocWithZone(v24);
  *&v25[qword_100989190] = _swiftEmptyArrayStorage;
  *&v25[qword_100989198] = 0;
  v54.receiver = v25;
  v54.super_class = v24;
  v46 = v24;
  v26 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = v26;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  v28 = v27;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = objc_opt_self();
  v31 = [v30 clearColor];
  [v29 setBackgroundColor:v31];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v16 + 8))(v18, v15);
  *&v5[v21] = v29;
  v32 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView;
  *&v5[v32] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow] = 0;
  v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics] = 0;
  v33 = type metadata accessor for BannerCollectionViewCell();
  v53.receiver = v5;
  v53.super_class = v33;
  v34 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v34 layoutMargins];
  [v35 setLayoutMargins:?];

  v36 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView;
  [*&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
  v37 = *&v34[v36];
  v38 = [v30 quaternarySystemFillColor];
  [v37 setBackgroundColor:v38];

  [*&v34[v36] _setCornerRadius:27.0];
  v39 = [v34 contentView];
  [v39 addSubview:*&v34[v36]];

  if (*&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] || *&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow])
  {
    v40 = v47;
    (*(v48 + 104))(v47, enum case for DirectionalTextAlignment.leading(_:), v49);
    sub_1004F747C(v40);
  }

  else
  {
    v44 = v46;
    v52.receiver = *&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
    receiver = v52.receiver;
    v52.super_class = v46;
    v45 = objc_msgSendSuper2(&v52, "textAlignment");
    v51.receiver = receiver;
    v51.super_class = v44;
    objc_msgSendSuper2(&v51, "setTextAlignment:", 1);
    v50.receiver = receiver;
    v50.super_class = v44;
    if (objc_msgSendSuper2(&v50, "textAlignment") != v45)
    {
      sub_1004F6A30();
    }
  }

  v41 = [v34 contentView];

  [v41 addSubview:*&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView]];
  return v34;
}

void sub_10063D928(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor);
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView);
  if (v4)
  {
    v5 = *(v1 + v2);
    v6 = v4;
    ArtworkView.artworkTintColor.setter();
  }
}

id sub_10063D9B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DirectionalTextAlignment();
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] || *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow])
  {
    (*(v5 + 104))(v8, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_1004F747C(v8);
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
    v16 = type metadata accessor for DynamicTypeLinkedTextView();
    v20.receiver = v15;
    v20.super_class = v16;
    v17 = objc_msgSendSuper2(&v20, "textAlignment");
    v19.receiver = v15;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "setTextAlignment:", 1);
    v18.receiver = v15;
    v18.super_class = v16;
    if (objc_msgSendSuper2(&v18, "textAlignment") != v17)
    {
      sub_1004F6A30();
    }
  }

  v9 = *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for BannerButtonRow();
      v10 = v9;
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = v9;
    }

    v10 = [v2 contentView];
    [v10 addSubview:v9];

LABEL_10:
  }

  return [v2 setNeedsLayout];
}

void sub_10063DBB8()
{
  sub_100005744(0, &qword_1009870A0);
  v1 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v2;
    v5 = v3;
    v6 = [v4 configurationByApplyingConfiguration:v8];
    ArtworkView.preferredSymbolConfiguration.setter();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v3;
    v7 = v8;
    ArtworkView.preferredSymbolConfiguration.setter();
  }

  v1 = v8;
LABEL_7:
}

uint64_t sub_10063DCD0()
{
  v1 = v0;
  v2 = type metadata accessor for Separator();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BannerCollectionViewCell();
  v93.receiver = v0;
  v93.super_class = v4;
  objc_msgSendSuper2(&v93, "layoutSubviews");
  v5 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setFrame:{v7, v9, v11, v13}];
  v14 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork];

  v16 = [v1 traitCollection];
  v17 = sub_10063E968(v15);
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow;
  if (*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow] && (swift_beginAccess(), sub_100005744(0, &qword_1009811E0), , v23 = Array.isNotEmpty.getter(), , (v23 & 1) != 0) && *&v1[v22])
  {
    *&v73 = *&v1[v22];
    type metadata accessor for BannerButtonRow();
    Measurable.placeable.getter();
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
  [v24 setFrame:{v7, v9, v11, v13}];
  v25 = *&v1[v14];
  if (*&v1[v22])
  {
    if ((v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics] & 1) == 0)
    {
      v26 = 15.0;
      if (v25)
      {
        v27 = 15.0;
      }

      else
      {
        v27 = 22.0;
      }

      v60 = xmmword_1007DB330;
      v28 = 9.0;
      goto LABEL_18;
    }

LABEL_13:
    v60 = xmmword_1007CFA70;
    v28 = 17.0;
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics])
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 22.0;
  }

  v60 = xmmword_1007DB340;
  v28 = 9.0;
  v26 = v27;
LABEL_18:
  v72 = v24;
  type metadata accessor for DynamicTypeLinkedTextView();
  Measurable.placeable.getter();
  if (*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView])
  {
    *&v73 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView];
    type metadata accessor for ArtworkView();
    Measurable.placeable.getter();
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
  }

  sub_1000CB084(v91, v67);
  v29 = [v1 traitCollection];
  v30 = UITraitCollection.isSizeClassCompact.getter();

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v1 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    v31 = UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  v73 = v60;
  v74 = v60;
  *&v75 = v28;
  *(&v75 + 1) = v27;
  *&v76 = v28;
  *(&v76 + 1) = v26;
  v77 = xmmword_1007B0C20;
  v78 = xmmword_1007B0C30;
  sub_100005A38(&v61, v79);
  v80[0] = v69;
  v80[1] = v70;
  v85[0] = v67[0];
  v81 = v71;
  v82 = v17;
  v83 = v19;
  v34 = v21 & 1;
  v84 = v21 & 1;
  v85[1] = v67[1];
  v86 = v68;
  v87 = v31 & 1;
  v35 = [v1 traitCollection];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  if (v31)
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v71 = sub_1000CB0F4();
  }

  else
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v71 = sub_1000CB030();
  }

  v36 = swift_allocObject();
  *&v69 = v36;
  sub_10002C0AC(v79, v36 + 112);
  sub_1000CB084(v80, v36 + 152);
  sub_1000CB084(v85, v36 + 216);
  v37 = v64;
  *(v36 + 48) = v63;
  *(v36 + 64) = v37;
  v38 = v66;
  *(v36 + 80) = v65;
  *(v36 + 96) = v38;
  v39 = v62;
  *(v36 + 16) = v61;
  *(v36 + 32) = v39;
  *(v36 + 192) = v17;
  *(v36 + 200) = v19;
  *(v36 + 208) = v34;
  sub_100005A38(&v69, &v61);
  sub_10002A400(&v61, *(&v62 + 1));
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(&v61);
  v40 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    v42 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = &v41[v42];
    v46 = v57;
    (*(v58 + 16))(v57, v45, v59);
    Separator.frame(forBoundingRect:in:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v44 + 8))(v46, v43);
    [v41 setFrame:{v48, v50, v52, v54}];
  }

  sub_10063F3B4(&v73);
  return sub_10002B894(v91, &unk_10097B860);
}

double sub_10063E3CC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v6[5] = a2;
  Measurable.placeable.getter();
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

uint64_t sub_10063E48C(uint64_t a1, double a2, double a3)
{
  result = Banner.buttonActions.getter();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = _swiftEmptyArrayStorage;
LABEL_2:
  v11 = 16 * v8 + 32;
  while (1)
  {
    if (v9 == v8)
    {

      sub_100146340(a1, v10, a2, a3);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v12 = v11 + 16;
    ++v8;

    v13 = Action.title.getter();
    v15 = v14;

    v11 = v12;
    if (v15)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100033E38(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_100033E38((v16 > 1), v17 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[2 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_10063E5F4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  sub_10063F468(0);
  sub_10063D928(0);
  v1 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;

  sub_10063DBB8();
  v2 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  sub_10063D9B0(v6);
  return [*&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
}

id sub_10063E744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BannerCollectionViewCell()
{
  result = qword_100990460;
  if (!qword_100990460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063E89C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10063E968(uint64_t result)
{
  v1 = result;
  if (result)
  {
    sub_100005744(0, &qword_1009870A0);

    v2 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    if ((dispatch thunk of Artwork.isLocalImage.getter() & 1) == 0)
    {

      return 0x4042000000000000;
    }

    v3 = v2;
    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      v4 = static SystemImage.load(artwork:with:includePrivateImages:)();
    }

    else
    {
      if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
      {

LABEL_12:

        return 0x4042000000000000;
      }

      v4 = sub_100330100(v1, v2);
    }

    v5 = v4;

    if (v5)
    {
      [v5 size];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  return result;
}

double sub_10063EAAC(uint64_t a1, __int128 *a2, void *a3)
{
  v74 = a3;
  v70 = a2;
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v64[-v5];
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10002849C(&unk_100973B10);
  __chkstk_darwin(v11 - 8);
  v13 = &v64[-v12];
  Banner.hideCriteria.getter();
  v14 = type metadata accessor for HideCriteria();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10002B894(v13, &unk_100973B10);
  }

  else
  {
    v16 = HideCriteria.isHidden.getter();
    (*(v15 + 8))(v13, v14);
    v17 = 0.0;
    if (v16)
    {
      return v17;
    }
  }

  v18 = v74;
  [v74 pageMarginInsets];
  static UIEdgeInsets.+ infix(_:_:)();
  CGSize.subtracting(insets:)();
  if (qword_10096DE38 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v7, qword_1009D0A28);
  v20 = *(v8 + 16);
  v20(v10, v19, v7);
  v21 = type metadata accessor for DynamicTypeLinkedTextView();
  v22 = objc_allocWithZone(v21);
  *&v22[qword_100989190] = _swiftEmptyArrayStorage;
  *&v22[qword_100989198] = 0;
  v95.receiver = v22;
  v95.super_class = v21;
  v23 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v24 = v23;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  v25 = v24;
  [v25 setSelectable:1];
  v26 = v25;
  [v26 setEditable:0];
  [v26 setScrollEnabled:0];
  [v26 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v26 setContentInsetAdjustmentBehavior:2];
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor:v27];

  [v26 setDelegate:v26];
  [v26 _setInteractiveTextSelectionDisabled:1];

  (*(v8 + 8))(v10, v7);
  v28 = v26;
  Banner.message.getter();
  v29 = String._bridgeToObjectiveC()();

  [v28 setText:v29];

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v68 = v28;
  v31 = Banner.leadingArtwork.getter();
  v32 = [v18 traitCollection];
  v33 = sub_10063E968(v31);
  v67 = v34;
  v65 = v35;

  Banner.buttonActions.getter();
  sub_10002849C(&qword_10096F9A8);
  v36 = Array.isNotEmpty.getter();

  v37 = 0;
  v38 = 0;
  if (v36)
  {

    v37 = sub_10063F460;
    v38 = a1;
  }

  v66 = v33;
  v72 = v38;
  v73 = v37;
  v71 = [v18 traitCollection];
  *(&v76 + 1) = &type metadata for DynamicSizePlaceholder;
  v39 = sub_10063F360();
  *&v77 = v39;
  *&v75 = sub_10063F358;
  *(&v75 + 1) = v30;
  v69 = v30;

  if (!Banner.leadingArtwork.getter())
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v44 = v72;
    v43 = v73;
    if (v36)
    {
      goto LABEL_10;
    }

LABEL_12:
    v39 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_13;
  }

  v40 = type metadata accessor for EmptyPlaceable();
  swift_allocObject();
  v41 = EmptyPlaceable.init()();
  v42 = sub_10063F408();
  v44 = v72;
  v43 = v73;
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v45 = &type metadata for DynamicSizePlaceholder;
  v46 = v44;
  v47 = v43;
LABEL_13:
  sub_10000827C(v43);
  v48 = v71;
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v49 = 1;
  }

  else
  {
    v50 = [v48 preferredContentSizeCategory];
    v49 = UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  v51 = v70[3];
  v86 = v70[2];
  v87 = v51;
  v52 = v70[5];
  v88 = v70[4];
  v89 = v52;
  v53 = v70[1];
  v84 = *v70;
  v85 = v53;
  sub_100005A38(&v75, v90);
  v91[0] = v41;
  v91[1] = 0;
  v91[2] = 0;
  v91[3] = v40;
  v91[4] = v42;
  v55 = v66;
  v54 = v67;
  v91[5] = v66;
  v91[6] = v67;
  v56 = v65 & 1;
  v92 = v65 & 1;
  v93[0] = v47;
  v93[1] = v46;
  v93[2] = 0;
  v93[3] = v45;
  v93[4] = v39;
  v94 = v49 & 1;
  v57 = [v74 traitCollection];
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v75 = v84;
  v76 = v85;
  if (v49)
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v83 = sub_1000CB0F4();
  }

  else
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v83 = sub_1000CB030();
  }

  v58 = swift_allocObject();
  *&v81 = v58;
  sub_10002C0AC(v90, v58 + 112);
  sub_1000CB084(v91, v58 + 152);
  sub_1000CB084(v93, v58 + 216);
  v59 = v78;
  *(v58 + 48) = v77;
  *(v58 + 64) = v59;
  v60 = v80;
  *(v58 + 80) = v79;
  *(v58 + 96) = v60;
  v61 = v76;
  *(v58 + 16) = v75;
  *(v58 + 32) = v61;
  *(v58 + 192) = v55;
  *(v58 + 200) = v54;
  *(v58 + 208) = v56;
  sub_100005A38(&v81, &v75);
  sub_10002A400(&v75, *(&v76 + 1));
  dispatch thunk of Placeable.measure(toFit:with:)();

  sub_100007000(&v75);
  CGSize.adding(outsets:)();
  v17 = v62;

  sub_10001F63C(v73);

  sub_10063F3B4(&v84);
  return v17;
}

unint64_t sub_10063F360()
{
  result = qword_100990470;
  if (!qword_100990470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990470);
  }

  return result;
}

unint64_t sub_10063F408()
{
  result = qword_1009768B0;
  if (!qword_1009768B0)
  {
    type metadata accessor for EmptyPlaceable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009768B0);
  }

  return result;
}

id sub_10063F468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork;
  *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] = a1;

  v9 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView];
  if (*&v2[v8])
  {
    if (!v10)
    {
      v11 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = *&v2[v9];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v9];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v9] = v11;
      v18 = v11;

      if (v18)
      {
        v19 = [v2 contentView];
        [v19 addSubview:v18];
      }

      [v2 setNeedsLayout];

      if (*&v2[v8])
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10)
    {
      [v10 removeFromSuperview];
      v14 = *&v2[v9];
    }

    else
    {
      v14 = 0;
    }

    *&v2[v9] = 0;

    [v2 setNeedsLayout];
  }

  if (*&v2[v8])
  {
LABEL_17:
    (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_1004F747C(v7);
    goto LABEL_18;
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow])
  {
    goto LABEL_17;
  }

  v15 = *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
  v16 = type metadata accessor for DynamicTypeLinkedTextView();
  v23.receiver = v15;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "textAlignment");
  v22.receiver = v15;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "setTextAlignment:", 1);
  v21.receiver = v15;
  v21.super_class = v16;
  if (objc_msgSendSuper2(&v21, "textAlignment") != v17)
  {
    sub_1004F6A30();
  }

LABEL_18:
  sub_10063DBB8();
  return [v2 setNeedsLayout];
}

void sub_10063F710()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundViewCornerRadius) = 0x403B000000000000;
  v9 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView;
  if (qword_10096DE38 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v5, qword_1009D0A28);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100989190] = _swiftEmptyArrayStorage;
  *&v15[qword_100989198] = 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = v16;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  v18 = v17;
  [v18 setSelectable:1];
  v19 = v18;
  [v19 setEditable:0];
  [v19 setScrollEnabled:0];
  [v19 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setContentInsetAdjustmentBehavior:2];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setDelegate:v19];
  [v19 _setInteractiveTextSelectionDisabled:1];

  (*(v6 + 8))(v8, v5);
  *(v1 + v11) = v19;
  v21 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView;
  *(v1 + v21) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_10063FB40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10063FB6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10063FBB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10063FC20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10063FC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10063FCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v54 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for _VerticalFlowLayout.Child();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  result = _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v60 = v2;
  v14 = *(v2 + 120);
  v46 = *(v14 + 16);
  if (v46)
  {
    v15 = 0;
    v16 = v14 + 32;
    v57 = (v11 + 8);
    v44 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v43 = (v7 + 104);
    v42 = (v5 + 104);
    v41 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v40 = v56 + 8;
    v39 = (v5 + 8);
    v38 = (v7 + 8);
    v37 = (v9 + 8);
    v36 = xmmword_1007B10D0;
    v45 = v14;
    v17 = v49;
    while (v15 < *(v14 + 16))
    {
      *v65 = v15;
      result = sub_10064095C(v16, &v65[8]);
      if (*&v66[8])
      {
        v26 = *v65;
        *v65 = *&v65[8];
        *&v65[16] = *v66;
        *v66 = *&v66[8];
        *&v66[16] = *&v66[24];
        *&v66[32] = *&v66[40];
        *&v66[48] = v67;
        v27 = 24;
        if (!v26)
        {
          v27 = 64;
        }

        v28 = 40;
        if (v26)
        {
          v28 = 0;
        }

        sub_10002A400((v60 + v28), *(v60 + v27));
        v29 = v58;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v31 = v30;
        v32 = *v57;
        (*v57)(v29, v59);
        v33 = 0;
        if (v26 == *(v14 + 16) - 1)
        {
          sub_10002A400((v60 + 80), *(v60 + 104));
          v34 = v58;
          j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
          AnyDimension.value(in:rounded:)();
          v33 = v35;
          v32(v34, v59);
        }

        ++v15;
        v18 = v50;
        (*v43)(v17, v44, v50);
        v19 = v51;
        v20 = v52;
        (*v42)(v51, v41, v52);
        v64[3] = &type metadata for CGFloat;
        v64[4] = &protocol witness table for CGFloat;
        v64[0] = v31;
        v63[3] = &type metadata for CGFloat;
        v63[4] = &protocol witness table for CGFloat;
        v63[0] = v33;
        sub_10002849C(&unk_10097E8A0);
        v21 = v56;
        v22 = swift_allocObject();
        *(v22 + 16) = v36;
        static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
        v62 = v22;
        sub_1000ED7E4();
        sub_10002849C(&unk_10097E8B0);
        sub_1000ED83C();
        v23 = v53;
        v24 = v54;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v25 = v47;
        static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
        (*(v21 + 8))(v23, v24);
        (*v39)(v19, v20);
        (*v38)(v17, v18);
        sub_100036530(v63);
        sub_100007000(v64);
        _VerticalFlowLayout.addChild(_:)();
        (*v37)(v25, v48);
        result = sub_100640994(v65);
        v16 += 80;
        v14 = v45;
        if (v46 != v15)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100640480(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for _VerticalFlowLayout();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10063FCE8(a1, v16);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v30 = v16;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_10064095C(v19, v39);
      sub_100129CF0(&v41, &v36);
      if (v37)
      {
        sub_100005A38(&v36, v38);
        sub_10002A400(v39, v40);
        dispatch thunk of LayoutView.frame.getter();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        sub_10002A400(v38, v38[3]);
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        (*(v12 + 8))(v14, v11);
        v42.origin.x = v21;
        v42.origin.y = v23;
        v42.size.width = v25;
        v42.size.height = v27;
        CGRectGetWidth(v42);
        v43.origin.x = v21;
        v43.origin.y = v23;
        v43.size.width = v25;
        v43.size.height = v27;
        CGRectGetHeight(v43);
        v44.origin.x = v33;
        v44.origin.y = v34;
        v44.size.width = v35;
        v44.size.height = a5;
        CGRectGetMidX(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetMinY(v45);
        sub_10002A400(v39, v40);
        dispatch thunk of LayoutView.frame.setter();
        sub_100640994(v39);
        sub_100007000(v38);
      }

      else
      {
        sub_100640994(v39);
        sub_100036530(&v36);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v31 + 8))(v30, v32);
}

void sub_100640824(uint64_t a1)
{
  v3 = type metadata accessor for _VerticalFlowLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v1 + 120) + 16))
  {
    sub_10063FCE8(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    _VerticalFlowLayout.measurements(fitting:in:)();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v59 = a1;
  v1 = type metadata accessor for ShelvesIntent();
  v57 = *(v1 - 8);
  v58 = v1;
  __chkstk_darwin(v1);
  v3 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v4 - 8);
  v6 = v53 - v5;
  v7 = type metadata accessor for URL();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BadgeType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100990478);
  v14 = Promise.__allocating_init()();
  Badge.type.getter();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = Badge.content.getter();
    v16 = BadgeContentKeyNumberOfAvatarsToDisplay.getter();
    if (*(v15 + 16))
    {
      v18 = sub_1000072B8(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_1000073E8(*(v15 + 56) + 32 * v18, &v61);

      sub_100005744(0, &qword_10097FB80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v65;
      v22 = [v65 integerValue];

      v23 = Badge.content.getter();
      v24 = BadgeContentKeyNumberOfFriendsBeforeTruncation.getter();
      if (*(v23 + 16))
      {
        v55 = v22;
        v56 = sub_1000072B8(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_1000073E8(*(v23 + 56) + 32 * v56, &v61);

          if (swift_dynamicCast())
          {
            v28 = v65;
            v29 = [v65 integerValue];

            v30 = Badge.content.getter();
            v31 = BadgeContentKeyAdamId.getter();
            if (*(v30 + 16))
            {
              v56 = v29;
              v33 = sub_1000072B8(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_1000073E8(*(v30 + 56) + 32 * v33, &v61);

                if (swift_dynamicCast())
                {
                  v36 = v65;
                  v37 = v66;
                  v61 = 0;
                  v62 = 0xE000000000000000;
                  _StringGuts.grow(_:)(91);
                  v38._countAndFlagsBits = 0xD000000000000059;
                  v38._object = 0x800000010081E690;
                  String.append(_:)(v38);
                  v39._countAndFlagsBits = v36;
                  v39._object = v37;
                  String.append(_:)(v39);

                  URL.init(string:)();

                  v40 = v60;
                  if ((*(v60 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v40 + 32))(v9, v6, v7);
                    type metadata accessor for ArtworkLoader();
                    v53[1] = type metadata accessor for BaseObjectGraph();
                    inject<A, B>(_:from:)();
                    v54 = v61;
                    sub_10002849C(&qword_100990480);
                    v42 = (sub_10002849C(&qword_1009829C0) - 8);
                    v43 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
                    v44 = swift_allocObject();
                    *(v44 + 16) = xmmword_1007B10D0;
                    v45 = v44 + v43;
                    v46 = v42[14];
                    v61 = 0xD000000000000015;
                    v62 = 0x800000010081E6F0;
                    AnyHashable.init<A>(_:)();
                    (*(v40 + 16))(v45 + v46, v9, v7);
                    sub_100397E24(v44);
                    swift_setDeallocating();
                    sub_10002B894(v45, &qword_1009829C0);
                    swift_deallocClassInstance();
                    ShelvesIntent.init(requests:)();
                    type metadata accessor for JSIntentDispatcher();
                    inject<A, B>(_:from:)();
                    sub_100641A3C();
                    v47 = v58;
                    dispatch thunk of JSIntentDispatcher.dispatch<A>(intent:with:fileID:)();
                    v48 = swift_allocObject();
                    swift_weakInit();
                    v49 = swift_allocObject();
                    v49[2] = v48;
                    v49[3] = 0xD000000000000015;
                    v49[4] = 0x800000010081E6F0;
                    v49[5] = v14;
                    v50 = v54;
                    v49[6] = v55;
                    v49[7] = v50;
                    v49[8] = v56;
                    v51 = sub_100005744(0, &qword_1009729E0);

                    v52 = static OS_dispatch_queue.main.getter();
                    v63 = v51;
                    v64 = &protocol witness table for OS_dispatch_queue;
                    v61 = v52;
                    Promise.then(perform:orCatchError:on:)();

                    (*(v57 + 8))(v3, v47);
                    (*(v60 + 8))(v9, v7);
                    sub_100007000(&v61);
                    return v14;
                  }

                  sub_10002B894(v6, &qword_100982460);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v61 = 0;
          Promise.resolve(_:)();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v61 = 0;
  Promise.resolve(_:)();
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t sub_100641214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  countAndFlagsBits = a8;
  object = a7;
  v12 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v12 - 8);
  v55 = v45 - v13;
  v14 = type metadata accessor for BadgeStyle();
  __chkstk_darwin(v14 - 8);
  v54 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BadgeLeadingValue();
  __chkstk_darwin(v16 - 8);
  v53 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100990490);
  __chkstk_darwin(v18 - 8);
  v56 = v45 - v19;
  v20 = type metadata accessor for BadgeType();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for AvatarShowcaseLayoutConfiguration();
  __chkstk_darwin(v21 - 8);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = ShelfBatch.shelves.getter();
    v57 = a3;
    v58 = a4;

    AnyHashable.init<A>(_:)();
    if (*(v25 + 16) && (sub_1003D78D8(v59), (v26 & 1) != 0))
    {

      sub_10003D614(v59);

      v27 = Shelf.items.getter();

      v28 = sub_10067BE44(v27);

      if (v28)
      {
        v29 = v28 >> 62;
        if (v28 >> 62)
        {
LABEL_34:
          v30 = _CocoaArrayWrapper.endIndex.getter();
          if (v30 >= 1)
          {
LABEL_7:
            v46 = v30;
            if (v30 < a6)
            {
              a6 = v30;
            }

            AvatarShowcaseLayoutConfiguration.init(width:visibleWidth:)();
            v48 = type metadata accessor for AvatarShowcaseView();
            v31 = objc_allocWithZone(v48);
            v47 = sub_1004F508C(a6, v23);
            v59[0] = _swiftEmptyArrayStorage;
            v49 = a5;
            if (v29)
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v32 = 0;
            a5 = v28 & 0xC000000000000001;
            v50 = _swiftEmptyArrayStorage;
            while (a6 != v32)
            {
              if (a5)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v32 >= *(v29 + 16))
                {
                  goto LABEL_33;
                }

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = dispatch thunk of GameCenterPlayer.artwork.getter();

              ++v32;
              if (v23)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v50 = v59[0];
                v32 = v33;
              }
            }

            v34 = v47;
            sub_1004F53FC(v50, object);

            v35 = countAndFlagsBits;
            if (v46 <= countAndFlagsBits)
            {
              v37 = 0x800000010081E730;
              v36 = 0xD00000000000001DLL;
              v35 = v46;
            }

            else
            {
              v36 = 0xD000000000000021;
              v37 = 0x800000010081E750;
            }

            v38._countAndFlagsBits = 0;
            v38._object = 0xE000000000000000;
            v39 = localizedStringWithCount(_:count:comment:)(*&v36, v35, v38);
            countAndFlagsBits = v39._countAndFlagsBits;
            object = v39._object;
            Badge.id.getter();
            Badge.type.getter();
            Badge.key.getter();
            v50 = Badge.heading.getter();
            v46 = v40;
            v45[3] = Badge.longCaption.getter();
            v45[2] = v41;
            sub_10002849C(&qword_100988670);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007B10D0;
            *(inited + 32) = BadgeContentKeyNativeContentView.getter();
            *(inited + 72) = v48;
            *(inited + 40) = v43;
            *(inited + 48) = v34;
            v48 = v34;
            v47 = sub_100398EF4(inited);
            swift_setDeallocating();
            sub_10002B894(inited + 32, &unk_100982880);
            Badge.leadingValue.getter();
            Badge.style.getter();
            v45[1] = Badge.accessibilityTitle.getter();
            v45[0] = v44;
            Badge.accessibilityCaption.getter();
            Badge.clickAction.getter();
            Badge.artwork.getter();
            Badge.impressionMetrics.getter();
            type metadata accessor for Badge();
            swift_allocObject();
            v59[0] = Badge.init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)();

            Promise.resolve(_:)();
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_10003D614(v59);
    }

    v59[0] = 0;
    Promise.resolve(_:)();
  }

  return result;
}

uint64_t sub_10064196C()
{
  sub_10002849C(&qword_1009701B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B10D0;
  swift_getErrorValue();
  *(v0 + 56) = v3;
  v1 = sub_1000056E0((v0 + 32));
  (*(*(v3 - 8) + 16))(v1);
  print(_:separator:terminator:)();
}

unint64_t sub_100641A3C()
{
  result = qword_100990488;
  if (!qword_100990488)
  {
    type metadata accessor for ShelvesIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990488);
  }

  return result;
}

uint64_t sub_100641AB8(uint64_t a1, void *a2, uint64_t a3)
{
  v126 = a3;
  v128 = a2;
  v122 = type metadata accessor for FlowAnimationBehavior();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for FlowPresentationContext();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v6 - 8);
  v115 = &v110 - v7;
  v125 = type metadata accessor for ActionOutcome();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v9 - 8);
  v111 = &v110 - v10;
  v11 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v11);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v14 - 8);
  v113 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v110 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v114 = (&v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = (&v110 - v23);
  __chkstk_darwin(v25);
  v27 = &v110 - v26;
  v112 = sub_10002849C(&qword_1009764A0);
  v127 = Promise.__allocating_init()();

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, &aBlock, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v129 = v27;
  if (v29 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v28(v18, 1, v19) != 1)
    {
      sub_10002B894(v18, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v18, v27);
  }

  FlowAction.presentationContext.getter();
  v30 = *(v11 + 20);
  v130 = v13;
  FlowAction.animationBehavior.getter();
  v31 = v128;
  v32 = [v128 presentedViewController];
  v119 = v30;
  if (!v32)
  {
    goto LABEL_8;
  }

  v33 = v32;
  if ([v32 isBeingDismissed])
  {

LABEL_8:
    v34 = v31;
    goto LABEL_9;
  }

  v131 = v33;
  sub_100005744(0, &qword_1009711C0);
  v45 = v33;
  sub_10002849C(&qword_100978EF8);
  v46 = swift_dynamicCast();
  v110 = v45;
  if (v46)
  {
    sub_100177264(v132, &aBlock);
    v47 = *(&v135 + 1);
    v48 = v136;
    sub_10002A400(&aBlock, *(&v135 + 1));
    v49 = v129;
    if ((*(v48 + 8))(v129, v47, v48))
    {
      sub_100118188(v49, v24);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v50 = v130;
        if (*v24)
        {
          v51 = sub_10002849C(&unk_100974490);

          v52 = v111;
          v53 = v126;
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v54 = *(v51 - 8);
          v55 = (*(v54 + 48))(v52, 1, v51);
          v56 = v127;
          if (v55 == 1)
          {

            sub_10013B6D8(v50, type metadata accessor for FlowPresentationHints);
            sub_10013B6D8(v49, type metadata accessor for FlowDestination);
            sub_10002B894(v52, &unk_100972A00);
LABEL_62:
            sub_100007000(&aBlock);
            return v56;
          }

          sub_1005FA0B0(v109, 1, v53, v52);

          (*(v54 + 8))(v52, v51);
          Promise.pipe(to:)();

LABEL_61:
          sub_10013B6D8(v50, type metadata accessor for FlowPresentationHints);
          sub_10013B6D8(v49, type metadata accessor for FlowDestination);
          goto LABEL_62;
        }
      }

      else
      {
        sub_10013B6D8(v24, type metadata accessor for FlowDestination);
        v50 = v130;
      }

      v106 = v124;
      v107 = v123;
      v108 = v125;
      (*(v124 + 104))(v123, enum case for ActionOutcome.performed(_:), v125);
      v56 = v127;
      Promise.resolve(_:)();

      (*(v106 + 8))(v107, v108);
      goto LABEL_61;
    }

    sub_100007000(&aBlock);
    v45 = v110;
  }

  else
  {
    v133 = 0;
    memset(v132, 0, sizeof(v132));
    sub_10002B894(v132, &unk_100986B90);
  }

  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  v90 = v126;
  inject<A, B>(_:from:)();
  v91 = v45;
  v92 = v129;
  v93 = sub_100642D68(v91, v129);
  v94 = v127;
  if ((v93 & 1) == 0)
  {
    v100 = v110;
    v101 = v128;
    v102 = [v101 presentedViewController];
    if (v102)
    {
      do
      {
        v34 = v102;

        v102 = [v34 presentedViewController];
        v101 = v34;
      }

      while (v102);
    }

    else
    {
      v34 = v101;
    }

    v31 = v128;
LABEL_9:
    v35 = [v31 traitCollection];
    v36 = v31;
    v37 = sub_10040BB0C();

    if (v37)
    {
      v38 = [v36 traitCollection];
      v39 = sub_1003C8A6C(a1, v38, v126);

      if (v39)
      {
        v40 = v39;
        goto LABEL_28;
      }
    }

    else
    {
      v41 = sub_100623FBC(v36);
      v42 = v36;
      if (v41)
      {
        *&v132[0] = v41;
        sub_100005744(0, &qword_100975960);
        sub_10002849C(&qword_100975968);
        v43 = swift_dynamicCast();
        v44 = v115;
        if ((v43 & 1) == 0)
        {
          *&v136 = 0;
          aBlock = 0u;
          v135 = 0u;
        }
      }

      else
      {
        *&v136 = 0;
        aBlock = 0u;
        v135 = 0u;
        v44 = v115;
      }

      v57 = [v42 traitCollection];

      dispatch thunk of Action.clickSender.getter();
      v58 = v113;
      sub_100462678(a1, v132, v113);
      if (v28(v58, 1, v19) == 1)
      {
        v59 = v114;
        swift_storeEnumTagMultiPayload();
        v60 = v59;
        if (v28(v58, 1, v19) != 1)
        {
          sub_10002B894(v58, &unk_1009796F0);
        }
      }

      else
      {
        v60 = v114;
        sub_10013A05C(v58, v114);
      }

      v61 = FlowAction.referrerUrl.getter();
      v63 = v62;
      FlowAction.referrerData.getter();
      sub_1003C1668(v60, v57, v61, v63, v44, &aBlock, v126, 1);
      v39 = v64;

      sub_10002B894(v44, &unk_1009767C0);
      sub_10013B6D8(v60, type metadata accessor for FlowDestination);
      v40 = v39;
      sub_10002B894(&aBlock, &unk_100981880);
      v36 = v128;
      if (v39)
      {
LABEL_28:
        v65 = v129;
        v66 = [v36 traitCollection];
        v67 = v116;
        sub_10065DB50(v116);

        v68 = FlowPresentationContext.presentationStyle.getter();
        v70 = v69;
        (*(v117 + 8))(v67, v118);
        if ((v70 & 1) == 0)
        {
          [v40 setModalPresentationStyle:v68];
        }

        aBlock = xmmword_100975F30;
        v135 = xmmword_100975F40;
        v136 = xmmword_100975F50;
        v137 = xmmword_100975F60;
        v138 = xmmword_100975F70;
        v71 = qword_100975F80;
        v139 = qword_100975F80;
        v72 = BYTE8(xmmword_100975F50);
        v56 = v127;
        if (BYTE8(xmmword_100975F50) != 255)
        {
          v73 = aBlock;
          v75 = v135;
          v74 = *&v136;
          v76 = v137;
          v77 = v138;
          v78 = aBlock;
          v79 = [v40 popoverPresentationController];
          if (v79)
          {
            v80 = v79;
            if (v72)
            {
              sub_100357ED0(&aBlock, v132);
              v81 = v80;
              [v81 setSourceView:v73];
              [v81 setSourceRect:{*(&v73 + 1), v75, v74}];
              sub_10002B894(&aBlock, &unk_10097F520);
            }

            else
            {
              [v79 setBarButtonItem:v73];
            }

            [v80 setPopoverLayoutMargins:{v76, v77}];
            [v80 setPermittedArrowDirections:v71];
          }

          else
          {
            if (qword_10096D120 != -1)
            {
              swift_once();
            }

            v83 = type metadata accessor for OSLogger();
            sub_1000056A8(v83, qword_1009CE218);
            sub_10002849C(&unk_100972A10);
            type metadata accessor for LogMessage();
            *(swift_allocObject() + 16) = xmmword_1007B10D0;
            LogMessage.init(stringLiteral:)();
            Logger.warning(_:)();
          }

          sub_10002B894(&aBlock, &unk_10097F520);
        }

        v84 = v121;
        v85 = v120;
        v86 = v122;
        (*(v121 + 16))(v120, &v130[v119], v122);
        v87 = (*(v84 + 88))(v85, v86);
        if (v87 == enum case for FlowAnimationBehavior.infer(_:))
        {
          v88 = 1;
          v89 = v125;
LABEL_54:
          [v34 presentViewController:v40 animated:v88 completion:0];
          v103 = v124;
          v104 = v123;
          (*(v124 + 104))(v123, enum case for ActionOutcome.performed(_:), v89);
          Promise.resolve(_:)();

          (*(v103 + 8))(v104, v89);
          sub_10013B6D8(v130, type metadata accessor for FlowPresentationHints);
          v82 = v65;
          goto LABEL_55;
        }

        v89 = v125;
        if (v87 != enum case for FlowAnimationBehavior.never(_:))
        {
          if (v87 == enum case for FlowAnimationBehavior.always(_:))
          {
            v88 = 1;
            goto LABEL_54;
          }

          (*(v84 + 8))(v85, v86);
        }

        v88 = 0;
        goto LABEL_54;
      }
    }

    (*(v124 + 104))(v123, enum case for ActionOutcome.unsupported(_:), v125);
    v56 = Promise.__allocating_init(value:)();

    sub_10013B6D8(v130, type metadata accessor for FlowPresentationHints);
    v82 = v129;
LABEL_55:
    sub_10013B6D8(v82, type metadata accessor for FlowDestination);
    return v56;
  }

  v95 = swift_allocObject();
  v96 = v128;
  v95[2] = a1;
  v95[3] = v96;
  v95[4] = v90;
  v95[5] = v94;
  *&v136 = sub_100642F94;
  *(&v136 + 1) = v95;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v135 = sub_100007A08;
  *(&v135 + 1) = &unk_1008CCCE0;
  v97 = _Block_copy(&aBlock);

  v98 = v96;

  v99 = v110;
  [v110 dismissViewControllerAnimated:1 completion:v97];
  _Block_release(v97);

  sub_10013B6D8(v130, type metadata accessor for FlowPresentationHints);
  sub_10013B6D8(v92, type metadata accessor for FlowDestination);
  return v94;
}

uint64_t sub_100642D68(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_10002849C(&qword_100983590) + 64);
    v15 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_10013B6D8(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_10013B6D8(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_100118248(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)();
  sub_10002B894(v5, &qword_100982460);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_100642F94()
{
  sub_100641AB8(v0[2], v0[3], v0[4]);
  Promise.pipe(to:)();
}

unint64_t sub_100642FDC()
{
  result = qword_100974CB8;
  if (!qword_100974CB8)
  {
    type metadata accessor for EditorialStoryCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CB8);
  }

  return result;
}

double sub_100643034()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShelfLayoutContext();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  ShelfLayoutContext.traitEnvironment.getter();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v14 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v14 = qword_100988380;
  }

  v15 = sub_1000056A8(v0, v14);
  (*(v1 + 16))(v3, v15, v0);
  (*(v1 + 32))(v6, v3, v0);
  AspectRatio.height(fromWidth:)();
  v17 = v16;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v20);
  return round(v17);
}

double sub_10064336C()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  ShelfLayoutContext.traitEnvironment.getter();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v11 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v11 = qword_100988380;
  }

  v12 = sub_1000056A8(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  (*(v1 + 32))(v6, v3, v0);
  AspectRatio.height(fromWidth:)();
  v14 = v13;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  return round(v14);
}

uint64_t sub_10064361C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10013DAA8(v7);
  v8 = sub_10002849C(&unk_1009731F0);
  (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_10013DAA8(v4);
  a1[3] = type metadata accessor for SpacerDimension();
  a1[4] = sub_10021CA28();
  sub_1000056E0(a1);
  return SpacerDimension.init(constant:)();
}

void sub_1006437A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - v4;
  v5 = type metadata accessor for OfferButtonSubtitlePosition();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009701A0);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for OfferButtonMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v30 - v18;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v17);
  v20 = [v1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v21 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v21 = qword_100991028;
  }

  v22 = sub_1000056A8(v12, v21);
  (*(v13 + 16))(v15, v22, v12);

  (*(v13 + 32))(v19, v15, v12);
  (*(v6 + 104))(v8, enum case for OfferButtonSubtitlePosition.below(_:), v5);
  (*(v6 + 56))(v33, 1, 1, v5);
  sub_100140F54();
  AccessibilityConditional.init(value:axValue:)();
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  v24 = v23;
  v26 = v25;
  (*(v31 + 8))(v11, v32);
  (*(v13 + 8))(v19, v12);
  v27 = [v1 layer];
  v28 = v27;
  if (v24 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  [v27 setCornerRadius:v29 * 0.5];
}

char *sub_100643CF0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  type metadata accessor for ArtworkView();
  v12 = static ArtworkView.iconArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  type metadata accessor for Placeholder();
  v14 = static Placeholder.headingTitleText.getter();
  v16 = sub_10025084C(v14, v15, UIFontTextStyleFootnote);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v18 = static Placeholder.titleText.getter();
  v20 = sub_10025084C(v18, v19, UIFontTextStyleBody);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder]];

  return v26;
}

uint64_t sub_100643F28@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D3ED0, v101);
  v71 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder);
  [v71 sizeThatFits:{0.0, 0.0}];
  v101[34] = v3;
  v101[35] = v4;
  v102 = 0;
  sub_10003B8E8(v101, v100);
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder);
  v99 = &protocol witness table for UIView;
  v98 = type metadata accessor for ArtworkView();
  v97[0] = v5;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder);
  v94 = &protocol witness table for UILabel;
  v93 = sub_100005744(0, &qword_100986BF0);
  v92[0] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder);
  v91[4] = &protocol witness table for UILabel;
  v91[3] = v93;
  v91[0] = v7;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v90 = &protocol witness table for UILabel;
  v89 = v93;
  v88[0] = [v8 init];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v72 = sub_100005744(0, &qword_100972EB0);
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_1006455F4();
  v12 = swift_allocObject();
  *a1 = v12;
  sub_10003B8E8(v100, v79);
  BYTE8(v79[47]) = 0;
  v13 = v98;
  v14 = v99;
  sub_10002A400(v97, v98);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v71 = v71;
  LayoutView.nilIfHidden()();
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v13;
    v78 = v14;
    v20 = sub_1000056E0(&v76);
    (*(v19 + 32))(v20, v18, v13);
  }

  *(&v79[22] + 8) = v76;
  *(&v79[23] + 8) = v77;
  *(&v79[24] + 1) = v78;
  sub_100645648(v95, v73);
  v21 = v74;
  if (v74)
  {
    v22 = v75;
    sub_10002A400(v73, v74);
    v23 = type metadata accessor for Optional();
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v70 - v25;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v27 = *(v21 - 8);
    if ((*(v27 + 48))(v26, 1, v21) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v21;
      v78 = v22;
      v28 = sub_1000056E0(&v76);
      (*(v27 + 32))(v28, v26, v21);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[25] = v76;
  v79[26] = v77;
  *&v79[27] = v78;
  sub_100645648(v92, v73);
  v29 = v74;
  if (v74)
  {
    v30 = v75;
    sub_10002A400(v73, v74);
    v31 = type metadata accessor for Optional();
    v32 = *(v31 - 8);
    __chkstk_darwin(v31);
    v34 = &v70 - v33;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v35 = *(v29 - 8);
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v32 + 8))(v34, v31);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v29;
      v78 = v30;
      v36 = sub_1000056E0(&v76);
      (*(v35 + 32))(v36, v34, v29);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[27] + 8) = v76;
  *(&v79[28] + 8) = v77;
  *(&v79[29] + 1) = v78;
  sub_10002C0AC(v91, &v79[30]);
  v37 = v89;
  v38 = v90;
  sub_10002A400(v88, v89);
  v39 = type metadata accessor for Optional();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v70 - v41;
  LayoutTextView.nilIfHiddenOrHasNoContent()();
  v43 = *(v37 - 8);
  if ((*(v43 + 48))(v42, 1, v37) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v37;
    v78 = v38;
    v44 = sub_1000056E0(&v76);
    (*(v43 + 32))(v44, v42, v37);
  }

  *(&v79[32] + 8) = v76;
  *(&v79[33] + 8) = v77;
  *(&v79[34] + 1) = v78;
  sub_100645648(v86, v73);
  v45 = v74;
  if (v74)
  {
    v46 = v75;
    sub_10002A400(v73, v74);
    v47 = type metadata accessor for Optional();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v70 - v49;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v51 = *(v45 - 8);
    if ((*(v51 + 48))(v50, 1, v45) == 1)
    {
      (*(v48 + 8))(v50, v47);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v45;
      v78 = v46;
      v52 = sub_1000056E0(&v76);
      (*(v51 + 32))(v52, v50, v45);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[35] = v76;
  v79[36] = v77;
  *&v79[37] = v78;
  sub_100645648(v84, &v79[37] + 8);
  sub_100645648(v82, v73);
  v53 = v74;
  if (v74)
  {
    v54 = v75;
    sub_10002A400(v73, v74);
    v55 = type metadata accessor for Optional();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v70 - v57;
    LayoutTextView.nilIfHasNoContent()();
    v59 = *(v53 - 8);
    if ((*(v59 + 48))(v58, 1, v53) == 1)
    {
      (*(v56 + 8))(v58, v55);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v53;
      v78 = v54;
      v60 = sub_1000056E0(&v76);
      (*(v59 + 32))(v60, v58, v53);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[40] = v76;
  v79[41] = v77;
  *&v79[42] = v78;
  sub_100645648(v80, v73);
  v61 = v74;
  if (v74)
  {
    v62 = v75;
    sub_10002A400(v73, v74);
    v63 = type metadata accessor for Optional();
    v64 = *(v63 - 8);
    __chkstk_darwin(v63);
    v66 = &v70 - v65;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      sub_1006456B8(v80);
      sub_1006456B8(v82);
      sub_1006456B8(v86);
      sub_1006456B8(v95);
      sub_10003B944(v100);
      sub_100007000(v91);
      sub_1006456B8(v92);
      sub_1006456B8(v84);
      (*(v64 + 8))(v66, v63);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v61;
      v78 = v62;
      v68 = sub_1000056E0(&v76);
      (*(v67 + 32))(v68, v66, v61);
      sub_1006456B8(v80);
      sub_1006456B8(v82);
      sub_1006456B8(v86);
      sub_1006456B8(v95);
      sub_10003B944(v100);
      sub_100007000(v91);
      sub_1006456B8(v92);
      sub_1006456B8(v84);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v80);
    sub_1006456B8(v82);
    sub_1006456B8(v86);
    sub_1006456B8(v95);
    sub_10003B944(v100);
    sub_100007000(v91);
    sub_1006456B8(v92);
    sub_1006456B8(v84);
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[42] + 8) = v76;
  *(&v79[43] + 8) = v77;
  *(&v79[44] + 1) = v78;
  *&v79[45] = v71;
  *(&v79[45] + 8) = v76;
  *(&v79[46] + 1) = v72;
  *&v79[47] = &protocol witness table for UIView;
  memcpy((v12 + 16), v79, 0x2F9uLL);
  sub_10003B944(v101);
  sub_100007000(v88);
  return sub_100007000(v97);
}

double sub_100644F2C(double a1)
{
  v3 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v20[-v8 - 8];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  v10 = [v1 traitCollection];
  [v1 layoutMargins];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v11 = &xmmword_1009D4040;
  }

  else
  {
    v11 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v11, v20);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v12 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v12 = qword_100991028;
  }

  v13 = sub_1000056A8(v3, v12);
  (*(v4 + 16))(v6, v13, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v15 = v14;
    OfferButtonMetrics.minimumSize.getter();
    v21 = v15;
    v22 = v16;
    v23 = 0;
  }

  v17 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, v10, a1);

  (*(v4 + 8))(v9, v3);
  sub_10003B944(v20);
  return v17;
}

double sub_100645224()
{
  v1 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = type metadata accessor for OfferButtonSubtitlePosition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_1009701A0);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v19 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100991028;
  }

  v20 = sub_1000056A8(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_100140F54();
  AccessibilityConditional.init(value:axValue:)();
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

unint64_t sub_1006455F4()
{
  result = qword_100990508;
  if (!qword_100990508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990508);
  }

  return result;
}

uint64_t sub_100645648(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097E890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006456B8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097E890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100645720()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.iconArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  type metadata accessor for Placeholder();
  v5 = static Placeholder.headingTitleText.getter();
  v7 = sub_10025084C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v9 = static Placeholder.titleText.getter();
  v11 = sub_10025084C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006458EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, __n128)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(void, __n128)@<X6>, uint64_t a8@<X8>)
{
  v226 = a7;
  v222 = a6;
  v223 = a2;
  v228 = a8;
  v216 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v216);
  v206 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v199 = &v183 - v15;
  v16 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v214 = *(v16 - 8);
  v215 = v16;
  __chkstk_darwin(v16);
  v221 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v211 = &v183 - v19;
  v20 = sub_10002849C(&qword_1009794E0);
  __chkstk_darwin(v20 - 8);
  v220 = &v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v219 = &v183 - v23;
  __chkstk_darwin(v24);
  v210 = &v183 - v25;
  __chkstk_darwin(v26);
  v209 = &v183 - v27;
  v28 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v28 - 8);
  v205 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v204 = &v183 - v31;
  __chkstk_darwin(v32);
  v198 = &v183 - v33;
  __chkstk_darwin(v34);
  v197 = &v183 - v35;
  v36 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v212 = *(v36 - 8);
  __chkstk_darwin(v36);
  v203 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v202 = &v183 - v39;
  __chkstk_darwin(v40);
  v201 = &v183 - v41;
  __chkstk_darwin(v42);
  v218 = (&v183 - v43);
  __chkstk_darwin(v44);
  v196 = &v183 - v45;
  __chkstk_darwin(v46);
  v195 = &v183 - v47;
  __chkstk_darwin(v48);
  v194 = &v183 - v49;
  __chkstk_darwin(v50);
  v208 = (&v183 - v51);
  v52 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v52 - 8);
  v185 = &v183 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v187 = &v183 - v55;
  __chkstk_darwin(v56);
  v190 = &v183 - v57;
  __chkstk_darwin(v58);
  v193 = &v183 - v59;
  __chkstk_darwin(v60);
  v192 = &v183 - v61;
  __chkstk_darwin(v62);
  v186 = &v183 - v63;
  __chkstk_darwin(v64);
  v189 = &v183 - v65;
  __chkstk_darwin(v66);
  v188 = &v183 - v67;
  __chkstk_darwin(v68);
  v191 = &v183 - v69;
  __chkstk_darwin(v70);
  v217 = &v183 - v71;
  __chkstk_darwin(v72);
  v207 = &v183 - v73;
  v74 = type metadata accessor for ShelfBackground();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v183 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v78);
  v81 = &v183 - v80;
  v224 = v8;
  a3(0, v79);
  v225 = a4;
  v227 = a5;
  v82 = a5;
  v83 = v222;
  sub_10064889C(a4, v82);
  v84 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v85 = 0;
  if (v84)
  {
    v85 = dispatch thunk of ShelfPresenter.shelf(for:)();
  }

  v229 = v85;
  v213 = v36;
  dispatch thunk of ShelfPresenter.eyebrow(for:)();
  v87 = v86;
  if (v86)
  {
  }

  v200 = v87;
  dispatch thunk of ShelfPresenter.subtitle(for:)();
  v89 = v88;
  if (v88)
  {
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  (*(v75 + 104))(v77, enum case for ShelfBackground.interactive(_:), v74);
  v90 = static ShelfBackground.== infix(_:_:)();
  v91 = *(v75 + 8);
  v91(v77, v74);
  v91(v81, v74);
  v92 = v223;
  v94 = v225;
  v93 = v226;
  v95 = v227;
  v96 = v83;
  v97 = sub_100647550(a1, v223, v226, v225, v227);
  v98 = sub_100647324(a1, v92, v93, v94, v95, v96);
  if (v90)
  {
    sub_1001EE328(v89 != 0, v228);
  }

  v100 = v89;
  v184 = v89;
  if (v97)
  {
    if (v229)
    {

      v101 = Shelf.header.getter();

      v102 = v201;
      v103 = v217;
      if (v101)
      {
        ShelfHeader.configuration.getter();

        v104 = 0;
      }

      else
      {
        v104 = 1;
      }
    }

    else
    {
      v104 = 1;
      v102 = v201;
      v103 = v217;
    }

    v109 = type metadata accessor for ShelfHeader.Configuration();
    v110 = *(v109 - 8);
    (*(v110 + 56))(v103, v104, 1, v109);
    v111 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v226 = *(v111 - 1);
    (*(v226 + 7))(v219, 1, 1, v111);
    v227 = v111;
    if (v100)
    {
      v112 = (v110 + 48);
      if (v97 == 1)
      {
        v113 = v192;
        sub_100031660(v103, v192, &unk_100984380);
        if ((*v112)(v113, 1, v109) == 1)
        {
          sub_10002B894(v113, &unk_100984380);
          v114 = 0;
        }

        else
        {
          v114 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v110 + 8))(v113, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_100512504(v114, v218);

        if (qword_10096E7C0 != -1)
        {
          swift_once();
        }

        v124 = qword_1009D27A8;
      }

      else
      {
        v117 = v193;
        sub_100031660(v103, v193, &unk_100984380);
        if ((*v112)(v117, 1, v109) == 1)
        {
          sub_10002B894(v117, &unk_100984380);
          v118 = 0;
        }

        else
        {
          v118 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v110 + 8))(v117, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_100512504(v118, v218);

        if (qword_10096E7B0 != -1)
        {
          swift_once();
        }

        v124 = qword_1009D2778;
      }

      v125 = sub_1000056A8(v122, v124);
      sub_1003FAE20(v125, v102, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v126 = 0;
      v127 = qword_1009D26B8;
      v128 = v123;
    }

    else
    {
      if (v97 == 1)
      {
        v115 = v190;
        sub_100031660(v103, v190, &unk_100984380);
        if ((*(v110 + 48))(v115, 1, v109) == 1)
        {
          sub_10002B894(v115, &unk_100984380);
          v116 = 0;
        }

        else
        {
          v116 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v110 + 8))(v115, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_100512504(v116, v218);

        if (qword_10096E7B8 != -1)
        {
          swift_once();
        }

        v126 = 1;
        v127 = qword_1009D2790;
      }

      else
      {
        v119 = (v110 + 48);
        if (v200)
        {
          v120 = v187;
          sub_100031660(v103, v187, &unk_100984380);
          if ((*v119)(v120, 1, v109) == 1)
          {
            sub_10002B894(v120, &unk_100984380);
            v121 = 0;
          }

          else
          {
            v121 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v110 + 8))(v120, v109);
          }

          v122 = v213;
          v123 = v204;
          sub_10051250C(v121, v218);

          if (qword_10096E7A8 != -1)
          {
            swift_once();
          }

          v126 = 1;
          v127 = qword_1009D2760;
        }

        else
        {
          v144 = v185;
          sub_100031660(v103, v185, &unk_100984380);
          if ((*v119)(v144, 1, v109) == 1)
          {
            sub_10002B894(v144, &unk_100984380);
            v145 = 0;
          }

          else
          {
            v145 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v110 + 8))(v144, v109);
          }

          v122 = v213;
          v123 = v204;
          sub_100512504(v145, v218);

          if (qword_10096E7A0 != -1)
          {
            swift_once();
          }

          v126 = 1;
          v127 = qword_1009D2748;
        }
      }

      v128 = v102;
    }

    LODWORD(v225) = v100 != 0;
    v166 = sub_1000056A8(v122, v127);
    sub_1003FAE20(v166, v128, type metadata accessor for TitleHeaderView.TextConfiguration);
    (*(v212 + 56))(v123, v126, 1, v122);
    v167 = v218;
    v168 = v202;
    sub_1003FAE20(v218, v202, type metadata accessor for TitleHeaderView.TextConfiguration);
    v169 = v203;
    sub_1003FAE20(v102, v203, type metadata accessor for TitleHeaderView.TextConfiguration);
    v170 = v102;
    v171 = v205;
    sub_100031660(v123, v205, &qword_1009794E8);
    v172 = v219;
    sub_100031660(v219, v220, &qword_1009794E0);
    v174 = v214;
    v173 = v215;
    (*(v214 + 104))(v221, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v215);
    sub_100028BB8();
    v175 = static UIColor.defaultLine.getter();

    sub_10002B894(v172, &qword_1009794E0);
    sub_10002B894(v123, &qword_1009794E8);
    sub_1001EFF9C(v170);
    sub_1001EFF9C(v167);
    sub_10002B894(v217, &unk_100984380);
    v176 = v216;
    v177 = *(v216 + 32);
    v178 = v168;
    v161 = v206;
    sub_1001EFEC4(v178, v206, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFEC4(v169, v161 + v176[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFE54(v171, v161 + v176[6]);
    *(v161 + v176[7]) = 0;
    *(v161 + v177) = 0;
    *(v161 + v176[9]) = v225;
    *(v161 + v176[14]) = 0x4030000000000000;
    *(v161 + v176[12]) = 0;
    *(v161 + v176[13]) = v175;
    v179 = v220;
    (*(v174 + 32))(v161 + v176[11], v221, v173);
    v181 = v226;
    v180 = v227;
    if ((*(v226 + 6))(v179, 1, v227) == 1)
    {
      sub_10002B894(v179, &qword_1009794E0);
      if (v184)
      {
        v182 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v182 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v181 + 13))(v161 + v176[10], *v182, v180);
    }

    else
    {
      (*(v181 + 4))(v161 + v176[10], v179, v180);
    }

    return sub_1001EFEC4(v161, v228, type metadata accessor for TitleHeaderView.Style);
  }

  LODWORD(v227) = v98;
  if (v229)
  {

    v105 = Shelf.header.getter();

    v106 = v194;
    v107 = v207;
    if (v105)
    {
      ShelfHeader.configuration.getter();

      v108 = 0;
    }

    else
    {
      v108 = 1;
    }
  }

  else
  {
    v108 = 1;
    v106 = v194;
    v107 = v207;
  }

  v129 = type metadata accessor for ShelfHeader.Configuration();
  v130 = *(v129 - 8);
  (*(v130 + 56))(v107, v108, 1, v129);
  v131 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v225 = *(v131 - 1);
  v226 = v131;
  (v225[7])(v209, 1, 1);
  v132 = (v130 + 48);
  if (v200)
  {
    if (v100)
    {
      v133 = v191;
      sub_100031660(v107, v191, &unk_100984380);
      if ((*v132)(v133, 1, v129) == 1)
      {
        sub_10002B894(v133, &unk_100984380);
        v134 = 0;
      }

      else
      {
        v134 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v130 + 8))(v133, v129);
      }

      v139 = v213;
      v140 = v197;
      sub_100512504(v134, v208);

      if (qword_10096E798 != -1)
      {
        swift_once();
      }

      v141 = qword_1009D2730;
LABEL_68:
      v146 = sub_1000056A8(v139, v141);
      sub_1003FAE20(v146, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v147 = 0;
      v148 = qword_1009D26B8;
      v149 = v140;
      goto LABEL_84;
    }

    v137 = v188;
    sub_100031660(v107, v188, &unk_100984380);
    if ((*v132)(v137, 1, v129) == 1)
    {
      sub_10002B894(v137, &unk_100984380);
      v138 = 0;
    }

    else
    {
      v138 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v130 + 8))(v137, v129);
    }

    v139 = v213;
    v140 = v197;
    sub_100512504(v138, v208);

    if (qword_10096E780 != -1)
    {
      swift_once();
    }

    v147 = 1;
    v148 = qword_1009D26E8;
  }

  else
  {
    if (v100)
    {
      v135 = v189;
      sub_100031660(v107, v189, &unk_100984380);
      if ((*v132)(v135, 1, v129) == 1)
      {
        sub_10002B894(v135, &unk_100984380);
        v136 = 0;
      }

      else
      {
        v136 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v130 + 8))(v135, v129);
      }

      v139 = v213;
      v140 = v197;
      sub_100512504(v136, v208);

      if (qword_10096E790 != -1)
      {
        swift_once();
      }

      v141 = qword_1009D2718;
      goto LABEL_68;
    }

    v142 = v186;
    sub_100031660(v107, v186, &unk_100984380);
    if ((*v132)(v142, 1, v129) == 1)
    {
      sub_10002B894(v142, &unk_100984380);
      v143 = 0;
    }

    else
    {
      v143 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v130 + 8))(v142, v129);
    }

    v139 = v213;
    v140 = v197;
    sub_100512504(v143, v208);

    if (qword_10096E778 != -1)
    {
      swift_once();
    }

    v147 = 1;
    v148 = qword_1009D26D0;
  }

  v149 = v106;
LABEL_84:
  LODWORD(v224) = v100 != 0;
  v150 = sub_1000056A8(v139, v148);
  sub_1003FAE20(v150, v149, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v212 + 56))(v140, v147, 1, v139);
  v151 = v208;
  v152 = v195;
  sub_1003FAE20(v208, v195, type metadata accessor for TitleHeaderView.TextConfiguration);
  v153 = v196;
  sub_1003FAE20(v106, v196, type metadata accessor for TitleHeaderView.TextConfiguration);
  v154 = v198;
  sub_100031660(v140, v198, &qword_1009794E8);
  v155 = v209;
  sub_100031660(v209, v210, &qword_1009794E0);
  v156 = v214;
  v157 = v215;
  (*(v214 + 104))(v211, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v215);
  sub_100028BB8();
  v223 = static UIColor.defaultLine.getter();

  sub_10002B894(v155, &qword_1009794E0);
  sub_10002B894(v140, &qword_1009794E8);
  sub_1001EFF9C(v106);
  sub_1001EFF9C(v151);
  sub_10002B894(v207, &unk_100984380);
  v158 = v216;
  v159 = *(v216 + 32);
  v160 = v152;
  v161 = v199;
  sub_1001EFEC4(v160, v199, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v153, v161 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v154, v161 + v158[6]);
  *(v161 + v158[7]) = v227 & 1;
  *(v161 + v159) = 0;
  *(v161 + v158[9]) = v224;
  *(v161 + v158[14]) = 0x4030000000000000;
  *(v161 + v158[12]) = 0;
  *(v161 + v158[13]) = v223;
  v162 = v210;
  (*(v156 + 32))(v161 + v158[11], v211, v157);
  v164 = v225;
  v163 = v226;
  if ((v225[6])(v162, 1, v226) == 1)
  {
    sub_10002B894(v162, &qword_1009794E0);
    if (v184)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (v164[13])(v161 + v158[10], *v165, v163);
  }

  else
  {
    (v164[4])(v161 + v158[10], v162, v163);
  }

  return sub_1001EFEC4(v161, v228, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1006472CC()
{

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100647324(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25[0] = a2;
  v25[1] = a6;
  v10 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = type metadata accessor for Shelf.ContentType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v15);
  sub_10064889C(a4, a5);
  v18 = a1;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v19 = sub_1005D8420();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    if (v18 < 1)
    {
      v22 = 1;
    }

    else
    {
      dispatch thunk of ShelfPresenter.contentType(for:)();
      v22 = 0;
    }

    (*(v14 + 56))(v12, v22, 1, v13);
    v23 = (*(v21 + 96))(v12, v25[0], v19, v21);
    sub_10002B894(v12, &unk_100992460);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_100647550(uint64_t a1, void *a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v68 = a2;
  v9 = sub_10002849C(&qword_10098CB20);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = type metadata accessor for ShelfBackground();
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v72 = &v61 - v17;
  v21 = __chkstk_darwin(v18);
  v71 = &v61 - v22;
  if (a1 >= 1)
  {
    v65 = v20;
    v66 = v19;
    a3(0, v21);
    sub_10064889C(a4, a5);
    if (dispatch thunk of ShelfPresenter.sectionCount.getter() >= 1)
    {
      v23 = v71;
      dispatch thunk of ShelfPresenter.background(for:)();
      v24 = v72;
      dispatch thunk of ShelfPresenter.background(for:)();
      v25 = v23;
      v26 = *(v9 + 48);
      v28 = v69;
      v27 = v70;
      v29 = v69[2];
      v29(v70, v25, v11);
      v67 = v26;
      v29((v27 + v26), v24, v11);
      v30 = v28[11];
      v31 = v30(v27, v11);
      if (v31 == enum case for ShelfBackground.color(_:))
      {
        v32 = v31;
        v33 = v66;
        v29(v66, v27, v11);
        v62 = v28[12];
        v62(v33, v11);
        v63 = *v33;
        v61 = sub_10002849C(&qword_100972A40);
        v64 = *(v61 + 48);
        if (v30(v27 + v67, v11) == v32)
        {
          v34 = v65;
          v29(v65, &v70[v67], v11);
          v62(v34, v11);
          v35 = *v34;
          v62 = *(v61 + 48);
          v36 = v68;
          v37 = [v68 traitCollection];
          v38 = v63;
          v39 = [v63 resolvedColorWithTraitCollection:v37];

          v40 = [v36 traitCollection];
          v41 = [v35 resolvedColorWithTraitCollection:v40];

          sub_100028BB8();
          LOBYTE(v40) = static NSObject.== infix(_:_:)();

          v42 = v67;
          if ((v40 & 1) == 0)
          {
            v57 = v69[1];
            v57(v72, v11);
            v57(v71, v11);
            v58 = type metadata accessor for ShelfBackgroundStyle();
            v59 = *(*(v58 - 8) + 8);
            v59(v62 + v34, v58);
            v59(v66 + v64, v58);
            v60 = v70;
            v57(&v70[v42], v11);
            v57(v60, v11);
            return 2;
          }

          v43 = type metadata accessor for ShelfBackgroundStyle();
          v44 = *(*(v43 - 8) + 8);
          v44(v62 + v34, v43);
          v44(v66 + v64, v43);
        }

        else
        {
          v45 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v45 - 8) + 8))(v33 + v64, v45);
        }

        v28 = v69;
        v27 = v70;
      }

      v46 = enum case for ShelfBackground.none(_:);
      v47 = v28[13];
      v47(v13, enum case for ShelfBackground.none(_:), v11);
      v48 = sub_10064889C(&qword_100981230, &type metadata accessor for ShelfBackground);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = v28[1];
      v50(v13, v11);
      if ((v49 & 1) == 0)
      {
        v47(v13, v46, v11);
        v51 = static ShelfBackground.== infix(_:_:)();
        v50(v13, v11);
        if (v51)
        {
          v50(v72, v11);
          v50(v71, v11);
LABEL_14:
          v50((v27 + v67), v11);
          v50(v27, v11);
          return 2;
        }
      }

      v69 = v48;
      v47(v13, v46, v11);
      v52 = v71;
      v53 = static ShelfBackground.== infix(_:_:)();
      v50(v13, v11);
      if (v53)
      {
        v47(v13, v46, v11);
        v54 = v72;
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50(v13, v11);
        v50(v54, v11);
        v50(v52, v11);
        if ((v55 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v50(v72, v11);
        v50(v52, v11);
      }

      sub_10002B894(v27, &qword_10098CB20);
    }
  }

  return 0;
}

BOOL sub_100647DB4(uint64_t a1, void (*a2)(void, __n128), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  a2(0, v12);
  sub_10064889C(a3, a4);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  (*(v8 + 32))(v10, v14, v7);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v16 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v15 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v16 = type metadata accessor for InformationRibbonCollectionViewCell();
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v16 = 0;
  }

  return v16 != 0;
}

uint64_t sub_100647F78@<X0>(uint64_t a1@<X8>)
{
  v52 = type metadata accessor for IndexPath();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Shelf.ContentType();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v33 - v8;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v50 = &v33 - v13;
  v14 = type metadata accessor for GenericPagePresenter();
  v42 = sub_10064889C(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
  v43 = v14;
  result = dispatch thunk of ShelfPresenter.sectionCount.getter();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v47 = v11;
      v36 = a1;
      v16 = 0;
      v46 = enum case for Shelf.ContentType.privacyType(_:);
      v45 = (v5 + 104);
      v48 = (v5 + 8);
      v39 = (v5 + 32);
      v38 = (v5 + 88);
      v37 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
      v34 = enum case for Shelf.ContentType.informationRibbon(_:);
      v35 = v2;
      v17 = (v2 + 8);
      v49 = result;
      v44 = v4;
      while (1)
      {
        if (dispatch thunk of BaseShelfPresenter.doesShelfExist(for:)())
        {
          dispatch thunk of BaseShelfPresenter.contentType(for:)();
          v18 = v47;
          (*v45)(v47, v46, v51);
          sub_10064889C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v53 == v55 && v54 == v56)
          {
            v19 = 1;
          }

          else
          {
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v20 = *v48;
          v21 = v18;
          v22 = v51;
          (*v48)(v21, v51);
          v20(v50, v22);

          v23 = v44;
          if ((v19 & 1) != 0 && v16 < dispatch thunk of ShelfPresenter.sectionCount.getter() && (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) == 0)
          {
            v33 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
            v24 = v40;
            dispatch thunk of ShelfPresenter.contentType(for:)();
            v25 = v41;
            v26 = v24;
            v27 = v51;
            (*v39)(v41, v26, v51);
            v28 = (*v38)(v25, v27);
            v29 = 1;
            if (v28 == v37 || v28 == v34)
            {
              break;
            }

            result = (v20)(v41, v51);
            if (v33 < 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v29 = v33;
            if (v33)
            {
              break;
            }
          }
        }

LABEL_4:
        if (++v16 == v49)
        {
          v32 = 1;
          a1 = v36;
          v2 = v35;
          return (*(v2 + 56))(a1, v32, 1, v52);
        }
      }

      v30 = 0;
      while (1)
      {
        IndexPath.init(item:section:)();
        dispatch thunk of BaseShelfPresenter.model(at:)();
        sub_10002849C(&qword_100973D50);
        type metadata accessor for PrivacyType();
        if (swift_dynamicCast())
        {
          v31 = PrivacyType.wantsScrollFocus.getter();

          if (v31)
          {
            break;
          }
        }

        (*v17)(v23, v52);
        if (v29 == ++v30)
        {
          goto LABEL_4;
        }
      }

      v2 = v35;
      a1 = v36;
      (*(v35 + 32))(v36, v23, v52);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    return (*(v2 + 56))(a1, v32, 1, v52);
  }

  return result;
}
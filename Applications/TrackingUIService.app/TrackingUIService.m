void sub_1000017D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_100001A28()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100001A84()
{
  result = qword_100011688;
  if (!qword_100011688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011688);
  }

  return result;
}

void sub_100001C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v3[OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView];
  [v6 setImage:a1];
  [v6 setTintColor:a2];
  [v6 setContentMode:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 _setContinuousCornerRadius:1.0];
  [v6 setClipsToBounds:1];
  [v3 addSubview:v6];
  v7 = objc_opt_self();
  sub_100001F7C(&qword_100011790, &unk_1000069B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100006900;
  v9 = [v6 centerXAnchor];
  v10 = [v3 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = [v6 centerYAnchor];
  v13 = [v3 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v8 + 40) = v14;
  v15 = [v6 heightAnchor];
  v16 = [v15 constraintEqualToConstant:*(&xmmword_1000116F0 + 1)];

  *(v8 + 48) = v16;
  v17 = [v6 widthAnchor];
  v18 = [v17 constraintEqualToConstant:*&xmmword_1000116F0];

  *(v8 + 56) = v18;
  sub_100001FC4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];
}

uint64_t sub_100001F7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001FC4()
{
  result = qword_100011798;
  if (!qword_100011798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011798);
  }

  return result;
}

void sub_1000021B4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TrackingActivitySystemApertureElementViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_expandedView];
  v2 = *&v0[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_dockCoreManager];
  swift_unknownObjectWeakAssign();
  [*&v0[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_recordingIconView] setHidden:1];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview:v1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100002300(void *a1)
{
  v3 = sub_10000240C(*(v1 + OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_activeLayoutMode));
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v7[4] = sub_100003EF0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100002CB8;
  v7[3] = &unk_10000C568;
  v6 = _Block_copy(v7);

  [a1 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

void *sub_10000240C(uint64_t a1)
{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 4:
        v21 = [v1 view];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 window];

          if (v23)
          {

            v24 = [v1 view];
            if (!v24)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v25 = v24;
            v26 = [v24 widthAnchor];

            v27 = [v1 view];
            if (!v27)
            {
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v28 = v27;
            v29 = [v27 window];

            if (!v29)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v30 = [v29 widthAnchor];

            v31 = [v26 constraintEqualToAnchor:v30];
          }

          else
          {
            v37 = [v1 view];
            if (!v37)
            {
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v38 = v37;
            v30 = [v37 widthAnchor];

            v39 = [objc_opt_self() mainScreen];
            [v39 nativeBounds];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;

            v71.origin.x = v41;
            v71.origin.y = v43;
            v71.size.width = v45;
            v71.size.height = v47;
            v31 = [v30 constraintEqualToConstant:CGRectGetWidth(v71)];
          }

          sub_100001F7C(&qword_100011790, &unk_1000069B0);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_100006940;
          *(v2 + 32) = v31;
          v48 = *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_expandedView];
          v49 = v31;
          v50 = [v48 topAnchor];
          v51 = [v1 view];
          if (v51)
          {
            v52 = v51;
            v53 = [v51 topAnchor];

            v54 = [v50 constraintEqualToAnchor:v53];
            *(v2 + 40) = v54;
            v55 = [v48 bottomAnchor];
            v56 = [v1 view];
            if (v56)
            {
              v57 = v56;
              v58 = [v56 bottomAnchor];

              v59 = [v55 constraintEqualToAnchor:v58];
              *(v2 + 48) = v59;
              v60 = [v48 leadingAnchor];
              v61 = [v1 view];
              if (v61)
              {
                v62 = v61;
                v63 = [v61 leadingAnchor];

                v64 = [v60 constraintEqualToAnchor:v63];
                *(v2 + 56) = v64;
                v65 = [v48 trailingAnchor];
                v66 = [v1 view];
                if (v66)
                {
                  v67 = v66;
                  v68 = [v66 trailingAnchor];

                  v69 = [v65 constraintEqualToAnchor:v68];
                  *(v2 + 64) = v69;

                  return v2;
                }

                goto LABEL_31;
              }

LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        __break(1u);
        break;
      case 3:
        sub_100001F7C(&qword_100011790, &unk_1000069B0);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_100006900;
        v3 = *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_dockKitIconView];
        v4 = [v3 centerXAnchor];
        v5 = [v1 view];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

          v8 = [v7 centerXAnchor];
          v9 = [v4 constraintEqualToAnchor:v8];

          *(v2 + 32) = v9;
          v10 = [v3 widthAnchor];
          v11 = [v10 constraintEqualToConstant:22.0];

          *(v2 + 40) = v11;
          v12 = *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_recordingIconView];
          v13 = [v12 widthAnchor];
          v14 = [v13 constraintEqualToConstant:14.0];

          *(v2 + 48) = v14;
          v15 = [v12 centerXAnchor];
          v16 = [v1 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

            v19 = [v18 centerXAnchor];
            v20 = [v15 constraintEqualToAnchor:v19];

            *(v2 + 56) = v20;
            return v2;
          }

          goto LABEL_27;
        }

        break;
      case 2:
        sub_100001F7C(&qword_100011790, &unk_1000069B0);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_100006950;
        v32 = *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_minimalApertureView];
        v33 = [v32 heightAnchor];
        v34 = [v33 constraintEqualToConstant:22.0];

        *(v2 + 32) = v34;
        v35 = [v32 widthAnchor];
        v36 = [v35 constraintEqualToConstant:22.0];

        *(v2 + 40) = v36;
        return v2;
      default:
        goto LABEL_36;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((a1 + 1) < 3)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_36:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100002B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = objc_opt_self();
    v7 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_activeConstraints;
    v8 = *&v5[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_activeConstraints];
    sub_100003F10(0, &qword_100011798, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 deactivateConstraints:isa];

    v10 = *&v5[v7];
    *&v5[v7] = a3;

    v11 = *&v5[v7];

    v12 = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints:v12];
  }
}

uint64_t sub_100002CB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100002D80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_maximumLayoutMode] = 4;
  v6 = &v3[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_associatedScenePersistenceIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_preferredHeightForBottomSafeArea] = 0x4049000000000000;
  *&v3[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_activeConstraints] = &_swiftEmptyArrayStorage;
  sub_100001F7C(&qword_100011790, &unk_1000069B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100006950;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 labelColor];
  *(v7 + 40) = [v8 systemGreenColor];
  sub_100003F10(0, &qword_100011898, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 configurationWithPaletteColors:isa];

  v12 = String._bridgeToObjectiveC()();
  v13 = objc_opt_self();
  v14 = [v13 systemImageNamed:v12 withConfiguration:v11];

  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v56 = a2;
  v58 = v10;
  v15 = [v10 configurationWithWeight:7];
  v16 = [v14 imageByApplyingSymbolConfiguration:v15];

  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_dockKitIconView;
  v18 = [v8 systemGreenColor];
  v19 = type metadata accessor for SystemApertureIconView();
  v20 = objc_allocWithZone(v19);
  v21 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *&v20[v21] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v62.receiver = v20;
  v62.super_class = v19;
  v22 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  __asm { FMOV            V0.2D, #22.0 }

  v55 = _Q0;
  xmmword_1000116F0 = _Q0;
  v28 = v22;
  sub_100001C14(v16, v18);

  *&v4[v17] = v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v13 systemImageNamed:v29];

  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_recordingIconView;
  v32 = [v8 systemGreenColor];
  v33 = objc_allocWithZone(v19);
  v34 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *&v33[v34] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v61.receiver = v33;
  v61.super_class = v19;
  v35 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  __asm { FMOV            V0.2D, #14.0 }

  xmmword_1000116F0 = _Q0;
  v37 = v35;
  sub_100001C14(v30, v32);

  *&v4[v31] = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100006950;
  *(v38 + 32) = [v8 labelColor];
  *(v38 + 40) = [v8 systemGreenColor];
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = [v58 configurationWithPaletteColors:v39];

  v41 = String._bridgeToObjectiveC()();
  v42 = [v13 systemImageNamed:v41 withConfiguration:v40];

  if (!v42)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v43 = [v58 configurationWithWeight:7];
  v44 = [v42 imageByApplyingSymbolConfiguration:v43];

  if (!v44)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v45 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_minimalApertureView;
  v46 = [v8 systemGreenColor];
  v47 = objc_allocWithZone(v19);
  v48 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *&v47[v48] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v60.receiver = v47;
  v60.super_class = v19;
  v49 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  xmmword_1000116F0 = v55;
  v50 = v49;
  sub_100001C14(v44, v46);

  *&v4[v45] = v50;
  v51 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_emptyApertureView;
  type metadata accessor for EmptyActivityAccessoryView();
  *&v4[v51] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v52 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_expandedView;
  type metadata accessor for ExpandedTrackingView();
  *&v4[v52] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v53 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_dockCoreManager;
  *&v4[v53] = [objc_allocWithZone(type metadata accessor for DockCoreManager()) init];
  if (v56)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  v59.receiver = v4;
  v59.super_class = type metadata accessor for TrackingActivitySystemApertureElementViewController();
  objc_msgSendSuper2(&v59, "initWithNibName:bundle:", v54, a3);
}

void sub_10000350C(void *a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_maximumLayoutMode] = 4;
  v4 = &v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_associatedScenePersistenceIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_preferredHeightForBottomSafeArea] = 0x4049000000000000;
  *&v1[OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_activeConstraints] = &_swiftEmptyArrayStorage;
  sub_100001F7C(&qword_100011790, &unk_1000069B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100006950;
  v6 = objc_opt_self();
  *(v5 + 32) = [v6 labelColor];
  *(v5 + 40) = [v6 systemGreenColor];
  sub_100003F10(0, &qword_100011898, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 configurationWithPaletteColors:isa];

  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed:v10 withConfiguration:v9];

  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v54 = a1;
  v55 = v8;
  v13 = [v8 configurationWithWeight:7];
  v14 = [v12 imageByApplyingSymbolConfiguration:v13];

  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_dockKitIconView;
  v16 = [v6 systemGreenColor];
  v17 = type metadata accessor for SystemApertureIconView();
  v18 = objc_allocWithZone(v17);
  v19 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *&v18[v19] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v59.receiver = v18;
  v59.super_class = v17;
  v20 = objc_msgSendSuper2(&v59, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  __asm { FMOV            V0.2D, #22.0 }

  v53 = _Q0;
  xmmword_1000116F0 = _Q0;
  v26 = v20;
  sub_100001C14(v14, v16);

  *&v2[v15] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v11 systemImageNamed:v27];

  if (!v28)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_recordingIconView;
  v30 = [v6 systemGreenColor];
  v31 = objc_allocWithZone(v17);
  v32 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *&v31[v32] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v58.receiver = v31;
  v58.super_class = v17;
  v33 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  __asm { FMOV            V0.2D, #14.0 }

  xmmword_1000116F0 = _Q0;
  v35 = v33;
  sub_100001C14(v28, v30);

  *&v2[v29] = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100006950;
  *(v36 + 32) = [v6 labelColor];
  *(v36 + 40) = [v6 systemGreenColor];
  v37 = Array._bridgeToObjectiveC()().super.isa;

  v38 = [v55 configurationWithPaletteColors:v37];

  v39 = String._bridgeToObjectiveC()();
  v40 = [v11 systemImageNamed:v39 withConfiguration:v38];

  if (!v40)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = [v55 configurationWithWeight:7];
  v42 = [v40 imageByApplyingSymbolConfiguration:v41];

  if (!v42)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v43 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_minimalApertureView;
  v44 = [v6 systemGreenColor];
  v45 = objc_allocWithZone(v17);
  v46 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *&v45[v46] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v57.receiver = v45;
  v57.super_class = v17;
  v47 = objc_msgSendSuper2(&v57, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  xmmword_1000116F0 = v53;
  v48 = v47;
  sub_100001C14(v42, v44);

  *&v2[v43] = v48;
  v49 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_emptyApertureView;
  type metadata accessor for EmptyActivityAccessoryView();
  *&v2[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_expandedView;
  type metadata accessor for ExpandedTrackingView();
  *&v2[v50] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v51 = OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_dockCoreManager;
  *&v2[v51] = [objc_allocWithZone(type metadata accessor for DockCoreManager()) init];
  v56.receiver = v2;
  v56.super_class = type metadata accessor for TrackingActivitySystemApertureElementViewController();
  v52 = objc_msgSendSuper2(&v56, "initWithCoder:", v54);

  if (v52)
  {
  }
}

id sub_100003C2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackingActivitySystemApertureElementViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrackingActivitySystemApertureElementViewController()
{
  result = qword_100011888;
  if (!qword_100011888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003DA8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100003E78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003EB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003F10(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100003F5C()
{
  v0 = sub_100001F7C(&qword_1000118A8, &qword_100006A18);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  WindowGroup.init(id:title:lazyContent:)();
  sub_100004140();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000040C0();
  static App.main()();
  return 0;
}

unint64_t sub_1000040C0()
{
  result = qword_1000118A0;
  if (!qword_1000118A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000118A0);
  }

  return result;
}

unint64_t sub_100004140()
{
  result = qword_1000118B0;
  if (!qword_1000118B0)
  {
    sub_1000041A4(&qword_1000118A8, &qword_100006A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000118B0);
  }

  return result;
}

uint64_t sub_1000041A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_100004328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100004380()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.9];

  qword_1000118C0 = v1;
}

id sub_100004444()
{
  v1 = OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate____lazy_storage___systemApertureElementProvider;
  v2 = *(v0 + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate____lazy_storage___systemApertureElementProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate____lazy_storage___systemApertureElementProvider);
  }

  else
  {
    type metadata accessor for TrackingActivitySystemApertureElementViewController();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t type metadata accessor for TrackingActivityPlatterSceneDelegate()
{
  result = qword_100011980;
  if (!qword_100011980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000046CC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100004768(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Scene will connect %@", v6, 0xCu);
    sub_100004A5C(v7);
  }

  type metadata accessor for ActivityScene();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v24 = v3;
    if ([v10 SBUI_isHostedBySystemAperture])
    {
      v11 = sub_100004444();
      [v10 setSystemApertureElementViewControllerProvider:v11];
    }

    else
    {
      v14 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      if (qword_100011630 != -1)
      {
        swift_once();
      }

      v15 = qword_1000118C0;
      dispatch thunk of ActivityScene.backgroundTintColor.setter();
      v16 = [objc_allocWithZone(type metadata accessor for ActivitySecureWindow()) initWithWindowScene:v10];

      v17 = OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window;
      v18 = *(v2 + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window) = v16;

      v19 = *(v2 + v17);
      if (v19)
      {
        v20 = v19;
        v21 = sub_100004444();
        [v20 setRootViewController:v21];

        v22 = *(v2 + v17);
        if (v22)
        {
          v23 = v22;
          [v23 makeKeyAndVisible];
        }
      }
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v24, v12, "Unable to connect to ActivityScene", v13, 2u);
    }
  }
}

uint64_t sub_100004A5C(uint64_t a1)
{
  v2 = sub_100001F7C(&unk_100011990, &unk_100006A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100004AC4()
{
  sub_100001F7C(&qword_100011790, &unk_1000069B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100006950;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 labelColor];
  *(v0 + 40) = [v1 systemGreenColor];
  sub_100003F10(0, &qword_100011898, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() configurationWithPaletteColors:isa];

  qword_100011A00 = v3;
}

id sub_100004BC0()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.211764706 green:0.270588235 blue:0.309803922 alpha:1.0];
  qword_100011A08 = result;
  return result;
}

id sub_100004C10(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_appIconImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_trackingLabelView;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_cancelButton;
  *&v4[v12] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  static UIButton.Configuration.filled()();
  swift_unknownObjectWeakInit();
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_100004D58();

  return v13;
}

void sub_100004D58()
{
  v1 = v0;
  v2 = (*(*(sub_100001F7C(&qword_100011A60, &unk_100006B00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v75 = &v69 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  __chkstk_darwin();
  v72 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v0[OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_appIconImageView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 _setContinuousCornerRadius:4.0];
  [v7 setClipsToBounds:1];
  if (qword_100011638 != -1)
  {
    swift_once();
  }

  v8 = qword_100011A00;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (v10)
  {
    [v7 setImage:v10];

    v11 = objc_opt_self();
    v12 = [v11 systemGreenColor];
    [v7 setTintColor:v12];

    [v1 addSubview:v7];
    v13 = *&v1[OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_trackingLabelView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v13];
    v70 = objc_opt_self();
    v14 = [v70 systemFontOfSize:18.0 weight:UIFontWeightMedium];
    [v13 setFont:v14];

    v15 = [v11 whiteColor];
    [v13 setTextColor:v15];

    v16 = objc_opt_self();
    v17 = [v16 mainBundle];
    v18._countAndFlagsBits = 0xD000000000000017;
    v76._object = 0x8000000100007870;
    v19._countAndFlagsBits = 0xD000000000000029;
    v19._object = 0x8000000100007820;
    v18._object = 0x8000000100007850;
    v76._countAndFlagsBits = 0xD00000000000003FLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v17, v18, v76);

    v20 = String._bridgeToObjectiveC()();

    v71 = v13;
    [v13 setText:v20];

    v21 = *&v1[OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_cancelButton];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v16 mainBundle];
    v77._object = 0x8000000100007910;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    v23._object = 0x80000001000078B0;
    v24._object = 0x80000001000078E0;
    v77._countAndFlagsBits = 0xD00000000000004DLL;
    v24._countAndFlagsBits = 0xD000000000000020;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v77);

    v25 = String._bridgeToObjectiveC()();

    [v21 setTitle:v25 forState:0];

    v26 = [v21 titleLabel];
    if (v26)
    {
      v27 = v26;
      v28 = [v70 systemFontOfSize:18.0 weight:UIFontWeightMedium];
      [v27 setFont:v28];
    }

    [v21 addTarget:v1 action:"cancel" forControlEvents:64];
    [v1 addSubview:v21];
    if (qword_100011640 != -1)
    {
      swift_once();
    }

    v29 = qword_100011A08;
    v30 = OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_cancelButtonConfiguration;
    swift_beginAccess();
    v31 = v29;
    UIButton.Configuration.baseBackgroundColor.setter();
    (*(v73 + 104))(v72, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v74);
    UIButton.Configuration.cornerStyle.setter();
    swift_endAccess();
    v32 = type metadata accessor for UIButton.Configuration();
    v33 = *(v32 - 8);
    v34 = &v1[v30];
    v35 = v75;
    (*(v33 + 16))(v75, v34, v32);
    (*(v33 + 56))(v35, 0, 1, v32);
    UIButton.configuration.setter();
    [v21 setContentVerticalAlignment:3];
    [v21 setContentHorizontalAlignment:3];
    v75 = objc_opt_self();
    sub_100001F7C(&qword_100011790, &unk_1000069B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100006AA0;
    v37 = [v7 leadingAnchor];
    v38 = [v1 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:25.0];

    *(v36 + 32) = v39;
    v40 = [v7 topAnchor];
    v41 = [v1 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:30.0];

    *(v36 + 40) = v42;
    v43 = [v7 widthAnchor];
    v44 = [v43 constraintEqualToConstant:51.0];

    *(v36 + 48) = v44;
    v45 = [v7 heightAnchor];
    v46 = [v45 constraintEqualToConstant:51.0];

    *(v36 + 56) = v46;
    v47 = [v7 bottomAnchor];
    v48 = [v21 topAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:-30.0];

    *(v36 + 64) = v49;
    v50 = v71;
    v51 = [v71 centerYAnchor];
    v52 = [v7 centerYAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v36 + 72) = v53;
    v54 = [v50 centerXAnchor];
    v55 = [v1 centerXAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v36 + 80) = v56;
    v57 = [v21 centerXAnchor];
    v58 = [v1 centerXAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v36 + 88) = v59;
    v60 = [v21 widthAnchor];
    v61 = [v1 widthAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:-50.0];

    *(v36 + 96) = v62;
    v63 = [v21 heightAnchor];
    v64 = [v63 constraintEqualToConstant:51.0];

    *(v36 + 104) = v64;
    v65 = [v21 bottomAnchor];
    v66 = [v1 bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:-30.0];

    *(v36 + 112) = v67;
    sub_100003F10(0, &qword_100011798, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v75 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ExpandedTrackingView()
{
  result = qword_100011A50;
  if (!qword_100011A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005A78()
{
  result = type metadata accessor for UIButton.Configuration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100005B24()
{
  v1 = OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_appIconImageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_trackingLabelView;
  *(v0 + v2) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC17TrackingUIService20ExpandedTrackingView_cancelButton;
  *(v0 + v3) = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  static UIButton.Configuration.filled()();
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}
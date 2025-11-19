uint64_t sub_90934(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_9097C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_909EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_spinner;
  *&v1[v2] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FAE10 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_42A9F0;
  v11[3] = *&qword_42AA00;
  v12[0] = xmmword_42AA10;
  *(v12 + 10) = *(&xmmword_42AA10 + 10);
  v11[0] = xmmword_42A9D0;
  v11[1] = unk_42A9E0;
  v15 = xmmword_42A9F0;
  v16 = *&qword_42AA00;
  v17[0] = xmmword_42AA10;
  *(v17 + 10) = *(&xmmword_42AA10 + 10);
  v13 = xmmword_42A9D0;
  v14 = unk_42A9E0;
  sub_8FC54(v11, v9);
  *&v1[v3] = sub_235C3C(&v13, 1, 4, 0);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_messageLabel;
  if (qword_3FAE18 != -1)
  {
    swift_once();
  }

  v15 = xmmword_42AA50;
  v16 = *&qword_42AA60;
  v17[0] = xmmword_42AA70;
  *(v17 + 10) = *(&xmmword_42AA70 + 10);
  v13 = xmmword_42AA30;
  v14 = unk_42AA40;
  v9[2] = xmmword_42AA50;
  v9[3] = *&qword_42AA60;
  v10[0] = xmmword_42AA70;
  *(v10 + 10) = *(&xmmword_42AA70 + 10);
  v9[0] = xmmword_42AA30;
  v9[1] = unk_42AA40;
  sub_8FC54(&v13, v8);
  *&v1[v4] = sub_235C3C(v9, 1, 4, 0);
  v5 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_deferredBlock];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_isAcknowledgementRequired] = 1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MigrationViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_90C28()
{
  v54.receiver = v0;
  v54.super_class = type metadata accessor for MigrationViewController();
  objc_msgSendSuper2(&v54, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  UIViewController.preferredModalSize.setter(540.0, 620.0);
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_titleLabel];
  v6 = [v3 secondaryLabelColor];
  [v5 setTextColor:v6];

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v52._countAndFlagsBits = 0xE000000000000000;
  v55._object = 0x8000000000338060;
  v55._countAndFlagsBits = 0xD000000000000017;
  v57.value._countAndFlagsBits = 0;
  v57.value._object = 0;
  v9.super.isa = v8;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_301AB8(v55, v57, v9, v59, v52);

  v10 = sub_30C098();

  [v5 setText:v10];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_messageLabel];
  v12 = [v3 secondaryLabelColor];
  [v11 setTextColor:v12];

  v13 = [v7 mainBundle];
  v53._countAndFlagsBits = 0xE000000000000000;
  v56._countAndFlagsBits = 0xD000000000000019;
  v56._object = 0x8000000000338080;
  v58.value._countAndFlagsBits = 0;
  v58.value._object = 0;
  v14.super.isa = v13;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  sub_301AB8(v56, v58, v14, v60, v53);

  v15 = sub_30C098();

  [v11 setText:v15];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_spinner];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 startAnimating];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = v17;
  [v17 addSubview:v11];

  v19 = [v0 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  [v19 addSubview:v5];

  v21 = [v0 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  [v21 addSubview:v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_31D660;
  v24 = [v16 centerXAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v25 centerXAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v23 + 32) = v28;
  v29 = [v16 centerYAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = v30;
  v32 = [v30 centerYAnchor];

  v33 = [v29 constraintEqualToAnchor:v32 constant:-30.0];
  *(v23 + 40) = v33;
  v34 = [v5 centerXAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = v35;
  v37 = [v35 centerXAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v23 + 48) = v38;
  v39 = [v5 topAnchor];
  v40 = [v16 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:26.0];

  *(v23 + 56) = v41;
  v42 = [v11 topAnchor];
  v43 = [v5 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:5.0];

  *(v23 + 64) = v44;
  v45 = [v11 centerXAnchor];
  v46 = [v0 view];
  if (v46)
  {
    v47 = v46;
    v48 = objc_opt_self();
    v49 = [v47 centerXAnchor];

    v50 = [v45 constraintEqualToAnchor:v49];
    *(v23 + 72) = v50;
    sub_91304();
    isa = sub_30C358().super.isa;

    [v48 activateConstraints:isa];

    return;
  }

LABEL_17:
  __break(1u);
}

unint64_t sub_91304()
{
  result = qword_403000;
  if (!qword_403000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_403000);
  }

  return result;
}

id sub_91398(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MigrationViewController();
  result = objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_deferredBlock];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_deferredBlock + 8];
    v6 = objc_opt_self();

    v7 = [v6 currentRunLoop];
    v9[4] = v4;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_914CC;
    v9[3] = &block_descriptor_10;
    v8 = _Block_copy(v9);

    [v7 performBlock:v8];
    _Block_release(v8);

    return sub_2B8D4(v4, v5);
  }

  return result;
}

uint64_t sub_914CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9157C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_isAcknowledgementRequired;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_915C0(char a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_isAcknowledgementRequired;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_91670(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_deferredBlock);
  v4 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_deferredBlock);
  v5 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_deferredBlock + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_2B8D4(v4, v5);
}

id FlowRedirectionWrapperViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_30C098();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MigrationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9183C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_isAcknowledgementRequired;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_91894(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_isAcknowledgementRequired;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_919D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_spinner;
  *(v1 + v2) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FAE10 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_42A9F0;
  v9[3] = *&qword_42AA00;
  v10[0] = xmmword_42AA10;
  *(v10 + 10) = *(&xmmword_42AA10 + 10);
  v9[0] = xmmword_42A9D0;
  v9[1] = unk_42A9E0;
  v13 = xmmword_42A9F0;
  v14 = *&qword_42AA00;
  v15[0] = xmmword_42AA10;
  *(v15 + 10) = *(&xmmword_42AA10 + 10);
  v11 = xmmword_42A9D0;
  v12 = unk_42A9E0;
  sub_8FC54(v9, v7);
  *(v1 + v3) = sub_235C3C(&v11, 1, 4, 0);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_messageLabel;
  if (qword_3FAE18 != -1)
  {
    swift_once();
  }

  v13 = xmmword_42AA50;
  v14 = *&qword_42AA60;
  v15[0] = xmmword_42AA70;
  *(v15 + 10) = *(&xmmword_42AA70 + 10);
  v11 = xmmword_42AA30;
  v12 = unk_42AA40;
  v7[2] = xmmword_42AA50;
  v7[3] = *&qword_42AA60;
  v8[0] = xmmword_42AA70;
  *(v8 + 10) = *(&xmmword_42AA70 + 10);
  v7[0] = xmmword_42AA30;
  v7[1] = unk_42AA40;
  sub_8FC54(&v11, v6);
  *(v1 + v4) = sub_235C3C(v7, 1, 4, 0);
  v5 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_deferredBlock);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23MigrationViewController_isAcknowledgementRequired) = 1;
  sub_30D648();
  __break(1u);
}

double sub_91C18()
{
  v1 = [v0 presentedViewController];
  [v1 preferredContentSize];
  v3 = v2;

  v4 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_configuration];
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_configuration + 33] != 1 || (v5 = [v0 presentedViewController], objc_msgSend(v5, "preferredContentSize"), v7 = v6, v9 = v8, v5, v7 == 0.0) && v9 == 0.0)
  {
    v3 = v4[7];
  }

  v10 = [v0 presentedViewController];
  [v10 preferredContentSize];
  v12 = v11;

  if (v12 == 0.0)
  {
    v13 = v4[8];
  }

  else
  {
    v14 = [v0 presentedViewController];
    [v14 preferredContentSize];
    v13 = v15;
  }

  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView] frame];
  if (v17 >= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v19 = 0.0;
  v20 = v17 + -160.0;
  if (v17 + -160.0 >= v13)
  {
    v20 = v13;
  }

  v21 = (v17 - v20) * 0.5;
  if (v4[9])
  {
    v22 = v18;
  }

  else
  {
    v19 = v21;
    v22 = v20;
  }

  v23 = (v16 - v3) * 0.5 + v4[5];
  v24 = v19 + v4[6];
  v25 = v3;

  *&result = CGRectIntegral(*(&v22 - 3));
  return result;
}

void sub_91DB8(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  v3 = [v1 presentedViewController];
  v4 = [v3 view];

  if (v4)
  {
    [v4 setFrame:sub_91C18()];

    v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_shadowView];
    v6 = [v1 presentedViewController];
    v7 = [v6 view];

    if (v7)
    {
      [v7 frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 setFrame:{v9, v11, v13, v15}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_91F64()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "containerViewWillLayoutSubviews");
  v1 = [v0 presentedViewController];
  v2 = [v1 view];

  if (v2)
  {
    [v2 setFrame:sub_91C18()];

    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_shadowView];
    v4 = [v0 presentedViewController];
    v5 = [v4 view];

    if (v5)
    {
      [v5 frame];
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

void sub_920E8()
{
  v1 = v0;
  v86.receiver = v0;
  v86.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v86, "presentationTransitionWillBegin");
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    v4 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_configuration];
    if ((v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_configuration + 33] & 1) == 0)
    {
      v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTap:"];
      [v5 setDelegate:v0];
      [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView] addGestureRecognizer:v5];
      [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dismissButton] addTarget:v0 action:"didTap:" forControlEvents:64];
    }

    v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView];
    v7 = &_ss11AnyHashableV2eeoiySbAB_ABtFZ_ptr;
    v8 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.45];
    [v6 setBackgroundColor:v8];

    if (v4[32] == 1)
    {
      if (*(v4 + 2) | *(v4 + 1) | *v4 | *(v4 + 3))
      {
        v9 = v3;
        v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_sourceViewController];
        v11 = [v10 view];
        if (!v11)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v12 = v11;
        v13 = [v11 superview];

        if (!v13)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v14 = [v10 view];
        if (!v14)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v15 = v14;
        [v14 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v24 = [v10 view];
        if (!v24)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v25 = v24;
        v26 = [v24 window];

        [v13 convertRect:v26 toView:{v17, v19, v21, v23}];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
        v3 = v9;
        v7 = &_ss11AnyHashableV2eeoiySbAB_ABtFZ_ptr;
      }

      else
      {
        [v3 frame];
      }
    }

    else
    {
      v38 = *v4;
      v37 = *(v4 + 1);
      v36 = *(v4 + 2);
      v35 = *(v4 + 3);
    }

    [v6 setFrame:{v38, v37, v36, v35}];
    [v6 setAutoresizingMask:18];
    [v6 setAlpha:0.0];
    v84 = v3;
    [v3 addSubview:v6];
    v39 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dismissButton];
    [v6 frame];
    Width = CGRectGetWidth(v87);
    [v6 frame];
    [v39 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v88) * 0.1}];
    [v39 setAutoresizingMask:50];
    v41 = [objc_opt_self() clearColor];
    [v39 setBackgroundColor:v41];

    v42 = v7;
    v43 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_shadowView];
    [v43 setFrame:sub_91C18()];
    [v43 setAutoresizingMask:45];
    v44 = [objc_allocWithZone(v42[500]) initWithWhite:0.0 alpha:0.24];
    v45 = &v43[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    v46 = *&v43[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    *v45 = v44;
    *(v45 + 8) = xmmword_31D710;
    *(v45 + 3) = 0x4000000000000000;
    v47 = v44;

    sub_2BF1DC();
    [v6 addSubview:v43];
    [v6 addSubview:v39];
    v48 = [v1 presentedViewController];
    v49 = [v48 view];

    if (v49)
    {
      [v49 setFrame:sub_91C18()];

      v50 = [v1 presentedViewController];
      v51 = [v50 view];

      if (v51)
      {
        [v51 setClipsToBounds:1];

        v52 = [v1 presentedViewController];
        v53 = [v52 view];

        if (v53)
        {
          v54 = [v53 layer];

          [v54 setCornerRadius:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_cardCornerRadius]];
          v55 = [v1 presentedViewController];
          v56 = [v55 view];

          if (v56)
          {
            v57 = [v56 layer];

            [v57 setCornerCurve:kCACornerCurveContinuous];
            v58 = [v1 presentedViewController];
            v59 = [v58 view];

            if (v59)
            {
              v60 = [v59 layer];

              [v60 setMaskedCorners:*(v4 + 10)];
              v61 = OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_cardRim;
              [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_cardRim] setAutoresizingMask:18];
              v62 = *&v1[v61];
              v63 = [v1 presentedViewController];
              v64 = [v63 view];

              if (v64)
              {
                [v64 bounds];
                v66 = v65;
                v68 = v67;
                v70 = v69;
                v72 = v71;

                [v62 setFrame:{v66, v68, v70, v72}];
                v73 = [v1 presentedViewController];
                v74 = [v73 view];

                if (v74)
                {
                  [v74 addSubview:*&v1[v61]];

                  v75 = [v1 presentedViewController];
                  v76 = [v75 view];

                  if (v76)
                  {
                    [v76 setAutoresizingMask:45];

                    v77 = [v1 presentedViewController];
                    v78 = [v77 view];

                    if (v78)
                    {
                      [v6 addSubview:v78];

                      v79 = [v1 presentedViewController];
                      v80 = [v79 transitionCoordinator];

                      if (v80)
                      {
                        v81 = swift_allocObject();
                        *(v81 + 16) = v1;
                        aBlock[4] = sub_93680;
                        aBlock[5] = v81;
                        aBlock[0] = _NSConcreteStackBlock;
                        aBlock[1] = 1107296256;
                        aBlock[2] = sub_1D84E8;
                        aBlock[3] = &block_descriptor_10;
                        v82 = _Block_copy(aBlock);
                        v83 = v1;

                        [v80 animateAlongsideTransition:v82 completion:0];

                        _Block_release(v82);
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                      }

                      return;
                    }

                    goto LABEL_34;
                  }

LABEL_33:
                  __break(1u);
LABEL_34:
                  __break(1u);
                  goto LABEL_35;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_92AE4()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "dismissalTransitionWillBegin");
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_93648;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1D84E8;
    v6[3] = &block_descriptor_11;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    _Block_release(v4);
    swift_unknownObjectRelease();
  }
}

char *sub_92F3C(double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_30D6F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_innerRim;
  *&v2[v9] = [objc_allocWithZone(CALayer) init];
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_rimWidth] = 0;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v6 + 104))(v8, enum case for FloatingPointRoundingRule.up(_:), v5);
  v11 = v10;
  sub_302E78();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_rimWidth;
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_rimWidth] = v13;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_innerRim;
  [*&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_innerRim] setBorderWidth:1.0];
  [*&v11[v15] setCornerRadius:a1];
  [*&v11[v15] setCornerCurve:kCACornerCurveContinuous];
  v16 = [v11 layer];
  [v16 addSublayer:*&v11[v15]];

  v17 = [v11 layer];
  [v17 setBorderWidth:*&v11[v14]];

  v18 = [v11 layer];
  [v18 setCornerRadius:a1];

  v19 = [v11 layer];
  [v19 setCornerCurve:kCACornerCurveContinuous];

  v20 = *&v11[v15];
  if (qword_3FAFD0 != -1)
  {
    swift_once();
  }

  v21 = [qword_42B010 CGColor];
  [v20 setBorderColor:v21];

  v22 = [v11 layer];
  if (qword_3FAFD8 != -1)
  {
    swift_once();
  }

  v23 = [qword_42B018 CGColor];
  [v22 setBorderColor:v23];

  [v11 setUserInteractionEnabled:0];
  return v11;
}

void sub_932D0(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_innerRim];
  if (qword_3FAFD0 != -1)
  {
    swift_once();
  }

  v4 = [qword_42B010 CGColor];
  [v3 setBorderColor:v4];

  v5 = [v1 layer];
  if (qword_3FAFD8 != -1)
  {
    swift_once();
  }

  v6 = [qword_42B018 CGColor];
  [v5 setBorderColor:v6];
}

uint64_t sub_93610()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_93754(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration + 48);
  v23 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration + 32);
  v24 = v7;
  v25 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration + 64);
  v26 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration + 80);
  v8 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration + 16);
  v21 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration);
  v22 = v8;
  v9 = type metadata accessor for CardPresentationController();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView;
  *&v10[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dismissButton;
  *&v10[v12] = [objc_allocWithZone(UIButton) init];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_shadowView;
  type metadata accessor for ShadowView();
  *&v10[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_cardCornerRadius] = 0x4040000000000000;
  v14 = objc_allocWithZone(type metadata accessor for CardRim());
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_cardRim] = sub_92F3C(32.0);
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_sourceViewController] = a3;
  v15 = &v10[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_configuration];
  v16 = v22;
  *v15 = v21;
  *(v15 + 1) = v16;
  *(v15 + 10) = v26;
  v17 = v25;
  *(v15 + 3) = v24;
  *(v15 + 4) = v17;
  *(v15 + 2) = v23;
  v20.receiver = v10;
  v20.super_class = v9;
  v18 = a3;
  return objc_msgSendSuper2(&v20, "initWithPresentedViewController:presentingViewController:", a1, a2);
}

id sub_93968()
{
  v0 = objc_allocWithZone(type metadata accessor for CardDismissalAnimator());

  return [v0 init];
}

id sub_939DC()
{
  v0 = objc_allocWithZone(type metadata accessor for CardPresentationAnimator());

  return [v0 init];
}

id CardTransitioningDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardTransitioningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_93B80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_93BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CardTransitioningDelegate.DimmingArea(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for CardTransitioningDelegate.DimmingArea(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CardTransitioningDelegate.DimmingArea(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

uint64_t sub_93CD0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_93CEC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t sub_93D24()
{
  result = qword_3FFF80;
  if (!qword_3FFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FFF80);
  }

  return result;
}

id sub_93DD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurableScrollCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_93E44(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_1EBD0(v2);
  }

  return result;
}

uint64_t sub_93EC0(uint64_t a1)
{
  v3 = sub_306EA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews22HoverScrollCoordinator_futureWork;
  v11 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22HoverScrollCoordinator_futureWork);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22HoverScrollCoordinator_futureWork) = a1;
  if (v11)
  {

    sub_306EC8();
    if (*(v1 + v10))
    {
LABEL_3:
      sub_3EFB4();

      v12 = sub_30C8F8();
      sub_306E98();
      sub_306F08();
      v13 = *(v4 + 8);
      v13(v6, v3);
      sub_30C8D8();

      return (v13)(v9, v3);
    }
  }

  else
  {

    if (a1)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_940A0()
{
  v0 = sub_306E68();
  __chkstk_darwin(v0);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_943B4;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_12;
  _Block_copy(aBlock);
  sub_943D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
  sub_9442C();
  sub_30D488();
  sub_306ED8();
  swift_allocObject();
  v2 = sub_306EB8();

  return sub_93EC0(v2);
}

void sub_94254()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_257FE4(1);
  }
}

id sub_94310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HoverScrollCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9437C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_943D4()
{
  result = qword_40D760;
  if (!qword_40D760)
  {
    sub_306E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40D760);
  }

  return result;
}

unint64_t sub_9442C()
{
  result = qword_40D770;
  if (!qword_40D770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_408860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40D770);
  }

  return result;
}

uint64_t sub_94490()
{

  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews29ImpressionIdScrollCoordinator_impressionID;
  v2 = sub_30BA88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpressionIdScrollCoordinator()
{
  result = qword_400028;
  if (!qword_400028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_94588()
{
  result = sub_30BA88();
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

uint64_t sub_94670(int a1, id a2)
{
  [objc_msgSend(a2 "container")];
  swift_unknownObjectRelease();
  return sub_3027F8();
}

uint64_t sub_94704()
{

  return swift_deallocClassInstance();
}

uint64_t sub_94760(void *a1)
{

  [a1 bounds];
  sub_3027C8();
}

uint64_t sub_947B4(uint64_t a1, void *a2)
{

  [objc_msgSend(a2 "container")];
  swift_unknownObjectRelease();
  sub_3027C8();
}

id sub_94880(id result)
{
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_isEnabled) == 1)
  {
    v2 = result;
    result = [result contentSize];
    v4 = v3;
    if ((*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_shouldPrepareNextPageWithoutContent) & 1) != 0 || v3 >= COERCE_DOUBLE(1))
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        swift_getObjectType();
        if (sub_3092B8() & 1) == 0 && (sub_3092C8())
        {
          [v2 frame];
          v6 = v5;
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v13 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_distance) >= v4 ? 0.0 : *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_distance);
          [v2 contentOffset];
          v15 = v14;
          v17.origin.x = v6;
          v17.origin.y = v8;
          v17.size.width = v10;
          v17.size.height = v12;
          if (v4 - (v15 + CGRectGetHeight(v17)) <= v13)
          {
            sub_3092A8();
          }
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_94A4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InfiniteScrollCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_94B0C()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_isDecelerating) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_afterDecelerationBlocks;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_afterDecelerationBlocks);
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
  }

  *(v0 + v1) = _swiftEmptyArrayStorage;
}

uint64_t sub_94CA0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      result = swift_unknownObjectRelease();
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_94DE0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      result = swift_unknownObjectRelease();
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_94F20(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      result = swift_unknownObjectRelease();
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_95060(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = (v4 + 40);
    while (v7 < *(v4 + 16))
    {
      ++v7;
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      v11(a1, a2 & 1, ObjectType, v9);
      result = swift_unknownObjectRelease();
      v8 += 2;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_951BC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      result = swift_unknownObjectRelease();
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_952FC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators);
  v9 = *(v8 + 16);

  if (v9)
  {
    v11 = 0;
    v12 = (v8 + 40);
    while (v11 < *(v8 + 16))
    {
      ++v11;
      v13 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v15(a1, a2, ObjectType, v13, a3, a4);
      result = swift_unknownObjectRelease();
      v12 += 2;
      if (v9 == v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

id sub_954D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollViewDelegateCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_95540()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = *(v0 + 40);
    swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_400608));
    v4 = v3;
    v5 = v0;
    v6 = sub_304A48();
    v7 = *(v0 + 64);
    *(v5 + 64) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_95600(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v6 = sub_9568C(a1, a2, a3);

  return v6;
}

id sub_9568C(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  v9 = sub_307108();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_95E58(v15);
  if (v16)
  {
    v16(a2);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_A0044(v15);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_EB68(v8, &unk_4004A0);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = ShelvesViewProvider.cell(for:indexPath:section:item:)(a1, a2, v12, a3);
    (*(v10 + 8))(v12, v9);
    return v14;
  }
}

id sub_95898()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v10[4] = sub_A06BC;
    v10[5] = v3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_9E550;
    v10[3] = &block_descriptor_47;
    v5 = _Block_copy(v10);

    v6 = [v4 initWithSectionProvider:v5];
    _Block_release(v5);

    v7 = *(v0 + 72);
    *(v0 + 72) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_959C8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v4 = sub_95A4C(a1, a2);

  return v4;
}

id sub_95A4C(uint64_t a1, void *a2)
{
  v27 = a2;
  v4 = sub_301F38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_307108();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  sub_95E58(v30);
  v15 = v31;
  v26 = a1;
  if (v31)
  {
    sub_301EC8();
    v15(v7);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_A0044(v30);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_EB68(v10, &unk_4004A0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    [*(v28 + 40) safeAreaInsets];
    v16 = ShelvesViewProvider.layout(for:environment:safeAreaInsets:)(v14, v27, v17, v18);
    if ([v16 orthogonalScrollingBehavior])
    {
      v19 = [v16 visibleItemsInvalidationHandler];
      if (v19)
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        v19 = sub_A0788;
      }

      else
      {
        v20 = 0;
      }

      v21 = v26;
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = v19;
      v23[3] = v20;
      v23[4] = v22;
      v23[5] = v21;
      aBlock[4] = sub_A0744;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_189D1C;
      aBlock[3] = &block_descriptor_56_0;
      v24 = _Block_copy(aBlock);
      sub_9FF04(v19);

      [v16 setVisibleItemsInvalidationHandler:v24];
      _Block_release(v24);
      sub_1EBD0(v19);
    }

    (*(v12 + 8))(v14, v11);
  }

  return v16;
}

uint64_t sub_95E58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v24[0] = *(v1 + 80);
  v24[1] = v3;
  v4 = *(v1 + 128);
  v24[2] = *(v1 + 112);
  v24[3] = v4;
  v24[4] = *(v1 + 144);
  if (*&v24[0] == 1)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    swift_weakInit();
    *&v18 = sub_A0638;
    *(&v18 + 1) = v5;
    *&v19 = sub_A0640;
    *(&v19 + 1) = v6;
    *&v20 = sub_A0648;
    *(&v20 + 1) = v7;
    *&v21 = sub_A0650;
    *(&v21 + 1) = v8;
    *&v22 = sub_A0658;
    *(&v22 + 1) = v9;
    v10 = *(v1 + 128);
    v23[2] = *(v1 + 112);
    v23[3] = v10;
    v23[4] = *(v1 + 144);
    v11 = *(v1 + 96);
    v23[0] = *(v1 + 80);
    v23[1] = v11;
    v12 = v21;
    *(v1 + 112) = v20;
    *(v1 + 128) = v12;
    v13 = v19;
    *(v1 + 80) = v18;
    *(v1 + 96) = v13;
    *(v1 + 144) = v22;
    sub_A0660(&v18, &v17);
    sub_EB68(v23, &qword_4004E8);
    v14 = v21;
    *(a1 + 32) = v20;
    *(a1 + 48) = v14;
    *(a1 + 64) = v22;
    v15 = v19;
    *a1 = v18;
    *(a1 + 16) = v15;
  }

  else
  {
    *a1 = *&v24[0];
    *(a1 + 24) = *(v1 + 104);
    *(a1 + 40) = *(v1 + 120);
    *(a1 + 56) = *(v1 + 136);
    *(a1 + 72) = *(v1 + 152);
    *(a1 + 8) = *(v1 + 88);
  }

  return sub_EB00(v24, v23, &qword_4004E8);
}

id sub_96080()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 40);

  isa = sub_301EA8().super.isa;
  v3 = [v1 cellForItemAtIndexPath:isa];

  return v3;
}

uint64_t sub_96128@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400458);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  v5 = sub_95540();

  sub_9634C(v4);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_EB68(v4, &qword_400458);
LABEL_4:
    v7 = sub_307108();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  v9 = sub_307108();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a1, v4, v9);
  sub_EB68(v4, &qword_406B40);
  return (*(v10 + 56))(a1, 0, 1, v9);
}

unint64_t sub_9634C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400460);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  sub_304AD8();
  if (sub_301F18() < 1 || sub_301F48() < 0 || (v6 = sub_3048A8(), sub_301F48() >= v6))
  {
    (*(v3 + 8))(v5, v2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v7 = sub_3048B8();
    result = sub_301F48();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = result;
      if (result < *(v7 + 16))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
        v11 = *(v10 - 8);
        sub_EB00(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, a1, &qword_406B40);

        (*(v3 + 8))(v5, v2);
        return (*(v11 + 56))(a1, 0, 1, v10);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_965C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400460);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_95540();

    v12 = sub_307108();
    (*(*(v12 - 8) + 16))(v10, a1, v12);
    v13 = sub_3070A8();
    v14 = &v10[*(v8 + 28)];
    *v14 = v13;
    v14[1] = v15;
    sub_304AD8();
    sub_304888();
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      sub_301EC8();
      v17 = 0;
    }

    (*(v5 + 8))(v7, v4);
    sub_EB68(v10, &qword_406B40);
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_301F38();
  return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
}

double sub_9682C@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_95540();

    sub_304A68();

    if (v5)
    {
      sub_12670(v4, a1);
      sub_EB68(v4, &unk_400470);
      return result;
    }

    sub_EB68(v4, &qword_4004F8);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_96900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400460);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_12670(a1, v13);
    v14 = sub_307078();
    v15 = v8;
    v9 = sub_95540();
    sub_304AD8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004F0);
    v10 = swift_allocObject();
    v10[1] = xmmword_315430;
    sub_EB00(v13, (v10 + 2), &unk_400470);
    v11._rawValue = v10;
    sub_304868(v11);

    v12 = *(v7 + 64);
    sub_304AC8();

    (*(v3 + 8))(v5, v2);
    return sub_EB68(v13, &unk_400470);
  }

  return result;
}

uint64_t sub_96AEC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v8 = sub_96B88(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_96B88(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_307108();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  if (qword_3FA9E8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Supplementaries.LargeMacHeader(0);
  v19 = __swift_project_value_buffer(v18, qword_400240);
  if (*v19 == a2 && v19[1] == a3 || (sub_30D728() & 1) != 0)
  {
    goto LABEL_11;
  }

  if (qword_3FA9F0 != -1)
  {
    swift_once();
  }

  if (v20 = __swift_project_value_buffer(v18, qword_400258), *v20 == a2) && v20[1] == a3 || (sub_30D728())
  {
LABEL_11:
    type metadata accessor for ModernTitleHeaderView(0);
    v21 = sub_30C878();
    v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CollectionController_largeMacHeader;
    swift_beginAccess();
    sub_EB00(v5 + v22, v17, &qword_400450);
    v23 = *(v5 + 16);

    ModernTitleHeaderView.apply(header:objectGraph:)(v17, v23);

    sub_EB68(v17, &qword_400450);
  }

  else
  {
    sub_95E58(v31);
    if (v32)
    {
      v32(a4);
      v25 = v26;
    }

    else
    {
      v25 = v26;
      (*(v26 + 56))(v11, 1, 1, v12);
    }

    sub_A0044(v31);
    if ((*(v25 + 48))(v11, 1, v12) == 1)
    {
      sub_EB68(v11, &unk_4004A0);
      return 0;
    }

    else
    {
      (*(v25 + 32))(v14, v11, v12);
      sub_95E58(v29);
      if (v30)
      {
        v30(v28, a4);
      }

      else
      {
        memset(v28, 0, sizeof(v28));
      }

      sub_A0044(v29);
      v21 = ShelvesViewProvider.supplementaryView(for:kind:indexPath:section:item:)(v27, a2, a3, a4, v14);
      sub_EB68(v28, &qword_4064D0);
      (*(v25 + 8))(v14, v12);
    }
  }

  return v21;
}

uint64_t sub_96FEC(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005C8);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005D0);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - v7;
  v9 = sub_309938();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v35 - v14;
  sub_EB00(a1, v8, &qword_4005D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_EB68(v8, &qword_4005D0);
  }

  v39 = v5;
  v40 = v10;
  v36 = *(v10 + 32);
  v38 = v10 + 32;
  v43 = v15;
  v36(v15, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400470);
  sub_EC8C(&qword_40A530, &qword_406B40);
  sub_EC8C(&qword_400480, &unk_400470);
  sub_304AA8();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v40;
  v37 = *(v40 + 16);
  v37(v12, v43, v9);
  v19 = *(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = v36;
  v35[0] = v9;
  v36((v20 + ((v19 + 24) & ~v19)), v12, v9);
  sub_304A98();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v35[0];
  v37(v12, v43, v35[0]);
  v25 = (v19 + 16) & ~v19;
  v35[1] = v25 + v11;
  v26 = swift_allocObject();
  v21(v26 + v25, v12, v24);
  v27 = v21;
  *(v26 + ((v25 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v28 = v44;
  v29 = v39;
  sub_304A78();
  v30 = v43;
  v37(v23, v43, v24);
  v31 = swift_allocObject();
  v27(v31 + v25, v23, v24);
  v32 = v29;
  sub_304A88();
  v33 = sub_95540();
  v34 = v41;
  (*(v41 + 16))(v42, v32, v28);
  sub_304AB8();

  (*(v34 + 8))(v32, v28);
  return (*(v40 + 8))(v30, v24);
}

uint64_t sub_97568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  v7 = sub_307108();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  __chkstk_darwin(v10 - 8);
  v12 = v26 - v11;
  v13 = sub_301F38();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v17 = sub_95540();
    v26[0] = a1;
    sub_304AE8();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      v18 = &qword_400600;
      v19 = v12;
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      sub_95E58(v28);
      if (v29)
      {
        v29(v16);
        v21 = v27;
      }

      else
      {
        v21 = v27;
        (*(v27 + 56))(v6, 1, 1, v7);
      }

      sub_A0044(v28);
      v22 = (*(v21 + 48))(v6, 1, v7);
      v23 = v26[0];
      if (v22 != 1)
      {
        (*(v21 + 32))(v9, v6, v7);
        v24 = sub_309908();
        v20 = v24(v23, v9);

        (*(v21 + 8))(v9, v7);
        (*(v14 + 8))(v16, v13);
        return v20 & 1;
      }

      (*(v14 + 8))(v16, v13);

      v18 = &unk_4004A0;
      v19 = v6;
    }

    sub_EB68(v19, v18);
    v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_97948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005D8);
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - v5;
  v49 = sub_307108();
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __chkstk_darwin(v9 - 8);
  v42 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v35 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005E8);
  v14 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005F0);
  v16 = sub_304958();
  v58 = *(v16 + 16);
  if (v58)
  {
    v55 = v16 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = a3;
    v17 = v16;
    swift_beginAccess();
    result = v17;
    v19 = 0;
    v54 = v14 + 16;
    v53 = (v12 + 8);
    v38 = (v6 + 16);
    v37 = (v4 + 8);
    v36 = (v6 + 8);
    v52 = (v14 + 8);
    v20 = v47;
    v21 = v46;
    v40 = v8;
    v39 = v11;
    v56 = v17;
    v57 = v14;
    while (v19 < *(result + 16))
    {
      (*(v14 + 16))(v21, v55 + *(v14 + 72) * v19, v20);
      v22 = v59;
      sub_304BC8();
      sub_EC8C(&qword_4005F8, &qword_4005E0);
      sub_30C598();
      sub_30C5D8();
      (*v53)(v22, v11);
      if (v60[0] != v61)
      {
        v50 = sub_309918();
        v51 = v23;
        v24 = v42;
        sub_304BE8();
        v25 = v49;
        (*v38)(v8, v24, v49);
        sub_EB68(v24, &qword_406B40);
        v26 = v43;
        sub_304BD8();
        v27 = v44;
        v28 = sub_304B18();
        (*v37)(v26, v27);
        v29 = *(v28 + 16);
        if (v29)
        {
          v62 = _swiftEmptyArrayStorage;
          sub_175370(0, v29, 0);
          v30 = v62;
          v48 = v28;
          v31 = v28 + 32;
          do
          {
            sub_EB00(v31, v60, &unk_400470);
            sub_12670(v60, &v61);
            sub_EB68(v60, &unk_400470);
            v62 = v30;
            v33 = v30[2];
            v32 = v30[3];
            if (v33 >= v32 >> 1)
            {
              sub_175370((v32 > 1), v33 + 1, 1);
              v30 = v62;
            }

            v30[2] = v33 + 1;
            sub_12658(&v61, &v30[5 * v33 + 4]);
            v31 += 56;
            --v29;
          }

          while (v29);

          v25 = v49;
        }

        else
        {

          v30 = _swiftEmptyArrayStorage;
        }

        v8 = v40;
        v50(v40, v30);

        (*v36)(v8, v25);
        Strong = swift_weakLoadStrong();
        v11 = v39;
        v20 = v47;
        v21 = v46;
        if (Strong)
        {
          sub_9807C();
        }
      }

      ++v19;
      (*v52)(v21, v20);
      v14 = v57;
      result = v56;
      if (v19 == v58)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_9807C()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005D8);
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v34 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_301F38();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005E8);
  sub_304BE8();
  v43 = v0;
  sub_95E58(v60);
  if (v61)
  {
    v61(v13);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_A0044(v60);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v38 = v13;
    v16 = v40;
    (*(v6 + 32))(v40, v4, v5);
    sub_95E58(&v54);
    v17 = CollectionConverter.shelf(for:)(v16);
    v59[2] = v56;
    v59[3] = v57;
    v59[4] = v58;
    v59[0] = v54;
    v59[1] = v55;
    sub_A0044(v59);
    if (!v17)
    {
      (*(v6 + 8))(v16, v5);
      goto LABEL_27;
    }

    v37 = v6;
    if (CollectionConverter.Shelf.isSingleItemShelf.getter())
    {

      (*(v37 + 8))(v16, v5);
LABEL_27:
      v14 = &qword_406B40;
      v15 = v38;
      return sub_EB68(v15, v14);
    }

    sub_304BD8();
    v18 = sub_304AF8();
    v19 = *(v18 + 16);
    if (!v19)
    {

      v32 = v37;
      v31 = v39;
LABEL_26:
      (*(v31 + 8))(v44, v45);
      (*(v32 + 8))(v40, v5);
      goto LABEL_27;
    }

    v34 = v18;
    v20 = v18 + 32;
    v41 = (v37 + 8);
    v42 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_index;
    while (1)
    {
      sub_EB00(v20, v53, &unk_400470);
      sub_304B08();
      v22 = v21;
      sub_EB68(v53, &unk_400470);
      if (v22)
      {
        goto LABEL_15;
      }

      sub_301EC8();
      sub_95E58(v50);
      v56 = v50[2];
      v57 = v51;
      v58 = v52;
      v54 = v50[0];
      v55 = v50[1];
      v23 = v51;
      if (!v51)
      {
        break;
      }

      v23(&v46, v8);
      if (!*(&v47 + 1))
      {
        goto LABEL_23;
      }

      sub_12658(&v46, v49);
      if (v54)
      {
        v24 = (v54)(v8);
        if (v24)
        {
          v36 = v24;
          sub_12670(v49, &v46);

          v35 = sub_301ED8();
          __swift_destroy_boxed_opaque_existential_1(v49);
          type metadata accessor for CollectionConverter.ShelfItem(0);
          v25 = swift_allocObject();
          *(v25 + 80) = 0;
          v26 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___impressionMetrics;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
          (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
          v28 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
          (*(*(v29 - 8) + 56))(v25 + v28, 1, 1, v29);
          *(v25 + 16) = v17;
          sub_12658(&v46, v25 + 24);

          sub_A0044(&v54);
          v30 = v35;
          *(v25 + 64) = v36;
          *(v25 + 72) = v30;
          sub_9CAB0(v25);
          swift_setDeallocating();

          __swift_destroy_boxed_opaque_existential_1(v25 + 24);

          sub_EB68(v25 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___impressionMetrics, &qword_4004B0);
          sub_EB68(v25 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement, &qword_4004B8);
          swift_deallocClassInstance();
          goto LABEL_14;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v49);
LABEL_13:

      sub_A0044(&v54);
LABEL_14:
      (*v41)(v8, v5);
LABEL_15:
      v20 += 56;
      if (!--v19)
      {

        v31 = v39;
        v32 = v37;
        goto LABEL_26;
      }
    }

    v48 = 0;
    v46 = 0u;
    v47 = 0u;

LABEL_23:
    sub_EB68(&v46, &qword_4064D0);
    goto LABEL_13;
  }

  sub_EB68(v13, &qword_406B40);
  v14 = &qword_400600;
  v15 = v4;
  return sub_EB68(v15, v14);
}

uint64_t sub_987EC(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005D8);
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v34 - v3;
  v4 = sub_307108();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __chkstk_darwin(v8 - 8);
  v41 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005E8);
  v14 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005F0);
  result = sub_304958();
  v57 = *(result + 16);
  if (v57)
  {
    v48 = v7;
    v49 = v4;
    v17 = 0;
    v55 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v53 = (v11 + 8);
    v54 = v14 + 16;
    v37 = (v5 + 16);
    v36 = (v2 + 8);
    v35 = (v5 + 8);
    v56 = v14;
    v52 = (v14 + 8);
    v18 = v46;
    v19 = v45;
    v20 = result;
    v40 = v10;
    v39 = v13;
    v38 = result;
    while (v17 < *(v20 + 16))
    {
      (*(v56 + 16))(v19, v55 + *(v56 + 72) * v17, v18);
      sub_304BC8();
      sub_EC8C(&qword_4005F8, &qword_4005E0);
      sub_30C598();
      sub_30C5D8();
      (*v53)(v13, v10);
      if (v58[0] != v59)
      {
        v50 = sub_309928();
        v51 = v22;
        v23 = v41;
        sub_304BE8();
        v24 = v48;
        v25 = v49;
        (*v37)(v48, v23, v49);
        sub_EB68(v23, &qword_406B40);
        v26 = v42;
        sub_304BD8();
        v27 = v43;
        v28 = sub_304B18();
        (*v36)(v26, v27);
        v29 = *(v28 + 16);
        if (v29)
        {
          v60 = _swiftEmptyArrayStorage;
          sub_175370(0, v29, 0);
          v30 = v60;
          v47 = v28;
          v31 = v28 + 32;
          do
          {
            sub_EB00(v31, v58, &unk_400470);
            sub_12670(v58, &v59);
            sub_EB68(v58, &unk_400470);
            v60 = v30;
            v33 = v30[2];
            v32 = v30[3];
            if (v33 >= v32 >> 1)
            {
              sub_175370((v32 > 1), v33 + 1, 1);
              v30 = v60;
            }

            v30[2] = v33 + 1;
            sub_12658(&v59, &v30[5 * v33 + 4]);
            v31 += 56;
            --v29;
          }

          while (v29);

          v25 = v49;
          v21 = v48;
        }

        else
        {

          v21 = v24;
          v30 = _swiftEmptyArrayStorage;
        }

        v50(v21, v30);

        (*v35)(v21, v25);
        v10 = v40;
        v13 = v39;
        v18 = v46;
        v19 = v45;
        v20 = v38;
      }

      ++v17;
      result = (*v52)(v19, v18);
      if (v17 == v57)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_98EBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v1 = *(Strong + 40), , isa = sub_301EA8().super.isa, v3 = [v1 cellForItemAtIndexPath:isa], v1, isa, !v3) || (v7 = v3, sub_124C4(0, &qword_406520), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004D0), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_8;
  }

  if (!*(&v9 + 1))
  {
LABEL_8:
    sub_EB68(&v8, &unk_4004C0);
    return;
  }

  sub_EB68(&v8, &unk_4004C0);
  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 40);

    v6 = sub_301EA8().super.isa;
    [v5 selectItemAtIndexPath:v6 animated:0 scrollPosition:{16, v7}];
  }
}

void sub_99060()
{
  v1 = v0;
  v2 = sub_301F38();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Supplementaries.LargeMacHeader(0);
  __chkstk_darwin(v54);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &qword_400450;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = sub_30B0B8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  [v16 setContentInsetsReference:3];
  v17 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CollectionController_largeMacHeader;
  swift_beginAccess();
  sub_EB00(v17, v11, &qword_400450);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_EB68(v11, &qword_400450);
    v18 = sub_95898();
    [v18 setConfiguration:v16];

    return;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_124C4(0, &qword_4019C0);
  if ((sub_30C978() & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50) + 48));
  v52 = v12;
  if (v19 == 1)
  {
    v6 = v16;
    if (qword_3FA9F0 == -1)
    {
LABEL_6:
      v20 = qword_400258;
      goto LABEL_10;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v6 = v16;
  if (qword_3FA9E8 != -1)
  {
    swift_once();
  }

  v20 = qword_400240;
LABEL_10:
  v21 = v1;
  v22 = v54;
  v23 = __swift_project_value_buffer(v54, v20);
  sub_A00B8(v23, v5, type metadata accessor for Supplementaries.LargeMacHeader);
  v51 = *(v1 + 40);
  v24 = [v51 traitCollection];
  v25 = _s23ShelfKitCollectionViews21ModernTitleHeaderViewC19roughHeightEstimate6header5style6traits12CoreGraphics7CGFloatV0aB00G0V_AC5StyleVSo07UITraitC0CtFZ_0(v15, &v5[*(v22 + 20)], v24);
  v26 = objc_opt_self();
  v27 = [v26 fractionalWidthDimension:1.0];
  v50 = v15;
  v28 = v27;
  v29 = [v26 estimatedDimension:v25];
  v30 = [objc_opt_self() sizeWithWidthDimension:v28 heightDimension:v29];

  v54 = v5;
  v31 = sub_30C098();
  v32 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v30 elementKind:v31 alignment:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_31BF90;
  *(v33 + 32) = v32;
  sub_124C4(0, &qword_4004D8);
  v34 = v21;
  v35 = v32;
  isa = sub_30C358().super.isa;

  [v6 setBoundarySupplementaryItems:isa];

  v37 = sub_95898();
  [v37 setConfiguration:v6];

  v38 = sub_30C098();
  v39 = v55;
  sub_301F28();
  v40 = sub_301EA8().super.isa;
  (*(v56 + 8))(v39, v57);
  v41 = [v51 supplementaryViewForElementKind:v38 atIndexPath:v40];

  if (!v41)
  {
    (*(v13 + 8))(v50, v52);

LABEL_15:
    v48 = v54;
    goto LABEL_16;
  }

  v42 = v13;
  v43 = v50;
  type metadata accessor for ModernTitleHeaderView(0);
  v44 = swift_dynamicCastClass();
  v45 = v52;
  if (!v44)
  {

    (*(v42 + 8))(v43, v45);
    goto LABEL_15;
  }

  v46 = v53;
  (*(v42 + 16))(v53, v43, v52);
  (*(v42 + 56))(v46, 0, 1, v45);
  v47 = *(v34 + 16);

  ModernTitleHeaderView.apply(header:objectGraph:)(v46, v47);

  sub_EB68(v46, &qword_400450);
  (*(v42 + 8))(v43, v45);
  v48 = v54;
LABEL_16:
  sub_A02E8(v48, type metadata accessor for Supplementaries.LargeMacHeader);
}

uint64_t sub_997C4(char *a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v218 = a4;
  v219 = a3;
  v225 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v6 - 8);
  v217 = &v214 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v8 - 8);
  v216 = &v214 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450);
  __chkstk_darwin(v10 - 8);
  v215 = &v214 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400458);
  __chkstk_darwin(v12 - 8);
  v230 = &v214 - v13;
  v256 = sub_3041E8();
  v262 = *(v256 - 8);
  __chkstk_darwin(v256);
  v235 = &v214 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v232 = &v214 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400460);
  v241 = *(v17 - 8);
  __chkstk_darwin(v17);
  v247 = &v214 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v252 = &v214 - v20;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v238 = &v214 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v220 = &v214 - v23;
  __chkstk_darwin(v24);
  v231 = &v214 - v25;
  __chkstk_darwin(v26);
  v242 = &v214 - v27;
  v239 = sub_307048();
  v28 = *(v239 - 8);
  __chkstk_darwin(v239);
  v233 = &v214 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v214 - v31;
  v261 = sub_307108();
  v222 = *(v261 - 8);
  __chkstk_darwin(v261);
  v214 = &v214 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v254 = &v214 - v35;
  __chkstk_darwin(v36);
  v260 = &v214 - v37;
  v39 = __chkstk_darwin(v38);
  v41 = &v214 - v40;
  v224 = v4;
  v234 = *(v4 + 40);
  v42 = [v234 traitCollection];
  v43 = [v42 userInterfaceIdiom];

  v249 = v17;
  if (v43 != &dword_4 + 1)
  {
    v221 = 0;
    goto LABEL_19;
  }

  v44 = *(a1 + 2);
  if (!v44)
  {
    v221 = 1;
    v17 = v249;
    goto LABEL_19;
  }

  v264 = *(v222 + 16);
  v45 = (*(v222 + 80) + 32) & ~*(v222 + 80);
  v259 = a1;
  v46 = &a1[v45];
  v263 = *(v222 + 72);
  v258 = v28;
  v47 = (v28 + 8);
  v48 = (v222 + 8);
  v264(v41, v46, v261);
  while (1)
  {
    sub_307058();
    sub_306FE8();
    (*v47)(v32, v239);
    v49 = sub_306FD8();
    v51 = v50;
    if (v49 == sub_306FD8() && v51 == v52)
    {

LABEL_5:
      (*v48)(v41, v261);
      goto LABEL_6;
    }

    v54 = sub_30D728();

    if (v54)
    {
      goto LABEL_5;
    }

    v55 = sub_3070B8();
    (*v48)(v41, v261);
    v56 = *(v55 + 16);

    if (v56)
    {
      v221 = 0;
      goto LABEL_17;
    }

LABEL_6:
    v46 += v263;
    if (!--v44)
    {
      break;
    }

    v264(v41, v46, v261);
  }

  v221 = 1;
LABEL_17:
  v17 = v249;
  a1 = v259;
  v28 = v258;
LABEL_19:
  v223 = swift_allocBox();
  v58 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400470);
  sub_EC8C(&qword_40A530, &qword_406B40);
  sub_EC8C(&qword_400480, &unk_400470);
  sub_3048C8();
  v59 = *(a1 + 2);
  v60 = v247;
  v251 = v58;
  v61 = v261;
  v245 = v59;
  if (!v59)
  {
LABEL_64:
    if (v221)
    {
      v136 = sub_30B0B8();
      v137 = v61;
      (*(*(v136 - 8) + 56))(v215, 1, 1, v136);
      LOBYTE(aBlock) = 1;
      sub_307028();
      v138 = sub_301CB8();
      (*(*(v138 - 8) + 56))(v216, 1, 1, v138);
      v139 = sub_30BAA8();
      aBlock = 0u;
      v267 = 0u;
      *v268 = 0;
      (*(*(v139 - 8) + 56))(v217, 1, 1, v139);
      v140 = v58;
      v141 = v214;
      sub_307098();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400488);
      v142 = (*(v246 + 80) + 32) & ~*(v246 + 80);
      v143 = swift_allocObject();
      v143[1] = xmmword_315430;
      v144 = v143 + v142;
      v145 = sub_3070A8();
      v147 = v146;
      v148 = v222;
      (*(v222 + 16))(v144, v141, v137);
      v149 = &v144[*(v248 + 28)];
      *v149 = v145;
      v149[1] = v147;
      v150._rawValue = v143;
      sub_304878(v150);

      v151 = v141;
      v58 = v140;
      (*(v148 + 8))(v151, v137);
    }

    v152 = sub_95540();
    sub_304AD8();

    v153 = sub_3048B8();
    v154 = v241;
    v155 = *(v241 + 16);
    v156 = v252;
    v263 = v241 + 16;
    v262 = v155;
    (v155)(v252, v58, v17);
    v157 = sub_3048B8();
    v158 = *(v154 + 8);
    v241 = v154 + 8;
    v264 = v158;
    (v158)(v156, v17);
    v159 = sub_157BE8(v153, v157);

    if (v225)
    {
      v160 = v238;
      if ((v159 & 1) == 0)
      {
        v161 = v252;
        (v262)(v252, v251, v17);
        v162 = sub_3048B8();
        (v264)(v161, v17);
        v163 = sub_245CD4(v162);

        v164 = sub_3048B8();
        v165 = sub_245CD4(v164);

        if (*(v165 + 16) <= *(v163 + 16) >> 3)
        {
          *&aBlock = v163;
          sub_9E6C8(v165);

          v166 = aBlock;
        }

        else
        {
          v166 = sub_9E8D4(v165, v163);
        }

        v167 = 1 << v166[32];
        v168 = -1;
        if (v167 < 64)
        {
          v168 = ~(-1 << v167);
        }

        v169 = v168 & *(v166 + 7);
        v170 = (v167 + 63) >> 6;

        v171 = 0;
        v172 = v220;
LABEL_76:
        if (v169)
        {
          v173 = v171;
          goto LABEL_82;
        }

        while (1)
        {
          v173 = v171 + 1;
          if (__OFADD__(v171, 1))
          {
            goto LABEL_123;
          }

          if (v173 >= v170)
          {
            break;
          }

          v169 = *&v166[8 * v173 + 56];
          ++v171;
          if (v169)
          {
            v171 = v173;
LABEL_82:
            v174 = __clz(__rbit64(v169));
            v169 &= v169 - 1;
            sub_EB00(*(v166 + 6) + *(v246 + 72) * (v174 | (v173 << 6)), v172, &qword_406B40);
            v175 = sub_307088();
            result = sub_EB68(v172, &qword_406B40);
            if (v175)
            {

              v225 = 0;
              v60 = v247;
              goto LABEL_111;
            }

            goto LABEL_76;
          }
        }

        v17 = v249;
        v60 = v247;
        v160 = v238;
      }
    }

    else
    {
      v160 = v238;
      if ((v159 & 1) == 0)
      {
LABEL_71:
        v225 = 0;
        goto LABEL_111;
      }
    }

    v176 = v252;
    (v262)(v252, v251, v17);
    v177 = sub_3048B8();
    result = (v264)(v176, v17);
    v261 = *(v177 + 16);
    if (!v261)
    {

      if (v159)
      {
LABEL_109:
        v192 = v249;
        if (v219)
        {
          v219(v191);
        }
      }

      else
      {
LABEL_111:
        v193 = swift_allocObject();
        v194 = v224;
        swift_weakInit();
        v195 = swift_allocObject();
        v195[2] = v193;
        v196 = v219;
        v197 = v218;
        v195[3] = v219;
        v195[4] = v197;
        sub_9FF04(v196);
        v198 = [v234 window];
        if (v198)
        {

          v199 = swift_allocObject();
          v200 = v223;
          *(v199 + 16) = v194;
          *(v199 + 24) = v200;
          *(v199 + 32) = 1;
          *(v199 + 40) = sub_9FEF8;
          *(v199 + 48) = v195;
          v201 = sub_A0EF0;
        }

        else
        {
          v199 = swift_allocObject();
          v202 = v223;
          *(v199 + 16) = v194;
          *(v199 + 24) = v202;
          *(v199 + 32) = 0;
          *(v199 + 40) = sub_9FEF8;
          *(v199 + 48) = v195;
          v201 = sub_9FF18;
        }

        v203 = v251;
        if ((v225 & 1) == 0)
        {
          v208 = v201;
          v209 = objc_opt_self();
          v210 = swift_allocObject();
          *(v210 + 16) = v208;
          *(v210 + 24) = v199;
          v211 = swift_allocObject();
          *(v211 + 16) = sub_747B0;
          *(v211 + 24) = v210;
          *v268 = sub_293C0;
          *&v268[8] = v211;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v267 = sub_19D688;
          *(&v267 + 1) = &block_descriptor_13;
          v212 = _Block_copy(&aBlock);

          [v209 performWithoutAnimation:v212];
          _Block_release(v212);

          (v264)(v60, v249);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            goto LABEL_125;
          }

          return result;
        }

        v204 = *(v194 + 64);
        swift_beginAccess();
        v205 = v252;
        v206 = v203;
        v192 = v249;
        (v262)(v252, v206, v249);

        v207 = v204;
        sub_304AC8();

        (v264)(v205, v192);
      }

      (v264)(v60, v192);
    }

    v178 = 0;
    LODWORD(v258) = v159 ^ 1;
    v260 = (v177 + ((*(v246 + 80) + 32) & ~*(v246 + 80)));
    v259 = v177;
    while (1)
    {
      while (1)
      {
        if (v178 >= *(v177 + 16))
        {
          goto LABEL_122;
        }

        v179 = v178++;
        sub_EB00(&v260[*(v246 + 72) * v179], v160, &qword_406B40);
        v180 = v249;
        sub_304888();
        if ((v181 & 1) == 0)
        {
          break;
        }

LABEL_101:
        v190 = sub_307088();
        result = sub_EB68(v160, &qword_406B40);
        if (v190)
        {
          v225 = 0;
          LODWORD(v258) = 1;
          if (v178 == v261)
          {

            goto LABEL_71;
          }
        }

        else
        {
          LODWORD(v258) = 1;
          if (v178 == v261)
          {

            goto LABEL_111;
          }
        }
      }

      v182 = sub_304898();
      v183 = v252;
      (v262)(v252, v251, v180);
      v184 = sub_304898();
      result = (v264)(v183, v180);
      v185 = *(v182 + 16);
      if (v185 != *(v184 + 16))
      {
LABEL_100:

        v60 = v247;
        v160 = v238;
        v177 = v259;
        goto LABEL_101;
      }

      if (v185 && v182 != v184)
      {
        v186 = 0;
        v187 = v182 + 32;
        v188 = v184 + 32;
        while (v186 < *(v182 + 16))
        {
          result = sub_EB00(v187, &aBlock, &unk_400470);
          if (v186 >= *(v184 + 16))
          {
            goto LABEL_121;
          }

          sub_EB00(v188, v271, &unk_400470);
          if (*&v268[8] == v272)
          {
            sub_EB68(v271, &unk_400470);
            result = sub_EB68(&aBlock, &unk_400470);
          }

          else
          {
            v189 = sub_30D728();
            sub_EB68(v271, &unk_400470);
            result = sub_EB68(&aBlock, &unk_400470);
            if ((v189 & 1) == 0)
            {
              goto LABEL_100;
            }
          }

          ++v186;
          v187 += 56;
          v188 += 56;
          if (v185 == v186)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_120;
      }

LABEL_87:
      v160 = v238;
      sub_EB68(v238, &qword_406B40);

      v60 = v247;
      v177 = v259;
      if (v178 == v261)
      {

        if ((v258 & 1) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_111;
      }
    }
  }

  v62 = v28;
  v63 = 0;
  v64 = *(v222 + 16);
  v244 = &a1[(*(v222 + 80) + 32) & ~*(v222 + 80)];
  v237 = (v241 + 16);
  v236 = (v241 + 8);
  v255 = (v262 + 8);
  v259 = (v222 + 8);
  v229 = (v62 + 8);
  v227 = (v246 + 56);
  v243 = *(v222 + 72);
  *(&v65 + 1) = 2;
  v228 = xmmword_315430;
  *&v65 = 136315394;
  v240 = v65;
  *&v65 = 136315138;
  v226 = v65;
  v258 = v222 + 16;
  v257 = v64;
  while (1)
  {
    v66 = v260;
    (v64)(v260, &v244[v243 * v63], v61);
    v67 = v64;
    v68 = *(sub_3070B8() + 16);

    if (v68)
    {
      break;
    }

    (*v259)(v66, v61);
    v64 = v67;
LABEL_22:
    if (++v63 == v245)
    {
      goto LABEL_64;
    }
  }

  v250 = v63;
  v69 = v242;
  v67();
  v70 = sub_3070A8();
  v71 = (v69 + *(v248 + 28));
  *v71 = v70;
  v71[1] = v72;
  v73 = v252;
  (*v237)(v252, v58, v17);
  sub_304888();
  v75 = v74;
  (*v236)(v73, v17);
  if ((v75 & 1) == 0)
  {
    sub_124C4(0, &qword_3FC1C0);
    v88 = v235;
    sub_30D348();
    v89 = v231;
    sub_EB00(v69, v231, &qword_406B40);
    v90 = sub_3041D8();
    v91 = sub_30C7A8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&aBlock = v93;
      *v92 = v226;
      v94 = (v89 + *(v248 + 28));
      v95 = *v94;
      v96 = v94[1];

      sub_EB68(v89, &qword_406B40);
      v97 = sub_191264(v95, v96, &aBlock);
      v60 = v247;

      *(v92 + 4) = v97;
      _os_log_impl(&dword_0, v90, v91, "section (%s) is duplicated, dropping", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);

      (*v255)(v235, v256);
    }

    else
    {

      sub_EB68(v89, &qword_406B40);
      (*v255)(v88, v256);
    }

    sub_EB68(v69, &qword_406B40);
    v61 = v261;
    (*v259)(v260, v261);
    v63 = v250;
    v64 = v257;
    v17 = v249;
    v58 = v251;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400488);
  v76 = (*(v246 + 80) + 32) & ~*(v246 + 80);
  v77 = swift_allocObject();
  v77[1] = v228;
  sub_EB00(v69, v77 + v76, &qword_406B40);
  v78._rawValue = v77;
  sub_304878(v78);

  v270 = &_swiftEmptySetSingleton;
  v79 = sub_3070B8();
  v80 = v233;
  sub_307058();
  v81.super.isa = [v234 traitCollection];
  isa = v81.super.isa;
  v83 = sub_307018(v81);
  LOBYTE(v76) = v84;

  result = (*v229)(v80, v239);
  v86 = v66;
  if (v76)
  {
    v87 = v232;
  }

  else
  {

    result = sub_3070B8();
    v87 = v232;
    if ((v83 & 0x8000000000000000) != 0)
    {
      goto LABEL_124;
    }

    v79 = result;
    v98 = *(result + 16);
    if (v98 >= v83)
    {
      v99 = v83;
    }

    else
    {
      v99 = *(result + 16);
    }

    if (!v83)
    {
      v99 = 0;
    }

    if (v98 != v99)
    {
      sub_9E5CC(result, result + 32, 0, (2 * v99) | 1);
      v101 = v100;

      v79 = v101;
    }
  }

  v264 = *(v79 + 16);
  if (!v264)
  {

LABEL_63:

    v135 = v230;
    (*v227)(v230, 1, 1, v248);
    v58 = v251;
    sub_304858();

    sub_EB68(v135, &qword_400458);
    sub_EB68(v242, &qword_406B40);
    v61 = v261;
    (*v259)(v86, v261);
    v60 = v247;
    v63 = v250;
    v64 = v257;
    goto LABEL_22;
  }

  v102 = 0;
  v262 = (v79 + 32);
  v103 = _swiftEmptyArrayStorage;
  v263 = v79;
  while (v102 < *(v79 + 16))
  {
    sub_12670(&v262[40 * v102], v269);
    sub_12670(v269, v271);
    v104 = sub_307078();
    v106 = v105;
    __swift_destroy_boxed_opaque_existential_1(v269);
    *&v272 = v104;
    *(&v272 + 1) = v106;
    v107 = v270;
    if (v270[2] && (sub_30D7F8(), sub_30C1F8(), v108 = sub_30D858(), v109 = -1 << *(v107 + 32), v110 = v108 & ~v109, ((*(v107 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v110) & 1) != 0))
    {
      v111 = ~v109;
      while (1)
      {
        v112 = (v107[6] + 16 * v110);
        v113 = *v112 == v104 && v112[1] == v106;
        if (v113 || (sub_30D728() & 1) != 0)
        {
          break;
        }

        v110 = (v110 + 1) & v111;
        if (((*(v107 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v110) & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_124C4(0, &qword_3FC1C0);
      sub_30D348();
      sub_EB00(v271, &aBlock, &unk_400470);
      v120 = v254;
      v121 = v86;
      v122 = v87;
      v123 = v261;
      (v257)(v254, v121, v261);
      v124 = sub_3041D8();
      v125 = sub_30C7A8();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = v120;
        v127 = swift_slowAlloc();
        v253 = swift_slowAlloc();
        v265 = v253;
        *v127 = v240;
        v128 = *&v268[8];
        v129 = *&v268[16];

        sub_EB68(&aBlock, &unk_400470);
        v130 = sub_191264(v128, v129, &v265);

        *(v127 + 4) = v130;
        *(v127 + 12) = 2080;
        v131 = sub_3070A8();
        v133 = v132;
        (*v259)(v126, v123);
        v134 = sub_191264(v131, v133, &v265);

        *(v127 + 14) = v134;
        _os_log_impl(&dword_0, v124, v125, "item (%s) in section (%s) is duplicated, dropping", v127, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*v259)(v120, v123);
        sub_EB68(&aBlock, &unk_400470);
      }

      (*v255)(v122, v256);
      result = sub_EB68(v271, &unk_400470);
      v87 = v122;
      v86 = v260;
      v79 = v263;
    }

    else
    {
LABEL_52:

      sub_1927D4(&aBlock, v104, v106);

      sub_EB00(v271, &aBlock, &unk_400470);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_CB108(0, v103[2] + 1, 1, v103);
      }

      v115 = v103[2];
      v114 = v103[3];
      if (v115 >= v114 >> 1)
      {
        v103 = sub_CB108((v114 > 1), v115 + 1, 1, v103);
      }

      v79 = v263;
      result = sub_EB68(v271, &unk_400470);
      v103[2] = v115 + 1;
      v116 = &v103[7 * v115];
      v118 = v267;
      v117 = *v268;
      v119 = aBlock;
      v116[10] = *&v268[16];
      *(v116 + 3) = v118;
      *(v116 + 4) = v117;
      *(v116 + 2) = v119;
    }

    if (++v102 == v264)
    {

      v17 = v249;
      goto LABEL_63;
    }
  }

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
LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_9B900(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_9B978();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_9B978()
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v82 = *(v75 - 8);
  __chkstk_darwin(v75);
  v68 = v57 - v1;
  v62 = sub_3023D8();
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  v3 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = v57 - v4;
  v63 = sub_30BAA8();
  v58 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v6 - 8);
  v79 = (v57 - v7);
  v81 = sub_307108();
  v8 = *(v81 - 1);
  __chkstk_darwin(v81);
  v70 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = v57 - v11;
  v12 = sub_301F38();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = &_swiftEmptyDictionarySingleton;
  v17 = [*(v0 + 40) indexPathsForVisibleItems];
  v18 = sub_30C368();

  v19 = *(v18 + 16);
  v85 = v0;
  if (v19)
  {
    v21 = *(v13 + 16);
    v20 = v13 + 16;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v57[1] = v18;
    v23 = v18 + v22;
    v78 = (v8 + 48);
    v83 = *(v20 + 56);
    v84 = v21;
    v65 = (v8 + 16);
    v66 = (v8 + 32);
    v64 = (v8 + 8);
    v72 = (v82 + 7);
    v73 = (v3 + 56);
    v82 = (v20 - 8);
    v24 = &_swiftEmptyDictionarySingleton;
    v71 = (v8 + 56);
    v25 = v79;
    v80 = v20;
    (v21)(v16, v23, v12);
    while (1)
    {
      v26 = sub_301F08();
      if (v24[2] && (v27 = sub_191978(v26), (v28 & 1) != 0))
      {
        v29 = *(v24[7] + 8 * v27);
      }

      else
      {
        sub_95E58(&v90);
        v97 = v92;
        v98 = v93;
        v99 = v94;
        v95 = v90;
        v96 = v91;
        if (!v91)
        {
          (*v71)(v25, 1, 1, v81);
LABEL_4:
          sub_A0044(&v95);
          sub_EB68(v25, &unk_4004A0);
          (*v82)(v16, v12);
          goto LABEL_5;
        }

        (v91)(v16);
        if ((*v78)(v25, 1, v81) == 1)
        {
          goto LABEL_4;
        }

        v77 = *v66;
        v30 = v12;
        v31 = v69;
        v32 = v81;
        v77(v69, v25, v81);
        v33 = v70;
        (*v65)(v70, v31, v32);
        v76 = sub_301F08();
        sub_A0044(&v95);
        v34 = v31;
        v12 = v30;
        (*v64)(v34, v32);
        type metadata accessor for CollectionConverter.Shelf(0);
        v29 = swift_allocObject();
        *(v29 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___isSingleItemShelf) = 2;
        (*v73)(v29 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___impressionMetrics, 1, 1, v74);
        (*v72)(v29 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement, 1, 1, v75);
        v77((v29 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model), v33, v32);
        *(v29 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_index) = v76;
        v35 = sub_301F08();
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89[0] = v100;
        sub_295DD8(v29, v35, isUniquelyReferenced_nonNull_native);
        v24 = v89[0];
        v100 = v89[0];
        swift_endAccess();
      }

      sub_95E58(&v90);
      v97 = v92;
      v98 = v93;
      v99 = v94;
      v95 = v90;
      v96 = v91;
      v37 = v93;
      if (!v93)
      {
        break;
      }

      v37(&v86, v16);
      if (!*(&v87 + 1))
      {
        goto LABEL_19;
      }

      sub_12658(&v86, v89);
      if (!v95 || (v38 = (v95)(v16)) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v89);

        sub_A0044(&v95);
        goto LABEL_21;
      }

      v39 = v38;
      sub_12670(v89, &v86);

      v40 = sub_301ED8();
      __swift_destroy_boxed_opaque_existential_1(v89);
      type metadata accessor for CollectionConverter.ShelfItem(0);
      v41 = swift_allocObject();
      *(v41 + 80) = 0;
      (*v73)(v41 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___impressionMetrics, 1, 1, v74);
      (*v72)(v41 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement, 1, 1, v75);
      *(v41 + 16) = v29;
      sub_12658(&v86, v41 + 24);

      sub_A0044(&v95);
      *(v41 + 64) = v39;
      *(v41 + 72) = v40;
      sub_9CAB0(v41);
      swift_setDeallocating();

      __swift_destroy_boxed_opaque_existential_1(v41 + 24);

      sub_EB68(v41 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___impressionMetrics, &qword_4004B0);
      sub_EB68(v41 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement, &qword_4004B8);
      swift_deallocClassInstance();

      (*v82)(v16, v12);
LABEL_22:
      v25 = v79;
LABEL_5:
      v23 += v83;
      if (!--v19)
      {

        goto LABEL_25;
      }

      (v84)(v16, v23, v12);
    }

    v88 = 0;
    v86 = 0u;
    v87 = 0u;

LABEL_19:
    sub_EB68(&v86, &qword_4064D0);

    sub_A0044(&v95);
LABEL_21:
    (*v82)(v16, v12);

    goto LABEL_22;
  }

  v24 = &_swiftEmptyDictionarySingleton;
LABEL_25:
  v42 = 1 << *(v24 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v24[8];
  v45 = (v42 + 63) >> 6;
  v81 = (v58 + 8);
  v82 = (v58 + 32);
  v83 = (v59 + 48);
  v84 = (v58 + 48);
  v79 = (v59 + 8);
  v80 = (v59 + 32);

  v47 = 0;
  v48 = v67;
  while (v44)
  {
    v49 = v47;
LABEL_34:
    v44 &= v44 - 1;

    if (CollectionConverter.Shelf.isSingleItemShelf.getter())
    {

      v47 = v49;
    }

    else
    {
      CollectionConverter.Shelf.impressionMetrics.getter(v48);
      v50 = v63;
      if ((*v84)(v48, 1, v63) == 1)
      {
        sub_EB68(v48, &unk_400440);
      }

      else
      {
        v51 = v60;
        (*v82)(v60, v67, v50);

        sub_3027D8();

        v52 = v51;
        v48 = v67;
        (*v81)(v52, v63);
      }

      CollectionConverter.Shelf.clickLocationElement.getter(v68);
      v53 = v68;
      v54 = v62;
      if ((*v83)(v68, 1, v62) == 1)
      {

        result = sub_EB68(v53, &unk_404150);
      }

      else
      {
        v55 = v61;
        (*v80)(v61, v53, v54);

        sub_3023E8();

        v56 = v55;
        v48 = v67;
        result = (*v79)(v56, v54);
      }

      v47 = v49;
    }
  }

  while (1)
  {
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v49 >= v45)
    {
    }

    v44 = v24[v49 + 8];
    ++v47;
    if (v44)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_9C5E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400460);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  v4 = swift_projectBox();
  v5 = sub_95540();
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  sub_304AC8();

  return (*(v1 + 8))(v3, v0);
}

void sub_9C734(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005C0);
  isa = sub_30C358().super.isa;
  (*(a5 + 16))(a5, isa, a4, a1, a2);
}

void sub_9C7D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, double, double), double a4, double a5)
{
  v10 = sub_301F38();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    a3(a1, a2, a4, a5);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = (Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
    swift_beginAccess();
    v32[0] = *v16;
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[4];
    v32[3] = v16[3];
    v32[4] = v19;
    v32[1] = v17;
    v32[2] = v18;
    v20 = v16[3];
    v29 = v16[2];
    v30 = v20;
    v31 = v16[4];
    v21 = v16[1];
    v27 = *v16;
    v28 = v21;
    sub_A0660(v32, v26);
    sub_301EC8();
    v22 = CollectionConverter.shelf(for:)(v13);
    (*(v11 + 8))(v13, v10);
    v33[2] = v29;
    v33[3] = v30;
    v33[4] = v31;
    v33[0] = v27;
    v33[1] = v28;
    sub_A0044(v33);
    if (v22)
    {
      if (sub_17D284())
      {
        v24 = v23;
        ObjectType = swift_getObjectType();
        (*(v24 + 56))(a1, a2, ObjectType, v24, a4, 0.0);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_9CA20(uint64_t a1)
{
  v1[2] = a1;

  sub_302448();
  sub_30B8E8();
  v1[7] = v3;

  sub_302818();
  sub_30B8E8();
  v1[6] = v3;
}

uint64_t sub_9CAB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_3023D8();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_30BAA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_30BA88();
  v34 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v30 - v19;
  if ((CollectionConverter.Shelf.isSingleItemShelf.getter() & 1) == 0)
  {
    v30 = a1;
    v31 = v4;
    CollectionConverter.Shelf.impressionMetrics.getter(v14);
    v22 = *(v7 + 48);
    if (v22(v14, 1, v6))
    {
      sub_EB68(v14, &unk_400440);
    }

    else
    {
      sub_30BA98();
      sub_EB68(v14, &unk_400440);
      v27 = v34;
      (*(v34 + 32))(v20, v17, v15);

      v28 = sub_3027A8();

      if (v28)
      {
        CollectionConverter.ShelfItem.impressionMetrics.getter(v11);
        if (v22(v11, 1, v6) == 1)
        {
          (*(v34 + 8))(v20, v15);

          sub_EB68(v11, &unk_400440);
          v23 = v36;
          v24 = v31;
          v25 = v35;
LABEL_9:
          CollectionConverter.ShelfItem.clickLocationElement.getter(v25);
          if ((*(v23 + 48))(v25, 1, v24) == 1)
          {
            return sub_EB68(v25, &unk_404150);
          }

          v26 = v33;
          (*(v23 + 32))(v33, v25, v24);

          sub_3023E8();

          return (*(v23 + 8))(v26, v24);
        }

        v29 = v32;
        (*(v7 + 32))(v32, v11, v6);
        sub_3027D8();

        (*(v7 + 8))(v29, v6);
        (*(v34 + 8))(v20, v15);
        v23 = v36;
        v24 = v31;
LABEL_8:
        v25 = v35;
        goto LABEL_9;
      }

      (*(v27 + 8))(v20, v15);
    }

    v23 = v36;
    v24 = v31;
    goto LABEL_8;
  }

  return sub_9D014();
}

uint64_t sub_9D014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v0 - 8);
  v2 = &v30 - v1;
  v3 = sub_3023D8();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v30 - v6;
  __chkstk_darwin(v7);
  v35 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_30BAA8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  CollectionConverter.ShelfItem.impressionMetrics.getter(v11);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    sub_EB68(v11, &unk_400440);
  }

  else
  {
    (*(v13 + 16))(v15, v11, v12);
    sub_EB68(v11, &unk_400440);
    sub_30BA38();
    v32 = v3;
    v31 = *(v13 + 8);
    v31(v15, v12);
    (*(v13 + 32))(v21, v18, v12);

    sub_3027D8();

    v31(v21, v12);
    v3 = v32;
  }

  CollectionConverter.ShelfItem.clickLocationElement.getter(v2);
  if ((*(v36 + 48))(v2, 1, v3))
  {
    return sub_EB68(v2, &unk_404150);
  }

  v23 = v36;
  v24 = *(v36 + 16);
  v25 = v33;
  v24(v33, v2, v3);
  sub_EB68(v2, &unk_404150);
  v26 = v34;
  v24(v34, v25, v3);
  sub_302368();
  v27 = v23;
  v28 = *(v23 + 8);
  v28(v25, v3);
  v29 = v35;
  (*(v27 + 32))(v35, v26, v3);

  sub_3023E8();

  return (v28)(v29, v3);
}

uint64_t sub_9D4CC()
{

  sub_9FDDC(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CollectionController_largeMacHeader, &unk_408F50);
  return v0;
}

uint64_t sub_9D568()
{
  sub_9D4CC();

  return swift_deallocClassInstance();
}

void sub_9D5E8()
{
  v1[4] = &value witness table for Builtin.NativeObject + 64;
  v1[5] = &value witness table for Builtin.NativeObject + 64;
  v1[6] = &value witness table for Builtin.UnknownObject + 64;
  v1[7] = &value witness table for Builtin.UnknownObject + 64;
  v1[8] = &value witness table for Builtin.NativeObject + 64;
  v1[9] = &value witness table for Builtin.NativeObject + 64;
  v1[10] = "\b";
  v1[11] = "\b";
  v1[12] = &unk_31DB80;
  sub_A0E7C(319, &unk_4002A8, &type metadata accessor for Header, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v1[13] = v1;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_9D704(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Diffable() + 28);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_30D728();
}

Swift::Int sub_9D778()
{
  sub_30D7F8();
  sub_30C1F8();
  return sub_30D858();
}

Swift::Int sub_9D7D0()
{
  sub_30D7F8();
  sub_9D6F4();
  return sub_30D858();
}

uint64_t sub_9D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A00B8(a5, v8, type metadata accessor for ModernTitleHeaderView.Style);
  return ModernTitleHeaderView.style.setter(v8);
}

uint64_t sub_9D8B8()
{
  v0 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Supplementaries.LargeMacHeader(0);
  __swift_allocate_value_buffer(v7, qword_400240);
  v8 = __swift_project_value_buffer(v7, qword_400240);
  if (qword_3FABB0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_4294C8);
  sub_A00B8(v9, v6, type metadata accessor for ModernTitleHeaderView.Style);
  *v8 = 0xD000000000000022;
  v8[1] = 0x8000000000338AB0;
  sub_A00B8(v6, v8 + *(v7 + 20), type metadata accessor for ModernTitleHeaderView.Style);
  sub_A00B8(v6, v3, type metadata accessor for ModernTitleHeaderView.Style);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  sub_A0280(v3, v11 + v10);
  type metadata accessor for ModernTitleHeaderView(0);
  sub_30C868();
  return sub_A02E8(v6, type metadata accessor for ModernTitleHeaderView.Style);
}

uint64_t sub_9DACC()
{
  v0 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Supplementaries.LargeMacHeader(0);
  __swift_allocate_value_buffer(v7, qword_400258);
  v8 = __swift_project_value_buffer(v7, qword_400258);
  if (qword_3FABB8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_4294E0);
  sub_A00B8(v9, v6, type metadata accessor for ModernTitleHeaderView.Style);
  *v8 = 0xD000000000000026;
  v8[1] = 0x8000000000338A80;
  sub_A00B8(v6, v8 + *(v7 + 20), type metadata accessor for ModernTitleHeaderView.Style);
  sub_A00B8(v6, v3, type metadata accessor for ModernTitleHeaderView.Style);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  sub_A0280(v3, v11 + v10);
  type metadata accessor for ModernTitleHeaderView(0);
  sub_30C868();
  return sub_A02E8(v6, type metadata accessor for ModernTitleHeaderView.Style);
}

id sub_9DCE0(uint64_t a1, void *a2)
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR____TtCC23ShelfKitCollectionViews20CollectionControllerP33_837FEDCB1403A966AF6BE091B9902C8A38CollectionViewBackgroundAdjustHackView_recordedSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR____TtCC23ShelfKitCollectionViews20CollectionControllerP33_837FEDCB1403A966AF6BE091B9902C8A38CollectionViewBackgroundAdjustHackView_recordedHorizontalSizeClass];
  *v5 = 0;
  v5[8] = 1;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CollectionController.CollectionViewBackgroundAdjustHackView();
  v6 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_315430;
  *(v7 + 32) = sub_304848();
  *(v7 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v8 = v6;
  sub_30CF88();

  swift_unknownObjectRelease();

  return v8;
}

void sub_9DF38()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &v0[OBJC_IVAR____TtCC23ShelfKitCollectionViews20CollectionControllerP33_837FEDCB1403A966AF6BE091B9902C8A38CollectionViewBackgroundAdjustHackView_recordedHorizontalSizeClass];
  v4 = (v0[OBJC_IVAR____TtCC23ShelfKitCollectionViews20CollectionControllerP33_837FEDCB1403A966AF6BE091B9902C8A38CollectionViewBackgroundAdjustHackView_recordedHorizontalSizeClass + 8] & 1) != 0 || *v3 != v2;
  *v3 = v2;
  v3[8] = 0;
  v5 = &v0[OBJC_IVAR____TtCC23ShelfKitCollectionViews20CollectionControllerP33_837FEDCB1403A966AF6BE091B9902C8A38CollectionViewBackgroundAdjustHackView_recordedSize];
  v6 = *&v0[OBJC_IVAR____TtCC23ShelfKitCollectionViews20CollectionControllerP33_837FEDCB1403A966AF6BE091B9902C8A38CollectionViewBackgroundAdjustHackView_recordedSize];
  v7 = *&v0[OBJC_IVAR____TtCC23ShelfKitCollectionViews20CollectionControllerP33_837FEDCB1403A966AF6BE091B9902C8A38CollectionViewBackgroundAdjustHackView_recordedSize + 8];
  [v0 bounds];
  v9 = v8;
  v11 = v10;
  [v0 bounds];
  *v5 = v12;
  *(v5 + 1) = v13;
  if (v4 || (v6 == v9 ? (v14 = v7 == v11) : (v14 = 0), !v14))
  {
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        _s23ShelfKitCollectionViews19ShelvesViewProviderC6adjust010collectionF010boundsSize010horizontalK5ClassySo012UICollectionF0C_So6CGSizeVSo015UIUserInterfacekM0VtF_0(Strong, v2);
      }

      else
      {
      }
    }
  }
}

id sub_9E100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionController.CollectionViewBackgroundAdjustHackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9E1B0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_9E228(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_9E364(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

id sub_9E550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_9E5CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400490);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_9E6C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400458);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (*(*v1 + 16))
  {
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      sub_EB00(*(a1 + 48) + *(v17 + 72) * (v15 | (v14 << 6)), v8, &qword_406B40);
      sub_9F400(v8, v5);
      sub_EB68(v8, &qword_406B40);
      sub_EB68(v5, &qword_400458);
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

      v11 = *(a1 + 56 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

char *sub_9E8D4(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400458);
  __chkstk_darwin(v4 - 8);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v83 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(&v83 - v12);
  __chkstk_darwin(v13);
  v88 = &v83 - v18;
  if (*(a2 + 2))
  {
    v94 = v14;
    v90 = v17;
    v103 = v15;
    v95 = v6;
    v84 = 0;
    v20 = a1 + 56;
    v19 = *(a1 + 56);
    v21 = -1 << *(a1 + 32);
    v86 = ~v21;
    if (-v21 < 64)
    {
      v22 = ~(-1 << -v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v19;
    v24 = (63 - v21) >> 6;
    v100 = (v16 + 56);
    v87 = v16;
    v99 = (v16 + 48);
    v105 = a2 + 56;

    v26 = 0;
    v107 = v10;
    v92 = a1;
    v98 = v24;
    for (i = v9; ; v9 = i)
    {
      v27 = v23;
      v28 = v26;
      v106 = v23;
      if (!v23)
      {
        if (v24 <= (v26 + 1))
        {
          v29 = v26 + 1;
        }

        else
        {
          v29 = v24;
        }

        v102 = v29 - 1;
        v30 = v26;
        while (1)
        {
          v28 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v28 >= v24)
          {
            v31 = 0;
            v32 = 1;
            goto LABEL_17;
          }

          v27 = *(v20 + 8 * v28);
          ++v30;
          if (v27)
          {
            a1 = v92;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_16:
      v31 = (v27 - 1) & v27;
      sub_EB00(*(a1 + 48) + *(v87 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v9, &qword_406B40);
      v32 = 0;
      v102 = v28;
LABEL_17:
      v97 = *v100;
      v97(v9, v32, 1, v10);
      v96 = *v99;
      if (v96(v9, 1, v10) == 1)
      {
        goto LABEL_67;
      }

      v101 = v31;
      v33 = v88;
      sub_9FFD4(v9, v88);
      sub_30D7F8();
      v34 = v33 + *(v10 + 28);
      v35 = *(v34 + 8);
      v91 = *v34;
      sub_30C1F8();
      v36 = sub_30D858();
      v37 = -1 << a2[32];
      v26 = v36 & ~v37;
      v9 = v26 >> 6;
      v24 = 1 << v26;
      if (((1 << v26) & v105[v26 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_EB68(v88, &qword_406B40);
      v26 = v102;
      v23 = v101;
      a1 = v92;
      v24 = v98;
    }

    v89 = ~v37;
    v106 = *(v87 + 72);
    while (1)
    {
      v38 = a2;
      v39 = *(a2 + 6) + v106 * v26;
      v40 = v90;
      sub_EB00(v39, v90, &qword_406B40);
      v41 = v40 + *(v10 + 28);
      v42 = *v41 == v91 && *(v41 + 8) == v35;
      if (v42)
      {
        v110 = v86;
        v111 = v102;
        v23 = v101;
        v112 = v101;
        v108 = v92;
        v109 = v20;
        sub_EB68(v40, &qword_406B40);
        goto LABEL_31;
      }

      v43 = sub_30D728();
      sub_EB68(v40, &qword_406B40);
      if (v43)
      {
        break;
      }

      v26 = (v26 + 1) & v89;
      v9 = v26 >> 6;
      v24 = 1 << v26;
      v10 = v107;
      a2 = v38;
      if (((1 << v26) & v105[v26 >> 6]) == 0)
      {
        goto LABEL_6;
      }
    }

    v110 = v86;
    v111 = v102;
    v23 = v101;
    v112 = v101;
    v108 = v92;
    v109 = v20;
    v10 = v107;
LABEL_31:
    a2 = v38;
    v44 = sub_EB68(v88, &qword_406B40);
    v45 = v38[32];
    v88 = ((1 << v45) + 63) >> 6;
    v25 = 8 * v88;
    if ((v45 & 0x3Fu) <= 0xD)
    {
      goto LABEL_32;
    }

LABEL_69:
    v77 = v25;

    v78 = v77;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v10 = v107;
LABEL_32:
      v89 = &v83;
      __chkstk_darwin(v44);
      v47 = &v83 - ((v46 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v47, v105, v46);
      v48 = *&v47[8 * v9] & ~v24;
      v49 = *(a2 + 2);
      v91 = v47;
      *&v47[8 * v9] = v48;
      v50 = v49 - 1;
      v51 = &qword_406B40;
      v52 = v95;
      v53 = v98;
      v54 = v94;
      v55 = v102;
      v93 = v20;
      v104 = a2;
LABEL_33:
      v90 = v50;
      while (v23)
      {
        v56 = v55;
LABEL_45:
        v59 = __clz(__rbit64(v23));
        v60 = (v23 - 1) & v23;
        sub_EB00(*(v92 + 48) + (v59 | (v56 << 6)) * v106, v52, v51);
        v61 = 0;
LABEL_46:
        v97(v52, v61, 1, v10);
        if (v96(v52, 1, v10) == 1)
        {
          sub_EB68(v52, &qword_400458);
          a2 = sub_2EE0F0(v91, v88, v90, a2);
          goto LABEL_64;
        }

        v102 = v55;
        v101 = v60;
        sub_9FFD4(v52, v54);
        sub_30D7F8();
        v62 = (v54 + *(v10 + 28));
        v64 = *v62;
        v63 = v62[1];
        sub_30C1F8();
        v65 = sub_30D858();
        v66 = -1 << a2[32];
        v9 = v65 & ~v66;
        v67 = v9 >> 6;
        v68 = 1 << v9;
        if (((1 << v9) & v105[v9 >> 6]) != 0)
        {
          v69 = ~v66;
          while (1)
          {
            v70 = v51;
            v71 = v103;
            sub_EB00(*(v104 + 6) + v9 * v106, v103, v70);
            v72 = (v71 + *(v107 + 28));
            if (*v72 == v64 && v72[1] == v63)
            {
              break;
            }

            v74 = sub_30D728();
            sub_EB68(v71, v70);
            v51 = v70;
            if (v74)
            {
              goto LABEL_57;
            }

            v9 = (v9 + 1) & v69;
            v67 = v9 >> 6;
            v68 = 1 << v9;
            if (((1 << v9) & v105[v9 >> 6]) == 0)
            {
              goto LABEL_34;
            }
          }

          sub_EB68(v71, v70);
          v51 = v70;
LABEL_57:
          v54 = v94;
          sub_EB68(v94, v51);
          v75 = v91[v67];
          v91[v67] = v75 & ~v68;
          v42 = (v75 & v68) == 0;
          a2 = v104;
          v20 = v93;
          v52 = v95;
          v10 = v107;
          v53 = v98;
          v23 = v101;
          v55 = v102;
          if (!v42)
          {
            v50 = v90 - 1;
            if (__OFSUB__(v90, 1))
            {
              __break(1u);
            }

            if (v90 == 1)
            {

              a2 = &_swiftEmptySetSingleton;
              goto LABEL_64;
            }

            goto LABEL_33;
          }
        }

        else
        {
LABEL_34:
          v54 = v94;
          sub_EB68(v94, v51);
          a2 = v104;
          v20 = v93;
          v52 = v95;
          v10 = v107;
          v53 = v98;
          v23 = v101;
          v55 = v102;
        }
      }

      if (v53 <= (v55 + 1))
      {
        v57 = v55 + 1;
      }

      else
      {
        v57 = v53;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v53)
        {
          v60 = 0;
          v61 = 1;
          v55 = v58;
          goto LABEL_46;
        }

        v23 = *(v20 + 8 * v56);
        ++v55;
        if (v23)
        {
          v55 = v56;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_67:
      sub_EB68(v9, &qword_400458);
LABEL_64:
      sub_649B0();
      return a2;
    }

    v79 = swift_slowAlloc();
    memcpy(v79, v105, v78);
    v80 = v84;
    sub_9F674(v79, v88, a2, v26, &v108);
    v82 = v81;

    if (!v80)
    {

      v92 = v108;
      v86 = v110;
      a2 = v82;
      goto LABEL_64;
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_9F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = *v3;
  sub_30D7F8();
  v33 = v6;
  v11 = (a1 + *(v6 + 28));
  v12 = *v11;
  v13 = v11[1];
  sub_30C1F8();
  v14 = sub_30D858();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  v32 = v10 + 56;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v28 = v3;
    v29 = v7;
    v30 = a2;
    v31 = ~v15;
    v17 = *(v7 + 72);
    while (1)
    {
      sub_EB00(*(v10 + 48) + v17 * v16, v9, &qword_406B40);
      v18 = &v9[*(v33 + 28)];
      if (*v18 == v12 && *(v18 + 1) == v13)
      {
        break;
      }

      v20 = sub_30D728();
      sub_EB68(v9, &qword_406B40);
      if (v20)
      {
        goto LABEL_12;
      }

      v16 = (v16 + 1) & v31;
      if (((*(v32 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v21 = 1;
        a2 = v30;
        goto LABEL_15;
      }
    }

    sub_EB68(v9, &qword_406B40);
LABEL_12:
    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v34 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1936D4();
      v24 = v34;
    }

    v25 = *(v24 + 48) + v17 * v16;
    a2 = v30;
    sub_9FFD4(v25, v30);
    sub_9FB10(v16);
    v21 = 0;
    *v22 = v34;
LABEL_15:
    v7 = v29;
  }

  else
  {
    v21 = 1;
  }

  return (*(v7 + 56))(a2, v21, 1, v33);
}

void sub_9F674(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v51[0] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400458);
  __chkstk_darwin(v9 - 8);
  v11 = v51 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __chkstk_darwin(v63);
  v60 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = v15;
  v59 = v51 - v14;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v53 = a1;
  v54 = v11;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v56 = (v15 + 48);
  v57 = (v15 + 56);
  v64 = a3;
  v62 = a3 + 56;
  v55 = a5;
  while (2)
  {
    v52 = v19;
    do
    {
      while (1)
      {
        v20 = *a5;
        v21 = a5[1];
        v23 = a5[2];
        v22 = a5[3];
        v24 = a5[4];
        if (!v24)
        {
          v26 = (v23 + 64) >> 6;
          if (v26 <= v22 + 1)
          {
            v27 = v22 + 1;
          }

          else
          {
            v27 = (v23 + 64) >> 6;
          }

          v28 = v27 - 1;
          while (1)
          {
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v25 >= v26)
            {
              v29 = 0;
              v30 = 1;
              goto LABEL_14;
            }

            v24 = *(v21 + 8 * v25);
            ++v22;
            if (v24)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v25 = a5[3];
LABEL_13:
        v29 = (v24 - 1) & v24;
        sub_EB00(*(v20 + 48) + *(v58 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v11, &qword_406B40);
        v30 = 0;
        v28 = v25;
LABEL_14:
        v31 = v63;
        (*v57)(v11, v30, 1, v63);
        *a5 = v20;
        a5[1] = v21;
        a5[2] = v23;
        a5[3] = v28;
        a5[4] = v29;
        if ((*v56)(v11, 1, v31) == 1)
        {
          sub_EB68(v11, &qword_400458);
          v50 = v64;

          sub_2EE0F0(v53, v51[0], v52, v50);
          return;
        }

        v32 = v59;
        sub_9FFD4(v11, v59);
        v33 = v64;
        sub_30D7F8();
        v34 = (v32 + *(v31 + 28));
        v35 = *v34;
        v36 = v34[1];
        sub_30C1F8();
        v37 = sub_30D858();
        v38 = -1 << *(v33 + 32);
        v39 = v37 & ~v38;
        v40 = v39 >> 6;
        v41 = 1 << v39;
        if (((1 << v39) & *(v62 + 8 * (v39 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_EB68(v59, &qword_406B40);
        v11 = v54;
        a5 = v55;
      }

      v61 = ~v38;
      v42 = *(v58 + 72);
      while (1)
      {
        v43 = v60;
        sub_EB00(*(v64 + 48) + v42 * v39, v60, &qword_406B40);
        v44 = (v43 + *(v63 + 28));
        if (*v44 == v35 && v44[1] == v36)
        {
          break;
        }

        v46 = sub_30D728();
        v47 = v43;
        v48 = v46;
        sub_EB68(v47, &qword_406B40);
        if (v48)
        {
          goto LABEL_25;
        }

        v39 = (v39 + 1) & v61;
        v40 = v39 >> 6;
        v41 = 1 << v39;
        if (((1 << v39) & *(v62 + 8 * (v39 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_EB68(v43, &qword_406B40);
LABEL_25:
      sub_EB68(v59, &qword_406B40);
      v49 = v53[v40];
      v53[v40] = v49 & ~v41;
      v11 = v54;
      a5 = v55;
    }

    while ((v49 & v41) == 0);
    v19 = v52 - 1;
    if (__OFSUB__(v52, 1))
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v52 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_9FB10(int64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v21 - v4;
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_30D498();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v21 = v7;
      v22 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      do
      {
        v13 = v12;
        v14 = v12 * v9;
        sub_EB00(*(v6 + 48) + v12 * v9, v5, &qword_406B40);
        sub_30D7F8();
        sub_30C1F8();
        v15 = sub_30D858();
        sub_EB68(v5, &qword_406B40);
        v16 = v15 & v10;
        if (a1 >= v22)
        {
          if (v16 < v22)
          {
            v12 = v13;
            goto LABEL_5;
          }

          v12 = v13;
          if (a1 < v16)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v13;
          if (v16 < v22 && a1 < v16)
          {
            goto LABEL_5;
          }
        }

        v17 = v12 * a1;
        if (v12 * a1 < v14 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v14 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v17 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v10;
        v7 = v21;
      }

      while (((*(v21 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v6 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v20;
    ++*(v6 + 36);
  }
}

uint64_t sub_9FDDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != 1)
  {
    sub_1EBD0(result);
    sub_1EBD0(a3);
    sub_1EBD0(a5);
    sub_1EBD0(a7);

    return sub_1EBD0(a9);
  }

  return result;
}

uint64_t sub_9FE78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_9FEB0()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_9FF04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_9FF1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_20Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_9FFD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A00B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_A0124(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12)
{
  if (a12 >> 14 > 1u)
  {
    if (a12 >> 14 == 2)
    {
      sub_A0164(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, (a12 & 0x1FF) >> 8);
    }
  }

  else
  {
  }
}

void sub_A0164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, char a13)
{
  sub_A01F8(a1, a2, a3, a4, a5, a6);
  if (a13)
  {

    sub_A01F8(a7, a8, a9, a10, a11, a12);
  }
}

void sub_A01F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {

LABEL_4:

    return;
  }

  if (a6 == 2)
  {
  }

  else if (a6 == 3)
  {

    goto LABEL_4;
  }
}

uint64_t sub_A0280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernTitleHeaderView.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A02E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_33Tm()
{
  v1 = (type metadata accessor for ModernTitleHeaderView.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_301DF8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  sub_A0124(*(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112));
  v7 = v0 + v3 + v1[8];
  sub_A0164(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 89));
  v8 = v0 + v3 + v1[9];
  sub_A0164(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 89));
  v9 = v0 + v3 + v1[10];
  sub_A0164(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 89));

  v10 = v0 + v3 + v1[14];
  sub_A0124(*(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80), *(v10 + 88), *(v10 + 96), *(v10 + 104), *(v10 + 112));
  v11 = v0 + v3 + v1[15];
  sub_A0124(*(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80), *(v11 + 88), *(v11 + 96), *(v11 + 104), *(v11 + 112));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A05A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ModernTitleHeaderView.Style(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_9D81C(a1, a2, a3, a4, v10);
}

uint64_t sub_A06C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A06FC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_A0750()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A0790()
{
  v1 = sub_309938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_A0854(uint64_t a1)
{
  v3 = *(sub_309938() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_97568(a1, v4, v5);
}

uint64_t sub_A08C8()
{
  v1 = sub_309938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_A0964(uint64_t a1)
{
  v3 = *(sub_309938() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_97948(a1, v1 + v4, v5);
}

uint64_t sub_A0A00()
{
  v1 = sub_309938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_A0A88(uint64_t a1)
{
  v3 = *(sub_309938() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_987EC(a1, v4);
}

uint64_t sub_A0B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ModernTitleHeaderView.Style(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400610);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_A0C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ModernTitleHeaderView.Style(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400610);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_A0DB8()
{
  type metadata accessor for ModernTitleHeaderView.Style(319);
  if (v0 <= 0x3F)
  {
    sub_A0E7C(319, &unk_400680, type metadata accessor for ModernTitleHeaderView, &type metadata accessor for UICollectionView.SupplementaryRegistration);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A0E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t CollectionConverter.init(cellForIndexPath:sectionForIndexPath:indexPathForSection:itemForIndexPath:reloadItem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t CollectionConverter.section(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2();
  }

  v5 = sub_307108();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

{
  v3 = sub_301F38();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7)
  {
    sub_301EC8();
    v7(v6);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v9 = sub_307108();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

double CollectionConverter.item(for:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v2();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t CollectionConverter.shelf(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_307108();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = *(v1 + 16);
  if (v14)
  {
    v14(a1, v11);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v15 = *(v7 + 32);
      v15(v13, v5, v6);
      (*(v7 + 16))(v9, v13, v6);
      v16 = sub_301F08();
      (*(v7 + 8))(v13, v6);
      type metadata accessor for CollectionConverter.Shelf(0);
      v17 = swift_allocObject();
      *(v17 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___isSingleItemShelf) = 2;
      v18 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___impressionMetrics;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
      (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
      v20 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
      (*(*(v21 - 8) + 56))(v17 + v20, 1, 1, v21);
      v15((v17 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model), v9, v6);
      result = v17;
      *(v17 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_index) = v16;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v11);
  }

  sub_EB68(v5, &unk_4004A0);
  return 0;
}

char *CollectionConverter.shelfItem(for:with:in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (!v4)
  {
    *&v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_7;
  }

  v9 = *v3;
  v8 = *(v3 + 8);
  v10 = *(v3 + 56);
  v4(&v23);
  if (!*(&v24 + 1))
  {
LABEL_7:
    sub_EB68(&v23, &qword_4064D0);
    return 0;
  }

  sub_12658(&v23, v29);
  v11 = a2;
  if (!a2 && (!v9 || (v11 = v9(a1)) == 0))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    return 0;
  }

  if (a3)
  {
    v12 = a2;
    v13 = a3;
  }

  else
  {
    *&v23 = v9;
    *(&v23 + 1) = v8;
    v15 = *(v3 + 32);
    v24 = *(v3 + 16);
    v25 = v15;
    v26 = v4;
    v27 = v10;
    v28 = *(v3 + 64);
    v16 = a2;
    v13 = CollectionConverter.shelf(for:)(a1);
    if (!v13)
    {
      __swift_destroy_boxed_opaque_existential_1(v29);

      return 0;
    }
  }

  sub_12670(v29, &v23);

  v17 = sub_301ED8();
  __swift_destroy_boxed_opaque_existential_1(v29);
  type metadata accessor for CollectionConverter.ShelfItem(0);
  v18 = swift_allocObject();
  *(v18 + 10) = 0;
  v19 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___impressionMetrics;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  (*(*(v22 - 8) + 56))(&v18[v21], 1, 1, v22);
  *(v18 + 2) = v13;
  sub_12658(&v23, (v18 + 24));
  result = v18;
  *(v18 + 8) = v11;
  *(v18 + 9) = v17;
  return result;
}

uint64_t CollectionConverter.Shelf.isSingleItemShelf.getter()
{
  v1 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___isSingleItemShelf;
  v2 = *(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___isSingleItemShelf);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_A265C();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t CollectionConverter.Shelf.clickLocationElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_EB00(v1 + v9, v8, &qword_4004B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_34804(v8, a1, &unk_404150);
  }

  sub_EB68(v8, &qword_4004B8);
  sub_A2F54(a1);
  sub_EB00(a1, v5, &unk_404150);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_A32A0(v5, v1 + v9, &qword_4004B8);
  return swift_endAccess();
}

uint64_t CollectionConverter.indexPath(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    return v2();
  }

  v5 = sub_301F38();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

uint64_t sub_A19D8@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v17[-v11];
  v13 = *a1;
  swift_beginAccess();
  sub_EB00(v3 + v13, v12, &qword_4004B0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return sub_34804(v12, a3, &unk_400440);
  }

  sub_EB68(v12, &qword_4004B0);
  a2(v3);
  sub_EB00(a3, v9, &unk_400440);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_A32A0(v9, v3 + v13, &qword_4004B0);
  return swift_endAccess();
}

uint64_t CollectionConverter.ShelfItem.clickLocationElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_EB00(v1 + v9, v8, &qword_4004B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_34804(v8, a1, &unk_404150);
  }

  sub_EB68(v8, &qword_4004B8);
  sub_A488C(v1, a1);
  sub_EB00(a1, v5, &unk_404150);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_A32A0(v5, v1 + v9, &qword_4004B8);
  return swift_endAccess();
}

uint64_t CollectionConverter.cell(for:)()
{
  if (*v0)
  {
    return (*v0)();
  }

  else
  {
    return 0;
  }
}

uint64_t CollectionConverter.objectGraph(for:)(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    v3 = sub_307518();

    return v3;
  }

  else
  {
    type metadata accessor for ShelvesViewSwiftUIHelperCell();
    result = swift_dynamicCastClass();
    if (result)
    {
    }
  }

  return result;
}

uint64_t CollectionConverter.objectGraph(for:)()
{
  if (!*v0)
  {
    return 0;
  }

  result = (*v0)();
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = sub_307518();
    }

    else
    {
      type metadata accessor for ShelvesViewSwiftUIHelperCell();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v3 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph);
      }

      else
      {
        v3 = 0;
      }
    }

    return v3;
  }

  return result;
}

uint64_t CollectionConverter.section(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_301F38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = *(v2 + 32);
  if (!v14)
  {
    (*(v7 + 56))(v13, 1, 1, v6, v11);
    goto LABEL_7;
  }

  v14(a1, v11);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
LABEL_7:
    sub_EB68(v13, &qword_400600);
    goto LABEL_8;
  }

  v15 = sub_301F08();
  v16 = *(v7 + 8);
  result = v16(v13, v6);
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    return result;
  }

  v18 = *(v3 + 16);
  if (v18)
  {
    sub_301EC8();
    v18(v9);
    return v16(v9, v6);
  }

LABEL_8:
  v19 = sub_307108();
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

uint64_t CollectionConverter.index(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + 32);
  if (v7)
  {
    v7(a1, v4);
    v8 = sub_301F38();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) != 1)
    {
      v10 = sub_301F08();
      (*(v9 + 8))(v6, v8);
      return v10;
    }
  }

  else
  {
    v12 = sub_301F38();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_EB68(v6, &qword_400600);
  return 0;
}

uint64_t CollectionConverter.section(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_301F38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = *(v2 + 32);
  if (!v14)
  {
    (*(v7 + 56))(v13, 1, 1, v6, v11);
    goto LABEL_7;
  }

  v14(a1, v11);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
LABEL_7:
    sub_EB68(v13, &qword_400600);
    goto LABEL_8;
  }

  v15 = sub_301F08();
  v16 = *(v7 + 8);
  result = v16(v13, v6);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    return result;
  }

  v18 = *(v3 + 16);
  if (v18)
  {
    sub_301EC8();
    v18(v9);
    return v16(v9, v6);
  }

LABEL_8:
  v19 = sub_307108();
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

uint64_t CollectionConverter.reload(_:from:animated:)(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(v3 + 64);
  if (v4)
  {
    return v4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t CollectionConverter.Shelf.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model;
  v4 = sub_307108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL sub_A265C()
{
  v0 = sub_307048();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  sub_307068();
  v7 = sub_30BAA8();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_EB68(v6, &unk_400440);
  if (v8 != 1)
  {
    return 0;
  }

  sub_307058();
  sub_306FE8();
  (*(v1 + 8))(v3, v0);
  v9 = sub_306FD8();
  v11 = v10;
  if (v9 == sub_306FD8() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_30D728();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(sub_3070B8() + 16);

  return v16 == 1;
}

uint64_t (*CollectionConverter.Shelf.isSingleItemShelf.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = CollectionConverter.Shelf.isSingleItemShelf.getter() & 1;
  return sub_A28DC;
}

uint64_t sub_A2900@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_30BAA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_307108();
  sub_A7284(&qword_4009A0, &type metadata accessor for ModernShelf);
  sub_30BF78();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_EB68(v4, &unk_400440);
    v9 = 1;
  }

  else
  {
    sub_30BA58();
    v10 = *(v6 + 8);
    v10(v4, v5);
    sub_3070A8();
    sub_30BA48();

    v10(v8, v5);
    v9 = 0;
  }

  return (*(v6 + 56))(a1, v9, 1, v5);
}

void (*CollectionConverter.Shelf.impressionMetrics.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  CollectionConverter.Shelf.impressionMetrics.getter(v9);
  return sub_A2C68;
}

uint64_t sub_A2C74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_EB00(a1, &v14 - v9, &unk_404150);
  v11 = *a2;
  sub_34804(v10, v6, &unk_404150);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_A32A0(v6, v11 + v12, &qword_4004B8);
  return swift_endAccess();
}

uint64_t CollectionConverter.Shelf.clickLocationElement.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_34804(a1, &v9 - v4, &unk_404150);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_A32A0(v5, v1 + v7, &qword_4004B8);
  return swift_endAccess();
}

uint64_t sub_A2F54@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_30BA88();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  CollectionConverter.Shelf.impressionMetrics.getter(&v18 - v12);
  v18 = sub_3070A8();
  sub_EB00(v13, v10, &unk_400440);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_EB68(v13, &unk_400440);

    v14 = 1;
    v13 = v10;
    v15 = v21;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_30BA98();
    sub_30BA78();
    (*(v19 + 8))(v3, v20);
    sub_30BA68();
    v15 = v21;
    sub_302388();
    (*(v5 + 8))(v7, v4);
    v14 = 0;
  }

  sub_EB68(v13, &unk_400440);
  v16 = sub_3023D8();
  return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
}

uint64_t sub_A32A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void (*CollectionConverter.Shelf.clickLocationElement.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  CollectionConverter.Shelf.clickLocationElement.getter(v9);
  return sub_A3434;
}

void sub_A3434(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_EB00(v2[10], v2[7], &unk_404150);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement;
    swift_beginAccess();
    sub_A32A0(v5, v7 + v8, &qword_4004B8);
    swift_endAccess();
    sub_EB68(v4, &unk_404150);
  }

  else
  {
    v9 = v2[6];
    sub_34804(v2[10], v2[7], &unk_404150);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement;
    swift_beginAccess();
    sub_A32A0(v5, v9 + v10, &qword_4004B8);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t CollectionConverter.Shelf.deinit()
{
  v1 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model;
  v2 = sub_307108();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___impressionMetrics, &qword_4004B0);
  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement, &qword_4004B8);
  return v0;
}

uint64_t CollectionConverter.Shelf.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model;
  v2 = sub_307108();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___impressionMetrics, &qword_4004B0);
  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf____lazy_storage___clickLocationElement, &qword_4004B8);

  return swift_deallocClassInstance();
}

void *sub_A3768()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_A37C8(v0);
    *(v0 + 80) = v1;
  }

  return v1;
}

void *sub_A37C8(uint64_t a1)
{
  sub_12670(a1 + 24, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400980);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_EB68(v13, &qword_400988);
    return _swiftEmptyArrayStorage;
  }

  sub_12658(v13, v16);
  __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
  v1 = sub_30AE18();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_13:

    v12 = _swiftEmptyArrayStorage;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

  v3 = sub_30D668();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_4:
  *&v13[0] = _swiftEmptyArrayStorage;
  result = sub_30D5D8();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_30D578();
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      type metadata accessor for CollectionConverter.ShelfItem.Button(0);
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___impressionMetrics;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
      (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
      v10 = OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
      (*(*(v11 - 8) + 56))(v7 + v10, 1, 1, v11);
      swift_beginAccess();
      swift_weakAssign();
      *(v7 + 24) = v6;
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
    }

    while (v3 != v5);

    v12 = *&v13[0];
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_A3AA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_EB00(a1, &v18 - v13, &unk_400440);
  v15 = *a2;
  sub_34804(v14, v10, &unk_400440);
  (*(v12 + 56))(v10, 0, 1, v11);
  v16 = *a5;
  swift_beginAccess();
  sub_A32A0(v10, v15 + v16, &qword_4004B0);
  return swift_endAccess();
}

uint64_t sub_A3C60(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_34804(a1, &v11 - v6, &unk_400440);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = *a2;
  swift_beginAccess();
  sub_A32A0(v7, v2 + v9, &qword_4004B0);
  return swift_endAccess();
}

uint64_t sub_A3D94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_307108();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BA88();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_302268();
  v7 = *(v43 - 1);
  __chkstk_darwin(v43);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v10 - 8);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = sub_30BAA8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v37 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v39 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1Tm(a1 + 3, a1[6]);
  sub_30CE78();
  sub_302248();
  (*(v7 + 8))(v9, v43);
  sub_30BF78();
  v20 = *(v16 + 48);
  if (v20(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &unk_400440);
    v21 = 1;
    v22 = v44;
  }

  else
  {
    v23 = v37;
    sub_30BA58();
    v43 = *(v16 + 8);
    v33 = v16 + 8;
    v43(v14, v15);
    v24 = a1[2];
    v25 = v38;
    CollectionConverter.Shelf.impressionMetrics.getter(v38);
    if (!v20(v25, 1, v15))
    {
      v26 = v34;
      sub_30BA98();
      sub_30BA78();
      (*(v35 + 8))(v26, v36);
    }

    sub_EB68(v25, &unk_400440);
    v27 = v39;
    sub_30BA38();

    v28 = v43;
    v43(v23, v15);
    v30 = v40;
    v29 = v41;
    v31 = v42;
    (*(v41 + 16))(v40, v24 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model, v42);
    sub_307078();
    (*(v29 + 8))(v30, v31);
    v22 = v44;
    sub_30BA48();

    v28(v27, v15);
    v21 = 0;
  }

  return (*(v16 + 56))(v22, v21, 1, v15);
}

void (*CollectionConverter.ShelfItem.impressionMetrics.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  CollectionConverter.ShelfItem.impressionMetrics.getter(v9);
  return sub_A4408;
}

void sub_A4414(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = (*(*a1 + 72) + 56);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  if (a2)
  {
    v9 = v4[6];
    sub_EB00(v4[10], v4[7], &unk_400440);
    (*v5)(v7, 0, 1, v8);
    v10 = *a3;
    swift_beginAccess();
    sub_A32A0(v7, v9 + v10, &qword_4004B0);
    swift_endAccess();
    sub_EB68(v6, &unk_400440);
  }

  else
  {
    v11 = v4[6];
    sub_34804(v4[10], v4[7], &unk_400440);
    (*v5)(v7, 0, 1, v8);
    v12 = *a3;
    swift_beginAccess();
    sub_A32A0(v7, v11 + v12, &qword_4004B0);
    swift_endAccess();
  }

  free(v6);
  free(v7);

  free(v4);
}

uint64_t sub_A45AC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_EB00(a1, &v14 - v9, &unk_404150);
  v11 = *a2;
  sub_34804(v10, v6, &unk_404150);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_A32A0(v6, v11 + v12, &qword_4004B8);
  return swift_endAccess();
}

uint64_t CollectionConverter.ShelfItem.clickLocationElement.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_34804(a1, &v9 - v4, &unk_404150);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_A32A0(v5, v1 + v7, &qword_4004B8);
  return swift_endAccess();
}

uint64_t sub_A488C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_30BA88();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_30BAA8();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_307108();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v10 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v16 - 8);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v22 = *(a1 + 16);
  CollectionConverter.Shelf.clickLocationElement.getter(v39 - v20);
  v48 = v15;
  CollectionConverter.ShelfItem.impressionMetrics.getter(v15);
  (*(v7 + 16))(v9, v22 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model, v6);
  v41 = sub_307078();
  v24 = v23;
  (*(v7 + 8))(v9, v6);
  sub_EB00(v21, v18, &unk_404150);
  v25 = sub_3023D8();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v18, 1, v25) == 1)
  {
    sub_EB68(v18, &unk_404150);
    v40 = 0;
    v27 = v49;
    v28 = v46;
  }

  else
  {
    v29 = sub_3023C8();
    if (v30)
    {
      v40 = v29;
    }

    else
    {
      v40 = sub_302398();
    }

    v28 = v46;
    (*(v26 + 8))(v18, v25);
    v27 = v49;
  }

  v31 = *(a1 + 72);
  v32 = v48;
  sub_EB00(v48, v12, &unk_400440);
  if ((*(v28 + 48))(v12, 1, v27) == 1)
  {

    sub_EB68(v32, &unk_400440);
    sub_EB68(v21, &unk_404150);
    sub_EB68(v12, &unk_400440);
    v33 = 1;
    v34 = v47;
  }

  else
  {
    v35 = *(v28 + 32);
    v46 = v24;
    v36 = v42;
    v35(v42, v12, v27);
    v39[1] = v31;
    v37 = v43;
    sub_30BA98();
    sub_30BA78();
    (*(v44 + 8))(v37, v45);
    sub_30BA68();
    v34 = v47;
    sub_302388();
    (*(v28 + 8))(v36, v49);
    sub_EB68(v48, &unk_400440);
    sub_EB68(v21, &unk_404150);
    v33 = 0;
  }

  return (*(v26 + 56))(v34, v33, 1, v25);
}

void (*CollectionConverter.ShelfItem.clickLocationElement.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  CollectionConverter.ShelfItem.clickLocationElement.getter(v9);
  return sub_A4F5C;
}

void sub_A4F5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_EB00(v2[10], v2[7], &unk_404150);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement;
    swift_beginAccess();
    sub_A32A0(v5, v7 + v8, &qword_4004B8);
    swift_endAccess();
    sub_EB68(v4, &unk_404150);
  }

  else
  {
    v9 = v2[6];
    sub_34804(v2[10], v2[7], &unk_404150);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement;
    swift_beginAccess();
    sub_A32A0(v5, v9 + v10, &qword_4004B8);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t CollectionConverter.ShelfItem.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___impressionMetrics, &qword_4004B0);
  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement, &qword_4004B8);
  return v0;
}

uint64_t CollectionConverter.ShelfItem.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___impressionMetrics, &qword_4004B0);
  sub_EB68(v0 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem____lazy_storage___clickLocationElement, &qword_4004B8);

  return swift_deallocClassInstance();
}

uint64_t CollectionConverter.ShelfItem.Button.item.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*CollectionConverter.ShelfItem.Button.item.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_A5334;
}

void sub_A5334(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_A53E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v57 = sub_30BAA8();
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400990);
  __chkstk_darwin(v18 - 8);
  v53 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  __chkstk_darwin(v23);
  v56 = &v48 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v54 = v5;
    v50 = a1;
    v51 = v11;
    v49 = v8;
    v26 = Strong;
    CollectionConverter.ShelfItem.impressionMetrics.getter(v17);
    v27 = *(v3 + 48);
    v28 = v27(v17, 1, v57);
    v52 = v26;
    if (v28)
    {
      v48 = v3;
      sub_EB68(v17, &unk_400440);
      v29 = sub_30BA88();
      v30 = *(v29 - 8);
      v31 = *(v30 + 56);
      v31(v22, 1, 1, v29);
      CollectionConverter.Shelf.impressionMetrics.getter(v14);
      v32 = 1;
      if (!v27(v14, 1, v57))
      {
        sub_30BA98();
        v32 = 0;
      }

      sub_EB68(v14, &unk_400440);
      v31(v56, v32, 1, v29);
      v33 = (*(v30 + 48))(v22, 1, v29);
      v3 = v48;
      if (v33 != 1)
      {
        sub_EB68(v22, &qword_400990);
      }
    }

    else
    {
      sub_30BA98();
      sub_EB68(v17, &unk_400440);
      v35 = sub_30BA88();
      v36 = *(v35 - 8);
      v37 = *(v36 + 56);
      v37(v22, 0, 1, v35);
      v38 = v56;
      (*(v36 + 32))(v56, v22, v35);
      v37(v38, 0, 1, v35);
    }

    v58 = *(v50 + 24);
    sub_30B038();
    sub_A7284(&qword_400998, &type metadata accessor for Action);
    v39 = v51;
    sub_30BF78();
    if (v27(v39, 1, v57) == 1)
    {
      sub_EB68(v56, &qword_400990);

      sub_EB68(v39, &unk_400440);
      v34 = 1;
    }

    else
    {
      sub_30BA58();
      v40 = *(v3 + 8);
      v40(v39, v57);
      v41 = v53;
      sub_EB00(v56, v53, &qword_400990);
      v42 = sub_30BA88();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v41, 1, v42) == 1)
      {
        sub_EB68(v41, &qword_400990);
      }

      else
      {
        sub_30BA78();
        (*(v43 + 8))(v41, v42);
      }

      v44 = v49;
      v45 = v54;
      sub_30BA38();

      v46 = v57;
      v40(v45, v57);
      sub_30B028();
      sub_30BA48();

      v40(v44, v46);
      sub_EB68(v56, &qword_400990);
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  return (*(v3 + 56))(v55, v34, 1, v57);
}

void (*CollectionConverter.ShelfItem.Button.impressionMetrics.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  CollectionConverter.ShelfItem.Button.impressionMetrics.getter(v9);
  return sub_A5BD8;
}

uint64_t CollectionConverter.ShelfItem.Button.clickLocationElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_EB00(v1 + v9, v8, &qword_4004B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_34804(v8, a1, &unk_404150);
  }

  sub_EB68(v8, &qword_4004B8);
  sub_A60D4(a1);
  sub_EB00(a1, v5, &unk_404150);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_A32A0(v5, v1 + v9, &qword_4004B8);
  return swift_endAccess();
}

uint64_t sub_A5DF4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_EB00(a1, &v14 - v9, &unk_404150);
  v11 = *a2;
  sub_34804(v10, v6, &unk_404150);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_A32A0(v6, v11 + v12, &qword_4004B8);
  return swift_endAccess();
}

uint64_t CollectionConverter.ShelfItem.Button.clickLocationElement.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_34804(a1, &v9 - v4, &unk_404150);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement;
  swift_beginAccess();
  sub_A32A0(v5, v1 + v7, &qword_4004B8);
  return swift_endAccess();
}

uint64_t sub_A60D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_30BA88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BAA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v8 - 8);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v45 = v3;
    v46 = v2;
    v47 = v6;
    v48 = v5;
    v49 = a1;
    CollectionConverter.ShelfItem.clickLocationElement.getter(v17);
    v21 = sub_3023D8();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    v24 = v23(v17, 1, v21);
    v52 = v22;
    if (v24 == 1)
    {

      v25 = v20;
      CollectionConverter.Shelf.clickLocationElement.getter(v20);

      if (v23(v17, 1, v21) != 1)
      {
        sub_EB68(v17, &unk_404150);
      }
    }

    else
    {
      v25 = v20;
      (*(v22 + 32))(v20, v17, v21);
      (*(v22 + 56))(v20, 0, 1, v21);
    }

    v28 = v54;
    CollectionConverter.ShelfItem.Button.impressionMetrics.getter(v54);
    v44 = sub_30B028();
    v30 = v29;
    sub_EB00(v25, v14, &unk_404150);
    if (v23(v14, 1, v21) == 1)
    {
      sub_EB68(v14, &unk_404150);
      v31 = 0;
      v33 = v47;
      v32 = v48;
    }

    else
    {
      v34 = sub_3023C8();
      v33 = v47;
      v32 = v48;
      if (!v35)
      {
        v34 = sub_302398();
      }

      v31 = v34;
      (*(v52 + 8))(v14, v21);
    }

    v36 = v53;
    sub_EB00(v28, v53, &unk_400440);
    if ((*(v33 + 48))(v36, 1, v32) == 1)
    {

      sub_EB68(v28, &unk_400440);
      sub_EB68(v25, &unk_404150);
      sub_EB68(v36, &unk_400440);
      v37 = *(v52 + 56);
      v38 = v49;
      v39 = 1;
    }

    else
    {
      v40 = *(v33 + 32);
      v48 = v25;
      v41 = v51;
      v40(v51, v36, v32);
      v53 = v30;
      v42 = v50;
      v47 = v31;
      sub_30BA98();
      sub_30BA78();
      (*(v45 + 8))(v42, v46);
      sub_30BA68();
      v43 = v49;
      sub_302388();

      (*(v33 + 8))(v41, v32);
      sub_EB68(v54, &unk_400440);
      sub_EB68(v48, &unk_404150);
      v37 = *(v52 + 56);
      v38 = v43;
      v39 = 0;
    }

    return v37(v38, v39, 1, v21);
  }

  else
  {
    v26 = sub_3023D8();
    return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
  }
}

void (*CollectionConverter.ShelfItem.Button.clickLocationElement.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  CollectionConverter.ShelfItem.Button.clickLocationElement.getter(v9);
  return sub_A6850;
}

void sub_A6850(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_EB00(v2[10], v2[7], &unk_404150);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement;
    swift_beginAccess();
    sub_A32A0(v5, v7 + v8, &qword_4004B8);
    swift_endAccess();
    sub_EB68(v4, &unk_404150);
  }

  else
  {
    v9 = v2[6];
    sub_34804(v2[10], v2[7], &unk_404150);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement;
    swift_beginAccess();
    sub_A32A0(v5, v9 + v10, &qword_4004B8);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t CollectionConverter.ShelfItem.Button.deinit()
{
  swift_weakDestroy();

  sub_EB68(v0 + OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___impressionMetrics, &qword_4004B0);
  sub_EB68(v0 + OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement, &qword_4004B8);
  return v0;
}

uint64_t CollectionConverter.ShelfItem.Button.__deallocating_deinit()
{
  swift_weakDestroy();

  sub_EB68(v0 + OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___impressionMetrics, &qword_4004B0);
  sub_EB68(v0 + OBJC_IVAR____TtCCV23ShelfKitCollectionViews19CollectionConverter9ShelfItem6Button____lazy_storage___clickLocationElement, &qword_4004B8);

  return swift_deallocClassInstance();
}

uint64_t sub_A6AF0@<X0>(_BYTE *a1@<X8>)
{
  result = CollectionConverter.Shelf.isSingleItemShelf.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_A6C10@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation9IndexPathVSo20UICollectionViewCellCSgIegno_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_A6D48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_A6DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_A6E24()
{
  sub_307108();
  if (v0 <= 0x3F)
  {
    sub_A6F88(319, &qword_400730, &unk_400440);
    if (v1 <= 0x3F)
    {
      sub_A6F88(319, &unk_400738, &unk_404150);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_A6F88(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_30D3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_A6FE4()
{
  sub_A6F88(319, &qword_400730, &unk_400440);
  if (v0 <= 0x3F)
  {
    sub_A6F88(319, &unk_400738, &unk_404150);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_A715C()
{
  sub_A6F88(319, &qword_400730, &unk_400440);
  if (v0 <= 0x3F)
  {
    sub_A6F88(319, &unk_400738, &unk_404150);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_A7284(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_A72E0(char a1)
{
  v3 = sub_302AB8();
  v5.n128_f64[0] = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_bookmarkedGlyph;
  if ((a1 & 1) == 0)
  {
    v8 = &OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_bookmarkGlyph;
  }

  (*(v4 + 16))(v7, &v1[*v8], v5);
  sub_24E704(v7);
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v1);
}

uint64_t sub_A73D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter;
  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter])
  {

    sub_30A3A8();
  }

  *&v1[v3] = a1;

  if (*&v1[v3])
  {
    sub_A8160();

    v4 = v1;
    sub_30A3A8();
  }
}

id sub_A7488(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v46 = a3;
  v47 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v5 - 8);
  v7 = v40 - v6;
  v41 = v40 - v6;
  v8 = sub_302AB8();
  v42 = v8;
  v44 = *(v8 - 8);
  v9 = v44;
  __chkstk_darwin(v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_bookmarkGlyph;
  sub_302898();
  sub_302878();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter] = 0;
  v43 = *(v9 + 16);
  v43(v11, &v4[v12], v8);
  v13 = sub_3029E8();
  v14 = *(v13 - 8);
  v40[0] = *(v14 + 56);
  v40[1] = v14 + 56;
  (v40[0])(v7, 1, 1, v13);
  v15 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_A803C();
  v17 = objc_opt_self();
  v18 = [v17 systemGray6Color];
  v19 = [v17 systemGray5Color];
  v20 = sub_30CFB8();

  *&v4[v16] = v20;
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v4[v21] = [objc_allocWithZone(UIImageView) init];
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v23 = [objc_allocWithZone(UIView) init];
  [v23 setClipsToBounds:1];
  [v23 setUserInteractionEnabled:0];
  *&v4[v22] = v23;
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v25 = [objc_opt_self() effectWithStyle:16];
  v26 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v25];

  v27 = v26;
  [v27 setUserInteractionEnabled:0];
  [v27 setClipsToBounds:1];

  *&v4[v24] = v27;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v28 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v28 = 0;
  v28[1] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  (v40[0])(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v13);
  v30 = v42;
  v43(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v11, v42);
  swift_beginAccess();
  v31 = v41;
  sub_A8088(v41, &v4[v29]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 2;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v32 = *&v4[v21];
  v33 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v33 + 1) = 0;
  *(v33 + 2) = 0;
  *v33 = v32;
  v33[24] = 0;
  v34 = type metadata accessor for GlyphButton();
  v48.receiver = v4;
  v48.super_class = v34;
  v35 = v32;
  v36 = objc_msgSendSuper2(&v48, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  sub_24F788(v45, v47, v46 & 1);
  sub_A80F8(v31);
  (*(v44 + 8))(v11, v30);
  v37 = v36;
  [v37 addTarget:v37 action:"primaryActionTriggered" forControlEvents:0x2000];
  v38 = sub_30C098();
  [v37 setAccessibilityIdentifier:v38];

  return v37;
}

uint64_t sub_A7C04()
{
  v1 = 0xD00000000000001FLL;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter) && (, v2 = sub_30A368(), , (v2 & 1) != 0))
  {
    v3 = "out:autolayoutMode:)";
  }

  else
  {
    v3 = "ACCESSIBILITY_BOOKMARK_VALUE_ON";
    v1 = 0xD000000000000020;
  }

  v4 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0xE000000000000000;
  v9._object = (v3 | 0x8000000000000000);
  v9._countAndFlagsBits = v1;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v5.super.isa = v4;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v6 = sub_301AB8(v9, v10, v5, v11, v8);

  return v6;
}

void sub_A7CF4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_30C0D8();
    v6 = a1;
    v7 = sub_30C098();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for BookmarkButton();
  objc_msgSendSuper2(&v9, *a4, v7);
}

uint64_t sub_A7DB8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_bookmarkGlyph;
  v2 = sub_302AB8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_bookmarkedGlyph, v2);
}

id sub_A7E60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookmarkButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BookmarkButton()
{
  result = qword_4009D0;
  if (!qword_4009D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A7F98()
{
  result = sub_302AB8();
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

unint64_t sub_A803C()
{
  result = qword_3FFD48;
  if (!qword_3FFD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FFD48);
  }

  return result;
}

uint64_t sub_A8088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_A80F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A8160()
{
  result = qword_4009E0;
  if (!qword_4009E0)
  {
    type metadata accessor for BookmarkButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4009E0);
  }

  return result;
}

void (*sub_A8324(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 72) = v1;
  ObjectType = swift_getObjectType();
  v4[5].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[4].receiver = [(objc_super *)v4 tintColor];
  return sub_A83C0;
}

void sub_A83C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    *(v2 + 16) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 16), "setTintColor:", v3);
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = *(v2 + 80);
    *(v2 + 32) = v5;
    *(v2 + 40) = v4;
    objc_msgSendSuper2((v2 + 32), "setTintColor:", v3);

    v6 = *(v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
    *(v2 + 48) = v5;
    *(v2 + 56) = v4;
    v7 = objc_msgSendSuper2((v2 + 48), "tintColor");
    [v6 setTintColor:v7];
  }

  free(v2);
}

void (*sub_A8768(uint64_t *a1))(uint64_t a1)
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
  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_A880C;
}

void sub_A880C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v5 != v2)
  {
    sub_24E1B8();
  }

  free(v1);
}

void (*sub_A8864(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  a1[2] = v3;
  v4 = [*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView) _groupName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_30C0D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_A8900;
}

void sub_A8900(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    sub_24DAE8(v3, v2);
  }

  else
  {
    sub_24DAE8(*a1, v2);
  }
}

void sub_A8974(objc_class *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button) + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView);
  v4 = v3;
  v5 = v3;
  v7.value.super.super.isa = a1;
  v7.is_nil = 0;
  UIVisualEffectView.setBlurEffect(_:animated:)(v7, v4);
}

uint64_t sub_A89E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_A8A38(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
  if (v5 != a1)
  {
    sub_24E1B8();
  }
}

void (*sub_A8AA8(uint64_t **a1))(void *)
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
  v2[4] = sub_A8768(v2);
  return sub_A9A78;
}

id sub_A8B18()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "tintColor");

  return v1;
}

void sub_A8B64(void *a1)
{
  ObjectType = swift_getObjectType();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, "setTintColor:", a1);
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button];
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, "tintColor");
  [v4 setTintColor:v5];
}

void (*sub_A8C04(uint64_t **a1))(void *)
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
  v2[4] = sub_A8324(v2);
  return sub_A9A78;
}

id sub_A8C74()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

void sub_A8CD8(void *a1)
{
  sub_252B30(a1);
}

void (*sub_A8D24(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  *(v3 + 32) = v5;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v4 + 24) = v7;
  v8 = v7;
  return sub_A8DD0;
}

void sub_A8DD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_252B30(v5);

    v3 = *v4;
  }

  else
  {
    sub_252B30(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_A8E40()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button) + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView) _groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_30C0D8();

  return v3;
}

void (*sub_A8EE8(uint64_t **a1))(void *)
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
  v2[4] = sub_A8864(v2);
  return sub_A8F58;
}

uint64_t sub_A8F5C(uint64_t a1, uint64_t a2, char *a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  __chkstk_darwin(a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v22 - v16;
  (*(v11 + 32))(&v22 - v16, v15);
  v18 = objc_allocWithZone(a4);
  (*(v11 + 16))(v13, v17, a5);
  sub_A90B8(a1, v13, a3, v18, a5, a6);
  v20 = v19;
  (*(v11 + 8))(v17, a5);
  return v20;
}

void sub_A90B8(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - v14;
  v16 = sub_302AB8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v85 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89[3] = a5;
  v89[4] = a6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v89);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0Tm, a2, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);
  sub_30B8E8();
  __swift_project_boxed_opaque_existential_1Tm(v88, v88[3]);
  if (sub_30A8C8())
  {
    v75 = ObjectType;
    *&a4[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_objectGraph] = a1;
    sub_12670(v88, &a4[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_episodeController]);
    sub_12670(v89, &a4[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_model]);
    v81 = *(v17 + 16);
    v77 = a3;
    v81(v85, a3, v16);
    v20 = sub_3029E8();
    v21 = *(v20 - 8);
    v78 = *(v21 + 56);
    v79 = v21 + 56;
    v78(v15, 1, 1, v20);
    v82 = type metadata accessor for GlyphButton();
    v22 = objc_allocWithZone(v82);
    v84 = v17;
    v80 = v15;
    v23 = v22;
    v24 = &v22[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
    *v24 = 0;
    *(v24 + 1) = 0;
    *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
    v83 = v16;
    v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
    sub_124C4(0, &qword_3FFD48);
    v26 = objc_opt_self();
    v76 = a1;

    v27 = [v26 systemGray6Color];
    v28 = [v26 systemGray5Color];
    v29 = sub_30CFB8();

    *&v23[v25] = v29;
    v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
    *&v23[v30] = [objc_allocWithZone(UIImageView) init];
    v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
    v32 = [objc_allocWithZone(UIView) init];
    [v32 setClipsToBounds:1];
    [v32 setUserInteractionEnabled:0];
    *&v23[v31] = v32;
    v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
    v34 = [objc_opt_self() effectWithStyle:16];
    v35 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v34];

    v36 = v35;
    [v36 setUserInteractionEnabled:0];
    [v36 setClipsToBounds:1];

    *&v23[v33] = v36;
    v37 = v83;
    *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
    *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
    v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
    v38 = &v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
    *v38 = 0;
    v38[1] = 0;
    v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
    v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
    v78(&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v20);
    v81(&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v85, v37);
    swift_beginAccess();
    v40 = v80;
    sub_A8088(v80, &v23[v39]);
    swift_endAccess();
    v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 2;
    v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
    v41 = *&v23[v30];
    v42 = &v23[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
    *(v42 + 1) = 0;
    *(v42 + 2) = 0;
    *v42 = v41;
    v42[24] = 0;
    v87.receiver = v23;
    v87.super_class = v82;
    v43 = v41;
    v44 = objc_msgSendSuper2(&v87, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_24DE30();
    if (*(v44 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24))
    {
      __break(1u);
    }

    else
    {
      v45 = objc_opt_self();
      sub_124C4(0, &qword_403000);
      isa = sub_30C358().super.isa;
      v82 = v45;
      [(objc_class *)v45 activateConstraints:isa];

      sub_A80F8(v40);
      v48 = v84 + 8;
      v47 = *(v84 + 8);
      v47(v85, v37);
      *&a4[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button] = v44;
      v49 = v44;
      v50 = sub_30C098();
      [v49 setAccessibilityIdentifier:v50];

      v86.receiver = a4;
      v86.super_class = v75;
      v51 = objc_msgSendSuper2(&v86, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v52 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button;
      v53 = *&v51[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button];
      v54 = v51;
      [v54 addSubview:v53];
      v55 = *&v51[v52];
      v56 = [v55 superview];
      if (v56)
      {
        v57 = v56;
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_31D480;
        v59 = [v55 leftAnchor];
        v60 = [v57 leftAnchor];
        v61 = [v59 constraintEqualToAnchor:v60];
        v84 = v48;
        v62 = v61;

        *(v58 + 32) = v62;
        v63 = [v55 rightAnchor];
        v64 = [v57 rightAnchor];
        v65 = [v63 constraintEqualToAnchor:v64];

        *(v58 + 40) = v65;
        v66 = [v55 topAnchor];
        v67 = [v57 topAnchor];
        v68 = [v66 constraintEqualToAnchor:v67];

        *(v58 + 48) = v68;
        v69 = [v55 bottomAnchor];
        v70 = [v57 bottomAnchor];
        v71 = [v69 constraintEqualToAnchor:v70];

        *(v58 + 56) = v71;
        v72 = sub_30C358().super.isa;

        [(objc_class *)v82 activateConstraints:v72];
      }

      v73 = v54;
      [v73 setContextMenuInteractionEnabled:1];
      [v73 setShowsMenuAsPrimaryAction:1];

      v47(v77, v83);
      __swift_destroy_boxed_opaque_existential_1(v89);
      __swift_destroy_boxed_opaque_existential_1(v88);
    }
  }

  else
  {
    (*(v17 + 8))(a3, v16);

    __swift_destroy_boxed_opaque_existential_1(v89);
    __swift_destroy_boxed_opaque_existential_1(v88);
    swift_deallocPartialClassInstance();
  }
}

id sub_A9A7C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___loadingIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___loadingIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___loadingIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) init];
    [v4 setUserInteractionEnabled:0];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_A9B24(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_presenter] = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_backgroundView;
  v10 = [objc_allocWithZone(UIView) init];
  [v10 setUserInteractionEnabled:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___loadingIndicator] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___overlayGlyphView] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState] = 3;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for ExpandableFollowButton();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_AAA18();
  [v11 addTarget:v11 action:"didTapButton" forControlEvents:64];
  sub_AA354();

  return v11;
}

void sub_A9D94(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ExpandableFollowButton();
  objc_msgSendSuper2(&v8, "setHighlighted:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_backgroundView];
  if ([v1 state] == &dword_0 + 1)
  {
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v4 = [qword_40DB80 colorWithAlphaComponent:0.1];
  }

  else
  {
    v5 = objc_allocWithZone(UIColor);
    v7[4] = sub_AB208;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_2EB7C;
    v7[3] = &block_descriptor_22;
    v6 = _Block_copy(v7);
    v4 = [v5 initWithDynamicProvider:v6];
    _Block_release(v6);
  }

  [v3 setBackgroundColor:v4];
}

char *sub_A9F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    if (*&result[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_presenter])
    {
      v14 = sub_3022E8();
      v15 = *(v14 - 8);
      v16 = *(v15 + 56);
      v17 = v15 + 56;
      v16(v11, 1, 1, v14);
      v18 = v13;

      if (sub_30CE68())
      {
        *v5 = v18;
        size = CGRectNull.size;
        *(v5 + 8) = CGRectNull.origin;
        *(v5 + 24) = size;
        v28 = v16;
        v20 = enum case for PresentationSource.Position.view(_:);
        v21 = sub_3022D8();
        v27 = v17;
        v22 = v21;
        v23 = *(v21 - 8);
        v29 = v18;
        v24 = v23;
        (*(v23 + 104))(v5, v20, v21);
        (*(v24 + 56))(v5, 0, 1, v22);
        v18 = v29;
        sub_3022A8();
        sub_EB68(v11, &qword_3FC1B0);
        v28(v8, 0, 1, v14);
        sub_AB300(v8, v11);
      }

      else
      {
      }

      v25 = sub_302268();
      (*(*(v25 - 8) + 56))(v2, 1, 1, v25);
      v26 = sub_309D28();

      sub_EB68(v2, &unk_4090C0);
      sub_EB68(v11, &qword_3FC1B0);
      return v26;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_AA354()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState;
  sub_AA4E0(v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState]);
  v5 = sub_30D278();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_30D2A8();
  [v0 setHidden:v0[v4] == 3];
  [v0 setUserInteractionEnabled:((v0[v4] - 3) & 0xFD) != 0];
  [v0 setShowsMenuAsPrimaryAction:v0[v4] - 6 < 0xFFFFFFFD];
  [v0 setContextMenuInteractionEnabled:v0[v4] - 6 < 0xFFFFFFFD];
  if (v0[v4] == 5)
  {
    sub_AAD90();
  }

  else
  {
    v6 = sub_A9A7C();
    [v6 removeFromSuperview];
  }

  return [v0 invalidateIntrinsicContentSize];
}

uint64_t sub_AA4E0(unsigned __int8 a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  sub_30D258();
  if (v2 == 4)
  {
    v6 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0xE000000000000000;
    v19._object = 0x80000000003390D0;
    v19._countAndFlagsBits = 0xD00000000000001BLL;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v7.super.isa = v6;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_301AB8(v19, v20, v7, v21, v17);
  }

  sub_30D268();
  sub_AE104(a1, v5);
  v8 = sub_302AB8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_EB68(v5, &qword_3FE8A8);
  }

  else
  {
    v10 = sub_302A08();
    (*(v9 + 8))(v5, v8);
    v11 = [objc_opt_self() tintColor];
    [v10 imageWithTintColor:v11];
  }

  sub_30D248();
  v12 = objc_opt_self();
  v13 = [v12 tintColor];
  sub_30D1F8();
  sub_30D188();
  v14 = [v12 clearColor];
  v15 = sub_30D108();
  sub_304678();
  return v15(v18, 0);
}

void sub_AA78C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC140);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_presenter))
  {
    v10 = sub_302268();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = sub_3022E8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_309F08();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);

    sub_309D38();

    sub_EB68(v3, &unk_3FC140);
    sub_EB68(v6, &qword_3FC1B0);
    sub_EB68(v9, &unk_4090C0);
  }
}

void sub_AAA18()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_backgroundView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_backgroundView]];
  [v0 sendSubviewToBack:*&v0[v1]];
  [*&v0[v1] setClipsToBounds:1];
  v2 = *&v0[v1];
  v3 = objc_allocWithZone(UIColor);
  v23[4] = sub_AB208;
  v23[5] = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_2EB7C;
  v23[3] = &block_descriptor_14;
  v4 = _Block_copy(v23);
  v5 = v2;
  v6 = [v3 initWithDynamicProvider:v4];
  _Block_release(v4);

  [v5 setBackgroundColor:v6];

  v7 = [*&v0[v1] layer];
  [v7 setCornerRadius:14.0];

  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_31D480;
  v10 = [*&v0[v1] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [*&v0[v1] leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [*&v0[v1] trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v8 activateConstraints:isa];
}

id sub_AAD90()
{
  v1 = sub_A9A7C();
  [v0 addSubview:v1];

  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_31D480;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___loadingIndicator;
  v5 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___loadingIndicator] centerXAnchor];
  v6 = [v0 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] centerYAnchor];
  v9 = [v0 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [*&v0[v4] heightAnchor];
  v12 = [v11 constraintEqualToConstant:14.0];

  *(v3 + 48) = v12;
  v13 = [*&v0[v4] widthAnchor];
  v14 = [v13 constraintEqualToConstant:14.0];

  *(v3 + 56) = v14;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v2 activateConstraints:isa];

  v16 = *&v0[v4];

  return [v16 startAnimating];
}

id sub_AAFD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandableFollowButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_AB094(id result)
{
  if (result == 3)
  {
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState) = 5;
    goto LABEL_14;
  }

  if (result == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState);
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState) = 4;
    if (v2 == 4)
    {
      return result;
    }

    goto LABEL_14;
  }

  v3 = result;
  v4 = sub_30CAB8();
  v5 = sub_303AC8();
  result = sub_303AC8();
  if ((v4 & 1) == 0)
  {
    v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState);
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState) = 2;
    if (v8 == 2)
    {
      return result;
    }

    goto LABEL_14;
  }

  v6 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState) = (v5 != result) | v3 & 1;
  v7 = (v6 - 3) < 3 || v6 == 2;
  if (v7 || ((((v5 != result) | v3) ^ v6) & 1) != 0)
  {
LABEL_14:

    return sub_AA354();
  }

  return result;
}

id sub_AB208(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (qword_3FAFB8 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = [qword_40DB80 colorWithAlphaComponent:dbl_31E0D0[v1 == &dword_0 + 2]];

  return v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_AB2C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_AB300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_AB370()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_presenter) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_backgroundView;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setUserInteractionEnabled:0];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___loadingIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton____lazy_storage___overlayGlyphView) = 0;
  sub_30D648();
  __break(1u);
}

id sub_AB44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v59 = a6;
  v60 = a5;
  v58 = a4;
  LODWORD(v61) = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v10 - 8);
  v64 = &v52 - v11;
  v12 = sub_302AB8();
  v63 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_30C7D8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID];
  *v18 = 0;
  v18[8] = 1;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_objectGraph] = a1;
  sub_3098F8();

  sub_30B8C8();
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter] = v66;
  sub_124C4(0, &qword_400B40);
  (*(v15 + 104))(v17, enum case for NSUserDefaults.Name.shared(_:), v14);
  sub_ADC90(&qword_400B48, &qword_400B40);
  sub_30B958();
  (*(v15 + 8))(v17, v14);
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_userDefaults] = v66;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID] = a2;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_contentKind] = v61;
  sub_303BA8();
  v61 = a1;
  sub_30B8E8();
  v57 = v66;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_stateMachine] = sub_303B98();

  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_currentState] = sub_303A88();
  if (qword_3FA9F8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_400A90);
  v20 = *(v63 + 16);
  v52 = v19;
  v53 = v20;
  v20(v62);
  v21 = sub_3029E8();
  v22 = *(v21 - 8);
  v54 = *(v22 + 56);
  v55 = v22 + 56;
  v54(v64, 1, 1, v21);
  v23 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v23 = 0;
  v23[1] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v25 = objc_opt_self();
  v26 = [v25 systemGray6Color];
  v27 = [v25 systemGray5Color];
  v28 = sub_30CFB8();

  *&v7[v24] = v28;
  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v7[v29] = [objc_allocWithZone(UIImageView) init];
  v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v31 = [objc_allocWithZone(UIView) init];
  [v31 setClipsToBounds:1];
  [v31 setUserInteractionEnabled:0];
  *&v7[v30] = v31;
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v33 = [objc_opt_self() effectWithStyle:16];
  v34 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v33];

  v35 = v34;
  [v35 setUserInteractionEnabled:0];
  [v35 setClipsToBounds:1];

  *&v7[v32] = v35;
  v36 = v53;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v37 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v37 = 0;
  v37[1] = 0;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v54(&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v21);
  v39 = v62;
  v36(&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v62, v12);
  swift_beginAccess();
  v40 = v64;
  sub_A8088(v64, &v7[v38]);
  swift_endAccess();
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 2;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v41 = *&v7[v29];
  v42 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v42 + 1) = 0;
  *(v42 + 2) = 0;
  *v42 = v41;
  v42[24] = 0;
  v43 = type metadata accessor for GlyphButton();
  v65.receiver = v7;
  v65.super_class = v43;
  v44 = v41;
  v45 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  sub_24F788(v58, v60, v59 & 1);
  sub_EB68(v40, &unk_4080B0);
  (*(v63 + 8))(v39, v12);
  if (*(v45 + OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_currentState) == 2)
  {
    v46 = qword_3FAA00;
    v47 = v45;
    if (v46 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v12, qword_400AA8);
    v36(v39, v48, v12);
  }

  else
  {
    v36(v39, v52, v12);
    v49 = v45;
  }

  sub_24E704(v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = v45;

  sub_303A68();

  [v50 addTarget:v50 action:"primaryActionTriggered" forControlEvents:64];

  sub_ABE38();

  return v50;
}

void sub_ABC9C()
{
  v0 = sub_302AB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_303A88();
    v5[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_currentState] = v6;
    if (v6 == 2)
    {
      if (qword_3FAA00 != -1)
      {
        swift_once();
      }

      v7 = qword_400AA8;
    }

    else
    {
      if (qword_3FA9F8 != -1)
      {
        swift_once();
      }

      v7 = qword_400A90;
    }

    v8 = __swift_project_value_buffer(v0, v7);
    (*(v1 + 16))(v3, v8, v0);
    sub_24E704(v3);
  }
}

void sub_ABE38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_302F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter))
  {
    v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription;
    if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription))
    {
      v21 = v0;
      v22 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B58);
      sub_30B8C8();
      if (v25)
      {
        sub_12658(&v24, v26);
        v20 = v9;
        __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
        (*(v5 + 104))(v7, enum case for TipGroup.headerButtons(_:), v4);
        sub_302F58();
        v14 = sub_302EF8();

        (*(v5 + 8))(v7, v4);
        *&v24 = v14;
        sub_124C4(0, &qword_3FBF20);
        v15 = sub_30C8F8();
        v23 = v15;
        v16 = sub_30C8E8();
        (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B68);
        sub_EC8C(&qword_400B70, &qword_400B68);
        sub_ADC90(&qword_3FCF68, &qword_3FBF20);
        sub_304F28();
        sub_EB68(v3, &unk_408F30);

        swift_allocObject();
        v17 = v21;
        swift_unknownObjectWeakInit();
        sub_EC8C(&qword_400B78, &qword_400B50);
        v18 = v22;
        v19 = sub_304F58();

        (*(v20 + 8))(v12, v18);
        *(v17 + v13) = v19;

        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        sub_EB68(&v24, &qword_400B60);
      }
    }
  }
}

uint64_t sub_AC37C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_302AB8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

void sub_AC3D4(uint64_t a1)
{
  sub_ADD1C(a1, &v5);
  if (v6)
  {
    sub_12658(&v5, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_AC4E8(v7);
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_EB68(&v5, &qword_400B80);
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      if (*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter] && (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID + 8] & 1) == 0)
      {
        v4 = v3;

        sub_309898();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_AC4E8(uint64_t result)
{
  if (!*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter])
  {
    return result;
  }

  v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID + 8] != 1)
  {
    return result;
  }

  v3 = result;

  v4 = sub_303108();
  v6 = v5;
  if (v4 == sub_303108() && v6 == v7)
  {

    goto LABEL_12;
  }

  v9 = sub_30D728();

  if (v9)
  {
LABEL_12:
    v10 = __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
    v11 = __chkstk_darwin(v10);
    (*(v13 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

    v14 = v1;
    sub_30ADE8();
    v15 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_userDefaults];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = v20;
    v18 = v15;
    sub_1EBD0(v17);
    v20 = sub_ADDC4;
    v21 = v16;
    sub_3098A8();

    *v2 = v19[0];
    v2[8] = 0;
    return sub_ADDCC(v19);
  }
}
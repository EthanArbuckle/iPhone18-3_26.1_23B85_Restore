void type metadata accessor for MessageComposeResult()
{
  if (!qword_100010C38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010C38);
    }
  }
}

void *sub_100001C9C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_100001CDC(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  sub_100001E6C(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_100001F24(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin(v4, v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_100007564();
    (*(v5 + 8))(v8, v3);
    sub_100001F68(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1000074D4();
  [v2 setValue:v9 forKey:v10];

  swift_unknownObjectRelease();
}

uint64_t sub_100001E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010D08, &unk_1000082A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001EDC(uint64_t *a1, uint64_t *a2)
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

void *sub_100001F24(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001F68(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001FB4(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000074D4();
  v5 = [a1 objectForKey:v4];

  if (v5)
  {
    sub_100007554();
    swift_unknownObjectRelease();
    sub_10000209C(v8);
    v6 = sub_1000074D4();
    a2 = [a1 BOOLForKey:v6];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_10000209C(v8);
  }

  return a2 & 1;
}

uint64_t sub_10000209C(uint64_t a1)
{
  v2 = sub_100001EDC(&qword_100010D08, &unk_1000082A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100002104()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton);
  }

  else
  {
    v4 = sub_100002168(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100002168(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._countAndFlagsBits = 0x45554E49544E4F43;
  v12.value._countAndFlagsBits = 0x6C6172656E6547;
  v11._object = 0xE800000000000000;
  v12.value._object = 0xE700000000000000;
  v5.super.isa = v4;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1000073B4(v11, v12, v5, v13, v10);

  v6 = sub_1000074D4();

  [v2 setTitle:v6 forState:0];

  v7 = v2;
  v8 = sub_1000074D4();
  [v7 setAccessibilityIdentifier:v8];

  [v7 addTarget:a1 action:"didTapContinueButton" forControlEvents:64];
  return v7;
}

id sub_1000022E8()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView);
  }

  else
  {
    sub_1000023C8();
    v4 = sub_1000074D4();

    v5 = [objc_opt_self() imageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

unint64_t sub_1000023C8()
{
  v1 = (v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName);
  if (*(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName + 8);
  }

  else
  {
    v2 = sub_100002440();
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

unint64_t sub_100002440()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  HasHomeButton = TUDeviceHasHomeButton();
  v3 = 0xD000000000000019;
  if (HasHomeButton)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000018;
    v4 = 0xD000000000000017;
  }

  if (v1)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 == 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

id sub_100002510()
{
  v1 = v0;
  v2 = [objc_opt_self() labelColor];
  v3 = [objc_opt_self() configurationWithHierarchicalColor:v2];

  v4 = v3;
  v5 = sub_1000074D4();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  v17._object = objc_allocWithZone(v1);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  v17._countAndFlagsBits = 0xE000000000000000;
  v20._object = 0x8000000100007D20;
  v20._countAndFlagsBits = 0xD000000000000017;
  v22.value._countAndFlagsBits = 0x6C6172656E6547;
  v22.value._object = 0xE700000000000000;
  v10.super.isa = v9;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1000073B4(v20, v22, v10, v24, v17);

  v11 = sub_1000074D4();

  v12 = [v8 bundleForClass:ObjCClassFromMetadata];
  v18._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000020;
  v21._object = 0x8000000100007D40;
  v23.value._countAndFlagsBits = 0x6C6172656E6547;
  v23.value._object = 0xE700000000000000;
  v13.super.isa = v12;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000073B4(v21, v23, v13, v25, v18);

  v14 = sub_1000074D4();

  v15 = [v19 initWithTitle:v11 detailText:v14 icon:v6];

  return v15;
}

void sub_100002854()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SharePlayWelcomeViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  [v0 availableContentViewHeight];
  v2 = v1;
  v3 = sub_1000022E8();
  [v3 frame];
  v5 = v4;

  if (v5 <= v2)
  {
    v6 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint;
    v7 = *&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint];
    if (v7)
    {
      [*&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] constant];
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    [v0 availableContentViewHeight];
    if (v7)
    {
      v11 = v9 == v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = *&v0[v6];
      if (v12)
      {
        v13 = v12;
        [v0 availableContentViewHeight];
        [v13 setConstant:?];
      }
    }
  }
}

void sub_100002994()
{
  v1 = [v0 buttonTray];
  v2 = sub_100002104();
  [v1 addButton:v2];

  v3 = [v0 contentView];
  v4 = sub_1000022E8();
  [v3 addSubview:v4];

  v5 = [v0 contentView];
  v6 = [v5 heightAnchor];

  v7 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView;
  [*&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView] frame];
  v9 = [v6 constraintEqualToConstant:v8];

  v10 = objc_opt_self();
  sub_100001EDC(&qword_100010E70, &unk_1000084A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000082B0;
  v12 = [*&v0[v7] centerXAnchor];
  v13 = [v0 contentView];
  v14 = [v13 centerXAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v11 + 32) = v15;
  v16 = [*&v0[v7] centerYAnchor];
  v17 = [v0 contentView];
  v18 = [v17 centerYAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v11 + 40) = v19;
  *(v11 + 48) = v9;
  sub_100003280();
  v20 = v9;
  isa = sub_100007504().super.isa;

  [v10 activateConstraints:isa];

  v22 = *&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] = v20;
}

uint64_t sub_100002C50()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate;
  swift_beginAccess();
  sub_1000031AC(v0 + v1, v5);
  if (!v6)
  {
    return sub_1000032CC(v5, &qword_100010D60, &unk_100008310);
  }

  sub_10000321C(v5, v4);
  sub_1000032CC(v5, &qword_100010D60, &unk_100008310);
  v2 = *sub_100001F24(v4, v4[3]);
  sub_1000063D0();
  return sub_100001F68(v4);
}

id sub_100002D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = &v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton] = 0;
  *&v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView] = 0;
  v12 = &v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] = 0;
  v13 = sub_1000074D4();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_1000074D4();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_1000074D4();

LABEL_6:
  v18.receiver = v7;
  v18.super_class = type metadata accessor for SharePlayWelcomeViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:symbolName:contentLayout:", v13, v14, v15, a7);

  return v16;
}

id sub_100002F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = &v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton] = 0;
  *&v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView] = 0;
  v11 = &v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] = 0;
  v12 = sub_1000074D4();

  if (a4)
  {
    v13 = sub_1000074D4();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for SharePlayWelcomeViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:icon:contentLayout:", v12, v13, a5, a6);

  return v14;
}

id sub_1000030C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayWelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000031AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010D60, &unk_100008310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000321C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100003280()
{
  result = qword_100010D68;
  if (!qword_100010D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010D68);
  }

  return result;
}

uint64_t sub_1000032CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *PeoplePickerShellViewController.connection.getter()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerShellViewController.connection.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    v7 = sub_1000073D4();
    v9 = v8;
    v10 = objc_allocWithZone(LSApplicationRecord);
    v11 = sub_100006194(v7, v9, 1);
    if (v11)
    {
      v17 = v11;

      v16 = sub_1000042A8();
      swift_getObjectType();
      v18 = [v17 localizedName];
      sub_1000074E4();

      sub_100007494();
    }

    else
    {
      sub_100007514();
      sub_100001EDC(&qword_100010D78, &qword_100008350);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100008320;
      v13 = sub_1000073D4();
      v15 = v14;

      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100006270();
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v16 = sub_100007544();
      sub_1000074C4();
    }
  }
}

void (*PeoplePickerShellViewController.connection.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1000035F4;
}

void sub_1000035F4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000073D4();
      v8 = v7;
      v9 = objc_allocWithZone(LSApplicationRecord);
      v10 = sub_100006194(v6, v8, 1);
      if (v10)
      {
        v16 = v3[3];
        v17 = v10;

        v15 = sub_1000042A8();
        swift_getObjectType();
        v18 = [v17 localizedName];
        sub_1000074E4();

        sub_100007494();
      }

      else
      {
        sub_100007514();
        sub_100001EDC(&qword_100010D78, &qword_100008350);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_100008320;
        v12 = sub_1000073D4();
        v14 = v13;

        *(v11 + 56) = &type metadata for String;
        *(v11 + 64) = sub_100006270();
        *(v11 + 32) = v12;
        *(v11 + 40) = v14;
        sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
        v15 = sub_100007544();
        sub_1000074C4();
      }
    }
  }

  free(v3);
}

uint64_t PeoplePickerShellViewController.extensionViewController.getter()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t PeoplePickerShellViewController.extensionViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void *PeoplePickerShellViewController.activity.getter()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerShellViewController.activity.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!a1)
  {
    v5 = v4;
    goto LABEL_8;
  }

  if (!v4)
  {
    v5 = a1;
    goto LABEL_7;
  }

  sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
  v5 = a1;
  v4 = v4;
  v6 = sub_100007534();

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = sub_1000042A8();
    swift_getObjectType();
    sub_100007474();

    v5 = v7;
    goto LABEL_8;
  }

LABEL_8:
}

void (*PeoplePickerShellViewController.activity.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_100003AEC;
}

void sub_100003AEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (!v3)
    {
LABEL_13:

      v7 = *v4;
      goto LABEL_17;
    }

    if (v7)
    {
      sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
      v8 = v3;
      v7 = v7;
      v9 = sub_100007534();

      if (v9)
      {

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      v8 = v3;
    }

    v12 = v2[4];
    v13 = sub_1000042A8();
    swift_getObjectType();
    sub_100007474();

    goto LABEL_12;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

  if (!v7)
  {
    v10 = v3;
    goto LABEL_15;
  }

  sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
  v10 = v3;
  v7 = v7;
  v11 = sub_100007534();

  if ((v11 & 1) == 0)
  {
LABEL_15:
    v14 = v2[4];
    v15 = sub_1000042A8();
    swift_getObjectType();
    sub_100007474();

    goto LABEL_16;
  }

LABEL_16:
LABEL_17:

  free(v2);
}

Swift::Void __swiftcall PeoplePickerShellViewController.updateShareSheetRecipients(_:)(Swift::OpaquePointer a1)
{
  v1 = sub_1000042A8();
  swift_getObjectType();

  sub_100007484();
}

void sub_100003D10(void (*a1)(void *), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100008320;
    *(v8 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v8 + 64) = sub_100006EE8();
    *(v8 + 32) = v7;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v9 = v7;
    v10 = sub_100007544();
    sub_1000074C4();

    v11 = v9;
    a1(v6);
  }

  else
  {
    v12 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v13 = *(v2 + v12);
    if (v13)
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = sub_10000738C;
      v28 = v15;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100004128;
      v26 = &unk_10000C888;
      v16 = _Block_copy(&v23);
      swift_unknownObjectRetain();

      v17 = [v14 scheduledTimerWithTimeInterval:0 repeats:v16 block:1.0];
      _Block_release(v16);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = v17;
      v19[4] = a1;
      v19[5] = a2;
      v27 = sub_100007348;
      v28 = v19;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_10000423C;
      v26 = &unk_10000C8D8;
      v20 = _Block_copy(&v23);
      v21 = v17;

      [v13 requestActivity:v20];
      _Block_release(v20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100007514();
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v22 = sub_100007544();
      sub_1000074C4();

      a1(0);
    }
  }
}

void sub_1000040C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100004728();
    [v2 startAnimating];
  }
}

void sub_100004128(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100004190(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a3 invalidate];
    v9 = sub_100004728();
    [v9 stopAnimating];

    a4(a1);
  }
}

void sub_10000423C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_1000042A8()
{
  v1 = sub_1000073F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController;
  v8 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController);
  if (v8)
  {
    v9 = *(v7 + 8);
    v10 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController);
  }

  else
  {
    (*(v2 + 104))(v6, enum case for PeoplePickerStyle.sharePlay(_:), v1);
    v11 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
    swift_beginAccess();
    v12 = *(v0 + v11);
    v13 = sub_1000074B4();
    v15 = v14;

    (*(v2 + 8))(v6, v1);
    swift_getObjectType();
    v16 = [v13 navigationItem];
    [v16 setHidesBackButton:1];

    sub_1000072D8();
    swift_unknownObjectRetain();
    sub_1000074A4();
    v17 = *v7;
    *v7 = v13;
    *(v7 + 8) = v15;
    v10 = v13;

    v8 = 0;
  }

  v18 = v8;
  return v10;
}

id sub_1000044A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController;
  v3 = *&v0[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController];
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for SharePlayWelcomeViewController();
    v4 = sub_100002510();
    v10[3] = type metadata accessor for PeoplePickerShellViewController();
    v10[4] = &off_10000C710;
    v10[0] = v1;
    v5 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate;
    swift_beginAccess();
    v6 = v1;
    sub_100006F50(v10, v4 + v5);
    swift_endAccess();
    v7 = *&v1[v2];
    *&v1[v2] = v4;
    v8 = v4;
    sub_100006FC0(v7);
  }

  sub_100006FD0(v3);
  return v4;
}

id sub_100004570()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController);
  }

  else
  {
    v4 = sub_1000045D4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000045D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100001FB4(v0, 1u);

  if ((v1 & 1) == 0 || (v2 = sub_1000044A0()) == 0)
  {
    v2 = sub_1000042A8();
  }

  v3 = v2;
  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() systemGreenColor];
    [v6 setTintColor:v7];

    if ((v1 & 1) == 0)
    {
      v8 = [v4 navigationBar];
      v9 = [v8 standardAppearance];
      [v8 setScrollEdgeAppearance:v9];
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100004728()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1000047A0()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator;
  if (*(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator);
  }

  else
  {
    v3 = v0;
    sub_100007444();
    v2 = sub_100007434();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

Swift::Void __swiftcall PeoplePickerShellViewController.viewDidLoad()()
{
  v35.receiver = v0;
  v35.super_class = type metadata accessor for PeoplePickerShellViewController();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v1 = sub_100004570();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = [v0 view];
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController;
  v14 = [*&v0[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController] view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  [v0 addChildViewController:*&v0[v13]];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [*&v0[v13] view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  [v17 addSubview:v18];

  [*&v0[v13] didMoveToParentViewController:v0];
  v20 = sub_100004728();
  v21 = [v0 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame:{v24, v26, v28, v30}];
  v31 = [*&v0[v13] view];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  [v31 setAutoresizingMask:18];

  v33 = [*&v0[v13] view];
  if (v33)
  {
    v34 = v33;
    [v33 addSubview:*&v0[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView]];

    return;
  }

LABEL_17:
  __break(1u);
}

id PeoplePickerShellViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000074D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PeoplePickerShellViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity] = 0;
  v5 = &v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController] = 1;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator] = 0;
  if (a2)
  {
    v6 = sub_1000074D4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for PeoplePickerShellViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id PeoplePickerShellViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id PeoplePickerShellViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity] = 0;
  v3 = &v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController] = 1;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PeoplePickerShellViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id PeoplePickerShellViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeoplePickerShellViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100004EB4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t (*sub_100004F28(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = PeoplePickerShellViewController.connection.modify(v3);
  return sub_100004F9C;
}

void *sub_100004FA0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t (*sub_100005014(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = PeoplePickerShellViewController.activity.modify(v3);
  return sub_100007380;
}

void sub_100005088(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000050D0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_10000511C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*sub_100005178())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1000051DC()
{
  v1 = *v0;
  v2 = sub_1000042A8();
  swift_getObjectType();

  sub_100007484();
}

Swift::Void __swiftcall PeoplePickerShellViewController.peoplePickerCancelled()()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 dismissViewControllerWithSuccess:0];
  }
}

uint64_t PeoplePickerShellViewController.peoplePickerInvited(_:withVideo:button:callerID:messagesGroup:)(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8, v13);
  v15 = &v21 - v14;
  sub_1000062E8(a5, &v21 - v14);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a4;
  sub_10000635C(v15, v17 + v16);
  v18 = a4;
  v19 = v5;

  sub_100003D10(sub_1000063CC, v17);
}

id sub_1000053EC(uint64_t a1, uint64_t a2)
{
  sub_1000047A0();
  sub_100007424();

  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  result = *(a2 + v3);
  if (result)
  {
    return [result dismissViewControllerWithSuccess:1];
  }

  return result;
}

Swift::Void __swiftcall PeoplePickerShellViewController.peoplePickerRequestedMessageController(with:chatGUID:)(Swift::OpaquePointer with, Swift::String_optional chatGUID)
{
  object = chatGUID.value._object;
  countAndFlagsBits = chatGUID.value._countAndFlagsBits;

  v6 = v2;
  sub_100006520(v6, with._rawValue, v6, countAndFlagsBits, object);
}

void sub_10000551C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSString a5)
{
  v9 = [objc_allocWithZone(MFMessageComposeViewController) init];
  if (a1)
  {
    [v9 insertGroupActivity:a1];
  }

  isa = sub_100007504().super.isa;
  [v9 setRecipients:isa];

  [v9 _setCanEditRecipients:0];
  [v9 setMessageComposeDelegate:a3];
  if (a5)
  {
    a5 = sub_1000074D4();
  }

  [v9 setChatGUID:a5];

  [v9 setModalTransitionStyle:2];
  [v9 setPreferredPresentationStyle:3];
  [a3 presentViewController:v9 animated:1 completion:0];
}

id PeoplePickerShellViewController.peoplePickerRequestedDialCall(using:video:contact:handle:senderIdentity:ttyType:)()
{
  v1 = v0;
  sub_1000047A0();
  sub_100007404();

  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  result = *(v1 + v2);
  if (result)
  {
    return [result dismissViewControllerWithSuccess:1];
  }

  return result;
}

uint64_t PeoplePickerShellViewController.peoplePickerSentInvitation(with:facetimeUnavailablePeople:facetimeAvailablePeople:shouldAddOtherInvitedToRemoteMembers:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  v11 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v12 = *&v4[v11];
  v45 = a1;
  if (v12)
  {
    v13 = v4;
    v14 = a1;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v15 = v13;
    v16 = v14;
    v17 = v12;
    sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100008320;
    *(v18 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v18 + 64) = sub_100006EE8();
    *(v18 + 32) = v17;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v19 = v17;
    v20 = sub_100007544();
    sub_1000074C4();

    v21 = v19;
    sub_1000047A0();
    sub_100007414();

    v22 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v23 = *&v15[v22];
    if (v23)
    {
      [v23 dismissViewControllerWithSuccess:1];
    }
  }

  else
  {
    v25 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v26 = *&v4[v25];
    if (v26)
    {
      v44 = objc_opt_self();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = sub_100006EBC;
      v51 = v27;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100004128;
      v49 = &unk_10000C698;
      v28 = _Block_copy(&aBlock);
      v29 = v5;
      v30 = a1;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v31 = v29;
      v32 = v30;
      swift_unknownObjectRetain();

      v33 = [v44 scheduledTimerWithTimeInterval:0 repeats:v28 block:1.0];
      _Block_release(v28);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = v33;
      v35[4] = sub_100006E80;
      v35[5] = v10;
      v50 = sub_100006EDC;
      v51 = v35;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10000423C;
      v49 = &unk_10000C6E8;
      v36 = _Block_copy(&aBlock);
      v37 = v33;

      v24 = v45;

      [v26 requestActivity:v36];
      _Block_release(v36);

      swift_unknownObjectRelease();

      goto LABEL_8;
    }

    v39 = v5;
    v40 = a1;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v39;
    v41 = v40;
    sub_100007514();
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v42 = sub_100007544();
    sub_1000074C4();

    sub_1000047A0();
    sub_100007414();

    v43 = *&v5[v25];
    if (v43)
    {
      [v43 dismissViewControllerWithSuccess:1];
    }
  }

  v24 = v45;
LABEL_8:
}

id sub_100005CB0(uint64_t a1, uint64_t a2)
{
  sub_1000047A0();
  sub_100007414();

  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  result = *(a2 + v3);
  if (result)
  {
    return [result dismissViewControllerWithSuccess:1];
  }

  return result;
}

uint64_t sub_100005D6C(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8, v13);
  v15 = &v21 - v14;
  sub_1000062E8(a5, &v21 - v14);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a4;
  sub_10000635C(v15, v17 + v16);
  v18 = a4;
  v19 = v5;

  sub_100003D10(sub_100007384, v17);
}

uint64_t sub_100005EB4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4;
  v10 = a1;

  sub_10000697C(v9, v9, v10, a2, a3, a4);
}

id PeoplePickerShellViewController.messageComposeViewController(_:didFinishWith:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_100007524();
  if (a2)
  {
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100008320;
    type metadata accessor for MessageComposeResult();
    v7 = sub_1000074F4();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100006270();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v10 = sub_100007544();
    sub_1000074C4();

    v11 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    result = *(v3 + v11);
    if (result)
    {
      return [result dismissViewControllerWithSuccess:a2 == 1];
    }
  }

  else
  {
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v13 = sub_100007544();
    sub_1000074C4();

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_100006194(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1000074D4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1000073C4();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100006270()
{
  result = qword_100010D80;
  if (!qword_100010D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010D80);
  }

  return result;
}

uint64_t sub_1000062E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000635C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000063D0()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_100004570();
  sub_100001EDC(&qword_100010E70, &unk_1000084A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100008330;
  *(v3 + 32) = sub_1000042A8();
  sub_100006FE0(0, &qword_100010E78, UIViewController_ptr);
  isa = sub_100007504().super.isa;

  [v2 setViewControllers:isa animated:1];

  v5 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController);
  *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController) = 0;
  sub_100006FC0(v5);
  objc_autoreleasePoolPop(v1);
  v6 = [*(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController) navigationBar];
  v7 = [v6 standardAppearance];
  [v6 setScrollEdgeAppearance:v7];
}

void sub_100006520(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (v12)
  {

    v13 = v12;

    v31 = a3;
    sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100008320;
    *(v14 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v14 + 64) = sub_100006EE8();
    *(v14 + 32) = v13;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v15 = v13;
    v16 = sub_100007544();
    sub_1000074C4();

    v17 = v15;
    sub_10000551C(v12, a2, v31, a4, a5);
  }

  else
  {
    v18 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v19 = *(a1 + v18);
    if (v19)
    {
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = sub_10000738C;
      v37 = v21;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_100004128;
      v35 = &unk_10000C810;
      v22 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      v23 = a3;

      v24 = [v20 scheduledTimerWithTimeInterval:0 repeats:v22 block:1.0];
      _Block_release(v22);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v24;
      v26[4] = sub_100007270;
      v26[5] = v10;
      v36 = sub_100007348;
      v37 = v26;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_10000423C;
      v35 = &unk_10000C860;
      v27 = _Block_copy(&aBlock);
      v28 = v24;

      [v19 requestActivity:v27];
      _Block_release(v27);

      swift_unknownObjectRelease();
    }

    else
    {

      v29 = a3;
      sub_100007514();
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v30 = sub_100007544();
      sub_1000074C4();

      sub_10000551C(0, a2, v29, a4, a5);
    }
  }
}

void sub_10000697C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  v13 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (v14)
  {
    v15 = a2;
    a3;

    v16 = v14;
    sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100008320;
    *(v17 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v17 + 64) = sub_100006EE8();
    *(v17 + 32) = v16;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v18 = v16;
    v19 = sub_100007544();
    sub_1000074C4();

    v20 = v18;
    sub_1000047A0();
    sub_100007414();

    v21 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v22 = *&v15[v21];
    if (v22)
    {
      [v22 dismissViewControllerWithSuccess:1];
    }
  }

  else
  {
    v23 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v24 = *(a1 + v23);
    if (v24)
    {
      v39 = objc_opt_self();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = sub_10000738C;
      v45 = v25;
      aBlock = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_100004128;
      v43 = &unk_10000C770;
      v26 = _Block_copy(&aBlock);
      v27 = a2;
      v28 = a3;

      swift_unknownObjectRetain();

      v29 = [v39 scheduledTimerWithTimeInterval:0 repeats:v26 block:1.0];
      _Block_release(v26);
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = v29;
      v31[4] = sub_100007388;
      v31[5] = v12;
      v44 = sub_100007348;
      v45 = v31;
      aBlock = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_10000423C;
      v43 = &unk_10000C7C0;
      v32 = _Block_copy(&aBlock);
      v33 = v29;

      [v24 requestActivity:v32];
      _Block_release(v32);

      swift_unknownObjectRelease();
    }

    else
    {
      v34 = a2;
      v35 = a3;

      sub_100007514();
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v36 = sub_100007544();
      sub_1000074C4();

      sub_1000047A0();
      sub_100007414();

      v37 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
      swift_beginAccess();
      v38 = *&v34[v37];
      if (v38)
      {
        [v38 dismissViewControllerWithSuccess:1];
      }
    }
  }
}

uint64_t sub_100006E84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006EE8()
{
  result = qword_100010DD8;
  if (!qword_100010DD8)
  {
    sub_100006FE0(255, &qword_100010DA0, TUConversationActivity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010DD8);
  }

  return result;
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010D60, &unk_100008310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100006FC0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100006FD0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100006FE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100007028()
{
  v1 = *(sub_100001EDC(&qword_100010DD0, &qword_100008358) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(v0 + 24);

  v6 = sub_1000073E4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100007158(uint64_t a1)
{
  v3 = *(*(sub_100001EDC(&qword_100010DD0, &qword_100008358) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);

  return sub_1000053EC(a1, v4);
}

uint64_t sub_1000071E0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

id sub_100007230(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  return sub_100005CB0(a1, *(v1 + 16));
}

uint64_t sub_10000727C(void (*a1)(void))
{
  a1(*(v1 + 16));

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

unint64_t sub_1000072D8()
{
  result = qword_100010E80;
  if (!qword_100010E80)
  {
    type metadata accessor for PeoplePickerShellViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E80);
  }

  return result;
}
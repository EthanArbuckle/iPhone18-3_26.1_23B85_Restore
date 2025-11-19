id sub_1C48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_116BC();
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for HKSPMultilinePSTableCell();
  v8 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);
  v9 = v8;

  if (!v9)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v10 = v9;
  result = [v10 titleLabel];
  if (result)
  {
    v12 = result;
    [result setNumberOfLines:0];

    a4 = v12;
LABEL_8:

    return v8;
  }

  __break(1u);
  return result;
}

id sub_1D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for HKSPMultilinePSTableCell();
  v6 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  result = [v7 titleLabel];
  if (result)
  {
    v9 = result;
    [result setNumberOfLines:0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_204C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for HKSPDeleteButtonCell();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setTextAlignment:4];
  }

  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 systemRedColor];
    [v4 setTextColor:v6];

    v7 = [v0 titleLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 systemRedColor];
      [v8 setHighlightedTextColor:v9];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_227C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_116BC();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for HKSPMultiLineSwitchCell();
  v8 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);
  v9 = v8;

  if (v9)
  {

    v10 = v9;
    v11 = [v10 textLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setNumberOfLines:0];
    }

    v13 = [v10 textLabel];
    if (v13)
    {
      v14 = v13;
      [v13 setAdjustsFontSizeToFitWidth:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_23B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for HKSPMultiLineSwitchCell();
  v6 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 textLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setNumberOfLines:0];
  }

  v10 = [v7 textLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setAdjustsFontSizeToFitWidth:1];
  }

  return v7;
}

uint64_t sub_24C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v9 = sub_116EC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a6(a3, v9, v11);

  return v12;
}

uint64_t sub_25B4()
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_118DC();
  __break(1u);
  return result;
}

id sub_27C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_116BC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for HKSPSelectableSubtitleCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_2884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void *))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v11 = sub_116EC();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a5;
  v14 = a7(a3, v11, a4, a5);

  return v14;
}

char *sub_2B88(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_iconImage;
  sub_3FF4(0, &qword_1D4D0, NSBundle_ptr);
  v4 = sub_1185C();
  v5 = sub_116BC();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 withConfiguration:0];

  *&v2[v3] = v6;
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  v84._countAndFlagsBits = 0xE000000000000000;
  v91._countAndFlagsBits = 0x414E5F5045454C53;
  v91._object = 0xEF454C5449545F56;
  v93.value._countAndFlagsBits = 0;
  v93.value._object = 0;
  v10.super.isa = v9;
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  v11 = sub_1137C(v91, v93, v10, v95, v84);
  v13 = v12;

  v14 = &v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_titleText];
  *v14 = v11;
  v14[1] = v13;
  v15 = [v8 bundleForClass:ObjCClassFromMetadata];
  v85._countAndFlagsBits = 0xE000000000000000;
  v92._countAndFlagsBits = 0x45485F5045454C53;
  v92._object = 0xEC00000052454441;
  v94.value._countAndFlagsBits = 0;
  v94.value._object = 0;
  v16.super.isa = v15;
  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  v17 = sub_1137C(v92, v94, v16, v96, v85);
  v19 = v18;

  v20 = &v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_descriptionText];
  *v20 = v17;
  v20[1] = v19;
  v90.receiver = v2;
  v90.super_class = type metadata accessor for SectionHeaderView();
  v21 = objc_msgSendSuper2(&v90, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v21 setPreservesSuperviewLayoutMargins:1];
  v89 = [objc_allocWithZone(UIImageView) initWithImage:*&v21[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_iconImage]];
  [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v89 setContentMode:1];
  [v21 addSubview:v89];
  v22 = [objc_allocWithZone(UILabel) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setAdjustsFontForContentSizeCategory:1];
  v23 = objc_opt_self();
  v24 = [v23 hk_preferredFontForTextStyle:UIFontTextStyleLargeTitle symbolicTraits:32770];
  [v22 setFont:v24];

  v25 = *&v21[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_titleText];
  v26 = *&v21[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_titleText + 8];

  v27 = sub_116BC();

  [v22 setText:v27];

  v28 = objc_opt_self();
  v29 = [v28 whiteColor];
  [v22 setTextColor:v29];

  [v22 setTextAlignment:1];
  [v22 setNumberOfLines:0];
  [v21 addSubview:v22];
  v30 = [objc_allocWithZone(UILabel) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setAdjustsFontForContentSizeCategory:1];
  v86 = v23;
  v31 = v23;
  v32 = [v23 hk_preferredFontForTextStyle:?];
  [v30 setFont:v32];

  v33 = *&v21[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_descriptionText];
  v34 = *&v21[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_descriptionText + 8];

  v35 = sub_116BC();

  [v30 setText:v35];

  v36 = [v28 whiteColor];
  [v30 setTextColor:v36];

  [v30 setTextAlignment:1];
  [v30 setNumberOfLines:0];
  [v21 addSubview:v30];
  v87 = objc_opt_self();
  sub_408C(0, &qword_1D4D8, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_123B0;
  v38 = [v89 topAnchor];
  v39 = [v21 layoutMarginsGuide];
  v40 = [v39 topAnchor];

  v41 = [v31 hk_preferredFontForTextStyle:UIFontTextStyleTitle1 symbolicTraits:0x8000];
  [v41 _scaledValueForValue:34.0];
  v43 = v42;

  v44 = [v38 constraintEqualToAnchor:v40 constant:v43];
  *(v37 + 32) = v44;
  v45 = [v89 centerXAnchor];
  v46 = [v21 layoutMarginsGuide];
  v47 = [v46 centerXAnchor];

  v48 = [v45 constraintEqualToAnchor:v47];
  *(v37 + 40) = v48;
  v49 = [v89 widthAnchor];
  v50 = [v89 heightAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v37 + 48) = v51;
  v52 = [v89 widthAnchor];
  v53 = [v52 constraintEqualToConstant:60.0];

  *(v37 + 56) = v53;
  v54 = [v22 firstBaselineAnchor];
  v55 = [v89 bottomAnchor];

  v56 = [v54 constraintEqualToSystemSpacingBelowAnchor:v55 multiplier:0.72];
  *(v37 + 64) = v56;
  v57 = [v22 leadingAnchor];
  v58 = [v21 layoutMarginsGuide];
  v59 = [v58 leadingAnchor];

  v60 = [v57 constraintEqualToAnchor:v59];
  *(v37 + 72) = v60;
  v61 = [v22 trailingAnchor];
  v62 = [v21 layoutMarginsGuide];
  v63 = [v62 trailingAnchor];

  v64 = [v61 constraintEqualToAnchor:v63];
  *(v37 + 80) = v64;
  v65 = [v30 firstBaselineAnchor];
  v66 = [v22 lastBaselineAnchor];

  v67 = [v86 hk_preferredFontForTextStyle:UIFontTextStyleBody];
  [v67 _scaledValueForValue:26.0];
  v69 = v68;

  v70 = [v65 constraintEqualToAnchor:v66 constant:v69];
  *(v37 + 88) = v70;
  v71 = [v30 leadingAnchor];
  v72 = [v21 layoutMarginsGuide];
  v73 = [v72 leadingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73];
  *(v37 + 96) = v74;
  v75 = [v30 trailingAnchor];
  v76 = [v21 layoutMarginsGuide];
  v77 = [v76 trailingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  *(v37 + 104) = v78;
  v79 = [v21 bottomAnchor];

  v80 = [v30 bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v37 + 112) = v81;
  sub_3FF4(0, &qword_1D4E0, NSLayoutConstraint_ptr);
  isa = sub_1176C().super.isa;

  [v87 activateConstraints:isa];

  return v21;
}

id sub_39AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_3A6C()
{
  v1 = *v0;
  sub_116EC();
  v2 = sub_1174C();

  return v2;
}

uint64_t sub_3AA8()
{
  v1 = *v0;
  sub_116EC();
  sub_1172C();
}

Swift::Int sub_3AFC()
{
  v1 = *v0;
  sub_116EC();
  sub_1193C();
  sub_1172C();
  v2 = sub_1194C();

  return v2;
}

uint64_t sub_3B78(uint64_t a1, id *a2)
{
  result = sub_116CC();
  *a2 = 0;
  return result;
}

uint64_t sub_3BF0(uint64_t a1, id *a2)
{
  v3 = sub_116DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3C70@<X0>(void *a1@<X8>)
{
  sub_116EC();
  v2 = sub_116BC();

  *a1 = v2;
  return result;
}

void *sub_3CB4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3CD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_116EC();
  v6 = v5;
  if (v4 == sub_116EC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1191C();
  }

  return v9 & 1;
}

uint64_t sub_3D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_116BC();

  *a2 = v5;
  return result;
}

uint64_t sub_3DA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_116EC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_3DD0(uint64_t a1)
{
  v2 = sub_4144(&qword_1D510);
  v3 = sub_4144(&qword_1D518);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_3E68(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HKSPDeleteButtonCell();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:specifier:", 0, v5, a3);

  if (v6)
  {
  }

  return v6;
}

void sub_3EFC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_iconImage;
  sub_3FF4(0, &qword_1D4D0, NSBundle_ptr);
  v3 = sub_1185C();
  v4 = sub_116BC();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 withConfiguration:0];

  *(v1 + v2) = v5;
  sub_118DC();
  __break(1u);
}

uint64_t sub_3FF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_408C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_4144(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_41C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v5 = sub_1157C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus] = 0;
  v10 = &v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = objc_allocWithZone(HKSPSleepStore);
  v12 = sub_116BC();
  v13 = [v11 initWithIdentifier:v12 healthStore:0 options:38];

  v14 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore;
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore] = v13;
  v15 = [objc_allocWithZone(HKWristDetectionSettingManager) init];
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager] = v15;
  v16 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:kHKHealthAppBundleIdentifier];
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_notificationCenter] = v16;
  sub_115CC();
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepHealthNotificationSettingsProvider] = sub_115BC();
  v17 = *&v4[v14];
  v18 = objc_allocWithZone(HKHealthStore);
  v19 = v17;
  v20 = [v18 init];
  v21 = [objc_allocWithZone(HKSPSleepHealthDataSource) initWithSleepStore:v19 healthDataSource:v20];

  v22 = [v21 featureAvailabilityProvidingForFeatureIdentifier:HKFeatureIdentifierSleepApneaNotifications];
  if (!v22)
  {
    __break(1u);
  }

  v23 = v22;

  v24 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureAvailabilityProviding:v23 healthDataSource:v21 countryCodeSource:1];
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager] = v24;
  v25 = type metadata accessor for BridgeSettingsViewController();
  v49.receiver = v4;
  v49.super_class = v25;
  v46[1] = v25;
  v26 = objc_msgSendSuper2(&v49, "initWithNibName:bundle:", 0, 0);
  v27 = *&v26[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore];
  v28 = v26;
  [v27 addObserver:v28];
  v29 = *&v28[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager];
  sub_3FF4(0, &qword_1D6A0, OS_dispatch_queue_ptr);
  v30 = v28;
  v31 = v29;
  v32 = sub_1183C();
  [v31 registerObserver:v30 queue:v32];

  v33 = *&v30[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepHealthNotificationSettingsProvider];
  (*(v6 + 104))(v9, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v5);

  sub_1158C();

  (*(v6 + 8))(v9, v5);
  v34 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager;
  v35 = *&v30[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager];
  v36 = sub_1183C();
  [v35 registerObserver:v30 queue:v36];

  v37 = *&v30[v34];
  v48 = 0;
  v38 = [v37 featureStatusWithError:&v48];
  v39 = v48;
  if (!v38)
  {
    v40 = v39;
    sub_1138C();

    swift_willThrow();

    v38 = 0;
  }

  v41 = *&v30[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus];
  *&v30[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus] = v38;

  v42 = &v30[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL];
  v43 = *&v30[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL + 8];
  *v42 = 0;
  *(v42 + 1) = 0;

  sub_B2E4(0, &qword_1D778, sub_DAF4, &type metadata accessor for _ContiguousArrayStorage);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_12690;
  *(v44 + 32) = sub_1162C();
  *(v44 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1182C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v30;
}

void sub_4704(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  sub_4CC0(v3, a2);
}

id sub_4910(char *a1)
{
  v2 = sub_1157C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&a1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore] removeObserver:a1];
  [*&a1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager] unregisterObserver:a1];
  v7 = *&a1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepHealthNotificationSettingsProvider];
  (*(v3 + 104))(v6, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v2);

  sub_1159C();

  (*(v3 + 8))(v6, v2);
  [*&a1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager] unregisterObserver:a1];
  v8 = type metadata accessor for BridgeSettingsViewController();
  v10.receiver = a1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_4A90()
{
  sub_117CC();
  sub_117BC();
  sub_117AC();

  return swift_task_deinitOnExecutor();
}

id sub_4CC0(void *a1, id a2)
{
  if (a2)
  {
    v3 = a1;
    v4 = [a2 preferredContentSizeCategory];
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = v5;
  if (!v4)
  {

LABEL_12:

    return [v2 reloadSpecifiers];
  }

  v7 = sub_116EC();
  v9 = v8;
  if (v7 != sub_116EC() || v9 != v10)
  {
    v12 = sub_1191C();

    if (v12)
    {
      return result;
    }

    goto LABEL_12;
  }
}

id sub_4E04(int a1)
{
  v26 = a1;
  v2 = sub_113FC();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_1144C() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_1139C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*(sub_116AC() - 8) + 64);
  __chkstk_darwin();
  v23 = sub_113AC();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BridgeSettingsViewController();
  v27.receiver = v1;
  v27.super_class = v17;
  objc_msgSendSuper2(&v27, "viewWillAppear:", v26 & 1);
  sub_1169C();
  *v11 = v17;
  (*(v8 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v7);
  sub_1143C();
  sub_113BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = [v19 bundleIdentifier];
  if (result)
  {
    v21 = result;
    sub_116EC();

    result = HKSPSleepWatchAppURL();
    if (result)
    {
      v22 = result;
      sub_115EC();
      sub_113DC();

      sub_115DC();

      (*(v13 + 8))(v16, v23);
      return (*(v24 + 8))(v5, v25);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_52A0()
{
  v1 = v0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = objc_opt_self();
  v4 = sub_116BC();
  v5 = [v3 groupSpecifierWithID:v4];

  if (v5)
  {
    type metadata accessor for SectionHeaderView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v7)
    {
      sub_116EC();
      v7 = sub_116BC();
    }

    [v5 setProperty:v7 forKey:PSHeaderCellClassGroupKey];

    v8 = v5;
    sub_1175C();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v17 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_1177C();
    }

    sub_1178C();
    v9 = sub_56AC();
    if (v9)
    {
      v10 = v9;
      if ([v9 isCurrentSleepCoachingOnboardingCompleted] && (objc_msgSend(v10, "isCurrentSleepTrackingOnboardingCompleted") & 1) != 0)
      {
        v11 = sub_5714();
        if (v11 && (v12 = v11, v13 = [v11 watchSleepFeaturesEnabled], v12, (v13 & 1) != 0))
        {
          sub_6020();
        }

        else
        {
          sub_5D28();
        }
      }

      else
      {
        sub_5A2C();
      }

      sub_54E8(v14);
      sub_DC0C(&_swiftEmptyArrayStorage);
      isa = sub_1176C().super.isa;

      [v1 setSpecifiers:isa];

      v2 = sub_DC0C(&_swiftEmptyArrayStorage);
      v8 = v10;
    }
  }

  return v2;
}

uint64_t sub_54E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_118EC();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_118EC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_BC24(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_BCC4(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_56AC()
{

  return sub_577C(&selRef_currentSleepEventRecordWithError_, "[%{public}s] failed to get sleep event record with error %@");
}

id sub_5714()
{

  return sub_577C(&selRef_currentSleepSettingsWithError_, "[%{public}s] failed to get sleep settings with error %@");
}

id sub_577C(SEL *a1, const char *a2)
{
  v5 = v2;
  swift_getObjectType();
  v6 = sub_1161C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore);
  v28 = 0;
  v12 = [v11 *a1];
  v13 = v28;
  if (!v12)
  {
    v14 = v13;
    sub_1138C();

    swift_willThrow();
    sub_115FC();
    swift_errorRetain();
    v15 = sub_1160C();
    v16 = sub_1180C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v17 = 136446466;
      v19 = sub_1195C();
      v21 = sub_B64C(v19, v20, &v28);
      v26 = a2;
      v22 = v21;

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_0, v15, v16, v26, v17, 0x16u);
      sub_D60C(v18);

      sub_B418(v27);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  return v12;
}

void sub_5A2C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = sub_116BC();
  v4 = [v2 preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v13 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x8000000000013170;
  v16._countAndFlagsBits = 0xD000000000000011;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v8.super.isa = v7;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1137C(v16, v17, v8, v18, v15);

  v9 = sub_116BC();

  v10 = [v2 preferenceSpecifierNamed:v9 target:v1 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v10)
  {
    goto LABEL_9;
  }

  type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v10 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  [v10 setButtonAction:"setUpSleep:"];
  v11 = sub_116BC();
  [v10 setIdentifier:v11];

  v12 = v10;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v14 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
}

void sub_5D28()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = sub_116BC();
  v4 = [v2 preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v13 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x8000000000013130;
  v16._countAndFlagsBits = 0xD000000000000012;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v8.super.isa = v7;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1137C(v16, v17, v8, v18, v15);

  v9 = sub_116BC();

  v10 = [v2 preferenceSpecifierNamed:v9 target:v1 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v10)
  {
    goto LABEL_9;
  }

  type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v10 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  [v10 setButtonAction:"didTapUseWatch:"];
  v11 = sub_116BC();
  [v10 setIdentifier:v11];

  v12 = v10;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v14 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
}

void sub_6020()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1161C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v125 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = &_swiftEmptyArrayStorage;
  v7 = objc_opt_self();
  v8 = sub_116BC();
  v9 = [v7 preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v9)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v122 = ObjectType;
  v123 = v4;
  v124 = v3;
  v10 = v9;
  sub_1175C();
  if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v107 = *(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass:ObjCClassFromMetadata];
  v113._countAndFlagsBits = 0xE000000000000000;
  v136._countAndFlagsBits = 0xD000000000000019;
  v136._object = 0x8000000000012FA0;
  v147.value._countAndFlagsBits = 0;
  v147.value._object = 0;
  v14.super.isa = v13;
  v157._countAndFlagsBits = 0;
  v157._object = 0xE000000000000000;
  sub_1137C(v136, v147, v14, v157, v113);

  v15 = sub_116BC();

  v132 = v7;
  v16 = [v7 preferenceSpecifierNamed:v15 target:v1 set:"setSleepTrackingEnabled:withSpecifier:" get:"sleepTrackingEnabled:" detail:0 cell:6 edit:0];

  if (!v16)
  {
    goto LABEL_43;
  }

  v17 = sub_116BC();
  [v16 setIdentifier:v17];

  v128 = type metadata accessor for HKSPMultiLineSwitchCell();
  v134 = v128;
  v127 = sub_D740(0, &qword_1D710, type metadata accessor for HKSPMultiLineSwitchCell);
  v18 = sub_1192C();
  v130 = PSCellClassKey;
  [v16 setProperty:v18 forKey:?];
  swift_unknownObjectRelease();
  v133 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager);
  [v19 isWristDetectEnabled];
  isa = sub_1179C().super.super.isa;
  [v16 setProperty:isa forKey:PSEnabledKey];

  LODWORD(isa) = [v19 isWristDetectEnabled];
  v21 = [v12 bundleForClass:ObjCClassFromMetadata];
  v129 = v10;
  if (isa)
  {
    v114._countAndFlagsBits = 0xE000000000000000;
    v137._countAndFlagsBits = 0xD00000000000001BLL;
    v137._object = 0x8000000000013110;
    v148.value._countAndFlagsBits = 0;
    v148.value._object = 0;
    v22.super.isa = v21;
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    sub_1137C(v137, v148, v22, v158, v114);

    v23 = &PSFooterTextGroupKey;
    v24 = &HKSPMultilinePSTableCell;
    v25 = v132;
  }

  else
  {
    v114._countAndFlagsBits = 0xE000000000000000;
    v138._countAndFlagsBits = 0xD000000000000029;
    v138._object = 0x8000000000012FE0;
    v149.value._countAndFlagsBits = 0;
    v149.value._object = 0;
    v26.super.isa = v21;
    v159._countAndFlagsBits = 0;
    v159._object = 0xE000000000000000;
    v27 = sub_1137C(v138, v149, v26, v159, v114);
    v29 = v28;

    v30 = [v12 bundleForClass:ObjCClassFromMetadata];
    v116._countAndFlagsBits = 0xE000000000000000;
    v139._countAndFlagsBits = 0xD000000000000029;
    v139._object = 0x8000000000013010;
    v150.value._countAndFlagsBits = 0;
    v150.value._object = 0;
    v31.super.isa = v30;
    v160._countAndFlagsBits = 0;
    v160._object = 0xE000000000000000;
    sub_1137C(v139, v150, v31, v160, v116);

    sub_D804(0, &qword_1D728, &qword_1D730, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_12690;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_D86C();
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;

    sub_116FC();

    sub_3FF4(0, &qword_1D718, PSFooterHyperlinkView_ptr);
    v33 = swift_getObjCClassFromMetadata();
    v34 = NSStringFromClass(v33);
    if (!v34)
    {
      sub_116EC();
      v34 = sub_116BC();
    }

    v24 = &HKSPMultilinePSTableCell;
    v35 = v129;
    [v129 setProperty:v34 forKey:PSFooterCellClassGroupKey];

    v10 = v35;
    v36 = sub_116BC();
    [v10 setProperty:v36 forKey:PSFooterHyperlinkViewTitleKey];

    v37 = objc_allocWithZone(NSString);
    v38 = sub_116BC();

    v39 = [v37 initWithString:v38];

    v40 = sub_116BC();

    v41 = [v39 rangeOfString:v40];
    v43 = v42;

    v140.location = v41;
    v140.length = v43;
    v44 = NSStringFromRange(v140);
    if (!v44)
    {
      sub_116EC();
      v44 = sub_116BC();
    }

    [v10 setProperty:v44 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v45 = [objc_opt_self() valueWithNonretainedObject:v133];
    [v10 setProperty:v45 forKey:PSFooterHyperlinkViewTargetKey];

    v46 = NSStringFromSelector("passcodeSettingsLinkTapped");
    v25 = v132;
    if (v46)
    {
      v47 = v46;
      v23 = &PSFooterHyperlinkViewActionKey;
      goto LABEL_15;
    }

    sub_116EC();
    v23 = &PSFooterHyperlinkViewActionKey;
  }

  v47 = sub_116BC();

LABEL_15:
  [v10 v24[29].ivar_lyt];

  v48 = v16;
  sub_1175C();
  if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v108 = *(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  v131 = ObjCClassFromMetadata;
  sub_1178C();
  v49 = sub_116BC();
  v50 = [v25 preferenceSpecifierNamed:v49 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  v51 = v133;
  if (!v50)
  {
    goto LABEL_44;
  }

  v126 = v48;
  v52 = v50;
  sub_1175C();
  if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v109 = *(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  v53 = v131;
  v54 = [v12 bundleForClass:v131];
  v115._countAndFlagsBits = 0xE000000000000000;
  v141._countAndFlagsBits = 0xD00000000000001DLL;
  v141._object = 0x8000000000013040;
  v151.value._countAndFlagsBits = 0;
  v151.value._object = 0;
  v55.super.isa = v54;
  v161._countAndFlagsBits = 0;
  v161._object = 0xE000000000000000;
  sub_1137C(v141, v151, v55, v161, v115);

  v56 = sub_116BC();

  v57 = [v25 preferenceSpecifierNamed:v56 target:v51 set:"setWatchChargeReminder:withSpecifier:" get:"watchChargeReminder:" detail:0 cell:6 edit:0];

  if (!v57)
  {
    goto LABEL_45;
  }

  v134 = v128;
  [v57 setProperty:sub_1192C() forKey:v130];
  swift_unknownObjectRelease();
  v58 = sub_116BC();
  [v57 setIdentifier:v58];

  v59 = [v12 bundleForClass:v53];
  v117._countAndFlagsBits = 0xE000000000000000;
  v142._countAndFlagsBits = 0xD00000000000001FLL;
  v142._object = 0x8000000000013080;
  v152.value._countAndFlagsBits = 0;
  v152.value._object = 0;
  v60.super.isa = v59;
  v162._countAndFlagsBits = 0;
  v162._object = 0xE000000000000000;
  sub_1137C(v142, v152, v60, v162, v117);

  v61 = sub_116BC();

  [v52 setProperty:v61 forKey:PSFooterTextGroupKey];

  v62 = v57;
  sub_1175C();
  if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v110 = *(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  v127 = v62;
  v128 = v52;
  sub_1178C();
  v63 = objc_opt_self();
  v64 = [v63 sharedBehavior];
  if (!v64)
  {
    goto LABEL_46;
  }

  v65 = v64;
  v66 = [v64 hksp_activePairedDeviceSupportsFocusMode];

  v68 = v132;
  v67 = v133;
  v69 = v131;
  if (v66)
  {
    sub_71B4();
    sub_54E8(v70);
  }

  v71 = [v63 sharedBehavior];
  if (!v71)
  {
    goto LABEL_47;
  }

  v72 = v71;
  v73 = [v71 features];

  if (!v73)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v74 = [v73 sleepResultsNotificationsOnWatch];

  if (v74)
  {
    sub_7950();
    sub_54E8(v75);
  }

  v76 = *(v67 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus);
  if (v76)
  {
    v77 = v76;
    v78 = sub_7E88(v77);
    sub_54E8(v78);
  }

  else
  {
    v79 = v125;
    sub_115FC();
    v80 = sub_1160C();
    v81 = sub_117FC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v134 = v83;
      *v82 = 136446210;
      v84 = sub_1195C();
      v86 = sub_B64C(v84, v85, &v134);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_0, v80, v81, "[%{public}s] Feature status is nil, not showing sleep apnea section", v82, 0xCu);
      sub_B418(v83);

      v68 = v132;
    }

    (*(v123 + 8))(v79, v124);
  }

  v87 = sub_116BC();
  v88 = [v68 preferenceSpecifierNamed:v87 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v88)
  {
    goto LABEL_49;
  }

  v89 = v88;
  sub_1175C();
  if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v111 = *(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  sub_3FF4(0, &qword_1D740, PSConfirmationSpecifier_ptr);
  v90 = swift_getObjCClassFromMetadata();
  v91 = [v12 bundleForClass:v69];
  v118._countAndFlagsBits = 0xE000000000000000;
  v143._object = 0x80000000000130A0;
  v143._countAndFlagsBits = 0xD000000000000017;
  v153.value._countAndFlagsBits = 0;
  v153.value._object = 0;
  v92.super.isa = v91;
  v163._countAndFlagsBits = 0;
  v163._object = 0xE000000000000000;
  sub_1137C(v143, v153, v92, v163, v118);

  v93 = sub_116BC();

  v94 = [v90 preferenceSpecifierNamed:v93 target:0 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v94)
  {
    goto LABEL_50;
  }

  v134 = type metadata accessor for HKSPDeleteButtonCell();
  sub_D740(0, &qword_1D748, type metadata accessor for HKSPDeleteButtonCell);
  v95 = v94;
  [v95 setProperty:sub_1192C() forKey:v130];
  swift_unknownObjectRelease();
  v96 = [v12 bundleForClass:v69];
  v119._countAndFlagsBits = 0xE000000000000000;
  v144._countAndFlagsBits = 0x4C45434E4143;
  v144._object = 0xE600000000000000;
  v154.value._countAndFlagsBits = 0;
  v154.value._object = 0;
  v97.super.isa = v96;
  v164._countAndFlagsBits = 0;
  v164._object = 0xE000000000000000;
  sub_1137C(v144, v154, v97, v164, v119);

  v98 = sub_116BC();

  [v95 setCancelButton:v98];

  v99 = [v12 bundleForClass:v69];
  v120._countAndFlagsBits = 0xE000000000000000;
  v145._countAndFlagsBits = 0x46464F5F4E525554;
  v145._object = 0xE800000000000000;
  v155.value._countAndFlagsBits = 0;
  v155.value._object = 0;
  v100.super.isa = v99;
  v165._countAndFlagsBits = 0;
  v165._object = 0xE000000000000000;
  sub_1137C(v145, v155, v100, v165, v120);

  v101 = sub_116BC();

  [v95 setTitle:v101];

  v102 = [v12 bundleForClass:v69];
  v121._countAndFlagsBits = 0xE000000000000000;
  v146._countAndFlagsBits = 0xD000000000000023;
  v146._object = 0x80000000000130C0;
  v156.value._countAndFlagsBits = 0;
  v156.value._object = 0;
  v103.super.isa = v102;
  v166._countAndFlagsBits = 0;
  v166._object = 0xE000000000000000;
  sub_1137C(v146, v156, v103, v166, v121);

  v104 = sub_116BC();

  [v95 setPrompt:v104];

  v105 = sub_1179C().super.super.isa;
  [v95 setProperty:v105 forKey:PSConfirmationDestructiveKey];

  v106 = sub_116BC();
  [v95 setProperty:v106 forKey:PSIDKey];

  [v95 setTarget:v133];
  [v95 setConfirmationAction:"didTapDontUseWatch:"];

  sub_1175C();
  if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v112 = *(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
}

void sub_71B4()
{
  v1 = sub_1142C();
  v58 = *(v1 - 8);
  v2 = *(v58 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v56 - v6;
  v65 = &_swiftEmptyArrayStorage;
  v8 = [*(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore) sleepFocusConfiguration];
  v9 = objc_opt_self();
  v10 = sub_116BC();
  v11 = [v9 preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v11)
  {
    __break(1u);
    goto LABEL_31;
  }

  v57 = v5;
  v62 = v0;
  v63 = v9;
  v12 = v11;
  sub_1175C();
  if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v65 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v50 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  v13 = [v8 hasSleepFocusMode];
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass:ObjCClassFromMetadata];
  v61 = v8;
  v59 = v12;
  if (v13)
  {
    v56[0] = v1;
    v52._countAndFlagsBits = 0xE000000000000000;
    v66._object = 0x8000000000012F30;
    v66._countAndFlagsBits = 0xD000000000000017;
    v71.value._countAndFlagsBits = 0;
    v71.value._object = 0;
    v17.super.isa = v16;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v56[2] = sub_1137C(v66, v71, v17, v76, v52);

    v60 = "manageSleepFocusMode:";
    v18 = [v15 bundleForClass:ObjCClassFromMetadata];
    v53._countAndFlagsBits = 0xE000000000000000;
    v67._countAndFlagsBits = 0xD00000000000001ELL;
    v67._object = 0x8000000000012F50;
    v72.value._countAndFlagsBits = 0;
    v72.value._object = 0;
    v19.super.isa = v18;
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    v56[1] = sub_1137C(v67, v72, v19, v77, v53);

    v20 = [objc_opt_self() sharedInstance];
    if (!v20)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v21 = v20;
    v22 = [v20 getActivePairedDevice];

    if (v22)
    {
      v23 = v22;
      v24 = sub_D78C();
      if (v24)
      {
        v25 = v24;
        sub_1141C();

        v26.super.isa = sub_1140C().super.isa;
        (*(v58 + 8))(v7, v56[0]);
      }

      else
      {
        v26.super.isa = 0;
      }

      v34 = [v23 supportsCapability:v26.super.isa];

      if (v34)
      {
        v35 = v23;
        v36 = sub_D7C8();
        if (v36)
        {
          v37 = v57;
          v38 = v36;
          sub_1141C();

          v39.super.isa = sub_1140C().super.isa;
          (*(v58 + 8))(v37, v56[0]);
        }

        else
        {
          v39.super.isa = 0;
        }

        v33 = v62;
        v47 = [v35 supportsCapability:v39.super.isa];

        if (v47)
        {
        }

        else
        {

          v48 = [v15 bundleForClass:ObjCClassFromMetadata];
          v54._countAndFlagsBits = 0xE000000000000000;
          v70._countAndFlagsBits = 0xD00000000000002BLL;
          v70._object = 0x8000000000012F70;
          v75.value._countAndFlagsBits = 0;
          v75.value._object = 0;
          v49.super.isa = v48;
          v80._countAndFlagsBits = 0;
          v80._object = 0xE000000000000000;
          sub_1137C(v70, v75, v49, v80, v54);
        }

        goto LABEL_22;
      }
    }

    v33 = v62;
    goto LABEL_22;
  }

  v52._countAndFlagsBits = 0xE000000000000000;
  v68._object = 0x8000000000012EA0;
  v68._countAndFlagsBits = 0xD000000000000017;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v27.super.isa = v16;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  sub_1137C(v68, v73, v27, v78, v52);

  v60 = "setUpSleepFocusMode:";
  v28 = [v8 mirrorsFocusModes];
  if (v28)
  {
    v29 = 0xD00000000000001ELL;
  }

  else
  {
    v29 = 0xD000000000000028;
  }

  if (v28)
  {
    v30 = "SLEEP_SET_UP_SLEEP_FOCUS_ID";
  }

  else
  {
    v30 = "SET_UP_SLEEP_FOCUS_MODE";
  }

  v31 = [v15 bundleForClass:ObjCClassFromMetadata];
  v55._countAndFlagsBits = 0xE000000000000000;
  v69._object = (v30 | 0x8000000000000000);
  v69._countAndFlagsBits = v29;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v32.super.isa = v31;
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  sub_1137C(v69, v74, v32, v79, v55);

  v33 = v62;
LABEL_22:
  v40 = sub_116BC();

  v41 = [v63 preferenceSpecifierNamed:v40 target:v33 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v41)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v64 = type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v41 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  v42 = sub_116BC();
  [v41 setIdentifier:v42];

  [v41 setButtonAction:v60];
  v43 = v41;
  sub_1175C();
  v44 = v59;
  if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v65 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v51 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  v45 = sub_116BC();

  v46 = PSFooterTextGroupKey;
  [v44 setProperty:v45 forKey:v46];
}

void sub_7950()
{
  v1 = v0;
  v2 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v31._countAndFlagsBits = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD000000000000020;
  v34._object = 0x8000000000012DA0;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v6.super.isa = v5;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_1137C(v34, v37, v6, v40, v31);

  v7 = sub_116BC();

  v8 = [v2 preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = [v4 bundleForClass:ObjCClassFromMetadata];
  v32._countAndFlagsBits = 0xE000000000000000;
  v35._countAndFlagsBits = 0xD000000000000020;
  v35._object = 0x8000000000012DD0;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v10.super.isa = v9;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_1137C(v35, v38, v10, v41, v32);

  v11 = sub_116BC();

  [v8 setProperty:v11 forKey:PSFooterTextGroupKey];

  v12 = v8;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v29 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
  v13 = [v4 bundleForClass:ObjCClassFromMetadata];
  v33._countAndFlagsBits = 0xE000000000000000;
  v36._object = 0x8000000000012E00;
  v36._countAndFlagsBits = 0xD00000000000001FLL;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v14.super.isa = v13;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_1137C(v36, v39, v14, v42, v33);

  v15 = sub_116BC();

  type metadata accessor for BridgeSleepScoreLevelListController();
  v16 = [v2 preferenceSpecifierNamed:v15 target:v1 set:0 get:"sleepScoreNotificationsString:" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  if (!v16)
  {
    goto LABEL_11;
  }

  type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v16 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  isa = sub_1179C().super.super.isa;
  [v16 setProperty:isa forKey:PSEnabledKey];

  v18 = sub_5714();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 wakeUpResults];

    v21 = [objc_allocWithZone(NSNumber) initWithBool:v20];
    v22 = sub_116BC();
    [v16 setProperty:v21 forKey:v22];
  }

  v23 = *(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepHealthNotificationSettingsProvider);
  v24 = sub_116BC();
  [v16 setProperty:v23 forKey:v24];

  v25 = *(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_notificationCenter);
  v26 = sub_116BC();
  [v16 setProperty:v25 forKey:v26];

  v27 = sub_116BC();
  [v16 setIdentifier:v27];

  v28 = v16;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v30 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_1177C();
  }

  sub_1178C();
}

void *sub_7E88(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_1161C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &_swiftEmptyArrayStorage;
  v7 = [objc_allocWithZone(HKSHSleepApneaNotificationsBridgeSettingsFactory) initWithFeatureStatus:a1];
  v8 = [v7 bridgeSettings];

  if ([v8 settingVisible])
  {
    sub_81F8(v8);
    v10 = v9;
    sub_1175C();
    if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v25 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      sub_1177C();
    }

    sub_1178C();
    v11 = [v8 showOnboarding];
    v12 = [v8 footer];
    if (v11)
    {
      sub_BEF4();
    }

    else
    {
      sub_C040();
    }

    v22 = v13;

    [v8 settingEnabled];
    isa = sub_1179C().super.super.isa;
    [v22 setProperty:isa forKey:PSEnabledKey];

    v24 = v22;
    sub_1175C();
    if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v26 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      sub_1177C();
    }

    sub_1178C();

    return v28;
  }

  else
  {
    sub_115FC();
    v14 = sub_1160C();
    v15 = sub_117FC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      v18 = sub_1195C();
      v20 = sub_B64C(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v14, v15, "[%{public}s] Feature is hidden, not showing sleep apnea section", v16, 0xCu);
      sub_B418(v17);
    }

    (*(v3 + 8))(v6, v2);
    return &_swiftEmptyArrayStorage;
  }
}

void sub_81F8(void *a1)
{
  v3 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v32._countAndFlagsBits = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000020;
  v33._object = 0x8000000000012D10;
  v35.value._object = 0x8000000000012D40;
  v35.value._countAndFlagsBits = 0xD000000000000012;
  v6.super.isa = v5;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_1137C(v33, v35, v6, v36, v32);

  v7 = sub_116BC();

  v8 = [v3 preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (v8)
  {
    v9 = [a1 footer];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 footerText];
      sub_116EC();

      v12 = [v10 footerLink];
      if (v12)
      {
        v13 = v12;
        v14 = [v10 linkURL];
        if (v14)
        {
          v15 = v14;
          v16 = sub_116EC();
          v18 = v17;
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        v20 = (v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL);
        v21 = *(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL + 8);
        *v20 = v16;
        v20[1] = v18;

        v22 = sub_116BC();

        [v8 setProperty:v22 forKey:PSFooterHyperlinkViewTitleKey];

        sub_3FF4(0, &qword_1D718, PSFooterHyperlinkView_ptr);
        v23 = swift_getObjCClassFromMetadata();
        v24 = NSStringFromClass(v23);
        if (!v24)
        {
          sub_116EC();
          v24 = sub_116BC();
        }

        [v8 setProperty:v24 forKey:PSFooterCellClassGroupKey];

        v25 = sub_116BC();

        v26 = [v25 rangeOfString:v13];
        v28 = v27;

        v34.location = v26;
        v34.length = v28;
        v29 = NSStringFromRange(v34);
        if (!v29)
        {
          sub_116EC();
          v29 = sub_116BC();
        }

        [v8 setProperty:v29 forKey:PSFooterHyperlinkViewLinkRangeKey];

        v30 = NSStringFromSelector("_didTapSleepApneaFooter");
        if (!v30)
        {
          sub_116EC();
          v30 = sub_116BC();
        }

        [v8 setProperty:v30 forKey:PSFooterHyperlinkViewActionKey];

        v31 = [objc_opt_self() valueWithNonretainedObject:v1];
        [v8 setProperty:v31 forKey:PSFooterHyperlinkViewTargetKey];

        goto LABEL_17;
      }

      v19 = sub_116BC();
    }

    else
    {
      v19 = 0;
    }

    [v8 setProperty:v19 forKey:PSFooterTextGroupKey];
    swift_unknownObjectRelease();
LABEL_17:
    type metadata accessor for HKSPMultiLineSwitchCell();
    sub_D740(0, &qword_1D710, type metadata accessor for HKSPMultiLineSwitchCell);
    [v8 setProperty:sub_1192C() forKey:PSCellClassKey];

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void sub_8688(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_870C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore];
  v6 = a1;
  v7 = [v5 currentSleepSettingsFuture];
  v8 = swift_allocObject();
  v8[2] = sub_D734;
  v8[3] = v4;
  v8[4] = v1;
  v8[5] = ObjectType;
  v12[4] = sub_DBCC;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_8FB0;
  v12[3] = &unk_18C50;
  v9 = _Block_copy(v12);

  v10 = v1;

  v11 = [v7 addCompletionBlock:v9];
  _Block_release(v9);
}

id sub_8A00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = sub_113FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1;
  result = a5();
  if (result)
  {
    v14 = result;
    sub_113DC();

    sub_903C();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_8B7C()
{
  v0 = sub_5714();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 wakeUpResults];

  return v2;
}

void sub_8CB0(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v9 = sub_1161C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    sub_115FC();
    swift_errorRetain();
    v17 = sub_1160C();
    v18 = sub_1180C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v19 = 136446466;
      v20 = sub_1195C();
      v22 = sub_B64C(v20, v21, v27);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v28 = a2;
      swift_errorRetain();
      sub_D804(0, &qword_1D6E0, &qword_1D6E8, &protocol descriptor for Error, &type metadata accessor for Optional);
      v23 = sub_1170C();
      v25 = sub_B64C(v23, v24, v27);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_0, v17, v18, "[%{public}s] failed to get sleep settings with error %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v14 = a1;
    [v14 mutableCopy];
    sub_1186C();
    swift_unknownObjectRelease();
    sub_3FF4(0, &qword_1D6F0, HKSPMutableSleepSettings_ptr);
    swift_dynamicCast();
    v15 = v28;
    a3(v28);
    v16 = [*(a5 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore) saveCurrentSleepSettings:v15];
  }
}

void sub_8FB0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_903C()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(_LSOpenConfiguration) init];
  [v1 setSensitive:1];
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v4 = v2;
    sub_113CC(v3);
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = ObjectType;
    v10[4] = sub_D604;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_93E0;
    v10[3] = &unk_18BD8;
    v8 = _Block_copy(v10);
    v9 = v1;

    [v4 openURL:v6 configuration:v9 completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_91A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1161C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_115FC();
    swift_errorRetain();
    v9 = sub_1160C();
    v10 = sub_1180C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = v3;
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v12 = 136446466;
      v15 = sub_1195C();
      v17 = sub_B64C(v15, v16, &v20);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v18;
      *v13 = v18;
      _os_log_impl(&dword_0, v9, v10, "[%{public}s] failed to open URL with error %@", v12, 0x16u);
      sub_D60C(v13);

      sub_B418(v14);

      return (*(v4 + 8))(v8, v19);
    }

    else
    {

      return (*(v4 + 8))(v8, v3);
    }
  }

  return result;
}

uint64_t sub_93E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1167C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

id sub_94A8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  v10 = a5();

  return v10;
}

uint64_t sub_9588(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1161C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - v13;
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  if (a1)
  {
    sub_115FC();
    v17 = a3;
    v18 = sub_1160C();
    v19 = sub_117FC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = [v17 integerValue];

      _os_log_impl(&dword_0, v18, v19, "Successfully updated feature enablement state to %ld", v20, 0xCu);
    }

    else
    {

      v18 = v17;
    }
  }

  else
  {
    sub_115FC();
    v18 = sub_1160C();
    v21 = sub_117FC();
    if (os_log_type_enabled(v18, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v18, v21, "Failed updating sleep apnea notification enablement state.", v22, 2u);
    }

    v16 = v14;
  }

  v23 = *(v7 + 8);
  result = v23(v16, v6);
  if (a2)
  {
    swift_errorRetain();
    sub_115FC();
    swift_errorRetain();
    v25 = sub_1160C();
    v26 = sub_1180C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_0, v25, v26, "Error updating feature enablement state: %@", v27, 0xCu);
      sub_D60C(v28);
    }

    else
    {
    }

    return v23(v11, v6);
  }

  return result;
}

void sub_98D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_996C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a4;
  v12 = a1;
  a6(v10);
}

uint64_t sub_9BF0()
{
  sub_B2E4(0, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  v5 = sub_113FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL + 8))
  {
    v11 = *(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL);
    v12 = *(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL + 8);

    sub_113EC();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_D594(v4, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_B2E4);
    }

    else
    {
      (*(v6 + 32))(v10, v4, v5);
      sub_903C();
      return (*(v6 + 8))(v10, v5);
    }
  }

  return result;
}

id sub_9FB4()
{
  v0 = sub_113FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_56AC();
  if (result)
  {
    v6 = result;
    if ([result isCurrentSleepCoachingOnboardingCompleted] && !objc_msgSend(v6, "isCurrentSleepTrackingOnboardingCompleted"))
    {
      v7 = &HKSPSleepLaunchURLRouteOnboardSleepTracking;
    }

    else
    {
      v7 = &HKSPSleepLaunchURLRouteOnboardSleepCoaching;
    }

    v8 = *v7;
    result = HKSPSleepURL();
    if (result)
    {
      v9 = result;
      sub_113DC();

      sub_903C();
      return (*(v1 + 8))(v4, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_A134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v7 = a1;
  sub_1186C();
  v8 = swift_unknownObjectRelease();
  a5(v8);

  sub_B418(v10);
}

id sub_A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = [*&v5[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore] currentSleepSettingsFuture];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = 0;
  v11[4] = v5;
  v11[5] = ObjectType;
  v16[4] = a4;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_8FB0;
  v16[3] = a5;
  v12 = _Block_copy(v16);
  v13 = v5;

  v14 = [v10 addCompletionBlock:v12];
  _Block_release(v12);

  return [v13 reloadSpecifiers];
}

void sub_A3FC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, const char *a6)
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_D10C(a6);
}

void sub_A6C8(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, uint64_t a5)
{
  v36 = a5;
  sub_B2E4(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_1157C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v13);
  v18 = sub_1156C();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  if (!a2)
  {

    v23 = 0;
LABEL_9:
    sub_B348(a3, v39);
    v24 = v40;
    if (v40)
    {
      v25 = sub_B3D4(v39, v40);
      v26 = *(v24 - 8);
      v27 = *(v26 + 64);
      __chkstk_darwin(v25);
      v29 = &v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29);
      v30 = sub_1190C();
      (*(v26 + 8))(v29, v24);
      sub_B418(v39);
      if (!isa)
      {
LABEL_12:
        v31 = type metadata accessor for BridgeSettingsViewController();
        v38.receiver = v37;
        v38.super_class = v31;
        objc_msgSendSuper2(&v38, "observeValueForKeyPath:ofObject:change:context:", v23, v30, isa, v36);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v30 = 0;
      if (!isa)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_D954(&qword_1D510, type metadata accessor for NSKeyValueChangeKey);
    isa = sub_1166C().super.isa;
    goto LABEL_12;
  }

  if (v18 == a1 && v20 == a2)
  {
  }

  else
  {
    v22 = sub_1191C();

    if ((v22 & 1) == 0)
    {
      v23 = sub_116BC();
      goto LABEL_9;
    }
  }

  v32 = sub_117EC();
  (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
  sub_117CC();
  v33 = v37;
  v34 = sub_117BC();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = &protocol witness table for MainActor;
  v35[4] = v33;
  sub_DE08(0, 0, v12, &unk_12718, v35);
}

uint64_t sub_AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_117CC();
  *(v4 + 24) = sub_117BC();
  v6 = sub_117AC();

  return _swift_task_switch(sub_AB8C, v6, v5);
}

uint64_t sub_AB8C()
{
  v2 = v0[2];
  v1 = v0[3];

  [v2 reloadSpecifiers];
  v3 = v0[1];

  return v3();
}

uint64_t sub_AD7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1163C();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1165C();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 authorizationStatus];
  sub_3FF4(0, &qword_1D6A0, OS_dispatch_queue_ptr);
  v17 = sub_1183C();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = sub_B1F4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_B200;
  aBlock[3] = &unk_18AC0;
  v19 = _Block_copy(aBlock);

  v20 = a4;
  sub_1164C();
  v25 = &_swiftEmptyArrayStorage;
  sub_D954(&qword_1D6A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_B2E4(0, &qword_1D6B0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_B25C();
  sub_1188C();
  sub_1184C();
  _Block_release(v19);

  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

void sub_B090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a1 - 2) >= 3)
  {
    v6 = sub_116BC();
    v7 = HKSHUILocalizedString();

    if (!v7)
    {
      sub_116EC();
      v7 = sub_116BC();
    }

    v8 = objc_opt_self();
    v9 = sub_116BC();
    v10 = [v8 hksp_notificationsWontFireAlertControllerWithLocalizedTitle:v9 localizedDismiss:v7 completion:0];

    [a4 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_B1B4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_B244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_B25C()
{
  result = qword_1D6B8;
  if (!qword_1D6B8)
  {
    sub_B2E4(255, &qword_1D6B0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D6B8);
  }

  return result;
}

void sub_B2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_B348(uint64_t a1, uint64_t a2)
{
  sub_D518(0, &unk_1D6C0, &type metadata for Any[8], &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_B3D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_B418(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_B464()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B4A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_B558;

  return sub_AAF4(a1, v4, v5, v6);
}

uint64_t sub_B558()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_B64C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_B718(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_D4BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_B418(v11);
  return v7;
}

unint64_t sub_B718(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_B824(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_118CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_B824(uint64_t a1, unint64_t a2)
{
  v4 = sub_B870(a1, a2);
  sub_B9A0(&off_18A28);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_B870(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_BA8C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_118CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1173C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_BA8C(v10, 0);
        result = sub_1189C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_B9A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_BB18(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_BA8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_D518(0, &qword_1D6D8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_BB18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_D518(0, &qword_1D6D8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_BC24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_118EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_118BC();
  *v1 = result;
  return result;
}

uint64_t sub_BCC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_118EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_118EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_D694(0, &qword_1D758, &qword_1D750, PSSpecifier_ptr, &type metadata accessor for Array);
          sub_D8C0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_BE6C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_3FF4(0, &qword_1D750, PSSpecifier_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_BE6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_118AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_BEEC;
  }

  __break(1u);
  return result;
}

void sub_BEF4()
{
  v1 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._countAndFlagsBits = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v8._object = 0x8000000000012D60;
  v9.value._object = 0x8000000000012D40;
  v9.value._countAndFlagsBits = 0xD000000000000012;
  v4.super.isa = v3;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1137C(v8, v9, v4, v10, v7);

  v5 = sub_116BC();

  v6 = [v1 preferenceSpecifierNamed:v5 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

  if (v6)
  {
    [v6 setButtonAction:"_didTapSetUpNotificationsInHealth:"];
  }

  else
  {
    __break(1u);
  }
}

void sub_C040()
{
  v1 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8._countAndFlagsBits = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000018;
  v9._object = 0x8000000000012D80;
  v10.value._object = 0x8000000000012D40;
  v10.value._countAndFlagsBits = 0xD000000000000012;
  v4.super.isa = v3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1137C(v9, v10, v4, v11, v8);

  v5 = sub_116BC();

  v6 = [v1 preferenceSpecifierNamed:v5 target:v0 set:"_sleepApneaNotificationsToggledTapped:specifier:" get:"_areSleepApneaNotificationsEnabled:" detail:0 cell:6 edit:0];

  if (v6)
  {
    isa = sub_1179C().super.super.isa;
    [v6 setProperty:isa forKey:PSEnabledKey];
  }

  else
  {
    __break(1u);
  }
}

void sub_C1AC(void *a1)
{
  sub_116EC();
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_116BC();

  v5 = [v3 initWithSuiteName:v4];

  if (v5 && (v6 = [v5 BOOLForKey:kHKAgeGatingKeyEnableSleepTracking], v5, v6) && objc_msgSend(a1, "BOOLValue"))
  {
    v7 = [objc_allocWithZone(UIAlertController) init];
    type metadata accessor for BridgeSettingsViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass:ObjCClassFromMetadata];
    v32._countAndFlagsBits = 0xE000000000000000;
    v43._object = 0x8000000000013290;
    v43._countAndFlagsBits = 0xD000000000000027;
    v47.value._countAndFlagsBits = 0;
    v47.value._object = 0;
    v11.super.isa = v10;
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_1137C(v43, v47, v11, v51, v32);

    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    v13 = v1;
    v14 = a1;
    v15 = sub_116BC();

    v40 = sub_DABC;
    v41 = v12;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_8688;
    v39 = &unk_18DB8;
    v16 = _Block_copy(&aBlock);

    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:0 handler:v16];
    _Block_release(v16);

    [v7 addAction:v18];
    v19 = [v9 bundleForClass:ObjCClassFromMetadata];
    v44._countAndFlagsBits = 0xD000000000000026;
    v33._countAndFlagsBits = 0xE000000000000000;
    v44._object = 0x80000000000132E0;
    v48.value._countAndFlagsBits = 0;
    v48.value._object = 0;
    v20.super.isa = v19;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    sub_1137C(v44, v48, v20, v52, v33);

    v21 = swift_allocObject();
    *(v21 + 16) = v13;
    v22 = v13;
    v23 = sub_116BC();

    v40 = sub_DAE4;
    v41 = v21;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_8688;
    v39 = &unk_18E08;
    v24 = _Block_copy(&aBlock);

    v25 = [v17 actionWithTitle:v23 style:2 handler:v24];
    _Block_release(v24);

    [v7 addAction:v25];
    v26 = [v9 bundleForClass:ObjCClassFromMetadata];
    v45._countAndFlagsBits = 0xD000000000000025;
    v34._countAndFlagsBits = 0xE000000000000000;
    v45._object = 0x8000000000013310;
    v49.value._countAndFlagsBits = 0;
    v49.value._object = 0;
    v27.super.isa = v26;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    sub_1137C(v45, v49, v27, v53, v34);

    v28 = sub_116BC();

    [v7 setTitle:v28];

    v29 = [v9 bundleForClass:ObjCClassFromMetadata];
    v35._countAndFlagsBits = 0xE000000000000000;
    v46._object = 0x8000000000013340;
    v46._countAndFlagsBits = 0xD000000000000027;
    v50.value._countAndFlagsBits = 0;
    v50.value._object = 0;
    v30.super.isa = v29;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    sub_1137C(v46, v50, v30, v54, v35);

    v31 = sub_116BC();

    [v7 setMessage:v31];

    [v22 presentViewController:v7 animated:1 completion:0];
  }

  else
  {

    sub_870C(a1);
  }
}

id sub_C70C()
{
  if ([*(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager) isWristDetectEnabled] && (v1 = sub_5714()) != 0)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v1, "sleepTracking")}];

    return v3;
  }

  else
  {
    v5 = objc_allocWithZone(NSNumber);

    return [v5 initWithBool:0];
  }
}

void sub_C7BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = *&v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore];
  v7 = a1;
  v8 = [v6 currentSleepSettingsFuture];
  v9 = swift_allocObject();
  v9[2] = sub_D99C;
  v9[3] = v5;
  v9[4] = v2;
  v9[5] = ObjectType;
  v26 = sub_DBCC;
  v27 = v9;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_8FB0;
  v25 = &unk_18D18;
  v10 = _Block_copy(&v22);

  v11 = v2;

  v12 = [v8 addCompletionBlock:v10];
  _Block_release(v10);

  if ([v7 BOOLValue])
  {
    v13 = sub_116BC();
    v14 = HKSHUILocalizedString();

    v15 = sub_116EC();
    v17 = v16;

    v18 = *&v11[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_notificationCenter];
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v17;
    v19[4] = v11;
    v26 = sub_DA70;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_8688;
    v25 = &unk_18D68;
    v20 = _Block_copy(&v22);
    v21 = v11;

    [v18 getNotificationSettingsWithCompletionHandler:v20];
    _Block_release(v20);
  }
}

uint64_t sub_CA48()
{
  v1 = sub_114EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = *(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepHealthNotificationSettingsProvider);
  v21 = v0;
  sub_1155C();
  sub_D954(&qword_1D768, &type metadata accessor for SleepScoreLevels);
  sub_1187C();
  sub_D954(&qword_1D770, &type metadata accessor for SleepScoreLevels);
  v10 = sub_1168C();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if (v10)
  {
    v12 = 0xD00000000000001DLL;
  }

  else
  {
    v12 = 0xD00000000000001CLL;
  }

  if (v10)
  {
    v13 = "SLEEP_SCORE_NOTIFICATIONS_ON";
  }

  else
  {
    v13 = "v20@?0B8@NSError12";
  }

  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 0xE000000000000000;
  v22._object = (v13 | 0x8000000000000000);
  v22._countAndFlagsBits = v12;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v16.super.isa = v15;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v17 = sub_1137C(v22, v23, v16, v24, v19);

  return v17;
}

id sub_CCA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 onboardingRecord];
    v4 = [v3 featureSettings];

    if (v4)
    {
      v5 = [v4 numberForKey:HKFeatureSettingsKeyEnabled];

      if (v5)
      {
        v4 = [v5 BOOLValue];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = objc_allocWithZone(NSNumber);

  return [v6 initWithBool:v4];
}

void sub_CDA0(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager) featureAvailabilityProviding];
  v4 = HKFeatureSettingsKeyEnabled;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v9[4] = sub_D944;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_98D8;
  v9[3] = &unk_18CA0;
  v6 = _Block_copy(v9);
  v7 = v4;
  v8 = a1;

  [v3 setFeatureSettingNumber:v8 forKey:v7 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

id sub_CED0()
{
  sub_B2E4(0, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_113FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_113EC();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_D594(v3, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_B2E4);
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    sub_113CC(v10);
    v13 = v12;
    [v11 openSensitiveURL:v12 withOptions:0];

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_D10C(const char *a1)
{
  v3 = v1;
  swift_getObjectType();
  v4 = sub_1161C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115FC();
  v9 = sub_1160C();
  v10 = sub_1181C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    v14 = sub_1195C();
    v16 = sub_B64C(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, v18, v12, 0xCu);
    sub_B418(v13);
  }

  (*(v5 + 8))(v8, v4);
  return [v3 reloadSpecifiers];
}

id sub_D2D4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1161C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115FC();
  v9 = sub_1160C();
  v10 = sub_1181C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    v14 = sub_1195C();
    v16 = sub_B64C(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "[%{public}s] Feature status did change", v12, 0xCu);
    sub_B418(v13);

    a1 = v20;
  }

  (*(v5 + 8))(v8, v4);
  v17 = *&v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus];
  *&v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus] = a1;
  v18 = a1;

  return [v2 reloadSpecifiers];
}

uint64_t sub_D4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_D518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_D60C(uint64_t a1)
{
  sub_D694(0, &qword_1D700, &qword_1D708, NSObject_ptr, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_D694(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_3FF4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_D6FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_D78C()
{
  v0 = [[NSUUID alloc] initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];

  return v0;
}

id sub_D7C8()
{
  v0 = [[NSUUID alloc] initWithUUIDString:@"A97647CC-89CB-4C3C-A144-18371D6DD41F"];

  return v0;
}

void sub_D804(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_DB4C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_D86C()
{
  result = qword_1D738;
  if (!qword_1D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D738);
  }

  return result;
}

unint64_t sub_D8C0()
{
  result = qword_1D760;
  if (!qword_1D760)
  {
    sub_D694(255, &qword_1D758, &qword_1D750, PSSpecifier_ptr, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D760);
  }

  return result;
}

uint64_t sub_D954(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_D9A8(void *a1, const char **a2)
{
  v5 = [*(v2 + 16) BOOLValue];
  v6 = *a2;

  return [a1 v6];
}

uint64_t sub_DA1C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_DA7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_DABC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_870C(v1);
}

unint64_t sub_DAF4()
{
  result = qword_1D780;
  if (!qword_1D780)
  {
    sub_DB4C(255, &qword_1D788);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1D780);
  }

  return result;
}

uint64_t sub_DB4C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_DC0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_118EC();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10BAC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_118AC();
        sub_3FF4(0, &qword_1D750, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10BAC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_112D4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_3FF4(0, &qword_1D750, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10BAC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_112D4(v12, &v3[4 * v11 + 4]);
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

uint64_t sub_DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_111E8(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10628(a3, v27 - v11);
  v13 = sub_117EC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_106BC(v12, &qword_1D6D0, &type metadata accessor for TaskPriority);
  }

  else
  {
    sub_117DC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_117AC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1171C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_106BC(a3, &qword_1D6D0, &type metadata accessor for TaskPriority);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_106BC(a3, &qword_1D6D0, &type metadata accessor for TaskPriority);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_E140()
{
  v1 = v0;
  v2 = sub_1157C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BridgeSleepScoreLevelListController();
  v36.receiver = v0;
  v36.super_class = v7;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v29._countAndFlagsBits = 0xE000000000000000;
  v37._object = 0x8000000000012E00;
  v37._countAndFlagsBits = 0xD00000000000001FLL;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v10.super.isa = v9;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_1137C(v37, v38, v10, v39, v29);

  v11 = sub_116BC();

  [v1 setTitle:v11];

  v12 = [v1 specifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_116BC();
    v15 = [v13 propertyForKey:v14];

    if (v15)
    {
      sub_1186C();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34 = v32;
    v35 = v33;
    if (*(&v33 + 1))
    {
      sub_115CC();
      v16 = swift_dynamicCast();
      v17 = v31;
      if (!v16)
      {
        v17 = 0;
      }
    }

    else
    {
      sub_104BC(&v34);
      v17 = 0;
    }

    v18 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider;
    v19 = *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider];
    *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider] = v17;

    v20 = sub_116BC();
    v21 = [v13 propertyForKey:v20];

    if (v21)
    {
      sub_1186C();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34 = v32;
    v35 = v33;
    if (*(&v33 + 1))
    {
      sub_3FF4(0, &qword_1D8C8, UNUserNotificationCenter_ptr);
      v22 = swift_dynamicCast();
      v23 = v31;
      if (!v22)
      {
        v23 = 0;
      }
    }

    else
    {
      sub_104BC(&v34);
      v23 = 0;
    }

    v24 = *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter];
    *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter] = v23;

    v25 = sub_116BC();
    v26 = [v13 propertyForKey:v25];

    if (v26)
    {
      sub_1186C();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34 = v32;
    v35 = v33;
    if (*(&v33 + 1))
    {
      sub_3FF4(0, &qword_1D8C0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v27 = v31;
        v28 = [v31 BOOLValue];

        v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_legacyWakeUpResultsEnabled] = v28;
      }

      if (!*&v1[v18])
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_104BC(&v34);
      if (!*&v1[v18])
      {
        goto LABEL_26;
      }
    }

    (*(v3 + 104))(v6, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v2);

    sub_1158C();

    (*(v3 + 8))(v6, v2);
LABEL_26:
    [v1 reloadSpecifiers];

    return;
  }

  __break(1u);
}

id sub_E6B0()
{
  v1 = sub_1157C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider])
  {
    (*(v2 + 104))(v5, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v1);

    sub_1159C();

    (*(v2 + 8))(v5, v1);
  }

  v6 = type metadata accessor for BridgeSleepScoreLevelListController();
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

char *sub_E974()
{
  v0 = sub_1152C();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1153C();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v32 - v9;
  v41 = &_swiftEmptyArrayStorage;
  result = [objc_opt_self() groupSpecifierWithName:0];
  if (result)
  {
    v11 = result;
    isa = sub_1179C().super.super.isa;
    [v11 setProperty:isa forKey:PSIsRadioGroupKey];

    type metadata accessor for BridgeSettingsViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v31._countAndFlagsBits = 0xE000000000000000;
    v42._object = 0x8000000000013520;
    v42._countAndFlagsBits = 0xD000000000000019;
    v43.value._countAndFlagsBits = 0;
    v43.value._object = 0;
    v15.super.isa = v14;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    sub_1137C(v42, v43, v15, v44, v31);

    v16 = sub_116BC();

    [v11 setProperty:v16 forKey:PSFooterTextGroupKey];

    v17 = v11;
    sub_1175C();
    if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v30 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
      sub_1177C();
    }

    sub_1178C();
    v18 = v41;
    if (*&v40[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider])
    {
      v19 = *&v40[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider];

      sub_115AC();

      (*(v36 + 32))(v35, v8, v4);
      v20 = sub_1150C();
      v21 = *(v20 + 16);
      if (v21)
      {
        v33 = v17;
        v34 = v4;
        sub_117CC();
        v22 = v38 + 16;
        v23 = *(v38 + 16);
        v24 = *(v38 + 80);
        v32 = v20;
        v25 = v20 + ((v24 + 32) & ~v24);
        v37 = *(v38 + 72);
        v38 = v23;
        v26 = (v22 - 8);
        v27 = v39;
        do
        {
          (v38)(v3, v25, v27);
          sub_117BC();
          sub_117AC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          sub_EF3C();
          sub_1175C();
          if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_1177C();
          }

          sub_1178C();
          v27 = v39;
          (*v26)(v3, v39);
          v18 = v41;

          v25 += v37;
          --v21;
        }

        while (v21);

        v17 = v33;
        v4 = v34;
      }

      else
      {
      }

      (*(v36 + 8))(v35, v4);
    }

    sub_DC0C(v18);
    v28 = sub_1176C().super.isa;

    [v40 setSpecifiers:v28];

    v29 = sub_DC0C(v18);

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_EF3C()
{
  v1 = v0;
  v2 = sub_114BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  sub_1151C();
  sub_1149C();
  (*(v3 + 8))(v6, v2);
  v8 = sub_116BC();

  v9 = [v7 preferenceSpecifierNamed:v8 target:v1 set:0 get:"subtitleValue:" detail:0 cell:-1 edit:0];

  if (v9)
  {
    v12[1] = type metadata accessor for HKSPSelectableSubtitleCell();
    sub_10B64();
    [v9 setProperty:sub_1192C() forKey:PSCellClassKey];
    swift_unknownObjectRelease();
    isa = sub_1179C().super.super.isa;
    [v9 setProperty:isa forKey:PSEnabledKey];

    sub_114FC();
    v11 = sub_116BC();

    [v9 setProperty:v11 forKey:PSValueKey];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_F2B0(uint64_t a1, uint64_t a2)
{
  sub_111E8(0, &qword_1D898, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v35 - v6;
  v8 = sub_114EC();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  sub_111E8(0, &qword_1D8A0, &type metadata accessor for SleepScoreLevel, &type metadata accessor for Optional);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v35 - v17;
  v19 = sub_114BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1147C();
  sub_114AC();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_106BC(v18, &qword_1D8A0, &type metadata accessor for SleepScoreLevel);
  }

  v36 = a1;
  v25 = (*(v20 + 32))(v23, v18, v19);
  v26 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider;
  if (*&v39[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider])
  {
    v35[0] = a2;
    v35[1] = v35;
    __chkstk_darwin(v25);
    v27 = v39;
    v35[-2] = v39;

    sub_1155C();

    v28 = v37;
    v29 = v12;
    v30 = v38;
    (*(v37 + 32))(v14, v29, v38);
    result = sub_114CC();
    if (!*&v27[v26])
    {
      __break(1u);
      return result;
    }

    (*(v28 + 16))(v7, v14, v30);
    (*(v28 + 56))(v7, 0, 1, v30);

    sub_1154C();

    sub_106BC(v7, &qword_1D898, &type metadata accessor for SleepScoreLevels);
    v31 = v39;
    sub_FA04();
    v32 = v28;
    isa = sub_1145C().super.isa;
    v34 = type metadata accessor for BridgeSleepScoreLevelListController();
    v40.receiver = v31;
    v40.super_class = v34;
    objc_msgSendSuper2(&v40, "tableView:didSelectRowAtIndexPath:", v36, isa);

    (*(v32 + 8))(v14, v30);
  }

  return (*(v20 + 8))(v23, v19);
}

void sub_FA04()
{
  v1 = v0;
  v2 = sub_114EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10AC4(&qword_1D768, &type metadata accessor for SleepScoreLevels);
  sub_1187C();
  sub_10AC4(&qword_1D770, &type metadata accessor for SleepScoreLevels);
  v7 = sub_1168C();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    v8 = sub_116BC();
    v9 = HKSHUILocalizedString();

    v10 = sub_116EC();
    v12 = v11;

    v13 = *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter];
    if (v13)
    {
      v14 = swift_allocObject();
      v14[2] = v10;
      v14[3] = v12;
      v14[4] = v1;
      aBlock[4] = sub_DA70;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_8688;
      aBlock[3] = &unk_18ED0;
      v15 = _Block_copy(aBlock);
      v16 = v13;
      v17 = v1;

      [v16 getNotificationSettingsWithCompletionHandler:v15];
      _Block_release(v15);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_FC6C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter] = 0;
  *&v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider] = 0;
  v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_legacyWakeUpResultsEnabled] = 2;
  if (a2)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for BridgeSleepScoreLevelListController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_FDEC(void *a1)
{
  *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter] = 0;
  *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider] = 0;
  v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_legacyWakeUpResultsEnabled] = 2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BridgeSleepScoreLevelListController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_FF4C(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, uint64_t a5)
{
  v36 = a5;
  sub_111E8(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_1157C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v13);
  v18 = sub_1156C();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  if (!a2)
  {

    v23 = 0;
LABEL_9:
    sub_B348(a3, v39);
    v24 = v40;
    if (v40)
    {
      v25 = sub_B3D4(v39, v40);
      v26 = *(v24 - 8);
      v27 = *(v26 + 64);
      __chkstk_darwin(v25);
      v29 = &v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29);
      v30 = sub_1190C();
      (*(v26 + 8))(v29, v24);
      sub_B418(v39);
      if (!isa)
      {
LABEL_12:
        v31 = type metadata accessor for BridgeSleepScoreLevelListController();
        v38.receiver = v37;
        v38.super_class = v31;
        objc_msgSendSuper2(&v38, "observeValueForKeyPath:ofObject:change:context:", v23, v30, isa, v36);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v30 = 0;
      if (!isa)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10AC4(&qword_1D510, type metadata accessor for NSKeyValueChangeKey);
    isa = sub_1166C().super.isa;
    goto LABEL_12;
  }

  if (v18 == a1 && v20 == a2)
  {
  }

  else
  {
    v22 = sub_1191C();

    if ((v22 & 1) == 0)
    {
      v23 = sub_116BC();
      goto LABEL_9;
    }
  }

  v32 = sub_117EC();
  (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
  sub_117CC();
  v33 = v37;
  v34 = sub_117BC();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = &protocol witness table for MainActor;
  v35[4] = v33;
  sub_DE08(0, 0, v12, &unk_12780, v35);
}

uint64_t sub_104BC(uint64_t a1)
{
  sub_112E4(0, &unk_1D6C0, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10534()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_B558;

  return sub_AAF4(a1, v4, v5, v6);
}

uint64_t sub_10628(uint64_t a1, uint64_t a2)
{
  sub_111E8(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_106BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_111E8(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1072C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10824;

  return v7(a1);
}

uint64_t sub_10824()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1091C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_11344;

  return sub_1072C(a1, v5);
}

uint64_t sub_10A0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_B558;

  return sub_1072C(a1, v5);
}

uint64_t sub_10AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10B0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10B64()
{
  result = qword_1D890;
  if (!qword_1D890)
  {
    type metadata accessor for HKSPSelectableSubtitleCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1D890);
  }

  return result;
}

char *sub_10BAC(char *a1, int64_t a2, char a3)
{
  result = sub_10BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10BCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_112E4(0, &qword_1D8B8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10CEC(void *a1)
{
  sub_111E8(0, &qword_1D898, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Optional);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_114EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_111E8(0, &qword_1D8A0, &type metadata accessor for SleepScoreLevel, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = sub_114BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v25 = result;
    v21 = a1;
    sub_1147C();
    sub_114AC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      return sub_106BC(v14, &qword_1D8A0, &type metadata accessor for SleepScoreLevel);
    }

    else
    {
      v22 = (*(v16 + 32))(v19, v14, v15);
      if (*(v26 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider))
      {
        v24 = v21;
        __chkstk_darwin(v22);
        *(&v24 - 2) = v23;

        sub_1155C();

        v21 = v24;
        (*(v7 + 56))(v5, 0, 1, v6);
        (*(v7 + 32))(v10, v5, v6);
      }

      else
      {
        (*(v7 + 56))(v5, 1, 1, v6);
        v27 = &_swiftEmptyArrayStorage;
        sub_10AC4(&qword_1D768, &type metadata accessor for SleepScoreLevels);
        sub_111E8(0, &qword_1D8A8, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Array);
        sub_1124C();
        sub_1188C();
        if ((*(v7 + 48))(v5, 1, v6) != 1)
        {
          sub_106BC(v5, &qword_1D898, &type metadata accessor for SleepScoreLevels);
        }
      }

      [v25 setChecked:sub_114DC() & 1];

      (*(v7 + 8))(v10, v6);
      return (*(v16 + 8))(v19, v15);
    }
  }

  return result;
}

void sub_111E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1124C()
{
  result = qword_1D8B0;
  if (!qword_1D8B0)
  {
    sub_111E8(255, &qword_1D8A8, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D8B0);
  }

  return result;
}

_OWORD *sub_112D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_112E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, char *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Any[8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}
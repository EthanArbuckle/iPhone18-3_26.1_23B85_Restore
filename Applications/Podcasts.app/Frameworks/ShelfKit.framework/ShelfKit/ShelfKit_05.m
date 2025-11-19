double ProfilePictureButton.Dimension.rawValue.getter()
{
  result = 32.0;
  if (*v0)
  {
    return 44.0;
  }

  return result;
}

BOOL sub_824AC(_BYTE *a1, _BYTE *a2)
{
  v2 = 32.0;
  if (*a1)
  {
    v3 = 44.0;
  }

  else
  {
    v3 = 32.0;
  }

  if (*a2)
  {
    v2 = 44.0;
  }

  return v3 == v2;
}

void sub_824E8()
{
  if (*v0)
  {
    v1 = 0x4046000000000000;
  }

  else
  {
    v1 = 0x4040000000000000;
  }

  sub_3EE994(v1);
}

double *sub_8252C@<X0>(double *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result == 32.0)
  {
    *a2 = 0;
  }

  else if (*result == 44.0)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 2;
  }

  return result;
}

void sub_82570(double *a1@<X8>)
{
  v2 = 32.0;
  if (*v1)
  {
    v2 = 44.0;
  }

  *a1 = v2;
}

void sub_82594()
{
  v1 = v0;
  v2 = sub_3EC6A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  v9 = *&v1[OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_image];
  if (v9)
  {
    v10 = v9;
    sub_3EC674();
    v13 = &type metadata for Bool;
    v12[0] = 1;
    sub_3EC694();
    v11 = *(v3 + 8);
    v11(v5, v2);
    sub_837D0(v12);
    sub_3EDE54();
    v11(v8, v2);
    [v1 setAccessibilityIgnoresInvertColors:1];
  }

  else
  {
    sub_3EC674();
    sub_3EDE54();
    (*(v3 + 8))(v8, v2);
    [v1 setAccessibilityIgnoresInvertColors:0];
    v10 = sub_82788();
  }

  [v1 setImage:v10 forState:0];
}

id sub_82788()
{
  v1 = OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton____lazy_storage___placeholderProfilePicture;
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton____lazy_storage___placeholderProfilePicture);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    if (*(v0 + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_dimension))
    {
      v4 = 44.0;
    }

    else
    {
      v4 = 32.0;
    }

    v5 = [objc_opt_self() systemFontOfSize:v4 weight:UIFontWeightLight];
    v6 = [objc_opt_self() configurationWithFont:v5];

    v7 = sub_3ED204();
    v3 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    sub_836C0(v8);
  }

  sub_83838(v2);
  return v3;
}

id ProfilePictureButton.init(asPartOf:dimension:)(uint64_t a1, unsigned __int8 *a2)
{
  v60 = a1;
  ObjectType = swift_getObjectType();
  v58 = sub_3E5FC4();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v57 = &v52 - v7;
  v53 = sub_3EC1F4();
  v8 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  *&v2[OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_image] = 0;
  *&v2[OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton____lazy_storage___placeholderProfilePicture] = 1;
  v59 = v17;
  v2[OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_dimension] = v17;
  v62.receiver = v2;
  v62.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 mainBundle];
  v51._countAndFlagsBits = 0x8000000000425DE0;
  v63._countAndFlagsBits = 0xD00000000000001ALL;
  v63._object = 0x8000000000425DC0;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v22.super.isa = v21;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_3E5A74(v63, v64, v22, v65, v51);

  v23 = sub_3ED204();

  [v20 setAccessibilityLabel:v23];

  v24 = [v20 imageView];
  if (v24)
  {
    [v24 setContentMode:4];
  }

  sub_82594();
  v25 = [objc_opt_self() defaultCenter];
  [v25 addObserver:v20 selector:"updateAccount" name:@"ASKProfilePictureStoreDidChange" object:0];

  sub_83180();
  swift_storeEnumTagMultiPayload();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v26 = swift_allocObject();
  sub_FC38(v16, v26 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v27 = (v26 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v27 = 0;
  v27[1] = 0;
  *(v26 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 5;
  *(v26 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v26 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v54 = v20;
  v28 = v8;
  v29 = v53;
  (*(v8 + 16))(v10, v13, v53);
  v30 = sub_3EC634();
  v31 = v57;
  (*(*(v30 - 8) + 56))(v57, 1, 1, v30);
  v32 = v55;
  sub_3E5FB4();
  v33 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v35 = v34;
  (*(v56 + 8))(v32, v58);
  (*(v28 + 8))(v13, v29);
  sub_FC9C(v16);
  *(v26 + 16) = v33;
  *(v26 + 24) = v35;
  *(v26 + 32) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = 48;
  (*(v28 + 32))(v26 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10, v29);
  v36 = v54;
  sub_14A10(v31, v26 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  [v36 removeTarget:0 action:0 forControlEvents:0x2000];
  v37 = sub_36174(0, &qword_4EA880);

  v38 = v60;

  v39 = sub_83530(v26, v38, v37);
  [v36 addAction:v39 forControlEvents:0x2000];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = _swiftEmptyArrayStorage;
  v40 = [v36 widthAnchor];

  v41 = 32.0;
  if (*(v36 + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_dimension))
  {
    v41 = 44.0;
  }

  v42 = [v40 constraintEqualToConstant:v41];

  if (v59)
  {
    sub_3EDA94();
    sub_3EDC64(v43);

    sub_3ED564();
    if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }
  }

  else
  {
    sub_3ED564();
    if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }
  }

  sub_3ED604();
  v44 = v36;
  v45 = [v44 heightAnchor];
  v46 = [v44 widthAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  sub_3ED564();
  if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_3ED5A4();
  }

  sub_3ED604();
  v48 = objc_opt_self();
  sub_36174(0, &qword_4EE480);
  isa = sub_3ED574().super.isa;

  [v48 activateConstraints:isa];

  return v44;
}

void sub_83180()
{
  v1 = [objc_opt_self() sharedStore];
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_dimension))
  {
    v2 = 44.0;
  }

  else
  {
    v2 = 32.0;
  }

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_837B0;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_823CC;
  v5[3] = &block_descriptor_1;
  v4 = _Block_copy(v5);

  [v1 profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter:v4 completion:v2];

  _Block_release(v4);
}

void sub_83328(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_image);
    *(Strong + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_image) = a1;
    v5 = a1;

    sub_82594();
  }
}

id PodcastsContextUIButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id UniversalMetricsDictionary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_83530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[3] = type metadata accessor for FlowAction(0);
  v10[4] = sub_836D0();
  v10[0] = a1;
  sub_1F958(v10, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  sub_1D4F0(v9, v6 + 24);
  *(v6 + 64) = a3;
  v7 = sub_3EDEF4();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v7;
}

unint64_t sub_8360C()
{
  result = qword_4EE488;
  if (!qword_4EE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EE488);
  }

  return result;
}

void sub_836C0(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

unint64_t sub_836D0()
{
  result = qword_4F8A40;
  if (!qword_4F8A40)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8A40);
  }

  return result;
}

uint64_t sub_83728()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_83778()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_837D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_83838(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t RoomUber.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E5FC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NoticeButton.image.getter()
{
  type metadata accessor for NoticeButton();
}

uint64_t type metadata accessor for NoticeButton()
{
  result = qword_4EE510;
  if (!qword_4EE510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NoticeButton.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NoticeButton() + 24);

  return sub_1F958(v3, a1);
}

uint64_t NoticeButton.actionDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NoticeButton() + 28);
  v4 = sub_3E5BA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NoticeButton.init(image:action:actionDescription:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_3E5FB4();
  v8 = type metadata accessor for NoticeButton();
  *(a4 + v8[5]) = a1;
  sub_1D4F0(a2, a4 + v8[6]);
  v9 = v8[7];
  v10 = sub_3E5BA4();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

unint64_t sub_83AA4()
{
  result = qword_4EBA78;
  if (!qword_4EBA78)
  {
    sub_3E5FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBA78);
  }

  return result;
}

uint64_t sub_83B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E5FC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_3E5BA4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_83C48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3E5FC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_3E5BA4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_83D6C()
{
  result = sub_3E5FC4();
  if (v1 <= 0x3F)
  {
    result = sub_83E10();
    if (v2 <= 0x3F)
    {
      result = sub_3E5BA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_83E10()
{
  result = qword_4EE520;
  if (!qword_4EE520)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_4EE520);
  }

  return result;
}

uint64_t type metadata accessor for NoticeModel()
{
  result = qword_4EE648;
  if (!qword_4EE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NoticeModel.buttons.getter()
{
  type metadata accessor for NoticeModel();
}

uint64_t NoticeModel.init(title:subtitle:artwork:buttons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for NoticeModel();
  result = sub_83F9C(a5, a7 + *(v10 + 24));
  *(a7 + *(v10 + 28)) = a6;
  return result;
}

uint64_t sub_83F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E7784();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_84000()
{
  v0 = sub_3E7784();
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NoticeModel();
  __swift_allocate_value_buffer(v3, qword_4EE558);
  v4 = __swift_project_value_buffer(v3, qword_4EE558);
  v10._countAndFlagsBits = 0x6F74206465646441;
  v10._object = 0xEE00657565755120;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v5 = sub_3E8614(v10, v11);
  v7 = v6;
  sub_3E7774();
  *v4 = v5;
  v4[1] = v7;
  v4[2] = 0;
  v4[3] = 0;
  result = sub_83F9C(v2, v4 + *(v3 + 24));
  *(v4 + *(v3 + 28)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_84150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_841B8()
{
  v0 = sub_3E7784();
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NoticeModel();
  __swift_allocate_value_buffer(v3, qword_4EE570);
  v4 = __swift_project_value_buffer(v3, qword_4EE570);
  v10._countAndFlagsBits = 0x6465766153;
  v10._object = 0xE500000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v5 = sub_3E8614(v10, v11);
  v7 = v6;
  sub_3E7774();
  *v4 = v5;
  v4[1] = v7;
  v4[2] = 0;
  v4[3] = 0;
  result = sub_83F9C(v2, v4 + *(v3 + 24));
  *(v4 + *(v3 + 28)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_84300@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for NoticeModel();
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_84150(v6, a3, type metadata accessor for NoticeModel);
}

uint64_t sub_84368()
{
  v0 = sub_3E7784();
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NoticeModel();
  __swift_allocate_value_buffer(v3, qword_4EE588);
  v4 = __swift_project_value_buffer(v3, qword_4EE588);
  v10._object = 0x80000000004263C0;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v5 = sub_3E8614(v10, v11);
  v7 = v6;
  sub_3E7774();
  *v4 = v5;
  v4[1] = v7;
  v4[2] = 0;
  v4[3] = 0;
  result = sub_83F9C(v2, v4 + *(v3 + 24));
  *(v4 + *(v3 + 28)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_844B8()
{
  v0 = sub_3E7784();
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NoticeModel();
  __swift_allocate_value_buffer(v3, qword_4EE5A0);
  v4 = __swift_project_value_buffer(v3, qword_4EE5A0);
  v10._object = 0x8000000000426380;
  v10._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v5 = sub_3E8614(v10, v11);
  v7 = v6;
  sub_3E7774();
  *v4 = v5;
  v4[1] = v7;
  v4[2] = 0;
  v4[3] = 0;
  result = sub_83F9C(v2, v4 + *(v3 + 24));
  *(v4 + *(v3 + 28)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_84604()
{
  v0 = sub_3E7784();
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NoticeModel();
  __swift_allocate_value_buffer(v3, qword_4EE5B8);
  v4 = __swift_project_value_buffer(v3, qword_4EE5B8);
  v10._countAndFlagsBits = 0x5F474E4959414C50;
  v10._object = 0xEC0000005458454ELL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v5 = sub_3E8614(v10, v11);
  v7 = v6;
  sub_3E7774();
  *v4 = v5;
  v4[1] = v7;
  v4[2] = 0;
  v4[3] = 0;
  result = sub_83F9C(v2, v4 + *(v3 + 24));
  *(v4 + *(v3 + 28)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_84750()
{
  v0 = sub_3E7784();
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NoticeModel();
  __swift_allocate_value_buffer(v3, qword_4EE5D0);
  v4 = __swift_project_value_buffer(v3, qword_4EE5D0);
  v10._countAndFlagsBits = 0x64657661736E55;
  v10._object = 0xE700000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v5 = sub_3E8614(v10, v11);
  v7 = v6;
  sub_3E7774();
  *v4 = v5;
  v4[1] = v7;
  v4[2] = 0;
  v4[3] = 0;
  result = sub_83F9C(v2, v4 + *(v3 + 24));
  *(v4 + *(v3 + 28)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static NoticeModel.follow(title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v14._countAndFlagsBits = 0x6465776F6C6C6F46;
  v15._object = 0x8000000000425F50;
  v14._object = 0xE800000000000000;
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  v8 = sub_3E8614(v14, v15);
  v10 = v9;
  v11 = type metadata accessor for NoticeModel();
  sub_84150(a3, a4 + *(v11 + 24), &type metadata accessor for ArtworkModel);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v10;
  *(a4 + *(v11 + 28)) = _swiftEmptyArrayStorage;
}

uint64_t static NoticeModel.unfollow(title:artwork:restoreAction:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = a4;
  v27 = a2;
  v28 = sub_3E5BA4();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3ED1D4();
  __chkstk_darwin(v11 - 8);
  v30._countAndFlagsBits = 0x776F6C6C6F666E55;
  v34._countAndFlagsBits = 0x6C6C6F4620746F4ELL;
  v34._object = 0xED0000676E69776FLL;
  v30._object = 0xEA00000000006465;
  v12 = sub_3E8614(v30, v34);
  v25 = v13;
  v26 = v12;
  v23 = type metadata accessor for NoticeModel();
  sub_84150(a3, a5 + *(v23 + 24), &type metadata accessor for ArtworkModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE5E8);
  v14 = (type metadata accessor for NoticeButton() - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_3F5630;
  v17 = v16 + v15;
  v18 = sub_3EB834();
  sub_1F958(v24, v29);
  sub_3ED1C4();
  v31._countAndFlagsBits = 0xD000000000000019;
  v31._object = 0x8000000000425FA0;
  sub_3ED1B4(v31);
  v32._countAndFlagsBits = a1;
  v19 = v27;
  v32._object = v27;
  sub_3ED1A4(v32);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_3ED1B4(v33);
  sub_3E5B94();
  sub_3E5FB4();
  *(v17 + v14[7]) = v18;
  sub_1D4F0(v29, v17 + v14[8]);
  (*(v8 + 32))(v17 + v14[9], v10, v28);
  *a5 = a1;
  a5[1] = v19;
  v20 = v25;
  a5[2] = v26;
  a5[3] = v20;
  *(a5 + *(v23 + 28)) = v16;
}

uint64_t static NoticeModel.adjustPlay(speed:)@<X0>(uint64_t *a1@<X8>)
{
  v10._countAndFlagsBits = 0x6B63616279616C50;
  v10._object = 0xEE00646565705320;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v2 = sub_3E8614(v10, v12);
  v4 = v3;
  v11._object = 0x8000000000425FC0;
  v13._countAndFlagsBits = 0xD0000000000000AELL;
  v13._object = 0x8000000000425FE0;
  v11._countAndFlagsBits = 0xD00000000000001CLL;
  v5 = sub_3E8614(v11, v13);
  v7 = v6;
  v8 = type metadata accessor for NoticeModel();
  result = sub_84D4C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  *(a1 + *(v8 + 28)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static NoticeModel.skipForward(interval:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v13._countAndFlagsBits = 0x73646C6C252BLL;
  v15._object = 0x8000000000426090;
  v13._object = 0xE600000000000000;
  v15._countAndFlagsBits = 0xD00000000000009BLL;
  sub_3E8614(v13, v15);
  v14._countAndFlagsBits = 1801807187;
  v14._object = 0xE400000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v5 = sub_3E8614(v14, v16);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  result = swift_allocObject();
  *(result + 16) = xmmword_3F5630;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 9.22337204e18)
  {
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = a2;
    v9 = sub_3ED214();
    v11 = v10;

    v12 = type metadata accessor for NoticeModel();
    result = sub_3E7774();
    *a1 = v5;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v11;
    *(a1 + *(v12 + 28)) = _swiftEmptyArrayStorage;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static NoticeModel.skipBackward(interval:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v13._countAndFlagsBits = 0x73646C6C252DLL;
  v15._countAndFlagsBits = 0xD00000000000009BLL;
  v15._object = 0x8000000000426130;
  v13._object = 0xE600000000000000;
  sub_3E8614(v13, v15);
  v14._countAndFlagsBits = 1801807187;
  v14._object = 0xE400000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v5 = sub_3E8614(v14, v16);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  result = swift_allocObject();
  *(result + 16) = xmmword_3F5630;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 9.22337204e18)
  {
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = a2;
    v9 = sub_3ED214();
    v11 = v10;

    v12 = type metadata accessor for NoticeModel();
    result = sub_3E7774();
    *a1 = v5;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v11;
    *(a1 + *(v12 + 28)) = _swiftEmptyArrayStorage;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t NoticeModel.description.getter()
{
  sub_3EE3C4(84);
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x80000000004261F0;
  sub_3ED3D4(v4);
  sub_3ED3D4(*v0);
  v5._object = 0x8000000000426210;
  v5._countAndFlagsBits = 0xD000000000000010;
  sub_3ED3D4(v5);
  if (v0[1]._object)
  {
    countAndFlagsBits = v0[1]._countAndFlagsBits;
    object = v0[1]._object;
  }

  else
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  sub_3ED3D4(v6);

  v7._object = 0x8000000000426230;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_3ED3D4(v7);
  v8 = *(v0 + *(type metadata accessor for NoticeModel() + 24));
  sub_3ED3D4(v8);
  v9._object = 0x8000000000426250;
  v9._countAndFlagsBits = 0xD000000000000010;
  sub_3ED3D4(v9);
  type metadata accessor for NoticeButton();
  v10._countAndFlagsBits = sub_3ED594();
  sub_3ED3D4(v10);

  v11._countAndFlagsBits = 32010;
  v11._object = 0xE200000000000000;
  sub_3ED3D4(v11);
  return 0;
}

uint64_t NoticeModel.id.getter()
{
  v4 = *v0;

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_3ED3D4(v5);
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_3ED3D4(v6);

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_3ED3D4(v7);
  v8 = *(v0 + *(type metadata accessor for NoticeModel() + 24));
  sub_3ED3D4(v8);
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  sub_3ED3D4(v9);
  type metadata accessor for NoticeButton();
  v10._countAndFlagsBits = sub_3ED594();
  sub_3ED3D4(v10);

  return v4;
}

uint64_t sub_853A8@<X0>(uint64_t *a1@<X8>)
{
  result = NoticeModel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_853E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3E7784();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_854A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_3E7784();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_85548()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_3E7784();
    if (v1 <= 0x3F)
    {
      sub_855F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_855F4()
{
  if (!qword_4EE658)
  {
    type metadata accessor for NoticeButton();
    v0 = sub_3ED674();
    if (!v1)
    {
      atomic_store(v0, &qword_4EE658);
    }
  }
}

uint64_t CompositeImageProvider.cache.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CompositeImageProvider.cache.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CompositeImageProvider.sourceImageProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompositeImageProvider() + 20);

  return sub_1F958(v3, a1);
}

uint64_t type metadata accessor for CompositeImageProvider()
{
  result = qword_4EE7D0;
  if (!qword_4EE7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CompositeImageProvider.sourceImageProvider.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for CompositeImageProvider() + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);

  return sub_1D4F0(a1, v1 + v3);
}

uint64_t CompositeImageProvider.coverArtRows.setter(uint64_t a1)
{
  result = type metadata accessor for CompositeImageProvider();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t CompositeImageProvider.maximumShowImages.setter(uint64_t a1)
{
  result = type metadata accessor for CompositeImageProvider();
  *(v1 + *(result + 28)) = a1;
  return result;
}

id CompositeImageProvider.workQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompositeImageProvider() + 32));

  return v1;
}

void CompositeImageProvider.workQueue.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CompositeImageProvider() + 32);

  *(v1 + v3) = a1;
}

uint64_t CompositeImageProvider.init(cache:sourceImageProvider:coverArtRows:maximumShowImages:workQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6, a1, v12);
  v14 = type metadata accessor for CompositeImageProvider();
  sub_1F958(a2, a6 + v14[5]);
  *(a6 + v14[6]) = a3;
  *(a6 + v14[7]) = a4;
  *(a6 + v14[8]) = a5;
  sub_3E5884();
  swift_allocObject();
  v15 = sub_3E5874();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  result = (*(v13 + 8))(a1, v12);
  *(a6 + v14[9]) = v15;
  return result;
}

uint64_t CompositeImageProvider.load(artwork:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE698);
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v131 = &v92 - v3;
  v4 = sub_3E6724();
  v124 = *(v4 - 8);
  v125 = v4;
  __chkstk_darwin(v4);
  v123 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E7CA4();
  v120 = *(v6 - 8);
  v121 = v6;
  __chkstk_darwin(v6);
  v118 = v7;
  v119 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v8 - 8);
  v108 = &v92 - v9;
  v129 = type metadata accessor for CompositeImageProvider();
  v95 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = v10;
  v128 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6A0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v92 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6A8);
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v99 = &v92 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6B0);
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v92 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6B8);
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v101 = &v92 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6C0);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v92 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6C8);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = &v92 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6D0);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v92 - v17;
  v18 = sub_3E5994();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v126 = &v92 - v23;
  v24 = sub_3E7784();
  __chkstk_darwin(v24 - 8);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  __chkstk_darwin(v27 - 8);
  v29 = &v92 - v28;
  v30 = sub_3E59F4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a1;
  sub_3E7C54();

  sub_86F48(v26);
  sub_3E59E4();
  v34 = v30;

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_FCF8(v29, &qword_503D70);
  }

  else
  {
    (*(v31 + 32))(v33, v29, v30);
    result = sub_3E59A4();
    if (result)
    {
      v36 = result;
      v93 = v33;
      v94 = v31;
      v134 = *(result + 16);
      if (v134)
      {
        v37 = 0;
        v135 = v30;
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
            return result;
          }

          (*(v19 + 16))(v21, v36 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v37, v18);
          v38 = sub_3E5974();
          v40 = v39;
          if (v38 == sub_3E7714() && v40 == v41)
          {
            break;
          }

          v42 = sub_3EE804();

          if (v42)
          {
            goto LABEL_14;
          }

          ++v37;
          result = (*(v19 + 8))(v21, v18);
          v34 = v135;
          if (v134 == v37)
          {
            goto LABEL_11;
          }
        }

LABEL_14:

        v43 = v126;
        (*(v19 + 32))(v126, v21, v18);
        v44 = sub_3E5984();
        v46 = v45;
        (*(v19 + 8))(v43, v18);
        if (v46)
        {
          v47 = *(v130 + *(v129 + 36));
          v48 = v128;
          sub_872D4(v130, v128);
          v49 = *(v95 + 80);
          v50 = (v49 + 16) & ~v49;
          v133 = v49 | 7;
          v134 = v49;
          v51 = (v127 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v52 = swift_allocObject();
          sub_8746C(v48, v52 + v50);
          v53 = (v52 + v51);
          *v53 = v44;
          v53[1] = v46;
          *(v52 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6E8);
          swift_allocObject();

          *&v136 = sub_3E9E34();
          sub_3E9C64();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE6F0);
          sub_886BC(&qword_4EE6F8, &qword_4EE6E8);
          sub_886BC(&qword_4EE700, &qword_4EE6F0);
          v54 = v96;
          sub_3EA0E4();

          v55 = v129;
          sub_1F958(v130 + *(v129 + 20), &v136);
          v56 = swift_allocObject();
          sub_1D4F0(&v136, v56 + 16);
          sub_3E9C64();
          v132 = sub_36174(0, &qword_4E94B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE708);
          v131 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
          sub_886BC(&qword_4EE710, &qword_4EE6A0);
          sub_886BC(&qword_4EE718, &qword_4EE708);
          v57 = v99;
          v58 = v98;
          sub_3EA0F4();

          (*(v97 + 8))(v54, v58);
          v59 = v130;
          *&v136 = *(v130 + *(v55 + 32));
          v60 = v136;
          v61 = sub_3EDB64();
          v62 = v108;
          (*(*(v61 - 8) + 56))(v108, 1, 1, v61);
          v63 = sub_36174(0, &qword_4F10B0);
          v64 = sub_886BC(&qword_4EE720, &qword_4EE6A8);
          v65 = sub_87870();
          v66 = v60;
          v67 = v100;
          v68 = v105;
          sub_3E9F54();
          sub_FCF8(v62, &qword_4F69E0);

          (*(v102 + 8))(v57, v68);
          *&v136 = v68;
          *(&v136 + 1) = v63;
          v137 = v64;
          v138 = v65;
          swift_getOpaqueTypeConformance2();
          v69 = v101;
          v70 = v106;
          sub_3EA0B4();
          (*(v103 + 8))(v67, v70);
          sub_886BC(&qword_4EE728, &qword_4EE6B8);
          v71 = v109;
          v72 = v107;
          sub_3EA0D4();
          (*(v104 + 8))(v69, v72);
          v74 = v120;
          v73 = v121;
          v75 = v119;
          (*(v120 + 16))(v119, v122, v121);
          v76 = v128;
          sub_872D4(v59, v128);
          v77 = (*(v74 + 80) + 16) & ~*(v74 + 80);
          v78 = (v118 + v134 + v77) & ~v134;
          v79 = swift_allocObject();
          (*(v74 + 32))(v79 + v77, v75, v73);
          sub_8746C(v76, v79 + v78);
          sub_886BC(&qword_4EE730, &qword_4EE6C0);
          v80 = v112;
          v81 = v111;
          sub_3EA0C4();

          (*(v110 + 8))(v71, v81);
          v82 = v123;
          sub_3E7BE4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
          sub_886BC(&qword_4EE738, &qword_4EE6C8);
          sub_886BC(&qword_4EE740, &qword_4EE690);
          v83 = v113;
          v84 = v116;
          sub_3E9F74();
          (*(v124 + 8))(v82, v125);
          (*(v114 + 8))(v80, v84);
          sub_886BC(&qword_4EE748, &qword_4EE6D0);
          v85 = v117;
          v86 = sub_3E9F94();
          (*(v115 + 8))(v83, v85);
          (*(v94 + 8))(v93, v135);
          return v86;
        }

        (*(v94 + 8))(v93, v135);
      }

      else
      {
LABEL_11:

        (*(v94 + 8))(v93, v34);
      }
    }

    else
    {
      (*(v31 + 8))(v33, v30);
    }
  }

  v87 = sub_3E8664();
  sub_8811C(&qword_4EE6D8, &type metadata accessor for ImageProviderError);
  v88 = swift_allocError();
  (*(*(v87 - 8) + 104))(v89, enum case for ImageProviderError.unsupportedRequest(_:), v87);
  *&v136 = v88;
  sub_36174(0, &qword_4E94B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
  v90 = v131;
  sub_3E9DD4();
  sub_886BC(&qword_4EE6E0, &qword_4EE698);
  v91 = v133;
  v86 = sub_3E9F94();
  (*(v132 + 8))(v90, v91);
  return v86;
}

uint64_t sub_86F48(uint64_t a1)
{
  v2 = sub_3E7784();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_86FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_3EBBC4();
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EBC14();
  v21 = *(v14 - 8);
  v22 = v14;
  __chkstk_darwin(v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  type metadata accessor for CompositeImageProvider();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = sub_8860C;
  v18[5] = v17;
  v18[6] = a6;
  aBlock[4] = sub_88694;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  sub_3EBBE4();
  v24 = _swiftEmptyArrayStorage;
  sub_8811C(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v19);
  (*(v23 + 8))(v13, v11);
  (*(v21 + 8))(v16, v22);
}

uint64_t sub_872D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeImageProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_87338()
{
  v1 = (type metadata accessor for CompositeImageProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v5 + v1[7]);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_8746C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeImageProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_874D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CompositeImageProvider() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_86FA4(a1, a2, v2 + v6, v10, v11, v12);
}

uint64_t sub_8758C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = sub_3E5DE4();
  if (v5 >> 60 == 15)
  {
    sub_88538();
    v6 = swift_allocError();
    *v7 = 0;
    a3(v6, 1);
  }

  else
  {
    v9 = v4;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE838);
    sub_88704();
    sub_3E5844();
    a3(v11, 0);
    sub_681FC(v9, v10);
    return sub_887B8(v11, 0);
  }
}

uint64_t sub_876D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE838);
  sub_886BC(&qword_4EE830, &qword_4EE838);
  return sub_3ED4D4();
}

uint64_t sub_87768()
{
  swift_getKeyPath();

  swift_getAtKeyPath();
}

uint64_t sub_877DC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_87814@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = sub_3E62A4();
  *a1 = result;
  return result;
}

unint64_t sub_87870()
{
  result = qword_4F1D30;
  if (!qword_4F1D30)
  {
    sub_36174(255, &qword_4F10B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1D30);
  }

  return result;
}

void sub_878D8(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *a1 >> 62;
  if (!v6)
  {
    if (*(&dword_10 + (*a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_88538();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    return;
  }

  if (!sub_3EE5A4())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_3EE3F4();
LABEL_6:
    v8 = v7;
    if (v6)
    {
      if (sub_3EE5A4() != 1)
      {
LABEL_8:

        v10 = sub_183EA0(v9);
        sub_3E7C14();
        v12 = v11;
        v14 = v13;
        v15 = objc_opt_self();
        sub_76AE0(v10);
        isa = sub_3ED574().super.isa;

        v17 = [v15 combineImages:isa rowCount:*(a2 + *(type metadata accessor for CompositeImageProvider() + 24)) size:1 border:{v12, v14}];

        if (v17)
        {

LABEL_13:

          *a3 = v17;
          return;
        }

        goto LABEL_18;
      }
    }

    else if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) != 1)
    {
      goto LABEL_8;
    }

    sub_3E7C14();
    v18 = [v8 scaleToSize:1 addBorder:?];
    if (v18)
    {
      v17 = v18;
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_87ABC()
{
  v1 = sub_3E7CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for CompositeImageProvider() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v8 + v6[7]);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

void sub_87C4C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_3E7CA4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CompositeImageProvider() - 8);
  sub_878D8(a1, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t CompositeImageProvider.init(asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_3E61F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = v21 - v12;
  sub_3EC394();
  sub_3E61D4();
  (*(v8 + 8))(v10, v7);
  v14 = sub_3E7664();
  (*(v4 + 8))(v6, v3);
  v23[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE758);
  sub_886BC(&qword_4EE760, &qword_4EE758);
  sub_3E7534();

  v23[3] = sub_3E65D4();
  v23[4] = &protocol witness table for LibraryImageProvider;
  __swift_allocate_boxed_opaque_existential_0Tm(v23);
  sub_8811C(&qword_4EE768, &type metadata accessor for LibraryImageProvider);
  sub_3EC374();
  sub_36174(0, &qword_4F10B0);
  v15 = sub_3EDB24();
  v16 = v22;
  (*(v11 + 16))(a2, v13, v22);
  v17 = type metadata accessor for CompositeImageProvider();
  sub_1F958(v23, a2 + v17[5]);
  *(a2 + v17[6]) = 2;
  *(a2 + v17[7]) = 4;
  *(a2 + v17[8]) = v15;
  sub_3E5884();
  swift_allocObject();
  v18 = v15;
  v19 = sub_3E5874();

  (*(v11 + 8))(v13, v16);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
  *(a2 + v17[9]) = v19;
  return result;
}

uint64_t sub_8811C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_88168()
{
  result = qword_4EE770;
  if (!qword_4EE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EE770);
  }

  return result;
}

uint64_t sub_881D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_882B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE690);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_88378()
{
  sub_8844C();
  if (v0 <= 0x3F)
  {
    sub_884C4();
    if (v1 <= 0x3F)
    {
      sub_36174(319, &qword_4F10B0);
      if (v2 <= 0x3F)
      {
        sub_3E5884();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_8844C()
{
  if (!qword_4EE7E0)
  {
    sub_3E6724();
    sub_36174(255, &qword_4E94B8);
    v0 = sub_3E79A4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EE7E0);
    }
  }
}

unint64_t sub_884C4()
{
  result = qword_4EE7E8;
  if (!qword_4EE7E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_4EE7E8);
  }

  return result;
}

unint64_t sub_88538()
{
  result = qword_4EE828;
  if (!qword_4EE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EE828);
  }

  return result;
}

uint64_t sub_885D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8860C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_8864C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_886BC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_88704()
{
  result = qword_4EE840;
  if (!qword_4EE840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EE838);
    sub_8811C(&qword_4EE848, &type metadata accessor for ArtworkRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EE840);
  }

  return result;
}

uint64_t sub_887B8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t LegacyArtworkLoader.load(artwork:)(uint64_t a1)
{
  v2 = sub_3E7CA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE850);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v22 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE858);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = &v22 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE860);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0;
  *(v9 + 40) = 0;
  v22 = a1;
  LegacyArtworkLoader.publisher(for:)(v28);
  v28[5] = v28[0];
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v3 + 32))(v12 + v10, v5, v2);
  v13 = v12 + v11;
  *v13 = "ArtworkLoaderImageProvider";
  *(v13 + 8) = 26;
  *(v13 + 16) = 2;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = "ArtworkLoaderImageProvider";
  *(v14 + 32) = 26;
  *(v14 + 40) = 2;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = "ArtworkLoaderImageProvider";
  *(v15 + 32) = 26;
  *(v15 + 40) = 2;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = "ArtworkLoaderImageProvider";
  *(v16 + 32) = 26;
  *(v16 + 40) = 2;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE708);
  sub_886BC(&qword_4EE718, &qword_4EE708);
  sub_3E9FB4();

  sub_3E7C64();
  sub_886BC(&qword_4EE868, &qword_4EE850);
  v17 = v24;
  sub_3E79E4();
  v18 = v23;
  sub_3E9F04();
  sub_8A180(v28);
  (*(v26 + 8))(v7, v17);
  sub_886BC(&qword_4EE878, &qword_4EE858);
  v19 = v25;
  v20 = sub_3E9F94();

  (*(v27 + 8))(v18, v19);
  return v20;
}

uint64_t sub_88CE8()
{
  v1 = sub_3E7CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

void sub_88DB8()
{
  sub_3E7CA4();
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_8A7C4(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

void sub_88E84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v64) = a5;
  v61 = a3;
  v63 = a2;
  v6 = sub_3E97B4();
  v62 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_3E9854();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = sub_3E5FC4();
  __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v19)
  {
    v52 = v20;
    v57 = v14;
    v58 = v12;
    v59 = v17;
    v60 = v11;
    v54 = v19;
    v55 = v8;
    v56 = v5;
    sub_3E7C64();
    v53 = v6;
    if (v66)
    {
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v23 = sub_3E9474();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
    }

    else
    {
      sub_8A180(v65);
      sub_3E5FB4();
      v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v25 = v26;
      (*(v52 + 8))(v22, v18);
    }

    v27 = v64;
    v28 = v57;
    sub_3E97F4();
    sub_3E97F4();
    sub_3E9834();
    sub_3E9784();
    v29 = v67 + 8;
    v30 = v58;
    v64 = *(v67 + 8);
    v64(v28, v58);

    v31 = sub_3E9834();
    v32 = sub_3EDC84();
    v33 = sub_3EE014();
    v63 = v23;
    if ((v33 & 1) == 0)
    {

      v37 = v54;
      v39 = v55;
      v38 = v62;
      v40 = v60;
LABEL_17:
      v46 = v53;
      (*(v38 + 16))(v39, v40, v53);
      sub_3E98A4();
      swift_allocObject();
      v47 = sub_3E9894();
      (*(v38 + 8))(v40, v46);
      v64(v59, v30);
      v48 = v63;
      *v37 = v47;
      v37[1] = v48;
      v37[2] = v25;
      return;
    }

    v67 = v29;
    LODWORD(v57) = v32;
    if (v27)
    {
      v35 = v61;
      v34 = HIDWORD(v61);
      if (!HIDWORD(v61))
      {
        v34 = v61 & 0xFFFFF800;
        v41 = 55296;
        if (v34 == 55296)
        {
          __break(1u);
          goto LABEL_26;
        }

        v34 = v61 >> 16;
        if (v61 >> 16 <= 0x10)
        {
          if (v61 <= 0x7F)
          {
            v42 = v61 + 1;
LABEL_15:
            v65[0] = (v42 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v42) & 0x18)));

            v36 = v65;
            v37 = v54;
            v38 = v62;
            goto LABEL_16;
          }

LABEL_22:
          v41 = (v35 & 0x3F) << 8;
          if (v35 < 0x800)
          {
            v49 = (v61 >> 6) + v41;
            v50 = 33217;
LABEL_24:
            v42 = v49 + v50;
            goto LABEL_15;
          }

LABEL_26:
          v51 = (v41 | (v61 >> 6) & 0x3F) << 8;
          if (!v34)
          {
            v42 = (v61 >> 12) + v51 + 8487393;
            goto LABEL_15;
          }

          v49 = (v61 >> 18) + ((v51 | (v61 >> 12) & 0x3F) << 8);
          v50 = -2122219023;
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      v36 = v61;
      if (v61)
      {
        v37 = v54;
        v38 = v62;
LABEL_16:
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v65[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_2EDD0(v23, v25, v65);
        v40 = v60;
        v45 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v31, v57, v45, v36, "[identifier=%{name=identifier}s] ArtworkLoaderImageProviderFetch", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);

        v30 = v58;
        v39 = v55;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_8942C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  os_unfair_lock_lock((a2 + 40));
  sub_894E4((a2 + 16), a3, a4, a5);

  os_unfair_lock_unlock((a2 + 40));
}

uint64_t sub_8949C()
{

  return _swift_deallocObject(v0, 41, 7);
}

void sub_894E4(void *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_3E9864();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E97B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9854();
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = v14;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_3E97F4();

    v19 = sub_3E9834();
    sub_3E9884();
    v31 = sub_3EDC74();
    if ((sub_3EE014() & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_3E98B4();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] SUCCESS";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_2EDD0(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_3E9794();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_0, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_8996C(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 10);
  sub_8A7A0(&a2[4]);
  os_unfair_lock_unlock(a2 + 10);
}

void sub_899DC(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, char a5)
{
  v63 = a3;
  v7 = sub_3E9864();
  v59 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = sub_3E97B4();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v60 = &v53 - v17;
  v18 = sub_3E9854();
  __chkstk_darwin(v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v26 = (&v53 - v25);
  if (*v23)
  {
    v55 = v7;
    v56 = v24;
    v57 = v22;
    v58 = v23;
    v27 = v23[2];
    v54 = v23[1];
    if (!a2)
    {
      goto LABEL_7;
    }

    sub_3E97F4();

    v26 = sub_3E9834();
    sub_3E9884();
    v12 = sub_3EDC74();
    if ((sub_3EE014() & 1) == 0)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();

LABEL_21:

      (*(v61 + 8))(v15, v62);
      (*(v56 + 8))(v20, v57);
LABEL_31:
      v52 = v58;
      *v58 = 0;
      v52[1] = 0;
      v52[2] = 0;
      return;
    }

    if ((a5 & 1) == 0)
    {

      if (!v63)
      {
        __break(1u);
LABEL_7:
        sub_3E97F4();

        v15 = sub_3E9834();
        v20 = v60;
        sub_3E9884();
        v28 = sub_3EDC74();
        if ((sub_3EE014() & 1) == 0)
        {
          swift_bridgeObjectRelease_n();

          (*(v61 + 8))(v20, v62);
LABEL_30:
          (*(v56 + 8))(v26, v57);
          goto LABEL_31;
        }

        v53 = v27;
        if ((a5 & 1) == 0)
        {

          v29 = v55;
          v30 = v59;
          if (!v63)
          {
            __break(1u);
            goto LABEL_11;
          }

          goto LABEL_26;
        }

        v29 = v55;
        v30 = v59;
        if (!(v63 >> 32))
        {
          if ((v63 & 0xFFFFF800) == 0xD800)
          {
LABEL_38:
            __break(1u);
            return;
          }

          if (v63 >> 16 <= 0x10)
          {

            v63 = &v64;
LABEL_26:

            sub_3E98B4();

            v42 = v28;
            if ((*(v30 + 88))(v12, v29) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v43 = 0;
              v44 = 0;
              v45 = "[Error] Interval already ended";
            }

            else
            {
              (*(v30 + 8))(v12, v29);
              v45 = "[identifier=%{name=identifier}s] EMPTY";
              v44 = 2;
              v43 = 1;
            }

            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v64 = v47;
            *v46 = v44;
            *(v46 + 1) = v43;
            *(v46 + 2) = 2080;
            v48 = v53;

            v49 = sub_2EDD0(v54, v48, &v64);

            *(v46 + 4) = v49;
            v50 = v60;
            v51 = sub_3E9794();
            _os_signpost_emit_with_name_impl(&dword_0, v15, v42, v51, v63, v45, v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v47);

            (*(v61 + 8))(v50, v62);
            goto LABEL_30;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_17:
      v53 = v27;

      sub_3E98B4();

      v31 = v59;
      v32 = v55;
      v33 = (*(v59 + 88))(v9, v55);
      LODWORD(v60) = v12;
      if (v33 == enum case for OSSignpostError.doubleEnd(_:))
      {
        v36 = 0;
        v35 = 0;
        v34 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v9, v32);
        v34 = "[identifier=%{name=identifier}s] FAILURE";
        v35 = 2;
        v36 = 1;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = v35;
      *(v37 + 1) = v36;
      *(v37 + 2) = 2080;
      v39 = v53;

      v40 = sub_2EDD0(v54, v39, &v64);

      *(v37 + 4) = v40;
      v41 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v26, v60, v41, v63, v34, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);

      goto LABEL_21;
    }

    if (v63 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v63 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v63 >> 16 <= 0x10)
      {

        v63 = &v64;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_35;
  }
}

void sub_8A100(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  os_unfair_lock_lock((a1 + 40));
  sub_8A1E8((a1 + 16), a2, a3, a4);

  os_unfair_lock_unlock((a1 + 40));
}

uint64_t sub_8A180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_8A1E8(void *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_3E9864();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E97B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9854();
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = v14;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_3E97F4();

    v19 = sub_3E9834();
    sub_3E9884();
    v31 = sub_3EDC74();
    if ((sub_3EE014() & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_3E98B4();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] CANCEL";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_2EDD0(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_3E9794();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_0, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t LegacyArtworkLoader.prefetch(artwork:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_3F7950;
  *(v0 + 32) = sub_3E7BC4();
  LegacyArtworkLoader.prefetchArtwork(using:)(v0);
}

uint64_t sub_8A718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_3F7950;
  *(v0 + 32) = sub_3E7BC4();
  LegacyArtworkLoader.prefetchArtwork(using:)(v0);
}

uint64_t LegacyArtworkLoader.publisher(for:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE880);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE888);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  __chkstk_darwin(v5);
  v30 = &v28 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE890);
  v37 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v28 - v8;
  v28 = sub_3E5FC4();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE898);
  swift_allocObject();
  v15 = sub_3E9D94();
  v16 = sub_3E7BC4();

  v17 = LegacyArtworkLoader.fetchArtwork(using:forReason:closestMatch:checkCacheSynchronously:completionHandler:)(v14, v16, &dword_0 + 2, 1, 1, sub_8ADEC, v15);
  v29 = v17;

  v39 = v17;
  sub_3E9D44();
  v39 = v15;
  v18 = v28;
  (*(v9 + 16))(v11, v14, v28);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  (*(v9 + 32))(v20 + v19, v11, v18);
  sub_886BC(&qword_4EE8A0, &qword_4EE898);

  sub_3E9FB4();

  sub_132A0();
  sub_886BC(&qword_4EE8A8, &qword_4EE880);
  v21 = v30;
  v22 = v32;
  sub_3E9FA4();
  (*(v34 + 8))(v4, v22);
  sub_886BC(&qword_4EE8B0, &qword_4EE888);
  v23 = v31;
  v24 = v35;
  sub_3EA0B4();
  (*(v36 + 8))(v21, v24);
  sub_886BC(&qword_4EE8B8, &qword_4EE890);
  v25 = v33;
  v26 = sub_3E9F34();

  (*(v37 + 8))(v23, v25);
  result = (*(v9 + 8))(v14, v18);
  *v38 = v26;
  return result;
}

uint64_t sub_8AD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_3E9D44();
  }

  swift_errorRetain();
  sub_3E9D24();
}

uint64_t sub_8ADF4()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_8AF1C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t StoreImageProvider.assetCaches.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E61F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void StoreImageProvider.init(asPartOf:)(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  sub_3E6344();
  sub_3EC394();
  v6 = v9[1];
  sub_3E6334();
  v7 = type metadata accessor for StoreImageProvider();
  sub_886BC(&qword_4EEC00, &qword_4EE8C0);
  sub_3E7634();
  (*(v3 + 8))(v5, v2);
  sub_3E61F4();
  sub_3EC394();
  sub_801B4();
  v8 = sub_3EDB24();

  *(a1 + *(v7 + 24)) = v8;
}

uint64_t StoreImageProvider.init(source:assetCaches:workQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StoreImageProvider();
  v9 = *(v8 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8C8);
  (*(*(v10 - 8) + 32))(a4 + v9, a1, v10);
  v11 = sub_3E61F4();
  result = (*(*(v11 - 8) + 32))(a4, a2, v11);
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for StoreImageProvider()
{
  result = qword_4EE948;
  if (!qword_4EE948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoreImageProvider.load(artwork:)(uint64_t a1)
{
  v2 = sub_3E7CA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8D0);
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v20 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8D8);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v20 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE860);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0;
  *(v9 + 40) = 0;
  sub_8B73C(a1, v6);
  (*(v3 + 16))(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v3 + 32))(v11 + v10, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v12 = v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = "StoreImageProvider";
  *(v12 + 8) = 18;
  *(v12 + 16) = 2;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = "StoreImageProvider";
  *(v13 + 32) = 18;
  *(v13 + 40) = 2;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = "StoreImageProvider";
  *(v14 + 32) = 18;
  *(v14 + 40) = 2;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = "StoreImageProvider";
  *(v15 + 32) = 18;
  *(v15 + 40) = 2;
  sub_886BC(&qword_4EE8E0, &qword_4EE8D0);
  swift_retain_n();
  v16 = v20;
  sub_3E9FB4();

  (*(v22 + 8))(v6, v16);
  sub_886BC(&qword_4EE8E8, &qword_4EE8D8);
  v17 = v21;
  v18 = sub_3E9F94();

  (*(v23 + 8))(v8, v17);
  return v18;
}

uint64_t sub_8B73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE990);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  __chkstk_darwin(v4);
  v59 = v41 - v6;
  v45 = sub_3E7CA4();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE998);
  v51 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v41 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE9A0);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v42 = v41 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE9A8);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v43 = v41 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE9B0);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v66 = v41 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE9B8);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v41 - v16;
  sub_3E79B4();
  v53 = a1;
  sub_3E7C44();
  v41[1] = type metadata accessor for StoreImageProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8C8);
  sub_886BC(&qword_4EE9C0, &qword_4EE8C8);
  v17 = v45;
  sub_3E79C4();
  (*(v47 + 8))(v8, v17);
  v18 = v44;
  sub_3E79C4();
  sub_886BC(&qword_4EE9C8, &qword_4EE998);
  v19 = v42;
  v20 = v46;
  sub_3E8884();
  v21 = *(v51 + 8);
  v21(v18, v20);
  v21(v12, v20);
  sub_886BC(&qword_4EE9D0, &qword_4EE9A0);
  v22 = v43;
  v23 = v48;
  sub_3E8854();
  (*(v49 + 8))(v19, v23);
  sub_886BC(&qword_4EE9D8, &qword_4EE9A8);
  v24 = v50;
  sub_3E8874();
  (*(v52 + 8))(v22, v24);
  v25 = v59;
  sub_3E61D4();
  v26 = v60;
  v27 = sub_3E7664();
  (*(v61 + 8))(v25, v26);
  v67 = v27;
  v74[0] = 4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE758);
  v29 = sub_886BC(&qword_4EE9E0, &qword_4EE9B0);
  v61 = sub_886BC(&qword_4EE760, &qword_4EE758);
  v30 = sub_8DF94(&qword_4EE9E8);
  v31 = sub_8DF94(&qword_4EE9F0);
  sub_8DF94(&qword_4EE9F8);
  v32 = v54;
  v33 = v57;
  v34 = v66;
  sub_3E8864();

  v35 = v33;
  (*(v58 + 8))(v34, v33);
  v36 = v62;
  v37 = v55;
  sub_3E8FC4();
  (*(v56 + 8))(v32, v37);
  sub_3E7C64();
  v38 = sub_3E7C34();
  sub_3ED244();

  v67 = sub_3E6724();
  v68 = v35;
  v69 = v28;
  v70 = v30;
  v71 = v31;
  v72 = v29;
  v73 = v61;
  swift_getOpaqueTypeConformance2();
  v39 = v63;
  sub_3E79E4();
  sub_3E9F04();

  sub_8A180(v74);
  return (*(v65 + 8))(v36, v39);
}

uint64_t sub_8C138()
{
  v1 = sub_3E7CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

void sub_8C208()
{
  sub_3E7CA4();
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_8DF70(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

void sub_8C2D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v64) = a5;
  v61 = a3;
  v63 = a2;
  v6 = sub_3E97B4();
  v62 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_3E9854();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = sub_3E5FC4();
  __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v19)
  {
    v52 = v20;
    v57 = v14;
    v58 = v12;
    v59 = v17;
    v60 = v11;
    v54 = v19;
    v55 = v8;
    v56 = v5;
    sub_3E7C64();
    v53 = v6;
    if (v66)
    {
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v23 = sub_3E9474();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
    }

    else
    {
      sub_8A180(v65);
      sub_3E5FB4();
      v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v25 = v26;
      (*(v52 + 8))(v22, v18);
    }

    v27 = v64;
    v28 = v57;
    sub_3E97F4();
    sub_3E97F4();
    sub_3E9834();
    sub_3E9784();
    v29 = v67 + 8;
    v30 = v58;
    v64 = *(v67 + 8);
    v64(v28, v58);

    v31 = sub_3E9834();
    v32 = sub_3EDC84();
    v33 = sub_3EE014();
    v63 = v23;
    if ((v33 & 1) == 0)
    {

      v37 = v54;
      v39 = v55;
      v38 = v62;
      v40 = v60;
LABEL_17:
      v46 = v53;
      (*(v38 + 16))(v39, v40, v53);
      sub_3E98A4();
      swift_allocObject();
      v47 = sub_3E9894();
      (*(v38 + 8))(v40, v46);
      v64(v59, v30);
      v48 = v63;
      *v37 = v47;
      v37[1] = v48;
      v37[2] = v25;
      return;
    }

    v67 = v29;
    LODWORD(v57) = v32;
    if (v27)
    {
      v35 = v61;
      v34 = HIDWORD(v61);
      if (!HIDWORD(v61))
      {
        v34 = v61 & 0xFFFFF800;
        v41 = 55296;
        if (v34 == 55296)
        {
          __break(1u);
          goto LABEL_26;
        }

        v34 = v61 >> 16;
        if (v61 >> 16 <= 0x10)
        {
          if (v61 <= 0x7F)
          {
            v42 = v61 + 1;
LABEL_15:
            v65[0] = (v42 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v42) & 0x18)));

            v36 = v65;
            v37 = v54;
            v38 = v62;
            goto LABEL_16;
          }

LABEL_22:
          v41 = (v35 & 0x3F) << 8;
          if (v35 < 0x800)
          {
            v49 = (v61 >> 6) + v41;
            v50 = 33217;
LABEL_24:
            v42 = v49 + v50;
            goto LABEL_15;
          }

LABEL_26:
          v51 = (v41 | (v61 >> 6) & 0x3F) << 8;
          if (!v34)
          {
            v42 = (v61 >> 12) + v51 + 8487393;
            goto LABEL_15;
          }

          v49 = (v61 >> 18) + ((v51 | (v61 >> 12) & 0x3F) << 8);
          v50 = -2122219023;
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      v36 = v61;
      if (v61)
      {
        v37 = v54;
        v38 = v62;
LABEL_16:
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v65[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_2EDD0(v23, v25, v65);
        v40 = v60;
        v45 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v31, v57, v45, v36, "[identifier=%{name=identifier}s] StoreImageProviderFetch", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);

        v30 = v58;
        v39 = v55;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_8C87C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  os_unfair_lock_lock((a2 + 40));
  sub_8C934((a2 + 16), a3, a4, a5);

  os_unfair_lock_unlock((a2 + 40));
}

uint64_t sub_8C8EC()
{

  return _swift_deallocObject(v0, 41, 7);
}

void sub_8C934(void *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_3E9864();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E97B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9854();
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = v14;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_3E97F4();

    v19 = sub_3E9834();
    sub_3E9884();
    v31 = sub_3EDC74();
    if ((sub_3EE014() & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_3E98B4();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] SUCCESS";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_2EDD0(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_3E9794();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_0, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_8CDBC(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 10);
  sub_8DF4C(&a2[4]);
  os_unfair_lock_unlock(a2 + 10);
}

void sub_8CE2C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, char a5)
{
  v63 = a3;
  v7 = sub_3E9864();
  v59 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = sub_3E97B4();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v60 = &v53 - v17;
  v18 = sub_3E9854();
  __chkstk_darwin(v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v26 = (&v53 - v25);
  if (*v23)
  {
    v55 = v7;
    v56 = v24;
    v57 = v22;
    v58 = v23;
    v27 = v23[2];
    v54 = v23[1];
    if (!a2)
    {
      goto LABEL_7;
    }

    sub_3E97F4();

    v26 = sub_3E9834();
    sub_3E9884();
    v12 = sub_3EDC74();
    if ((sub_3EE014() & 1) == 0)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();

LABEL_21:

      (*(v61 + 8))(v15, v62);
      (*(v56 + 8))(v20, v57);
LABEL_31:
      v52 = v58;
      *v58 = 0;
      v52[1] = 0;
      v52[2] = 0;
      return;
    }

    if ((a5 & 1) == 0)
    {

      if (!v63)
      {
        __break(1u);
LABEL_7:
        sub_3E97F4();

        v15 = sub_3E9834();
        v20 = v60;
        sub_3E9884();
        v28 = sub_3EDC74();
        if ((sub_3EE014() & 1) == 0)
        {
          swift_bridgeObjectRelease_n();

          (*(v61 + 8))(v20, v62);
LABEL_30:
          (*(v56 + 8))(v26, v57);
          goto LABEL_31;
        }

        v53 = v27;
        if ((a5 & 1) == 0)
        {

          v29 = v55;
          v30 = v59;
          if (!v63)
          {
            __break(1u);
            goto LABEL_11;
          }

          goto LABEL_26;
        }

        v29 = v55;
        v30 = v59;
        if (!(v63 >> 32))
        {
          if ((v63 & 0xFFFFF800) == 0xD800)
          {
LABEL_38:
            __break(1u);
            return;
          }

          if (v63 >> 16 <= 0x10)
          {

            v63 = &v64;
LABEL_26:

            sub_3E98B4();

            v42 = v28;
            if ((*(v30 + 88))(v12, v29) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v43 = 0;
              v44 = 0;
              v45 = "[Error] Interval already ended";
            }

            else
            {
              (*(v30 + 8))(v12, v29);
              v45 = "[identifier=%{name=identifier}s] EMPTY";
              v44 = 2;
              v43 = 1;
            }

            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v64 = v47;
            *v46 = v44;
            *(v46 + 1) = v43;
            *(v46 + 2) = 2080;
            v48 = v53;

            v49 = sub_2EDD0(v54, v48, &v64);

            *(v46 + 4) = v49;
            v50 = v60;
            v51 = sub_3E9794();
            _os_signpost_emit_with_name_impl(&dword_0, v15, v42, v51, v63, v45, v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v47);

            (*(v61 + 8))(v50, v62);
            goto LABEL_30;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_17:
      v53 = v27;

      sub_3E98B4();

      v31 = v59;
      v32 = v55;
      v33 = (*(v59 + 88))(v9, v55);
      LODWORD(v60) = v12;
      if (v33 == enum case for OSSignpostError.doubleEnd(_:))
      {
        v36 = 0;
        v35 = 0;
        v34 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v9, v32);
        v34 = "[identifier=%{name=identifier}s] FAILURE";
        v35 = 2;
        v36 = 1;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = v35;
      *(v37 + 1) = v36;
      *(v37 + 2) = 2080;
      v39 = v53;

      v40 = sub_2EDD0(v54, v39, &v64);

      *(v37 + 4) = v40;
      v41 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v26, v60, v41, v63, v34, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);

      goto LABEL_21;
    }

    if (v63 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v63 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v63 >> 16 <= 0x10)
      {

        v63 = &v64;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_35;
  }
}

void sub_8D550(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  os_unfair_lock_lock((a1 + 40));
  sub_8D5D0((a1 + 16), a2, a3, a4);

  os_unfair_lock_unlock((a1 + 40));
}

void sub_8D5D0(void *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_3E9864();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E97B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9854();
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = v14;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_3E97F4();

    v19 = sub_3E9834();
    sub_3E9884();
    v31 = sub_3EDC74();
    if ((sub_3EE014() & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_3E98B4();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] CANCEL";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_2EDD0(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_3E9794();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_0, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_8DA5C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_3E6344();
  sub_3EC394();
  v8 = v10[1];
  sub_3E6334();
  sub_886BC(&qword_4EEC00, &qword_4EE8C0);
  sub_3E7634();
  (*(v5 + 8))(v7, v4);
  sub_3E61F4();
  sub_3EC394();
  sub_801B4();
  v9 = sub_3EDB24();

  *(a2 + *(a1 + 24)) = v9;
}

uint64_t sub_8DC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E61F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8C8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_8DD34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3E61F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8C8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_8DE48()
{
  sub_3E61F4();
  if (v0 <= 0x3F)
  {
    sub_8DEE4();
    if (v1 <= 0x3F)
    {
      sub_801B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8DEE4()
{
  if (!qword_4EE958)
  {
    sub_3E7CA4();
    sub_3E7BB4();
    v0 = sub_3E7BA4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EE958);
    }
  }
}

uint64_t sub_8DF94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_3E6724();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ASKBagContract.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC8ShelfKit14ASKBagContract_bag;
  v5 = sub_3ECAD4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

id ASKBagContract.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8ShelfKit14ASKBagContract_bag;
  v5 = sub_3ECAD4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t ASKBagContract.language.getter()
{
  v0 = sub_3E6044();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEA10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  sub_3ECAC4();
  sub_3ECA94();
  (*(v8 + 8))(v10, v7);
  if (v16[1])
  {
    return v16[0];
  }

  sub_3E6034();
  v12 = sub_3E5FF4();
  v14 = v13;
  v15 = *(v1 + 8);
  v15(v6, v0);
  if (!v14)
  {
    sub_3E6034();
    v12 = sub_3E5FE4();
    v15(v3, v0);
  }

  return v12;
}

uint64_t ASKBagContract.fetchTimeout.getter()
{
  v0 = sub_3EC174();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for JSONTimeUnit.seconds(_:), v0, v2);
  sub_3ECA64();
  return (*(v1 + 8))(v4, v0);
}

uint64_t ASKBagContract.metricsConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEA18);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  sub_3ECA54();
  sub_3ECA94();
  (*(v1 + 8))(v3, v0);
  return v5[1];
}

double ASKBagContract.samplingPercentageUsersLog.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEA20);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  sub_3ECAB4();
  sub_3ECAA4();
  (*(v1 + 8))(v3, v0);
  return *&v5[1];
}

double sub_8E770()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEA20);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - v2;
  v4 = sub_3EC174();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for JSONTimeUnit.milliseconds(_:), v4, v6);
  sub_3ECA64();
  (*(v5 + 8))(v8, v4);
  sub_3ECAA4();
  (*(v1 + 8))(v3, v0);
  return *&v10[1];
}

uint64_t ASKBagContract.showSearchTranscriptMessage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEA28);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5[-v2];
  sub_3ECA84();
  sub_3ECAA4();
  (*(v1 + 8))(v3, v0);
  return v5[15];
}

uint64_t ASKBagContract.followedShowsMetricsCadence.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEA10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_3ECAC4();
  sub_3ECA94();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_8EBC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEA08);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_3ECA74();
  sub_3ECA94();
  return (*(v1 + 8))(v3, v0);
}

id UniversalMetricsDictionary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t type metadata accessor for ASKBagContract()
{
  result = qword_4EEA58;
  if (!qword_4EEA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8EE14()
{
  result = sub_3ECAD4();
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

uint64_t BookmarksControllerEpisodeData.contentIdentifiers(in:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 72) = a1;
  *(v2 + 80) = v3;
  *(v2 + 120) = *(v1 + 8);
  return _swift_task_switch(sub_8EF00, 0, 0);
}

uint64_t sub_8EF00()
{
  if (*(v0 + 120))
  {
    if (*(v0 + 120) == 1)
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
      v2 = swift_task_alloc();
      *(v0 + 88) = v2;
      *v2 = v0;
      v2[1] = sub_8F188;

      return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
    }

    v12 = *(v0 + 80);
    v13 = *(v12 + 16);
    if (v13)
    {
      sub_41B88(0, v13, 0);
      v14 = v12 + 32;
      do
      {
        v14 += 8;
        v15 = sub_3E94B4();
        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          v19 = v15;
          sub_41B88((v16 > 1), v17 + 1, 1);
          v15 = v19;
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[3 * v17];
        v18[4] = v15;
        v18[5] = 0;
        *(v18 + 48) = 0;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_41B88(0, v4, 0);
      v5 = _swiftEmptyArrayStorage[2];
      v6 = 24 * v5 + 48;
      v7 = (v3 + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = _swiftEmptyArrayStorage[3];

        if (v5 >= v10 >> 1)
        {
          sub_41B88((v10 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        v11 = _swiftEmptyArrayStorage + v6;
        *(v11 - 2) = v9;
        *(v11 - 1) = v8;
        *v11 = 2;
        v6 += 24;
        v7 += 2;
        ++v5;
        --v4;
      }

      while (v4);
    }
  }

  v20 = *(v0 + 8);

  return v20(_swiftEmptyArrayStorage);
}

uint64_t sub_8F188()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_8F504;
  }

  else
  {
    v2 = sub_8F29C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8F29C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[8] = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_91258();
  *v4 = v0;
  v4[1] = sub_8F384;
  v6 = v0[9];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v0 + 8, v6, &type metadata for FindOrCreateEpisodeOfferContentIDsIntent, v5, v2, v3);
}

uint64_t sub_8F384()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_8F51C;
  }

  else
  {
    v2 = sub_8F498;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8F498()
{
  v1 = *(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_8F51C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BookmarksController.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);

  sub_3EC394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();

  return v2;
}

uint64_t BookmarksController.init(asPartOf:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);

  sub_3EC394();
  sub_1D4F0(v3, v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();

  sub_1D4F0(v3, v1 + 64);
  return v1;
}

uint64_t BookmarksController.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  return v0;
}

uint64_t BookmarksController.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t BookmarksController.bookmarkEpisodes(with:showHUDConfirmation:)(uint64_t *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = sub_3ED6F4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v2;
  *(v11 + 56) = a2;

  sub_8FEE4(0, 0, v7, &unk_408C00, v11);
}

uint64_t sub_8F878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 26) = a7;
  *(v7 + 25) = a5;
  *(v7 + 32) = a4;
  *(v7 + 40) = a6;
  v8 = sub_3E7044();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_8F940, 0, 0);
}

uint64_t sub_8F940()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  *(v0 + 24) = *(v0 + 25);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_8F9EC;

  return BookmarksControllerEpisodeData.contentIdentifiers(in:)(v2);
}

uint64_t sub_8F9EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_916EC;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_8FB14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8FB14()
{
  v1 = v0[5];
  sub_3E7024();
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_9169C(&qword_4F1A30, &type metadata accessor for BookmarkEpisodeIntent);
  *v4 = v0;
  v4[1] = sub_8FC1C;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v5, v6, v7, v8, v5, v2, v3);
}

uint64_t sub_8FC1C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_916F0;
  }

  else
  {
    v2 = sub_8FD30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8FD30()
{
  if (*(v0 + 26) == 1)
  {
    v1 = *(v0 + 40);
    v2 = v1[11];
    *(v0 + 120) = v2;
    v3 = v1[12];
    *(v0 + 128) = v3;
    *(v0 + 136) = __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
    *(v0 + 144) = *(v3 + 640);
    *(v0 + 152) = (v3 + 640) & 0xFFFFFFFFFFFFLL | 0x47E8000000000000;
    sub_3ED6B4();
    *(v0 + 160) = sub_3ED6A4();
    v5 = sub_3ED684();

    return _swift_task_switch(sub_8FE58, v5, v4);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_8FE58()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];

  v1(v3, v2);

  return _swift_task_switch(sub_916E4, 0, 0);
}

uint64_t sub_8FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_915C4(a3, v22 - v9);
  v11 = sub_3ED6F4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_91634(v10);
  }

  else
  {
    sub_3ED6E4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_3ED684();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_3ED2D4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_91634(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_91634(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t BookmarksController.removeEpisodesFromBookmarks(with:showHUDConfirmation:)(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_3E9A04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_3E9924();

  v15 = sub_3E99F4();
  v16 = sub_3ED9F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v10;
    v18 = v17;
    v28 = swift_slowAlloc();
    v33 = v28;
    *v18 = 136315138;
    v31 = v13;
    v32 = v14;

    v19 = sub_3ED2B4();
    v30 = v14;
    v21 = sub_2EDD0(v19, v20, &v33);
    v27 = v9;
    v22 = v21;
    LOBYTE(v14) = v30;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "BookmarksController.removeEpisodesFromBookmarks() - for episodes %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);

    (*(v29 + 8))(v12, v27);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v23 = sub_3ED6F4();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v13;
  *(v24 + 40) = v14;
  *(v24 + 48) = v3;
  *(v24 + 56) = a2 & 1;

  sub_8FEE4(0, 0, v8, &unk_3FA5D8, v24);
}

uint64_t sub_90474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 26) = a7;
  *(v7 + 25) = a5;
  *(v7 + 32) = a4;
  *(v7 + 40) = a6;
  v8 = sub_3E70E4();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_9053C, 0, 0);
}

uint64_t sub_9053C()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  *(v0 + 24) = *(v0 + 25);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_905E8;

  return BookmarksControllerEpisodeData.contentIdentifiers(in:)(v2);
}

uint64_t sub_905E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_90B60;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_90710;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_90710()
{
  v1 = v0[5];
  sub_3E70C4();
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_9169C(&qword_4F1DD0, &type metadata accessor for UnbookmarkEpisodeIntent);
  *v4 = v0;
  v4[1] = sub_90818;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v5, v6, v7, v8, v5, v2, v3);
}

uint64_t sub_90818()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_90BC4;
  }

  else
  {
    v2 = sub_9092C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9092C()
{
  if (*(v0 + 26) == 1)
  {
    v1 = *(v0 + 40);
    v2 = v1[11];
    *(v0 + 120) = v2;
    v3 = v1[12];
    *(v0 + 128) = v3;
    *(v0 + 136) = __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
    *(v0 + 144) = *(v3 + 648);
    *(v0 + 152) = (v3 + 648) & 0xFFFFFFFFFFFFLL | 0x7234000000000000;
    sub_3ED6B4();
    *(v0 + 160) = sub_3ED6A4();
    v5 = sub_3ED684();

    return _swift_task_switch(sub_90A54, v5, v4);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_90A54()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];

  v1(v3, v2);

  return _swift_task_switch(sub_90AE0, 0, 0);
}

uint64_t sub_90AE0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_90B60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_90BC4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t BookmarksController.notBookmarkedEpisodesCount(in:)(uint64_t result)
{
  v2 = *result;
  if (*(result + 8))
  {
    return *(v2 + 16);
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    v22 = *(v2 + 16);
    v20 = v3 - 1;
    v21 = v2 + 40;
    v23 = v1;
    v24 = *result;
    do
    {
      v6 = (v5 + 16 * v4);
      while (1)
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = v4 + 1;
        v10 = v1[11];
        v11 = v1[12];
        __swift_project_boxed_opaque_existential_1(v1 + 8, v10);
        v12 = *(v11 + 376);

        if ((v12(v8, v7, v10, v11) & 1) == 0)
        {
          break;
        }

        v6 += 2;
        ++v4;
        v1 = v23;
        v2 = v24;
        if (v22 == v9)
        {
          goto LABEL_16;
        }
      }

      v13 = v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_41BA8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v1 = v23;
      v2 = v24;
      v5 = v21;
      v14 = v13;
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_41BA8((v15 > 1), v16 + 1, 1);
        v14 = v13;
        v1 = v23;
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v14;
      v17[5] = v7;
    }

    while (v20 != v4++);
  }

LABEL_16:
  v19 = _swiftEmptyArrayStorage[2];

  return v19;
}

_BYTE *BookmarksController.containsNotBookmarkedEpisodes(in:)(_BYTE *result)
{
  if (result[8])
  {
    return (&dword_0 + 1);
  }

  v11 = v1;
  v12 = *result;
  v3 = (*result + 40);
  v13 = -*(*result + 16);
  v4 = -1;
  do
  {
    v2 = v13 + v4 != -1;
    if (v13 + v4 == -1)
    {
      break;
    }

    if (++v4 >= *(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = v3 + 2;
    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = v11[11];
    v9 = v11[12];
    __swift_project_boxed_opaque_existential_1(v11 + 8, v8);
    v10 = *(v9 + 376);

    LOBYTE(v6) = v10(v6, v7, v8, v9);

    v3 = v5;
  }

  while ((v6 & 1) != 0);
  return v2;
}

Swift::Bool __swiftcall BookmarksController.isBookmarkedEpisode(forEpisodeUUID:)(Swift::String forEpisodeUUID)
{
  object = forEpisodeUUID._object;
  countAndFlagsBits = forEpisodeUUID._countAndFlagsBits;
  v4 = v1[11];
  v5 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v4);
  return (*(v5 + 376))(countAndFlagsBits, object, v4, v5) & 1;
}

uint64_t sub_90F80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_9102C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_3EE3F4();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_3EE5A4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

_BYTE *BookmarksController.containsBookmarkedEpisodes(in:)(_BYTE *result)
{
  if (result[8])
  {
    return 0;
  }

  v11 = v1;
  v12 = *result;
  v3 = (*result + 40);
  v13 = -*(*result + 16);
  v4 = -1;
  do
  {
    v2 = v13 + v4 != -1;
    if (v13 + v4 == -1)
    {
      break;
    }

    if (++v4 >= *(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = v3 + 2;
    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = v11[11];
    v9 = v11[12];
    __swift_project_boxed_opaque_existential_1(v11 + 8, v8);
    v10 = *(v9 + 376);

    LOBYTE(v6) = v10(v6, v7, v8, v9);

    v3 = v5;
  }

  while ((v6 & 1) == 0);
  return v2;
}

unint64_t sub_91258()
{
  result = qword_4F1BF0;
  if (!qword_4F1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1BF0);
  }

  return result;
}

uint64_t sub_912B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2400C;

  return sub_8F878(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_913D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2368C;

  return sub_90474(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_914D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_91518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_915C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_91634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9169C(unint64_t *a1, void (*a2)(uint64_t))
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

char *static Dependencies.allDependencies()()
{
  v62 = sub_3EBCA4();
  v0 = *(v62 - 8);
  __chkstk_darwin(v62);
  v48 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v51 = &v47 - v3;
  __chkstk_darwin(v4);
  v50 = &v47 - v5;
  __chkstk_darwin(v6);
  v49 = &v47 - v7;
  __chkstk_darwin(v8);
  v52 = &v47 - v9;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  __chkstk_darwin(v25);
  v27 = &v47 - v26;
  __chkstk_darwin(v28);
  v30 = &v47 - v29;
  v54 = sub_3E6DE4();

  v31 = _s8ShelfKit12DependenciesO07artworkC09JetEngine15BaseObjectGraphCyFZ_0();
  sub_3EBF94();
  v53 = v31;

  v55 = v30;
  sub_3EBC84();
  type metadata accessor for NowPlayingLiveActivityController();
  v56 = v27;
  sub_3EBC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB20);
  v57 = v24;
  sub_3EBC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  v58 = v21;
  sub_3EBC84();
  type metadata accessor for ASKBagContract();
  v59 = v18;
  sub_3EBC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30);
  v60 = v15;
  sub_3EBC84();
  sub_3EC4A4();
  v61 = v12;
  sub_3EBC84();
  if ([objc_opt_self() supportsLocalLibrary])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB40);
    v32 = v52;
    sub_3EBC84();
    type metadata accessor for RecentlySearchedStorage();
    sub_3EBC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB48);
    sub_3EBC84();
    type metadata accessor for CacheDeleteObserver();
    sub_3EBC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4EEB50);
    v33 = v48;
    sub_3EBC84();
    sub_3EC444();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB38);
    v34 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_3F5630;
    v36 = v62;
    (*(v0 + 16))(v35 + v34, v32, v62);
    sub_3EC3F4();
    sub_3EC404();
    sub_3EC404();
    sub_3EC404();
    sub_3EC404();

    v37 = *(v0 + 8);
    v37(v33, v36);
    v37(v51, v36);
    v37(v50, v36);
    v37(v49, v36);
    v38 = v52;
    v39 = v36;
  }

  else
  {
    type metadata accessor for InMemoryPageStateController();
    v40 = v52;
    sub_3EBC84();
    sub_3EC444();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB38);
    v41 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_3F5630;
    v43 = v62;
    (*(v0 + 16))(v42 + v41, v40, v62);
    sub_3EC3F4();
    v37 = *(v0 + 8);
    v38 = v40;
    v39 = v43;
  }

  v37(v38, v39);

  v44 = sub_3EC414();

  v52 = v44;

  sub_3EC404();

  sub_3EC404();

  sub_3EC404();

  sub_3EC404();

  sub_3EC404();

  sub_3EC404();

  sub_3EC404();

  v51 = sub_3EC414();

  v45 = v62;
  v37(v61, v62);
  v37(v60, v45);
  v37(v59, v45);
  v37(v58, v45);
  v37(v57, v45);
  v37(v56, v45);
  v37(v55, v45);
  return v51;
}

uint64_t sub_91FFC@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - v2;
  v4 = sub_3EC284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBF94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  sub_3EBF84();
  JSONContext.withActionKinds()(v14);
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  sub_3EBF04();
  (*(v1 + 8))(v3, v18);
  (*(v5 + 8))(v7, v4);
  return (v15)(v14, v8);
}

uint64_t sub_92278@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingLiveActivityController();
  result = swift_allocObject();
  *(result + 16) = 1;
  *a1 = result;
  return result;
}

uint64_t sub_922B8@<X0>(uint64_t *a1@<X8>)
{
  sub_3EC444();
  sub_3EC424();
  sub_36174(0, &qword_4E9490);
  sub_3EC394();

  v2 = type metadata accessor for JSStoreDataCache();
  result = swift_allocObject();
  *(result + 16) = v4;
  a1[3] = v2;
  a1[4] = &protocol witness table for JSStoreDataCache;
  *a1 = result;
  return result;
}

uint64_t sub_92358@<X0>(uint64_t *a1@<X8>)
{
  sub_3EC444();
  sub_3EC424();
  v2 = type metadata accessor for JSStoreDataProvider();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB20);
  sub_3EC394();
  sub_3E6784();
  sub_3EC394();
  *(v3 + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  sub_3EC394();

  a1[3] = v2;
  a1[4] = &off_4C4B88;
  *a1 = v3;
  return result;
}

uint64_t sub_9242C@<X0>(void *a1@<X8>)
{
  v2 = sub_3ECAD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_3EC444();
  sub_3EC424();
  sub_3EC394();

  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  v10 = type metadata accessor for ASKBagContract();
  v11 = objc_allocWithZone(v10);
  v9(&v11[OBJC_IVAR____TtC8ShelfKit14ASKBagContract_bag], v5, v2);
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = objc_msgSendSuper2(&v15, "init");
  v13 = *(v3 + 8);
  v13(v5, v2);
  result = (v13)(v8, v2);
  *a1 = v12;
  return result;
}

char *sub_925D4@<X0>(char **a1@<X8>)
{
  sub_3EC444();
  sub_3EC424();
  v2 = objc_allocWithZone(type metadata accessor for HighlightsProvider());
  result = HighlightsProvider.init(asPartOf:)();
  *a1 = result;
  a1[1] = &protocol witness table for HighlightsProvider;
  return result;
}

uint64_t sub_92630@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v89 = sub_3E61A4();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_3E65C4();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v96 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_3EC9A4();
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v75 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4EEB60);
  __chkstk_darwin(v4 - 8);
  v93 = &v71 - v5;
  v80 = sub_3EC9F4();
  v79 = *(v80 - 1);
  __chkstk_darwin(v80);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_3EC894();
  v99 = *(v90 - 8);
  __chkstk_darwin(v90);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v71 - v11;
  __chkstk_darwin(v12);
  v78 = &v71 - v13;
  __chkstk_darwin(v14);
  v74 = &v71 - v15;
  __chkstk_darwin(v16);
  v76 = &v71 - v17;
  __chkstk_darwin(v18);
  v92 = &v71 - v19;
  __chkstk_darwin(v20);
  v101 = &v71 - v21;
  v22 = sub_3ECAD4();
  v95 = *(v22 - 8);
  v23 = v95;
  __chkstk_darwin(v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v71 - v27;
  v29 = sub_3EC444();
  sub_3EC424();
  v30 = sub_36174(0, &qword_4E9490);
  v71 = v30;
  sub_3EC394();

  v73 = v105;
  sub_3EC424();
  v91 = v22;
  sub_3EC394();

  v98 = v29;
  sub_3EC424();
  sub_36174(0, &qword_4EEB70);
  sub_3EC394();

  v72 = v105;
  v31 = *(v23 + 16);
  v94 = v28;
  v82 = v23 + 16;
  v81 = v31;
  v31(v25, v28, v22);
  v32 = [objc_opt_self() ams_sharedAccountStore];
  v106 = v30;
  v107 = &protocol witness table for ACAccountStore;
  v105 = v32;
  v33 = [objc_opt_self() mainBundle];
  v83 = v25;
  sub_3EC884();
  v106 = sub_3E6874();
  v107 = sub_93FB0(&qword_4EEB78, &type metadata accessor for ClickLocationFieldsProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(&v105);
  sub_3E6864();
  sub_3EC9C4();
  v34 = v77;
  sub_3EC864();
  v35 = *(v79 + 8);
  v36 = v80;
  v35(v7, v80);
  v37 = v99 + 8;
  v38 = *(v99 + 8);
  v39 = v9;
  v40 = v90;
  v38(v39, v90);
  __swift_destroy_boxed_opaque_existential_1Tm(&v105);
  v106 = &type metadata for CrossfireReferralFieldsProvider;
  v107 = sub_93F5C();
  sub_3EC9D4();
  v41 = v78;
  v42 = v34;
  sub_3EC864();
  v43 = v36;
  v35(v7, v36);
  v38(v42, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v105);
  v106 = sub_3E6894();
  v107 = sub_93FB0(&qword_4EEB88, &type metadata accessor for SearchFiltersFieldsProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(&v105);
  sub_3E6884();
  sub_3EC9B4();
  v44 = v74;
  sub_3EC864();
  v35(v7, v43);
  v45 = v100;
  v46 = v40;
  v38(v41, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v105);
  v103 = v71;
  v104 = &protocol witness table for ACAccountStore;
  v47 = v73;
  v102 = v73;
  v48 = *(v95 + 56);
  v49 = v37;
  v79 = v95 + 56;
  v77 = v48;
  (v48)(v93, 1, 1, v91);
  sub_3E9194();
  v80 = v47;
  v50 = v72;
  sub_3E9164();
  sub_3ECA24();
  v106 = sub_3ECA34();
  v107 = &protocol witness table for AMSMetricsIdentifierFieldsProvider;
  __swift_allocate_boxed_opaque_existential_0Tm(&v105);
  v78 = v50;
  v51 = v76;
  sub_3ECA14();
  v52 = v75;
  sub_3EC964();
  sub_3EC874();
  v53 = *(v45 + 8);
  v54 = v52;
  v100 = v45 + 8;
  v53(v52, v97);
  v38(v44, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(&v105);
  v106 = sub_3E6854();
  v107 = sub_93FB0(&qword_4EEB90, &type metadata accessor for PageContextFieldsProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(&v105);
  sub_3E6844();
  if (qword_4E8990 != -1)
  {
    swift_once();
  }

  v55 = v97;
  __swift_project_value_buffer(v97, qword_4F1580);
  v56 = v92;
  sub_3EC874();
  v38(v51, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(&v105);
  sub_3EC424();
  v106 = sub_3E68F4();
  v107 = sub_93FB0(&qword_4EEB98, &type metadata accessor for XPAccountsMatchFieldsProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(&v105);
  sub_3E68E4();
  sub_3EC974();
  sub_3EC874();
  v53(v54, v55);
  v38(v56, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(&v105);
  if ([objc_opt_self() supportsLocalLibrary])
  {
    sub_3EC424();
    v106 = sub_3E6944();
    v107 = sub_93FB0(&qword_4EEBB8, &type metadata accessor for EngagementThresholdMetFieldsProvider);
    __swift_allocate_boxed_opaque_existential_0Tm(&v105);
    sub_3E6934();
    sub_3EC984();
    v57 = v101;
    sub_3EC874();
    v53(v54, v97);
    v38(v57, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(&v105);
    (*(v99 + 32))(v57, v56, v46);
  }

  sub_3EC424();
  sub_93FB0(&qword_4EEBA0, &type metadata accessor for JSMetricsEventLinter);
  v58 = v96;
  v100 = v49;
  v59 = v86;
  sub_3EC374();

  v98 = v38;
  v60 = v91;
  v61 = v81;
  v81(v83, v94, v91);
  sub_3E7964();
  v62 = v85;
  sub_3E6194();
  v97 = sub_3ECA04();
  (*(v99 + 16))(v56, v101, v46);
  v106 = v59;
  v107 = sub_93FB0(&qword_4EEBA8, &type metadata accessor for JSMetricsEventLinter);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v105);
  v64 = v84;
  (*(v84 + 16))(boxed_opaque_existential_0Tm, v58, v59);
  v65 = v89;
  v103 = v89;
  v104 = sub_93FB0(&qword_4EEBB0, &type metadata accessor for PodcastsMetricsEventRecorder);
  v66 = __swift_allocate_boxed_opaque_existential_0Tm(&v102);
  v67 = v88;
  (*(v88 + 16))(v66, v62, v65);
  v68 = v93;
  v69 = v94;
  v61(v93, v94, v60);
  (v77)(v68, 0, 1, v60);
  sub_3EC484();

  (*(v67 + 8))(v62, v65);
  (*(v64 + 8))(v96, v59);
  v98(v101, v90);
  return (*(v95 + 8))(v69, v60);
}

uint64_t sub_934B8@<X0>(uint64_t *a1@<X8>)
{
  sub_3EC444();
  sub_3EC424();
  v2 = type metadata accessor for LibraryObserverProvider();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  sub_3ECD14();

  *(v3 + 16) = v5;
  a1[3] = v2;
  a1[4] = &protocol witness table for LibraryObserverProvider;
  *a1 = v3;
  return result;
}

void sub_93568(void *a1@<X8>)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 privateQueueContext];

  type metadata accessor for RecentlySearchedStorage();
  v5 = swift_allocObject();
  v6 = sub_1E43C8(v2, v4, v5);

  *a1 = v6;
}

uint64_t sub_93624@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3E9024();
  sub_3EC444();
  sub_3EC424();
  result = sub_3E9014();
  a1[3] = v2;
  a1[4] = &protocol witness table for CategoryObserverProvider;
  *a1 = result;
  return result;
}

void *sub_93680@<X0>(void *a1@<X8>)
{
  sub_3EC444();
  v2 = sub_3EC424();
  type metadata accessor for CacheDeleteObserver();
  swift_allocObject();
  result = CacheDeleteObserver.init(asPartOf:)(v2);
  *a1 = result;
  return result;
}

uint64_t sub_936DC@<X0>(uint64_t *a1@<X8>)
{
  sub_3EC444();
  sub_3EC424();
  v2 = sub_3E6924();
  swift_allocObject();
  result = sub_3E6914();
  a1[3] = v2;
  a1[4] = &protocol witness table for EngagementThresholdStatusProvider;
  *a1 = result;
  return result;
}

uint64_t sub_93750@<X0>(uint64_t *a1@<X8>)
{
  sub_3EC444();
  sub_3EC424();
  sub_3E8EE4();
  sub_3EC394();
  sub_3E9314();
  sub_3EC394();

  type metadata accessor for InMemoryPageStateController();
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_937E8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_3E90C4();
  a1[4] = &protocol witness table for UniformBucketingStrategy;
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_3E90B4();
}

void sub_9382C(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE8C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  sub_3EC444();
  sub_3EC424();
  sub_3E6344();
  sub_3EC394();
  v6 = v9[1];
  sub_3E6334();
  v7 = type metadata accessor for StoreImageProvider();
  sub_940BC();
  sub_3E7634();
  (*(v3 + 8))(v5, v2);
  sub_3E61F4();
  sub_3EC394();
  sub_36174(0, &qword_4F10B0);
  v8 = sub_3EDB24();

  *(a1 + *(v7 + 24)) = v8;
}

uint64_t sub_939B8@<X0>(uint64_t *a1@<X8>)
{
  sub_3EC444();
  sub_3EC424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBE8);
  sub_3EC394();

  sub_1F958(v7, v6);
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  v3 = sub_3ED204();
  [v2 setName:v3];

  type metadata accessor for LegacyArtworkLoader();
  swift_allocObject();
  v4 = sub_388718(v2, 0);

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  swift_beginAccess();

  sub_9404C(v6, v4 + 24);
  swift_endAccess();

  *a1 = v4;
  return result;
}

uint64_t sub_93AF4@<X0>(uint64_t a1@<X8>)
{
  sub_3EC444();
  v2 = sub_3EC424();

  return CompositeImageProvider.init(asPartOf:)(v2, a1);
}

uint64_t sub_93B38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3E6964();
  sub_3EC444();
  sub_3EC424();
  v3 = sub_E94F0();

  a1[3] = v2;
  a1[4] = &protocol witness table for StoreLibraryMultiplexingImageProvider;
  *a1 = v3;
  return result;
}

uint64_t _s8ShelfKit12DependenciesO07artworkC09JetEngine15BaseObjectGraphCyFZ_0()
{
  v0 = sub_3EBCA4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v24 = &v21 - v5;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBD8);
  v23 = v14;
  sub_3EBC84();
  type metadata accessor for StoreImageProvider();
  v22 = v11;
  sub_3EBC84();
  type metadata accessor for LegacyArtworkLoader();
  sub_3EBC84();
  type metadata accessor for CompositeImageProvider();
  sub_3EBC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBE0);
  sub_3EBC84();
  sub_3EC444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB38);
  v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_3F5630;
  (*(v1 + 16))(v16 + v15, v14, v0);
  sub_3EC3F4();
  sub_3EC404();
  sub_3EC404();
  v17 = v24;
  sub_3EC404();
  v18 = sub_3EC404();

  v19 = *(v1 + 8);
  v19(v3, v0);
  v19(v17, v0);
  v19(v8, v0);
  v19(v22, v0);
  v19(v23, v0);
  return v18;
}

unint64_t sub_93F5C()
{
  result = qword_4EEB80;
  if (!qword_4EEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EEB80);
  }

  return result;
}

uint64_t sub_93FB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_93FF8()
{
  result = qword_4EEBD0;
  if (!qword_4EEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EEBD0);
  }

  return result;
}

uint64_t sub_9404C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4EEBF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_940BC()
{
  result = qword_4EEC00;
  if (!qword_4EEC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EE8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EEC00);
  }

  return result;
}

uint64_t sub_94120@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ChevronAppendingView();
  sub_94D40(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3EA6F4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ChevronAppendingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_94344();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_94344()
{
  v1 = sub_3EABB4();
  __chkstk_darwin(v1 - 8);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EA6F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  if (*(v0 + 16) == 1)
  {
    sub_3EB834();
    v11 = sub_3EB3A4();
    v42 = v3;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v46 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EECB8);
    sub_94CCC();
    v17 = sub_3EB244();
    v43 = v19;
    v44 = v18;
    v45 = v20;
    sub_94D30(v12, v14, v16 & 1);

    sub_94120(v10);
    (*(v5 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v4);
    LOBYTE(v14) = sub_3EA6E4();
    v21 = *(v5 + 8);
    v21(v7, v4);
    v21(v10, v4);
    sub_3EABA4();
    v41 = v17;
    if (v14)
    {
      v48._countAndFlagsBits = 9404642;
      v48._object = 0xA300000000000000;
      sub_3EAB94(v48);
      v23 = *v0;
      v22 = *(v0 + 8);
      v49._countAndFlagsBits = *v0;
      v49._object = v22;
      sub_3EAB84(v49);
      v50._countAndFlagsBits = 41154;
      v50._object = 0xA200000000000000;
      sub_3EAB94(v50);
      sub_3EAB74();
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      sub_3EAB94(v51);
      sub_3EABD4();
      v24 = sub_3EB374();
      v26 = v25;
      v28 = v27;
      v46 = v23;
      v47 = v22;
      sub_68DC4();

      v29 = sub_3EB274();
      sub_94D30(v24, v26, v28 & 1);

      sub_94D30(v41, v44, v45 & 1);
    }

    else
    {
      v52._countAndFlagsBits = 9339106;
      v52._object = 0xA300000000000000;
      sub_3EAB94(v52);
      v33 = *v0;
      v32 = *(v0 + 8);
      v53._countAndFlagsBits = *v0;
      v53._object = v32;
      sub_3EAB84(v53);
      v54._countAndFlagsBits = 41154;
      v54._object = 0xA200000000000000;
      sub_3EAB94(v54);
      v34 = v44;
      sub_3EAB74();
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_3EAB94(v55);
      sub_3EABD4();
      v35 = sub_3EB374();
      v37 = v36;
      v39 = v38;
      v46 = v33;
      v47 = v32;
      sub_68DC4();

      v29 = sub_3EB274();
      sub_94D30(v41, v34, v45 & 1);

      sub_94D30(v35, v37, v39 & 1);
    }

    return v29;
  }

  else
  {
    v30 = *(v0 + 8);
    v46 = *v0;
    v47 = v30;
    sub_68DC4();

    return sub_3EB394();
  }
}

uint64_t ChevronAppendingView.init(string:append:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for ChevronAppendingView() + 24);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t type metadata accessor for ChevronAppendingView()
{
  result = qword_4EEC70;
  if (!qword_4EEC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_94968(uint64_t a1)
{
  v2 = sub_3EA6F4();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA964();
}

uint64_t sub_94A64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_94B34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_94BE4()
{
  sub_94C68();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_94C68()
{
  if (!qword_4EEC80)
  {
    sub_3EA6F4();
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4EEC80);
    }
  }
}

unint64_t sub_94CCC()
{
  result = qword_4EECC0;
  if (!qword_4EECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EECB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EECC0);
  }

  return result;
}

uint64_t sub_94D30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_94D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Review.title.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Ratings.formattedCount.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t type metadata accessor for LegacyActionLink()
{
  result = qword_4EED28;
  if (!qword_4EED28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyActionLink.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v64 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v66 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v49 - v7;
  v73 = sub_3EBF94();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v62 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v49 - v12;
  v13 = sub_3E5FC4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3EBDF4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v24 = a1;
  sub_3EBE04();
  v65 = sub_3EBDC4();
  v26 = v25;
  v27 = v23;
  v28 = *(v18 + 8);
  v28(v27, v17);
  if (!v26)
  {
    sub_3E5FB4();
    v65 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v26 = v29;
    (*(v14 + 8))(v16, v13);
  }

  v30 = v67;
  v31 = v68;
  sub_3EC244();
  if (v30)
  {

    (*(v70 + 8))(v31, v73);
    return (v28)(v24, v17);
  }

  else
  {
    v60 = v26;
    sub_3EBE04();
    v59 = sub_3EBDC4();
    v58 = v33;
    v28(v20, v17);
    sub_3EBE04();
    v55 = sub_3EBDC4();
    v54 = v34;
    v28(v20, v17);
    sub_3E7784();
    v67 = 0;
    v57 = v17;
    v35 = v24;
    sub_3EBE04();
    v56 = v28;
    v50 = *(v70 + 16);
    v36 = v61;
    v37 = v73;
    v50(v61, v31, v73);
    sub_95654();
    sub_3EC574();
    v51 = v35;
    sub_3EBE04();
    v38 = v37;
    v39 = v50;
    v50(v36, v31, v38);
    sub_4CDFC();
    sub_3EC574();
    v53 = v71[0];
    v52 = v71[1];
    sub_3EC634();
    sub_3EBE04();
    v40 = v73;
    v39(v36, v31, v73);
    v41 = v63;
    sub_3EC574();
    sub_1F958(v72, v71);
    v42 = v62;
    sub_FBD0(v69, v62, &qword_4F1D50);
    sub_FBD0(v41, v66, &unk_4E9170);
    v43 = v64;
    v44 = v60;
    *v64 = v65;
    v43[1] = v44;
    sub_1F958(v71, (v43 + 2));
    v45 = v58;
    v43[7] = v59;
    v43[8] = v45;
    v46 = v54;
    v43[9] = v55;
    v43[10] = v46;
    v47 = type metadata accessor for LegacyActionLink();
    sub_FBD0(v42, v43 + v47[8], &qword_4F1D50);
    (*(v70 + 8))(v31, v40);
    v56(v51, v57);
    sub_FCF8(v42, &qword_4F1D50);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    sub_FCF8(v41, &unk_4E9170);
    sub_FCF8(v69, &qword_4F1D50);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    v48 = v53;
    if (v52)
    {
      v48 = 0;
    }

    *(v43 + v47[9]) = v48;
    return sub_14A10(v66, v43 + v47[10]);
  }
}

unint64_t sub_95654()
{
  result = qword_4EECC8;
  if (!qword_4EECC8)
  {
    sub_3E7784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EECC8);
  }

  return result;
}

uint64_t sub_956D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_95828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_95964()
{
  sub_83E10();
  if (v0 <= 0x3F)
  {
    sub_1972C();
    if (v1 <= 0x3F)
    {
      sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
      if (v2 <= 0x3F)
      {
        sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_95A68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t LegacyCategoryLockup.__allocating_init(adamId:icon:color:title:subtitles:eyebrow:clickAction:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v67 = a8;
  v66 = a7;
  v75 = a6;
  v63 = a5;
  v74 = a4;
  v61 = a1;
  v78 = a11;
  v64 = a10;
  v60 = sub_3E5FC4();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v23 - 8);
  v25 = &v57 - v24;
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC8ShelfKit20LegacyCategoryLockup_color;
  *v27 = a3;
  *(v27 + 4) = BYTE4(a3) & 1;
  v28 = v61;
  v62 = sub_3E82B4();
  v69 = v29;
  v68 = v30;
  v76 = v31;
  v73 = a2;
  v77 = v25;
  sub_FBD0(a2, v25, &qword_4F1D50);
  v72 = a9;
  sub_FBD0(a9, v82, &qword_4EDE00);
  v70 = v22;
  sub_FBD0(v78, v22, &unk_4E9170);
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0;
  v32 = sub_3EC634();
  (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  sub_FBD0(v19, v16, &unk_4E9170);
  v65 = v16;
  sub_3ECAE4();
  v71 = v19;
  sub_FCF8(v19, &unk_4E9170);
  *&v80[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  sub_FBD0(v80, v79, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v80, &qword_4EDE00);
  *&v80[0] = 0;
  sub_3ECAE4();
  *&v80[0] = 0;
  sub_3ECAE4();
  *&v80[0] = 0;
  sub_3ECAE4();
  *&v80[0] = 0;
  sub_3ECAE4();
  if (sub_3E94A4())
  {
    v33 = v63;
    v34 = v58;
    sub_3E5FB4();
    v35 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v37 = v36;
    (*(v59 + 8))(v34, v60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_3F5630;
    *&v80[0] = v28;
    sub_17A28();
    *(v38 + 32) = sub_3EE1F4();
    *(v38 + 40) = v39;
    *&v80[0] = v38;
    v33 = v63;
    if (v63)
    {

      v38 = sub_DFAE8(&dword_0 + 1, 2, 1, v38);
      *(v38 + 16) = 2;
      *(v38 + 48) = v74;
      *(v38 + 56) = v33;
      *&v80[0] = v38;
    }

    if (v75)
    {

      sub_40D60(v40);
      v38 = *&v80[0];
    }

    v79[0] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    v35 = sub_3ED134();
    v37 = v41;
  }

  *(v26 + 16) = v35;
  *(v26 + 24) = v37;
  *(v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v28;
  v42 = v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v43 = v69;
  *v42 = v62;
  *(v42 + 8) = v43;
  v44 = v68;
  *(v42 + 16) = v68;
  v45 = v76;
  *(v42 + 24) = v76;
  *(v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v64 & 1;
  *(v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v77, v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v46 = (v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v46 = v74;
  v46[1] = v33;
  *(v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v75;
  v47 = (v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v48 = v67;
  *v47 = v66;
  v47[1] = v48;
  v49 = (v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v49 = 0;
  v49[1] = 0;
  *(v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v50 = (v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v50 = 0;
  v50[1] = 0;
  *(v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v51 = (v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v51 = 0;
  v51[1] = 0;
  v52 = v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v52 = 0;
  *(v52 + 4) = 1;
  v53 = v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v53 = 0;
  *(v53 + 8) = 1;
  v79[0] = 0;
  swift_beginAccess();
  sub_3DE90(v43, v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v82, v80, &qword_4EDE00);
  sub_FBD0(v80, v79, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v80, &qword_4EDE00);
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v54 = v70;
  v55 = v71;
  sub_FBD0(v70, v71, &unk_4E9170);
  sub_FBD0(v55, v65, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();
  sub_3DEF8(v43, v44, v76);
  sub_FCF8(v78, &unk_4E9170);
  sub_FCF8(v72, &qword_4EDE00);
  sub_FCF8(v73, &qword_4F1D50);
  sub_FCF8(v55, &unk_4E9170);
  sub_FCF8(v54, &unk_4E9170);
  sub_FCF8(v82, &qword_4EDE00);
  sub_FCF8(v77, &qword_4F1D50);
  return v26;
}

uint64_t LegacyCategoryLockup.init(adamId:icon:color:title:subtitles:eyebrow:clickAction:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v12 = v11;
  v83 = a8;
  v82 = a7;
  v81 = a6;
  v79 = a5;
  v93 = a4;
  v97 = a2;
  v76 = a1;
  v95 = a11;
  v80 = a10;
  v96 = a9;
  v75 = sub_3E5FC4();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v84);
  v77 = &v72 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v89);
  v17 = &v72 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v92);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v20 - 8);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v72 - v24;
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v29 - 8);
  v31 = &v72 - v30;
  v32 = v12 + OBJC_IVAR____TtC8ShelfKit20LegacyCategoryLockup_color;
  *v32 = a3;
  *(v32 + 4) = BYTE4(a3) & 1;
  v33 = v76;
  v78 = sub_3E82B4();
  v87 = v34;
  v86 = v35;
  v85 = v36;
  v94 = v31;
  sub_FBD0(v97, v31, &qword_4F1D50);
  sub_FBD0(v96, v101, &qword_4EDE00);
  v90 = v28;
  sub_FBD0(v95, v28, &unk_4E9170);
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0;
  v37 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v38 = sub_3EC634();
  (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
  sub_FBD0(v25, v22, &unk_4E9170);
  v88 = v22;
  v39 = v33;
  sub_3ECAE4();
  v91 = v25;
  sub_FCF8(v25, &unk_4E9170);
  sub_FACC(v19, v12 + v37, &qword_4EED90);
  v40 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v99[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  sub_FACC(v17, v12 + v40, &qword_4EED80);
  v41 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  sub_FBD0(v99, v98, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v42 = v77;
  sub_3ECAE4();
  sub_FCF8(v99, &qword_4EDE00);
  sub_FACC(v42, v12 + v41, &qword_4EED88);
  v43 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v99[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v43, &qword_4EED80);
  v44 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v99[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v44, &qword_4EED80);
  v45 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v99[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v45, &qword_4EED80);
  v46 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v99[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v46, &qword_4EED80);
  if (sub_3E94A4())
  {
    v47 = v79;
    v48 = v73;
    sub_3E5FB4();
    v49 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v51 = v50;
    (*(v74 + 8))(v48, v75);
    v52 = v81;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_3F5630;
    *&v99[0] = v33;
    sub_17A28();
    *(v53 + 32) = sub_3EE1F4();
    *(v53 + 40) = v54;
    *&v99[0] = v53;
    v47 = v79;
    if (v79)
    {

      v53 = sub_DFAE8(&dword_0 + 1, 2, 1, v53);
      *(v53 + 16) = 2;
      *(v53 + 48) = v93;
      *(v53 + 56) = v47;
      *&v99[0] = v53;
    }

    v52 = v81;
    if (v81)
    {

      sub_40D60(v55);
      v53 = *&v99[0];
    }

    v98[0] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    v49 = sub_3ED134();
    v51 = v56;
  }

  *(v12 + 16) = v49;
  *(v12 + 24) = v51;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v39;
  v57 = v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v58 = v87;
  *v57 = v78;
  *(v57 + 8) = v58;
  v59 = v86;
  *(v57 + 16) = v86;
  v60 = v85;
  *(v57 + 24) = v85;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v80 & 1;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v94, v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v61 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v61 = v93;
  v61[1] = v47;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v52;
  v62 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v63 = v83;
  *v62 = v82;
  v62[1] = v63;
  v64 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v64 = 0;
  v64[1] = 0;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v65 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v65 = 0;
  v65[1] = 0;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v66 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v66 = 0;
  v66[1] = 0;
  v67 = v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v67 = 0;
  *(v67 + 4) = 1;
  v68 = v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v68 = 0;
  *(v68 + 8) = 1;
  v98[0] = 0;
  swift_beginAccess();
  sub_3DE90(v58, v59, v60);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v101, v99, &qword_4EDE00);
  sub_FBD0(v99, v98, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v99, &qword_4EDE00);
  v98[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v98[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v98[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v98[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v69 = v90;
  v70 = v91;
  sub_FBD0(v90, v91, &unk_4E9170);
  sub_FBD0(v70, v88, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_3DEF8(v58, v59, v60);
  sub_FCF8(v95, &unk_4E9170);
  sub_FCF8(v96, &qword_4EDE00);
  sub_FCF8(v97, &qword_4F1D50);
  sub_FCF8(v70, &unk_4E9170);
  sub_FCF8(v69, &unk_4E9170);
  sub_FCF8(v101, &qword_4EDE00);
  sub_FCF8(v94, &qword_4F1D50);
  return v12;
}

uint64_t LegacyCategoryLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22[0] = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = sub_3EBDF4();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  sub_3EBE04();
  v24 = v5;
  v14 = *(v5 + 16);
  v14(v9, a2, v4);
  sub_98100();
  v15 = a1;
  sub_3EC574();
  v16 = v27;
  v17 = v22[1] + OBJC_IVAR____TtC8ShelfKit20LegacyCategoryLockup_color;
  *v17 = v26;
  *(v17 + 4) = v16;
  v18 = *(v25 + 16);
  v23 = v10;
  v18(v12, a1, v10);
  v19 = v22[0];
  v14(v22[0], a2, v4);
  v20 = LegacyLockup.init(deserializing:using:)(v12, v19);
  (*(v24 + 8))(a2, v4);
  (*(v25 + 8))(v15, v23);
  return v20;
}

uint64_t LegacyEditorialItemLockup.__deallocating_deinit()
{
  LegacyLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t LegacyCategoryLockup.__allocating_init(from:configuration:)(void *a1, uint64_t a2)
{
  v67 = sub_3E5FC4();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v80 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v64 - v8;
  __chkstk_darwin(v9);
  v81 = &v64 - v10;
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v14 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v64 - v19;
  [a1 adamID];
  v21 = sub_3E94B4();
  sub_3E75C4();
  v77 = sub_3E75D4();
  v22 = [a1 name];
  v74 = sub_3ED244();
  v73 = v23;

  v24 = sub_3E85B4();
  v78 = a2;
  v79 = a1;
  MTCategory.segue(with:targetType:)(a2, v24, v25, v87);

  v86 = v21;
  v64 = sub_17A28();
  sub_3EE1F4();
  sub_3E85B4();
  sub_3E86C4();
  sub_3EC5A4();

  v26 = sub_3EC634();
  v27 = *(*(v26 - 8) + 56);
  v27(v13, 0, 1, v26);
  v28 = swift_allocObject();
  v29 = v28 + OBJC_IVAR____TtC8ShelfKit20LegacyCategoryLockup_color;
  v30 = BYTE4(v77);
  *v29 = v77;
  *(v29 + 4) = v30 & 1;
  v69 = sub_3E82B4();
  v72 = v31;
  v71 = v32;
  v70 = v33;
  v76 = v20;
  v75 = v16;
  sub_FBD0(v20, v16, &qword_4F1D50);
  sub_FBD0(v87, &v86, &qword_4EDE00);
  v77 = v13;
  v34 = v13;
  v35 = v21;
  v36 = v68;
  sub_FBD0(v34, v81, &unk_4E9170);
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0;
  v27(v36, 1, 1, v26);
  sub_FBD0(v36, v80, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v36, &unk_4E9170);
  *&v84[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  sub_FBD0(v84, v83, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v84, &qword_4EDE00);
  *&v84[0] = 0;
  sub_3ECAE4();
  *&v84[0] = 0;
  sub_3ECAE4();
  *&v84[0] = 0;
  sub_3ECAE4();
  *&v84[0] = 0;
  sub_3ECAE4();
  v37 = v21;
  if (sub_3E94A4())
  {
    v38 = v65;
    sub_3E5FB4();
    v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v41 = v40;
    (*(v66 + 8))(v38, v67);
    v42 = v74;
    v43 = v73;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_3F5630;
    *&v84[0] = v35;
    *(v44 + 32) = sub_3EE1F4();
    *(v44 + 40) = v45;
    v46 = v73;

    v47 = sub_DFAE8(&dword_0 + 1, 2, 1, v44);
    *(v47 + 2) = 2;
    v48 = v74;
    *(v47 + 6) = v74;
    *(v47 + 7) = v46;
    *&v84[0] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    v39 = sub_3ED134();
    v41 = v49;

    v42 = v48;
    v43 = v46;
  }

  v50 = v69;
  *(v28 + 16) = v39;
  *(v28 + 24) = v41;
  *(v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v37;
  v51 = v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v52 = v72;
  *v51 = v50;
  *(v51 + 8) = v52;
  *(v51 + 16) = v71;
  *(v51 + 24) = v70;
  *(v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  v53 = v75;
  sub_FBD0(v75, v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v54 = (v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v54 = v42;
  v54[1] = v43;
  *(v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = 0;
  v55 = (v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v55 = 0;
  v55[1] = 0;
  v56 = (v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v56 = 0;
  v56[1] = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v57 = (v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v57 = 0;
  v57[1] = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v58 = (v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v58 = 0;
  v58[1] = 0;
  v59 = v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v59 = 0;
  *(v59 + 4) = 1;
  v60 = v28 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v60 = 0;
  *(v60 + 8) = 1;
  v83[0] = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v86, v84, &qword_4EDE00);
  sub_FBD0(v84, v83, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v84, &qword_4EDE00);
  v83[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v83[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v83[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v83[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v61 = v81;
  sub_FBD0(v81, v36, &unk_4E9170);
  sub_FBD0(v36, v80, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();
  v62 = v78;
  v84[0] = *v78;
  sub_FCF8(v84, &unk_4F8A10);
  v83[0] = v62[2];
  sub_FCF8(v83, &qword_4E94E0);
  v82[0] = v62[3];
  sub_FCF8(v82, &unk_4F8A20);
  sub_16AC0(v62[4]);

  sub_FCF8(v36, &unk_4E9170);
  sub_FCF8(v61, &unk_4E9170);
  sub_FCF8(&v86, &qword_4EDE00);
  sub_FCF8(v53, &qword_4F1D50);
  sub_FCF8(v77, &unk_4E9170);
  sub_FCF8(v87, &qword_4EDE00);
  sub_FCF8(v76, &qword_4F1D50);
  return v28;
}

unint64_t sub_9809C()
{
  result = qword_4EED78;
  if (!qword_4EED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_5010E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EED78);
  }

  return result;
}

unint64_t sub_98100()
{
  result = qword_4EED98;
  if (!qword_4EED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EED98);
  }

  return result;
}

uint64_t type metadata accessor for LegacyCategoryLockup()
{
  result = qword_4EEDC8;
  if (!qword_4EEDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyChannelLockup.__allocating_init(adamId:icon:title:subtitles:eyebrow:clickAction:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v78 = a8;
  v67 = a7;
  v66 = a6;
  v65 = a5;
  v62 = a4;
  v76 = a3;
  v61 = a1;
  v64 = a9;
  v60 = sub_3E5FC4();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - v22;
  v24 = swift_allocObject();
  v25 = v61;
  v63 = sub_3E8294();
  v71 = v26;
  v70 = v27;
  v68 = v28;
  v75 = a2;
  v77 = v23;
  sub_FBD0(a2, v23, &qword_4F1D50);
  sub_FBD0(v78, v82, &qword_4EDE00);
  v74 = a10;
  v73 = v20;
  sub_FBD0(a10, v20, &unk_4E9170);
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0;
  v29 = sub_3EC634();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  sub_FBD0(v17, v14, &unk_4E9170);
  v72 = v14;
  sub_3ECAE4();
  v69 = v17;
  v30 = v17;
  v31 = v25;
  sub_FCF8(v30, &unk_4E9170);
  *&v80[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  sub_FBD0(v80, v79, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v80, &qword_4EDE00);
  *&v80[0] = 0;
  sub_3ECAE4();
  *&v80[0] = 0;
  sub_3ECAE4();
  *&v80[0] = 0;
  sub_3ECAE4();
  *&v80[0] = 0;
  sub_3ECAE4();
  if (sub_3E94A4())
  {
    v32 = v62;
    v33 = v58;
    sub_3E5FB4();
    v34 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v36 = v35;
    (*(v59 + 8))(v33, v60);
    v37 = v65;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_3F5630;
    *&v80[0] = v25;
    sub_17A28();
    *(v38 + 32) = sub_3EE1F4();
    *(v38 + 40) = v39;
    *&v80[0] = v38;
    v32 = v62;
    if (v62)
    {

      v38 = sub_DFAE8(&dword_0 + 1, 2, 1, v38);
      *(v38 + 16) = 2;
      *(v38 + 48) = v76;
      *(v38 + 56) = v32;
      *&v80[0] = v38;
    }

    v37 = v65;
    if (v65)
    {

      sub_40D60(v40);
      v38 = *&v80[0];
    }

    v79[0] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    v34 = sub_3ED134();
    v36 = v41;
  }

  *(v24 + 16) = v34;
  *(v24 + 24) = v36;
  *(v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v31;
  v42 = v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v43 = v71;
  *v42 = v63;
  *(v42 + 8) = v43;
  v44 = v70;
  *(v42 + 16) = v70;
  v45 = v68;
  *(v42 + 24) = v68;
  *(v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v64 & 1;
  *(v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v77, v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v46 = (v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v46 = v76;
  v46[1] = v32;
  *(v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v37;
  v47 = (v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v48 = v67;
  *v47 = v66;
  v47[1] = v48;
  v49 = (v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v49 = 0;
  v49[1] = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v50 = (v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v50 = 0;
  v50[1] = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v51 = (v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v51 = 0;
  v51[1] = 0;
  v52 = v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v52 = 0;
  *(v52 + 4) = 1;
  v53 = v24 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v53 = 0;
  *(v53 + 8) = 1;
  v79[0] = 0;
  swift_beginAccess();
  sub_3DE90(v43, v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v82, v80, &qword_4EDE00);
  sub_FBD0(v80, v79, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v80, &qword_4EDE00);
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v79[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v54 = v73;
  v55 = v69;
  sub_FBD0(v73, v69, &unk_4E9170);
  sub_FBD0(v55, v72, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();
  sub_3DEF8(v43, v44, v45);
  sub_FCF8(v74, &unk_4E9170);
  sub_FCF8(v78, &qword_4EDE00);
  sub_FCF8(v75, &qword_4F1D50);
  sub_FCF8(v55, &unk_4E9170);
  sub_FCF8(v54, &unk_4E9170);
  sub_FCF8(v82, &qword_4EDE00);
  sub_FCF8(v77, &qword_4F1D50);
  return v24;
}

uint64_t LegacyChannelLockup.init(adamId:icon:title:subtitles:eyebrow:clickAction:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v11 = v10;
  v91 = a8;
  v78 = a7;
  v77 = a6;
  v76 = a5;
  v74 = a4;
  v88 = a3;
  v92 = a2;
  v90 = a10;
  v75 = a9;
  v71 = sub_3E5FC4();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v79);
  v72 = &v69 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v84);
  v16 = &v69 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v87);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v19 - 8);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  __chkstk_darwin(v25);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v28 - 8);
  v30 = &v69 - v29;
  v73 = sub_3E8294();
  v82 = v31;
  v81 = v32;
  v80 = v33;
  v89 = v30;
  sub_FBD0(v92, v30, &qword_4F1D50);
  sub_FBD0(v91, v96, &qword_4EDE00);
  v85 = v27;
  sub_FBD0(v90, v27, &unk_4E9170);
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0;
  v34 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v35 = sub_3EC634();
  (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  sub_FBD0(v24, v21, &unk_4E9170);
  v83 = v21;
  v36 = a1;
  sub_3ECAE4();
  v86 = v24;
  sub_FCF8(v24, &unk_4E9170);
  sub_FACC(v18, v11 + v34, &qword_4EED90);
  v37 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v94[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  sub_FACC(v16, v11 + v37, &qword_4EED80);
  v38 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  sub_FBD0(v94, v93, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v39 = v72;
  sub_3ECAE4();
  sub_FCF8(v94, &qword_4EDE00);
  sub_FACC(v39, v11 + v38, &qword_4EED88);
  v40 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v94[0] = 0;
  sub_3ECAE4();
  sub_FACC(v16, v11 + v40, &qword_4EED80);
  v41 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v94[0] = 0;
  sub_3ECAE4();
  sub_FACC(v16, v11 + v41, &qword_4EED80);
  v42 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v94[0] = 0;
  sub_3ECAE4();
  sub_FACC(v16, v11 + v42, &qword_4EED80);
  v43 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v94[0] = 0;
  sub_3ECAE4();
  sub_FACC(v16, v11 + v43, &qword_4EED80);
  if (sub_3E94A4())
  {
    v44 = v74;
    v45 = v69;
    sub_3E5FB4();
    v46 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v48 = v47;
    (*(v70 + 8))(v45, v71);
    v49 = v76;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_3F5630;
    *&v94[0] = v36;
    sub_17A28();
    *(v50 + 32) = sub_3EE1F4();
    *(v50 + 40) = v51;
    *&v94[0] = v50;
    v44 = v74;
    if (v74)
    {

      v50 = sub_DFAE8(&dword_0 + 1, 2, 1, v50);
      *(v50 + 16) = 2;
      *(v50 + 48) = v88;
      *(v50 + 56) = v44;
      *&v94[0] = v50;
    }

    v49 = v76;
    if (v76)
    {

      sub_40D60(v52);
      v50 = *&v94[0];
    }

    v93[0] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    v46 = sub_3ED134();
    v48 = v53;
  }

  *(v11 + 16) = v46;
  *(v11 + 24) = v48;
  *(v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v36;
  v54 = v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v55 = v82;
  *v54 = v73;
  *(v54 + 8) = v55;
  v56 = v81;
  *(v54 + 16) = v81;
  v57 = v80;
  *(v54 + 24) = v80;
  *(v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v75 & 1;
  *(v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v89, v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v58 = (v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v58 = v88;
  v58[1] = v44;
  *(v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v49;
  v59 = (v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v60 = v78;
  *v59 = v77;
  v59[1] = v60;
  v61 = (v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v61 = 0;
  v61[1] = 0;
  *(v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v62 = (v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v62 = 0;
  v62[1] = 0;
  *(v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v63 = (v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v63 = 0;
  v63[1] = 0;
  v64 = v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v64 = 0;
  *(v64 + 4) = 1;
  v65 = v11 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v65 = 0;
  *(v65 + 8) = 1;
  v93[0] = 0;
  swift_beginAccess();
  sub_3DE90(v55, v56, v57);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v96, v94, &qword_4EDE00);
  sub_FBD0(v94, v93, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v94, &qword_4EDE00);
  v93[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v93[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v93[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v93[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v66 = v85;
  v67 = v86;
  sub_FBD0(v85, v86, &unk_4E9170);
  sub_FBD0(v67, v83, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_3DEF8(v55, v56, v57);
  sub_FCF8(v90, &unk_4E9170);
  sub_FCF8(v91, &qword_4EDE00);
  sub_FCF8(v92, &qword_4F1D50);
  sub_FCF8(v67, &unk_4E9170);
  sub_FCF8(v66, &unk_4E9170);
  sub_FCF8(v96, &qword_4EDE00);
  sub_FCF8(v89, &qword_4F1D50);
  return v11;
}

uint64_t LegacyChannelLockup.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = LegacyLockup.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

uint64_t LegacyChannelLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = LegacyLockup.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t LegacyChannelLockup.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  sub_3E6E44();
  sub_17A28();
  sub_3EE1F4();
  sub_99D98();
  sub_3E5754();
  v2 = sub_3E5764();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

unint64_t sub_99D98()
{
  result = qword_4E9B88;
  if (!qword_4E9B88)
  {
    sub_3E6E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9B88);
  }

  return result;
}

uint64_t type metadata accessor for LegacyChannelLockup()
{
  result = qword_4EEFF8;
  if (!qword_4EEFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyEditorialItemLockup.__allocating_init(adamId:icon:color:title:subtitles:eyebrow:clickAction:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v68 = a8;
  v67 = a7;
  v66 = a6;
  v63 = a5;
  v77 = a4;
  v62 = a1;
  v79 = a11;
  v65 = a10;
  v61 = sub_3E5FC4();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v25 = swift_allocObject();
  v26 = v62;
  v64 = sub_3E82B4();
  v72 = v27;
  v71 = v28;
  v69 = v29;
  v76 = a2;
  v78 = v24;
  sub_FBD0(a2, v24, &qword_4F1D50);
  v75 = a9;
  sub_FBD0(a9, v83, &qword_4EDE00);
  v74 = v21;
  sub_FBD0(v79, v21, &unk_4E9170);
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0;
  v30 = sub_3EC634();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  sub_FBD0(v18, v15, &unk_4E9170);
  v73 = v15;
  sub_3ECAE4();
  v70 = v18;
  v31 = v18;
  v32 = v26;
  sub_FCF8(v31, &unk_4E9170);
  *&v81[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  sub_FBD0(v81, v80, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v81, &qword_4EDE00);
  *&v81[0] = 0;
  sub_3ECAE4();
  *&v81[0] = 0;
  sub_3ECAE4();
  *&v81[0] = 0;
  sub_3ECAE4();
  *&v81[0] = 0;
  sub_3ECAE4();
  if (sub_3E94A4())
  {
    v33 = v63;
    v34 = v59;
    sub_3E5FB4();
    v35 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v37 = v36;
    (*(v60 + 8))(v34, v61);
    v38 = v66;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_3F5630;
    *&v81[0] = v26;
    sub_17A28();
    *(v39 + 32) = sub_3EE1F4();
    *(v39 + 40) = v40;
    *&v81[0] = v39;
    v33 = v63;
    if (v63)
    {

      v39 = sub_DFAE8(&dword_0 + 1, 2, 1, v39);
      *(v39 + 16) = 2;
      *(v39 + 48) = v77;
      *(v39 + 56) = v33;
      *&v81[0] = v39;
    }

    v38 = v66;
    if (v66)
    {

      sub_40D60(v41);
      v39 = *&v81[0];
    }

    v80[0] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    v35 = sub_3ED134();
    v37 = v42;
  }

  *(v25 + 16) = v35;
  *(v25 + 24) = v37;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v32;
  v43 = v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v44 = v72;
  *v43 = v64;
  *(v43 + 8) = v44;
  v45 = v71;
  *(v43 + 16) = v71;
  v46 = v69;
  *(v43 + 24) = v69;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v65 & 1;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v78, v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v47 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v47 = v77;
  v47[1] = v33;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v38;
  v48 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v49 = v68;
  *v48 = v67;
  v48[1] = v49;
  v50 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v50 = 0;
  v50[1] = 0;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v51 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v51 = 0;
  v51[1] = 0;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v52 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v52 = 0;
  v52[1] = 0;
  v53 = v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v53 = 0;
  *(v53 + 4) = 1;
  v54 = v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v54 = 0;
  *(v54 + 8) = 1;
  v80[0] = 0;
  swift_beginAccess();
  sub_3DE90(v44, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v83, v81, &qword_4EDE00);
  sub_FBD0(v81, v80, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v81, &qword_4EDE00);
  v80[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v80[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v80[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v80[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v55 = v74;
  v56 = v70;
  sub_FBD0(v74, v70, &unk_4E9170);
  sub_FBD0(v56, v73, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();
  sub_3DEF8(v44, v45, v46);
  sub_FCF8(v79, &unk_4E9170);
  sub_FCF8(v75, &qword_4EDE00);
  sub_FCF8(v76, &qword_4F1D50);
  sub_FCF8(v56, &unk_4E9170);
  sub_FCF8(v55, &unk_4E9170);
  sub_FCF8(v83, &qword_4EDE00);
  sub_FCF8(v78, &qword_4F1D50);
  return v25;
}

uint64_t LegacyEditorialItemLockup.init(adamId:icon:color:title:subtitles:eyebrow:clickAction:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v12 = v11;
  v79 = a8;
  v78 = a7;
  v77 = a6;
  v75 = a5;
  v89 = a4;
  v93 = a2;
  v91 = a11;
  v76 = a10;
  v92 = a9;
  v72 = sub_3E5FC4();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v80);
  v73 = &v70 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v85);
  v17 = &v70 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v88);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v20 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v70 - v24;
  __chkstk_darwin(v26);
  v28 = &v70 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v29 - 8);
  v31 = &v70 - v30;
  v74 = sub_3E82B4();
  v83 = v32;
  v82 = v33;
  v81 = v34;
  v90 = v31;
  sub_FBD0(v93, v31, &qword_4F1D50);
  sub_FBD0(v92, v97, &qword_4EDE00);
  v86 = v28;
  sub_FBD0(v91, v28, &unk_4E9170);
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0;
  v35 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v36 = sub_3EC634();
  (*(*(v36 - 8) + 56))(v25, 1, 1, v36);
  sub_FBD0(v25, v22, &unk_4E9170);
  v84 = v22;
  v37 = a1;
  sub_3ECAE4();
  v87 = v25;
  sub_FCF8(v25, &unk_4E9170);
  sub_FACC(v19, v12 + v35, &qword_4EED90);
  v38 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v95[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  sub_FACC(v17, v12 + v38, &qword_4EED80);
  v39 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  sub_FBD0(v95, v94, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v40 = v73;
  sub_3ECAE4();
  sub_FCF8(v95, &qword_4EDE00);
  sub_FACC(v40, v12 + v39, &qword_4EED88);
  v41 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v95[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v41, &qword_4EED80);
  v42 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v95[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v42, &qword_4EED80);
  v43 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v95[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v43, &qword_4EED80);
  v44 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v95[0] = 0;
  sub_3ECAE4();
  sub_FACC(v17, v12 + v44, &qword_4EED80);
  if (sub_3E94A4())
  {
    v45 = v75;
    v46 = v70;
    sub_3E5FB4();
    v47 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v49 = v48;
    (*(v71 + 8))(v46, v72);
    v50 = v77;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_3F5630;
    *&v95[0] = v37;
    sub_17A28();
    *(v51 + 32) = sub_3EE1F4();
    *(v51 + 40) = v52;
    *&v95[0] = v51;
    v45 = v75;
    if (v75)
    {

      v51 = sub_DFAE8(&dword_0 + 1, 2, 1, v51);
      *(v51 + 16) = 2;
      *(v51 + 48) = v89;
      *(v51 + 56) = v45;
      *&v95[0] = v51;
    }

    v50 = v77;
    if (v77)
    {

      sub_40D60(v53);
      v51 = *&v95[0];
    }

    v94[0] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    v47 = sub_3ED134();
    v49 = v54;
  }

  *(v12 + 16) = v47;
  *(v12 + 24) = v49;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v37;
  v55 = v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v56 = v83;
  *v55 = v74;
  *(v55 + 8) = v56;
  v57 = v82;
  *(v55 + 16) = v82;
  v58 = v81;
  *(v55 + 24) = v81;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v76 & 1;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v90, v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v59 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v59 = v89;
  v59[1] = v45;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v50;
  v60 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v61 = v79;
  *v60 = v78;
  v60[1] = v61;
  v62 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v62 = 0;
  v62[1] = 0;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v63 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v63 = 0;
  v63[1] = 0;
  *(v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v64 = (v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v64 = 0;
  v64[1] = 0;
  v65 = v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v65 = 0;
  *(v65 + 4) = 1;
  v66 = v12 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v66 = 0;
  *(v66 + 8) = 1;
  v94[0] = 0;
  swift_beginAccess();
  sub_3DE90(v56, v57, v58);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v97, v95, &qword_4EDE00);
  sub_FBD0(v95, v94, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v95, &qword_4EDE00);
  v94[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v94[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v94[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v94[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v67 = v86;
  v68 = v87;
  sub_FBD0(v86, v87, &unk_4E9170);
  sub_FBD0(v68, v84, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_3DEF8(v56, v57, v58);
  sub_FCF8(v91, &unk_4E9170);
  sub_FCF8(v92, &qword_4EDE00);
  sub_FCF8(v93, &qword_4F1D50);
  sub_FCF8(v68, &unk_4E9170);
  sub_FCF8(v67, &unk_4E9170);
  sub_FCF8(v97, &qword_4EDE00);
  sub_FCF8(v90, &qword_4F1D50);
  return v12;
}

uint64_t LegacyEditorialItemLockup.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = LegacyLockup.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

uint64_t LegacyEditorialItemLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = LegacyLockup.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t type metadata accessor for LegacyEditorialItemLockup()
{
  result = qword_4EF220;
  if (!qword_4EF220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*LegacyEpisodeLockup.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v203 = a2;
  v204 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v3 - 8);
  v192 = &v172 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428);
  __chkstk_darwin(v5 - 8);
  v187 = &v172 - v6;
  v7 = sub_3E7DF4();
  v188 = *(v7 - 8);
  v189 = v7;
  __chkstk_darwin(v7);
  v177 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v194 = &v172 - v10;
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v191 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v14;
  __chkstk_darwin(v13);
  v16 = &v172 - v15;
  v202 = sub_3EBDF4();
  v199 = *(v202 - 8);
  v17 = __chkstk_darwin(v202);
  v190 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v185 = &v172 - v20;
  v21 = __chkstk_darwin(v19);
  v184 = &v172 - v22;
  v23 = __chkstk_darwin(v21);
  v183 = &v172 - v24;
  v25 = __chkstk_darwin(v23);
  v196 = &v172 - v26;
  v27 = __chkstk_darwin(v25);
  v179 = &v172 - v28;
  v29 = __chkstk_darwin(v27);
  v181 = &v172 - v30;
  v31 = __chkstk_darwin(v29);
  v180 = &v172 - v32;
  v175 = v33;
  __chkstk_darwin(v31);
  v35 = &v172 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v36 - 8);
  v38 = &v172 - v37;
  v39 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v206 = 0;
  v182 = type metadata accessor for Action();
  sub_3ECAE4();
  v174 = v38;
  v40 = v204;
  sub_FACC(v38, v2 + v39, &qword_4EED80);
  v201 = v2;
  *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  sub_3EBE04();
  v42 = v12 + 16;
  v41 = *(v12 + 16);
  v200 = v11;
  v41(v16, v203, v11);
  sub_9D1C4();
  sub_3EC574();
  if (v206 == 3)
  {
    v43 = sub_3ECEE4();
    sub_A2080(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v44 = v201;
    v45 = *v201;
    *v46 = 0x707954616964656DLL;
    v46[1] = 0xE900000000000065;
    v46[2] = v45;
    (*(*(v43 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v43);
    swift_willThrow();
    v48 = *(v12 + 8);
    v47 = (v12 + 8);
    v48(v203, v200);
    (*(v199 + 8))(v40, v202);
    sub_FCF8(v44 + v39, &qword_4EED80);
    type metadata accessor for LegacyEpisodeLockup();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v173 = v39;
    v178 = v12;
    LODWORD(v186) = v206;
    sub_3E7784();
    sub_3EBE04();
    v49 = v200;
    v41(v16, v203, v200);
    v172 = sub_A2080(&qword_4EECC8, &type metadata accessor for ArtworkModel);
    v50 = v194;
    sub_3EC574();
    v51 = v201;
    sub_FACC(v50, v201 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
    sub_3EBE04();
    v197 = v41;
    v198 = v42;
    v41(v16, v203, v49);
    v195 = v16;
    sub_3EC574();
    sub_FACC(v50, v51 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
    *(v51 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v186;
    sub_3EBE04();
    v52 = sub_3EBDC4();
    v54 = v53;
    v55 = (v199 + 8);
    v56 = *(v199 + 8);
    v57 = v202;
    v56(v35, v202);
    v58 = (v51 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
    *v58 = v52;
    v58[1] = v54;
    v59 = v180;
    sub_3EBE04();
    sub_3EBDC4();
    v61 = v60;
    v56(v59, v57);
    v62 = v35;
    v186 = v56;
    v63 = 0;
    if (v61)
    {
      v64 = sub_3E9A64();
      sub_3E9A34();
      sub_3E9A24();
      v65 = objc_allocWithZone(v64);
      v63 = sub_3E9A84();
    }

    v66 = v201;
    *(v201 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v63;
    v67 = v181;
    sub_3EBE04();
    v180 = sub_3EBDC4();
    v69 = v68;
    v70 = v202;
    v71 = v186;
    v186(v67, v202);
    if (v69)
    {
      v181 = v69;
      v72 = v179;
      sub_3EBE04();
      v73 = sub_3EBD24();
      v71(v72, v70);
      v74 = v71;
      if (v73 == 2 || (v73 & 1) == 0 || (sub_3E8E04(), (sub_3E8DE4() & 1) != 0))
      {
        v75 = sub_3E9A64();
        sub_3E9A34();
        sub_3E9A24();
        v76 = objc_allocWithZone(v75);
        v77 = sub_3E9A84();
      }

      else
      {

        v77 = 0;
      }
    }

    else
    {
      v77 = 0;
      v74 = v71;
    }

    *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = v77;
    v78 = v196;
    sub_3EBE04();
    v79 = sub_3EBDA4();
    v80 = v203;
    v81 = v199;
    if (v79)
    {
      v82 = v173;
      swift_beginAccess();
      sub_FCF8(v66 + v82, &qword_4EED80);
      v205 = 0;
      sub_3ECAE4();
      swift_endAccess();
      v83 = v202;
    }

    else
    {
      (*(v199 + 16))(v62, v78, v202);
      v84 = v74;
      v85 = v195;
      v86 = v200;
      v197(v195, v80, v200);
      v87 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v88 = v178;
      v89 = v55;
      v90 = (v175 + *(v178 + 80) + v87) & ~*(v178 + 80);
      v91 = swift_allocObject();
      v92 = v81;
      v93 = v91;
      v94 = v91 + v87;
      v95 = v202;
      (*(v92 + 32))(v94, v62, v202);
      v96 = v93 + v90;
      v55 = v89;
      v97 = v84;
      v66 = v201;
      v98 = v85;
      v74 = v97;
      v99 = v86;
      v83 = v95;
      (*(v88 + 32))(v96, v98, v99);
      v100 = v174;
      sub_3ECB34();
      v101 = v173;
      swift_beginAccess();
      sub_A17E4(v100, v66 + v101);
      swift_endAccess();
    }

    sub_3EBE04();
    v102 = sub_3EBD94();
    v104 = v103;
    v74(v62, v83);
    v105 = v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
    *v105 = v102;
    v182 = v105;
    *(v105 + 8) = v104 & 1;
    v106 = v183;
    sub_3EBE04();
    sub_3EBDC4();
    v74(v106, v83);
    v107 = sub_3EDDC4();
    if (v108)
    {
      v109 = 0;
    }

    else
    {
      v109 = v107;
    }

    *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v109;
    v110 = v184;
    sub_3EBE04();
    v111 = sub_3EBD24();
    v74(v110, v83);
    *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = (v111 == 2) | v111 & 1;
    sub_3EBE04();
    v112 = sub_3EBDC4();
    v114 = v113;
    v74(v62, v83);
    v115 = (v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
    *v115 = v112;
    v115[1] = v114;
    sub_3EBE04();
    v116 = sub_3EBDC4();
    v118 = v117;
    v74(v62, v83);
    v119 = (v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
    *v119 = v116;
    v119[1] = v118;
    sub_3EBE04();
    v120 = sub_3EBDC4();
    v122 = v121;
    v74(v62, v83);
    v123 = (v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
    *v123 = v120;
    v123[1] = v122;
    sub_3EBE04();
    v197(v195, v203, v200);
    sub_A1854();
    sub_3EC574();
    *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = v206;
    v124 = v185;
    sub_3EBE04();
    LOBYTE(v120) = sub_3EBD24();
    v74(v124, v83);
    *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v120 & 1;
    v125 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason;
    v126 = sub_3E8D24();
    (*(*(v126 - 8) + 56))(v66 + v125, 1, 1, v126);
    sub_3EBE04();
    v127 = sub_3EBD74();
    LOBYTE(v122) = v128;
    v74(v62, v83);
    v129 = v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
    *v129 = v127;
    v129[8] = v122 & 1;
    sub_3EBE04();
    v130 = sub_3EBD74();
    LOBYTE(v122) = v131;
    v74(v62, v83);
    v132 = v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
    *v132 = v130;
    v132[8] = v122 & 1;
    sub_3EBE04();
    sub_A18A8();
    sub_3EBCF4();
    v74(v62, v83);
    v133 = v206;
    if (v206 == 3)
    {
      v133 = 1;
    }

    *(v66 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v133;
    sub_3EBE04();
    sub_A2080(&qword_4EF450, &type metadata accessor for SectionContext);
    v134 = v187;
    v135 = v189;
    sub_3EBCF4();
    v194 = v55;
    v74(v62, v83);
    v136 = v188;
    v137 = (*(v188 + 48))(v134, 1, v135);
    v138 = v195;
    v139 = v74;
    if (v137 == 1)
    {
      sub_FCF8(v134, &qword_4EF428);
      v140 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext;
      v141 = sub_3E7CB4();
      (*(*(v141 - 8) + 56))(v201 + v140, 1, 1, v141);
    }

    else
    {
      v142 = *(v136 + 32);
      v143 = v177;
      v142(v177, v134, v135);
      v144 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext;
      v145 = v201;
      v142(v201 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, v143, v135);
      (*(v136 + 56))(v145 + v144, 0, 1, v135);
      v146 = enum case for EyebrowBuilder.ListContext.show(_:);
      v147 = sub_3E7CB4();
      v148 = *(v147 - 8);
      (*(v148 + 104))(v145 + v144, v146, v147);
      (*(v148 + 56))(v145 + v144, 0, 1, v147);
      v138 = v195;
    }

    v149 = v204;
    sub_3EBE04();
    v150 = sub_3EBD94();
    v152 = v151;
    v153 = v202;
    v139(v62, v202);
    v154 = v201 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
    v155 = v201;
    *v154 = v150;
    v154[8] = v152 & 1;
    sub_3EBE04();
    v156 = sub_3EBD94();
    v158 = v157;
    v139(v62, v153);
    v159 = v155 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
    *v159 = v156;
    v159[8] = v158 & 1;
    sub_3E9444();
    sub_3EBE04();
    v160 = v203;
    v161 = v200;
    v197(v138, v203, v200);
    sub_A2080(&qword_4EF458, &type metadata accessor for PodcastPlaybackPositionDataAttributes);
    sub_3EC574();
    sub_3EBE04();
    sub_3EBD24();
    v162 = v62;
    v163 = v202;
    v164 = v149;
    v139(v162, v202);

    v165 = v192;
    sub_3E90F4();
    sub_FACC(v165, v201 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
    v166 = v190;
    (*(v199 + 16))(v190, v164, v163);
    v167 = v191;
    v197(v191, v160, v161);
    v168 = v193;
    v169 = LegacyLockup.init(deserializing:using:)(v166, v167);
    if (v168)
    {

      (*(v178 + 8))(v160, v161);
      v47 = v186;
      v186(v164, v163);
      v47(v196, v163);
    }

    else
    {
      v47 = v169;

      (*(v178 + 8))(v160, v161);
      v170 = v186;
      v186(v164, v163);
      v170(v196, v163);
    }
  }

  return v47;
}

unint64_t sub_9D1C4()
{
  result = qword_4EF438;
  if (!qword_4EF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF438);
  }

  return result;
}

uint64_t type metadata accessor for LegacyEpisodeLockup()
{
  result = qword_4EF4B0;
  if (!qword_4EF4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyEpisodeLockup.__allocating_init(adamId:episodeNumber:seasonNumber:episodeType:mediaType:icon:showUberArtwork:episodeArtwork:title:subtitles:ordinal:rating:buttonAction:clickAction:titleAction:playAction:contextAction:previewAction:subtitleAction:caption:summary:transcript:isExplicit:duration:episodeEntitlementState:hasFreeVersion:subscriptionName:channelName:showTitle:showDisplayType:shelfUniqueId:releaseDate:showTypeIsSerial:listenNowReason:listContext:referenceTime:playerTime:thinClientEpisodeState:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, void *a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char *a20, char *a21, char *a22, char *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, unsigned __int8 a28, uint64_t a29, unsigned __int8 a30, uint64_t a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37, char *a38, unsigned __int8 a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned __int8 a43, uint64_t a44, uint64_t a45, void *a46, unsigned __int8 a47, uint64_t a48, unsigned __int8 a49, uint64_t a50, uint64_t a51)
{
  v156 = a8;
  LODWORD(v142) = a7;
  LODWORD(v143) = a6;
  LODWORD(v141) = a5;
  v140 = a4;
  v124 = a3;
  v123 = a2;
  v147 = a1;
  v150 = a51;
  v151 = a50;
  LODWORD(v158) = a49;
  v146 = a48;
  v145 = a47;
  v144 = a46;
  v152 = a45;
  v157 = a44;
  v153 = a42;
  v154 = a18;
  v139 = a16;
  v155 = a10;
  LODWORD(v137) = a43;
  LODWORD(v136) = a39;
  v135 = a38;
  v134 = a37;
  v133 = a36;
  v132 = a35;
  v131 = a34;
  v130 = a33;
  LODWORD(v129) = a32;
  v128 = a31;
  LODWORD(v127) = a30;
  v126 = a29;
  v125 = a27;
  v122 = a25;
  v121 = a24;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v51 - 8);
  v148 = &v117 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v149 = &v117 - v54;
  __chkstk_darwin(v55);
  v160 = &v117 - v56;
  v120 = sub_3E6B04();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v117 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v58 - 8);
  v138 = &v117 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v60 - 8);
  v159 = &v117 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v62 - 8);
  v64 = &v117 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v117 - v66;
  v68 = swift_allocObject();
  v69 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v164 = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v70 = v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v70 = v123;
  *(v70 + 8) = v124 & 1;
  v71 = v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v71 = v140;
  *(v71 + 8) = v141 & 1;
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v143;
  v143 = a9;
  sub_FBD0(a9, v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v142;
  v72 = (v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v73 = v122;
  *v72 = v121;
  v72[1] = v73;
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = a26;
  v74 = v125;
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = v125;
  swift_beginAccess();

  v141 = a26;
  v140 = v74;
  sub_FCF8(v68 + v69, &qword_4EED80);
  v142 = a19;
  *&v162[0] = a19;
  sub_3ECAE4();
  swift_endAccess();
  v75 = v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v75 = v126;
  *(v75 + 8) = v127 & 1;
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v128;
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v129;
  v76 = (v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v77 = v131;
  *v76 = v130;
  v76[1] = v77;
  v78 = (v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v79 = v133;
  *v78 = v132;
  v78[1] = v79;
  v80 = (v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v81 = v135;
  *v80 = v134;
  v80[1] = v81;
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = v136;
  *(v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v137;
  v82 = v157;
  sub_FBD0(v157, v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v155, v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  sub_FBD0(v152, v64, &qword_4EF468);
  v83 = sub_3E7CB4();
  v84 = *(v83 - 8);
  v85 = *(v84 + 48);
  if (v85(v64, 1, v83) == 1)
  {
    v86 = sub_3E8D24();
    v87 = 1;
    if ((*(*(v86 - 8) + 48))(v82, 1, v86) != 1)
    {
      *v67 = 0;
      (*(v84 + 104))(v67, enum case for EyebrowBuilder.ListContext.listenNow(_:), v83);
      v87 = 0;
    }

    (*(v84 + 56))(v67, v87, 1, v83);
    v88 = v85(v64, 1, v83);
    v89 = v138;
    if (v88 != 1)
    {
      sub_FCF8(v64, &qword_4EF468);
    }
  }

  else
  {
    (*(v84 + 32))(v67, v64, v83);
    (*(v84 + 56))(v67, 0, 1, v83);
    v89 = v138;
  }

  v127 = a41;
  v126 = a40;
  LODWORD(v128) = a28;
  v138 = a23;
  v137 = a22;
  v135 = a21;
  v136 = a20;
  v134 = a17;
  v133 = a15;
  v132 = a14;
  v131 = a13;
  v130 = a12;
  v129 = a11;
  sub_FACC(v67, v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v90 = v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v90 = v144;
  *(v90 + 8) = v145 & 1;
  v91 = v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v91 = v146;
  *(v91 + 8) = v158 & 1;
  sub_FBD0(v151, v68 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v92 = sub_3E82A4();
  v144 = v93;
  v146 = v94;
  v145 = v95;
  sub_FBD0(v156, v159, &qword_4F1D50);
  sub_FBD0(v153, v89, &qword_4EF460);
  v96 = sub_3E5F84();
  v97 = *(v96 - 8);
  if ((*(v97 + 48))(v89, 1, v96) == 1)
  {
    sub_FCF8(v89, &qword_4EF460);
    v158 = 0;
  }

  else
  {
    v98 = v118;
    (*(v97 + 16))(v118, v89, v96);
    (*(v119 + 104))(v98, enum case for LazyDate.State.valid(_:), v120);
    v158 = sub_3E6AF4();
    (*(v97 + 8))(v89, v96);
  }

  sub_FBD0(v154, &v164, &qword_4EDE00);
  sub_FBD0(v150, v160, &unk_4E9170);
  *(v68 + 32) = 0u;
  *(v68 + 48) = 0u;
  *(v68 + 64) = 0;
  v99 = sub_3EC634();
  v100 = v149;
  (*(*(v99 - 8) + 56))(v149, 1, 1, v99);
  sub_FBD0(v100, v148, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v100, &unk_4E9170);
  *&v162[0] = 0;
  sub_3ECAE4();
  v163 = 0;
  memset(v162, 0, sizeof(v162));
  sub_FBD0(v162, &v161, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v162, &qword_4EDE00);
  *&v162[0] = 0;
  sub_3ECAE4();
  *&v162[0] = 0;
  sub_3ECAE4();
  *&v162[0] = 0;
  sub_3ECAE4();
  *&v162[0] = 0;
  sub_3ECAE4();
  v101 = v127;
  *(v68 + 16) = v126;
  *(v68 + 24) = v101;
  *(v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v147;
  v102 = v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  *v102 = v92;
  v103 = v144;
  v104 = v146;
  *(v102 + 8) = v144;
  *(v102 + 16) = v104;
  v105 = v145;
  *(v102 + 24) = v145;
  *(v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v128 & 1;
  *(v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v159, v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v106 = (v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v107 = v130;
  *v106 = v129;
  v106[1] = v107;
  *(v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v131;
  v108 = (v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v108 = 0;
  v108[1] = 0;
  v109 = (v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v109 = 0;
  v109[1] = 0;
  *(v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v110 = (v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v111 = v133;
  *v110 = v132;
  v110[1] = v111;
  v112 = v158;
  *(v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v158;
  v158 = v112;
  v113 = (v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v113 = 0;
  v113[1] = 0;
  v114 = v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v111) = BYTE4(v139);
  *v114 = v139;
  *(v114 + 4) = BYTE4(v111) & 1;
  v115 = v68 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v115 = 0;
  *(v115 + 8) = 1;
  v161 = v134;
  swift_beginAccess();
  sub_3DE90(v103, v104, v105);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v164, v162, &qword_4EDE00);
  sub_FBD0(v162, &v161, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v162, &qword_4EDE00);
  v161 = v135;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v161 = v136;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v161 = v137;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v161 = v138;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v160, v100, &unk_4E9170);
  sub_FBD0(v100, v148, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();

  sub_3DEF8(v144, v146, v145);

  sub_FCF8(v150, &unk_4E9170);
  sub_FCF8(v151, &qword_4EF420);
  sub_FCF8(v152, &qword_4EF468);
  sub_FCF8(v153, &qword_4EF460);
  sub_FCF8(v154, &qword_4EDE00);
  sub_FCF8(v155, &qword_4F1D50);
  sub_FCF8(v143, &qword_4F1D50);
  sub_FCF8(v156, &qword_4F1D50);
  sub_FCF8(v149, &unk_4E9170);
  sub_FCF8(v160, &unk_4E9170);
  sub_FCF8(&v164, &qword_4EDE00);
  sub_FCF8(v159, &qword_4F1D50);
  sub_FCF8(v157, &qword_4EF470);
  return v68;
}

uint64_t LegacyEpisodeLockup.init(adamId:episodeNumber:seasonNumber:episodeType:mediaType:icon:showUberArtwork:episodeArtwork:title:subtitles:ordinal:rating:buttonAction:clickAction:titleAction:playAction:contextAction:previewAction:subtitleAction:caption:summary:transcript:isExplicit:duration:episodeEntitlementState:hasFreeVersion:subscriptionName:channelName:showTitle:showDisplayType:shelfUniqueId:releaseDate:showTypeIsSerial:listenNowReason:listContext:referenceTime:playerTime:thinClientEpisodeState:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, void *a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, unsigned __int8 a28, uint64_t a29, unsigned __int8 a30, uint64_t a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned __int8 a39, _BYTE *a40, uint64_t a41, uint64_t a42, unsigned __int8 a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned __int8 a47, void *a48, unsigned __int8 a49, uint64_t a50, uint64_t a51)
{
  v52 = v51;
  v183 = a8;
  LODWORD(v162) = a7;
  v139 = a6;
  LODWORD(v167) = a5;
  v161 = a4;
  v144 = a3;
  v143 = a2;
  v172 = a1;
  v177 = a51;
  v178 = a50;
  LODWORD(v185) = a49;
  v170 = a48;
  LODWORD(v169) = a47;
  v168 = a46;
  v179 = a45;
  v184 = a44;
  v180 = a42;
  v176 = a19;
  v181 = a18;
  v164 = a16;
  v182 = a10;
  LODWORD(v171) = a43;
  LODWORD(v159) = a39;
  v158 = a38;
  v157 = a37;
  v156 = a36;
  v153 = a35;
  v152 = a34;
  v150 = a33;
  LODWORD(v149) = a32;
  v148 = a31;
  v147 = a30;
  v146 = a29;
  v151 = a27;
  v142 = a26;
  v141 = a25;
  v140 = a24;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v165);
  v160 = &v135 - v53;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v166);
  v155 = &v135 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v55 - 8);
  v173 = &v135 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v175 = &v135 - v58;
  __chkstk_darwin(v59);
  v174 = &v135 - v60;
  v138 = sub_3E6B04();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v135 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v62 - 8);
  v154 = &v135 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v64 - 8);
  v186 = &v135 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v66 - 8);
  v68 = &v135 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v145 = &v135 - v70;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v163);
  v72 = &v135 - v71;
  v73 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v190 = 0;
  v74 = type metadata accessor for Action();
  sub_3ECAE4();
  sub_FACC(v72, v52 + v73, &qword_4EED80);
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v75 = v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v75 = v143;
  *(v75 + 8) = v144 & 1;
  v76 = v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v76 = v161;
  *(v76 + 8) = v167 & 1;
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v139;
  v167 = a9;
  sub_FBD0(a9, v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v162;
  v77 = (v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v78 = v141;
  *v77 = v140;
  v77[1] = v78;
  v79 = v142;
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v142;
  v80 = v151;
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = v151;
  swift_beginAccess();
  v81 = v176;

  v162 = v79;
  v161 = v80;
  sub_FCF8(v52 + v73, &qword_4EED80);
  *&v188[0] = v81;
  v151 = v74;
  sub_3ECAE4();
  swift_endAccess();
  v82 = v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v82 = v146;
  *(v82 + 8) = v147 & 1;
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v148;
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v149;
  v83 = (v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v84 = v152;
  *v83 = v150;
  v83[1] = v84;
  v85 = (v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v86 = v156;
  *v85 = v153;
  v85[1] = v86;
  v87 = (v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v88 = v158;
  *v87 = v157;
  v87[1] = v88;
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = v159;
  *(v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v171;
  v89 = v184;
  sub_FBD0(v184, v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v182, v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  sub_FBD0(v179, v68, &qword_4EF468);
  v90 = sub_3E7CB4();
  v91 = *(v90 - 8);
  v92 = *(v91 + 48);
  if (v92(v68, 1, v90) == 1)
  {
    v93 = sub_3E8D24();
    v94 = 1;
    v95 = (*(*(v93 - 8) + 48))(v89, 1, v93);
    v96 = v145;
    if (v95 != 1)
    {
      *v145 = 0;
      (*(v91 + 104))(v96, enum case for EyebrowBuilder.ListContext.listenNow(_:), v90);
      v94 = 0;
    }

    (*(v91 + 56))(v96, v94, 1, v90);
    if (v92(v68, 1, v90) != 1)
    {
      sub_FCF8(v68, &qword_4EF468);
    }
  }

  else
  {
    v96 = v145;
    (*(v91 + 32))(v145, v68, v90);
    (*(v91 + 56))(v96, 0, 1, v90);
  }

  v146 = a41;
  v145 = a40;
  v147 = a28;
  v159 = a23;
  v158 = a22;
  v156 = a21;
  v157 = a20;
  v171 = a17;
  v153 = a15;
  v152 = a14;
  v150 = a13;
  v149 = a12;
  v148 = a11;
  sub_FACC(v96, v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v97 = v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v97 = v168;
  *(v97 + 8) = v169 & 1;
  v98 = v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v98 = v170;
  *(v98 + 8) = v185 & 1;
  sub_FBD0(v178, v52 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v99 = sub_3E82A4();
  v170 = v100;
  v169 = v101;
  LODWORD(v168) = v102;
  sub_FBD0(v183, v186, &qword_4F1D50);
  v103 = v154;
  sub_FBD0(v180, v154, &qword_4EF460);
  v104 = sub_3E5F84();
  v105 = *(v104 - 8);
  if ((*(v105 + 48))(v103, 1, v104) == 1)
  {
    sub_FCF8(v103, &qword_4EF460);
    v185 = 0;
  }

  else
  {
    v106 = v136;
    (*(v105 + 16))(v136, v103, v104);
    (*(v137 + 104))(v106, enum case for LazyDate.State.valid(_:), v138);
    v185 = sub_3E6AF4();
    (*(v105 + 8))(v103, v104);
  }

  sub_FBD0(v181, &v190, &qword_4EDE00);
  sub_FBD0(v177, v174, &unk_4E9170);
  v154 = v99;
  *(v52 + 32) = 0u;
  *(v52 + 48) = 0u;
  *(v52 + 64) = 0;
  v107 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v108 = sub_3EC634();
  v109 = v175;
  (*(*(v108 - 8) + 56))(v175, 1, 1, v108);
  sub_FBD0(v109, v173, &unk_4E9170);
  v110 = v155;
  sub_3ECAE4();
  v111 = v109;
  sub_FCF8(v109, &unk_4E9170);
  sub_FACC(v110, v52 + v107, &qword_4EED90);
  v112 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v188[0] = 0;
  sub_3ECAE4();
  sub_FACC(v72, v52 + v112, &qword_4EED80);
  v113 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v189 = 0;
  memset(v188, 0, sizeof(v188));
  sub_FBD0(v188, &v187, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v114 = v160;
  sub_3ECAE4();
  sub_FCF8(v188, &qword_4EDE00);
  sub_FACC(v114, v52 + v113, &qword_4EED88);
  v115 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v188[0] = 0;
  sub_3ECAE4();
  sub_FACC(v72, v52 + v115, &qword_4EED80);
  v116 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v188[0] = 0;
  sub_3ECAE4();
  sub_FACC(v72, v52 + v116, &qword_4EED80);
  v117 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v188[0] = 0;
  sub_3ECAE4();
  sub_FACC(v72, v52 + v117, &qword_4EED80);
  v118 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v188[0] = 0;
  sub_3ECAE4();
  sub_FACC(v72, v52 + v118, &qword_4EED80);
  v119 = v146;
  *(v52 + 16) = v145;
  *(v52 + 24) = v119;
  *(v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v172;
  v120 = v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v121 = v170;
  *v120 = v154;
  *(v120 + 8) = v121;
  v122 = v169;
  *(v120 + 16) = v169;
  LOBYTE(v118) = v168;
  *(v120 + 24) = v168;
  *(v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v147 & 1;
  *(v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v186, v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v123 = (v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v124 = v149;
  *v123 = v148;
  v123[1] = v124;
  *(v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v150;
  v125 = (v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v125 = 0;
  v125[1] = 0;
  v126 = (v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v126 = 0;
  v126[1] = 0;
  *(v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v127 = (v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v128 = v153;
  *v127 = v152;
  v127[1] = v128;
  v129 = v185;
  *(v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v185;
  v185 = v129;
  v130 = (v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v130 = 0;
  v130[1] = 0;
  v131 = v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v128) = BYTE4(v164);
  *v131 = v164;
  *(v131 + 4) = BYTE4(v128) & 1;
  v132 = v52 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v132 = 0;
  *(v132 + 8) = 1;
  v187 = v171;
  swift_beginAccess();
  sub_3DE90(v121, v122, v118);

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v190, v188, &qword_4EDE00);
  sub_FBD0(v188, &v187, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v188, &qword_4EDE00);
  v187 = v156;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v187 = v157;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v187 = v158;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v187 = v159;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v133 = v174;
  sub_FBD0(v174, v111, &unk_4E9170);
  sub_FBD0(v111, v173, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_3DEF8(v170, v169, v168);

  sub_FCF8(v177, &unk_4E9170);
  sub_FCF8(v178, &qword_4EF420);
  sub_FCF8(v179, &qword_4EF468);
  sub_FCF8(v180, &qword_4EF460);
  sub_FCF8(v181, &qword_4EDE00);
  sub_FCF8(v182, &qword_4F1D50);
  sub_FCF8(v167, &qword_4F1D50);
  sub_FCF8(v183, &qword_4F1D50);
  sub_FCF8(v175, &unk_4E9170);
  sub_FCF8(v133, &unk_4E9170);
  sub_FCF8(&v190, &qword_4EDE00);
  sub_FCF8(v186, &qword_4F1D50);
  sub_FCF8(v184, &qword_4EF470);
  return v52;
}

uint64_t LegacyEpisodeLockup.caption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);

  return v1;
}

void *LegacyEpisodeLockup.summary.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary);
  v2 = v1;
  return v1;
}

void *LegacyEpisodeLockup.transcript.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript);
  v2 = v1;
  return v1;
}

uint64_t sub_9FB8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  swift_beginAccess();
  sub_FBD0(v7 + v8, v6, &qword_4EED80);
  sub_3ECAF4();
  result = sub_FCF8(v6, &qword_4EED80);
  *a2 = v10;
  return result;
}

uint64_t sub_9FC88()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  return swift_endAccess();
}

uint64_t sub_9FD10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  v4 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  swift_beginAccess();
  sub_FBD0(v0 + v4, v3, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v3, &qword_4EED80);
  return v6;
}

uint64_t sub_9FDF4()
{
  v1 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_9FE38(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LegacyEpisodeLockup.subscriptionName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);

  return v1;
}

uint64_t LegacyEpisodeLockup.channelName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);

  return v1;
}

uint64_t LegacyEpisodeLockup.showTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);

  return v1;
}

uint64_t sub_A00EC@<X0>(uint64_t a1@<X8>)
{
  sub_3E6EC4();
  sub_17A28();
  sub_3EE1F4();
  sub_A2080(&qword_4EF478, &type metadata accessor for EpisodeEntity);
  sub_3E5754();
  v2 = sub_3E5764();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_A0214()
{
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction, &qword_4EED80);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  return sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
}

uint64_t LegacyEpisodeLockup.deinit()
{
  v0 = LegacyLockup.deinit();
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction, &qword_4EED80);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  return v0;
}

uint64_t LegacyEpisodeLockup.__deallocating_deinit()
{
  LegacyEpisodeLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t LegacyEpisodeLockup.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate))
  {

    return sub_3E6B14();
  }

  else
  {
    v4 = sub_3E5F84();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t sub_A05F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

uint64_t sub_A0738@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate))
  {

    return sub_3E6B14();
  }

  else
  {
    v4 = sub_3E5F84();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t LegacyEpisodeLockup.dedupedEpisodeArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_3E7784();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v20 - v14);
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, v8, &qword_4F1D50);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_FCF8(v8, &qword_4F1D50);
    return (*(v10 + 56))(a1, 1, 1, v9);
  }

  else
  {
    sub_83F9C(v8, v15);
    sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, v5, &qword_4F1D50);
    if (v16(v5, 1, v9) == 1)
    {
      sub_FCF8(v5, &qword_4F1D50);
      sub_83F9C(v15, a1);
      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    else
    {
      sub_83F9C(v5, v12);
      v18 = *v15 == *v12 && v15[1] == v12[1];
      if (v18 || (sub_3EE804() & 1) != 0)
      {
        v19 = 1;
      }

      else
      {
        sub_A18FC(v15, a1);
        v19 = 0;
      }

      (*(v10 + 56))(a1, v19, 1, v9);
      sub_86F48(v12);
      return sub_86F48(v15);
    }
  }
}

uint64_t ArtworkModel.deduped(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2 == *a1 && v2[1] == a1[1];
  if (v4 || (sub_3EE804() & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    sub_A18FC(v2, a2);
    v5 = 0;
  }

  v6 = sub_3E7784();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t LegacyEpisodeLockup.bestArtworkModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  LegacyEpisodeLockup.dedupedEpisodeArtwork.getter(&v10 - v4);
  v6 = sub_3E7784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) == 1)
  {
    sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, a1, &qword_4F1D50);
    result = v8(v5, 1, v6);
    if (result != 1)
    {
      return sub_FCF8(v5, &qword_4F1D50);
    }
  }

  else
  {
    sub_83F9C(v5, a1);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }

  return result;
}

BOOL LegacyEpisodeLockup.isListenNowContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_FBD0(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &v7 - v2, &qword_4EF470);
  v4 = sub_3E8D24();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_FCF8(v3, &qword_4EF470);
  return v5;
}

uint64_t LegacyEpisodeLockup.extractAttributedTranscript()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript))
  {
    v3 = sub_3E9A44();
    v30 = v4;
    v31 = v3;
    sub_A1960();
    v5 = [objc_opt_self() systemFontOfSize:15.0];
    v6 = sub_619F4(_swiftEmptyArrayStorage);
    v7 = sub_61B1C(_swiftEmptyArrayStorage);
    v8 = objc_opt_self();
    v9 = v5;
    v10 = [v8 defaultParagraphStyle];
    [v9 pointSize];
    v12 = v11;
    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v13 setFirstLineHeadIndent:0.0];
    [v13 setHeadIndent:v12];
    [v13 setDefaultTabInterval:v12];
    sub_61C44(_swiftEmptyArrayStorage);
    v14 = objc_allocWithZone(NSTextTab);
    type metadata accessor for OptionKey(0);
    sub_A2080(&qword_4E9150, type metadata accessor for OptionKey);
    isa = sub_3ED084().super.isa;

    v16 = [v14 initWithTextAlignment:4 location:isa options:v12];

    [v13 addTabStop:v16];
    configuration.newline._countAndFlagsBits = 10;
    configuration.newline._object = 0xE100000000000000;
    configuration.font.super.isa = v9;
    configuration.paragraphStyle.super.isa = v10;
    configuration.listItemBullet._countAndFlagsBits = 547520738;
    configuration.listItemBullet._object = 0xA400000000000000;
    configuration.listItemStyle.super.isa = v13;
    configuration.markAttributes._rawValue = v6;
    configuration.markFontAttributes._rawValue = v7;
    v17._object = v30;
    v17._countAndFlagsBits = v31;
    v18 = NSAttributedString.init(nqml:configuration:)(v17, &configuration).super.isa;
    v19 = [(objc_class *)v18 fullRange];
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    v23 = swift_allocObject();
    v23[2] = sub_A19E4;
    v23[3] = v22;
    configuration.listItemBullet._countAndFlagsBits = sub_A19FC;
    configuration.listItemBullet._object = v23;
    configuration.newline._countAndFlagsBits = _NSConcreteStackBlock;
    configuration.newline._object = 1107296256;
    configuration.font.super.isa = sub_A14FC;
    configuration.paragraphStyle.super.isa = &block_descriptor_3;
    v24 = _Block_copy(&configuration);
    v25 = v18;

    [(objc_class *)v25 enumerateAttributesInRange:v19 options:v21 usingBlock:0, v24];
    _Block_release(v24);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      sub_3E5A64();

      v27 = sub_3E5A54();
      (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
    }
  }

  else
  {
    v28 = sub_3E5A54();
    v29 = *(*(v28 - 8) + 56);

    return v29(a1, 1, 1, v28);
  }

  return result;
}

void sub_A1210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = &selRef_setDefaultTabInterval_;
  if (v12)
  {
    while (1)
    {
      v16 = v14;
LABEL_9:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      [a5 removeAttribute:*(*(a1 + 48) + ((v16 << 9) | (8 * v17))) range:{a2, a3}];
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_9;
    }
  }

  v25 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF7C8);
  v15 = swift_allocObject();
  *(v15 + 1) = xmmword_3F5630;
  v18 = qword_4E8C38;

  if (v18 == -1)
  {
    goto LABEL_12;
  }

LABEL_16:
  swift_once();
LABEL_12:
  v19 = qword_5044B0;
  v15[4] = qword_5044B0;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF7D8);
  sub_886BC(&qword_4EF7E0, &qword_4EF7D0);
  sub_886BC(&qword_4EF7E8, &qword_4EF7D8);
  sub_A2080(&qword_4E90D8, type metadata accessor for Key);
  v21 = sub_3ED884();

  v22 = objc_opt_self();
  v23 = &selRef_labelColor;
  if ((v21 & 1) == 0)
  {
    v23 = &selRef_secondaryLabelColor;
  }

  v24 = [v22 *v23];
  [a5 addAttribute:NSForegroundColorAttributeName value:v24 range:{a2, v25}];
}

uint64_t sub_A14FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_A2080(&qword_4E9140, type metadata accessor for Key);
  v9 = sub_3ED094();
  v8(v9, a3, a4, a5);
}

uint64_t sub_A15CC()
{
  v1 = sub_3EBDF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_3EBF94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_A1714@<X0>(uint64_t *a1@<X8>)
{
  sub_3EBDF4();
  sub_3EBF94();
  return sub_E2698(a1);
}

uint64_t sub_A17E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_A1854()
{
  result = qword_4EF440;
  if (!qword_4EF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF440);
  }

  return result;
}

unint64_t sub_A18A8()
{
  result = qword_4EF448;
  if (!qword_4EF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF448);
  }

  return result;
}

uint64_t sub_A18FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E7784();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_A1960()
{
  result = qword_4EF480;
  if (!qword_4EF480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4EF480);
  }

  return result;
}

uint64_t sub_A19AC()
{

  return _swift_deallocObject(v0, 24, 7);
}
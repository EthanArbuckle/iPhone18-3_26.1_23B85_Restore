char *sub_1003E62F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_insetContentView;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutView;
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v12] = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutIconView;
  v15 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v14] = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutBackgroundView;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v16] = v17;
  v18 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_labelStackView;
  v19 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v19 setAxis:1];
  [v19 setDistribution:3];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_timeLabel;
  v21 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v22) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v22];
  [v21 setLineBreakMode:0];
  [v21 setNumberOfLines:0];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v5[v20] = v21;
  v23 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_descriptionLabel;
  v24 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v26 = UILabel.withFont(_:)();

  v27 = objc_opt_self();
  v28 = [v27 secondaryLabelColor];
  v29 = UILabel.withTextColor(_:)();

  *&v5[v23] = v29;
  v47.receiver = v5;
  v47.super_class = type metadata accessor for WalkSuggestionCollectionViewCell();
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  v32 = [v27 blackColor];
  [v31 setBackgroundColor:v32];

  v33 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_insetContentView;
  v34 = *&v30[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_insetContentView];
  v35 = [v27 blackColor];
  [v34 setBackgroundColor:v35];

  v36 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutView;
  [*&v30[v33] addSubview:*&v30[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutView]];
  v37 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_labelStackView;
  [*&v30[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_labelStackView] addArrangedSubview:*&v30[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_timeLabel]];
  v38 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_descriptionLabel;
  [*&v30[v37] addArrangedSubview:*&v30[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_descriptionLabel]];
  [*&v30[v33] addSubview:*&v30[v37]];
  v39 = [v30 contentView];

  [v39 addSubview:*&v30[v33]];
  [*&v30[v36] addSubview:*&v30[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutBackgroundView]];
  [*&v30[v36] addSubview:*&v30[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutIconView]];
  sub_1003E6C14();
  sub_1003E7660();
  v40 = *&v30[v38];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 mainBundle];
  v44 = String._bridgeToObjectiveC()();
  v45 = [v43 localizedStringForKey:v44 value:0 table:0];

  if (!v45)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = String._bridgeToObjectiveC()();
  }

  [v42 setText:v45];
  return v30;
}

uint64_t sub_1003E6888(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_insetContentView;
  v24 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_insetContentView;
  v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v3) = v4;
  v5 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutView;
  v23 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutView;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v5) = v6;
  v7 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutIconView;
  v8 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v7) = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutBackgroundView;
  v10 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v9) = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_labelStackView;
  v12 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setAxis:1];
  [v12 setDistribution:3];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v11) = v12;
  v13 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_timeLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v15];
  [v14 setLineBreakMode:0];
  [v14 setNumberOfLines:0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v2 + v13) = v14;
  v16 = OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_descriptionLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v19 = UILabel.withFont(_:)();

  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = UILabel.withTextColor(_:)();

  *(v2 + v16) = v21;
  type metadata accessor for WalkSuggestionCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1003E6C14()
{
  v83 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006E7130;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_insetContentView];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v1 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v1 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [v0 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v1 + 56) = v18;
  v19 = *&v0[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutView];
  v20 = [v19 leadingAnchor];
  v21 = [v2 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:12.0];

  *(v1 + 64) = v22;
  v23 = [v19 topAnchor];
  v24 = [v2 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v1 + 72) = v25;
  v26 = [v19 bottomAnchor];
  v27 = [v2 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-10.0];

  *(v1 + 80) = v28;
  v29 = [v19 heightAnchor];
  v30 = [v29 constraintEqualToConstant:46.0];

  *(v1 + 88) = v30;
  v31 = [v19 widthAnchor];
  v32 = [v31 constraintEqualToConstant:46.0];

  *(v1 + 96) = v32;
  v33 = *&v0[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutIconView];
  v34 = [v33 leadingAnchor];
  v35 = [v19 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:10.0];

  *(v1 + 104) = v36;
  v37 = [v33 topAnchor];
  v38 = [v19 topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:10.0];

  *(v1 + 112) = v39;
  v40 = [v33 bottomAnchor];
  v41 = [v19 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

  *(v1 + 120) = v42;
  v43 = [v33 trailingAnchor];
  v44 = [v19 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-10.0];

  *(v1 + 128) = v45;
  v46 = *&v0[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutBackgroundView];
  v47 = [v46 leadingAnchor];
  v48 = [v19 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v1 + 136) = v49;
  v50 = [v46 topAnchor];
  v51 = [v19 topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v1 + 144) = v52;
  v53 = [v46 bottomAnchor];
  v54 = [v19 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v1 + 152) = v55;
  v56 = [v46 trailingAnchor];
  v57 = [v19 trailingAnchor];
  v58 = [v56 constraintLessThanOrEqualToAnchor:v57];

  *(v1 + 160) = v58;
  v59 = *&v0[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_labelStackView];
  v60 = [v59 topAnchor];
  v61 = [v19 topAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  *(v1 + 168) = v62;
  v63 = [v59 leadingAnchor];
  v64 = [v19 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:14.0];

  *(v1 + 176) = v65;
  v66 = [v59 trailingAnchor];
  v67 = [v2 trailingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-28.0];

  *(v1 + 184) = v68;
  v69 = [v59 bottomAnchor];
  v70 = [v19 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v1 + 192) = v71;
  v72 = *&v0[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_descriptionLabel];
  v73 = [v72 topAnchor];
  v74 = *&v0[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_timeLabel];
  v75 = [v74 bottomAnchor];
  v76 = [v73 constraintEqualToAnchor:v75];

  *(v1 + 200) = v76;
  v77 = [v72 trailingAnchor];
  v78 = [v59 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v1 + 208) = v79;
  v80 = [v74 trailingAnchor];
  v81 = [v59 trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v1 + 216) = v82;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v83 activateConstraints:isa];
}

void sub_1003E7660()
{
  sub_1002FC244(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:0 metadata:isa];

  v3 = FIUIStaticWorkoutIconImage();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 imageWithRenderingMode:2];

    v6 = [objc_opt_self() metricColorsForGoalTypeIdentifier:0];
    v7 = [objc_opt_self() secondarySystemBackgroundColor];
    v10 = FIUICircularImage();

    v8 = *(v0 + OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutIconView);
    v9 = [v6 nonGradientTextColor];
    [v8 setTintColor:v9];

    [v8 setImage:v5];
    [*(v0 + OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_workoutBackgroundView) setImage:v10];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003E7838()
{
  v1 = v0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  v9 = v8;
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v5 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();
  v16 = String._bridgeToObjectiveC()();

  sub_1000059F8(0, &qword_1008DB888);
  sub_100140278(&unk_1008E4E50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D1F70;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_10000A788();
  *(v17 + 32) = v2;
  *(v17 + 40) = v4;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 64) = v18;
  *(v17 + 72) = v10;
  *(v17 + 80) = v12;
  v19 = NSString.init(format:_:)();
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v21 = objc_opt_self();
  v22 = v19;
  v23 = NSForegroundColorAttributeName;
  v24 = [v21 whiteColor];
  v25 = sub_1000059F8(0, &qword_1008E7FC0);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSFontAttributeName;
  v26 = qword_1008DAA38;
  v27 = NSFontAttributeName;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1008EC020;
  *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 80) = v28;
  v29 = v28;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(NSMutableAttributedString);
  type metadata accessor for Key(0);
  sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v30 initWithString:v22 attributes:isa];

  v33 = [v22 rangeOfString:v9];
  v35 = v34;

  if (qword_1008DAA40 != -1)
  {
    swift_once();
  }

  [v32 addAttribute:v27 value:qword_1008EC028 range:{v33, v35, 2, 4}];
  [*(v1 + OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_timeLabel) setAttributedText:v32];
}

id sub_1003E7D50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkSuggestionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003E7E44(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EC0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003E7EC0()
{
  result = qword_1008EC0B8;
  if (!qword_1008EC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC0B8);
  }

  return result;
}

uint64_t sub_1003E7F14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008EC2C0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_100140278(&qword_1008EC1A8);
  sub_1003EEBCC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  sub_1003EED98();
  v10 = *(v5 + 56);
  sub_10001B104(a1[1], &v7[v10], &qword_1008EC1C8);
  sub_1003EF0C4();
  v11 = *(v5 + 72);
  sub_10001B104(a1[2], &v7[v11], &qword_1008EC1F8);
  (*(v9 + 32))(a2, v7, v8);
  sub_100015E80(&v7[v10], a2 + *(v5 + 56), &qword_1008EC1C8);
  return sub_100015E80(&v7[v11], a2 + *(v5 + 72), &qword_1008EC1F8);
}

void *sub_1003E80B4(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v52 = a2;
  v4 = type metadata accessor for DayIndex();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = v47 - v8;
  v50 = type metadata accessor for Date();
  v55 = *(v50 - 8);
  __chkstk_darwin(v50);
  v61 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E0490);
  __chkstk_darwin(v10 - 8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = v47 - v14;
  __chkstk_darwin(v15);
  v57 = v47 - v16;
  __chkstk_darwin(v17);
  v19 = v47 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = v47 - v22;
  v24 = v5 + 16;
  v60 = *(v5 + 16);
  v60(v47 - v22, v3, v4, v21);
  v59 = v5;
  v27 = *(v5 + 56);
  v25 = v5 + 56;
  v26 = v27;
  v27(v23, 0, 1, v4);
  v56 = v4;
  v27(v19, 1, 1, v4);
  v28 = sub_1003EE600(v23, v19);
  sub_10000EA04(v19, &qword_1008E0490);
  sub_10000EA04(v23, &qword_1008E0490);
  result = _swiftEmptyArrayStorage;
  if (v28)
  {
    v65 = _swiftEmptyArrayStorage;
    v30 = v28;
    sub_100020F7C(0, v28 & ~(v28 >> 63), 0);
    v62 = v65;
    v31 = v56;
    v32 = v57;
    (v60)(v57, v3, v56);
    v26(v32, 0, 1, v31);
    v48 = v30;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v47[0] = v26;
      v47[1] = v25;
      v33 = 0;
      v34 = v59;
      v58 = (v59 + 4);
      ++v59;
      v60 = (v34 + 6);
      v30 = v54;
      v47[2] = v3;
      v47[3] = v55 + 32;
      v24 = v53;
      while (!__OFADD__(v33, 1))
      {
        v57 = (v33 + 1);
        v36 = v12;
        sub_10001B104(v32, v24, &qword_1008E0490);
        v37 = *v60;
        if ((*v60)(v24, 1, v31) == 1)
        {
          goto LABEL_19;
        }

        v12 = v32;
        v38 = *v58;
        (*v58)(v30, v24, v31);
        v24 = v31;
        v39 = v63;
        v51(v30);
        v63 = v39;
        if (v39)
        {
          goto LABEL_20;
        }

        v56 = *v59;
        v56(v30, v31);
        v40 = v62;
        v65 = v62;
        v42 = v62[2];
        v41 = v62[3];
        v30 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          sub_100020F7C(v41 > 1, v42 + 1, 1);
          v40 = v65;
        }

        v40[2] = v30;
        v43 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v62 = v40;
        (*(v55 + 32))(v40 + v43 + *(v55 + 72) * v42, v61, v50);
        v32 = v12;
        v44 = v12;
        v12 = v36;
        sub_100015E80(v44, v36, &qword_1008E0490);
        if (v37(v36, 1, v31) == 1)
        {
          goto LABEL_18;
        }

        v45 = v49;
        v38(v49, v36, v31);
        sub_100140278(&qword_1008E04A8);
        sub_1003EF8B4(&qword_1008E04B0, &type metadata accessor for DayIndex);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = v53;
        v30 = v54;
        if (v46)
        {
          v56(v45, v31);
          v35 = 1;
        }

        else
        {
          v64 = 1;
          sub_1003EF8B4(&qword_1008E04B8, &type metadata accessor for DayIndex);
          dispatch thunk of Strideable.advanced(by:)();
          v56(v45, v31);
          v35 = 0;
        }

        (v47[0])(v32, v35, 1, v31);
        ++v33;
        if (v57 == v48)
        {
          sub_10000EA04(v32, &qword_1008E0490);
          return v62;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    (*v59)(v30, v24);
    sub_10000EA04(v12, &qword_1008E0490);

    __break(1u);
  }

  return result;
}

uint64_t sub_1003E8798(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = type metadata accessor for Date();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_100020F7C(0, v9, 0);
  v10 = v20;
  v11 = (a3 + 32);
  v15[1] = v6 + 32;
  while (1)
  {
    v19 = *v11;
    v17(&v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = v10;
    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      sub_100020F7C(v12 > 1, v13 + 1, 1);
      v10 = v20;
    }

    v10[2] = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
    ++v11;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003E894C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for WorkoutChartDataElement(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003E8A90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_100140278(&qword_1008E1C78);
  __chkstk_darwin(v3 - 8);
  v65 = &v49 - v4;
  v57 = sub_100140278(&qword_1008E1BD0);
  __chkstk_darwin(v57);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v49 - v7;
  v8 = type metadata accessor for Date();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = &v49 - v12;
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v63 = sub_100140278(&qword_1008E1BD8);
  __chkstk_darwin(v63);
  v59 = &v49 - v16;
  v17 = sub_100140278(&qword_1008EC178);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v58 = sub_100140278(&qword_1008EC180);
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v22 = &v49 - v21;
  v23 = sub_100140278(&qword_1008EC188);
  v61 = *(v23 - 8);
  v62 = v23;
  __chkstk_darwin(v23);
  v60 = &v49 - v24;
  v69 = v2;
  sub_100140278(&qword_1008EC190);
  sub_1003EEB30();
  Chart.init(content:)();
  v25 = type metadata accessor for WorkoutChart();
  v26 = sub_10014A6B0(&qword_1008EC298, &qword_1008EC178);
  v27 = sub_1003EF8B4(&qword_1008EC2A0, type metadata accessor for WorkoutChart);
  v54 = v22;
  v50 = v26;
  v49 = v27;
  View.accessibilityChartDescriptor<A>(_:)();
  v28 = *(v18 + 8);
  v53 = v17;
  v28(v20, v17);
  v51 = v25;
  v64 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  v29 = v67;
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.addingTimeInterval(_:)();
  v30 = v68;
  v31 = *(v68 + 8);
  v31(v10, v8);
  sub_1003EF8B4(&qword_1008E4080, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v33 = *(v30 + 32);
    v34 = v31;
    v35 = v52;
    v33(v52, v15, v8);
    v36 = v56;
    v37 = v57;
    v33((v35 + *(v57 + 48)), v29, v8);
    sub_10001B104(v35, v36, &qword_1008E1BD0);
    v38 = *(v37 + 48);
    v39 = v59;
    v33(v59, v36, v8);
    v34(v36 + v38, v8);
    sub_100015E80(v35, v36, &qword_1008E1BD0);
    v40 = v63;
    v33((v39 + *(v63 + 36)), (v36 + *(v37 + 48)), v8);
    v34(v36, v8);
    v41 = type metadata accessor for ScaleType();
    v68 = *(*(v41 - 8) + 56);
    v42 = v65;
    (v68)(v65, 1, 1, v41);
    v71 = v53;
    v72 = v51;
    v73 = v50;
    v74 = v49;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = sub_1003EF8FC(&qword_1008EC2A8, &qword_1008E1BD8);
    v45 = v60;
    v46 = v58;
    v47 = v54;
    View.chartXScale<A>(domain:type:)();
    sub_10000EA04(v42, &qword_1008E1C78);
    sub_10000EA04(v39, &qword_1008E1BD8);
    (*(v55 + 8))(v47, v46);
    v70 = *(v64 + *(type metadata accessor for WorkoutChartViewModel(0) + 68));
    (v68)(v42, 1, 1, v41);
    sub_100140278(&qword_1008E2900);
    v71 = v46;
    v72 = v40;
    v73 = OpaqueTypeConformance2;
    v74 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1003EF8FC(&qword_1008E2908, &qword_1008E2900);
    v48 = v62;
    View.chartYScale<A>(domain:type:)();
    sub_10000EA04(v42, &qword_1008E1C78);
    return (*(v61 + 8))(v45, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E93E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_100140278(&qword_1008EC240);
  __chkstk_darwin(v3 - 8);
  v45 = &v43 - v4;
  v5 = sub_100140278(&qword_1008EC208);
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v43 - v6;
  v7 = sub_100140278(&qword_1008EC1F8);
  __chkstk_darwin(v7 - 8);
  v56 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v43 - v10;
  v11 = sub_100140278(&qword_1008EC1C8);
  __chkstk_darwin(v11 - 8);
  v55 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = &v43 - v14;
  v15 = type metadata accessor for WorkoutChart();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = sub_100140278(&qword_1008EC1A8);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v51 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for WorkoutChartViewModel(0);
  v24 = *(a1 + v23[15]);
  v59[0] = *(a1 + v23[12]);
  KeyPath = swift_getKeyPath();
  sub_1003EE504(a1, &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChart);
  v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v43 = v25;
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003EFCE8(v44, v27 + v25, type metadata accessor for WorkoutChart);
  *(v27 + v26) = v24;

  sub_100140278(&qword_1008E1DC8);
  sub_100140278(&qword_1008EC1B8);
  sub_10014A6B0(&qword_1008E1DD8, &qword_1008E1DC8);
  sub_1003EEC50();
  v50 = v22;
  ForEach<>.init(_:id:content:)();
  sub_1003E9AFC(v58);
  if (*(a1 + v23[9]))
  {
    v28 = v45;
    sub_1003EAF58(v45);
    v29 = v28;
    v30 = v54;
    sub_100015E80(v29, v54, &qword_1008EC240);
  }

  else
  {
    v59[0] = *(a1 + v23[8]);
    swift_getKeyPath();
    v31 = v44;
    sub_1003EE504(a1, v44, type metadata accessor for WorkoutChart);
    v32 = swift_allocObject();
    sub_1003EFCE8(v31, v32 + v43, type metadata accessor for WorkoutChart);
    *(v32 + v26) = v24;

    sub_100140278(&qword_1008EC218);
    sub_1003EF1D4();
    v33 = v46;
    ForEach<>.init(_:id:content:)();
    v30 = v54;
    (*(v47 + 32))(v54, v33, v48);
  }

  sub_100140278(&qword_1008EC2B0);
  swift_storeEnumTagMultiPayload();
  v34 = v51;
  v35 = v52;
  v36 = v50;
  v37 = v53;
  (*(v52 + 16))(v51, v50, v53);
  v59[0] = v34;
  v38 = v58;
  v39 = v55;
  sub_10001B104(v58, v55, &qword_1008EC1C8);
  v59[1] = v39;
  v40 = v56;
  sub_10001B104(v30, v56, &qword_1008EC1F8);
  v59[2] = v40;
  sub_1003E7F14(v59, v57);
  sub_10000EA04(v30, &qword_1008EC1F8);
  sub_10000EA04(v38, &qword_1008EC1C8);
  v41 = *(v35 + 8);
  v41(v36, v37);
  sub_10000EA04(v40, &qword_1008EC1F8);
  sub_10000EA04(v39, &qword_1008EC1C8);
  return (v41)(v34, v37);
}

uint64_t sub_1003E9AFC@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v109 = sub_100140278(&qword_1008EC2E0);
  __chkstk_darwin(v109);
  v108 = &v101 - v2;
  v3 = sub_100140278(&qword_1008EC1E8);
  __chkstk_darwin(v3 - 8);
  v110 = &v101 - v4;
  v5 = sub_100140278(&qword_1008EC1B8);
  __chkstk_darwin(v5 - 8);
  v107 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v101 - v8;
  v9 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v9 - 8);
  v118 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = &v101 - v12;
  v13 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v13 - 8);
  v116 = &v101 - v14;
  v120 = type metadata accessor for RuleMark();
  v130 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100140278(&qword_1008E1CE0);
  v127 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v101 - v16;
  v112 = sub_100140278(&qword_1008E1DD0);
  v128 = *(v112 - 8);
  __chkstk_darwin(v112);
  v122 = &v101 - v17;
  v126 = sub_100140278(&qword_1008EC2E8);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v115 = &v101 - v20;
  v21 = sub_100140278(&qword_1008E8AC0);
  __chkstk_darwin(v21 - 8);
  v114 = (&v101 - v22);
  v131 = type metadata accessor for WorkoutChartDataElement(0);
  v23 = *(v131 - 8);
  __chkstk_darwin(v131);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v129 = &v101 - v27;
  v28 = sub_100140278(&qword_1008EC1D8);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v113 = &v101 - v30;
  v31 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v31 - 8);
  v33 = &v101 - v32;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v132 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(type metadata accessor for WorkoutChart() + 20);
  v134 = v1;
  v38 = *(v1 + v37 + 8);
  v39 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  v40 = v38 + v39;
  v41 = v34;
  sub_10001B104(v40, v33, &unk_1008F73A0);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_10000EA04(v33, &unk_1008F73A0);
    return (*(v29 + 56))(v133, 1, 1, v28);
  }

  else
  {
    v105 = v29;
    v106 = v28;
    v43 = v132;
    (*(v35 + 32))(v132, v33, v34);
    v44 = type metadata accessor for WorkoutChartViewModel(0);
    v45 = *(v134 + v44[17] + 8);
    v46 = *(v134 + v44[18]) * 4.0;
    v47 = v114;
    sub_10031BBF8(v43, v114);
    v48 = (*(v23 + 48))(v47, 1, v131);
    v104 = v35;
    if (v48 == 1)
    {
      result = sub_10000EA04(v47, &qword_1008E8AC0);
      v49 = 0;
      v50 = *(v134 + v44[15]);
      v51 = *(v134 + v44[12]);
      v52 = *(v51 + 16);
      while (1)
      {
        if (v52 == v49)
        {
          v46 = 0.0;
LABEL_14:
          LocalizedStringKey.init(stringLiteral:)();
          static PlottableValue.value(_:_:)();

          LocalizedStringKey.init(stringLiteral:)();
          v139 = v50 + v46;
          static PlottableValue.value(_:_:)();

          LocalizedStringKey.init(stringLiteral:)();
          v139 = v45;
          static PlottableValue.value(_:_:)();

          v71 = v119;
          RuleMark.init<A, B>(x:yStart:yEnd:)();
          v139 = COERCE_DOUBLE(static Color.gray.getter());
          v72 = v121;
          v73 = v120;
          ChartContent.foregroundStyle<A>(_:)();

          (*(v130 + 8))(v71, v73);
          StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
          v135 = v73;
          v136 = &type metadata for Color;
          v137 = &protocol witness table for RuleMark;
          v138 = &protocol witness table for Color;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v75 = v122;
          v76 = v123;
          ChartContent.lineStyle(_:)();
          sub_10021D934(&v139);
          (*(v127 + 8))(v72, v76);
          v135 = v76;
          v136 = OpaqueTypeConformance2;
          swift_getOpaqueTypeConformance2();
          v77 = v124;
          v78 = v112;
          ChartContent.accessibilityHidden(_:)();
          (*(v128 + 8))(v75, v78);
          (*(v104 + 8))(v43, v41);
          v79 = v113;
          (*(v125 + 32))(v113, v77, v126);
          goto LABEL_17;
        }

        if (v49 >= *(v51 + 16))
        {
          break;
        }

        sub_1003EE504(v51 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v49++, v25, type metadata accessor for WorkoutChartDataElement);
        v53 = static Date.== infix(_:_:)();
        result = sub_10019836C(v25);
        if (v53)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v54 = v129;
      sub_1003EFCE8(v47, v129, type metadata accessor for WorkoutChartDataElement);
      LocalizedStringKey.init(stringLiteral:)();
      static PlottableValue.value(_:_:)();

      LocalizedStringKey.init(stringLiteral:)();
      v139 = v46 + *(v54 + *(v131 + 28));
      static PlottableValue.value(_:_:)();

      LocalizedStringKey.init(stringLiteral:)();
      v139 = v45;
      static PlottableValue.value(_:_:)();

      v55 = v119;
      RuleMark.init<A, B>(x:yStart:yEnd:)();
      sub_1005D5EA8(*(v134 + v44[5]));
      v139 = COERCE_DOUBLE(Color.init(_:)());
      v56 = v121;
      v57 = *&v120;
      ChartContent.foregroundStyle<A>(_:)();

      v58 = *(v130 + 8);
      v130 += 8;
      v114 = v58;
      (v58)(v55, *&v57);
      v59 = 1;
      StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
      v139 = v57;
      v140 = &type metadata for Color;
      v141 = &protocol witness table for RuleMark;
      v142 = &protocol witness table for Color;
      v60 = swift_getOpaqueTypeConformance2();
      v61 = v122;
      v62 = *&v123;
      ChartContent.lineStyle(_:)();
      sub_10021D934(&v135);
      v63 = v127 + 8;
      v102 = *(v127 + 8);
      v102(v56, *&v62);
      v139 = v62;
      v140 = v60;
      v64 = swift_getOpaqueTypeConformance2();
      v65 = v112;
      ChartContent.accessibilityHidden(_:)();
      v66 = v128 + 8;
      v67 = *(v128 + 8);
      v67(v61, v65);
      v68 = *(v134 + v44[9]) == 1;
      v103 = v41;
      if (v68)
      {
        v101 = v64;
        v69 = *(v134 + v44[15]);
        v70 = *(v129 + *(v131 + 24)) - v46;
        if (v69 <= v70)
        {
          LocalizedStringKey.init(stringLiteral:)();
          v127 = v63;
          v128 = v66;
          static PlottableValue.value(_:_:)();

          LocalizedStringKey.init(stringLiteral:)();
          v139 = v69;
          static PlottableValue.value(_:_:)();

          LocalizedStringKey.init(stringLiteral:)();
          v139 = v70;
          static PlottableValue.value(_:_:)();

          v80 = v119;
          RuleMark.init<A, B>(x:yStart:yEnd:)();
          v139 = COERCE_DOUBLE(static Color.gray.getter());
          v81 = v121;
          v82 = v120;
          ChartContent.foregroundStyle<A>(_:)();

          (v114)(v80, v82);
          StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
          v83 = v122;
          v84 = v123;
          ChartContent.lineStyle(_:)();
          sub_10021D934(&v139);
          v102(v81, v84);
          v85 = v124;
          ChartContent.accessibilityHidden(_:)();
          v67(v83, v65);
          (*(v125 + 32))(v111, v85, v126);
          v59 = 0;
        }

        else
        {
          v59 = 1;
        }
      }

      v86 = v125;
      v87 = v111;
      v88 = v126;
      (*(v125 + 56))(v111, v59, 1, v126);
      v89 = *(v86 + 16);
      v90 = v124;
      v91 = v115;
      v89(v124, v115, v88);
      v92 = v107;
      sub_10001B104(v87, v107, &qword_1008EC1B8);
      v93 = v108;
      v89(v108, v90, v88);
      sub_1003EEC50();
      v94 = v109;
      v95 = *(v109 + 48);
      sub_10001B104(v92, &v93[v95], &qword_1008EC1B8);
      v96 = v110;
      (*(v86 + 32))(v110, v93, v88);
      sub_100015E80(&v93[v95], v96 + *(v94 + 48), &qword_1008EC1B8);
      sub_10000EA04(v87, &qword_1008EC1B8);
      v97 = *(v86 + 8);
      v97(v91, v88);
      sub_10019836C(v129);
      (*(v104 + 8))(v132, v103);
      sub_10000EA04(v92, &qword_1008EC1B8);
      v97(v90, v88);
      v79 = v113;
      sub_100015E80(v96, v113, &qword_1008EC1E8);
LABEL_17:
      v98 = v133;
      v99 = v106;
      v100 = v105;
      sub_100140278(&qword_1008EC2F0);
      swift_storeEnumTagMultiPayload();
      sub_100015E80(v79, v98, &qword_1008EC1D8);
      return (*(v100 + 56))(v98, 0, 1, v99);
    }
  }

  return result;
}

uint64_t sub_1003EAF58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  KeyPath = sub_100140278(&qword_1008EC278);
  v28 = *(KeyPath - 8);
  __chkstk_darwin(KeyPath);
  v4 = &v27 - v3;
  v5 = type metadata accessor for WorkoutChart();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008EC250);
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_100140278(&qword_1008EC248);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v32 = sub_100140278(&qword_1008EC2C8);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v15 = &v27 - v14;
  v16 = type metadata accessor for WorkoutChartViewModel(0);
  v17 = v16;
  if (*(v2 + v16[13]))
  {
    v18 = *(v2 + v16[15]);
    v19 = *(v2 + v16[16]);

    sub_10031A51C(v18, v19);
    static UnitPoint.bottom.getter();
    static UnitPoint.top.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    *&v37 = *(v2 + v17[8]);
    KeyPath = swift_getKeyPath();
    sub_1003EE504(v2, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChart);
    v20 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v21 = swift_allocObject();
    sub_1003EFCE8(v7, v21 + v20, type metadata accessor for WorkoutChart);

    sub_100140278(&qword_1008E1DC8);
    sub_100140278(&qword_1008EC268);
    sub_10014A6B0(&qword_1008E1DD8, &qword_1008E1DC8);
    sub_1003EF528();
    ForEach<>.init(_:id:content:)();
    v37 = v40[0];
    v38 = v40[1];
    v39 = v41;
    v22 = sub_1003EF4A4();
    ChartContent.foregroundStyle<A>(_:)();
    (*(v31 + 8))(v10, v8);
    sub_1003363B4(v40);
    *&v37 = v8;
    *(&v37 + 1) = &type metadata for LinearGradient;
    *&v38 = v22;
    *(&v38 + 1) = &protocol witness table for LinearGradient;
    swift_getOpaqueTypeConformance2();
    v23 = v34;
    ChartContent.alignsMarkStylesWithPlotArea(_:)();

    (*(v33 + 8))(v13, v23);
    (*(v30 + 32))(v36, v15, v32);
  }

  else
  {
    *&v40[0] = *(v2 + v16[8]);
    swift_getKeyPath();
    sub_1003EE504(v2, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChart);
    v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v25 = swift_allocObject();
    sub_1003EFCE8(v7, v25 + v24, type metadata accessor for WorkoutChart);

    sub_100140278(&qword_1008E1DC8);
    sub_100140278(&qword_1008EC288);
    sub_10014A6B0(&qword_1008E1DD8, &qword_1008E1DC8);
    sub_1003EF704();
    ForEach<>.init(_:id:content:)();
    (*(v28 + 32))(v36, v4, KeyPath);
  }

  sub_100140278(&qword_1008EC2D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003EB64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v8 - 8);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v11 - 8);
  v63 = type metadata accessor for RuleMark();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100140278(&qword_1008EC230);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v52 - v13;
  v14 = sub_100140278(&qword_1008EC228);
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v65 = &v52 - v15;
  v16 = sub_100140278(&qword_1008EC220);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_100140278(&qword_1008EC2B8);
  v69 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v52 - v21;
  if (sub_1003EBF3C())
  {
    v52 = v19;
    v53 = v14;
    v54 = v17;
    v55 = v20;
    v56 = v16;
    v58 = a3;
    LocalizedStringKey.init(stringLiteral:)();
    v57 = a2;
    type metadata accessor for Date();
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v74 = a4;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v74 = *(a1 + *(type metadata accessor for WorkoutChartDataElement(0) + 20));
    v22 = v57;
    static PlottableValue.value(_:_:)();

    v23 = v59;
    RuleMark.init<A, B>(x:yStart:yEnd:)();
    v24 = type metadata accessor for WorkoutChartViewModel(0);
    Date.timeIntervalSince(_:)();
    v25 = [*(v22 + *(v24 + 80)) stringFromTimeInterval:?];
    v26 = v23;
    if (v25)
    {
      v27 = v25;
      *&v28 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
      v30 = v29;
    }

    else
    {
      *&v28 = 0.0;
      v30 = 0xE000000000000000;
    }

    v74 = *&v28;
    v75 = v30;
    v33 = sub_10000FCBC();
    v34 = v62;
    v35 = *&v63;
    ChartContent.accessibilityLabel<A>(_:)();

    (*(v61 + 8))(v26, COERCE_DOUBLE(*&v35));
    v36 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    v37 = sub_10031BE28(a1, v36);

    v38 = [v37 string];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v70 = v39;
    v71 = v41;
    v74 = v35;
    v75 = &type metadata for String;
    v76 = &protocol witness table for RuleMark;
    v77 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v65;
    v43 = *&v66;
    ChartContent.accessibilityValue<A>(_:)();

    (*(v64 + 8))(v34, COERCE_DOUBLE(*&v43));
    v70 = sub_1003EC1A8();
    v74 = v43;
    v75 = &type metadata for String;
    v76 = OpaqueTypeConformance2;
    v77 = v33;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = v52;
    v47 = v53;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v68 + 8))(v44, v47);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v70 = v47;
    v71 = &type metadata for Color;
    v72 = v45;
    v73 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v48 = v67;
    v49 = v56;
    ChartContent.lineStyle(_:)();
    sub_10021D934(&v74);
    (*(v54 + 8))(v46, v49);
    v50 = v58;
    v51 = v55;
    (*(v69 + 32))(v58, v48, v55);
    return (*(v69 + 56))(v50, 0, 1, v51);
  }

  else
  {
    v31 = *(v69 + 56);

    return v31(a3, 1, 1, v20);
  }
}

uint64_t sub_1003EBF3C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  type metadata accessor for WorkoutChart();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.addingTimeInterval(_:)();
  v7 = static Date.< infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Date.addingTimeInterval(_:)();
    v8(v3, v0);
    Date.addingTimeInterval(_:)();
    v9 = static Date.> infix(_:_:)();
    v8(v3, v0);
    v8(v6, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1003EC1A8()
{
  v1 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + *(type metadata accessor for WorkoutChart() + 20) + 8);
  v9 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  sub_10001B104(v8 + v9, v3, &unk_1008F73A0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000EA04(v3, &unk_1008F73A0);
    v10 = type metadata accessor for WorkoutChartViewModel(0);
    sub_1005D5EA8(*(v0 + *(v10 + 20)));
    return Color.init(_:)();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = static Date.== infix(_:_:)();
    v13 = type metadata accessor for WorkoutChartViewModel(0);
    sub_1005D5EA8(*(v0 + *(v13 + 20)));
    v14 = Color.init(_:)();
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = Color.opacity(_:)();
    }

    (*(v5 + 8))(v7, v4);
    return v15;
  }
}

uint64_t sub_1003EC3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008EC290);
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  if (sub_1003EBF3C())
  {
    sub_1003EC550(a1, v6);
    (*(v10 + 32))(a2, v6, v4);
    return (*(v10 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v8 = *(v10 + 56);

    return v8(a2, 1, 1, v4);
  }
}

uint64_t sub_1003EC550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v3 - 8);
  v36 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v6 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v6 - 8);
  v34[1] = v34 - v7;
  v40 = type metadata accessor for RuleMark();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v35 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100140278(&qword_1008EC230);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = v34 - v9;
  v45 = sub_100140278(&qword_1008EC228);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = v34 - v10;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v11 = type metadata accessor for WorkoutChartDataElement(0);
  v51 = *(a1 + *(v11 + 24));
  static PlottableValue.value(_:_:)();

  v12 = v35;

  LocalizedStringKey.init(stringLiteral:)();
  v51 = *(a1 + *(v11 + 28));
  static PlottableValue.value(_:_:)();
  v13 = v37;

  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v14 = type metadata accessor for WorkoutChartViewModel(0);
  Date.timeIntervalSince(_:)();
  v15 = [*(v13 + *(v14 + 80)) stringFromTimeInterval:?];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v51 = v17;
  v52 = v19;
  v20 = sub_10000FCBC();
  v22 = v39;
  v21 = v40;
  ChartContent.accessibilityLabel<A>(_:)();

  (*(v38 + 8))(v12, v21);
  v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v24 = sub_10031BE28(a1, v23);

  v25 = [v24 string];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v47 = v26;
  v48 = v28;
  v51 = v21;
  v52 = &type metadata for String;
  v53 = &protocol witness table for RuleMark;
  v54 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v42;
  v31 = v44;
  ChartContent.accessibilityValue<A>(_:)();

  (*(v41 + 8))(v22, v31);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v47 = v31;
  v48 = &type metadata for String;
  v49 = OpaqueTypeConformance2;
  v50 = v20;
  swift_getOpaqueTypeConformance2();
  v32 = v45;
  ChartContent.lineStyle(_:)();
  sub_10021D934(&v51);
  return (*(v43 + 8))(v30, v32);
}

uint64_t sub_1003ECB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008EC290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_100140278(&qword_1008EC2D8);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  if (sub_1003EBF3C())
  {
    sub_1003EC550(a1, v7);
    v27 = sub_1003EC1A8();
    v20 = sub_100141EEC(&qword_1008EC228);
    v11 = sub_100141EEC(&qword_1008EC230);
    v21 = a2;
    v12 = v11;
    v13 = type metadata accessor for RuleMark();
    v14 = sub_10000FCBC();
    v23 = v13;
    v24 = &type metadata for String;
    v25 = &protocol witness table for RuleMark;
    v26 = v14;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v23 = v12;
    v24 = &type metadata for String;
    v25 = OpaqueTypeConformance2;
    v26 = v14;
    v16 = swift_getOpaqueTypeConformance2();
    v23 = v20;
    v24 = v16;
    swift_getOpaqueTypeConformance2();
    ChartContent.foregroundStyle<A>(_:)();

    (*(v5 + 8))(v7, v4);
    v17 = v21;
    (*(v22 + 32))(v21, v10, v8);
    return (*(v22 + 56))(v17, 0, 1, v8);
  }

  else
  {
    v19 = *(v22 + 56);

    return v19(a2, 1, 1, v8);
  }
}

uint64_t sub_1003ECEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<D0>)
{
  v8 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v8 - 8);
  v45 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v34 - v11;
  v12 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v12 - 8);
  v46 = type metadata accessor for RuleMark();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008E1CE0);
  v47 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_100140278(&qword_1008E1DD0);
  v48 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  v21 = sub_100140278(&qword_1008EC2E8);
  v49 = *(v21 - 8);
  __chkstk_darwin(v21);
  v43 = &v34 - v22;
  if (sub_1003EBF3C())
  {
    LocalizedStringKey.init(stringLiteral:)();
    v38 = v15;
    v39 = v18;
    v37 = a2;
    v41 = v21;
    v36 = a1;
    type metadata accessor for Date();
    v40 = a3;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v54[0] = a4;
    v35 = v20;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v54[0] = a4;
    static PlottableValue.value(_:_:)();

    RuleMark.init<A, B>(x:yStart:yEnd:)();
    v54[0] = sub_1003ED560(v36);
    v23 = v46;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v44 + 8))(v14, v23);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v50 = v23;
    v51 = &type metadata for Color;
    v52 = &protocol witness table for RuleMark;
    v53 = &protocol witness table for Color;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = v35;
    v26 = v38;
    ChartContent.lineStyle(_:)();
    sub_10021D934(v54);
    (*(v47 + 8))(v17, v26);
    v50 = v26;
    v51 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v27 = v43;
    v28 = v39;
    ChartContent.accessibilityHidden(_:)();
    (*(v48 + 8))(v25, v28);
    v29 = v40;
    v30 = v27;
    v31 = v41;
    (*(v49 + 32))(v40, v30, v41);
    return (*(v49 + 56))(v29, 0, 1, v31);
  }

  else
  {
    v33 = *(v49 + 56);

    return v33(a3, 1, 1, v21);
  }
}

uint64_t sub_1003ED560(uint64_t a1)
{
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E8AC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  sub_10031BBF8(a1, &v22 - v11);
  v13 = type metadata accessor for WorkoutChartDataElement(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  sub_10000EA04(v12, &qword_1008E8AC0);
  if (v14 == 1)
  {
    v15 = *(v1 + *(type metadata accessor for WorkoutChart() + 20) + 8);
    v16 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
    swift_beginAccess();
    sub_10001B104(v15 + v16, v5, &unk_1008F73A0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000EA04(v5, &unk_1008F73A0);
      return static Color.gray.getter();
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v19 = static Date.== infix(_:_:)();
      v20 = static Color.gray.getter();
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = Color.opacity(_:)();
      }

      (*(v7 + 8))(v9, v6);
      return v21;
    }
  }

  else
  {
    v18 = [objc_opt_self() systemBackgroundColor];
    return Color.init(_:)();
  }
}

uint64_t sub_1003ED860()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutChart();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v45 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Date.FormatStyle.DateStyle();
  v46 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutChartDataElement(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v47 = type metadata accessor for WorkoutChartViewModel(0);
  v14 = *(v1 + *(v47 + 32));
  v15 = *(v14 + 16);
  v48 = v14;
  if (v15)
  {
    v40 = v13;
    v41 = v3;
    v42 = v4;
    v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v1;
    v55 = _swiftEmptyArrayStorage;
    sub_100073020(0, v15, 0);
    v16 = v55;
    v17 = v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v49 = *(v9 + 72);
    v18 = (v45 + 8);
    v19 = (v46 + 8);
    do
    {
      v20 = v50;
      sub_1003EE504(v17, v50, type metadata accessor for WorkoutChartDataElement);
      v21 = v51;
      static Date.FormatStyle.DateStyle.omitted.getter();
      v22 = v53;
      static Date.FormatStyle.TimeStyle.standard.getter();
      v23 = Date.formatted(date:time:)();
      v25 = v24;
      (*v18)(v22, v54);
      (*v19)(v21, v52);
      sub_10019836C(v20);
      v55 = v16;
      v27 = v16[2];
      v26 = v16[3];
      if (v27 >= v26 >> 1)
      {
        sub_100073020((v26 > 1), v27 + 1, 1);
        v16 = v55;
      }

      v16[2] = v27 + 1;
      v28 = &v16[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
      v17 += v49;
      --v15;
    }

    while (v15);
    v5 = v43;
    v1 = v44;
    v3 = v41;
    v13 = v40;
  }

  v29 = objc_allocWithZone(AXCategoricalDataAxisDescriptor);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 initWithTitle:v13 categoryOrder:isa];

  sub_1000059F8(0, &qword_1008EC0C0);
  sub_1003EE504(v1, v5, type metadata accessor for WorkoutChart);
  v31 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v32 = swift_allocObject();
  sub_1003EFCE8(v5, v32 + v31, type metadata accessor for WorkoutChart);
  swift_bridgeObjectRetain_n();
  v33 = AXNumericDataAxisDescriptor.init(title:range:gridlinePositions:valueDescriptionProvider:)();
  __chkstk_darwin(v33);
  *(&v40 - 4) = sub_1003EDF00;
  *(&v40 - 3) = 0;
  *(&v40 - 2) = v1;
  sub_1003E894C(sub_1003EE5DC, (&v40 - 6), v48);
  v34 = objc_allocWithZone(AXDataSeriesDescriptor);
  v35 = String._bridgeToObjectiveC()();
  sub_1000059F8(0, &qword_1008EC0C8);
  v36 = Array._bridgeToObjectiveC()().super.isa;

  v37 = [v34 initWithName:v35 isContinuous:0 dataPoints:v36];

  sub_1000059F8(0, &qword_1008EC0D0);
  sub_100140278(&unk_1008E4E20);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1006D4E70;
  *(v38 + 32) = v37;
  return AXChartDescriptor.init(title:summary:xAxis:yAxis:additionalAxes:series:)();
}

uint64_t sub_1003EDF00()
{
  v0 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.DateStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.FormatStyle.DateStyle.omitted.getter();
  static Date.FormatStyle.TimeStyle.standard.getter();
  v8 = Date.formatted(date:time:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1003EE088(uint64_t a1, double a2)
{
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  *&v7[v5[7]] = a2;
  *&v7[v5[8]] = a2;
  *&v7[v5[9]] = a2;
  v8 = type metadata accessor for WorkoutChartViewModel(0);
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v10 = *(a1 + *(v8 + 20));
  if (v10 <= 5)
  {
    if (*(a1 + *(v8 + 20)) <= 2u)
    {
      if (!*(a1 + *(v8 + 20)))
      {
        v11 = sub_10019656C(v7, v9);
        goto LABEL_18;
      }

      if (v10 != 1)
      {
        v11 = sub_10019623C(v7, v9);
        goto LABEL_18;
      }

LABEL_8:
      v11 = sub_1001968A0(v7, v9);
      goto LABEL_18;
    }

    if (v10 != 3)
    {
      if (v10 == 4)
      {
        sub_100197FD4(v7, v9);
      }

      else
      {
        sub_100197CB0(v7, v9);
      }

      goto LABEL_18;
    }

LABEL_12:
    sub_100195E90(v7, v9);
    goto LABEL_18;
  }

  if (*(a1 + *(v8 + 20)) > 7u)
  {
    if (v10 - 8 < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v10 == 6)
  {
    v11 = sub_100197098(v7, v9);
  }

  else
  {
    v11 = sub_100197394(v7, v9);
  }

LABEL_18:
  v12 = v11;

  v13 = [v12 string];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10019836C(v7);
  return v14;
}

AXDataPoint sub_1003EE278@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, AXDataPoint *a4@<X8>)
{
  v7 = a2();
  v9 = v8;
  v24 = *(a1 + *(type metadata accessor for WorkoutChartDataElement(0) + 20));
  v10 = type metadata accessor for WorkoutChartViewModel(0);
  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v12 = *(a3 + *(v10 + 20));
  if (v12 > 5)
  {
    if (*(a3 + *(v10 + 20)) <= 7u)
    {
      if (v12 == 6)
      {
        v18 = sub_100197098(a1, v11);
      }

      else
      {
        v18 = sub_100197394(a1, v11);
      }

      goto LABEL_18;
    }

    v13 = v7;
    if (v12 - 8 < 2)
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_100195E90(a1, v11);
    v14 = v17;
    goto LABEL_19;
  }

  if (*(a3 + *(v10 + 20)) <= 2u)
  {
    if (*(a3 + *(v10 + 20)))
    {
      v13 = v7;
      if (v12 != 1)
      {
        v14 = sub_10019623C(a1, v11);
LABEL_19:
        v15 = v24;
        goto LABEL_20;
      }

LABEL_8:
      v14 = sub_1001968A0(a1, v11);
      goto LABEL_19;
    }

    v18 = sub_10019656C(a1, v11);
LABEL_18:
    v14 = v18;
    v13 = v7;
    goto LABEL_19;
  }

  v13 = v7;
  if (v12 == 3)
  {
    goto LABEL_13;
  }

  v15 = v24;
  if (v12 == 4)
  {
    sub_100197FD4(a1, v11);
  }

  else
  {
    sub_100197CB0(a1, v11);
  }

  v14 = v16;
LABEL_20:

  sub_1000059F8(0, &qword_1008EC0C8);
  v19 = [v14 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21.value._countAndFlagsBits = _swiftEmptyArrayStorage;
  v22._countAndFlagsBits = v13;
  v22._object = v9;
  v25.is_nil = v15;
  v21.value._object = v20;
  result.super.isa = AXDataPoint.init(x:y:additionalValues:label:)(v22, v25, 0, v21).super.isa;
  a4->super.isa = result.super.isa;
  return result;
}

uint64_t type metadata accessor for WorkoutChart()
{
  result = qword_1008EC130;
  if (!qword_1008EC130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003EE504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003EE56C(double a1)
{
  v3 = *(type metadata accessor for WorkoutChart() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003EE088(v4, a1);
}

uint64_t sub_1003EE600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayIndex();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_100140278(&qword_1008E0488);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = *(v12 + 56);
  sub_10001B104(a1, &v23 - v13, &qword_1008E0490);
  sub_10001B104(a2, &v14[v15], &qword_1008E0490);
  v16 = v5[6];
  LODWORD(a1) = v16(v14, 1, v4);
  v17 = v16(&v14[v15], 1, v4);
  v18 = v17;
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v5[4];
    v16(v10, v14, v4);
    if (v18 != 1)
    {
LABEL_11:
      v16(v8, &v14[v15], v4);
      sub_1003EF8B4(&qword_1008E04B8, &type metadata accessor for DayIndex);
      dispatch thunk of Strideable.distance(to:)();
      v22 = v5[1];
      v22(v8, v4);
      v22(v10, v4);
      return v24;
    }

    v15 = *(sub_100140278(&qword_1008E04A8) + 36);
    sub_1003EF8B4(&qword_1008E04B8, &type metadata accessor for DayIndex);
    dispatch thunk of Strideable.distance(to:)();
    v20 = v5[1];
    ++v5;
    v20(v10, v4);
    result = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v10, &v14[v15], v4);
  v15 = *(sub_100140278(&qword_1008E04A8) + 36);
  sub_1003EF8B4(&qword_1008E04B8, &type metadata accessor for DayIndex);
  v8 = (v23 + v15);
  dispatch thunk of Strideable.distance(to:)();
  v21 = v5[1];
  ++v5;
  v21(v10, v4);
  result = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_1003EE9F4()
{
  type metadata accessor for WorkoutChartViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1003EEA78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003EEA78()
{
  if (!qword_1008EC140)
  {
    type metadata accessor for WorkoutChartProperties();
    sub_1003EF8B4(&unk_1008EC148, type metadata accessor for WorkoutChartProperties);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EC140);
    }
  }
}

unint64_t sub_1003EEB30()
{
  result = qword_1008EC198;
  if (!qword_1008EC198)
  {
    sub_100141EEC(&qword_1008EC190);
    sub_1003EEBCC();
    sub_1003EED98();
    sub_1003EF0C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC198);
  }

  return result;
}

unint64_t sub_1003EEBCC()
{
  result = qword_1008EC1A0;
  if (!qword_1008EC1A0)
  {
    sub_100141EEC(&qword_1008EC1A8);
    sub_1003EEC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC1A0);
  }

  return result;
}

unint64_t sub_1003EEC50()
{
  result = qword_1008EC1B0;
  if (!qword_1008EC1B0)
  {
    sub_100141EEC(&qword_1008EC1B8);
    sub_100141EEC(&qword_1008E1DD0);
    sub_100141EEC(&qword_1008E1CE0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC1B0);
  }

  return result;
}

unint64_t sub_1003EED98()
{
  result = qword_1008EC1C0;
  if (!qword_1008EC1C0)
  {
    sub_100141EEC(&qword_1008EC1C8);
    sub_1003EEE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC1C0);
  }

  return result;
}

unint64_t sub_1003EEE1C()
{
  result = qword_1008EC1D0;
  if (!qword_1008EC1D0)
  {
    sub_100141EEC(&qword_1008EC1D8);
    sub_1003EEF6C();
    sub_100141EEC(&qword_1008E1DD0);
    sub_100141EEC(&qword_1008E1CE0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC1D0);
  }

  return result;
}

unint64_t sub_1003EEF6C()
{
  result = qword_1008EC1E0;
  if (!qword_1008EC1E0)
  {
    sub_100141EEC(&qword_1008EC1E8);
    sub_100141EEC(&qword_1008E1DD0);
    sub_100141EEC(&qword_1008E1CE0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1003EEC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC1E0);
  }

  return result;
}

unint64_t sub_1003EF0C4()
{
  result = qword_1008EC1F0;
  if (!qword_1008EC1F0)
  {
    sub_100141EEC(&qword_1008EC1F8);
    sub_1003EF150();
    sub_1003EF384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC1F0);
  }

  return result;
}

unint64_t sub_1003EF150()
{
  result = qword_1008EC200;
  if (!qword_1008EC200)
  {
    sub_100141EEC(&qword_1008EC208);
    sub_1003EF1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC200);
  }

  return result;
}

unint64_t sub_1003EF1D4()
{
  result = qword_1008EC210;
  if (!qword_1008EC210)
  {
    sub_100141EEC(&qword_1008EC218);
    sub_100141EEC(&qword_1008EC220);
    sub_100141EEC(&qword_1008EC228);
    sub_100141EEC(&qword_1008EC230);
    type metadata accessor for RuleMark();
    sub_10000FCBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC210);
  }

  return result;
}

unint64_t sub_1003EF384()
{
  result = qword_1008EC238;
  if (!qword_1008EC238)
  {
    sub_100141EEC(&qword_1008EC240);
    sub_100141EEC(&qword_1008EC248);
    sub_100141EEC(&qword_1008EC250);
    sub_1003EF4A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1003EF680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC238);
  }

  return result;
}

unint64_t sub_1003EF4A4()
{
  result = qword_1008EC258;
  if (!qword_1008EC258)
  {
    sub_100141EEC(&qword_1008EC250);
    sub_1003EF528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC258);
  }

  return result;
}

unint64_t sub_1003EF528()
{
  result = qword_1008EC260;
  if (!qword_1008EC260)
  {
    sub_100141EEC(&qword_1008EC268);
    sub_100141EEC(&qword_1008EC228);
    sub_100141EEC(&qword_1008EC230);
    type metadata accessor for RuleMark();
    sub_10000FCBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC260);
  }

  return result;
}

unint64_t sub_1003EF680()
{
  result = qword_1008EC270;
  if (!qword_1008EC270)
  {
    sub_100141EEC(&qword_1008EC278);
    sub_1003EF704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC270);
  }

  return result;
}

unint64_t sub_1003EF704()
{
  result = qword_1008EC280;
  if (!qword_1008EC280)
  {
    sub_100141EEC(&qword_1008EC288);
    sub_100141EEC(&qword_1008EC290);
    sub_100141EEC(&qword_1008EC228);
    sub_100141EEC(&qword_1008EC230);
    type metadata accessor for RuleMark();
    sub_10000FCBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC280);
  }

  return result;
}

uint64_t sub_1003EF8B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003EF8FC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003EF97C()
{
  v1 = *(type metadata accessor for WorkoutChart() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for WorkoutChartViewModel(0);

  v8 = v7[10];
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v7[11], v9);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1003EFB64(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, __n128))
{
  v4 = *(type metadata accessor for WorkoutChart() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6.n128_u64[0] = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_1003EFC54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutChart() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1003EFCE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1003EFD60(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v54 = a4;
  v55 = a7;
  v53 = a6;
  v57 = a5;
  v56 = a2;
  v58 = a1;
  v9 = a3;
  v10 = type metadata accessor for UUID();
  v52 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  v19 = type metadata accessor for MetricCard();
  __chkstk_darwin(v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  v25 = type metadata accessor for MetricDetailViewModel();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  v29 = &v46 - v27;
  if (v9)
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    v50 = a8;
    v51 = v28;
    v47 = v15;
    v48 = v24;
    v49 = v12;
    v30 = v52;
    sub_1003C500C(v58, (v58 > 3u), 1, &v46 - v27);
    sub_10001B104(v54, v59, &qword_1008DCC60);
    v31 = v60;
    if (v60)
    {
      v32 = v61;
      sub_1000066AC(v59, v60);
      (*(v32 + 8))(v31, v32);
      v33 = v10;
      (*(v30 + 56))(v18, 0, 1, v10);
      sub_100005A40(v59);
    }

    else
    {
      sub_10000EA04(v59, &qword_1008DCC60);
      v33 = v10;
      (*(v30 + 56))(v18, 1, 1, v10);
    }

    v54 = v29;
    sub_10002910C(v29, v51);
    v21[v19[6]] = 0;
    v34 = v47;
    sub_10001B104(v18, v47, &unk_1008DB8A0);
    v35 = *(v30 + 48);
    v36 = v35(v34, 1, v33);
    v55 = v55;
    v37 = v48;
    if (v36 == 1)
    {
      v38 = v49;
      UUID.init()();
      sub_10000EA04(v18, &unk_1008DB8A0);
      v39 = v35(v34, 1, v33);
      v40 = v38;
      v41 = v58;
      if (v39 != 1)
      {
        sub_10000EA04(v34, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v18, &unk_1008DB8A0);
      v40 = v49;
      (*(v30 + 32))(v49, v34, v33);
      v41 = v58;
    }

    (*(v30 + 32))(v21, v40, v33);
    v42 = &v21[v19[5]];
    v43 = v56;
    *v42 = v41;
    *(v42 + 1) = v43;
    v42[16] = 0;
    v21[v19[7]] = v57 & 1;
    v21[v19[8]] = 1;
    sub_10002B03C(v51, &v21[v19[9]], type metadata accessor for MetricDetailViewModel);
    v21[v19[10]] = v41;
    *&v21[v19[11]] = v55;
    sub_10002B03C(v21, v37, type metadata accessor for MetricCard);
    v44 = v50;
    v50[3] = v19;
    v44[4] = &off_1008627E8;
    v45 = sub_100005994(v44);
    sub_10002B03C(v37, v45, type metadata accessor for MetricCard);
    sub_1002DC168(v54);
  }
}

void sub_1003F0274(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, void *a6@<X7>, uint64_t a7@<X8>)
{
  v49 = a6;
  v48 = a5;
  v46 = a4;
  v47 = a2;
  v51 = a1;
  v8 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for MetricCard();
  __chkstk_darwin(v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = type metadata accessor for MetricDetailViewModel();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  if (v8)
  {
    *(a7 + 32) = 0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  else
  {
    v44 = a7;
    v45 = v28;
    v50 = &v43 - v27;
    v43 = v24;
    v29 = v9;
    v30 = v49;
    v31 = [v30 unitManager];
    if (v31)
    {
      v32 = v31;
      v49 = v30;
      sub_10029B104(v51, v31, v50);

      sub_10001B104(v46, v52, &qword_1008DCC60);
      v33 = v53;
      if (v53)
      {
        v34 = v54;
        sub_1000066AC(v52, v53);
        (*(v34 + 8))(v33, v34);
        (*(v10 + 56))(v18, 0, 1, v29);
        sub_100005A40(v52);
      }

      else
      {
        sub_10000EA04(v52, &qword_1008DCC60);
        (*(v10 + 56))(v18, 1, 1, v29);
      }

      sub_10002910C(v50, v45);
      v21[v19[6]] = 0;
      sub_10001B104(v18, v15, &unk_1008DB8A0);
      v35 = *(v10 + 48);
      v36 = v35(v15, 1, v29);
      v37 = v44;
      if (v36 == 1)
      {
        UUID.init()();
        sub_10000EA04(v18, &unk_1008DB8A0);
        if (v35(v15, 1, v29) != 1)
        {
          sub_10000EA04(v15, &unk_1008DB8A0);
        }
      }

      else
      {
        sub_10000EA04(v18, &unk_1008DB8A0);
        (*(v10 + 32))(v12, v15, v29);
      }

      (*(v10 + 32))(v21, v12, v29);
      v38 = &v21[v19[5]];
      v39 = v51;
      v40 = v47;
      *v38 = v51;
      *(v38 + 1) = v40;
      v38[16] = 0;
      v21[v19[7]] = v48 & 1;
      v21[v19[8]] = 1;
      sub_10002B03C(v45, &v21[v19[9]], type metadata accessor for MetricDetailViewModel);
      v21[v19[10]] = v39;
      *&v21[v19[11]] = v49;
      v41 = v43;
      sub_10002B03C(v21, v43, type metadata accessor for MetricCard);
      v37[3] = v19;
      v37[4] = &off_1008627E8;
      v42 = sub_100005994(v37);
      sub_10002B03C(v41, v42, type metadata accessor for MetricCard);
      sub_1002DC168(v50);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003F07EC()
{
  sub_1003F08A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricFormattingHelper();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003F08A8()
{
  if (!qword_1008E2840)
  {
    type metadata accessor for MetricChartData();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E2840);
    }
  }
}

uint64_t sub_1003F091C()
{
  v0 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TimeZone();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Calendar();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100140278(&qword_1008E36F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_100140278(&qword_1008E3700);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Date.FormatStyle();
  sub_100163368(v10, qword_1008EC2F8);
  sub_10001AC90(v10, qword_1008EC2F8);
  v11 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  return Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
}

__n128 sub_1003F0BE8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100140278(&qword_1008E1C78);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_100140278(&qword_1008EC3B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_100140278(&qword_1008EC3B8);
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v34 = sub_100140278(&qword_1008EC3C0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v31 - v13;
  v37 = sub_100140278(&qword_1008EC3C8);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v31 - v15;
  v40 = v2;
  sub_100140278(&qword_1008EC3D0);
  sub_1003F2CFC();
  Chart.init(content:)();
  v16 = sub_10014A6B0(&qword_1008EC438, &qword_1008EC3B0);
  View.chartYAxis<A>(content:)();
  (*(v7 + 8))(v9, v6);
  v17 = type metadata accessor for MetricCardLineChartView();
  v18 = sub_1000625DC(*(v2 + *(v17 + 32)), *(v2 + *(v17 + 32) + 8));
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v41 = v19;
  v20 = type metadata accessor for ScaleType();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = sub_100140278(&qword_1008E1D00);
  *&v42 = v6;
  *(&v42 + 1) = &type metadata for BuilderEmpty;
  *&v43 = v16;
  *(&v43 + 1) = &protocol witness table for BuilderEmpty;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_1002335B8();
  View.chartXScale<A>(domain:type:)();
  sub_10000EA04(v5, &qword_1008E1C78);

  (*(v33 + 8))(v12, v10);
  v39 = v2;
  sub_100140278(&qword_1008EC440);
  *&v42 = v10;
  *(&v42 + 1) = v21;
  *&v43 = OpaqueTypeConformance2;
  *(&v43 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008EC448, &qword_1008EC440);
  v24 = v32;
  v25 = v34;
  View.chartXAxis<A>(content:)();
  (*(v35 + 8))(v14, v25);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = v38;
  (*(v36 + 32))(v38, v24, v37);
  v27 = v26 + *(sub_100140278(&qword_1008EC450) + 36);
  v28 = v47;
  *(v27 + 64) = v46;
  *(v27 + 80) = v28;
  *(v27 + 96) = v48;
  v29 = v43;
  *v27 = v42;
  *(v27 + 16) = v29;
  result = v45;
  *(v27 + 32) = v44;
  *(v27 + 48) = result;
  return result;
}

uint64_t sub_1003F1250(uint64_t a1)
{
  v2 = type metadata accessor for MetricCardLineChartView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *(a1 + 8);
  swift_getKeyPath();
  sub_1003F3094(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1003F30F8(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_100140278(&qword_1008E29B8);
  sub_100140278(&qword_1008EC3E8);
  sub_10014A6B0(&qword_1008E29C0, &qword_1008E29B8);
  sub_1003F3338(&qword_1008DEF18, &type metadata accessor for Date);
  sub_1003F2D80();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1003F1440@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v5 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v5 - 8);
  v61 = v49 - v6;
  v7 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v7 - 8);
  v53 = v49 - v8;
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v13 - 8);
  v65 = v49 - v14;
  v59 = type metadata accessor for LineMark();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100140278(&qword_1008EC3F8);
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v57 = v49 - v16;
  v17 = sub_100140278(&qword_1008EC3F0);
  v64 = *(v17 - 8);
  __chkstk_darwin(v17);
  v62 = v49 - v18;
  v19 = sub_100140278(&qword_1008EC468);
  v66 = *(v19 - 8);
  __chkstk_darwin(v19);
  v58 = v49 - v20;
  v21 = type metadata accessor for MetricChartData();
  v22 = *(a1 + *(v21 + 24));
  v23 = *a1;
  [v22 doubleValueForUnit:v23];
  if (v24 == 0.0)
  {
    v25 = *(v66 + 56);

    return v25(a3, 1, 1, v19);
  }

  else
  {
    v27 = LocalizedStringKey.init(stringLiteral:)();
    v52 = a3;
    v49[1] = v27;
    v50 = v17;
    v51 = v19;
    v49[0] = *(v21 + 20);
    v28 = v12;
    (*(v10 + 104))(v12, enum case for Calendar.Component.day(_:), v9);
    v29 = type metadata accessor for Calendar();
    v30 = v53;
    (*(*(v29 - 8) + 56))(v53, 1, 1, v29);
    static PlottableValue.value<>(_:_:unit:calendar:)();

    sub_10000EA04(v30, &unk_1008E51A0);
    (*(v10 + 8))(v28, v9);
    LocalizedStringKey.init(stringLiteral:)();
    type metadata accessor for MetricCardLineChartView();
    [v22 doubleValueForUnit:v23];
    v31 = v54;
    sub_1004D41D4(*v54, v32);
    v72[0] = v33;
    static PlottableValue.value(_:_:)();

    type metadata accessor for Date();
    v34 = v55;
    LineMark.init<A, B>(x:y:)();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v35 = v57;
    v36 = v59;
    ChartContent.lineStyle(_:)();
    sub_10021D934(v72);
    v37 = (*(v56 + 8))(v34, v36);
    __chkstk_darwin(v37);
    v49[-2] = v31;
    v38 = sub_100140278(&qword_1008EC400);
    v67 = v36;
    v68 = &protocol witness table for LineMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = sub_1003F2EF4();
    v42 = v62;
    v41 = v63;
    ChartContent.symbol<A>(symbol:)();
    (*(v60 + 8))(v35, v41);
    v43 = Color.gradient.getter();
    v70 = v40;
    v71 = v43;
    v67 = v41;
    v68 = v38;
    v69 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v44 = v58;
    v45 = v50;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v64 + 8))(v42, v45);
    v46 = v52;
    v47 = v44;
    v48 = v51;
    (*(v66 + 32))(v52, v47, v51);
    return (*(v66 + 56))(v46, 0, 1, v48);
  }
}

double sub_1003F1CB0@<D0>(uint64_t a1@<X8>)
{
  v2 = Color.gradient.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_1003F1D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for MetricCardLineChartView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AxisMarkValues();
  v15 = __chkstk_darwin(v14 - 8);
  (*(v11 + 104))(v13, enum case for Calendar.Component.day(_:), v10, v15);
  v16 = type metadata accessor for Calendar();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_10000EA04(v9, &unk_1008E51A0);
  (*(v11 + 8))(v13, v10);
  sub_1003F3094(v20[0], v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_1003F30F8(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008EC458);
  sub_1003F3174();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_1003F20C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42[2] = a1;
  v52 = a2;
  v2 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v2 - 8);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AxisTick();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = v42 - v6;
  v48 = type metadata accessor for AxisGridLine();
  v44 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = v42 - v9;
  v10 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100140278(&qword_1008E3780);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v42 - v14;
  v16 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v16 - 8);
  v18 = v42 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100140278(&qword_1008E3768);
  __chkstk_darwin(v23 - 8);
  v43 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v54 = v42 - v26;
  AxisValue.as<A>(_:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000EA04(v18, &unk_1008F73A0);
    (*(v13 + 56))(v54, 1, 1, v12);
  }

  else
  {
    v27 = (*(v20 + 32))(v22, v18, v19);
    v42[1] = v42;
    __chkstk_darwin(v27);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v41[2] = sub_100140278(&qword_1008DE028);
    v41[3] = sub_100046660();
    v41[0] = sub_1003F3284;
    v41[1] = v41;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    v28 = v54;
    (*(v13 + 32))(v54, v15, v12);
    (*(v13 + 56))(v28, 0, 1, v12);
    (*(v20 + 8))(v22, v19);
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v29 = v53;
  AxisGridLine.init(centered:stroke:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v62 = v59;
  v63 = v60;
  v64 = v61;
  static AxisTick.Length.automatic.getter();
  v30 = v47;
  AxisTick.init(centered:length:stroke:)();
  v31 = v43;
  sub_1003F3214(v54, v43);
  v55[0] = v31;
  v32 = v44;
  v33 = v45;
  v34 = v48;
  (*(v44 + 16))(v45, v29, v48);
  v55[1] = v33;
  v35 = v50;
  v36 = v49;
  v37 = v51;
  (*(v50 + 16))(v49, v30, v51);
  v55[2] = v36;
  sub_100248BC0(v55, v52);
  v38 = *(v35 + 8);
  v38(v30, v37);
  v39 = *(v32 + 8);
  v39(v53, v34);
  sub_10000EA04(v54, &qword_1008E3768);
  v38(v36, v37);
  v39(v33, v34);
  return sub_10000EA04(v31, &qword_1008E3768);
}

uint64_t sub_1003F28F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37[1] = a2;
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  if (qword_1008DAA48 != -1)
  {
    swift_once();
  }

  v16 = sub_10001AC90(v9, qword_1008EC2F8);
  (*(v10 + 16))(v12, v16, v9);
  static Date.FormatStyle.Symbol.Weekday.narrow.getter();
  Date.FormatStyle.weekday(_:)();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_1003F3338(&qword_1008E29B0, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v17(v15, v9);
  v37[4] = v38;
  v37[5] = v39;
  sub_10000FCBC();
  v18 = Text.init<A>(_:)();
  v37[0] = a1;
  v20 = v19;
  v22 = v21;
  v38 = static Color.white.getter();
  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  v27 = v26;
  sub_10004642C(v18, v20, v22 & 1);

  if (qword_1008DA678 != -1)
  {
    swift_once();
  }

  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10004642C(v23, v25, v27 & 1);

  type metadata accessor for MetricCardLineChartView();
  type metadata accessor for Date();
  sub_1003F3338(&qword_1008E4080, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.< infix(_:_:)();
  v36 = 0.3;
  *a3 = v28;
  *(a3 + 8) = v30;
  *(a3 + 16) = v32 & 1;
  if ((result & 1) == 0)
  {
    v36 = 1.0;
  }

  *(a3 + 24) = v34;
  *(a3 + 32) = v36;
  return result;
}

unint64_t sub_1003F2CFC()
{
  result = qword_1008EC3D8;
  if (!qword_1008EC3D8)
  {
    sub_100141EEC(&qword_1008EC3D0);
    sub_1003F2D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC3D8);
  }

  return result;
}

unint64_t sub_1003F2D80()
{
  result = qword_1008EC3E0;
  if (!qword_1008EC3E0)
  {
    sub_100141EEC(&qword_1008EC3E8);
    sub_100141EEC(&qword_1008EC3F0);
    sub_100141EEC(&qword_1008EC3F8);
    sub_100141EEC(&qword_1008EC400);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    sub_1003F2EF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC3E0);
  }

  return result;
}

unint64_t sub_1003F2EF4()
{
  result = qword_1008EC408;
  if (!qword_1008EC408)
  {
    sub_100141EEC(&qword_1008EC400);
    sub_1003F2F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC408);
  }

  return result;
}

unint64_t sub_1003F2F80()
{
  result = qword_1008EC410;
  if (!qword_1008EC410)
  {
    sub_100141EEC(&qword_1008EC418);
    sub_1003F3038();
    sub_10014A6B0(&qword_1008EC428, &qword_1008EC430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC410);
  }

  return result;
}

unint64_t sub_1003F3038()
{
  result = qword_1008EC420;
  if (!qword_1008EC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC420);
  }

  return result;
}

uint64_t sub_1003F3094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCardLineChartView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F30F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCardLineChartView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003F3174()
{
  result = qword_1008EC460;
  if (!qword_1008EC460)
  {
    sub_100141EEC(&qword_1008EC458);
    sub_100251EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC460);
  }

  return result;
}

uint64_t sub_1003F3214(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E3768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F32A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MetricCardLineChartView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1003F3338(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003F3388()
{
  result = qword_1008EC470;
  if (!qword_1008EC470)
  {
    sub_100141EEC(&qword_1008EC450);
    sub_100141EEC(&qword_1008EC3C0);
    sub_100141EEC(&qword_1008EC440);
    sub_100141EEC(&qword_1008EC3B8);
    sub_100141EEC(&qword_1008E1D00);
    sub_100141EEC(&qword_1008EC3B0);
    sub_10014A6B0(&qword_1008EC438, &qword_1008EC3B0);
    swift_getOpaqueTypeConformance2();
    sub_1002335B8();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008EC448, &qword_1008EC440);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC470);
  }

  return result;
}

uint64_t sub_1003F359C()
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1003F37E0()
{
  v1 = [v0 presentedViewController];

  return v1;
}

id sub_1003F38B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutNotificationBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F3918(void *a1, void *a2)
{
  v4 = FIUIEffectiveGoalTypeForWorkout();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (qword_1008DAA50 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

    if (v4 == 3)
    {
      return sub_1003F45D0(a1, a2);
    }

LABEL_30:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!v4)
  {
    if ([a1 _activityMoveMode] == 2)
    {
      if (qword_1008DAA50 == -1)
      {
LABEL_8:
        v5 = qword_1008EC4A8;
        [a1 duration];
        v6 = [v5 stringFromTimeInterval:?];

        if (!v6)
        {
          return 0;
        }

        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v7;
      }

LABEL_27:
      swift_once();
      goto LABEL_8;
    }

    return sub_1003F45D0(a1, a2);
  }

  if (v4 != 1)
  {
    goto LABEL_30;
  }

  v9 = [a1 fiui_activityType];
  if (!v9)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = v9;
  v11 = FIUIDistanceTypeForActivityType();

  v12 = [a2 userDistanceHKUnitForDistanceType:v11];
  v13 = [a1 totalDistance];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  [v13 doubleValueForUnit:v12];
  v16 = v15;

  if ([a1 workoutActivityType] == 46)
  {
    v17 = [objc_allocWithZone(NSNumber) initWithDouble:v16];
    v18 = sub_1003F42FC(v17, v12);
    v20 = v19;

    if (v20)
    {
      goto LABEL_24;
    }
  }

  if (qword_1008DAA78 != -1)
  {
    swift_once();
  }

  v21 = qword_1008EC4D0;
  v22 = objc_allocWithZone(NSNumber);
  v23 = v21;
  v24 = [v22 initWithDouble:v16];
  v25 = [v23 stringFromNumber:v24];

  if (v25)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
LABEL_23:
    v18 = Double.description.getter();
  }

LABEL_24:
  v26 = [objc_opt_self() lengthFormatterUnitFromUnit:v12];
  if (qword_1008DAA68 != -1)
  {
    swift_once();
  }

  v27 = qword_1008EC4C0;
  v28 = [v27 unitStringFromValue:v26 unit:100.0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v18;
}

id sub_1003F3D58(void *a1, unsigned __int8 a2)
{
  sub_1003F4848(a2, &v39);
  v4 = [a1 device];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 _isConnectedGymDevice];

    if (v6)
    {
      v7 = v39;
      v8 = [a1 device];
      if (!v8 || ((v9 = v8, v7 <= 60.0) ? (v10 = v7) : (v10 = 60.0), v11 = [objc_opt_self() iconForConnectedGymDevice:v8 preferredIconWidth:v10], v9, !v11))
      {
        sub_1003F493C(a1, 0, v7, v7 / 10.0);
      }

      goto LABEL_21;
    }
  }

  v12 = [a1 sourceRevision];
  v13 = [v12 source];

  LODWORD(v12) = [v13 _hasFirstPartyBundleID];
  if (v12)
  {
    v14 = [a1 sourceRevision];
    v15 = [v14 source];

    LOBYTE(v14) = [v15 _isAppleWatch];
    if ((v14 & 1) != 0 || [a1 _isWatchWorkout])
    {
      v16 = v40;
      v17 = v39;
      v18 = v41;
      v19 = v40;
      v20 = sub_1003F493C(a1, v16, v17, v18);
      sub_1003F5298(&v39);
      v21 = [a1 fiui_activityType];
      FIUIStaticWorkoutIconImage();

      sub_1003F5298(&v39);
      return v20;
    }

    sub_1003F4D64(v39);
    goto LABEL_21;
  }

  if (!a2)
  {
    v32 = v39;
    if (![a1 _isWatchWorkout])
    {
      v36 = [a1 sourceRevision];
      v37 = [v36 source];

      v38 = [v37 bundleIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003F4D64(v32);
      sub_1003F5298(&v39);

      return 0;
    }

    sub_1003F4E7C(a1, v32);
LABEL_21:
    sub_1003F5298(&v39);
    return 0;
  }

  v23 = v40;
  v24 = v39;
  v25 = v41;
  v26 = v40;
  v27 = sub_1003F493C(a1, v23, v24, v25);
  sub_1003F5298(&v39);
  v28 = [a1 fiui_activityType];
  v29 = FIUIStaticWorkoutIconImage();

  v30 = v42;
  v31 = v29;
  if ([a1 _isWatchWorkout])
  {
    sub_1003F4E7C(a1, v30);

    sub_1003F5298(&v39);
  }

  else
  {
    v33 = [a1 sourceRevision];
    v34 = [v33 source];

    v35 = [v34 bundleIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003F4D64(v30);
    sub_1003F5298(&v39);
  }

  return v27;
}

id sub_1003F41BC()
{
  result = [v0 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v3 + 16))
    {
      v6 = sub_100066F20(v4, v5);
      v8 = v7;

      if (v8)
      {
        sub_10000B1B4(*(v3 + 56) + 32 * v6, v11);

        sub_1000059F8(0, &qword_1008E1750);
        if (swift_dynamicCast())
        {
          v9 = [v10 integerValue];

          return v9;
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_1003F42FC(void *a1, void *a2)
{
  [a1 doubleValue];
  if (fabs(v4 + -33.3333333) >= 0.01)
  {
    v10 = objc_opt_self();
    v11 = [v10 meterUnitWithMetricPrefix:9];
    v12 = [a2 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [v10 mileUnit];
      v14 = [a2 isEqual:v13];

      if (!v14)
      {
        goto LABEL_22;
      }
    }

    if (qword_1008DAA80 != -1)
    {
      swift_once();
    }

    v15 = [qword_1008EC4D8 stringFromNumber:a1];
    if (!v15)
    {
LABEL_22:
      v16 = [v10 footUnit];
      v17 = [a2 isEqual:v16];

      if ((v17 & 1) == 0)
      {
        v18 = [v10 yardUnit];
        v19 = [a2 isEqual:v18];

        if ((v19 & 1) == 0)
        {
          v20 = [v10 meterUnit];
          v21 = [a2 isEqual:v20];

          if (!v21)
          {
            return 0;
          }
        }
      }

      if (qword_1008DAA88 != -1)
      {
        swift_once();
      }

      v15 = [qword_1008EC4E0 stringFromNumber:a1];
      if (!v15)
      {
        return 0;
      }
    }

    v8 = v15;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_16:

    return v9;
  }

  result = FIUIBundle();
  if (result)
  {
    v6 = result;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F45D0(void *a1, id a2)
{
  v3 = [a2 userActiveEnergyBurnedUnit];
  v4 = [a1 totalEnergyBurned];
  if (v4)
  {
    v5 = v4;
    if (qword_1008DAA70 != -1)
    {
      swift_once();
    }

    v6 = qword_1008EC4C8;
    v7 = [objc_allocWithZone(NSNumber) initWithInt:_HKWorkoutFlooredValueForQuantity()];
    v8 = [v6 stringFromNumber:v7];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_8;
    }
  }

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_8:
  v10 = objc_opt_self();
  v11 = [v10 energyFormatterUnitFromUnit:v3];
  if (qword_1008DAA60 != -1)
  {
    swift_once();
  }

  v12 = qword_1008EC4B8;
  sub_1000059F8(0, &qword_1008DB898);
  v13 = v12;
  v14 = [v10 largeCalorieUnit];
  v15 = static NSObject.== infix(_:_:)();

  [v13 setForFoodEnergyUse:v15 & 1];
  v16 = [v13 unitStringFromValue:v11 unit:100.0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void sub_1003F4848(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 165.0;
    }

    else
    {
      v3 = 100.0;
    }

    if (a1 == 1)
    {
      v4 = 20.0;
    }

    else
    {
      v4 = 10.0;
    }

    if (a1 == 1)
    {
      v5 = 60.0;
    }

    else
    {
      v5 = 30.0;
    }

    v6 = [objc_opt_self() blackColor];
    v7 = [v6 colorWithAlphaComponent:0.28];

    v8 = 6;
  }

  else
  {
    v7 = a1;
    v5 = 0.0;
    v4 = 4.0;
    v8 = 2;
    v3 = 40.0;
  }

  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v5;
}

id sub_1003F493C(void *a1, uint64_t a2, double a3, double a4)
{
  if ([a1 _goalType])
  {
    sub_1003F4AA8();
    v9 = v8;
    v10 = [objc_opt_self() metricColorsForGoalTypeIdentifier:{objc_msgSend(a1, "_goalType")}];
    v11 = objc_opt_self();
    [v11 lock];
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = [objc_opt_self() workoutRingWithPercent:v10 colors:v9 diameter:a3 thickness:a4];
    [v11 unlock];
    [v11 commit];

    return v12;
  }

  if (a2)
  {
    result = FIUICircularImage();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = FIUICircularWorkoutGradientImage();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1003F4AA8()
{
  v1 = [v0 _goalType];
  if (v1 <= 1)
  {
    if (!v1)
    {
      return;
    }

    if (v1 == 1)
    {
      v2 = [v0 totalDistance];
      if (!v2)
      {
        return;
      }

      v3 = v2;
      v4 = [v0 _goal];
      if (v4)
      {
        v5 = v4;
        v6 = objc_opt_self();
        v7 = [v6 meterUnit];
        [v3 doubleValueForUnit:v7];

        v8 = [v6 meterUnit];
LABEL_14:
        v14 = v8;
        [v5 doubleValueForUnit:v14];

        goto LABEL_15;
      }

LABEL_16:

      return;
    }

    goto LABEL_18;
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v10 = [v0 totalEnergyBurned];
      if (!v10)
      {
        return;
      }

      v3 = v10;
      v11 = [v0 _goal];
      if (v11)
      {
        v5 = v11;
        v12 = objc_opt_self();
        v13 = [v12 kilocalorieUnit];
        [v3 doubleValueForUnit:v13];

        v8 = [v12 kilocalorieUnit];
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v9 = [v0 _goal];
  if (v9)
  {
    v3 = v9;
    [v0 duration];
    v5 = [objc_opt_self() secondUnit];
    [v3 doubleValueForUnit:v5];
LABEL_15:
  }
}

id sub_1003F4D64(double a1)
{
  v2 = [objc_allocWithZone(CHPhoneIconParameters) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setBundleID:v3];

  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  [v2 setPreferredAppStoreIconWidth:v6 * a1];
  [v2 setAppIconFormat:2];
  v7 = [objc_opt_self() fetchPhoneIconWithParameters:v2];

  return v7;
}

id sub_1003F4E7C(void *a1, double a2)
{
  v4 = [objc_allocWithZone(CHWatchIconParameters) init];
  v5 = [a1 sourceRevision];
  v6 = [v5 source];

  v7 = [v6 bundleIdentifier];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v4 setBundleID:v7];

  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  [v4 setPreferredAppStoreIconWidth:v10 * a2];
  [v4 setIconVariant2x:50];
  [v4 setIconVariant3x:50];
  v11 = [objc_opt_self() fetchWatchIconWithParameters:v4];

  return v11;
}

void sub_1003F502C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v5 setUnitsStyle:0];
  [v5 setAllowedUnits:a2];
  [v5 setZeroFormattingBehavior:0];

  *a3 = v5;
}

void sub_1003F50E4(uint64_t a1, Class *a2, void *a3)
{
  v4 = [objc_allocWithZone(*a2) init];
  [v4 setUnitStyle:2];

  *a3 = v4;
}

id sub_1003F5158()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:1];
  [v0 setMinimumFractionDigits:2];
  [v0 setMaximumFractionDigits:2];
  result = [v0 setRoundingMode:2];
  qword_1008EC4D0 = v0;
  return result;
}

id sub_1003F521C(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  v9 = [objc_allocWithZone(NSNumberFormatter) init];
  [v9 setNumberStyle:a2];
  result = [v9 *a3];
  *a5 = v9;
  return result;
}

uint64_t sub_1003F52C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1003F5324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1003F53A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v75 = a4;
  v76 = a2;
  v6 = sub_100140278(&qword_1008E4EC8);
  __chkstk_darwin(v6 - 8);
  v73 = &v62 - v7;
  v8 = type metadata accessor for CatalogTipSectionItem();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v62 - v11;
  v12 = sub_100140278(&qword_1008EC4E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for CatalogLockup();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v74 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100140278(&qword_1008EC4F0);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = type metadata accessor for ShelfLockupDescriptor();
  __chkstk_darwin(v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v27;
  v30 = v29;
  sub_10001B104(a1, v23, &qword_1008EC4F0);
  if ((*(v28 + 48))(v23, 1, v30) == 1)
  {

    sub_10000EA04(v76, &qword_1008EC4E8);
    sub_10000EA04(a1, &qword_1008EC4F0);
    v31 = v23;
    v32 = &qword_1008EC4F0;
  }

  else
  {
    v68 = a1;
    (*(v28 + 32))(v26, v23, v30);
    v33 = v76;
    sub_10001B104(v76, v17, &qword_1008EC4E8);
    v34 = v19;
    v35 = *(v19 + 48);
    v36 = v28;
    v37 = v18;
    if (v35(v17, 1, v18) == 1)
    {

      sub_10000EA04(v33, &qword_1008EC4E8);
      sub_10000EA04(v68, &qword_1008EC4F0);
      (*(v36 + 8))(v26, v30);
      v31 = v17;
      v32 = &qword_1008EC4E8;
    }

    else
    {
      v67 = v36;
      v38 = v74;
      (*(v34 + 32))(v74, v17, v37);
      (*(v34 + 16))(v14, v38, v37);
      (*(v34 + 56))(v14, 0, 1, v37);

      v39 = v73;
      sub_10043F2E0(v14, a3, v73);
      if ((*(v71 + 48))(v39, 1, v72) != 1)
      {
        v42 = v39;
        v43 = v69;
        sub_1002FC1E0(v42, v69);
        sub_100140278(&qword_1008F5530);
        Dependencies.resolve<A>(failureHandler:)();
        v44 = v26;
        v45 = ShelfLockupDescriptor.identifier.getter();
        v72 = v46;
        v73 = v45;
        v71 = v37;
        sub_1000066AC(v77, v78);
        v47 = ShelfLockupDescriptor.galleryNameTags.getter();
        v48 = v34;
        isa = MediaTagStringBuilding.attributedString(for:)(v47).super.isa;

        sub_1000066AC(v77, v78);
        v49 = ShelfLockupDescriptor.galleryDescriptionTags.getter();
        v65 = MediaTagStringBuilding.attributedString(for:)(v49).super.isa;

        v64 = ShelfLockupDescriptor.galleryDestination.getter();
        v63 = ShelfLockupDescriptor.galleryDisplayStyle.getter();
        v50 = v70;
        sub_1002FC17C(v43, v70);
        sub_1000066AC(v77, v78);
        v62 = v30;
        v51 = ShelfLockupDescriptor.titleTags.getter();
        v52 = MediaTagStringBuilding.attributedString(for:)(v51).super.isa;

        v53 = [(objc_class *)v52 string];

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        sub_10000EA04(v76, &qword_1008EC4E8);
        sub_10000EA04(v68, &qword_1008EC4F0);
        sub_100321AC0(v43);
        (*(v48 + 8))(v74, v71);
        (*(v67 + 8))(v44, v62);
        v57 = v75;
        v58 = v72;
        *v75 = v73;
        v57[1] = v58;
        v59 = v65;
        v57[2] = isa;
        v57[3] = v59;
        LOBYTE(v59) = v63;
        *(v57 + 32) = v64;
        *(v57 + 33) = v59;
        v60 = type metadata accessor for CatalogTipSection();
        sub_1002FC1E0(v50, v57 + *(v60 + 36));
        v61 = (v57 + *(v60 + 40));
        *v61 = v54;
        v61[1] = v56;
        sub_100005A40(v77);
        return (*(*(v60 - 8) + 56))(v57, 0, 1, v60);
      }

      sub_10000EA04(v33, &qword_1008EC4E8);
      sub_10000EA04(v68, &qword_1008EC4F0);
      (*(v34 + 8))(v38, v37);
      (*(v67 + 8))(v26, v30);
      v32 = &qword_1008E4EC8;
      v31 = v39;
    }
  }

  sub_10000EA04(v31, v32);
  v40 = type metadata accessor for CatalogTipSection();
  return (*(*(v40 - 8) + 56))(v75, 1, 1, v40);
}

uint64_t sub_1003F5BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  type metadata accessor for ScalarDictionary();
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for ImpressionMetrics.ID();
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = type metadata accessor for MetricClickElement();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[44] = v9;
  v5[45] = v8;

  return _swift_task_switch(sub_1003F5D58, v9, v8);
}

uint64_t sub_1003F5D58()
{
  v1 = v0[34];
  v2 = v1 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation;
  v0[46] = *(v1 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation);
  v3 = *(v2 + 8);
  v0[47] = v3;
  if (v3 && (v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_configurationTask), (v0[48] = v4) != 0))
  {

    v5 = swift_task_alloc();
    v0[49] = v5;
    v6 = sub_100140278(&qword_1008EB640);
    *v5 = v0;
    v5[1] = sub_1003F5F20;

    return Task.value.getter(v6, v4, &type metadata for () + 8, v6, &protocol self-conformance witness table for Error);
  }

  else
  {
    v7 = v0[30];

    v8 = type metadata accessor for ImpressionMetrics();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1003F5F20()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {

    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_1003F63B0;
  }

  else
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_1003F603C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003F603C()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v20 = v0[38];
  v18 = v0[39];
  v19 = v0[37];
  v21 = v0[36];
  v4 = v0[34];
  v22 = v0[30];

  sub_100140278(&qword_1008DD8E0);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_1006D6950;
  *(inited + 40) = 0xE400000000000000;
  v7 = *(v4 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_title);
  v8 = *(v4 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_title + 8);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x657079546469;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x64695F737469;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "impressionType");
  *(inited + 143) = -18;
  (*(v3 + 104))(v1, enum case for MetricClickElement.lockup(_:), v2);

  v11 = MetricClickElement.rawValue.getter();
  v13 = v12;
  (*(v3 + 8))(v1, v2);
  v6[18] = v11;
  v6[19] = v13;
  v6[21] = &type metadata for String;
  v6[22] = 0x6973736572706D69;
  v6[23] = 0xEF7865646E496E6FLL;
  v14 = IndexPath.row.getter();
  v6[27] = &type metadata for Int;
  v6[24] = v14;
  sub_1002FC244(v6);
  swift_setDeallocating();
  sub_100140278(&qword_1008DD8E8);
  swift_arrayDestroy();
  IndexPath.row.getter();

  ImpressionMetrics.ID.init(parent:element:index:)();
  (*(v19 + 16))(v20, v18, v21);
  ScalarDictionary.init()();
  sub_1002FC244(_swiftEmptyArrayStorage);
  sub_1002FC244(_swiftEmptyArrayStorage);
  ImpressionMetrics.init(id:fields:custom:commonFields:clickLocationFields:)();

  (*(v19 + 8))(v18, v21);
  v15 = type metadata accessor for ImpressionMetrics();
  (*(*(v15 - 8) + 56))(v22, 0, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003F63B0()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1003F6458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView;
  v7 = type metadata accessor for MindfulnessSessionDetailItemView();
  v8 = [objc_allocWithZone(v7) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView;
  v10 = [objc_allocWithZone(v7) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v9] = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_bottomDetailItemView;
  v12 = [objc_allocWithZone(v7) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v11] = v12;
  sub_100140278(&unk_1008E4E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D68C0;
  v14 = *&v3[v6];
  v15 = *&v3[v9];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  *(v13 + 48) = v12;
  *&v3[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_itemViews] = v13;
  v16 = v14;
  v17 = v15;
  v18 = v12;
  if (a3)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v29.receiver = v3;
  v29.super_class = type metadata accessor for MindfulnessSessionDetailSideBySideItemsCell();
  v20 = objc_msgSendSuper2(&v29, "initWithStyle:reuseIdentifier:", a1, v19);

  v21 = v20;
  v22 = [v21 contentView];
  [v22 addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView]];

  v23 = [v21 contentView];
  [v23 addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView]];

  v27 = &type metadata for Health;
  v28 = sub_1003F7600();
  LOBYTE(v23) = isFeatureEnabled(_:)();
  sub_100005A40(v26);
  if (v23)
  {
    v24 = [v21 contentView];
    [v24 addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_bottomDetailItemView]];

    sub_1003F6BA4();
  }

  else
  {
    sub_1003F6714();
  }

  return v21;
}

void sub_1003F6714()
{
  v1 = v0;
  v36 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D68B0;
  v3 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView;
  v4 = [*&v1[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView] topAnchor];
  v5 = [v1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [*&v1[v3] leadingAnchor];
  v9 = [v1 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
  *(v2 + 40) = v11;
  v12 = [*&v1[v3] trailingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:sub_1000B7BC0()];
  *(v2 + 48) = v15;
  v16 = [*&v1[v3] bottomAnchor];
  v17 = [v1 contentView];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintLessThanOrEqualToAnchor:v18];
  *(v2 + 56) = v19;
  v20 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView;
  v21 = [*&v1[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView] topAnchor];
  v22 = [*&v1[v3] topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v2 + 64) = v23;
  v24 = [*&v1[v20] leadingAnchor];
  v25 = [v1 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:sub_1000B7BC0()];
  *(v2 + 72) = v27;
  v28 = [*&v1[v20] trailingAnchor];
  v29 = [v1 contentView];
  v30 = [v29 trailingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:-16.0];
  *(v2 + 80) = v31;
  v32 = [*&v1[v20] bottomAnchor];
  v33 = [v1 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v32 constraintLessThanOrEqualToAnchor:v34];
  *(v2 + 88) = v35;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

void sub_1003F6BA4()
{
  v1 = v0;
  v48 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006EE9A0;
  v3 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView;
  v4 = [*&v1[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView] topAnchor];
  v5 = [v1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [*&v1[v3] leadingAnchor];
  v9 = [v1 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
  *(v2 + 40) = v11;
  v12 = [*&v1[v3] trailingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:sub_1000B7BC0()];
  *(v2 + 48) = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView;
  v17 = [*&v1[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView] topAnchor];
  v18 = [*&v1[v3] topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v2 + 56) = v19;
  v20 = [*&v1[v16] leadingAnchor];
  v21 = [v1 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:sub_1000B7BC0()];
  *(v2 + 64) = v23;
  v24 = [*&v1[v16] trailingAnchor];
  v25 = [v1 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-16.0];
  *(v2 + 72) = v27;
  v28 = [*&v1[v16] bottomAnchor];
  v29 = [v1 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintLessThanOrEqualToAnchor:v30];
  *(v2 + 80) = v31;
  v32 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_bottomDetailItemView;
  v33 = [*&v1[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_bottomDetailItemView] topAnchor];
  v34 = [*&v1[v3] bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:16.0];

  *(v2 + 88) = v35;
  v36 = [*&v1[v32] leadingAnchor];
  v37 = [v1 contentView];
  v38 = [v37 leadingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:16.0];
  *(v2 + 96) = v39;
  v40 = [*&v1[v32] trailingAnchor];
  v41 = [v1 contentView];
  v42 = [v41 trailingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:-16.0];
  *(v2 + 104) = v43;
  v44 = [*&v1[v32] bottomAnchor];
  v45 = [v1 contentView];
  v46 = [v45 bottomAnchor];

  v47 = [v44 constraintLessThanOrEqualToAnchor:v46];
  *(v2 + 112) = v47;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 activateConstraints:isa];
}

void sub_1003F7190(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = 0;
    v5 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_itemViews;
    v6 = (a1 + 40);
    do
    {
      v10 = *(v6 - 1);
      v11 = *v6;
      v12 = *(v3 + v5);
      if (v12 >> 62)
      {
        if (v4 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (v4 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v7 = v10;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v13 = *(v12 + 8 * v4 + 32);
        v7 = v10;
        v8 = v13;
      }

      v9 = v8;
      sub_10069386C(v10, v11);

LABEL_5:
      ++v4;
      v6 += 16;
    }

    while (v2 != v4);
  }
}

void sub_1003F72A0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MindfulnessSessionDetailSideBySideItemsCell();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView];
  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel];
  v3 = v1;
  [v2 setText:0];
  [*&v3[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel] setAttributedText:0];

  v4 = *&v0[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView];
  v5 = *&v4[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel];
  v6 = v4;
  [v5 setText:0];
  [*&v6[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel] setAttributedText:0];

  v7 = *&v0[OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_bottomDetailItemView];
  v8 = *&v7[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_titleLabel];
  v9 = v7;
  [v8 setText:0];
  [*&v9[OBJC_IVAR____TtC10FitnessApp32MindfulnessSessionDetailItemView_subtitleLabel] setAttributedText:0];
}

id sub_1003F7440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindfulnessSessionDetailSideBySideItemsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003F7504()
{
  v1 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_leadingDetailItemView;
  v2 = type metadata accessor for MindfulnessSessionDetailItemView();
  v3 = [objc_allocWithZone(v2) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_trailingDetailItemView;
  v5 = [objc_allocWithZone(v2) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell_bottomDetailItemView;
  v7 = [objc_allocWithZone(v2) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v6) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1003F7600()
{
  result = qword_1008EC540;
  if (!qword_1008EC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC540);
  }

  return result;
}

uint64_t sub_1003F776C()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHWorkoutDetailAnalyticsEventBuilder_presentedDetails;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    v10[0] = *(v1 + v2);

    sub_100140278(&qword_1008EC580);
    sub_1003F8224();
    sub_10000FCBC();
    v3 = Sequence<>.joined(separator:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736302;
  }

  v10[3] = &type metadata for String;
  v10[0] = v3;
  v10[1] = v5;
  swift_beginAccess();
  sub_10055A82C(v10, 0x6465646E61707865, 0xEF736C6961746544);
  swift_endAccess();

  sub_1003F78B8(v6);
  v8 = v7;

  return v8;
}

void sub_1003F78B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008EA670);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10000B1B4(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_1001AA76C(v24, v23);
    sub_1001AC3CC();

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_100066F20(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

id sub_1003F7B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailAnalyticsEventBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F7CEC(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  swift_beginAccess();
  v7 = a1;
  sub_1001A45BC(&v9, a3, a4);
  swift_endAccess();
}

id sub_1003F7E10(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___CHWorkoutDetailAnalyticsEventBuilder_events] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CHWorkoutDetailAnalyticsEventBuilder_presentedDetails] = &_swiftEmptySetSingleton;
  v30 = &type metadata for String;
  v28 = sub_1005BE978();
  v29 = v5;
  swift_beginAccess();
  sub_10055A82C(&v28, 0xD000000000000011, 0x8000000100754FC0);
  swift_endAccess();
  if (!a2)
  {
    v14 = sub_1005BEA7C();
    v30 = &type metadata for String;
    v28 = v14;
    v29 = v15;
    swift_beginAccess();
    sub_10055A82C(&v28, 0x7974697669746361, 0xEC00000065707954);
    swift_endAccess();
    v16 = sub_1005BEB80();
    v30 = &type metadata for String;
    v28 = v16;
    v29 = v17;
    swift_beginAccess();
    sub_10055A82C(&v28, 0x6E6F697461636F6CLL, 0xEC00000065707954);
    swift_endAccess();
    v18 = sub_1005BEC7C();
    v30 = &type metadata for String;
    v28 = v18;
    v29 = v19;
    swift_beginAccess();
    sub_10055A82C(&v28, 0xD000000000000014, 0x800000010075BD30);
    swift_endAccess();
LABEL_11:
    v27.receiver = v3;
    v27.super_class = type metadata accessor for WorkoutDetailAnalyticsEventBuilder();
    return objc_msgSendSuper2(&v27, "init");
  }

  v6 = a2;
  v7 = [v6 workoutConfiguration];
  [v7 activityType];

  v8 = HKWorkoutActivityType.shortenedAnalyticsKey.getter();
  v30 = &type metadata for String;
  v28 = v8;
  v29 = v9;
  swift_beginAccess();
  sub_10055A82C(&v28, 0x7974697669746361, 0xEC00000065707954);
  swift_endAccess();
  v10 = [v6 workoutConfiguration];
  v11 = [v10 locationType];

  if (v11 == 1)
  {
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  else if (v11 == 2)
  {
    v12 = 0xE600000000000000;
    v13 = 0x726F6F646E69;
  }

  else
  {
    if (v11 != 3)
    {
      goto LABEL_13;
    }

    v12 = 0xE700000000000000;
    v13 = 0x726F6F6474756FLL;
  }

  v30 = &type metadata for String;
  v28 = v13;
  v29 = v12;
  swift_beginAccess();
  sub_10055A82C(&v28, 0x6E6F697461636F6CLL, 0xEC00000065707954);
  swift_endAccess();
  v20 = [v6 workoutConfiguration];
  [v20 swimmingLocationType];

  v21 = _HKWorkoutSwimmingLocationTypeName();
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v30 = &type metadata for String;
    v28 = v23;
    v29 = v25;
    swift_beginAccess();
    sub_10055A82C(&v28, 0xD000000000000014, 0x800000010075BD30);
    swift_endAccess();

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1003F8224()
{
  result = qword_1008EC588;
  if (!qword_1008EC588)
  {
    sub_100141EEC(&qword_1008EC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC588);
  }

  return result;
}

unint64_t sub_1003F829C()
{
  result = qword_1008EC590;
  if (!qword_1008EC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC590);
  }

  return result;
}

unint64_t sub_1003F82F4()
{
  result = qword_1008EC598;
  if (!qword_1008EC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC598);
  }

  return result;
}

double sub_1003F834C@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  a1[12] = v15;
  a1[13] = v16;
  a1[14] = v17;
  a1[15] = v18;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = v14;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double sub_1003F8454@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  a1[12] = v15;
  a1[13] = v16;
  a1[14] = v17;
  a1[15] = v18;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = v14;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1003F8528()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925898);
  sub_10001AC90(v0, qword_100925898);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1003F8594@<X0>(uint64_t a1@<X8>)
{
  v14[5] = a1;
  v1 = type metadata accessor for StringComparisonOperator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = v4;
  v5 = sub_100140278(&qword_1008EC8B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  v14[4] = swift_getKeyPath();
  (*(v2 + 104))(v4, enum case for StringComparisonOperator.contains(_:), v1);
  v14[2] = sub_100140278(&qword_1008EC8E8);
  v14[1] = sub_100140278(&qword_1008EC8B8);
  sub_10036F81C();
  sub_10014A6B0(&qword_1008EC8F0, &qword_1008EC8E8);
  sub_10014A6B0(&qword_1008EC8C8, &qword_1008EC8B8);
  sub_10014A6B0(&qword_1008EC818, &qword_1008EC758);
  sub_1001C2D24();
  ParameterSummaryWhenCondition.init<A>(_:identifier:_:_:otherwise:)();
  sub_10014A6B0(&qword_1008EC8C0, &qword_1008EC8B0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v11, v5);
}

uint64_t sub_1003F88FC@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v2 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EC8E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  swift_getKeyPath();
  (*(v2 + 104))(v4, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_100140278(&qword_1008EC8B8);
  sub_10036F81C();
  sub_10014A6B0(&qword_1008EC8C8, &qword_1008EC8B8);
  sub_10014A6B0(&qword_1008EC8F8, &qword_1008EC760);
  ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
  sub_10014A6B0(&qword_1008EC8F0, &qword_1008EC8E8);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v11, v5);
}

uint64_t sub_1003F8C44()
{
  swift_getKeyPath();
  sub_10036F81C();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v1 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D68D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1003F8D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a1;
  v15[1] = a2;
  v2 = sub_100140278(&qword_1008EC8D0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008EC8D8);
  __chkstk_darwin(v3);
  v4 = sub_100140278(&qword_1008EC8B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  sub_10036F81C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x206E65704FLL;
  v11._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC8E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008EC8C8, &qword_1008EC8B8);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v10, v4);
}

uint64_t sub_1003F9078()
{
  swift_getKeyPath();
  sub_10036F81C();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D4E70;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1003F912C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a1;
  v40 = a4;
  v5 = type metadata accessor for UUID();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutActivityEntity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v37 = a2;
  IntentParameter.wrappedValue.getter();
  v18 = *(v9 + 48);
  if (v18(v17, 1, v8))
  {
    sub_10000EA04(v17, &qword_1008E65E0);
    IntentParameter.wrappedValue.getter();
    v20 = v44;
    v19 = v45;

    sub_1001C7018(&v44);
  }

  else
  {
    sub_1002CC590(v17, v11);
    sub_10000EA04(v17, &qword_1008E65E0);
    sub_100407834(&qword_1008EE840, &type metadata accessor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v21;
    v22._countAndFlagsBits = 47;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = [*&v11[*(v8 + 20)] UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    (*(v36 + 8))(v7, v5);
    v20 = v44;
    v19 = v45;
    sub_1002CC5F4(v11);
  }

  IntentParameter.wrappedValue.getter();
  v25 = v46;
  sub_1001C7018(&v44);
  v26 = [v25 isMultiSportWorkout];

  if (v26 && (IntentParameter.wrappedValue.getter(), v27 = v18(v14, 1, v8), sub_10000EA04(v14, &qword_1008E65E0), v27 == 1) || (IntentParameter.wrappedValue.getter(), v28 = v42, v42 == 10))
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v42 = 0xD00000000000001ELL;
    v43 = 0x8000000100749FF0;
    v29._countAndFlagsBits = v20;
    v29._object = v19;
    String.append(_:)(v29);
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v30._countAndFlagsBits = 0x617373656E746966;
    v30._object = 0xEA00000000007070;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0xD000000000000014;
    v31._object = 0x800000010075C050;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v20;
    v32._object = v19;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 47;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v41 = v28;
    _print_unlocked<A, B>(_:_:)();
  }

  URL.init(string:)();
}

uint64_t sub_1003F95F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_100140278(&unk_1008EB5B0);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003F96EC, 0, 0);
}

uint64_t sub_1003F96EC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_1003F912C(*(v0 + 40), *(v0 + 48), *(v0 + 56), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(*(v0 + 64), &unk_1008EB5B0);
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = type metadata accessor for NavigatorContext();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 16) = v8;
    *(v0 + 24) = v7;
    v9 = objc_msgSendSuper2((v0 + 16), "init");
    sub_1004DA120(v4, v9);

    (*(v5 + 8))(v4, v6);
  }

  static IntentResult.result<>()();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003F9884(_OWORD *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v31 = a1[12];
  v32 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v33 = a1[14];
  v34 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v27 = a1[8];
  v28 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v29 = a1[10];
  v30 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v23 = a1[4];
  v24 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v25 = a1[6];
  v26 = v12;
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v21 = a1[2];
  v22 = v14;
  v19[28] = v31;
  v19[29] = v3;
  v17 = a1[15];
  v19[30] = v33;
  v19[31] = v17;
  v19[24] = v27;
  v19[25] = v7;
  v19[26] = v29;
  v19[27] = v2;
  v19[20] = v23;
  v19[21] = v11;
  v19[22] = v25;
  v19[23] = v6;
  v19[16] = v16;
  v19[17] = v15;
  v19[18] = v21;
  v19[19] = v10;
  sub_1001C6FE0(v20, v19);
  IntentParameter.wrappedValue.setter();
  return sub_1001C7018(v20);
}

void (*sub_1003F994C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100162378;
}

unint64_t sub_1003F99C8()
{
  result = qword_1008EC5A0;
  if (!qword_1008EC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5A0);
  }

  return result;
}

unint64_t sub_1003F9A20()
{
  result = qword_1008EC5A8;
  if (!qword_1008EC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5A8);
  }

  return result;
}

uint64_t sub_1003F9AE4(uint64_t a1)
{
  v2 = sub_10040787C();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1003F9B20()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_100140278(&qword_1008EC8B0);
  sub_100140278(&qword_1008EC8B8);
  sub_10014A6B0(&qword_1008EC8C0, &qword_1008EC8B0);
  sub_10014A6B0(&qword_1008EC8C8, &qword_1008EC8B8);
  sub_10014A6B0(&qword_1008EC818, &qword_1008EC758);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_1003F9D34(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1003F95F0(a1, v4, v5, v6);
}

uint64_t sub_1003F9DE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004043DC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1003F9E14(uint64_t a1)
{
  v2 = sub_10036F81C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1003F9E54()
{
  result = qword_1008EC5B0;
  if (!qword_1008EC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5B0);
  }

  return result;
}

uint64_t sub_1003F9EA8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009258B0);
  sub_10001AC90(v0, qword_1009258B0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1003F9F0C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = type metadata accessor for StringComparisonOperator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EC868);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  swift_getKeyPath();
  (*(v2 + 104))(v4, enum case for StringComparisonOperator.contains(_:), v1);
  sub_100140278(&qword_1008EC870);
  sub_10036F918();
  sub_10014A6B0(&qword_1008EC880, &qword_1008EC870);
  sub_10014A6B0(&qword_1008EC818, &qword_1008EC758);
  sub_1001C2D24();
  ParameterSummaryWhenCondition.init<A>(_:identifier:_:_:otherwise:)();
  sub_10014A6B0(&qword_1008EC878, &qword_1008EC868);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v11, v5);
}

uint64_t sub_1003FA228@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_100140278(&qword_1008EC888);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008EC890);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008EC870);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_10036F918();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x6F66664520746553;
  v10._object = 0xEF20726F66207472;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC898);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC8A8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 544175136;
  v12._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC8A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008EC880, &qword_1008EC870);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v9, v3);
}

uint64_t sub_1003FA5AC@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100140278(&qword_1008EC888);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008EC890);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008EC870);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_10036F918();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x6F66664520746553;
  v10._object = 0xEF20726F66207472;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC898);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 544175136;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC8A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008EC880, &qword_1008EC870);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_1003FA8E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10016200C;

  return sub_1004063C4();
}

unint64_t sub_1003FA978()
{
  result = qword_1008EC5B8;
  if (!qword_1008EC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5B8);
  }

  return result;
}

unint64_t sub_1003FA9D0()
{
  result = qword_1008EC5C0;
  if (!qword_1008EC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5C0);
  }

  return result;
}

uint64_t sub_1003FAA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[106] = a5;
  v5[105] = a4;
  v5[104] = a3;
  v5[103] = a2;
  v5[102] = a1;
  sub_100140278(&qword_1008DD130);
  v5[107] = swift_task_alloc();
  sub_100140278(&qword_1008E65E0);
  v5[108] = swift_task_alloc();
  v6 = type metadata accessor for WorkoutActivityEntity(0);
  v5[109] = v6;
  v5[110] = *(v6 - 8);
  v5[111] = swift_task_alloc();

  return _swift_task_switch(sub_1003FABB4, 0, 0);
}

uint64_t sub_1003FABB4()
{
  v1 = [objc_opt_self() appleEffortScoreUnit];
  IntentParameter.wrappedValue.getter();
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:*(v0 + 784)];
  *(v0 + 896) = v2;

  IntentParameter.wrappedValue.getter();
  v3 = *(v0 + 240);
  sub_1001C7018(v0 + 16);
  v4 = [v3 isMultiSportWorkout];

  if (v4)
  {
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 864);
    IntentParameter.wrappedValue.getter();
    if ((*(v5 + 48))(v7, 1, v6) == 1)
    {
      v8 = *(v0 + 856);
      sub_10000EA04(*(v0 + 864), &qword_1008E65E0);
      IntentParameter.projectedValue.getter();
      IntentDialog.init(stringLiteral:)();
      v9 = type metadata accessor for IntentDialog();
      (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
      type metadata accessor for AppIntentError();
      sub_100407834(&qword_1008E6018, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000EA04(v8, &qword_1008DD130);
      swift_willThrow();

      v10 = *(v0 + 8);

      return v10();
    }

    v21 = *(v0 + 888);
    v22 = *(v0 + 872);
    sub_100407778(*(v0 + 864), v21, type metadata accessor for WorkoutActivityEntity);
    type metadata accessor for EffortUtilities();
    v23 = v2;
    IntentParameter.wrappedValue.getter();
    v24 = *(v0 + 752);
    *(v0 + 904) = v24;
    v25 = v24;
    sub_1001C7018(v0 + 528);
    v26 = *(v21 + *(v22 + 20));
    AppDependency.wrappedValue.getter();
    v27 = *(v0 + 808);
    *(v0 + 912) = v27;
    v28 = swift_task_alloc();
    *(v0 + 920) = v28;
    *v28 = v0;
    v28[1] = sub_1003FB004;
    v17 = v2;
    v18 = v25;
    v19 = v26;
    v20 = v27;
  }

  else
  {
    type metadata accessor for EffortUtilities();
    v12 = v2;
    IntentParameter.wrappedValue.getter();
    v13 = *(v0 + 496);
    *(v0 + 928) = v13;
    v14 = v13;
    sub_1001C7018(v0 + 272);
    AppDependency.wrappedValue.getter();
    v15 = *(v0 + 792);
    *(v0 + 936) = v15;
    v16 = swift_task_alloc();
    *(v0 + 944) = v16;
    *v16 = v0;
    v16[1] = sub_1003FB21C;
    v17 = v2;
    v18 = v14;
    v19 = 0;
    v20 = v15;
  }

  return static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:)(v17, v18, v19, v20);
}

uint64_t sub_1003FB004()
{
  v1 = *(*v0 + 912);
  v2 = *(*v0 + 904);
  v3 = *(*v0 + 896);

  return _swift_task_switch(sub_1003FB150, 0, 0);
}

uint64_t sub_1003FB150()
{
  sub_1002CC5F4(v0[111]);
  v1 = v0[112];
  IntentParameter.wrappedValue.getter();
  sub_10019C1A0();
  static IntentResult.result<A>(value:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1003FB21C()
{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 928);
  v3 = *(*v0 + 896);

  return _swift_task_switch(sub_1003FB368, 0, 0);
}

uint64_t sub_1003FB368()
{
  v1 = *(v0 + 896);
  IntentParameter.wrappedValue.getter();
  sub_10019C1A0();
  static IntentResult.result<A>(value:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003FB464()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_100140278(&qword_1008EC868);
  sub_100140278(&qword_1008EC870);
  sub_10014A6B0(&qword_1008EC878, &qword_1008EC868);
  sub_10014A6B0(&qword_1008EC880, &qword_1008EC870);
  sub_10014A6B0(&qword_1008EC818, &qword_1008EC758);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_1003FB678(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_1003FAA74(a1, v4, v5, v7, v6);
}

uint64_t sub_1003FB738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004052E8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1003FB764(uint64_t a1)
{
  v2 = sub_10036F918();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1003FB7A4()
{
  result = qword_1008EC5C8;
  if (!qword_1008EC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5C8);
  }

  return result;
}

unint64_t sub_1003FB7FC()
{
  result = qword_1008EC5D0;
  if (!qword_1008EC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5D0);
  }

  return result;
}

uint64_t sub_1003FB8A0()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009258C8);
  sub_10001AC90(v0, qword_1009258C8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1003FB94C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = type metadata accessor for StringComparisonOperator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EC7F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  swift_getKeyPath();
  (*(v2 + 104))(v4, enum case for StringComparisonOperator.contains(_:), v1);
  sub_100140278(&qword_1008EC800);
  sub_10036F870();
  sub_10014A6B0(&qword_1008EC810, &qword_1008EC800);
  sub_10014A6B0(&qword_1008EC818, &qword_1008EC758);
  sub_1001C2D24();
  ParameterSummaryWhenCondition.init<A>(_:identifier:_:_:otherwise:)();
  sub_10014A6B0(&qword_1008EC808, &qword_1008EC7F8);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v11, v5);
}

uint64_t sub_1003FBC68@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_100140278(&qword_1008EC820);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008EC828);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008EC800);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  sub_10036F870();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499015;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC830);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC838);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0x20726F6620;
  v12._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC840);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC848);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v14);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008EC810, &qword_1008EC800);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v15 = *(v4 + 8);
  v15(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v15)(v9, v3);
}

uint64_t sub_1003FC028@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_100140278(&qword_1008EC820);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008EC828);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008EC800);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_10036F870();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499015;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC830);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC838);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0x20726F6620;
  v12._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_100140278(&qword_1008EC840);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008EC810, &qword_1008EC800);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v9, v3);
}

uint64_t sub_1003FC39C(uint64_t a1)
{
  v2[341] = v1;
  v2[340] = a1;
  v3 = type metadata accessor for WorkoutActivityEntity(0);
  v2[342] = v3;
  v2[343] = *(v3 - 8);
  v2[344] = swift_task_alloc();
  v2[345] = type metadata accessor for WorkoutStatView();
  v2[346] = swift_task_alloc();
  v2[347] = sub_100140278(&qword_1008EC780);
  v2[348] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[349] = swift_task_alloc();
  sub_100140278(&qword_1008E6000);
  v2[350] = swift_task_alloc();
  sub_100140278(&qword_1008E6008);
  v2[351] = swift_task_alloc();
  sub_100140278(&qword_1008EC788);
  v2[352] = swift_task_alloc();
  v4 = type metadata accessor for IntentDialog();
  v2[353] = v4;
  v2[354] = *(v4 - 8);
  v2[355] = swift_task_alloc();
  v2[356] = swift_task_alloc();
  sub_100140278(&qword_1008DD130);
  v2[357] = swift_task_alloc();
  sub_100140278(&qword_1008E65E0);
  v2[358] = swift_task_alloc();
  v2[359] = swift_task_alloc();
  v2[360] = swift_task_alloc();

  return _swift_task_switch(sub_1003FC690, 0, 0);
}

uint64_t sub_1003FC690()
{
  *(v0 + 2888) = **(v0 + 2728);
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 240);
  sub_1001C7018(v0 + 16);
  v2 = [v1 isMultiSportWorkout];

  if (v2 && (v3 = *(v0 + 2880), v4 = *(v0 + 2744), v5 = *(v0 + 2736), IntentParameter.wrappedValue.getter(), LODWORD(v5) = (*(v4 + 48))(v3, 1, v5), sub_10000EA04(v3, &qword_1008E65E0), v5 == 1))
  {
    v6 = *(v0 + 2856);
    v7 = *(v0 + 2832);
    v8 = *(v0 + 2824);
    IntentParameter.projectedValue.getter();
    IntentDialog.init(stringLiteral:)();
    (*(v7 + 56))(v6, 0, 1, v8);
    type metadata accessor for AppIntentError();
    sub_100407834(&qword_1008E6018, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_10000EA04(v6, &qword_1008DD130);
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 2896) = *(*(v0 + 2728) + 24);
    IntentParameter.wrappedValue.getter();
    if (*(v0 + 2936) > 1u)
    {
      if (*(v0 + 2936) == 2)
      {
        v14 = swift_task_alloc();
        *(v0 + 2920) = v14;
        *v14 = v0;
        v14[1] = sub_1003FE050;

        return sub_1003FFBB4(v0 + 1776);
      }

      else
      {
        v16 = swift_task_alloc();
        *(v0 + 2928) = v16;
        *v16 = v0;
        v16[1] = sub_1003FEAE0;

        return sub_10040010C(v0 + 1664);
      }
    }

    else
    {
      if (*(v0 + 2936))
      {
        v15 = swift_task_alloc();
        *(v0 + 2912) = v15;
        *v15 = v0;
        v15[1] = sub_1003FD5C4;
        v12 = v0 + 1888;
        v13 = 1;
      }

      else
      {
        v11 = swift_task_alloc();
        *(v0 + 2904) = v11;
        *v11 = v0;
        v11[1] = sub_1003FCB38;
        v12 = v0 + 2000;
        v13 = 0;
      }

      return sub_1003FF56C(v12, v13);
    }
  }
}

uint64_t sub_1003FCB38()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1003FCD40, 0, 0);
  }
}

uint64_t sub_1003FCD40()
{
  v1 = (v0 + 1552);
  v2 = *(v0 + 2872);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v3 = sub_100405B78((v0 + 1040), v2, 1);
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 2072);
  v9 = *(v0 + 2032);
  v10 = *(v0 + 2016);
  v11 = *(v0 + 2008);
  *(v0 + 2112) = *(v0 + 2000);
  *(v0 + 2120) = v11;
  *(v0 + 2128) = v10;
  *(v0 + 2144) = v9;
  v12 = *(v0 + 2056);
  *(v0 + 2152) = *(v0 + 2040);
  *(v0 + 2168) = v12;
  *(v0 + 2184) = v8;
  *(v0 + 2192) = *(v0 + 2080);
  *(v0 + 2208) = *(v0 + 2096);
  *(v0 + 1600) = *(v0 + 2160);
  *(v0 + 1616) = *(v0 + 2176);
  *(v0 + 1632) = *(v0 + 2192);
  *(v0 + 1552) = *(v0 + 2112);
  *(v0 + 1568) = *(v0 + 2128);
  *(v0 + 1584) = *(v0 + 2144);
  *(v0 + 1648) = *(v0 + 2208);
  v13 = objc_opt_self();
  v69 = v3;

  v70 = v5;

  v71 = v7;

  v14 = [v13 meterUnit];
  v15 = sub_1002C988C();
  v16 = *(v15 + 32);
  LODWORD(v13) = *(v15 + 40);

  if (v13)
  {
    v16 = 0.0;
  }

  v17 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v16];

  AppDependency.wrappedValue.getter();
  v18 = *(v0 + 2696);
  v19 = v17;
  v20 = *(sub_1002C988C() + 64);

  v21 = [v18 localizedPaceStringWithDistance:v19 overDuration:FIUIPaceFormatForDistanceType() paceFormat:v8 distanceType:v20];
  v68 = v19;

  if (v21)
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE200000000000000;
    v65 = 11565;
  }

  v24 = *(v0 + 2808);
  v25 = *(v0 + 2800);
  v26 = *(v0 + 2744);
  v66 = *(v0 + 2864);
  v67 = *(v0 + 2736);
  v27 = type metadata accessor for _GeneratedContentOptions();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  IntentParameter.wrappedValue.getter();
  sub_100403D80();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)();
  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31._countAndFlagsBits = v65;
  v31._object = v23;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  IntentDialog.init(stringInterpolation:)();
  _GeneratedContentFallback.init(_:localeIdentifier:)();
  v33 = type metadata accessor for _GeneratedContentFallback();
  (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
  sub_10036F870();
  sub_1002C9DE0();
  IntentDialog._GeneratedDialogContent.init(fromResult:options:fallbackDialog:)();
  IntentDialog.init<A, B>(from:)();
  AppDependency.wrappedValue.getter();
  v62 = *(v0 + 2712);
  IntentParameter.wrappedValue.getter();
  v34 = *(v0 + 1520);
  sub_1001C7018(v0 + 1296);
  IntentParameter.wrappedValue.getter();
  v35 = (*(v26 + 48))(v66, 1, v67);
  v36 = *(v0 + 2864);
  if (v35)
  {
    sub_10000EA04(v36, &qword_1008E65E0);
    v37 = 0;
  }

  else
  {
    v38 = *(v0 + 2752);
    v39 = *(v0 + 2736);
    v40 = *(v0 + 2864);
    sub_1002CC590(v36, v38);
    sub_10000EA04(v40, &qword_1008E65E0);
    v37 = *(v38 + *(v39 + 20));
    sub_1002CC5F4(v38);
  }

  v41 = *(v0 + 2832);
  v63 = *(v0 + 2848);
  v64 = *(v0 + 2824);
  v42 = *(v0 + 2784);
  v43 = *(v0 + 2776);
  v44 = *(v0 + 2768);
  v45 = *(v0 + 2760);
  *v44 = swift_getKeyPath();
  sub_100140278(&qword_1008EC790);
  swift_storeEnumTagMultiPayload();
  *(v44 + v45[5]) = v62;
  *(v44 + v45[6]) = v34;
  *(v44 + v45[7]) = v37;
  v46 = (v44 + v45[8]);
  v47 = *v1;
  v48 = *(v0 + 1584);
  v46[1] = *(v0 + 1568);
  v46[2] = v48;
  *v46 = v47;
  v49 = *(v0 + 1600);
  v50 = *(v0 + 1616);
  v51 = *(v0 + 1648);
  v46[5] = *(v0 + 1632);
  v46[6] = v51;
  v46[3] = v49;
  v46[4] = v50;
  KeyPath = swift_getKeyPath();
  v53 = (v42 + *(v43 + 36));
  v54 = *(sub_100140278(&qword_1008EC798) + 28);
  v55 = enum case for ColorScheme.dark(_:);
  v56 = type metadata accessor for ColorScheme();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = KeyPath;
  sub_100407778(v44, v42, type metadata accessor for WorkoutStatView);
  v57 = *(v0 + 1584);
  *(v0 + 2384) = *(v0 + 1600);
  v58 = *(v0 + 1632);
  *(v0 + 2400) = *(v0 + 1616);
  *(v0 + 2416) = v58;
  *(v0 + 2432) = *(v0 + 1648);
  v59 = *(v0 + 1568);
  *(v0 + 2336) = *v1;
  *(v0 + 2352) = v59;
  *(v0 + 2368) = v57;
  *(v0 + 2672) = v69;
  *(v0 + 2680) = v70;
  *(v0 + 2688) = v71;
  sub_1002CC3B0(v0 + 2112, v0 + 2448);
  sub_1002CC3B0(v0 + 2112, v0 + 2560);
  sub_100407574();
  sub_10036F81C();
  static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)();

  sub_1002CC3E8(v0 + 2112);

  *(v0 + 2272) = *(v0 + 2384);
  *(v0 + 2288) = *(v0 + 2400);
  *(v0 + 2304) = *(v0 + 2416);
  *(v0 + 2320) = *(v0 + 2432);
  *(v0 + 2224) = *(v0 + 2336);
  *(v0 + 2240) = *(v0 + 2352);
  *(v0 + 2256) = *(v0 + 2368);
  sub_1002CC3E8(v0 + 2224);
  sub_10000EA04(v42, &qword_1008EC780);
  (*(v41 + 8))(v63, v64);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1003FD5C4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1003FD7CC, 0, 0);
  }
}

uint64_t sub_1003FD7CC()
{
  v1 = (v0 + 1552);
  v2 = *(v0 + 2872);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v3 = sub_100405B78((v0 + 784), v2, 1);
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 1960);
  v9 = *(v0 + 1920);
  v10 = *(v0 + 1904);
  v11 = *(v0 + 1896);
  *(v0 + 2112) = *(v0 + 1888);
  *(v0 + 2120) = v11;
  *(v0 + 2128) = v10;
  *(v0 + 2144) = v9;
  v12 = *(v0 + 1944);
  *(v0 + 2152) = *(v0 + 1928);
  *(v0 + 2168) = v12;
  *(v0 + 2184) = v8;
  *(v0 + 2192) = *(v0 + 1968);
  *(v0 + 2208) = *(v0 + 1984);
  *(v0 + 1600) = *(v0 + 2160);
  *(v0 + 1616) = *(v0 + 2176);
  *(v0 + 1632) = *(v0 + 2192);
  *(v0 + 1552) = *(v0 + 2112);
  *(v0 + 1568) = *(v0 + 2128);
  *(v0 + 1584) = *(v0 + 2144);
  *(v0 + 1648) = *(v0 + 2208);
  v13 = objc_opt_self();
  v69 = v3;

  v70 = v5;

  v71 = v7;

  v14 = [v13 meterUnit];
  v15 = sub_1002C988C();
  v16 = *(v15 + 32);
  LODWORD(v13) = *(v15 + 40);

  if (v13)
  {
    v16 = 0.0;
  }

  v17 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v16];

  AppDependency.wrappedValue.getter();
  v18 = *(v0 + 2696);
  v19 = v17;
  v20 = *(sub_1002C988C() + 64);

  v21 = [v18 localizedPaceStringWithDistance:v19 overDuration:FIUIPaceFormatForDistanceType() paceFormat:v8 distanceType:v20];
  v68 = v19;

  if (v21)
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE200000000000000;
    v65 = 11565;
  }

  v24 = *(v0 + 2808);
  v25 = *(v0 + 2800);
  v26 = *(v0 + 2744);
  v66 = *(v0 + 2864);
  v67 = *(v0 + 2736);
  v27 = type metadata accessor for _GeneratedContentOptions();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  IntentParameter.wrappedValue.getter();
  sub_100403D80();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)();
  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31._countAndFlagsBits = v65;
  v31._object = v23;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  IntentDialog.init(stringInterpolation:)();
  _GeneratedContentFallback.init(_:localeIdentifier:)();
  v33 = type metadata accessor for _GeneratedContentFallback();
  (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
  sub_10036F870();
  sub_1002C9DE0();
  IntentDialog._GeneratedDialogContent.init(fromResult:options:fallbackDialog:)();
  IntentDialog.init<A, B>(from:)();
  AppDependency.wrappedValue.getter();
  v62 = *(v0 + 2712);
  IntentParameter.wrappedValue.getter();
  v34 = *(v0 + 1520);
  sub_1001C7018(v0 + 1296);
  IntentParameter.wrappedValue.getter();
  v35 = (*(v26 + 48))(v66, 1, v67);
  v36 = *(v0 + 2864);
  if (v35)
  {
    sub_10000EA04(v36, &qword_1008E65E0);
    v37 = 0;
  }

  else
  {
    v38 = *(v0 + 2752);
    v39 = *(v0 + 2736);
    v40 = *(v0 + 2864);
    sub_1002CC590(v36, v38);
    sub_10000EA04(v40, &qword_1008E65E0);
    v37 = *(v38 + *(v39 + 20));
    sub_1002CC5F4(v38);
  }

  v41 = *(v0 + 2832);
  v63 = *(v0 + 2848);
  v64 = *(v0 + 2824);
  v42 = *(v0 + 2784);
  v43 = *(v0 + 2776);
  v44 = *(v0 + 2768);
  v45 = *(v0 + 2760);
  *v44 = swift_getKeyPath();
  sub_100140278(&qword_1008EC790);
  swift_storeEnumTagMultiPayload();
  *(v44 + v45[5]) = v62;
  *(v44 + v45[6]) = v34;
  *(v44 + v45[7]) = v37;
  v46 = (v44 + v45[8]);
  v47 = *v1;
  v48 = *(v0 + 1584);
  v46[1] = *(v0 + 1568);
  v46[2] = v48;
  *v46 = v47;
  v49 = *(v0 + 1600);
  v50 = *(v0 + 1616);
  v51 = *(v0 + 1648);
  v46[5] = *(v0 + 1632);
  v46[6] = v51;
  v46[3] = v49;
  v46[4] = v50;
  KeyPath = swift_getKeyPath();
  v53 = (v42 + *(v43 + 36));
  v54 = *(sub_100140278(&qword_1008EC798) + 28);
  v55 = enum case for ColorScheme.dark(_:);
  v56 = type metadata accessor for ColorScheme();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = KeyPath;
  sub_100407778(v44, v42, type metadata accessor for WorkoutStatView);
  v57 = *(v0 + 1584);
  *(v0 + 2384) = *(v0 + 1600);
  v58 = *(v0 + 1632);
  *(v0 + 2400) = *(v0 + 1616);
  *(v0 + 2416) = v58;
  *(v0 + 2432) = *(v0 + 1648);
  v59 = *(v0 + 1568);
  *(v0 + 2336) = *v1;
  *(v0 + 2352) = v59;
  *(v0 + 2368) = v57;
  *(v0 + 2672) = v69;
  *(v0 + 2680) = v70;
  *(v0 + 2688) = v71;
  sub_1002CC3B0(v0 + 2112, v0 + 2448);
  sub_1002CC3B0(v0 + 2112, v0 + 2560);
  sub_100407574();
  sub_10036F81C();
  static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)();

  sub_1002CC3E8(v0 + 2112);

  *(v0 + 2272) = *(v0 + 2384);
  *(v0 + 2288) = *(v0 + 2400);
  *(v0 + 2304) = *(v0 + 2416);
  *(v0 + 2320) = *(v0 + 2432);
  *(v0 + 2224) = *(v0 + 2336);
  *(v0 + 2240) = *(v0 + 2352);
  *(v0 + 2256) = *(v0 + 2368);
  sub_1002CC3E8(v0 + 2224);
  sub_10000EA04(v42, &qword_1008EC780);
  (*(v41 + 8))(v63, v64);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1003FE050()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1003FE258, 0, 0);
  }
}

uint64_t sub_1003FE258()
{
  v1 = (v0 + 1552);
  v2 = *(v0 + 2872);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v3 = sub_100405B78((v0 + 528), v2, 2);
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 1848);
  v9 = *(v0 + 1808);
  v10 = *(v0 + 1792);
  v11 = *(v0 + 1784);
  *(v0 + 2112) = *(v0 + 1776);
  *(v0 + 2120) = v11;
  *(v0 + 2128) = v10;
  *(v0 + 2144) = v9;
  v12 = *(v0 + 1832);
  *(v0 + 2152) = *(v0 + 1816);
  *(v0 + 2168) = v12;
  *(v0 + 2184) = v8;
  *(v0 + 2192) = *(v0 + 1856);
  *(v0 + 2208) = *(v0 + 1872);
  *(v0 + 1600) = *(v0 + 2160);
  *(v0 + 1616) = *(v0 + 2176);
  *(v0 + 1632) = *(v0 + 2192);
  *(v0 + 1552) = *(v0 + 2112);
  *(v0 + 1568) = *(v0 + 2128);
  *(v0 + 1584) = *(v0 + 2144);
  *(v0 + 1648) = *(v0 + 2208);
  v13 = objc_opt_self();
  v69 = v3;

  v70 = v5;

  v71 = v7;

  v14 = [v13 meterUnit];
  v15 = sub_1002C988C();
  v16 = *(v15 + 32);
  LODWORD(v13) = *(v15 + 40);

  if (v13)
  {
    v16 = 0.0;
  }

  v17 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v16];

  AppDependency.wrappedValue.getter();
  v18 = *(v0 + 2696);
  v19 = v17;
  v20 = *(sub_1002C988C() + 64);

  v21 = [v18 localizedPaceStringWithDistance:v19 overDuration:FIUIPaceFormatForDistanceType() paceFormat:v8 distanceType:v20];
  v68 = v19;

  if (v21)
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE200000000000000;
    v65 = 11565;
  }

  v24 = *(v0 + 2808);
  v25 = *(v0 + 2800);
  v26 = *(v0 + 2744);
  v66 = *(v0 + 2864);
  v67 = *(v0 + 2736);
  v27 = type metadata accessor for _GeneratedContentOptions();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  IntentParameter.wrappedValue.getter();
  sub_100403D80();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)();
  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31._countAndFlagsBits = v65;
  v31._object = v23;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  IntentDialog.init(stringInterpolation:)();
  _GeneratedContentFallback.init(_:localeIdentifier:)();
  v33 = type metadata accessor for _GeneratedContentFallback();
  (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
  sub_10036F870();
  sub_1002C9DE0();
  IntentDialog._GeneratedDialogContent.init(fromResult:options:fallbackDialog:)();
  IntentDialog.init<A, B>(from:)();
  AppDependency.wrappedValue.getter();
  v62 = *(v0 + 2712);
  IntentParameter.wrappedValue.getter();
  v34 = *(v0 + 1520);
  sub_1001C7018(v0 + 1296);
  IntentParameter.wrappedValue.getter();
  v35 = (*(v26 + 48))(v66, 1, v67);
  v36 = *(v0 + 2864);
  if (v35)
  {
    sub_10000EA04(v36, &qword_1008E65E0);
    v37 = 0;
  }

  else
  {
    v38 = *(v0 + 2752);
    v39 = *(v0 + 2736);
    v40 = *(v0 + 2864);
    sub_1002CC590(v36, v38);
    sub_10000EA04(v40, &qword_1008E65E0);
    v37 = *(v38 + *(v39 + 20));
    sub_1002CC5F4(v38);
  }

  v41 = *(v0 + 2832);
  v63 = *(v0 + 2848);
  v64 = *(v0 + 2824);
  v42 = *(v0 + 2784);
  v43 = *(v0 + 2776);
  v44 = *(v0 + 2768);
  v45 = *(v0 + 2760);
  *v44 = swift_getKeyPath();
  sub_100140278(&qword_1008EC790);
  swift_storeEnumTagMultiPayload();
  *(v44 + v45[5]) = v62;
  *(v44 + v45[6]) = v34;
  *(v44 + v45[7]) = v37;
  v46 = (v44 + v45[8]);
  v47 = *v1;
  v48 = *(v0 + 1584);
  v46[1] = *(v0 + 1568);
  v46[2] = v48;
  *v46 = v47;
  v49 = *(v0 + 1600);
  v50 = *(v0 + 1616);
  v51 = *(v0 + 1648);
  v46[5] = *(v0 + 1632);
  v46[6] = v51;
  v46[3] = v49;
  v46[4] = v50;
  KeyPath = swift_getKeyPath();
  v53 = (v42 + *(v43 + 36));
  v54 = *(sub_100140278(&qword_1008EC798) + 28);
  v55 = enum case for ColorScheme.dark(_:);
  v56 = type metadata accessor for ColorScheme();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = KeyPath;
  sub_100407778(v44, v42, type metadata accessor for WorkoutStatView);
  v57 = *(v0 + 1584);
  *(v0 + 2384) = *(v0 + 1600);
  v58 = *(v0 + 1632);
  *(v0 + 2400) = *(v0 + 1616);
  *(v0 + 2416) = v58;
  *(v0 + 2432) = *(v0 + 1648);
  v59 = *(v0 + 1568);
  *(v0 + 2336) = *v1;
  *(v0 + 2352) = v59;
  *(v0 + 2368) = v57;
  *(v0 + 2672) = v69;
  *(v0 + 2680) = v70;
  *(v0 + 2688) = v71;
  sub_1002CC3B0(v0 + 2112, v0 + 2448);
  sub_1002CC3B0(v0 + 2112, v0 + 2560);
  sub_100407574();
  sub_10036F81C();
  static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)();

  sub_1002CC3E8(v0 + 2112);

  *(v0 + 2272) = *(v0 + 2384);
  *(v0 + 2288) = *(v0 + 2400);
  *(v0 + 2304) = *(v0 + 2416);
  *(v0 + 2320) = *(v0 + 2432);
  *(v0 + 2224) = *(v0 + 2336);
  *(v0 + 2240) = *(v0 + 2352);
  *(v0 + 2256) = *(v0 + 2368);
  sub_1002CC3E8(v0 + 2224);
  sub_10000EA04(v42, &qword_1008EC780);
  (*(v41 + 8))(v63, v64);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1003FEAE0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1003FECE8, 0, 0);
  }
}

uint64_t sub_1003FECE8()
{
  v1 = (v0 + 1552);
  v2 = *(v0 + 2872);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v3 = sub_100405B78((v0 + 272), v2, 3);
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 1736);
  v9 = *(v0 + 1696);
  v10 = *(v0 + 1680);
  v11 = *(v0 + 1672);
  *(v0 + 2112) = *(v0 + 1664);
  *(v0 + 2120) = v11;
  *(v0 + 2128) = v10;
  *(v0 + 2144) = v9;
  v12 = *(v0 + 1720);
  *(v0 + 2152) = *(v0 + 1704);
  *(v0 + 2168) = v12;
  *(v0 + 2184) = v8;
  *(v0 + 2192) = *(v0 + 1744);
  *(v0 + 2208) = *(v0 + 1760);
  *(v0 + 1600) = *(v0 + 2160);
  *(v0 + 1616) = *(v0 + 2176);
  *(v0 + 1632) = *(v0 + 2192);
  *(v0 + 1552) = *(v0 + 2112);
  *(v0 + 1568) = *(v0 + 2128);
  *(v0 + 1584) = *(v0 + 2144);
  *(v0 + 1648) = *(v0 + 2208);
  v13 = objc_opt_self();
  v69 = v3;

  v70 = v5;

  v71 = v7;

  v14 = [v13 meterUnit];
  v15 = sub_1002C988C();
  v16 = *(v15 + 32);
  LODWORD(v13) = *(v15 + 40);

  if (v13)
  {
    v16 = 0.0;
  }

  v17 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v16];

  AppDependency.wrappedValue.getter();
  v18 = *(v0 + 2696);
  v19 = v17;
  v20 = *(sub_1002C988C() + 64);

  v21 = [v18 localizedPaceStringWithDistance:v19 overDuration:FIUIPaceFormatForDistanceType() paceFormat:v8 distanceType:v20];
  v68 = v19;

  if (v21)
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE200000000000000;
    v65 = 11565;
  }

  v24 = *(v0 + 2808);
  v25 = *(v0 + 2800);
  v26 = *(v0 + 2744);
  v66 = *(v0 + 2864);
  v67 = *(v0 + 2736);
  v27 = type metadata accessor for _GeneratedContentOptions();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  IntentParameter.wrappedValue.getter();
  sub_100403D80();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)();
  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31._countAndFlagsBits = v65;
  v31._object = v23;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  IntentDialog.init(stringInterpolation:)();
  _GeneratedContentFallback.init(_:localeIdentifier:)();
  v33 = type metadata accessor for _GeneratedContentFallback();
  (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
  sub_10036F870();
  sub_1002C9DE0();
  IntentDialog._GeneratedDialogContent.init(fromResult:options:fallbackDialog:)();
  IntentDialog.init<A, B>(from:)();
  AppDependency.wrappedValue.getter();
  v62 = *(v0 + 2712);
  IntentParameter.wrappedValue.getter();
  v34 = *(v0 + 1520);
  sub_1001C7018(v0 + 1296);
  IntentParameter.wrappedValue.getter();
  v35 = (*(v26 + 48))(v66, 1, v67);
  v36 = *(v0 + 2864);
  if (v35)
  {
    sub_10000EA04(v36, &qword_1008E65E0);
    v37 = 0;
  }

  else
  {
    v38 = *(v0 + 2752);
    v39 = *(v0 + 2736);
    v40 = *(v0 + 2864);
    sub_1002CC590(v36, v38);
    sub_10000EA04(v40, &qword_1008E65E0);
    v37 = *(v38 + *(v39 + 20));
    sub_1002CC5F4(v38);
  }

  v41 = *(v0 + 2832);
  v63 = *(v0 + 2848);
  v64 = *(v0 + 2824);
  v42 = *(v0 + 2784);
  v43 = *(v0 + 2776);
  v44 = *(v0 + 2768);
  v45 = *(v0 + 2760);
  *v44 = swift_getKeyPath();
  sub_100140278(&qword_1008EC790);
  swift_storeEnumTagMultiPayload();
  *(v44 + v45[5]) = v62;
  *(v44 + v45[6]) = v34;
  *(v44 + v45[7]) = v37;
  v46 = (v44 + v45[8]);
  v47 = *v1;
  v48 = *(v0 + 1584);
  v46[1] = *(v0 + 1568);
  v46[2] = v48;
  *v46 = v47;
  v49 = *(v0 + 1600);
  v50 = *(v0 + 1616);
  v51 = *(v0 + 1648);
  v46[5] = *(v0 + 1632);
  v46[6] = v51;
  v46[3] = v49;
  v46[4] = v50;
  KeyPath = swift_getKeyPath();
  v53 = (v42 + *(v43 + 36));
  v54 = *(sub_100140278(&qword_1008EC798) + 28);
  v55 = enum case for ColorScheme.dark(_:);
  v56 = type metadata accessor for ColorScheme();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = KeyPath;
  sub_100407778(v44, v42, type metadata accessor for WorkoutStatView);
  v57 = *(v0 + 1584);
  *(v0 + 2384) = *(v0 + 1600);
  v58 = *(v0 + 1632);
  *(v0 + 2400) = *(v0 + 1616);
  *(v0 + 2416) = v58;
  *(v0 + 2432) = *(v0 + 1648);
  v59 = *(v0 + 1568);
  *(v0 + 2336) = *v1;
  *(v0 + 2352) = v59;
  *(v0 + 2368) = v57;
  *(v0 + 2672) = v69;
  *(v0 + 2680) = v70;
  *(v0 + 2688) = v71;
  sub_1002CC3B0(v0 + 2112, v0 + 2448);
  sub_1002CC3B0(v0 + 2112, v0 + 2560);
  sub_100407574();
  sub_10036F81C();
  static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)();

  sub_1002CC3E8(v0 + 2112);

  *(v0 + 2272) = *(v0 + 2384);
  *(v0 + 2288) = *(v0 + 2400);
  *(v0 + 2304) = *(v0 + 2416);
  *(v0 + 2320) = *(v0 + 2432);
  *(v0 + 2224) = *(v0 + 2336);
  *(v0 + 2240) = *(v0 + 2352);
  *(v0 + 2256) = *(v0 + 2368);
  sub_1002CC3E8(v0 + 2224);
  sub_10000EA04(v42, &qword_1008EC780);
  (*(v41 + 8))(v63, v64);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1003FF56C(uint64_t a1, char a2)
{
  *(v3 + 608) = v2;
  *(v3 + 656) = a2;
  *(v3 + 600) = a1;
  sub_100140278(&qword_1008E65E0);
  *(v3 + 616) = swift_task_alloc();
  sub_100140278(&qword_1008DEC70);
  *(v3 + 624) = swift_task_alloc();
  v4 = sub_100140278(&qword_1008DEC88);
  *(v3 + 632) = v4;
  *(v3 + 640) = *(v4 - 8);
  *(v3 + 648) = swift_task_alloc();

  return _swift_task_switch(sub_1003FF6B0, 0, 0);
}

uint64_t sub_1003FF6B0()
{
  v46 = v0;
  v1 = *(v0 + 656);
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  *&v41 = 0;
  v39 = 0u;
  v40 = 0u;
  static AppDependencyManager.shared.getter();
  v2 = AppDependency.__allocating_init(key:manager:)();
  IntentParameter.wrappedValue.getter();
  v3 = *(v0 + 240);
  sub_1001C7018(v0 + 16);
  sub_10051CE08(v3, v1 & 1, v2);
  v5 = v4;

  v38 = v5;
  if (*(v5 + 16))
  {
    v6 = *(v0 + 640);
    v7 = *(v0 + 632);
    v8 = *(v0 + 624);
    v10 = *(v5 + 64);
    v9 = *(v5 + 80);
    v11 = *(v5 + 48);
    *(v0 + 520) = *(v5 + 96);
    *(v0 + 488) = v10;
    *(v0 + 504) = v9;
    *(v0 + 472) = v11;
    *(v0 + 456) = *(v5 + 32);
    sub_1002CC418(v0 + 456, v0 + 528);
    EntityProperty.wrappedValue.getter();
    sub_10040765C(v0 + 456);
    if ((*(v6 + 48))(v8, 1, v7) != 1)
    {
      (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 624), *(v0 + 632));
      goto LABEL_7;
    }
  }

  else
  {
    (*(*(v0 + 640) + 56))(*(v0 + 624), 1, 1, *(v0 + 632));
  }

  v12 = *(v0 + 640);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = [objc_opt_self() meters];
  sub_1000059F8(0, &qword_1008DEE38);
  Measurement.init(value:unit:)();
  if ((*(v12 + 48))(v14, 1, v13) != 1)
  {
    sub_10000EA04(*(v0 + 624), &qword_1008DEC70);
  }

LABEL_7:
  v16 = *(v0 + 648);
  v17 = swift_task_alloc();
  *(v17 + 16) = v16;
  result = sub_100404074(sub_1004076B0, v17);
  v19 = v38;
  v20 = *(v38 + 16);
  if (result > v20)
  {
    __break(1u);
    goto LABEL_23;
  }

  v21 = result;
  if (result < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = result;
  if (__OFADD__(v20, result - v20))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v22 > *(v38 + 24) >> 1)
  {
    if (v20 <= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    v19 = sub_1001A30C0(isUniquelyReferenced_nonNull_native, v24, 1, v38);
  }

  sub_1005F0F44(v21, v20, 0);

  if (*(v19 + 2))
  {
    sub_100400D4C(v19, &v39);
    v26 = *(v0 + 648);
    v27 = *(v0 + 640);
    v28 = *(v0 + 632);
    v29 = *(v0 + 616);
    v30 = *(v0 + 600);

    v44[2] = v41;
    v44[3] = v42;
    v45 = v43;
    v44[0] = v39;
    v44[1] = v40;
    v31 = type metadata accessor for WorkoutActivityEntity(0);
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    sub_1002CA9C8(v29, v0 + 384, v44, (v0 + 272));
    (*(v27 + 8))(v26, v28);
    v32 = *(v0 + 272);
    v33 = *(v0 + 304);
    v30[1] = *(v0 + 288);
    v30[2] = v33;
    *v30 = v32;
    v34 = *(v0 + 320);
    v35 = *(v0 + 336);
    v36 = *(v0 + 368);
    v30[5] = *(v0 + 352);
    v30[6] = v36;
    v30[3] = v34;
    v30[4] = v35;
  }

  else
  {

    sub_1004076D0();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1003FFBB4(uint64_t a1)
{
  v2[57] = a1;
  v2[58] = v1;
  sub_100140278(&qword_1008E65E0);
  v2[59] = swift_task_alloc();

  return _swift_task_switch(sub_1003FFC50, 0, 0);
}

uint64_t sub_1003FFC50()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0[60] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v0[61] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  v0[62] = v1;
  IntentParameter.wrappedValue.getter();
  v2 = v0[30];
  v0[63] = v2;
  v3 = v2;
  sub_1001C7018((v0 + 2));
  v4 = swift_task_alloc();
  v0[64] = v4;
  *v4 = v0;
  v4[1] = sub_1003FFE00;

  return sub_100465D68(v3, v1);
}

uint64_t sub_1003FFE00(uint64_t a1)
{
  v2 = *(*v1 + 504);
  *(*v1 + 520) = a1;

  return _swift_task_switch(sub_1003FFF78, 0, 0);
}

uint64_t sub_1003FFF78()
{
  v17 = v0;
  v1 = *(v0 + 520);
  if (*(v1 + 16))
  {
    sub_1004014AC(v1, v13);
    v3 = *(v0 + 472);
    v4 = *(v0 + 456);

    v15[2] = v13[2];
    v15[3] = v13[3];
    v16 = v14;
    v15[0] = v13[0];
    v15[1] = v13[1];
    v5 = type metadata accessor for WorkoutActivityEntity(0);
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    sub_1002CA9C8(v3, v15, v0 + 384, (v0 + 272));
    v6 = *(v0 + 272);
    v7 = *(v0 + 304);
    v4[1] = *(v0 + 288);
    v4[2] = v7;
    *v4 = v6;
    v8 = *(v0 + 320);
    v9 = *(v0 + 336);
    v10 = *(v0 + 368);
    v4[5] = *(v0 + 352);
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
  }

  else
  {

    sub_1004076D0();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10040010C(uint64_t a1)
{
  v2[131] = v1;
  v2[130] = a1;
  v3 = type metadata accessor for StepType();
  v2[132] = v3;
  v2[133] = *(v3 - 8);
  v2[134] = swift_task_alloc();
  v2[135] = sub_100140278(&qword_1008EC7E0);
  v2[136] = swift_task_alloc();
  sub_100140278(&qword_1008EC7E8);
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();
  v2[139] = swift_task_alloc();
  sub_100140278(&qword_1008E65E0);
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutActivityEntity(0);
  v2[142] = v4;
  v2[143] = *(v4 - 8);
  v2[144] = swift_task_alloc();
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();

  return _swift_task_switch(sub_100400314, 0, 0);
}

uint64_t sub_100400314()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 240);
  sub_1001C7018(v0 + 16);
  v2 = [v1 isIntervalWorkout];

  if (!v2)
  {
    goto LABEL_31;
  }

  sub_10040DA78();
  IntentParameter.wrappedValue.getter();
  v3 = *(v0 + 752);
  sub_1001C7018(v0 + 528);
  v4 = sub_10040DBB0(v3);

  IntentParameter.wrappedValue.getter();
  v5 = *(v0 + 496);
  sub_1001C7018(v0 + 272);
  v6 = [v5 isFirstPartyWorkout];

  if (v6)
  {
    v7 = v4[2];
    v53 = v4;
    if (v7)
    {
      v68 = *(v0 + 1168);
      v8 = *(v0 + 1144);
      v9 = *(v0 + 1064);
      v59 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = v4 + v59;
      v67 = (v9 + 56);
      v66 = (v9 + 104);
      v64 = *(*(v0 + 1136) + 32);
      v65 = *(v0 + 1080);
      v69 = (v9 + 48);
      v54 = (v9 + 32);
      v58 = (v9 + 8);
      v62 = (v8 + 56);
      v11 = _swiftEmptyArrayStorage;
      v61 = (v8 + 48);
      v60 = enum case for StepType.work(_:);
      v63 = *(v8 + 72);
      while (1)
      {
        v70 = v10;
        v71 = v7;
        sub_1002CC590(v10, *(v0 + 1168));
        if (*(v68 + v64))
        {
          WorkoutStep.stepType.getter();
          v13 = 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = *(v0 + 1112);
        v15 = *(v0 + 1104);
        v16 = *(v0 + 1088);
        v17 = *(v0 + 1056);
        v18 = *v67;
        (*v67)(v14, v13, 1, v17);
        (*v66)(v15, v60, v17);
        v18(v15, 0, 1, v17);
        v19 = *(v65 + 48);
        sub_10001B104(v14, v16, &qword_1008EC7E8);
        sub_10001B104(v15, v16 + v19, &qword_1008EC7E8);
        v20 = *v69;
        v21 = (*v69)(v16, 1, v17);
        v22 = *(v0 + 1056);
        if (v21 == 1)
        {
          break;
        }

        sub_10001B104(*(v0 + 1088), *(v0 + 1096), &qword_1008EC7E8);
        v24 = v20(v16 + v19, 1, v22);
        v25 = *(v0 + 1112);
        v26 = *(v0 + 1104);
        v27 = *(v0 + 1096);
        if (v24 == 1)
        {
          v28 = *(v0 + 1056);
          sub_10000EA04(*(v0 + 1104), &qword_1008EC7E8);
          sub_10000EA04(v25, &qword_1008EC7E8);
          (*v58)(v27, v28);
LABEL_15:
          sub_10000EA04(*(v0 + 1088), &qword_1008EC7E0);
          goto LABEL_16;
        }

        v56 = *(v0 + 1088);
        v57 = v11;
        v30 = *(v0 + 1072);
        v31 = *(v0 + 1056);
        (*v54)(v30, v16 + v19, v31);
        sub_100407834(&qword_1008EC7F0, &type metadata accessor for StepType);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v58;
        (*v58)(v30, v31);
        sub_10000EA04(v26, &qword_1008EC7E8);
        sub_10000EA04(v25, &qword_1008EC7E8);
        v33 = v31;
        v11 = v57;
        v32(v27, v33);
        sub_10000EA04(v56, &qword_1008EC7E8);
        if (v55)
        {
          goto LABEL_18;
        }

LABEL_16:
        v29 = 1;
LABEL_19:
        v34 = *(v0 + 1168);
        v35 = *(v0 + 1136);
        v36 = *(v0 + 1128);
        (*v62)(v36, v29, 1, v35);
        sub_1002CC5F4(v34);
        if ((*v61)(v36, 1, v35) == 1)
        {
          sub_10000EA04(*(v0 + 1128), &qword_1008E65E0);
          v12 = v63;
        }

        else
        {
          sub_100407778(*(v0 + 1128), *(v0 + 1160), type metadata accessor for WorkoutActivityEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1001A3310(0, v11[2] + 1, 1, v11);
          }

          v38 = v11[2];
          v37 = v11[3];
          if (v38 >= v37 >> 1)
          {
            v11 = sub_1001A3310(v37 > 1, v38 + 1, 1, v11);
          }

          v39 = *(v0 + 1160);
          v11[2] = v38 + 1;
          v12 = v63;
          sub_100407778(v39, v11 + v59 + v38 * v63, type metadata accessor for WorkoutActivityEntity);
        }

        v10 = v70 + v12;
        v7 = v71 - 1;
        if (v71 == 1)
        {
          goto LABEL_28;
        }
      }

      v23 = *(v0 + 1112);
      sub_10000EA04(*(v0 + 1104), &qword_1008EC7E8);
      sub_10000EA04(v23, &qword_1008EC7E8);
      if (v20(v16 + v19, 1, v22) == 1)
      {
        sub_10000EA04(*(v0 + 1088), &qword_1008EC7E8);
LABEL_18:
        sub_1002CC590(*(v0 + 1168), *(v0 + 1128));
        v29 = 0;
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_28:
    if (v11[2])
    {

      if (!v11[2])
      {
        goto LABEL_30;
      }
    }

    else
    {

      v11 = v53;
      if (!v53[2])
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    sub_100401C0C(v11, *(v0 + 1152));
    v40 = *(v0 + 1152);
    v41 = *(v0 + 1144);
    v42 = *(v0 + 1136);
    v43 = *(v0 + 1120);
    v44 = *(v0 + 1040);

    sub_1002CC590(v40, v43);
    (*(v41 + 56))(v43, 0, 1, v42);
    *(v0 + 1008) = 0u;
    *(v0 + 1024) = 0u;
    *(v0 + 976) = 0u;
    *(v0 + 992) = 0u;
    *(v0 + 944) = 0u;
    *(v0 + 960) = 0u;
    *(v0 + 912) = 0u;
    *(v0 + 928) = 0u;
    *(v0 + 896) = 0u;
    sub_1002CA9C8(v43, v0 + 968, v0 + 896, (v0 + 784));
    sub_1002CC5F4(v40);
    v46 = *(v0 + 800);
    v45 = *(v0 + 816);
    *v44 = *(v0 + 784);
    v44[1] = v46;
    v44[2] = v45;
    v47 = *(v0 + 880);
    v49 = *(v0 + 832);
    v48 = *(v0 + 848);
    v44[5] = *(v0 + 864);
    v44[6] = v47;
    v44[3] = v49;
    v44[4] = v48;

    v50 = *(v0 + 8);
    goto LABEL_32;
  }

  v11 = v4;
  if (v4[2])
  {
    goto LABEL_26;
  }

LABEL_30:

LABEL_31:
  sub_1004076D0();
  swift_allocError();
  *v51 = 1;
  swift_willThrow();

  v50 = *(v0 + 8);
LABEL_32:

  return v50();
}

uint64_t sub_100400B80()
{
  v0 = sub_100140278(&qword_1008EC7C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  sub_1002C93AC();
  static _DialogBuilderEntity.buildExpression<A>(_:)();

  swift_getKeyPath();
  static _DialogBuilderEntity.buildExpression<A>(_:)();

  sub_1002C9DE0();
  sub_10014A6B0(&qword_1008EC7D0, &qword_1008EC7C8);
  static _DialogBuilderEntity.buildBlock<A, B>(_:_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  return (v7)(v6, v0);
}

__n128 sub_100400D4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v91 = sub_100140278(&qword_1008DED40);
  v54 = *(v91 - 8);
  __chkstk_darwin(v91);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v52 - v5;
  v6 = sub_100140278(&qword_1008DEC70);
  __chkstk_darwin(v6 - 8);
  v59 = (&v52 - v7);
  v8 = sub_100140278(&qword_1008DED28);
  __chkstk_darwin(v8 - 8);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v52 - v11;
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v61 = *(a1 + 16);
  if (!v61)
  {
LABEL_8:
    sub_1004076D0();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return result;
  }

  v15 = (a1 + 32);
  v65 = (v54 + 48);
  v16 = &qword_1008DED28;
  v64 = sub_10026A2FC;
  v62 = (a1 + 32);
  v17 = v61;
  while (1)
  {
    v18 = v15[1];
    v19 = v15[3];
    v83 = v15[2];
    v84 = v19;
    v20 = v15[1];
    v81 = *v15;
    v82 = v20;
    v21 = v15[3];
    v78 = v83;
    v79 = v21;
    v85 = *(v15 + 8);
    v80 = *(v15 + 8);
    v76 = v81;
    v77 = v18;
    sub_1002CC418(&v81, &v71);
    (v64)(&type metadata for WorkoutSplitEntity, &off_100850D30);
    v63 = *v65;
    v22 = v63(v14, 1, v91);
    sub_10000EA04(v14, v16);
    if (v22 != 1)
    {
      break;
    }

    sub_10040765C(&v81);
LABEL_4:
    v15 = (v15 + 72);
    if (!--v17)
    {
      goto LABEL_8;
    }
  }

  v23 = v16;
  v24 = v14;
  v25 = v59;
  sub_10026A320();
  v26 = sub_100140278(&qword_1008DEC88);
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  sub_10000EA04(v25, &qword_1008DEC70);
  if (v27 == 1)
  {
    sub_10040765C(&v81);
    v14 = v24;
    v16 = v23;
    goto LABEL_4;
  }

  v88 = v83;
  v89 = v84;
  v90 = v85;
  v86 = v81;
  v87 = v82;
  v30 = (v54 + 32);
  v59 = (v54 + 8);
  v31 = v61;
  v32 = v62;
  v33 = v58;
  v56 = (v54 + 32);
  do
  {
    v35 = v30;
    v36 = v32[1];
    v37 = v32[3];
    v78 = v32[2];
    v79 = v37;
    v38 = v32[1];
    v76 = *v32;
    v77 = v38;
    v39 = v32[3];
    v73 = v78;
    v74 = v39;
    v80 = *(v32 + 8);
    v62 = v32;
    v75 = *(v32 + 8);
    v71 = v76;
    v72 = v36;
    sub_1002CC418(&v76, &v66);
    v40 = v64;
    (v64)(&type metadata for WorkoutSplitEntity);
    v41 = v91;
    v42 = v63;
    if (v63(v33, 1, v91) == 1)
    {
      v68 = v73;
      v69 = v74;
      v70 = v75;
      v66 = v71;
      v67 = v72;
      sub_10040765C(&v66);
      sub_10000EA04(v33, &qword_1008DED28);
      v34 = v62;
      v30 = v35;
    }

    else
    {
      v61 = v31;
      v43 = *v35;
      (*v35)(v60, v33, v41);
      v44 = v57;
      (v40)(&type metadata for WorkoutSplitEntity, &off_100850D30);
      if (v42(v44, 1, v41) == 1)
      {
        (*v59)(v60, v41);
        v68 = v73;
        v69 = v74;
        v70 = v75;
        v66 = v71;
        v67 = v72;
        sub_10040765C(&v66);
        sub_10000EA04(v44, &qword_1008DED28);
        v33 = v58;
        v31 = v61;
        v34 = v62;
        v30 = v56;
      }

      else
      {
        v45 = v55;
        v30 = v56;
        v43(v55, v44, v41);
        IntentParameter.wrappedValue.getter();
        v34 = v62;
        if (v66)
        {
          sub_1000059F8(0, &qword_1008DEE28);
          v46 = v60;
          v47 = static Measurement.< infix<A, B>(_:_:)();
        }

        else
        {
          sub_10014A6B0(&qword_1008EC7C0, &qword_1008DED40);
          v46 = v60;
          v47 = dispatch thunk of static Comparable.< infix(_:_:)();
        }

        v48 = v47;
        v49 = *v59;
        (*v59)(v45, v41);
        v49(v46, v41);
        v33 = v58;
        if (v48)
        {
          v68 = v88;
          v69 = v89;
          v70 = v90;
          v66 = v86;
          v67 = v87;
          sub_10040765C(&v66);
          v88 = v73;
          v89 = v74;
          v90 = v75;
          v86 = v71;
          v87 = v72;
        }

        else
        {
          v68 = v73;
          v69 = v74;
          v70 = v75;
          v66 = v71;
          v67 = v72;
          sub_10040765C(&v66);
        }

        v31 = v61;
      }
    }

    v32 = (v34 + 72);
    --v31;
  }

  while (v31);
  v50 = v89;
  v51 = v53;
  *(v53 + 32) = v88;
  *(v51 + 48) = v50;
  *(v51 + 64) = v90;
  result = v87;
  *v51 = v86;
  *(v51 + 16) = result;
  return result;
}

__n128 sub_1004014AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v91 = sub_100140278(&qword_1008DED40);
  v54 = *(v91 - 8);
  __chkstk_darwin(v91);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v52 - v5;
  v6 = sub_100140278(&qword_1008DEC70);
  __chkstk_darwin(v6 - 8);
  v59 = (&v52 - v7);
  v8 = sub_100140278(&qword_1008DED28);
  __chkstk_darwin(v8 - 8);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v52 - v11;
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v61 = *(a1 + 16);
  if (!v61)
  {
LABEL_8:
    sub_1004076D0();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return result;
  }

  v15 = (a1 + 32);
  v65 = (v54 + 48);
  v16 = &qword_1008DED28;
  v64 = sub_10040A7F4;
  v62 = (a1 + 32);
  v17 = v61;
  while (1)
  {
    v18 = v15[1];
    v19 = v15[3];
    v83 = v15[2];
    v84 = v19;
    v20 = v15[1];
    v81 = *v15;
    v82 = v20;
    v21 = v15[3];
    v78 = v83;
    v79 = v21;
    v85 = *(v15 + 8);
    v80 = *(v15 + 8);
    v76 = v81;
    v77 = v18;
    sub_1002CC4D0(&v81, &v71);
    (v64)(&type metadata for WorkoutSegmentEntity, &off_100850D10);
    v63 = *v65;
    v22 = v63(v14, 1, v91);
    sub_10000EA04(v14, v16);
    if (v22 != 1)
    {
      break;
    }

    sub_100407724(&v81);
LABEL_4:
    v15 = (v15 + 72);
    if (!--v17)
    {
      goto LABEL_8;
    }
  }

  v23 = v16;
  v24 = v14;
  v25 = v59;
  sub_10026A2FC();
  v26 = sub_100140278(&qword_1008DEC88);
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  sub_10000EA04(v25, &qword_1008DEC70);
  if (v27 == 1)
  {
    sub_100407724(&v81);
    v14 = v24;
    v16 = v23;
    goto LABEL_4;
  }

  v88 = v83;
  v89 = v84;
  v90 = v85;
  v86 = v81;
  v87 = v82;
  v30 = (v54 + 32);
  v59 = (v54 + 8);
  v31 = v61;
  v32 = v62;
  v33 = v58;
  v56 = (v54 + 32);
  do
  {
    v35 = v30;
    v36 = v32[1];
    v37 = v32[3];
    v78 = v32[2];
    v79 = v37;
    v38 = v32[1];
    v76 = *v32;
    v77 = v38;
    v39 = v32[3];
    v73 = v78;
    v74 = v39;
    v80 = *(v32 + 8);
    v62 = v32;
    v75 = *(v32 + 8);
    v71 = v76;
    v72 = v36;
    sub_1002CC4D0(&v76, &v66);
    v40 = v64;
    (v64)(&type metadata for WorkoutSegmentEntity);
    v41 = v91;
    v42 = v63;
    if (v63(v33, 1, v91) == 1)
    {
      v68 = v73;
      v69 = v74;
      v70 = v75;
      v66 = v71;
      v67 = v72;
      sub_100407724(&v66);
      sub_10000EA04(v33, &qword_1008DED28);
      v34 = v62;
      v30 = v35;
    }

    else
    {
      v61 = v31;
      v43 = *v35;
      (*v35)(v60, v33, v41);
      v44 = v57;
      (v40)(&type metadata for WorkoutSegmentEntity, &off_100850D10);
      if (v42(v44, 1, v41) == 1)
      {
        (*v59)(v60, v41);
        v68 = v73;
        v69 = v74;
        v70 = v75;
        v66 = v71;
        v67 = v72;
        sub_100407724(&v66);
        sub_10000EA04(v44, &qword_1008DED28);
        v33 = v58;
        v31 = v61;
        v34 = v62;
        v30 = v56;
      }

      else
      {
        v45 = v55;
        v30 = v56;
        v43(v55, v44, v41);
        IntentParameter.wrappedValue.getter();
        v34 = v62;
        if (v66)
        {
          sub_1000059F8(0, &qword_1008DEE28);
          v46 = v60;
          v47 = static Measurement.< infix<A, B>(_:_:)();
        }

        else
        {
          sub_10014A6B0(&qword_1008EC7C0, &qword_1008DED40);
          v46 = v60;
          v47 = dispatch thunk of static Comparable.< infix(_:_:)();
        }

        v48 = v47;
        v49 = *v59;
        (*v59)(v45, v41);
        v49(v46, v41);
        v33 = v58;
        if (v48)
        {
          v68 = v88;
          v69 = v89;
          v70 = v90;
          v66 = v86;
          v67 = v87;
          sub_100407724(&v66);
          v88 = v73;
          v89 = v74;
          v90 = v75;
          v86 = v71;
          v87 = v72;
        }

        else
        {
          v68 = v73;
          v69 = v74;
          v70 = v75;
          v66 = v71;
          v67 = v72;
          sub_100407724(&v66);
        }

        v31 = v61;
      }
    }

    v32 = (v34 + 72);
    --v31;
  }

  while (v31);
  v50 = v89;
  v51 = v53;
  *(v53 + 32) = v88;
  *(v51 + 48) = v50;
  *(v51 + 64) = v90;
  result = v87;
  *v51 = v86;
  *(v51 + 16) = result;
  return result;
}

uint64_t sub_100401C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v71 = sub_100140278(&qword_1008DED40);
  v64 = *(v71 - 1);
  __chkstk_darwin(v71);
  v59 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v58 - v5;
  v6 = sub_100140278(&qword_1008DEC70);
  __chkstk_darwin(v6 - 8);
  v68 = &v58 - v7;
  v8 = sub_100140278(&qword_1008DED28);
  __chkstk_darwin(v8 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v58 - v11;
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for WorkoutActivityEntity(0);
  __chkstk_darwin(v15);
  v63 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  __chkstk_darwin(v20);
  v65 = (&v58 - v22);
  v69 = *(a1 + 16);
  if (v69)
  {
    v23 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v74 = sub_10019C820;
    v75 = (v64 + 48);
    v24 = &qword_1008DED28;
    v73 = *(v21 + 72);
    v70 = v23;
    v25 = v69;
    while (1)
    {
      sub_1002CC590(v23, v19);
      (v74)(v15, &off_100850CF0);
      v72 = *v75;
      v26 = v72(v14, 1, v71);
      sub_10000EA04(v14, v24);
      if (v26 != 1)
      {
        v27 = v24;
        v28 = v68;
        sub_10019C848();
        v29 = sub_100140278(&qword_1008DEC88);
        v30 = (*(*(v29 - 8) + 48))(v28, 1, v29);
        v31 = v28;
        v24 = v27;
        sub_10000EA04(v31, &qword_1008DEC70);
        if (v30 != 1)
        {
          break;
        }
      }

      sub_1002CC5F4(v19);
      v23 += v73;
      if (!--v25)
      {
        goto LABEL_19;
      }
    }

    v68 = v15;
    v32 = v19;
    v33 = v65;
    sub_100407778(v32, v65, type metadata accessor for WorkoutActivityEntity);
    sub_100407778(v33, v66, type metadata accessor for WorkoutActivityEntity);
    v34 = v63;
    v65 = v64 + 32;
    v60 = (v64 + 8);
    result = v70;
    v36 = v71;
    v37 = v62;
    v38 = v69;
    v39 = v74;
    do
    {
      v70 = result;
      sub_1002CC590(result, v34);
      v41 = v68;
      v71 = off_100850CF8;
      (v39)(v68, &off_100850CF0);
      v42 = v34;
      v43 = v72;
      if (v72(v37, 1, v36) == 1)
      {
        sub_1002CC5F4(v42);
        sub_10000EA04(v37, &qword_1008DED28);
        v40 = v70;
        v34 = v42;
      }

      else
      {
        v69 = v38;
        v44 = v67;
        v64 = *v65;
        (v64)(v67, v37, v36);
        v45 = v61;
        v46 = v41;
        v47 = v36;
        (v39)(v46, &off_100850CF0);
        if (v43(v45, 1, v36) == 1)
        {
          (*v60)(v44, v36);
          v34 = v63;
          sub_1002CC5F4(v63);
          sub_10000EA04(v45, &qword_1008DED28);
          v37 = v62;
          v38 = v69;
          v40 = v70;
        }

        else
        {
          v48 = v45;
          v49 = v59;
          (v64)(v59, v48, v36);
          IntentParameter.wrappedValue.getter();
          v50 = v70;
          if (v76)
          {
            sub_1000059F8(0, &qword_1008DEE28);
            v51 = v67;
            v52 = static Measurement.< infix<A, B>(_:_:)();
          }

          else
          {
            sub_10014A6B0(&qword_1008EC7C0, &qword_1008DED40);
            v51 = v67;
            v52 = dispatch thunk of static Comparable.< infix(_:_:)();
          }

          v53 = v49;
          v54 = v52;
          v55 = *v60;
          (*v60)(v53, v47);
          v55(v51, v47);
          v36 = v47;
          v34 = v63;
          v38 = v69;
          if (v54)
          {
            v56 = v66;
            sub_1002CC5F4(v66);
            sub_100407778(v34, v56, type metadata accessor for WorkoutActivityEntity);
          }

          else
          {
            sub_1002CC5F4(v63);
          }

          v37 = v62;
          v40 = v50;
        }
      }

      result = v40 + v73;
      --v38;
    }

    while (v38);
  }

  else
  {
LABEL_19:
    sub_1004076D0();
    swift_allocError();
    *v57 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10040238C()
{
  v0 = sub_100140278(&qword_1008DEC70);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  v3 = sub_100140278(&qword_1008DEC88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  EntityProperty.wrappedValue.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000EA04(v2, &qword_1008DEC70);
    v7 = 1;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_1000059F8(0, &qword_1008DEE38);
    v7 = static Measurement.< infix<A, B>(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

uint64_t sub_10040259C()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_100140278(&qword_1008EC7F8);
  sub_100140278(&qword_1008EC800);
  sub_10014A6B0(&qword_1008EC808, &qword_1008EC7F8);
  sub_10014A6B0(&qword_1008EC810, &qword_1008EC800);
  sub_10014A6B0(&qword_1008EC818, &qword_1008EC758);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_1004027B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1002A4F38;

  return sub_1003FC39C(a1);
}

double sub_10040285C@<D0>(uint64_t a1@<X8>)
{
  sub_100404A9C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1004028A0(uint64_t a1)
{
  v2 = sub_10036F870();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1004028DC()
{
  v0 = sub_100140278(&qword_1008EC748);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008EC750);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008EC740);
  sub_100163368(v5, qword_1009258E0);
  sub_10001AC90(v5, qword_1009258E0);
  sub_100402F8C();
  EnumURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EnumURLRepresentation.StringInterpolation.Token.rawValue<A>(_:), v0);
  EnumURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EnumURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_100402AF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x70614C6B63617274;
    v6 = 0x737465536D697773;
    if (a1 != 8)
    {
      v6 = 7364973;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7265776F70;
    if (a1 != 5)
    {
      v7 = 0x6C6C69686E776F64;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736C6961746564;
    v2 = 0x73746E656D676573;
    v3 = 0x6C61767265746E69;
    if (a1 != 3)
    {
      v3 = 0x7461527472616568;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7374696C7073;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100402C2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100402AF0(*a1);
  v5 = v4;
  if (v3 == sub_100402AF0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_100402CB8()
{
  result = qword_1008EC5D8;
  if (!qword_1008EC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5D8);
  }

  return result;
}

Swift::Int sub_100402D0C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100402AF0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100402D70()
{
  sub_100402AF0(*v0);
  String.hash(into:)();
}

Swift::Int sub_100402DC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100402AF0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100402E24@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100404390(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100402E54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100402AF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100402E84()
{
  result = qword_1008EC5E0;
  if (!qword_1008EC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5E0);
  }

  return result;
}

unint64_t sub_100402EDC()
{
  result = qword_1008EC5E8;
  if (!qword_1008EC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5E8);
  }

  return result;
}

unint64_t sub_100402F34()
{
  result = qword_1008EC5F0;
  if (!qword_1008EC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5F0);
  }

  return result;
}

unint64_t sub_100402F8C()
{
  result = qword_1008EC5F8;
  if (!qword_1008EC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC5F8);
  }

  return result;
}

unint64_t sub_100402FE4()
{
  result = qword_1008EC600;
  if (!qword_1008EC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC600);
  }

  return result;
}

uint64_t sub_100403038@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008EC740);
  v3 = sub_10001AC90(v2, qword_1009258E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1004030F0()
{
  result = qword_1008EC608;
  if (!qword_1008EC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC608);
  }

  return result;
}

unint64_t sub_100403144()
{
  result = qword_1008EC610;
  if (!qword_1008EC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC610);
  }

  return result;
}

unint64_t sub_10040319C()
{
  result = qword_1008EC618;
  if (!qword_1008EC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC618);
  }

  return result;
}

uint64_t sub_1004031F0()
{
  sub_1004074A4();
  v1 = URLRepresentableEnum.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004032AC(uint64_t a1)
{
  v2 = sub_100402F8C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1004032FC()
{
  result = qword_1008EC620;
  if (!qword_1008EC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC620);
  }

  return result;
}

unint64_t sub_100403354()
{
  result = qword_1008EC628;
  if (!qword_1008EC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC628);
  }

  return result;
}

unint64_t sub_1004033AC()
{
  result = qword_1008EC630;
  if (!qword_1008EC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC630);
  }

  return result;
}

uint64_t sub_100403404(uint64_t a1)
{
  v2 = sub_10040319C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1004034C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v8, a2);
  sub_10001AC90(v8, a2);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v7 + 56))(v5, 1, 1, v6);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

unint64_t sub_10040363C()
{
  result = qword_1008EC648;
  if (!qword_1008EC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC648);
  }

  return result;
}

Swift::Int sub_100403690()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100403758()
{
  String.hash(into:)();
}

Swift::Int sub_10040380C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004038D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100407458(*a1);
  *a2 = result;
  return result;
}

void sub_100403900(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x74696C7073;
  v4 = 0xE700000000000000;
  v5 = 0x746E656D676573;
  if (*v1 != 2)
  {
    v5 = 0x6C61767265746E69;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x70536D6F74737563;
    v2 = 0xEB0000000074696CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100403988()
{
  result = qword_1008EC650;
  if (!qword_1008EC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC650);
  }

  return result;
}

unint64_t sub_1004039E0()
{
  result = qword_1008EC658;
  if (!qword_1008EC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC658);
  }

  return result;
}

unint64_t sub_100403A38()
{
  result = qword_1008EC660;
  if (!qword_1008EC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC660);
  }

  return result;
}

unint64_t sub_100403A90()
{
  result = qword_1008EC668;
  if (!qword_1008EC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC668);
  }

  return result;
}

unint64_t sub_100403AE4()
{
  result = qword_1008EC670;
  if (!qword_1008EC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC670);
  }

  return result;
}

unint64_t sub_100403B3C()
{
  result = qword_1008EC678;
  if (!qword_1008EC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC678);
  }

  return result;
}

uint64_t sub_100403BC8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10001AC90(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_100403CDC()
{
  result = qword_1008EC680;
  if (!qword_1008EC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC680);
  }

  return result;
}

uint64_t sub_100403D30(uint64_t a1)
{
  v2 = sub_100403CDC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100403D80()
{
  result = qword_1008EC688;
  if (!qword_1008EC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC688);
  }

  return result;
}

unint64_t sub_100403DD8()
{
  result = qword_1008EC690;
  if (!qword_1008EC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC690);
  }

  return result;
}

unint64_t sub_100403E30()
{
  result = qword_1008EC698;
  if (!qword_1008EC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC698);
  }

  return result;
}

uint64_t sub_100403E88(uint64_t a1)
{
  v2 = sub_100403B3C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100403FAC(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_100404074(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_10047CE98(a1, a2, *v2);
  v72 = v3;
  if (!v3)
  {
    if (v8)
    {
      return *(v6 + 16);
    }

    v9 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        return result;
      }

      v45 = a1;
      v12 = 72 * result + 104;
      while (v9 < v10)
      {
        v13 = result;
        v14 = v6;
        v15 = v6 + v12;
        v70[0] = *v15;
        v16 = *(v15 + 16);
        v17 = *(v15 + 32);
        v18 = *(v15 + 48);
        v71 = *(v15 + 64);
        v70[2] = v17;
        v70[3] = v18;
        v70[1] = v16;
        v67 = v17;
        v68 = v18;
        v69 = v71;
        v65 = v70[0];
        v66 = v16;
        sub_1002CC418(v70, &v60);
        v19 = v4;
        v20 = v72;
        v21 = v45(&v65);
        v72 = v20;
        if (v20)
        {
          v62 = v67;
          v63 = v68;
          v64 = v69;
          v60 = v65;
          v61 = v66;
          return sub_10040765C(&v60);
        }

        v22 = v21;
        v62 = v67;
        v63 = v68;
        v64 = v69;
        v60 = v65;
        v61 = v66;
        sub_10040765C(&v60);
        if (v22)
        {
          v4 = v19;
          result = v13;
          v6 = v14;
        }

        else
        {
          result = v13;
          if (v9 == v13)
          {
            v4 = v19;
            v6 = v14;
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v23 = *v11;
            if (v13 >= *v11)
            {
              goto LABEL_27;
            }

            v24 = v14 + 32 + 72 * v13;
            v50 = *v24;
            v25 = *(v24 + 16);
            v26 = *(v24 + 32);
            v27 = *(v24 + 48);
            v54 = *(v24 + 64);
            v52 = v26;
            v53 = v27;
            v51 = v25;
            if (v9 >= v23)
            {
              goto LABEL_28;
            }

            v55 = *v15;
            v28 = *(v15 + 16);
            v29 = *(v15 + 32);
            v30 = *(v15 + 48);
            v59 = *(v15 + 64);
            v57 = v29;
            v58 = v30;
            v56 = v28;
            sub_1002CC418(&v50, v48);
            sub_1002CC418(&v55, v48);
            result = swift_isUniquelyReferenced_nonNull_native();
            v6 = v14;
            if ((result & 1) == 0)
            {
              result = sub_10057F694(v14);
              v6 = result;
            }

            v4 = v19;
            if (v13 >= *(v6 + 16))
            {
              goto LABEL_29;
            }

            v31 = v6 + 72 * v13;
            v46[0] = *(v31 + 32);
            v32 = *(v31 + 48);
            v33 = *(v31 + 64);
            v34 = *(v31 + 80);
            v47 = *(v31 + 96);
            v46[2] = v33;
            v46[3] = v34;
            v46[1] = v32;
            v36 = v57;
            v35 = v58;
            v37 = v56;
            *(v31 + 96) = v59;
            *(v31 + 64) = v36;
            *(v31 + 80) = v35;
            *(v31 + 48) = v37;
            *(v31 + 32) = v55;
            result = sub_10040765C(v46);
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_30;
            }

            v38 = v6 + v12;
            v48[0] = *(v6 + v12);
            v39 = *(v6 + v12 + 16);
            v40 = *(v6 + v12 + 32);
            v41 = *(v6 + v12 + 48);
            v49 = *(v6 + v12 + 64);
            v48[2] = v40;
            v48[3] = v41;
            v48[1] = v39;
            v43 = v52;
            v42 = v53;
            v44 = v51;
            *(v38 + 64) = v54;
            *(v38 + 32) = v43;
            *(v38 + 48) = v42;
            *(v38 + 16) = v44;
            *v38 = v50;
            sub_10040765C(v48);
            *v2 = v6;
            result = v13;
          }

          ++result;
        }

        ++v9;
        v11 = (v6 + 16);
        v10 = *(v6 + 16);
        v12 += 72;
        if (v9 == v10)
        {
          return result;
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
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100404390(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100841A68, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004043DC()
{
  v0 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v0 - 8);
  v35 = v31 - v1;
  v41 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v31 - v9;
  v11 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v40 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100140278(&qword_1008EC758);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v39 = *(v15 + 56);
  v42 = v15 + 56;
  v39(v13, 0, 1, v14);
  sub_1004074F8(v59);
  v55 = v59[12];
  v56 = v59[13];
  v57 = v59[14];
  v58 = v59[15];
  v51 = v59[8];
  v52 = v59[9];
  v53 = v59[10];
  v54 = v59[11];
  v47 = v59[4];
  v48 = v59[5];
  v49 = v59[6];
  v50 = v59[7];
  v43 = v59[0];
  v44 = v59[1];
  v45 = v59[2];
  v46 = v59[3];
  v18 = type metadata accessor for IntentDialog();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v32 = v20;
  v33 = v19 + 56;
  v20(v10, 1, 1, v18);
  v31[0] = v7;
  v20(v7, 1, 1, v18);
  v38 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v2 + 104);
  v36 = v2 + 104;
  v37 = v21;
  v22 = v41;
  v21(v4);
  sub_1001C2D24();
  v31[1] = v17;
  v23 = v4;
  v34 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v31[2] = sub_100140278(&qword_1008EC760);
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v13;
  LocalizedStringResource.init(stringLiteral:)();
  v39(v13, 0, 1, v40);
  v25 = type metadata accessor for WorkoutActivityEntity(0);
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v26 = v10;
  v27 = v10;
  v28 = v32;
  v32(v27, 1, 1, v18);
  v29 = v31[0];
  v28(v31[0], 1, 1, v18);
  v37(v23, v38, v22);
  sub_100407834(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);
  v35 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100140278(&qword_1008EC7D8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v39(v24, 0, 1, v40);
  LOBYTE(v43) = 10;
  v28(v26, 1, 1, v18);
  v28(v29, 1, 1, v18);
  v37(v23, v38, v41);
  sub_100402F8C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  return v34;
}

uint64_t sub_100404A9C@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v1 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v1 - 8);
  v44 = &v38 - v2;
  v54 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v54 - 8);
  __chkstk_darwin(v54);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v49 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v48 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100140278(&qword_1008EC758);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v50 = *(v16 + 56);
  v55 = v16 + 56;
  v50(v14, 0, 1, v15);
  sub_1004074F8(v72);
  v68 = v72[12];
  v69 = v72[13];
  v70 = v72[14];
  v71 = v72[15];
  v64 = v72[8];
  v65 = v72[9];
  v66 = v72[10];
  v67 = v72[11];
  v60 = v72[4];
  v61 = v72[5];
  v62 = v72[6];
  v63 = v72[7];
  v56 = v72[0];
  v57 = v72[1];
  v58 = v72[2];
  v59 = v72[3];
  v18 = type metadata accessor for IntentDialog();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v47 = v19 + 56;
  v20(v11, 1, 1, v18);
  v39 = v8;
  v20(v8, 1, 1, v18);
  v53 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v3 + 104);
  v51 = v3 + 104;
  v52 = v21;
  v40 = v5;
  v22 = v54;
  v21(v5);
  sub_1001C2D24();
  v23 = v11;
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v42 = sub_100140278(&qword_1008EC760);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v49;
  v50(v14, 0, 1, v49);
  v25 = type metadata accessor for WorkoutActivityEntity(0);
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  v26 = v23;
  v46 = v18;
  v41 = v20;
  v20(v23, 1, 1, v18);
  v27 = v39;
  v20(v39, 1, 1, v18);
  v28 = v40;
  v52(v40, v53, v22);
  sub_100407834(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);
  v29 = v26;
  v30 = v27;
  v44 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v42 = sub_100140278(&qword_1008EC768);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v50(v14, 0, 1, v24);
  LOBYTE(v56) = 0;
  v31 = v46;
  v32 = v41;
  v41(v29, 1, 1, v46);
  v32(v30, 1, 1, v31);
  v52(v28, v53, v54);
  sub_100407520();
  v42 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_100140278(&qword_1008EC778);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v50(v14, 0, 1, v49);
  LOBYTE(v56) = 4;
  v33 = v46;
  v32(v29, 1, 1, v46);
  v32(v30, 1, 1, v33);
  v52(v28, v53, v54);
  sub_100403CDC();
  v34 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_100140278(&qword_1008DD150);
  type metadata accessor for AppDependencyManager();
  v56 = 0u;
  v57 = 0u;
  *&v58 = 0;
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v36 = v45;
  v37 = v44;
  *v45 = v43;
  v36[1] = v37;
  v36[2] = v42;
  v36[3] = v34;
  v36[4] = result;
  return result;
}

uint64_t sub_1004052E8()
{
  v0 = sub_100140278(&qword_1008EC850);
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = v36 - v1;
  v2 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v2 - 8);
  v42 = v36 - v3;
  v4 = type metadata accessor for InputConnectionBehavior();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  __chkstk_darwin(v4);
  v50 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v36 - v11;
  v13 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v13 - 8);
  v15 = v36 - v14;
  v16 = type metadata accessor for LocalizedStringResource();
  v52 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100140278(&qword_1008EC758);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = *(v17 + 56);
  v49 = v17 + 56;
  v51 = v20;
  v20(v15, 0, 1, v16);
  sub_1004074F8(v74);
  v70 = v74[12];
  v71 = v74[13];
  v72 = v74[14];
  v73 = v74[15];
  v66 = v74[8];
  v67 = v74[9];
  v68 = v74[10];
  v69 = v74[11];
  v62 = v74[4];
  v63 = v74[5];
  v64 = v74[6];
  v65 = v74[7];
  v58 = v74[0];
  v59 = v74[1];
  v60 = v74[2];
  v61 = v74[3];
  v21 = type metadata accessor for IntentDialog();
  v46 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v47 = v23;
  v48 = v22 + 56;
  v23(v12, 1, 1, v21);
  v23(v9, 1, 1, v21);
  v41 = sub_100140278(&qword_1008DD148);
  v24 = type metadata accessor for AppDependencyManager();
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  static AppDependencyManager.shared.getter();
  v25 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v40 = v24;
  static AppDependencyManager.shared.getter();
  v26 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  static AppDependencyManager.shared.getter();
  v27 = AppDependency.__allocating_init(key:manager:)();
  *&v55 = v25;
  *(&v55 + 1) = v26;
  *&v56 = v27;
  v37 = enum case for InputConnectionBehavior.default(_:);
  v28 = v53;
  v38 = *(v54 + 104);
  v54 += 104;
  v38(v50);
  sub_1004077E0();
  sub_1001C2D24();
  v36[0] = v19;
  v39 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  v36[1] = sub_100140278(&qword_1008EC760);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v51(v15, 0, 1, v52);
  v29 = type metadata accessor for WorkoutActivityEntity(0);
  (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
  v30 = v46;
  v31 = v47;
  v47(v12, 1, 1, v46);
  v31(v9, 1, 1, v30);
  v32 = v50;
  v33 = v37;
  v34 = v38;
  (v38)(v50, v37, v28);
  sub_100407834(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);
  v42 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100140278(&qword_1008EC860);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v51(v15, 0, 1, v52);
  *&v58 = 0;
  BYTE8(v58) = 1;
  v47(v12, 1, 1, v46);
  (*(v44 + 104))(v43, enum case for IntentParameter.IntControlStyle.stepper<A>(_:), v45);
  v34(v32, v33, v53);
  IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  *&v60 = 0;
  v58 = 0u;
  v59 = 0u;
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v39;
}

uint64_t sub_100405B78(__int128 *a1, uint64_t a2, int a3)
{
  v56 = a3;
  v55 = a2;
  v4 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v4 - 8);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v47 - v7;
  v61 = type metadata accessor for InputConnectionBehavior();
  v66 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for LocalizedStringResource();
  v63 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100140278(&qword_1008EC758);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v22 = *(v19 + 56);
  v62 = v19 + 56;
  v64 = v22;
  v22(v17, 0, 1, v18);
  sub_1004074F8(v84);
  v80 = v84[12];
  v81 = v84[13];
  v82 = v84[14];
  v83 = v84[15];
  v76 = v84[8];
  v77 = v84[9];
  v78 = v84[10];
  v79 = v84[11];
  v72 = v84[4];
  v73 = v84[5];
  v74 = v84[6];
  v75 = v84[7];
  v68 = v84[0];
  v69 = v84[1];
  v70 = v84[2];
  v71 = v84[3];
  v23 = type metadata accessor for IntentDialog();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v57 = v24 + 56;
  v48 = v14;
  v25(v14, 1, 1, v23);
  v26 = v11;
  v25(v11, 1, 1, v23);
  v27 = v25;
  v59 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v66 + 104);
  v66 += 104;
  v58 = v28;
  v29 = v61;
  v28(v60);
  sub_1001C2D24();
  v50 = v21;
  v53 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v52 = sub_100140278(&qword_1008EC760);

  LocalizedStringResource.init(stringLiteral:)();
  v30 = v17;
  LocalizedStringResource.init(stringLiteral:)();
  v64(v17, 0, 1, v63);
  v31 = type metadata accessor for WorkoutActivityEntity(0);
  (*(*(v31 - 8) + 56))(v65, 1, 1, v31);
  v32 = v48;
  v51 = v27;
  v27(v48, 1, 1, v23);
  v27(v26, 1, 1, v23);
  v33 = v60;
  v58(v60, v59, v29);
  sub_100407834(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);
  v52 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v49 = sub_100140278(&qword_1008EC7D8);

  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v64(v30, 0, 1, v63);
  LOBYTE(v68) = 10;
  v34 = v51;
  v51(v32, 1, 1, v23);
  v34(v26, 1, 1, v23);
  v58(v33, v59, v61);
  sub_100402F8C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v35 = a1[13];
  v80 = a1[12];
  v81 = v35;
  v36 = a1[15];
  v82 = a1[14];
  v83 = v36;
  v37 = a1[9];
  v76 = a1[8];
  v77 = v37;
  v38 = a1[11];
  v78 = a1[10];
  v79 = v38;
  v39 = a1[5];
  v72 = a1[4];
  v73 = v39;
  v40 = a1[7];
  v74 = a1[6];
  v75 = v40;
  v41 = a1[1];
  v68 = *a1;
  v69 = v41;
  v42 = a1[3];
  v70 = a1[2];
  v71 = v42;

  sub_1001C6FE0(a1, &v67);
  v43 = v53;
  IntentParameter.wrappedValue.setter();
  v44 = v55;
  v45 = v65;
  sub_10001B104(v55, v65, &qword_1008E65E0);
  sub_10001B104(v45, v54, &qword_1008E65E0);
  IntentParameter.wrappedValue.setter();
  sub_10000EA04(v45, &qword_1008E65E0);
  LOBYTE(v68) = v56;
  IntentParameter.wrappedValue.setter();
  sub_1001C7018(a1);
  sub_10000EA04(v44, &qword_1008E65E0);

  return v43;
}

uint64_t sub_1004063E0()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  v0[2] = v1;
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v0[3] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  v2 = AppDependency.__allocating_init(key:manager:)();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10040656C;

  return sub_1002086B4(v1, v2);
}

uint64_t sub_10040656C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004066D4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1004066D4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10040674C()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v31 = &v29 - v1;
  v2 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_100140278(&qword_1008EC728);
  v7 = sub_100140278(&qword_1008EC730);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  v32 = v10;
  *(v10 + 16) = xmmword_1006EB180;
  v30 = *(v7 + 48);
  *(v10 + v9) = 0;
  v11 = v10 + v9;
  LocalizedStringResource.init(stringLiteral:)();
  v12 = *(v6 + 56);
  v36 = v5;
  v12(v4, 1, 1, v5);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v38 = v11;
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v11 + v8) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v12(v4, 1, 1, v5);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v13 = v8;
  v37 = v8;
  v30 = 2 * v8;
  v14 = v38;
  v29 = *(v7 + 48);
  *(v38 + 2 * v8) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v15 = v36;
  v35 = v6 + 56;
  v33 = v12;
  v12(v4, 1, 1, v36);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v34 = v7;
  *(v14 + v30 + v13) = 3;
  LocalizedStringResource.init(stringLiteral:)();
  v16 = v33;
  v33(v4, 1, 1, v15);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v17 = v37;
  *(v14 + 4 * v37) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v18 = v36;
  v16(v4, 1, 1, v36);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v19 = v17;
  v20 = v38;
  v21 = (v38 + 5 * v17);
  v22 = v34;
  v30 = *(v34 + 48);
  *v21 = 5;
  LocalizedStringResource.init(stringLiteral:)();
  v16(v4, 1, 1, v18);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v20 + 6 * v19) = 6;
  LocalizedStringResource.init(stringLiteral:)();
  v16(v4, 1, 1, v18);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v23 = v38;
  v24 = 8 * v37;
  v30 = *(v22 + 48);
  *(v38 + 7 * v37) = 7;
  LocalizedStringResource.init(stringLiteral:)();
  v25 = v36;
  v16(v4, 1, 1, v36);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v23 + v24) = 8;
  LocalizedStringResource.init(stringLiteral:)();
  v26 = v33;
  v33(v4, 1, 1, v25);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v38 + v24 + v37) = 9;
  LocalizedStringResource.init(stringLiteral:)();
  v26(v4, 1, 1, v25);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v27 = sub_1004CBB88(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v27;
}
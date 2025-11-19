id sub_10022B110()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsCalendarView.Representation.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10022B1A8()
{
  result = type metadata accessor for InsightsCalendarView.Representation(319);
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

void sub_10022B2A0()
{
  sub_10022B38C(319, &qword_100AD9848, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10022B38C(319, &qword_100AD3AE8, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100122F00();
      if (v2 <= 0x3F)
      {
        sub_100087C9C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10022B38C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000F2A18(&unk_100AD9850);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10022B420()
{
  sub_10022B38C(319, &qword_100AD9848, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10022B578(319, &unk_100AD9920, &type metadata accessor for Locale);
    if (v1 <= 0x3F)
    {
      sub_10022B578(319, &qword_100AF70F0, &type metadata accessor for Calendar);
      if (v2 <= 0x3F)
      {
        sub_10022B578(319, &qword_100AD9930, &type metadata accessor for TimeZone);
        if (v3 <= 0x3F)
        {
          sub_10022B578(319, &qword_100AD9938, type metadata accessor for InsightsDataManager);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10022B578(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10022B5DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022BC1C(v2, v5, type metadata accessor for InsightsCalendarView.Representation);
  v6 = type metadata accessor for InsightsCalendarView.Representation.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_10022BC1C(v5, v7 + OBJC_IVAR____TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator_parent, type metadata accessor for InsightsCalendarView.Representation);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_10022C254(v5, type metadata accessor for InsightsCalendarView.Representation);
  *a2 = v8;
  return result;
}

double sub_10022B6DC(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = INFINITY;
  if (a2)
  {
    *&a1 = INFINITY;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits:{*&a1, v6}];
  return result;
}

uint64_t sub_10022B73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022BA90(&unk_100AD99D0, type metadata accessor for InsightsCalendarView.Representation);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10022B7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022BA90(&unk_100AD99D0, type metadata accessor for InsightsCalendarView.Representation);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10022B864()
{
  sub_10022BA90(&unk_100AD99D0, type metadata accessor for InsightsCalendarView.Representation);
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_10022B920(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10022B9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10022BA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022BAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsCalendarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022BB3C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InsightsCalendarView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100228884(a1, a2, v6);
}

uint64_t sub_10022BBBC()
{
  type metadata accessor for InsightsCalendarView(0);

  return sub_100228A40();
}

uint64_t sub_10022BC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10022BC84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsCalendarView.Representation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10022BCF8()
{
  v1 = v0;
  v2 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InsightsCalendarView.Representation(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateComponents.date.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100004F84(v13, &unk_100AD4790);
    return 0;
  }

  else
  {
    v19 = *(v15 + 32);
    v35 = v17;
    v19(v17, v13, v14);
    v20 = OBJC_IVAR____TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator_parent;
    swift_beginAccess();
    sub_10022BC1C(v1 + v20, v10, type metadata accessor for InsightsCalendarView.Representation);
    v21 = &v10[*(v8 + 36)];
    v22 = *v21;
    LOBYTE(v20) = v21[8];

    if ((v20 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v36 + 8))(v7, v37);
      v22 = aBlock[0];
    }

    sub_10022C254(v10, type metadata accessor for InsightsCalendarView.Representation);
    swift_getKeyPath();
    aBlock[0] = v22;
    sub_10022BA90(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10022BC1C(v22 + v24, v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    v25 = v35;
    sub_1000B8860(v35);
    v27 = v26;
    v29 = v28;
    sub_10022C254(v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    if (v29 && (, , v27 >= 1))
    {
      v30 = objc_opt_self();
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      aBlock[4] = sub_10022C2B4;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10022B920;
      aBlock[3] = &unk_100A61D60;
      v32 = _Block_copy(aBlock);

      v18 = [v30 decorationWithCustomViewProvider:v32];
      _Block_release(v32);
    }

    else
    {
      v18 = 0;
    }

    (*(v15 + 8))(v25, v14);
  }

  return v18;
}

uint64_t sub_10022C254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10022C2BC()
{
  result = qword_100AD99E0;
  if (!qword_100AD99E0)
  {
    sub_1000F2A18(&qword_100AD99B8);
    sub_10022C348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD99E0);
  }

  return result;
}

unint64_t sub_10022C348()
{
  result = qword_100AD99E8;
  if (!qword_100AD99E8)
  {
    sub_1000F2A18(&qword_100AD9980);
    type metadata accessor for InsightsCalendarView.Representation(255);
    sub_1000F2A18(&unk_100AD9850);
    sub_10022BA90(&qword_100AD9978, type metadata accessor for InsightsCalendarView.Representation);
    sub_1001235B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD99E8);
  }

  return result;
}

void sub_10022C4F4()
{
  v1 = v0;
  v2 = sub_100051F80();
  [v2 setHidden:1];

  v3 = [v0 textLayoutManager];
  if (v3)
  {
    v4 = v3;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v5 = swift_allocObject();
    v5[2] = &v61;
    v5[3] = &v60;
    v5[4] = &v59;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10022DC3C;
    *(v6 + 24) = v5;
    v57 = sub_100096024;
    v58 = v6;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100095FB4;
    v56 = &unk_100A61EC8;
    v7 = _Block_copy(&aBlock);

    v8 = [v4 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v7];
    swift_unknownObjectRelease();
    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = v59;
      if (v59)
      {
        v10 = 1;
      }

      else
      {
        if (!v61)
        {
          goto LABEL_15;
        }

        v17 = [v61 rangeInElement];
        v18 = [v17 endLocation];

        v19 = [v4 documentRange];
        v20 = [v19 endLocation];

        v21 = [v18 compare:v20];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v10 = v21 != -1;
        if (v21 == -1)
        {
          v22 = v60;
          if (v60)
          {
            v22 = [v60 rangeInElement];
          }

          v23 = v59;
          v59 = v22;
        }

        v9 = v59;
        if (!v59)
        {
LABEL_15:

          v24 = v61;
LABEL_27:

          return;
        }
      }

      memset(&v51, 0, sizeof(v51));
      v52 = 1;
      v11 = swift_allocObject();
      *(v11 + 16) = &v51;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_10022DC48;
      *(v12 + 24) = v11;
      v57 = sub_10022DC60;
      v58 = v12;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_1002B0148;
      v56 = &unk_100A61F40;
      v13 = _Block_copy(&aBlock);

      v14 = v9;

      [v4 enumerateTextSegmentsInRange:v14 type:0 options:7 usingBlock:v13];
      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        if ((v52 & 1) != 0 || (size = v51.size, origin = v51.origin, CGRectIsEmpty(v51)))
        {
        }

        else
        {
          v25 = [v4 baseWritingDirectionAtLocation:{objc_msgSend(v14, "location")}];
          swift_unknownObjectRelease();
          v26 = [objc_opt_self() defaultMetrics];
          v27 = [v1 traitCollection];
          [v26 scaledValueForValue:v27 compatibleWithTraitCollection:17.0];
          v29 = v28;

          v30 = ceil(v29);
          v31 = v30 + 40.0;
          if (v10)
          {
            v32 = 0.0;
          }

          else
          {
            v32 = v30;
          }

          v33 = [v4 textViewportLayoutController];
          v34 = OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade;
          v35 = *&v1[OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade];
          sub_1000065A8(0, &qword_100AD13A0);
          v36 = v35;
          v37 = NSString.init(stringLiteral:)();
          [v33 addRenderingSurface:v36 key:v37 group:0 placement:0];

          if (v25)
          {
            v38 = 4;
          }

          else
          {
            v38 = 3;
          }

          [*&v1[v34] setSemanticContentAttribute:v38];
          [*&v1[v34] setHidden:0];
          v39 = *&v1[v34];
          y = origin.y;
          x = origin.x;
          height = size.height;
          width = size.width;
          if (v25)
          {
            v44 = CGRectGetMinX(*&x) - v32;
          }

          else
          {
            v44 = v32 + CGRectGetMaxX(*&x) - v31;
          }

          v62.origin = origin;
          v62.size = size;
          MinY = CGRectGetMinY(v62);
          [v1 bounds];
          MaxY = CGRectGetMaxY(v63);
          v64.origin = origin;
          v64.size = size;
          [v39 setFrame:{v44, MinY, v31, MaxY - CGRectGetMinY(v64)}];

          v47 = *&v1[v34];
          swift_getKeyPath();
          swift_getKeyPath();
          v48 = v47;
          v49 = static UIView.Invalidating.subscript.modify();
          *v50 = 40.0 / v31;
          v49(&aBlock, 0);
        }

        v24 = v61;

        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

void sub_10022CBFC()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = [v0 textStorage];
  v2 = [v0 textStorage];
  v3 = [v2 length];

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5[4] = sub_100095DA0;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10007E0A4;
  v5[3] = &unk_100A61F68;
  v4 = _Block_copy(v5);

  [v1 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v3 usingBlock:{0, v4}];

  _Block_release(v4);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_10022CD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10022CDFC, v6, v5);
}

uint64_t sub_10022CDFC()
{

  sub_1007C8B44();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022CE8C(void *a1, void **a2, void **a3, void **a4)
{
  v7 = a1;
  if ([a1 state] != 3)
  {
    return 0;
  }

  v8 = *a2;
  *a2 = v7;
  v9 = v7;

  [v9 layoutFragmentFrame];
  IsEmpty = CGRectIsEmpty(v19);
  v11 = *a3;
  if (IsEmpty)
  {
    v12 = *a3;
  }

  else
  {
    v12 = v9;
  }

  if (IsEmpty)
  {
    v7 = *a3;
  }

  v13 = v12;
  *a3 = v7;

  v14 = [v9 truncatedRanges];
  if (!v14)
  {
    goto LABEL_17;
  }

  sub_1000065A8(0, &unk_100AD9A30);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_16:

    v14 = 0;
    goto LABEL_17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
LABEL_13:
    v14 = v17;

LABEL_17:
    v18 = *a4;
    *a4 = v14;

    return *a4 == 0;
  }

  __break(1u);
  return result;
}

void sub_10022D000()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v2 - 8);
  v68 = &v61 - v3;
  v4 = type metadata accessor for UnsupportedEntryMode();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomAttributeProviderConcrete();
  v10 = swift_allocObject();
  v10[2] = 0;
  Logger.init(subsystem:category:)();
  v11 = v10 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v11 + 2) = 0;
  *v11 = 0;
  v67 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
  v12 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (v12 && (, v13 = [v1 traitCollection], , v14 = sub_100789EB0(v13, v10, v12), , , v13, v14))
  {
    v15 = [v14 length];
    v1[OBJC_IVAR____TtC7Journal16TimelineTextView_isAlwaysTruncated] = v15 > 2000;
    if (v15 >= 2001)
    {
      v16 = [v14 attributedSubstringFromRange:{0, 2000}];

      v14 = v16;
    }
  }

  else
  {
    v14 = 0;
    v1[OBJC_IVAR____TtC7Journal16TimelineTextView_isAlwaysTruncated] = 0;
  }

  (*(v7 + 104))(v9, enum case for JournalFeatureFlags.enhancedSync(_:), v6);
  v17 = JournalFeatureFlags.isEnabled.getter();
  (*(v7 + 8))(v9, v6);
  if ((v17 & 1) != 0 || !v14)
  {
    goto LABEL_13;
  }

  v65 = [v1 traitCollection];
  v18 = v14;
  v19 = [v18 string];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v14 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v19];

  v20 = [objc_opt_self() labelColor];
  v21 = sub_10010BBF4(v65);
  v22 = [v18 length];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  v23 = v22;
  v66 = v10;
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = v20;
  v24[4] = 0x4020000000000000;
  v24[5] = 0;
  v24[6] = v14;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100080490;
  *(v25 + 24) = v24;
  v73 = sub_100080460;
  v74 = v25;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10007F714;
  v72 = &unk_100A61DD8;
  v26 = _Block_copy(&aBlock);
  v27 = v21;
  v28 = v20;
  v14 = v14;

  [v18 enumerateAttributesInRange:0 options:v23 usingBlock:{0, v26}];

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_38;
  }

  v10 = v66;
LABEL_13:
  v29 = [v1 attributedText];
  v30 = v68;
  if (v29)
  {
    v31 = v29;
    if (v14)
    {
      sub_1000065A8(0, &qword_100AE4890);
      v32 = v14;
      v33 = static NSObject.== infix(_:_:)();

      if (v33)
      {

        goto LABEL_54;
      }
    }

    else
    {
    }
  }

  else if (!v14)
  {
LABEL_30:

    goto LABEL_54;
  }

  v34 = *&v1[v67];
  if (!v34)
  {
    goto LABEL_28;
  }

  aBlock = *(v34 + 32);
  type metadata accessor for JournalEntryMO();

  v35 = MinimumSupportedVersion.isEditingSupported.getter();
  v36 = v64;
  if ((v35 & 1) == 0)
  {
    JournalEntryMO.unsupportedEntryMode.getter();
    v37 = v63;
    v38 = *(v63 + 48);
    if (v38(v30, 1, v36) == 1)
    {
      v39 = v62;
      (*(v37 + 104))(v62, enum case for UnsupportedEntryMode.hiddenAll(_:), v36);
      if (v38(v30, 1, v36) != 1)
      {
        sub_100004F84(v30, &qword_100ADE5A0);
      }
    }

    else
    {
      v39 = v62;
      (*(v37 + 32))(v62, v30, v36);
    }

    v40 = (*(v37 + 88))(v39, v36);
    if (v40 != enum case for UnsupportedEntryMode.none(_:))
    {
      goto LABEL_34;
    }
  }

  while (1)
  {

LABEL_28:
    [v1 setAttributedText:v14];
    [v1 frame];
    v76.origin.x = 0.0;
    v76.origin.y = 0.0;
    v76.size.width = 0.0;
    v76.size.height = 0.0;
    v41 = CGRectEqualToRect(v75, v76);
    if (v41)
    {

      goto LABEL_30;
    }

    v66 = v10;
    v10 = &v61;
    v42 = __chkstk_darwin(v41);
    *(&v61 - 2) = v1;
    *(&v61 - 8) = 0;
    __chkstk_darwin(v42);
    *(&v61 - 2) = sub_10022DC30;
    *(&v61 - 1) = v43;
    v44 = [v1 textStorage];
    v45 = [v44 length];

    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_57;
    }

    v46 = [v1 textStorage];
    v47 = NSParagraphAttachmentAttributeName;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1000483C0;
    *(v48 + 24) = &v61 - 4;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_100095B84;
    *(v49 + 24) = v48;
    v73 = sub_10007E150;
    v74 = v49;
    aBlock = _NSConcreteStackBlock;
    v70 = 1107296256;
    v71 = sub_10007E0A4;
    v72 = &unk_100A61E50;
    v50 = _Block_copy(&aBlock);

    [v46 enumerateAttribute:v47 inRange:0 options:v45 usingBlock:{0, v50}];

    _Block_release(v50);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_54;
    }

    __break(1u);
LABEL_34:
    if (v40 == enum case for UnsupportedEntryMode.hiddenAll(_:))
    {
      v52 = objc_allocWithZone(NSAttributedString);
      v53 = String._bridgeToObjectiveC()();
      v54 = [v52 initWithString:v53];

      [v1 setAttributedText:v54];
      goto LABEL_53;
    }

    if (v40 == enum case for UnsupportedEntryMode.hiddenText(_:))
    {
      break;
    }

    if (v40 == enum case for UnsupportedEntryMode.plainText(_:))
    {
      if (!v14)
      {
        goto LABEL_48;
      }

      v59 = [v14 string];
      if (!v59)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = String._bridgeToObjectiveC()();
      }

      v60 = [objc_allocWithZone(NSAttributedString) initWithString:v59];

      goto LABEL_49;
    }

    if (v40 != enum case for UnsupportedEntryMode.attributedText(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_48:
      v60 = 0;
LABEL_49:
      [v1 setAttributedText:v60];

      if (qword_100AD03D0 != -1)
      {
        swift_once();
      }

      [v1 setFont:qword_100B303C8];
      v58 = [objc_opt_self() labelColor];
      goto LABEL_52;
    }
  }

  if (qword_100AD04D8 != -1)
  {
    goto LABEL_58;
  }

LABEL_38:
  v55 = objc_allocWithZone(NSAttributedString);
  v56 = String._bridgeToObjectiveC()();
  v57 = [v55 initWithString:v56];

  [v1 setAttributedText:v57];
  if (qword_100AD03D0 != -1)
  {
    swift_once();
  }

  [v1 setFont:qword_100B303C8];
  v58 = [objc_opt_self() secondaryLabelColor];
LABEL_52:
  v54 = v58;
  [v1 setTextColor:v54];
LABEL_53:

LABEL_54:
  sub_100080784();
}

uint64_t sub_10022DC48(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 16);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = 0;
  return 1;
}

uint64_t sub_10022DC68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10022CD64(a1, v4, v5, v6);
}

uint64_t sub_10022DD3C()
{
  v0 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_1006AC114(v5);
  v9 = type metadata accessor for PhotoLibraryAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD5B20;
    v12 = v5;
LABEL_5:
    sub_100004F84(v12, v11);
    return 0;
  }

  PhotoLibraryAssetMetadata.date.getter();
  (*(v10 + 8))(v5, v9);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v16 = v17;
  (*(v14 + 8))(v8, v13);
  return v16;
}

uint64_t sub_10022E02C()
{
  v0 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1006AC114(&v7 - v1);
  v3 = type metadata accessor for PhotoLibraryAssetMetadata();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100004F84(v2, &qword_100AD5B20);
    return 0;
  }

  else
  {
    v6 = PhotoLibraryAssetMetadata.placeName.getter();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

double *sub_10022E164(uint64_t a1)
{
  v35 = type metadata accessor for UTType();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UTType.identifier.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 2);
      v17 = *(v38 + 3);
      if (v18 >= v17 >> 1)
      {
        result = sub_1001999C0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[2 * v18];
      *(v19 + 4) = v37;
      *(v19 + 5) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_10000A96C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_10000A96C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_10022E46C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v92 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v93 = &v85 - v6;
  v7 = type metadata accessor for Date();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v88 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v85 - v10;
  __chkstk_darwin(v11);
  v86 = &v85 - v12;
  v13 = type metadata accessor for JournalFeatureFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10022F9E8(v0);
  v96 = v21;
  v22 = v0;
  v23 = [v0 text];
  if (v23 && (v24 = v23, v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v27 = v26, v24, v28 = Data.getAttributedString()(), sub_1000340DC(v25, v27), v28))
  {
    v29 = [v28 string];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v94 = 0;
    v31 = 0;
  }

  v32 = sub_100879E68();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    return 0;
  }

  static UTType.item.getter();
  v36 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v38 = [v36 initWithContentType:isa];

  (*(v18 + 8))(v20, v17);
  v39 = v96;
  sub_10012B77C(v95, v96, v94, v31);
  (*(v14 + 104))(v16, enum case for JournalFeatureFlags.search(_:), v13);
  v40 = JournalFeatureFlags.isEnabled.getter();
  (*(v14 + 8))(v16, v13);
  if (v40)
  {
    v41 = v22;
    v42 = v90;
    if (qword_100ACFA00 != -1)
    {
      swift_once();
    }

    if (qword_100B2F4A8)
    {
      v97 = 0x7972746E65;
      v98 = 0xE500000000000000;
      v43 = qword_100B2F4A8;
      sub_1000F24EC(&unk_100AD9A70);
      if (!swift_dynamicCast())
      {

        if (v39)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      [v38 setValue:v99 forCustomKey:v43];

      swift_unknownObjectRelease();
    }

    if (v39)
    {
LABEL_15:
      v44 = String._bridgeToObjectiveC()();

LABEL_20:
      [v38 setTitle:v44];

      if (v31)
      {
        v46 = String._bridgeToObjectiveC()();
      }

      else
      {
        v46 = 0;
      }

      v45 = v89;
      [v38 setTextContent:v46];

      v47 = sub_100879F9C();
      if (qword_100ACFA08 != -1)
      {
        v81 = v47;
        swift_once();
        v47 = v81;
      }

      if (qword_100B2F4B0)
      {
        v97 = v47;
        v48 = qword_100B2F4B0;
        sub_1000F24EC(&qword_100AD60A0);
        sub_1000F24EC(&unk_100AD9A70);
        if (swift_dynamicCast())
        {
          [v38 setValue:v99 forCustomKey:v48];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      v49 = sub_10087A6A4();
      if (qword_100ACFA10 != -1)
      {
        v82 = v49;
        swift_once();
        v49 = v82;
      }

      if (qword_100B2F4B8)
      {
        v97 = v49;
        v50 = qword_100B2F4B8;
        sub_1000F24EC(&qword_100AD60A0);
        sub_1000F24EC(&unk_100AD9A70);
        if (swift_dynamicCast())
        {
          [v38 setValue:v99 forCustomKey:v50];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      v51 = sub_10087A8F4();
      if (qword_100ACFA18 != -1)
      {
        v83 = v51;
        swift_once();
        v51 = v83;
      }

      if (qword_100B2F4C0)
      {
        v97 = v51;
        v52 = qword_100B2F4C0;
        sub_1000F24EC(&qword_100AD60A0);
        sub_1000F24EC(&unk_100AD9A70);
        if (swift_dynamicCast())
        {
          [v38 setValue:v99 forCustomKey:v52];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      v53 = sub_10087B720();
      if (qword_100ACFA20 != -1)
      {
        v84 = v53;
        swift_once();
        v53 = v84;
      }

      if (qword_100B2F4C8)
      {
        v97 = v53;
        v54 = qword_100B2F4C8;
        sub_1000F24EC(&qword_100AD60A0);
        sub_1000F24EC(&unk_100AD9A70);
        if (swift_dynamicCast())
        {
          [v38 setValue:v99 forCustomKey:v54];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      JournalEntryMO.isRecentlyDeleted.getter();
      if (qword_100ACFA28 != -1)
      {
        swift_once();
      }

      if (qword_100B2F4D0)
      {
        v55 = qword_100B2F4D0;
        v56 = Bool._bridgeToObjectiveC()().super.super.isa;
        [v38 setValue:v56 forCustomKey:v55];
      }

      goto LABEL_55;
    }

LABEL_19:
    v44 = 0;
    goto LABEL_20;
  }

  v41 = v22;
  v45 = v89;
  v42 = v90;
LABEL_55:
  v57 = [v41 updatedDate];
  if (v57)
  {
    v58 = v86;
    v59 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v60.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v45 + 8))(v58, v42);
  }

  else
  {
    v60.super.isa = 0;
  }

  [v38 setLastUsedDate:v60.super.isa];

  v61 = [v41 entryDate];
  if (v61)
  {
    v62 = v87;
    v63 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v45 + 8))(v62, v42);
  }

  else
  {
    v64.super.isa = 0;
  }

  [v38 setContentCreationDate:v64.super.isa];

  v65 = [v41 updatedDate];
  if (v65)
  {
    v66 = v88;
    v67 = v65;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v68.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v45 + 8))(v66, v42);
  }

  else
  {
    v68.super.isa = 0;
  }

  [v38 setContentModificationDate:v68.super.isa];

  if (sub_100014964() == 4)
  {
    v69 = JournalEntryMO.isRecentlyDeleted.getter();
  }

  else
  {
    v69 = 1;
  }

  v70 = [objc_allocWithZone(NSNumber) initWithBool:v69 & 1];
  [v38 setDisableSearchInSpotlight:v70];

  v71 = v93;
  JournalEntryMO.displayDate.getter();
  (*(v45 + 56))(v71, 0, 1, v42);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v72 = String.init(localized:table:bundle:locale:comment:)();
  v74 = v73;
  sub_1000F24EC(&unk_100AD9A60);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_100940080;
  v76 = sub_10012C00C(v72, v74, v71);
  v78 = v77;

  *(v75 + 32) = v76;
  *(v75 + 40) = v78;
  v79 = Array._bridgeToObjectiveC()().super.isa;

  [v38 setAlternateNames:v79];

  sub_100004F84(v71, &unk_100AD4790);
  return v38;
}

void *sub_10022F114()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v66 - v5;
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v66 - v11;
  v13 = type metadata accessor for URL();
  v68 = *(v13 - 8);
  v69 = v13;
  __chkstk_darwin(v13);
  v66 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  v18 = type metadata accessor for JournalFeatureFlags();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100039CE0();
  v22 = sub_10022FAB8(v70);
  (*(v19 + 104))(v21, enum case for JournalFeatureFlags.search(_:), v18);
  v23 = JournalFeatureFlags.isEnabled.getter();
  (*(v19 + 8))(v21, v18);
  if (v23)
  {
    if (!v22)
    {
      goto LABEL_33;
    }

    v24 = qword_100ACFA00;
    v25 = v22;
    if (v24 != -1)
    {
      swift_once();
    }

    if (qword_100B2F4A8)
    {
      v72 = 0x7465737361;
      v73 = 0xE500000000000000;
      v26 = qword_100B2F4A8;
      sub_1000F24EC(&unk_100AD9A70);
      if (swift_dynamicCast())
      {
        v27 = v71;
        swift_unknownObjectRetain();
        [v25 setValue:v27 forCustomKey:v26];

        swift_unknownObjectRelease_n();
      }

      else
      {
      }
    }

    v30 = v25;
    v31 = &selRef_setRegion_;
    v32 = [v1 entry];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 objectID];

      v35 = [v34 URIRepresentation];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteString.getter();
      (*(v68 + 8))(v17, v69);
      v31 = &selRef_setRegion_;
      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
    }

    [v30 setWeakRelatedUniqueIdentifier:v36];

    v28 = v30;
    v37 = [v1 v31[35]];
    if (v37)
    {
      v38 = v37;
      v39 = sub_10087A6A4();
    }

    else
    {
      v39 = 0;
    }

    v29 = v69;
    sub_10018E35C(v39);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_33;
    }

    v28 = v22;
    v29 = v69;
  }

  v40 = v28;
  v41 = [v1 entry];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 updatedDate];

    if (v43)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v47 = type metadata accessor for Date();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v9, v44, 1, v47);
    sub_1001679C0(v9, v12);
    isa = 0;
    if ((*(v48 + 48))(v12, 1, v47) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v48 + 8))(v12, v47);
    }
  }

  else
  {
    v45 = type metadata accessor for Date();
    (*(*(v45 - 8) + 56))(v12, 1, 1, v45);
    isa = 0;
  }

  [v40 setLastUsedDate:isa];

  v49 = v40;
  v50 = [v49 thumbnailURL];
  if (v50)
  {
    v51 = v50;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v68 + 56))(v6, 0, 1, v29);
    sub_100004F84(v6, &unk_100AD6DD0);
  }

  else
  {
    v52 = v68;
    (*(v68 + 56))(v6, 1, 1, v29);
    sub_100004F84(v6, &unk_100AD6DD0);
    v53 = [v49 thumbnailData];
    if (v53)
    {
      v54 = v53;
      v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      sub_1000340DC(v55, v57);
    }

    else
    {
      v58 = v67;
      sub_10008E398(0, 1);
      if ((*(v52 + 48))(v58, 1, v29) == 1)
      {

        sub_100004F84(v58, &unk_100AD6DD0);
      }

      else
      {
        v59 = v66;
        (*(v52 + 32))(v66, v58, v29);
        URL._bridgeToObjectiveC()(v60);
        v62 = v61;
        [v49 setThumbnailURL:v61];

        (*(v52 + 8))(v59, v29);
      }
    }
  }

  v63 = v49;
  v64 = [objc_allocWithZone(NSNumber) initWithBool:sub_100014964() != 4];
  [v63 setDisableSearchInSpotlight:v64];

LABEL_33:
  return v22;
}

uint64_t sub_10022F968()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD9A40);
  sub_10000617C(v0, qword_100AD9A40);
  return Logger.init(subsystem:category:)();
}

id sub_10022F9E8(void *a1)
{
  if (![a1 showTitle])
  {
    return 0;
  }

  result = [a1 title];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = Data.getAttributedString()();
  sub_1000340DC(v4, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 string];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t sub_10022FAB8(void *a1)
{
  v14 = a1;
  type metadata accessor for Asset();
  v2 = a1;
  sub_1000F24EC(&qword_100AD9A80);
  if (swift_dynamicCast())
  {
    sub_100018480(v12, v15);
    sub_10000CA14(v15, v15[3]);
    v3 = dispatch thunk of SpotlightSearchable.searchableItemAttributeSet()();
    sub_10000BA7C(v15);
    if (v3)
    {
      return v3;
    }
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_100004F84(v12, &qword_100AD9A88);
  }

  if (qword_100ACFB00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AD9A40);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "JournalEntryAssetMO.getSearchableItemAttributeSet asset type not indexed: %@", v9, 0xCu);
    sub_100004F84(v10, &unk_100AD4BB0);
  }

  return 0;
}

NSNumber sub_10022FCB0()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0x6567616D69 && v5 == 0xE500000000000000)
    {
      goto LABEL_13;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_14;
    }
  }

  v8 = [v0 name];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 != 0x6F65646976 || v12 != 0xE500000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();

    goto LABEL_14;
  }

LABEL_13:

LABEL_14:

  return Bool._bridgeToObjectiveC()();
}

id sub_10022FDF0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v92 = v89 - v3;
  v94 = type metadata accessor for Date();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v5 - 8);
  v104 = v89 - v6;
  v102 = type metadata accessor for PhotoLibraryAssetMetadata();
  v7 = *(v102 - 8);
  __chkstk_darwin(v102);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v10 - 8);
  v12 = v89 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v99 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v100 = v89 - v17;
  __chkstk_darwin(v18);
  v20 = v89 - v19;
  v21 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v21 - 8);
  v23 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v89 - v25;
  v27 = type metadata accessor for UTType();
  v28 = *(v27 - 8);
  v107 = v27;
  v108 = v28;
  __chkstk_darwin(v27);
  *&v106 = v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v89 - v31;
  v103 = v1;
  v33 = sub_10004A07C(v103);
  if (!v33)
  {
    return 0;
  }

  v34 = v33;
  v91 = v9;
  v101 = v7;
  static UTType.item.getter();
  v96 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
  sub_1000A7D30(v26);
  v95 = *(v14 + 48);
  v35 = v95(v26, 1, v13);
  v105 = v32;
  v97 = v13;
  v98 = v14;
  if (v35 == 1)
  {
    sub_100004F84(v26, &unk_100AD6DD0);
    v36 = v108;
  }

  else
  {
    v89[1] = v34;
    URL.absoluteURL.getter();
    v38 = *(v14 + 8);
    v38(v26, v13);
    URL.pathExtension.getter();
    v38(v20, v13);
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v39 = v107;
    v36 = v108;
    if ((*(v108 + 48))(v12, 1, v107) == 1)
    {
      sub_100004F84(v12, &unk_100AD7C40);
    }

    else
    {
      v40 = v105;
      (*(v36 + 8))(v105, v39);
      (*(v36 + 32))(v40, v12, v39);
    }
  }

  v41 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v37 = [v41 initWithContentType:isa];

  if (qword_100ACFA00 != -1)
  {
    swift_once();
  }

  v43 = v98;
  if (qword_100B2F4A8)
  {
    strcpy(v110, "fileAttachment");
    v110[15] = -18;
    v44 = qword_100B2F4A8;
    sub_1000F24EC(&unk_100AD9A70);
    if (swift_dynamicCast())
    {
      [v37 setValue:v109 forCustomKey:v44];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  sub_1000A7D30(v23);
  v45 = v97;
  if (v95(v23, 1, v97) == 1)
  {
    sub_100004F84(v23, &unk_100AD6DD0);
  }

  else
  {
    v46 = v99;
    URL.absoluteURL.getter();
    v47 = *(v43 + 8);
    v47(v23, v45);
    v48 = v100;
    (*(v43 + 32))(v100, v46, v45);
    URL.absoluteString.getter();
    v49 = String._bridgeToObjectiveC()();

    [v37 setRichLinkURL:v49];

    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    [v37 setContentURL:v51];

    v47(v48, v45);
    v36 = v108;
  }

  v53 = v101;
  v54 = v107;
  v55 = v106;
  static UTType.item.getter();
  sub_100230A58();
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v36 + 8);
  v57 = v36 + 8;
  v58 = v59;
  v59(v55, v54);
  if ((v56 & 1) == 0)
  {
    v60 = UTType.supertypes.getter();
    sub_10022E164(v60);

    v61 = Array._bridgeToObjectiveC()().super.isa;

    [v37 setAttachmentTypes:v61];
  }

  v62 = v103;
  v63 = sub_10022FCB0().super.super.isa;
  [v37 setEligibleForPhotosProcessing:v63];

  v64 = [v62 asset];
  v65 = v104;
  if (v64)
  {
    v66 = v64;
    v67 = sub_100039CE0();
    type metadata accessor for PhotoAsset();
    if (swift_dynamicCastClass())
    {
      sub_1006ABED4(v65);
      if ((*(v53 + 48))(v65, 1, v102) == 1)
      {

        sub_100004F84(v65, &qword_100AD5B20);
      }

      else
      {
        v108 = v57;
        (*(v53 + 32))(v91, v65, v102);
        sub_1000F24EC(&unk_100AD9A60);
        v68 = swift_allocObject();
        v106 = xmmword_100940080;
        *(v68 + 16) = xmmword_100940080;
        *(v68 + 32) = UTType.identifier.getter();
        *(v68 + 40) = v69;
        v70 = Array._bridgeToObjectiveC()().super.isa;

        [v37 setProviderFileTypes:v70];

        v71 = swift_allocObject();
        *(v71 + 16) = v106;
        *(v71 + 32) = UTType.identifier.getter();
        *(v71 + 40) = v72;
        v73 = Array._bridgeToObjectiveC()().super.isa;

        [v37 setProviderDataTypes:v73];

        v74 = v92;
        PhotoLibraryAssetMetadata.date.getter();
        v75 = v93;
        v76 = v94;
        if ((*(v93 + 48))(v74, 1, v94) == 1)
        {
          sub_100004F84(v74, &unk_100AD4790);
        }

        else
        {
          v77 = v90;
          (*(v75 + 32))(v90, v74, v76);
          v78 = Date._bridgeToObjectiveC()().super.isa;
          [v37 setContentCreationDate:v78];

          (*(v75 + 8))(v77, v76);
        }

        PhotoLibraryAssetMetadata.placeName.getter();
        v54 = v107;
        v79 = v101;
        if (v80)
        {
          v81 = String._bridgeToObjectiveC()();

          [v37 setNamedLocation:v81];
        }

        PhotoLibraryAssetMetadata.latitude.getter();
        if ((v82 & 1) == 0)
        {
          v83 = Double._bridgeToObjectiveC()().super.super.isa;
          [v37 setLatitude:v83];
        }

        v84 = v91;
        PhotoLibraryAssetMetadata.longitude.getter();
        if (v85)
        {
          (*(v79 + 8))(v84, v102);
        }

        else
        {
          v86 = Double._bridgeToObjectiveC()().super.super.isa;
          [v37 setLongitude:v86];

          (*(v79 + 8))(v84, v102);
        }
      }
    }

    else
    {
    }
  }

  v87 = [objc_allocWithZone(NSNumber) initWithBool:sub_100014964() != 4];
  [v37 setDisableSearchInSpotlight:v87];

  v58(v105, v54);
  return v37;
}

unint64_t sub_100230A58()
{
  result = qword_100AD5410;
  if (!qword_100AD5410)
  {
    type metadata accessor for UTType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5410);
  }

  return result;
}

uint64_t sub_100230AB0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD9A90);
  v1 = sub_10000617C(v0, qword_100AD9A90);
  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100230B78()
{
  type metadata accessor for SessionDataProvider();
  swift_allocObject();
  result = sub_100230BF4();
  qword_100B2F580 = result;
  return result;
}

id sub_100230BB8()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_100AD9AA8 = result;
  return result;
}

uint64_t sub_100230BF4()
{
  v1 = v0;
  *(v0 + 16) = 514;
  OSSignposter.init()();
  v2 = [objc_opt_self() defaultCenter];
  type metadata accessor for AppleAccountManager();

  v3 = static AppleAccountManager.statusChangedNotification.getter();
  [v2 addObserver:v1 selector:"setAppleAccountStatus" name:v3 object:0];

  return v1;
}

uint64_t sub_100230CB4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v15, "appleAccountStatus", "", v14, 2u);
  }

  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v16 = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  type metadata accessor for AnalyticsActor();

  v18 = static AnalyticsActor.shared.getter();
  v19 = sub_100234C0C();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v1;
  sub_1003E9628(0, 0, v4, &unk_100949338, v20);

  sub_1002336EC(v1, v16, "appleAccountStatus");

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_100230F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for AppleAccountManager.AccountStatus();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6DE0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v4[9] = static AnalyticsActor.shared.getter();
  sub_100234C0C();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_1002310E0, v7, v6);
}

uint64_t sub_1002310E0()
{
  v0[12] = type metadata accessor for AppleAccountManager();
  v0[13] = type metadata accessor for MainActor();
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100231184, v2, v1);
}

uint64_t sub_100231184()
{

  v0[15] = static AppleAccountManager.shared.getter();
  v1 = v0[10];
  v2 = v0[11];

  return _swift_task_switch(sub_1002311F4, v1, v2);
}

uint64_t sub_1002311F4()
{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100231280, v2, v1);
}

uint64_t sub_100231280()
{

  dispatch thunk of AppleAccountManager.accountStatus.getter();

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1002312F8, v1, v2);
}

uint64_t sub_1002312F8()
{
  v38 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_100235068(v0[8], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];

    sub_100004F84(v4, &qword_100AD6DE0);
    if (qword_100ACFB08 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AD9A90);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No Apple Account status yet!", v10, 2u);
    }

    goto LABEL_22;
  }

  v11 = v0[6];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  (*(v13 + 32))(v11, v0[7], v14);
  (*(v13 + 16))(v12, v11, v14);
  v15 = (*(v13 + 88))(v12, v14);
  if (v15 == enum case for AppleAccountManager.AccountStatus.signedOut(_:))
  {
    v16 = 1;
LABEL_9:
    v17 = v0[2];

    *(v17 + 17) = v16;
    if (qword_100ACFB08 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000617C(v18, qword_100AD9A90);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[2];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      if (*(v21 + 17))
      {
        if (*(v21 + 17) == 1)
        {
          v24 = 0xE900000000000074;
          v25 = 0x754F646567676F6CLL;
        }

        else
        {
          v24 = 0xE700000000000000;
          v25 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v24 = 0xE800000000000000;
        v25 = 0x6E49646567676F6CLL;
      }

      v36 = v0[8];
      v31 = v0[6];
      v33 = v0[3];
      v32 = v0[4];
      v34 = sub_100008458(v25, v24, &v37);

      *(v22 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v19, v20, "Apple Account status: %s", v22, 0xCu);
      sub_10000BA7C(v23);

      (*(v32 + 8))(v31, v33);
      v30 = v36;
      goto LABEL_26;
    }

    v9 = v0[8];
    v27 = v0[6];
    v28 = v0[3];
    v29 = v0[4];

    (*(v29 + 8))(v27, v28);
LABEL_22:
    v30 = v9;
LABEL_26:
    sub_100004F84(v30, &qword_100AD6DE0);

    v35 = v0[1];

    return v35();
  }

  v16 = 0;
  if (v15 == enum case for AppleAccountManager.AccountStatus.signedInDataclassDisabled(_:) || v15 == enum case for AppleAccountManager.AccountStatus.signedInDataclassEnabled(_:) || v15 == enum case for AppleAccountManager.AccountStatus.signedInDataclassUnavailable(_:))
  {
    goto LABEL_9;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_1002317D8()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v12, "collectSessionData", "", v11, 2u);
  }

  (*(v3 + 16))(v5, v8, v2);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v13 = OSSignpostIntervalState.init(id:isOpen:)();
  sub_100232A40();
  sub_100230CB4();
  sub_100231A90();
  sub_100232044();
  if (qword_100ACFB08 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000617C(v14, qword_100AD9A90);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Collected initial session data!", v17, 2u);
  }

  sub_1002336EC(v1, v13, "collectSessionData");

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100231AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for OSSignpostError();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for AnalyticsActor();
  v5[11] = static AnalyticsActor.shared.getter();

  return _swift_task_switch(sub_100231BEC, 0, 0);
}

uint64_t sub_100231BEC()
{
  type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100231C80, v2, v1);
}

uint64_t sub_100231C80()
{

  v1 = [objc_allocWithZone(CLLocationManager) init];
  *(v0 + 108) = [v1 authorizationStatus];

  sub_100234C0C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100231D3C, v3, v2);
}

uint64_t sub_100231D3C()
{
  v25 = v0;
  v1 = *(v0 + 108);

  if (v1 >= 3)
  {
    if (v1 - 3 >= 2)
    {
      if (qword_100ACFB08 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000617C(v2, qword_100AD9A90);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 108);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v24 = v7;
        *v6 = 136315138;
        *(v0 + 104) = v5;
        type metadata accessor for CLAuthorizationStatus(0);
        v8 = String.init<A>(describing:)();
        v10 = sub_100008458(v8, v9, &v24);

        *(v6 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v3, v4, "Unknown notification status: %s. Add a new case to handle.", v6, 0xCu);
        sub_10000BA7C(v7);
      }
    }

    else
    {
      *(*(v0 + 16) + 18) = 1;
    }
  }

  else
  {
    *(*(v0 + 16) + 18) = 0;
  }

  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);

    checkForErrorAndConsumeState(state:)();

    if ((*(v14 + 88))(v13, v15) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v18, "locationAuthStatus", v16, v17, 2u);
  }

  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 56);

  (*(v20 + 8))(v19, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10023206C(const char *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v6 = v3;
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v32 = type metadata accessor for OSSignpostID();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = swift_slowAlloc();
    v30 = v9;
    v19 = a3;
    v20 = v18;
    *v18 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v21, a1, "", v20, 2u);
    a3 = v19;
    v9 = v30;
  }

  v22 = v32;
  (*(v10 + 16))(v12, v15, v32);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v23 = OSSignpostIntervalState.init(id:isOpen:)();
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  type metadata accessor for AnalyticsActor();

  v25 = static AnalyticsActor.shared.getter();
  v26 = sub_100234C0C();
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v26;
  v27[4] = v6;
  v27[5] = v23;
  sub_1003E9628(0, 0, v9, a3, v27);

  return (*(v10 + 8))(v15, v22);
}

uint64_t sub_10023235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = type metadata accessor for OSSignpostError();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  v5[28] = static AnalyticsActor.shared.getter();
  sub_100234C0C();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[29] = v9;
  v5[30] = v8;

  return _swift_task_switch(sub_1002324AC, v9, v8);
}

uint64_t sub_1002324AC()
{
  v1 = [objc_opt_self() currentNotificationCenter];
  v0[31] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002325EC;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AD9C90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004A75BC;
  v0[13] = &unk_100A62070;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002325EC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return _swift_task_switch(sub_1002326F4, v2, v1);
}

uint64_t sub_1002326F4()
{
  v28 = v0;
  v1 = v0[31];

  v2 = v0[18];

  v3 = [v2 authorizationStatus];
  if ((v3 - 2) >= 3)
  {
    if (v3 > 1)
    {
      if (qword_100ACFB08 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000617C(v4, qword_100AD9A90);
      v5 = v2;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v27 = v9;
        *v8 = 136315138;
        v0[19] = [v5 authorizationStatus];
        type metadata accessor for UNAuthorizationStatus(0);
        v10 = String.init<A>(describing:)();
        v12 = sub_100008458(v10, v11, &v27);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Unknown notification status: %s. Add a new case to handle.", v8, 0xCu);
        sub_10000BA7C(v9);
      }
    }

    else
    {
      *(v0[20] + 19) = 0;
    }
  }

  else
  {
    *(v0[20] + 19) = 1;
  }

  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v14 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = v0[23];
    v15 = v0[24];
    v17 = v0[22];

    checkForErrorAndConsumeState(state:)();

    if ((*(v16 + 88))(v15, v17) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[23] + 8))(v0[24], v0[22]);
      v18 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v21, "notifStatus", v18, v20, 2u);

    v19 = v2;
  }

  else
  {
    v19 = v13;
    v13 = v2;
  }

  v23 = v0[26];
  v22 = v0[27];
  v24 = v0[25];

  (*(v23 + 8))(v22, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100232A40()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NetworkConnectivityMonitor();
  v4 = swift_allocObject();
  v4[3] = 0;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();

  v4[2] = NWPathMonitor.init()();
  v4[4] = sub_100234C64;
  v4[5] = v3;

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_1003E9628(0, 0, v2, &unk_1009492F0, v6);

  sub_10049F884();
}

uint64_t sub_100232BDC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v14 = OSSignposter.logHandle.getter();
    v15 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v16 = swift_slowAlloc();
      v25 = a1;
      a1 = v5;
      v17 = v16;
      *v16 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v18, "networkAccessUpdate", "", v17, 2u);
      v5 = a1;
      LOBYTE(a1) = v25;
    }

    (*(v6 + 16))(v8, v11, v5);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v19 = OSSignpostIntervalState.init(id:isOpen:)();
    v20 = 0x102040300uLL >> (8 * a1);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    type metadata accessor for AnalyticsActor();

    v22 = static AnalyticsActor.shared.getter();
    v23 = sub_100234C0C();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    *(v24 + 32) = v13;
    *(v24 + 40) = v20;
    *(v24 + 48) = v19;
    sub_1003E9628(0, 0, v4, &unk_100949300, v24);

    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_100232F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for OSSignpostError();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  *(v6 + 80) = static AnalyticsActor.shared.getter();
  sub_100234C0C();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100233078, v10, v9);
}

uint64_t sub_100233078()
{
  v1 = *(v0 + 88);

  sub_100233230(v1);
  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v9, "networkAccessUpdate", v7, v8, 2u);
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);

  (*(v11 + 8))(v10, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100233230(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = *(v1 + 16);
  if (v11 <= 1)
  {
    if (*(v1 + 16))
    {
      v13 = 0x6863616552746F6ELL;
    }

    else
    {
      v13 = 6648940;
    }

    if (*(v1 + 16))
    {
      v12 = 0xEC000000656C6261;
    }

    else
    {
      v12 = 0xE300000000000000;
    }
  }

  else if (v11 == 2)
  {
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v11 == 3)
    {
      v13 = 1768319351;
    }

    else
    {
      v13 = 1851881335;
    }
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      v15 = 0x6863616552746F6ELL;
    }

    else
    {
      v15 = 6648940;
    }

    if (a1)
    {
      v14 = 0xEC000000656C6261;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    if (v13 == v15)
    {
      goto LABEL_29;
    }

LABEL_33:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v18 = OSSignposter.logHandle.getter();
      v19 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "networkAccessUpdate", "", v20, 2u);
      }

      (*(v5 + 16))(v8, v10, v4);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v22 = OSSignpostIntervalState.init(id:isOpen:)();
      *(v2 + 16) = a1;
      if (qword_100AD0210 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000617C(v23, qword_100B300D0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v36 = v34;
        *v26 = 136315138;
        v35 = a1;
        v27 = String.init<A>(describing:)();
        v29 = v4;
        v30 = v22;
        v31 = v5;
        v32 = sub_100008458(v27, v28, &v36);

        *(v26 + 4) = v32;
        v5 = v31;
        v22 = v30;
        v4 = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "Access technology changed to %s", v26, 0xCu);
        sub_10000BA7C(v34);
      }

      sub_1002336EC(v2, v22, "networkAccessUpdate");

      return (*(v5 + 8))(v10, v4);
    }

    return result;
  }

  if (a1 == 2)
  {
    v14 = 0xE700000000000000;
    if (v13 == 0x6E776F6E6B6E75)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  v14 = 0xE400000000000000;
  if (a1 == 3)
  {
    if (v13 != 1768319351)
    {
      goto LABEL_33;
    }
  }

  else if (v13 != 1851881335)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (v12 != v14)
  {
    goto LABEL_33;
  }
}

uint64_t sub_1002336EC(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = type metadata accessor for OSSignpostError();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v6, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, v18, v13, v14, 2u);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100233944()
{
  result = sub_100233968();
  qword_100B2F588 = result;
  unk_100B2F590 = v1;
  return result;
}

uint64_t sub_100233968()
{
  result = _CFCopySupplementalVersionDictionary();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = result;
  result = _kCFSystemVersionBuildVersionKey;
  if (!_kCFSystemVersionBuildVersionKey)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *&v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v5 + 1) = v2;
  v3 = [v1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {

      return v4;
    }
  }

  else
  {
    sub_100004F84(v7, &qword_100AD13D0);
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_100233A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = type metadata accessor for TimeZone();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = type metadata accessor for Locale.Language();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000F24EC(&qword_100AD9C88);
  __chkstk_darwin(v10 - 8);
  v12 = &v39[-v11];
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v39[-v18];
  v45 = v2[16];
  static Locale.current.getter();
  v20 = Locale.identifier.getter();
  v43 = v21;
  v44 = v20;
  v22 = *(v14 + 8);
  v22(v19, v13);
  v23 = v2[17];
  v41 = v2[18];
  v42 = v23;
  v40 = v2[19];
  static Locale.current.getter();
  Locale.language.getter();
  v22(v16, v13);
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v9, v46);
  v24 = type metadata accessor for Locale.LanguageCode();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_100004F84(v12, &qword_100AD9C88);
    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E55;
  }

  else
  {
    v27 = Locale.LanguageCode.identifier.getter();
    v26 = v28;
    (*(v25 + 8))(v12, v24);
  }

  v29 = [objc_opt_self() mainBundle];
  v30 = [v29 bundleIdentifier];

  if (v30)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v33 = 0x80000001008DEBA0;
    v31 = 0xD000000000000011;
  }

  v34 = v47;
  static TimeZone.current.getter();
  v35 = v49;
  Date.init()();
  v36 = TimeZone.secondsFromGMT(for:)();
  (*(v51 + 8))(v35, v52);
  result = (*(v48 + 8))(v34, v50);
  if (v36 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v36 <= 0x7FFFFFFF)
  {
    *a1 = v45;
    *(a1 + 1) = *v55;
    *(a1 + 4) = *&v55[3];
    v38 = v43;
    *(a1 + 8) = v44;
    *(a1 + 16) = v38;
    LOBYTE(v38) = v41;
    *(a1 + 24) = v42;
    *(a1 + 25) = v38;
    *(a1 + 26) = v40;
    *(a1 + 27) = v53;
    *(a1 + 31) = v54;
    *(a1 + 32) = v27;
    *(a1 + 40) = v26;
    *(a1 + 48) = v31;
    *(a1 + 56) = v33;
    *(a1 + 64) = v36;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100233FBC()
{
  v1 = OBJC_IVAR____TtC7Journal19SessionDataProvider_signposter;
  v2 = type metadata accessor for OSSignposter();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionDataProvider()
{
  result = qword_100AD9AE0;
  if (!qword_100AD9AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002340AC()
{
  result = type metadata accessor for OSSignposter();
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

uint64_t sub_10023415C()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SettingsKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    return 0;
  }

  if (qword_100ACFB18 != -1)
  {
    swift_once();
  }

  v8 = qword_100AD9AA8;
  (*(v5 + 104))(v7, enum case for SettingsKey.debugSessionName(_:), v4);
  SettingsKey.rawValue.getter();
  (*(v5 + 8))(v7, v4);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 stringForKey:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = v11;
  v26[0] = v11;
  v26[1] = v13;

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000777B4();
  v15 = StringProtocol.trimmingCharacters(in:)();
  v17 = v16;
  (*(v1 + 8))(v3, v0);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    swift_bridgeObjectRelease_n();
    return 0;
  }

  if (qword_100ACFB08 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000617C(v19, qword_100AD9A90);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v22 = 136315138;
    v24 = sub_100008458(v14, v13, v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Using debug session name: %s", v22, 0xCu);
    sub_10000BA7C(v23);
  }

  else
  {
  }

  return v14;
}

uint64_t sub_100234524(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100234570()
{
  v4 = 0;
  sysctlbyname("hw.machine", 0, &v4, 0, 0);
  v0 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v4)
  {
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v1 + 2) = v0;
    bzero(v1 + 4, v0);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  sysctlbyname("hw.machine", v1 + 4, &v4, 0, 0);
  v2 = sub_100234524(v1);

  return v2;
}

uint64_t sub_100234664()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (v1)
  {
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v2 + 16) && (v3 = sub_100094E98(0xD00000000000001ALL, 0x80000001008E6DE0), (v4 & 1) != 0))
    {
      sub_10000BA20(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_100234784()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (v1)
  {
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v2 + 16) && (v3 = sub_100094E98(0x656C646E75424643, 0xEF6E6F6973726556), (v4 & 1) != 0))
    {
      sub_10000BA20(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1002348AC(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for AnalyticsActor();
  v1[3] = static AnalyticsActor.shared.getter();
  sub_100234C0C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100234944, v3, v2);
}

uint64_t sub_100234944()
{
  v1 = sub_100234570();
  v3 = v2;
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = 0x4020303030100uLL >> (8 * v5);
  if (v5 >= 7)
  {
    LOBYTE(v6) = 3;
  }

  *(v0 + 104) = v6;
  if (qword_100ACFB20 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = v3;
  *(v0 + 56) = v1;
  v7 = unk_100B2F590;
  *(v0 + 64) = qword_100B2F588;
  *(v0 + 72) = v7;

  *(v0 + 105) = static Runtime.isInternalBuild.getter() & 1;
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100234AA0, v9, v8);
}

uint64_t sub_100234AA0()
{

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 systemVersion];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v0[11] = v3;
  v0[12] = v5;
  v6 = v0[4];
  v7 = v0[5];

  return _swift_task_switch(sub_100234B64, v6, v7);
}

uint64_t sub_100234B64()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 105);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 104);
  v9 = *(v0 + 16);

  *v9 = v6;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_100234C0C()
{
  result = qword_100AD9C80;
  if (!qword_100AD9C80)
  {
    type metadata accessor for AnalyticsActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C80);
  }

  return result;
}

uint64_t sub_100234C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1004A0410(a1, v4, v5, v6);
}

uint64_t sub_100234D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100232F24(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_100234DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10023235C(a1, v4, v5, v7, v6);
}

uint64_t sub_100234EAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100234EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_100231AB8(a1, v4, v5, v7, v6);
}

uint64_t sub_100234FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100230F9C(a1, v4, v5, v6);
}

uint64_t sub_100235068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for JournalEntity()
{
  result = qword_100AD9D80;
  if (!qword_100AD9D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100235124@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_1000F24EC(&qword_100AD9E58);
  __chkstk_darwin(v1 - 8);
  v51 = &v42 - v2;
  v3 = sub_1000F24EC(&qword_100AD9E60);
  __chkstk_darwin(v3 - 8);
  v50 = &v42 - v4;
  v5 = type metadata accessor for AttributedString.InterpolationOptions();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for AttributedString();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v13 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v46 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v45 = &v42 - v19;
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  type metadata accessor for JournalEntity();
  EntityProperty.wrappedValue.getter();
  if (v55)
  {
    v24 = v54;
  }

  else
  {
    v24 = 0;
  }

  if (v55)
  {
    v22 = v55;
  }

  v25 = v22;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v24);

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v44 = v21;
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v42;
  v29 = v43;
  EntityProperty.wrappedValue.getter();
  v30 = *(v28 + 48);
  if (v30(v9, 1, v29) == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v30(v9, 1, v29) != 1)
    {
      sub_100004F84(v9, &qword_100AD8D78);
    }
  }

  else
  {
    (*(v28 + 32))(v53, v9, v29);
  }

  v54 = _swiftEmptyArrayStorage;
  sub_1002371D0(&qword_100AD9E68, &type metadata accessor for AttributedString.InterpolationOptions);
  sub_1000F24EC(&qword_100AD9E70);
  sub_10000B58C(&qword_100AD9E78, &qword_100AD9E70);
  v31 = v47;
  v32 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v53;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
  (*(v48 + 8))(v31, v32);
  (*(v28 + 8))(v33, v29);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
  v35 = v45;
  LocalizedStringResource.init(stringInterpolation:)();
  v36 = *(v15 + 16);
  v37 = v44;
  v36(v46, v44, v14);
  v38 = v50;
  v36(v50, v35, v14);
  (*(v15 + 56))(v38, 0, 1, v14);
  v39 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  v40 = *(v15 + 8);
  v40(v35, v14);
  return (v40)(v37, v14);
}

uint64_t sub_10023580C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_100235874()
{
  result = qword_100AD9CA0;
  if (!qword_100AD9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CA0);
  }

  return result;
}

uint64_t sub_1002358C8@<X0>(void *a1@<X8>)
{
  v19 = a1;
  v2 = sub_1000F24EC(&unk_100AD4790);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v9(v5, 1, 1, v8);
  v10 = static JournalDataUtilities.fetchEntries(from:to:fetchLimit:context:)();
  sub_100004F84(v5, &unk_100AD4790);
  sub_100004F84(v7, &unk_100AD4790);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:

    v17 = _swiftEmptyArrayStorage;
LABEL_14:
    *v19 = v17;
    return result;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v18 = v1;
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 managedObjectContext];
      if (!v16)
      {
        v16 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      ++v13;
      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v15, 0, 0, v16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v11 != v13);

    v17 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_100235B84@<X0>(void *a1@<X8>)
{
  result = static JournalDataUtilities.fetchJournalEntryMOs(entryUUIDs:context:)();
  if (v1)
  {
    return result;
  }

  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:

    *a1 = _swiftEmptyArrayStorage;
    return result;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = a1;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 managedObjectContext];
      if (!v9)
      {
        v9 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      ++v6;
      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v8, 0, 0, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);

    *v10 = _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100235D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v5 = *(qword_100B2F9E0 + 16);
  v6 = sub_1007733F4();

  if (v6)
  {
    v7 = v6;
    v8 = [v7 managedObjectContext];
    if (!v8)
    {
      v8 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel();
    swift_allocObject();
    v9 = sub_100035ADC(v7, 0, 0, v8);
    sub_1000F24EC(&unk_100AD4780);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100941D50;
    *(v10 + 32) = v9;

    swift_beginAccess();
    *(a4 + 16) = v10;
  }
}

uint64_t sub_100235EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10008DA74;

  return (sub_1002386A8)(0, 0, a2, a3);
}

unint64_t sub_100235F84()
{
  result = qword_100AD9CA8;
  if (!qword_100AD9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CA8);
  }

  return result;
}

unint64_t sub_100235FDC()
{
  result = qword_100AD9CB0;
  if (!qword_100AD9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CB0);
  }

  return result;
}

uint64_t sub_100236030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100238FA8;

  return sub_100237C20(0, 0, a1);
}

uint64_t sub_1002360E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100238F90;

  return sub_100237218(0, 0);
}

uint64_t sub_10023618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10023624C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10023624C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100236350()
{
  result = qword_100AD9CB8;
  if (!qword_100AD9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CB8);
  }

  return result;
}

unint64_t sub_1002363A8()
{
  result = qword_100AD9CC8;
  if (!qword_100AD9CC8)
  {
    sub_1000F2A18(&qword_100AD9CD0);
    sub_1002371D0(&qword_100AD9CC0, type metadata accessor for JournalEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CC8);
  }

  return result;
}

uint64_t sub_10023645C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100235874();
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100236510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

void *sub_100236610()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100B2F9E0 + 16);
  v1 = *&v0[OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain];
  v2 = v0;
  UUID.uuidString.getter();
  v3 = sub_1007733F4();

  if (v3)
  {
    v4 = [v3 managedObjectContext];
    if (!v4)
    {
      v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel();
    swift_allocObject();
    v3 = sub_100035ADC(v3, 0, 0, v4);
  }

  return v3;
}

uint64_t sub_1002368AC(uint64_t a1)
{
  v2 = sub_1002371D0(&qword_100AD9E80, type metadata accessor for JournalEntity);

  return static AssistantSchemaEntity.typeDisplayRepresentation.getter(a1, v2);
}

uint64_t sub_10023696C(uint64_t a1)
{
  v2 = sub_1002371D0(&qword_100AD9C98, type metadata accessor for JournalEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100236A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100032ECC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100236AF8(uint64_t a1)
{
  v2 = sub_1002371D0(&qword_100AD9D08, type metadata accessor for JournalEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_100236BAC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100236E44(319, &qword_100AD9D90, &unk_100AE4870, &unk_100945360, sub_100236D6C);
    if (v1 <= 0x3F)
    {
      sub_100236E44(319, &qword_100AD9DA8, &qword_100AD8D78, &unk_100948490, sub_100236EB4);
      if (v2 <= 0x3F)
      {
        sub_100236E44(319, &qword_100AD9DC0, &qword_100AD9DC8, &unk_100949780, sub_100236F68);
        if (v3 <= 0x3F)
        {
          sub_100236E44(319, &qword_100AD9DE0, &unk_100AD4790, &unk_10093B4E0, sub_10023701C);
          if (v4 <= 0x3F)
          {
            sub_100236E44(319, &qword_100AD9DF8, &qword_100AD9E00, &unk_100949790, sub_1002370D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100236D6C()
{
  result = qword_100AD9D98;
  if (!qword_100AD9D98)
  {
    sub_1000F2A18(&unk_100AE4870);
    sub_100236DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9D98);
  }

  return result;
}

unint64_t sub_100236DF0()
{
  result = qword_100AD9DA0;
  if (!qword_100AD9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DA0);
  }

  return result;
}

void sub_100236E44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1000F2A18(a3);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100236EB4()
{
  result = qword_100AD9DB0;
  if (!qword_100AD9DB0)
  {
    sub_1000F2A18(&qword_100AD8D78);
    sub_1002371D0(&qword_100AD9DB8, &type metadata accessor for AttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DB0);
  }

  return result;
}

unint64_t sub_100236F68()
{
  result = qword_100AD9DD0;
  if (!qword_100AD9DD0)
  {
    sub_1000F2A18(&qword_100AD9DC8);
    sub_1002371D0(&qword_100AD9DD8, &type metadata accessor for IntentFile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DD0);
  }

  return result;
}

unint64_t sub_10023701C()
{
  result = qword_100AD9DE8;
  if (!qword_100AD9DE8)
  {
    sub_1000F2A18(&unk_100AD4790);
    sub_1002371D0(&qword_100AD9DF0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DE8);
  }

  return result;
}

unint64_t sub_1002370D0()
{
  result = qword_100AD9E08;
  if (!qword_100AD9E08)
  {
    sub_1000F2A18(&qword_100AD9E00);
    sub_1002371D0(&qword_100AD9E10, sub_100237184);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9E08);
  }

  return result;
}

unint64_t sub_100237184()
{
  result = qword_100AD9E18;
  if (!qword_100AD9E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD9E18);
  }

  return result;
}

uint64_t sub_1002371D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100237218(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(type metadata accessor for JournalEntity() - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v2[10] = v5;
  v2[11] = v7;

  return _swift_task_switch(sub_100237360, v5, v7);
}

uint64_t sub_100237360()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[12] = v4;
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4;
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = sub_1000F24EC(&qword_100AD9E88);
  *v6 = v0;
  v6[1] = sub_1002374F8;
  v8 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v8, sub_100237BA0, v5, v7);
}

uint64_t sub_1002374F8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v4 = v2[10];
    v5 = v2[11];

    return _swift_task_switch(sub_10023764C, v4, v5);
  }
}

uint64_t sub_10023764C()
{
  v1 = v0[2];
  v0[15] = v1;
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[16] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = v0[12];

    v10 = v0[1];

    return v10(_swiftEmptyArrayStorage);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[16] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v0[17] = _swiftEmptyArrayStorage;
  v3 = v0[15];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[18] = v4;
  v0[19] = 1;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1002377D8;
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  return sub_1006781AC(v6, v7, v8);
}

uint64_t sub_1002377D8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100237B10;
  }

  else
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100237900;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100237900()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[17];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1003E53D0(0, v2[2] + 1, 1, v0[17]);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1003E53D0(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = v0[19];
  v6 = v0[16];
  v8 = v0[5];
  v7 = v0[6];

  v2[2] = v4 + 1;
  result = sub_100237BBC(v7, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4);
  if (v5 == v6)
  {
    v10 = v0[12];

    v11 = v0[1];

    return v11(v2);
  }

  v12 = v0[19];
  v0[17] = v2;
  v13 = v0[15];
  if ((v13 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = result;
  }

  else
  {
    if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v14 = *(v13 + 8 * v12 + 32);
  }

  v0[18] = v14;
  v0[19] = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1002377D8;
  v16 = v0[6];
  v17 = v0[3];
  v18 = v0[4];

  return sub_1006781AC(v16, v17, v18);
}

uint64_t sub_100237B10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100237BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = *(type metadata accessor for JournalEntity() - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[11] = v6;
  v3[12] = v8;

  return _swift_task_switch(sub_100237D6C, v6, v8);
}

uint64_t sub_100237D6C()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[13] = v5;
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v5;
  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_1000F24EC(&qword_100AD9E88);
  *v7 = v0;
  v7[1] = sub_100237F10;
  v9 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v9, sub_10023868C, v6, v8);
}

uint64_t sub_100237F10()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_100238590;
  }

  else
  {
    v8 = sub_1002380CC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1002380CC()
{
  v1 = v0[2];
  v0[17] = v1;
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[18] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = v0[13];

    v10 = v0[1];

    return v10(_swiftEmptyArrayStorage);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[18] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v0[19] = _swiftEmptyArrayStorage;
  v3 = v0[17];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[20] = v4;
  v0[21] = 1;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_100238258;
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];

  return sub_1006781AC(v6, v7, v8);
}

uint64_t sub_100238258()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_100238608;
  }

  else
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_100238380;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100238380()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1003E53D0(0, v2[2] + 1, 1, v0[19]);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1003E53D0(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[6];
  v7 = v0[7];

  v2[2] = v4 + 1;
  result = sub_100237BBC(v7, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4);
  if (v5 == v6)
  {
    v10 = v0[13];

    v11 = v0[1];

    return v11(v2);
  }

  v12 = v0[21];
  v0[19] = v2;
  v13 = v0[17];
  if ((v13 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = result;
  }

  else
  {
    if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v14 = *(v13 + 8 * v12 + 32);
  }

  v0[20] = v14;
  v0[21] = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_100238258;
  v16 = v0[7];
  v17 = v0[3];
  v18 = v0[4];

  return sub_1006781AC(v16, v17, v18);
}

uint64_t sub_100238590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100238608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002386A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *(type metadata accessor for JournalEntity() - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[14] = v7;
  v4[15] = v9;

  return _swift_task_switch(sub_1002387F4, v7, v9);
}

uint64_t sub_1002387F4()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[16] = v6;
  v7 = swift_allocObject();
  v0[17] = v7;
  *(v7 + 16) = _swiftEmptyArrayStorage;
  v8 = swift_allocObject();
  v0[18] = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v7;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v6;

  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1002389C0;
  v10 = v0[13];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_100238F70, v8, &type metadata for () + 8);
}

uint64_t sub_1002389C0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v4 = v2[14];
    v5 = v2[15];

    return _swift_task_switch(sub_100238B14, v4, v5);
  }
}

uint64_t sub_100238B14()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v9 = *(v0 + 8);

    return v9(_swiftEmptyArrayStorage);
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  *(v0 + 160) = v4;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_100238CA4;
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  return sub_1006781AC(v6, v7, v8);
}

uint64_t sub_100238CA4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_100238ED8;
  }

  else
  {
    v5 = sub_100238DE0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100238DE0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  sub_1000F24EC(&unk_100AD9E90);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100940080;
  sub_100237BBC(v1, v4 + v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100238ED8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100238FD0()
{
  sub_10023A6A0();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_1002390C8(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + qword_100B2F5A0) *a2];
    v7 = [v6 constraintEqualToConstant:0.0];

    type metadata accessor for UILayoutPriority(0);
    sub_10023A9CC(&qword_100AF3610, type metadata accessor for UILayoutPriority);
    v8 = v2;
    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    LODWORD(v9) = v13;
    [v7 setPriority:v9];
    v10 = *(v2 + v3);
    *(v8 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

uint64_t sub_1002391F8()
{
  v0 = type metadata accessor for UIView.Invalidations.Properties();
  __chkstk_darwin(v0);
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AD9FF0);
  sub_10023A738();
  return UIView.Invalidating.init(wrappedValue:_:)();
}

uint64_t sub_1002392DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t sub_100239388()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static UIView.Invalidating.subscript.setter();
}

id sub_1002394E4(double a1, double a2, double a3, double a4)
{
  v9 = sub_1000F24EC(&unk_100ADA010);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = qword_100B2F598;
  *&v4[v13] = [objc_allocWithZone(UIScrollView) init];
  *&v4[qword_100AD9F38] = 0;
  *&v4[qword_100AD9F40] = 0;
  *&v4[qword_100AD9F48] = 0;
  *&v4[qword_100AD9F50] = 0;
  *&v4[qword_100AD9F58] = 0;
  v14 = qword_100B2F5A0;
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = qword_100AD9F60;
  sub_1002391F8();
  (*(v10 + 32))(&v4[v15], v12, v9);
  *&v4[qword_100B2F5A8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[qword_100B2F5B0] = 0;
  v16 = type metadata accessor for FullScreenZoomableMediaAssetCollectionViewCell();
  v18.receiver = v4;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

void sub_100239714()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for FullScreenZoomableMediaAssetCollectionViewCell();
  objc_msgSendSuper2(&v19, "updateProperties");
  v1 = COERCE_DOUBLE(sub_1002392DC());
  if ((v3 & 1) == 0)
  {
    v4 = v1;
    if (v1 > 0.0)
    {
      v5 = v2;
      if (v2 > 0.0)
      {
        v6 = v2;
        v7 = v1;
        v8 = sub_1002390A0();
        [v8 setConstant:v4];

        v9 = sub_1002390B4();
        [v9 setConstant:v5];

        swift_getKeyPath();
        swift_getKeyPath();
        v18 = v7;
        v10 = v0;
        static UIView.Invalidating.subscript.setter();
        v11 = objc_opt_self();
        sub_1000F24EC(&unk_100AD4780);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100941D60;
        v13 = *&v10[qword_100AD9F48];
        *(v12 + 32) = v13;
        v14 = *&v10[qword_100AD9F50];
        *(v12 + 40) = v14;
        sub_1000065A8(0, &qword_100AD8000);
        v15 = v13;
        v16 = v14;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v11 activateConstraints:{isa, *&v18, *&v6}];
      }
    }
  }
}

void sub_1002398E0(void *a1)
{
  v1 = a1;
  sub_100239714();
}

id sub_100239928()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FullScreenZoomableMediaAssetCollectionViewCell();
  objc_msgSendSuper2(&v3, "layoutMarginsDidChange");
  v1 = *&v0[qword_100B2F598];
  [v0 layoutMargins];
  return [v1 setContentInset:?];
}

void sub_1002399B8(void *a1)
{
  v1 = a1;
  sub_100239928();
}

uint64_t sub_100239A00()
{
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FullScreenZoomableMediaAssetCollectionViewCell();
  objc_msgSendSuper2(&v4, "_bridgedUpdateConfigurationUsingState:", isa);

  result = UICellConfigurationState.isDisabled.getter();
  if (result)
  {
    result = [*&v0[qword_100B2F598] zoomScale];
    if (v3 > 1.0)
    {
      return [*&v0[qword_100B2F598] setZoomScale:1 animated:1.0];
    }
  }

  return result;
}

uint64_t sub_100239AD4(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  sub_100239A00();

  return (*(v3 + 8))(v5, v2);
}

id sub_100239BBC(double a1, double a2, float a3, float a4)
{
  [v4 layoutMargins];
  v10 = a1 - v9;
  [v4 layoutMargins];
  v12 = v10 - v11;
  [v4 layoutMargins];
  v14 = a2 - v13;
  [v4 layoutMargins];
  v15 = v14 - v17;
  v16 = *&v4[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView];
  *&v17 = a3;
  *&v18 = a4;

  return [v16 systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:v15 verticalFittingPriority:{v17, v18}];
}

double sub_100239C70(void *a1, double a2, double a3, float a4, float a5)
{
  v9 = a1;
  sub_100239BBC(a2, a3, a4, a5);
  v11 = v10;

  return v11;
}

void sub_100239CDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10023AC00();
}

id sub_100239D3C(void *a1)
{
  v3 = *(v1 + qword_100B2F598);
  [v3 zoomScale];
  v5 = 1.0;
  if (v6 == 1.0)
  {
    [a1 locationInView:*(v1 + qword_100B2F5A0)];
    v8 = v7;
    v10 = v9;
    [v3 frame];
    v12 = v11 / 3.0;
    [v3 frame];
    v14 = v8 - v12 * 0.5;
    v5 = v10 - v13 / 3.0 * 0.5;
    v15 = "zoomToRect:animated:";
    v16 = v3;
    v4 = v12;
  }

  else
  {
    v15 = "setZoomScale:animated:";
    v14 = 1.0;
    v16 = v3;
  }

  return [v16 v15];
}

void sub_100239E5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100239D3C(v4);
}

id sub_100239EC4(char a1)
{
  result = [*(v1 + qword_100B2F598) zoomScale];
  if (v4 > 1.0)
  {
    v5 = *(v1 + qword_100B2F598);

    return [v5 setZoomScale:a1 & 1 animated:1.0];
  }

  return result;
}

uint64_t sub_100239F48(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10023AE48(v7);

  return v9 & 1;
}

id sub_100239FA8()
{
  v0 = sub_10023AECC();

  return v0;
}

void sub_100239FDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10023AEE0();
}

BOOL sub_10023A044(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    [*&v2[qword_100B2F598] zoomScale];
    return v5 != 1.0;
  }

  else if (static Selector.== infix(_:_:)())
  {
    [*&v2[qword_100B2F598] zoomScale];
    return v7 < 6.0;
  }

  else if (static Selector.== infix(_:_:)())
  {
    [*&v2[qword_100B2F598] zoomScale];
    return v8 > 1.0;
  }

  else
  {
    sub_10005D974(a2, v18);
    v9 = v19;
    if (v19)
    {
      v10 = sub_10000CA14(v18, v19);
      v11 = *(v9 - 8);
      __chkstk_darwin(v10);
      v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v13);
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v13, v9);
      sub_10000BA7C(v18);
    }

    else
    {
      v14 = 0;
    }

    v15 = type metadata accessor for FullScreenZoomableMediaAssetCollectionViewCell();
    v17.receiver = v2;
    v17.super_class = v15;
    v16 = objc_msgSendSuper2(&v17, "canPerformAction:withSender:", a1, v14);
    swift_unknownObjectRelease();
    return v16;
  }
}

BOOL sub_10023A298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_10023A044(a3, v10);

  sub_1000261D4(v10);
  return v8;
}

void sub_10023A320(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10023AFA0();
}

void sub_10023A380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10023B014();
}

void sub_10023A3E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10023B078();
}

uint64_t sub_10023A440()
{
  v1 = qword_100AD9F60;
  v2 = sub_1000F24EC(&unk_100ADA010);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + qword_100B2F5A8;

  return sub_100038534(v3);
}

id sub_10023A534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenZoomableMediaAssetCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10023A590(uint64_t a1)
{
  v2 = qword_100AD9F60;
  v3 = sub_1000F24EC(&unk_100ADA010);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = a1 + qword_100B2F5A8;

  return sub_100038534(v4);
}

void sub_10023A6A0()
{
  if (!qword_100AD9FE8)
  {
    sub_1000F2A18(&qword_100AD9FF0);
    type metadata accessor for UIView.Invalidations.Properties();
    sub_10023A738();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD9FE8);
    }
  }
}

unint64_t sub_10023A738()
{
  result = qword_100AD9FF8;
  if (!qword_100AD9FF8)
  {
    sub_1000F2A18(&qword_100AD9FF0);
    sub_10023A9CC(&qword_100ADA000, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9FF8);
  }

  return result;
}

uint64_t sub_10023A7EC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10023A86C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t sub_10023A8DC(char a1)
{
  v1[qword_100B2F5B0] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static UIView.Invalidating.subscript.setter();
}

id sub_10023A954(char a1)
{
  v3 = *(v1 + qword_100B2F598);
  result = [v3 zoomScale];
  if (v5 > 1.0)
  {

    return [v3 setZoomScale:a1 & 1 animated:1.0];
  }

  return result;
}

uint64_t sub_10023A9CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10023AA14()
{
  v1 = sub_1000F24EC(&unk_100ADA010);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  v5 = qword_100B2F598;
  *(v0 + v5) = [objc_allocWithZone(UIScrollView) init];
  *(v0 + qword_100AD9F38) = 0;
  *(v0 + qword_100AD9F40) = 0;
  *(v0 + qword_100AD9F48) = 0;
  *(v0 + qword_100AD9F50) = 0;
  *(v0 + qword_100AD9F58) = 0;
  v6 = qword_100B2F5A0;
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = qword_100AD9F60;
  sub_1002391F8();
  (*(v2 + 32))(v0 + v7, v4, v1);
  *(v0 + qword_100B2F5A8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_100B2F5B0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10023AC00()
{
  if (((*((swift_isaMask & *v0) + 0x1E0))() & 1) != 0 || (v1 = [v0 window]) == 0)
  {
    [*(v0 + qword_100B2F598) zoomScale];
    if (v14 > 1.0)
    {
      [*(v0 + qword_100B2F598) setZoomScale:1 animated:1.0];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
      v18 = Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
      Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] = v18 ^ 1;
      if ([Strong isViewLoaded] && v18 != v16[v17])
      {
        sub_10043795C();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v19 = v1;
    [v19 bounds];
    Width = CGRectGetWidth(v21);
    [*(v0 + qword_100B2F5A0) bounds];
    v3 = Width / CGRectGetWidth(v22);
    [v19 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    Height = CGRectGetHeight(v23);
    [*(v0 + qword_100B2F5A0) bounds];
    v13 = Height / CGRectGetHeight(v24);
    if (v13 >= v3)
    {
      v13 = v3;
    }

    [*(v0 + qword_100B2F598) setZoomScale:1 animated:v13];
  }
}

uint64_t sub_10023AE48(void *a1)
{
  v2 = *(v1 + qword_100AD9F38);
  if (!v2)
  {
    return 0;
  }

  sub_1000065A8(0, &qword_100AD5338);
  v4 = v2;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10023AEE0()
{
  v1 = [*(v0 + qword_100B2F598) zoomScale];
  if (v2 > 1.0)
  {
    (*((swift_isaMask & *v0) + 0x210))(v1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100436058();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10023AFA0()
{
  result = [*(v0 + qword_100B2F598) zoomScale];
  if (v2 > 1.0)
  {
    v3 = *(v0 + qword_100B2F598);

    return [v3 setZoomScale:1 animated:1.0];
  }

  return result;
}

id sub_10023B014()
{
  v1 = *(v0 + qword_100B2F598);
  [v1 zoomScale];
  v3 = v2 * 1.349;

  return [v1 setZoomScale:1 animated:v3];
}

id sub_10023B078()
{
  v1 = *(v0 + qword_100B2F598);
  [v1 zoomScale];
  v3 = v2 / 1.349;

  return [v1 setZoomScale:1 animated:v3];
}

uint64_t sub_10023B0F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F24EC(&qword_100AF41D0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_1000065A8(0, &qword_100AD2A78);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_10002432C((v27 + 8), v25);
    sub_10002432C(v25, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << v1[32];
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v6[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v6[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v6[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v14;
    result = sub_10002432C(v27, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10023B3A8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1000F24EC(&unk_100AF4200);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = sub_1000F24EC(&unk_100AE4870);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  v35 = v1;
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v24 = v8 >> 6;

    v25 = 0;
    while (v7)
    {
      v28 = v25;
LABEL_36:
      v29 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v28 << 6)));
      v7 &= v7 - 1;

      swift_dynamicCast();
      result = sub_1003621EC(v36, v37);
      if (v30)
      {
        v26 = (v2[6] + 16 * result);
        *v26 = v36;
        v26[1] = v37;
        v27 = result;

        *(v2[7] + 8 * v27) = v29;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_44;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v31 = (v2[6] + 16 * result);
        *v31 = v36;
        v31[1] = v37;
        *(v2[7] + 8 * result) = v29;
        v32 = v2[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_45;
        }

        v2[2] = v34;
      }

      v25 = v28;
      v1 = v35;
    }

    while (1)
    {
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
LABEL_40:

        return v2;
      }

      v7 = *(v4 + 8 * v28);
      ++v25;
      if (v7)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 8);

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v16 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v12 << 6)));

      swift_dynamicCast();
      Hasher.init(_seed:)();
      if (v37)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*&v10[8 * (v18 >> 6)]) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *&v10[8 * v19];
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_42;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*&v10[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      v14 = (v2[6] + 16 * v13);
      *v14 = v36;
      v14[1] = v37;
      *(v2[7] + 8 * v13) = v16;
      ++v2[2];
      v1 = v35;
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v9)
      {
        goto LABEL_40;
      }

      v7 = *(v4 + 8 * v15);
      ++v12;
      if (v7)
      {
        v12 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10023B768(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaDictionary.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptyDictionarySingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000F24EC(&qword_100AD8788);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = __CocoaDictionary.makeIterator()();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 | 0x8000000000000000;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = (v3 + 8);

  v15 = 0;
  v31 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v23 = __CocoaDictionary.Iterator.next()();
    if (!v23 || (*&v32 = v23, sub_1000065A8(0, &qword_100AD13A0), swift_dynamicCast(), v22 = v36, v19 = v15, v21 = v7, !v36))
    {
LABEL_34:
      sub_100014FF8();

      return v3;
    }

LABEL_25:
    *&v40[0] = v22;
    sub_1000065A8(0, &qword_100AD13A0);
    swift_dynamicCast();
    swift_dynamicCast();
    v36 = v32;
    v37 = v33;
    v38 = v34;
    sub_10002432C(&v35, v39);
    v32 = v36;
    v33 = v37;
    v34 = v38;
    sub_10002432C(v39, v40);
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*&v13[8 * (v25 >> 6)]) != 0)
    {
      v16 = __clz(__rbit64((-1 << v25) & ~*&v13[8 * (v25 >> 6)])) | v25 & 0x7FFFFFFFFFFFFFC0;
      v8 = v31;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      v8 = v31;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *&v13[8 * v26];
      }

      while (v30 == -1);
      v16 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *&v13[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v17 = v3[6] + 40 * v16;
    *v17 = v32;
    *(v17 + 16) = v33;
    *(v17 + 32) = v34;
    result = sub_10002432C(v40, (v3[7] + 32 * v16));
    ++v3[2];
    v15 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v15;
  if (v7)
  {
LABEL_21:
    v21 = (v18 - 1) & v18;
    v22 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    swift_unknownObjectRetain();
    if (!v22)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v20 = v15;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      goto LABEL_34;
    }

    v18 = *(v5 + 8 * v19);
    ++v20;
    if (v18)
    {
      v8 = v31;
      goto LABEL_21;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10023BB2C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADA020);
  v1 = sub_10000617C(v0, qword_100ADA020);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023BBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v8 = type metadata accessor for URL();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = type metadata accessor for UIImageReader();
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v6[20] = v11;
  v6[21] = v13;

  return _swift_task_switch(sub_10023BDB8, v11, v13);
}

uint64_t sub_10023BDB8()
{
  static UIImageReader.default.getter();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_10023BE5C;
  v2 = *(v0 + 48);

  return UIImageReader.image(contentsOf:)(v2);
}

uint64_t sub_10023BE5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  *(*v1 + 184) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);

  return _swift_task_switch(sub_10023BFE8, v7, v6);
}

uint64_t sub_10023BFE8()
{
  v80 = v0;
  v1 = v0[23];
  if (!v1)
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v13 = v0[13];
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[9];
    v17 = v0[6];
    v18 = type metadata accessor for Logger();
    sub_10000617C(v18, qword_100ADA020);
    (*(v15 + 16))(v13, v17, v14);
    v19 = v16;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[13];
    v25 = v0[10];
    v24 = v0[11];
    if (v22)
    {
      v26 = v0[9];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = v78;
      *v27 = 138412546;
      *(v27 + 4) = v26;
      *v28 = v26;
      *(v27 + 12) = 2080;
      sub_10023DC10(&qword_100ADEFD0, &type metadata accessor for URL);
      v29 = v26;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v24 + 8))(v23, v25);
      v33 = sub_100008458(v30, v32, &v79);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v20, v21, "%@._resizeImageAttachment unable to create image from url %s", v27, 0x16u);
      sub_10012B714(v28);

      sub_10000BA7C(v78);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    goto LABEL_36;
  }

  v2 = sub_10059AD98(6000000.0);
  v3 = UIImageHEICRepresentation(v2);
  if (!v3)
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v34 = v0[9];
    v35 = type metadata accessor for Logger();
    sub_10000617C(v35, qword_100ADA020);
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[9];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v39;
      *v41 = v39;
      v42 = v39;
      _os_log_impl(&_mh_execute_header, v37, v38, "%@._resizeImageAttachment unable to create data from resized image", v40, 0xCu);
      sub_10012B714(v41);
    }

    goto LABEL_36;
  }

  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v3;
  v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  (*(v5 + 104))(v4, enum case for AssetType.livePhoto(_:), v6);
  sub_10023DC10(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v10 + 8))(v0[16], v0[14]);
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v10 + 8))(v11, v12);

    if ((v43 & 1) == 0)
    {
      v63 = v77;
LABEL_35:
      Data.write(to:options:)();

      sub_1000340DC(v63, v9);
      v73 = 1;
      goto LABEL_37;
    }
  }

  sub_10023CB3C(v0[6]);
  if (!v44)
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v58 = v0[9];
    v59 = type metadata accessor for Logger();
    sub_10000617C(v59, qword_100ADA020);
    v60 = v58;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_28;
    }

    v61 = v0[9];
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v61;
    *v55 = v61;
    v62 = v61;
    v57 = "%@._resizeImageAttachment unable to get content identifier from original image";
    goto LABEL_27;
  }

  v45 = sub_10023CF54();
  v47 = v46;

  if (v47 >> 60 != 15)
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v64 = v0[9];
    v65 = type metadata accessor for Logger();
    sub_10000617C(v65, qword_100ADA020);
    v66 = v64;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v0[9];
      v70 = swift_slowAlloc();
      v76 = v9;
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v69;
      *v71 = v69;
      v72 = v69;
      _os_log_impl(&_mh_execute_header, v67, v68, "%@._resizeImageAttachment added content identifier property to image for LivePhoto", v70, 0xCu);
      sub_10012B714(v71);
      v9 = v76;
    }

    sub_1000340DC(v77, v9);

    v63 = v45;
    v9 = v47;
    goto LABEL_35;
  }

  if (qword_100ACFB28 != -1)
  {
    swift_once();
  }

  v48 = v0[9];
  v49 = type metadata accessor for Logger();
  sub_10000617C(v49, qword_100ADA020);
  v50 = v48;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v51, v52))
  {
    goto LABEL_28;
  }

  v53 = v0[9];
  v54 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  *v54 = 138412290;
  *(v54 + 4) = v53;
  *v55 = v53;
  v56 = v53;
  v57 = "%@._resizeImageAttachment unable to add content identifier to resized image";
LABEL_27:
  _os_log_impl(&_mh_execute_header, v51, v52, v57, v54, 0xCu);
  sub_10012B714(v55);

LABEL_28:
  sub_1000340DC(v77, v9);

LABEL_36:
  v73 = 0;
LABEL_37:

  v74 = v0[1];

  return v74(v73);
}

uint64_t sub_10023CB3C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10023D66C(a1);
  if (!v3)
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100ADA020);
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_29;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    v14 = "%@.getImageContentIdentifier can't get image properties";
    goto LABEL_28;
  }

  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = kCGImagePropertyMakerAppleDictionary;
    v6 = __CocoaDictionary.lookup(_:)();

    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!*(v3 + 16) || (v15 = sub_1003623D0(kCGImagePropertyMakerAppleDictionary), (v16 & 1) == 0))
    {

      goto LABEL_18;
    }

    v6 = *(*(v4 + 56) + 8 * v15);
    swift_unknownObjectRetain();
  }

  v30[0] = v6;
  sub_1000F24EC(&qword_100AD13D8);
  if (swift_dynamicCast())
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v29 + 16))
    {
      v19 = sub_100094E98(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_10000BA20(*(v29 + 56) + 32 * v19, v30);

        if (swift_dynamicCast())
        {
          return v29;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_24:
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000617C(v26, qword_100ADA020);
    v27 = v2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_29;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v27;
    *v12 = v27;
    v28 = v27;
    v14 = "%@.getImageContentIdentifier can't find Asset Identifier (AVAppleMakerNote_AssetIdentifier) in kCGImagePropertyMakerAppleDictionary";
    goto LABEL_28;
  }

LABEL_18:
  if (qword_100ACFB28 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000617C(v23, qword_100ADA020);
  v24 = v2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_29;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  *v11 = 138412290;
  *(v11 + 4) = v24;
  *v12 = v24;
  v25 = v24;
  v14 = "%@.getImageContentIdentifier can't find kCGImagePropertyMakerAppleDictionary in properties";
LABEL_28:
  _os_log_impl(&_mh_execute_header, v9, v10, v14, v11, 0xCu);
  sub_10012B714(v12);

LABEL_29:

  return 0;
}

uint64_t sub_10023CF54()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = CGImageSourceCreateWithData(isa, 0);

  if (!v2)
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100ADA020);
    v8 = v0;
    v2 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v8;
      *v11 = v8;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v2, v9, "%@.addImageContentIdentfier can't create image source from data", v10, 0xCu);
      sub_10012B714(v11);
    }

    goto LABEL_16;
  }

  v3 = CGImageSourceGetType(v2);
  if (!v3)
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100ADA020);
    v14 = v0;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "%@.addImageContentIdentfier can't get type from image source", v17, 0xCu);
      sub_10012B714(v18);
    }

LABEL_16:
    return 0;
  }

  v4 = v3;
  v5 = CGImageSourceCopyPropertiesAtIndex(v2, 0, 0);
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1000065A8(0, &qword_100AD13A0);
      sub_10023DC58();
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (qword_100ACFB28 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000617C(v20, qword_100ADA020);
  v21 = v0;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "%@.addImageContentIdentfier can't get imageProperties from image source", v24, 0xCu);
    sub_10012B714(v25);
  }

  return 0;
}

void *sub_10023D66C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  URL._bridgeToObjectiveC()(&v41);
  v12 = v11;
  v13 = CGImageSourceCreateWithURL(v11, 0);

  if (v13)
  {
    v14 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v41._clients = 0;
        sub_1000065A8(0, &qword_100AD13A0);
        sub_10023DC58();
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

        if (v41._clients)
        {
          clients = v41._clients;

          return clients;
        }
      }

      else
      {
      }
    }

    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000617C(v30, qword_100ADA020);
    (*(v5 + 16))(v10, a1, v4);
    v31 = v2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41._urlString = v35;
      v41._baseURL = swift_slowAlloc();
      v41._clients = v41._baseURL;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2080;
      sub_10023DC10(&qword_100ADEFD0, &type metadata accessor for URL);
      v36 = v31;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v5 + 8))(v10, v4);
      v40 = sub_100008458(v37, v39, &v41._clients);

      *(v34 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "%@.getImageProperties can't get image properties from source from URL: %s", v34, 0x16u);
      sub_10012B714(v41._urlString);

      sub_10000BA7C(v41._baseURL);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_100ACFB28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000617C(v18, qword_100ADA020);
    (*(v5 + 16))(v7, a1, v4);
    v19 = v4;
    v20 = v2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41._baseURL = swift_slowAlloc();
      v41._clients = v41._baseURL;
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 2080;
      sub_10023DC10(&qword_100ADEFD0, &type metadata accessor for URL);
      v25 = v20;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v5 + 8))(v7, v19);
      v29 = sub_100008458(v26, v28, &v41._clients);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "%@.getImageProperties can't create image source from URL: %s", v23, 0x16u);
      sub_10012B714(v24);

      sub_10000BA7C(v41._baseURL);
    }

    else
    {

      (*(v5 + 8))(v7, v19);
    }
  }

  return 0;
}

uint64_t sub_10023DC10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10023DC58()
{
  result = qword_100ADA038;
  if (!qword_100ADA038)
  {
    sub_1000065A8(255, &qword_100AD13A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA038);
  }

  return result;
}

void sub_10023DCC0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10002E3AC();

  v4 = dbl_100949A30[v3];
  v5 = dbl_100949A70[v3];
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 systemMinimumLayoutMargins];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [v1 systemMinimumLayoutMargins];
    v9 = v12;
    v11 = v13;
  }

  v14 = [v1 navigationItem];
  [v14 largeTitleInsets];
  v16 = v15;
  v18 = v17;

  v19 = [v1 navigationItem];
  [v19 setLargeTitleInsets:{v16, v4 + v5 - v9, v18, v4 + 4.0 - v11}];

  v20 = [v1 navigationItem];
  [v20 setUseRelativeLargeTitleInsets:1];

  v21 = [v1 navigationController];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 navigationBar];

    [v23 setNeedsLayout];
  }
}

double sub_10023DEC0@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v7 = 1;
  if (a1 - 3 >= 5)
  {
    v2 = 4.0;
    v5 = 16.0;
    v4 = 8.0;
    if (a1 >= 2u)
    {
      v4 = 10.0;
    }

    v3 = 0;
    if (a1 >= 2u)
    {
      v5 = 40.0;
      v2 = 6.0;
    }
  }

  else
  {
    v7 = 0;
    v2 = 6.0;
    v3 = 0x4090280000000000;
    v4 = 10.0;
    v5 = 40.0;
  }

  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v5;
  *(a2 + 24) = v5;
  *(a2 + 32) = v5;
  *(a2 + 40) = v3;
  *(a2 + 48) = v7;
  *(a2 + 56) = v4;
  *(a2 + 64) = xmmword_100949A10;
  *(a2 + 80) = v2;
  result = 5.0;
  *(a2 + 88) = xmmword_100949A20;
  return result;
}

uint64_t sub_10023DF6C()
{
  v0 = sub_1000F24EC(&qword_100AEE0E0);
  sub_100006118(v0, qword_100B2F5B8);
  sub_10000617C(v0, qword_100B2F5B8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10023E03C()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000F24EC(&qword_100AEE0E0);
  sub_100006118(v4, qword_100B2F5D0);
  sub_10000617C(v4, qword_100B2F5D0);
  sub_100026188();
  v5 = static NSUserDefaults.shared.getter();
  (*(v1 + 104))(v3, enum case for SettingsKey.addCurrentLocation(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v6 = String._bridgeToObjectiveC()();

  LOBYTE(v0) = [v5 BOOLForKey:v6];

  v8[15] = v0 ^ 1;
  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10023E2B4()
{
  v0 = sub_1000F24EC(&qword_100AEE0E0);
  sub_100006118(v0, qword_100B2F5E8);
  sub_10000617C(v0, qword_100B2F5E8);
  sub_100026188();
  v1 = static NSUserDefaults.shared.getter();
  v2 = String._bridgeToObjectiveC()();
  [v1 BOOLForKey:v2];

  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10023E4C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100ADA098);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v16 - v7;
  v9 = sub_1000F24EC(&qword_100ADA0A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_10000B58C(&qword_100ADA0A8, &qword_100ADA0A0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = 3;
  static PredicateExpressions.build_Arg<A>(_:)();
  v13 = v17;
  (*(v3 + 104))(v5, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v17);
  a2[3] = sub_1000F24EC(&qword_100ADA0B0);
  a2[4] = sub_1000B1210();
  sub_10001A770(a2);
  sub_10000B58C(&qword_100ADA0D0, &qword_100ADA098);
  v14 = v18;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10023E7EC@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_1000F24EC(&qword_100ADA050);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_1000F24EC(&qword_100ADA058);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000B58C(&qword_100ADA060, &qword_100ADA058);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_1000F24EC(&qword_100ADA068);
  a2[4] = sub_10023F2A0();
  sub_10001A770(a2);
  sub_10000B58C(&qword_100ADA088, &qword_100ADA050);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void *sub_10023EB2C()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_1000F24EC(&qword_100ADA0D8);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_1000B4CC8(v5);
  swift_setDeallocating();
  (*(v1 + 8))(v5 + v4, v0);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_10023ECCC@<X0>(uint64_t *a1@<X8>)
{
  sub_10023F460();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10023ED10()
{
  result = qword_100ADA048;
  if (!qword_100ADA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA048);
  }

  return result;
}

uint64_t sub_10023ED64()
{
  v0 = sub_1000F24EC(&qword_100AEE0E0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v20 - v2;
  v4 = sub_1000F24EC(&unk_100ADE720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = type metadata accessor for Tips.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFF00 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v4, qword_100B2FA90);
  swift_beginAccess();
  (*(v5 + 16))(v7, v12, v4);
  Tips.Rule.init<A>(_:_:)();
  v20[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (qword_100ACFB30 != -1)
  {
    swift_once();
  }

  v14 = sub_10000617C(v0, qword_100B2F5B8);
  swift_beginAccess();
  v15 = *(v1 + 16);
  v15(v3, v14, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  if (qword_100ACFB38 != -1)
  {
    swift_once();
  }

  v16 = sub_10000617C(v0, qword_100B2F5D0);
  v15(v3, v16, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  if (qword_100ACFB40 != -1)
  {
    swift_once();
  }

  v17 = sub_10000617C(v0, qword_100B2F5E8);
  v15(v3, v17, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v18 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v18;
}

unint64_t sub_10023F2A0()
{
  result = qword_100ADA070;
  if (!qword_100ADA070)
  {
    sub_1000F2A18(&qword_100ADA068);
    sub_10000B58C(&qword_100ADA078, &qword_100ADA058);
    sub_10023F358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA070);
  }

  return result;
}

unint64_t sub_10023F358()
{
  result = qword_100ADA080;
  if (!qword_100ADA080)
  {
    sub_1000F2A18(&qword_100ADA050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA080);
  }

  return result;
}

unint64_t sub_10023F3DC()
{
  result = qword_100ADA0C8;
  if (!qword_100ADA0C8)
  {
    sub_1000F2A18(&qword_100ADA098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA0C8);
  }

  return result;
}

unint64_t sub_10023F460()
{
  result = qword_100AEBEE0;
  if (!qword_100AEBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBEE0);
  }

  return result;
}

uint64_t sub_10023F4B8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADA0E0);
  v1 = sub_10000617C(v0, qword_100ADA0E0);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023F580()
{
  _StringGuts.grow(_:)(17);
  static AppInfo.bundleIdentifier.getter();

  v0._countAndFlagsBits = 0x7263736E6172742ELL;
  v0._object = 0xEF74786554747069;
  String.append(_:)(v0);
  v1 = String._bridgeToObjectiveC()();

  qword_100B2F600 = v1;
  return result;
}

uint64_t sub_10023F624()
{
  _StringGuts.grow(_:)(18);
  v0._countAndFlagsBits = 540697705;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  type metadata accessor for UUID();
  sub_100034130(&qword_100AE19B0, &type metadata accessor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x746E656D6765730ALL;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  type metadata accessor for TranscriptViewModelSegment();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10023F744()
{
  if (*v0)
  {
    return 0x746E656D676573;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10023F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D676573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10023F848(uint64_t a1)
{
  v2 = sub_100245A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023F884(uint64_t a1)
{
  v2 = sub_100245A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023F8C0()
{
  v1 = OBJC_IVAR____TtC7Journal18TranscriptMetadata_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7Journal18TranscriptMetadata_segment;
  v4 = type metadata accessor for TranscriptViewModelSegment();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10023F9C4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptViewModelSegment();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10023FA90(void *a1)
{
  v3 = sub_1000F24EC(&qword_100ADA4D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_100245A8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100034130(&qword_100AD8280, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    type metadata accessor for TranscriptViewModelSegment();
    sub_100034130(&qword_100ADA4D8, &type metadata accessor for TranscriptViewModelSegment);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t *sub_10023FC94(void *a1)
{
  v4 = *v1;
  v23 = v2;
  v24 = v4;
  v5 = type metadata accessor for TranscriptViewModelSegment();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F24EC(&qword_100ADA4B8);
  v9 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v17 - v10;
  sub_10000CA14(a1, a1[3]);
  sub_100245A8C();
  v12 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v9;
    v13 = v19;
    v26 = 0;
    sub_100034130(&qword_100AD81F0, &type metadata accessor for UUID);
    v14 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = *(v13 + 32);
    v17 = OBJC_IVAR____TtC7Journal18TranscriptMetadata_id;
    v15(v1 + OBJC_IVAR____TtC7Journal18TranscriptMetadata_id, v14, v21);
    v25 = 1;
    sub_100034130(&qword_100ADA4C8, &type metadata accessor for TranscriptViewModelSegment);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v11, v22);
    (*(v18 + 32))(v1 + OBJC_IVAR____TtC7Journal18TranscriptMetadata_segment, v7, v5);
  }

  sub_10000BA7C(a1);
  return v1;
}

uint64_t *sub_1002400A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_10023FC94(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100240120@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7Journal18TranscriptMetadata_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1002401C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000082B4(v1 + 16, a1, &qword_100ADA550);
}

uint64_t sub_100240290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000082B4(v3 + 16, a2, &qword_100ADA550);
}

uint64_t sub_100240360(uint64_t a1)
{
  sub_1000082B4(a1, v2, &qword_100ADA550);
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100004F84(v2, &qword_100ADA550);
}

uint64_t sub_100240468(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100246328(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1002404CC()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_10024057C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1002406DC()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100240794(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1007ED04C(v3, a1);

  if (v4)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1002408DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t sub_100240944()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1002409E8(uint64_t a1)
{

  v4 = sub_1007ED04C(v3, a1);

  if (v4)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100240B3C()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100240BE0(uint64_t a1)
{

  v4 = sub_1007ED04C(v3, a1);

  if (v4)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100240D34()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100240DD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 96);
}

uint64_t sub_100240E84(uint64_t a1)
{

  v4 = sub_1007ED04C(v3, a1);

  if (v4)
  {
    *(v1 + 96) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100240FD8()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1006AD964(v2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1006AD964(v3);
  return v1;
}

id sub_100241114()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 104);

  return v1;
}

id sub_1002411C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  *a2 = v4;

  return v4;
}

void sub_10024127C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 104);
  sub_10024652C();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 104);
    *(v2 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1002413D8()
{
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 120);
}

uint64_t sub_100241478@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_100241520(uint64_t result)
{
  if (*(v1 + 120) == (result & 1))
  {
    *(v1 + 120) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100241630(uint64_t a1)
{
  v2 = v1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = _swiftEmptyArrayStorage;
  *(v1 + 88) = _swiftEmptyArrayStorage;
  *(v1 + 96) = _swiftEmptyArrayStorage;
  *(v1 + 104) = [objc_allocWithZone(NLTokenizer) initWithUnit:1];
  type metadata accessor for SiriTranscriptionMethod();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  v5 = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  v6 = sub_1000F24EC(&qword_100ADA4E0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v2 + 112) = v4;
  *(v2 + 120) = 0;
  _StringGuts.grow(_:)(29);
  v7 = static AppInfo.bundleIdentifier.getter();
  v9 = v8;

  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x80000001008E7350;
  String.append(_:)(v10);
  type metadata accessor for CancellableTaskQueue();
  swift_allocObject();
  *(v2 + 128) = sub_100360E1C(v7, v9);
  _StringGuts.grow(_:)(24);
  v11 = static AppInfo.bundleIdentifier.getter();
  v13 = v12;

  v21[0] = v11;
  v21[1] = v13;
  v14._object = 0x80000001008E7370;
  v14._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v14);
  swift_allocObject();
  *(v2 + 136) = sub_100360E1C(v11, v13);
  ObservationRegistrar.init()();
  sub_1000082B4(a1, &v19, &unk_100AE9D30);
  if (v20)
  {
    sub_100018480(&v19, v21);
    v15 = v22;
    v16 = v23;
    sub_10000CA14(v21, v22);
    v17 = (*(v16 + 32))(v15, v16);
    if (!v17)
    {
      v17 = _swiftEmptyArrayStorage;
    }

    sub_100240E84(v17);
    sub_100241E9C(2, 0);
    sub_100004F84(a1, &unk_100AE9D30);
    sub_10000BA7C(v21);
  }

  else
  {
    sub_100004F84(a1, &unk_100AE9D30);
    sub_100004F84(&v19, &unk_100AE9D30);
  }

  return v2;
}

uint64_t sub_100241914(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_100241934, 0, 0);
}

uint64_t sub_100241934()
{
  v0[20] = sub_1008AAD8C(v0[18]);
  v0[21] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[23] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100241B90, v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100241B90()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];

  sub_10024057C(v2, v3);
  swift_getKeyPath();
  v0[7] = v1;
  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000082B4(v1 + 16, (v0 + 2), &qword_100ADA550);
  if (v0[5])
  {
    sub_100086C04((v0 + 2), (v0 + 7));
    sub_100004F84((v0 + 2), &qword_100ADA550);
    v4 = v0[10];
    v5 = v0[11];
    sub_10000CA14(v0 + 7, v4);
    (*(v5 + 8))(v4, v5);
    sub_10000BA7C((v0 + 7));
  }

  else
  {
    sub_100004F84((v0 + 2), &qword_100ADA550);
  }

  return _swift_task_switch(sub_100241D54, 0, 0);
}

uint64_t sub_100241D54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100241DB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100032ECC;

  return v6();
}

uint64_t sub_100241E9C(char a1, char a2)
{
  if (a1 == 2)
  {
    if ((a2 & 1) == 0)
    {
      v2 = a1;
      swift_getKeyPath();
      sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      goto LABEL_7;
    }
  }

  else if (a1 == 1 && (a2 & 1) == 0)
  {
    v2 = a1;
    swift_getKeyPath();
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
LABEL_7:

    sub_1002420B8(v3, v2);
  }

  v4 = sub_100240FD8();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_100949ED0;
  *(v7 + 24) = v6;

  sub_100361068(&unk_100949ED8, v7);
}

NSString sub_1002420B8(uint64_t a1, char a2)
{
  v3 = v2;
  if (!a2)
  {
    if (qword_100ACFB48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100ADA0E0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Trying to post-process temporary segments. That's probably not a good idea, but OK.", v9, 2u);
    }
  }

  result = sub_100245D90();
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    swift_weakInit();
    swift_getKeyPath();
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v3 + 104);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v12;
    *(v14 + 48) = a2;
    v15 = swift_allocObject();
    *(v15 + 16) = &unk_100949EC0;
    *(v15 + 24) = v14;
    v16 = v13;

    v17 = v11;

    sub_100361068(&unk_100949EC8, v15);
  }

  return result;
}

uint64_t sub_10024230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 97) = a5;
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return _swift_task_switch(sub_100242334, 0, 0);
}

uint64_t sub_100242334()
{
  v1 = sub_1008AB560(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  *(v0 + 72) = v1;
  if (v1[2] && (swift_beginAccess(), Strong = swift_weakLoadStrong(), (*(v0 + 80) = Strong) != 0))
  {
    type metadata accessor for MainActor();
    *(v0 + 88) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100242604, v4, v3);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100242604()
{
  v1 = *(v0 + 97);

  v2 = *(v0 + 72);
  if (v1)
  {
    if (v1 == 1)
    {
      sub_1002409E8(v2);
    }

    else
    {
      sub_100240E84(v2);
    }
  }

  else
  {
    sub_100240BE0(v2);
  }

  sub_100241E9C(*(v0 + 97), 1);

  return _swift_task_switch(sub_1002426A4, 0, 0);
}

uint64_t sub_1002426A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100242704(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for TranscriptViewModelSegment();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for CharacterSet();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for AttributedString.CharacterView();
  v2[22] = swift_task_alloc();
  type metadata accessor for AttributedSubstring();
  v2[23] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100ADA4E8);
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADA4F0);
  v2[27] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100ADA4F8);
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100ADA500);
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v8 = type metadata accessor for AttributedString.Runs();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();
  v9 = type metadata accessor for AttributedString();
  v2[38] = v9;
  v2[39] = *(v9 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v10 = type metadata accessor for EARResultType();
  v2[43] = v10;
  v2[44] = *(v10 - 8);
  v2[45] = swift_task_alloc();
  v11 = type metadata accessor for Transcriber.MultisegmentResult();
  v2[46] = v11;
  v2[47] = *(v11 - 8);
  v2[48] = swift_task_alloc();
  v12 = type metadata accessor for TranscriptionUpdate();
  v2[49] = v12;
  v2[50] = *(v12 - 8);
  v2[51] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADA508);
  v2[52] = swift_task_alloc();
  v13 = sub_1000F24EC(&qword_100ADA510);
  v2[53] = v13;
  v2[54] = *(v13 - 8);
  v2[55] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v2[56] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v2[57] = v14;
  v2[58] = *(v14 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v15 = sub_1000F24EC(&qword_100ADA518);
  v2[61] = v15;
  v2[62] = *(v15 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1350);
  v2[66] = swift_task_alloc();
  v2[67] = type metadata accessor for MainActor();
  v2[68] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[69] = v17;
  v2[70] = v16;

  return _swift_task_switch(sub_100242E1C, v17, v16);
}

uint64_t sub_100242E1C()
{
  if (qword_100AD0A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 528);
  v2 = type metadata accessor for Locale();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 568) = v3;
  *v3 = v0;
  v3[1] = sub_100242F2C;
  v4 = *(v0 + 528);

  return sub_100089408(v4);
}

uint64_t sub_100242F2C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  *(*v1 + 772) = a1;

  sub_100004F84(v3, &qword_100AD1350);
  v4 = *(v2 + 560);
  v5 = *(v2 + 552);

  return _swift_task_switch(sub_100243088, v5, v4);
}

uint64_t sub_100243088()
{
  v36 = v0;
  if (*(v0 + 772) == 1)
  {
    v1 = *(v0 + 456);
    v2 = *(v0 + 464);
    v3 = *(v0 + 448);
    v4 = *(v0 + 96);
    sub_100240BE0(_swiftEmptyArrayStorage);
    sub_1002409E8(_swiftEmptyArrayStorage);
    sub_100240794(_swiftEmptyArrayStorage);
    sub_1000082B4(v4, v3, &unk_100AD6DD0);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_100004F84(*(v0 + 448), &unk_100AD6DD0);
      if (qword_100ACFB48 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000617C(v5, qword_100ADA0E0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Transcribing from live recording", v8, 2u);
      }

      v9 = swift_task_alloc();
      *(v0 + 600) = v9;
      *v9 = v0;
      v9[1] = sub_1002439F8;
      v10 = *(v0 + 504);

      return sub_1004D2B4C(v10);
    }

    else
    {
      (*(*(v0 + 464) + 32))(*(v0 + 480), *(v0 + 448), *(v0 + 456));
      if (qword_100ACFB48 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 472);
      v15 = *(v0 + 480);
      v16 = *(v0 + 456);
      v17 = *(v0 + 464);
      v18 = type metadata accessor for Logger();
      sub_10000617C(v18, qword_100ADA0E0);
      (*(v17 + 16))(v14, v15, v16);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v23 = *(v0 + 464);
      v22 = *(v0 + 472);
      v24 = *(v0 + 456);
      if (v21)
      {
        v25 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v25 = 136315138;
        sub_100034130(&qword_100ADEFD0, &type metadata accessor for URL);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        v29 = *(v23 + 8);
        v29(v22, v24);
        v30 = sub_100008458(v26, v28, &v35);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v19, v20, "Transcribing from existing file %s", v25, 0xCu);
        sub_10000BA7C(v34);
      }

      else
      {

        v29 = *(v23 + 8);
        v29(v22, v24);
      }

      *(v0 + 576) = v29;
      v31 = swift_task_alloc();
      *(v0 + 584) = v31;
      *v31 = v0;
      v31[1] = sub_100243694;
      v32 = *(v0 + 512);
      v33 = *(v0 + 480);

      return sub_1004D38D4(v32, v33);
    }
  }

  else
  {

    sub_100245AF0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100243694()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 560);
  v4 = *(v2 + 552);
  if (v0)
  {
    v5 = sub_100244C7C;
  }

  else
  {
    v5 = sub_1002437D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002437D0()
{
  (*(v0 + 576))(*(v0 + 480), *(v0 + 456));
  v1 = *(v0 + 592);
  v2 = *(v0 + 104);
  (*(*(v0 + 496) + 32))(*(v0 + 520), *(v0 + 512), *(v0 + 488));
  if (*(v2 + 120) == 1)
  {
    *(v2 + 120) = 1;
  }

  else
  {
    v3 = *(v0 + 104);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    *(v0 + 56) = v3;
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  AsyncStream.makeAsyncIterator()();
  *(v0 + 616) = OBJC_IVAR____TtC7Journal24TranscriptionCoordinator___observationRegistrar;
  *(v0 + 760) = enum case for EARResultType.partial(_:);
  *(v0 + 764) = enum case for EARResultType.final(_:);
  *(v0 + 768) = enum case for EARResultType.finalAndTerminal(_:);
  *(v0 + 624) = v1;
  v5 = static MainActor.shared.getter();
  *(v0 + 632) = v5;
  v6 = swift_task_alloc();
  *(v0 + 640) = v6;
  *v6 = v0;
  v6[1] = sub_100243D40;
  v7 = *(v0 + 416);
  v8 = *(v0 + 424);

  return AsyncStream.Iterator.next(isolation:)(v7, v5, &protocol witness table for MainActor, v8);
}

uint64_t sub_1002439F8()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 560);
  v4 = *(v2 + 552);
  if (v0)
  {
    v5 = sub_100244E5C;
  }

  else
  {
    v5 = sub_100243B34;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100243B34()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 104);
  (*(*(v0 + 496) + 32))(*(v0 + 520), *(v0 + 504), *(v0 + 488));
  if (*(v2 + 120) == 1)
  {
    *(v2 + 120) = 1;
  }

  else
  {
    v3 = *(v0 + 104);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    *(v0 + 56) = v3;
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  AsyncStream.makeAsyncIterator()();
  *(v0 + 616) = OBJC_IVAR____TtC7Journal24TranscriptionCoordinator___observationRegistrar;
  *(v0 + 760) = enum case for EARResultType.partial(_:);
  *(v0 + 764) = enum case for EARResultType.final(_:);
  *(v0 + 768) = enum case for EARResultType.finalAndTerminal(_:);
  *(v0 + 624) = v1;
  v5 = static MainActor.shared.getter();
  *(v0 + 632) = v5;
  v6 = swift_task_alloc();
  *(v0 + 640) = v6;
  *v6 = v0;
  v6[1] = sub_100243D40;
  v7 = *(v0 + 416);
  v8 = *(v0 + 424);

  return AsyncStream.Iterator.next(isolation:)(v7, v5, &protocol witness table for MainActor, v8);
}

uint64_t sub_100243D40()
{
  v1 = *v0;

  v2 = *(v1 + 560);
  v3 = *(v1 + 552);

  return _swift_task_switch(sub_100243E84, v3, v2);
}

uint64_t sub_100243E84()
{
  v1 = *(v0 + 416);
  if ((*(*(v0 + 400) + 48))(v1, 1, *(v0 + 392)) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
    v2 = swift_task_alloc();
    *(v0 + 648) = v2;
    *v2 = v0;
    v2[1] = sub_100244964;

    return sub_100245418();
  }

  else
  {
    sub_100245B44(v1, *(v0 + 408));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(v0 + 768);
      v5 = *(v0 + 764);
      v6 = *(v0 + 760);
      v7 = *(v0 + 360);
      v8 = *(v0 + 344);
      v9 = *(v0 + 352);
      (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 408), *(v0 + 368));
      Transcriber.MultisegmentResult.earResultType.getter();
      v10 = (*(v9 + 88))(v7, v8);
      v11 = *(v0 + 384);
      if (v10 == v6 || v10 == v5 || v10 == v4)
      {
        Transcriber.MultisegmentResult.resultsFinalizationTime.getter();
        Transcriber.MultisegmentResult.range.getter();
        CMTimeRange.end.getter();
        if (static CMTime.>= infix(_:_:)())
        {
          v14 = Transcriber.MultisegmentResult.transcriptions.getter();
          if (*(v14 + 16))
          {
            v16 = *(v0 + 328);
            v15 = *(v0 + 336);
            v17 = *(v0 + 304);
            v18 = *(v0 + 312);
            v19 = *(v0 + 288);
            v20 = *(v0 + 296);
            v21 = *(v0 + 272);
            v22 = *(v0 + 256);
            v69 = *(v0 + 280);
            v70 = *(v0 + 248);
            v71 = *(v0 + 264);
            v74 = *(v0 + 216);
            v78 = *(v0 + 200);
            v81 = *(v0 + 192);
            (*(v18 + 16))(v16, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);

            (*(v18 + 32))(v15, v16, v17);
            AttributedString.runs.getter();
            type metadata accessor for AttributeScopes.SpeechAttributes.TimeRangeAttribute();
            sub_100034130(&qword_100ADA528, &type metadata accessor for AttributeScopes.SpeechAttributes.TimeRangeAttribute);
            AttributedString.Runs.subscript.getter();
            (*(v19 + 8))(v20, v69);
            (*(v22 + 16))(v71, v21, v70);
            sub_10000B58C(&qword_100ADA530, &qword_100ADA500);
            dispatch thunk of Sequence.makeIterator()();
            sub_10000B58C(&qword_100ADA538, &qword_100ADA4F8);
            dispatch thunk of IteratorProtocol.next()();
            v23 = *(v78 + 48);
            if (v23(v74, 1, v81) != 1)
            {
              v68 = v23;
              do
              {
                v53 = *(v0 + 208);
                sub_100245BC4(*(v0 + 216), v53);
                if ((*(v53 + 48) & 1) == 0)
                {
                  v54 = *(v0 + 208);
                  v55 = *(v0 + 160);
                  v56 = *(v0 + 152);
                  v72 = *(v0 + 144);
                  v80 = *(v0 + 128);
                  v73 = *(v0 + 136);
                  v75 = *(v0 + 120);
                  v77 = *(v0 + 112);
                  v57 = *(v0 + 104);
                  v59 = *(v54 + 32);
                  v58 = *(v54 + 40);
                  v60 = *(v54 + 8);
                  v61 = *(v54 + 16);
                  *(v0 + 664) = *v54;
                  *(v0 + 672) = v60;
                  *(v0 + 680) = v61;
                  *(v0 + 696) = v59;
                  *(v0 + 704) = v58;
                  CMTime.seconds.getter();
                  CMTimeRange.end.getter();
                  CMTime.seconds.getter();
                  sub_1000F24EC(&qword_100ADA540);
                  sub_10000B58C(&qword_100ADA548, &qword_100ADA540);
                  AttributedString.subscript.getter();
                  AttributedString.init(_:)();
                  AttributedString.characters.getter();
                  sub_100034130(&unk_100AD1370, &type metadata accessor for AttributedString.CharacterView);
                  *(v0 + 40) = String.init<A>(_:)();
                  *(v0 + 48) = v62;
                  static CharacterSet.whitespacesAndNewlines.getter();
                  sub_1000777B4();
                  StringProtocol.trimmingCharacters(in:)();
                  (*(v56 + 8))(v55, v72);

                  TranscriptViewModelSegment.init(text:timestamp:duration:)();
                  (*(v75 + 16))(v80, v73, v77);
                  swift_getKeyPath();
                  *(v0 + 64) = v57;
                  sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  *(v0 + 72) = v57;
                  swift_getKeyPath();
                  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

                  swift_beginAccess();
                  v63 = *(v57 + 72);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v57 + 72) = v63;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v67 = *(v0 + 104);
                    v63 = sub_1003E4DF4(0, v63[2] + 1, 1, v63);
                    *(v67 + 72) = v63;
                  }

                  v66 = v63[2];
                  v65 = v63[3];
                  if (v66 >= v65 >> 1)
                  {
                    v63 = sub_1003E4DF4(v65 > 1, v66 + 1, 1, v63);
                  }

                  v41 = *(v0 + 312);
                  v79 = *(v0 + 304);
                  v82 = *(v0 + 320);
                  v42 = *(v0 + 128);
                  v76 = *(v0 + 136);
                  v44 = *(v0 + 112);
                  v43 = *(v0 + 120);
                  v45 = *(v0 + 104);
                  v63[2] = v66 + 1;
                  (*(v43 + 32))(v63 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v66, v42, v44);
                  *(v45 + 72) = v63;
                  swift_endAccess();
                  *(v0 + 80) = v45;
                  swift_getKeyPath();
                  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

                  swift_getKeyPath();
                  *(v0 + 88) = v45;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  sub_1002420B8(v46, 1);

                  v47 = sub_100240FD8();
                  v48 = swift_allocObject();
                  swift_weakInit();
                  v49 = swift_allocObject();
                  *(v49 + 16) = v47;
                  *(v49 + 24) = v48;
                  v50 = swift_allocObject();
                  *(v50 + 16) = &unk_100949E40;
                  *(v50 + 24) = v49;

                  sub_100361068(&unk_100949E50, v50);

                  (*(v43 + 8))(v76, v44);
                  (*(v41 + 8))(v82, v79);
                  v23 = v68;
                }

                v51 = *(v0 + 216);
                v52 = *(v0 + 192);
                sub_100004F84(*(v0 + 208), &qword_100ADA4E8);
                dispatch thunk of IteratorProtocol.next()();
              }

              while (v23(v51, 1, v52) != 1);
            }

            v24 = *(v0 + 336);
            v25 = *(v0 + 304);
            v26 = *(v0 + 312);
            v27 = *(v0 + 272);
            v28 = *(v0 + 248);
            v29 = *(v0 + 256);
            (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
            (*(v29 + 8))(v27, v28);
            sub_100240BE0(_swiftEmptyArrayStorage);
            sub_100241E9C(0, 0);
            (*(v26 + 8))(v24, v25);
          }

          else
          {
          }

          v32 = *(v0 + 624);
        }

        else
        {
          v32 = *(v0 + 624);
          v33 = *(v0 + 384);
          v34 = Transcriber.MultisegmentResult.segments.getter();
          v35 = swift_task_alloc();
          *(v35 + 16) = v33;
          v36 = sub_100604300(sub_100245BA8, v35, v34);

          sub_100240BE0(v36);
          sub_100241E9C(0, 0);
        }

        (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
        *(v0 + 624) = v32;
      }

      else
      {
        v30 = *(v0 + 368);
        v31 = *(v0 + 376);
        (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
        (*(v31 + 8))(v11, v30);
      }
    }

    v37 = static MainActor.shared.getter();
    *(v0 + 632) = v37;
    v38 = swift_task_alloc();
    *(v0 + 640) = v38;
    *v38 = v0;
    v38[1] = sub_100243D40;
    v39 = *(v0 + 416);
    v40 = *(v0 + 424);

    return AsyncStream.Iterator.next(isolation:)(v39, v37, &protocol witness table for MainActor, v40);
  }
}

uint64_t sub_100244964()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 560);
  v4 = *(v2 + 552);
  if (v0)
  {
    v5 = sub_100245018;
  }

  else
  {
    v5 = sub_100244AA0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100244AA0()
{
  v1 = v0[65];
  v3 = v0[61];
  v2 = v0[62];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100244C7C()
{
  v1 = v0[72];
  v2 = v0[60];
  v3 = v0[57];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100244E5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100245018()
{
  v1 = v0[65];
  v2 = v0[61];
  v3 = v0[62];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002451F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TranscriptionSegment.text.getter();
  AttributedString.characters.getter();
  (*(v4 + 8))(v6, v3);
  sub_100034130(&unk_100AD1370, &type metadata accessor for AttributedString.CharacterView);
  String.init<A>(_:)();
  Transcriber.MultisegmentResult.range.getter();
  CMTime.seconds.getter();
  Transcriber.MultisegmentResult.range.getter();
  CMTime.seconds.getter();
  TranscriptViewModelSegment.init(text:timestamp:duration:)();
  v7 = type metadata accessor for TranscriptViewModelSegment();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_100245418()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1002454B0, v3, v2);
}

uint64_t sub_1002454B0()
{
  v1 = v0[3];
  if (*(v1 + 120))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[2] = v1;
    sub_100034130(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + 120) = 0;
  }

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10024561C;

  return sub_1004D2FA8();
}

uint64_t sub_10024561C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1002457BC;
  }

  else
  {
    v5 = sub_100245758;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100245758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002457BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100245820()
{
  sub_100004F84(v0 + 16, &qword_100ADA550);

  v1 = OBJC_IVAR____TtC7Journal24TranscriptionCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1002458E0()
{
  sub_100245820();

  return swift_deallocClassInstance();
}

uint64_t sub_100245960()
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

unint64_t sub_100245A8C()
{
  result = qword_100ADA4C0;
  if (!qword_100ADA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA4C0);
  }

  return result;
}

unint64_t sub_100245AF0()
{
  result = qword_100ADA520;
  if (!qword_100ADA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA520);
  }

  return result;
}

uint64_t sub_100245B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionUpdate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100245BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA4E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100245C34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032EC8;

  return sub_100241914(v2, v3);
}

uint64_t sub_100245CCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100241DB4(a1, a2, v6);
}

NSString sub_100245D90()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD9C88);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  if (qword_100AD0A90 != -1)
  {
    swift_once();
  }

  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1000A6318(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &qword_100AD1350);
LABEL_6:
    static Locale.autoupdatingCurrent.getter();
    goto LABEL_8;
  }

  (*(v11 + 32))(v16, v9, v10);
LABEL_8:
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v1 + 8))(v3, v0);
  v17 = type metadata accessor for Locale.LanguageCode();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_100004F84(v6, &qword_100AD9C88);
    if (qword_100ACFB48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000617C(v19, qword_100ADA0E0);
    (*(v11 + 16))(v14, v16, v10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v22 = 136315138;
      sub_100034130(&qword_100ADA558, &type metadata accessor for Locale);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = *(v11 + 8);
      v26(v14, v10);
      v27 = sub_100008458(v23, v25, &v32);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get language code from locale %s", v22, 0xCu);
      sub_10000BA7C(v31);

      v26(v16, v10);
    }

    else
    {

      v30 = *(v11 + 8);
      v30(v14, v10);
      v30(v16, v10);
    }

    return 0;
  }

  else
  {
    Locale.LanguageCode.identifier.getter();
    (*(v18 + 8))(v6, v17);
    v28 = String._bridgeToObjectiveC()();

    (*(v11 + 8))(v16, v10);
    return v28;
  }
}

uint64_t sub_100246328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA550);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100246398()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100032EC8;

  return sub_10024230C(v2, v3, v4, v5, v6);
}

uint64_t sub_100246454()
{

  return swift_deallocObject();
}

uint64_t sub_100246494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032ECC;

  return sub_100241914(v2, v3);
}

unint64_t sub_10024652C()
{
  result = qword_100ADA560;
  if (!qword_100ADA560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADA560);
  }

  return result;
}

void sub_100246578()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  v4 = v2;
}

uint64_t sub_1002465B0()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
}

uint64_t sub_1002465EC()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t sub_100246628()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_100246680()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

unint64_t sub_1002466D4()
{
  result = qword_100ADA568;
  if (!qword_100ADA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA568);
  }

  return result;
}

unint64_t sub_10024672C()
{
  result = qword_100ADA570;
  if (!qword_100ADA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA570);
  }

  return result;
}

unint64_t sub_100246784()
{
  result = qword_100ADA578;
  if (!qword_100ADA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA578);
  }

  return result;
}

uint64_t sub_1002467F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100246810, 0, 0);
}

uint64_t sub_100246810()
{
  v1 = v0[3];
  sub_1000F24EC(&unk_100AE1A40);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v3 + 16))(v5 + v4, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v2);
  v6 = sub_1004960D4(v5);
  v0[4] = v6;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1002469C0;

  return sub_10056824C(0, 0, v6);
}

uint64_t sub_1002469C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_100246AD0(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  if (qword_100ACFB58 != -1)
  {
    swift_once();
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for MoreMenuBarButtonItem();
  v5 = objc_msgSendSuper2(&v12, "init");
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6];

  v7 = v5;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  [v7 setImage:v9];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v7 setAccessibilityLabel:v10];

  [v7 setMenu:a1];
  return v7;
}

void sub_100246E64()
{
  v1 = [v0 menu];
  if (v1)
  {
    v2 = v1;
    sub_1000065A8(0, &unk_100AD4D00);
    v3 = [v2 children];
    sub_1000065A8(0, &unk_100ADC630);
    preferredElementSize = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v9.value.super.isa = 0;
    v9.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v6).super.super.isa;
  }

  else
  {
    isa = 0;
  }

  [v0 setMenuRepresentation:isa];
}

id sub_100246FB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoreMenuBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100247008(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v5 = sub_1000F24EC(&qword_100AD6548);
  v34 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v39 = &v32 - v6;
  v7 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_1000AFA10(0, v7, 0);
    v9 = v41;
    v10 = a3 + 64;
    v11 = _HashTable.startBucket.getter();
    v12 = 0;
    v32 = a3 + 72;
    v33 = v7;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a3 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      v38 = v12;
      v16 = *(a3 + 36);
      v17 = a3;
      v18 = *(*(a3 + 56) + 8 * v11);
      v40[0] = *(*(a3 + 48) + 8 * v11);
      v40[1] = v18;
      v35(v40);
      v37 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v19 = v9;
      v41 = v9;
      v21 = v9[2];
      v20 = v9[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000AFA10(v20 > 1, v21 + 1, 1);
        v19 = v41;
      }

      v19[2] = v21 + 1;
      v9 = v19;
      sub_100021CEC(v39, v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21, &qword_100AD6548);
      v13 = 1 << *(v17 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v22 = *(v10 + 8 * v15);
      if ((v22 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v17;
      v23 = v16;
      if (v16 != *(v17 + 36))
      {
        goto LABEL_26;
      }

      v24 = v22 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v37;
        v14 = v33;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v14 = v33;
        v27 = (v32 + 8 * v15);
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            v30 = v37;
            sub_10000A96C(v11, v23, 0);
            v3 = v30;
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        v31 = v37;
        sub_10000A96C(v11, v23, 0);
        v3 = v31;
      }

LABEL_4:
      v12 = v38 + 1;
      v11 = v13;
      if (v38 + 1 == v14)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_100247324(uint64_t a1)
{
  v40 = sub_1000F24EC(&qword_100AD6FA8);
  __chkstk_darwin(v40);
  v39 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = v33 - v5;
  v6 = sub_1000AEA94();
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  v48 = _swiftEmptyArrayStorage;
  sub_1001999C0(0, v6 & ~(v6 >> 63), 0);
  v7 = v48;
  v9 = *(a1 + *(sub_1000F24EC(&qword_100AD6FB8) + 32));
  v10 = v9 + 64;
  result = _HashTable.startBucket.getter();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = result;
    v36 = v9;
    v37 = a1;
    v33[1] = v1;
    v34 = v8;
    v13 = 0;
    v35 = v9 + 64;
    while (!__OFADD__(v13, 1))
    {
      if (v12 < 0 || v12 >= 1 << *(v9 + 32))
      {
        goto LABEL_16;
      }

      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_17;
      }

      v41 = v13 + 1;
      v42 = v13;
      v14 = *(v9 + 56);
      v15 = *(*(v9 + 48) + 8 * v12);
      v43 = *(v9 + 36);
      v16 = (v14 + 32 * v12);
      v17 = *v16;
      v18 = v16[1];
      v20 = v16[2];
      v19 = v16[3];

      v21 = v38;
      v44 = v7;
      sub_10003F084(v15, v38);
      v22 = v21;
      v23 = v39;
      sub_100021CEC(v22, v39, &qword_100AD2688);
      v24 = (v23 + *(v40 + 48));
      *v24 = v17;
      v24[1] = v18;
      v24[2] = v20;
      v24[3] = v19;
      type metadata accessor for Date();
      sub_100034024(&qword_100AE1D80, &type metadata accessor for Date);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v25;
      v26._countAndFlagsBits = 8250;
      v26._object = 0xE200000000000000;
      String.append(_:)(v26);
      v45 = v18;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
      v7 = v44;

      v28 = v46;
      v29 = v47;
      result = sub_100004F84(v23, &qword_100AD6FA8);
      v48 = v7;
      v31 = v7[2];
      v30 = v7[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_1001999C0((v30 > 1), v31 + 1, 1);
        v7 = v48;
      }

      v7[2] = v31 + 1;
      v32 = &v7[2 * v31];
      v32[4] = v28;
      v32[5] = v29;
      v9 = v36;
      if (v12 >= -(-1 << *(v36 + 32)))
      {
        goto LABEL_18;
      }

      v10 = v35;
      if ((*(v35 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_19;
      }

      if (v43 != *(v36 + 36))
      {
        goto LABEL_20;
      }

      result = _HashTable.occupiedBucket(after:)();
      v12 = result;
      v13 = v42 + 1;
      if (v41 == v34)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002476AC(uint64_t a1)
{
  v40 = sub_1000F24EC(&qword_100AD6FA8);
  __chkstk_darwin(v40);
  v39 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = v33 - v5;
  v6 = sub_1000AEA94();
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  v48 = _swiftEmptyArrayStorage;
  sub_1001999C0(0, v6 & ~(v6 >> 63), 0);
  v7 = v48;
  v9 = *(a1 + *(sub_1000F24EC(&qword_100AD6FB8) + 32));
  v10 = v9 + 64;
  result = _HashTable.startBucket.getter();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = result;
    v36 = v9;
    v37 = a1;
    v33[1] = v1;
    v34 = v8;
    v13 = 0;
    v35 = v9 + 64;
    while (!__OFADD__(v13, 1))
    {
      if (v12 < 0 || v12 >= 1 << *(v9 + 32))
      {
        goto LABEL_16;
      }

      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_17;
      }

      v41 = v13 + 1;
      v42 = v13;
      v14 = *(v9 + 56);
      v15 = *(*(v9 + 48) + 8 * v12);
      v43 = *(v9 + 36);
      v16 = (v14 + 32 * v12);
      v18 = *v16;
      v17 = v16[1];
      v20 = v16[2];
      v19 = v16[3];

      v21 = v38;
      v44 = v7;
      sub_10003F084(v15, v38);
      v22 = v21;
      v23 = v39;
      sub_100021CEC(v22, v39, &qword_100AD2688);
      v24 = (v23 + *(v40 + 48));
      *v24 = v18;
      v24[1] = v17;
      v24[2] = v20;
      v24[3] = v19;
      type metadata accessor for Date();
      sub_100034024(&qword_100AE1D80, &type metadata accessor for Date);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v25;
      v26._countAndFlagsBits = 8250;
      v26._object = 0xE200000000000000;
      String.append(_:)(v26);
      v45 = v18;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
      v7 = v44;

      v28 = v46;
      v29 = v47;
      result = sub_100004F84(v23, &qword_100AD6FA8);
      v48 = v7;
      v31 = v7[2];
      v30 = v7[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_1001999C0((v30 > 1), v31 + 1, 1);
        v7 = v48;
      }

      v7[2] = v31 + 1;
      v32 = &v7[2 * v31];
      v32[4] = v28;
      v32[5] = v29;
      v9 = v36;
      if (v12 >= -(-1 << *(v36 + 32)))
      {
        goto LABEL_18;
      }

      v10 = v35;
      if ((*(v35 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_19;
      }

      if (v43 != *(v36 + 36))
      {
        goto LABEL_20;
      }

      result = _HashTable.occupiedBucket(after:)();
      v12 = result;
      v13 = v42 + 1;
      if (v41 == v34)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}
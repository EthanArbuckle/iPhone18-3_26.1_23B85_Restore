uint64_t sub_1001B80A8()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1001B81E4, 0, 0);
  }
}

uint64_t sub_1001B81E4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 16);
  sub_1000073B4(v1, &qword_1006BEA90);

  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_1001B837C()
{
  result = qword_1006BEAB0;
  if (!qword_1006BEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEAB0);
  }

  return result;
}

unint64_t sub_1001B84AC()
{
  result = qword_1006BEAE0;
  if (!qword_1006BEAE0)
  {
    sub_10017992C(&qword_1006BEAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEAE0);
  }

  return result;
}

uint64_t sub_1001B85A0(uint64_t a1)
{
  result = sub_1001B8744(&qword_1006BCCE0, type metadata accessor for TableEntity);
  *(a1 + 8) = result;
  return result;
}

void sub_1001B8620()
{
  type metadata accessor for TableID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10001CA9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001B86D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BEA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8744(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001B88B4@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState);
  v5 = *(v1 + OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing);
  v6 = *(v1 + OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker);
  v7 = *(v1 + OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent);
  v8 = *(v1 + OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable);
  v9 = *(v1 + OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated);
  v10 = *(v1 + OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented);
  v11 = objc_allocWithZone(ObjectType);
  *&v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v4;
  v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = v5;
  v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = v6;
  v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = v7;
  v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = v8;
  v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = v9;
  v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = v10;
  v14.receiver = v11;
  v14.super_class = ObjectType;
  v12 = v4;
  result = objc_msgSendSuper2(&v14, "init");
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1001B8B10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_1001B8E28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSelectionStateModel.ContainerSelectionCompletionBlocks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001B8F88(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v19 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply);
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented);
  v18 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController);
  v5 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote);
  v6 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded);
  v7 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent);
  v8 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing);
  v9 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated);
  v10 = *(v2 + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks);
  if (v10)
  {
    [v10 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for ICSelectionStateModel.ContainerSelectionCompletionBlocks();
    if (swift_dynamicCast())
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(ObjectType);
  swift_unknownObjectWeakInit();
  v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = v19;
  swift_unknownObjectWeakAssign();
  v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = v18;
  v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = v17;
  *&v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = v5;
  v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = v6;
  *&v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = v7;
  *&v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = v8;
  v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = v9;
  *&v12[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = v11;
  v22.receiver = v12;
  v22.super_class = ObjectType;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v16 = objc_msgSendSuper2(&v22, "init");

  a1[3] = ObjectType;
  *a1 = v16;
}

uint64_t sub_1001B91B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_10017CC60(v8, v8[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100009F60(v8);
  return v6;
}

BOOL sub_1001B9230(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
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

  v8 = sub_1001C4E8C(v10, a4);

  sub_1000073B4(v10, &qword_1006BE7A0);
  return v8;
}

uint64_t sub_1001B9374(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_10015DA04(&qword_1006BF0C0);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_10015DA04(&qword_1006BF0C8);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_10015DA04(&qword_1006BF0D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10017CC60(a1, a1[3]);
  sub_1001C5370();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1001C53C4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1001C5418();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1001B9630()
{
  if (*v0)
  {
    return 1802398060;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1001B966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
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

uint64_t sub_1001B974C(uint64_t a1)
{
  v2 = sub_1001C5370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B9788(uint64_t a1)
{
  v2 = sub_1001C5370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B97D0(uint64_t a1)
{
  v2 = sub_1001C53C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B980C(uint64_t a1)
{
  v2 = sub_1001C53C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B9848(uint64_t a1)
{
  v2 = sub_1001C5418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B9884(uint64_t a1)
{
  v2 = sub_1001C5418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B98C0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C4F34(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1001B9BD8@<X0>(char *a1@<X8>)
{
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v1 + v10, v5, &unk_1006BFEA0);
  v11 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v12 = 1;
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 4)
    {
      if (EnumCaseMultiPayload)
      {
        v15 = *(v7 + 32);
        v15(v9, v5, v6);
      }

      else
      {
        v14 = sub_10015DA04(&unk_1006C43C0);
        v15 = *(v7 + 32);
        v15(v9, &v5[*(v14 + 48)], v6);
        (*(v7 + 8))(v5, v6);
      }

      v15(a1, v9, v6);
      v12 = 0;
    }

    else
    {
      sub_1000160E4(v5, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    }
  }

  return (*(v7 + 56))(a1, v12, 1, v6);
}

id sub_1001B9EA4()
{
  v1 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v0 + v11, v3, &unk_1006BFEA0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000073B4(v3, &unk_1006BFEA0);
    return 0;
  }

  sub_10001425C(v3, v10, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  sub_10001425C(v10, v8, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *(sub_10015DA04(&unk_1006C43C0) + 48);
      v15 = type metadata accessor for URL();
      v16 = *(*(v15 - 8) + 8);
      v16(v8 + v14, v15);
      v16(v8, v15);
      return 0;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
LABEL_8:
    sub_1000160E4(v8, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    return 0;
  }

  v17 = *v8;

  return v17;
}

id sub_1001BA194()
{
  v1 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_100006038(v0 + v11, v3, &qword_1006BEF28);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000073B4(v3, &qword_1006BEF28);
    v12 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
    v13 = objc_allocWithZone(v12);
    swift_unknownObjectWeakInit();
    v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = 0;
    swift_unknownObjectWeakAssign();
    v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = 1;
    v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = 1;
    *&v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = 0;
    v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = 1;
    *&v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = 0;
    *&v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = 0;
    v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = 1;
    *&v13[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = 0;
    v22.receiver = v13;
    v22.super_class = v12;
    return objc_msgSendSuper2(&v22, "init");
  }

  sub_10001425C(v3, v10, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  sub_100015C8C(v10, v8, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v17 = *(v8 + 1);

    if (v17)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {

    v16 = sub_10015DA04(&qword_1006BF058);
    sub_1000073B4(&v8[*(v16 + 48)], &qword_1006BCC20);
  }

  else
  {
    sub_1000160E4(v8, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  }

  v18 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = 0;
  swift_unknownObjectWeakAssign();
  v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = 1;
  v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = 1;
  *&v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = 0;
  v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = 1;
  *&v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = 0;
  *&v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = 0;
  v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = 1;
  *&v19[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = 0;
  v21.receiver = v19;
  v21.super_class = v18;
  v17 = objc_msgSendSuper2(&v21, "init");
LABEL_10:
  sub_1000160E4(v10, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  return v17;
}

id sub_1001BA5A4()
{
  v1 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v0 + v11, v3, &unk_1006BFEA0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000073B4(v3, &unk_1006BFEA0);
    v12 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = 0;
    v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
    v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
    v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
    v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
    v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = 1;
    v13[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
    v28.receiver = v13;
    v28.super_class = v12;
    return objc_msgSendSuper2(&v28, "init");
  }

  sub_10001425C(v3, v10, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  sub_100015C8C(v10, v8, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000160E4(v8, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    }

    else
    {
      v18 = *(sub_10015DA04(&unk_1006C43C0) + 48);
      v19 = type metadata accessor for URL();
      v20 = *(*(v19 - 8) + 8);
      v20(&v8[v18], v19);
      v20(v8, v19);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v21 = *v8;
    v22 = *(v8 + 2);

    v17 = v22;
    if (!v22)
    {
LABEL_12:
      v24 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = 0;
      v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
      v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
      v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
      v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
      v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = 1;
      v25[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
      v27.receiver = v25;
      v27.super_class = v24;
      v23 = objc_msgSendSuper2(&v27, "init");
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *(v8 + 1);

    v17 = v16;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v23 = v17;
LABEL_13:
  sub_1000160E4(v10, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  return v23;
}

id sub_1001BA988(void *a1, void *a2, void *a3)
{
  v7 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v16 - v8);
  result = [a1 ic_isBaseAttachmentType];
  if (result)
  {
    result = [a2 ic_isNoteType];
    if (result)
    {
      *v9 = a1;
      v9[1] = a2;
      v9[2] = a3;
      v11 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
      v12 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      v13 = a3;
      v14 = a1;
      v15 = a2;
      sub_10000A49C(v9, v3 + v12, &unk_1006BFEA0);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1001BAC68(void *a1, void *a2)
{
  v5 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v5 - 8);
  v7 = (v12 - v6);
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000054A4(0, &qword_1006C4310);
  result = swift_dynamicCast();
  if (result)
  {
    *v7 = v12[1];
    v7[1] = a2;
    v9 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    v10 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
    swift_beginAccess();
    v11 = a2;
    sub_10000A49C(v7, v2 + v10, &qword_1006BEF28);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1001BAEF8()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001C275C(&qword_1006BF0F8, type metadata accessor for ICSelectionStateModel);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return v2;
}

uint64_t sub_1001BB394(char *a1, void *a2, char *a3)
{
  v4 = v3;
  v225 = a2;
  v7 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v7 - 8);
  v219 = &v217 - v8;
  v9 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v9 - 8);
  v221 = &v217 - v10;
  v11 = type metadata accessor for URL();
  v223 = *(v11 - 8);
  v12 = *(v223 + 64);
  v13 = __chkstk_darwin(v11);
  v218 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v217 - v15;
  __chkstk_darwin(v14);
  v18 = &v217 - v17;
  v19 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v19 - 8);
  v222 = &v217 - v20;
  v227 = [objc_allocWithZone(v4) init];
  v21 = objc_opt_self();
  if ([v21 hasSharedContext])
  {
    v22 = [v21 sharedContext];
    v23 = v22;
    v24 = a3;
    if (!a3)
    {
      if (v22)
      {
        v24 = [v22 managedObjectContext];
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v23 = 0;
    v24 = a3;
  }

  v220 = v16;
  v226 = v11;
  v224 = a3;
  v228 = sub_1000DC72C();
  if (v23)
  {
    v25 = objc_opt_self();
    v26 = v23;
    URL._bridgeToObjectiveC()(v27);
    v28 = v24;
    v29 = v23;
    v30 = a1;
    v32 = v31;
    v33 = [v25 objectIDForModernFolderMentionedInURL:v31 noteContext:v26];

    a1 = v30;
    v23 = v29;
    v24 = v28;

    if (v33)
    {
      (*(v223 + 8))(a1, v226);

      swift_unknownObjectRelease();
LABEL_9:
      v34 = v222;
      v35 = v225;
      *v222 = v33;
      *(v34 + 1) = v35;
LABEL_10:
      v36 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
      v37 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
      v38 = v227;
      swift_beginAccess();
      v39 = &qword_1006BEF28;
LABEL_11:
      v40 = &v38[v37];
      v41 = v34;
LABEL_16:
      sub_10000A49C(v41, v40, v39);
      swift_endAccess();
      return v38;
    }
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  v217 = v23;
  v42 = objc_opt_self();
  v43 = v24;
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v23 = a1;
  v47 = [v42 isShowVirtualSmartFolderURL:v45];

  if (v47)
  {
    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    v51 = [v42 virtualSmartFolderMentionedInURL:v49 context:v43];

    swift_unknownObjectRelease();
    (*(v223 + 8))(v23, v226);
    if (v51)
    {
      v52 = v222;
      v53 = v225;
      *v222 = v51;
      *(v52 + 1) = v53;
      v54 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v54 - 8) + 56))(v52, 0, 1, v54);
      v55 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
      v38 = v227;
      swift_beginAccess();
      v39 = &qword_1006BEF28;
      v40 = &v38[v55];
      v41 = v52;
      goto LABEL_16;
    }

    goto LABEL_75;
  }

  v56 = v43;
  URL._bridgeToObjectiveC()(v57);
  v59 = v58;
  v60 = [v42 isShowDefaultCloudFolderURL:v58];

  if (v60)
  {
    v229[0] = 0;
    v61 = v223;
    v62 = v226;
    (*(v223 + 16))(v18, v23, v226);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    v38 = v227;
    *(v64 + 2) = v229;
    *(v64 + 3) = v38;
    (*(v61 + 32))(&v64[v63], v18, v62);
    *&v64[(v12 + v63 + 7) & 0xFFFFFFFFFFFFFFF8] = v56;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1001C55FC;
    *(v65 + 24) = v64;
    v234 = sub_1001C71A8;
    v235 = v65;
    aBlock = _NSConcreteStackBlock;
    v231 = 1107296256;
    v232 = sub_10000EAF8;
    v233 = &unk_10064FC70;
    v66 = _Block_copy(&aBlock);
    v67 = v235;
    v68 = v56;
    v69 = v38;

    [v68 performBlockAndWait:v66];
    _Block_release(v66);

    swift_unknownObjectRelease();
    v70 = *(v61 + 8);
    a1 = (v61 + 8);
    v70(v23, v62);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v72 = v225;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v73 = v229[0];
      if (v229[0])
      {
        v74 = v222;
        *v222 = v229[0];
        *(v74 + 8) = v72;
        v75 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
        v76 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
        swift_beginAccess();
        v77 = v73;
        sub_10000A49C(v74, v69 + v76, &qword_1006BEF28);
        swift_endAccess();
      }

      else
      {
      }

LABEL_64:
      v160 = v229[0];

      return v38;
    }

    __break(1u);
    goto LABEL_92;
  }

  v78 = v56;
  URL._bridgeToObjectiveC()(v79);
  v81 = v80;
  v82 = [v42 isShowRecentlyDeletedFolderURL:v80];

  if (v82)
  {
    v229[0] = 0;
    v83 = v223;
    v62 = v226;
    (*(v223 + 16))(v18, v23, v226);
    v84 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v85 = (v12 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    (*(v83 + 32))(&v64[v84], v18, v62);
    *&v64[v85] = v78;
    *&v64[v86] = v229;
    v87 = v227;
    *&v64[(v86 + 15) & 0xFFFFFFFFFFFFFFF8] = v227;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1001C5558;
    *(v65 + 24) = v64;
    v234 = sub_10000EFBC;
    v235 = v65;
    aBlock = _NSConcreteStackBlock;
    v231 = 1107296256;
    v232 = sub_10000EAF8;
    v233 = &unk_10064FBF8;
    v66 = _Block_copy(&aBlock);
    v88 = v78;
    a1 = v87;
    v69 = v87;

    [v88 performBlockAndWait:v66];
    _Block_release(v66);

    swift_unknownObjectRelease();
    v89 = *(v83 + 8);
    v38 = (v83 + 8);
    v89(v23, v62);
    LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

    if ((v88 & 1) == 0)
    {
      v90 = v229[0];
      v91 = v225;
      if (v229[0])
      {
        v92 = v222;
        *v222 = v229[0];
        *(v92 + 8) = v91;
        v93 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
        v94 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
        swift_beginAccess();
        v95 = v90;
        sub_10000A49C(v92, v69 + v94, &qword_1006BEF28);
        swift_endAccess();
      }

      else
      {
      }

      v38 = a1;
      goto LABEL_64;
    }

    __break(1u);
    goto LABEL_105;
  }

  v66 = v78;
  URL._bridgeToObjectiveC()(v96);
  v98 = v97;
  v99 = [v42 isShowNoteInVirtualSmartFolderURL:v97];

  a1 = v23;
  v23 = v217;
  if (!v99)
  {
LABEL_36:
    v66 = objc_opt_self();
    URL._bridgeToObjectiveC()(v117);
    v119 = v118;
    v120 = [v66 isShowNoteURL:v118];

    if (!v120)
    {
      v67 = v226;
      if (!v24 || (v132 = v24, URL._bridgeToObjectiveC()(v133), v135 = v134, v136 = [v66 isShowNoteFocusedInFolderURL:v134], v132, v135, !v136))
      {
        v148 = v228;
        if (v228)
        {
          swift_unknownObjectRetain();
          URL._bridgeToObjectiveC()(v149);
          v151 = v150;
          v152 = [v66 objectIDForHTMLFolderMentionedInURL:v150 context:v148];

          swift_unknownObjectRelease();
          if (v152)
          {
            (*(v223 + 8))(a1, v67);

            swift_unknownObjectRelease();
            v34 = v222;
            *v222 = v152;
            *(v34 + 1) = 0;
            goto LABEL_10;
          }

          swift_unknownObjectRetain();
          URL._bridgeToObjectiveC()(v153);
          v155 = v154;
          v156 = [v66 isShowDefaultFolderURL:v154];

          if (v156)
          {
            v157 = [objc_opt_self() defaultFolderWithHTMLNoteContext:v148];
            if (v157)
            {
              v158 = v24;
              v159 = v157;
              v33 = [v157 objectID];

              swift_unknownObjectRelease_n();
              (*(v223 + 8))(a1, v67);
              goto LABEL_9;
            }

            (*(v223 + 8))(a1, v67);

            swift_unknownObjectRelease_n();
            goto LABEL_75;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRetain();
          URL._bridgeToObjectiveC()(v161);
          v163 = v162;
          v164 = [v66 objectIDURIRepresentationForHTMLNoteMentionedInURL:v162];

          swift_unknownObjectRelease();
          if (v164)
          {
            v165 = v218;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v166 = v223;
            v167 = v220;
            (*(v223 + 32))(v220, v165, v67);
            v168 = v24;
            v169 = [(NSURL *)v148 managedObjectContext];
            v170 = v219;
            (*(v166 + 16))(v219, v167, v67);
            (*(v166 + 56))(v170, 0, 1, v67);
            aBlock = variable initialization expression of AsyncChannel.Iterator.active;
            v231 = 0;
            v232 = variable initialization expression of AsyncChannel.Iterator.active;
            v233 = 0;
            v234 = v24;
            v235 = v169;
            v236 = 0u;
            v237 = 0u;
            v171 = v168;
            v172 = v169;
            v173 = sub_10000F54C(v170, &aBlock);

            sub_1000073B4(v170, &qword_1006BCC20);
            if (v173)
            {
              v174 = [v173 ic_isContainerType];
              v38 = v227;
              if (v174)
              {

                swift_unknownObjectRelease();
                v175 = *(v166 + 8);
                v175(a1, v67);
                v175(v220, v67);
                v176 = v222;
                v177 = v225;
                *v222 = v173;
                *(v176 + 1) = v177;
                v178 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
                swift_storeEnumTagMultiPayload();
                (*(*(v178 - 8) + 56))(v176, 0, 1, v178);
                v179 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
                swift_beginAccess();
                v180 = &qword_1006BEF28;
              }

              else
              {
                v200 = [v173 ic_isNoteType];

                swift_unknownObjectRelease();
                v201 = *(v166 + 8);
                v201(a1, v67);
                v201(v220, v67);
                if (!v200)
                {

                  return v38;
                }

                v176 = v221;
                *v221 = v173;
                *(v176 + 1) = 0;
                v202 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
                swift_storeEnumTagMultiPayload();
                (*(*(v202 - 8) + 56))(v176, 0, 1, v202);
                v179 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
                swift_beginAccess();
                v180 = &unk_1006BFEA0;
              }

              sub_10000A49C(v176, &v38[v179], v180);
              swift_endAccess();
              return v38;
            }

            swift_unknownObjectRelease();
            v199 = *(v166 + 8);
            v199(a1, v67);
            v199(v220, v67);
            return v227;
          }
        }

        v181 = v24;
        URL._bridgeToObjectiveC()(v121);
        v183 = v182;
        IsValidURL = NotesAppIsValidURL();

        if (IsValidURL)
        {
          v38 = v227;
          v186 = v225;
          v187 = v223;
          if (v148)
          {
            URL._bridgeToObjectiveC()(v185);
            v189 = v188;
            v190 = NotesAppPredicateForNoteMentionedInURL();

            if (v190)
            {
              sub_1001BD280(v190);

              swift_unknownObjectRelease();
              (*(v187 + 8))(a1, v67);
              return v38;
            }

            (*(v187 + 8))(a1, v67);

            swift_unknownObjectRelease();
          }

          else
          {
            (*(v223 + 8))(a1, v67);
          }

          return v38;
        }

        (*(v223 + 8))(a1, v67);

        swift_unknownObjectRelease();
LABEL_75:

        return v227;
      }

      URL._bridgeToObjectiveC()(v121);
      v138 = v137;
      v64 = [v66 predicateForFolderWithNoteFocusedInURL:v137];

      v38 = v227;
      v62 = v228;
      if (!v64)
      {
        (*(v223 + 8))(a1, v67);

        swift_unknownObjectRelease();
        return v38;
      }

      v69 = ICNote_ptr;
      v139 = objc_opt_self();
      v221 = v132;
      isEscapingClosureAtFileLocation = [v139 notesMatchingPredicate:v64 context:v132];
      sub_1000054A4(0, &qword_1006C1420);
      v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = v225;
      if (!(v65 >> 62))
      {
        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_108:

          swift_unknownObjectRelease();

          (*(v223 + 8))(a1, v67);
          return v38;
        }

        goto LABEL_50;
      }

LABEL_107:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_108;
      }

LABEL_50:
      if ((v65 & 0xC000000000000001) != 0)
      {
        v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_53:
        v141 = v140;

        if ([v141 isSystemPaper])
        {
          v142 = [objc_opt_self() globalVirtualSystemPaperFolder];
          v143 = v222;
          *v222 = v142;
          *(v143 + 1) = v66;
          v144 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v144 - 8) + 56))(v143, 0, 1, v144);
          v145 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
          swift_beginAccess();
          v66 = v66;
          v146 = &v38[v145];
          v147 = v143;
        }

        else
        {
          v191 = [v141 folder];
          if (!v191)
          {
LABEL_81:
            v197 = [v141 objectID];

            swift_unknownObjectRelease();
            (*(v223 + 8))(a1, v67);
            v198 = *&v38[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID];
            *&v38[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID] = v197;

            return v38;
          }

          v192 = v191;
          v193 = [v191 objectID];

          v194 = v222;
          *v222 = v193;
          *(v194 + 1) = v66;
          v195 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v195 - 8) + 56))(v194, 0, 1, v195);
          v196 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
          swift_beginAccess();
          v66 = v66;
          v146 = &v38[v196];
          v147 = v194;
        }

        sub_10000A49C(v147, v146, &qword_1006BEF28);
        swift_endAccess();
        goto LABEL_81;
      }

      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v140 = *(v65 + 32);
        goto LABEL_53;
      }

      __break(1u);
LABEL_111:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_112;
      }

      goto LABEL_32;
    }

    v62 = v226;
    v38 = v227;
    v65 = v225;
    if (!v24)
    {
LABEL_99:
      if (v228)
      {
        v212 = v24;
        URL._bridgeToObjectiveC()(v228);
        v214 = v213;
        v215 = NotesAppPredicateForNoteMentionedInURL();

        v216 = v223;
        if (v215)
        {
          sub_1001BD280(v215);

          swift_unknownObjectRelease();
          (*(v216 + 8))(a1, v62);
        }

        else
        {
          (*(v223 + 8))(a1, v62);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        (*(v223 + 8))(a1, v62);
      }

      return v38;
    }

    v220 = v24;
    v64 = v24;
    URL._bridgeToObjectiveC()(v122);
    v124 = v123;
    v69 = [v66 predicateForNotesMentionedInURL:v123];

    if (!v69)
    {
LABEL_94:
      URL._bridgeToObjectiveC()(v125);
      v204 = v203;
      v205 = [v66 folderIdentifierForShowNoteURL:v203];

      if (v205 && (v206 = [objc_opt_self() folderWithIdentifier:v205 context:v64], v205, v206))
      {
        v207 = [v206 objectID];

        v208 = v222;
        *v222 = v207;
        *(v208 + 8) = v65;
        v209 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v209 - 8) + 56))(v208, 0, 1, v209);
        v210 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
        swift_beginAccess();
        v211 = v65;
        sub_10000A49C(v208, &v38[v210], &qword_1006BEF28);
        swift_endAccess();
      }

      else
      {
      }

      v24 = v220;
      goto LABEL_99;
    }

    v67 = [objc_opt_self() notesMatchingPredicate:v69 context:v64];
    sub_1000054A4(0, &qword_1006C1420);
    isEscapingClosureAtFileLocation = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(isEscapingClosureAtFileLocation >> 62))
    {
      if (!*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_93:

        goto LABEL_94;
      }

LABEL_41:
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) == 0)
      {
        if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v126 = *(isEscapingClosureAtFileLocation + 32);
LABEL_44:
          v127 = v126;

          v128 = [v127 objectID];

          v129 = v221;
          *v221 = v128;
          *(v129 + 1) = 0;
          v130 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
          v131 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
          swift_beginAccess();
          sub_10000A49C(v129, &v38[v131], &unk_1006BFEA0);
          swift_endAccess();
          goto LABEL_94;
        }

        __break(1u);
        goto LABEL_107;
      }

LABEL_105:
      v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_44;
    }

LABEL_92:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_93;
    }

    goto LABEL_41;
  }

  URL._bridgeToObjectiveC()(&var20);
  v101 = v100;
  v102 = [v42 virtualSmartFolderMentionedInURL:v100 context:v66];

  v104 = v227;
  isEscapingClosureAtFileLocation = v225;
  if (v102)
  {
    v105 = v222;
    *v222 = v102;
    *(v105 + 8) = isEscapingClosureAtFileLocation;
    v106 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
    v107 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
    swift_beginAccess();
    v108 = isEscapingClosureAtFileLocation;
    sub_10000A49C(v105, &v104[v107], &qword_1006BEF28);
    swift_endAccess();
  }

  URL._bridgeToObjectiveC()(v103);
  v110 = v109;
  v64 = [v42 notePredicateFromNoteInVirtualSmartFolderInURL:v109];

  if (!v64)
  {
    (*(v223 + 8))(a1, v226);

    swift_unknownObjectRelease();
    return v104;
  }

  v111 = [objc_opt_self() notesMatchingPredicate:v64 context:v66];
  sub_1000054A4(0, &qword_1006C1420);
  v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v62 = v226;
  v38 = v104;
  if (v69 >> 62)
  {
    goto LABEL_111;
  }

  result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_112:

    swift_unknownObjectRelease();

    (*(v223 + 8))(a1, v62);
    return v38;
  }

LABEL_32:
  if ((v69 & 0xC000000000000001) != 0)
  {
    v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_35;
  }

  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v113 = *(v69 + 32);
LABEL_35:
    v114 = v113;

    v115 = [v114 objectID];

    swift_unknownObjectRelease();
    (*(v223 + 8))(a1, v62);
    v34 = v221;
    *v221 = v115;
    *(v34 + 1) = 0;
    v116 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v116 - 8) + 56))(v34, 0, 1, v116);
    v37 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    v39 = &unk_1006BFEA0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1001BD110(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = objc_opt_self();
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 recentlyDeletedFolderForACAccountInURL:v8 context:a2];

  v11 = v10;
  if (!v10)
  {
    v17 = [objc_opt_self() defaultAccountInContext:a2];
    if (!v17 || (v18 = v17, v19 = [v17 trashFolder], v18, !v19))
    {
      v13 = 0;
      goto LABEL_10;
    }

    v11 = v19;
  }

  v12 = v10;
  v13 = v11;
  v14 = [v13 isTrashFolder];

  if (v14)
  {
    v15 = [v13 isHiddenNoteContainer];

    if (!v15)
    {
      v16 = [v13 objectID];
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_10:
  v16 = sub_1001C56A4(a1, a2, 1);
LABEL_11:
  v20 = v16;

  v21 = *a3;
  *a3 = v20;
}

void sub_1001BD280(uint64_t a1)
{
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v14 - v4);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 allVisibleNotesMatchingPredicate:a1 sorted:1];
    if (v7)
    {
      v8 = v7;
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v9)
      {
        if (*(v9 + 16))
        {
          sub_10000A2A0(v9 + 32, v16);

          sub_1000054A4(0, &qword_1006C2D00);
          if (swift_dynamicCast())
          {
            v10 = v15;
            v11 = [v15 objectID];

            *v5 = v11;
            v5[1] = 0;
            v12 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
            v13 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
            swift_beginAccess();
            sub_10000A49C(v5, v1 + v13, &unk_1006BFEA0);
            swift_endAccess();
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1001BD4E4()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(78);
  v22 = v20;
  v23 = v21;
  v8._object = 0x8000000100563130;
  v8._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v8);
  v9 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_100006038(v1 + v9, v7, &qword_1006BEF28);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._object = 0x8000000100563150;
  v11._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v11);
  v12 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v1 + v12, v4, &unk_1006BFEA0);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000020;
  v14._object = 0x8000000100563170;
  String.append(_:)(v14);
  v19 = *(v1 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult);
  v15 = v19;
  sub_10015DA04(&qword_1006BF0E0);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  return v22;
}

void sub_1001BD9BC()
{
  if (!qword_1006BEEF0)
  {
    sub_10017992C(&unk_1006BFED0);
    sub_10017992C(&qword_1006BEEE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006BEEF0);
    }
  }
}

unint64_t sub_1001BDA48()
{
  result = qword_1006BEF20;
  if (!qword_1006BEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEF20);
  }

  return result;
}

Swift::Int sub_1001BDAA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001BDBB0()
{
  String.hash(into:)();
}

Swift::Int sub_1001BDCA4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001BDDA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C6ED8(*a1);
  *a2 = result;
  return result;
}

void sub_1001BDDD8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F697463656CLL;
  v4 = 0x65537463656A626FLL;
  v5 = 0xEF6E6F736165526ELL;
  v6 = 0x6F697463656C6573;
  v7 = 0x800000010055CA30;
  v8 = 0xD000000000000016;
  if (v2 == 3)
  {
    v8 = 0xD000000000000035;
  }

  else
  {
    v7 = 0x800000010055CA70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000010055CA00;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1001BDE9C()
{
  v1 = *v0;
  v2 = 0x65537463656A626FLL;
  v3 = 0x6F697463656C6573;
  v4 = 0xD000000000000016;
  if (v1 == 3)
  {
    v4 = 0xD000000000000035;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001BDF5C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C6ED8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001BDF90(uint64_t a1)
{
  v2 = sub_1001C2708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BDFCC(uint64_t a1)
{
  v2 = sub_1001C2708();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_1001BE008(void *a1)
{
  v3 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v6 - 8);
  v32 = &v30 - v7;
  v8 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v8 - 8);
  v33 = &v30 - v9;
  v10 = sub_10015DA04(&qword_1006BEF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v34 = sub_10015DA04(&qword_1006BEF38);
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v30 - v14;
  v15 = [objc_allocWithZone(v1) init];
  v16 = a1[3];
  v36 = a1;
  sub_10017CC60(a1, v16);
  sub_1001C2708();
  v17 = v15;
  v18 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {

    (*(v13 + 56))(v12, 1, 1, v34);
    sub_1000073B4(v12, &qword_1006BEF30);
  }

  else
  {
    v19 = v5;
    v20 = v34;
    (*(v13 + 56))(v12, 0, 1, v34);
    v21 = v31;
    (*(v13 + 32))(v31, v12, v20);
    type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    LOBYTE(v37) = 0;
    sub_1001C275C(&qword_1006BEF48, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    v22 = v21;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v13;
    v23 = v33;
    v24 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_10000A49C(v23, &v17[v24], &unk_1006BFEA0);
    swift_endAccess();
    type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
    LOBYTE(v37) = 1;
    sub_1001C275C(&qword_1006BEF50, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    v25 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
    swift_beginAccess();
    sub_10000A49C(v25, &v17[v26], &qword_1006BEF28);
    swift_endAccess();
    v38 = 2;
    sub_1001C27A4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v35;
    v17[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_selectionReason] = v37 & 1;
    sub_10015DA04(&qword_1006BEF60);
    v38 = 3;
    sub_1001C2A70(&qword_1006BEF68, &qword_1006BEF70);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v17[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDURLForContainerObjectIDURL] = v37;

    type metadata accessor for URL();
    LOBYTE(v37) = 4;
    sub_1001C275C(&qword_1006BEF70, &type metadata accessor for URL);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v27 + 8))(v22, v20);
    v28 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectIDURL;
    swift_beginAccess();
    sub_10000A49C(v19, &v17[v28], &qword_1006BCC20);
    swift_endAccess();
  }

  sub_100009F60(v36);
  return v17;
}

uint64_t sub_1001BE770(void *a1)
{
  v2 = v1;
  v28 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v28);
  v29 = &v27 - v4;
  v5 = type metadata accessor for URL();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v34);
  v8 = &v27 - v7;
  v9 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_10015DA04(&qword_1006BEF78);
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_10017CC60(a1, a1[3]);
  sub_1001C2708();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v2 + v15, v11, &unk_1006BFEA0);
  v37 = 0;
  sub_1001C27F8();
  v16 = v33;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v17 = v16;
  if (v16)
  {

    v17 = 0;
  }

  sub_1000073B4(v11, &unk_1006BFEA0);
  v18 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_100006038(v2 + v18, v8, &qword_1006BEF28);
  LOBYTE(v36) = 1;
  sub_1001C28AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v17)
  {
  }

  sub_1000073B4(v8, &qword_1006BEF28);
  LOBYTE(v36) = *(v2 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_selectionReason);
  v38 = 2;
  sub_1001C2960();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v36 = *(v2 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDURLForContainerObjectIDURL);
  v38 = 3;

  sub_10015DA04(&unk_1006C42E0);
  sub_1001C29B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v19 = *(v2 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID);
  if (v19)
  {
    v20 = v19;
    v21 = [v20 URIRepresentation];
    v22 = v30;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v36) = 4;
    sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
    v23 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    (*(v31 + 8))(v22, v23);
  }

  else
  {
    v24 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectIDURL;
    swift_beginAccess();
    v25 = v29;
    sub_100006038(v2 + v24, v29, &qword_1006BCC20);
    v38 = 4;
    sub_1001C2B0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000073B4(v25, &qword_1006BCC20);
  }

  return (*(v35 + 8))(v14, v12);
}

char *sub_1001BEDBC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_1001BE008(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001BEE0C()
{
  v1 = 0x65646F4365746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6974617469766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D686361747461;
  }
}

uint64_t sub_1001BEE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C6F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BEEA0(uint64_t a1)
{
  v2 = sub_1001C2BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BEEDC(uint64_t a1)
{
  v2 = sub_1001C2BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BEF18()
{
  if (*v0)
  {
    return 0x4C525565746F6ELL;
  }

  else
  {
    return 0x656D686361747461;
  }
}

uint64_t sub_1001BEF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D686361747461 && a2 == 0xED00004C5255746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4C525565746F6ELL && a2 == 0xE700000000000000)
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

uint64_t sub_1001BF044(uint64_t a1)
{
  v2 = sub_1001C2C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BF080(uint64_t a1)
{
  v2 = sub_1001C2C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001BF0BC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1001BF100()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1001BF15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x52557463656A626FLL && a2 == 0xE90000000000004CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001BF1EC(uint64_t a1)
{
  v2 = sub_1001C2C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BF228(uint64_t a1)
{
  v2 = sub_1001C2C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BF264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_10015DA04(&qword_1006BEFC8);
  v4 = __chkstk_darwin(v3 - 8);
  v109 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v117 = &v95 - v6;
  v7 = sub_10015DA04(&qword_1006BEFD0);
  v8 = *(v7 - 8);
  v113 = v7;
  v114 = v8;
  v9 = __chkstk_darwin(v7);
  v106 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v95 - v11;
  v12 = sub_10015DA04(&qword_1006BCC20);
  v13 = __chkstk_darwin(v12 - 8);
  v108 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v107 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v101 = &v95 - v18;
  __chkstk_darwin(v17);
  v104 = &v95 - v19;
  v110 = type metadata accessor for URL();
  v115 = *(v110 - 8);
  v20 = __chkstk_darwin(v110);
  v99 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v98 = &v95 - v23;
  v24 = __chkstk_darwin(v22);
  v97 = &v95 - v25;
  __chkstk_darwin(v24);
  v100 = &v95 - v26;
  v27 = sub_10015DA04(&qword_1006BEFD8);
  __chkstk_darwin(v27 - 8);
  v116 = &v95 - v28;
  v29 = sub_10015DA04(&qword_1006BEFE0);
  v111 = *(v29 - 8);
  v112 = v29;
  __chkstk_darwin(v29);
  v103 = &v95 - v30;
  v31 = sub_10015DA04(&qword_1006BEFE8);
  __chkstk_darwin(v31 - 8);
  v33 = &v95 - v32;
  v34 = sub_10015DA04(&qword_1006BEFF0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v95 - v36;
  v38 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  __chkstk_darwin(v38);
  v40 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v119 = a1;
  sub_10017CC60(a1, v41);
  sub_1001C2BC0();
  v42 = v118;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v42)
  {

    v35[7](v33, 1, 1, v34);
    sub_1000073B4(v33, &qword_1006BEFE8);
  }

  else
  {
    v47 = v116;
    v48 = v117;
    v95 = v40;
    v118 = v38;
    v35[7](v33, 0, 1, v34);
    (v35[4])(v37, v33, v34);
    v49 = KeyedDecodingContainer.allKeys.getter();
    v50 = v35;
    v51 = v34;
    if (*(v49 + 16))
    {
      v52 = v37;
      v53 = *(v49 + 32);

      v96 = v51;
      if (v53)
      {
        v116 = v35;
        if (v53 == 1)
        {
          v123 = 1;
          sub_1001C2C14();
          v54 = v48;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v55 = v115;
          v56 = v113;
          v61 = v114;
          (*(v114 + 56))(v54, 0, 1, v113);
          v62 = v105;
          (*(v61 + 32))(v105, v54, v56);
          sub_1001C275C(&qword_1006BEF70, &type metadata accessor for URL);
          v63 = v107;
          v64 = v56;
          v65 = v110;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v61 + 8))(v62, v64);
          (*(v116 + 1))(v37, v96);
          (*(v55 + 56))(v63, 0, 1, v65);
          v76 = *(v55 + 32);
          v77 = v98;
          v76(v98, v63, v65);
          v78 = v95;
          v76(v95, v77, v65);
        }

        else
        {
          v124 = 2;
          sub_1001C2C14();
          v58 = v109;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v59 = v115;
          v60 = v113;
          v71 = v114;
          v72 = v58;
          (*(v114 + 56))(v58, 0, 1, v113);
          v73 = v106;
          (*(v71 + 32))(v106, v72, v60);
          sub_1001C275C(&qword_1006BEF70, &type metadata accessor for URL);
          v74 = v108;
          v75 = v110;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v71 + 8))(v73, v60);
          (*(v116 + 1))(v37, v96);
          (*(v59 + 56))(v74, 0, 1, v75);
          v88 = *(v59 + 32);
          v89 = v99;
          v88(v99, v74, v75);
          v78 = v95;
          v88(v95, v89, v75);
        }
      }

      else
      {
        v122 = 0;
        sub_1001C2C68();
        v57 = v47;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v117 = v37;
        v67 = v111;
        v66 = v112;
        (*(v111 + 56))(v57, 0, 1, v112);
        v68 = v103;
        (*(v67 + 32))(v103, v57, v66);
        v121 = 0;
        sub_1001C275C(&qword_1006BEF70, &type metadata accessor for URL);
        v69 = v104;
        v70 = v110;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v79 = v115;
        v80 = *(v115 + 56);
        v114 = 0;
        v116 = v50;
        v117 = v80;
        (v80)(v69, 0, 1, v70);
        v113 = *(v79 + 32);
        v113(v100, v69, v70);
        v120 = 1;
        v81 = v114;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (v81)
        {

          (*(v79 + 8))(v100, v70);
          (*(v111 + 8))(v68, v112);
          v82 = v101;
          (v117)(v101, 1, 1, v70);
          sub_1000073B4(v82, &qword_1006BCC20);
          v83 = v116;
          v84 = type metadata accessor for DecodingError();
          swift_allocError();
          v86 = v85;
          v87 = v96;
          KeyedDecodingContainer.codingPath.getter();
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v84 - 8) + 104))(v86, enum case for DecodingError.dataCorrupted(_:), v84);
          swift_willThrow();
          v83[1](v52, v87);
          return sub_100009F60(v119);
        }

        (*(v111 + 8))(v68, v112);
        (*(v116 + 1))(v52, v96);
        v90 = v101;
        (v117)(v101, 0, 1, v70);
        v91 = v97;
        v92 = v113;
        v113(v97, v90, v70);
        v93 = *(sub_10015DA04(&unk_1006C43C0) + 48);
        v78 = v95;
        v92(v95, v100, v70);
        v92((v78 + v93), v91, v70);
      }

      v94 = v102;
      swift_storeEnumTagMultiPayload();
      sub_10001425C(v78, v94, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      return sub_100009F60(v119);
    }

    (v35[1])(v37, v34);
  }

  v43 = type metadata accessor for DecodingError();
  swift_allocError();
  v45 = v44;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.dataCorrupted(_:), v43);
  swift_willThrow();
  return sub_100009F60(v119);
}

void sub_1001C0364(void *a1)
{
  v2 = sub_10015DA04(&qword_1006BF010);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = __chkstk_darwin(v2);
  v77 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v76 = &v75 - v6;
  v7 = __chkstk_darwin(v5);
  v85 = &v75 - v8;
  __chkstk_darwin(v7);
  v84 = &v75 - v9;
  v86 = sub_10015DA04(&qword_1006BF018);
  v83 = *(v86 - 8);
  v10 = __chkstk_darwin(v86);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v75 - v12;
  v93 = type metadata accessor for URL();
  v95 = *(v93 - 8);
  v13 = __chkstk_darwin(v93);
  v82 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v81 = &v75 - v16;
  v17 = __chkstk_darwin(v15);
  v75 = &v75 - v18;
  v19 = __chkstk_darwin(v17);
  v78 = &v75 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v75 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v75 - v25;
  v27 = __chkstk_darwin(v24);
  v87 = &v75 - v28;
  __chkstk_darwin(v27);
  v30 = &v75 - v29;
  v31 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  __chkstk_darwin(v31);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10015DA04(&qword_1006BF020);
  v90 = *(v96 - 8);
  __chkstk_darwin(v96);
  v35 = &v75 - v34;
  sub_10017CC60(a1, a1[3]);
  sub_1001C2BC0();
  v94 = v35;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100015C8C(v91, v33, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v60 = *v33;
      v61 = *(v33 + 1);

      v62 = v92;
      v63 = v95;
      if (!v60)
      {
        (*(v90 + 8))(v94, v96);

        return;
      }

      if (!v61)
      {
        (*(v90 + 8))(v94, v96);

        return;
      }

      v104 = 0;
      sub_1001C2C68();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = [v60 URIRepresentation];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v103 = 0;
      sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v65 = v62;
      if (v62)
      {

        v65 = 0;
      }

      v66 = *(v63 + 8);
      v66(v78, v93);
      v67 = [v61 URIRepresentation];
      v68 = v75;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v102 = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v65)
      {
      }

      v66(v68, v93);
      (*(v83 + 8))(v80, v86);
    }

    else
    {
      v44 = v92;
      v43 = v93;
      v45 = v95;
      if (EnumCaseMultiPayload == 4)
      {
        v46 = *v33;

        v47 = v89;
        if (v46)
        {
          v105 = 1;
          sub_1001C2C14();
          v48 = v76;
          v49 = v94;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = [v46 URIRepresentation];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          if (v44)
          {
          }

          (*(v45 + 8))(v81, v43);
LABEL_31:
          (*(v88 + 8))(v48, v47);
          v73 = *(v90 + 8);
          v74 = v49;
LABEL_33:
          v73(v74, v96);
          return;
        }
      }

      else
      {
        v71 = *v33;

        v47 = v89;
        if (v71)
        {
          v106 = 2;
          sub_1001C2C14();
          v48 = v77;
          v49 = v94;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v72 = [v71 URIRepresentation];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          if (v44)
          {
          }

          (*(v45 + 8))(v82, v43);
          goto LABEL_31;
        }
      }
    }

    v73 = *(v90 + 8);
    v74 = v94;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    v37 = v92;
    v38 = v93;
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v95;
      (*(v95 + 32))(v26, v33, v93);
      v100 = 1;
      sub_1001C2C14();
      v40 = v96;
      v41 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
      v42 = v89;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v37)
      {
      }

      (*(v88 + 8))(v84, v42);
      (*(v39 + 8))(v26, v38);
    }

    else
    {
      v69 = v95;
      (*(v95 + 32))(v23, v33, v93);
      v101 = 2;
      sub_1001C2C14();
      v40 = v96;
      v41 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
      v70 = v89;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v37)
      {
      }

      (*(v88 + 8))(v85, v70);
      (*(v69 + 8))(v23, v38);
    }

    (*(v90 + 8))(v41, v40);
  }

  else
  {
    v51 = *(sub_10015DA04(&unk_1006C43C0) + 48);
    v52 = *(v95 + 32);
    v53 = v93;
    v52(v30, v33, v93);
    v52(v87, &v33[v51], v53);
    v99 = 0;
    sub_1001C2C68();
    v54 = v79;
    v55 = v96;
    v56 = v94;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v98 = 0;
    sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
    v57 = v86;
    v58 = v92;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v58)
    {
    }

    v97 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v83 + 8))(v54, v57);
    v59 = *(v95 + 8);
    v59(v87, v53);
    v59(v30, v53);
    (*(v90 + 8))(v56, v55);
  }
}

uint64_t sub_1001C101C()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646F4373676174;
  }
}

uint64_t sub_1001C1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C7058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C10AC(uint64_t a1)
{
  v2 = sub_1001C3F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C10E8(uint64_t a1)
{
  v2 = sub_1001C3F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C1124()
{
  if (*v0)
  {
    return 0x55746E756F636361;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001C115C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x55746E756F636361 && a2 == 0xEA00000000004C52)
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

uint64_t sub_1001C1240(uint64_t a1)
{
  v2 = sub_1001C3FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C127C(uint64_t a1)
{
  v2 = sub_1001C3FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C12B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for URL();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&qword_1006BCC20);
  v6 = __chkstk_darwin(v5 - 8);
  v64 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v53 - v8;
  v9 = sub_10015DA04(&qword_1006BF028);
  __chkstk_darwin(v9 - 8);
  v63 = &v53 - v10;
  v11 = sub_10015DA04(&qword_1006BF030);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  __chkstk_darwin(v11);
  v56 = &v53 - v13;
  v14 = sub_10015DA04(&qword_1006BF038);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_10015DA04(&qword_1006BF040);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - v19;
  v21 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  __chkstk_darwin(v21);
  v23 = (&v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1[3];
  v66 = a1;
  sub_10017CC60(a1, v24);
  sub_1001C3F54();
  v25 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v30 = v63;
    v31 = v64;
    v54 = v23;
    v65 = v21;
    (*(v18 + 56))(v16, 0, 1, v17);
    (*(v18 + 32))(v20, v16, v17);
    v32 = v20;
    v33 = KeyedDecodingContainer.allKeys.getter();
    v34 = v18;
    if (!*(v33 + 16))
    {
      (*(v18 + 8))(v20, v17);

      goto LABEL_3;
    }

    v35 = *(v33 + 32);

    if (v35)
    {
      if (v35 == 1)
      {
        LOBYTE(v67) = 1;
        sub_1001C3FA8();
        v36 = v30;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v32;
        v42 = v59;
        v41 = v60;
        (*(v60 + 56))(v36, 0, 1, v59);
        v43 = v56;
        (*(v41 + 32))(v56, v36, v42);
        LOBYTE(v67) = 0;
        v46 = KeyedDecodingContainer.decode(_:forKey:)();
        v64 = v47;
        LOBYTE(v67) = 1;
        sub_1001C275C(&qword_1006BEF70, &type metadata accessor for URL);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v60 + 8))(v43, v42);
        (*(v34 + 8))(v40, v17);
        v48 = v58;
        v49 = v55;
        (*(v61 + 56))(v55, 0, 1, v62);
        v50 = *(sub_10015DA04(&qword_1006BF058) + 48);
        v51 = v54;
        v52 = v64;
        *v54 = v46;
        *(v51 + 8) = v52;
        sub_10000CA08(v49, v51 + v50);
LABEL_13:
        swift_storeEnumTagMultiPayload();
        sub_10001425C(v51, v48, type metadata accessor for ICSelectionStateModel.ContainerSelection);
        return sub_100009F60(v66);
      }

      LOBYTE(v67) = 2;
      sub_1001C275C(&qword_1006BEF70, &type metadata accessor for URL);
      v37 = v31;
      v38 = v62;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v39 = v61;
      (*(v18 + 8))(v32, v17);
      (*(v39 + 56))(v37, 0, 1, v38);
      v44 = *(v39 + 32);
      v45 = v57;
      v44(v57, v37, v38);
      v51 = v54;
      v44(v54, v45, v38);
    }

    else
    {
      v68 = 0;
      sub_100196770();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v18 + 8))(v32, v17);
      v51 = v54;
      *v54 = v67;
    }

    v48 = v58;
    goto LABEL_13;
  }

  (*(v18 + 56))(v16, 1, 1, v17);
  sub_1000073B4(v16, &qword_1006BF038);
LABEL_3:
  v26 = type metadata accessor for DecodingError();
  swift_allocError();
  v28 = v27;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.dataCorrupted(_:), v26);
  swift_willThrow();
  return sub_100009F60(v66);
}

void sub_1001C1D34(void *a1)
{
  v2 = type metadata accessor for URL();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = __chkstk_darwin(v2);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = &v66 - v6;
  __chkstk_darwin(v5);
  v8 = &v66 - v7;
  v9 = sub_10015DA04(&qword_1006BF060);
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v66 - v12;
  v71 = sub_10015DA04(&qword_1006BCC20);
  v13 = __chkstk_darwin(v71);
  v70 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  v17 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  __chkstk_darwin(v17);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10015DA04(&qword_1006BF068);
  v76 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  sub_10017CC60(a1, a1[3]);
  sub_1001C3F54();
  v79 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100015C8C(v77, v19, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v32 = v78;
      v31 = v79;
      if (EnumCaseMultiPayload == 4)
      {
        v33 = *v19;

        if (v33)
        {
          LOBYTE(v80) = 1;
          sub_1001C3FA8();
          v34 = v68;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v35 = [v33 type];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v80) = 0;
          KeyedEncodingContainer.encode(_:forKey:)();
          v36 = v32;
          if (v32)
          {

            v36 = 0;
          }

          v37 = [v33 accountObjectID];
          if (v37)
          {
            v38 = v37;
            v39 = [v37 URIRepresentation];

            v40 = v70;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = 0;
          }

          else
          {
            v41 = 1;
            v40 = v70;
          }

          (*(v74 + 56))(v40, v41, 1, v75);
          LOBYTE(v80) = 1;
          sub_1001C2B0C();
          v65 = v73;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          if (v36)
          {
          }

          sub_1000073B4(v70, &qword_1006BCC20);
          (*(v72 + 8))(v34, v65);
        }
      }

      else
      {
        v59 = *v19;

        if (v59)
        {
          v60 = [v59 URIRepresentation];
          v61 = v66;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v63 = v74;
          v62 = v75;
          v64 = v67;
          (*(v74 + 32))(v67, v61, v75);
          LOBYTE(v80) = 2;
          sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          if (v32)
          {
          }

          (*(v63 + 8))(v64, v62);
        }
      }

      v29 = *(v76 + 8);
      v30 = v31;
      goto LABEL_38;
    }

    v47 = *v19;

    v48 = v20;
    v50 = v78;
    v49 = v79;
    if (!v47)
    {
      (*(v76 + 8))(v79, v48);
      return;
    }

    v51 = [v47 dataRepresentation];
    if (!v51)
    {
      (*(v76 + 8))(v49, v48);

      return;
    }

    v52 = v51;
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v54;

    v80 = v53;
    v81 = v42;
    v82 = 0;
    sub_100196888();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v50)
    {

      (*(v76 + 8))(v49, v48);
      sub_10019671C(v53, v42);
      return;
    }

    (*(v76 + 8))(v49, v48);

    v46 = v53;
LABEL_19:
    sub_10019671C(v46, v42);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v43 = *v19;
    v42 = v19[1];
    v80 = v43;
    v81 = v42;
    v82 = 0;
    sub_100196888();
    v45 = v78;
    v44 = v79;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v45)
    {
    }

    (*(v76 + 8))(v44, v20);
    v46 = v43;
    goto LABEL_19;
  }

  v24 = v78;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = sub_10015DA04(&qword_1006BF058);
    sub_10000CA08(v19 + *(v25 + 48), v16);
    LOBYTE(v80) = 1;
    sub_1001C3FA8();
    v26 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v80) = 0;
    v27 = v73;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v24;
    if (v24)
    {

      v28 = 0;
    }

    LOBYTE(v80) = 1;
    sub_1001C2B0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v28)
    {
    }

    (*(v72 + 8))(v26, v27);
    sub_1000073B4(v16, &qword_1006BCC20);
    v29 = *(v76 + 8);
    v30 = v79;
  }

  else
  {
    v55 = v74;
    v56 = v19;
    v57 = v75;
    (*(v74 + 32))(v8, v56, v75);
    LOBYTE(v80) = 2;
    sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
    v58 = v79;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v24)
    {
    }

    (*(v55 + 8))(v8, v57);
    v29 = *(v76 + 8);
    v30 = v58;
  }

LABEL_38:
  v29(v30, v20);
}

unint64_t sub_1001C2708()
{
  result = qword_1006BEF40;
  if (!qword_1006BEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEF40);
  }

  return result;
}

uint64_t sub_1001C275C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001C27A4()
{
  result = qword_1006BEF58;
  if (!qword_1006BEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEF58);
  }

  return result;
}

unint64_t sub_1001C27F8()
{
  result = qword_1006BEF80;
  if (!qword_1006BEF80)
  {
    sub_10017992C(&unk_1006BFEA0);
    sub_1001C275C(&qword_1006BEF88, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEF80);
  }

  return result;
}

unint64_t sub_1001C28AC()
{
  result = qword_1006BEF90;
  if (!qword_1006BEF90)
  {
    sub_10017992C(&qword_1006BEF28);
    sub_1001C275C(&qword_1006BEF98, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEF90);
  }

  return result;
}

unint64_t sub_1001C2960()
{
  result = qword_1006BEFA0;
  if (!qword_1006BEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEFA0);
  }

  return result;
}

unint64_t sub_1001C29B4()
{
  result = qword_1006BEFA8;
  if (!qword_1006BEFA8)
  {
    sub_10017992C(&unk_1006C42E0);
    sub_1001C2A70(&qword_1006BEFB0, &qword_1006BEFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEFA8);
  }

  return result;
}

uint64_t sub_1001C2A70(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006BEF60);
    sub_1001C275C(a2, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001C2B0C()
{
  result = qword_1006BEFC0;
  if (!qword_1006BEFC0)
  {
    sub_10017992C(&qword_1006BCC20);
    sub_1001C275C(&qword_1006BEFB8, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEFC0);
  }

  return result;
}

unint64_t sub_1001C2BC0()
{
  result = qword_1006BEFF8;
  if (!qword_1006BEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEFF8);
  }

  return result;
}

unint64_t sub_1001C2C14()
{
  result = qword_1006BF000;
  if (!qword_1006BF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF000);
  }

  return result;
}

unint64_t sub_1001C2C68()
{
  result = qword_1006BF008;
  if (!qword_1006BF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF008);
  }

  return result;
}

id sub_1001C2CBC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

void sub_1001C2CF4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

_$ss17__CocoaDictionaryV7isEqual2toSbAB_tF:
      __CocoaDictionary.isEqual(to:)(a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_1001C2F08(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_1002DF354(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_1000054A4(0, &qword_1006BFEC0);
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = static NSObject.== infix(_:_:)();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto _$ss17__CocoaDictionaryV7isEqual2toSbAB_tF;
  }
}

void sub_1001C2F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaDictionary.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = __CocoaDictionary.lookup(_:)();

      if (!v16)
      {

        return;
      }

      sub_1000054A4(0, &qword_1006BFEC0);
      swift_dynamicCast();
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001C3098@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001C32C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001C3FFC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10019671C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001C3098(v13, a3, a4, &v12);
  v10 = v4;
  sub_10019671C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001C3458(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v116 = a1;
  v117 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v2 = __chkstk_darwin(v117);
  v106 = (&v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v2);
  v105 = &v97 - v5;
  v6 = __chkstk_darwin(v4);
  v109 = &v97 - v7;
  v8 = __chkstk_darwin(v6);
  v112 = &v97 - v9;
  v10 = __chkstk_darwin(v8);
  v104 = &v97 - v11;
  v12 = __chkstk_darwin(v10);
  v108 = &v97 - v13;
  v14 = __chkstk_darwin(v12);
  v111 = &v97 - v15;
  v16 = __chkstk_darwin(v14);
  v110 = &v97 - v17;
  v18 = __chkstk_darwin(v16);
  v107 = &v97 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v97 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v97 - v24;
  __chkstk_darwin(v23);
  v27 = &v97 - v26;
  v28 = type metadata accessor for URL();
  v114 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v97 - v33;
  v35 = __chkstk_darwin(v32);
  v103 = &v97 - v36;
  v37 = __chkstk_darwin(v35);
  v113 = &v97 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v97 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v97 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v97 - v46;
  __chkstk_darwin(v45);
  v49 = &v97 - v48;
  sub_100015C8C(v116, v27, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  if (swift_getEnumCaseMultiPayload())
  {
    v50 = v114;
    v25 = v27;
    v51 = v28;
    goto LABEL_5;
  }

  v99 = v44;
  v100 = v41;
  v102 = v31;
  v98 = sub_10015DA04(&unk_1006C43C0);
  v52 = *(v98 + 48);
  v53 = v49;
  v54 = *(v114 + 32);
  v101 = v53;
  v54();
  (v54)(v47, &v27[v52], v28);
  sub_100015C8C(v115, v25, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = v47;
  if (EnumCaseMultiPayload)
  {
    v50 = v114;
    v57 = *(v114 + 8);
    v57(v56, v28);
    v57(v101, v28);
    v51 = v28;
    v31 = v102;
LABEL_5:
    sub_1000160E4(v25, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    sub_100015C8C(v116, v22, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    v58 = swift_getEnumCaseMultiPayload();
    v59 = v113;
    if (v58 == 1)
    {
      v60 = *(v50 + 32);
      v60(v113, v22, v51);
      v22 = v107;
      sub_100015C8C(v115, v107, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = v103;
        v60(v103, v22, v51);
        v62 = static URL.== infix(_:_:)();
        v63 = *(v50 + 8);
        v63(v61, v51);
        v64 = v59;
LABEL_12:
        v63(v64, v51);
        return v62 & 1;
      }

      (*(v50 + 8))(v59, v51);
    }

    sub_1000160E4(v22, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    v65 = v110;
    sub_100015C8C(v116, v110, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    v66 = swift_getEnumCaseMultiPayload();
    v68 = v111;
    v67 = v112;
    if (v66 == 2)
    {
      v102 = v31;
      v69 = v65;
      v70 = *(v50 + 32);
      v70(v34, v69, v51);
      sub_100015C8C(v115, v68, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v71 = v102;
        v70(v102, v68, v51);
        v62 = static URL.== infix(_:_:)();
        v63 = *(v50 + 8);
        v63(v71, v51);
        v64 = v34;
        goto LABEL_12;
      }

      (*(v50 + 8))(v34, v51);
    }

    else
    {
      v68 = v65;
    }

    v72 = v109;
    sub_1000160E4(v68, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    v73 = v108;
    sub_100015C8C(v116, v108, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v75 = *v73;
      v74 = *(v73 + 8);

      v76 = v104;
      sub_100015C8C(v115, v104, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v78 = *v76;
        v77 = *(v76 + 8);

        if (v75)
        {
          if (!v78)
          {

            goto LABEL_49;
          }

          sub_1000054A4(0, &qword_1006BFEC0);
          v79 = v75;
          v80 = v78;
          v81 = static NSObject.== infix(_:_:)();

          if ((v81 & 1) == 0)
          {

LABEL_49:
            goto LABEL_50;
          }
        }

        else if (v78)
        {

          goto LABEL_50;
        }

        if (v74)
        {
          if (v77)
          {
            sub_1000054A4(0, &qword_1006BFEC0);
            v95 = v74;
            v62 = static NSObject.== infix(_:_:)();

            return v62 & 1;
          }

LABEL_50:
          v62 = 0;
          return v62 & 1;
        }

        if (!v77)
        {
LABEL_53:
          v62 = 1;
          return v62 & 1;
        }

LABEL_42:

        goto LABEL_50;
      }

      v82 = v76;
    }

    else
    {
      v82 = v73;
    }

    sub_1000160E4(v82, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    sub_100015C8C(v116, v67, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v91 = *v67;

      sub_100015C8C(v115, v72, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v77 = *v72;

        if (v91)
        {
          if (v77)
          {
LABEL_29:
            sub_1000054A4(0, &qword_1006BFEC0);
            v92 = v91;
            v62 = static NSObject.== infix(_:_:)();

            return v62 & 1;
          }

LABEL_36:

          goto LABEL_50;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v72 = v67;
    }

    sub_1000160E4(v72, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    v93 = v105;
    sub_100015C8C(v116, v105, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1000160E4(v93, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      goto LABEL_50;
    }

    v91 = *v93;

    sub_100015C8C(v115, v106, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      sub_1000160E4(v106, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      goto LABEL_50;
    }

    v77 = *v106;

    if (v91)
    {
      if (v77)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }

LABEL_41:
    if (!v77)
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

  v83 = v47;
  v84 = v114;
  v85 = v99;
  v86 = *(v98 + 48);
  (v54)(v99, v25, v28);
  v87 = v100;
  v88 = v28;
  (v54)(v100, &v25[v86], v28);
  v89 = v101;
  if (static URL.== infix(_:_:)())
  {
    v90 = v83;
    v62 = static URL.== infix(_:_:)();
  }

  else
  {
    v62 = 0;
    v90 = v83;
  }

  v94 = *(v84 + 8);
  v94(v87, v88);
  v94(v85, v88);
  v94(v90, v88);
  v94(v89, v88);
  return v62 & 1;
}

unint64_t sub_1001C3F54()
{
  result = qword_1006BF048;
  if (!qword_1006BF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF048);
  }

  return result;
}

unint64_t sub_1001C3FA8()
{
  result = qword_1006BF050;
  if (!qword_1006BF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF050);
  }

  return result;
}

uint64_t sub_1001C3FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001C3098(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1001C40B4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1001C4E38(a3, a4);
          return sub_1001C32C8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001C421C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = __chkstk_darwin(v4);
  v99 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v105 = &v95 - v8;
  __chkstk_darwin(v7);
  v95 = &v95 - v9;
  v98 = sub_10015DA04(&qword_1006BF070);
  __chkstk_darwin(v98);
  v102 = &v95 - v10;
  v11 = sub_10015DA04(&qword_1006BCC20);
  v12 = __chkstk_darwin(v11 - 8);
  v96 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v101 = &v95 - v15;
  __chkstk_darwin(v14);
  v109 = &v95 - v16;
  v17 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v18 = __chkstk_darwin(v17);
  v97 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v104 = &v95 - v21;
  v22 = __chkstk_darwin(v20);
  v100 = &v95 - v23;
  v24 = __chkstk_darwin(v22);
  v106 = &v95 - v25;
  v26 = __chkstk_darwin(v24);
  v103 = (&v95 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = (&v95 - v29);
  v31 = __chkstk_darwin(v28);
  v33 = &v95 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v95 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = (&v95 - v38);
  v40 = __chkstk_darwin(v37);
  v42 = (&v95 - v41);
  v43 = __chkstk_darwin(v40);
  v45 = (&v95 - v44);
  __chkstk_darwin(v43);
  v47 = (&v95 - v46);
  v110 = a1;
  sub_100015C8C(a1, &v95 - v46, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  if (swift_getEnumCaseMultiPayload())
  {
    v48 = a2;
    v45 = v47;
  }

  else
  {
    v49 = a2;
    v50 = *v47;
    v51 = v47[1];
    v48 = v49;
    sub_100015C8C(v49, v45, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    if (!swift_getEnumCaseMultiPayload())
    {
      v78 = *v45;
      v77 = v45[1];
      v72 = sub_1001C40B4(v50, v51, v78, v77);
      sub_10019671C(v78, v77);
      sub_10019671C(v50, v51);
      return v72 & 1;
    }

    sub_10019671C(v50, v51);
  }

  sub_1000160E4(v45, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  v52 = v110;
  sub_100015C8C(v110, v42, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = *v42;
    v53 = v42[1];
    v55 = sub_10015DA04(&qword_1006BF058);
    v56 = v42 + *(v55 + 48);
    v57 = v109;
    sub_10000CA08(v56, v109);
    sub_100015C8C(v48, v39, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = *v39;
      v58 = v39[1];
      v60 = v39 + *(v55 + 48);
      v61 = v101;
      sub_10000CA08(v60, v101);
      if (v54 == v59 && v53 == v58)
      {

        v63 = v107;
        v62 = v108;
        v64 = v102;
        v65 = v109;
      }

      else
      {
        v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v63 = v107;
        v62 = v108;
        v64 = v102;
        v65 = v109;
        if ((v84 & 1) == 0)
        {
          sub_1000073B4(v61, &qword_1006BCC20);
          sub_1000073B4(v65, &qword_1006BCC20);
          goto LABEL_54;
        }
      }

      v85 = *(v98 + 48);
      sub_100006038(v65, v64, &qword_1006BCC20);
      sub_100006038(v61, v64 + v85, &qword_1006BCC20);
      v86 = *(v63 + 48);
      if (v86(v64, 1, v62) == 1)
      {
        sub_1000073B4(v61, &qword_1006BCC20);
        sub_1000073B4(v65, &qword_1006BCC20);
        if (v86(v64 + v85, 1, v62) == 1)
        {
          sub_1000073B4(v64, &qword_1006BCC20);
          v72 = 1;
          return v72 & 1;
        }
      }

      else
      {
        v89 = v96;
        sub_100006038(v64, v96, &qword_1006BCC20);
        if (v86(v64 + v85, 1, v62) != 1)
        {
          v90 = v64 + v85;
          v91 = v95;
          (*(v63 + 32))(v95, v90, v62);
          sub_1001C275C(&qword_1006C1750, &type metadata accessor for URL);
          v92 = v89;
          v72 = dispatch thunk of static Equatable.== infix(_:_:)();
          v93 = *(v63 + 8);
          v93(v91, v62);
          sub_1000073B4(v61, &qword_1006BCC20);
          sub_1000073B4(v65, &qword_1006BCC20);
          v93(v92, v62);
          sub_1000073B4(v64, &qword_1006BCC20);
          return v72 & 1;
        }

        sub_1000073B4(v61, &qword_1006BCC20);
        sub_1000073B4(v65, &qword_1006BCC20);
        (*(v63 + 8))(v89, v62);
      }

      sub_1000073B4(v64, &qword_1006BF070);
LABEL_54:
      v72 = 0;
      return v72 & 1;
    }

    sub_1000073B4(v57, &qword_1006BCC20);

    v52 = v110;
  }

  else
  {
    v39 = v42;
  }

  sub_1000160E4(v39, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  sub_100015C8C(v52, v36, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v33 = v36;
    goto LABEL_17;
  }

  v66 = v107;
  v67 = *(v107 + 32);
  v68 = v105;
  v69 = v36;
  v70 = v108;
  v67(v105, v69, v108);
  sub_100015C8C(v48, v33, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v66 + 8))(v68, v70);
    v52 = v110;
LABEL_17:
    sub_1000160E4(v33, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    sub_100015C8C(v52, v30, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v74 = *v30;

      v30 = v103;
      sub_100015C8C(v48, v103, type metadata accessor for ICSelectionStateModel.ContainerSelection);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v75 = *v30;

        if (v74)
        {
          if (!v75)
          {

            goto LABEL_54;
          }

          sub_1000054A4(0, &qword_1006C4310);
          v76 = v74;
LABEL_41:
          v88 = v76;
          v72 = static NSObject.== infix(_:_:)();

          return v72 & 1;
        }

LABEL_42:
        if (!v75)
        {
          v72 = 1;
          return v72 & 1;
        }

        goto LABEL_54;
      }
    }

    v79 = v48;
    sub_1000160E4(v30, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    v80 = v106;
    sub_100015C8C(v52, v106, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v81 = *v80;

      v82 = v100;
      sub_100015C8C(v79, v100, type metadata accessor for ICSelectionStateModel.ContainerSelection);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v75 = *v82;

        if (!v81)
        {
          goto LABEL_42;
        }

        if (v75)
        {
          v83 = &qword_1006BFBD0;
LABEL_40:
          sub_1000054A4(0, v83);
          v76 = v81;
          goto LABEL_41;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v82 = v80;
    }

    sub_1000160E4(v82, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    v87 = v104;
    sub_100015C8C(v52, v104, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v81 = *v87;

      v87 = v97;
      sub_100015C8C(v79, v97, type metadata accessor for ICSelectionStateModel.ContainerSelection);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v75 = *v87;

        if (!v81)
        {
          goto LABEL_42;
        }

        if (v75)
        {
          v83 = &qword_1006BFEC0;
          goto LABEL_40;
        }

LABEL_52:

        goto LABEL_54;
      }
    }

    sub_1000160E4(v87, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    goto LABEL_54;
  }

  v71 = v99;
  v67(v99, v33, v70);
  v72 = static URL.== infix(_:_:)();
  v73 = *(v66 + 8);
  v73(v71, v70);
  v73(v68, v70);
  return v72 & 1;
}

uint64_t sub_1001C4E38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

BOOL sub_1001C4E8C(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_100006038(a1, v8, &qword_1006BE7A0);
  if (!v9)
  {
    sub_1000073B4(v8, &qword_1006BE7A0);
    goto LABEL_5;
  }

  a2(v3);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v7;
LABEL_6:
  v5 = v4 != 0;

  return v5;
}

uint64_t sub_1001C4F34(void *a1)
{
  v24 = sub_10015DA04(&qword_1006BF088);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_10015DA04(&qword_1006BF090);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_10015DA04(&qword_1006BF098);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_10017CC60(a1, a1[3]);
  sub_1001C5370();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_100009F60(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_10015DA04(&qword_1006BF0A8);
    *v18 = &type metadata for ICSelectionStateModel.SelectionReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100009F60(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1001C53C4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1001C5418();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100009F60(v26);
  return v27;
}

unint64_t sub_1001C5370()
{
  result = qword_1006BF0A0;
  if (!qword_1006BF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF0A0);
  }

  return result;
}

unint64_t sub_1001C53C4()
{
  result = qword_1006BF0B0;
  if (!qword_1006BF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF0B0);
  }

  return result;
}

unint64_t sub_1001C5418()
{
  result = qword_1006BF0B8;
  if (!qword_1006BF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF0B8);
  }

  return result;
}

uint64_t sub_1001C546C(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_1001C4E38(a1, a2);
    JSONDecoder.init()();
    sub_10015DA04(&unk_1006C42C0);
    sub_1001C60F8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1001C60E4(a1, a2);

    return v5;
  }

  return result;
}

void sub_1001C5558()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001BD110(v0 + v2, v4, v5);
}

void sub_1001C55FC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = sub_1001C56A4(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), 1);
  v5 = *v3;
  *v3 = v4;
}

id sub_1001C56A4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_opt_self();
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = [v5 accountFromACAccountIDInURL:v7 context:a2];

  if (!v9)
  {
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    v11 = [objc_opt_self() defaultAccountInContext:a2];
    if (!v11)
    {
      return 0;
    }

    v9 = v11;
  }

  if ([v9 hasAnyCustomFoldersIncludingSystem:0])
  {
    v10 = [v9 objectID];
  }

  else
  {
    v12 = [v9 defaultFolder];
    v10 = [v12 objectID];
  }

  return v10;
}

uint64_t sub_1001C57E8(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v68 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10015DA04(&qword_1006BF0D8);
  __chkstk_darwin(v65);
  v69 = &v62 - v4;
  v5 = sub_10015DA04(&qword_1006BEF28);
  v6 = __chkstk_darwin(v5 - 8);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v62 - v8;
  v9 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10015DA04(&unk_1006BFEF0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v62 - v14;
  v16 = sub_10015DA04(&unk_1006BFEA0);
  v17 = __chkstk_darwin(v16 - 8);
  v71 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v62 - v19;
  v21 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  v70 = a1;
  sub_100006038(a1 + v21, v20, &unk_1006BFEA0);
  v22 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  v23 = v72;
  swift_beginAccess();
  v24 = *(v13 + 56);
  sub_100006038(v20, v15, &unk_1006BFEA0);
  sub_100006038(v23 + v22, &v15[v24], &unk_1006BFEA0);
  v25 = *(v10 + 48);
  if (v25(v15, 1, v9) == 1)
  {
    sub_1000073B4(v20, &unk_1006BFEA0);
    if (v25(&v15[v24], 1, v9) == 1)
    {
      sub_1000073B4(v15, &unk_1006BFEA0);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &unk_1006BFEF0;
    v28 = v15;
LABEL_14:
    sub_1000073B4(v28, v27);
    goto LABEL_15;
  }

  v26 = v71;
  sub_100006038(v15, v71, &unk_1006BFEA0);
  if (v25(&v15[v24], 1, v9) == 1)
  {
    sub_1000073B4(v20, &unk_1006BFEA0);
    sub_1000160E4(v26, type metadata accessor for ICSelectionStateModel.ObjectSelection);
    goto LABEL_6;
  }

  v29 = &v15[v24];
  v30 = v64;
  sub_10001425C(v29, v64, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  v31 = sub_1001C3458(v26, v30);
  sub_1000160E4(v30, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  sub_1000073B4(v20, &unk_1006BFEA0);
  sub_1000160E4(v26, type metadata accessor for ICSelectionStateModel.ObjectSelection);
  sub_1000073B4(v15, &unk_1006BFEA0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v32 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  v33 = v70;
  swift_beginAccess();
  v34 = v66;
  sub_100006038(v33 + v32, v66, &qword_1006BEF28);
  v35 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  v36 = v72;
  swift_beginAccess();
  v37 = *(v65 + 48);
  v38 = v69;
  sub_100006038(v34, v69, &qword_1006BEF28);
  sub_100006038(v36 + v35, v38 + v37, &qword_1006BEF28);
  v39 = *(v67 + 48);
  v40 = v68;
  if (v39(v38, 1, v68) == 1)
  {
    sub_1000073B4(v34, &qword_1006BEF28);
    if (v39(v38 + v37, 1, v40) == 1)
    {
      sub_1000073B4(v38, &qword_1006BEF28);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v41 = v63;
  sub_100006038(v38, v63, &qword_1006BEF28);
  if (v39(v38 + v37, 1, v40) == 1)
  {
    sub_1000073B4(v34, &qword_1006BEF28);
    sub_1000160E4(v41, type metadata accessor for ICSelectionStateModel.ContainerSelection);
LABEL_13:
    v27 = &qword_1006BF0D8;
    v28 = v38;
    goto LABEL_14;
  }

  v44 = v38 + v37;
  v45 = v62;
  sub_10001425C(v44, v62, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  v46 = sub_1001C421C(v41, v45);
  sub_1000160E4(v45, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  sub_1000073B4(v34, &qword_1006BEF28);
  sub_1000160E4(v41, type metadata accessor for ICSelectionStateModel.ContainerSelection);
  sub_1000073B4(v38, &qword_1006BEF28);
  if ((v46 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v47 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  swift_beginAccess();
  v48 = *(v33 + v47);
  v49 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentFirstVisibleObjectIDForContainerObjectID;
  swift_beginAccess();
  v50 = *(v36 + v49);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_15;
    }

    sub_1001C2CF4(v51, v50);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v50)
  {
    goto LABEL_15;
  }

  v54 = *(v33 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult);
  v42 = *(v36 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult);
  if (v54)
  {
    if (!v42)
    {
      return v42 & 1;
    }

    sub_1000054A4(0, &qword_1006BF080);
    v55 = v42;
    v56 = v54;
    v57 = static NSObject.== infix(_:_:)();

    if (v57)
    {
      goto LABEL_28;
    }

LABEL_15:
    LOBYTE(v42) = 0;
    return v42 & 1;
  }

  if (v42)
  {
    goto LABEL_15;
  }

LABEL_28:
  v58 = *(v33 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID);
  v59 = *(v36 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_focusedNoteObjectID);
  LOBYTE(v42) = (v58 | v59) == 0;
  if (v58 && v59)
  {
    sub_1000054A4(0, &qword_1006BFEC0);
    v60 = v59;
    v61 = v58;
    LOBYTE(v42) = static NSObject.== infix(_:_:)();
  }

  return v42 & 1;
}

unint64_t sub_1001C607C()
{
  result = qword_1006C63A0;
  if (!qword_1006C63A0)
  {
    sub_1000054A4(255, &qword_1006BFEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C63A0);
  }

  return result;
}

uint64_t sub_1001C60E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10019671C(a1, a2);
  }

  return a1;
}

unint64_t sub_1001C60F8()
{
  result = qword_1006BF0F0;
  if (!qword_1006BF0F0)
  {
    sub_10017992C(&unk_1006C42C0);
    sub_1001C275C(&qword_1006BF0F8, type metadata accessor for ICSelectionStateModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF0F0);
  }

  return result;
}

unint64_t sub_1001C61AC()
{
  result = qword_1006BF100;
  if (!qword_1006BF100)
  {
    sub_10017992C(&unk_1006C42C0);
    sub_1001C275C(&qword_1006BF0E8, type metadata accessor for ICSelectionStateModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICMarkdownFlavor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICMarkdownFlavor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LearnMoreSmartFoldersFiltersView.FilterSection(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LearnMoreSmartFoldersFiltersView.FilterSection(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICSelectionStateModel.SelectionItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICSelectionStateModel.SelectionItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001C6644()
{
  result = qword_1006BF108;
  if (!qword_1006BF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF108);
  }

  return result;
}

unint64_t sub_1001C669C()
{
  result = qword_1006BF110;
  if (!qword_1006BF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF110);
  }

  return result;
}

unint64_t sub_1001C66F4()
{
  result = qword_1006BF118;
  if (!qword_1006BF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF118);
  }

  return result;
}

unint64_t sub_1001C674C()
{
  result = qword_1006BF120;
  if (!qword_1006BF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF120);
  }

  return result;
}

unint64_t sub_1001C67A4()
{
  result = qword_1006BF128;
  if (!qword_1006BF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF128);
  }

  return result;
}

unint64_t sub_1001C67FC()
{
  result = qword_1006BF130;
  if (!qword_1006BF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF130);
  }

  return result;
}

unint64_t sub_1001C6854()
{
  result = qword_1006BF138;
  if (!qword_1006BF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF138);
  }

  return result;
}

unint64_t sub_1001C68AC()
{
  result = qword_1006BF140;
  if (!qword_1006BF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF140);
  }

  return result;
}

unint64_t sub_1001C6904()
{
  result = qword_1006BF148;
  if (!qword_1006BF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF148);
  }

  return result;
}

unint64_t sub_1001C695C()
{
  result = qword_1006BF150;
  if (!qword_1006BF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF150);
  }

  return result;
}

unint64_t sub_1001C69B4()
{
  result = qword_1006BF158;
  if (!qword_1006BF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF158);
  }

  return result;
}

unint64_t sub_1001C6A0C()
{
  result = qword_1006BF160;
  if (!qword_1006BF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF160);
  }

  return result;
}

unint64_t sub_1001C6A64()
{
  result = qword_1006BF168;
  if (!qword_1006BF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF168);
  }

  return result;
}

unint64_t sub_1001C6ABC()
{
  result = qword_1006BF170;
  if (!qword_1006BF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF170);
  }

  return result;
}

unint64_t sub_1001C6B14()
{
  result = qword_1006BF178;
  if (!qword_1006BF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF178);
  }

  return result;
}

unint64_t sub_1001C6B6C()
{
  result = qword_1006BF180;
  if (!qword_1006BF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF180);
  }

  return result;
}

unint64_t sub_1001C6BC4()
{
  result = qword_1006BF188;
  if (!qword_1006BF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF188);
  }

  return result;
}

unint64_t sub_1001C6C1C()
{
  result = qword_1006BF190;
  if (!qword_1006BF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF190);
  }

  return result;
}

unint64_t sub_1001C6C74()
{
  result = qword_1006BF198;
  if (!qword_1006BF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF198);
  }

  return result;
}

unint64_t sub_1001C6CCC()
{
  result = qword_1006BF1A0;
  if (!qword_1006BF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1A0);
  }

  return result;
}

unint64_t sub_1001C6D24()
{
  result = qword_1006BF1A8;
  if (!qword_1006BF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1A8);
  }

  return result;
}

unint64_t sub_1001C6D7C()
{
  result = qword_1006BF1B0;
  if (!qword_1006BF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1B0);
  }

  return result;
}

unint64_t sub_1001C6DD4()
{
  result = qword_1006BF1B8;
  if (!qword_1006BF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1B8);
  }

  return result;
}

unint64_t sub_1001C6E2C()
{
  result = qword_1006BF1C0;
  if (!qword_1006BF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1C0);
  }

  return result;
}

unint64_t sub_1001C6E84()
{
  result = qword_1006BF1C8;
  if (!qword_1006BF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1C8);
  }

  return result;
}

unint64_t sub_1001C6ED8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064B9F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001C6F24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D686361747461 && a2 == 0xEF6465646F43746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4365746F6ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEF6465646F436E6FLL)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001C7058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4373676174 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001005631A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001005631C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1001C71DC()
{
  result = qword_1006BF1D0;
  if (!qword_1006BF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1D0);
  }

  return result;
}

unint64_t sub_1001C7234()
{
  result = qword_1006BF1D8;
  if (!qword_1006BF1D8)
  {
    type metadata accessor for StringSearchCriteria();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF1D8);
  }

  return result;
}

uint64_t sub_1001C728C()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, qword_1006EF278);
  sub_10002597C(v6, qword_1006EF278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1001C746C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_1001C7768()
{
  sub_10015DA04(&qword_1006BF228);
  v0 = type metadata accessor for StringSearchScope();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100531E30;
  result = (*(v1 + 104))(v3 + v2, enum case for StringSearchScope.general(_:), v0);
  qword_1006EF290 = v3;
  return result;
}

uint64_t sub_1001C784C@<X0>(void *a1@<X8>)
{
  if (qword_1006BC580 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1006EF290;
}

uint64_t sub_1001C78BC(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1001C79AC(uint64_t *a1))(void *a1)
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
  return sub_10017D9E0;
}

uint64_t sub_1001C7A5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC578 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, qword_1006EF278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001C7B04(uint64_t a1)
{
  v2 = sub_1001C818C();

  return static ShowInAppSearchResultsIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1001C7B40()
{
  v0 = sub_10015DA04(&qword_1006BF208);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BF210);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100563300;
  v2._countAndFlagsBits = 0xD000000000000018;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BF218);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1001C7CDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001C7D14();
  *a1 = result;
  return result;
}

uint64_t sub_1001C7D14()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v21 = v19 - v3;
  v4 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v4 - 8);
  v20 = v19 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v19[1] = sub_10015DA04(&qword_1006BF200);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = *(v7 + 104);
  v15(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15(v9, v14, v6);
  v16 = v20;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v13 + 56))(v16, 0, 1, v12);
  v17 = type metadata accessor for IntentDialog();
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  (*(v23 + 104))(v22, enum case for InputConnectionBehavior.default(_:), v24);
  return IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)();
}

unint64_t sub_1001C818C()
{
  result = qword_1006BF220;
  if (!qword_1006BF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF220);
  }

  return result;
}

uint64_t sub_1001C81E0()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006BF230);
  sub_10002597C(v0, qword_1006BF230);
  return static Logger.archiving.getter();
}

uint64_t ICArchiveNotesPreviewer.init(forArchiveAt:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_10015DA04(&qword_1006BF248);
  __chkstk_darwin(v2 - 8);
  v71 = &v62 - v3;
  v83 = type metadata accessor for ICArchiveNotesPreviewer.Note();
  v70 = *(v83 - 8);
  v4 = __chkstk_darwin(v83);
  v87 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = &v62 - v6;
  v7 = sub_10015DA04(&qword_1006BE8D0);
  v84 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v62 - v12;
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v19, a1, v16);
  type metadata accessor for ICArchivePreviewer();
  swift_allocObject();
  v20 = v81;
  v21 = ICArchivePreviewer.init(forArchiveAt:)(v19);
  if (v20)
  {
    v22 = v20;
    (*(v17 + 8))(a1, v16);
    swift_deallocPartialClassInstance();
    return v22;
  }

  v64 = a1;
  v81 = v15;
  v63 = v13;
  v67 = 0;
  v79 = v10;
  v65 = v17;
  v66 = v16;
  v23 = v69;
  *&v69[OBJC_IVAR____TtC11MobileNotes23ICArchiveNotesPreviewer_archivePreviewer] = v21;
  v24 = v21;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = *(v25 + 16);
  v27 = v23;
  if (v26)
  {
    v28 = sub_1001CC258(*(v25 + 16), 0);
    v29 = v84;
    v30 = sub_1001C9EEC(v86, &v28[(*(v84 + 80) + 32) & ~*(v84 + 80)], v26, v25);
    v80 = v86[2];
    v77 = v86[4];
    v78 = v86[3];
    swift_bridgeObjectRetain_n();
    sub_10019E530();
    if (v30 != v26)
    {
      __break(1u);
      goto LABEL_26;
    }

    v31 = v66;
    v32 = v65;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
    v31 = v66;
    v32 = v65;
    v29 = v84;
  }

  v86[0] = v28;
  v33 = v67;
  sub_1001CC3E8(v86);
  v67 = v33;
  if (!v33)
  {

    v34 = v86[0][2];
    v35 = v63;
    if (v34)
    {
      v37 = *(v29 + 16);
      v36 = v29 + 16;
      v78 = v37;
      v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
      v62 = v86[0];
      v39 = v86[0] + v38;
      v40 = *(v36 + 56);
      v76 = (v36 + 72);
      v77 = v40;
      v84 = v36;
      v75 = (v36 - 8);
      v74 = (v70 + 56);
      v73 = (v70 + 48);
      v80 = _swiftEmptyArrayStorage;
      v72 = enum case for ICObjectReferences.note<A>(_:);
      v41 = v71;
      v42 = v81;
      do
      {
        v43 = v78;
        v78(v42, v39, v7);
        v43(v35, v42, v7);
        v44 = v35;
        v45 = v79;
        v43(v79, v44, v7);
        v46 = (*v76)(v45, v7);
        v47 = *v75;
        if (v46 == v72)
        {
          v47(v45, v7);
          ICObjectReferences.identifier.getter();
          v48 = ICObjectReferences.title.getter();
          v50 = v49;
          v47(v44, v7);
          v47(v42, v7);
          v51 = v83;
          v52 = (v87 + *(v83 + 20));
          *v52 = v48;
          v52[1] = v50;
          v41 = v71;
          sub_1001CDB68(v87, v71, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v53 = 0;
        }

        else
        {
          v47(v44, v7);
          v47(v42, v7);
          v47(v45, v7);
          v53 = 1;
          v51 = v83;
        }

        v35 = v44;
        (*v74)(v41, v53, 1, v51);
        if ((*v73)(v41, 1, v51) == 1)
        {
          sub_1000073B4(v41, &qword_1006BF248);
        }

        else
        {
          sub_1001CDB68(v41, v82, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v54 = v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1001CBEEC(0, v54[2] + 1, 1, v54, &qword_1006BF490, &unk_1005381E8, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v56 = v54[2];
          v55 = v54[3];
          if (v56 >= v55 >> 1)
          {
            v54 = sub_1001CBEEC(v55 > 1, v56 + 1, 1, v54, &qword_1006BF490, &unk_1005381E8, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v54[2] = v56 + 1;
          v57 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v80 = v54;
          sub_1001CDB68(v82, v54 + v57 + *(v70 + 72) * v56, type metadata accessor for ICArchiveNotesPreviewer.Note);
        }

        v42 = v81;
        v39 = v77 + v39;
        --v34;
      }

      while (v34);

      v58 = v64;
      v27 = v69;
      v59 = ObjectType;
      v31 = v66;
      v32 = v65;
      v60 = v80;
    }

    else
    {

      v60 = _swiftEmptyArrayStorage;
      v58 = v64;
      v59 = ObjectType;
    }

    *&v27[OBJC_IVAR____TtC11MobileNotes23ICArchiveNotesPreviewer_notes] = v60;
    v85.receiver = v27;
    v85.super_class = v59;
    v22 = objc_msgSendSuper2(&v85, "init", v62);
    (*(v32 + 8))(v58, v31);
    return v22;
  }

LABEL_26:

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ICArchiveNotesPreviewer.Note()
{
  result = qword_1006BF2E8;
  if (!qword_1006BF2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*ICArchiveNotesPreviewer.startPreviewing(_:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3))(uint64_t, uint64_t)
{
  v7 = sub_10015DA04(&qword_1006BE8D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-v9];
  v11 = *(v3 + OBJC_IVAR____TtC11MobileNotes23ICArchiveNotesPreviewer_archivePreviewer);
  sub_1001C8DCC(a1, &v14[-v9]);

  v12 = sub_1002EC36C(v10, v11, a2, a3);

  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_1001C8DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10015DA04(&qword_1006BF480);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = *(v2 + OBJC_IVAR____TtC11MobileNotes23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v9 = *(v8 + 24);
  v19 = a1;

  sub_10028D75C(sub_1001CDC24, v9, v7);

  v10 = sub_10015DA04(&qword_1006BE8D0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_1000073B4(v7, &qword_1006BF480);
  if (qword_1006BC588 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10002597C(v12, qword_1006BF230);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Object to be previewed does not exist", v15, 2u);
  }

  sub_1001CDC44();
  swift_allocError();
  *v16 = 4;
  return swift_willThrow();
}

void sub_1001C9044(void *a1, char a2, void (*a3)(void *, void))
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v7[3] = sub_1000054A4(0, &qword_1006C1B60);
    v7[0] = a1;
    v6 = a1;
    a1 = sub_1001C9150(v7, &qword_1006C1420, ICNote_ptr, &qword_1006BF468);
    sub_100009F60(v7);
  }

  a3(a1, a2 & 1);
  sub_1001CDC18(a1, a2 & 1);
}

uint64_t sub_1001C9150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2A0(a1, v18);
  v11 = sub_1000054A4(0, a2);
  if (swift_dynamicCast())
  {
    return v17[0];
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  strcpy(v17, "Cannot cast ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  sub_10000A2A0(a1, v18);
  Mirror.init(reflecting:)();
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = *(v8 + 8);
  v14(v10, v7);
  v15._countAndFlagsBits = 544432416;
  v15._object = 0xE400000000000000;
  String.append(_:)(v15);
  v18[3] = sub_10015DA04(a4);
  v18[0] = v11;
  Mirror.init(reflecting:)();
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v14(v10, v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C93D4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2A0(a1, v17);
  v10 = a2(0);
  if (swift_dynamicCast())
  {
    return v16[0];
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  strcpy(v16, "Cannot cast ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  sub_10000A2A0(a1, v17);
  Mirror.init(reflecting:)();
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = *(v7 + 8);
  v13(v9, v6);
  v14._countAndFlagsBits = 544432416;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  v17[3] = sub_10015DA04(a3);
  v17[0] = v10;
  Mirror.init(reflecting:)();
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v13(v9, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C9628(uint64_t a1)
{
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2A0(a1, v13);
  v6 = sub_10015DA04(&qword_1006BF440);
  if (swift_dynamicCast())
  {
    return v12[0];
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  strcpy(v12, "Cannot cast ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  sub_10000A2A0(a1, v13);
  Mirror.init(reflecting:)();
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  v10._countAndFlagsBits = 544432416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v13[3] = sub_10015DA04(&qword_1006BF448);
  v13[0] = v6;
  Mirror.init(reflecting:)();
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v9(v5, v2);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ICArchiveNotesPreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BE8D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  sub_1001C8DCC(a1, &v7[-v4]);
  ICArchivePreviewer.stopPreviewing(_:)(v5);
  return (*(v3 + 8))(v5, v2);
}

id ICArchiveNotesPreviewer.state(of:)(uint64_t a1)
{
  v3 = sub_10015DA04(&qword_1006BE8D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC11MobileNotes23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v8 = *(v7 + 24);

  sub_1001C8DCC(a1, v6);
  if (*(v8 + 16) && (v9 = sub_1002DF478(v6), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 24 * v9;
    v12 = *(v11 + 16);
    v13 = *v11;
    sub_1001CD894(*v11, *(v11 + 8), *(v11 + 16));
    (*(v4 + 8))(v6, v3);

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else if (v12)
    {
      v16[3] = sub_1000054A4(0, &qword_1006C1B60);
      v16[0] = v13;
      v15 = sub_1001C9150(v16, &qword_1006C1420, ICNote_ptr, &qword_1006BF468);
      sub_100009F60(v16);
      return v15;
    }

    else
    {

      return v13;
    }
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }
}

uint64_t sub_1001C9C48()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006BE8D0);
  ICObjectReferences.identifier.getter();
  v4 = static URL.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

id ICCloudSyncingObject.MoveAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ICArchiveNotesPreviewer.Note.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ICArchiveNotesPreviewer.Note() + 20));

  return v1;
}

Swift::Int ICArchiveNotesPreviewer.Note.hashValue.getter()
{
  Hasher.init(_seed:)();
  URL.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001C9EB0()
{
  Hasher.init(_seed:)();
  URL.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C9EEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_10015DA04(&qword_1006BE8D0);
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1001CA1B8(void *result, void *a2, unint64_t a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v3;
  if (*v3 >> 62)
  {
    v14 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v14;
    v8 = result;
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = *(v4 + 8);
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = *(v4 + 40);
  *&v29 = v7;
  *(&v29 + 1) = v8;
  v26 = v9;
  *&v31 = v9;
  *(&v31 + 1) = v10;
  v32 = v11;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_21:
    v16 = v30;
    *v6 = v29;
    *(v6 + 1) = v16;
    *(v6 + 2) = v31;
    *(v6 + 24) = v32;
    return a3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!v8)
    {
LABEL_20:
      HIBYTE(v32) = 1;
      a3 = v8;
      goto LABEL_21;
    }

    v4 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v24 = v7 + 32;
    v25 = v7 & 0xFFFFFFFFFFFFFF8;
    *(&v29 + 1) = v8 - 1;
    v23 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = a2;
          v13 = *(v24 + 8 * v4);
          if (v11)
          {
LABEL_12:

            v8 = 0;
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  v12 = a2;
  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_17:
  result = v26(&v27, &v30);
  if (v28)
  {
    v15 = 0;
LABEL_19:

    LOBYTE(v32) = 1;
    v8 = v15;
    goto LABEL_20;
  }

  v17 = v27;
  *v12 = v13;
  v12[1] = v17;
  if (a3 == 1)
  {
    goto LABEL_21;
  }

  v18 = v12 + 3;
  v15 = 1;
  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_20;
    }

    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_35;
    }

    *(&v29 + 1) = v4;
    if (v23)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v4 >= *(v25 + 16))
      {
        goto LABEL_37;
      }

      v21 = *(v24 + 8 * v4);
    }

    v13 = v21;
    result = v26(&v27, &v30);
    if (v28 == 1)
    {
      goto LABEL_19;
    }

    v22 = v27;
    *(v18 - 1) = v13;
    *v18 = v22;
    ++v15;
    v18 += 2;
    if (v19 == a3)
    {
      goto LABEL_21;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

void *sub_1001CA45C(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000054A4(0, a5);
  sub_100005B0C(a7, a5);
  result = Set.Iterator.init(_cocoa:)();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000054A4(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

void *sub_1001CA6C0(void *result, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  a5(0);
  sub_1001CDBD0(a6, a7);
  result = Set.Iterator.init(_cocoa:)();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

uint64_t sub_1001CA8FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s3TagVMa();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1001CDB04(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32);
      v24 = v23;
      v25 = v31;
      sub_1001CDB68(v24, v31, _s3TagVMa);
      sub_1001CDB68(v25, a2, _s3TagVMa);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1001CAC30(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015DA04(&qword_1006BF470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BFE10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001CAD64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BF460);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001CAE70(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE8F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001CAF7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015DA04(&qword_1006BF370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BF378);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001CB0FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015DA04(&qword_1006BF430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BF438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001CB290(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10015DA04(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1001CB3C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BF3A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001CB55C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10015DA04(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_1001CB6C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015DA04(&unk_1006C8730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BF3C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001CB830(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10015DA04(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1001CB92C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015DA04(&qword_1006BF408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BE558);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001CBB48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015DA04(&qword_1006BF330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BF338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1001CBCB4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10015DA04(a5);
  v14 = *(sub_10015DA04(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10015DA04(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1001CBEEC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10015DA04(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1001CC0C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BF328);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001CC1D4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10015DA04(&qword_1006BE8C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1001CC258(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10015DA04(&qword_1006BE8C8);
  v4 = *(sub_10015DA04(&qword_1006BE8D0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001CC360(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_1001CC3E8(void **a1)
{
  v2 = *(sub_10015DA04(&qword_1006BE8D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001B39E4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1001CC49C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1001CC49C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10015DA04(&qword_1006BE8D0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10015DA04(&qword_1006BE8D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001CC87C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001CC5E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001CC5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10015DA04(&qword_1006BE8D0);
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      sub_1001CDC98();
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001CC87C(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_10015DA04(&qword_1006BE8D0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v125 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v133 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v118 - v16;
  result = __chkstk_darwin(v15);
  v139 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1001B36CC(a4);
    }

    v141 = result;
    v113 = *(result + 16);
    if (v113 >= 2)
    {
      while (*a3)
      {
        a4 = v113 - 1;
        v114 = *(result + 16 * v113);
        v115 = result;
        v116 = *(result + 16 * (v113 - 1) + 40);
        sub_1001CD278(*a3 + *(v10 + 72) * v114, *a3 + *(v10 + 72) * *(result + 16 * (v113 - 1) + 32), *a3 + *(v10 + 72) * v116, v5);
        if (v6)
        {
        }

        if (v116 < v114)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1001B36CC(v115);
        }

        if (v113 - 2 >= *(v115 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v115[16 * v113];
        *v117 = v114;
        *(v117 + 1) = v116;
        v141 = v115;
        sub_1001B3640(a4);
        result = v141;
        v113 = *(v141 + 16);
        if (v113 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v136 = (v10 + 8);
  v137 = v10 + 16;
  v135 = (v10 + 32);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v120 = a4;
  v140 = v9;
  v119 = v10;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v127 = v24;
      v27 = *(v25 + 16);
      v27(v139, v5, v23);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v122 = v22;
      v30 = v138;
      v130 = v27;
      v27(v138, v28, v23);
      v31 = sub_1001CDC98();
      v32 = v139;
      v129 = v31;
      LODWORD(v132) = dispatch thunk of static Comparable.< infix(_:_:)();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v128 = v33;
      result = (v33)(v32, v23);
      v34 = v122 + 2;
      v134 = v26;
      v35 = v127 + v26 * (v122 + 2);
      while (1)
      {
        v36 = v131;
        if (v131 == v34)
        {
          break;
        }

        v38 = v139;
        v37 = v140;
        v39 = v130;
        (v130)(v139, v35, v140);
        v40 = v6;
        v41 = v138;
        v39(v138, v5, v37);
        v42 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v128;
        v128(v43, v37);
        result = v44(v38, v37);
        ++v34;
        v35 += v134;
        v5 += v134;
        if ((v132 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v122;
      a3 = v123;
      v10 = v119;
      v21 = v126;
      a4 = v120;
      v9 = v140;
      if (v132)
      {
        if (v36 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v36)
        {
          v45 = v134 * (v36 - 1);
          v5 = v36 * v134;
          v131 = v36;
          v46 = v36;
          v47 = v122;
          v48 = v122 * v134;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v132 = *v135;
              (v132)(v125, v50 + v48, v140, v21);
              if (v48 < v45 || v50 + v48 >= v50 + v5)
              {
                v49 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v140;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v50 + v45, v125, v49);
              a3 = v123;
              v21 = v126;
            }

            ++v47;
            v45 -= v134;
            v5 -= v134;
            v48 += v134;
          }

          while (v47 < v46);
          v10 = v119;
          a4 = v120;
          v9 = v140;
          v22 = v122;
          v36 = v131;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v126;
    }

    else
    {
      result = sub_1001B36E0(0, *(v126 + 2) + 1, 1, v126);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      result = sub_1001B36E0((v52 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_133;
    }

    v127 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_1001CD278(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1001B36CC(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v141 = v93;
        result = sub_1001B3640(v5);
        v21 = v141;
        v53 = *(v141 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v120;
    v9 = v140;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v118 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v134 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = v100 - v36;
  v132 = v97;
  v124 = v98;
  a4 = v97 + v36 * v98;
  v127 = v5;
LABEL_85:
  v130 = v99;
  v131 = v36;
  v128 = a4;
  v129 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v139;
    v105 = v134;
    (v134)(v139, a4, v9, v21);
    v106 = v138;
    v105(v138, v103, v140);
    sub_1001CDC98();
    v107 = dispatch thunk of static Comparable.< infix(_:_:)();
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v131 + 1;
      v99 = &v130[v124];
      v102 = v129 - 1;
      a4 = v128 + v124;
      v5 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v22 = v122;
      a3 = v123;
      v10 = v119;
      if (v127 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v110 = *v135;
    v111 = v133;
    (*v135)(v133, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1001CD278(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_10015DA04(&qword_1006BE8D0);
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v53 = &v44 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
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

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v29 = -v14;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v18;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_1001CDC98();
          LOBYTE(v37) = dispatch thunk of static Comparable.< infix(_:_:)();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
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

    v52 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v14;
      v49 = (v8 + 8);
      do
      {
        v20 = v53;
        v21 = v56;
        v22 = v50;
        v50(v53, a2, v56);
        v23 = v54;
        v22(v54, a4, v21);
        sub_1001CDC98();
        v24 = dispatch thunk of static Comparable.< infix(_:_:)();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v20, v21);
        if (v24)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_10049FAD0(&v59, &v58, &v57);
  return 1;
}

uint64_t _s11MobileNotes09ICArchiveB9PreviewerC4NoteV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (static URL.== infix(_:_:)())
  {
    v4 = *(type metadata accessor for ICArchiveNotesPreviewer.Note() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

id sub_1001CD894(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      return swift_errorRetain();
    case 1:

      return result;
    case 0:
      v4 = result;
  }

  return result;
}

void sub_1001CD99C()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100006994();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001CDA20(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1001CDA3C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1001CDA50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001CDA98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1001CDADC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}
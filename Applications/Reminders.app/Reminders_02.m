size_t sub_100038C5C(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100785F90, &unk_100641CD8, &qword_10076BA58);
  *v3 = result;
  return result;
}

size_t sub_100038C9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_100058000(a5);
  v14 = *(sub_100058000(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
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
  v19 = *(sub_100058000(a7) - 8);
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

uint64_t sub_100038EB4()
{
  v1 = *(sub_100058000(&qword_10076BA58) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  (*(*(v6 - 8) + 8))(v5, v6);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

UIMenu sub_100038FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v14 = sub_100058000(a4);
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v20 = v40 - v19;
  v21 = *(a1 + 16);
  if (v21 < 2)
  {
    return 0;
  }

  v49 = a7;
  v50 = &_swiftEmptyArrayStorage;
  v48 = v16;
  v42 = a3;
  v40[0] = a2;
  v22 = v17;
  v23 = v18;
  specialized ContiguousArray.reserveCapacity(_:)();
  v24 = *(v22 + 80);
  v25 = a1 + ((v24 + 32) & ~v24);
  v26 = sub_100003540(0, &qword_10076BA60);
  v44 = *(v22 + 72);
  v45 = v26;
  v46 = v24;
  v47 = v14;
  v43 = (v24 + 16) & ~v24;
  v40[1] = a6;
  v41 = (v23 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  do
  {
    sub_10000794C(v25, v20, v10);
    v27 = v10;
    v28 = a5;
    v29 = v48;
    sub_10000794C(v20, v48, v27);
    v30 = v41;
    v31 = swift_allocObject();
    v32 = v29;
    a5 = v28;
    v10 = v27;
    sub_100016588(v32, v31 + v43, v27);
    v33 = (v31 + v30);
    v34 = v42;
    *v33 = v40[0];
    v33[1] = v34;

    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000079B4(v20, v10);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v25 += v44;
    --v21;
  }

  while (v21);
  v35 = v50;
  if (v50 >> 62)
  {
    sub_100003540(0, &qword_10076C550);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    preferredElementSize = v35;
  }

  sub_100003540(0, &unk_10076B890);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v51.value.super.isa = 0;
  v51.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v51, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v39);
}

uint64_t sub_100039354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 48) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 80);
  v15 = v9 + v14 + 16;
  v16 = v10 + v14 + 16;

  v13(v15 & ~v14, v16 & ~v14, v11);
  return a1;
}

uint64_t sub_100039448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = (a1 + *(v5 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(*(a2 + 16) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);

  return v8(v9);
}

uint64_t sub_10003950C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v5 = sub_100058000(&qword_10076B998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_10076B9A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v20 - v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v21 = a2;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100782E90);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v20 = v8;
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "TTRIAccountsListsPresenter: presentation tree update END", v18, 2u);
      v8 = v20;
    }

    TTRModuleState.modelDidLoad(defersResolveOverride:)(2);

    if (*(v14 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction + 8) == 255)
    {
    }

    else
    {
      if (v21)
      {
        v19 = &enum case for TTRTreeViewUpdates.reload<A>(_:);
      }

      else
      {
        TTRAccountsListsViewModel.diff(with:)();
        sub_100058000(&qword_10076B9A8);
        (*(v6 + 16))(v12, v8, v5);
        static TTRTreeViewAnimationByType.fading.getter();
        (*(v6 + 8))(v8, v5);
        v19 = &enum case for TTRTreeViewUpdates.incremental<A>(_:);
      }

      (*(v10 + 104))(v12, *v19, v9);
      sub_100449828(v12);

      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_10003988C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1000398D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077A670);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&qword_10076D948);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for TTRIAccountsListsItemIntermediateViewModel() + 20);
  v15 = *(v11 + 48);
  sub_10000794C(a1 + v14, v13, &unk_10077A660);
  sub_10000794C(a2 + v14, &v13[v15], &unk_10077A660);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000079B4(v13, &unk_10077A660);
      return 1;
    }

    goto LABEL_7;
  }

  sub_10000794C(v13, v10, &unk_10077A660);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1000079B4(v13, &qword_10076D948);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_100039C04();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_1000079B4(v13, &unk_10077A660);
  return (v19 & 1) != 0;
}

unint64_t sub_100039C04()
{
  result = qword_10076D950;
  if (!qword_10076D950)
  {
    sub_10005D20C(&qword_10077A670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076D950);
  }

  return result;
}

uint64_t sub_100039C68(uint64_t a1)
{
  v4 = *(type metadata accessor for REMAccountsListDataView.Model() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100039D60(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100039D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v7 = type metadata accessor for TTRPermissionConfiguration();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = sub_100058000(&qword_100783158);
  v5[14] = swift_task_alloc();
  sub_100058000(&qword_100783148);
  v5[15] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[16] = v8;
  v5[17] = type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v5[19] = v9;
  *v9 = v5;
  v9[1] = sub_10003A4E0;

  return sub_100039F00(v8, a4);
}

uint64_t sub_100039F00(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for TTRPrivacyType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for TTRInlineRequestPresentationState();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_10003A050, v6, v5);
}

uint64_t sub_10003A050()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v0[4] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v0[2] = v4;
  v0[14] = v4;
  (*(v2 + 104))(v1, enum case for TTRPrivacyType.notifications(_:), v3);

  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = type metadata accessor for TTRIPrivacyChecker();
  *v5 = v0;
  v5[1] = sub_10003A150;
  v7 = v0[10];
  v8 = v0[7];

  return TTRPrivacyChecker.inlineRequestPresentationState(for:)(v7, v8, v6, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10003A150()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);

  v5 = *(v1 + 104);
  v6 = *(v1 + 96);

  return _swift_task_switch(sub_10003A2F0, v6, v5);
}

void sub_10003A2F0()
{
  v1 = (*(v0[9] + 88))(v0[10], v0[8]);
  if (v1 == enum case for TTRInlineRequestPresentationState.hidden(_:))
  {

    v2 = 1;
LABEL_8:
    v3 = v0[3];
    v4 = type metadata accessor for TTRPermissionConfiguration();
    (*(*(v4 - 8) + 56))(v3, v2, 1, v4);

    v5 = v0[1];

    v5();
    return;
  }

  if (v1 == enum case for TTRInlineRequestPresentationState.initial(_:))
  {

    static TTRPermissionConfiguration.notificationPermissionRequest()();
LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  if (v1 == enum case for TTRInlineRequestPresentationState.reprompt(_:))
  {

    static TTRPermissionConfiguration.notificationPermissionDisabled()();
    goto LABEL_7;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);

  sub_1003F9818("Unknown presentation state", 26, 2);
}

uint64_t sub_10003A4E0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003A61C, v1, v0);
}

uint64_t sub_10003A61C()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];

  v7 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_permissionRequest;
  swift_beginAccess();
  v8 = *(v3 + 48);
  sub_10000794C(v1, v2, &qword_100783148);
  sub_10000794C(v6 + v7, v2 + v8, &qword_100783148);
  v9 = *(v5 + 48);
  if (v9(v2, 1, v4) == 1)
  {
    if (v9(v2 + v8, 1, v0[10]) == 1)
    {
      sub_1000079B4(v0[14], &qword_100783148);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v10 = v0[10];
  sub_10000794C(v0[14], v0[15], &qword_100783148);
  v11 = v9(v2 + v8, 1, v10);
  v12 = v0[15];
  if (v11 == 1)
  {
    (*(v0[11] + 8))(v0[15], v0[10]);
LABEL_6:
    sub_1000079B4(v0[14], &qword_100783158);
LABEL_7:
    v13 = v0[16];
    v14 = v0[9];
    swift_beginAccess();
    sub_100452A9C(v13, v6 + v7);
    swift_endAccess();
    sub_10001AFE0(v14, 0, 2, 0);
    goto LABEL_8;
  }

  v17 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[10];
  (*(v19 + 32))(v18, v2 + v8, v20);
  sub_10001F128(&qword_100783160, &type metadata accessor for TTRPermissionConfiguration);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v19 + 8);
  v22(v18, v20);
  v22(v12, v20);
  sub_1000079B4(v17, &qword_100783148);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_1000079B4(v0[16], &qword_100783148);

  v15 = v0[1];

  return v15();
}

void sub_10003A924()
{
  v0 = [objc_opt_self() mainSystem];
  [v0 setNeedsRebuild];
}

uint64_t sub_10003A9B8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10003AA2C@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  a2[3] = *a1;
  a2[4] = &off_1007211E8;
  *a2 = a1;
}

uint64_t sub_10003AA7C@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = &off_1007211E8;
  *a1 = v1;
}

uint64_t sub_10003AAE8(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1007673A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100786F30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did load root module", v6, 2u);
  }

  return a2();
}

uint64_t sub_10003AC00()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100786F30);
  v1 = sub_100003E30(v0, qword_100786F30);
  if (qword_100767298 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A8718);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10003ACD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersScrollViewResolvedInsets(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersScrollViewResolvedInsets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTRITemplateSavingDismissAnimationCoordinator.SourceView(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for TTRIPinnedListControl.ControlMargins.NoImageMargins(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIPinnedListControl.ControlMargins.NoImageMargins(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_10003AE08(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10003AE78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10003AF44@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003AFE4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = type metadata accessor for TTRListBadgeView.Shape();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for TTRListBadgeView.ImageParams();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[7]];

  return v16(v17, a2, v15);
}

char *sub_10003B15C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for TTRListBadgeView.Shape();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for TTRListBadgeView.ImageParams();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10003B2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100768830);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UICellConfigurationState();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003B3C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100058000(&qword_100768830);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UICellConfigurationState();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10003B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UICellConfigurationState();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003B584(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UICellConfigurationState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003B680()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_10003B6D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003B718()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B750()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B7C0()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003B808()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003B900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003B9B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100058000(&unk_10076BB50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10003BA74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100058000(&unk_10076BB50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003BB28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003BB68()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BBB8()
{
  v1 = type metadata accessor for TimeZone();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void *_s9Reminders10NodeChangeVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_10003BD2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BD64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003BDA0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10003BDEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BE34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003BE44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BE7C()
{

  sub_100004758(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003BED4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s9Reminders33TTRIGroupMembershipViewControllerC8ArgumentVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  swift_unknownObjectRetain();
  v4 = v3;
  return a1;
}

uint64_t sub_10003BF64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BF9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *_s9Reminders31TTRILearnMoreTagsViewControllerC8ArgumentVwCP_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_10003C0B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C2C0()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10003C434()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003C4E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100061F90(v1);
}

void **_s9Reminders39ContentConfigurationForContentStackViewVwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_10003C594()
{
  v1 = type metadata accessor for TTRTemplateSharingAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003C66C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003C6A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C6DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C714()
{
  v1 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003C874(uint64_t a1)
{
  result = sub_1001013F4(&qword_10076B5A8, type metadata accessor for TTRIAccountsListsViewController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003C8CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  if (*a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = *(v2 + 24);
  if (*(v2 + 32))
  {
    v12 = -1;
  }

  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v14 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v14, v4);
  (*(v5 + 104))(v8, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  LOBYTE(v14) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_31;
  }

  result = swift_beginAccess();
  v8 = *(v2 + 64);
  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_31:
    do
    {
LABEL_18:
      if (*a1 >> 62)
      {
LABEL_23:
        result = _CocoaArrayWrapper.endIndex.getter();
        v20 = result - v11;
        if (!__OFSUB__(result, v11))
        {
LABEL_20:
          *(v2 + 40) = v20;
          *(v2 + 48) = 0;
          return result;
        }
      }

      else
      {
        result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = result - v11;
        if (!__OFSUB__(result, v11))
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_26:
      result = _CocoaArrayWrapper.endIndex.getter();
      v17 = result;
    }

    while (!result);
  }

  if (v17 >= 1)
  {

    v18 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v8 + 8 * v18 + 32);
      }

      *(v19 + 24) = v13;
      *(v19 + 32) = 0;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21[1] = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v18;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10003C8CC(a1);
    }

    while (v17 != v18);

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003CC30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CC68()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CCA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003CCDC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003CD18()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CD50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003CD88()
{
  v1 = (type metadata accessor for TTRIAccountsListsViewUpdates() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_100058000(&qword_10076B9A0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  if (*(v0 + v3 + v1[7] + 8))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003CE90()
{
  v1 = (sub_100058000(&unk_10078D400) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Account();
  (*(*(v6 - 8) + 8))(v5, v6);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10003CFB0()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003D0C4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void _s9Reminders38TTRIBoardColumnDraggingAnimationSourceV8SnapshotVwxx_0(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t sub_10003D1EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRRectCorners();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10003D298(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRRectCorners();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D3E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003D548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void *_s9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundViewC4FillVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_10003D638()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D670()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D6A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D6E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003D718()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003D780()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003D868()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D8A0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003D928()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D960()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003D9A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003D9F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DA40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003DA78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DAB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003DB08()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003DB48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DB88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DBC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DC00()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003DC48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003DC90()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t _s9Reminders20TTRWelcomeInteractorC21EligibleAccountResultVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_10003DD2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRIRemindersListCellPresentationStates();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TTRRemindersListItemSeparatorStates();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10003DE50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TTRIRemindersListCellPresentationStates();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TTRRemindersListItemSeparatorStates();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003DF74()
{
  v1 = type metadata accessor for TTRListOrCustomSmartList();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003E038()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E070()
{
  v1 = type metadata accessor for TTRReminderDetailSubject();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003E160()
{
  v1 = type metadata accessor for TTRReminderDetailSubject();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v12, v10 | 7);
}

uint64_t sub_10003E2E4()
{
  v1 = type metadata accessor for TTRReminderDetailSubject();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003E3D4()
{
  v1 = type metadata accessor for TTRReminderDetailSubject();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v12, v10 | 7);
}

uint64_t sub_10003E558()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E590()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10003E5D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E610()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003E648()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E6D4()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003E71C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003E7A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E7DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E820()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E864()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E8B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E8F8()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003E940()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E980()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRSection();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003EAA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRSection();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10003EBA4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003EBE4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EC1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EC54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EC90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10003ED3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003EDE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100058000(&qword_10076FE00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10003EE9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100058000(&qword_10076FE00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003EF50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EF88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EFC4()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003F00C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F044()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = &unk_1007759C0;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v7 = &unk_100770AB8;
  }

  v8 = *(sub_100058000(v7) + 48);
  v9 = type metadata accessor for TTRSection();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
LABEL_6:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003F178()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10003F1B0()
{
  v1 = [*v0 saveRequest];

  return v1;
}

id sub_10003F1E8()
{
  v1 = [*v0 storage];

  return v1;
}

id sub_10003F220()
{
  v1 = [*v0 objectID];

  return v1;
}

id sub_10003F258()
{
  v1 = [*v0 accountID];

  return v1;
}

id sub_10003F294()
{
  v1 = [*v0 color];

  return v1;
}

uint64_t _s9Reminders26TTRListDetailSavedObjectIDVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

uint64_t sub_10003F314()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16, v4 | 7);
}

uint64_t sub_10003F3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003F4AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003F568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100776880);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003F634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100058000(&qword_100776880);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003F6FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F734()
{
  v1 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003F7BC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003F814()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10003F934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnyTip();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_10003FA1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FA58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003FA90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003FB84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FBBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003FBFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t sub_10003FC34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003FCA0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10003FD24(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 36)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10003FDD0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 36)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s9Reminders30TTRIAddReminderBarButtonModuleC9ViewModelVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_10003FEC0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FEF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003FF38()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003FF9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10003FFE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_100040028()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040060()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040098()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004015C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000401F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000402B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100040370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for TTRListColors.Color();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1000404A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for TTRListColors.Color();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000405C4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100040620()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040658()
{
  v1 = type metadata accessor for TTRTemplateSharingAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100040724()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000407E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000408F4()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t _s9Reminders28TTRIRemindersCommonPresenterC22AttachImportingContextVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_10004097C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000409B4()
{
  v1 = *(sub_100058000(&qword_100775608) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for REMRDLUserOperationDetail();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100040AF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040B28()
{
  v1 = type metadata accessor for TTRListOrCustomSmartList();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100040C0C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100040D3C()
{
  v1 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100040DD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040E1C()
{
  v1 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100040ED8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040F3C()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100040F98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040FD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041010()
{
  v1 = *(type metadata accessor for TTRIRemindersListNavigationBarEditingTarget() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041124()
{
  v1 = *(type metadata accessor for TTRIRemindersListNavigationBarEditingTarget() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100058000(&qword_100775740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_1000412D8()
{
  v1 = sub_100058000(&qword_100775740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004136C()
{
  swift_unknownObjectRelease();

  sub_100004758(v0 + 48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1000413CC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10004141C()
{
  v1 = *(sub_100058000(&unk_10076FCD0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041544()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000415F0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041638()
{
  v1 = *(sub_100058000(&qword_1007757F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041798()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = (v17 + 24) & ~v17;
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v16 = *(v5 + 64);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v15 = *(v9 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v9 + 8);
    v11(v0 + v7, v8);
  }

  else
  {

    v11 = *(v9 + 8);
  }

  v12 = (v7 + v16 + v10) & ~v10;
  v13 = (((((((v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11(v0 + v12, v8);

  return _swift_deallocObject(v0, v13 + 8, v17 | v6 | v10 | 7);
}

uint64_t sub_1000419EC()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v16 = *(v2 + 80);
  v3 = (v16 + 24) & ~v16;
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v15 = *(v5 + 64);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v14 = *(v9 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v9 + 8);
    v11(v0 + v7, v8);
  }

  else
  {

    v11 = *(v9 + 8);
  }

  v12 = (v7 + v15 + v10) & ~v10;
  v11(v0 + v12, v8);

  return _swift_deallocObject(v0, v12 + v14, v16 | v6 | v10 | 7);
}

uint64_t sub_100041C00()
{
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v12 = v2 | v7;
  v9 = (((((((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v9 + 8, v12 | 7);
}

uint64_t sub_100041DC0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041E28()
{
  v1 = *(sub_100058000(&qword_100775608) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  v5 = type metadata accessor for REMRDLUserOperationDetail();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041FE0()
{
  v1 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000420D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042108()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100042150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042194()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100042228()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100042378()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004248C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004256C()
{
  v1 = sub_100058000(&qword_100775740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000426D0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1000427F4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100042914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100042980(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100042A04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100058000(&unk_10076BB50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 96);

    return v9(v10, a2, v8);
  }
}

void *sub_100042AC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100058000(&unk_10076BB50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 96);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100042CA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100042CDC@<X0>(uint64_t *a1@<X8>)
{
  result = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100042D18()
{
  swift_unknownObjectRelease();

  sub_100004758(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100042D60()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042DE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042E20()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100042EB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100042F00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042F4C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100043020()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000430FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776320);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100043174(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100058000(&qword_100776320);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100043204(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListLayout();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000432B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListLayout();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s9Reminders35TTRRemindersListPresenterCapabilityC33MoveToExistingSectionMenuAssemblyO17MenuConfigurationV15InitialSectionsOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_100263EE8(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_100043434()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004346C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000434AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000434E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043534()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043574()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000435B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000435EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004362C()
{
  v1 = type metadata accessor for TTRTemplateSharingAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000436F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100043740()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043778()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000437BC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100043804()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043840()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043BF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043C28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043C60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043C98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043CD0()
{
  v1 = type metadata accessor for TTRIQuickEntryStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void *_s9Reminders28TTRIGroupMembershipViewModelV4DiffOwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_100043DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100769F08);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100043E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100769F08);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100043EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100043F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100043FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100044028(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000440AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100044158(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000441FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

void *sub_10004422C()
{
  sub_1002C56EC(&qword_100778ED0, type metadata accessor for TTRIBoardReminderCell);
  v1 = v0;
  return v0;
}

uint64_t sub_10004428C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000442C4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100044350()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000443A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000443DC()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000444D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100044590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004464C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100044704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100772140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000447CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100058000(&qword_100772140);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100044890(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DateComponents();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RemindersInsertionRequest(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000449B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DateComponents();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RemindersInsertionRequest(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100044AE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044B18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044B60()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044B98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044BD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
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
    v11 = type metadata accessor for TTRRemindersListSectionCreationLocation();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100044D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
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
    v11 = type metadata accessor for TTRRemindersListSectionCreationLocation();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t _s9Reminders34TTRIRemindersListToolbarControllerC20ToolbarConfigurationOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1002F60E8(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_100044EAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044EE4()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100044F1C()
{

  return _swift_deallocObject(v0, 35, 7);
}

uint64_t sub_100044F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100044FC0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100045040()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100045088()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000450D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045110()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004514C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045194()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000451CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004520C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRectCorners();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100045278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRectCorners();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000452E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045348()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000453A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004540C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10004547C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000454B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000454F0()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004557C()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000455C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000455FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045634()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004566C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000456AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10004579C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000458A4()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000458F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004592C()
{
  v1 = (type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for TTRSectionID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100045A30()
{
  v1 = (type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for TTRSectionID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100045B3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TTRSectionID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100045BE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRSectionID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100045C8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045CC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045CFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045D34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045D6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045DAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045DF4()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045E34()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100045E6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045EA4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045EEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045F2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045F6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045FBC()
{
  v1 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000460B0()
{
  v1 = *(sub_100058000(&unk_10077FBB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000461E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046220()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100058000(&qword_10077FC30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004640C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046444()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_1000465BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void *_s9Reminders53TTRIListDetailContainerChildUnsavedChangesDescriptionVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_100046AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007800C8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100046B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007800C8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100046B98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046BD0()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100046C18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046C50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046CC8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100046D00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046D38()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100046D80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046DE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100046E38()
{
  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100046F28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046F60()
{
  v1 = type metadata accessor for REMHashtagLabelSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100046FE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047020()
{
  v1 = type metadata accessor for REMHashtagLabelSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1000470AC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100047100()
{
  v1 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1000471C8()
{
  v1 = type metadata accessor for REMHashtagLabelSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004728C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000472D4()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100047314()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100047390()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000473C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100047478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000474F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100780DC0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004756C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000475FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047634()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047714()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004774C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047794()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000477EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047824()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047860()
{
  v1 = type metadata accessor for TTRRemindersListHighlightTarget();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_100047938()
{
  v1 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100047A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047A38()
{
  v1 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100047B18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047B5C()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100047C10()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047C7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100047CF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047D2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047D98()
{
  v1 = type metadata accessor for REMHashtagLabelSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_100058000(&qword_10076D038) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100047F64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047FAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100047FF4()
{
  v1 = sub_100058000(&qword_100775740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004809C()
{
  swift_unknownObjectRelease();

  sub_100004758(v0 + 40);

  sub_100004758(v0 + 112);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100048104()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004813C()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004817C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000481B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048268()
{
  v1 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048454()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004848C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000484C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000484FC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100048544()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004858C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TTRListDetailBadgeViewModel();
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
      v13 = type metadata accessor for TTRRemindersListListType();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000486B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TTRListDetailBadgeViewModel();
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
      v13 = type metadata accessor for TTRRemindersListListType();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000487D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004880C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100048860()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000488B0()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000488F0()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100048928()
{
  v1 = type metadata accessor for DateComponents();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  sub_100004758(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000489EC()
{
  sub_100004758(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100048A24()
{
  v1 = *(type metadata accessor for TTRRemindersListMatchedAttributeValue(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  sub_100004758(v0 + 16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v6 = type metadata accessor for REMHashtagLabelSpecifier();
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {

      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v6 = type metadata accessor for DateComponents();
  }

  (*(*(v6 - 8) + 8))(v0 + v3, v6);
LABEL_8:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100048B40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048B78()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100048C18()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048C50()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048D24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048D5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100048DA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048DDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048E1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048E6C()
{
  v1 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100048F64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048F9C()
{
  v1 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000490C0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100049110()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004915C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100049258()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049290()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000492D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100049344(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t _s9Reminders26TTRIAccountsListsPresenterC21PostModelUpdateActionOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

void *sub_1000493FC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{

  return sub_10044FC24(a1, a2, a3, a4, a5);
}

uint64_t sub_10004949C()
{
  v1 = type metadata accessor for TimeZone();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100049598()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004966C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000496DC()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.List();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049828()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100049884()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.List();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049948()
{
  v1 = sub_100058000(&qword_100783210);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049A20()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100049A88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049B0C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049B5C()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100049C60()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_100049D6C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100049DBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100049EB8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

id sub_100049F08()
{
  v1 = [*(*v0 + 24) objectID];

  return v1;
}

void *sub_100049F48()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = v2;
  return v2;
}

void *sub_100049F90()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = v2;
  return v2;
}

uint64_t sub_100049FF0()
{
  v1 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A0D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A118()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004A1E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AnyListEntityID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100058000(&qword_100783F08);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_100058000(&qword_100783F10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10004A374(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AnyListEntityID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_100058000(&qword_100783F08);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_100058000(&qword_100783F10);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10004A504()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10004A568()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004A5A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004A5D8()
{
  v1 = type metadata accessor for REMNavigationSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004A6A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *_s9Reminders22TTRWelcomeContentStyleOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  LODWORD(v3) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  if (v3 - 1 < 0)
  {
    v4 = result;
    v5 = v2;
    result = v4;
  }

  *result = v2;
  return result;
}

void *_s9Reminders36TTRIRemindersBoardMainViewControllerC24CompletedHeaderViewStateVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;

  return a1;
}

uint64_t sub_10004A764()
{
  v1 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRRemindersListHighlightTarget();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10004A8D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004A908()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTREditingStateOption.InputType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004AA60()
{
  v1 = type metadata accessor for TTREditingStateOption.InputType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004AAE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AB20()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_10004ABF8()
{
  v1 = sub_100058000(&qword_100784608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004AC8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004ACC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004AD0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004AD48()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for TTRSectionLite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  sub_100263FE4(*(v8 + 16), *(v8 + 24));
  v9 = v1[9];
  v10 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  if (*(v0 + v3 + v1[12]))
  {
  }

  if (*(v8 + v1[13]))
  {
  }

  v11 = v2 | v6;
  v12 = (v3 + v14 + v6) & ~v6;
  (*(v5 + 8))(v0 + v12, v4);

  return _swift_deallocObject(v0, v12 + v7, v11 | 7);
}

uint64_t sub_10004AF28()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004AF80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *_s9Reminders18BadgeContainerViewC15SharingIconViewVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = v3;
  v7 = v4;
  v8 = v5;
  return a1;
}

uint64_t sub_10004B00C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B044()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004B15C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRListDetailBadgeViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10004B220()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B258()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B290()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 9) & ~v9;
  v13 = *(v8 + 64);
  v11 = v3 | v9;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v8 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0, v10 + v13, v11 | 7);
}

uint64_t sub_10004B41C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10004B454(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_100058000(&qword_100776AB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

_BYTE *sub_10004B5C4(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100058000(&qword_100776AB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10004B738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100058000(&qword_100775720);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004B7F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_100058000(&qword_100775720);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004B8A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TTRListColors.Color();
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
      v13 = sub_100058000(&qword_100776A28);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10004B9D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TTRListColors.Color();
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
      v13 = sub_100058000(&qword_100776A28);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004BB50(uint64_t a1)
{
  v2 = sub_100058000(&qword_100786230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004BBBC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004BC18()
{
  sub_10005D20C(&qword_100786238);
  sub_10005D20C(&qword_100786270);
  sub_10005D20C(&qword_100786230);
  sub_1004B0894();
  sub_10007D420();
  swift_getOpaqueTypeConformance2();
  sub_10000E188(&qword_100786278, &qword_100786270);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004BD2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004BD6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004BDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004BE10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10004BE80()
{
  sub_10005D20C(&qword_100786308);
  type metadata accessor for InsetGroupedListStyle();
  sub_10000E188(&qword_100786358, &qword_100786308);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004BF78()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BFB0()
{
  v1 = type metadata accessor for TimeZone();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004C04C()
{
  v1 = type metadata accessor for TimeZone();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16, v4 | 7);
}

uint64_t sub_10004C138()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C174()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C1AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C1E4()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C2A8()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004C344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10004C40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_10004C4C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C514()
{
  v1 = (type metadata accessor for TTRIGroupMembershipViewModel.List(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[8];
  v6 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10004C668()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C6A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C6D8()
{
  v1 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  v66 = *(v1 - 1);
  v69 = *(v66 + 80);
  v2 = (v69 + 40) & ~v69;
  v3 = v2 + *(v66 + 64);
  v4 = *(sub_100058000(&qword_100778EC8) - 8);
  v5 = *(v4 + 80);
  v6 = v3 + v5;
  v67 = *(v4 + 64);

  v70 = v0;
  v7 = v0 + v2;

  v8 = v1[10];
  v9 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v64 = *(*(v9 - 8) + 8);
  v65 = v9;
  v64(v7 + v8);
  v10 = v1[11];
  v11 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  v62 = *(*(v11 - 8) + 8);
  v63 = v11;
  v62(v7 + v10);
  v12 = v1[12];
  v13 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  v60 = *(*(v13 - 8) + 8);
  v61 = v13;
  v60(v7 + v12);
  v14 = v1[13];
  v15 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  v58 = *(*(v15 - 8) + 8);
  v59 = v15;
  v58(v7 + v14);
  v16 = v1[14];
  v17 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  v56 = *(*(v17 - 8) + 8);
  v57 = v17;
  v56(v7 + v16);
  v18 = v1[15];
  v19 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  v54 = *(*(v19 - 8) + 8);
  v55 = v19;
  v54(v7 + v18);
  v20 = v7 + v1[16];

  if (*(v20 + 8))
  {
  }

  v68 = v5;
  v21 = v6 & ~v5;
  v22 = v1[17];
  v23 = sub_100058000(&qword_100778F58);
  v52 = *(*(v23 - 8) + 8);
  v53 = v23;
  v52(v7 + v22);
  v24 = v1[18];
  v25 = sub_100058000(&qword_100778F48);
  v50 = *(*(v25 - 8) + 8);
  v51 = v25;
  v50(v7 + v24);

  v26 = v1[25];
  v27 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v48 = *(*(v27 - 8) + 8);
  v49 = v27;
  v48(v7 + v26);
  v28 = v1[26];
  v44 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  v47 = *(*(v44 - 8) + 8);
  v47(v7 + v28);
  v29 = v1[27];
  v43 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  v46 = *(*(v43 - 8) + 8);
  v46(v7 + v29);
  v30 = v7 + v1[28];
  v31 = sub_100058000(&qword_100778EB0);
  v32 = *(v31 - 8);
  v45 = *(v32 + 48);
  if (!v45(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  v42 = v32;
  v33 = sub_100058000(&qword_100778F70);
  v34 = *(v33 + 28);
  v35 = sub_100058000(&qword_100778F80);
  v36 = *(*(v35 - 8) + 8);
  v36(v30 + v34, v35);
  v37 = v70;
  v38 = (v70 + v21);
  if (!(*(v66 + 48))(v70 + v21, 1, v1))
  {

    (v64)(v38 + v1[10], v65);
    (v62)(v38 + v1[11], v63);
    (v60)(v38 + v1[12], v61);
    (v58)(v38 + v1[13], v59);
    (v56)(v38 + v1[14], v57);
    (v54)(v38 + v1[15], v55);
    v39 = v38 + v1[16];

    if (*(v39 + 1))
    {
    }

    (v52)(v38 + v1[17], v53);
    (v50)(v38 + v1[18], v51);

    (v48)(v38 + v1[25], v49);
    (v47)(v38 + v1[26], v44);
    (v46)(v38 + v1[27], v43);
    v40 = v38 + v1[28];
    if (!v45(v40, 1, v31))
    {
      (*(v42 + 8))(v40, v31);
    }

    v36(&v40[*(v33 + 28)], v35);
    v37 = v70;
  }

  return _swift_deallocObject(v37, v21 + v67, v69 | v68 | 7);
}

uint64_t sub_10004CF08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CF94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CFCC()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004D024()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D074()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004D0BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D0F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004D13C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10004D17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D1B8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004D274()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D2AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D2F4()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_100139D84(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004D344()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D37C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10004D4A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10004D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004D678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100058000(&qword_100775AB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10004D73C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D790()
{
  v1 = type metadata accessor for TTRRemindersListTargetContainer();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004D8E0()
{
  v1 = type metadata accessor for TTRRemindersListTargetContainer();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004D9A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D9DC()
{
  v1 = type metadata accessor for TTRRemindersListTargetContainer();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004DB34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004DB6C()
{
  v1 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004DE74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004DEAC()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004DF50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004DF88()
{
  v1 = type metadata accessor for TTRRemindersListHighlightTarget();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_10004E060()
{
  v1 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10004E128()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E178()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E1D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E2D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E31C()
{
  v28 = sub_100058000(&unk_10078A498);
  v21 = *(v28 - 8);
  v26 = *(v21 + 80);
  v1 = *(v21 + 64);
  v27 = sub_100058000(&qword_10078A490);
  v2 = *(v27 - 8);
  v3 = *(v2 + 80);
  v22 = (((v26 + 24) & ~v26) + v1 + v3) & ~v3;
  v4 = *(v2 + 64);
  v25 = sub_100058000(&qword_10078A480);
  v5 = *(v25 - 8);
  v6 = *(v5 + 80);
  v23 = (v22 + v4 + v6) & ~v6;
  v7 = *(v5 + 64);
  v19 = (v7 + v6 + v23) & ~v6;
  v24 = sub_100058000(&qword_10078A488);
  v8 = *(v24 - 8);
  v9 = *(v8 + 80);
  v10 = (v19 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v20 = sub_100058000(&qword_10078A478);
  v12 = *(v20 - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v18 = *(v12 + 64);
  v15 = v26 | v3 | v6 | v9 | v13;

  (*(v21 + 8))(v0 + ((v26 + 24) & ~v26), v28);
  (*(v2 + 8))(v0 + v22, v27);
  v16 = *(v5 + 8);
  v16(v0 + v23, v25);
  v16(v0 + v19, v25);
  (*(v8 + 8))(v0 + v10, v24);
  (*(v12 + 8))(v0 + v14, v20);

  return _swift_deallocObject(v0, v14 + v18, v15 | 7);
}

uint64_t sub_10004E680()
{
  v1 = sub_100058000(&qword_10077FBE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_100058000(&unk_10078A468);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004E7E0()
{
  sub_100528EEC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004E82C()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004E8E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E928()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004E970()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E9A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
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
      v13 = sub_100058000(&qword_100776A98);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004EAD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
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
      v13 = sub_100058000(&qword_100776A98);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004EC0C()
{
  sub_100528EEC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004EC74()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004ECCC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10004ED0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004ED48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004ED98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EDD0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004EEAC()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004EEF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EF2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EF64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004F060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t _s9Reminders18AnyListEntityQueryVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_10004F15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004F1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10004F238@<X0>(uint64_t *a1@<X8>)
{
  result = TTRSectionLite.canonicalName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004F278()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_100263FE4(*(v5 + 16), *(v5 + 24));
  v6 = v1[9];
  v7 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  if (*(v0 + v3 + v1[12]))
  {
  }

  if (*(v5 + v1[13]))
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10004F3D4()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_100263FE4(*(v5 + 16), *(v5 + 24));
  v6 = v1[9];
  v7 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  if (*(v0 + v3 + v1[12]))
  {
  }

  if (*(v5 + v1[13]))
  {
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10004F544()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_100263FE4(*(v5 + 16), *(v5 + 24));
  v6 = v1[9];
  v7 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  if (*(v0 + v3 + v1[12]))
  {
  }

  if (*(v5 + v1[13]))
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10004F6B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004F6F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10004F814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100058000(&qword_10076B9A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10004F8DC()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004F9B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004F9E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004FA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004FAF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10004FBAC()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;
  sub_100004758(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 2, v3 | 7);
}

uint64_t sub_10004FC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004FD30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRReminderListCompletionBehavior();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004FEB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRReminderListCompletionBehavior();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10004FF74()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004FFBC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[10];
LABEL_29:
    v23 = *(v11 + 48);

    return v23(a1 + v12, a2, v10);
  }

  v13 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[11];
    goto LABEL_29;
  }

  v14 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[12];
    goto LABEL_29;
  }

  v15 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v10 = v15;
    v11 = *(v15 - 8);
    v12 = a3[13];
    goto LABEL_29;
  }

  v16 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v10 = v16;
    v11 = *(v16 - 8);
    v12 = a3[14];
    goto LABEL_29;
  }

  v17 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v10 = v17;
    v11 = *(v17 - 8);
    v12 = a3[15];
    goto LABEL_29;
  }

  v18 = sub_100058000(&qword_100778F58);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v10 = v18;
    v11 = *(v18 - 8);
    v12 = a3[17];
    goto LABEL_29;
  }

  v19 = sub_100058000(&qword_100778F48);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v10 = v19;
    v11 = *(v19 - 8);
    v12 = a3[18];
    goto LABEL_29;
  }

  v20 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  if (*(*(v20 - 8) + 84) == a2)
  {
    v10 = v20;
    v11 = *(v20 - 8);
    v12 = a3[25];
    goto LABEL_29;
  }

  v21 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  if (*(*(v21 - 8) + 84) == a2)
  {
    v10 = v21;
    v11 = *(v21 - 8);
    v12 = a3[26];
    goto LABEL_29;
  }

  v22 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  if (*(*(v22 - 8) + 84) == a2)
  {
    v10 = v22;
    v11 = *(v22 - 8);
    v12 = a3[27];
    goto LABEL_29;
  }

  v24 = sub_100058000(&qword_100778F70);
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[28];

  return v25(v26, a2, v24);
}

uint64_t sub_1000503E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_25:
    v22 = *(v10 + 56);

    return v22(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_25;
  }

  v13 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_25;
  }

  v14 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[13];
    goto LABEL_25;
  }

  v15 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[14];
    goto LABEL_25;
  }

  v16 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[15];
    goto LABEL_25;
  }

  v17 = sub_100058000(&qword_100778F58);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[17];
    goto LABEL_25;
  }

  v18 = sub_100058000(&qword_100778F48);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[18];
    goto LABEL_25;
  }

  v19 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[25];
    goto LABEL_25;
  }

  v20 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  if (*(*(v20 - 8) + 84) == a3)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a4[26];
    goto LABEL_25;
  }

  v21 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  if (*(*(v21 - 8) + 84) == a3)
  {
    v9 = v21;
    v10 = *(v21 - 8);
    v11 = a4[27];
    goto LABEL_25;
  }

  v23 = sub_100058000(&qword_100778F70);
  v24 = *(*(v23 - 8) + 56);
  v25 = v5 + a4[28];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_1000507FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050834()
{
  v1 = type metadata accessor for TTRRemindersPrintingHTMLResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000508BC()
{
  v1 = type metadata accessor for TTRRemindersPrintingHTMLResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100050950()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050988()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000509C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050A40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050A78()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIMenuItem();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100050B20(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100050BB4()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100050C78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050CB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100050CF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050D2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050D64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100050DA8()
{
  v1 = type metadata accessor for TTRRemindersListListType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100050E6C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050ED8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050F18()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000511F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100051310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for IndexPath();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10005141C()
{

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000514E0()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100051570()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000515B8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000515F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051644()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000516A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000516D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051714()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005176C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000517C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000517FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRRemindersListInCellModule();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100058000(&qword_100778F80);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100051934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for TTRRemindersListInCellModule();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100058000(&qword_100778F80);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100051A58()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051B24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051B64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051B9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051BE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IndexPath();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100051C90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100051D34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TTRICollectionViewDropIntent();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100051DE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRICollectionViewDropIntent();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100051E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100051F74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100052070(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for IndexPath();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[8]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000521D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for IndexPath();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100052324()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005236C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000523BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListLayout();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100052478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListLayout();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100052530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListLayout();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100052620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRRemindersListLayout();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10005271C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100780990);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100052794(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100058000(&qword_100780990);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100052820(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100058000(&qword_100775700);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000528DC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100058000(&qword_100775700);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052988(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100058000(&qword_100769980);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100058000(&qword_1007693B0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100052AB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100058000(&qword_100769980);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100058000(&qword_1007693B0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11] + 8) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_100052BD8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100052BF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100052CA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052D44(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100058000(&qword_10076BDC0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = &a1[*(a3 + 20)];

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for REMHashtagLabelSpecifier();
      v15 = *(*(v14 - 8) + 48);
      v16 = &a1[*(a3 + 24)];

      return v15(v16, a2, v14);
    }
  }
}

_BYTE *sub_100052E88(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v8 = sub_100058000(&qword_10076BDC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for REMHashtagLabelSpecifier();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100052FB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052FEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053028()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053070()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v13 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v13 | 7);
}

uint64_t sub_100053200()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053238()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053288()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000532C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053318()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

double TTRListDetailCreationChangeItem.ttrShareeContext.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id sub_1000533E4()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

uint64_t *sub_100053454@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_100053470(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100055D38(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 16) setContentSize:{*(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) _maxScrollerHeight];
  v2 = [*(a1 + 32) view];
  [v2 bounds];

  [*(*(a1 + 32) + 16) frame];
  [*(*(a1 + 32) + 16) setFrame:?];
  [*(*(a1 + 32) + 8) frame];
  v3 = *(*(a1 + 32) + 16);

  return [v3 scrollRectToVisible:0 animated:?];
}

id sub_100055E28(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100055EAC;
  v2[3] = &unk_100712148;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.2];
}

void sub_100055EAC(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) addButton];
  [v1 setAlpha:1.0];
}

void sub_100056920(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[REMLogStore utility];
  v9 = v8;
  if (!v6 || v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10060FDE0(v7, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 incompatibleDevices];
      v11 = [v6 needUpgradeDevices];
      v12 = [v6 incompatibleDeviceNames];
      v13 = [v6 needUpgradeDeviceNames];
      v16 = 138413058;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received deviceListResponse from CloudKit {incompatibleDevices %@, needUpgradeDevices: %@, incompatibleDeviceNames: %@, needUpgradeDeviceNames: %@}", &v16, 0x2Au);
    }

    v14 = *(a1 + 32);
    v9 = [v6 incompatibleDeviceNames];
    v15 = [v6 needUpgradeDeviceNames];
    (*(v14 + 16))(v14, v9, v15);
  }
}

void sub_100056C90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100056CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_opt_class();
    v6 = REMCheckedDynamicCast();
    if (!v6)
    {
      goto LABEL_32;
    }

    v24 = WeakRetained;
    v25 = v4;
    v26 = +[NSMutableArray array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v6;
    v7 = [v6 devices];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (!v8)
    {
      goto LABEL_27;
    }

    v9 = v8;
    v10 = *v28;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v12 model];
        v15 = [v12 modelDisplayName];
        v16 = [v12 swVersion];
        v17 = v16;
        if (v13)
        {
          v18 = v14 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18 || v15 == 0 || v16 == 0)
        {
          v21 = +[REMLogStore utility];
          if (os_log_type_enabled(&v21->super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            v32 = v13;
            v33 = 2112;
            v34 = v14;
            v35 = 2112;
            v36 = v15;
            v37 = 2112;
            v38 = v17;
            _os_log_error_impl(&_mh_execute_header, &v21->super.super, OS_LOG_TYPE_ERROR, "Bad AADevice {name: %@, model: %@, modelDisplayName: %@, swVersion: %@}", buf, 0x2Au);
          }

          goto LABEL_24;
        }

        if (![*(a1 + 32) isEqualToString:v13] || (objc_msgSend(*(a1 + 40), "isEqualToString:", v17) & 1) == 0)
        {
          v21 = [[ICFullDeviceInfo alloc] initWithName:v13 model:v14 modelDisplayName:v15 softwareVersion:v17];
          [v26 addObject:v21];
LABEL_24:
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (!v9)
      {
LABEL_27:

        v22 = +[REMLogStore utility];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v26;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received deviceListResponse from iCloud {devices: %@}", buf, 0xCu);
        }

        (*(*(a1 + 48) + 16))();
        WeakRetained = v24;
        v4 = v25;
        v6 = v23;
        goto LABEL_32;
      }
    }
  }

  v6 = +[REMLogStore utility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10060FE58(v6);
  }

LABEL_32:
}

void sub_1000570D4(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.reminders.deviceListDevicesMutex", v3);

  v5 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005731C;
  block[3] = &unk_100712278;
  block[4] = *(a1 + 32);
  v6 = v4;
  v20 = v6;
  objc_copyWeak(&v21, (a1 + 48));
  dispatch_group_async(v2, v5, block);

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100057788;
  v15 = &unk_100712278;
  v16 = *(a1 + 32);
  v7 = v6;
  v17 = v7;
  objc_copyWeak(&v18, (a1 + 48));
  dispatch_group_async(v2, v5, &v12);

  v8 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v2, v8))
  {
    v9 = [REMLogStore utility:v12];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10060FE9C(v9);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained workSemaphore];
  dispatch_semaphore_signal(v11);

  if (*(a1 + 40))
  {
    dispatch_async(&_dispatch_main_q, *(a1 + 40));
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
}

void sub_1000572FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_10005731C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100057408;
  v5[3] = &unk_100712250;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v8, (a1 + 48));
  v4 = v2;
  v7 = v4;
  [v3 fetchCloudKitDevicesWithCompletionBlock:v5];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v8);
}

void sub_100057408(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[ICMinimalDeviceInfo alloc] initWithName:*(*(&v30 + 1) + 8 * v12) upgradable:0 upgraded:0];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [[ICMinimalDeviceInfo alloc] initWithName:*(*(&v26 + 1) + 8 * v18) upgradable:1 upgraded:0];
        [v7 addObject:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  if ([v7 count])
  {
    v20 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000576EC;
    block[3] = &unk_100712228;
    objc_copyWeak(&v25, (a1 + 48));
    v24 = v7;
    dispatch_sync(v20, block);

    objc_destroyWeak(&v25);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v21 = +[REMLogStore utility];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Got old device list", v22, 2u);
  }
}

void sub_1000576EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained devices];
  if ([v2 count])
  {
    v3 = [ICDeviceListRequest combineICloudDevices:v2 withCloudKitDevices:*(a1 + 32)];
    [WeakRetained setDevices:v3];
  }

  else
  {
    [WeakRetained setDevices:*(a1 + 32)];
  }
}

void sub_100057788(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005787C;
  v5[3] = &unk_1007122A0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 32);
  v4 = v2;
  v8 = v4;
  [v3 fetchICloudDevicesWithCompletionBlock:v5];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v9);
}

void sub_10005787C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [ICDeviceListRequest filteredDevices:v3];
    v5 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000579BC;
    block[3] = &unk_100712228;
    objc_copyWeak(&v11, (a1 + 56));
    v10 = v4;
    v6 = v4;
    dispatch_sync(v5, block);

    objc_destroyWeak(&v11);
  }

  [*(a1 + 40) setDidGetICloudDeviceList:1];
  dispatch_semaphore_signal(*(a1 + 48));
  v7 = +[REMLogStore utility];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Got new device list", v8, 2u);
  }
}

void sub_1000579BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained devices];
  if ([v2 count])
  {
    if ([*(a1 + 32) count])
    {
      v3 = [ICDeviceListRequest combineICloudDevices:*(a1 + 32) withCloudKitDevices:v2];
      [WeakRetained setDevices:v3];
    }
  }

  else
  {
    [WeakRetained setDevices:*(a1 + 32)];
  }
}

uint64_t variable initialization expression of TTRIDebouncedHoverAction.passthroughSubject()
{
  sub_100058000(&qword_100767510);
  swift_allocObject();
  return PassthroughSubject.init()();
}

uint64_t sub_100058000(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of TTRListDetailCreationChangeItem.listType@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListListType.standard(_:);
  v3 = type metadata accessor for TTRRemindersListListType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100058118@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of OpenAnyListAppIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100058000(&qword_100767518);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_100058000(&qword_100767520);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_100058000(&qword_100767528);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_100058000(&qword_100767530);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AnyListEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_1000588D4(&qword_100767538, type metadata accessor for AnyListEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}
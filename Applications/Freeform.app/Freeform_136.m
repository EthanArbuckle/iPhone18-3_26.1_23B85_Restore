void sub_101056E38()
{
  v1 = _UISolariumEnabled();
  v34 = sub_101013250();
  if (v1)
  {
    v33 = [v34 customView];

    if (!v33)
    {
      return;
    }

    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      v22 = v33;
      goto LABEL_29;
    }

    v34 = v2;
    v3 = v33;
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
LABEL_27:
      v22 = v34;
LABEL_29:

      return;
    }

    v33 = [v4 button];

    v3 = v33;
    if (!v33)
    {
      return;
    }

    v34 = v33;
  }

  v5 = v3;
  v6 = [v34 isHeld];
  v7 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  v8 = [v7 hasSelection];
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {

    goto LABEL_27;
  }

  v10 = [v0 presentedViewController];
  if (v10)
  {
    v11 = v10;
    if (([v10 isBeingDismissed] & 1) == 0)
    {
      v35 = &OBJC_PROTOCOL___CRLPresentedViewControllerSelectionChanging;
      v12 = swift_dynamicCastObjCProtocolConditional();
      if (!v12 || ![v12 staysOpenOnSelectionChange])
      {
        sub_100006370(0, &qword_101A1F8E8);
        if (![v11 isKindOfClass:swift_getObjCClassFromMetadata()])
        {
          type metadata accessor for ImagePlaygroundViewController();
          if (![v11 isKindOfClass:swift_getObjCClassFromMetadata()] && !objc_msgSend(v34, "isHeld"))
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass() || (v13 = [v7 infosForCurrentSelectionPath], v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v13, v15 = *(v14 + 16), , !v15))
            {
              objc_opt_self();
              v16 = swift_dynamicCastObjCClass();
              if (v16)
              {
                v17 = v16;
                v18 = v11;
                v19 = [v17 topViewController];
                if (v19)
                {
                  v20 = v19;
                  v36[0] = swift_getObjectType();
                  sub_1005B981C(&unk_101A28720);
                  if (String.init<A>(describing:)() == 0xD000000000000026 && 0x80000001015BBF50 == v21)
                  {

LABEL_34:
                    goto LABEL_40;
                  }

                  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v23)
                  {
                    goto LABEL_34;
                  }
                }

                else
                {
                }
              }

              swift_getObjectType();
              sub_1005B981C(&unk_101A28720);
              v36[0] = String.init<A>(describing:)();
              v36[1] = v24;
              __chkstk_darwin(v36[0]);
              v32[2] = v36;
              v25 = sub_100C08644(sub_100B53A30, v32, &off_1018778C8);
              swift_arrayDestroy();

              if ((v25 & 1) == 0)
              {
                if (qword_1019F2098 != -1)
                {
                  swift_once();
                }

                v26 = static OS_os_log.crlDefault;
                sub_1005B981C(&qword_1019F54E0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10146C6B0;
                *(inited + 56) = sub_100006370(0, &qword_101A10AB0);
                *(inited + 64) = sub_10000FDE0(&qword_101A15B78, &qword_101A10AB0);
                *(inited + 32) = v11;
                v11 = v11;
                v28 = static os_log_type_t.default.getter();
                sub_100005404(v26, &_mh_execute_header, v28, "Dismissing %@", 13, 2, inited);
                swift_setDeallocating();
                sub_100005070(inited + 32);
                [v11 dismissViewControllerAnimated:1 completion:0];
              }
            }
          }
        }
      }
    }
  }

LABEL_40:
  if (v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlDefault;
    v30 = static os_log_type_t.info.getter();
    sub_100005404(v29, &_mh_execute_header, v30, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v31 = [v0 traitCollection];
    sub_100642864(v31, [v7 documentIsSharedReadOnly], v36);
    sub_100642CDC(v36, 0);
    sub_1005EB2D4(v36);
  }

  sub_100659818();
}

void *sub_101057470()
{
  v0 = &stru_100000020;
  do
  {
    if ([objc_allocWithZone(NSNumber) initWithDouble:*(&off_101877938 + v0)])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v0 += 8;
  }

  while (v0 != 112);
  return _swiftEmptyArrayStorage;
}

id sub_10105755C()
{
  if ([*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] isHandlingScribbleWriting])
  {
    v1 = 0;
  }

  else
  {
    v1 = v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isChangingDocumentModeToHandwriting] ^ 1;
  }

  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = [result window];

    if (v4)
    {

      v5 = [v0 traitCollection];
      v6 = [v5 crl_isCompactWidth];

      return (v6 & v1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_101057638()
{
  v1 = [objc_opt_self() isReduceMotionEnabled];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v0 presentedViewController];
  if (v5 && (v6 = v5, sub_100006370(0, &qword_101A10AB0), v7 = v4, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) != 0))
  {
    [v7 dismissViewControllerAnimated:v3 ^ 1 completion:0];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_10105772C()
{
  v1 = [v0 crl_windowWrapper];
  if (v1 && (v2 = v1, v3 = [v1 newWrapperBeginningIgnoringUserInteractionSafely], v2, v3))
  {
    if (*(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator))
    {
      sub_100833EBC(0xD000000000000012, 0x80000001015BB040);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 3089;
    v17 = v27;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "beginModalOperation is will not suspend collaboration when the modalOperationToken is nil, but it will still be safe to call endModalOperation in either case.", 158, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:3089 isFatal:0 format:v26 args:v23];
  }
}

uint64_t sub_101057B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_1019F2D90);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_10002AAEC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018AE5C0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006760(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

id sub_101057E6C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
  [v6 setUpCommonGestureAllowedTouchTypes];
  result = [v6 pencilMediator];
  if (!result)
  {
    __break(1u);
    return result;
  }

  [result setCurrentPencilModeType:{objc_msgSend(a1, "pencilModeType")}];
  swift_unknownObjectRelease();
  v8 = [a1 pencilModeType];
  v9 = sub_1010132F0();
  if (v8)
  {
    v10 = &selRef_imageNamed_;
  }

  else
  {
    v10 = &selRef_systemImageNamed_;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() *v10];

  [v9 setImage:v12];
  if (v8)
  {
    v13 = *(*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    if (*(v13 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
    {
      v14 = v13;
      sub_1009056EC(0, 1);
    }

    v15 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___togglePencilModeToolbarItem;
    v16 = UIAccessibilityTraitSelected;
    v17 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___togglePencilModeToolbarItem];
    v18 = [v17 accessibilityTraits];
    if ((v16 & ~v18) != 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    [v17 setAccessibilityTraits:v19 | v18];

    [*&v3[v15] setAccessibilityHint:0];
  }

  else
  {
    v20 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___togglePencilModeToolbarItem;
    v21 = UIAccessibilityTraitSelected;
    v22 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___togglePencilModeToolbarItem];
    v23 = [v22 accessibilityTraits];
    v24 = -1;
    if ((v23 & v21) != 0)
    {
      v24 = ~v21;
    }

    [v22 setAccessibilityTraits:v24 & v23];

    v25 = *&v3[v20];
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 mainBundle];
    v29 = String._bridgeToObjectiveC()();
    v30 = String._bridgeToObjectiveC()();
    v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

    if (!v31)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = String._bridgeToObjectiveC()();
    }

    [v27 setAccessibilityHint:v31];
  }

  sub_10067B310();
  v32 = [a1 wantsDoneButtonInCompact];
  if (v32 != [a2 wantsDoneButtonInCompact])
  {
    v33 = [v3 traitCollection];
    sub_100642864(v33, [*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v38);
    sub_100642CDC(v38, 0);
    sub_1005EB2D4(v38);
  }

  v34 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray;
  v35 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray];
  swift_unknownObjectRetain();
  v36 = [a1 toolTray];
  *&v3[v34] = v36;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (sub_10105A3A4(v36, v35))
  {
    if (!v36)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v35)
    {
      if (([swift_unknownObjectRetain() hidden] & 1) == 0)
      {
        [v35 setToolTrayHidden:1 animated:1];
      }

      [v35 uninstallToolTray];
      swift_unknownObjectRelease();
    }

    if (!v36)
    {
      goto LABEL_31;
    }

    [swift_unknownObjectRetain() installToolTray];
    if ([v36 hidden])
    {
      [v36 setToolTrayHidden:0 animated:1];
    }

    swift_unknownObjectRelease();
  }

  [a1 modeDidPresentBottomToolTray];
LABEL_31:
  v37 = [a1 wantsToSuppressMultiselectionWithSingleBounds];
  if (v37 != [a2 wantsToSuppressMultiselectionWithSingleBounds])
  {
    [*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] updateMultiselectResizeInfoIfNeeded];
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isChangingDocumentModeToHandwriting] = 0;
  return result;
}

id sub_1010583A4()
{
  result = [*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) freehandDrawingToolkit];
  if (!result)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 3939;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Toolkit should be set up by the time freehandDrawingToolkit(for pencilKitCanvasViewController:) is called.", 106, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:3939 isFatal:0 format:v24 args:v21];

    return 0;
  }

  return result;
}

void sub_101058790(uint64_t *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) canvas];
  v4 = [v3 topLevelReps];
  sub_100006370(0, &qword_1019FB7A0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = *a1;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    ++v7;
    [v9 recursivelyPerformSelector:v8];
  }

  while (v6 != v7);
LABEL_10:
}

uint64_t sub_1010588D4()
{
  result = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController);
  if (!result)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 4059;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "pencilKitCanvasViewController should be set up by the time pencilKitCanvasViewControllerForFreehandDrawingTools is called.", 122, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "pencilKitCanvasViewController should be set up by the time pencilKitCanvasViewControllerForFreehandDrawingTools is called.");
    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:4059 isFatal:1 format:v24 args:v21];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_101058CC8()
{
  v1 = v0;
  sub_100006370(0, &qword_1019F54D0);
  v2 = sub_1010137CC();
  v3 = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    v27 = objc_opt_self();
    v4 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 4180;
    v16 = v28;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Unknown find and replace controller", 35, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v23 file:v24 lineNumber:4180 isFatal:0 format:v25 args:v22];
  }

  return *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
}

uint64_t sub_1010590D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v49 = &type metadata for UInt;
  sub_1005B981C(&unk_101A28690);
  String.init<A>(describing:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v8;
  v9 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v7;
  v10 = inited + 32;
  *(inited + 64) = v9;
  if (!a1)
  {

    return (*(a3 + 16))(a3, a2);
  }

  v11 = v9;
  v46 = a3;
  v47 = a2;
  v45 = objc_opt_self();
  v48 = [v45 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v49);
  StaticString.description.getter();
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = inited;
  if (qword_1019F20A0 != -1)
  {
    goto LABEL_35;
  }

LABEL_3:
  v19 = static OS_os_log.crlAssert;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10146CA70;
  *(v20 + 56) = &type metadata for Int32;
  *(v20 + 64) = &protocol witness table for Int32;
  *(v20 + 32) = v48;
  *(v20 + 96) = v8;
  *(v20 + 104) = v11;
  *(v20 + 72) = v12;
  *(v20 + 136) = &type metadata for String;
  v21 = sub_1000053B0();
  *(v20 + 112) = v15;
  *(v20 + 120) = v17;
  *(v20 + 176) = &type metadata for UInt;
  *(v20 + 184) = &protocol witness table for UInt;
  *(v20 + 144) = v21;
  *(v20 + 152) = 4209;
  v22 = v49;
  *(v20 + 216) = v8;
  *(v20 + 224) = v11;
  *(v20 + 192) = v22;
  v23 = v12;
  v24 = v22;
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v26, "expected equality between two values of type %{public}@", 55, 2, v18);

  type metadata accessor for __VaListBuilder();
  v8 = swift_allocObject();
  v8[2] = 8;
  v8[3] = 0;
  v15 = v8 + 3;
  v8[4] = 0;
  v8[5] = 0;
  v48 = v18;
  v11 = *(v18 + 16);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      sub_100020E58((v10 + 40 * v12), *(v10 + 40 * v12 + 24));
      v27 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v17 = *v15;
      v28 = *(v27 + 16);
      v29 = __OFADD__(*v15, v28);
      v30 = *v15 + v28;
      if (v29)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        swift_once();
        goto LABEL_3;
      }

      v31 = v8[4];
      if (v31 >= v30)
      {
        goto LABEL_20;
      }

      if (v31 + 0x4000000000000000 < 0)
      {
        goto LABEL_33;
      }

      v32 = v8[5];
      if (2 * v31 > v30)
      {
        v30 = 2 * v31;
      }

      v8[4] = v30;
      if ((v30 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_34;
      }

      v18 = v27;
      v33 = swift_slowAlloc();
      v34 = v33;
      v8[5] = v33;
      if (v32)
      {
        break;
      }

      v27 = v18;
      if (!v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v36 = *(v27 + 16);
      if (v36)
      {
        v37 = (v27 + 32);
        v38 = *v15;
        while (1)
        {
          v39 = *v37++;
          *&v34[8 * v38] = v39;
          v38 = *v15 + 1;
          if (__OFADD__(*v15, 1))
          {
            break;
          }

          *v15 = v38;
          if (!--v36)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_5:

      v12 = v12 + 1;
      if (v12 == v11)
      {
        goto LABEL_28;
      }
    }

    if (v33 != v32 || v33 >= &v32[8 * v17])
    {
      memmove(v33, v32, 8 * v17);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v27 = v18;
LABEL_20:
    v34 = v8[5];
    if (!v34)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_28:
  v40 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  [v45 handleFailureInFunction:v41 file:v42 lineNumber:4209 isFatal:0 format:v43 args:v40];

  a3 = v46;
  a2 = v47;
  return (*(a3 + 16))(a3, a2);
}

void sub_101059690(unint64_t a1)
{
  v73 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v73);
  v72 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v67 - v4;
  __chkstk_darwin(v5);
  v70 = &v67 - v6;
  if (a1 >> 62)
  {
LABEL_31:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 >= 1)
  {
    v8 = 0;
    v77 = a1 & 0xC000000000000001;
    v68 = v7;
    v69 = a1;
    while (1)
    {
      v9 = v77 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v8 + 32);
      v10 = v9;
      type metadata accessor for CRLImageItem();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        break;
      }

      type metadata accessor for CRLMovieItem();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext;
        if (!*(v14 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext))
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v18 = Strong;
            v19 = (*((swift_isaMask & *Strong) + 0x388))();

            if (v19)
            {
              v36 = objc_opt_self();
              v37 = [v36 _atomicIncrementAssertCount];
              v78[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v78);
              StaticString.description.getter();
              v38 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v47 = String._bridgeToObjectiveC()();

              v48 = [v47 lastPathComponent];

              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v49;

              if (qword_1019F20A0 != -1)
              {
                swift_once();
              }

              goto LABEL_39;
            }
          }
        }

        v20 = v15 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        if (**(v15 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
          __break(1u);
          goto LABEL_31;
        }

        swift_beginAccess();

        v74 = sub_1005B981C(&qword_101A28680);
        v75 = v16;
        v21 = v70;
        CRRegister.wrappedValue.getter();
        swift_endAccess();
        *(v21 + *(v73 + 48)) = 1;
        v76 = v15;
        v22 = v71;
        sub_100050004(v21, v71, type metadata accessor for CRLMovieItemAssetData);
        swift_beginAccess();
        sub_100050004(v22, v72, type metadata accessor for CRLMovieItemAssetData);
        CRRegister.wrappedValue.setter();
        v23 = v22;
        v24 = v76;
        sub_10003D7BC(v23, type metadata accessor for CRLMovieItemAssetData);
        swift_endAccess();

        sub_10003D7BC(v21, type metadata accessor for CRLMovieItemAssetData);
        if (*(v24 + v75) || (v33 = swift_unknownObjectWeakLoadStrong()) == 0)
        {
          v25 = v10;
          v7 = v68;
          a1 = v69;
        }

        else
        {
          v34 = v33;
          v35 = (*((swift_isaMask & *v33) + 0x388))(v10);

          v7 = v68;
          a1 = v69;
          if (v35)
          {
            v36 = objc_opt_self();
            v37 = [v36 _atomicIncrementAssertCount];
            v78[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, v78);
            StaticString.description.getter();
            v38 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v39 = String._bridgeToObjectiveC()();

            v40 = [v39 lastPathComponent];

            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            goto LABEL_39;
          }
        }

        goto LABEL_23;
      }

LABEL_6:
      ++v8;

      if (v7 == v8)
      {
        return;
      }
    }

    v12 = v11;
    if (*(v11 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext) || (v26 = swift_unknownObjectWeakLoadStrong()) == 0)
    {
      v13 = v10;
    }

    else
    {
      v27 = v26;
      v28 = (*((swift_isaMask & *v26) + 0x388))(v10);

      if (v28)
      {
        goto LABEL_34;
      }
    }

    v20 = v12 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
LABEL_23:
    v29 = *(**v20 + 440);

    v31 = v29(v30);

    if (v31)
    {

      v32 = *(**v20 + 448);

      v32(0);
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_34:
  v36 = objc_opt_self();
  v37 = [v36 _atomicIncrementAssertCount];
  v78[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v78);
  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  v45 = [v44 lastPathComponent];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v46;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

LABEL_39:
  v50 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v37;
  v52 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v52;
  v53 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v53;
  *(inited + 72) = v38;
  *(inited + 136) = &type metadata for String;
  v54 = sub_1000053B0();
  *(inited + 112) = v41;
  *(inited + 120) = v43;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v54;
  *(inited + 152) = 79;
  v55 = v78[0];
  *(inited + 216) = v52;
  *(inited + 224) = v53;
  *(inited + 192) = v55;
  v56 = v38;
  v57 = v55;
  v58 = static os_log_type_t.error.getter();
  sub_100005404(v50, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v59 = static os_log_type_t.error.getter();
  sub_100005404(v50, &_mh_execute_header, v59, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
  type metadata accessor for __VaListBuilder();
  v60 = swift_allocObject();
  v60[2] = 8;
  v60[3] = 0;
  v60[4] = 0;
  v60[5] = 0;
  v61 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v62 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v63 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v64 = String._bridgeToObjectiveC()();

  [v36 handleFailureInFunction:v62 file:v63 lineNumber:79 isFatal:1 format:v64 args:v61];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v65, v66);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10105A1B4()
{
  result = [*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) shouldPreventSyncingContentOffset];
  if (!result)
  {
    result = [*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView) contentOffset];
    v2 = (v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastContentOffset);
    *v2 = v3;
    v2[1] = v4;
  }

  return result;
}

uint64_t sub_10105A224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10104D3D8(a1, v4, v5, v6);
}

uint64_t sub_10105A2D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_101046A18(v2, v3, v4);
}

uint64_t sub_10105A3A4(unint64_t a1, unint64_t a2)
{
  v3 = a1 | a2;
  v4 = a1;
  v5 = a2;
  if (v3)
  {
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_10105A408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10103E2F8(a1, v4, v5, v7, v6);
}

uint64_t sub_10105A4C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10103D92C(a1, v4, v5, v6, v7);
}

uint64_t sub_10105A5D0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10105A654(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_101029E14(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10105A71C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_101029084(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10105A7E4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_10102820C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10105A8E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002D3D4;

  return sub_100B7C1E4(v8, v9, v10, a1, v4, v5, v6, v7, v11);
}

uint64_t sub_10105A9CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_10101DF4C();
}

uint64_t sub_10105AA8C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_10002640C(*(v0 + 80), v1);
  }

  v2 = *(v0 + 104);
  if (v2 >> 60 != 15)
  {
    sub_10002640C(*(v0 + 96), v2);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_10105AB1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_101025860();
}

uint64_t sub_10105AC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_101024DC8(a1, v4, v5, v6);
}

uint64_t sub_10105ACC0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10105AD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1006654F8(a1, v4, v5, v6);
}

uint64_t sub_10105ADCC()
{

  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    sub_10002640C(v0[8], v1);
  }

  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_10002640C(v0[10], v2);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_10105AE88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_10101D038();
}

uint64_t sub_10105AF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10101C4D4(a1, v4, v5, v7, v6);
}

uint64_t sub_10105B00C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10105B054(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10101BD70(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10105B19C()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10105B228()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = v0 + ((*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_101039978(v0[4], v0[5], v0 + v1, *v2, *(v2 + 1), v0[2], v0[3]);
}

uint64_t sub_10105B298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10101853C(a1, v4, v5, v6);
}

BOOL sub_10105B52C()
{
  if (*(v0[2] + 16))
  {
    return 0;
  }

  if (*(v0[3] + 16))
  {
    return 0;
  }

  if (*(v0[4] + 16))
  {
    return 0;
  }

  return *(v0[5] + 16) == 0;
}

uint64_t sub_10105B57C()
{
  v1[114] = v0;
  sub_1005B981C(&qword_101A288F0);
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v2 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
  v1[119] = v2;
  v1[120] = *(v2 - 8);
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();

  return _swift_task_switch(sub_10105B6BC, v0, 0);
}

uint64_t sub_10105B6BC()
{
  v1 = swift_task_alloc();
  *(v0 + 1000) = v1;
  *v1 = v0;
  v1[1] = sub_10105B750;

  return sub_101078634();
}

uint64_t sub_10105B750(uint64_t a1)
{
  v2 = *(*v1 + 912);
  *(*v1 + 1008) = a1;

  return _swift_task_switch(sub_10105B868, v2, 0);
}

uint64_t sub_10105B868()
{
  v1 = v0[126];
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (!v3)
  {
    v32 = v1[3];
    v33 = *(v32 + 16);
    if (v33)
    {
      v141 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    if (!*(v1[4] + 16) && !*(v1[5] + 16))
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v127 = static OS_os_log.realTimeSync;
      v128 = static os_log_type_t.info.getter();
      sub_100005404(v127, &_mh_execute_header, v128, "No changes to send over real-time channel. Nothing to do", 56, 2, _swiftEmptyArrayStorage);

      v140 = _swiftEmptyArrayStorage;
      v142 = _swiftEmptyArrayStorage;
      v123 = _swiftEmptyArrayStorage;
      v136 = _swiftEmptyArrayStorage;
      goto LABEL_69;
    }

    v61 = _swiftEmptyArrayStorage;
    v140 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v4 = *(v0[114] + 128);
  v5 = v2 + 32;
  v133 = (v0[120] + 56);
  v139 = type metadata accessor for PropertyListEncoder();

  v141 = _swiftEmptyArrayStorage;
  do
  {
    v0[41] = v139;
    v0[42] = &off_1018AF2E0;
    v0[38] = v4;
    sub_10000630C(v5, (v0 + 73));
    v9 = v0[76];
    v10 = v0[77];
    sub_100020E58(v0 + 73, v9);
    v11 = *(v10 + 24);

    if (v11(v9, v10) != 5)
    {
      goto LABEL_4;
    }

    sub_10000630C((v0 + 73), (v0 + 93));
    sub_1005B981C(&qword_101A11C70);
    v12 = swift_dynamicCast();
    v13 = *v133;
    if (!v12)
    {
      v6 = v0[118];
      v13(v6, 1, 1, v0[119]);
      sub_10105DAC4(v6);
LABEL_4:
      v7 = v0[76];
      v8 = v0[77];
      sub_100020E58(v0 + 73, v7);
      v18 = (*(v8 + 32))(v0 + 38, v7, v8);
      v20 = v19;
      v21 = v0[76];
      v22 = v0[77];
      sub_100020E58(v0 + 73, v21);
      v23 = (*(v22 + 24))(v21, v22);
      sub_100005070((v0 + 38));
      goto LABEL_9;
    }

    v14 = v0[124];
    v15 = v0[118];
    v13(v15, 0, 1, v0[119]);
    sub_10105DB2C(v15, v14);
    v16 = sub_1006FEBDC();
    v17 = v0[124];
    v18 = v16;
    v20 = v24;
    v25 = v0[76];
    v26 = v0[77];
    sub_100020E58(v0 + 73, v25);
    v23 = (*(v26 + 24))(v25, v26);
    sub_100005070((v0 + 38));
    sub_10105DB90(v17);
LABEL_9:
    sub_100005070((v0 + 73));
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v141;
    }

    else
    {
      v27 = sub_100B36FF8(0, *(v141 + 2) + 1, 1, v141);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_100B36FF8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v141 = v27;
    v30 = &v27[24 * v29];
    *(v30 + 4) = v23;
    *(v30 + 5) = v18;
    *(v30 + 6) = v20;
    v5 += 40;
    --v3;
  }

  while (v3);
  v31 = v0[126];

  v32 = *(v31 + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
LABEL_19:
    v34 = *(v0[114] + 128);
    v35 = v32 + 32;
    v131 = (v0[120] + 56);
    v137 = type metadata accessor for PropertyListEncoder();

    v140 = _swiftEmptyArrayStorage;
    while (1)
    {
      v0[46] = v137;
      v0[47] = &off_1018AF2E0;
      v0[43] = v34;
      sub_10000630C(v35, (v0 + 48));
      v39 = v0[51];
      v40 = v0[52];
      sub_100020E58(v0 + 48, v39);
      v41 = *(v40 + 24);

      if (v41(v39, v40) == 5)
      {
        sub_10000630C((v0 + 48), (v0 + 88));
        sub_1005B981C(&qword_101A11C70);
        v42 = swift_dynamicCast();
        v43 = *v131;
        if (v42)
        {
          v44 = v0[123];
          v45 = v0[117];
          v43(v45, 0, 1, v0[119]);
          sub_10105DB2C(v45, v44);
          v46 = sub_1006FEBDC();
          v47 = v0[123];
          v48 = v46;
          v50 = v54;
          v55 = v0[51];
          v56 = v0[52];
          sub_100020E58(v0 + 48, v55);
          v53 = (*(v56 + 24))(v55, v56);
          sub_100005070((v0 + 43));
          sub_10105DB90(v47);
          goto LABEL_26;
        }

        v36 = v0[117];
        v43(v36, 1, 1, v0[119]);
        sub_10105DAC4(v36);
      }

      v37 = v0[51];
      v38 = v0[52];
      sub_100020E58(v0 + 48, v37);
      v48 = (*(v38 + 32))(v0 + 43, v37, v38);
      v50 = v49;
      v51 = v0[51];
      v52 = v0[52];
      sub_100020E58(v0 + 48, v51);
      v53 = (*(v52 + 24))(v51, v52);
      sub_100005070((v0 + 43));
LABEL_26:
      sub_100005070((v0 + 48));
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v57 = v140;
      }

      else
      {
        v57 = sub_100B36FF8(0, *(v140 + 2) + 1, 1, v140);
      }

      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      if (v59 >= v58 >> 1)
      {
        v57 = sub_100B36FF8((v58 > 1), v59 + 1, 1, v57);
      }

      *(v57 + 2) = v59 + 1;
      v140 = v57;
      v60 = &v57[24 * v59];
      *(v60 + 4) = v53;
      *(v60 + 5) = v48;
      *(v60 + 6) = v50;
      v35 += 40;
      if (!--v33)
      {

        goto LABEL_34;
      }
    }
  }

  v140 = _swiftEmptyArrayStorage;
LABEL_34:
  v61 = v141;
LABEL_35:
  v62 = v0[126];
  v63 = *(v62 + 32);
  v64 = *(v63 + 16);
  v142 = v61;
  if (v64)
  {
    v65 = *(v0[114] + 128);
    v66 = v63 + 32;
    v130 = (v0[120] + 56);
    v134 = type metadata accessor for PropertyListEncoder();

    v138 = _swiftEmptyArrayStorage;
    while (1)
    {
      v0[56] = v134;
      v0[57] = &off_1018AF2E0;
      v0[53] = v65;
      sub_10000630C(v66, (v0 + 58));
      v70 = v0[61];
      v71 = v0[62];
      sub_100020E58(v0 + 58, v70);
      v72 = *(v71 + 24);

      if (v72(v70, v71) == 5)
      {
        sub_10000630C((v0 + 58), (v0 + 83));
        sub_1005B981C(&qword_101A11C70);
        v73 = swift_dynamicCast();
        v74 = *v130;
        if (v73)
        {
          v75 = v0[122];
          v76 = v0[116];
          v74(v76, 0, 1, v0[119]);
          sub_10105DB2C(v76, v75);
          v77 = sub_1006FEBDC();
          v78 = v0[122];
          v79 = v77;
          v81 = v85;
          v86 = v0[61];
          v87 = v0[62];
          sub_100020E58(v0 + 58, v86);
          v84 = (*(v87 + 24))(v86, v87);
          sub_100005070((v0 + 53));
          sub_10105DB90(v78);
          goto LABEL_43;
        }

        v67 = v0[116];
        v74(v67, 1, 1, v0[119]);
        sub_10105DAC4(v67);
      }

      v68 = v0[61];
      v69 = v0[62];
      sub_100020E58(v0 + 58, v68);
      v79 = (*(v69 + 32))(v0 + 53, v68, v69);
      v81 = v80;
      v82 = v0[61];
      v83 = v0[62];
      sub_100020E58(v0 + 58, v82);
      v84 = (*(v83 + 24))(v82, v83);
      sub_100005070((v0 + 53));
LABEL_43:
      sub_100005070((v0 + 58));
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v88 = v138;
      }

      else
      {
        v88 = sub_100B36FF8(0, *(v138 + 2) + 1, 1, v138);
      }

      v90 = *(v88 + 2);
      v89 = *(v88 + 3);
      if (v90 >= v89 >> 1)
      {
        v88 = sub_100B36FF8((v89 > 1), v90 + 1, 1, v88);
      }

      *(v88 + 2) = v90 + 1;
      v138 = v88;
      v91 = &v88[24 * v90];
      *(v91 + 4) = v84;
      *(v91 + 5) = v79;
      *(v91 + 6) = v81;
      v66 += 40;
      if (!--v64)
      {

        v62 = v0[126];
        v61 = v142;
        goto LABEL_51;
      }
    }
  }

  v138 = _swiftEmptyArrayStorage;
LABEL_51:
  v92 = *(v62 + 40);
  v93 = *(v92 + 16);
  if (!v93)
  {
    v95 = _swiftEmptyArrayStorage;
    goto LABEL_66;
  }

  v135 = *(v0[114] + 128);
  v94 = v92 + 32;
  v129 = (v0[120] + 56);
  v132 = type metadata accessor for PropertyListEncoder();

  v95 = _swiftEmptyArrayStorage;
  while (2)
  {
    v0[66] = v132;
    v0[67] = &off_1018AF2E0;
    v0[63] = v135;
    sub_10000630C(v94, (v0 + 68));
    v99 = v0[71];
    v100 = v0[72];
    sub_100020E58(v0 + 68, v99);
    v101 = *(v100 + 24);

    if (v101(v99, v100) != 5)
    {
      goto LABEL_54;
    }

    sub_10000630C((v0 + 68), (v0 + 78));
    sub_1005B981C(&qword_101A11C70);
    v102 = swift_dynamicCast();
    v103 = *v129;
    if (!v102)
    {
      v96 = v0[115];
      v103(v96, 1, 1, v0[119]);
      sub_10105DAC4(v96);
LABEL_54:
      v97 = v0[71];
      v98 = v0[72];
      sub_100020E58(v0 + 68, v97);
      v108 = (*(v98 + 32))(v0 + 63, v97, v98);
      v110 = v109;
      v111 = v0[71];
      v112 = v0[72];
      sub_100020E58(v0 + 68, v111);
      v113 = (*(v112 + 24))(v111, v112);
      sub_100005070((v0 + 63));
      goto LABEL_59;
    }

    v104 = v0[121];
    v105 = v0[115];
    v103(v105, 0, 1, v0[119]);
    sub_10105DB2C(v105, v104);
    v106 = sub_1006FEBDC();
    v107 = v0[121];
    v108 = v106;
    v110 = v114;
    v115 = v0[71];
    v116 = v95;
    v117 = v0[72];
    sub_100020E58(v0 + 68, v115);
    v118 = *(v117 + 24);
    v119 = v117;
    v95 = v116;
    v113 = v118(v115, v119);
    sub_100005070((v0 + 63));
    sub_10105DB90(v107);
LABEL_59:
    sub_100005070((v0 + 68));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_100B36FF8(0, *(v95 + 2) + 1, 1, v95);
    }

    v121 = *(v95 + 2);
    v120 = *(v95 + 3);
    if (v121 >= v120 >> 1)
    {
      v95 = sub_100B36FF8((v120 > 1), v121 + 1, 1, v95);
    }

    *(v95 + 2) = v121 + 1;
    v122 = &v95[24 * v121];
    *(v122 + 4) = v113;
    *(v122 + 5) = v108;
    *(v122 + 6) = v110;
    v94 += 40;
    if (--v93)
    {
      continue;
    }

    break;
  }

  v61 = v142;
LABEL_66:
  if (*(v0[114] + 144) == 1)
  {

    v123 = v138;
    v136 = v95;
  }

  else
  {
    v143 = v61;
    sub_10079C074(v140);
    v140 = v143;
    sub_10079C074(v95);

    v136 = v138;
    v123 = _swiftEmptyArrayStorage;
    v142 = _swiftEmptyArrayStorage;
  }

LABEL_69:
  sub_1005B981C(&qword_101A288F8);
  v124 = swift_allocObject();
  v124[2] = v142;
  v124[3] = v140;
  v124[4] = v123;
  v124[5] = v136;

  v125 = v0[1];

  return v125(v124);
}

uint64_t sub_10105CAE0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return _swift_task_switch(sub_10105CB04, v2, 0);
}

uint64_t sub_10105CB04()
{
  v1 = *(v0[18] + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[20] + 136);
    v4 = type metadata accessor for PropertyListDecoder();
    v5 = (v1 + 48);
    v6 = _swiftEmptyArrayStorage;
    v23 = v4;
    v24 = v3;
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v0[10] = v4;
      v0[11] = &off_1018AF2F0;
      v0[7] = v3;
      sub_100024E98(v8, v9);

      sub_10105CF5C(v0 + 7, v7, v8, v9, v0 + 2);
      sub_100005070((v0 + 7));
      sub_10000630C((v0 + 2), (v0 + 12));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[17] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_100B37140(0, v6[2] + 1, 1, v6);
        v0[17] = v6;
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v19 = sub_100B37140((v11 > 1), v12 + 1, 1, v6);
        sub_10002640C(v8, v9);
        v13 = v19;
        v0[17] = v19;
      }

      else
      {
        v13 = v6;
        sub_10002640C(v8, v9);
      }

      sub_100005070((v0 + 2));
      v14 = v0[15];
      v15 = v0[16];
      v16 = sub_10002A948((v0 + 12), v14);
      v17 = *(v14 - 8);
      v18 = swift_task_alloc();
      (*(v17 + 16))(v18, v16, v14);
      sub_100725200(v12, v18, v0 + 17, v14, v15);
      sub_100005070((v0 + 12));

      v6 = v13;
      v4 = v23;
      v3 = v24;
      v5 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v0[21] = v6;
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = sub_10105CE30;
  v21 = v0[19];

  return sub_101077DA0(v6, v21);
}

uint64_t sub_10105CE30()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_10070EEBC, v1, 0);
}

uint64_t sub_10105CF5C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_100BF0C28(a2);
  v11 = v10;
  if (v10 <= 2u)
  {
    v75 = v10;
    if (v10)
    {
      v18 = a1[3];
      v19 = a1[4];
      if (v10 == 1)
      {
        sub_100020E58(a1, a1[3]);
        v20 = type metadata accessor for CRLBoardItemRealTimeChangeRecord();
        v74 = *(v19 + 8);
        a5[3] = v20;
        v21 = type metadata accessor for CRLBoardItemRealTimeChangeRecord;
        a5[4] = sub_10105DA7C(&qword_101A288E0, type metadata accessor for CRLBoardItemRealTimeChangeRecord);
        v22 = &unk_101A26730;
      }

      else
      {
        sub_100020E58(a1, a1[3]);
        v20 = type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord();
        v74 = *(v19 + 8);
        a5[3] = v20;
        v21 = type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord;
        a5[4] = sub_10105DA7C(&qword_101A288D8, type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord);
        v22 = &qword_1019F4380;
      }
    }

    else
    {
      v18 = a1[3];
      v19 = a1[4];
      sub_100020E58(a1, v18);
      v20 = type metadata accessor for CRLBoardRealTimeChangeRecord();
      v74 = *(v19 + 8);
      a5[3] = v20;
      v21 = type metadata accessor for CRLBoardRealTimeChangeRecord;
      a5[4] = sub_10105DA7C(&qword_101A288E8, type metadata accessor for CRLBoardRealTimeChangeRecord);
      v22 = &unk_101A0FC90;
    }

    v24 = sub_10105DA7C(v22, v21);
    result = v74(v20, a3, a4, v20, v24, v18, v19);
    if (v5)
    {
      goto LABEL_17;
    }
  }

  else if (v10 > 4u)
  {
    if (v10 == 5)
    {
      a5[3] = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
      a5[4] = sub_10105DA7C(&qword_1019FC0F8, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord);
      v23 = sub_10002C58C(a5);
      sub_100024E98(a3, a4);
      result = sub_1006FE524(a3, a4, v23);
      if (v5)
      {
LABEL_18:
        sub_100B3EB7C(a5);
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C4D0;
        *(inited + 32) = v11;
        v76 = inited + 32;
        *(inited + 56) = &type metadata for Int;
        *(inited + 64) = &protocol witness table for Int;
        swift_getErrorValue();
        v31 = Error.fullDescription.getter(v77[6]);
        v33 = v32;
        *(inited + 96) = &type metadata for String;
        v37 = sub_1000053B0();
        *(inited + 104) = v37;
        *(inited + 72) = v31;
        *(inited + 80) = v33;
        swift_getErrorValue();
        v34 = Error.publicDescription.getter(v77[2], v77[3]);
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v37;
        v35 = v37;
        *(inited + 112) = v34;
        *(inited + 120) = v36;
        v73 = objc_opt_self();
        LODWORD(v37) = [v73 _atomicIncrementAssertCount];
        v77[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(inited, v77);
        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        v40 = [v39 lastPathComponent];

        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        if (qword_1019F20A0 != -1)
        {
          goto LABEL_52;
        }

        while (1)
        {
          v44 = static OS_os_log.crlAssert;
          v45 = swift_initStackObject();
          *(v45 + 16) = xmmword_10146CA70;
          *(v45 + 56) = &type metadata for Int32;
          *(v45 + 64) = &protocol witness table for Int32;
          *(v45 + 32) = v37;
          v46 = sub_1005CF000();
          *(v45 + 96) = v46;
          v47 = sub_10105DA7C(&qword_1019F52E0, sub_1005CF000);
          *(v45 + 72) = v38;
          *(v45 + 136) = &type metadata for String;
          *(v45 + 144) = v35;
          *(v45 + 104) = v47;
          *(v45 + 112) = v41;
          *(v45 + 120) = v43;
          *(v45 + 176) = &type metadata for UInt;
          *(v45 + 184) = &protocol witness table for UInt;
          *(v45 + 152) = 153;
          v48 = v77[0];
          *(v45 + 216) = v46;
          *(v45 + 224) = v47;
          *(v45 + 192) = v48;
          v49 = v38;
          v50 = v48;
          v51 = static os_log_type_t.error.getter();
          sub_100005404(v44, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v52 = static os_log_type_t.error.getter();
          sub_100005404(v44, &_mh_execute_header, v52, "Failed to decode real time change record of payloadType %{public}d with error %@ %{public}@", 91, 2, inited);

          type metadata accessor for __VaListBuilder();
          v38 = swift_allocObject();
          v38[2] = 8;
          v38[3] = 0;
          v53 = v38 + 3;
          v38[4] = 0;
          v38[5] = 0;
          v37 = *(inited + 16);
          if (!v37)
          {
LABEL_44:
            v68 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v69 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v70 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v71 = String._bridgeToObjectiveC()();

            [v73 handleFailureInFunction:v69 file:v70 lineNumber:153 isFatal:0 format:v71 args:v68];

            swift_setDeallocating();
            swift_arrayDestroy();
            return swift_willThrow();
          }

          v54 = 0;
          inited = 40;
          while (1)
          {
            v55 = (v76 + 40 * v54);
            v41 = v55[3];
            v43 = sub_100020E58(v55, v41);
            v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
            v57 = *v53;
            v58 = *(v56 + 16);
            v59 = __OFADD__(*v53, v58);
            v60 = *v53 + v58;
            if (v59)
            {
              break;
            }

            v41 = v38[4];
            if (v41 >= v60)
            {
              goto LABEL_36;
            }

            if (v41 + 0x4000000000000000 < 0)
            {
              goto LABEL_50;
            }

            v43 = v38[5];
            if (2 * v41 > v60)
            {
              v60 = 2 * v41;
            }

            v38[4] = v60;
            if ((v60 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_51;
            }

            v35 = v56;
            v61 = swift_slowAlloc();
            v62 = v61;
            v38[5] = v61;
            if (v43)
            {
              if (v61 != v43 || v61 >= &v43[v57])
              {
                memmove(v61, v43, 8 * v57);
              }

              v43 = v38;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v56 = v35;
LABEL_36:
              v62 = v38[5];
              if (!v62)
              {
                goto LABEL_43;
              }

              goto LABEL_37;
            }

            v56 = v35;
            if (!v62)
            {
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_37:
            v64 = *(v56 + 16);
            if (v64)
            {
              v65 = (v56 + 32);
              v66 = *v53;
              while (1)
              {
                v67 = *v65++;
                v62[v66] = v67;
                v66 = *v53 + 1;
                if (__OFADD__(*v53, 1))
                {
                  break;
                }

                *v53 = v66;
                if (!--v64)
                {
                  goto LABEL_21;
                }
              }

              __break(1u);
              break;
            }

LABEL_21:

            if (++v54 == v37)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          swift_once();
        }
      }
    }

    else
    {
      sub_1009F9FB8();
      swift_allocError();
      *v72 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v75 = v10;
    if (v10 == 3)
    {
      v12 = a1[3];
      v13 = a1[4];
      sub_100020E58(a1, v12);
      v14 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy();
      v15 = *(v13 + 8);
      a5[3] = v14;
      a5[4] = sub_10105DA7C(&qword_101A27240, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
      sub_10002C58C(a5);
      v16 = sub_10105DA7C(&qword_101A272E0, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
      result = v15(v14, a3, a4, v14, v16, v12, v13);
      if (!v5)
      {
        return result;
      }

      goto LABEL_17;
    }

    v25 = a1[3];
    v26 = a1[4];
    sub_100020E58(a1, v25);
    v27 = type metadata accessor for CRLSharePlayRealTimeChangeRecord();
    v28 = *(v26 + 8);
    a5[3] = v27;
    a5[4] = sub_10105DA7C(&qword_101A288D0, type metadata accessor for CRLSharePlayRealTimeChangeRecord);
    v29 = sub_10105DA7C(&qword_101A22F50, type metadata accessor for CRLSharePlayRealTimeChangeRecord);
    result = v28(v27, a3, a4, v27, v29, v25, v26);
    if (v5)
    {
LABEL_17:
      v11 = v75;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_10105D9C8()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_10105DA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10105DAC4(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A288F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10105DB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10105DB90(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10105DBF0()
{
  result = qword_101A28900;
  if (!qword_101A28900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28900);
  }

  return result;
}

unint64_t sub_10105DC48()
{
  result = qword_101A28908;
  if (!qword_101A28908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28908);
  }

  return result;
}

uint64_t sub_10105DCEC@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v1 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v1 - 8);
  v52 = &v39[-v2];
  v57 = type metadata accessor for InputConnectionBehavior();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v4 - 8);
  v51 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v54 = &v39[-v7];
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v50 = &v39[-v9];
  v10 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v10 - 8);
  v59 = &v39[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v55 = type metadata accessor for LocalizedStringResource();
  v60 = *(v55 - 8);
  __chkstk_darwin(v55);
  v47 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v53 = &v39[-v20];
  v48 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = v21;
  v41 = v12;
  v22(v15, v21, v12);
  v43 = v13 + 104;
  v42 = v22;
  v23 = v59;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v60 + 56);
  v60 += 56;
  v49 = v24;
  v24(v23, 0, 1, v55);
  v25 = type metadata accessor for CRLBoardEntity();
  (*(*(v25 - 8) + 56))(v50, 1, 1, v25);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v21, v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v54;
  IntentDialog.init(_:)();
  v27 = type metadata accessor for IntentDialog();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v47 = (v28 + 56);
  v46 = v29;
  v29(v26, 0, 1, v27);
  v29(v51, 1, 1, v27);
  v44 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v61 + 104);
  v61 += 104;
  v45 = v30;
  v30(v56);
  sub_1006B0634(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  *v58 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v51 = sub_1005B981C(&qword_1019FC888);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v40;
  v32 = v41;
  v33 = v42;
  v42(v15, v40, v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v15, v31, v32);
  v34 = v59;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v49(v34, 0, 1, v55);
  v35 = type metadata accessor for AttributedString();
  (*(*(v35 - 8) + 56))(v52, 1, 1, v35);
  v46(v54, 1, 1, v27);
  v45(v56, v44, v57);
  v36 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  v37 = v58;
  v58[1] = v36;
  sub_1005B981C(&qword_1019F6280);
  v62 = 0xD00000000000001FLL;
  v63 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v37[2] = result;
  v37[6] = &type metadata for CRLBoardItemInsertionPerformer;
  v37[7] = &off_1018A33D0;
  return result;
}

uint64_t sub_10105E6B0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_1005B981C(&qword_1019FC880);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for CRLBoardEntity();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_10105E808, 0, 0);
}

uint64_t sub_10105E808()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = static OS_os_log.appIntents;
  Logger.init(_:)();
  v0[25] = *v1;
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  sub_100020E58(v0 + 2, &type metadata for CRLBoardLibraryProvidingDependency);
  v0[26] = type metadata accessor for MainActor();
  v0[27] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_10105E95C;
  v4 = v0[21];

  return sub_1010AF408(v4);
}

uint64_t sub_10105E95C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10105EF40;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_10105EADC;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10105EADC()
{
  v1 = v0[30];

  v0[10] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v0[11] = &off_1018ADA90;
  v0[7] = v1;

  return _swift_task_switch(sub_10105EB60, 0, 0);
}

uint64_t sub_10105EB60()
{
  v1 = sub_101060950(7u, *(v0 + 120), *(v0 + 56));
  *(v0 + 248) = v1;
  sub_100020E58((v0 + 56), *(v0 + 80));
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v0 + 256) = v2;
  *(v2 + 16) = xmmword_101465920;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_10105EC68;

  return sub_100FE17C4(v2);
}

uint64_t sub_10105EC68()
{

  return _swift_task_switch(sub_10105ED80, 0, 0);
}

uint64_t sub_10105ED80()
{
  v1 = *sub_100020E58(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_10105EE28;

  return sub_100FF8D2C((v0 + 7), v1);
}

uint64_t sub_10105EE28()
{

  if (v0)
  {

    v1 = sub_10105F20C;
  }

  else
  {
    v1 = sub_101061AB4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10105EF40()
{

  return _swift_task_switch(sub_10105EFA8, 0, 0);
}

uint64_t sub_10105EFA8()
{
  v1 = v0[21];
  sub_10000CAAC(v0[15], &qword_1019FC880);
  sub_100689004(v1);
  sub_100005070((v0 + 2));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error inserting text: %@", v4, 0xCu);
    sub_10000CAAC(v5, &unk_101A27F60);
  }

  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];

  type metadata accessor for AppIntentError();
  sub_1006B0634(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  static AppIntentError.Unrecoverable.unknown.getter();
  swift_willThrow();

  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10105F20C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v12 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);

  sub_10000CAAC(v8, &qword_1019FC880);
  sub_100689004(v4);
  sub_100005070(v0 + 56);
  sub_100005070(v0 + 16);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v9 = sub_100B0768C();
  sub_1006B05D0(v6, v5);
  sub_1006B05D0(v5, v7);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v5);
  sub_100689004(v6);
  *(v0 + 96) = v9;
  sub_1006B0634(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v3);
  (*(v2 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10105F3F4()
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
  sub_10061655C(v6, qword_101AD8D50);
  sub_1005EB3DC(v6, qword_101AD8D50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10105F5EC()
{
  v0 = sub_1005B981C(&qword_101A289A0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A289A8);
  __chkstk_darwin(v1);
  sub_101061A60();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001015BCBB0;
  v2._countAndFlagsBits = 0xD000000000000012;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A289B0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A289B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10105F898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10105E6B0(a1);
}

uint64_t sub_10105F934(uint64_t a1)
{
  v2 = sub_101061A60();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10105F974()
{
  result = qword_101A28910;
  if (!qword_101A28910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28910);
  }

  return result;
}

unint64_t sub_10105F9CC()
{
  result = qword_101A28918;
  if (!qword_101A28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28918);
  }

  return result;
}

uint64_t sub_10105FA70(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for CRLBoardEntity();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10105FB28, 0, 0);
}

uint64_t sub_10105FB28()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v5 = sub_100B0768C();
  sub_1006B05D0(v1, v4);
  sub_1006B05D0(v4, v3);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v4);
  sub_100689004(v1);
  v0[2] = v5;
  sub_1006B0634(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10105FC94()
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
  sub_10061655C(v6, qword_101AD8D68);
  sub_1005EB3DC(v6, qword_101AD8D68);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10105FE90@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_1005B981C(&qword_101A28970);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1005B981C(&qword_101A28978);
  __chkstk_darwin(v2);
  v3 = sub_1005B981C(&qword_101A28958);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_101061A0C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x20747265736E49;
  v10._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A28980);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 544106784;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A28990);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 544108320;
  v12._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A28988);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10001A2F8(&qword_101A28960, &qword_101A28958);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v9, v3);
}

uint64_t sub_10106022C@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1005B981C(&qword_101A28970);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1005B981C(&qword_101A28978);
  __chkstk_darwin(v2);
  v3 = sub_1005B981C(&qword_101A28958);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_101061A0C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x20747265736E49;
  v10._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A28980);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 544108320;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A28988);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10001A2F8(&qword_101A28960, &qword_101A28958);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_101060588()
{
  swift_getKeyPath();
  sub_101061A0C();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_1005B981C(&unk_1019F4D60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101465920;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_101060668()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_1005B981C(&qword_101A28958);
  sub_10001A2F8(&qword_101A28960, &qword_101A28958);
  sub_10001A2F8(&qword_101A28968, &qword_101A28948);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_101060828(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10105FA70(a1, v4);
}

char *sub_1010608C8@<X0>(char **a1@<X8>)
{
  result = sub_101060EFC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1010608F4(uint64_t a1)
{
  v2 = sub_101061A0C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_101060950(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v6 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v6 - 8);
  v43 = &v40 - v7;
  v8 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v8 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  v47 = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v48 = &off_1018ADA90;
  v46[0] = a3;
  v41 = a2;
  sub_100824324(a2, v12);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    v23 = a3;
    sub_10000CAAC(v12, &qword_1019FC880);
    v24 = [objc_allocWithZone(NSAttributedString) init];
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    sub_100824394();
    (*(v14 + 16))(v18, v21, v13);
    v25 = a3;
    v24 = NSAttributedString.init(_:)();
    (*(v14 + 8))(v21, v13);
  }

  v26 = *(*(*sub_100020E58(v46, v47) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v34 = v26;
      if (a1 == 7)
      {
        v35 = sub_10110F088(v24);
      }

      else
      {
        v35 = sub_10110F4B0(v24);
      }

      v38 = v35;

      goto LABEL_28;
    }

    if (a1 == 4)
    {
      v29 = 14;
    }

    else
    {
      v29 = 6;
    }
  }

  else
  {
    v27 = 5;
    v28 = 4;
    if (a1 != 2)
    {
      v28 = 3;
    }

    if (a1)
    {
      v27 = 1;
    }

    if (a1 <= 1u)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }
  }

  sub_1006950BC(v44);
  v49[12] = v44[12];
  v49[13] = v44[13];
  v49[14] = v44[14];
  v50 = v45;
  v49[8] = v44[8];
  v49[9] = v44[9];
  v49[10] = v44[10];
  v49[11] = v44[11];
  v49[4] = v44[4];
  v49[5] = v44[5];
  v49[6] = v44[6];
  v49[7] = v44[7];
  v49[0] = v44[0];
  v49[1] = v44[1];
  v49[2] = v44[2];
  v49[3] = v44[3];
  v30 = sub_100824318(v29);
  v31 = v26;
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v33 = v42;
    sub_100824324(v41, v42);
    if (v22(v33, 1, v13) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v22(v33, 1, v13) != 1)
      {
        sub_10000CAAC(v33, &qword_1019FC880);
      }
    }

    else
    {
      (*(v14 + 32))(v40, v33, v13);
    }

    sub_100824394();
    v32 = NSAttributedString.init(_:)();
  }

  v36 = type metadata accessor for CRLWPStorageCRDTData(0);
  v37 = v43;
  (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
  v38 = sub_1011133FC(v29, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v32, v37, v49, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v37, &unk_101A0B1C0);
LABEL_28:
  sub_100005070(v46);
  return v38;
}

char *sub_101060EFC()
{
  v0 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v0 - 8);
  v44 = &v39 - v1;
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  __chkstk_darwin(v2);
  v59 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v5 - 8);
  v54 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v39 - v8;
  v9 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v9 - 8);
  v43 = &v39 - v10;
  v11 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v11 - 8);
  v40 = &v39 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v58 = type metadata accessor for LocalizedStringResource();
  v19 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v14 + 104);
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v46 = v13;
  v22(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  v45 = v22;
  v48 = v14 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v16, v21, v13);
  v23 = v40;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53 = *(v19 + 56);
  v55 = v19 + 56;
  v24 = v23;
  v53(v23, 0, 1, v58);
  v25 = type metadata accessor for CRLBoardEntity();
  (*(*(v25 - 8) + 56))(v43, 1, 1, v25);
  v26 = type metadata accessor for IntentDialog();
  v52 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v49 = v28;
  v50 = v27 + 56;
  v28(v57, 1, 1, v26);
  v28(v54, 1, 1, v26);
  v42 = enum case for InputConnectionBehavior.default(_:);
  v51 = *(v61 + 104);
  v61 += 104;
  v51(v59);
  sub_1006B0634(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v41 = sub_1005B981C(&qword_101A28940);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v47;
  v30 = v46;
  v31 = v45;
  v45(v16, v47, v46);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v16, v29, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v24, 0, 1, v58);
  v32 = type metadata accessor for AttributedString();
  (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
  v49(v57, 1, 1, v52);
  (v51)(v59, enum case for InputConnectionBehavior.connectToPreviousIntentResult(_:), v60);
  v44 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  v41 = sub_1005B981C(&qword_101A28948);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v47;
  v34 = v46;
  v35 = v45;
  v45(v16, v47, v46);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35(v16, v33, v34);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v24, 0, 1, v58);
  v64 = 2;
  v36 = v52;
  v37 = v49;
  v49(v57, 1, 1, v52);
  v37(v54, 1, 1, v36);
  (v51)(v59, v42, v60);
  sub_100D33BA4();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_1005B981C(&qword_1019F6280);
  v62 = 0xD00000000000001FLL;
  v63 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v43;
}

unint64_t sub_101061A0C()
{
  result = qword_101A28950;
  if (!qword_101A28950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28950);
  }

  return result;
}

unint64_t sub_101061A60()
{
  result = qword_101A28998;
  if (!qword_101A28998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28998);
  }

  return result;
}

char *sub_101061ABC(void *a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController] = 0;
  v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_toolbar] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_inputViewStateAtLastReload] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__leadingBarButtonGroups] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__trailingBarButtonGroups] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc] = a1;
  v39 = a2;
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_editorController] = a3;
  v38 = a4;
  swift_unknownObjectWeakAssign();
  v43.receiver = v4;
  v43.super_class = type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryViewController();
  v9 = a1;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v43, "initWithNibName:bundle:", 0, 0);
  v12 = objc_allocWithZone(CRLQuickInspectorElement);
  v13 = v11;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithName:v14 image:0 type:2 options:16];

  v16 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterTextBuilder());
  v17 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTextDataProvider());
  *&v17[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v10;
  v18 = type metadata accessor for CRLMiniFormatterDataProvider();
  v42.receiver = v17;
  v42.super_class = v18;
  v19 = v10;
  v20 = objc_msgSendSuper2(&v42, "init");
  *&v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider] = v20;
  v21 = &v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager];
  *v21 = v20;
  v21[1] = &off_101872C50;
  v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_showHeaderView] = 0;
  v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedStackView] = 0;
  v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedLandscapeStackView] = 0;
  *&v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_headerViewHeight] = 0;
  v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_isEditingText] = 0;
  v22 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v23 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
  *v23 = 0;
  v23[1] = 0;
  *(v22 + 1) = &off_1018AF428;
  *(v22 + 2) = &off_1018AF470;
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v15;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v19;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v9;
  v24 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
  *&v24[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v19;
  v41.receiver = v24;
  v41.super_class = v18;
  v25 = v19;
  v26 = v9;
  v27 = v25;
  v28 = v20;
  v29 = v15;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v41, "init");
  v30 = [v29 crlaxLabel];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  *v23 = v32;
  v23[1] = v34;

  v40.receiver = v16;
  v40.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
  v35 = objc_msgSendSuper2(&v40, "init");

  v36 = *&v13[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder];
  *&v13[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder] = v35;

  return v13;
}

void sub_101061FA8()
{
  v1 = [v0 inputView];
  if (v1)
  {
    v2 = v1;
    [v1 setAllowsSelfSizing:1];
    v3 = [objc_allocWithZone(UIToolbar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_101062434();
    sub_100006370(0, &qword_1019F6BF0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setItems:isa];

    v5 = [objc_opt_self() blackColor];
    [v3 setTintColor:v5];

    v6 = *&v0[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_toolbar];
    *&v0[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_toolbar] = v3;
    v7 = v3;

    v8 = v7;
    v9 = v2;
    v10 = v8;
    v11 = v9;
    v12 = v10;
    v34 = v11;
    [v34 addSubview:v12];
    v13 = _UISolariumEnabled();
    if (v13)
    {
      v14 = 8.0;
    }

    else
    {
      v14 = 0.0;
    }

    if (v13)
    {
      v15 = 48.0;
    }

    else
    {
      v15 = 44.0;
    }

    v16 = objc_opt_self();
    sub_1005B981C(&unk_1019F4D60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10147AD40;
    v18 = [v34 leadingAnchor];
    v19 = [v12 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v17 + 32) = v20;
    v21 = [v34 trailingAnchor];

    v22 = [v12 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(v17 + 40) = v23;
    v24 = [v34 topAnchor];

    v25 = [v12 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    *(v17 + 48) = v26;
    v27 = [v34 safeAreaLayoutGuide];

    v28 = [v27 bottomAnchor];
    v29 = [v12 bottomAnchor];

    v30 = [v28 constraintEqualToAnchor:v29 constant:v14];
    *(v17 + 56) = v30;
    v31 = [v12 heightAnchor];

    v32 = [v31 constraintEqualToConstant:v15];
    *(v17 + 64) = v32;
    sub_100006370(0, &qword_1019F4D70);
    v33 = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints:v33];
  }
}

void sub_101062434()
{
  v1 = v0;
  v2 = _UISolariumEnabled();
  sub_1005B981C(&unk_1019F4D60);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10146E8B0;
    *(v3 + 32) = sub_101062760();
    v4 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder;
    v5 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1006083E8(1);

      v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];
      *(v3 + 40) = v8;
      v9 = *(v1 + v4);
      if (v9)
      {
        v10 = v9;
        v11 = sub_10060D460(1, 0, 1);

        v12 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v11];
        *(v3 + 48) = v12;
        v13 = *(v1 + v4);
        if (v13)
        {
          v14 = v13;
          sub_10060FA10(1, 0, 1);
          v16 = v15;

          v17 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v16];
          *(v3 + 56) = v17;
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1014C1BF0;
  *(v18 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  *(v18 + 40) = sub_101062760();
  *(v18 + 48) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  v19 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder;
  v20 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder);
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = v20;
  v22 = sub_1006083E8(1);

  v23 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v22];
  *(v18 + 56) = v23;
  *(v18 + 64) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  v24 = *(v1 + v19);
  if (!v24)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = sub_10060D460(1, 0, 1);

  v27 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v26];
  *(v18 + 72) = v27;
  *(v18 + 80) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  v28 = *(v1 + v19);
  if (v28)
  {
    v29 = v28;
    sub_10060FA10(1, 0, 1);
    v31 = v30;

    v32 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v31];
    *(v18 + 88) = v32;
    *(v18 + 96) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
    return;
  }

LABEL_15:
  __break(1u);
}

Class sub_101062760()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v0 traitCollection];
  v4 = UITraitCollection.modifyingTraits(_:)();

  v5 = [v2 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v4];
  v6 = [objc_opt_self() configurationWithFont:v5];

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  if (v8)
  {
    v9 = [v8 imageWithConfiguration:v6];
  }

  else
  {
    v9 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v11 = Strong, v12 = *(Strong + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape), v11, type metadata accessor for CRLWPStickyNoteItem(), v13 = swift_dynamicCastClass(), v12, !v13))
  {
    sub_100006370(0, &qword_1019F6BF0);
    sub_100006370(0, &qword_1019F6190);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = v9;
    v29.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v29.value.super.isa = v9;
    v31.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v29, v31, v32).super.super.isa;
    v25 = [objc_opt_self() labelColor];
    [(objc_class *)isa setTintColor:v25];
    goto LABEL_9;
  }

  v14 = [objc_opt_self() buttonWithType:0];
  [v14 setPointerInteractionEnabled:1];
  [v14 setImage:v9 forState:0];
  result = [v14 setShowsMenuAsPrimaryAction:1];
  v16 = *&v1[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder];
  if (v16)
  {
    v17 = *&v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager];
    v18 = *&v16[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager + 8];
    sub_100006370(0, &qword_1019F6C00);
    v19 = v16;
    preferredElementSize = sub_100611D3C(v17, v18);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    v21 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28).super.super.isa;

    [v14 setMenu:v21];
    [v14 setPreferredMenuElementOrder:2];
    v22 = objc_opt_self();
    v23 = [v22 labelColor];
    [v14 setTintColor:v23];

    isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v14];
    v25 = [v22 labelColor];
    [(objc_class *)isa setTintColor:v25];

    v6 = v9;
LABEL_9:

    return isa;
  }

  __break(1u);
  return result;
}

uint64_t sub_101062BD8(uint64_t a1)
{
  sub_10002A948(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

void sub_101062C2C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      sub_100006370(0, &qword_1019F6BF0);
      if (swift_dynamicCast())
      {
        if (([objc_opt_self() crl_padUI] & 1) == 0)
        {
          v4 = swift_unknownObjectWeakLoadStrong();
          if (v4)
          {
            v5 = v4;
            v6 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard);
            *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard) = 0;
            if (v6 == 1)
            {
              v7 = swift_unknownObjectWeakLoadStrong();
              if (v7)
              {
                v8 = v7;
                v9 = [v7 textInputResponder];

                if (v9)
                {
                  sub_1007E4BF0();
                }
              }
            }
          }
        }

        sub_101062DEC(v10);
      }

      else
      {
      }
    }

    else
    {

      sub_10000CAAC(v13, &unk_1019F4D00);
    }
  }
}

void sub_101062DEC(void *a1)
{
  v2 = v1;
  if ([objc_opt_self() crl_padUI])
  {
    v43 = a1;
    v4 = objc_allocWithZone(CRLQuickInspectorElement);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithName:v5 image:0 type:2 options:16];

    v7 = *&v2[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_editorController];
    v8 = *&v2[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc];
    v9 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterTextBuilder());
    v10 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTextDataProvider());
    *&v10[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v7;
    v11 = type metadata accessor for CRLMiniFormatterDataProvider();
    v48.receiver = v10;
    v48.super_class = v11;
    v12 = v6;
    v13 = v8;
    v14 = v7;
    v15 = objc_msgSendSuper2(&v48, "init");
    *&v9[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider] = v15;
    v16 = &v9[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager];
    *v16 = v15;
    v16[1] = &off_101872C50;
    v9[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_showHeaderView] = 1;
    v9[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedStackView] = 1;
    v9[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedLandscapeStackView] = 0;
    *&v9[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_headerViewHeight] = 0x4047000000000000;
    v9[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_isEditingText] = 1;
    v17 = &v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
    *(v17 + 1) = 0;
    *(v17 + 2) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v18 = &v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
    *v18 = 0;
    v18[1] = 0;
    *(v17 + 1) = &off_1018AF428;
    *(v17 + 2) = &off_1018AF470;
    swift_unknownObjectWeakAssign();
    *&v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v12;
    *&v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v14;
    *&v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v8;
    v19 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
    *&v19[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v14;
    v47.receiver = v19;
    v47.super_class = v11;
    v20 = v14;
    v21 = v12;
    v22 = v13;
    v23 = v20;
    v24 = v15;
    *&v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v47, "init");
    v25 = [v21 crlaxLabel];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    *v18 = v27;
    v18[1] = v29;

    v46.receiver = v9;
    v46.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
    v32 = objc_msgSendSuper2(&v46, "init");

    v33 = sub_100605C10();
    if (v33)
    {
      v34 = v33;
      v35 = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
      v36 = objc_allocWithZone(v35);
      v37 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder;
      *&v36[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder] = 0;
      *&v36[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint] = 0;
      *&v36[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView] = v34;
      *&v36[v37] = v32;
      v36[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useNavigationControllerWidth] = 0;
      *&v36[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_bottomPadding] = 0;
      v36[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useUCBMargins] = 1;
      v38 = &v36[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate];
      *v38 = v2;
      v38[1] = &off_1018AF470;
      v45.receiver = v36;
      v45.super_class = v35;
      v39 = v32;
      v40 = v2;
      v41 = v34;
      v42 = objc_msgSendSuper2(&v45, "initWithNibName:bundle:", 0, 0);
      if (*&v42[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder])
      {
        swift_unknownObjectWeakAssign();
      }

      sub_101063594(v42, v43);
    }

    else
    {
    }
  }

  else
  {
    v44 = sub_10106326C();
    v30 = sub_100605C10();
    if (v30)
    {
      v31 = v30;
      sub_101063A2C(v30, v44);
    }
  }
}

id sub_10106326C()
{
  v1 = objc_allocWithZone(CRLQuickInspectorElement);
  v2 = String._bridgeToObjectiveC()();
  v28 = [v1 initWithName:v2 image:0 type:2 options:16];

  if ([objc_opt_self() crl_phoneUI])
  {
    v3 = [objc_opt_self() crl_deviceIsLandscape];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_editorController);
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc);
  v6 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterTextBuilder());
  v7 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTextDataProvider());
  *&v7[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v4;
  v8 = type metadata accessor for CRLMiniFormatterDataProvider();
  v31.receiver = v7;
  v31.super_class = v8;
  v9 = v5;
  v10 = v4;
  v11 = objc_msgSendSuper2(&v31, "init");
  *&v6[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider] = v11;
  v12 = &v6[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager];
  *v12 = v11;
  v12[1] = &off_101872C50;
  v6[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_showHeaderView] = 0;
  v6[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedStackView] = v3 ^ 1;
  v6[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedLandscapeStackView] = v3;
  *&v6[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_headerViewHeight] = 0;
  v6[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_isEditingText] = 0;
  v13 = &v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = &v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
  *v14 = 0;
  v14[1] = 0;
  *(v13 + 1) = &off_1018AF428;
  *(v13 + 2) = &off_1018AF470;
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v28;
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v10;
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v5;
  v15 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
  *&v15[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v10;
  v30.receiver = v15;
  v30.super_class = v8;
  v16 = v10;
  v17 = v9;
  v18 = v16;
  v19 = v11;
  v20 = v28;
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v30, "init");
  v21 = [v20 crlaxLabel];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  *v14 = v23;
  v14[1] = v25;

  v29.receiver = v6;
  v29.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
  v26 = objc_msgSendSuper2(&v29, "init");

  return v26;
}

void sub_101063594(void *a1, void *a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = a2;
  v8 = v2;
  v9 = a1;
  if (Strong && (v10 = v9, v11 = sub_100CE7394(), Strong, v11))
  {
    v12 = [v11 presentedViewController];
    if (v12)
    {

      v13 = swift_allocObject();
      *(v13 + 16) = sub_101066124;
      *(v13 + 24) = v5;
      aBlock[4] = sub_10002AAEC;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018AF780;
      v14 = _Block_copy(aBlock);

      [v11 dismissViewControllerAnimated:1 completion:v14];

      _Block_release(v14);
    }

    else
    {
      v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
      [v15 setNavigationBarHidden:1 animated:0];
      v19 = v15;
      [v19 setModalPresentationStyle:7];
      [v19 setDelegate:v8];
      v17 = [v19 popoverPresentationController];

      if (v17)
      {
        [v17 setBarButtonItem:v7];
        [v17 setDelegate:v8];
        [v17 setPermittedArrowDirections:3];
        if (!*&v8[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController] || ![objc_opt_self() crl_phoneUI])
        {
          [v17 crl_setWillOnlyEverBePresentedAsAPopover:{1, v17}];
        }

        [v8 presentViewController:v19 animated:1 completion:{0, v17}];

        v16 = v18;
      }

      else
      {

        v16 = v19;
      }
    }
  }

  else
  {
  }
}

void sub_1010638BC(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(UINavigationController) initWithRootViewController:a1];
  [v5 setNavigationBarHidden:1 animated:0];
  v6 = v5;
  [v6 setModalPresentationStyle:7];
  [v6 setDelegate:a2];
  v8 = [v6 popoverPresentationController];

  if (v8)
  {
    [v8 setBarButtonItem:a3];
    [v8 setDelegate:a2];
    [v8 setPermittedArrowDirections:3];
    if (!*&a2[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController] || ([objc_opt_self() crl_phoneUI] & 1) == 0)
    {
      [v8 crl_setWillOnlyEverBePresentedAsAPopover:1];
    }

    [a2 presentViewController:v6 animated:1 completion:0];

    v7 = v8;
  }

  else
  {
    v7 = v6;
  }
}

void sub_101063A2C(void *a1, void *a2)
{
  v5 = objc_opt_self();
  if (![v5 crl_padUI] || (v6 = objc_msgSend(v2, "traitCollection"), v7 = objc_msgSend(v6, "crl_isCompactWidth"), v6, v7))
  {
    LOBYTE(v7) = 1;
  }

  if (![v5 crl_padUI] || (v8 = objc_msgSend(v2, "traitCollection"), v9 = objc_msgSend(v8, "crl_isCompactWidth"), v8, v10 = 0, v9))
  {
    v10 = 0x405B800000000000;
  }

  v11 = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder;
  *&v12[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder] = 0;
  *&v12[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint] = 0;
  *&v12[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView] = a1;
  *&v12[v13] = a2;
  v12[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useNavigationControllerWidth] = v7;
  *&v12[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_bottomPadding] = v10;
  v12[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useUCBMargins] = 1;
  v14 = &v12[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate];
  *v14 = v2;
  v14[1] = &off_1018AF470;
  v36.receiver = v12;
  v36.super_class = v11;
  v15 = a1;
  v16 = a2;
  v17 = v2;
  v18 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
  if (*&v18[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder])
  {
    swift_unknownObjectWeakAssign();
  }

  v19 = objc_allocWithZone(UINavigationController);
  v20 = v18;
  v21 = [v19 initWithRootViewController:v20];
  [v21 setModalPresentationStyle:1];
  v22 = [v21 presentationController];
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate:v17];
  }

  v24 = [v21 sheetPresentationController];

  if (v24)
  {
    [v24 setPrefersEdgeAttachedInCompactHeight:1];
    [v24 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    sub_100006370(0, &qword_1019FB500);
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    *(v25 + 24) = v17;
    v26 = v17;
    v27 = v20;
    v28 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    sub_1005B981C(&unk_1019F4D60);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_101465920;
    *(v29 + 32) = v28;
    v30 = v28;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 setDetents:isa];
  }

  (*((swift_isaMask & *v16) + 0xA0))();
  v32 = String._bridgeToObjectiveC()();

  [v20 setTitle:v32];

  v33 = [v20 navigationItem];
  sub_100006370(0, &qword_1019F6BF0);
  sub_100006370(0, &qword_1019F6190);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v37.is_nil = 0;
  v35 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v37, v38).super.super.isa;
  [v33 setRightBarButtonItem:{v35, 0, 0, 0, sub_101066114, v34}];

  *(v17 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI) = 1;
  [v17 presentViewController:v21 animated:1 completion:0];
}

void sub_101063F30(double a1, double a2, double a3, double a4)
{
  sub_1007164E4(a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100CE7394();

    if (v6)
    {
      v7 = [v6 view];

      if (v7)
      {
        v8 = [v7 window];

        if (v8)
        {
          [v8 safeAreaInsets];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_101064010()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = sub_100CE7394();

      if (v3)
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_101064260();
    v6 = *&v5[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController];
    *&v5[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController] = 0;

    v5[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI] = 0;
  }
}

void sub_1010640FC(void *a1, void *a2, uint64_t a3)
{
  [a1 presentViewController:a2 animated:1 completion:0];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v7 = *(a3 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
    *(a3 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController) = v5;
    v6 = a2;
  }
}

uint64_t sub_101064260()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_editorController);
  if (type metadata accessor for CRLWPEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard);
    *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard) = 1;
    if ((v4 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        swift_unknownObjectRetain();
        v7 = [v6 textInputResponder];

        if (v7)
        {
          sub_1007E4BF0();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return swift_unknownObjectRelease();
}

BOOL sub_1010644C0(uint64_t a1)
{
  sub_100601584(a1, v23);
  if (!v24)
  {
    sub_10000CAAC(v23, &unk_1019F4D00);
    return 0;
  }

  type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryViewController.CRLiOSMiniFormatterInputViewState();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_font);
  if (v2)
  {
    v3 = v2;
  }

  v4 = *&v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_font];
  if (!v4)
  {
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

  v5 = v4;
  v6 = v5;
  if (!v2)
  {

    goto LABEL_49;
  }

  sub_100006370(0, &qword_101A28AB8);
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
LABEL_49:

    return 0;
  }

LABEL_12:
  v8 = *(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isBold);
  v9 = v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isBold];
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v9 == 2 || ((v8 ^ v9) & 1) != 0)
  {
    goto LABEL_49;
  }

  v10 = *(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isItalic);
  v11 = v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isItalic];
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    goto LABEL_49;
  }

  v12 = *(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isUnderlined);
  v13 = v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isUnderlined];
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    goto LABEL_49;
  }

  v14 = *(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isStruckthrough);
  v15 = v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isStruckthrough];
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    goto LABEL_49;
  }

  v16 = v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_horizontalAlignment + 8];
  if (*(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_horizontalAlignment + 8) == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_49;
    }
  }

  else if (v16 == 2 || *(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_horizontalAlignment) != *&v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_horizontalAlignment])
  {
    goto LABEL_49;
  }

  v17 = *(v1 + OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_listStyleType);
  v18 = *&v22[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_listStyleType];

  if ((v18 & 0xFF00) == 0x200)
  {
    v19 = 4;
  }

  else
  {
    v19 = v18;
  }

  if ((v17 & 0xFF00) == 0x200 || v17 == 4)
  {
    return v19 == 4;
  }

  return v19 != 4 && v19 == v17;
}

id sub_101064824(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_101064890(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder);
  if (v3)
  {
    v5 = result;
    v6 = v3;
    LOBYTE(a2) = sub_100611764(v5, a2);

    return a2 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010648F4()
{
  if (*(*v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder))
  {
    return 1;
  }

  __break(1u);
  return result;
}

void sub_101064938(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController];
  if (v4)
  {
    v6 = *&v3[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController];
    *&v3[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController] = a1;
    v7 = a1;
    v35 = v4;

    v8 = *&v3[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder];
    *&v3[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder] = a2;
    v9 = a2;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_resignFirstResponderWhenKeyboardHides] = 0;
    }

    if ([objc_opt_self() crl_padUI])
    {
      v11 = (*((swift_isaMask & *v9) + 0x110))();
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = 7;
      }

      [v7 setModalPresentationStyle:v12];
      v13 = [v7 presentationController];
      if (v13)
      {
        v14 = v13;
        [v13 setDelegate:v3];
      }

      if (v11)
      {
        goto LABEL_14;
      }

      v15 = [v35 popoverPresentationController];
      if (v15)
      {
        v16 = v15;
        v17 = [v7 popoverPresentationController];
        if (v17)
        {
          v18 = v17;
          [v17 setDelegate:v3];
          v19 = [v16 barButtonItem];
          [v18 setBarButtonItem:v19];

LABEL_14:
          v20 = swift_allocObject();
          *(v20 + 16) = v3;
          *(v20 + 24) = v7;
          v40 = sub_101066104;
          v41 = v20;
          aBlock = _NSConcreteStackBlock;
          v37 = *"";
          v38 = sub_100007638;
          v39 = &unk_1018AF5A0;
          v21 = _Block_copy(&aBlock);
          v22 = v7;
          v23 = v3;

          [v35 dismissViewControllerAnimated:1 completion:v21];

          _Block_release(v21);
          return;
        }
      }
    }

    else
    {
      [v7 setModalPresentationStyle:7];
      v24 = [v7 popoverPresentationController];
      if (v24)
      {
        v25 = v24;
        [v24 setPermittedArrowDirections:0];
      }

      v26 = [v7 popoverPresentationController];
      if (v26)
      {
        v27 = v26;
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          v29 = sub_100CE7394();

          v28 = [v29 view];
        }

        [v27 setSourceView:v28];
      }

      v30 = [v7 popoverPresentationController];
      if (v30)
      {
        v31 = v30;
        [v30 setDelegate:v3];
      }

      v32 = swift_allocObject();
      *(v32 + 16) = v7;
      v40 = sub_1010660E8;
      v41 = v32;
      aBlock = _NSConcreteStackBlock;
      v37 = *"";
      v38 = sub_100007638;
      v39 = &unk_1018AF550;
      v33 = _Block_copy(&aBlock);
      v34 = v7;

      [v35 presentViewController:v34 animated:1 completion:v33];
      _Block_release(v33);
    }
  }
}

void sub_101064DC4(uint64_t a1, void *a2)
{
  sub_101064260();
  v4 = *(a1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  *(a1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController) = 0;

  *(a1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_100CE7394();

    if (v7)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = a2;
      v9 = a2;
      v10 = v7;
      v11 = [v10 presentedViewController];
      if (v11)
      {

        v12 = swift_allocObject();
        *(v12 + 16) = sub_10106610C;
        *(v12 + 24) = v8;
        v21 = sub_100A71688;
        v22 = v12;
        v17 = _NSConcreteStackBlock;
        v18 = *"";
        v19 = sub_100007638;
        v20 = &unk_1018AF668;
        v13 = _Block_copy(&v17);

        [v10 dismissViewControllerAnimated:1 completion:v13];

        _Block_release(v13);
      }

      else
      {
        v14 = swift_allocObject();
        *(v14 + 16) = v9;
        v21 = sub_101066944;
        v22 = v14;
        v17 = _NSConcreteStackBlock;
        v18 = *"";
        v19 = sub_100007638;
        v20 = &unk_1018AF618;
        v15 = _Block_copy(&v17);
        v16 = v9;

        [v10 presentViewController:v16 animated:1 completion:v15];
        _Block_release(v15);
      }
    }
  }
}

void sub_101065028(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_101066944;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = *"";
  v7[2] = sub_100007638;
  v7[3] = &unk_1018AF6B8;
  v5 = _Block_copy(v7);
  v6 = a2;

  [a1 presentViewController:v6 animated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_101065110(void *a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  v2 = [a1 popoverPresentationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sourceView];

    if (v4)
    {
      v6 = v4;
      sub_100006370(0, &qword_1019F6D00);
      v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    }
  }

  else
  {
    v4 = 0;
  }

  UIAccessibilityPostNotification(v1, v4);
  return swift_unknownObjectRelease();
}

void sub_1010651D4(void *a1)
{
  if (![a1 isViewLoaded])
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI) != 1)
  {
    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [v2 topViewController];
  if (!v3)
  {
    goto LABEL_10;
  }

  v15 = v3;
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_10:
    v10 = *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
    if (!v10)
    {
      return;
    }

    v15 = v10;
    sub_1007164E4(v11, v12, v13, v14);
    [v15 setPreferredContentSize:?];
    goto LABEL_12;
  }

  v4 = v1;
  v5 = sub_10106326C();
  v6 = sub_100605C10();
  if (!v6)
  {

LABEL_12:
    v9 = v15;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = v5;
  sub_100716638(v7, v8);

  if (*(v4 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController))
  {
    v9 = *(v4 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder);
    *(v4 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder) = v8;
  }

  else
  {
    v9 = v8;
  }

LABEL_13:
}

void sub_10106534C()
{
  v1 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  if (v2)
  {
    v3 = [v2 topViewController];
    if (v3)
    {
      v10 = v3;
      type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
      if (swift_dynamicCastClass())
      {
        v4 = *(v0 + v1);
        if (v4)
        {
          v5 = v4;
          sub_1007164E4(v6, v7, v8, v9);
          [v5 setPreferredContentSize:?];
        }
      }
    }
  }
}

id sub_101065470(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  if (result)
  {
    return [result pushViewController:a1 animated:1];
  }

  return result;
}

void sub_1010654A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 popViewControllerAnimated:1];
  }
}

BOOL sub_101065520()
{
  result = 1;
  if ([objc_opt_self() crl_padUI])
  {
    v1 = [v0 traitCollection];
    v2 = [v1 crl_isCompactWidth];

    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

double sub_101065598()
{
  if (![objc_opt_self() crl_padUI])
  {
    return 110.0;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 crl_isCompactWidth];

  result = 0.0;
  if (v2)
  {
    return 110.0;
  }

  return result;
}

void sub_101065614()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc) commandController];
  if (v1)
  {
    v2 = v1;
    sub_10088E3FC(0);
    sub_10088F490();
  }
}

void sub_10106569C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc) commandController];
  if (v1)
  {
    v2 = v1;
    sub_10088E600(0);
  }
}

char *sub_10106571C()
{
  result = [*(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc) commandController];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v5 > 0);
  }

  return result;
}

uint64_t sub_1010657F0()
{
  sub_1005B981C(&unk_101A150B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146BDE0;
  *(v0 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v0 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v0 + 48) = type metadata accessor for UITraitVerticalSizeClass();
  *(v0 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  return v0;
}

void sub_1010658B8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController))
  {
    v3 = [a1 presentedViewController];
    sub_101065DD4();
  }

  else
  {
    sub_101064260();
    v2 = *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
    *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController) = 0;

    *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI) = 0;
  }
}

id sub_101065A50(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  v3 = &v2[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_font];
  *v3 = 0;
  v3[8] = 0;
  v4 = OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isBold;
  *&v2[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isBold] = 2;
  v5 = OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isItalic;
  *&v2[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isItalic] = 2;
  v6 = OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isUnderlined;
  *&v2[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isUnderlined] = 2;
  v7 = OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isStruckthrough;
  *&v2[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_isStruckthrough] = 2;
  v8 = &v2[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_horizontalAlignment];
  *v8 = 0;
  v8[8] = 2;
  v9 = OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_listStyleType;
  *&v2[OBJC_IVAR____TtCC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController33CRLiOSMiniFormatterInputViewState_listStyleType] = 512;
  if (a1)
  {
    v20 = v7;
    v21 = v9;
    v19 = v6;
    ObjectType = swift_getObjectType();
    v12 = a2[5];
    swift_unknownObjectRetain();
    v13 = v12(ObjectType, a2);
    v14 = *v3;
    *v3 = v13;
    v3[8] = v15;

    *&v2[v4] = a2[9](ObjectType, a2);
    *&v2[v5] = a2[11](ObjectType, a2);
    *&v2[v19] = a2[13](ObjectType, a2);
    *&v2[v20] = a2[17](ObjectType, a2);
    *v8 = a2[25](ObjectType, a2);
    v8[8] = v16;
    v17 = a2[34](ObjectType, a2);
    swift_unknownObjectRelease();
    *&v2[v21] = v17;
  }

  v22.receiver = v2;
  v22.super_class = type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryViewController.CRLiOSMiniFormatterInputViewState();
  return objc_msgSendSuper2(&v22, "init");
}

void sub_101065C48()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__leadingBarButtonGroups) = 0;

  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__trailingBarButtonGroups) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = &off_10188E278;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryViewController.CRLiOSMiniFormatterInputViewState());
  v13 = sub_101065A50(Strong, v3);

  v5 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_inputViewStateAtLastReload;
  if (!*(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_inputViewStateAtLastReload) || ([v13 isEqual:?] & 1) == 0)
  {
    v6 = [*(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc) textInputResponder];
    if (v6)
    {
      v7 = v6;
      sub_1007E4BF0();
    }

    v8 = *(v1 + v5);
    *(v1 + v5) = v13;
    v9 = v13;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_toolbar);
  if (v10)
  {
    v11 = v10;
    sub_101062434();
    sub_100006370(0, &qword_1019F6BF0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setItems:isa];
  }
}

void sub_101065DD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  if (v1)
  {
    v23 = v1;
    v2 = [v23 viewControllers];
    v3 = sub_100006370(0, &qword_101A10AB0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v4;
    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      v7 = v25 & 0xC000000000000001;
      while (v7)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }

LABEL_10:
        v28 = v8;
        v10 = v8;
        sub_1005B981C(&unk_1019FCBE0);
        if (swift_dynamicCast())
        {
          sub_100050F74(v26, v29);
          v11 = v3;
          v13 = v30;
          v12 = v31;
          sub_100020E58(v29, v30);
          v14 = *(v12 + 48);
          v15 = v13;
          v7 = v25 & 0xC000000000000001;
          v16 = v12;
          v3 = v11;
          v14(0, 0, 2, v15, v16);

          sub_100005070(v29);
        }

        else
        {

          v27 = 0;
          memset(v26, 0, sizeof(v26));
          sub_10000CAAC(v26, &qword_1019FCBD8);
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_17;
        }
      }

      if (v6 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(v25 + 8 * v6 + 32);
      v9 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    v0 = v24;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_resignFirstResponderWhenKeyboardHides] = 1;
  }

  v18 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController);
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController) = 0;

  v19 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder);
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder) = 0;

  v20 = [*(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_icc) layerHost];
  if (v20)
  {
    v21 = v20;
    if ([v20 respondsToSelector:"asiOSCVC"])
    {
      v22 = [v21 asiOSCVC];
    }

    else
    {
      v22 = 0;
    }

    swift_unknownObjectRelease();
    [v22 becomeFirstResponderIfAppropriate];
  }
}

Class sub_101066138()
{
  v1 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__leadingBarButtonGroups;
  result = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__leadingBarButtonGroups);
  if (!result)
  {
    v3 = v0;
    sub_1005B981C(&unk_1019F4D60);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101465920;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10146CE00;
    result = sub_101062760();
    *(v5 + 32) = result;
    v6 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder);
    if (v6)
    {
      v7 = v6;
      v8 = sub_1006083E8(1);

      v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v8];
      *(v5 + 40) = v9;
      v10 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_100006370(0, &qword_1019F6BF0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v12 = [v10 initWithBarButtonItems:isa representativeItem:0];

      *(v4 + 32) = v12;
      *(v3 + v1) = v4;

      result = *(v3 + v1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1010662B0()
{
  v1 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__trailingBarButtonGroups;
  if (!*(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__trailingBarButtonGroups))
  {
    v2 = v0;
    sub_1005B981C(&unk_1019F4D60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10146CE00;
    v4 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder;
    v5 = *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder);
    if (v5)
    {
      v6 = v3;
      v7 = v5;
      v8 = sub_10060D460(1, 0, 1);

      v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v8];
      *(v6 + 32) = v9;
      v10 = *(v2 + v4);
      if (v10)
      {
        v11 = v10;
        sub_10060FA10(1, 0, 1);
        v13 = v12;

        v14 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v13];
        *(v6 + 40) = v14;
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_101465920;
        v16 = objc_allocWithZone(UIBarButtonItemGroup);
        sub_100006370(0, &qword_1019F6BF0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v18 = [v16 initWithBarButtonItems:isa representativeItem:0];

        *(v15 + 32) = v18;
        *(v2 + v1) = v15;

        if (*(v2 + v1))
        {
          return;
        }

LABEL_8:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_8;
  }
}

void sub_101066474()
{
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_toolbar) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_auxiliaryPresentedBuilder) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_inputViewStateAtLastReload) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__leadingBarButtonGroups) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController__trailingBarButtonGroups) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_101066564(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100CE7394();

    if (v6)
    {
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = a1;
      v7[4] = v2;
      v8 = OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController;
      v9 = *&v2[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController];
      if (v9)
      {
        v10 = swift_allocObject();
        v10[2] = v2;
        v10[3] = sub_1010668C4;
        v10[4] = v7;
        v30 = sub_1010668D0;
        v31 = v10;
        aBlock = _NSConcreteStackBlock;
        v27 = *"";
        v28 = sub_100007638;
        v29 = &unk_1018AF870;
        v11 = _Block_copy(&aBlock);
        v12 = v2;
        v13 = a1;
        v14 = v6;
        v15 = v9;

        [v15 dismissViewControllerAnimated:1 completion:v11];

        _Block_release(v11);
      }

      else
      {
        v16 = v2;
        v17 = a1;
        v18 = v6;
        v19 = [v18 presentedViewController];
        if (v19)
        {
          v20 = v19;
          v21 = swift_allocObject();
          *(v21 + 16) = sub_1010668C4;
          *(v21 + 24) = v7;
          v30 = sub_100A71688;
          v31 = v21;
          aBlock = _NSConcreteStackBlock;
          v27 = *"";
          v28 = sub_100007638;
          v29 = &unk_1018AF820;
          v22 = _Block_copy(&aBlock);

          [v20 dismissViewControllerAnimated:1 completion:v22];

          _Block_release(v22);
        }

        else
        {
          [v18 presentViewController:v17 animated:1 completion:0];

          objc_opt_self();
          v23 = swift_dynamicCastObjCClass();
          if (v23)
          {
            v25 = *&v2[v8];
            *&v2[v8] = v23;
            v24 = v17;
          }
        }
      }
    }
  }
}

uint64_t sub_10106687C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1010668D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_101064260();
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController) = 0;

  *(v1 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_isPresentingTextFormatCardUI) = 0;
  return v2();
}

id sub_101066960(uint64_t a1)
{
  v5 = 0;
  result = [v1 hitKnobAtPoint:a1 inputType:&v5 returningRep:?];
  if (result)
  {
    if (v5)
    {
      v3 = result;
      v4 = v5;
      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_101066A04()
{
  v1 = v0;
  v2 = [v0 board];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100EC8784();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = *&v7[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16];
        v10 = *&v7[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24];
        v12 = sub_100120414(*&v7[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect], *&v7[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8], v11, v10);
        v14 = v13;
        [v1 visibleUnscaledRect];
        v19 = sub_100120414(v15, v16, v17, v18);
        v21 = sub_10011ED08(v12, v14, v19, v20, 40.0);
        [v1 visibleUnscaledRect];
        v23 = v22;
        [v1 visibleUnscaledRect];
        if (v21)
        {
          v25 = v24;
          if (sub_10106B138(v23 / v11) || sub_10106B138(v25 / v10))
          {

            return v8;
          }
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return 0;
}

uint64_t sub_101066BD8()
{
  v1 = [v0 layoutController];
  [v0 visibleUnscaledRect];
  v2 = [v1 layoutsInRect:?];

  sub_100006370(0, &qword_101A287B0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
      goto LABEL_3;
    }

    return 2;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();

  if (!v6)
  {
    return 2;
  }

LABEL_3:
  result = sub_101066A04();
  if (result)
  {

    return 1;
  }

  return result;
}

void CRLInteractiveCanvasController.anyConnectorKnobVisible.getter()
{
  v1 = v0;
  v2 = [v0 selectionModelTranslator];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 editorController];
  if (!v4 || (v5 = v4, v6 = [v4 selectionPath], v5, !v6))
  {
LABEL_42:

    return;
  }

  v43 = v6;
  v7 = [v3 boardItemsForSelectionPath:v6];
  type metadata accessor for CRLBoardItem(0);
  sub_10106B25C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v8 = v53;
    v9 = v54;
    v10 = v55;
    v11 = v56;
    v12 = v57;
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v14 = ~v13;
    v15 = -v13;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(v8 + 56);
    v10 = v14;
  }

  v42 = v10;
  v17 = (v10 + 64) >> 6;
  v46 = v8;
  v47 = v3;
  v44 = v1;
  v45 = v9;
  v48 = v17;
  while (v8 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v18 = v52, v21 = v11, v51 = v12, !v52))
    {
LABEL_41:
      sub_100035F90();

      goto LABEL_42;
    }

LABEL_22:
    v22 = [v1 repForInfo:{v18, v42}];
    if (v22)
    {
      v23 = v22;
      v50 = v18;
      v24 = [v22 knobs];
      sub_100006370(0, &unk_101A28760);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = v23;
      if (!(v25 >> 62))
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
LABEL_11:

        v8 = v46;
        v3 = v47;
        v1 = v44;
        v9 = v45;
        v18 = v49;
        goto LABEL_12;
      }

LABEL_25:
      v27 = 0;
      while (2)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        type metadata accessor for CRLConnectionLineKnob();
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 rep];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 interactiveCanvasController];
            if (v35)
            {
              v36 = v35;
              [v32 position];
              [v34 convertNaturalPointToUnscaledCanvas:?];
              [v36 convertUnscaledToBoundsPoint:?];
              v38 = v37;
              v40 = v39;
              [v36 visibleBoundsRect];
              v58.x = v38;
              v58.y = v40;
              v41 = CGRectContainsPoint(v59, v58);

              if (v41)
              {
                sub_100035F90();

                return;
              }

              goto LABEL_28;
            }
          }
        }

LABEL_28:
        ++v27;
        if (v30 == v26)
        {
          goto LABEL_11;
        }

        continue;
      }
    }

LABEL_12:

    v11 = v21;
    v12 = v51;
    v17 = v48;
  }

  v19 = v11;
  v20 = v12;
  v21 = v11;
  if (v12)
  {
LABEL_18:
    v51 = (v20 - 1) & v20;
    v18 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v18)
    {
      goto LABEL_41;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_41;
    }

    v20 = *(v9 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_18;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_1010671C0()
{
  v1 = v0;
  v2 = [v0 selectionModelTranslator];
  if (!v2)
  {
    return;
  }

  v50 = v2;
  v3 = [v0 editorController];
  if (!v3 || (v4 = v3, v5 = [v3 selectionPath], v4, !v5))
  {

    return;
  }

  v41 = v5;
  v6 = [v50 boardItemsForSelectionPath:v5];
  type metadata accessor for CRLBoardItem(0);
  sub_10106B25C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = v54;
    v8 = v55;
    v9 = v56;
    v10 = v57;
    v11 = v58;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v13 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v7 + 56);
    v9 = v13;
  }

  v16 = (v9 + 64) >> 6;
  v44 = v7;
  v45 = v1;
  v42 = v16;
  v43 = v8;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v19 = v51[0], v17 = v10, v18 = v11, !v51[0]))
    {
LABEL_60:
      sub_100035F90();

      return;
    }

LABEL_25:
    v22 = [v1 repForInfo:v19];
    if (!v22)
    {
      goto LABEL_15;
    }

    v47 = v19;
    v48 = v18;
    v49 = v17;
    v46 = v22;
    v23 = [v22 knobs];
    sub_100006370(0, &unk_101A28760);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v51[0] = _swiftEmptyArrayStorage;
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (v25)
      {
LABEL_28:
        v26 = 0;
        v27 = _swiftEmptyArrayStorage;
        do
        {
          v28 = v26;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_63;
              }

              v29 = *(v24 + 8 * v28 + 32);
            }

            v30 = v29;
            v26 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            type metadata accessor for CRLConnectionLineKnob();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v28;
            if (v26 == v25)
            {
              goto LABEL_44;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v27 = v51[0];
        }

        while (v26 != v25);
        goto LABEL_44;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_28;
      }
    }

    v27 = _swiftEmptyArrayStorage;
LABEL_44:

    if (v27 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v32 = &off_101A1E000;
      if (v31)
      {
LABEL_46:
        v33 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v33 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_65;
            }

            v34 = *(v27 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          v37 = *(v32[311] + v34);
          if (v37)
          {
            v38 = v37;
            sub_100D6D3E8(0, v51);

            v39 = v52;
            if (v52)
            {
              v40 = v53;
              sub_100020E58(v51, v52);
              swift_unknownObjectWeakInit();
              v32 = &off_101A1E000;
              sub_101137F98(0, 1, 1, 0, 0, 0, 0, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0, v39, v40);

              swift_unknownObjectWeakDestroy();
              sub_100005070(v51);
            }

            else
            {

              sub_10000CAAC(v51, &unk_101A09F70);
            }
          }

          else
          {
          }

          ++v33;
          if (v36 == v31)
          {
            goto LABEL_14;
          }
        }

LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      v31 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = &off_101A1E000;
      if (v31)
      {
        goto LABEL_46;
      }
    }

LABEL_14:

    v7 = v44;
    v1 = v45;
    v16 = v42;
    v8 = v43;
    v18 = v48;
    v17 = v49;
    v19 = v47;
LABEL_15:

    v10 = v17;
    v11 = v18;
  }

  v20 = v10;
  v21 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_21:
    v18 = (v21 - 1) & v21;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v19)
    {
      goto LABEL_60;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      goto LABEL_60;
    }

    v21 = *(v8 + 8 * v17);
    ++v20;
    if (v21)
    {
      goto LABEL_21;
    }
  }

LABEL_66:
  __break(1u);
}

char *sub_101067810()
{
  v1 = [v0 board];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

  v4 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v5 = *&v3[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v6 = v3;
  if (!v5)
  {
    sub_10096C7D4();
    v5 = *&v3[v4];
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    goto LABEL_25;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v8)
  {
    if (__OFSUB__(v8--, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *(v7 + 32 + 8 * v8);
LABEL_15:
      v11 = v10;
      v12 = sub_101067974(v10);

      if (v12)
      {
        goto LABEL_20;
      }
    }
  }

  v12 = 0;
LABEL_20:

  return v12;
}

char *sub_101067974(void *a1)
{
  type metadata accessor for CRLConnectionLineItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    result = [v1 layoutForInfo:v3];
    if (result)
    {
      v5 = result;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  else
  {
    type metadata accessor for CRLGroupItem();
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = result;
      type metadata accessor for CRLFreehandDrawingItem();
      if (!swift_dynamicCastClass())
      {
        v7 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
        v8 = *&v6[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
        v9 = a1;
        if (!v8)
        {
          sub_10096C7D4();
          v8 = *&v6[v7];
        }

        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = _swiftEmptyArrayStorage;
        }

        if (v10 >> 62)
        {
LABEL_30:
          v11 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        while (v11)
        {
          if (__OFSUB__(v11--, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v13 = *(v10 + 32 + 8 * v11);
          }

          v14 = v13;
          v15 = sub_101067974();

          if (v15)
          {

            return v15;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_101067B38()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v3 = *(v2 - 8);
  v87 = v2;
  v88 = v3;
  __chkstk_darwin(v2);
  v81 = (&v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Date();
  v85 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v74 - v12;
  v83 = type metadata accessor for CRLCollaboratorCursor();
  __chkstk_darwin(v83);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v84 = &v74 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v86 = &v74 - v23;
  v24 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v24 - 8);
  v82 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v74 - v28;
  v30 = [v1 editingCoordinator];
  if (v30)
  {
    v89 = v30;
    v79 = v1;
    v31 = [v1 editorController];
    if (v31)
    {
      v80 = v31;
      v78 = v19;
      v77 = v18;
      v32 = *&v89[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
      v33 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
      swift_beginAccess();
      sub_10000BE14(v32 + v33, v29, &qword_101A08DF0);
      v35 = v88 + 48;
      v34 = *(v88 + 48);
      if (v34(v29, 1, v87) == 1)
      {

        sub_10000CAAC(v29, &qword_101A08DF0);
        return;
      }

      v88 = v35;
      sub_10000CAAC(v29, &qword_101A08DF0);
      v37 = [v80 selectionPath];
      v38 = sub_10106858C(v37);

      objc_allocWithZone(type metadata accessor for CRLPersistableSelectionPath(0));
      v75 = v38;
      sub_100702EC8(v75);
      v76 = v39;
      v40 = v86;
      sub_10092DA60(v86);
      v74 = v34;
      v41 = v40;
      v42 = v78;
      v43 = v77;
      (*(v78 + 16))(v13, v41, v77);
      (*(v42 + 56))(v13, 0, 1, v43);
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v45 = v44;
      (*(v85 + 8))(v7, v5);
      sub_10000BE14(v13, v10, &qword_1019F6990);
      if ((*(v42 + 48))(v10, 1, v43) == 1)
      {
        v46 = v43;
        v47 = v76;
        sub_10000CAAC(v10, &qword_1019F6990);
        sub_1006B305C();
        swift_allocError();
        *v48 = 0;
        swift_willThrow();

        sub_10000CAAC(v13, &qword_1019F6990);
        (*(v42 + 8))(v86, v46);
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v63 = static OS_os_log.realTimeSync;
        v64 = static os_log_type_t.error.getter();
        sub_100005404(v63, &_mh_execute_header, v64, "Error sending selection to peers", 32, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        v49 = *(v42 + 32);
        v49(v21, v10, v43);
        v50 = v76;
        sub_10000CAAC(v13, &qword_1019F6990);
        v51 = v21;
        v52 = v43;
        v49(v15, v51, v43);
        v53 = v83;
        v54 = v84;
        *&v15[*(v83 + 24)] = v45;
        *&v15[*(v53 + 20)] = v50;
        sub_10106B2B0(v15, v54, type metadata accessor for CRLCollaboratorCursor);
        v55 = v79;
        v56 = [v79 board];
        if (v56)
        {
          v57 = v56;
          v58 = *&v56[OBJC_IVAR____TtC8Freeform8CRLBoard_store];

          v59 = *&v58[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
          v60 = sub_100B427F8(v59);
          v62 = v86;
          v65 = v60;
          v66 = v61;

          v67 = [v55 board];
          if (v67)
          {
            v68 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
            v69 = v67;
            swift_beginAccess();
            v70 = v69 + v68;
            v71 = v82;
            sub_10000BE14(v70, v82, &qword_101A08DF0);

            if (v74(v71, 1, v87))
            {

              sub_10002640C(v65, v66);
              sub_10106B318(v54, type metadata accessor for CRLCollaboratorCursor);
              (*(v78 + 8))(v62, v52);
              sub_10000CAAC(v71, &qword_101A08DF0);
              return;
            }

            v72 = v81;
            sub_10106B1F4(v71, v81, type metadata accessor for CRLBoard.RealTimeSessionInfo);
            sub_10000CAAC(v71, &qword_101A08DF0);
            v73 = *v72;

            sub_10106B318(v72, type metadata accessor for CRLBoard.RealTimeSessionInfo);
            sub_1010FA43C(1, v65, v66, v73);
            sub_10002640C(v65, v66);
          }

          else
          {

            sub_10002640C(v65, v66);
          }

          sub_10106B318(v54, type metadata accessor for CRLCollaboratorCursor);
          (*(v78 + 8))(v62, v52);
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
      v36 = v89;
    }
  }
}

id sub_10106858C(void *a1)
{
  v99 = a1;
  v2 = _swiftEmptySetSingleton;
  v105 = _swiftEmptySetSingleton;
  v3 = [v1 selectionModelTranslator];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 infosForSelectionPath:v99];

    v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = *(v2 + 32);
  v7 = v6 & 0x3F;
  isUniquelyReferenced_nonNull_native = ((1 << v6) + 63) >> 6;
  isa = (8 * isUniquelyReferenced_nonNull_native);

  if (v7 > 0xD)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v102 = isUniquelyReferenced_nonNull_native;
    v101 = &v87;
    __chkstk_darwin(v10);
    isUniquelyReferenced_nonNull_native = &v87 - ((isa + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(isUniquelyReferenced_nonNull_native, isa);
    v103 = 0;
    v11 = 0;
    v12 = v2;
    v14 = v2[7];
    v2 += 7;
    v13 = v14;
    v15 = 1 << *(v2 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = v19 | (v11 << 6);
      sub_100064110(*(v12 + 48) + 40 * v22, v112);
      isa = AnyHashable._bridgeToObjectiveC()().isa;
      type metadata accessor for CRLFreehandDrawingShapeItem();
      v23 = swift_dynamicCastClass();

      sub_100064234(v112);
      if (v23)
      {
        *(isUniquelyReferenced_nonNull_native + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v24 = __OFADD__(v103++, 1);
        if (v24)
        {
          __break(1u);
LABEL_18:
          v2 = v12;
          v25 = sub_1010F56E0(isUniquelyReferenced_nonNull_native, v102, v103, v12);
          isUniquelyReferenced_nonNull_native = 0;
          goto LABEL_19;
        }
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_18;
      }

      v21 = v2[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_129:
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  isa = swift_slowAlloc();
  v85 = isUniquelyReferenced_nonNull_native;
  isUniquelyReferenced_nonNull_native = 0;
  v86 = sub_10106B164(isa, v85, v2, sub_101069B54);

  v25 = v86;
LABEL_19:
  v26 = *(v25 + 16);

  if (!v26)
  {
    goto LABEL_125;
  }

  v90 = 0;
  v27 = 0;
  v98 = v2;
  v29 = v2[7];
  v2 += 7;
  v28 = v29;
  v30 = 1 << *(v2 - 24);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v28;
  v33 = (v30 + 63) >> 6;
  v97 = v2;
  v96 = v33;
  if (v32)
  {
    while (1)
    {
LABEL_28:
      v101 = ((v32 - 1) & v32);
      sub_100064110(v98[6] + 40 * (__clz(__rbit64(v32)) | (v27 << 6)), v112);
      v110[0] = v112[0];
      v110[1] = v112[1];
      v111 = v113;
      v35 = AnyHashable._bridgeToObjectiveC()().isa;
      type metadata accessor for CRLFreehandDrawingShapeItem();
      isa = swift_dynamicCastClass();

      if (!isa || (type metadata accessor for CRLGroupSelection(), (v36 = [v99 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()]) == 0))
      {
        v2 = v97;
        v33 = v96;
        goto LABEL_83;
      }

      v94 = v36;
      v37 = swift_dynamicCastClass();
      if (!v37)
      {
        goto LABEL_81;
      }

      v91 = OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems;
      v38 = *(v37 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
      v103 = v38 & 0xC000000000000001;
      v92 = v37;
      if ((v38 & 0xC000000000000001) != 0)
      {
        if (v38 < 0)
        {
          isUniquelyReferenced_nonNull_native = v38;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v38 & 0xFFFFFFFFFFFFFF8;
        }

        v39 = __CocoaSet.count.getter();
        if (!v39)
        {
LABEL_78:

          v56 = _swiftEmptyArrayStorage;
          if (!(_swiftEmptyArrayStorage >> 62))
          {
            goto LABEL_66;
          }

          goto LABEL_79;
        }

        v40 = v39;
        v104 = _swiftEmptyArrayStorage;
        isa = &v104;
        specialized ContiguousArray.reserveCapacity(_:)();
        v106 = __CocoaSet.startIndex.getter();
        v107 = v41;
        v108 = 1;
        if ((v40 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
        }
      }

      else
      {
        v40 = *(v38 + 16);

        if (!v40)
        {
          goto LABEL_78;
        }

        v104 = _swiftEmptyArrayStorage;
        isa = &v104;
        specialized ContiguousArray.reserveCapacity(_:)();
        v42 = _HashTable.startBucket.getter();
        v43 = *(v38 + 36);
        v106 = v42;
        v107 = v43;
        v108 = 0;
      }

      v44 = 0;
      v100 = v38 + 56;
      v45 = v38 & 0xFFFFFFFFFFFFFF8;
      if (v38 < 0)
      {
        v45 = v38;
      }

      v102 = v45;
      v95 = v38 + 64;
      do
      {
        while (1)
        {
          if (v44 >= v40)
          {
            goto LABEL_130;
          }

          v24 = __OFADD__(v44++, 1);
          if (v24)
          {
            goto LABEL_131;
          }

          v46 = v106;
          isUniquelyReferenced_nonNull_native = v107;
          v47 = v108;
          sub_1007245FC(v106, v107, v108, v38);
          type metadata accessor for CRLGroupItem();
          v2 = swift_dynamicCastClassUnconditional();
          isa = &v104;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v103)
          {
            break;
          }

          if (v47)
          {
            goto LABEL_146;
          }

          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_134;
          }

          isa = (1 << *(v38 + 32));
          if (v46 >= isa)
          {
            goto LABEL_134;
          }

          v48 = v46 >> 6;
          v49 = *(v100 + 8 * (v46 >> 6));
          if (((v49 >> v46) & 1) == 0)
          {
            goto LABEL_135;
          }

          if (*(v38 + 36) != isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_136;
          }

          v50 = v49 & (-2 << (v46 & 0x3F));
          if (v50)
          {
            isa = (__clz(__rbit64(v50)) | v46 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v51 = v48 << 6;
            v52 = v48 + 1;
            v53 = (v95 + 8 * v48);
            while (v52 < (isa + 63) >> 6)
            {
              v54 = *v53++;
              v2 = v54;
              v51 += 64;
              ++v52;
              if (v54)
              {
                sub_1000341AC(v46, isUniquelyReferenced_nonNull_native, 0);
                isa = (__clz(__rbit64(v2)) + v51);
                goto LABEL_64;
              }
            }

            sub_1000341AC(v46, isUniquelyReferenced_nonNull_native, 0);
          }

LABEL_64:
          v55 = *(v38 + 36);
          v106 = isa;
          v107 = v55;
          v108 = 0;
          if (v44 == v40)
          {
            goto LABEL_65;
          }
        }

        if (!v47)
        {
          goto LABEL_145;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        }

        else
        {
          isUniquelyReferenced_nonNull_native = 1;
        }

        sub_1005B981C(&unk_1019FCB90);
        isa = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        (isa)(v109, 0);
      }

      while (v44 != v40);
LABEL_65:
      sub_1000341AC(v106, v107, v108);

      v56 = v104;
      if (!(v104 >> 62))
      {
LABEL_66:
        if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        goto LABEL_67;
      }

LABEL_79:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_80:

LABEL_81:
        v2 = v97;
        v33 = v96;
        isa = v94;
LABEL_82:

LABEL_83:
        if ([objc_opt_self() isOSFeatureEnabled:1])
        {
          sub_100064110(v110, &v106);
          isa = &v105;
          sub_100E7280C(v109, &v106);
          sub_100064234(v109);
        }

        sub_100064234(v110);
        goto LABEL_86;
      }

LABEL_67:
      if ((v56 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v57 = *(v56 + 32);
      }

      isa = v57;

      type metadata accessor for CRLFreehandDrawingItem();
      if (!swift_dynamicCastClass())
      {

        v2 = v97;
        v33 = v96;
        goto LABEL_82;
      }

      v88 = v105;
      v58 = *(v92 + v91);
      v103 = v58 & 0xC000000000000001;
      v89 = isa;
      if ((v58 & 0xC000000000000001) != 0)
      {
        if (v58 < 0)
        {
          isUniquelyReferenced_nonNull_native = v58;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v58 & 0xFFFFFFFFFFFFFF8;
        }

        v59 = __CocoaSet.count.getter();
        if (v59)
        {
          v60 = v59;
          v104 = _swiftEmptyArrayStorage;
          isa = &v104;
          specialized ContiguousArray.reserveCapacity(_:)();
          v106 = __CocoaSet.startIndex.getter();
          v107 = v61;
          v108 = 1;
          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_144;
          }

          goto LABEL_91;
        }
      }

      else
      {
        v60 = *(v58 + 16);

        if (v60)
        {
          v104 = _swiftEmptyArrayStorage;
          isa = &v104;
          specialized ContiguousArray.reserveCapacity(_:)();
          v62 = _HashTable.startBucket.getter();
          v63 = *(v58 + 36);
          v106 = v62;
          v107 = v63;
          v108 = 0;
LABEL_91:
          v64 = 0;
          v100 = v58 + 56;
          v65 = v58 & 0xFFFFFFFFFFFFFF8;
          if (v58 < 0)
          {
            v65 = v58;
          }

          v102 = v65;
          v95 = v58 + 64;
          do
          {
            while (1)
            {
              if (v64 >= v60)
              {
                goto LABEL_132;
              }

              v24 = __OFADD__(v64++, 1);
              if (v24)
              {
                goto LABEL_133;
              }

              v66 = v106;
              isUniquelyReferenced_nonNull_native = v107;
              v67 = v108;
              sub_1007245FC(v106, v107, v108, v58);
              type metadata accessor for CRLGroupItem();
              v2 = swift_dynamicCastClassUnconditional();
              isa = &v104;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              if (v103)
              {
                break;
              }

              if (v67)
              {
                goto LABEL_148;
              }

              if ((v66 & 0x8000000000000000) != 0)
              {
                goto LABEL_137;
              }

              isa = (1 << *(v58 + 32));
              if (v66 >= isa)
              {
                goto LABEL_137;
              }

              v68 = v66 >> 6;
              v69 = *(v100 + 8 * (v66 >> 6));
              if (((v69 >> v66) & 1) == 0)
              {
                goto LABEL_138;
              }

              if (*(v58 + 36) != isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_139;
              }

              v70 = v69 & (-2 << (v66 & 0x3F));
              if (v70)
              {
                isa = (__clz(__rbit64(v70)) | v66 & 0x7FFFFFFFFFFFFFC0);
              }

              else
              {
                v71 = v68 << 6;
                v72 = v68 + 1;
                v73 = (v95 + 8 * v68);
                while (v72 < (isa + 63) >> 6)
                {
                  v74 = *v73++;
                  v2 = v74;
                  v71 += 64;
                  ++v72;
                  if (v74)
                  {
                    sub_1000341AC(v66, isUniquelyReferenced_nonNull_native, 0);
                    isa = (__clz(__rbit64(v2)) + v71);
                    goto LABEL_114;
                  }
                }

                sub_1000341AC(v66, isUniquelyReferenced_nonNull_native, 0);
              }

LABEL_114:
              v75 = *(v58 + 36);
              v106 = isa;
              v107 = v75;
              v108 = 0;
              if (v64 == v60)
              {
                goto LABEL_115;
              }
            }

            if (!v67)
            {
              goto LABEL_147;
            }

            if (__CocoaSet.Index.handleBitPattern.getter())
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            }

            else
            {
              isUniquelyReferenced_nonNull_native = 1;
            }

            sub_1005B981C(&unk_1019FCB90);
            isa = Set.Index._asCocoa.modify();
            __CocoaSet.formIndex(after:isUnique:)();
            (isa)(v109, 0);
          }

          while (v64 != v60);
LABEL_115:
          sub_1000341AC(v106, v107, v108);

          v76 = v104;
          goto LABEL_117;
        }
      }

      v76 = _swiftEmptyArrayStorage;
LABEL_117:
      v77 = sub_1006414C8(v76);

      isa = v88;
      v104 = v88;
      v78 = *(v77 + 2);
      if (v78)
      {
        isUniquelyReferenced_nonNull_native = (v77 + 32);
        do
        {
          sub_100064110(isUniquelyReferenced_nonNull_native, v109);
          sub_100E7280C(&v106, v109);
          sub_100064234(&v106);
          isUniquelyReferenced_nonNull_native += 40;
          --v78;
        }

        while (v78);
        isa = v104;
      }

      sub_100064234(v110);

      v105 = isa;
      v2 = v97;
      v33 = v96;
LABEL_86:
      v32 = v101;
      if (!v101)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_129;
    }

    if (v34 >= v33)
    {
      break;
    }

    v32 = v2[v34];
    ++v27;
    if (v32)
    {
      v27 = v34;
      goto LABEL_28;
    }
  }

  v79 = [v93 selectionModelTranslator];
  if (v79)
  {
    v80 = v79;
    v81 = Set._bridgeToObjectiveC()().super.isa;

    v82 = [v80 selectionPathForInfos:v81];

    return v82;
  }

LABEL_125:

  v84 = v99;

  return v84;
}

char *sub_101069418()
{
  v60 = type metadata accessor for CRLRealTimeEnter(0);
  __chkstk_darwin(v60);
  v59 = (&v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v61 = &v54 - v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v54 - v9;
  v10 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v54 - v19;
  result = [v0 editingCoordinator];
  if (result)
  {
    v22 = result;
    v56 = v5;
    v57 = v4;
    v58 = v13;
    v23 = *&result[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
    v24 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v23 + v24, v20, &qword_101A08DF0);
    v25 = *(v11 + 48);
    if (v25(v20, 1, v10) == 1)
    {

      v26 = v20;
      return sub_10000CAAC(v26, &qword_101A08DF0);
    }

    sub_10000CAAC(v20, &qword_101A08DF0);
    v27 = [v0 board];
    if (!v27)
    {

      (*(v11 + 56))(v16, 1, 1, v10);
      goto LABEL_8;
    }

    v28 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    v29 = v27;
    swift_beginAccess();
    sub_10000BE14(v29 + v28, v16, &qword_101A08DF0);

    if (v25(v16, 1, v10) == 1)
    {

LABEL_8:
      v26 = v16;
      return sub_10000CAAC(v26, &qword_101A08DF0);
    }

    v30 = v58;
    sub_10106B2B0(v16, v58, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    v31 = [v0 board];
    v33 = v56;
    v32 = v57;
    v34 = v62;
    if (v31)
    {
      v35 = *&v31[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState];
      v36 = v31;

      v37 = *(v35 + 16);
      if (v37)
      {
        v38 = [v37 currentUserParticipant];

        if (v38)
        {
          sub_10092DA60(v34);
          v55 = 0;
          v41 = [v38 userIdentity];
          (*(v33 + 16))(v7, v34, v32);
          Date.timeIntervalSince1970.getter();
          if (v41)
          {
            v43 = v42;
            v54 = v38;
            v45 = v59;
            v44 = v60;
            *v59 = v41;
            (*(v33 + 32))(v45 + v44[5], v7, v32);
            *(v45 + v44[6]) = v43;
            *(v45 + v44[7]) = 1;
            v46 = v61;
            sub_10106B2B0(v45, v61, type metadata accessor for CRLRealTimeEnter);
            v47 = v55;
            v48 = sub_1009DC47C();
            if (!v47)
            {
              v52 = v48;
              v53 = v49;
              sub_1010FA43C(2, v48, v49, *v30);
              sub_10002640C(v52, v53);

              sub_10106B318(v46, type metadata accessor for CRLRealTimeEnter);
              (*(v33 + 8))(v34, v32);
              return sub_10106B318(v30, type metadata accessor for CRLBoard.RealTimeSessionInfo);
            }

            sub_10106B318(v46, type metadata accessor for CRLRealTimeEnter);
            (*(v33 + 8))(v34, v32);
            v38 = v54;
          }

          else
          {
            sub_1006B305C();
            swift_allocError();
            *v50 = 0;
            swift_willThrow();
            v51 = *(v33 + 8);
            v51(v7, v32);
            v51(v34, v32);
          }

          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v39 = static OS_os_log.realTimeSync;
          v40 = static os_log_type_t.error.getter();
          sub_100005404(v39, &_mh_execute_header, v40, "Error sending Real Time Enter to peers", 38, 2, _swiftEmptyArrayStorage);
        }
      }

      else
      {
      }
    }

    return sub_10106B318(v30, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  }

  return result;
}

BOOL sub_101069B54()
{
  isa = AnyHashable._bridgeToObjectiveC()().isa;
  type metadata accessor for CRLFreehandDrawingShapeItem();
  v1 = swift_dynamicCastClass() != 0;

  return v1;
}

void sub_101069BB4(void *a1)
{
  v2 = [v1 selectionModelTranslator];
  if (v2)
  {
    v24 = v2;
    v3 = [v2 boardItemsForSelectionPath:a1];
    type metadata accessor for CRLBoardItem(0);
    sub_10106B25C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v1;
    if ((v4 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v4 = v27;
      v5 = v28;
      v6 = v29;
      v7 = v30;
      v8 = v31;
    }

    else
    {
      v7 = 0;
      v9 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v6 = ~v9;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v8 = v11 & *(v4 + 56);
    }

    v12 = (v6 + 64) >> 6;
    do
    {
      if (v4 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v15 = v26) == 0))
        {
LABEL_21:

          sub_100035F90();
          goto LABEL_22;
        }
      }

      else
      {
        v13 = v7;
        v14 = v8;
        if (!v8)
        {
          while (1)
          {
            v7 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_21;
            }

            v14 = *(v5 + 8 * v7);
            ++v13;
            if (v14)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          return;
        }

LABEL_14:
        v8 = (v14 - 1) & v14;
        v15 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
        if (!v15)
        {
          goto LABEL_21;
        }
      }

      v16 = [v15 surfaceAncestor];
    }

    while (!v16);
    sub_100035F90();
    v17 = [v23 selectionModelTranslator];
    if (v17)
    {
      v18 = v17;
      sub_1005B981C(&qword_101A2C800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      type metadata accessor for CRLSurfaceItem();
      sub_10106B25C(&qword_101A28AC8, type metadata accessor for CRLSurfaceItem);
      v20 = v16;
      AnyHashable.init<A>(_:)();
      sub_1005C0360(inited);
      swift_setDeallocating();
      sub_100064234(inited + 32);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v18 selectionPathForInfos:isa];

      return;
    }
  }

LABEL_22:

  v22 = a1;
}

uint64_t sub_10106A06C(char *a1)
{
  v62 = a1;
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v54 - v5;
  v6 = sub_1005B981C(&qword_101A07BB0);
  __chkstk_darwin(v6 - 8);
  v63 = &v54 - v7;
  v64 = type metadata accessor for CRLStartOrEndFollow();
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v54 - v10;
  v11 = type metadata accessor for UUID();
  v65 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v54 - v14;
  v15 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  v21 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v67 = (&v54 - v27);
  v28 = [v1 board];
  if (!v28)
  {
    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_8;
  }

  v29 = v28;
  v55 = v11;
  v30 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v29 + v30, v20, &qword_101A08DF0);

  v31 = *(v22 + 48);
  if (v31(v20, 1, v21) == 1)
  {
LABEL_8:
    sub_10000CAAC(v20, &qword_101A08DF0);
    return 0;
  }

  v32 = v20;
  v33 = v67;
  sub_10106B2B0(v32, v67, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  v34 = [v1 board];
  v35 = v55;
  if (v34)
  {
    v36 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    v37 = v34;
    swift_beginAccess();
    sub_10000BE14(v37 + v36, v17, &qword_101A08DF0);

    if (v31(v17, 1, v21))
    {
      sub_10000CAAC(v17, &qword_101A08DF0);
    }

    else
    {
      sub_10106B1F4(v17, v24, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v17, &qword_101A08DF0);

      sub_10106B318(v24, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      v39 = sub_1007DE5D0();

      if (v39)
      {
        v40 = v65;
        v41 = *(v65 + 16);
        v42 = v58;
        v41(v58, &v39[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID], v35);

        v43 = v66;
        (*(v40 + 32))(v66, v42, v35);
        v44 = v60;
        v41(v60, v43, v35);
        v45 = *(v40 + 56);
        v45(v44, 0, 1, v35);
        v46 = v61;
        v41(v61, v62, v35);
        v45(v46, 0, 1, v35);
        v47 = v63;
        sub_100B81020(v44, v46, v63);
        (*(v59 + 56))(v47, 0, 1, v64);
        v48 = v57;
        sub_10106B2B0(v47, v57, type metadata accessor for CRLStartOrEndFollow);
        type metadata accessor for CRContext();
        v69 = 0;
        memset(v68, 0, sizeof(v68));
        v49 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
        sub_10000CAAC(v68, &qword_101A07B90);
        v50 = sub_100B8134C();
        v52 = v51;

        v53 = *v33;
        sub_100024E98(v50, v52);
        sub_1010FA260(6, v50, v52, 1, v53);
        sub_10002640C(v50, v52);
        sub_10002640C(v50, v52);
        sub_10106B318(v48, type metadata accessor for CRLStartOrEndFollow);
        (*(v40 + 8))(v66, v35);
        sub_10106B318(v33, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        return 1;
      }
    }
  }

  sub_10106B318(v33, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  return 0;
}

uint64_t sub_10106AFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = sub_1005B981C(&unk_101A287C0);
  sub_1005EB3DC(v5, a4);
  return Tips.Event.sendDonation<>(_:)();
}

void *sub_10106B164(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1005DF9C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10106B1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10106B25C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10106B2B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10106B318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10106B390@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10113CE58(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

size_t sub_10106B498@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10113CE94(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1005EB270(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10106B5B8(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_10106B650(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10113E260(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10106B6E0(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &unk_101A28B30;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_36;
    }

    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10001A2F8(&qword_101A28B80, v3);
      for (i = 0; i != v14; ++i)
      {
        sub_1005B981C(v3);
        v18 = sub_1007779F4(v29, i, v5);
        v19 = v3;
        v21 = *v20;
        swift_unknownObjectRetain();
        (v18)(v29, 0);
        *(v16 + 8 * i) = v21;
        v3 = v19;
      }
    }

    else
    {
      sub_1005B981C(&unk_101A28660);
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v7 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v7);
      v24 = v22 + v7;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t CRLStatusHUDManager.ready.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  return *(v0 + v1);
}

void CRLStatusHUDManager.ready.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    sub_10106EB14();
  }
}

void (*CRLStatusHUDManager.ready.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10106BB9C;
}

void sub_10106BB9C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0 && *(v3[3] + v3[4]) == 1)
  {
    sub_10106EB14();
  }

  free(v3);
}

id CRLStatusHUDManager.delayedControllers.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CRLStatusHUDManager.delayedControllers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *CRLStatusHUDManager.containerView.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CRLStatusHUDManager.containerView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  if (*(v1 + v6) == 1)
  {
    sub_10106EB14();
  }
}

void (*CRLStatusHUDManager.containerView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10106BFDC;
}

void sub_10106BFDC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
    swift_beginAccess();
    if (*(v4 + v5) == 1)
    {
      sub_10106EB14();
    }
  }
}

uint64_t CRLStatusHUDManager.alwaysUseDarkAppearance.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_alwaysUseDarkAppearance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLStatusHUDManager.alwaysUseDarkAppearance.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_alwaysUseDarkAppearance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRLStatusHUDManager.isActive.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLStatusHUDManager.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_isActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_10106C304(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  *&v1[v3] = a1;

  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v5, result);
    v10 = &result[v5];
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v5, result);
  v10 = &result[v5];
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  v11 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  result = [*&v1[v11] count];
  if (!__OFADD__(v10, result))
  {
    return [v1 setIsActive:&result[v10] > 0];
  }

LABEL_11:
  __break(1u);
  return result;
}

char *sub_10106C42C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  *&v1[v3] = a1;

  v4 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *&v1[v3];
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v6, result);
    v10 = &result[v6];
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v6, result);
  v10 = &result[v6];
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  v11 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  result = [*&v1[v11] count];
  if (!__OFADD__(v10, result))
  {
    return [v1 setIsActive:&result[v10] > 0];
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10106C554()
{
  result = _UISolariumEnabled();
  v1 = 16.0;
  if (result)
  {
    v1 = 20.0;
  }

  qword_101AD8D80 = *&v1;
  return result;
}

uint64_t sub_10106C584()
{
  result = _UISolariumEnabled();
  v1 = 20.0;
  if (result)
  {
    v1 = 15.0;
  }

  qword_101AD8D88 = *&v1;
  return result;
}

double CRLStatusHUDManager.maxTextWidth.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 && (v3 = [v2 window]) != 0 && (v4 = v3, objc_msgSend(v3, "bounds"), Width = CGRectGetWidth(v8), v4, Width < 375.0))
  {
    v6 = Width + -10.0 + -10.0;
  }

  else
  {
    v6 = 355.0;
  }

  if (qword_1019F2840 != -1)
  {
    swift_once();
  }

  return v6 - *&qword_101AD8D88 - *&qword_101AD8D88 + -22.0;
}

void CRLStatusHUDManager.maxHUDWidth.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 window];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      CGRectGetWidth(v5);
    }
  }
}

void CRLStatusHUDManager.show(hudController:)(void *a1)
{
  swift_getObjectType();

  sub_101071284(a1, v1);
}

void CRLStatusHUDManager.show(hudController:withDelay:)(void *a1, double a2)
{
  swift_getObjectType();

  sub_10107128C(a1, v2, a2);
}

void sub_10106C958(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
    swift_beginAccess();
    if ([*&v4[v5] containsObject:a2])
    {
      [*&v4[v5] removeObject:a2];
      ObjectType = swift_getObjectType();
      sub_10107128C(a2, v4, ObjectType, 0.0);
    }
  }
}

void CRLStatusHUDManager.replace(_:with:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();

  sub_101070CEC(a1, a2, v2, ObjectType);
}

void CRLStatusHUDManager.hide(hudController:)(void *a1)
{
  if (qword_1019F20C8 != -1)
  {
LABEL_69:
    swift_once();
  }

  v3 = static OS_os_log.crlStatusHUD;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  swift_unknownObjectRetain();
  sub_1005B981C(&unk_101A28660);
  sub_1005B981C(&unk_1019F5670);
  swift_dynamicCast();
  v55 = a1;
  v5 = [a1 message];
  v54 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(inited + 96) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 104) = v10;
  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v9)
  {
    v12 = v9;
  }

  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + v13))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v10;
  *(inited + 112) = v14;
  *(inited + 120) = v15;
  v16 = a1;
  v17 = [a1 showing];
  if (v17)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  *(inited + 176) = &type metadata for String;
  *(inited + 184) = v10;
  *(inited + 152) = v18;
  *(inited + 160) = v19;
  v20 = [a1 animating];
  if (v20)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  v22 = v1;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = v10;
  if (v20)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  *(inited + 192) = v21;
  *(inited + 200) = v23;
  v24 = static os_log_type_t.default.getter();
  a1 = v54;
  sub_100005404(v54, &_mh_execute_header, v24, "hide hudController=%{public}@, message=%@, ready=%{public}@, showing=%{public}@, animating=%{public}@", 103, 2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*(v1 + v13) != 1)
  {
    if ([v55 type])
    {
      v26 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
      swift_beginAccess();
      if (![*(v1 + v26) containsObject:v55])
      {
        v28 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
        swift_beginAccess();
        v53 = v28;
        v1 = *&v22[v28];
        if (v1 >> 62)
        {
          v29 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = 0;
        while (1)
        {
          if (v29 == v30)
          {

            v38 = swift_initStackObject();
            *(v38 + 16) = xmmword_10146C6B0;
            swift_unknownObjectRetain();
            swift_dynamicCast();
            v39 = static os_log_type_t.error.getter();
            sub_100005404(v54, &_mh_execute_header, v39, "hudController=%{public}@ was not found in the waiting controllers or delayed controllers while hiding.", 102, 2, v38);
            swift_setDeallocating();
            sub_100005070(v38 + 32);
            goto LABEL_64;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

            v31 = *(v1 + 8 * v30 + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRelease();
          if (v31 == v55)
          {
            break;
          }

          v32 = __OFADD__(v30++, 1);
          if (v32)
          {
            goto LABEL_68;
          }
        }

        swift_beginAccess();
        sub_10106B650(v30);
        swift_endAccess();
        swift_unknownObjectRelease();
        v40 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
        swift_beginAccess();
        v41 = *&v22[v40];
        if (v41 >> 62)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v43 = *&v22[v53];
        a1 = v54;
        if (v43 >> 62)
        {
          v44 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v16 = v55;
        v32 = __OFADD__(v42, v44);
        v45 = v42 + v44;
        if (v32)
        {
          __break(1u);
        }

        else
        {
          v46 = [*&v22[v26] count];
          if (!__OFADD__(v45, v46))
          {
            [v22 setIsActive:v46 + v45 > 0];
            goto LABEL_64;
          }
        }

        __break(1u);
        return;
      }

      [*(v1 + v26) removeObject:v55];
    }

    else
    {
      v27 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController);
      if (v27)
      {
        if (v27 == v55)
        {
          *(v1 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController) = 0;
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v47 = static os_log_type_t.error.getter();
        sub_100005404(v54, &_mh_execute_header, v47, "errorController was not set as expected when trying to hide.", 60, 2, _swiftEmptyArrayStorage);
      }
    }

LABEL_64:
    v48 = [v16 containerView];
    v49 = [v48 superview];

    if (v49)
    {

      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_10146C6B0;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v51 = static os_log_type_t.error.getter();
      sub_100005404(a1, &_mh_execute_header, v51, "hudController=%{public}@ was not removed from the superview while hiding and not ready.", 87, 2, v50);
      swift_setDeallocating();
      sub_100005070(v50 + 32);
      v52 = [v16 containerView];
      [v52 removeFromSuperview];

      sub_10106F7F0();
    }

    return;
  }

  if (([v55 showing] & 1) != 0 || objc_msgSend(v55, "animating"))
  {
    v25 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingToHideControllers;
    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    goto LABEL_34;
  }

  sub_10106E5EC(v55);
  v33 = [v55 containerView];
  v34 = [v33 superview];

  if (v34)
  {

    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_10146C6B0;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v54, &_mh_execute_header, v36, "hudController=%{public}@ was not removed from the superview while hiding a controller that's not showing and not animating.", 123, 2, v35);
    swift_setDeallocating();
    sub_100005070(v35 + 32);
    v37 = [v55 containerView];
    [v37 removeFromSuperview];

    v22[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout] = 1;
LABEL_34:
    sub_10106EB14();
  }
}

Swift::Void __swiftcall CRLStatusHUDManager.hideAllControllers()()
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlStatusHUD;
  v2 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v2, "hideAllControllers", 18, 2, _swiftEmptyArrayStorage);
  sub_10106C42C(_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  [*(v0 + v3) removeAllObjects];
  v4 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_40;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 containerView];
      [v9 removeFromSuperview];

      if ([v8 showing])
      {
        [v8 setShowing:0];
      }

      swift_unknownObjectRelease();
    }
  }

  sub_10106C304(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController;
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController);
  if (v11)
  {
    v12 = [swift_unknownObjectRetain() containerView];
    [v12 removeFromSuperview];

    if ([v11 showing])
    {
      [v11 setShowing:0];
    }

    swift_unknownObjectRelease();
  }

  *(v0 + v10) = 0;
  swift_unknownObjectRelease();
  v13 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingToHideControllers;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v16 = &selRef_shouldQueueBeginScribbleMode;
    if (v15)
    {
LABEL_21:
      if (v15 >= 1)
      {
        v28 = v13;

        for (j = 0; j != v15; ++j)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(v14 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          v19 = [v18 containerView];
          v20 = [v19 v16[390]];

          if (v20)
          {

            v21 = [v18 containerView];
            [v21 removeFromSuperview];
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v13 = v28;
        goto LABEL_31;
      }

LABEL_40:
      __break(1u);
      return;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = &selRef_shouldQueueBeginScribbleMode;
    if (v15)
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  *(v0 + v13) = _swiftEmptyArrayStorage;

  v22 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController;
  v23 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController);
  if (v23)
  {
    v24 = [swift_unknownObjectRetain() containerView];
    v25 = [v24 v16[390]];

    if (v25)
    {

      v26 = [v23 containerView];
      [v26 removeFromSuperview];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  *(v0 + v22) = 0;
  v27 = swift_unknownObjectRelease();
  sub_10106F7F0(v27);
}

Swift::Void __swiftcall CRLStatusHUDManager.updateForAppearance()()
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlStatusHUD;
  v2 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v2, "Updating HUDs for appearance", 28, 2, _swiftEmptyArrayStorage);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController);
  if (v3)
  {
    [v3 updateForAppearance];
  }

  sub_1005B981C(&qword_101A28B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  *(inited + 32) = *(v0 + v5);
  v6 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  *(inited + 40) = *(v0 + v6);
  v7 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  v8 = *(v0 + v7);

  v9 = [v8 allObjects];
  sub_1005B981C(&unk_101A28660);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 48) = v10;
  v11 = sub_10106B6E0(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A28B30);
  swift_arrayDestroy();
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_14:

    return;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v14 updateForAppearance];
      swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_10106DB6C(void *a1)
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlStatusHUD;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  swift_unknownObjectRetain();
  v4 = sub_1005B981C(&unk_101A28660);
  sub_1005B981C(&unk_1019F5670);
  swift_dynamicCast();
  ObjectType = swift_getObjectType();
  v5 = [a1 showing];
  v6 = sub_1000053B0();
  v7 = v6;
  if (v5)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v5)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = [a1 animating];
  if (v10)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  if (v10)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  *(inited + 112) = v11;
  *(inited + 120) = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v13, "remove hudController=%{public}@, showing=%{public}@, animating=%{public}@", 73, 2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (([a1 showing] & 1) != 0 || objc_msgSend(a1, "animating"))
  {
    if ([a1 type])
    {
      v14 = sub_101071BE0;
    }

    else
    {
      v14 = sub_101071BE8;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = v24;
    *&v24[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController] = a1;
    swift_unknownObjectRetain();
    v16 = v24;

    swift_unknownObjectRelease();
    sub_1005CBA50(1, v14, v15, ObjectType);
  }

  else
  {
    sub_10106E5EC(a1);
    v17 = [a1 containerView];
    v18 = [v17 superview];

    if (v18)
    {

      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_10146C6B0;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v2, &_mh_execute_header, v20, "hudController=%{public}@ was not removed from the superview while removing a controller that's not showing and not animating.", 125, 2, v19);
      swift_setDeallocating();
      sub_100005070(v19 + 32);
      v21 = [a1 containerView];
      [v21 removeFromSuperview];

      v22 = sub_10106E5EC(a1);
      v24[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout] = 1;
      sub_10106EB14(v22);
    }
  }
}

uint64_t sub_10106DF34(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_1019F2D90);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_101071BF0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018AF930;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v13 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005D91D8();
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_10106E204(void *a1, uint64_t a2)
{
  v4 = [a1 containerView];
  [v4 removeFromSuperview];

  v5 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    *(a2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController) = 0;
    swift_unknownObjectRelease();
  }

  *(a2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController) = 0;
  v7 = swift_unknownObjectRelease();
  *(a2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout) = 1;
  return sub_10106EB14(v7);
}

uint64_t sub_10106E2A0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10106E5EC(a1);
  sub_100006370(0, &qword_1019F2D90);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_101071C38;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018AF980;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v13 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005D91D8();
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_10106E57C(void *a1, uint64_t a2)
{
  v3 = [a1 containerView];
  [v3 removeFromSuperview];

  *(a2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController) = 0;
  v4 = swift_unknownObjectRelease();
  *(a2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout) = 1;
  return sub_10106EB14(v4);
}

char *sub_10106E5EC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_44:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      goto LABEL_20;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v9 = *(v5 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v9 == a1)
    {
      break;
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_42;
    }
  }

  swift_beginAccess();
  sub_10106B650(v8);
  swift_endAccess();
  swift_unknownObjectRelease();
  v11 = *&v2[v4];
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  v14 = *&v2[v13];
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v12, v15);
    v16 = v12 + v15;
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v29 = _CocoaArrayWrapper.endIndex.getter();
  v10 = __OFADD__(v12, v29);
  v16 = v12 + v29;
  if (v10)
  {
    goto LABEL_49;
  }

LABEL_18:
  v17 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  v18 = [*&v2[v17] count];
  if (__OFADD__(v16, v18))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v2 setIsActive:v18 + v16 > 0];
LABEL_20:
  v6 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  v5 = *&v2[v6];
  if (v5 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  while (1)
  {
    if (v19 == v20)
    {

      goto LABEL_39;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v21 = *(v5 + 8 * v20 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v21 == a1)
    {
      break;
    }

    v10 = __OFADD__(v20++, 1);
    if (v10)
    {
      goto LABEL_43;
    }
  }

  swift_beginAccess();
  sub_10106B650(v20);
  swift_endAccess();
  swift_unknownObjectRelease();
  v22 = *&v2[v4];
  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_35;
  }

LABEL_51:
  v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_35:
  v24 = *&v2[v6];
  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v23, result);
    v26 = &result[v23];
    if (!v10)
    {
      goto LABEL_37;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v10 = __OFADD__(v23, result);
  v26 = &result[v23];
  if (v10)
  {
    goto LABEL_54;
  }

LABEL_37:
  v27 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  result = [*&v2[v27] count];
  if (__OFADD__(v26, result))
  {
LABEL_55:
    __break(1u);
    return result;
  }

  [v2 setIsActive:&result[v26] > 0];
LABEL_39:
  v28 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  return [*&v2[v28] removeObject:a1];
}

uint64_t sub_10106E9EC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController);
  if (v2)
  {
    v3 = v2 == a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return 1;
  }

  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingToHideControllers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
LABEL_22:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    v9 = v7 != v8;
    if (v7 == v8)
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v10 == a1)
    {
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v9;
}
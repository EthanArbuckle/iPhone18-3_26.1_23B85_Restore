void sub_1002368D0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    return;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 verticalSizeClass];

  if (v4 == 1 && (v5 = [v0 traitCollection], v6 = objc_msgSend(v5, "verticalSizeClass"), v5, v6 == 1))
  {
    v7 = [v0 cardPresentationController];
    if (!v7)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = v7;
    [v7 setPresentedModally:1];

    v9 = [v0 cardPresentationController];
    if (!v9)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v9;
    [v9 setTakesAvailableHeight:1];

    v11 = [v0 cardPresentationController];
    if (!v11)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v12 = v11;
    [v11 wantsLayout:3];
  }

  else
  {
    v13 = [v0 cardPresentationController];
    if (!v13)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = v13;
    [v13 setPresentedModally:0];

    v15 = [v0 cardPresentationController];
    if (!v15)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v12 = v15;
    [v15 setTakesAvailableHeight:0];
  }

  v16 = [v0 cardPresentationController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  [v16 updateHeightForCurrentLayout];
}

void sub_100236B00(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 userGuideViewController:v3 didSelect:a1];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100236B90(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(PersonalCollectionShareItemSource) initWithCollectionHandlerInfo:*&v3[OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionHandler]];
      v11 = a1;
      v7 = a1;
      v8 = v6;
      sub_1000CE6B8(&unk_101909900);
      v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v10 = [objc_opt_self() optionsWithSender:{v9, v11}];
      swift_unknownObjectRelease();
      [v5 shareItem:v8 presentationOptions:v10 completion:0];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100236CCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 userGuideViewController:v1 didTapAddPlacesToGuide:*&v1[OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionHandler]];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100236D58(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10023A404(a2);
  }
}

void sub_100236DB4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000CE6B8(&qword_101914C30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1011E1D60;
    *(v3 + 32) = 512;
    v4 = [objc_opt_self() sharedLocationManager];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 isAuthorizedForPreciseLocation];

    v7 = *(v3 + 16);
    if (v6)
    {
      v8 = *(v3 + 24);
      v9 = (v7 + 1);
      if (v7 >= v8 >> 1)
      {
LABEL_37:
        v3 = sub_1003575E4((v8 > 1), v9, 1, v3);
      }

      v28 = v2;
      v29 = v0;
      *(v3 + 16) = v9;
      *(v3 + v7 + 32) = 1;
    }

    else
    {
      if (!v7)
      {
        v20 = 0;
        v9 = _swiftEmptyArrayStorage;
LABEL_31:
        type metadata accessor for SortOptionPickerSortOption();
        isa = Array._bridgeToObjectiveC()().super.isa;
        v24 = swift_allocObject();
        v24[2] = v9;
        v24[3] = v3;
        v24[4] = v0;
        aBlock[4] = sub_10023B150;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001FDE68;
        aBlock[3] = &unk_10160C000;
        v25 = _Block_copy(aBlock);
        v26 = v0;

        [v2 viewController:v26 showSortPickerWithSortOptions:isa initialSelectedSortOptionIndex:v20 completion:v25];
        swift_unknownObjectRelease();
        _Block_release(v25);

        return;
      }

      v28 = v2;
      v29 = v0;
      v9 = *(v3 + 16);
    }

    v2 = 0xD000000000000018;
    aBlock[0] = _swiftEmptyArrayStorage;

    v0 = aBlock;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = 0;
    v7 = *(v3 + 16);
    v8 = 0x8000000101226940;
    do
    {
      if (v7 == v10)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v8 = *(v3 + 16);
      if (v10 >= v8)
      {
        goto LABEL_35;
      }

      if (*(v10 + v3 + 32))
      {
        if (*(v10 + v3 + 32) == 1)
        {
          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v11.super.isa = qword_1019600D8;
          v27 = 0x80000001012268E0;
          v12 = 0xD00000000000001CLL;
          v13 = 0x80000001012268C0;
          v14 = 0xD000000000000034;
          v15 = 0x65636E6174736944;
          v16 = 0xE800000000000000;
        }

        else
        {
          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v11.super.isa = qword_1019600D8;
          v27 = 0x8000000101226880;
          v13 = 0x8000000101226860;
          v14 = 0xD000000000000030;
          v12 = 0xD000000000000018;
          v15 = 1701667150;
          v16 = 0xE400000000000000;
        }
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v11.super.isa = qword_1019600D8;
        v27 = 0x8000000101226940;
        v12 = 0xD00000000000001DLL;
        v13 = 0x8000000101226920;
        v14 = 0xD000000000000036;
        v15 = 0x6464412065746144;
        v16 = 0xEA00000000006465;
      }

      v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, 0, v11, *&v15, *&v14);
      v18 = type metadata accessor for SortOptionPickerSortOption();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id] = v10;
      *&v19[OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_name] = v17;
      v31.receiver = v19;
      v31.super_class = v18;
      objc_msgSendSuper2(&v31, "init");
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = aBlock;
      specialized ContiguousArray._endMutation()();
      v10 = (v10 + 1);
    }

    while (v9 != v10);

    v9 = aBlock[0];
    v7 = *(v3 + 16);
    if (v7)
    {
      v20 = 0;
      v2 = v28;
      v21 = *(v29 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionHandler);
      while (1)
      {
        v8 = *(v3 + 16);
        if (v20 >= v8)
        {
          goto LABEL_36;
        }

        v22 = *(v3 + v20 + 32);
        if ([v21 sortType] == v22)
        {
          goto LABEL_30;
        }

        if (v7 == ++v20)
        {
          v20 = 0;
          goto LABEL_30;
        }
      }
    }

    v20 = 0;
    v2 = v28;
LABEL_30:
    v0 = v29;
    goto LABEL_31;
  }
}

void sub_1002372DC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_100237338()
{
  v1 = [objc_allocWithZone(UIImagePickerController) init];
  [v1 setAllowsEditing:1];
  [v1 setDelegate:v0];
  [v1 setSourceType:0];
  [v0 _maps_topMostPresentViewController:v1 animated:1 completion:0];
  v2 = [objc_opt_self() sharedService];
  if (v2)
  {
    v3 = v2;
    [v2 captureUserAction:2074 onTarget:252 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100237428(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v3 = Strong;
      v4 = [Strong cardPresentationController];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      [v4 wantsLayout:3];

      Strong = v3;
    }
  }
}

void sub_1002374B8(void *a1, unsigned __int8 a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100237530(a2, a1, a3);
  }
}

void sub_100237530(unsigned __int8 a1, void *a2, void *a3)
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  if (a1 > 9u)
  {
    if (a1 != 10)
    {
      if (a1 != 11)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_8:
    v23 = [objc_allocWithZone(SearchResult) initWithMapItem:a2];
    if (!v23)
    {
      return;
    }

    v20 = v23;
    if (a3)
    {
      v35 = sub_100014C84(0, &qword_10190CA10);
      *&v34 = a3;
      sub_1000D2BE0(&v34, &v36);
      v24 = v37;
    }

    else
    {
      v25 = [v3 view];
      v24 = sub_1000CE6B8(&unk_101909900);
      v37 = v24;
      *&v36 = v25;
    }

    sub_10005E838(&v36, v24);
    v26 = a3;
    v27 = _bridgeAnythingToObjectiveC<A>(_:)();
    v28 = [objc_opt_self() optionsWithSender:v27];
    swift_unknownObjectRelease();
    sub_10004E3D0(&v36);
    if (v28)
    {
      v29 = [objc_opt_self() shareItemForObject:v20];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        v28 = v28;
        [v31 shareItem:v29 presentationOptions:v28 completion:0];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_17;
  }

  if (a1 == 2)
  {
    goto LABEL_8;
  }

  if (a1 == 7)
  {
LABEL_7:
    v10 = *&v3[OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel];
    sub_1000CE6B8(&qword_101908400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E47B0;
    v12 = type metadata accessor for UserGuideItem();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC4Maps13UserGuideItem_type];
    *v14 = a2;
    v14[8] = 0;
    v33.receiver = v13;
    v33.super_class = v12;
    v15 = a2;
    *(inited + 32) = objc_msgSendSuper2(&v33, "init");
    swift_getKeyPath();
    *&v36 = v10;
    sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v10 + 16);
    v17 = sub_1003F90BC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v18 = sub_100455220(v17);

    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    type metadata accessor for MainActor();
    v20 = v16;
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    v22[5] = v18;
    sub_10020AAE4(0, 0, v9, &unk_1011F3B80, v22);

LABEL_17:
  }
}

void sub_100237960()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel);
    swift_getKeyPath();
    sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
    swift_beginAccess();
    v4 = *(v3 + 72);
    if (v4)
    {

      v5 = sub_10023A704(v4);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_100193144(v5);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [objc_opt_self() searchInfoWithResults:{isa, v2}];

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 userGuideViewController:v1 didUpdateWith:v7];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100237BD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  v2 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  sub_1000CE6B8(&qword_10190A1B0);
  State.init(wrappedValue:)();
  type metadata accessor for UserGuideViewModel();

  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  a1[3] = &type metadata for UserGuideView;
  a1[4] = sub_10023AE54();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v4;
  *(result + 24) = v5;
  *(result + 32) = v4;
  *(result + 40) = v5;
  *(result + 48) = v4;
  *(result + 49) = v4;
  *(result + 52) = *(&v4 + 3);
  *(result + 56) = v5;
  *(result + 64) = v4;
  *(result + 65) = v2;
  *(result + 68) = v2 >> 24;
  *(result + 72) = v5;
  *(result + 80) = v4;
  *(result + 88) = v5;
  *(result + 96) = v4;
  *(result + 104) = v5;
  return result;
}

void sub_100237DC4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 userGuideViewController:v3 present:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100237E5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong presentViewController:a1 animated:1 completion:0];
  }
}

char *sub_100237EC8(char *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_19:
    v16 = result;
    v17 = a3;
    v18 = a4;
    v19 = a2;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v19;
    a4 = v18;
    a3 = v17;
    v5 = v20;
    result = v16;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id;
  v8 = a2 & 0xC000000000000001;
  while (v5 != v6)
  {
    if (v8)
    {
      v21 = result;
      v10 = a2;
      v11 = a3;
      v12 = a4;
      v13 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id);
      swift_unknownObjectRelease();
      result = v21;
      a2 = v10;
      a4 = v12;
      a3 = v11;
      if (v13 == *&v21[v7])
      {
LABEL_12:
        if (v6 < *(a3 + 16))
        {
          v14 = *(a4 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionHandler);
          v15 = *(a3 + v6 + 32);

          return [v14 setSortType:v15];
        }

        return result;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (*(*(a2 + 8 * v6 + 32) + OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id) == *&result[v7])
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_10023807C()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_actionDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_mapModificationDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_shareDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_sortOptionPickerDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection);

  return sub_1000588AC(v1);
}

void sub_1002381F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel);
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  v3 = *(v2 + 72);
  if (v3)
  {
    sub_1000F0120(*(v2 + 72));
    v4 = sub_10023A704(v3);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_100193144(v4);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() searchInfoWithResults:isa];

  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong injectSearchPinsFromSearchInfo:v6];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1002383E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong searchResultsForViewController:v0];
    swift_unknownObjectRelease();
    sub_100014C84(0, &qword_10190E160);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel);
  swift_getKeyPath();
  v24 = v4;
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v4 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  v6 = *(v5 + 72);
  if (v6)
  {
    sub_1000F0120(*(v5 + 72));
    v7 = sub_10023A704(v6);

    if (v3)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = 0;
    if (!(v7 >> 62))
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_6:

  v9 = sub_1001F0B18(v8, v7);

  if (v9)
  {
LABEL_31:

    return 1;
  }

  if (v3 >> 62)
  {
LABEL_35:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!(v7 >> 62))
    {
LABEL_13:
      v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_37;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v7 >> 62))
    {
      goto LABEL_13;
    }
  }

LABEL_36:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_37;
  }

LABEL_14:
  if (v10 == v11)
  {
    v12 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v3 & 0xC000000000000001;
    v14 = -v13;
    v15 = 4;
    while (v14 + v15 != 4)
    {
      v16 = v15 - 4;
      if (v23)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v12 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(v3 + 8 * v15);
      }

      v18 = v17;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v19 = *(v7 + 8 * v15);
      }

      v20 = v19;
      v21 = [v18 isEqualToSearchResult:v19 forPurpose:{5, v23, v24}];

      ++v15;
      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if ((v21 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_31;
  }

LABEL_37:

  return 0;
}

void sub_1002387C8(void *a1, uint64_t a2)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  if (*(a2 + 16))
  {
    v3 = sub_100298E68(UIImagePickerControllerEditedImage);
    if (v4)
    {
      sub_10004E374(*(a2 + 56) + 32 * v3, v7);
      sub_100014C84(0, &qword_10190AB90);
      if (swift_dynamicCast())
      {
        v5 = v6;
        sub_1003F5CFC(v6);
      }
    }
  }
}

uint64_t sub_1002389DC(void *a1)
{
  v3 = type metadata accessor for EditMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(v1 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker);
    *(v1 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker) = 0;

    v10 = [a1 editSession];
    [v8 userGuideViewController:v1 createNewUserGuideWith:v10];

    v11 = *(v1 + OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel);
    if (sub_1003F2E04())
    {
      swift_getKeyPath();
      v15 = v11;
      sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (!*(v11 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession))
      {
        return swift_unknownObjectRelease();
      }
    }

    (*(v4 + 104))(v6, enum case for EditMode.inactive(_:), v3);
    sub_1003F459C(v6);
    if (*(v11 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v14 - 2) = v11;
      *(&v14 - 1) = 0;
      v15 = v11;
      sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v11 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage))
    {
      v13 = swift_getKeyPath();
      __chkstk_darwin(v13);
      *(&v14 - 2) = v11;
      *(&v14 - 1) = 0;
      v15 = v11;
      sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_100238EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession);
  *a2 = v4;

  return v4;
}

void sub_100238F60(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003F592C(v1);
}

uint64_t sub_100238F90@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onClose);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onClose + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100239088(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001574D4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1002391E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSelect);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSelect + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1002392DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10020309C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100239438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onShare);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onShare + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100239530(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10023968C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddPlacesToGuide);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddPlacesToGuide + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100239784(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001574D4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1002398E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddToGuide);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddToGuide + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100100E3C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1002399D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100100EB8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100239B34@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSort);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSort + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100239C2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001574D4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100239D88@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onChoosePhoto);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onChoosePhoto + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100239E80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001552C0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100239FDC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onEnterOrExitEditMode);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onEnterOrExitEditMode + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10023B148;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10023A0D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10023B140;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

id sub_10023A230(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker] = 0;
  v5 = &v2[OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionHandler] = a1;
  type metadata accessor for UserGuideViewModel();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel] = sub_1003F9274(a1);
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_10023A33C()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker) = 0;
  v1 = (v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10023A404(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel);
  swift_getKeyPath();
  v24 = v4;
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession);
  if (v5)
  {
    sub_100014C84(0, &qword_101914C38);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = v5;
    v8 = [ObjCClassFromMetadata collectionSessionWithSession:{v7, v24}];
    if (a1)
    {
      [a1 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v10 = 0.0;
      v12 = 0.0;
      v14 = 0.0;
      v16 = 0.0;
    }

    v17 = [objc_allocWithZone(CollectionPicker) initWithCollectionEditSession:v8 sourceView:a1 sourceRect:{v10, v12, v14, v16}];
    v18 = *(v2 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker);
    *(v2 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker) = v17;
    v19 = v17;

    [v19 setDelegate:v2];
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = sub_10023B15C;
    v29 = v20;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1002B8BE0;
    v27 = &unk_10160C078;
    v21 = _Block_copy(&v24);

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = sub_10023B164;
    v29 = v22;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1002B8BE0;
    v27 = &unk_10160C0A0;
    v23 = _Block_copy(&v24);

    [v19 viewControllerToPresentIfContainee:v21 ifAlertController:v23];
    _Block_release(v23);
    _Block_release(v21);
  }
}

void *sub_10023A704(uint64_t a1)
{
  v2 = type metadata accessor for UserGuideItemRowViewModel();
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v3 + 36);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_10023AD94(v10, v6);
      v12 = *&v6[v9] + OBJC_IVAR____TtC4Maps13UserGuideItem_type;
      if ((*(v12 + 8) & 1) != 0 || ![objc_allocWithZone(SearchResult) initWithMapItem:*v12])
      {
        sub_10023ADF8(v6);
      }

      else
      {
        sub_10023ADF8(v6);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v15;
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v7;
}

uint64_t sub_10023A8B0()
{
  v1 = type metadata accessor for EditMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker);
  *(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionPicker) = 0;

  v6 = *(v0 + OBJC_IVAR____TtC4Maps23UserGuideViewController_viewModel);
  if ((sub_1003F2E04() & 1) == 0 || (swift_getKeyPath(), v11 = v6, sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), result = , *(v6 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession)))
  {
    (*(v2 + 104))(v4, enum case for EditMode.inactive(_:), v1);
    result = sub_1003F459C(v4);
    if (*(v6 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v10 - 2) = v6;
      *(&v10 - 1) = 0;
      v11 = v6;
      sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v6 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage))
    {
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);
      *(&v10 - 2) = v6;
      *(&v10 - 1) = 0;
      v11 = v6;
      sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_10023ABCC(uint64_t a1, Swift::Void (__swiftcall *a2)(MKMapItem with), uint64_t a3)
{
  v7 = objc_opt_self();
  v16 = a2;
  v17 = a3;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100534B00;
  v15 = &unk_10160BE20;
  v8 = _Block_copy(&v12);

  v9 = [v7 _maps_viewControllerForRenamingMapItem:a1 saveHandler:v8 cancelHandler:0];
  _Block_release(v8);
  v16 = UIView.annotateView(with:);
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100039C64;
  v15 = &unk_10160BE48;
  v10 = _Block_copy(&v12);
  v11 = v9;
  [v3 _maps_topMostPresentViewController:v11 animated:1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10023AD4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10023AD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideItemRowViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023ADF8(uint64_t a1)
{
  v2 = type metadata accessor for UserGuideItemRowViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10023AE54()
{
  result = qword_101914C20;
  if (!qword_101914C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914C20);
  }

  return result;
}

uint64_t sub_10023B080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_100396190(a1, v4, v5, v7, v6);
}

unint64_t sub_10023B188()
{
  result = qword_101914C40;
  if (!qword_101914C40)
  {
    sub_1000D6664(&qword_101914C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914C40);
  }

  return result;
}

unint64_t sub_10023B1F0()
{
  result = qword_101914C50;
  if (!qword_101914C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914C50);
  }

  return result;
}

unint64_t sub_10023B380()
{
  result = qword_101914C60;
  if (!qword_101914C60)
  {
    sub_1000D6664(&qword_101914C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914C60);
  }

  return result;
}

uint64_t sub_10023B3E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10023BAE0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_10023B42C()
{
  result = qword_101914C70;
  if (!qword_101914C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914C70);
  }

  return result;
}

id sub_10023B480()
{
  result = [objc_allocWithZone(type metadata accessor for GEOCategoryTaxonomyMapper()) init];
  qword_10195FD10 = result;
  return result;
}

uint64_t sub_10023B4D4()
{
  if (qword_1019065E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10023B5A4;
  v2 = *(v0 + 32);

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v2);
}

uint64_t sub_10023B5A4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10023B6A4, 0, 0);
}

uint64_t sub_10023B6A4()
{
  v0[2] = 0x726F707075736E75;
  v1 = v0[6];
  v0[3] = 0xEB00000000646574;
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 2;
  v3 = sub_1002AFDA8(sub_10023BAF4, v2, v1);

  v4 = v0[6];
  if (v3)
  {

    v5 = 0;
    v6 = 0;
  }

  else if (v4[2])
  {
    v7 = v4[4];
    v8 = v4[5];

    v5 = sub_10023B7DC(v7, v8);
    v6 = v9 & 1;
    if (v9)
    {
      v5 = 0;
    }
  }

  else
  {

    v5 = 0;
    v6 = 1;
  }

  v10 = v0[1];

  return v10(v5, v6 | ((v3 & 1) << 8));
}

uint64_t sub_10023B7DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6964 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6576617274 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65727574616ELL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7469736E617274 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E6970706F6873 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74696E756D6D6F63 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x68746C616568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7365636966666FLL && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10023BAE0(uint64_t result)
{
  if ((result - 10) < 0xFFFFFFFFFFFFFFF7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10023BB28()
{
  result = qword_101914C78;
  if (!qword_101914C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914C78);
  }

  return result;
}

Swift::Int sub_10023BB7C(void *a1, void *a2)
{
  Hasher.init(_seed:)();
  if (!a1)
  {
    Hasher._combine(_:)(0);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  v4 = a1;
  NSObject.hash(into:)();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v5 = a2;
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void *sub_10023BC54()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void sub_10023BC98()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*v0)
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  v3 = v2;
  NSObject.hash(into:)();

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v4 = v1;
  NSObject.hash(into:)();
}

Swift::Int sub_10023BD5C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  v3 = v2;
  NSObject.hash(into:)();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v4 = v1;
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10023BE04()
{
  result = qword_101914C80;
  if (!qword_101914C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914C80);
  }

  return result;
}

uint64_t sub_10023BE58(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    sub_1000F1178();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      sub_1000F1178();
      v10 = a4;
      v11 = a2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10023BF28()
{
  v0 = sub_1000CE6B8(&qword_101914D68);
  sub_100021578(v0, qword_10195FD18);
  sub_100021540(v0, qword_10195FD18);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10023BFD8()
{
  v0 = sub_1000CE6B8(&qword_101914D68);
  sub_100021578(v0, qword_10195FD30);
  sub_100021540(v0, qword_10195FD30);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10023C088@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_101914D70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_1000CE6B8(&qword_101914D78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_1000414C8(&qword_101914D80, &qword_101914D78);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000CE6B8(&qword_101914D88);
  a1[4] = sub_10023EB00();
  sub_10001A848(a1);
  sub_1000414C8(&qword_101914DA8, &qword_101914D70);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10023C30C()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x8000000101226C60;
  v0._countAndFlagsBits = 0x50206F7420646441;
  v0._object = 0xED0000736563616CLL;
  v1._object = 0x8000000101226C40;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v1._countAndFlagsBits = 0xD000000000000013;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Text.init<A>(_:)();
}

uint64_t sub_10023C3E4()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x8000000101226C10;
  v0._object = 0x8000000101226BF0;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v1._object = 0x800000010121EF30;
  v3._countAndFlagsBits = 0xD000000000000021;
  v0._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, qword_1019600D8, v1, v3);
  sub_1000E5580();
  return Text.init<A>(_:)();
}

uint64_t sub_10023C4D4()
{
  v0 = sub_1000CE6B8(&qword_101914D58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101914D60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

void sub_10023C818(_BYTE *a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6)
{
  a1[*a4] = a3;
  v7 = *a5;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1000CE6B8(&qword_101914D68);
  sub_100021540(v9, a6);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
}

id sub_10023C8DC(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipObservationTask] = 0;
  v1[OBJC_IVAR____TtC4Maps24InfoCardTipKitController_hasShownForCurrentPlacecard] = 0;
  v1[OBJC_IVAR____TtC4Maps24InfoCardTipKitController_needsRefinement] = 0;
  *&v1[OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipSourceDebouncer] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "init");
  swift_unknownObjectWeakAssign();

  return v4;
}

uint64_t sub_10023CAC0()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipObservationTask))
  {

    Task.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipSourceDebouncer))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v0 + OBJC_IVAR____TtC4Maps24InfoCardTipKitController_hasShownForCurrentPlacecard) = 0;
  if (qword_1019065F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000CE6B8(&qword_101914D68);
  sub_100021540(v1, qword_10195FD30);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC4Maps24InfoCardTipKitController_needsRefinement) = 0;
  if (qword_1019065F0 != -1)
  {
    swift_once();
  }

  sub_100021540(v1, qword_10195FD18);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  return swift_unknownObjectWeakAssign();
}

void *sub_10023CCB4(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v14);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = v10;
    v30 = v13;
    v31 = v4;
    v32 = v8;
    v33 = v3;
    v34 = v7;

    v28 = OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipSourceDebouncer;
    if (*(v2 + OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipSourceDebouncer))
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v18 = v35;
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    aBlock[4] = sub_10023EC3C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_10160C3F8;
    _Block_copy(aBlock);
    v36 = _swiftEmptyArrayStorage;
    sub_1000DB364();

    swift_unknownObjectRetain();
    sub_1000CE6B8(&unk_10190B500);
    sub_1000414C8(&qword_1019097E0, &unk_10190B500);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v19 = DispatchWorkItem.init(flags:block:)();

    *(v2 + v28) = v19;

    sub_100109428();
    v20 = static OS_dispatch_queue.main.getter();
    v21 = v29;
    static DispatchTime.now()();
    *v6 = 500;
    v22 = v31;
    v23 = v33;
    (*(v31 + 104))(v6, enum case for DispatchTimeInterval.milliseconds(_:), v33);
    v24 = v30;
    + infix(_:_:)();
    (*(v22 + 8))(v6, v23);
    v25 = *(v32 + 8);
    v26 = v34;
    v25(v21, v34);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v25)(v24, v26);
  }

  return result;
}

void sub_10023D100(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10023D15C(a2);
  }
}

void sub_10023D15C(uint64_t a1)
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClassUnconditional();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = TipUIPopoverViewController.popoverPresentationController.getter();

        if (v11)
        {
          [v11 setSourceItem:v7];
        }
      }

      v12 = v22;
    }

    else
    {
      v13 = OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipObservationTask;
      if (*(v1 + OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipObservationTask))
      {

        Task.cancel()();
      }

      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      swift_unknownObjectRetain_n();

      v16 = v22;
      v17 = v1;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v15;
      v19[5] = v7;
      v19[6] = a1;
      v19[7] = v16;

      v20 = sub_10020AAE4(0, 0, v5, &unk_1011F3F88, v19);

      *(v17 + v13) = v20;
    }
  }
}

uint64_t sub_10023D46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  sub_1000CE6B8(&qword_101914DB0);
  v7[23] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v7[24] = v8;
  v7[25] = *(v8 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = sub_1000CE6B8(&qword_101914DB8);
  v7[29] = swift_task_alloc();
  v7[30] = sub_1000CE6B8(&qword_101914DC0);
  v7[31] = swift_task_alloc();
  v9 = sub_1000CE6B8(&qword_101914DC8);
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();
  v10 = sub_1000CE6B8(&qword_101914DD0);
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = type metadata accessor for MainActor();
  v7[39] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[40] = v12;
  v7[41] = v11;

  return _swift_task_switch(sub_10023D6F4, v12, v11);
}

uint64_t sub_10023D6F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[42] = Strong;
  if (Strong)
  {
    v3 = v0[33];
    v2 = v0[34];
    v4 = v0[32];
    v0[43] = sub_10023ED18();
    Tip.shouldDisplayUpdates.getter();
    AsyncMapSequence.base.getter();
    sub_1000414C8(&qword_101914DE0, &qword_101914DB8);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    AsyncMapSequence.transform.getter();
    (*(v3 + 8))(v2, v4);
    AsyncMapSequence.Iterator.init(_:transform:)();
    v0[44] = OBJC_IVAR____TtC4Maps24InfoCardTipKitController_tipPopoverController;
    v5 = static MainActor.shared.getter();
    v0[45] = v5;
    if (v5)
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

    v0[46] = v6;
    v0[47] = v8;

    return _swift_task_switch(sub_10023D948, v6, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10023D948()
{
  v1 = v0[45];
  v0[48] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_1000414C8(&qword_101914DE8, &qword_101914DC0);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_10023DA4C;
  v3 = v0[23];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10023DA4C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_10023DD38;
  }

  else
  {
    (*(v2 + 384))();
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_10023DB78;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10023DB78()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100024F64(v3, &qword_101914DB0);
    v4 = v0[40];
    v5 = v0[41];

    return _swift_task_switch(sub_10023E494, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[27], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[51] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[52] = v8;
    *v8 = v0;
    v8[1] = sub_10023DD50;
    v9 = v0[27];

    return (v11)(v0 + 53, v9);
  }
}

uint64_t sub_10023DD50()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);

  (*(v3 + 8))(v2, v4);
  *(v1 + 425) = *(v1 + 424);
  v5 = *(v1 + 376);
  v6 = *(v1 + 368);

  return _swift_task_switch(sub_10023DEFC, v6, v5);
}

uint64_t sub_10023DEFC()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_10023DF60, v1, v2);
}

uint64_t sub_10023DF60()
{
  v37 = v0;
  v1 = *(v0 + 400);
  static Task<>.checkCancellation()();
  if (v1)
  {

    if (qword_101906600 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_10195FD48);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 336);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Task cancelled: %@", v7, 0xCu);
      sub_100024F64(v8, &qword_1019144F0);
    }

    else
    {
    }

    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    if (qword_101906600 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 336);
    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_10195FD48);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136315138;
      Tip.status.getter();
      v17 = String.init<A>(describing:)();
      v19 = sub_10004DEB8(v17, v18, &v36);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "add to places tip status:%s", v15, 0xCu);
      sub_10004E3D0(v16);
    }

    if (*(v0 + 425) == 1 && (v20 = [*(v0 + 160) superview]) != 0)
    {
      v21 = *(v0 + 344);
      v22 = *(v0 + 336);
      v23 = *(v0 + 176);

      type metadata accessor for TipUIPopoverViewController();
      *(v0 + 40) = &type metadata for AddToLibraryTip;
      *(v0 + 48) = v21;
      swift_unknownObjectRetain();
      v24 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
      v25 = static Color.gray.getter();
      *(v0 + 80) = &type metadata for Color;
      *(v0 + 88) = &protocol witness table for Color;
      *(v0 + 56) = v25;
      TipUIPopoverViewController.imageStyle.setter();
      v26 = v22;
      TipUIPopoverViewController.presentationDelegate.setter();
      swift_unknownObjectWeakAssign();
      [v23 presentViewController:v24 animated:1 completion:0];
    }

    else
    {
      v29 = [*(v0 + 176) presentedViewController];
      if (v29)
      {
        v30 = v29;
        type metadata accessor for TipUIPopoverViewController();
        v31 = swift_dynamicCastClass();

        if (v31)
        {
          [*(v0 + 176) dismissViewControllerAnimated:1 completion:0];
          swift_unknownObjectWeakAssign();
        }
      }
    }

    v32 = static MainActor.shared.getter();
    *(v0 + 360) = v32;
    if (v32)
    {
      swift_getObjectType();
      v33 = dispatch thunk of Actor.unownedExecutor.getter();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    *(v0 + 368) = v33;
    *(v0 + 376) = v35;

    return _swift_task_switch(sub_10023D948, v33, v35);
  }
}

uint64_t sub_10023E494()
{
  v1 = v0[42];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

unint64_t sub_10023E718()
{
  result = qword_101914D50;
  if (!qword_101914D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914D50);
  }

  return result;
}

uint64_t sub_10023E76C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FD48);
  sub_100021540(v0, qword_10195FD48);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10023E7F4()
{
  v0 = sub_1000CE6B8(&qword_101914D68);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14[-v2];
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1019065F8 != -1)
  {
    swift_once();
  }

  v8 = sub_100021540(v0, qword_10195FD30);
  swift_beginAccess();
  v9 = *(v1 + 16);
  v9(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_1019065F0 != -1)
  {
    swift_once();
  }

  v11 = sub_100021540(v0, qword_10195FD18);
  swift_beginAccess();
  v9(v3, v11, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v4);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  v12 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v12;
}

unint64_t sub_10023EB00()
{
  result = qword_101914D90;
  if (!qword_101914D90)
  {
    sub_1000D6664(&qword_101914D88);
    sub_1000414C8(&qword_101914D98, &qword_101914D78);
    sub_10023EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914D90);
  }

  return result;
}

unint64_t sub_10023EBB8()
{
  result = qword_101914DA0;
  if (!qword_101914DA0)
  {
    sub_1000D6664(&qword_101914D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914DA0);
  }

  return result;
}

uint64_t sub_10023EC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_10023D46C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10023ED18()
{
  result = qword_101914DD8;
  if (!qword_101914DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914DD8);
  }

  return result;
}

void sub_10023ED70(id a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 value];
  if (!v8)
  {

    goto LABEL_56;
  }

  v53 = [a1 hasServerOverrideIdentifier];
  if (v53)
  {
    v54 = [a1 serverOverrideIdentifier];
  }

  else
  {
    v54 = 0;
  }

  v9 = [a1 formats];
  if (v9)
  {
    v51 = v9;
    v52 = v4;
    v56 = a1;
    NSArray.makeIterator()();
    sub_1000E21E8();
    dispatch thunk of IteratorProtocol.next()();
    if (v61)
    {
      v10 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_1000D2BE0(&v60, v59);
        sub_10004E374(v59, v58);
        sub_100014C84(0, &qword_101914DF8);
        swift_dynamicCast();
        v11 = v57;
        v12 = [v57 formatType];
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v13 = 2;
            goto LABEL_21;
          }

          if (v12 == 4)
          {
            v14 = [v11 tappableEntryIdentifier];
            if (v14)
            {
              v13 = v14;
              goto LABEL_21;
            }
          }
        }

        else
        {
          if (v12 == 1)
          {
            v13 = 0;
            goto LABEL_21;
          }

          if (v12 == 2)
          {
            v13 = 1;
LABEL_21:
            v15 = [v11 startIndex];
            v16 = [v11 endIndex];

            sub_10004E3D0(v59);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1003576E4(0, *(v10 + 2) + 1, 1, v10);
            }

            v18 = *(v10 + 2);
            v17 = *(v10 + 3);
            if (v18 >= v17 >> 1)
            {
              v10 = sub_1003576E4((v17 > 1), v18 + 1, 1, v10);
            }

            *(v10 + 2) = v18 + 1;
            v19 = &v10[24 * v18];
            *(v19 + 4) = v13;
            *(v19 + 5) = v15;
            *(v19 + 6) = v16;
            goto LABEL_10;
          }
        }

        sub_10004E3D0(v59);

LABEL_10:
        dispatch thunk of IteratorProtocol.next()();
        if (!v61)
        {
          goto LABEL_28;
        }
      }
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_28:

    (*(v52 + 8))(v7, v3);
    a1 = v56;
  }

  else
  {
    v10 = 0;
  }

  if ([a1 hasSupportMultiLineWrapping])
  {
    v52 = [a1 supportMultiLineWrapping];
  }

  else
  {
    v52 = 0;
  }

  v20 = [a1 styleAttributes];
  if (!v20)
  {
    goto LABEL_42;
  }

  v21 = v20;
  *&v60 = 0;
  sub_100014C84(0, &qword_101914DF0);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v22 = v60;
  if (!v60)
  {
    goto LABEL_42;
  }

  if (v60 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:

LABEL_42:
    v56 = 0;
    goto LABEL_43;
  }

LABEL_36:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_60;
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  v56 = [objc_allocWithZone(GEOFeatureStyleAttributes) initWithGEOStyleAttributes:v24];

LABEL_43:
  v25 = [a1 value];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = [a1 textColor];
    if (v30)
    {
      v31 = v30;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v51 = 0;
      v33 = 0;
    }

    v34 = [a1 symbolName];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = a1;
    v40 = [a1 symbolColor];
    if (v40)
    {
      v41 = v40;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v45 = String.count.getter();

    if (v45 >= 1)
    {
      LOBYTE(v60) = v53 ^ 1;
      v46 = v53 ^ 1u;
      v47 = v54;
      v49 = v51;
      v48 = v52;
LABEL_57:
      v50 = v55;
      *v55 = v27;
      v50[1] = v29;
      v50[2] = v49;
      v50[3] = v33;
      v50[4] = v36;
      v50[5] = v38;
      v50[6] = v42;
      v50[7] = v44;
      v50[8] = v47;
      v50[9] = v46;
      v50[10] = v10;
      v50[11] = v48;
      v50[12] = v56;
      return;
    }

LABEL_56:
    v27 = 0;
    v29 = 0;
    v49 = 0;
    v33 = 0;
    v36 = 0;
    v38 = 0;
    v42 = 0;
    v44 = 0;
    v47 = 0;
    v10 = 0;
    v56 = 0;
    v48 = 0;
    v46 = 0;
    goto LABEL_57;
  }

LABEL_60:
  __break(1u);
}

uint64_t sub_10023F394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023F3DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

size_t sub_10023F49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v5 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v11 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RefinementsBarButtonViewModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = a1;
  v16 = sub_100525230(sub_100192BE4, v63, v65[0]);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v59 = a3;
    static Published.subscript.getter();

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v65[0] + 16))
    {
      KeyPath = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v13 = *(v13 + 72) * v16;
      a3 = v15;
      sub_10023FF74(v65[0] + KeyPath + v13, v15);

      v21 = *(v15 + *(v12 + 36));
      swift_unknownObjectRetain();
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong resultRefinementsBarDidTapOnSeeAllRefinements:v23];
          swift_unknownObjectRelease();
        }

        goto LABEL_37;
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (!v25)
      {
LABEL_37:
        swift_unknownObjectRelease();
        return sub_10023FFD8(a3);
      }

      v58 = v25;
      v26 = [v25 type];
      if (v26 > 2)
      {
        if (v26 != 3)
        {
          if (v26 != 4)
          {
            goto LABEL_37;
          }

          if (!MapsFeature_IsEnabled_SearchAndDiscovery())
          {
            goto LABEL_37;
          }

          v31 = [v58 openOptions];
          if (!v31)
          {
            goto LABEL_37;
          }

          v28 = v31;
          v32 = sub_10013C47C();
          v33 = swift_unknownObjectWeakLoadStrong();
          if (v33)
          {
            [v33 resultRefinementsBarDidTapOnOpenOptions:v28 tappedAtIndex:v16 - (v32 & 1)];
            goto LABEL_20;
          }

LABEL_36:

          goto LABEL_37;
        }

        sub_100240034(v60, v7);
        v46 = v61;
        if ((*(v62 + 48))(v7, 1, v61) == 1)
        {
          swift_unknownObjectRelease();
          sub_100192A14(v7);
        }

        else
        {
          v47 = (*(v62 + 32))(v11, v7, v46);
          v48 = (a3 + *(v12 + 32));
          v49 = v46;
          v50 = *v48;
          if (!*v48)
          {
            swift_unknownObjectRelease();
            (*(v62 + 8))(v11, v49);
            return sub_10023FFD8(a3);
          }

          v60 = &v58;
          v58 = v48[3];
          __chkstk_darwin(v47);
          *(&v58 - 2) = v11;

          v51 = sub_10052525C(sub_100192BE4, (&v58 - 4), v50);
          v53 = v52;

          if ((v53 & 1) == 0)
          {
            *v48 = v50;
            v48[1] = v51;
            v54 = v58;
            v48[2] = 0;
            v48[3] = v54;
            swift_getKeyPath();
            swift_getKeyPath();
            v60 = static Published.subscript.modify();
            v7 = v55;
            v12 = *v55;
            result = swift_isUniquelyReferenced_nonNull_native();
            *v7 = v12;
            if (result)
            {
LABEL_43:
              if (v16 >= *(v12 + 16))
              {
                __break(1u);
                return result;
              }

              sub_1002400A4(a3, v12 + KeyPath + v13);
              (v60)(v65, 0);

              v56 = swift_unknownObjectWeakLoadStrong();
              v57 = v62;
              if (v56)
              {
                [v56 resultRefinementsBarDidUpdateViewModel:v59];
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              (*(v57 + 8))(v11, v61);
              return sub_10023FFD8(a3);
            }

LABEL_51:
            result = sub_100416640(v12);
            v12 = result;
            *v7 = result;
            goto LABEL_43;
          }

          swift_unknownObjectRelease();
          (*(v62 + 8))(v11, v61);
        }

        return sub_10023FFD8(a3);
      }

      if (v26 != 1)
      {
        if (v26 != 2)
        {
          goto LABEL_37;
        }

        v27 = [v58 multiSelect];
        if (!v27)
        {
          goto LABEL_37;
        }

        v28 = v27;
        v29 = sub_10013C47C();
        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          [v30 resultRefinementsBarDidTapOnMultiSelect:v28 tappedAtIndex:v16 - (v29 & 1)];
LABEL_20:

          swift_unknownObjectRelease();
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v61 = OBJC_IVAR____TtC4Maps27ResultRefinementsController_delegate;
      v62 = v21;
      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        v35 = v34;
        [v34 increasResultRefinementsSelectionSequenceNumber];
        v36 = [v35 refinementsSelectionSequenceNumber];
        v37 = [v36 integerValue];
        swift_unknownObjectRelease();

        v38 = a3 + *(v12 + 40);
        *v38 = v37;
        *(v38 + 8) = 0;
      }

      v7 = *(v12 + 24);
      *(a3 + v7) = (*(a3 + v7) & 1) == 0;
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = static Published.subscript.modify();
      v11 = v39;
      v15 = *v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v15;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_24:
        if (v16 < v15[2])
        {
          sub_1002400A4(a3, v15 + KeyPath + v13);
          (v12)(v65, 0);

          v41 = swift_unknownObjectWeakLoadStrong();
          v42 = v59;
          if (v41)
          {
            [v41 resultRefinementsBarDidUpdateViewModel:v59];
            swift_unknownObjectRelease();
          }

          v43 = [v58 toggle];
          if (v43)
          {
            v44 = v43;
            v45 = swift_unknownObjectWeakLoadStrong();
            if (!v45)
            {
              swift_unknownObjectRelease();

              return sub_10023FFD8(a3);
            }

            [v45 resultRefinementsBarDidTapOnToggle:v44 isSelected:*(a3 + v7)];
            swift_unknownObjectRelease();
          }

          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      v15 = sub_100416640(v15);
      *v11 = v15;
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_49;
  }

  return result;
}

id sub_10023FF0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResultRefinementsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10023FF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RefinementsBarButtonViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023FFD8(uint64_t a1)
{
  v2 = type metadata accessor for RefinementsBarButtonViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100240034(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101918E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002400A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RefinementsBarButtonViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100240108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  (*(a4 + 16))(a4, v6, a3);
}

uint64_t sub_100240214()
{
  v1 = type metadata accessor for CarHeader();
  __chkstk_darwin(v1);
  *(swift_allocObject() + 16) = v0;

  v2 = v0;
  CarHeader.init(model:tapHandler:)();
  sub_100240DD4(&qword_101914E68, &type metadata accessor for CarHeader);
  return AnyView.init<A>(_:)();
}

uint64_t sub_10024032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CarInputType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + OBJC_IVAR____TtC4Maps19CarCardAccessoryBar_accessoryTapHandler);
  (*(v8 + 104))(v11, enum case for CarInputType.touch(_:), v7, v9);
  LOBYTE(a4) = static CarInputType.== infix(_:_:)();
  (*(v8 + 8))(v11, v7);
  if (a4)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  return v12(a1, a2, v13);
}

id sub_100240470(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{

  dispatch thunk of CarHeaderViewModel.title.setter();

  if (a5)
  {
    sub_1000F1178();
    sub_100240DD4(&qword_10190DE60, sub_1000F1178);

    v9 = a5;
    dispatch thunk of CarHeaderViewModel.leadingImage.setter();

    if (a4)
    {
      v10 = a4;
      if (sub_100240A90(v10))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }
    }

    v12 = a3;
    if (sub_100240A90(v12))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_16:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_23;
    }
  }

  else
  {

    dispatch thunk of CarHeaderViewModel.leadingImage.setter();

    if (a4)
    {
      v11 = a4;
      if (sub_100240A90(v11))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }
    }

    v12 = a3;
    if (sub_100240A90(v12))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_16;
    }
  }

LABEL_23:

  dispatch thunk of CarHeaderViewModel.leadingButtons.setter();

  dispatch thunk of CarHeaderViewModel.trailingButtons.setter();

  return [v5 invalidateIntrinsicContentSize];
}

uint64_t sub_10024099C()
{
}

id sub_1002409E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarCardAccessoryBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100240A90(void *a1)
{
  v2 = sub_1000CE6B8(&qword_101909FF8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = [a1 type];
  result = 0;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      type metadata accessor for CarButtonViewModel();
      v16 = [a1 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = static CarButtonViewModel.back(id:)();
    }

    else
    {
      if (v6 != 2)
      {
        return result;
      }

      type metadata accessor for CarButtonViewModel();
      v8 = [a1 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = static CarButtonViewModel.close(id:)();
    }

    goto LABEL_10;
  }

  if (v6 == 3)
  {
    type metadata accessor for CarButtonViewModel();
    v17 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = static CarButtonViewModel.share(id:)();
LABEL_10:
    v18 = v9;

    return v18;
  }

  if (v6 == 4)
  {
    v10 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = [a1 symbolName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = enum case for CarButtonVariant.secondary(_:);
    v13 = type metadata accessor for CarButtonVariant();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v5, v12, v13);
    (*(v14 + 56))(v5, 0, 1, v13);
    v15 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for CarButtonViewModel();
    swift_allocObject();
    return CarButtonViewModel.init(id:imageName:label:variant:progress:systemImagePadding:axID:)();
  }

  return result;
}

uint64_t sub_100240DD4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100240E1C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC4Maps19CarCardAccessoryBar_viewModel;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for CarHeaderViewModel();
  swift_allocObject();
  *&v4[v12] = CarHeaderViewModel.init(id:title:leadingButtons:trailingButtons:leadingImage:titleVisible:)();
  v13 = &v4[OBJC_IVAR____TtC4Maps19CarCardAccessoryBar_accessoryTapHandler];
  *v13 = a2;
  *(v13 + 1) = a3;
  *&v4[OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController] = 0;
  *&v4[OBJC_IVAR____TtC4Maps15MapsHostingView_parentViewController] = a1;
  v14 = type metadata accessor for MapsHostingView();
  v18.receiver = v4;
  v18.super_class = v14;

  v15 = a1;
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10046A3C0();

  return v16;
}

void sub_100240FF4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC4Maps19CarCardAccessoryBar_viewModel;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for CarHeaderViewModel();
  swift_allocObject();
  *(v1 + v6) = CarHeaderViewModel.init(id:title:leadingButtons:trailingButtons:leadingImage:titleVisible:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100241168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v5, v6, a3);
}

id sub_1002411D8(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 serverDynamicContexts];
  if (result)
  {
    v24 = v3;
    v25 = a1;
    v23 = result;
    NSArray.makeIterator()();
    sub_1000E21E8();
    dispatch thunk of IteratorProtocol.next()();
    if (v44)
    {
      v8 = _swiftEmptyArrayStorage;
      do
      {
        sub_1000D2BE0(&v43, v42);
        sub_10004E374(v42, &v41);
        sub_100014C84(0, &qword_101914ED8);
        if (swift_dynamicCast())
        {
          sub_10023ED70(v40, v45);
          v37 = v45[4];
          v38 = v45[5];
          v39 = v46;
          v33 = v45[0];
          v34 = v45[1];
          v35 = v45[2];
          v36 = v45[3];
          sub_10004E3D0(v42);
          if (*(&v45[0] + 1))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_10035782C(0, *(v8 + 2) + 1, 1, v8);
            }

            v10 = *(v8 + 2);
            v9 = *(v8 + 3);
            if (v10 >= v9 >> 1)
            {
              v8 = sub_10035782C((v9 > 1), v10 + 1, 1, v8);
            }

            v30 = v37;
            v31 = v38;
            v32 = v39;
            v28 = v35;
            v29 = v36;
            v11 = v33;
            v26 = v33;
            v27 = v34;
            *(v8 + 2) = v10 + 1;
            v12 = &v8[104 * v10];
            v13 = v28;
            *(v12 + 3) = v27;
            *(v12 + 4) = v13;
            v14 = v29;
            v15 = v30;
            v16 = v31;
            *(v12 + 16) = v32;
            *(v12 + 6) = v15;
            *(v12 + 7) = v16;
            *(v12 + 5) = v14;
            *(v12 + 2) = v11;
          }
        }

        else
        {
          sub_10004E3D0(v42);
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v44);
    }

    (*(v24 + 8))(v6, v2);
    v17 = v25;
    v18 = [v25 mapItemIdentifiers];
    if (v18)
    {
      v19 = v18;
      sub_100014C84(0, &qword_101919ED0);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v20 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21 > 0)
      {
        return v20;
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_100241558(void *a1, void (*a2)(void *), void (*a3)(void *))
{
  v145 = a2;
  v146 = a3;
  v144 = a1;
  v4 = type metadata accessor for ImageProvidingSpecs();
  v142 = *(v4 - 8);
  v143 = v4;
  v5 = *(v142 + 64);
  __chkstk_darwin(v4);
  v6 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v134 - v10;
  v12 = type metadata accessor for URL();
  v140 = *(v12 - 1);
  v141 = v12;
  __chkstk_darwin(v12);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v134 - v16;
  __chkstk_darwin(v18);
  v137 = &v134 - v19;
  v138 = v20;
  __chkstk_darwin(v21);
  v139 = &v134 - v22;
  v23 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v23);
  v25 = (&v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v3[2];
  if (v26)
  {
    sub_1002438E4(v26 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v25);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v45 = v139;
      v46 = v140;
      v143 = *(v140 + 32);
      v47 = v25;
      v48 = v141;
      v143(v139, v47, v141);
      v49 = objc_opt_self();

      v144 = [v49 sharedImageManager];
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      v53 = v137;
      (*(v46 + 16))(v137, v45, v48);
      v54 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v55 = (v138 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      v143((v56 + v54), v53, v48);
      v57 = (v56 + v55);
      v58 = v146;
      *v57 = v145;
      v57[1] = v58;
      v151 = sub_1002439E8;
      v152 = v56;
      aBlock = _NSConcreteStackBlock;
      v148 = 1107296256;
      v149 = sub_100101634;
      v150 = &unk_10160C6E8;
      v59 = _Block_copy(&aBlock);

      v60 = v144;
      [v144 loadAppImageAtURL:v52 completionHandler:v59];
      _Block_release(v59);

      (*(v46 + 8))(v45, v48);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v25;

      v29 = v28;
      v145(v28);

      return;
    }

    v61 = swift_projectBox();
    v62 = *v61;
    v63 = *(v61 + 8);
    v64 = objc_opt_self();
    v65 = v63;
    v66 = v62;

    v67 = [v64 sharedCache];
    if (v67)
    {
      v68 = v67;
      v69 = swift_allocObject();
      v70 = v146;
      v69[2] = v145;
      v69[3] = v70;
      v69[4] = v63;
      v151 = sub_100243B18;
      v152 = v69;
      aBlock = _NSConcreteStackBlock;
      v148 = 1107296256;
      v149 = sub_100271778;
      v150 = &unk_10160C738;
      v71 = _Block_copy(&aBlock);
      v72 = v66;
      v73 = v65;

      [v68 getImageForSpec:v72 loadImageOnBackgroundQueue:1 completion:v71];

      _Block_release(v71);

      return;
    }

    goto LABEL_34;
  }

  v30 = v8;
  v31 = v11;
  v136 = v5;
  v137 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v143;
  v33 = v144;
  v34 = v142;
  v35 = v3[3];
  if (v35)
  {
    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 sharedCache];
    if (v38)
    {
      v39 = v38;
      v40 = swift_allocObject();
      v41 = v146;
      v40[2] = v145;
      v40[3] = v41;
      v40[4] = v37;
      v151 = sub_1002438D8;
      v152 = v40;
      aBlock = _NSConcreteStackBlock;
      v148 = 1107296256;
      v149 = sub_100271778;
      v150 = &unk_10160C698;
      v42 = _Block_copy(&aBlock);
      v43 = v37;

      v44 = v43;

      [v39 getImageForSpec:v44 loadImageOnBackgroundQueue:1 completion:v42];
      _Block_release(v42);

      return;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v74 = v3[4];
  if (v74)
  {
    swift_unknownObjectRetain();
    ImageProvidingSpecs.preferredSize.getter();
    v76 = v75;
    v78 = v77;
    ImageProvidingSpecs.displayScale.getter();
    v80 = v79;
    v81 = [objc_opt_self() defaultPhotoOptionsWithAllowSmaller:1];
    v82 = [v74 bestPhotoForFrameSize:v81 displayScale:v76 options:{v78, v80}];

    if (!v82)
    {
      (*(v140 + 56))(v31, 1, 1, v141);
LABEL_21:
      sub_100024F64(v31, &unk_101909B00);
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      sub_100021540(v103, qword_101960018);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&_mh_execute_header, v104, v105, "- [Place Summary] No url for carousel image for item", v106, 2u);
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }

    v83 = [v82 url];
    v84 = v140;
    v85 = v141;
    v86 = v30;
    if (v83)
    {
      v87 = v83;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v84 + 56))(v30, 0, 1, v85);
    }

    else
    {
      (*(v140 + 56))(v30, 1, 1, v141);
    }

    v102 = v17;
    sub_100102C34(v86, v31);
    if ((*(v84 + 48))(v31, 1, v85) == 1)
    {
      goto LABEL_21;
    }

    v143 = v74;
    v144 = v82;
    v107 = *(v84 + 32);
    v142 = v84 + 32;
    v137 = v107;
    (v107)(v17, v31, v85);
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_100021540(v108, qword_101960018);
    v109 = v84;
    v110 = *(v84 + 16);
    v110(v14, v102, v85);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = v110;
      v115 = swift_slowAlloc();
      aBlock = v115;
      *v113 = 136315138;
      v116 = URL.absoluteString.getter();
      v118 = v117;
      v119 = *(v140 + 8);
      v136 = (v140 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v135 = v119;
      v119(v14, v141);
      v120 = sub_10004DEB8(v116, v118, &aBlock);

      *(v113 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v111, v112, "- [Place Summary] Starting to fetch image at url %s", v113, 0xCu);
      sub_10004E3D0(v115);
      v110 = v114;
      v85 = v141;

      v109 = v140;
    }

    else
    {

      v121 = *(v109 + 8);
      v136 = (v109 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v135 = v121;
      v121(v14, v85);
    }

    v122 = [objc_opt_self() sharedImageManager];
    URL._bridgeToObjectiveC()(v123);
    v125 = v124;
    v126 = v102;
    v127 = v139;
    v110(v139, v126, v85);
    v128 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v129 = (v138 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = swift_allocObject();
    (v137)(v130 + v128, v127, v85);
    v131 = (v130 + v129);
    v132 = v146;
    *v131 = v145;
    v131[1] = v132;
    v151 = sub_1002438C4;
    v152 = v130;
    aBlock = _NSConcreteStackBlock;
    v148 = 1107296256;
    v149 = sub_100101634;
    v150 = &unk_10160C648;
    v133 = _Block_copy(&aBlock);

    [v122 loadAppImageAtURL:v125 completionHandler:v133];
    _Block_release(v133);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v135(v126, v85);
  }

  else
  {
    v88 = v3[5];
    if (v88)
    {
      v89 = objc_allocWithZone(MapsUIImageGEOFeatureSpec);

      v90 = [v89 init];
      [v90 setSize:4];
      v91 = [*(v88 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) _styleAttributes];
      [v90 setStyle:v91];

      v92 = v90;
      v93 = v33;
      [v92 setNightMode:ImageProvidingSpecs.darkMode.getter() & 1];
      [v92 setTransparent:1];
      v141 = [objc_opt_self() sharedCache];
      if (v141)
      {
        v94 = v137;
        (*(v34 + 16))(v137, v93, v32);
        v95 = (*(v34 + 80) + 24) & ~*(v34 + 80);
        v96 = (v136 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
        v97 = swift_allocObject();
        *(v97 + 16) = v88;
        (*(v34 + 32))(v97 + v95, v94, v32);
        v98 = (v97 + v96);
        v99 = v146;
        *v98 = v145;
        v98[1] = v99;
        v151 = sub_100243820;
        v152 = v97;
        aBlock = _NSConcreteStackBlock;
        v148 = 1107296256;
        v149 = sub_100271778;
        v150 = &unk_10160C5F8;
        v100 = _Block_copy(&aBlock);

        v101 = v141;
        [v141 getImageForSpec:v92 loadImageOnBackgroundQueue:0 completion:v100];
        _Block_release(v100);

        return;
      }

      goto LABEL_35;
    }
  }
}

void sub_100242414(void *a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  if (a1 || (a1 = a4) != 0)
  {
    v5 = a1;
    v6 = a1;
    a2(v5);
  }
}

void sub_100242494(void *a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  if (a1)
  {
    oslog = a1;
    a2(a1);
  }

  else
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960018);
    v8 = a4;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v8;
      *v11 = v8;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Couldn't find image for spec: %@", v10, 0xCu);
      sub_100024F64(v11, &qword_1019144F0);
    }
  }
}

void sub_100242608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, const char *a8, const char *a9)
{
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  if (a1)
  {
    v49 = a8;
    v51 = a7;
    v22 = qword_101906728;
    v23 = a1;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100021540(v24, qword_101960018);
    (*(v16 + 16))(v21, a5, v15);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = a6;
      v29 = v28;
      v52 = v28;
      *v27 = 136315138;
      v30 = URL.absoluteString.getter();
      v48 = v23;
      v32 = v31;
      (*(v16 + 8))(v21, v15);
      v33 = sub_10004DEB8(v30, v32, &v52);
      v23 = v48;

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, v49, v27, 0xCu);
      sub_10004E3D0(v29);
      a6 = v50;
    }

    else
    {

      (*(v16 + 8))(v21, v15);
    }

    v45 = v23;
    a6(a1);
  }

  else
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100021540(v34, qword_101960018);
    (*(v16 + 16))(v18, a5, v15);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v50 = a6;
      v51 = a7;
      v49 = a9;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v37 = 136315394;
      v39 = URL.absoluteString.getter();
      v41 = v40;
      (*(v16 + 8))(v18, v15);
      v42 = sub_10004DEB8(v39, v41, &v52);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      if (a4)
      {
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        v44 = v43;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v46 = v49;
      a6 = v50;
      *(v37 + 14) = v43;
      *v38 = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, v46, v37, 0x16u);
      sub_100024F64(v38, &qword_1019144F0);

      sub_10004E3D0(v48);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }

    a6(0);
  }
}

void sub_100242AC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v73 = a4;
  v74 = a5;
  v7 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v7 - 8);
  v72 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v72 - v17;
  v19 = OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_uniqueID;
  swift_beginAccess();
  sub_100240034(a2 + v19, v11);
  v20 = (*(v13 + 48))(v11, 1, v12);
  v75 = v12;
  if (v20 == 1)
  {
    sub_100024F64(v11, &unk_101918E50);
    if (!a1)
    {
      goto LABEL_12;
    }

    v21 = a1;
    v73(a1);
LABEL_11:

LABEL_12:
    v42 = [*(a2 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) _geoMapItem];
    if (v42)
    {
      v43 = v42;
      sub_100243B24();
      swift_getObjectType();
      v44 = sub_1004346AC(v43);
      swift_unknownObjectRelease();
      v45 = [v44 buildRoute];
      if (!v45)
      {

        return;
      }

      v46 = v45;
      v47 = [v45 uniqueRouteID];
      if (v47)
      {
        v48 = v47;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        ImageProvidingSpecs.preferredSize.getter();
        v50 = v49;
        ImageProvidingSpecs.preferredSize.getter();
        v52 = v51;
        ImageProvidingSpecs.displayScale.getter();
        v54 = v53;
        LOBYTE(v48) = ImageProvidingSpecs.darkMode.getter();
        v55 = objc_allocWithZone(MURouteSnapshotKey);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v57 = [v55 initWithIdentifier:isa width:v48 & 1 height:v50 scale:v52 padding:v54 darkMode:{10.0, 10.0, 10.0, 10.0}];

        v58 = v75;
        (*(v13 + 8))(v15, v75);
        v59 = [v46 uniqueRouteID];
        if (v59)
        {
          v60 = v72;
          v61 = v59;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v58 = v75;
          v62 = 0;
        }

        else
        {
          v62 = 1;
          v60 = v72;
        }

        (*(v13 + 56))(v60, v62, 1, v58);
        swift_beginAccess();
        sub_10016E928(v60, a2 + v19);
        swift_endAccess();
        v63 = [objc_opt_self() sharedInstance];
        v64 = swift_allocObject();
        v65 = v73;
        v66 = v74;
        v64[2] = a2;
        v64[3] = v65;
        v64[4] = v66;
        v81 = sub_100243B70;
        v82 = v64;
        aBlock = _NSConcreteStackBlock;
        v78 = 1107296256;
        v79 = sub_1004F3090;
        v80 = &unk_10160C788;
        v67 = _Block_copy(&aBlock);

        [v63 getSnapshotForKey:v57 route:v46 completion:v67];
        _Block_release(v67);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  (*(v13 + 32))(v18, v11, v12);
  ImageProvidingSpecs.preferredSize.getter();
  v23 = v22;
  ImageProvidingSpecs.preferredSize.getter();
  v25 = v24;
  ImageProvidingSpecs.displayScale.getter();
  v27 = v26;
  v28 = ImageProvidingSpecs.darkMode.getter();
  v29 = objc_allocWithZone(MURouteSnapshotKey);
  v30 = UUID._bridgeToObjectiveC()().super.isa;
  v21 = [v29 initWithIdentifier:v30 width:v28 & 1 height:v23 scale:v25 padding:v27 darkMode:{10.0, 10.0, 10.0, 10.0}];

  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 checkCacheForKey:v21];

  if (!v32)
  {
    (*(v13 + 8))(v18, v75);
    goto LABEL_11;
  }

  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100021540(v33, qword_101960018);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76 = v72;
    *v36 = 136315138;
    v37 = [*(a2 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) name];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    aBlock = v39;
    v78 = v41;
    sub_1000CE6B8(&unk_10190D010);
    v68 = String.init<A>(describing:)();
    v70 = sub_10004DEB8(v68, v69, &v76);

    *(v36 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v34, v35, "- [Place Summary] Using cached hike snapshot for mapItem:  %s", v36, 0xCu);
    sub_10004E3D0(v72);
  }

  v71 = v32;
  v73(v32);

  (*(v13 + 8))(v18, v75);
}

void sub_10024325C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *))
{
  if (a2 && !a1)
  {
    v13 = qword_101906728;
    v15 = a2;
    if (v13 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100021540(v16, qword_101960018);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 136315138;
      v21 = [*(a3 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) name];
      if (v21)
      {
        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_1000CE6B8(&unk_10190D010);
      v28 = String.init<A>(describing:)();
      v30 = sub_10004DEB8(v28, v29, &v35);

      *(v19 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "- [Place Summary] Built hike snapshot for mapItem:  %s", v19, 0xCu);
      sub_10004E3D0(v20);
    }

    v31 = v15;
    a4(a2);
  }

  else
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_101960018);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v8 = 138412546;
      if (a1)
      {
        swift_errorRetain();
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v8 + 4) = v11;
      *v9 = v12;
      *(v8 + 12) = 2080;
      v23 = [*(a3 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) name];
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_1000CE6B8(&unk_10190D010);
      v25 = String.init<A>(describing:)();
      v27 = sub_10004DEB8(v25, v26, &v35);

      *(v8 + 14) = v27;
      _os_log_impl(&_mh_execute_header, oslogb, v7, "- [Place Summary] Error:%@ building hike snapshot for mapItem:  %s", v8, 0x16u);
      sub_100024F64(v9, &qword_1019144F0);

      sub_10004E3D0(v10);
    }

    else
    {
    }
  }
}

uint64_t sub_1002436A0()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int sub_10024376C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t sub_1002437E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlaceSummaryImageProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100243820(void *a1)
{
  v3 = *(type metadata accessor for ImageProvidingSpecs() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  sub_100242AC4(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1002438E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100243948()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1002439FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v13 = *(type metadata accessor for URL() - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_100242608(a1, a2, a3, a4, v6 + v14, *v15, *(v15 + 8), a5, a6);
}

uint64_t sub_100243AD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100243B24()
{
  result = qword_101914FD0;
  if (!qword_101914FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101914FD0);
  }

  return result;
}

id sub_100243BD8()
{
  v1 = OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setContentMode:0];
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setAccessibilityIdentifier:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100243D04()
{
  v1 = OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setAccessibilityIdentifier:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100243DD4()
{
  v1 = OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___chargerInfoLabel;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___chargerInfoLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___chargerInfoLabel);
  }

  else
  {
    v4 = sub_100243E38(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100243E38(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setFont:*(a1 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_font)];
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  return v3;
}

id sub_100243EF0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_leadingIconString];
  strcpy(&v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_leadingIconString], "powerplug.fill");
  v9[15] = -18;
  v10 = &v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_trailingIconString];
  *v10 = 0xD000000000000019;
  *(v10 + 1) = 0x80000001012219D0;
  v11 = OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_horizontal;
  *&v4[v11] = [objc_allocWithZone(UIStackView) init];
  v12 = objc_opt_self();
  v13 = [v12 _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  if (!v13)
  {
    v13 = [v12 preferredFontForTextStyle:UIFontTextStyleCaption2];
  }

  *&v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_font] = v13;
  *&v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon] = 0;
  *&v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon] = 0;
  *&v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___chargerInfoLabel] = 0;
  *&v4[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_currentConstraints] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CarSearchResultEVChargerView();
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_1002440D0();
  v15 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityIdentifier:v15];

  return v14;
}

void sub_1002440D0()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_horizontal];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setAxis:0];
  [v1 setSpacing:2.0];
  [v0 addSubview:v1];
  v2 = sub_100243BD8();
  [v1 addArrangedSubview:v2];

  v3 = sub_100243DD4();
  [v1 addArrangedSubview:v3];

  v4 = sub_100243D04();
  [v1 addArrangedSubview:v4];

  v5 = [objc_opt_self() configurationWithFont:*&v0[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_font]];
  v6 = *&v0[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon];
  v7 = v5;
  [v6 setPreferredSymbolConfiguration:v7];
  v8 = *&v0[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon];
  [v8 setPreferredSymbolConfiguration:v7];

  v9 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E5C00;
  v11 = [v1 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v10 + 32) = v13;
  v14 = [v1 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v10 + 40) = v16;
  v17 = [v1 topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v10 + 48) = v19;
  v20 = [v1 bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:4.0];

  *(v10 + 56) = v22;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:isa];
}

void sub_100244568(uint64_t a1, int a2)
{
  v5 = sub_100243DD4();
  [v5 setTextColor:a1];

  v6 = sub_100243D04();
  v7 = [v6 image];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 imageWithRenderingMode:2];
  }

  else
  {
    v9 = 0;
  }

  [v6 setImage:v9];
  [v6 setTintColor:a1];

  if (a2 == 1)
  {
    v10 = *(v2 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___chargerInfoLabel);
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 systemGreenColor];
    [v12 setTextColor:v13];

    v14 = *(v2 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon);
    v15 = [v11 systemGreenColor];
    v16 = [v14 image];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 imageWithRenderingMode:2];
    }

    else
    {
      v18 = 0;
    }

    [v14 setImage:v18];
    [v14 setTintColor:v15];
  }
}

void sub_1002447E8(int a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_100243DD4();
  v8 = String._bridgeToObjectiveC()();
  [v7 setText:v8];

  v9 = sub_100243D04();
  [v9 setHidden:1];

  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    if (a1)
    {
      if (a1 != 1)
      {
LABEL_13:
        v17 = sub_100243BD8();
        v18 = String._bridgeToObjectiveC()();
        v19 = [objc_opt_self() systemImageNamed:v18];

        if (v19)
        {
          v20 = [v19 CGImage];

          if (v20)
          {
            v19 = [objc_allocWithZone(UIImage) initWithCGImage:v20 scale:2 orientation:1.0];
          }

          else
          {
            v19 = 0;
          }
        }

        [v17 setImage:v19];

        v21 = *(v3 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon);
        v22 = objc_opt_self();
        v23 = v21;
        v24 = [v22 tertiaryLabelColor];
        v25 = [v23 image];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 imageWithRenderingMode:2];
        }

        else
        {
          v27 = 0;
        }

        [v23 setImage:v27];
        [v23 setTintColor:v24];

        return;
      }

      v11 = OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon;
      [*(v3 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon) setHidden:0];
      v12 = *(v3 + v11);
      v13 = String._bridgeToObjectiveC()();
      v14 = [objc_opt_self() systemImageNamed:v13];
    }

    else
    {
      v12 = sub_100243BD8();
      v15 = String._bridgeToObjectiveC()();
      v16 = [objc_opt_self() systemImageNamed:v15];

      if (!v16)
      {
LABEL_12:
        [v12 setImage:v16];

        goto LABEL_13;
      }

      v13 = [v16 CGImage];

      if (!v13)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v14 = [objc_allocWithZone(UIImage) initWithCGImage:v13 scale:2 orientation:1.0];
    }

    v16 = v14;

    goto LABEL_12;
  }
}

void sub_100244C48()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for CarSearchResultEVChargerView();
  objc_msgSendSuper2(&v15, "updateConstraints");
  v1 = OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_currentConstraints;
  if (*&v0[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_currentConstraints])
  {
    v2 = objc_opt_self();
    sub_10009B534();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 deactivateConstraints:isa];
  }

  v4 = [v0 _car_usingLargeTextSizes];
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E4FD0;
  v6 = sub_100243BD8();
  v7 = [v6 widthAnchor];

  v8 = 8.0;
  if (v4)
  {
    v8 = 12.0;
    v9 = 18.0;
  }

  else
  {
    v9 = 12.0;
  }

  v10 = [v7 constraintEqualToConstant:v8];

  *(v5 + 32) = v10;
  v11 = [*&v0[OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon] heightAnchor];
  v12 = [v11 constraintEqualToConstant:v9];

  *(v5 + 40) = v12;
  *&v0[v1] = v5;

  v13 = objc_opt_self();
  sub_10009B534();
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:v14];
}

id sub_100244E90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarSearchResultEVChargerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100244F9C()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_leadingIconString;
  strcpy((v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_leadingIconString), "powerplug.fill");
  *(v1 + 15) = -18;
  v2 = (v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_trailingIconString);
  *v2 = 0xD000000000000019;
  v2[1] = 0x80000001012219D0;
  v3 = OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_horizontal;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = objc_opt_self();
  v5 = [v4 _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  if (!v5)
  {
    v5 = [v4 preferredFontForTextStyle:UIFontTextStyleCaption2];
  }

  *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_font) = v5;
  *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___trailingIcon) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___chargerInfoLabel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView_currentConstraints) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100245114()
{
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_tappedTrackingButton] = 0;
  v0[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_didTriggerAutoRedoSearch] = 0;
  v1 = &v0[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_logicControllerSearchRefreshHandler];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController____lazy_storage___resultsViewController] = 1;
  v2 = [objc_allocWithZone(RefreshSearchHereBusinessController) init];
  *&v0[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SearchResultsMapViewController();
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1002451E0(void *a1)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_101960018);
  v4 = static os_log_type_t.info.getter();
  v5 = a1;
  v6 = v1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v4))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = [*&v6[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController] searchSession];
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = a1;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, v4, "[SearchResultContext] Updatting search session from %@ -> %@", v8, 0x16u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  v12 = *&v6[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController];
  [v12 setSearchSession:v5];
  if (!a1 || ([v5 isLoading] & 1) == 0)
  {
    [v12 resetRedoSearchController];
    sub_1002453B8();
  }
}

void sub_1002453B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v1 = Strong;
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2)
  {
    v3 = v1;
LABEL_12:

LABEL_13:
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_101960018);
    v12 = static os_log_type_t.info.getter();
    log = Logger.logObject.getter();
    if (os_log_type_enabled(log, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, log, v12, "[SearchResultContext] Not hiding search overlay as we don't have either router or chrome.", v13, 2u);
    }

    goto LABEL_17;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    goto LABEL_12;
  }

  v5 = v4;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101960018);
  v7 = static os_log_type_t.info.getter();
  v8 = Logger.logObject.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, v7, "[SearchResultContext] Hiding search overlay", v9, 2u);
  }

  v10 = [v5 redoSearchOverlay];
  if (!v10)
  {
    __break(1u);
    return;
  }

  log = v10;
  sub_100036824(1, 0);

LABEL_17:
}

id sub_100245604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsMapViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002456CC(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController);
  v4 = [v3 searchSession];
  if (!v4)
  {
    return;
  }

  v49 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      v16 = v49;
      v8 = v6;
      goto LABEL_18;
    }

    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {

LABEL_17:
      v16 = v6;
      goto LABEL_18;
    }

    v10 = v9;
    v11 = [v49 searchInfo];
    if (!v11 || (v11, [v49 isLoading]))
    {
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100021540(v12, qword_101960018);
      v13 = static os_log_type_t.info.getter();
      v14 = Logger.logObject.getter();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v14, v13, "[SearchResultContext] Searching here is not needed because search session is nil or loading.", v15, 2u);
      }

      goto LABEL_12;
    }

    v18 = v1;
    v19 = [v10 redoSearchOverlay];
    if (v19)
    {
      v20 = v19;
      sub_100036824(0, 1);

      if ((a1 & 1) == 0)
      {
        if (![v3 shouldShowManualRedoButton])
        {

LABEL_12:
          v16 = v8;
          v8 = v49;
LABEL_18:

          v17 = v8;
          goto LABEL_19;
        }

        if (qword_101906728 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100021540(v37, qword_101960018);
        v38 = static os_log_type_t.info.getter();
        v23 = v49;
        v39 = Logger.logObject.getter();

        if (os_log_type_enabled(v39, v38))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          *(v40 + 4) = v23;
          *v41 = v49;
          v42 = v23;
          _os_log_impl(&_mh_execute_header, v39, v38, "[SearchResultContext] Manual auto-redo for %@", v40, 0xCu);
          sub_1000DCD10(v41);
        }

        [v10 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
        v43 = [v10 redoSearchOverlay];
        if (v43)
        {
          v44 = v43;
          v45 = *&v43[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController];
          if (v45)
          {
            v46 = v45;
            sub_100540BF4(1u);
          }

          v47 = [v10 redoSearchOverlay];
          if (v47)
          {
            v48 = v47;
            sub_100036824(0, 1);

            goto LABEL_44;
          }

LABEL_50:
          __break(1u);
          return;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100021540(v21, qword_101960018);
      v22 = static os_log_type_t.info.getter();
      v23 = v49;
      v24 = Logger.logObject.getter();

      if (os_log_type_enabled(v24, v22))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v23;
        *v26 = v49;
        v27 = v23;
        _os_log_impl(&_mh_execute_header, v24, v22, "[SearchResultContext] Trigger auto-redo for %@", v25, 0xCu);
        sub_1000DCD10(v26);
      }

      [v10 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
      v28 = [v10 redoSearchOverlay];
      if (v28)
      {
        v29 = v28;
        v30 = *&v28[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController];
        if (v30)
        {
          v31 = v30;
          sub_100540BF4(0);
        }

        v32 = [v10 redoSearchOverlay];
        if (v32)
        {
          v33 = v32;
          sub_100036824(0, 1);

          *(v18 + OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_didTriggerAutoRedoSearch) = 1;
          v34 = *(v18 + OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_logicControllerSearchRefreshHandler);
          if (v34)
          {
            v35 = *(v18 + OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_logicControllerSearchRefreshHandler + 8);

            v34(v36);

            sub_1000D3B90(v34, v35);
            goto LABEL_17;
          }

LABEL_44:

          v16 = v8;
          v8 = v23;
          goto LABEL_18;
        }

        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v17 = v49;
LABEL_19:
}

id sub_100245E04(void *a1)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_101960018);
  v4 = static os_log_type_t.info.getter();
  v5 = v1;
  v6 = a1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v4))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = [*&v5[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController] searchSession];
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *v9 = v10;
    v9[1] = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v4, "[SearchResultContext] willStartRespondingToGesture %@ : %@", v8, 0x16u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  v12 = *&v5[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController];

  return [v12 didStartRespondingToGesture:v6];
}

void sub_100245FB4(void *a1)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_101960018);
  v4 = static os_log_type_t.info.getter();
  v5 = v1;
  v6 = a1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v4))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = [*&v5[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController] searchSession];
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *v9 = v10;
    v9[1] = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v4, "[SearchResultContext] didStopRespondingToGesture %@ : %@", v8, 0x16u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  sub_1002456CC([*&v5[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController] didStopRespondingToGesture:v6]);
}

void sub_100246160(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_tappedTrackingButton;
  if (*(v1 + OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_tappedTrackingButton) == 1)
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_101960018);
    v6 = static os_log_type_t.info.getter();
    v7 = v2;
    v8 = a1;
    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v6))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12 = [*&v7[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController] searchSession];
      *(v10 + 4) = v12;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v8;
      *v11 = v12;
      v11[1] = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v6, "[SearchResultContext] regionDidChangeAnimated %@ : %@", v10, 0x16u);
      sub_1000CE6B8(&qword_1019144F0);
      swift_arrayDestroy();
    }

    *(v2 + v3) = 0;
    sub_1002456CC([*&v7[OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_refreshHereController] didStopRespondingToGesture:v8]);
  }
}

uint64_t sub_100246330(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xD)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 14);
  }
}

uint64_t sub_100246378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v16 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101915098);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v10 = *(v2 + 8);
  v15 = *v2;
  v11 = *(v2 + 16);
  static AccessibilityChildBehavior.contain.getter();
  v12 = sub_1000CE6B8(&qword_1019150A0);
  v13 = sub_1002469D8(&qword_1019150A8, &qword_1019150A0);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v16);
  sub_1002ACA28(v15, v10, v11);
  v19 = v12;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1002465AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v16 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_1019150C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v10 = *(v2 + 8);
  v15 = *v2;
  v11 = *(v2 + 16);
  static AccessibilityChildBehavior.combine.getter();
  v12 = sub_1000CE6B8(&qword_1019150C8);
  v13 = sub_1002469D8(&qword_1019150D0, &qword_1019150C8);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v16);
  sub_1002ACA28(v15, v10, v11);
  v19 = v12;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1002467E0()
{
  result = qword_1019150B0;
  if (!qword_1019150B0)
  {
    sub_1000D6664(&qword_1019150B8);
    sub_1000D6664(&qword_1019150A0);
    sub_1002469D8(&qword_1019150A8, &qword_1019150A0);
    swift_getOpaqueTypeConformance2();
    sub_1002468C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019150B0);
  }

  return result;
}

unint64_t sub_1002468C8()
{
  result = qword_101909FE0;
  if (!qword_101909FE0)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909FE0);
  }

  return result;
}

uint64_t sub_100246920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 17))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xE)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100246968(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 16) = 0;
    *result = a2 - 242;
    *(result + 8) = 0;
    if (a3 >= 0xF2)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002469D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100246A2C()
{
  result = qword_1019150D8;
  if (!qword_1019150D8)
  {
    sub_1000D6664(&unk_1019150E0);
    sub_1000D6664(&qword_1019150C8);
    sub_1002469D8(&qword_1019150D0, &qword_1019150C8);
    swift_getOpaqueTypeConformance2();
    sub_1002468C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019150D8);
  }

  return result;
}

uint64_t sub_100246B1C()
{
  swift_getKeyPath();
  sub_100246ED0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100246B98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps23HomePinnedItemsProvider__pinnedItems;

  v5 = sub_1001F0B2C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100246ED0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100246DE0()
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

uint64_t sub_100246E8C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps23HomePinnedItemsProvider__pinnedItems) = *(v0 + 24);
}

unint64_t sub_100246ED0()
{
  result = qword_101915140;
  if (!qword_101915140)
  {
    type metadata accessor for HomePinnedItemsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915140);
  }

  return result;
}

id sub_100246F28(char *a1)
{
  v2 = type metadata accessor for HomePinnedItemsProvider();
  v3 = objc_allocWithZone(v2);
  ObservationRegistrar.init()();
  *&v3[OBJC_IVAR____TtC4Maps23HomePinnedItemsProvider_favoritesDataProvider] = a1;
  v4 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__setupButtons;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = a1;

  os_unfair_lock_lock((v5 + 24));
  v7 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  v8 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__sortedShortcuts;
  swift_beginAccess();
  v9 = *&v6[v8];

  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);

  os_unfair_lock_unlock((v9 + 24));

  v15 = v7;
  sub_100054B58(v10);
  *&v3[OBJC_IVAR____TtC4Maps23HomePinnedItemsProvider__pinnedItems] = v7;
  v14.receiver = v3;
  v14.super_class = v2;
  v11 = objc_msgSendSuper2(&v14, "init");
  v12 = sub_1002E2C5C();
  [v12 registerObserver:v11];

  return v11;
}

uint64_t sub_100247108(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1003563A0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002471FC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1003564AC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002472F4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003565C8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100247438(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100355784(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100247530(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100357BD0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000CE6B8(&qword_101924FD0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100247650(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100356258(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100247770(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1002478E4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100248E04(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_100247A0C(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100356AC0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000CE6B8(&unk_10190E0B8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100247B10(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000CE6B8(&unk_10190E110);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CarPlaceSection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(type metadata accessor for EVChargingSection() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_100248D9C(v9);
    }

    else
    {
      v20 = v28;
      sub_10024A438(v9, v28, type metadata accessor for CarPlaceSection);
      sub_10024A438(v20, v30, type metadata accessor for CarPlaceSection);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100356AE4(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100356AE4(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10024A438(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for CarPlaceSection);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_100247E1C()
{
  swift_getKeyPath();
  sub_10024A560(&unk_1019151B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100247EB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10024A560(&unk_1019151B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__sections);
}

uint64_t sub_100247F54()
{
  swift_getKeyPath();
  sub_10024A560(&unk_1019151B0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10024800C(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_10024A560(&unk_1019151B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive;
  if (*(v1 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive) != v2)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    MUEVChargingViewModel.isActive.setter();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + v4) == 1)
    {
      sub_10024826C();
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1002481D8()
{
  swift_getKeyPath();
  sub_10024A560(&unk_1019151B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive);
}

uint64_t sub_10024826C()
{
  ObjectType = swift_getObjectType();
  v0 = type metadata accessor for MUEVChargingViewModel.SectionGroup();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MUEVChargingViewModel.connectedVehiclesSectionGroups.getter();
  v23 = *(v4 + 16);
  if (!v23)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_20:

    return v6;
  }

  v5 = 0;
  v21 = v1 + 16;
  v22 = (v1 + 8);
  v6 = _swiftEmptyArrayStorage;
  v20 = v4;
  while (v5 < *(v4 + 16))
  {
    v7 = v1;
    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v5, v0);
    sub_100248930(v3, ObjectType, &v25);
    v8 = v3;
    v9 = v0;
    (*v22)(v3, v0);
    v10 = v25;
    v3 = *(v25 + 16);
    v0 = v6[2];
    v11 = &v3[v0];
    if (__OFADD__(v0, v3))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= v6[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v0 <= v11)
      {
        v13 = &v3[v0];
      }

      else
      {
        v13 = v0;
      }

      v6 = sub_100356AE4(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v10 + 16))
      {
LABEL_15:
        v0 = v6[2];
        v14 = (v6[3] >> 1) - v0;
        type metadata accessor for CarPlaceSection();
        if (v14 < v3)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v3)
        {
          v15 = v6[2];
          v16 = __OFADD__(v15, v3);
          v17 = &v3[v15];
          if (v16)
          {
            goto LABEL_25;
          }

          v6[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v3)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    v0 = v9;
    v4 = v20;
    v1 = v7;
    v3 = v8;
    if (v23 == v5)
    {
      goto LABEL_20;
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

  (*v22)(v3, v0);

  __break(1u);
  return result;
}

uint64_t sub_100248550(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive) = v2;

    return sub_10024800C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10024A560(&unk_1019151B0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100248678(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive);
  *(a1 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive) = a2;
  return sub_10024800C(v3);
}

uint64_t sub_1002486B4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  ObservationRegistrar.init()();
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = &v2[OBJC_IVAR____TtC4Maps23CarEVChargingDataSource_configuration];
  v10 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v10;
  *(v9 + 4) = v8;
  v2[OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive] = 0;
  *&v2[OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__sections] = _swiftEmptyArrayStorage;
  v11 = objc_allocWithZone(type metadata accessor for MUEVChargerAvailabilityProvider());
  swift_unknownObjectRetain_n();
  v22 = v5;
  v21 = v6;
  v12 = v7;
  v13 = v8;
  result = MUEVChargerAvailabilityProvider.init(placeItem:canAccessVirtualGarage:)();
  if (result)
  {
    v15 = objc_allocWithZone(type metadata accessor for MUEVChargingViewModel());
    *&v2[OBJC_IVAR____TtC4Maps23CarEVChargingDataSource_evChargingViewModel] = MUEVChargingViewModel.init(availabilityProvider:)();
    v23.receiver = v2;
    v23.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v23, "init");
    sub_10024826C();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10024A560(&unk_1019151B0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v18 = *&v16[OBJC_IVAR____TtC4Maps23CarEVChargingDataSource_evChargingViewModel];
    sub_10024A560(&qword_1019151E0);
    v19 = v16;
    v20 = v18;
    MUEVChargingViewModel.observer.setter();

    swift_unknownObjectRelease();
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100248930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MUEVChargingViewModel.SectionGroup.sections.getter();
  v9[2] = a1;
  v9[3] = a2;
  v7 = sub_100247B10(sub_100248D80, v9, v6);

  *a3 = v7;
  return result;
}

uint64_t sub_1002489BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10024A024();
  v3 = MUEVChargingViewModel.SectionGroup.headerSubtitle.getter();
  v5 = v4;
  v6 = type metadata accessor for CarPlaceSection();
  UUID.init()();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  v7 = (a1 + *(v6 + 32));
  *v7 = 0xD000000000000018;
  v7[1] = 0x8000000101227200;
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

uint64_t type metadata accessor for CarEVChargingDataSource()
{
  result = qword_1019151A0;
  if (!qword_1019151A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100248BE8()
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

uint64_t sub_100248CA8()
{
  sub_10024826C();
  swift_getKeyPath();
  sub_10024A560(&unk_1019151B0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100248D9C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190E110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100248E04(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100248EA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&qword_1019152C0, &qword_1019152B8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_1019152B8);
            v9 = sub_10012EB94(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000CE6B8(&qword_101914ED0);
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

uint64_t sub_100249040(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&unk_1019151D0, &qword_1019151C8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_1019151C8);
            v9 = sub_10012EB94(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000CE6B8(&qword_1019151C0);
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

uint64_t sub_1002491DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&qword_101915240, &qword_101915238);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_101915238);
            v9 = sub_10012EB94(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000CE6B8(&unk_10190A7F0);
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

uint64_t sub_100249378(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&qword_101915280, &qword_101915278);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_101915278);
            v9 = sub_10012EC14(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100014C84(0, &qword_101915270);
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

uint64_t sub_100249518(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&qword_101915218, &qword_1019115D0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_1019115D0);
            v9 = sub_10012ED0C(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MapsFavoriteItem();
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

uint64_t sub_1002496A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&qword_101915268, &qword_101915260);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_101915260);
            v9 = sub_10012EC14(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100014C84(0, &qword_101915258);
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

uint64_t sub_100249848(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&qword_101915250, &qword_101915248);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_101915248);
            v9 = sub_10012EC14(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FavoriteItem();
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

uint64_t sub_1002499D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&unk_1019152A8, &qword_1019152A0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_1019152A0);
            v9 = sub_10012ED94(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000CE6B8(&qword_101915298);
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

uint64_t sub_100249B74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&qword_101915290, &qword_101915288);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_101915288);
            v9 = sub_10012EC14(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for VisitedLocation();
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

uint64_t sub_100249D04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&unk_101915228, &qword_101915220);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_101915220);
            v9 = sub_10012EE1C(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GEOAPSessionSpecificModelItem(0);
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

uint64_t sub_100249E94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&unk_1019151F0, &qword_1019151E8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_1019151E8);
            v9 = sub_10012EC14(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MapsSyncObject();
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

void *sub_10024A024()
{
  v44 = type metadata accessor for CarDetailRowViewModel(0);
  __chkstk_darwin(v44);
  v1 = &v37 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for EVChargingRow();
  v39 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CarPlaceRowItem.ContentType(0);
  __chkstk_darwin(v4);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CarPlaceRowItem(0);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = EVChargingSection.headerTitle.getter();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = EVChargingSection.headerIcon.getter();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  *v6 = v15;
  v6[1] = v16;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v6[2] = v19;
  v6[3] = v20;
  v42 = v4;
  swift_storeEnumTagMultiPayload();
  sub_10024A438(v6, v12, type metadata accessor for CarPlaceRowItem.ContentType);
  v21 = sub_100357954(0, 1, 1, _swiftEmptyArrayStorage);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_100357954(v22 > 1, v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v40 = *(v40 + 72);
  sub_10024A438(v12, v21 + v41 + v40 * v23, type metadata accessor for CarPlaceRowItem);
  v24 = EVChargingSection.rows.getter();
  v25 = *(v24 + 16);
  if (v25)
  {
    v27 = v39 + 16;
    v26 = *(v39 + 16);
    v28 = *(v39 + 80);
    v37 = v24;
    v29 = v24 + ((v28 + 32) & ~v28);
    v38 = *(v39 + 72);
    v39 = v26;
    v30 = (v27 - 8);
    do
    {
      v31 = v43;
      (v39)(v3, v29, v43);
      EVChargingRow.leadingText.getter();
      v32 = EVChargingRow.trailingText.getter();
      (*v30)(v3, v31);
      v33 = v44;
      UUID.init()();
      *&v1[*(v33 + 20)] = v32;
      sub_10024A4A0(v1, v9);
      swift_storeEnumTagMultiPayload();
      v35 = v21[2];
      v34 = v21[3];
      if (v35 >= v34 >> 1)
      {
        v21 = sub_100357954(v34 > 1, v35 + 1, 1, v21);
      }

      sub_10024A504(v1);
      v21[2] = v35 + 1;
      sub_10024A438(v9, v21 + v41 + v35 * v40, type metadata accessor for CarPlaceRowItem);
      v29 += v38;
      --v25;
    }

    while (v25);
  }

  return v21;
}

uint64_t sub_10024A438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024A4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarDetailRowViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024A504(uint64_t a1)
{
  v2 = type metadata accessor for CarDetailRowViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024A560(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CarEVChargingDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10024A5A4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__sections) = *(v0 + 24);
}

uint64_t sub_10024A5E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive);
  *(v1 + OBJC_IVAR____TtC4Maps23CarEVChargingDataSource__isActive) = *(v0 + 24);
  return sub_10024800C(v2);
}

uint64_t sub_10024A62C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for VisitedHistoryHomeCategoriesView()
{
  result = qword_101915328;
  if (!qword_101915328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024A710()
{
  sub_10024A7AC();
  if (v0 <= 0x3F)
  {
    sub_10024A7FC();
    if (v1 <= 0x3F)
    {
      sub_10024A860();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10024A7AC()
{
  if (!qword_101915338)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101915338);
    }
  }
}

void sub_10024A7FC()
{
  if (!qword_101915340)
  {
    sub_1000D6664(&unk_10191EFB0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101915340);
    }
  }
}

void sub_10024A860()
{
  if (!qword_10191E290)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10191E290);
    }
  }
}

uint64_t sub_10024A8D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10191DF80);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  sub_10024B4A8(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10024AAC4(void *a1)
{
  v2 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *a1;
  sub_10024B270(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10024B2D4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_1000CE6B8(&qword_1019153A8);
  sub_1000CE6B8(&qword_101915390);
  sub_1000414C8(&qword_1019153B0, &qword_1019153A8);
  sub_10024B18C();
  sub_10024B3B8();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10024AC70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v4 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_1002132FC(*a1);
  v17[0] = v9;
  v17[1] = v8;
  sub_1003A77CC(v7);
  sub_1000F1178();
  sub_100364108(v6);
  v10 = static UIImage.mapsDesignImage(_:)();

  v22 = sub_1000CE6B8(&unk_101916610);
  v23 = sub_1000414C8(&qword_10190A530, &unk_101916610);
  v21 = v10;
  sub_100363EE4(v6);
  static Color.mapsDesignColor(_:)();
  static Color.mapsDesignColor(_:)();

  sub_100363EE4(v6);
  static Color.mapsDesignColor(_:)();

  static Color.mapsDesignColor(_:)();

  type metadata accessor for CategoryTileViewModel();
  swift_allocObject();
  CategoryTileViewModel.init(title:subtitle:imageProvider:colorGradient:)();
  sub_10024B270(v19, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v12 = swift_allocObject();
  sub_10024B2D4(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v6;
  v13[1] = v7;
  v14 = v20;
  CategoryTile.init(model:tapHandler:)();
  result = sub_1000CE6B8(&qword_101915390);
  v16 = v14 + *(result + 36);
  *v16 = 0xD000000000000016;
  *(v16 + 8) = 0x8000000101227260;
  *(v16 + 16) = 1;
  return result;
}

uint64_t sub_10024AF40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for GridLayoutConfig();
  __chkstk_darwin(v7 - 8);
  sub_10024A8D4(v6);
  static MapsDesignConstants.GridLayouts.visitedPlacesCategoriesGridLayoutConfig(count:dynamicType:)();
  (*(v4 + 8))(v6, v3);
  v11 = v1;
  sub_1000CE6B8(&qword_101915378);
  sub_10024B108();
  GridLayout.init(config:content:)();
  result = sub_1000CE6B8(&qword_1019153A0);
  v9 = a1 + *(result + 36);
  *v9 = 0xD00000000000001ELL;
  *(v9 + 8) = 0x8000000101227240;
  *(v9 + 16) = 13;
  return result;
}

unint64_t sub_10024B108()
{
  result = qword_101915380;
  if (!qword_101915380)
  {
    sub_1000D6664(&qword_101915378);
    sub_10024B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915380);
  }

  return result;
}

unint64_t sub_10024B18C()
{
  result = qword_101915388;
  if (!qword_101915388)
  {
    sub_1000D6664(&qword_101915390);
    sub_10024B218();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915388);
  }

  return result;
}

unint64_t sub_10024B218()
{
  result = qword_101915398;
  if (!qword_101915398)
  {
    type metadata accessor for CategoryTile();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915398);
  }

  return result;
}

uint64_t sub_10024B270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024B2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024B338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VisitedHistoryHomeCategoriesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10024AC70(a1, v6, a2);
}

unint64_t sub_10024B3B8()
{
  result = qword_1019153B8;
  if (!qword_1019153B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019153B8);
  }

  return result;
}

uint64_t sub_10024B40C()
{
  v1 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + v4 + 8);
  if (v6)
  {
    return v6(*(v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  }

  return result;
}

uint64_t sub_10024B4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191DF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10024B518()
{
  result = qword_1019153C0;
  if (!qword_1019153C0)
  {
    sub_1000D6664(&qword_1019153A0);
    sub_1000414C8(&qword_1019153C8, &unk_1019153D0);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019153C0);
  }

  return result;
}

uint64_t sub_10024B728()
{
  v82 = type metadata accessor for UUID();
  v75 = *(v82 - 8);
  __chkstk_darwin(v82);
  v2 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v71 - v4;
  v72 = v0;
  v79 = OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController_waypoints;
  v5 = *&v0[OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController_waypoints];
  if (v5 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v80 = v2;

    if (!i)
    {
      break;
    }

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v9 = *(v5 + v7 + 4);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v2 = [v9 isServerProvidedWaypoint];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003559B0(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_1003559B0((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v8[v13 + 32] = v2 ^ 1;
      ++v7;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

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
LABEL_48:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_17:

  v78 = *(v8 + 2);

  v14 = objc_opt_self();
  v15 = [v14 sharedService];
  if (!v15)
  {
    goto LABEL_83;
  }

  v16 = v15;
  v17 = objc_opt_self();
  sub_100014C84(0, &qword_101914500);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 waypointRowsFromNavigationService:v16 withWaypoints:isa];

  sub_100014C84(0, &unk_1019157E0);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_1000D1568(_swiftEmptyArrayStorage);
  v22 = [v14 sharedService];
  v2 = v80;
  if (!v22)
  {
    goto LABEL_84;
  }

  v23 = v22;
  v5 = [v22 displayEtaInfo];

  v79 = v20;
  if (v5)
  {
    v24 = [v5 legInfos];

    sub_100014C84(0, &unk_101915780);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_22:
        v27 = 0;
        v73 = v25 & 0xFFFFFFFFFFFFFF8;
        v74 = (v75 + 16);
        v76 = (v75 + 8);
        v77 = v25 & 0xC000000000000001;
        while (1)
        {
          if (v77)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v27 >= *(v73 + 16))
            {
              goto LABEL_47;
            }

            v30 = *(v25 + 8 * v27 + 32);
          }

          v31 = v30;
          v5 = (v27 + 1);
          if (__OFADD__(v27, 1))
          {
            goto LABEL_44;
          }

          v32 = v25;
          v2 = [v30 waypointID];
          v33 = v81;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v21;
          v37 = sub_1002972F8(v33);
          v38 = v21[2];
          v39 = (v36 & 1) == 0;
          v40 = v38 + v39;
          if (__OFADD__(v38, v39))
          {
            goto LABEL_45;
          }

          v2 = v36;
          if (v21[3] >= v40)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v21 = v84;
              if ((v36 & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_10012CBE4();
              v21 = v84;
              if ((v2 & 1) == 0)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            sub_100127768(v40, isUniquelyReferenced_nonNull_native);
            v41 = sub_1002972F8(v81);
            if ((v2 & 1) != (v42 & 1))
            {
              goto LABEL_85;
            }

            v37 = v41;
            v21 = v84;
            if ((v2 & 1) == 0)
            {
LABEL_37:
              v21[(v37 >> 6) + 8] = (v21[(v37 >> 6) + 8] | (1 << v37));
              v2 = v75;
              v44 = v81;
              v43 = v82;
              (*(v75 + 16))(v21[6] + *(v75 + 72) * v37, v81, v82);
              *(v21[7] + v37) = v34;

              (*(v2 + 8))(v44, v43);
              v45 = v21[2];
              v46 = __OFADD__(v45, 1);
              v47 = (v45 + 1);
              if (v46)
              {
                goto LABEL_46;
              }

              v21[2] = v47;
              goto LABEL_24;
            }
          }

          v28 = v21[7];
          v29 = *(v28 + v37);
          *(v28 + v37) = v34;

          (*v76)(v81, v82);
LABEL_24:
          ++v27;
          v25 = v32;
          if (v5 == v26)
          {

            v20 = v79;
            v2 = v80;
            goto LABEL_51;
          }
        }
      }
    }

    v2 = v80;
  }

LABEL_51:
  v84 = _swiftEmptyArrayStorage;
  if (v20 >> 62)
  {
LABEL_74:
    v48 = _CocoaArrayWrapper.endIndex.getter();
    if (v48)
    {
LABEL_53:
      v49 = 0;
      v81 = v20 & 0xC000000000000001;
      v76 = v21;
      v77 = v20 & 0xFFFFFFFFFFFFFF8;
      v74 = (v75 + 8);
      v75 = v48;
      while (1)
      {
        if (v81)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v49 >= *(v77 + 16))
          {
            goto LABEL_73;
          }

          v50 = *(v20 + 8 * v49 + 32);
        }

        v51 = v50;
        v20 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v52 = [v50 waypoint];
        v53 = [v52 uniqueID];
        if (!v53)
        {
          break;
        }

        v54 = v53;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        if (v21[2] && (v55 = sub_1002972F8(v2), (v56 & 1) != 0))
        {
          v57 = *v74;
          v58 = *(v21[7] + v55);
          v57(v2, v82);
        }

        else
        {
          (*v74)(v2, v82);
          v58 = 0;
        }

        v59 = [v51 waypointIndex];
        if (v78 >= 2)
        {
          v60 = [v52 isServerProvidedWaypoint] ^ 1;
        }

        else
        {
          v60 = 0;
        }

        type metadata accessor for CarWaypointsOverviewView.WaypointViewModel();
        swift_allocObject();
        v61 = v58;
        v62 = v52;
        sub_10024CCD0(v62, v59, v58, v60);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v49;
        v21 = v76;
        v63 = v20 == v75;
        v20 = v79;
        v2 = v80;
        if (v63)
        {
          v64 = v84;
          goto LABEL_76;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

  else
  {
    v48 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_53;
    }
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_76:

  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v64;
  v65 = v72;
  static Published.subscript.setter();
  v66 = sub_10024C224();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v66)
  {
    static Published.subscript.getter();

    if (v83)
    {
    }

    type metadata accessor for CarWaypointsOverviewView.AddStopViewModel(0);
    swift_allocObject();
    v69 = sub_10024D8D8();
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v69;
    v70 = v65;
  }

  else
  {
    v83 = 0;
    v68 = v65;
  }

  static Published.subscript.setter();
}

id sub_10024C158(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_10024F1D8(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

BOOL sub_10024C224()
{
  UInteger = GEOConfigGetUInteger();
  if (!UInteger)
  {
    return 1;
  }

  v14 = UInteger;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController_waypoints);
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 isServerProvidedWaypoint];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1003559B0(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1003559B0((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v9 ^ 1;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_19:

  v13 = *(v5 + 2);

  return v13 < v14 - 1;
}

uint64_t sub_10024C554()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10024C5C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10024C63C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CarWaypointsOverviewCardViewController(0);
  sub_10024ECA0(&qword_1019157B0, type metadata accessor for CarWaypointsOverviewCardViewController);
  v7 = v1;
  v8 = ObservedObject.init(wrappedValue:)();
  v10 = v9;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v14[0] = v8;
  *(&v14[0] + 1) = v10;
  *v6 = 0xD000000000000014;
  v6[1] = 0x8000000101227620;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v3);
  a1[3] = sub_1000CE6B8(&qword_1019157B8);
  v11 = sub_1000D6664(&qword_1019157C0);
  v12 = sub_10024FB58();
  *&v15[0] = v11;
  *(&v15[0] + 1) = v12;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v3);
  v15[4] = v14[4];
  v15[5] = v14[5];
  v15[6] = v14[6];
  v15[7] = v14[7];
  v15[0] = v14[0];
  v15[1] = v14[1];
  v15[2] = v14[2];
  v15[3] = v14[3];
  return sub_100024F64(v15, &qword_1019157C0);
}

uint64_t sub_10024C8F4()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController_delegate);

  v1 = OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController__waypointViewModels;
  v2 = sub_1000CE6B8(&qword_1019157A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController__addStopViewModel;
  v4 = sub_1000CE6B8(&qword_1019157A8);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id sub_10024C9D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarWaypointsOverviewCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10024CB18()
{
  sub_10017E020(319, &qword_101915440, &qword_101915448);
  if (v0 <= 0x3F)
  {
    sub_10017E020(319, &qword_101915450, &qword_101915458);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_10024CCD0(void *a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AttributedString();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RichTextType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v5;
  *(v5 + 48) = 0u;
  v19 = v5 + 48;
  *(v19 + 32) = 0;
  *(v19 + 16) = 0u;
  *(v19 + 48) = _swiftEmptyArrayStorage;
  *(v19 - 32) = a2;
  *(v19 - 24) = a1;
  *(v19 - 16) = a3;
  v81 = a4;
  *(v19 - 8) = a4;
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v80 = a3;
  v83 = a3;
  v20 = a1;
  v21 = [v20 styleAttributes];
  if (v21)
  {
    v22 = v21;
    v23 = sub_10017F24C();
    sub_100024F64(&v85, &qword_101921E90);
    *&v85 = v22;
    WORD4(v85) = 1;
    *(&v86 + 1) = &type metadata for StyleAttributesImageProvider;
    v87 = v23;
  }

  swift_beginAccess();
  sub_100146B54(&v85, v19);
  swift_endAccess();
  v24 = [v20 name];
  v78 = v20;
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v26;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v88._object = 0x80000001012274B0;
    v28._countAndFlagsBits = 0xD000000000000016;
    v28._object = 0x8000000101227470;
    v29._object = 0x8000000101227490;
    v88._countAndFlagsBits = 0xD000000000000031;
    v29._countAndFlagsBits = 0xD000000000000010;
    object = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, qword_1019600D8, v29, v88)._object;
  }

  v30 = sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v67 = v30;
  v31 = swift_allocObject();
  v77 = xmmword_1011E1D30;
  *(v31 + 16) = xmmword_1011E1D30;
  v66 = *(v16 + 104);
  v66(v18, enum case for RichTextType.title(_:), v15);
  v79 = object;
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
  v32 = *(v16 + 8);
  v69 = v15;
  v68 = v16 + 8;
  v32(v18, v15);
  v33 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = sub_100356AC0((v34 > 1), v35 + 1, 1, v33);
  }

  v33[2] = v35 + 1;
  v33[v35 + 4] = v31;
  if (!v80)
  {
    goto LABEL_16;
  }

  v36 = objc_opt_self();
  v37 = v83;
  v38 = [v36 etaStringFromEtaLegInfo:v37 includingAMPMSymbols:0];
  if (!v38)
  {

LABEL_16:
    v44 = v82;
    goto LABEL_17;
  }

  v39 = v38;
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = swift_allocObject();
  *(v40 + 16) = v77;
  v41 = v69;
  v66(v18, enum case for RichTextType.line(_:), v69);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  v32(v18, v41);
  v43 = v33[2];
  v42 = v33[3];
  if (v43 >= v42 >> 1)
  {
    v33 = sub_100356AC0((v42 > 1), v43 + 1, 1, v33);
  }

  v44 = v82;

  v33[2] = v43 + 1;
  v33[v43 + 4] = v40;
LABEL_17:
  *(v44 + 88) = v33;
  if ((v81 & 1) == 0)
  {

    sub_100024F64(&v85, &qword_101921E90);

    return v44;
  }

  v45 = objc_opt_self();

  result = [v45 sharedInstance];
  if (result)
  {
    v47 = result;

    v48 = [v47 supportsTouchInteractionModel];

    if (v48)
    {
      v49 = v78;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v50.super.isa = qword_1019600D8;
      v64 = 0x80000001012275C0;
      v51 = 0x72206F7420706154;
      v52 = 0xED000065766F6D65;
      v53 = 0xD000000000000018;
      v54 = 0x80000001012275A0;
      v55 = 0xD000000000000057;
    }

    else
    {
      v49 = v78;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v50.super.isa = qword_1019600D8;
      v64 = 0x8000000101227530;
      v53 = 0xD00000000000001BLL;
      v54 = 0x80000001012274F0;
      v52 = 0x8000000101227510;
      v55 = 0xD000000000000065;
      v51 = 0xD000000000000010;
    }

    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v53, 0, v50, *&v51, *&v55);
    AttributeContainer.init()();
    v56 = v71;
    AttributedString.init(_:attributes:)();
    v57 = [objc_opt_self() systemRedColor];
    v84 = Color.init(_:)();
    sub_10016EB80();
    AttributedString.subscript.setter();
    sub_1000CE6B8(&qword_10190D578);
    type metadata accessor for ContextLineAccessoryViewModel();
    v58 = swift_allocObject();
    *(v58 + 16) = v77;
    v59 = sub_1000CE6B8(&unk_101915790);
    v61 = v73;
    v60 = v74;
    v62 = &v74[*(v59 + 48)];
    v63 = v72;
    (*(v72 + 16))(v74, v56, v73);
    *v62 = 0;
    *(v62 + 1) = 0;
    (*(v75 + 104))(v60, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.custom(_:), v76);
    ContextLineAccessoryViewModel.init(type:)();

    (*(v63 + 8))(v56, v61);
    sub_100024F64(&v85, &qword_101921E90);
    *(v44 + 96) = v58;

    return v44;
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D720()
{
  sub_100024F64(v0 + 48, &qword_101921E90);

  return swift_deallocClassInstance();
}

uint64_t sub_10024D7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1000D2DFC(v3 + 48, a1, &qword_101921E90);
}

void sub_10024D820()
{
  v1 = [*(*v0 + 24) uniqueID];
  if (v1)
  {
    v2 = v1;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10024D88C()
{
  v0 = type metadata accessor for UUID();
  sub_100021578(v0, qword_1019153E0);
  sub_100021540(v0, qword_1019153E0);
  return UUID.init()();
}

uint64_t sub_10024D8D8()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101906608 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for UUID();
  v11 = sub_100021540(v10, qword_1019153E0);
  (*(*(v10 - 8) + 16))(v1 + OBJC_IVAR____TtCV4MapsP33_3B37BA836E460ECC2850E137074C837624CarWaypointsOverviewView16AddStopViewModel_id, v11, v10);
  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  v12 = swift_allocObject();
  v20 = xmmword_1011E1D30;
  *(v12 + 16) = xmmword_1011E1D30;
  v13 = [objc_opt_self() systemBlueColor];
  v14 = Color.init(_:)();
  *v9 = 1937075312;
  v9[1] = 0xE400000000000000;
  v9[2] = v14;
  (*(v7 + 104))(v9, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.symbol(_:), v6);
  LeadingAccessoryViewModel.init(type:)();
  *(v1 + OBJC_IVAR____TtCV4MapsP33_3B37BA836E460ECC2850E137074C837624CarWaypointsOverviewView16AddStopViewModel_leadingAccessory) = v12;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v21._object = 0x800000010121A410;
  v15._countAndFlagsBits = 0x5F79616C50726143;
  v15._object = 0xEF706F7453646441;
  v16._countAndFlagsBits = 0x706F745320646441;
  v16._object = 0xE800000000000000;
  v21._countAndFlagsBits = 0xD00000000000002FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v16, v21);
  sub_1000CE6B8(&unk_1019157F0);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v18 = swift_allocObject();
  *(v18 + 16) = v20;
  (*(v3 + 104))(v5, enum case for RichTextType.title(_:), v2);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v3 + 8))(v5, v2);
  *(v17 + 32) = v18;
  *(v1 + OBJC_IVAR____TtCV4MapsP33_3B37BA836E460ECC2850E137074C837624CarWaypointsOverviewView16AddStopViewModel_richTextViews) = v17;
  return v1;
}

uint64_t sub_10024DD80()
{
  v1 = OBJC_IVAR____TtCV4MapsP33_3B37BA836E460ECC2850E137074C837624CarWaypointsOverviewView16AddStopViewModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10024DE64()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10024DF5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCV4MapsP33_3B37BA836E460ECC2850E137074C837624CarWaypointsOverviewView16AddStopViewModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10024DFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v20 = type metadata accessor for ScrollBounceBehavior();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_1019156F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = sub_1000CE6B8(&qword_1019156F8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - v13;
  v21 = a1;
  v22 = a2;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101915700);
  sub_10024ED38();
  ScrollView.init(_:showsIndicators:content:)();
  v15 = sub_1000414C8(&qword_101915720, &qword_1019156F0);
  View.scrollAccessoryEdge(_:)();
  (*(v8 + 8))(v10, v7);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v8) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v8)
  {
    Axis.Set.init(rawValue:)();
  }

  v23 = v7;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  View.scrollBounceBehavior(_:axes:)();
  (*(v18 + 8))(v6, v20);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10024E310@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_101915718);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = qword_10193E340;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = v9;
  v8[16] = 0;
  v10 = sub_1000CE6B8(&unk_101915728);
  sub_10024E4E8(a1, a2, &v8[*(v10 + 44)]);
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D60;
  v12 = static Edge.Set.horizontal.getter();
  *(inited + 32) = v12;
  v13 = static Edge.Set.bottom.getter();
  *(inited + 33) = v13;
  v14 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10024EDF0(v8, a3);
  result = sub_1000CE6B8(&qword_101915700);
  v24 = a3 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_10024E4E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1000CE6B8(&qword_101915738);
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for NavigationCell();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_101915740);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v40;
  if (v40)
  {
    v41 = type metadata accessor for CarWaypointsOverviewView.AddStopViewModel(0);
    v42 = sub_10024ECA0(&qword_101915770, type metadata accessor for CarWaypointsOverviewView.AddStopViewModel);
    v40 = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    v22 = a2;
    NavigationCell.init(model:tapHandler:)();
    (*(v11 + 32))(v19, v13, v10);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v11 + 56))(v19, v23, 1, v10);
  swift_getKeyPath();
  v35 = v19;
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = a2;
  sub_1000CE6B8(&qword_101915448);
  type metadata accessor for UUID();
  sub_1000CE6B8(&qword_101915748);
  sub_1000414C8(&qword_101915750, &qword_101915448);
  sub_10024F058();
  sub_10024ECA0(&unk_1019156E0, type metadata accessor for CarWaypointsOverviewView.WaypointViewModel);
  v26 = v9;
  ForEach<>.init(_:content:)();
  sub_1000D2DFC(v19, v16, &qword_101915740);
  v28 = v36;
  v27 = v37;
  v29 = *(v36 + 16);
  v30 = v38;
  v29(v38, v26, v37);
  v31 = v39;
  sub_1000D2DFC(v16, v39, &qword_101915740);
  v32 = sub_1000CE6B8(&qword_101915768);
  v29((v31 + *(v32 + 48)), v30, v27);
  v33 = *(v28 + 8);
  v33(v26, v27);
  sub_100024F64(v35, &qword_101915740);
  v33(v30, v27);
  return sub_100024F64(v16, &qword_101915740);
}

void *sub_10024EA2C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result waypointsOverviewControllerDidSelectAddWaypoint:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10024EA94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for CarWaypointsOverviewView.WaypointViewModel();
  sub_10024ECA0(&qword_101915778, type metadata accessor for CarWaypointsOverviewView.WaypointViewModel);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v7;
  swift_retain_n();
  v9 = a3;
  PlaceCell.init(model:tapHandler:)();
  LOBYTE(a2) = *(v7 + 40);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (a2 & 1) == 0;
  result = sub_1000CE6B8(&qword_101915748);
  v13 = (a4 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_10024F1C0;
  v13[2] = v11;
  return result;
}

void *sub_10024EBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result waypointsOverviewController:a2 didSelectWaypoint:*(a3 + 24) atIndex:*(a3 + 16)];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10024ECA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10024ED38()
{
  result = qword_101915708;
  if (!qword_101915708)
  {
    sub_1000D6664(&qword_101915700);
    sub_1000414C8(&qword_101915710, &qword_101915718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101915708);
  }

  return result;
}

uint64_t sub_10024EDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101915718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}
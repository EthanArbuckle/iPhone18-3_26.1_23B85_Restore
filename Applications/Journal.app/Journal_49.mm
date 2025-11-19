void sub_100534738()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005349E0();
  }
}

void sub_1005348E4(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FullScreenMapViewController();
  objc_msgSendSuper2(&v6, "didMoveToParentViewController:", a1);
  if (!a1)
  {
    v3 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController;
    v4 = *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController];
    if (v4)
    {
      if (([v4 isBeingDismissed] & 1) == 0)
      {
        [v1 dismissViewControllerAnimated:0 completion:0];
        v5 = *&v1[v3];
        *&v1[v3] = 0;
      }
    }
  }
}

void sub_1005349E0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_fullScreenMapCellDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = [v0 presentedViewController];
  if (v5)
  {
    v6 = v5;
    [v5 dismissViewControllerAnimated:0 completion:0];
  }

  v7 = [v1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 5)
  {
    v9 = [v1 navigationController];
    if (!v9)
    {
      return;
    }

    v14 = v9;
  }

  else
  {
    v10 = [v1 presentingViewController];
    if (!v10)
    {
      return;
    }

    v14 = v10;
    v11 = [v10 presentedViewController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 isBeingDismissed];

      if ((v13 & 1) == 0)
      {
        [v1 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

void sub_100534BDC()
{
  v1 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController;
  v2 = *&v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController];
  if (v2)
  {
    v3 = [v2 presentingViewController];
    if (v3)
    {

      v4 = *&v0[v1];
      if (v4)
      {
        [v4 dismissViewControllerAnimated:1 completion:0];
        v5 = *&v0[v1];
        *&v0[v1] = 0;
      }

      type metadata accessor for LocationPickerCollectionViewController(0);
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      *&v6[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate + 8] = &off_100A721C0;
      swift_unknownObjectWeakAssign();
      *&v6[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry] = *&v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_journalEntry];
      swift_retain_n();

      v7 = v0;
      sub_1006E4EB4();

      v8 = *&v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController];
      *&v7[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController] = v6;
      v9 = v6;

      v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v9];
      [v7 presentViewController:v10 animated:1 completion:0];
    }
  }
}

void sub_100534DB4()
{
  v1 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController;
  if (!*&v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController])
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList;
    v4 = *&v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList];
    *&v4[OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry] = *&v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_journalEntry];
    swift_retain_n();
    v5 = v4;

    sub_10035A0D4();

    v6 = *&v0[v3];
    *(v6 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_entryIsDeletable) = v0[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_entryIsDeletable];
    *(v6 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate + 8) = &off_100A721F0;
    swift_unknownObjectWeakAssign();
    *(*&v0[v3] + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapListSheetDelegate + 8) = &off_100A721D8;
    swift_unknownObjectWeakAssign();
    v7 = [objc_allocWithZone(UIViewController) init];
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      v39 = v1;
      [v8 addSubview:*(v2 + v3)];

      v10 = *(v2 + v3);
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      v12 = [v10 superview];
      v13 = &selRef_setSuggestedName_;
      if (v12)
      {
        v14 = v12;
        [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
        v15 = [v10 topAnchor];
        v16 = [v14 topAnchor];
        v17 = [v15 constraintEqualToAnchor:v16];

        [v17 setConstant:0.0];
        if (v17)
        {
          [v17 setActive:1];
        }

        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      }

      else
      {
        v17 = 0;
        v14 = v10;
      }

      v18 = *(v2 + v3);
      v19 = [v18 p_ivar_lyt[467]];
      if (v19)
      {
        v20 = v19;
        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        v21 = [v18 leadingAnchor];
        v22 = [v20 leadingAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];

        [v23 setConstant:0.0];
        if (v23)
        {
          [v23 setActive:1];
        }

        v13 = &selRef_setSuggestedName_;
        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      }

      else
      {
        v23 = 0;
        v20 = v18;
      }

      v24 = *(v2 + v3);
      v25 = [v24 p_ivar_lyt[467]];
      if (v25)
      {
        v26 = v25;
        [v24 v13[278]];
        v27 = [v24 trailingAnchor];
        v28 = [v26 trailingAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];

        [v29 setConstant:0.0];
        if (v29)
        {
          [v29 setActive:1];
        }
      }

      else
      {
        v29 = 0;
        v26 = v24;
      }

      v30 = *(v2 + v3);
      v31 = sub_100028DA0(0, 1, 0.0);

      v32 = String._bridgeToObjectiveC()();
      sub_1000065A8(0, &qword_100AD85C0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = v32;

      v34 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

      v35 = [objc_allocWithZone(type metadata accessor for LocationListSheetNavigationController()) initWithRootViewController:v7];
      v36 = *&v35[OBJC_IVAR____TtC7Journal37LocationListSheetNavigationController_standardDetent];
      *&v35[OBJC_IVAR____TtC7Journal37LocationListSheetNavigationController_standardDetent] = v34;
      v37 = v34;

      v38 = *&v39[v2];
      *&v39[v2] = v35;
      v40 = v35;

      [v2 presentViewController:v40 animated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_100535344(void *a1)
{
  v2 = [a1 containerTraitCollection];
  v3 = [v2 horizontalSizeClass];

  [a1 maximumDetentValue];
  v5 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList);

    [v8 intrinsicContentSize];
    v10 = v9;

    result = fmax(v10 + 10.0, 60.0);
  }

  else
  {
    result = 60.0;
  }

  v12 = v5 * 0.5;
  if (v3 != 1)
  {
    v12 = v5;
  }

  if (result >= v12)
  {
    return v12;
  }

  return result;
}

id sub_100535454(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_multiPinMapAsset] = 0;
  *&v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_journalEntry] = 0;
  v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_entryIsDeletable] = 0;
  *&v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation] = 0;
  *&v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_fullScreenMapCellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController] = 0;
  *&v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController] = 0;
  v7 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList;
  v8 = objc_allocWithZone(type metadata accessor for LocationListCollectionView());
  *&v3[v7] = sub_100357518(0);
  v9 = &v3[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_selectedVisitAssetID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView;
  type metadata accessor for MapAssetView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for FullScreenMapViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_100535608(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_multiPinMapAsset] = 0;
  *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_journalEntry] = 0;
  v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_entryIsDeletable] = 0;
  *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation] = 0;
  *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_fullScreenMapCellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController] = 0;
  *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController] = 0;
  v4 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList;
  v5 = objc_allocWithZone(type metadata accessor for LocationListCollectionView());
  *&v1[v4] = sub_100357518(0);
  v6 = &v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_selectedVisitAssetID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView;
  type metadata accessor for MapAssetView();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FullScreenMapViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_100535758()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMapViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100535870(void *a1, id a2)
{
  if (![a2 annotation])
  {
LABEL_7:
    if ([a2 annotation])
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        sub_100535A7C(v11);
      }

      swift_unknownObjectRelease();
    }

    return;
  }

  type metadata accessor for StyledMKPointAnnotation();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
LABEL_6:
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation;
  v8 = *(v2 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation);
  if (v8)
  {
    swift_unknownObjectRetain_n();
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    swift_unknownObjectRelease();
    if (v10)
    {
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  [a1 selectAnnotation:v6 animated:1];
  v12 = *(v2 + v7);
  *(v2 + v7) = v6;
  swift_unknownObjectRetain();

  v13 = *(v2 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList);
  v15 = *&v13[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation];
  *&v13[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation] = v6;
  swift_unknownObjectRetain();
  v14 = v13;
  sub_100357110(v15);

  swift_unknownObjectRelease_n();
}

void sub_100535A7C(void *a1)
{
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_multiPinMapAsset);
  if (v10 && *(v10 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    v11 = v1;

    sub_1000768B4(v9);

    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_1004D1274(v9);
    }

    else
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_1004D1274(v9);
      v12 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v4 + 8))(v6, v3);
      if (v12)
      {
        if (*(v12 + 16))
        {
          sub_10032C2F4(a1, v12);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          v21 = *(*(v11 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView) + OBJC_IVAR____TtC7Journal12MapAssetView_mapView);
          if (v21)
          {
            [v21 setRegion:1 animated:{v14, v16, v18, v20}];
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_100535CC8()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_selectedVisitAssetID);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_selectedVisitAssetID + 8);
  if (!v2)
  {
    return;
  }

  v3 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView);
  v5 = OBJC_IVAR____TtC7Journal12MapAssetView_mapView;
  v6 = *(v4 + OBJC_IVAR____TtC7Journal12MapAssetView_mapView);
  if (!v6)
  {
    return;
  }

  v7 = *v1;

  v8 = [v6 annotations];
  sub_1000F24EC(&unk_100AD91C0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = v5;
    v26 = v4;
    v27 = v3;
    v3 = 0;
    v4 = v9 & 0xFFFFFFFFFFFFFF8;
    v28 = i;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_21:
          __break(1u);
          return;
        }

        goto LABEL_11;
      }

      if (v3 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v5 = *(v9 + 8 * v3 + 32);
      swift_unknownObjectRetain();
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      type metadata accessor for StyledMKPointAnnotation();
      v12 = swift_dynamicCastClass();
      if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID + 8)) != 0 && (*(v12 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID) == v7 ? (v14 = v13 == v2) : (v14 = 0), v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        i = v28;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
      if (v11 == i)
      {
        v4 = v26;
        v3 = v27;
        v5 = v25;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

LABEL_42:

    return;
  }

  if (!*&_swiftEmptyArrayStorage[2])
  {
    goto LABEL_42;
  }

LABEL_29:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*&_swiftEmptyArrayStorage[2])
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  type metadata accessor for StyledMKPointAnnotation();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = *(v4 + v5);
    if (v17)
    {
      [v17 selectAnnotation:v16 animated:1];
    }

    v18 = *(v3 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList);
    v19 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation;
    v20 = *(v3 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation);
    v21 = *&v18[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation];
    *&v18[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation] = v20;
    v22 = v20;
    v23 = v18;
    sub_100357110(v21);

    v24 = *(v3 + v19);
    *(v3 + v19) = v16;
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1005360BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView) + OBJC_IVAR____TtC7Journal12MapAssetView_mapView);
  if (!v3)
  {
    return;
  }

  v22 = OBJC_IVAR____TtC7Journal12MapAssetView_mapView;
  v23 = *(v2 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView);
  isa = [v3 annotations];
  if (!isa)
  {
    sub_1000F24EC(&unk_100AD91C0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  sub_1000F24EC(&unk_100AD91C0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v5 >> 62)
  {
LABEL_40:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v2;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_41:

    return;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v2;
  if (!v7)
  {
    goto LABEL_41;
  }

LABEL_6:
  v8 = 0;
  v2 = v6 & 0xC000000000000001;
  while (v2)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_23;
    }

LABEL_12:
    type metadata accessor for StyledMKPointAnnotation();
    v10 = swift_dynamicCastClass();
    if (v10 && (v11 = *(v10 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID + 8)) != 0)
    {
      v26 = v10;
      if (a2)
      {
        v12 = *(v10 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID) == a1 && v11 == a2;
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_29;
        }
      }
    }

    else if (!a2)
    {
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
    ++v8;
    if (v9 == v7)
    {
      goto LABEL_41;
    }
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_40;
  }

  swift_unknownObjectRetain();
  v9 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_12;
  }

LABEL_23:
  __break(1u);
LABEL_24:

  v26 = swift_dynamicCastClass();
  if (v26)
  {
LABEL_29:
    v13 = *(v23 + v22);
    if (v13 && ([v13 selectAnnotation:v26 animated:1], (v14 = *(v23 + v22)) != 0) && (objc_msgSend(v14, "visibleMapRect"), (v15 = *(v23 + v22)) != 0) && (v16 = objc_msgSend(v15, "annotationsInMapRect:"), v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v16, sub_10053727C(), swift_unknownObjectRetain(), AnyHashable.init<A>(_:)(), LOBYTE(v16) = sub_100627E58(v28, v17), , sub_100177B94(v28), (v16 & 1) == 0))
    {
      v20 = *(v23 + v22);
      v18 = v24;
      if (v20)
      {
        v21 = v20;
        [v21 showAnnotations:isa animated:1];
      }
    }

    else
    {

      v18 = v24;
    }

    v19 = *(v18 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation);
    *(v18 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation) = v26;

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100536470()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList);
  sub_10035A0D4();

  v3 = v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_fullScreenMapCellDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 8);
    v8 = swift_getObjectType();
    (*(v7 + 8))(v8, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100536554()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList);
  sub_10035A0D4();

  v3 = v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_fullScreenMapCellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005365EC()
{
  v1 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_presentedLocationsListNavigationController);
  if (!v2)
  {
    return;
  }

  isEscapingClosureAtFileLocation = v2;
  v4 = isEscapingClosureAtFileLocation;
  if ([isEscapingClosureAtFileLocation isBeingDismissed])
  {
    goto LABEL_9;
  }

  v4 = isEscapingClosureAtFileLocation;
  if ([isEscapingClosureAtFileLocation isBeingPresented])
  {
    goto LABEL_9;
  }

  v5 = [isEscapingClosureAtFileLocation presentingViewController];
  v4 = isEscapingClosureAtFileLocation;
  if (!v5)
  {
    goto LABEL_9;
  }

  v4 = [isEscapingClosureAtFileLocation presentationController];
  if (v4)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v0 = swift_allocObject();
      *(v0 + 16) = v7;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_1005373AC;
      *(v1 + 24) = v0;
      aBlock[4] = sub_100028EF4;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001A7D4;
      aBlock[3] = &unk_100A722D0;
      v8 = _Block_copy(aBlock);
      v4 = v4;

      [v7 animateChanges:v8];

      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

LABEL_9:

    isEscapingClosureAtFileLocation = v4;
  }

  v9 = *(v0 + v1);
  if (v9)
  {
    v10 = [v9 presentationController];
    if (v10)
    {
      v12 = v10;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 invalidateDetents];
      }
    }
  }
}

uint64_t sub_100536888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for AssetPlacement();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_100536980, v9, v8);
}

uint64_t sub_100536980()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_journalEntry);
  v0[11] = v1;
  v2 = v0[8];
  if (v1)
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];

    *v3 = static AssetPlacement.maxGridCount.getter();
    (*(v4 + 104))(v3, enum case for AssetPlacement.grid(_:), v5);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_100536AF4;
    v7 = v0[7];
    v8 = v0[3];
    v9 = v0[4];

    return sub_10044C1DC(v2, &protocol witness table for MainActor, v8, v1, v9, v7, 1);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100536AF4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_100536C94, v6, v5);
}

uint64_t sub_100536C94()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList);
  sub_10035A0D4();

  v3 = *(v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController);
  *(v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController) = 0;

  sub_100534DB4();

  v4 = *(v0 + 8);

  return v4();
}

void sub_100536D50(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = *(v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController);
  *(v1 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_addLocationPickerController) = 0;

  sub_100534DB4();
}

void sub_100536D9C(void *a1, uint64_t a2)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for AssetSource();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 presentingViewController];
  if (v13)
  {
    v14 = v13;
    [v13 dismissViewControllerAnimated:1 completion:0];
  }

  (*(v9 + 104))(v12, enum case for AssetSource.locationPicker(_:), v8);
  sub_1000F24EC(&qword_100AD64A8);
  v15 = type metadata accessor for VisitAssetMetadata();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100940080;
  (*(v16 + 16))(v18 + v17, a2, v15);
  v19 = sub_10011CEC0(v12, v18);
  v20 = *&v2[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_multiPinMapAsset];
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  type metadata accessor for MainActor();
  v22 = v20;
  v23 = v2;
  v24 = v19;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v23;
  v26[5] = v24;
  v26[6] = v20;
  sub_1003E9628(0, 0, v7, &unk_10095C670, v26);
}

id sub_100537098()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList;
  result = [*(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList) indexPathsForSelectedItems];
  if (result)
  {
    v11 = result;
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v12 + 16))
    {
      (*(v2 + 16))(v4, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

      (*(v2 + 32))(v8, v4, v1);
      v13 = *(v0 + v9);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v13 deselectItemAtIndexPath:isa animated:1];

      return (*(v2 + 8))(v8, v1);
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_10053727C()
{
  result = qword_100AE86D8;
  if (!qword_100AE86D8)
  {
    type metadata accessor for StyledMKPointAnnotation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE86D8);
  }

  return result;
}

uint64_t sub_1005372D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100536888(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005373BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1000F24EC(&qword_100AE6AC8);
  __chkstk_darwin(v7 - 8);
  v9 = &v20[-v8 - 8];
  v10 = type metadata accessor for UICellConfigurationState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100086C04(a1, v20);
  sub_1000F24EC(&qword_100AE6AD0);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);

    v16 = a4;
    UICellConfigurationState.isSelected.getter();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v15(v9, 1, 1, v10);
    sub_1004FA42C(v9);

    v17 = a4;
  }

  return a2;
}

id sub_1005375CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = objc_allocWithZone(type metadata accessor for CustomJournalSymbolIconCellContentView());

  v6 = sub_100537A58(v1, v2, v3, v4);
  sub_1005383F0();
  return v6;
}

uint64_t sub_100537644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1005373BC(a1, *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  return result;
}

Swift::Int sub_100537684()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10053771C()
{
  v1 = *(v0 + 24);
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1005377A0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void (*sub_100537858(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[19] = v1;
  v5 = v1 + OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration;
  v7 = *(v1 + OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration);
  v6 = *(v1 + OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v3[3] = &type metadata for CustomJournalSymbolIconContentConfiguration;
  v3[4] = sub_10053839C();
  v10 = swift_allocObject();
  *v4 = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;

  v11 = v8;
  return sub_100537930;
}

void sub_100537930(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_100086C04(*a1, *a1 + 40);
  if (a2)
  {
    sub_100086C04(v3 + 40, v3 + 80);
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v4 = *(v3 + 136);
      sub_100537E60(*(v3 + 120), *(v3 + 128), v4, *(v3 + 144));
    }

    sub_10000BA7C(v3 + 40);
  }

  else
  {
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v5 = *(v3 + 96);
      sub_100537E60(*(v3 + 80), *(v3 + 88), v5, *(v3 + 104));
    }
  }

  sub_10000BA7C(v3);

  free(v3);
}

id sub_100537A58(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v9 = OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_iconImageView;
  v10 = [objc_allocWithZone(UIImageView) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setContentMode:1];

  v11 = [objc_opt_self() secondaryLabelColor];
  [v10 setTintColor:v11];

  *&v4[v9] = v10;
  v12 = &v4[OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration];
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  v12[24] = a4;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CustomJournalSymbolIconCellContentView();

  v13 = a3;
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100537BEC();
  sub_100537E60(a1, a2, v13, a4);

  return v14;
}

void sub_100537BEC()
{
  v1 = OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_iconImageView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_iconImageView]];
  v2 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941830;
  v4 = [*&v0[v1] leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] centerXAnchor];
  v11 = [v0 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] centerYAnchor];
  v14 = [v0 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

void sub_100537E60(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    v9 = [v4 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 5)
    {
      v11 = 12.0;
    }

    else
    {
      v11 = 16.0;
    }

    v12 = [objc_opt_self() configurationWithPointSize:v11];
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13];

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = [v14 imageWithConfiguration:v12];

    [*&v4[OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_iconImageView] setImage:v15];
  }

  [*&v4[OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_iconImageView] setTintColor:a3];
  v16 = &v4[OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration];
  v17 = *&v4[OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration + 16];
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  v16[24] = a4 & 1;

  v18 = a3;
}

id sub_100538038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomJournalSymbolIconCellContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1005380E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1005380FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100538144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10053819C()
{
  result = qword_100AE8718;
  if (!qword_100AE8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8718);
  }

  return result;
}

id sub_1005381F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration;
  v5 = *(v1 + OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration);
  v4 = *(v1 + OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_appliedConfiguration + 8);
  v9 = *(v3 + 16);
  v6 = *(v3 + 24);
  a1[3] = &type metadata for CustomJournalSymbolIconContentConfiguration;
  a1[4] = sub_10053839C();
  v7 = swift_allocObject();
  *a1 = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v9;
  *(v7 + 40) = v6;

  return v9;
}

uint64_t sub_100538294(uint64_t a1)
{
  sub_100086C04(a1, v7);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    sub_100537E60(v3, v4, v5, v6);
  }

  return sub_10000BA7C(a1);
}

void (*sub_10053832C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100537858(v2);
  return sub_100113D90;
}

unint64_t sub_10053839C()
{
  result = qword_100AE9F50;
  if (!qword_100AE9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9F50);
  }

  return result;
}

unint64_t sub_1005383F0()
{
  result = qword_100AE8720;
  if (!qword_100AE8720)
  {
    type metadata accessor for CustomJournalSymbolIconCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8720);
  }

  return result;
}

uint64_t sub_100538444(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a6 && (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_6;
    }

LABEL_10:
    v11 = 0;
    return v11 & 1;
  }

  if (a6)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_1000065A8(0, &unk_100AD43A0);
  v10 = static NSObject.== infix(_:_:)();
  v11 = a4 ^ a8 ^ 1;
  if ((v10 & 1) == 0)
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1005384F0()
{
  v1 = OBJC_IVAR____TtC7Journal38CustomJournalSymbolIconCellContentView_iconImageView;
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setContentMode:1];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTintColor:v3];

  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005385E8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100538680, v4, v3);
}

uint64_t sub_100538680()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = *(v1 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100538A3C;
  *(v5 + 24) = v4;
  v0[6] = sub_100028EF4;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10001A7D4;
  v0[5] = &unk_100A723F8;
  v6 = _Block_copy(v0 + 2);

  v7 = v2;

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

unint64_t sub_100538830()
{
  type metadata accessor for JournalEntryMO();
  v1 = static JournalEntryMO.fetchRequest()();
  [v1 setIncludesPropertyValues:0];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {

    sub_1000F24EC(&unk_100AE88B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100940080;
    v4._countAndFlagsBits = 0x7265206863746546;
    v4._object = 0xEC00000020726F72;
    String.append(_:)(v4);
    sub_1000F24EC(&qword_100AD5BC0);
    _print_unlocked<A, B>(_:_:)();
    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

  v5 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
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
    }

    v9 = v8;
    [v8 setIsRemovedFromCloud:1];
  }

LABEL_12:
}

__n128 sub_100538A50(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100538A7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[104])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100538AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100538B40()
{
  result = qword_100AE8728;
  if (!qword_100AE8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8728);
  }

  return result;
}

uint64_t sub_100538B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_100538C00(v11, v13) & 1;
}

uint64_t sub_100538C00(double *a1, double *a2)
{
  if (*a1 != *a2 || (static EdgeInsets.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 48);
  if (a1[6])
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (a1[5] != a2[5])
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (a1[7] != a2[7] || a1[8] != a2[8])
  {
    return 0;
  }

  return static EdgeInsets.== infix(_:_:)();
}

__n128 sub_100538CC4@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_10023DEC0(a1, v11);
  v6 = DynamicTypeSize.isAccessibilitySize.getter();
  v7 = type metadata accessor for DynamicTypeSize();
  (*(*(v7 - 8) + 8))(a2, v7);
  if (v4 > 2u)
  {
    if (v4 - 4 >= 4)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else if (v4)
  {
    v4 = v4 != 1 || (v6 & 1) == 0;
  }

  *&v10[7] = v12;
  *&v10[23] = v13;
  *a3 = v4;
  *(a3 + 1) = *v10;
  *(a3 + 17) = *&v10[16];
  v8 = v14;
  *(a3 + 32) = *&v10[31];
  *(a3 + 40) = v8;
  *(a3 + 48) = v15;
  result = v17;
  *(a3 + 56) = v16;
  *(a3 + 88) = v18;
  *(a3 + 72) = result;
  return result;
}

Swift::Int TranscriptionState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_100538E54()
{
  result = qword_100AE8730;
  if (!qword_100AE8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8730);
  }

  return result;
}

uint64_t type metadata accessor for TranscriptionUpdate()
{
  result = qword_100AE87A8;
  if (!qword_100AE87A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100538F04()
{
  result = type metadata accessor for Transcriber.MultisegmentResult();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100538F84()
{
  result = qword_100AE87E0;
  if (!qword_100AE87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE87E0);
  }

  return result;
}

void sub_100538FD8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset];
  *&v1[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset] = a1;
  v10 = a1;

  if (!a1)
  {
    return;
  }

  v4 = [v1 subviews];
  sub_1000065A8(0, &qword_100ADC670);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
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
        }

        v9 = v8;
        [v8 removeFromSuperview];
      }
    }
  }

  sub_1005393E4(v10);
}

void sub_10053919C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10053B54C();
  }
}

void sub_1005391F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = UIView.viewControllerForPresenting.getter();
    if (v2)
    {
      v3 = v2;
      type metadata accessor for LocationPickerCollectionViewController(0);
      v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v4[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = 1;
      *&v4[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange] = *&v1[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation];
      v5 = swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v6 = v4;
      v7 = [v6 view];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      [v7 setNeedsUpdateConstraints];

      *&v6[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate + 8] = &off_100A72660;
      swift_unknownObjectWeakAssign();
      v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v6];

      [v9 setNavigationBarHidden:1];
      v10 = [v1 traitCollection];

      v11 = [v10 userInterfaceIdiom];
      [v9 setToolbarHidden:v11 != 5];
      [v3 presentViewController:v9 animated:1 completion:0];

      v1 = v6;
    }

    else
    {
      v9 = v1;
    }
  }
}

uint64_t sub_1005393E4(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(*(v1 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView) + OBJC_IVAR____TtC7Journal12MapAssetView_delegate + 8) = &off_100A72678;
  swift_unknownObjectWeakAssign();
  sub_100074C10(a1, 2u);
  sub_1000065A8(0, &qword_100AD6210);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10053FE40;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A72908;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10053FB5C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1005396EC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v224 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = (&v224 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v227 = v5;
  v230 = v2;
  v8 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardView;
  v9 = *&Strong[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardView];
  v10 = Strong;
  [v10 addSubview:v9];
  v11 = *&v7[v8];
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v11 leadingAnchor];
    v15 = [v13 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:20.0];
    if (v16)
    {
      [v16 setActive:1];
    }
  }

  else
  {
    v16 = 0;
    v13 = v11;
  }

  v17 = *&v7[v8];
  v18 = [v17 superview];
  if (v18)
  {
    v19 = v18;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v17 trailingAnchor];
    v21 = [v19 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:-20.0];
    if (v22)
    {
      [v22 setActive:1];
    }
  }

  else
  {
    v22 = 0;
    v19 = v17;
  }

  v23 = *&v7[v8];
  v24 = [v23 superview];
  if (v24)
  {
    v25 = v24;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [v23 centerYAnchor];
    v27 = [v25 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    [v28 setConstant:0.0];
    if (v28)
    {
      [v28 setActive:1];
    }
  }

  else
  {
    v28 = 0;
    v25 = v23;
  }

  sub_10053DC9C();
  v29 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_shadowView;
  v30 = [*&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_shadowView] layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v235 = xmmword_100B30F28;
  v236 = *&qword_100B30F38;
  v237 = xmmword_100B30F48;
  v238 = *&qword_100B30F58;
  [v30 setCornerRadii:&v235];

  v31 = [objc_allocWithZone(UIStackView) init];
  [v31 setUserInteractionEnabled:1];
  [v31 setAxis:1];
  [v31 setAlignment:3];
  v228 = v31;
  [v31 setSpacing:16.0];
  [*&v7[v8] addSubview:*&v10[v29]];
  v32 = [*&v10[v29] layer];
  v235 = xmmword_100B30F28;
  v236 = *&qword_100B30F38;
  v237 = xmmword_100B30F48;
  v238 = *&qword_100B30F58;
  [v32 setCornerRadii:&v235];

  v33 = *&v10[v29];
  sub_100013178(0.0);

  v34 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView;
  [*&v7[v8] addSubview:*&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView]];
  v35 = [*&v10[v34] layer];
  v235 = xmmword_100B30F28;
  v236 = *&qword_100B30F38;
  v237 = xmmword_100B30F48;
  v238 = *&qword_100B30F58;
  [v35 setCornerRadii:&v235];

  v36 = [*&v10[v34] layer];
  [v36 setMasksToBounds:1];

  v229 = v34;
  v37 = *&v10[v34];
  sub_100013178(0.0);

  v38 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_blurEffectView;
  v39 = *&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_blurEffectView];
  v40 = objc_opt_self();
  v225 = v40;
  v41 = v39;
  v42 = [(NSString *)v40 clearColor];
  [v41 setBackgroundColor:v42];

  v43 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_captionView;
  v44 = *&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_captionView];
  v45 = *&v10[v38];
  [v44 bounds];
  [v45 setFrame:?];

  [*&v10[v38] setAutoresizingMask:18];
  [*&v10[v38] _setCornerRadius:12.0];
  v46 = *&v10[v43];
  v224 = v38;
  [v46 insertSubview:*&v10[v38] atIndex:0];
  v47 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel;
  [*&v10[v43] addSubview:*&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel]];
  v48 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel;
  [*&v10[v43] addSubview:*&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel]];
  v49 = *&v10[v43];
  v50 = *&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeInfoLabel];
  v51 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeInfoLabel;
  v233 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeInfoLabel;
  [v49 addSubview:v50];
  v231 = v43;
  v52 = [*&v10[v43] layer];
  [v52 setCornerRadius:12.0];

  v53 = *&v10[v47];
  v234 = v47;
  v54 = objc_opt_self();
  v55 = v53;
  v226 = UIFontTextStyleHeadline;
  v56 = [v54 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v55 setFont:v56];

  v57 = *&v10[v48];
  v58 = [v54 preferredFontForTextStyle:UIFontTextStyleBody];
  [v57 setFont:v58];

  v59 = *&v10[v51];
  v60 = [v54 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v59 setFont:v60];

  v61 = *&v10[v47];
  v62 = v225;
  v63 = [(NSString *)v225 labelColor];
  [v61 setTextColor:v63];

  [v61 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v61 setAdjustsFontForContentSizeCategory:1];
  [v61 setNumberOfLines:0];
  [v61 setLineBreakMode:4];
  [v61 setTextAlignment:1];

  v232 = v48;
  v64 = *&v10[v48];
  v65 = [(NSString *)v62 labelColor];
  [v64 setTextColor:v65];

  [v64 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v64 setAdjustsFontForContentSizeCategory:1];
  [v64 setNumberOfLines:1];
  [v64 setLineBreakMode:4];
  [v64 setTextAlignment:1];

  v66 = *&v10[v233];
  v67 = [(NSString *)v62 secondaryLabelColor];
  [v66 setTextColor:v67];

  v225 = UIContentSizeCategoryAccessibilityMedium;
  [v66 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v66 setAdjustsFontForContentSizeCategory:1];
  [v66 setNumberOfLines:1];
  [v66 setLineBreakMode:4];
  [v66 setTextAlignment:1];

  v68 = *&v10[v234];
  v69 = [v68 superview];
  if (v69)
  {
    v70 = v69;
    [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
    v71 = [v68 topAnchor];
    v72 = [v70 topAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];

    [v73 setConstant:16.0];
    if (v73)
    {
      [v73 setActive:1];
    }
  }

  else
  {
    v73 = 0;
    v70 = v68;
  }

  v74 = v232;
  v75 = *&v10[v232];
  v76 = *&v10[v234];
  v77 = v75;
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  v78 = [v76 bottomAnchor];
  v79 = [v77 topAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  [v80 setConstant:0.0];
  [v80 setActive:1];

  v81 = v233;
  v82 = *&v10[v74];
  v83 = *&v10[v233];
  v84 = v82;
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  v85 = [v83 topAnchor];
  v86 = [v84 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  [v87 setConstant:2.0];
  [v87 setActive:1];

  v88 = *&v10[v81];
  v89 = sub_100028DA0(0, 1, 16.0);

  v90 = *&v10[v234];
  v91 = [v90 superview];
  if (v91)
  {
    v92 = v91;
    [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [v90 leadingAnchor];
    v94 = [v92 leadingAnchor];
    v95 = [v93 constraintGreaterThanOrEqualToAnchor:v94];

    [v95 setConstant:16.0];
    if (v95)
    {
      [v95 setActive:1];
    }
  }

  else
  {
    v95 = 0;
    v92 = v90;
  }

  v96 = *&v10[v232];
  v97 = [v96 superview];
  if (v97)
  {
    v98 = v97;
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    v99 = [v96 leadingAnchor];
    v100 = [v98 leadingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];

    [v101 setConstant:16.0];
    if (v101)
    {
      [v101 setActive:1];
    }
  }

  else
  {
    v101 = 0;
    v98 = v96;
  }

  v102 = *&v10[v232];
  v103 = [v102 superview];
  if (v103)
  {
    v104 = v103;
    [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
    v105 = [v102 trailingAnchor];
    v106 = [v104 trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];

    [v107 setConstant:-16.0];
    if (v107)
    {
      [v107 setActive:1];
    }
  }

  else
  {
    v107 = 0;
    v104 = v102;
  }

  v108 = *&v10[v233];
  v109 = [v108 superview];
  if (v109)
  {
    v110 = v109;
    [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
    v111 = [v108 leadingAnchor];
    v112 = [v110 leadingAnchor];
    v113 = [v111 constraintEqualToAnchor:v112];

    [v113 setConstant:16.0];
    if (v113)
    {
      [v113 setActive:1];
    }
  }

  else
  {
    v113 = 0;
    v110 = v108;
  }

  v114 = *&v10[v233];
  v115 = [v114 superview];
  if (v115)
  {
    v116 = v115;
    [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
    v117 = [v114 trailingAnchor];
    v118 = [v116 trailingAnchor];
    v119 = [v117 constraintEqualToAnchor:v118];

    [v119 setConstant:-16.0];
    v120 = &selRef_setSuggestedName_;
    if (v119)
    {
      [v119 setActive:1];
    }

    v121 = &selRef_setSuggestedName_;
  }

  else
  {
    v119 = 0;
    v116 = v114;
    v121 = &selRef_setSuggestedName_;
    v120 = &selRef_setSuggestedName_;
  }

  v122 = [v10 effectiveUserInterfaceLayoutDirection];
  v123 = *&v10[v234];
  v124 = [v123 superview];
  v125 = v124;
  if (!v122)
  {
    if (v124)
    {
      [v123 v121[278]];
      v126 = [v125 centerXAnchor];
      v120 = &selRef_setSuggestedName_;
      v127 = [v123 centerXAnchor];
      v128 = [v127 constraintLessThanOrEqualToAnchor:v126];
      goto LABEL_54;
    }

LABEL_55:
    v125 = v123;
    goto LABEL_56;
  }

  if (!v124)
  {
    goto LABEL_55;
  }

  [v123 v121[278]];
  v126 = [v125 centerXAnchor];
  v127 = [v123 centerXAnchor];
  v128 = [v127 constraintGreaterThanOrEqualToAnchor:v126];
LABEL_54:
  v129 = v128;

  [v129 setConstant:0.0];
  [v129 v120[263]];

LABEL_56:
  sub_1000F24EC(&unk_100AD4780);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_100941D60;
  sub_1000065A8(0, &qword_100AD4420);
  v131 = [objc_opt_self() mainBundle];
  v240._object = 0x80000001008F9AB0;
  v132._countAndFlagsBits = 0x7469542074696445;
  v133._object = 0x80000001008F9A90;
  v240._countAndFlagsBits = 0xD00000000000001DLL;
  v133._countAndFlagsBits = 0xD000000000000011;
  v132._object = 0xEA0000000000656CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v131, v132, v240);

  v134 = String._bridgeToObjectiveC()();
  v135 = objc_opt_self();
  v136 = [v135 systemImageNamed:v134];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v130 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v137 = String._bridgeToObjectiveC()();
  v138 = [v135 systemImageNamed:v137];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v130 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &unk_100AD4D00);
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v239.value.super.isa = 0;
  v239.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v139, 0, v239, 0, 0xFFFFFFFFFFFFFFFFLL, v130, v223).super.super.isa;
  v141 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_editButton;
  v142 = *&v10[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_editButton];
  v143 = String._bridgeToObjectiveC()();
  v144 = [v135 systemImageNamed:v143];

  [v142 setImage:v144 forState:0];
  v145 = *&v10[v141];
  v146 = objc_opt_self();
  v147 = v145;
  v148 = [v146 configurationWithTextStyle:v226];
  [v147 setPreferredSymbolConfiguration:v148 forImageInState:0];

  v149 = *&v10[v141];
  v227 = isa;
  [v149 setMenu:isa];
  [*&v10[v141] setShowsMenuAsPrimaryAction:1];
  v150 = qword_100AD0810;
  v151 = *&v10[v141];
  if (v150 != -1)
  {
    swift_once();
  }

  v152 = String._bridgeToObjectiveC()();
  [v151 setAccessibilityLabel:v152];

  [*&v10[v141] setMaximumContentSizeCategory:v225];
  [*&v10[v231] addSubview:*&v10[v141]];
  v230 = v141;
  v153 = *&v10[v141];
  v154 = [v153 superview];
  if (v154)
  {
    v155 = v154;
    [v153 setTranslatesAutoresizingMaskIntoConstraints:0];
    v156 = [v153 trailingAnchor];
    v157 = [v155 trailingAnchor];
    v158 = [v156 constraintEqualToAnchor:v157];

    [v158 setConstant:-16.0];
    if (v158)
    {
      [v158 setActive:1];
    }

    v159 = v230;
  }

  else
  {
    v158 = 0;
    v155 = v153;
    v159 = v230;
  }

  v160 = *&v159[v10];
  v161 = [v160 superview];
  if (v161)
  {
    v162 = v161;
    [v160 setTranslatesAutoresizingMaskIntoConstraints:0];
    v163 = [v160 topAnchor];
    v164 = [v162 topAnchor];
    v165 = [v163 constraintEqualToAnchor:v164];

    [v165 setConstant:16.0];
    if (v165)
    {
      [v165 setActive:1];
    }
  }

  else
  {
    v165 = 0;
    v162 = v160;
  }

  v166 = *&v159[v10];
  [v166 setTranslatesAutoresizingMaskIntoConstraints:0];
  v167 = [v166 heightAnchor];
  v168 = [v166 widthAnchor];
  v169 = [v167 constraintEqualToAnchor:v168 multiplier:1.0];

  [v169 setActive:1];
  v170 = *&v159[v10];
  v171 = *&v10[v234];
  v172 = v170;
  [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
  v173 = [v171 trailingAnchor];
  v174 = [v172 leadingAnchor];
  v175 = [v173 constraintLessThanOrEqualToAnchor:v174];

  [v175 setConstant:-6.0];
  [v175 setActive:1];

  v176 = v231;
  [*&v10[v229] addSubview:*&v10[v231]];
  v177 = *&v10[v176];
  v178 = [v177 superview];
  if (v178)
  {
    v179 = v178;
    [v177 setTranslatesAutoresizingMaskIntoConstraints:0];
    v180 = [v177 leadingAnchor];
    v181 = [v179 leadingAnchor];
    v182 = [v180 constraintEqualToAnchor:v181];

    [v182 setConstant:16.0];
    if (v182)
    {
      [v182 setActive:1];
    }
  }

  else
  {
    v182 = 0;
    v179 = v177;
  }

  v183 = *&v10[v231];
  v184 = [v183 superview];
  if (v184)
  {
    v185 = v184;
    [v183 setTranslatesAutoresizingMaskIntoConstraints:0];
    v186 = [v183 trailingAnchor];
    v187 = [v185 trailingAnchor];
    v188 = [v186 constraintEqualToAnchor:v187];

    [v188 setConstant:-16.0];
    if (v188)
    {
      [v188 setActive:1];
    }

    v189 = v232;
  }

  else
  {
    v188 = 0;
    v185 = v183;
    v189 = v232;
  }

  v190 = v231;
  v191 = *&v10[v231];
  v192 = sub_100028DA0(0, 1, 16.0);

  sub_1000F24EC(&unk_100AE88B0);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_100940050;
  v194 = *&v10[v190];
  *(v193 + 56) = sub_1000065A8(0, &qword_100ADC670);
  *(v193 + 32) = v194;
  v195 = *&v10[v229];
  *(v193 + 88) = type metadata accessor for MapAssetView();
  *(v193 + 64) = v195;
  v196 = v10;
  v197 = v194;
  v198 = v195;
  v199 = Array._bridgeToObjectiveC()().super.isa;

  [v196 setAccessibilityElements:v199];

  v200 = *&v10[v190];
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_100941FE0;
  v202 = v234;
  v203 = *&v10[v234];
  v204 = sub_1000065A8(0, &qword_100AE88C0);
  *(v201 + 56) = v204;
  *(v201 + 32) = v203;
  v205 = *&v10[v189];
  *(v201 + 88) = v204;
  *(v201 + 64) = v205;
  v206 = v233;
  v207 = *&v10[v233];
  *(v201 + 120) = v204;
  *(v201 + 96) = v207;
  v208 = *&v230[v10];
  *(v201 + 152) = sub_1000065A8(0, &qword_100ADFC10);
  *(v201 + 128) = v208;
  v209 = v200;
  v210 = v203;
  v211 = v205;
  v212 = v207;
  v213 = v208;
  v214 = Array._bridgeToObjectiveC()().super.isa;

  [v209 setAccessibilityElements:v214];

  v215 = UIAccessibilityTraitHeader;
  v216 = *&v10[v206];
  v217 = [v216 accessibilityTraits];
  if ((v215 & ~v217) != 0)
  {
    v218 = v215;
  }

  else
  {
    v218 = 0;
  }

  [v216 setAccessibilityTraits:v218 | v217];

  v219 = [*&v10[v202] text];
  if (v219 || (v219 = [*&v10[v232] text]) != 0)
  {
    v220 = v228;
    v221 = v219;
  }

  else
  {
    [*&v10[v224] setHidden:1];
    v222 = *&v230[v10];
    [v222 setHidden:1];
    v220 = v196;
    v196 = v222;
    v221 = v228;
  }
}

void sub_10053B54C()
{
  type metadata accessor for JurassicAlertController();
  v1 = [objc_opt_self() mainBundle];
  v28._object = 0x80000001008F9A40;
  v2._countAndFlagsBits = 0x7469542074696445;
  v3._object = 0x80000001008F9A20;
  v28._countAndFlagsBits = 0xD000000000000022;
  v3._countAndFlagsBits = 0xD000000000000014;
  v2._object = 0xEA0000000000656CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v1, v2, v28);

  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v4 message:0 preferredStyle:1];

  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v26 = sub_10053FD38;
  v27 = v6;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10016B4D8;
  v25 = &unk_100A72818;
  v7 = _Block_copy(&aBlock);
  v8 = v0;

  [v5 addTextFieldWithConfigurationHandler:v7];
  _Block_release(v7);
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = objc_opt_self();
  v11 = [v10 actionWithTitle:v9 style:1 handler:0];

  if (qword_100AD0438 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v5;

  v14 = v5;
  v15 = String._bridgeToObjectiveC()();
  v26 = sub_10053FD40;
  v27 = v13;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10016B4D8;
  v25 = &unk_100A72868;
  v16 = _Block_copy(&aBlock);

  v17 = [v10 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  v18 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_saveAction;
  v19 = *&v8[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_saveAction];
  *&v8[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_saveAction] = v17;

  [v14 addAction:v11];
  [v14 addAction:*&v8[v18]];
  v20 = UIView.viewControllerForPresenting.getter();
  if (v20)
  {
    v21 = v20;
    [v20 presentViewController:v14 animated:1 completion:0];
  }
}

id sub_10053B944(void *a1, uint64_t a2)
{
  if (qword_100AD0710 != -1)
  {
    swift_once();
  }

  v4 = String._bridgeToObjectiveC()();
  [a1 setPlaceholder:v4];

  v5 = [*(a2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel) text];
  [a1 setText:v5];

  return [a1 addTarget:a2 action:"textFieldDidChange:" forControlEvents:0x20000];
}

void sub_10053BA34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = [a3 textFields];
  if (!v9)
  {
LABEL_13:

    return;
  }

  v10 = v9;
  sub_1000065A8(0, &unk_100AE88A0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_15:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 text];

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = *&v8[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel];
  [v18 setText:v14];

  v19 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation;
  v20 = *&v8[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation];
  if (v20)
  {
    [v20 coordinate];
    v22 = v21;
    v24 = v23;
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v26;
    v28[5] = v22;
    v28[6] = v24;
    v28[7] = v15;
    v28[8] = v17;

    sub_1003E9628(0, 0, v6, &unk_10095CAC0, v28);

    v29 = *&v8[v19];
    if (v29)
    {
      v30 = (v29 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName);
      *v30 = v15;
      v30[1] = v17;
    }
  }

  v31 = *&v8[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView];
  v32 = *&v8[v19];
  v33 = v32;
  v34 = v31;

  *&v34[OBJC_IVAR____TtC7Journal12MapAssetView_newReplacementAnnotation] = v32;
  swift_unknownObjectRelease();
}

uint64_t sub_10053BD94(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  *(v8 + 96) = a6;
  sub_1000F24EC(&qword_100AD5170);
  *(v8 + 136) = swift_task_alloc();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = type metadata accessor for MainActor();
  *(v8 + 200) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 208) = v12;
  *(v8 + 216) = v11;

  return _swift_task_switch(sub_10053BF28, v12, v11);
}

uint64_t sub_10053BF28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 28) = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset;
    *(v0 + 29) = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset;
    v3 = *(Strong + v2);
    *(v0 + 30) = v3;
    v4 = *(v0 + 25);
    if (v3)
    {
      v3;

      v5 = swift_task_alloc();
      *(v0 + 31) = v5;
      *v5 = v0;
      v5[1] = sub_10053C3B0;
      v6 = *(v0 + 15);
      v7 = *(v0 + 16);
      v8 = v0[13];
      v9 = v0[14];

      return sub_1001B5128(v4, &protocol witness table for MainActor, v6, v7, v8, v9);
    }

    v32 = *(v0 + 28);
    v11 = *(v0 + 22);
    v12 = *(v0 + 23);
    v13 = *(v0 + 20);
    v33 = *(v0 + 21);
    v34 = *(v0 + 29);
    v14 = *(v0 + 18);
    v15 = *(v0 + 19);
    sub_1000065A8(0, &qword_100AD6210);
    v31 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 6) = sub_10053FE24;
    *(v0 + 7) = v16;
    *(v0 + 2) = _NSConcreteStackBlock;
    *(v0 + 3) = 1107296256;
    *(v0 + 4) = sub_100006C7C;
    *(v0 + 5) = &unk_100A728B8;
    v17 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    *(v0 + 11) = _swiftEmptyArrayStorage;
    sub_10053FB5C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v15 + 8))(v13, v14);
    (*(v11 + 8))(v12, v33);

    v18 = *(v32 + v34);
    if (v18)
    {
      v19 = v18;
      v20 = sub_10011A350();

      v21 = *(v0 + 28);
      if ((v20 & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = *(v0 + 28);
        if (!v22)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

        v24 = v22;
        v25 = *(v0 + 17);
        v26 = type metadata accessor for TaskPriority();
        (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
        v27 = v24;
        v28 = static MainActor.shared.getter();
        v29 = swift_allocObject();
        v29[2] = v28;
        v29[3] = &protocol witness table for MainActor;
        v29[4] = v27;
        sub_1003E9BBC(0, 0, v25, &unk_10095CAC8, v29);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_6;
      }
    }

    v21 = *(v0 + 28);
    goto LABEL_13;
  }

LABEL_6:

LABEL_14:

  v30 = *(v0 + 1);

  return v30();
}

uint64_t sub_10053C3B0()
{
  v1 = *v0;
  v2 = *(*v0 + 240);

  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return _swift_task_switch(sub_10053C50C, v4, v3);
}

uint64_t sub_10053C50C()
{

  v1 = v0[23];
  v22 = v0[28];
  v23 = v0[22];
  v2 = v0[20];
  v24 = v0[21];
  v25 = v0[29];
  v3 = v0[18];
  v4 = v0[19];
  sub_1000065A8(0, &qword_100AD6210);
  v21 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_10053FE24;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A728B8;
  v6 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[11] = _swiftEmptyArrayStorage;
  sub_10053FB5C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v6);

  (*(v4 + 8))(v2, v3);
  (*(v23 + 8))(v1, v24);

  v7 = *(v22 + v25);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = sub_10011A350();

  v10 = v0[28];
  if ((v9 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_6:
    v10 = v0[28];
    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = v0[28];
  if (Strong)
  {
    v13 = Strong;
    v14 = v0[17];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = v13;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    sub_1003E9BBC(0, 0, v14, &unk_10095CAC8, v18);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_8:

  v19 = v0[1];

  return v19();
}

id sub_10053C8AC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 text];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v20[0] = v11;
  v20[1] = v13;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000777B4();
  v14 = StringProtocol.trimmingCharacters(in:)();
  v16 = v15;
  (*(v5 + 8))(v8, v4);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = 1;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  return [*(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_saveAction) setEnabled:v18];
}

void sub_10053CA90(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation);
  if (v6)
  {
    v7 = (v6 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID);
    v8 = v7[1];
    if (v8)
    {
      v9 = *v7;
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v12 = a1;
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v11;
      v14[5] = v9;
      v14[6] = v8;
      v14[7] = v12;

      sub_1003E9628(0, 0, v5, &unk_10095CAA8, v14);
    }
  }
}

uint64_t sub_10053CC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1000F24EC(&qword_100AD5170);
  v7[16] = swift_task_alloc();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = type metadata accessor for MainActor();
  v7[24] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[25] = v11;
  v7[26] = v10;

  return _swift_task_switch(sub_10053CDC4, v11, v10);
}

uint64_t sub_10053CDC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset;
    v0[28] = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset;
    v3 = *(Strong + v2);
    v0[29] = v3;
    v4 = v0[24];
    if (v3)
    {
      v3;

      v5 = swift_task_alloc();
      v0[30] = v5;
      *v5 = v0;
      v5[1] = sub_10053D24C;
      v6 = v0[14];
      v7 = v0[15];
      v8 = v0[13];

      return sub_1001B3EE4(v4, &protocol witness table for MainActor, v8, v6, v7);
    }

    v31 = v0[27];
    v10 = v0[21];
    v11 = v0[22];
    v12 = v0[19];
    v32 = v0[20];
    v33 = v0[28];
    v13 = v0[17];
    v14 = v0[18];
    sub_1000065A8(0, &qword_100AD6210);
    v30 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[6] = sub_10053FE70;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006C7C;
    v0[5] = &unk_100A727A0;
    v16 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_10053FB5C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v11, v32);

    v17 = *(v31 + v33);
    if (v17)
    {
      v18 = v17;
      v19 = sub_10011A350();

      v20 = v0[27];
      if ((v19 & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = swift_unknownObjectWeakLoadStrong();
        v22 = v0[27];
        if (!v21)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

        v23 = v21;
        v24 = v0[16];
        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
        v26 = v23;
        v27 = static MainActor.shared.getter();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = &protocol witness table for MainActor;
        v28[4] = v26;
        sub_1003E9BBC(0, 0, v24, &unk_10095CAB0, v28);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_6;
      }
    }

    v20 = v0[27];
    goto LABEL_13;
  }

LABEL_6:

LABEL_14:

  v29 = v0[1];

  return v29();
}

uint64_t sub_10053D24C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_10053D3A8, v4, v3);
}

uint64_t sub_10053D3A8()
{

  v1 = v0[22];
  v22 = v0[27];
  v23 = v0[21];
  v2 = v0[19];
  v24 = v0[20];
  v25 = v0[28];
  v3 = v0[17];
  v4 = v0[18];
  sub_1000065A8(0, &qword_100AD6210);
  v21 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_10053FE70;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A727A0;
  v6 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[11] = _swiftEmptyArrayStorage;
  sub_10053FB5C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v6);

  (*(v4 + 8))(v2, v3);
  (*(v23 + 8))(v1, v24);

  v7 = *(v22 + v25);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = sub_10011A350();

  v10 = v0[27];
  if ((v9 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_6:
    v10 = v0[27];
    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = v0[27];
  if (Strong)
  {
    v13 = Strong;
    v14 = v0[16];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = v13;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    sub_1003E9BBC(0, 0, v14, &unk_10095CAB0, v18);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_8:

  v19 = v0[1];

  return v19();
}

void sub_10053D748()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_10073C1CC();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10053D7BC(char a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v12;
  *(v13 + 32) = a1;
  aBlock[4] = sub_10053FB4C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A72700;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10053FB5C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_10053DAAC(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = 0.2;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = a3;
  aBlock[4] = sub_10053FBA4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A72750;
  v9 = _Block_copy(aBlock);

  [v5 animateWithDuration:0 delay:v9 options:0 animations:v4 completion:0.0];
  _Block_release(v9);
}

void sub_10053DC08(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_captionView);

    v6 = 0.0;
    if (a2)
    {
      v6 = 1.0;
    }

    [v5 setAlpha:v6];
  }
}

void sub_10053DC9C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardView);
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardHeightConstraint;
    v6 = *(v1 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardHeightConstraint);
    if (v6)
    {
      [v6 setActive:0];
    }

    v7 = [v2 heightAnchor];
    v8 = [v4 heightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 multiplier:0.66];

    type metadata accessor for UILayoutPriority(0);
    sub_10053FB5C(&qword_100AF3610, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    LODWORD(v10) = v13;
    [v9 setPriority:v10];
    v11 = *(v1 + v5);
    *(v1 + v5) = v9;
    v12 = v9;

    [v12 setActive:1];
  }
}

id sub_10053DE38(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v10 - 8);
  *&v4[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_fullScreenAssetViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset] = 0;
  v11 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_shadowView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView;
  type metadata accessor for MapAssetView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_captionView;
  *&v4[v14] = [objc_allocWithZone(UIView) init];
  v15 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel;
  *&v4[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeInfoLabel;
  *&v4[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel;
  *&v4[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_editButton;
  sub_1000065A8(0, &qword_100ADFC10);
  static UIButton.Configuration.plain()();
  *&v4[v18] = UIButton.init(configuration:primaryAction:)();
  v19 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_blurEffectView;
  v20 = [objc_opt_self() effectWithStyle:8];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  *&v5[v19] = v21;
  *&v5[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation] = 0;
  v22 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_saveAction;
  *&v5[v22] = [objc_allocWithZone(UIAlertAction) init];
  v24.receiver = v5;
  v24.super_class = type metadata accessor for FullScreenMultiPinMapView();
  return objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10053E104(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v4 - 8);
  *&v1[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_fullScreenAssetViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset] = 0;
  v5 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_shadowView;
  *&v1[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView;
  type metadata accessor for MapAssetView();
  *&v1[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_captionView;
  *&v1[v8] = [objc_allocWithZone(UIView) init];
  v9 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel;
  *&v1[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeInfoLabel;
  *&v1[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel;
  *&v1[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_editButton;
  sub_1000065A8(0, &qword_100ADFC10);
  static UIButton.Configuration.plain()();
  *&v1[v12] = UIButton.init(configuration:primaryAction:)();
  v13 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_blurEffectView;
  v14 = [objc_opt_self() effectWithStyle:8];
  v15 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v14];

  *&v2[v13] = v15;
  *&v2[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_cardHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation] = 0;
  v16 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_saveAction;
  *&v2[v16] = [objc_allocWithZone(UIAlertAction) init];
  v19.receiver = v2;
  v19.super_class = type metadata accessor for FullScreenMultiPinMapView();
  v17 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

  if (v17)
  {
  }

  return v17;
}

id sub_10053E3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMultiPinMapView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10053E53C(void *a1)
{
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_multiPinMapAsset);
  if (v10 && *(v10 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    v11 = v1;

    sub_1000768B4(v9);

    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_100004F84(v9, &unk_100AD5B30);
    }

    else
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_100004F84(v9, &unk_100AD5B30);
      v12 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v4 + 8))(v6, v3);
      if (v12)
      {
        if (*(v12 + 16))
        {
          sub_10032C2F4(a1, v12);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          v21 = *(*(v11 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView) + OBJC_IVAR____TtC7Journal12MapAssetView_mapView);
          if (v21)
          {
            [v21 setRegion:1 animated:{v14, v16, v18, v20}];
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_10053E7B4()
{
  sub_100760CA8(*(v0 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_shadowView), 1);
  v1 = *(v0 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_captionView);
  sub_100760CA8(v1, 1);
}

id sub_10053E818(void *a1, uint64_t a2)
{
  [a1 coordinate];
  v5 = v4;
  v7 = v6;
  v8 = OBJC_IVAR____TtC7Journal12MapAssetView_annotationsDict;
  swift_beginAccess();
  if (!*(*(a2 + v8) + 16) || (result = sub_1003623A4(v5, v7), (v10 & 1) == 0))
  {
    swift_beginAccess();
    v11 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a2 + v8);
    *(a2 + v8) = 0x8000000000000000;
    sub_100221C20(v11, isUniquelyReferenced_nonNull_native, &v13, v5, v7);
    *(a2 + v8) = v13;
    swift_endAccess();
    return [*(a2 + OBJC_IVAR____TtC7Journal12MapAssetView_mapView) addAnnotation:v11];
  }

  return result;
}

void sub_10053E91C(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v122 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = &v108 - v7;
  __chkstk_darwin(v8);
  v123 = &v108 - v9;
  v10 = type metadata accessor for VisitAssetMetadata();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AssetSource();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 presentingViewController];
  if (v19)
  {
    v20 = v19;
    [v19 dismissViewControllerAnimated:1 completion:0];
  }

  (*(v15 + 104))(v18, enum case for AssetSource.locationPicker(_:), v14);
  (*(v11 + 16))(v13, a2, v10);
  v124 = sub_100579F84(v18, v13);
  v21 = v125;
  sub_10053CA90(v124);
  VisitAssetMetadata.placeName.getter();
  v23 = v22;
  VisitAssetMetadata.city.getter();
  v25 = v24;
  VisitAssetMetadata.typeOfPlace.getter();
  v27 = v26;
  VisitAssetMetadata.typeOfPlace.getter();
  if (v28)
  {

    v29 = *(v21 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel);
    if (v23)
    {
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    if (v23)
    {
      v31 = v125;
      v32 = *(v125 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel);
      v33 = String._bridgeToObjectiveC()();
      [v32 setText:v33];

      [*(v31 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel) setText:0];

      goto LABEL_14;
    }

    v30 = 0;
    v29 = *(v125 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel);
  }

  [v29 setText:v30];

  v31 = v125;
  v34 = *(v125 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel);
  if (v25)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  [v34 setText:v35];

LABEL_14:
  v36 = *(v31 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeInfoLabel);
  if (v27)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v36 setText:v37];

  *&v38 = COERCE_DOUBLE(VisitAssetMetadata.latitude.getter());
  if (v39 & 1) != 0 || (v40 = *&v38, *&v41 = COERCE_DOUBLE(VisitAssetMetadata.longitude.getter()), (v42))
  {
  }

  else
  {
    v119 = v41;
    v120 = v40;
    v43 = v40;
    v44 = *&v41;
    v45 = v123;
    VisitAssetMetadata.createdDate.getter();
    v46 = VisitAssetMetadata.typeOfPlace.getter();
    if (v47)
    {
      v117 = v47;
      v118 = v46;
    }

    else
    {
      v48 = VisitAssetMetadata.mapItemData.getter();
      if (v49 >> 60 != 15 && (v50 = v48, v51 = v49, sub_1000065A8(0, &qword_100AD5A90), v52 = static NSCoding<>.create(from:)(), sub_10003A5C8(v50, v51), v52) && (v53 = [v52 _firstLocalizedCategoryName], v52, v53) || (v54 = VisitAssetMetadata.mapItemData.getter(), v55 >> 60 != 15) && (v56 = v54, v57 = v55, sub_1000065A8(0, &qword_100AD5A90), v58 = static NSCoding<>.create(from:)(), sub_10003A5C8(v56, v57), v58) && (v53 = objc_msgSend(v58, "pointOfInterestCategory"), v58, v53))
      {
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v60;
        v118 = v59;
      }

      else
      {
        v117 = 0;
        v118 = 0;
      }
    }

    v61 = VisitAssetMetadata.id.getter();
    v113 = v62;
    v114 = v61;
    v112 = VisitAssetMetadata.placeName.getter();
    v111 = v63;
    v110 = VisitAssetMetadata.city.getter();
    v109 = v64;
    v65 = type metadata accessor for Date();
    v66 = *(*(v65 - 8) + 56);
    v66(v121, 1, 1, v65);
    sub_100088AC8(v45, v122);
    v115 = sub_100579A18();
    v116 = type metadata accessor for StyledMKPointAnnotation();
    v67 = objc_allocWithZone(v116);
    v68 = &v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID];
    *v68 = 0;
    v68[1] = 0;
    v69 = &v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName];
    *v69 = 0;
    v69[1] = 0;
    v70 = &v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_city];
    *v70 = 0;
    v70[1] = 0;
    v71 = &v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_typeOfPlace];
    *v71 = 0;
    v71[1] = 0;
    v72 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime;
    v66(&v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime], 1, 1, v65);
    v73 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate;
    v66(&v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate], 1, 1, v65);
    v74 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes;
    *&v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes] = 0;
    v75 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds;
    *&v67[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds] = 0;
    v76 = v113;
    *v68 = v114;
    v68[1] = v76;
    v77 = v111;
    *v69 = v112;
    v69[1] = v77;
    v78 = v109;
    *v70 = v110;
    v70[1] = v78;
    v79 = v117;
    *v71 = v118;
    v71[1] = v79;

    swift_beginAccess();
    v80 = v121;
    sub_100221D8C(v121, &v67[v72]);
    swift_endAccess();
    swift_beginAccess();
    v81 = &v67[v73];
    v82 = v122;
    sub_100221D8C(v122, v81);
    swift_endAccess();
    v83 = *&v67[v74];
    v84 = v115;
    *&v67[v74] = v115;
    v85 = v84;

    *&v67[v75] = &_swiftEmptySetSingleton;

    v126.receiver = v67;
    v126.super_class = v116;
    v86 = objc_msgSendSuper2(&v126, "init");
    [v86 setCoordinate:{v43, v44}];

    sub_100004F84(v82, &unk_100AD4790);
    sub_100004F84(v80, &unk_100AD4790);
    v87 = OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation;
    v88 = v125;
    v89 = *(v125 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation);
    if (v89)
    {
      [v89 coordinate];
      sub_100220F10(v90, v91);
    }

    v92 = *(v88 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView);
    v93 = OBJC_IVAR____TtC7Journal12MapAssetView_locations;
    v94 = *(v92 + OBJC_IVAR____TtC7Journal12MapAssetView_locations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v92 + v93) = v94;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v94 = sub_10007AF8C(0, *(v94 + 2) + 1, 1, v94);
      *(v92 + v93) = v94;
    }

    v96 = v123;
    v98 = *(v94 + 2);
    v97 = *(v94 + 3);
    if (v98 >= v97 >> 1)
    {
      v94 = sub_10007AF8C((v97 > 1), v98 + 1, 1, v94);
    }

    *(v94 + 2) = v98 + 1;
    v99 = &v94[16 * v98];
    v100 = v119;
    *(v99 + 4) = v120;
    *(v99 + 5) = v100;
    *(v92 + v93) = v94;
    sub_100220B68();
    v101 = v86;
    sub_10053E818(v101, v92);

    v102 = *(v125 + v87);
    if (v102)
    {
      v103 = v102;
      [v103 coordinate];
      v105 = v104;
      v107 = v106;
      swift_beginAccess();
      sub_100651E30(v105, v107);
      swift_endAccess();
      swift_unknownObjectRelease();
      [*(v92 + OBJC_IVAR____TtC7Journal12MapAssetView_mapView) removeAnnotation:v103];
    }

    sub_100004F84(v96, &unk_100AD4790);
    *(v92 + OBJC_IVAR____TtC7Journal12MapAssetView_newReplacementAnnotation) = v101;
    swift_unknownObjectRelease();
  }
}

id sub_10053F2AC(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 annotation];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for StyledMKPointAnnotation();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v57 = v11;
      v16 = *(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation);
      *(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_currentSelectedAnnotation) = v14;
      v60 = v13;
      swift_unknownObjectRetain();

      v17 = (v15 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_typeOfPlace);
      v18 = *(v15 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_typeOfPlace + 8);
      v58 = v8;
      v59 = v7;
      if (v18)
      {

        v19 = String._bridgeToObjectiveC()();
        v20 = sub_1000A0F34(v19);
        v22 = v21;

        if (v22)
        {
          v56 = v20;
          goto LABEL_16;
        }

        v22 = v17[1];
      }

      else
      {
        v22 = 0;
      }

      v56 = *v17;

LABEL_16:
      v26 = *(v15 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName + 8);
      v27 = *(v15 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_city + 8);
      if (v17[1])
      {
        v28 = *(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel);
        if (v26)
        {

          v29 = String._bridgeToObjectiveC()();

LABEL_23:
          v32 = v59;
          [v28 setText:{v29, v56}];

          v33 = *(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel);
          if (v27)
          {
            v34 = String._bridgeToObjectiveC()();
          }

          else
          {
            v34 = 0;
          }

          [v33 setText:v34];

          goto LABEL_27;
        }
      }

      else
      {
        if (v26)
        {
          v30 = *(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel);

          v31 = String._bridgeToObjectiveC()();
          [v30 setText:v31];

          [*(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeAddressLabel) setText:0];

          v32 = v59;
LABEL_27:
          v35 = *(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeInfoLabel);
          if (v22)
          {
            v36 = String._bridgeToObjectiveC()();
          }

          else
          {
            v36 = 0;
          }

          [v35 setText:{v36, v56}];

          v37 = *(v15 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID + 8);
          v38 = v58;
          if (v37)
          {
            v39 = *(v15 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID);
            if (swift_unknownObjectWeakLoadStrong())
            {
              Strong = swift_unknownObjectWeakLoadStrong();

              swift_unknownObjectRelease();
              if (Strong)
              {
                v41 = (Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin);
                *v41 = v39;
                v41[1] = v37;
                swift_unknownObjectRelease();
              }
            }
          }

          v42 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime;
          swift_beginAccess();
          sub_100088AC8(v15 + v42, v6);
          if ((*(v38 + 48))(v6, 1, v32) == 1)
          {
            sub_100004F84(v6, &unk_100AD4790);
          }

          else
          {
            v43 = v57;
            (*(v38 + 32))(v57, v6, v32);
            sub_10053FAF8();
            Date.formatted<A>(_:)();
            v45 = v62;
            v44 = v63;
            v46 = [v35 text];
            if (v46)
            {

              v47 = [v35 text];
              if (v47)
              {
                v48 = v47;
                v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v51 = v50;

                v62 = v49;
                v63 = v51;
                v61._countAndFlagsBits = 548913696;
                v61._object = 0xA400000000000000;
                v52._countAndFlagsBits = v45;
                v52._object = v44;
                String.append(_:)(v52);

                String.append(_:)(v61);

                if (v63)
                {
                  v53 = String._bridgeToObjectiveC()();
                }

                else
                {
                  v53 = 0;
                }

                v55 = v57;
                [v35 setText:v53];

                (*(v38 + 8))(v55, v32);
              }

              else
              {

                [v35 setText:0];
                (*(v38 + 8))(v57, v32);
              }
            }

            else
            {
              v54 = String._bridgeToObjectiveC()();

              [v35 setText:v54];

              (*(v38 + 8))(v43, v32);
            }
          }

          [*(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_blurEffectView) setHidden:0];
          [*(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_editButton) setHidden:0];
          sub_10053D7BC(1, 1);
          [*(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_mapView) bringSubviewToFront:*(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_captionView)];
          return swift_unknownObjectRelease();
        }

        v28 = *(v2 + OBJC_IVAR____TtC7Journal25FullScreenMultiPinMapView_placeNameLabel);
      }

      v29 = 0;
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
  }

  result = [a1 annotation];
  if (result)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      sub_10053D7BC(0, 1);
      sub_10053E53C(v25);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10053F9D8(void *a1)
{
  v1 = [a1 selectedAnnotations];
  sub_1000F24EC(&unk_100AD91C0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    sub_10053D7BC(0, 1);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      result = swift_unknownObjectRelease();
      if (Strong)
      {
        v6 = (Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin);
        *v6 = 0;
        v6[1] = 0;
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

unint64_t sub_10053FAF8()
{
  result = qword_100AE8890;
  if (!qword_100AE8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8890);
  }

  return result;
}

uint64_t sub_10053FB5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053FBB0(uint64_t a1)
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
  v10[1] = sub_100032EC8;

  return sub_10053CC34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10053FC84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1004E32C0(a1, v4, v5, v6);
}

uint64_t sub_10053FD48(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v10 = *(v1 + 7);
  v9 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032ECC;

  return sub_10053BD94(v7, v8, a1, v4, v5, v6, v10, v9);
}

unint64_t sub_10053FE90()
{
  result = qword_100AE88E0;
  if (!qword_100AE88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE88E0);
  }

  return result;
}

unint64_t sub_10053FEE8()
{
  result = qword_100AE88E8;
  if (!qword_100AE88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE88E8);
  }

  return result;
}

uint64_t sub_100540044()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE88C8);
  sub_10000617C(v0, qword_100AE88C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005401D4()
{
  swift_getKeyPath();
  sub_100054264();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v1 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_1000F24EC(&unk_100AD4780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100941040;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;

  v6 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1005403A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = sub_1000F24EC(&qword_100AE89D8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AE89E0);
  __chkstk_darwin(v3);
  v4 = sub_1000F24EC(&qword_100AE89C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_100054264();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20657461657243;
  v11._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1000F24EC(&qword_100AE89E8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0x206874697720;
  v12._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_1000F24EC(&qword_100AE89F0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10000B58C(&qword_100AE89C8, &qword_100AE89C0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v10, v4);
}

uint64_t sub_1005406D8()
{
  swift_getKeyPath();
  sub_100054264();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v1 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941830;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;

  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100540848(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = type metadata accessor for JournalEntity();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v2[28] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE8938);
  v2[29] = swift_task_alloc();
  v3 = type metadata accessor for IntentSystemContext.Kind();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = sub_1000F24EC(&qword_100AE8990);
  v2[34] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE8998);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for IntentSystemContext();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE82A8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v5 = type metadata accessor for AttributedString.Index();
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v6 = type metadata accessor for AttributedString.CharacterView();
  v2[47] = v6;
  v2[48] = *(v6 - 8);
  v2[49] = swift_task_alloc();
  v7 = type metadata accessor for AttributedString();
  v2[50] = v7;
  v2[51] = *(v7 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[54] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[55] = v9;
  v2[56] = v8;

  return _swift_task_switch(sub_100540C4C, v9, v8);
}

uint64_t sub_100540C4C()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 80);

    v3 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      goto LABEL_7;
    }
  }

  v4 = *(v0 + 424);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 368);
  v64 = *(v0 + 376);
  v65 = *(v0 + 384);
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  v11 = *(v0 + 344);
  IntentParameter.wrappedValue.getter();
  AttributedString.characters.getter();
  (*(v5 + 8))(v4, v6);
  sub_1005429D0(&qword_100AE5028, &type metadata accessor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  sub_1005429D0(&qword_100AE5010, &type metadata accessor for AttributedString.Index);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v9 + 8);
  v13(v10, v11);
  v13(v8, v11);
  (*(v65 + 8))(v7, v64);
  if ((v12 & 1) == 0 || (IntentParameter.wrappedValue.getter(), v14 = *(*(v0 + 168) + 16), , v14))
  {
LABEL_7:
    v15 = 0;
  }

  else
  {
    v59 = *(v0 + 336);
    IntentParameter.wrappedValue.getter();
    v60 = type metadata accessor for PlaceDescriptor();
    v15 = (*(*(v60 - 8) + 48))(v59, 1, v60) == 1;
    sub_100004F84(v59, &qword_100AE82A8);
  }

  if (qword_100ACFF40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  *(v0 + 456) = sub_10000617C(v16, qword_100AE88C8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v17, v18, "entry.isBlankEntry(): %{BOOL}d", v19, 8u);
  }

  v66 = v15;
  v20 = *(v0 + 312);
  v21 = *(v0 + 320);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 272);
  v61 = *(v0 + 304);
  v62 = *(v0 + 264);
  v26 = *(v0 + 240);
  v25 = *(v0 + 248);
  v27 = *(v0 + 184);

  v28 = *v27;
  v29 = v27[1];
  v30 = v27[3];
  *(v0 + 48) = v27[2];
  *(v0 + 64) = v30;
  *(v0 + 16) = v28;
  *(v0 + 32) = v29;
  sub_100054264();
  AppIntent.systemContext.getter();
  IntentSystemContext.kind.getter();
  (*(v20 + 8))(v21, v61);
  (*(v25 + 104))(v23, enum case for IntentSystemContext.Kind.userShortcut(_:), v26);
  (*(v25 + 56))(v23, 0, 1, v26);
  v31 = *(v62 + 48);
  sub_1005427F8(v22, v24);
  sub_1005427F8(v23, v24 + v31);
  v32 = *(v25 + 48);
  if (v32(v24, 1, v26) != 1)
  {
    v36 = *(v0 + 240);
    sub_1005427F8(*(v0 + 272), *(v0 + 280));
    v37 = v32(v24 + v31, 1, v36);
    v39 = *(v0 + 288);
    v38 = *(v0 + 296);
    v40 = *(v0 + 280);
    if (v37 != 1)
    {
      v63 = *(v0 + 272);
      v43 = *(v0 + 248);
      v44 = *(v0 + 256);
      v45 = *(v0 + 240);
      (*(v43 + 32))(v44, v24 + v31, v45);
      sub_1005429D0(&qword_100AE89B8, &type metadata accessor for IntentSystemContext.Kind);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v43 + 8);
      v46(v44, v45);
      sub_100004F84(v39, &qword_100AE8998);
      sub_100004F84(v38, &qword_100AE8998);
      v46(v40, v45);
      sub_100004F84(v63, &qword_100AE8998);
      goto LABEL_19;
    }

    v41 = *(v0 + 240);
    v42 = *(v0 + 248);
    sub_100004F84(*(v0 + 288), &qword_100AE8998);
    sub_100004F84(v38, &qword_100AE8998);
    (*(v42 + 8))(v40, v41);
    goto LABEL_17;
  }

  v33 = *(v0 + 296);
  v34 = *(v0 + 240);
  sub_100004F84(*(v0 + 288), &qword_100AE8998);
  sub_100004F84(v33, &qword_100AE8998);
  if (v32(v24 + v31, 1, v34) != 1)
  {
LABEL_17:
    sub_100004F84(*(v0 + 272), &qword_100AE8990);
    v35 = 0;
    goto LABEL_19;
  }

  sub_100004F84(*(v0 + 272), &qword_100AE8998);
  v35 = 1;
LABEL_19:
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 67109120;
    *(v49 + 4) = v35 & 1;
    _os_log_impl(&_mh_execute_header, v47, v48, "shouldPromptForContents: %{BOOL}d", v49, 8u);
  }

  if (!v66)
  {
    goto LABEL_32;
  }

  if (v35)
  {
    v50 = *(v0 + 232);

    IntentParameter.projectedValue.getter();
    v51 = type metadata accessor for IntentDialog();
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    type metadata accessor for AppIntentError();
    sub_1005429D0(&qword_100AE89B0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_100004F84(v50, &qword_100AE8938);
    goto LABEL_29;
  }

  if (qword_100ACFED0 != -1)
  {
    swift_once();
  }

  v52 = qword_100B2FA60;
  if (!swift_unknownObjectWeakLoadStrong() || (v53 = *(v52 + 24), ObjectType = swift_getObjectType(), LOBYTE(v53) = sub_100885D80(ObjectType, v53), swift_unknownObjectRelease(), (v53 & 1) == 0))
  {
LABEL_32:
    IntentParameter.wrappedValue.getter();
    *(v0 + 464) = *(v0 + 104);
    IntentParameter.wrappedValue.getter();
    IntentParameter.wrappedValue.getter();
    *(v0 + 472) = *(v0 + 128);
    IntentParameter.wrappedValue.getter();
    IntentParameter.wrappedValue.getter();
    IntentParameter.wrappedValue.getter();
    IntentParameter.wrappedValue.getter();
    *(v0 + 480) = *(v0 + 120);
    AppDependency.wrappedValue.getter();
    *(v0 + 488) = *(v0 + 136);
    v58 = swift_task_alloc();
    *(v0 + 496) = v58;
    *v58 = v0;
    v58[1] = sub_1005416CC;

    JUMPOUT(0x10068807CLL);
  }

  sub_1001928AC();
  swift_allocError();
  *v55 = 4;
LABEL_29:
  swift_willThrow();

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1005416CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[63] = a1;
  v4[64] = v1;

  v5 = v3[52];
  v6 = v3[51];
  v7 = v3[50];
  v8 = v3[41];
  v9 = v3[28];

  sub_100004F84(v8, &qword_100AE82A8);
  sub_100004F84(v9, &unk_100AD4790);
  (*(v6 + 8))(v5, v7);
  v10 = v3[56];
  v11 = v3[55];
  if (v14)
  {
    v12 = sub_100541B0C;
  }

  else
  {
    v12 = sub_100541948;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100541948()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[63];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[20] = v3;
    type metadata accessor for EntryViewModel();

    v6 = String.init<A>(reflecting:)();
    v8 = sub_100008458(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "entry: %s", v4, 0xCu);
    sub_10000BA7C(v5);
  }

  v9 = v0[54];

  v10 = swift_task_alloc();
  v0[65] = v10;
  *v10 = v0;
  v10[1] = sub_100541C60;

  return sub_10077E5EC(v9, &protocol witness table for MainActor);
}

uint64_t sub_100541B0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100541C60()
{
  v1 = *v0;

  v2 = *(v1 + 448);
  v3 = *(v1 + 440);

  return _swift_task_switch(sub_100541DA4, v3, v2);
}

uint64_t sub_100541DA4()
{
  v1 = v0[54];

  v2 = swift_task_alloc();
  v0[66] = v2;
  *v2 = v0;
  v2[1] = sub_100541E60;
  v3 = v0[27];

  return sub_1006781AC(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100541E60()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = *(v2 + 440);
    v4 = *(v2 + 448);
    v5 = sub_1005421B0;
  }

  else
  {

    v3 = *(v2 + 440);
    v4 = *(v2 + 448);
    v5 = sub_100541F7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100541F7C()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];

  sub_100542868(v2, v1);
  v4 = sub_1007B5150();
  v0[18] = v4;
  sub_100542868(v1, v3);
  sub_1005428CC();
  dispatch thunk of OpenIntent.target.setter();
  sub_100542920(v1);
  v0[19] = v4;
  sub_1005429D0(&qword_100AD9CC0, type metadata accessor for JournalEntity);
  sub_10054297C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100542920(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005421B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100542368(uint64_t a1)
{
  v2 = sub_100542A18();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_1005423BC()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_1000F24EC(&qword_100AE89C0);
  sub_10000B58C(&qword_100AE89C8, &qword_100AE89C0);
  sub_10000B58C(&qword_100AE89D0, &qword_100AE8978);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_100542580(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_10054262C;

  return sub_100540848(a1);
}

uint64_t sub_10054262C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100542720@<D0>(_OWORD *a1@<X8>)
{
  sub_10004C238(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_100542760(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005427A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005427F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE8998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100542868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005428CC()
{
  result = qword_100AE89A0;
  if (!qword_100AE89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE89A0);
  }

  return result;
}

uint64_t sub_100542920(uint64_t a1)
{
  v2 = type metadata accessor for JournalEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10054297C()
{
  result = qword_100AE89A8;
  if (!qword_100AE89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE89A8);
  }

  return result;
}

uint64_t sub_1005429D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100542A18()
{
  result = qword_100AE89F8;
  if (!qword_100AE89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE89F8);
  }

  return result;
}

void sub_100542AE4()
{
  if (!qword_100AE8A68)
  {
    type metadata accessor for SidebarInsightsBrickViewModel.MetricType(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE8A68);
    }
  }
}

__n128 sub_100542B58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = sub_1000F24EC(&qword_100AE1670);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_1000F24EC(&qword_100AE8C70);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_1000F24EC(&qword_100AE8C78);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = (v3 + *(type metadata accessor for InsightsSidebarMetricExtraProminent(0) + 20));
  v16 = *v15;
  v17 = sub_1000F24EC(&qword_100AE8C80);
  v18 = *(*(v17 - 8) + 16);
  v19 = *(v15 + 1);
  v41 = *(v15 + 3);
  v42 = v19;
  v18(v10, a1, v17);
  v20 = &v10[*(sub_1000F24EC(&qword_100AE8C88) + 36)];
  *v20 = v16;
  v21 = v42;
  *(v20 + 24) = v41;
  *(v20 + 8) = v21;
  type metadata accessor for SidebarBrickLayoutMetrics();

  sub_1000F24EC(&qword_100AD2080);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.bold.getter();
  v22 = type metadata accessor for Font.Design();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = static Font.system(size:weight:design:)();
  sub_100004F84(v7, &qword_100AE1670);
  KeyPath = swift_getKeyPath();
  v25 = &v10[*(v8 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_10054487C();
  View.tracking(_:)();
  sub_100004F84(v10, &qword_100AE8C70);
  v26 = swift_getKeyPath();
  v27 = &v14[*(sub_1000F24EC(&qword_100AE8CB8) + 36)];
  *v27 = v26;
  *(v27 + 1) = 1;
  v27[16] = 0;
  v28 = swift_getKeyPath();
  v29 = &v14[*(sub_1000F24EC(&qword_100AE8CC0) + 36)];
  *v29 = v28;
  v29[1] = 0x3FB999999999999ALL;
  v30 = &v14[*(sub_1000F24EC(&qword_100AE8CC8) + 36)];
  sub_1000F24EC(&qword_100AD21B0);
  static ContentTransition.numericText(countsDown:)();
  *v30 = swift_getKeyPath();
  LOBYTE(v30) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v31 = &v14[*(v12 + 44)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v43;
  sub_1000D4028(v14, v43);
  v37 = v36 + *(sub_1000F24EC(&qword_100AE8CD0) + 36);
  v38 = v49;
  *(v37 + 64) = v48;
  *(v37 + 80) = v38;
  *(v37 + 96) = v50;
  v39 = v45;
  *v37 = v44;
  *(v37 + 16) = v39;
  result = v47;
  *(v37 + 32) = v46;
  *(v37 + 48) = result;
  return result;
}

uint64_t sub_10054304C@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for LabelStyleConfiguration.Title();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for LabelStyleConfiguration.Icon();
  v27 = *(v8 - 8);
  v9 = v27;
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  LabelStyleConfiguration.icon.getter();
  LabelStyleConfiguration.title.getter();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(sub_1000F24EC(&qword_100AE8AA0) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_1005432DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = sub_1000F24EC(&qword_100AE8A98);
  return sub_10054304C((a1 + *(v4 + 44)));
}

uint64_t sub_10054333C@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = sub_1000F24EC(&qword_100AE4FD0);
  __chkstk_darwin(v2 - 8);
  v92 = &v75 - v3;
  v93 = type metadata accessor for AttributedString.CharacterView();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000F24EC(&qword_100AE8C10);
  __chkstk_darwin(v89);
  v88 = &v75 - v7;
  v86 = sub_1000F24EC(&qword_100AE8C18);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v75 - v8;
  v97 = type metadata accessor for Font.Leading();
  v79 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE5F40);
  v76 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v75 - v11;
  v13 = sub_1000F24EC(&qword_100AE8C20);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v75 = type metadata accessor for AttributeContainer();
  v17 = *(v75 - 8);
  __chkstk_darwin(v75);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v77 = &v75 - v21;
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  v78 = type metadata accessor for AttributedString();
  v100 = *(v78 - 8);
  __chkstk_darwin(v78);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v26;
  __chkstk_darwin(v27);
  v98 = &v75 - v28;
  v85 = v1;
  sub_1007ED9C0();
  v99 = Image.init(_internalSystemName:)();
  sub_1005B07B8(v26);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_100544528();
  static AttributeContainer.subscript.getter();

  LOBYTE(v108) = 1;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v14 + 8))(v16, v13);
  v102 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1004C6AA8();
  static AttributeContainer.subscript.getter();

  static Font.footnote.getter();
  v82 = enum case for Font.Leading.tight(_:);
  v29 = v79;
  v30 = *(v79 + 104);
  v80 = v79 + 104;
  v81 = v30;
  v32 = v96;
  v31 = v97;
  v30(v96);
  v33 = Font.leading(_:)();

  v79 = *(v29 + 8);
  (v79)(v32, v31);
  v108 = v33;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v76 + 8))(v12, v10);
  v101 = swift_getKeyPath();
  swift_getKeyPath();
  sub_10054457C();
  v34 = v84;
  AttributeContainer.subscript.getter();

  v35 = *(v17 + 8);
  v36 = v75;
  v35(v19, v75);
  v37 = [objc_opt_self() tertiaryLabelColor];
  v108 = v37;
  v38 = v77;
  v39 = v86;
  AttributeContainer.Builder.callAsFunction(_:)();

  v87[1](v34, v39);
  v86 = sub_100544324(&qword_100AE8C30, &type metadata accessor for AttributedString);
  v40 = v78;
  v41 = v95;
  AttributedStringProtocol.replacingAttributes(_:with:)();
  v35(v38, v36);
  v35(v24, v36);
  v42 = *(v100 + 8);
  v100 += 8;
  v87 = v42;
  (v42)(v41, v40);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v44._countAndFlagsBits = 32;
  v44._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
  LocalizedStringKey.init(stringInterpolation:)();
  v46 = Text.init(_:tableName:bundle:comment:)();
  v48 = v47;
  LOBYTE(v36) = v49;
  v51 = v50;
  v52 = *(sub_1000F24EC(&qword_100AE8C38) + 36);
  v53 = enum case for BlendMode.plusLighter(_:);
  v54 = type metadata accessor for BlendMode();
  v55 = v88;
  (*(*(v54 - 8) + 104))(&v88[v52], v53, v54);
  v56 = v55;
  *v55 = v46;
  *(v55 + 1) = v48;
  v55[16] = v36 & 1;
  *(v55 + 3) = v51;
  type metadata accessor for InsightsDetailsView(0);
  type metadata accessor for SidebarBrickLayoutMetrics();
  v57 = v96;
  v58 = v97;
  v81(v96, v82, v97);
  v59 = Font.leading(_:)();
  (v79)(v57, v58);
  v60 = swift_getKeyPath();
  v61 = &v55[*(sub_1000F24EC(&qword_100AE8C40) + 36)];
  *v61 = v60;
  v61[1] = v59;
  v62 = &v55[*(sub_1000F24EC(&qword_100AE8C48) + 36)];
  v63 = *(sub_1000F24EC(&qword_100AD21F8) + 28);
  v64 = enum case for Image.Scale.small(_:);
  v65 = type metadata accessor for Image.Scale();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = swift_getKeyPath();
  v66 = &v55[*(v89 + 36)];
  sub_1000F24EC(&qword_100AD21B0);
  static ContentTransition.numericText(countsDown:)();
  *v66 = swift_getKeyPath();
  v67 = v95;
  sub_1005B07B8(v95);
  v68 = v90;
  dispatch thunk of AttributedStringProtocol.characters.getter();
  sub_1006C6A60(v92);
  (*(v91 + 8))(v68, v93);
  v108 = String.init(_:)();
  v109 = v69;
  v106 = 10;
  v107 = 0xE100000000000000;
  v104 = 32;
  v105 = 0xE100000000000000;
  sub_1000777B4();
  v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v72 = v71;
  v73 = v87;
  (v87)(v67, v40);

  v108 = v70;
  v109 = v72;
  sub_1005445D0();
  View.accessibilityLabel<A>(_:)();

  sub_100004F84(v56, &qword_100AE8C10);
  return (v73)(v98, v40);
}

uint64_t sub_100543FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100471100(a1, a2);
  v3 = type metadata accessor for InsightsDetailsView(0);
  return sub_100740178(a2 + *(v3 + 20));
}

uint64_t sub_100544004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v14 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE8AA8);
  __chkstk_darwin(v7);
  v9 = v13 - v8;
  v10 = static HorizontalAlignment.leading.getter();
  v11 = *(v2 + *(a1 + 20) + 48);
  *v9 = v10;
  *(v9 + 1) = v11;
  v9[16] = 0;
  sub_1000F24EC(&qword_100AE8AB0);
  v15 = *v2;

  sub_1000F24EC(&qword_100AE8AB8);
  type metadata accessor for UUID();
  type metadata accessor for InsightsDetailsView(0);
  sub_10000B58C(&qword_100AE8AC0, &qword_100AE8AB8);
  sub_100544324(&qword_100AE8AC8, type metadata accessor for InsightsDetailsView);
  sub_100544324(&qword_100AE8AD0, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  ForEach<>.init(_:content:)();
  static AccessibilityChildBehavior.combine.getter();
  sub_10000B58C(&qword_100AE8AD8, &qword_100AE8AA8);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v14);
  return sub_100004F84(v9, &qword_100AE8AA8);
}

uint64_t sub_100544324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005443AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for SidebarBrickLayoutMetrics();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10054447C()
{
  result = type metadata accessor for SidebarBrickLayoutMetrics();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100544528()
{
  result = qword_100AE8C28;
  if (!qword_100AE8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8C28);
  }

  return result;
}

unint64_t sub_10054457C()
{
  result = qword_100AF3640;
  if (!qword_100AF3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3640);
  }

  return result;
}

unint64_t sub_1005445D0()
{
  result = qword_100AE8C50;
  if (!qword_100AE8C50)
  {
    sub_1000F2A18(&qword_100AE8C10);
    sub_100544688();
    sub_10000B58C(&qword_100AD21A8, &qword_100AD21B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8C50);
  }

  return result;
}

unint64_t sub_100544688()
{
  result = qword_100AE8C58;
  if (!qword_100AE8C58)
  {
    sub_1000F2A18(&qword_100AE8C48);
    sub_100544740();
    sub_10000B58C(&qword_100AD21F0, &qword_100AD21F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8C58);
  }

  return result;
}

unint64_t sub_100544740()
{
  result = qword_100AE8C60;
  if (!qword_100AE8C60)
  {
    sub_1000F2A18(&qword_100AE8C40);
    sub_1005447F8();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8C60);
  }

  return result;
}

unint64_t sub_1005447F8()
{
  result = qword_100AE8C68;
  if (!qword_100AE8C68)
  {
    sub_1000F2A18(&qword_100AE8C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8C68);
  }

  return result;
}

unint64_t sub_10054487C()
{
  result = qword_100AE8C90;
  if (!qword_100AE8C90)
  {
    sub_1000F2A18(&qword_100AE8C70);
    sub_100544934();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8C90);
  }

  return result;
}

unint64_t sub_100544934()
{
  result = qword_100AE8C98;
  if (!qword_100AE8C98)
  {
    sub_1000F2A18(&qword_100AE8C88);
    sub_10000B58C(&qword_100AE8CA0, &qword_100AE8C80);
    sub_10000B58C(&qword_100AE8CA8, &qword_100AE8CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8C98);
  }

  return result;
}

unint64_t sub_100544A18()
{
  result = qword_100AE8CD8;
  if (!qword_100AE8CD8)
  {
    sub_1000F2A18(&qword_100AE8CE0);
    sub_1005445D0();
    sub_100544324(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8CD8);
  }

  return result;
}

unint64_t sub_100544AD4()
{
  result = qword_100AE8CE8;
  if (!qword_100AE8CE8)
  {
    sub_1000F2A18(&qword_100AE8CD0);
    sub_100544B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8CE8);
  }

  return result;
}

unint64_t sub_100544B60()
{
  result = qword_100AE8CF0;
  if (!qword_100AE8CF0)
  {
    sub_1000F2A18(&qword_100AE8C78);
    sub_100544BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8CF0);
  }

  return result;
}

unint64_t sub_100544BEC()
{
  result = qword_100AE8CF8;
  if (!qword_100AE8CF8)
  {
    sub_1000F2A18(&qword_100AE8CC8);
    sub_100544CA4();
    sub_10000B58C(&qword_100AD21A8, &qword_100AD21B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8CF8);
  }

  return result;
}

unint64_t sub_100544CA4()
{
  result = qword_100AE8D00;
  if (!qword_100AE8D00)
  {
    sub_1000F2A18(&qword_100AE8CC0);
    sub_100544D5C();
    sub_10000B58C(&qword_100ADB5A8, &qword_100ADB5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8D00);
  }

  return result;
}

unint64_t sub_100544D5C()
{
  result = qword_100AE8D08;
  if (!qword_100AE8D08)
  {
    sub_1000F2A18(&qword_100AE8CB8);
    sub_1000F2A18(&qword_100AE8C70);
    sub_10054487C();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8D08);
  }

  return result;
}

id sub_100544E50()
{
  v1 = OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker____lazy_storage___toolPicker;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker____lazy_storage___toolPicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker____lazy_storage___toolPicker);
  }

  else
  {
    v4 = sub_100544EB4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100544EB4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultToolItems];
  sub_1005451A8();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [objc_allocWithZone(PKToolPickerScribbleItem) init];
  if (v3 >> 62 && (result = _CocoaArrayWrapper.endIndex.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_100205140(0, 0, v4);

    v5 = objc_allocWithZone(PKToolPicker);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v5 initWithToolItems:isa];

    [v7 addObserver:a1];
    return v7;
  }

  return result;
}

id sub_100545048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformCanvasToolPicker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005451A8()
{
  result = qword_100AD65B0;
  if (!qword_100AD65B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD65B0);
  }

  return result;
}

id sub_1005451F4(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v223 = (&v206 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v222 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD6030);
  v8 = __chkstk_darwin(v7 - 8);
  v221 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v218 = &v206 - v10;
  v227 = type metadata accessor for ColorResource();
  v229 = *(v227 - 8);
  __chkstk_darwin(v227);
  v226 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v210 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD50C0);
  v16 = __chkstk_darwin(v15 - 8);
  v208 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v212 = (&v206 - v19);
  v20 = __chkstk_darwin(v18);
  v211 = (&v206 - v21);
  v22 = __chkstk_darwin(v20);
  v217 = &v206 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v206 - v25;
  __chkstk_darwin(v24);
  v28 = &v206 - v27;
  v230 = type metadata accessor for MediaViewType();
  v232 = *(v230 - 8);
  v29 = __chkstk_darwin(v230);
  v224 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v206 - v32;
  __chkstk_darwin(v31);
  v231 = &v206 - v34;
  v35 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_colorView;
  type metadata accessor for ThirdPartyMediaColorEffectView();
  *&v1[v35] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView;
  type metadata accessor for ThirdPartyMediaShadowEffectView();
  *&v1[v36] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v37 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetImageView;
  *&v1[v37] = [objc_allocWithZone(UIImageView) init];
  v38 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_labelsStack;
  *&v1[v38] = [objc_allocWithZone(UIStackView) init];
  v39 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleArtistStack;
  *&v1[v39] = [objc_allocWithZone(UIStackView) init];
  v40 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleLabel;
  *&v1[v40] = [objc_allocWithZone(UILabel) init];
  v41 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_artistLabel;
  *&v1[v41] = [objc_allocWithZone(UILabel) init];
  v42 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_categoryLabel;
  *&v1[v42] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_currentSizeConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_mediaAsset] = a1;
  v43 = type metadata accessor for ThirdPartyMediaAssetView();
  v235.receiver = v1;
  v235.super_class = v43;
  v44 = a1;
  v45 = objc_msgSendSuper2(&v235, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v46 = v45;
  v47 = OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata;
  v233 = v44;
  if (!*&v44[OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata])
  {
    v49 = v45;
    goto LABEL_5;
  }

  v48 = v45;

  sub_10025C98C(v28);

  if ((*(v13 + 48))(v28, 1, v12))
  {
    sub_100004F84(v28, &qword_100AD50C0);
LABEL_5:
    (*(v232 + 104))(v231, enum case for MediaViewType.thirdPartyMedia(_:), v230);
    goto LABEL_7;
  }

  v50 = v210;
  (*(v13 + 16))(v210, v28, v12);
  sub_100004F84(v28, &qword_100AD50C0);
  ThirdPartyMediaAssetMetadata.mediaType.getter();
  (*(v13 + 8))(v50, v12);
  (*(v232 + 32))(v231, v33, v230);
LABEL_7:
  v51 = v233;
  [*&v233[OBJC_IVAR____TtC7Journal5Asset_delegates] addObject:v46];
  v52 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_colorView;
  [*&v46[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_colorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v46[v52] setHidden:1];
  v53 = [*&v46[v52] layer];
  [v53 setCornerCurve:kCACornerCurveContinuous];

  v228 = v52;
  v54 = *&v46[v52];
  if (*&v51[v47])
  {
    v55 = v54;

    sub_10025C98C(v26);

    if ((*(v13 + 48))(v26, 1, v12))
    {
      sub_100004F84(v26, &qword_100AD50C0);
    }

    else
    {
      ThirdPartyMediaAssetMetadata.appBackgroundColor.getter();
      sub_100004F84(v26, &qword_100AD50C0);
      if ((v238 & 1) == 0)
      {
        v220 = v236;
        v144 = v237;
        v145 = objc_allocWithZone(UIColor);
        v59 = [v145 initWithRed:*&v220 green:*(&v220 + 1) blue:v144 alpha:1.0];
        goto LABEL_15;
      }
    }
  }

  else
  {
    v56 = v54;
  }

  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0C00 != -1)
  {
    swift_once();
  }

  v57 = v227;
  v58 = sub_10000617C(v227, qword_100B31310);
  v229[2](v226, v58, v57);
  v59 = UIColor.init(resource:)();
LABEL_15:
  v60 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  v234 = v60;
  static UIView.Invalidating.subscript.setter();
  v61 = *&v46[v228];
  v62 = *&v233[v47];
  *&v220 = v12;
  v219 = v13;
  v225 = v47;
  if (!v62)
  {
    v65 = v61;
    goto LABEL_19;
  }

  v63 = v61;

  v64 = v217;
  sub_10025C98C(v217);

  if ((*(v13 + 48))(v64, 1, v12))
  {
    sub_100004F84(v64, &qword_100AD50C0);
LABEL_19:
    v66 = v218;
    v67 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
    goto LABEL_21;
  }

  v66 = v218;
  ThirdPartyMediaAssetMetadata.colorVariant.getter();
  sub_100004F84(v64, &qword_100AD50C0);
LABEL_21:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000082B4(v66, v221, &qword_100AD6030);
  static UIView.Invalidating.subscript.setter();
  sub_100004F84(v66, &qword_100AD6030);
  v68 = v46;
  v69 = v228;
  v70 = *&v46[v228];
  v71 = v68;
  [v71 addSubview:v70];
  v72 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  v73 = *&v71[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  v74 = v46;
  v75 = v71;
  [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
  v215 = v71;
  v214 = v72;
  [v75 addSubview:*&v71[v72]];
  v76 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView;
  [*(v75 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v75 + v76) setHidden:1];
  v77 = [*(v75 + v76) layer];
  [v77 setCornerCurve:kCACornerCurveContinuous];

  v78 = [*(v75 + v76) layer];
  LODWORD(v79) = 1036831949;
  [v78 setShadowOpacity:v79];

  v80 = [*(v75 + v76) layer];
  [v80 shadowOffset];
  [v80 setShadowOffset:?];

  v81 = [*(v75 + v76) layer];
  [v81 setShadowRadius:4.0];

  v82 = [*(v75 + v76) layer];
  [v82 setShadowPathIsBounds:1];

  [v75 addSubview:*(v75 + v76)];
  v83 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetImageView;
  [*(v75 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetImageView) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v75 + v83) setContentMode:2];
  [*(v75 + v83) setIsAccessibilityElement:1];
  v84 = UIAccessibilityTraitImage;
  v85 = *(v75 + v83);
  v86 = [v85 accessibilityTraits];
  if ((v84 & ~v86) != 0)
  {
    v87 = v84;
  }

  else
  {
    v87 = 0;
  }

  [v85 setAccessibilityTraits:v87 | v86];

  v88 = *(v75 + v83);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v89 = String._bridgeToObjectiveC()();

  [v88 setAccessibilityLabel:v89];

  [*(v75 + v83) setAccessibilityIgnoresInvertColors:1];
  v217 = v76;
  v90 = *(*(v75 + v76) + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView);
  v216 = v83;
  [v90 addSubview:*(v75 + v83)];
  v91 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_labelsStack;
  [*(v75 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_labelsStack) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v75 + v91) setAxis:1];
  [*(v75 + v91) setDistribution:3];
  [*(v75 + v91) setAlignment:1];
  v218 = v74;
  [*(*&v74[v69] + OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView) addSubview:*(v75 + v91)];
  v92 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleArtistStack;
  [*(v75 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleArtistStack) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v75 + v92) setAxis:1];
  [*(v75 + v92) setAlignment:1];
  v213 = v91;
  v93 = *(v75 + v91);
  v222 = v92;
  [v93 addArrangedSubview:*(v75 + v92)];
  if (!*&v233[v225])
  {
    v221 = 0;
    v209 = 0;
    v98 = 0;
    v99 = 0;
    goto LABEL_34;
  }

  v94 = v211;
  sub_10025C98C(v211);

  v95 = v219;
  v96 = *(v219 + 48);
  v97 = v220;
  if (v96(v94, 1, v220))
  {
    sub_100004F84(v94, &qword_100AD50C0);
    v209 = 0;
    v221 = 0;
  }

  else
  {
    v100 = v210;
    (*(v95 + 16))(v210, v94, v97);
    sub_100004F84(v94, &qword_100AD50C0);
    v209 = ThirdPartyMediaAssetMetadata.albumName.getter();
    v221 = v101;
    (*(v95 + 8))(v100, v97);
  }

  v102 = v212;
  if (!*&v233[v225])
  {
    goto LABEL_32;
  }

  sub_10025C98C(v102);

  if (v96(v102, 1, v97))
  {
    sub_100004F84(v102, &qword_100AD50C0);
LABEL_32:
    v98 = 0;
    v99 = 0;
    goto LABEL_34;
  }

  v103 = v210;
  (*(v95 + 16))(v210, v102, v97);
  sub_100004F84(v102, &qword_100AD50C0);
  v104 = ThirdPartyMediaAssetMetadata.song.getter();
  v99 = v105;
  v106 = v97;
  v98 = v104;
  (*(v95 + 8))(v103, v106);
LABEL_34:
  v107 = v232;
  v108 = v224;
  v109 = v230;
  v211 = *(v232 + 104);
  (v211)(v224, enum case for MediaViewType.thirdPartyMediaAlbum(_:), v230);
  v110 = static MediaViewType.== infix(_:_:)();
  v111 = *(v107 + 8);
  v232 = v107 + 8;
  v223 = v111;
  v111(v108, v109);
  if (v110)
  {

    v99 = v221;

    v98 = v209;
  }

  v112 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleLabel;
  [*(v75 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v113 = *(v75 + v112);
  v114 = v113;
  if (v99)
  {

    v115 = String._bridgeToObjectiveC()();
  }

  else
  {
    v115 = 0;
  }

  v207 = v98;
  [v113 setText:v115];

  v116 = *(v75 + v112);
  sub_1000065A8(0, &qword_100AD4C70);
  v117 = qword_100AD0D30;
  v118 = v116;
  if (v117 != -1)
  {
    swift_once();
  }

  v119 = v227;
  v120 = sub_10000617C(v227, qword_100B316A0);
  v121 = v229[2];
  v229 += 2;
  v212 = v121;
  v121(v226, v120, v119);
  v122 = UIColor.init(resource:)();
  [v118 setTextColor:v122];

  [*(v75 + v112) setAdjustsFontForContentSizeCategory:1];
  [*&v222[v75] addArrangedSubview:*(v75 + v112)];
  v123 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_artistLabel;
  [*(v75 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_artistLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  if (!*&v233[v225])
  {
    goto LABEL_44;
  }

  v124 = v208;
  sub_10025C98C(v208);
  v125 = v124;

  v126 = v219;
  v127 = v220;
  if ((*(v219 + 48))(v124, 1, v220))
  {
    sub_100004F84(v124, &qword_100AD50C0);
LABEL_44:
    v128 = 0;
    v129 = 0;
    goto LABEL_46;
  }

  v130 = v210;
  (*(v126 + 16))(v210, v125, v127);
  sub_100004F84(v125, &qword_100AD50C0);
  v131 = ThirdPartyMediaAssetMetadata.artistName.getter();
  v132 = v127;
  v128 = v131;
  v129 = v133;
  (*(v126 + 8))(v130, v132);
LABEL_46:
  v134 = v224;
  v135 = v230;
  (v211)(v224, enum case for MediaViewType.thirdPartyMedia(_:), v230);
  v136 = static MediaViewType.== infix(_:_:)();
  v223(v134, v135);
  if (v136)
  {
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    if (v129)
    {
      v138 = HIBYTE(v129) & 0xF;
      if ((v129 & 0x2000000000000000) == 0)
      {
        v138 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (v138)
      {

        goto LABEL_53;
      }
    }

    v146 = *(v75 + v123);
    if (v221)
    {
      v147 = v146;
      v148 = String._bridgeToObjectiveC()();
    }

    else
    {
      v149 = v146;
      v148 = 0;
    }

    v142 = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    v143 = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    [v146 setText:v148];

    goto LABEL_70;
  }

  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  if (!v129)
  {
    if (!v99)
    {
LABEL_61:
      [*(v75 + v123) setHidden:1];
      v142 = (&InsightsPlacesDetailView.ContentViewController + 16);
      v143 = (&InsightsPlacesDetailView.ContentViewController + 16);
      goto LABEL_70;
    }

    v139 = *(v75 + v123);
    v140 = 0;
    goto LABEL_63;
  }

LABEL_53:
  if (v99)
  {
    if (v128 == v207 && v129 == v99)
    {

LABEL_60:

      goto LABEL_61;
    }

    v141 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v141)
    {
      goto LABEL_60;
    }
  }

  v139 = *(v75 + v123);
  v140 = String._bridgeToObjectiveC()();

LABEL_63:
  v142 = (&InsightsPlacesDetailView.ContentViewController + 16);
  v143 = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  [v139 setText:v140];

LABEL_70:
  [*(v75 + v123) p:1 ivar:?lyt[410]];
  [*&v222[v75] v142[465]];
  v150 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_categoryLabel;
  [*(v75 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_categoryLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v151 = *(v75 + v150);
  sub_10054D5EC();
  v152 = String._bridgeToObjectiveC()();

  [v151 v143[420]];

  v153 = qword_100AD0D38;
  v154 = *(v75 + v150);
  if (v153 != -1)
  {
    swift_once();
  }

  v155 = v227;
  v156 = sub_10000617C(v227, qword_100B316B8);
  v212(v226, v156, v155);
  v157 = UIColor.init(resource:)();
  [v154 setTextColor:v157];

  [*(v75 + v150) setNumberOfLines:1];
  [*(v75 + v150) p:1 ivar:?lyt[410]];
  [*(v75 + v213) v142[465]];
  v229 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_10095D400;
  v159 = v215;
  v160 = v214;
  v161 = [*&v215[v214] topAnchor];
  v162 = [v75 topAnchor];

  v163 = [v161 constraintEqualToAnchor:v162];
  *(v158 + 32) = v163;
  v164 = [*&v159[v160] leadingAnchor];
  v165 = [v75 leadingAnchor];

  v166 = [v164 constraintEqualToAnchor:v165];
  *(v158 + 40) = v166;
  v167 = [*&v159[v160] bottomAnchor];
  v168 = [v75 bottomAnchor];

  v169 = [v167 constraintEqualToAnchor:v168];
  *(v158 + 48) = v169;
  v170 = [*&v159[v160] trailingAnchor];
  v171 = [v75 trailingAnchor];

  v172 = [v170 constraintEqualToAnchor:v171];
  *(v158 + 56) = v172;
  v173 = v218;
  v174 = v228;
  v175 = [*&v218[v228] topAnchor];
  v176 = [v75 topAnchor];

  v177 = [v175 constraintEqualToAnchor:v176];
  *(v158 + 64) = v177;
  v178 = [*&v173[v174] leadingAnchor];
  v179 = [v75 leadingAnchor];

  v180 = [v178 constraintEqualToAnchor:v179];
  *(v158 + 72) = v180;
  v181 = [*&v173[v174] bottomAnchor];
  v182 = [v75 bottomAnchor];

  v183 = [v181 constraintEqualToAnchor:v182];
  *(v158 + 80) = v183;
  v184 = [*&v173[v174] trailingAnchor];
  v185 = [v75 trailingAnchor];

  v186 = [v184 constraintEqualToAnchor:v185];
  *(v158 + 88) = v186;
  v187 = v217;
  v188 = [*(v75 + v217) heightAnchor];
  v189 = [*(v75 + v187) widthAnchor];
  v190 = [v188 constraintEqualToAnchor:v189];

  *(v158 + 96) = v190;
  v191 = v216;
  v192 = [*(v75 + v216) topAnchor];
  v193 = [*(*(v75 + v187) + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView) topAnchor];
  v194 = [v192 constraintEqualToAnchor:v193];

  *(v158 + 104) = v194;
  v195 = [*(v75 + v191) leadingAnchor];
  v196 = [*(*(v75 + v187) + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView) leadingAnchor];
  v197 = [v195 constraintEqualToAnchor:v196];

  *(v158 + 112) = v197;
  v198 = [*(v75 + v191) bottomAnchor];
  v199 = [*(*(v75 + v187) + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView) bottomAnchor];
  v200 = [v198 constraintEqualToAnchor:v199];

  *(v158 + 120) = v200;
  v201 = [*(v75 + v191) trailingAnchor];
  v202 = [*(*(v75 + v187) + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView) trailingAnchor];
  v203 = [v201 constraintEqualToAnchor:v202];

  *(v158 + 128) = v203;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v229 activateConstraints:isa];

  sub_100546EB4();
  v223(v231, v230);
  *(v75 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;

  return v75;
}

uint64_t sub_100546EB4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetImageView);
  sub_1008A3E9C();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setAccessibilityValue:v10];

  Date.init()();
  if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      if (qword_100ACFB90 != -1)
      {
        swift_once();
      }

      v12 = &qword_100B2F628;
      goto LABEL_13;
    }
  }

  if (qword_100ACFB98 != -1)
  {
    swift_once();
  }

  v12 = &qword_100B2F630;
LABEL_13:
  v13 = *v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v2 + 16))(v5, v7, v1);
  v15 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v2 + 32))(v16 + v15, v5, v1);
  v17 = objc_opt_self();
  v18 = v13;

  v19 = [v17 currentTraitCollection];
  sub_100076220(6, 0, 1, v18, v19, sub_1005499B4, v16);

  (*(v2 + 8))(v7, v1);
}

uint64_t sub_1005472A0(void *a1)
{
  v2 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_colorView;
  v12 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_colorView;
  type metadata accessor for ThirdPartyMediaColorEffectView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView;
  type metadata accessor for ThirdPartyMediaShadowEffectView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetImageView;
  *(v1 + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_labelsStack;
  *(v1 + v5) = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleArtistStack;
  *(v1 + v6) = [objc_allocWithZone(UIStackView) init];
  v7 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleLabel;
  *(v1 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_artistLabel;
  *(v1 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_categoryLabel;
  v10 = [objc_allocWithZone(UILabel) init];

  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_currentSizeConstraints) = _swiftEmptyArrayStorage;

  type metadata accessor for ThirdPartyMediaAssetView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10054749C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v3 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v4 = *((swift_isaMask & *v2) + 0x58);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v6 = v2;
  v4(12, v5);

  v7 = objc_opt_self();
  v8 = OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_currentSizeConstraints;
  sub_1000065A8(0, &qword_100AD8000);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 deactivateConstraints:isa];

  *(v1 + v8) = _swiftEmptyArrayStorage;

  v10 = *(v1 + v3);
  if (v10 > 3)
  {
    if (v10 - 4 >= 3)
    {
      sub_100547D04();
    }

    else
    {
      sub_10054834C();
    }
  }

  else
  {
    if (v10 >= 2 && v10 == 2)
    {
      v12 = 1;
      v13 = 0;
    }

    else
    {
      v12 = 2;
      v13 = 1;
    }

    sub_100547664(v12, v13);
  }

  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:v14];
}

uint64_t sub_100547664(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v47) = a2;
  v5 = type metadata accessor for ColorResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
  [*&v3[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView] setBackgroundColor:0];
  v48 = *&v3[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView];
  v9 = [v48 layer];
  [v9 setCornerRadius:3.0];

  [*&v3[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleArtistStack] setSpacing:0.0];
  v10 = *&v3[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_labelsStack];
  [v10 setSpacing:6.0];
  v11 = *&v3[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleLabel];
  v12 = sub_100047788(UIFontTextStyleFootnote, &off_100A55CD0, 0);
  swift_arrayDestroy();
  [v11 setFont:v12];

  [v11 setNumberOfLines:a1];
  v13 = *&v3[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_artistLabel];
  v14 = sub_100047788(UIFontTextStyleFootnote, &off_100A55D20, 0);
  sub_100047D60(&unk_100A55D40);
  [v13 setFont:v14];

  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0D30 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v5, qword_100B316A0);
  (*(v6 + 16))(v8, v15, v5);
  v16 = UIColor.init(resource:)();
  [v13 setTextColor:v16];

  [v13 setNumberOfLines:1];
  v17 = *&v3[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_categoryLabel];
  if ((v47 & 0x100000000) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v13 isHidden] ^ 1;
  }

  [v17 setHidden:v18];
  v19 = sub_100047788(UIFontTextStyleFootnote, &off_100A55D58, 0);
  sub_100047D60(&unk_100A55D78);
  [v17 setFont:v19];

  sub_1000F24EC(&unk_100AD4780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100957D10;
  v21 = [v10 topAnchor];
  v22 = [v3 topAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22 constant:4.0];

  *(v20 + 32) = v23;
  v24 = [v10 topAnchor];
  v25 = [v3 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:12.0];

  LODWORD(v27) = 1132068864;
  [v26 setPriority:v27];
  *(v20 + 40) = v26;
  v28 = [v10 leadingAnchor];
  v29 = [v3 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

  *(v20 + 48) = v30;
  v31 = [v10 trailingAnchor];
  v32 = [v3 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-16.0];

  *(v20 + 56) = v33;
  v34 = v48;
  v35 = [v48 widthAnchor];
  v36 = [v35 constraintEqualToConstant:16.0];

  *(v20 + 64) = v36;
  v37 = [v34 topAnchor];
  v38 = [v10 bottomAnchor];
  v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38 constant:6.0];

  *(v20 + 72) = v39;
  v40 = [v34 leadingAnchor];
  v41 = [v3 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:6.0];

  *(v20 + 80) = v42;
  v43 = [v34 bottomAnchor];
  v44 = [v3 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-6.0];

  *(v20 + 88) = v45;
  *&v3[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_currentSizeConstraints] = v20;
}

uint64_t sub_100547D04()
{
  v1 = v0;
  v43 = type metadata accessor for ColorResource();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v5 = *&v1[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v8];

  v44 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView];
  v9 = [v44 layer];
  [v9 setCornerRadius:8.0];

  [*&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleArtistStack] setSpacing:4.0];
  v10 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_labelsStack];
  [v10 setSpacing:8.0];
  v11 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleLabel];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v11 setFont:v12];

  [v11 setNumberOfLines:3];
  v13 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_artistLabel];
  v14 = sub_100047788(UIFontTextStyleBody, &off_100A55D90, 0);
  sub_100047D60(&unk_100A55DB0);
  [v13 setFont:v14];

  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0D30 != -1)
  {
    swift_once();
  }

  v15 = v43;
  v16 = sub_10000617C(v43, qword_100B316A0);
  (*(v2 + 16))(v4, v16, v15);
  v17 = UIColor.init(resource:)();
  [v13 setTextColor:v17];

  [v13 setNumberOfLines:2];
  v18 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_categoryLabel];
  [v18 setHidden:0];
  v19 = sub_100047788(UIFontTextStyleBody, &off_100A55DC8, 0);
  sub_100047D60(&unk_100A55DE8);
  [v18 setFont:v19];

  sub_1000F24EC(&unk_100AD4780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100956650;
  v21 = [v10 topAnchor];
  v22 = [v1 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:24.0];

  *(v20 + 32) = v23;
  v24 = [v10 leadingAnchor];
  v25 = [v1 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:20.0];

  *(v20 + 40) = v26;
  v27 = [v10 trailingAnchor];
  v28 = [v1 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-20.0];

  *(v20 + 48) = v29;
  v30 = v44;
  v31 = [v44 widthAnchor];
  v32 = [v31 constraintEqualToConstant:60.0];

  *(v20 + 56) = v32;
  v33 = [v30 topAnchor];
  v34 = [v10 bottomAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:16.0];

  *(v20 + 64) = v35;
  v36 = [v30 leadingAnchor];
  v37 = [v1 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];

  *(v20 + 72) = v38;
  v39 = [v30 bottomAnchor];
  v40 = [v1 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-16.0];

  *(v20 + 80) = v41;
  *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_currentSizeConstraints] = v20;
}

uint64_t sub_10054834C()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
  [*&v1[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView] setBackgroundColor:0];
  v44 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView];
  v6 = [v44 layer];
  [v6 setCornerRadius:3.0];

  [*&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleArtistStack] setSpacing:0.0];
  v7 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_labelsStack];
  [v7 setSpacing:0.0];
  v8 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_titleLabel];
  v9 = sub_100047788(UIFontTextStyleCaption2, &off_100A55C10, 0);
  swift_arrayDestroy();
  [v8 setFont:v9];

  [v8 setNumberOfLines:2];
  v10 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_artistLabel];
  v11 = sub_100047788(UIFontTextStyleCaption2, &off_100A55C60, 0);
  sub_100047D60(&unk_100A55C80);
  [v10 setFont:v11];

  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0D38 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v2, qword_100B316B8);
  (*(v3 + 16))(v5, v12, v2);
  v13 = UIColor.init(resource:)();
  [v10 setTextColor:v13];

  [v10 setNumberOfLines:1];
  v14 = *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_categoryLabel];
  [v14 setHidden:{objc_msgSend(v10, "isHidden") ^ 1}];
  v15 = sub_100047788(UIFontTextStyleCaption2, &off_100A55C98, 0);
  sub_100047D60(&unk_100A55CB8);
  [v14 setFont:v15];

  sub_1000F24EC(&unk_100AD4780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100957D10;
  v17 = [v7 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:2.0];

  *(v16 + 32) = v19;
  v20 = [v7 topAnchor];
  v21 = [v1 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:14.0];

  LODWORD(v23) = 1132068864;
  [v22 setPriority:v23];
  *(v16 + 40) = v22;
  v24 = [v7 leadingAnchor];
  v25 = [v1 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:6.0];

  *(v16 + 48) = v26;
  v27 = [v7 trailingAnchor];
  v28 = [v1 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-6.0];

  *(v16 + 56) = v29;
  v30 = v44;
  v31 = [v44 widthAnchor];
  v32 = [v31 constraintEqualToConstant:16.0];

  *(v16 + 64) = v32;
  v33 = [v30 topAnchor];
  v34 = [v7 bottomAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:6.0];

  *(v16 + 72) = v35;
  v36 = [v30 leadingAnchor];
  v37 = [v1 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:6.0];

  *(v16 + 80) = v38;
  v39 = [v30 bottomAnchor];
  v40 = [v1 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-6.0];

  *(v16 + 88) = v41;
  *&v1[OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_currentSizeConstraints] = v16;
}

void *sub_1005489D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_mediaAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_100548A34()
{
}

id sub_100548AF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100548C18(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v24 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v23 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v22, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_100549A28;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A72AD8;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
}

void sub_100548FD4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = sub_1000F24EC(&unk_100AD4790);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = a2;
      (*(v6 + 16))(v17, a3, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      sub_1000082B4(v17, v15, &unk_100AD4790);
      if ((*(v6 + 48))(v15, 1, v5) == 1)
      {
        v21 = a2;
        v22 = v19;
        sub_100004F84(v15, &unk_100AD4790);
      }

      else
      {
        (*(v6 + 32))(v11, v15, v5);
        v36 = a2;
        v35 = v19;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v24 = v23;
        v25 = *(v6 + 8);
        v25(v9, v5);
        v25(v11, v5);
        if (v24 < 0.1)
        {
          v26 = objc_opt_self();
          v27 = swift_allocObject();
          v29 = v35;
          v28 = v36;
          *(v27 + 16) = v35;
          *(v27 + 24) = v28;
          v41 = sub_100549A94;
          v42 = v27;
          aBlock = _NSConcreteStackBlock;
          v38 = 1107296256;
          v39 = sub_100006C7C;
          v40 = &unk_100A72B78;
          v30 = _Block_copy(&aBlock);
          v31 = v28;
          v32 = v29;

          [v26 transitionWithView:v32 duration:5242880 options:v30 animations:0 completion:0.0];
LABEL_11:
          _Block_release(v30);

          sub_100004F84(v17, &unk_100AD4790);
          goto LABEL_12;
        }
      }

      v33 = objc_opt_self();
      v41 = sub_100549A8C;
      v42 = v20;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_100006C7C;
      v40 = &unk_100A72B28;
      v30 = _Block_copy(&aBlock);

      [v33 animateWithDuration:0x10000 delay:v30 options:0 animations:0.1 completion:0.0];
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
LABEL_12:
    *(v19 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;
  }
}

void sub_100549498(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_100549AA8;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100006C7C;
  v9[3] = &unk_100A72BC8;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = a2;

  [v4 transitionWithView:v7 duration:5242880 options:v6 animations:0 completion:0.0];
  _Block_release(v6);
}

id sub_1005495A4(uint64_t a1, uint64_t a2)
{
  [*(a1 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView) setHidden:1];
  [*(a1 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_colorView) setHidden:0];
  [*(a1 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetShadowView) setHidden:0];
  v4 = *(a1 + OBJC_IVAR____TtC7Journal24ThirdPartyMediaAssetView_assetImageView);

  return [v4 setImage:a2];
}

uint64_t sub_10054964C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1005496CC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t sub_100549744()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();
}

uint64_t sub_1005497C0(uint64_t a1, void **a2)
{
  v4 = sub_1000F24EC(&qword_100AD6030);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_1000082B4(a1, &v13 - v8, &qword_100AD6030);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000082B4(v9, v6, &qword_100AD6030);
  v11 = v10;
  static UIView.Invalidating.subscript.setter();
  return sub_100004F84(v9, &qword_100AD6030);
}

_BYTE *sub_1005498EC(void *a1, unsigned __int8 a2)
{
  v2 = a2;
  v4 = a2;
  v5 = objc_allocWithZone(type metadata accessor for ThirdPartyMediaAssetView());
  v6 = a1;
  v7 = sub_1005451F4(v6);
  v8 = v7;
  if (v4 == 8)
  {
    v2 = 6;
  }

  v9 = v7[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v7[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = v2;
  v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  v11 = v7[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
  v12 = v7;
  if (v11 == 1 && (sub_10003C2FC(v2, v9) & 1) != 0)
  {
  }

  else
  {
    sub_10054749C();

    v8[v10] = 1;
  }

  return v12;
}

uint64_t sub_1005499B4(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100548C18(a1, v4, v5);
}

void sub_100549A28()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100548FD4(v2, v3, v4);
}

uint64_t sub_100549AB8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE8E20);
  sub_10000617C(v0, qword_100AE8E20);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100549B38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F24EC(&qword_100ADA938);
  v3[5] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED20);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for VisitAssetMetadata();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
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

  v3[10] = v6;
  v3[11] = v8;

  return _swift_task_switch(sub_100549CA8, v6, v8);
}

uint64_t sub_100549CA8()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100549D40;
  v2 = v0[3];
  v3 = v0[2];

  return sub_10008B5E8(v3, v2);
}

uint64_t sub_100549D40(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100549E68, v4, v3);
}

uint64_t sub_100549E68()
{
  v1 = v0[13];
  if (v1)
  {
LABEL_10:

    v14 = v0[1];

    return v14(v1);
  }

  v2 = v0[5];
  sub_10054B15C(v0[4] + qword_100B2FB10, v2);
  v3 = type metadata accessor for GenericMapAssetMetadata();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  if (v5 == 1)
  {
    sub_100004F84(v0[5], &qword_100ADA938);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_5:
    sub_100004F84(v0[6], &unk_100AEED20);
    if (qword_100ACFF48 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100AE8E20);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "no visits data", v13, 2u);
    }

    goto LABEL_10;
  }

  GenericMapAssetMetadata.visitsData.getter();
  (*(v4 + 8))(v8, v3);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_5;
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_10054A160;
  v17 = v0[9];
  v18 = v0[3];
  v19 = v0[2];

  return sub_10054A7E0(v19, v18, v17);
}

uint64_t sub_10054A160(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_10054A288, v4, v3);
}

uint64_t sub_10054A288()
{
  if (*(v0 + 120))
  {
    v1 = *(*(v0 + 32) + qword_100B302E0);
    *(v0 + 144) = v1;
    if (sub_100512604(v1))
    {
      sub_10029D254();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_10054A43C;
      v8 = *(v0 + 16);

      return sub_10059AEC4(v8, v3 * v6);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = *(v0 + 120);
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_10054A43C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_10054A564, v4, v3);
}

uint64_t sub_10054A564()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    if (sub_100511E4C(*(v0 + 144)))
    {
      if (qword_100ACFCB0 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      v4 = *(v0 + 56);
      sub_100752914(v1, *(*(v0 + 32) + qword_100AF0110), *(*(v0 + 32) + qword_100AF0110 + 8));

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }
  }

  else
  {
    if (qword_100ACFF48 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AE8E20);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    if (v10)
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ - error creating thumbnail from MKMap", v15, 0xCu);
      sub_100004F84(v16, &unk_100AD4BB0);
    }

    (*(v12 + 8))(v11, v13);
  }

  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_10054A7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
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

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_10054A870, v5, v7);
}

uint64_t sub_10054A870()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_1000F24EC(&qword_100AD64A8);
  v3 = type metadata accessor for VisitAssetMetadata();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v1, v3);
  *(v0 + 184) = sub_10032BED4(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  *(v0 + 232) = *(v2 + qword_100B302E0);
  *(v0 + 192) = *(v2 + qword_100B302F0);
  type metadata accessor for MainActor();
  *(v0 + 200) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10054AA30, v8, v7);
}

uint64_t sub_10054AA30()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 232);

  *(v0 + 208) = sub_100505EC0(v2, 0, v3, 0, 0, 1, v1, 0);

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return _swift_task_switch(sub_10054AAD4, v4, v5);
}

uint64_t sub_10054AAD4()
{
  v1 = v0[26];
  [v1 _setRendersInBackground:1];
  v2 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v1];
  v0[27] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10054AC28;
  v3 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100ADBE50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039677C;
  v0[13] = &unk_100A72BF0;
  v0[14] = v3;
  [v2 startWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10054AC28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_10054ADEC;
  }

  else
  {
    v5 = sub_10054AD58;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10054AD58()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10054ADEC()
{
  swift_willThrow();
  if (qword_100ACFF48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE8E20);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t type metadata accessor for GenericMapThumbnailCacheOperation()
{
  result = qword_100AE8E60;
  if (!qword_100AE8E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054B06C()
{
  sub_10054B0FC();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10054B0FC()
{
  if (!qword_100AE8E70)
  {
    type metadata accessor for GenericMapAssetMetadata();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE8E70);
    }
  }
}

uint64_t sub_10054B15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10054B1CC()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        v5 = [v4 delegate];

        if (v5)
        {
          type metadata accessor for SceneDelegate();
          if (swift_dynamicCastClass())
          {
            v6 = sub_100014380();
            swift_unknownObjectRelease();
            return v6;
          }

          swift_unknownObjectRelease();
        }
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10054B2F8()
{
  v1 = sub_1000F24EC(&qword_100AD4D20);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  result = *(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  if (result)
  {
    result = [result rootViewController];
    if (result)
    {
      v5 = result;
      type metadata accessor for SceneSplitViewController(0);
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_1002E8160(v3);

      v6 = type metadata accessor for SceneSplitViewController.Content(0);
      if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
      {
        sub_100004F84(v3, &qword_100AD4D20);
        return 0;
      }

      v7 = *&v3[*(v6 + 20)];
      sub_10054C06C(v3, type metadata accessor for SceneSplitViewController.Content);
      type metadata accessor for JournalTimelineViewController(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        v7 = v7;
        v10 = v9;
        v11 = [v9 navigationController];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 viewControllers];

          sub_1000065A8(0, &qword_100AD4C80);
          v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v14 >> 62)
          {
            v15 = _CocoaArrayWrapper.endIndex.getter();
            if (v15)
            {
LABEL_11:
              v16 = __OFSUB__(v15, 1);
              result = v15 - 1;
              if (v16)
              {
                __break(1u);
              }

              else if ((v14 & 0xC000000000000001) == 0)
              {
                if ((result & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v17 = *(v14 + 8 * result + 32);
LABEL_16:
                  v18 = v17;

                  v19 = v7;
                  v20 = static NSObject.== infix(_:_:)();

                  if ((v20 & 1) == 0)
                  {

                    return 0;
                  }

                  v7 = [v10 presentedViewController];

                  if (!v7)
                  {
                    return v10;
                  }

                  goto LABEL_20;
                }

                __break(1u);
                return result;
              }

              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_16;
            }
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v15)
            {
              goto LABEL_11;
            }
          }

          return 0;
        }
      }

LABEL_20:

      return 0;
    }
  }

  return result;
}

uint64_t sub_10054B5F8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001F0D04;

  return sub_10051C65C();
}

uint64_t sub_10054BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10054BBDC, v6, v5);
}

uint64_t sub_10054BBDC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10054BCC0;
  v9 = v0[3];

  return (sub_10054C864)(v9);
}

uint64_t sub_10054BCC0(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

id sub_10054BE40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10054BEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054BF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasViewController.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054BFB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1000B1960(a1, v4, v5, v6);
}

uint64_t sub_10054C06C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10054C0CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032ECC;

  return sub_10054BB40(v2, v3, v5, v4);
}

uint64_t sub_10054C18C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppLaunchAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE46A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  sub_1006CC4F4(a1, &v27 - v15);
  if (qword_100ACFF50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000617C(v17, qword_100AE8FB0);
  sub_10000AA6C(v16, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v27 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    sub_10000AA6C(v13, v10);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_100004F84(v10, &qword_100AE46A0);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      sub_10054BEF0(v10, v7);
      v23 = String.init<A>(describing:)();
      v22 = v24;
      sub_10054C06C(v10, type metadata accessor for AppLaunchAction);
    }

    sub_100004F84(v13, &qword_100AE46A0);
    v25 = sub_100008458(v23, v22, &v28);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "scene(:openURLContexts:) w/ launchAction=%s", v20, 0xCu);
    sub_10000BA7C(v21);
  }

  else
  {

    sub_100004F84(v13, &qword_100AE46A0);
  }

  sub_1001F05E8(v16);
  return sub_100004F84(v16, &qword_100AE46A0);
}

uint64_t sub_10054C4F8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppLaunchAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE46A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  sub_1006CC6F8(a1, &v27 - v15);
  if (qword_100ACFF50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000617C(v17, qword_100AE8FB0);
  sub_10000AA6C(v16, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v27 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    sub_10000AA6C(v13, v10);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_100004F84(v10, &qword_100AE46A0);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      sub_10054BEF0(v10, v7);
      v23 = String.init<A>(describing:)();
      v22 = v24;
      sub_10054C06C(v10, type metadata accessor for AppLaunchAction);
    }

    sub_100004F84(v13, &qword_100AE46A0);
    v25 = sub_100008458(v23, v22, &v28);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "scene(:continue:) w/ launchAction=%s", v20, 0xCu);
    sub_10000BA7C(v21);
  }

  else
  {

    sub_100004F84(v13, &qword_100AE46A0);
  }

  sub_1001F05E8(v16);
  return sub_100004F84(v16, &qword_100AE46A0);
}

uint64_t sub_10054C864(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AppLaunchAction();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE46A0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10054C9A8, v5, v4);
}

uint64_t sub_10054C9A8()
{
  v31 = v0;
  v1 = v0[2];

  v2 = v1;
  v3 = [v2 type];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v33._countAndFlagsBits = v4;
  v33._object = v6;
  v7 = sub_1005004EC(v33);

  if (v7 == 4)
  {
    (*(v0[5] + 56))(v0[9], 1, 1, v0[4]);
  }

  else
  {
    sub_1005002D0(v7, v0[9]);
  }

  if (qword_100ACFF50 != -1)
  {
    swift_once();
  }

  v8 = v0[8];
  v9 = v0[9];
  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100AE8FB0);
  sub_10000AA6C(v9, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[8];
  if (v13)
  {
    v15 = v0[7];
    v16 = v0[4];
    v17 = v0[5];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;
    sub_10000AA6C(v14, v15);
    v20 = (*(v17 + 48))(v15, 1, v16);
    v21 = v0[7];
    if (v20 == 1)
    {
      sub_100004F84(v0[7], &qword_100AE46A0);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      sub_10054BEF0(v0[7], v0[6]);
      v23 = String.init<A>(describing:)();
      v22 = v24;
      sub_10054C06C(v21, type metadata accessor for AppLaunchAction);
    }

    sub_100004F84(v0[8], &qword_100AE46A0);
    v25 = sub_100008458(v23, v22, &v30);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "windowScene(:performActionFor:) w/ launchAction=%s", v18, 0xCu);
    sub_10000BA7C(v19);
  }

  else
  {

    sub_100004F84(v14, &qword_100AE46A0);
  }

  v26 = v0[9];
  v27 = sub_1001F05E8(v26);
  sub_100004F84(v26, &qword_100AE46A0);

  v28 = v0[1];

  return v28(v27 & 1);
}

unint64_t sub_10054CD00()
{
  result = qword_100AE4690;
  if (!qword_100AE4690)
  {
    sub_1000065A8(255, &qword_100AE9080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4690);
  }

  return result;
}

uint64_t sub_10054CD70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_10054B5F8();
}

uint64_t sub_10054CE1C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9088);
  v1 = sub_10000617C(v0, qword_100AE9088);
  if (qword_100AD01D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10054CEE4(uint64_t a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000F24EC(&qword_100AE90A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36[-v8];
  v10 = type metadata accessor for TTRInfo();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    return;
  }

  v14 = v1;
  v15 = Notification.userInfo.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v41 = 0x6F666E49727474;
  v42 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_100361EDC(v43), (v18 & 1) == 0))
  {

    sub_100177B94(v43);
LABEL_14:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_15;
  }

  sub_10000BA20(*(v16 + 56) + 32 * v17, &v44);
  sub_100177B94(v43);

  if (!*(&v45 + 1))
  {
LABEL_15:
    sub_100004F84(&v44, &qword_100AD13D0);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_16;
  }

  v19 = swift_dynamicCast();
  (*(v11 + 56))(v9, v19 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_16:
    sub_100004F84(v9, &qword_100AE90A0);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  v20 = *(v14 + OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertWindow);
  if (v20)
  {
    v21 = v20;
    v22 = [v21 rootViewController];
    if (!v22)
    {
      (*(v11 + 8))(v13, v10);

      return;
    }

    v23 = v22;
    if (qword_100ACFF58 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000617C(v24, qword_100AE9088);
    (*(v4 + 16))(v6, a1, v3);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = v25;
      v28 = v27;
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v28 = 136315138;
      sub_10054D594();
      v37 = v26;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v23;
      v31 = v30;
      (*(v4 + 8))(v6, v3);
      v32 = sub_100008458(v29, v31, v43);
      v23 = v40;

      *(v28 + 4) = v32;
      v33 = v38;
      _os_log_impl(&_mh_execute_header, v38, v37, "TapToRadar notification received: %s", v28, 0xCu);
      sub_10000BA7C(v39);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    [v21 makeKeyAndVisible];
    v34 = swift_allocObject();
    *(v34 + 16) = v21;
    v35 = v21;
    sub_10059BAC0(v13, sub_10054D544, v34);
  }

  (*(v11 + 8))(v13, v10);
}

id sub_10054D544()
{
  v1 = *(v0 + 16);
  [v1 resignKeyWindow];

  return [v1 setHidden:1];
}

unint64_t sub_10054D594()
{
  result = qword_100ADFAD8;
  if (!qword_100ADFAD8)
  {
    type metadata accessor for Notification();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFAD8);
  }

  return result;
}

uint64_t sub_10054D5EC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for MediaViewType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MediaViewType.song(_:) || v7 == enum case for MediaViewType.songAlbum(_:))
  {
    goto LABEL_10;
  }

  v8 = v7 == enum case for MediaViewType.podcast(_:) || v7 == enum case for MediaViewType.podcastArtist(_:);
  if (v8 || v7 == enum case for MediaViewType.audiobook(_:))
  {
    goto LABEL_10;
  }

  if (v7 == enum case for MediaViewType.thirdPartyMedia(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:defaultValue:table:bundle:locale:comment:)();
  }

  if (v7 == enum case for MediaViewType.thirdPartyMediaAlbum(_:) || v7 == enum case for MediaViewType.thirdPartyMediaArtist(_:))
  {
LABEL_10:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10054D9B0()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView] setHidden:(v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleFont];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v97 = UITraitCollection.modifyingTraits(_:)();

  v5 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v6 = [v1 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v5 > 4)
  {
    switch(v5)
    {
      case 5:
        if (v7 == 2)
        {
          v96 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:v97];
          [v96 pointSize];
          if (v65 > 48.0)
          {
            v65 = 48.0;
          }

          v66 = [v3 fontWithSize:v65];
          v67 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
          v95 = v66;
          v68 = sub_10006F14C(UIFontWeightSemibold);
          [v67 setFont:v68];

          v69 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
          sub_1000F24EC(&unk_100ADFBF0);
          inited = swift_initStackObject();
          v91 = xmmword_100940080;
          *(inited + 16) = xmmword_100940080;
          *(inited + 32) = UIFontDescriptorSystemDesignRounded;
          *(inited + 40) = 0;
          *(inited + 48) = 4;
          v71 = UIFontDescriptorSystemDesignRounded;
          v72 = sub_100047788(UIFontTextStyleSubheadline, inited, 0);
          swift_setDeallocating();
          sub_100047D60(inited + 32);
          v94 = v69;
          [v69 setFont:v72];

          v73 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel];
          v74 = swift_initStackObject();
          *(v74 + 16) = xmmword_100940080;
          *(v74 + 32) = UIFontDescriptorSystemDesignRounded;
          v75 = v74 + 32;
          *(v74 + 40) = 0;
          *(v74 + 48) = 4;
          v76 = sub_100047788(UIFontTextStyleSubheadline, v74, 0);
          swift_setDeallocating();
          sub_100047D60(v75);
          [v73 setFont:v76];

          v77 = &OBJC_IVAR____TtC7Journal17ConfettiAssetView_extraShortDateString;
          goto LABEL_54;
        }

        if (v7 != 1)
        {
          goto LABEL_41;
        }

        break;
      case 7:
        goto LABEL_26;
      case 6:
        if (v7 != 1)
        {
          if (v7 == 2)
          {
            v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:v97];
            [v19 pointSize];
            if (v20 > 48.0)
            {
              v20 = 48.0;
            }

            v21 = [v3 fontWithSize:v20];
            v22 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
            v23 = sub_10006F14C(UIFontWeightSemibold);
            [v22 setFont:v23];

            v24 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
            sub_1000F24EC(&unk_100ADFBF0);
            v25 = swift_initStackObject();
            *(v25 + 16) = xmmword_100940050;
            *(v25 + 32) = UIFontWeightSemibold;
            *(v25 + 40) = 0;
            *(v25 + 48) = 3;
            *(v25 + 56) = UIFontDescriptorSystemDesignRounded;
            *(v25 + 64) = 0;
            *(v25 + 72) = 4;
            v26 = UIFontDescriptorSystemDesignRounded;
            v27 = sub_100047788(UIFontTextStyleSubheadline, v25, 0);
            swift_setDeallocating();
            swift_arrayDestroy();
            goto LABEL_33;
          }

          goto LABEL_41;
        }

        break;
      default:
        goto LABEL_41;
    }

LABEL_30:
    v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:v97];
    [v19 pointSize];
    if (v53 > 33.0)
    {
      v53 = 33.0;
    }

    v21 = [v3 fontWithSize:v53];
    v54 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
    v55 = sub_10006F14C(UIFontWeightBold);
    [v54 setFont:v55];

    v24 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
    sub_1000F24EC(&unk_100ADFBF0);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_100940080;
    *(v56 + 32) = UIFontDescriptorSystemDesignRounded;
    *(v56 + 40) = 0;
    *(v56 + 48) = 4;
    v57 = UIFontDescriptorSystemDesignRounded;
    v27 = sub_100047788(UIFontTextStyleCaption1, v56, 0);
    swift_setDeallocating();
    sub_100047D60(v56 + 32);
LABEL_33:
    [v24 setFont:v27];

    if (*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_extraShortDateString + 8])
    {

      v39 = String._bridgeToObjectiveC()();
    }

    else
    {
      v39 = 0;
    }

    [v24 setText:v39];

    goto LABEL_61;
  }

  switch(v5)
  {
    case 1:
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          v96 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:v97];
          [v96 pointSize];
          if (v28 > 44.0)
          {
            v28 = 44.0;
          }

          v29 = [v3 fontWithSize:v28];
          v30 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
          v95 = v29;
          v31 = sub_10006F14C(UIFontWeightSemibold);
          [v30 setFont:v31];

          v32 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel];
          v13 = UIFontTextStyleFootnote;
          sub_1000F24EC(&unk_100ADFBF0);
          v33 = swift_initStackObject();
          *v93 = xmmword_100940080;
          *(v33 + 16) = xmmword_100940080;
          v15 = UIFontDescriptorSystemDesignRounded;
          *(v33 + 32) = UIFontDescriptorSystemDesignRounded;
          *(v33 + 40) = 0;
          *(v33 + 48) = 4;
          v34 = UIFontDescriptorSystemDesignRounded;
          v35 = sub_100047788(UIFontTextStyleFootnote, v33, 0);
          swift_setDeallocating();
          sub_100047D60(v33 + 32);
          [v32 setFont:v35];

          v18 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
          goto LABEL_24;
        }

        break;
      }

LABEL_26:
      v40 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
      v41 = [v3 fontDescriptor];
      v42 = [objc_opt_self() fontWithDescriptor:v41 size:48.0];

      v43 = sub_10006F14C(UIFontWeightSemibold);
      [v40 setFont:v43];

      v44 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel];
      sub_1000F24EC(&unk_100ADFBF0);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_100940080;
      *(v45 + 32) = UIFontDescriptorSystemDesignRounded;
      *(v45 + 40) = 0;
      *(v45 + 48) = 4;
      v46 = UIFontDescriptorSystemDesignRounded;
      v47 = sub_100047788(UIFontTextStyleBody, v45, 0);
      swift_setDeallocating();
      sub_100047D60(v45 + 32);
      [v44 setFont:v47];

      v48 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_100940080;
      *(v49 + 32) = UIFontDescriptorSystemDesignRounded;
      v50 = v49 + 32;
      *(v49 + 40) = 0;
      *(v49 + 48) = 4;
      v51 = sub_100047788(UIFontTextStyleBody, v49, 0);
      swift_setDeallocating();
      sub_100047D60(v50);
      [v48 setFont:v51];

      if (*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_longDateString + 8])
      {

        v52 = String._bridgeToObjectiveC()();
      }

      else
      {
        v52 = 0;
      }

      [v48 setText:v52];

      goto LABEL_62;
    case 3:
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          v58 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:v97];
          [v58 pointSize];
          if (v59 > 40.0)
          {
            v59 = 40.0;
          }

          v60 = [v3 fontWithSize:v59];
          [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel] setFont:v60];
          v61 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
          sub_1000F24EC(&unk_100ADFBF0);
          v62 = swift_initStackObject();
          *(v62 + 16) = xmmword_100940080;
          *(v62 + 32) = UIFontDescriptorSystemDesignRounded;
          *(v62 + 40) = 0;
          *(v62 + 48) = 4;
          v63 = UIFontDescriptorSystemDesignRounded;
          v64 = sub_100047788(UIFontTextStyleFootnote, v62, 0);
          swift_setDeallocating();
          sub_100047D60(v62 + 32);
          [v61 setFont:v64];

          if (*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_extraShortDateString + 8])
          {

            v39 = String._bridgeToObjectiveC()();
          }

          else
          {
            v39 = 0;
          }

          [v61 setText:v39];

          goto LABEL_61;
        }

        break;
      }

      v96 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle compatibleWithTraitCollection:v97];
      [v96 pointSize];
      if (v78 > 52.0)
      {
        v78 = 52.0;
      }

      v79 = [v3 fontWithSize:v78];
      v80 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
      v95 = v79;
      v81 = sub_10006F14C(UIFontWeightSemibold);
      [v80 setFont:v81];

      v82 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
      sub_1000F24EC(&unk_100ADFBF0);
      v83 = swift_initStackObject();
      v91 = xmmword_100940080;
      *(v83 + 16) = xmmword_100940080;
      *(v83 + 32) = UIFontDescriptorSystemDesignRounded;
      *(v83 + 40) = 0;
      *(v83 + 48) = 4;
      v84 = UIFontDescriptorSystemDesignRounded;
      v85 = sub_100047788(UIFontTextStyleBody, v83, 0);
      swift_setDeallocating();
      sub_100047D60(v83 + 32);
      v94 = v82;
      [v82 setFont:v85];

      v86 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel];
      v87 = swift_initStackObject();
      *(v87 + 16) = xmmword_100940080;
      *(v87 + 32) = UIFontDescriptorSystemDesignRounded;
      v88 = v87 + 32;
      *(v87 + 40) = 0;
      *(v87 + 48) = 4;
      v89 = sub_100047788(UIFontTextStyleBody, v87, 0);
      swift_setDeallocating();
      sub_100047D60(v88);
      [v86 setFont:v89];

      v77 = &OBJC_IVAR____TtC7Journal17ConfettiAssetView_longDateString;
LABEL_54:
      if (*&v1[*v77 + 8])
      {

        v39 = String._bridgeToObjectiveC()();
      }

      else
      {
        v39 = 0;
      }

      [v94 setText:{v39, v91}];
      goto LABEL_60;
    case 4:
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v96 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:v97];
          [v96 pointSize];
          if (v8 > 48.0)
          {
            v8 = 48.0;
          }

          v9 = [v3 fontWithSize:v8];
          v10 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
          v95 = v9;
          v11 = sub_10006F14C(UIFontWeightSemibold);
          [v10 setFont:v11];

          v12 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel];
          v13 = UIFontTextStyleSubheadline;
          sub_1000F24EC(&unk_100ADFBF0);
          v14 = swift_initStackObject();
          *v93 = xmmword_100940080;
          *(v14 + 16) = xmmword_100940080;
          v15 = UIFontDescriptorSystemDesignRounded;
          *(v14 + 32) = UIFontDescriptorSystemDesignRounded;
          *(v14 + 40) = 0;
          *(v14 + 48) = 4;
          v16 = UIFontDescriptorSystemDesignRounded;
          v17 = sub_100047788(UIFontTextStyleSubheadline, v14, 0);
          swift_setDeallocating();
          sub_100047D60(v14 + 32);
          [v12 setFont:v17];

          v18 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
LABEL_24:
          v36 = swift_initStackObject();
          *(v36 + 16) = *v93;
          *(v36 + 32) = v15;
          v37 = v36 + 32;
          *(v36 + 40) = 0;
          *(v36 + 48) = 4;
          v38 = sub_100047788(v13, v36, 0);
          swift_setDeallocating();
          sub_100047D60(v37);
          [v18 setFont:v38];

          if (*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_longDateString + 8])
          {

            v39 = String._bridgeToObjectiveC()();
          }

          else
          {
            v39 = 0;
          }

          [v18 setText:{v39, v90, v92}];
LABEL_60:

LABEL_61:
LABEL_62:

          return;
        }

        break;
      }

      goto LABEL_30;
  }

LABEL_41:
}

uint64_t sub_10054EA20(void *a1)
{
  sub_10000CA14(a1, a1[3]);
  v2 = UIMutableTraits.preferredContentSizeCategory.getter();
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    UIContentSizeCategoryAccessibilityMedium;
  }

  sub_100186174(a1, a1[3]);
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

void sub_10054EAC0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  v3 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v4 = OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_sizeType;
  v5 = v2[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_sizeType];
  v6 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v2[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_sizeType] = v6;
  if ((sub_10003C2FC(v6, v5) & 1) == 0)
  {
    sub_1001627EC(v2[v4]);
  }

  v7 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  sub_1000746FC();
  v8 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView];
  sub_1000746FC();
  sub_1000746FC();
  sub_1000746FC();
  v9 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView;
  v10 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView];
  sub_1000746FC();

  [v1 removeLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide]];
  [v1 removeLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide]];
  [v7 setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel] setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel] setHidden:0];
  [*&v1[v9] setHidden:0];
  [v8 setHidden:0];
  [v2 setHidden:0];
  sub_10054D9B0();
  v11 = v1[v3];
  v12 = [v1 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v11 > 4)
  {
    switch(v11)
    {
      case 5:
        if (v13 == 2)
        {
          sub_100550CDC();
        }

        else if (v13 == 1)
        {
          sub_100550648();
        }

        break;
      case 7:
        goto LABEL_25;
      case 6:
        if (v13 == 2)
        {
          sub_100550634();
        }

        else if (v13 == 1)
        {
          sub_10054FFA0();
        }

        break;
    }
  }

  else
  {
    if (v11 != 1)
    {
      if (v11 != 3)
      {
        if (v11 == 4)
        {
          if (v13 == 2)
          {
            sub_1005517E8();
          }

          else if (v13 == 1)
          {
            sub_10055136C();
          }
        }

        goto LABEL_30;
      }

      if (v13 != 2)
      {
        if (v13 == 1)
        {
          sub_100551DD0();
        }

        goto LABEL_30;
      }

LABEL_25:
      sub_1005524C0();
      goto LABEL_30;
    }

    if (v13 == 2)
    {
      sub_100552B7C();
    }

    else if (v13 == 1)
    {
      sub_1005524C4();
    }
  }

LABEL_30:
  v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_previousSizeType] = v1[v3];
  v14 = [v1 traitCollection];
  v15 = [v14 horizontalSizeClass];

  v16 = &v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_previousSizeClass];
  *v16 = v15;
  v16[8] = 0;
}

void sub_10054EDFC()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView) setAlignment:3];
  [*(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel) setTextAlignment:1];
  [*(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel) setTextAlignment:1];
  [*(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel) setTextAlignment:1];
  v2 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView);
  sub_1005C0FD0(1);

  v4 = *(v1 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView);
  v5 = [v4 superview];
  v6 = &selRef_setSuggestedName_;
  v7 = &selRef_setSuggestedName_;
  if (v5)
  {
    v8 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v4 leadingAnchor];
    v10 = [v8 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    v7 = &selRef_setSuggestedName_;
    [v11 setConstant:0.0];
    [v11 setActive:1];

    v6 = &selRef_setSuggestedName_;
  }

  v12 = [v4 superview];
  if (v12)
  {
    v13 = v12;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v4 trailingAnchor];
    v15 = [v13 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    v7 = &selRef_setSuggestedName_;
    [v16 setConstant:0.0];
    [v16 setActive:1];

    v6 = &selRef_setSuggestedName_;
  }

  v17 = [v4 superview];
  if (v17)
  {
    v18 = v17;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v4 topAnchor];
    v20 = [v18 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setConstant:0.0];
    [v21 setActive:1];

    v7 = &selRef_setSuggestedName_;
  }

  v22 = *(v1 + v2);
  v23 = [v22 superview];
  if (v23)
  {
    v24 = v23;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v22 trailingAnchor];
    v26 = [v24 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:0.0];
    if (v27)
    {
      [v27 setActive:1];
    }

    v7 = &selRef_setSuggestedName_;

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v27 = 0;
    v24 = v22;
  }

  v28 = *(v1 + v2);
  v29 = [v28 superview];
  if (v29)
  {
    v30 = v29;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v28 v7[232]];
    v32 = v7;
    v33 = v31;
    v34 = [v30 v32[232]];
    v35 = v6;
    v36 = v34;
    v37 = [v33 v35[207]];

    [v37 setConstant:0.0];
    if (v37)
    {
      [v37 setActive:1];
    }
  }

  else
  {
    v37 = 0;
    v30 = v28;
  }

  v38 = *(v1 + v2);
  v39 = sub_100028DA0(0, 1, 0.0);
}

void sub_10054F310()
{
  sub_10054EDFC();
  v1 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v1 bottomAnchor];
  v4 = [v2 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setConstant:0.0];
  [v5 setActive:1];

  v6 = [v1 heightAnchor];
  v7 = [v0 heightAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 multiplier:0.75];

  [v8 setActive:1];
  v9 = [v2 superview];
  if (v9)
  {
    v10 = v9;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v2 trailingAnchor];
    v12 = [v10 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:0.0];
    [v13 setActive:1];
  }

  v14 = [v2 superview];
  if (v14)
  {
    v15 = v14;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v2 leadingAnchor];
    v17 = [v15 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:0.0];
    [v18 setActive:1];
  }

  v19 = [v2 heightAnchor];
  v20 = [v1 heightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  v23 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_isImageMirrored;
  if ((v0[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_isImageMirrored] & 1) == 0)
  {
    LODWORD(v22) = 1127481344;
    [v2 setRotationBy:v22];
    v0[v23] = 1;
  }
}

void sub_10054F69C()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView] setAlignment:1];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel] setTextAlignment:4];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setTextAlignment:4];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel] setTextAlignment:4];
  v60 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView;
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView];
  sub_1005C0FD0(0);

  v3 = *(v1 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView);
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:0.0];
    [v8 setActive:1];
  }

  v9 = [v3 superview];
  if (v9)
  {
    v10 = v9;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v3 topAnchor];
    v12 = [v10 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:0.0];
    [v13 setActive:1];
  }

  v14 = *(v1 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v3 trailingAnchor];
  v16 = [v14 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  [v17 setConstant:-0.0];
  [v17 setActive:1];

  v18 = [v3 heightAnchor];
  v19 = [v1 heightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  [v20 setActive:1];
  v21 = [v3 widthAnchor];
  v22 = [v1 widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 multiplier:0.6];

  [v23 setActive:1];
  v24 = [v14 superview];
  if (v24)
  {
    v25 = v24;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [v14 trailingAnchor];
    v27 = [v25 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    [v28 setConstant:0.0];
    [v28 setActive:1];
  }

  v29 = [v14 superview];
  if (v29)
  {
    v30 = v29;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v14 topAnchor];
    v32 = [v30 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setConstant:0.0];
    [v33 setActive:1];
  }

  v34 = [v14 heightAnchor];
  v35 = [v1 heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  [v36 setActive:1];
  v37 = [v14 widthAnchor];
  v38 = [v1 widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 multiplier:0.4];

  [v39 setActive:1];
  v41 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_isImageMirrored;
  v42 = &selRef_setSuggestedName_;
  if (*(v1 + OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_isImageMirrored) == 1)
  {
    LODWORD(v40) = 1127481344;
    [v14 setRotationBy:v40];
    *(v1 + v41) = 0;
  }

  v43 = *&v60[v1];
  v44 = [v43 superview];
  v45 = &selRef_setSuggestedName_;
  if (v44)
  {
    v46 = v44;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = [v43 trailingAnchor];
    v48 = [v46 trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];

    [v49 setConstant:0.0];
    if (v49)
    {
      [v49 setActive:1];
    }

    v42 = &selRef_setSuggestedName_;

    v45 = &selRef_setSuggestedName_;
  }

  else
  {
    v49 = 0;
    v46 = v43;
  }

  v50 = *&v60[v1];
  v51 = [v50 superview];
  if (v51)
  {
    v52 = v51;
    [v50 v45[278]];
    v53 = [v50 v42[292]];
    v54 = [v52 v42[292]];
    v55 = [v53 constraintEqualToAnchor:v54];

    [v55 setConstant:0.0];
    if (v55)
    {
      [v55 setActive:1];
    }
  }

  else
  {
    v55 = 0;
    v52 = v50;
  }

  v56 = *&v60[v1];
  v57 = sub_100028DA0(0, 1, 0.0);

  v58 = [*&v60[v1] widthAnchor];
  v59 = [v1 widthAnchor];
  v61 = [v58 constraintEqualToAnchor:v59 multiplier:0.61];

  [v61 setActive:1];
}

void sub_10054FFA0()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel] setHidden:0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel] setHidden:1];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:1];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:1];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:6.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:6.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-6.0];
    if (v17)
    {
      [v17 setActive:1];

      LODWORD(v18) = 1132068864;
      [v17 setPriority:v18];
      v14 = v17;
    }
  }

  v19 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v19 leadingAnchor];
    v23 = [v21 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:6.0];
    [v24 setActive:1];
  }

  v25 = [v19 superview];
  if (v25)
  {
    v26 = v25;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v19 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:-6.0];
    [v29 setActive:1];
  }

  v30 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide]];
  v31 = [*&v1[v30] topAnchor];
  v32 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [*&v1[v30] heightAnchor];
  v36 = [v1 heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 multiplier:0.18];

  [v37 setActive:1];
  v38 = [v19 topAnchor];
  v39 = [*&v1[v30] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  sub_10054EDFC();
  v41 = sub_100028DA0(0, 1, 0.0);
}

void sub_100550648()
{
  v1 = v0;
  v41 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v41 setHidden:0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel] setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:1];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:0];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:6.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:6.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-6.0];
    if (v17)
    {
      [v17 setActive:1];

      LODWORD(v18) = 1132068864;
      [v17 setPriority:v18];
      v14 = v17;
    }
  }

  v19 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v19 leadingAnchor];
    v23 = [v21 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:6.0];
    [v24 setActive:1];
  }

  v25 = [v19 superview];
  if (v25)
  {
    v26 = v25;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v19 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:-6.0];
    [v29 setActive:1];
  }

  v30 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide]];
  v31 = [*&v1[v30] topAnchor];
  v32 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [*&v1[v30] heightAnchor];
  v36 = [v1 heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 multiplier:0.18];

  [v37 setActive:1];
  v38 = [v19 topAnchor];
  v39 = [*&v1[v30] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  [v19 setCustomSpacing:v41 afterView:0.0];

  sub_10054F310();
}

void sub_100550CDC()
{
  v1 = v0;
  v42 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v42 setHidden:0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  v41 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
  [v41 setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:0];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:8.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:8.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-6.0];
    if (v17)
    {
      [v17 setActive:1];

      LODWORD(v18) = 1132068864;
      [v17 setPriority:v18];
      v14 = v17;
    }
  }

  v19 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v19 leadingAnchor];
    v23 = [v21 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:16.0];
    [v24 setActive:1];
  }

  v25 = [v19 superview];
  if (v25)
  {
    v26 = v25;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v19 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:-16.0];
    [v29 setActive:1];
  }

  v30 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide]];
  v31 = [*&v1[v30] topAnchor];
  v32 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [*&v1[v30] heightAnchor];
  v36 = [v1 heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 multiplier:0.18];

  [v37 setActive:1];
  v38 = [v19 topAnchor];
  v39 = [*&v1[v30] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  [v19 setCustomSpacing:v42 afterView:0.0];
  [v19 setCustomSpacing:v41 afterView:4.0];

  sub_10054F310();
}

void sub_10055136C()
{
  v1 = v0;
  v25 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v25 setHidden:0];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel] setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:1];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView] setHidden:1];
  v2 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide]];
  v3 = [*&v0[v2] leadingAnchor];
  v4 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [*&v1[v2] widthAnchor];
  v8 = [v1 widthAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 multiplier:0.11];

  [v9 setActive:1];
  v10 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v11 = [v10 leadingAnchor];
  v12 = [*&v1[v2] trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  [v13 setActive:1];
  v14 = [v10 superview];
  if (v14)
  {
    v15 = v14;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v10 trailingAnchor];
    v17 = [v15 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:-8.0];
    [v18 setActive:1];
  }

  v19 = [v10 superview];
  if (v19)
  {
    v20 = v19;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v10 topAnchor];
    v22 = [v20 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:0.0];
    if (v23)
    {
      [v23 setActive:1];

      LODWORD(v24) = 1132068864;
      [v23 setPriority:v24];
      v20 = v23;
    }
  }

  [v10 setCustomSpacing:v25 afterView:2.0];

  sub_10054F69C();
}
void sub_10001AB70()
{
  v4 = &type metadata for KoreaFeatureFlag;
  v5 = sub_10001ABFC();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v1 = MGGetBoolAnswer();
  }

  byte_1006D4AD1 = v1;
}

unint64_t sub_10001ABFC()
{
  result = qword_1006BA8A8;
  if (!qword_1006BA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BA8A8);
  }

  return result;
}

unint64_t sub_10001AC8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B1AB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007204(v4, &v11, &qword_1006B0C50);
      v5 = v11;
      result = sub_10001ADB4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000072E4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001ADBC()
{
  result = qword_1006AF340;
  if (!qword_1006AF340)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF340);
  }

  return result;
}

void sub_10001AE5C(uint64_t a1)
{
  v51 = type metadata accessor for FMFRelationshipType();
  v3 = *(v51 - 8);
  v4 = __chkstk_darwin(v51);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v39 - v6;
  v7 = type metadata accessor for FMFFriend();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem);
  if (v13)
  {
    v14 = *(a1 + 16);
    v39 = v13;
    if (v14)
    {
      v16 = *(v8 + 16);
      v15 = v8 + 16;
      v45 = v16;
      v41 = (*(v15 + 64) + 32) & ~*(v15 + 64);
      v17 = a1 + v41;
      v18 = *(v15 + 56);
      v40 = (v15 - 8);
      v47 = v15;
      v42 = (v15 + 16);
      v43 = (v3 + 8);
      v52 = &_swiftEmptyArrayStorage;
      v46 = v7;
      v44 = v18;
      v19 = v49;
      v16(v12, v17, v7);
      while (1)
      {
        v22 = FMFFriend.optedNotToShare.getter();
        v53 = v22 != 2;
        v23 = v12;
        FMFFriend.relationshipType.getter();
        v24 = v50;
        static FMFRelationshipType.willFollowMyLocation.getter();
        sub_10000A108(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
        v25 = v51;
        v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v27 = *v43;
        (*v43)(v24, v25);
        v27(v19, v25);
        if (v26 & 1) != 0 || ((v53 ^ v22))
        {
          v28 = *v42;
          v12 = v23;
          v20 = v46;
          (*v42)(v48, v23, v46);
          v29 = v52;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001671C0(0, v29[2] + 1, 1);
            v29 = v54;
          }

          v32 = v29[2];
          v31 = v29[3];
          if (v32 >= v31 >> 1)
          {
            sub_1001671C0(v31 > 1, v32 + 1, 1);
            v29 = v54;
          }

          v29[2] = v32 + 1;
          v52 = v29;
          v33 = v29 + v41;
          v21 = v44;
          v28(&v33[v32 * v44], v48, v20);
        }

        else
        {
          v12 = v23;
          v20 = v46;
          (*v40)(v23, v46);
          v21 = v44;
        }

        v17 += v21;
        if (!--v14)
        {
          break;
        }

        v45(v12, v17, v20);
      }
    }

    else
    {
      v52 = &_swiftEmptyArrayStorage;
    }

    v34 = v52[2];

    if (v34)
    {
      v54 = v34;
      sub_100091894();
      v37 = BinaryInteger.formatted()();
      object = v37._object;
      countAndFlagsBits = v37._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v38 = v39;
    sub_10022A658(countAndFlagsBits, object);
  }
}

void sub_10001B278(uint64_t a1)
{
  v98 = type metadata accessor for UUID();
  v3 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v74 - v6;
  v8 = type metadata accessor for FMIPItem();
  v90 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v100 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v74 - v11;
  v12 = type metadata accessor for FMIPBeaconShare();
  v89 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v96 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v101 = &v74 - v16;
  __chkstk_darwin(v15);
  v18 = &v74 - v17;
  v19 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem];
  if (!v19)
  {
    return;
  }

  v82 = v3;
  v99 = v8;
  v76 = v1;
  v20 = *(a1 + 16);
  v77 = v19;
  v93 = v12;
  if (v20)
  {
    v21 = *(v89 + 16);
    v92 = ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v22 = v92 + a1;
    v23 = *(v89 + 72);
    v91 = (v89 + 8);
    v95 = (v89 + 32);
    v88 = _swiftEmptyArrayStorage;
    v94 = v89 + 16;
    v21(v18, v22, v12);
    while (1)
    {
      if (FMIPBeaconShare.requiresResponse.getter())
      {
        v24 = *v95;
        (*v95)(v96, v18, v12);
        v25 = v88;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016717C(0, *(v25 + 2) + 1, 1);
          v25 = v102;
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          sub_10016717C(v27 > 1, v28 + 1, 1);
          v25 = v102;
        }

        *(v25 + 2) = v28 + 1;
        v88 = v25;
        v29 = v92 + v25 + v28 * v23;
        v12 = v93;
        v24(v29, v96, v93);
      }

      else
      {
        (*v91)(v18, v12);
      }

      v22 += v23;
      if (!--v20)
      {
        break;
      }

      v21(v18, v22, v12);
    }
  }

  else
  {
    v88 = _swiftEmptyArrayStorage;
  }

  v30 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator;
  v31 = v76;

  v32 = FMIPManager.items.getter();

  v33 = *(v88 + 2);
  v75 = v30;
  v86 = v33;
  if (v33)
  {
    v34 = 0;
    v85 = *(v89 + 16);
    v84 = v88 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v83 = *(v89 + 72);
    v96 = (v90 + 16);
    v35 = (v82 + 1);
    v95 = (v90 + 8);
    v92 = (v90 + 32);
    v82 = (v90 + 56);
    v89 += 16;
    v81 = (v89 - 8);
    v80 = (v90 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = v99;
    v38 = v100;
    v79 = v7;
    v78 = v32;
    do
    {
      v94 = v34;
      v85(v101, &v84[v83 * v34], v12);
      v39 = *(v32 + 16);
      if (v39)
      {
        v91 = v36;
        v40 = v32 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
        v41 = *(v90 + 72);
        v42 = *(v90 + 16);
        while (1)
        {
          v42(v38, v40, v37);
          v43 = FMIPItem.identifier.getter();
          v45 = v44;
          v46 = v97;
          FMIPBeaconShare.beaconIdentifier.getter();
          v47 = UUID.uuidString.getter();
          v49 = v48;
          (*v35)(v46, v98);
          if (v43 == v47 && v45 == v49)
          {
            break;
          }

          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v50)
          {
            goto LABEL_27;
          }

          v37 = v99;
          v38 = v100;
          (*v95)(v100, v99);
          v40 += v41;
          if (!--v39)
          {
            v51 = 1;
            v36 = v91;
            v7 = v79;
            goto LABEL_28;
          }
        }

LABEL_27:
        v7 = v79;
        v37 = v99;
        v38 = v100;
        (*v92)(v79, v100, v99);
        v51 = 0;
        v36 = v91;
LABEL_28:
        v32 = v78;
      }

      else
      {
        v51 = 1;
      }

      (*v82)(v7, v51, 1, v37);
      v12 = v93;
      (*v81)(v101, v93);
      if ((*v80)(v7, 1, v37) == 1)
      {
        sub_10008228C(v7);
      }

      else
      {
        v52 = *v92;
        (*v92)(v87, v7, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_10008BE38(0, v36[2] + 1, 1, v36);
        }

        v54 = v36[2];
        v53 = v36[3];
        if (v54 >= v53 >> 1)
        {
          v36 = sub_10008BE38(v53 > 1, v54 + 1, 1, v36);
        }

        v36[2] = (v54 + 1);
        v52(v36 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v54, v87, v37);
      }

      v34 = v94 + 1;
    }

    while (v94 + 1 != v86);

    v31 = v76;
    v30 = v75;
    v55 = v36[2];
    if (!v55)
    {
      goto LABEL_39;
    }
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage[2];
    if (!v55)
    {
      goto LABEL_39;
    }
  }

  if (*(*(*&v31[v30] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser) != 1)
  {
    v102 = v55;
    sub_100091894();
    v61 = BinaryInteger.formatted()();
    v62 = v77;
    v63 = &v77[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue];
    *v63 = v61;

    v64 = *&v62[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel];

    v65 = String._bridgeToObjectiveC()();

    [v64 setText:v65];

    object = v63->_object;
    v31 = v76;
    [*&v62[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView] setHidden:object == 0];
    v58 = [objc_opt_self() currentNotificationCenter];
    v67 = *(*(*&v31[v75] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);
    v60 = v55 + v67;
    if (__OFADD__(v67, v55))
    {
      __break(1u);
      return;
    }

    v59 = v58;
    goto LABEL_42;
  }

LABEL_39:
  v56 = v77;
  v57 = &v77[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue];
  *v57 = 0;
  *(v57 + 1) = 0;

  [*&v56[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel] setText:0];
  [*&v56[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView] setHidden:*(v57 + 1) == 0];
  v58 = [objc_opt_self() currentNotificationCenter];
  v59 = v58;
  v60 = *(*(*&v31[v30] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);
LABEL_42:
  [v58 setBadgeCount:v60 withCompletionHandler:0];

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_100005B14(v68, qword_1006D4630);
  v69 = v31;

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134218240;
    *(v72 + 4) = *(*(*&v31[v75] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);

    *(v72 + 12) = 2048;
    v73 = v36[2];

    *(v72 + 14) = v73;

    _os_log_impl(&_mh_execute_header, v70, v71, "FMEmbeddedTabBar: update items tab badge: pushInfo number %ld, invites number: %ld", v72, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void sub_10001BD98()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabBarButtonsStackView;
  [*(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabBarButtonsStackView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorView;
  [*(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = (v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style);
  if (v3 == 2)
  {
    v5 = v4[12] + 8.0;
  }

  else
  {
    v5 = v4[11];
  }

  v6 = [*(v0 + v1) leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:v5];

  v9 = [*(v0 + v1) trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-v5];

  v12 = *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsLeadingConstraint);
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsLeadingConstraint) = v8;
  v13 = v8;

  v14 = *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsTrailingConstraint);
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsTrailingConstraint) = v11;
  v15 = v11;

  v49 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1005521F0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  v17 = *(v0 + v1);
  v51 = v13;
  v50 = v15;
  v18 = [v17 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v16 + 48) = v20;
  v21 = [*(v0 + v1) bottomAnchor];
  v22 = [v0 bottomAnchor];
  v23 = (v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style);
  v24 = [v21 constraintEqualToAnchor:v22 constant:-*(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 64)];

  *(v16 + 56) = v24;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:isa];

  v26 = [*&v52[v0] leadingAnchor];
  v27 = [v0 leadingAnchor];
  v28 = v23[9];
  v29 = [v26 constraintEqualToAnchor:v27 constant:v28];

  v30 = [*&v52[v0] trailingAnchor];
  v31 = [v0 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-v28];

  v33 = *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewLeadingConstraint);
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewLeadingConstraint) = v29;
  v34 = v29;

  v35 = *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewTrailingConstraint);
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewTrailingConstraint) = v32;
  v36 = v32;

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1005521F0;
  *(v37 + 32) = v34;
  *(v37 + 40) = v36;
  v38 = *&v52[v0];
  v39 = v34;
  v40 = v36;
  v41 = [v38 topAnchor];
  v42 = [v0 topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v37 + 48) = v43;
  v44 = [*&v52[v0] heightAnchor];
  v45 = [objc_opt_self() mainScreen];
  [v45 scale];
  v47 = v46;

  v48 = [v44 constraintEqualToConstant:1.0 / v47];
  *(v37 + 56) = v48;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:v53];
}

void sub_10001C364()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v12._countAndFlagsBits = v4;
    v12._object = v6;
    v7 = sub_10001C4B4(v12);
    if (v7 <= 1)
    {
      if (v7)
      {
        v8 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesTabItem;
      }
    }

    else if (v7 - 2 >= 2)
    {
      if (v7 != 4)
      {
        return;
      }

      v8 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem;
    }

    v9 = *(v0 + *v8);
    if (v9)
    {
      v10 = v9;
      sub_100289400(v10);
    }
  }
}

unint64_t sub_10001C4B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622028, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

char *sub_10001C524(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy23FMInitialCardController_selectionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FMInitialCardController();

  v2 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  v3 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_dismissable;
  v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_dismissable] = 0;
  v4 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_closeButton];
  v5 = v2;
  [v4 setHidden:{1, v7.receiver, v7.super_class}];
  [*(*&v5[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer] + OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber) setHidden:v2[v3]];
  sub_10001DC78();

  return v5;
}

id sub_10001C69C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint] = 0;
  v7 = &v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration];
  *v7 = xmmword_100557A60;
  v7[1] = xmmword_100557A70;
  v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] = 1;
  v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_dismissable] = 1;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardLeadingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTrailingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardBottomConstraint] = 0;
  v8 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground;
  v9 = type metadata accessor for FMPassthroughView();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled] = 1;
  *&v10[OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews] = _swiftEmptyArrayStorage;
  v25.receiver = v10;
  v25.super_class = v9;
  *&v3[v8] = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardShadow;
  *&v3[v11] = [objc_allocWithZone(UIView) init];
  v23 = &type metadata for SolariumFeatureFlag;
  v24 = sub_10000BD04();
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100006060(v22);
  v12 = objc_opt_self();
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = 7;
  }

  v14 = [v12 buttonWithType:v13];
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_closeButton] = v14;
  v15 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer;
  *&v3[v15] = [objc_allocWithZone(type metadata accessor for FMCardContainerView()) init];
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView] = 0;
  v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isFirstLayoutCompleted] = 0;
  v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanFromScrollView] = 0;
  v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanningCard] = 0;
  v16 = &v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_startPosition];
  *v16 = 0;
  v16[8] = 1;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_otherGesture] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularCardTopConstraint] = 0;
  v17 = &v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
  *v17 = 0;
  v17[1] = 0;
  if (a2)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = v3;
  v21.super_class = type metadata accessor for FMCardContainerViewController();
  v19 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v18, a3);

  return v19;
}

id sub_10001C998()
{
  v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance] = 0;
  v1 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground;
  *&v0[v2] = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_darkeningView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber;
  *&v0[v4] = [objc_allocWithZone(_UIGrabber) init];
  v5 = &v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint] = 0;
  v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle] = 2;
  *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMCardContainerView();
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10001CB0C();
  sub_10001CF44();
  sub_10001DA30();

  return v6;
}

id sub_10001CB0C()
{
  v1 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v1 - 8);
  [v0 setPreservesSuperviewLayoutMargins:1];
  v20 = &type metadata for SolariumFeatureFlag;
  v2 = sub_10000BD04();
  v21 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v19);
  if (v3)
  {
    if ((v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle] & 1) == 0)
    {
      v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle] = 1;
      static _Glass._GlassVariant.regular.getter();
      v20 = type metadata accessor for _Glass();
      v21 = &protocol witness table for _Glass;
      sub_100008FC0(v19);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();
    }

    [v0 setClipsToBounds:1];
    v4 = [v0 layer];
    [v4 setMasksToBounds:1];

    v5 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView];
    [v5 setPreservesSuperviewLayoutMargins:1];
    v6 = [v5 layer];
    [v6 setMasksToBounds:1];

    v7 = [objc_opt_self() clearColor];
    v8 = &selRef_setBackgroundColor_;
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground];
    [v5 setPreservesSuperviewLayoutMargins:1];
    v9 = [v5 layer];
    [v9 setMasksToBounds:1];

    v10 = [v5 layer];
    [v10 setCornerRadius:_UISheetCornerRadius];

    v11 = String._bridgeToObjectiveC()();
    [v5 _setGroupName:v11];

    if (qword_1006AEC38 != -1)
    {
      swift_once();
    }

    [v5 _setCaptureView:qword_1006D47B8];
    v7 = [objc_opt_self() effectWithStyle:1100];
    v8 = &selRef_setEffect_;
  }

  v12 = v7;
  [v5 *v8];

  [v0 addSubview:v5];
  v13 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_darkeningView];
  [v13 setUserInteractionEnabled:0];
  v14 = [v13 layer];
  [v14 setMasksToBounds:1];

  v20 = &type metadata for SolariumFeatureFlag;
  v21 = v2;
  v15 = isFeatureEnabled(_:)();
  sub_100006060(v19);
  if ((v15 & 1) == 0)
  {
    v16 = [v13 layer];
    [v16 setCornerRadius:_UISheetCornerRadius];
  }

  v17 = [objc_opt_self() blackColor];
  [v13 setBackgroundColor:v17];

  [v13 setAlpha:0.0];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber]];
  return [v0 addSubview:v13];
}

void sub_10001CF44()
{
  v92 = &type metadata for SolariumFeatureFlag;
  v1 = sub_10000BD04();
  v93 = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v91);
  v3 = &OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView;
  if ((v2 & 1) == 0)
  {
    v3 = &OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground;
  }

  [*&v0[*v3] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_darkeningView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v92 = &type metadata for SolariumFeatureFlag;
  v93 = v1;
  v6 = isFeatureEnabled(_:)();
  sub_100006060(v91);
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView];
  }

  else
  {
    v7 = [*&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground] contentView];
  }

  v8 = v7;
  v9 = [v0 superview];
  if (v9)
  {
    v10 = v9;
    [v9 layoutMargins];
    top = v11;
    left = v13;
    bottom = v15;
    right = v17;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v8 setLayoutMargins:{top, left, bottom, right, v4}];

  v19 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005521F0;
  v21 = [v5 topAnchor];
  v22 = [v0 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:6.0];

  *(v20 + 32) = v23;
  v24 = [v5 centerXAnchor];
  v25 = [v0 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v20 + 40) = v26;
  v27 = [v5 widthAnchor];
  v28 = [v27 constraintEqualToConstant:60.0];

  *(v20 + 48) = v28;
  v29 = [v5 heightAnchor];
  v30 = [v29 constraintEqualToConstant:4.0];

  *(v20 + 56) = v30;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v90 = v19;
  [v19 activateConstraints:isa];

  v92 = &type metadata for SolariumFeatureFlag;
  v93 = v1;
  LOBYTE(isa) = isFeatureEnabled(_:)();
  sub_100006060(v91);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1005521F0;
  v33 = [v89 topAnchor];
  if (isa)
  {
    v34 = [v0 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v32 + 32) = v35;
    v36 = [v89 bottomAnchor];
    v37 = [v0 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v32 + 40) = v38;
    v39 = [v89 leadingAnchor];
    v40 = [v0 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v32 + 48) = v41;
    v42 = [v89 trailingAnchor];
    v43 = [v0 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    *(v32 + 56) = v44;
    v45 = Array._bridgeToObjectiveC()().super.isa;

    [v19 activateConstraints:v45];

    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100552EF0;
    v47 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView];
    v48 = [v47 topAnchor];
    v49 = [v0 topAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v46 + 32) = v50;
    v51 = [v47 leadingAnchor];
    v52 = [v0 leadingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v46 + 40) = v53;
    v54 = [v47 trailingAnchor];
    v55 = [v0 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v46 + 48) = v56;
    v57 = Array._bridgeToObjectiveC()().super.isa;

    [v90 activateConstraints:v57];

    v58 = [v47 bottomAnchor];
    v59 = [v0 bottomAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    v61 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint];
    *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint] = v60;
    v62 = v60;

    if (!v62)
    {
      return;
    }

    [(objc_class *)v62 setActive:1];
  }

  else
  {
    v63 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground];
    v64 = [v63 topAnchor];
    v65 = [v33 constraintEqualToAnchor:v64];

    *(v32 + 32) = v65;
    v66 = [v89 bottomAnchor];
    v67 = [v63 bottomAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v32 + 40) = v68;
    v69 = [v89 leadingAnchor];
    v70 = [v63 leadingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v32 + 48) = v71;
    v72 = [v89 trailingAnchor];
    v73 = [v63 trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v32 + 56) = v74;
    v75 = Array._bridgeToObjectiveC()().super.isa;

    [v19 activateConstraints:v75];

    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1005521F0;
    v77 = [v63 topAnchor];
    v78 = [v0 topAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];

    *(v76 + 32) = v79;
    v80 = [v63 bottomAnchor];
    v81 = [v0 bottomAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];

    *(v76 + 40) = v82;
    v83 = [v63 leadingAnchor];
    v84 = [v0 leadingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];

    *(v76 + 48) = v85;
    v86 = [v63 trailingAnchor];
    v87 = [v0 trailingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];

    *(v76 + 56) = v88;
    v62 = Array._bridgeToObjectiveC()().super.isa;

    [v90 activateConstraints:v62];
  }
}

void sub_10001DA30()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_darkeningView];
  v2 = 0.1;
  if (!v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance])
  {
    v2 = 0.0;
  }

  [*&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_darkeningView] setAlpha:v2];
  v14 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView];
    v5 = [v4 layer];
    [v5 setMaskedCorners:15];

    v6 = [v4 layer];
    [v6 setCornerCurve:kCACornerCurveContinuous];

    v7 = [v1 layer];
    [v7 setMaskedCorners:15];

    v8 = [v1 layer];
    [v8 setCornerCurve:kCACornerCurveContinuous];
  }

  else
  {
    v9 = [v0 traitCollection];
    v10 = [v9 horizontalSizeClass];

    v11 = [*&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground] layer];
    v12 = v11;
    if (v10 == 1)
    {
      [v11 setMaskedCorners:3];

      v8 = [v1 layer];
      [v8 setMaskedCorners:3];
    }

    else
    {
      [v11 setMaskedCorners:15];

      v8 = [v1 layer];
      [v8 setMaskedCorners:15];
    }
  }
}

uint64_t sub_10001DC78()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100057FB4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100640FF0;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100485784(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_10001DFAC()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMMainViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  sub_10001E198();
  sub_100025B8C();
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v3 = *(v2 + 24);
  type metadata accessor for FMDevicesSubscription();
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v4 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100637E58;
  swift_unknownObjectWeakAssign();
  v5 = *(v3 + 16);

  os_unfair_lock_lock((v5 + 24));
  sub_10000E7C0((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  v6 = *(v2 + 48);
  type metadata accessor for FMPeopleSubscription();
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v7 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100637DF0;
  swift_unknownObjectWeakAssign();
  v8 = *(v6 + 32);

  os_unfair_lock_lock((v8 + 24));
  sub_10000E7C0((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));

  v9 = *(v2 + 16);
  sub_100026D24(v1, v9);
}

id sub_10001E198()
{
  v1 = v0;
  if (qword_1006AEC38 != -1)
  {
    swift_once();
  }

  [qword_1006D47B8 setRenderMode:1];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_tabBar];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_tabBar + 8];
  v5 = &v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
  v6 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
  *v5 = v3;
  *(v5 + 1) = v4;
  v7 = v3;

  ObjectType = swift_getObjectType();
  v9 = *(v4 + 16);
  v10 = swift_unknownObjectRetain();
  v9(v10, &off_100637F30, ObjectType, v4);
  [v1 addChildViewController:v2];
  v11 = *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_mapController];
  [v1 addChildViewController:v11];
  v12 = *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_noLocationController];
  [v1 addChildViewController:v12];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  result = [v11 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = result;
  [v14 addSubview:result];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = result;
  [result addSubview:qword_1006D47B8];

  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = result;
  result = [v12 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = result;
  [v17 addSubview:result];

  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = result;
  [v19 addSubview:result];

  v30 = &type metadata for SolariumFeatureFlag;
  v31 = sub_10000BD04();
  v21 = isFeatureEnabled(_:)();
  sub_100006060(v29);
  if (v21)
  {
LABEL_19:
    [v11 didMoveToParentViewController:v1];
    [v12 didMoveToParentViewController:v1];
    return [v2 didMoveToParentViewController:v1];
  }

  result = [v1 view];
  if (result)
  {
    v22 = result;
    [result addSubview:v7];

    type metadata accessor for FMLegacyTabBar();
    v23 = swift_dynamicCastClass();
    if (v23 && (v24 = [v23 items]) != 0)
    {
      v25 = v24;
      sub_10000905C(0, &qword_1006B6BD8);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v26 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v27 < 2;
    }

    else
    {
      v28 = 1;
    }

    [v7 setHidden:v28];
    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_10001E56C()
{
  result = [objc_allocWithZone(_UIVisualEffectBackdropView) init];
  qword_1006D47B8 = result;
  return result;
}

uint64_t sub_10001E5A0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_contentDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_10001E670()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMapViewController: setupSubviews", v5, 2u);
  }

  v6 = *&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
  [v6 setDelegate:v1];
  My = type metadata accessor for Feature.FindMy();
  v49 = My;
  v8 = sub_10000A540(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v50 = v8;
  v9 = sub_100008FC0(v48);
  v10 = enum case for Feature.FindMy.springfieldIntegration(_:);
  v11 = *(*(My - 8) + 104);
  v11(v9, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  v12 = isFeatureEnabled(_:)();
  sub_100006060(v48);
  if (v12)
  {
    [v6 setSelectableMapFeatures:1];
    v13 = &selRef__setAlwaysShowHeadingIndicatorIfSupported_;
  }

  else
  {
    v13 = &selRef_setShowsBuildings_;
  }

  [v6 *v13];
  [v6 setShowsUserLocation:1];
  v14 = [objc_opt_self() systemBlueColor];
  [v6 setTintColor:v14];

  [v6 setShowsAttribution:0];
  [v6 setShowsCompass:0];
  v15 = OBJC_IVAR____TtC6FindMy19FMMapViewController_compassButton;
  [*&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_compassButton] setCompassVisibility:0];
  sub_1003F9408();
  v49 = My;
  v50 = v8;
  v16 = sub_100008FC0(v48);
  v11(v16, v10, My);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100006060(v48);
  v17 = (*(*&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  v18 = *v17;
  if (v14)
  {
    v19 = v17[1];
    if (v17[2])
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_10001EC90(v21 | v18 | v20);
    [v6 setPreferredConfiguration:v22];
  }

  else
  {
    v23 = v17[2] == 0;
    v24 = 3;
    if (!v23)
    {
      v24 = 4;
    }

    if (v18)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    [v6 setMapType:v25];
  }

  sub_10001ED48(0);
  type metadata accessor for FMDeviceAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = String._bridgeToObjectiveC()();
  [v6 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v27];

  type metadata accessor for FMPersonAnnotationView();
  v28 = swift_getObjCClassFromMetadata();
  v29 = String._bridgeToObjectiveC()();
  [v6 registerClass:v28 forAnnotationViewWithReuseIdentifier:v29];

  type metadata accessor for FMTrackAnnotationView();
  v30 = swift_getObjCClassFromMetadata();
  v31 = String._bridgeToObjectiveC()();
  [v6 registerClass:v30 forAnnotationViewWithReuseIdentifier:v31];

  type metadata accessor for FMClusteredAnnotationView();
  v32 = swift_getObjCClassFromMetadata();
  v33 = String._bridgeToObjectiveC()();
  [v6 registerClass:v32 forAnnotationViewWithReuseIdentifier:v33];

  sub_10000905C(0, &unk_1006BEF70);
  v34 = swift_getObjCClassFromMetadata();
  v35 = String._bridgeToObjectiveC()();
  [v6 registerClass:v34 forAnnotationViewWithReuseIdentifier:v35];

  type metadata accessor for FMItemAnnotationView();
  v36 = swift_getObjCClassFromMetadata();
  v37 = String._bridgeToObjectiveC()();
  [v6 registerClass:v36 forAnnotationViewWithReuseIdentifier:v37];

  v38 = [v1 view];
  if (!v38)
  {
    __break(1u);
    goto LABEL_30;
  }

  v39 = v38;
  [v38 addSubview:v6];

  v40 = [v1 view];
  if (!v40)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v41 = v40;
  [v40 addSubview:*&v1[v15]];

  v42 = [v1 view];
  if (!v42)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = v42;
  [v42 addSubview:*&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_statusBar]];

  v44 = *&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView];
  if (!v44)
  {
    return;
  }

  v45 = v44;
  v46 = [v1 view];
  if (!v46)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v47 = v46;
  [v46 addSubview:v45];
}

id sub_10001EC90(unsigned int a1)
{
  if ((a1 & 1) == 0)
  {
    v3 = (a1 >> 8) & 1;
    v4 = [objc_allocWithZone(MKStandardMapConfiguration) initWithElevationStyle:1 emphasisStyle:0];
LABEL_8:
    v5 = v4;
    [v4 setShowsTraffic:v3];
    return v5;
  }

  if ((a1 & 0x10000) != 0)
  {
    v3 = (a1 >> 8) & 1;
    v4 = [objc_allocWithZone(MKHybridMapConfiguration) initWithElevationStyle:1];
    goto LABEL_8;
  }

  v1 = objc_allocWithZone(MKImageryMapConfiguration);

  return [v1 initWithElevationStyle:1];
}

void sub_10001ED48(char a1)
{
  v2 = v1;
  v4 = *(*(*(v1 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  v5 = [objc_opt_self() _globeIsEnabled];
  v6 = *(v2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  v7 = [v6 _isPitched];
  v8 = [v6 _canEnter3DMode];
  v9 = *(v2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isExiting3DMode);
  v10 = [v6 _isShowingCuratedElevatedGround];
  [v6 _zoomLevel];
  v12 = v11;
  v32 = &type metadata for SolariumFeatureFlag;
  v33 = sub_10000BD04();
  v13 = isFeatureEnabled(_:)();
  sub_100006060(v31);
  if (v13)
  {
    v4 = [v6 mapType] != 0;
  }

  if (!(v9 & 1 | ((v7 & 1) == 0)))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v16, v21))
    {
      v19 = 1;
      goto LABEL_28;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v16, v21, "FMMapViewController: shouldShowPerspectiveButton - show2D - isPitched && !isExiting3DMode", v22, 2u);
    v19 = 1;
    goto LABEL_27;
  }

  if (v5)
  {
    if (v8 & 1) != 0 && (v12 >= 16.0 ? (v14 = v10) : (v14 = 0), ((v14 | v4)))
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100005B14(v15, qword_1006D4630);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "FMMapViewController: shouldShowPerspectiveButton - show3D - isGlobeEnabled", v18, 2u);
        v19 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v19 = 0;
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100005B14(v26, qword_1006D4630);
      v16 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v19 = 2;
      if (os_log_type_enabled(v16, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v16, v27, "FMMapViewController: shouldShowPerspectiveButton - hideAll - isGlobeEnabled", v28, 2u);
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v16, v24, "FMMapViewController: shouldShowPerspectiveButton - hideAll", v25, 2u);
      v19 = 2;
      goto LABEL_27;
    }

    v19 = 2;
  }

LABEL_28:

  v29 = *(v2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView);
  if (v29)
  {
    v30 = v29;
    sub_100017AE0(v19, a1 & 1);
  }
}

void sub_10001F254()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView];
  if (v4)
  {
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v118 = OBJC_IVAR____TtC6FindMy19FMMapViewController_statusBar;
  [*&v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_statusBar] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005521F0;
  v6 = [v2 topAnchor];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_33;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor:v9];
  *(v5 + 32) = v10;
  v11 = [v2 bottomAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(v5 + 40) = v15;
  v16 = [v2 leadingAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v5 + 48) = v20;
  v21 = [v2 trailingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor:v25];
  *(v5 + 56) = v26;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v28 = *&qword_1006D4750;
  v29 = *algn_1006D4758;
  v31 = qword_1006D4760;
  v30 = *&qword_1006D4768;
  v32 = *&qword_1006D4770;
  v33 = *&qword_1006D4788;
  v116 = OBJC_IVAR____TtC6FindMy19FMMapViewController_compassButton;
  [*&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_compassButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100552EF0;
  v35 = [*&v1[v118] topAnchor];
  v36 = [v1 view];
  if (!v36)
  {
    goto LABEL_36;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v34 + 32) = v39;
  v40 = [*&v1[v118] leadingAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  *(v34 + 40) = v44;
  v45 = [*&v1[v118] trailingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v34 + 48) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:v50];

  v51 = objc_opt_self();
  v52 = [v51 currentDevice];
  v53 = [v52 userInterfaceIdiom];

  v54 = *&v1[v118];
  if (v53 == 1)
  {
    v55 = [v54 heightAnchor];
    v56 = [v55 constraintEqualToConstant:v33];
    goto LABEL_16;
  }

  v57 = [v54 bottomAnchor];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v59 = v58;
  v60 = [v58 safeAreaLayoutGuide];

  v55 = [v60 topAnchor];
  v56 = [v57 constraintGreaterThanOrEqualToAnchor:v55];

LABEL_16:
  [v56 setActive:1];

  v61 = *&v1[v3];
  if (!v61)
  {
    return;
  }

  v119[3] = &type metadata for SolariumFeatureFlag;
  v119[4] = sub_10000BD04();
  v62 = v61;
  v63 = isFeatureEnabled(_:)();
  sub_100006060(v119);
  v117 = v62;
  if (v63)
  {
    v64 = [v51 currentDevice];
    v65 = [v64 userInterfaceIdiom];

    v66 = v62;
    v67 = [v66 trailingAnchor];
    v68 = [v1 view];
    if (v68)
    {
      v69 = v68;
      if (v65 == 1)
      {
        v70 = *&v31;
      }

      else
      {
        v70 = v29;
      }

      v71 = [v68 safeAreaLayoutGuide];

      v72 = [v71 trailingAnchor];
      v73 = [v67 constraintEqualToAnchor:v72 constant:-v70];

      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1005528C0;
      *(v74 + 32) = v73;
      v119[0] = v74;
      v115 = v73;
      v75 = [v51 currentDevice];
      v76 = [v75 userInterfaceIdiom];

      if (v76 != 1)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1005528C0;
        v102 = [v66 topAnchor];

        v103 = [*&v1[v118] bottomAnchor];
        v104 = [v102 constraintEqualToAnchor:v103 constant:v28];

        *(inited + 32) = v104;
        goto LABEL_29;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100552EE0;
      v78 = [v66 topAnchor];
      v79 = [v1 view];
      if (v79)
      {
        v80 = v79;
        v81 = [v79 topAnchor];

        v82 = [v78 constraintGreaterThanOrEqualToAnchor:v81 constant:v30];
        *(inited + 32) = v82;
        v83 = [v66 topAnchor];

        v84 = [v1 view];
        if (v84)
        {
          v85 = v84;
          v86 = [v84 safeAreaLayoutGuide];

          v87 = [v86 topAnchor];
          v88 = [v83 constraintGreaterThanOrEqualToAnchor:v87 constant:v32];

          *(inited + 40) = v88;
LABEL_29:
          sub_10001FF64(inited);
          v105 = Array._bridgeToObjectiveC()().super.isa;

          v101 = v24;
          [v24 activateConstraints:v105];

          goto LABEL_30;
        }

LABEL_43:
        __break(1u);
        return;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_100552EE0;
  v90 = v62;
  v91 = [v90 topAnchor];
  v92 = [*&v1[v118] bottomAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:*&qword_1006D4750];

  *(v89 + 32) = v93;
  v94 = [v90 trailingAnchor];

  v95 = [v1 view];
  if (!v95)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v96 = v95;
  v97 = [v95 safeAreaLayoutGuide];

  v98 = [v97 trailingAnchor];
  v99 = [v94 constraintEqualToAnchor:v98 constant:-*&qword_1006D4750];

  *(v89 + 40) = v99;
  v100 = Array._bridgeToObjectiveC()().super.isa;

  v101 = v24;
  [v24 activateConstraints:v100];

LABEL_30:
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_100552EE0;
  v107 = [*&v1[v116] topAnchor];
  v108 = v117;
  v109 = [v108 bottomAnchor];
  v110 = [v107 constraintEqualToAnchor:v109 constant:*&qword_1006D4750];

  *(v106 + 32) = v110;
  v111 = [*&v1[v116] centerXAnchor];
  v112 = [v108 centerXAnchor];

  v113 = [v111 constraintEqualToAnchor:v112];
  *(v106 + 40) = v113;
  v114 = Array._bridgeToObjectiveC()().super.isa;

  [v101 activateConstraints:v114];
}

uint64_t sub_10001FF98(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000200B4(uint64_t a1)
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

uint64_t sub_100020154(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10043C16C(&qword_1006C00E8, &qword_1006C00E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C00E0);
            v9 = sub_1001686B4(v13, i, a3);
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
        sub_10000905C(0, &qword_1006B3A70);
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

void sub_1000202F4(int a1, void (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v100 = a1;
  v7 = sub_10007EBC0(&unk_1006B0000);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v97 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource];
  if (v17[57] == 1 && (v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled] & 1) == 0)
  {
    v99 = a2;
    v18 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
    swift_beginAccess();
    sub_100007204(&v4[v18], v12, &unk_1006B0000);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100012DF0(v12, &unk_1006B0000);
LABEL_16:
      a2 = v99;
      goto LABEL_17;
    }

    (*(v14 + 32))(v16, v12, v13);
    Date.timeIntervalSinceNow.getter();
    if (v19 >= -5.0)
    {
      (*(v14 + 8))(v16, v13);
      goto LABEL_16;
    }

    v98 = a3;
    v20 = sub_100020DC8();
    v21 = v20;
    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_8;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v22 = *(v21 + 32);
        swift_unknownObjectRetain();
      }

      v23 = *&v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
      [v22 coordinate];
      [v23 setCenterCoordinate:1 animated:?];
      swift_unknownObjectRelease();
      (*(v14 + 8))(v16, v13);
      goto LABEL_15;
    }

    (*(v14 + 8))(v16, v13);

LABEL_15:
    (*(v14 + 56))(v10, 1, 1, v13);
    swift_beginAccess();
    sub_10040682C(v10, &v4[v18]);
    swift_endAccess();
    a3 = v98;
    goto LABEL_16;
  }

LABEL_17:
  if (v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled] != 1 || (v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected] & 1) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMMapViewController: center camera isAutomaticCenteringEnabled disabled", v27, 2u);
    }

    goto LABEL_23;
  }

  if (v17[56] > 1u)
  {
    v28 = sub_1003F9570();
  }

  else
  {
    v28 = sub_100020DC8();
  }

  v29 = v28;
  v30 = v28 >> 62;
  if (v17[56])
  {
    v31 = 1;
  }

  else
  {
    if (v30)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v32 < 2;
  }

  v98 = a3;
  v33 = v17[58] & v31;
  v34 = *&v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
  if (v30)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100021F74(v29, v35 > 1, v33 & 1);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  if (v33)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100005B14(v44, qword_1006D4630);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_47;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "FMMapViewController: Normalizing map";
    goto LABEL_46;
  }

  if (v17[56] || v35 > 2)
  {
    goto LABEL_53;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100005B14(v49, qword_1006D4630);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "FMMapViewController: Normalizing single annotation";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v45, v46, v48, v47, 2u);
  }

LABEL_47:

  if (v41 < 4000.0 || v43 < 4000.0)
  {
    v39 = v39 - (4000.0 - v43) * 0.5;
    v37 = v37 - (4000.0 - v41) * 0.5;
    v41 = 4000.0;
    v43 = 4000.0;
  }

LABEL_53:
  v99 = v30;
  sub_100022444();
  [v34 mapRectThatFits:v37 edgePadding:{v39, v41, v43, v51, v52, v53, v54}];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  [v34 frame];
  v64 = v63;
  v66 = v65;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_100005B14(v67, qword_1006D4630);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134218240;
    *(v70 + 4) = v62;
    *(v70 + 12) = 2048;
    *(v70 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v68, v69, "FMMapViewController: padded map rect height: %f, width: %f", v70, 0x16u);
  }

  v71 = v4;

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v97[1] = v71;
    v74 = v34;
    v75 = a2;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v101[0] = v77;
    *v76 = 136315394;
    v102 = v17[56];
    v78 = String.init<A>(describing:)();
    v80 = sub_100005B4C(v78, v79, v101);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2048;
    if (v99)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v81 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v76 + 14) = v81;

    _os_log_impl(&_mh_execute_header, v72, v73, "FMMapViewController: center camera dataSource.mode: %s, annotations count: %ld", v76, 0x16u);
    sub_100006060(v77);

    a2 = v75;
    v34 = v74;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v82 = [objc_opt_self() _cameraLookingAtMapRect:v56 forViewSize:{v58, v60, v62, v64, v66}];
  if (v82)
  {
    v25 = v82;
    [v82 centerCoordinate];
    if (!CLLocationCoordinate2DIsValid(v103))
    {
LABEL_23:

      return;
    }

    if (v100)
    {
      v83 = [v34 camera];
      [v83 pitch];
      v85 = v84;

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 134217984;
        *(v88 + 4) = v85;
        v89 = "FMMapViewController: center camera preserving pitch: %f";
        v90 = v87;
        v91 = v86;
        v92 = v88;
        v93 = 12;
LABEL_70:
        _os_log_impl(&_mh_execute_header, v91, v90, v89, v92, v93);
      }
    }

    else
    {
      v86 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      v85 = 0.0;
      if (os_log_type_enabled(v86, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        v89 = "FMMapViewController: center camera reset pitch to zero";
        v90 = v94;
        v91 = v86;
        v92 = v95;
        v93 = 2;
        goto LABEL_70;
      }
    }

    v96 = v98;

    [v25 setPitch:v85];
    sub_10005ED98(v25, a2, v96, 0.6);
    goto LABEL_23;
  }
}

void *sub_100020DC8()
{
  v105 = sub_10007EBC0(&unk_1006B4970);
  v1 = __chkstk_darwin(v105);
  v103 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v96 - v3;
  v5 = sub_10007EBC0(&qword_1006BEEE8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v96 - v6);
  v112 = type metadata accessor for FMAnnotationIdentifier();
  v8 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v111 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v110 = &v96 - v12;
  v13 = __chkstk_darwin(v11);
  v101 = (&v96 - v14);
  v15 = __chkstk_darwin(v13);
  v17 = (&v96 - v16);
  v18 = __chkstk_darwin(v15);
  v100 = (&v96 - v19);
  v20 = __chkstk_darwin(v18);
  v104 = &v96 - v21;
  v22 = __chkstk_darwin(v20);
  v119 = &v96 - v23;
  v24 = __chkstk_darwin(v22);
  v102 = &v96 - v25;
  v26 = __chkstk_darwin(v24);
  v117 = &v96 - v27;
  __chkstk_darwin(v26);
  v116 = &v96 - v28;
  v29 = *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  v30 = [v29 annotations];
  sub_10007EBC0(&qword_1006C1DD0);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = *(*(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  if (!v32)
  {
    v34 = *(*(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 56);
LABEL_20:
    if (v34 != 1)
    {
      return v31;
    }

    v115 = v0;
    v99 = v4;

    v121 = &_swiftEmptyArrayStorage;
    v44 = [v29 annotations];
    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v45 >> 62)
    {
      goto LABEL_117;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v112;
    if (v46)
    {
      goto LABEL_23;
    }

LABEL_118:

    return &_swiftEmptyArrayStorage;
  }

  v33 = *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource);
  v34 = *(v33 + 56);
  if (*(v33 + 56) && (*(v33 + 58) & 1) != 0)
  {
    goto LABEL_20;
  }

  v119 = v32;
  [v119 coordinate];
  v35 = MKMapPointForCoordinate(v122);
  v121 = &_swiftEmptyArrayStorage;
  if (v31 >> 62)
  {
    goto LABEL_91;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v37 = 0;
    v17 = &_swiftEmptyArrayStorage;
    while ((v31 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_89;
      }

LABEL_10:
      [v38 coordinate];
      v124 = MKMapPointForCoordinate(v123);
      v40 = MKMetersBetweenMapPoints(v35, v124);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100062518(0, v17[2] + 1, 1, v17);
      }

      v42 = v17[2];
      v41 = v17[3];
      if (v42 >= v41 >> 1)
      {
        v17 = sub_100062518((v41 > 1), v42 + 1, 1, v17);
      }

      v17[2] = v42 + 1;
      v43 = &v17[2 * v42];
      v43[4] = v40;
      *(v43 + 5) = v38;
      swift_unknownObjectRelease();
      ++v37;
      if (v39 == i)
      {
        goto LABEL_93;
      }
    }

    if (v37 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_90;
    }

    v38 = *(v31 + 8 * v37 + 32);
    swift_unknownObjectRetain();
    v39 = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
      goto LABEL_10;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    ;
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_93:
  v120 = v17;

  sub_10006264C(&v120);

  v45 = v120;
  v7 = v120[2];
  if (!v7)
  {
    v31 = &_swiftEmptyArrayStorage;
LABEL_114:

    return v31;
  }

  v89 = 0;
  v8 = v120 + 5;
  v31 = &_swiftEmptyArrayStorage;
  v90 = 4;
  v91 = 0.0;
  while (v89 < *(v45 + 16))
  {
    v92 = *(v8 - 1);
    if (v92 < 16000.0)
    {
      goto LABEL_107;
    }

    if (v31 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < v90)
      {
LABEL_100:
        if (v92 >= 160000.0)
        {
          goto LABEL_114;
        }

        goto LABEL_107;
      }
    }

    else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < v90)
    {
      goto LABEL_100;
    }

    if (v92 >= 160000.0 || v92 + -100.0 > v91)
    {
      goto LABEL_114;
    }

LABEL_107:
    swift_unknownObjectRetain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v31 = v121;
    if (v92 < 1000.0 && __OFADD__(v90++, 1))
    {
      goto LABEL_116;
    }

    v89 = (v89 + 1);
    v8 += 2;
    v91 = v92;
    if (v7 == v89)
    {
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v46 = _CocoaArrayWrapper.endIndex.getter();
  v47 = v112;
  if (!v46)
  {
    goto LABEL_118;
  }

LABEL_23:
  if (v46 >= 1)
  {
    v48 = 0;
    v118 = v45 & 0xC000000000000001;
    v109 = v45 + 32;
    v113 = (v8 + 6);
    v31 = &_swiftEmptyArrayStorage;
    v107 = v7;
    v108 = v17;
    v106 = v45;
    v114 = v46;
    while (1)
    {
      if (v118)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for FMAnnotation();
      v49 = swift_dynamicCastClass();
      if (v49)
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_26:
      if (++v48 == v46)
      {

        return v31;
      }
    }

    v50 = v49;
    swift_unknownObjectRetain();
    sub_1003F898C(v7);
    if ((*v113)(v7, 1, v47) == 1)
    {
      swift_unknownObjectRelease_n();
      sub_100012DF0(v7, &qword_1006BEEE8);
LABEL_78:
      v46 = v114;
      goto LABEL_26;
    }

    v51 = v116;
    sub_10005701C(v7, v116, type metadata accessor for FMAnnotationIdentifier);
    sub_100027BE0(v51, v117, type metadata accessor for FMAnnotationIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v53 = v102;
          v54 = sub_100027BE0(v117, v102, type metadata accessor for FMAnnotationIdentifier);
          v55 = *(*v53 + 32);
          (*((swift_isaMask & *v50) + 0x190))(v54);
          v56 = 0;
          v57 = *(v55 + 16);
          do
          {
            if (v57 == v56)
            {
              sub_10002A100(v119, type metadata accessor for FMAnnotationIdentifier);

              goto LABEL_72;
            }

            v58 = v56 + 1;
            v59 = sub_10017E734(v55 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v8[9] * v56, v119);
            v56 = v58;
          }

          while ((v59 & 1) == 0);
          sub_10002A100(v119, type metadata accessor for FMAnnotationIdentifier);
          swift_unknownObjectRetain();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease_n();
          sub_10002A100(v116, type metadata accessor for FMAnnotationIdentifier);
          v31 = v121;

          goto LABEL_69;
        }

        goto LABEL_72;
      }

      (*((swift_isaMask & *v50) + 0x190))();
      v60 = v103;
      v61 = (v103 + *(v105 + 48));
      sub_100027BE0(v17, v103, type metadata accessor for FMAnnotationIdentifier);
      sub_100027BE0(v116, v61, type metadata accessor for FMAnnotationIdentifier);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_10002A100(v17, type metadata accessor for FMAnnotationIdentifier);
        v81 = v60;
        goto LABEL_71;
      }

      v62 = v101;
      sub_100027BE0(v60, v101, type metadata accessor for FMAnnotationIdentifier);
      v63 = v62[1];
      v98 = *v62;

      v64 = swift_getEnumCaseMultiPayload();
      if (v64 == 2)
      {
        v76 = *v61;
        v77 = v61[1];
        v7 = v107;
        v66 = v108;
        if (v98 == v76 && v63 == v77)
        {
          goto LABEL_61;
        }

        v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {
        v7 = v107;
        if (v64 != 4)
        {
          sub_10002A100(v108, type metadata accessor for FMAnnotationIdentifier);

          v81 = v103;
LABEL_71:
          sub_100012DF0(v81, &unk_1006B4970);
LABEL_72:
          v82 = v117;
LABEL_73:
          v83 = v8;
          v84 = v110;
          v85 = sub_100027BE0(v82, v110, type metadata accessor for FMAnnotationIdentifier);
          v86 = v111;
          (*((swift_isaMask & *v50) + 0x190))(v85);
          v87 = sub_10017E734(v86, v84);
          sub_10002A100(v86, type metadata accessor for FMAnnotationIdentifier);
          sub_10002A100(v84, type metadata accessor for FMAnnotationIdentifier);
          if ((v87 & 1) == 0)
          {
            sub_10002A100(v116, type metadata accessor for FMAnnotationIdentifier);
            swift_unknownObjectRelease_n();
            sub_10002A100(v82, type metadata accessor for FMAnnotationIdentifier);
            v47 = v112;
            v46 = v114;
            v8 = v83;
            v7 = v107;
            v17 = v108;
            goto LABEL_26;
          }

          swift_unknownObjectRetain();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v47 = v112;
          v17 = v108;
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v17 = v108;
            v47 = v112;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease_n();
          sub_10002A100(v116, type metadata accessor for FMAnnotationIdentifier);
          v31 = v121;
          v8 = v83;
          v7 = v107;
          goto LABEL_77;
        }

        v65 = *v61;
        v97 = v61[1];

        if (v98 == v65 && v63 == v97)
        {
          v66 = v108;
LABEL_61:

          sub_10002A100(v66, type metadata accessor for FMAnnotationIdentifier);
          v78 = v103;
LABEL_65:
          sub_10002A100(v78, type metadata accessor for FMAnnotationIdentifier);
          goto LABEL_66;
        }

        v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v66 = v108;
      }

      sub_10002A100(v66, type metadata accessor for FMAnnotationIdentifier);
      sub_10002A100(v103, type metadata accessor for FMAnnotationIdentifier);
      v82 = v117;
      if ((v88 & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_66:
      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease_n();
      sub_10002A100(v116, type metadata accessor for FMAnnotationIdentifier);
      v31 = v121;
LABEL_69:
      v47 = v112;
      v17 = v108;
LABEL_77:
      sub_10002A100(v117, type metadata accessor for FMAnnotationIdentifier);
      goto LABEL_78;
    }

    v67 = v104;
    (*((swift_isaMask & *v50) + 0x190))();
    v68 = v99;
    v69 = &v99[*(v105 + 48)];
    sub_100027BE0(v67, v99, type metadata accessor for FMAnnotationIdentifier);
    sub_100027BE0(v116, v69, type metadata accessor for FMAnnotationIdentifier);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_10002A100(v67, type metadata accessor for FMAnnotationIdentifier);
      goto LABEL_70;
    }

    v70 = v100;
    sub_100027BE0(v68, v100, type metadata accessor for FMAnnotationIdentifier);
    v71 = v70[1];
    v97 = *v70;
    v98 = v71;

    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      v79 = *v69;
      v80 = *(v69 + 1);
      v75 = v104;
      v7 = v107;
      if (v97 == v79 && v98 == v80)
      {
        goto LABEL_64;
      }

      LODWORD(v97) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v7 = v107;
      if (v72 != 4)
      {
        sub_10002A100(v104, type metadata accessor for FMAnnotationIdentifier);

LABEL_70:
        v81 = v68;
        goto LABEL_71;
      }

      v74 = *v69;
      v73 = *(v69 + 1);

      if (v97 == v74 && v98 == v73)
      {
        v75 = v104;
LABEL_64:

        sub_10002A100(v75, type metadata accessor for FMAnnotationIdentifier);
        v78 = v68;
        goto LABEL_65;
      }

      LODWORD(v97) = _stringCompareWithSmolCheck(_:_:expecting:)();
      v75 = v104;
    }

    sub_10002A100(v75, type metadata accessor for FMAnnotationIdentifier);
    sub_10002A100(v68, type metadata accessor for FMAnnotationIdentifier);
    v82 = v117;
    if ((v97 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_66;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_100021F74(unint64_t result, int a2, unsigned int a3)
{
  v4 = result;
  v5 = &MKMapRectNull;
  if (result >> 62)
  {
LABEL_39:
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result;
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  x = v5->origin.x;
  y = v5->origin.y;
  width = v5->size.width;
  height = v5->size.height;
  if (v6)
  {
    v11 = 0;
    v12 = v4 & 0xC000000000000001;
    v5 = a3;
    v38 = a2;
    do
    {
      if (v12)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v13 = *(v4 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      if (a2)
      {
        ObjectType = swift_getObjectType();
        if (ObjectType == sub_1003D942C())
        {
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          sub_100005B14(v22, qword_1006D4630);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "MKMapView: mapRectForAnnotations ignoring user location", v25, 2u);
            v12 = v4 & 0xC000000000000001;
          }

          result = swift_unknownObjectRelease();
          a2 = v38;
          goto LABEL_6;
        }
      }

      [v13 coordinate];
      if (CLLocationCoordinate2DIsValid(v40))
      {
        type metadata accessor for FMAnnotation();
        v16 = swift_dynamicCastClass();
        if (v16 && (v5 & 1) != 0)
        {
          v17 = v16;
          swift_unknownObjectRetain();
          [v17 coordinate];
        }

        else
        {
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = v18;
            swift_unknownObjectRetain();
            v20 = [v19 location];
            if (v20)
            {
              v21 = v20;
              [v20 horizontalAccuracy];

              v12 = v4 & 0xC000000000000001;
            }

            [v19 coordinate];
          }

          else
          {
            type metadata accessor for FMClusterAnnotation();
            v26 = swift_dynamicCastClass();
            if (!v26)
            {
              [v13 coordinate];
              MKMapRectMakeWithRadialDistance();
              v46.origin.x = v33;
              v46.origin.y = v34;
              v46.size.width = v35;
              v46.size.height = v36;
              v43.origin.x = x;
              v43.origin.y = y;
              v43.size.width = width;
              v43.size.height = height;
              v44 = MKMapRectUnion(v43, v46);
              x = v44.origin.x;
              y = v44.origin.y;
              width = v44.size.width;
              height = v44.size.height;
              result = swift_unknownObjectRelease();
              v12 = v4 & 0xC000000000000001;
              goto LABEL_6;
            }

            v27 = v26;
            swift_unknownObjectRetain();
            __chkstk_darwin([v27 coordinate]);
            sub_10007EBC0(&unk_1006BEF10);
            OS_dispatch_queue.sync<A>(execute:)();
            if (v39 >> 62)
            {
              v28 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v28 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v5 = a3;
            a2 = v38;
            v12 = v4 & 0xC000000000000001;
            if ((v28 * 300) >> 64 != (300 * v28) >> 63)
            {
              __break(1u);
              return result;
            }
          }
        }

        MKMapRectMakeWithRadialDistance();
        v45.origin.x = v29;
        v45.origin.y = v30;
        v45.size.width = v31;
        v45.size.height = v32;
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v42 = MKMapRectUnion(v41, v45);
        x = v42.origin.x;
        y = v42.origin.y;
        width = v42.size.width;
        height = v42.size.height;
        result = swift_unknownObjectRelease_n();
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

LABEL_6:
      ++v11;
    }

    while (v14 != v6);
  }

  return result;
}

void sub_100022444()
{
  v1 = [v0 traitCollection];
  [v1 horizontalSizeClass];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 safeAreaInsets];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 safeAreaInsets];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  [v6 safeAreaInsets];

  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 safeAreaInsets];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100022610()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMNoLocationViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = *(*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] + 56);

  v2 = sub_100022708(v0, v1);

  *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_selectionSubscription] = v2;

  sub_100022738();
  sub_100022AA8();
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"previousSelection"];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addGestureRecognizer:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_100022738()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  [v1 setUserInteractionEnabled:0];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [v4 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView];
  v8 = [objc_opt_self() effectWithStyle:1100];
  [v7 setEffect:v8];

  v9 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView];
  v10 = [v5 blackColor];
  [v9 setBackgroundColor:v10];

  v11 = String._bridgeToObjectiveC()();
  [v7 _setGroupName:v11];

  if (qword_1006AEC38 != -1)
  {
    swift_once();
  }

  [v7 _setCaptureView:qword_1006D47B8];
  [v7 setAlpha:0.0];
  [v7 setHidden:1];
  [v9 setAlpha:0.0];
  [v9 setHidden:1];
  v12 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView];
  [v12 setAlpha:0.0];
  [v12 setHidden:1];
  v13 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView];
  [v13 setAlpha:0.0];
  [v13 setHidden:1];
  [v13 setContentMode:1];
  v14 = [v0 view];
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  [v14 addSubview:v7];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  [v16 addSubview:v9];

  v18 = [v0 view];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  [v18 addSubview:v12];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 addSubview:v13];
}

void sub_100022AA8()
{
  v103 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView];
  [v103 setTranslatesAutoresizingMaskIntoConstraints:0];
  v102 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView];
  [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1006D47A0;
  v4 = [v1 topAnchor];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:0.0];
  sub_10007EBC0(&qword_1006AFC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100552EE0;
  *(v9 + 32) = v8;
  v101 = v8;
  v10 = [v1 centerXAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v11;
  v13 = [v11 centerXAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  v100 = v9;
  *(v9 + 40) = v14;
  v15 = *&qword_1006D4738;
  if (v3 == 1)
  {
    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EE0;
  v18 = [v1 centerYAnchor];
  v19 = [v0 view];
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v99 = v2;
  v21 = [v19 centerYAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v17 + 32) = v22;
  v23 = [v1 centerXAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v24;
  v26 = [v24 centerXAnchor];

  v27 = [v23 constraintEqualToAnchor:v26 constant:v16 * v15];
  *(v17 + 40) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1005521F0;
  v29 = [v103 topAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v28 + 32) = v33;
  v34 = [v103 leadingAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v28 + 40) = v38;
  v39 = [v103 trailingAnchor];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v41 = v40;
  v98 = v17;
  v42 = [v40 trailingAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v28 + 48) = v43;
  v44 = [v103 bottomAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = v45;
  v47 = objc_opt_self();
  v48 = [v46 bottomAnchor];

  v49 = [v44 constraintEqualToAnchor:v48];
  *(v28 + 56) = v49;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = v47;
  [v47 activateConstraints:isa];

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1005521F0;
  v53 = [v102 topAnchor];
  v54 = [v0 view];
  if (!v54)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  *(v52 + 32) = v57;
  v58 = [v102 leadingAnchor];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v60 = v59;
  v61 = [v59 leadingAnchor];

  v62 = [v58 constraintEqualToAnchor:v61];
  *(v52 + 40) = v62;
  v63 = [v102 trailingAnchor];
  v64 = [v0 view];
  if (!v64)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v65 = v64;
  v66 = [v64 trailingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66];
  *(v52 + 48) = v67;
  v68 = [v102 bottomAnchor];
  v69 = [v0 view];
  if (!v69)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = [v69 bottomAnchor];

  v72 = [v68 constraintEqualToAnchor:v71];
  *(v52 + 56) = v72;
  v73 = Array._bridgeToObjectiveC()().super.isa;

  v104 = v51;
  [v51 activateConstraints:v73];

  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_100552EE0;
  v75 = [v1 widthAnchor];
  v76 = [v75 constraintEqualToConstant:80.0];

  *(v74 + 32) = v76;
  v77 = [v1 heightAnchor];
  v78 = [v77 constraintEqualToConstant:80.0];

  *(v74 + 40) = v78;
  v79 = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:v79];

  v80 = [v99 widthAnchor];
  v81 = [v80 constraintEqualToConstant:66.0];

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1005521F0;
  v83 = [v99 centerXAnchor];
  v84 = [v1 centerXAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v82 + 32) = v85;
  v86 = [v99 centerYAnchor];
  v87 = [v1 centerYAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v82 + 40) = v88;
  v89 = [v99 heightAnchor];
  v90 = [v99 widthAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 multiplier:1.0];

  *(v82 + 48) = v91;
  *(v82 + 56) = v81;
  v92 = v81;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v104 activateConstraints:v93];

  v94 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageViewTopConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageViewTopConstraint] = v101;
  v105 = v101;

  v95 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageViewWidthConstraint] = v92;
  v96 = v92;

  *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_compactConstraints] = v100;

  *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_regularConstraints] = v98;

  v97 = [v0 traitCollection];
  [v97 horizontalSizeClass];

  sub_100023790();
}

void sub_100023690()
{
  v0 = objc_opt_self();
  sub_10000905C(0, &qword_1006B3A70);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 deactivateConstraints:isa];

  v2 = Array._bridgeToObjectiveC()().super.isa;

  [v0 activateConstraints:v2];
}

void sub_1000237EC()
{
  sub_10007EBC0(&qword_1006AFC30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1005528C0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
  *(v1 + 32) = v2;
  v3 = type metadata accessor for FMPassthroughView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled] = 1;
  *&v4[OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews] = v1;
  v9.receiver = v4;
  v9.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView];
  *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView] = v6;
  v8 = v6;

  [v0 setView:{v8, v9.receiver, v9.super_class}];
}

void sub_100023964()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v0 action:"handlePanGestureWithSender:"];
  [v2 setMaximumNumberOfTouches:1];
  [v2 setDelegate:v0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
  v64 = v2;
  [v3 addGestureRecognizer:v2];
  [v3 setLayoutMargins:{0.0, 14.0, 0.0, 14.0}];
  [v3 setShouldGroupAccessibilityChildren:1];
  [v3 setAccessibilityContainerType:4];
  v66 = v3;
  v4 = *&v3[OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber];
  [v4 setAccessibilityRespondsToUserInteraction:1];
  [v4 setIsAccessibilityElement:1];
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v70._object = 0x8000000100589930;
  v7._object = 0x8000000100589910;
  v70._countAndFlagsBits = 0xD000000000000023;
  v7._countAndFlagsBits = 0xD000000000000011;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v70);

  v9 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityLabel:v9];

  v65 = v5;
  v10 = [v5 mainBundle];
  v71._object = 0x8000000100589980;
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x8000000100589960;
  v71._countAndFlagsBits = 0xD000000000000028;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v71);

  v13 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityHint:v13];

  v14 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v14];

  isa = [v4 accessibilityCustomActions];
  if (!isa)
  {
    sub_10000905C(0, &qword_1006B8518);
    v16 = [v5 mainBundle];
    v72._object = 0x80000001005899B0;
    v17._countAndFlagsBits = 0x435F444E41505845;
    v17._object = 0xEB00000000445241;
    v72._countAndFlagsBits = 0xD00000000000001DLL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v72);

    v20 = type metadata accessor for FMCardContainerViewController();
    v68 = v20;
    v67[0] = v1;
    v21 = v1;
    v22 = sub_100024344(v19._countAndFlagsBits, v19._object, v67, "expandCard");
    v23 = [v65 mainBundle];
    v73._object = 0x80000001005899D0;
    v24._countAndFlagsBits = 0x455350414C4C4F43;
    v24._object = 0xED0000445241435FLL;
    v73._countAndFlagsBits = 0xD00000000000001FLL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v73);

    v68 = v20;
    v67[0] = v21;
    v27 = v21;
    v28 = sub_100024344(v26._countAndFlagsBits, v26._object, v67, "collapseCard");
    sub_10007EBC0(&qword_1006AFC30);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100552EE0;
    *(v29 + 32) = v22;
    *(v29 + 40) = v28;
    v30 = v22;
    v31 = v28;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setAccessibilityCustomActions:isa];
  }

  v68 = &type metadata for SolariumFeatureFlag;
  v32 = sub_10000BD04();
  v69 = v32;
  v33 = isFeatureEnabled(_:)();
  sub_100006060(v67);
  if ((v33 & 1) == 0)
  {
    v34 = [*&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardShadow] layer];
    [v34 setCornerRadius:_UISheetCornerRadius];
  }

  v35 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardShadow];
  v36 = [v35 layer];
  v37 = objc_opt_self();
  v38 = [v37 blackColor];
  v39 = [v38 CGColor];

  [v36 setShadowColor:v39];
  v40 = [v35 layer];
  [v40 setMasksToBounds:0];

  v41 = [v35 layer];
  [v41 setShadowPathIsBounds:1];

  v68 = &type metadata for SolariumFeatureFlag;
  v69 = v32;
  LOBYTE(v41) = isFeatureEnabled(_:)();
  sub_100006060(v67);
  v42 = &selRef_systemBackgroundColor;
  if (v41)
  {
    v42 = &selRef_clearColor;
  }

  v43 = [v37 *v42];
  [v35 setBackgroundColor:v43];

  v44 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground];
  v68 = &type metadata for SolariumFeatureFlag;
  v69 = v32;
  LOBYTE(v43) = isFeatureEnabled(_:)();
  sub_100006060(v67);
  v45 = &selRef_blackColor;
  if (v43)
  {
    v45 = &selRef_clearColor;
  }

  v46 = [v37 *v45];
  [v44 setBackgroundColor:v46];

  [v44 setAlpha:0.0];
  v47 = [v1 view];
  if (!v47)
  {
    __break(1u);
    goto LABEL_21;
  }

  v48 = v47;
  v49 = String._bridgeToObjectiveC()();
  [v48 setAccessibilityIdentifier:v49];

  v50 = [v1 view];
  if (!v50)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v50;
  [v50 addSubview:v44];

  v52 = [v1 view];
  if (!v52)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v53 = v52;
  [v52 addSubview:v35];

  v54 = [v1 view];
  if (!v54)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = v54;
  [v54 addSubview:v66];

  v56 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_closeButton];
  [v56 addTarget:v1 action:"handleCloseAction" forControlEvents:64];
  v57 = [v65 mainBundle];
  v74._object = 0x8000000100584810;
  v58._countAndFlagsBits = 0x55425F45534F4C43;
  v58._object = 0xEC0000004E4F5454;
  v74._countAndFlagsBits = 0xD00000000000001ELL;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v74);

  v60 = String._bridgeToObjectiveC()();

  [v56 setAccessibilityLabel:v60];

  v68 = &type metadata for SolariumFeatureFlag;
  v69 = v32;
  LOBYTE(v60) = isFeatureEnabled(_:)();
  sub_100006060(v67);
  if (v60)
  {
    v61 = [v56 layer];
    if (qword_1006AEBD0 != -1)
    {
      swift_once();
    }

    [v61 setCornerRadius:*&qword_1006D4518 * 0.5];

    sub_10018D020(v56);
    [v66 addSubview:v56];
    goto LABEL_19;
  }

  v62 = [v1 view];
  if (v62)
  {
    v63 = v62;
    [v62 addSubview:v56];

LABEL_19:
    return;
  }

LABEL_24:
  __break(1u);
}

id sub_100024344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_1000244BC(a3, a3[3]);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_100006060(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v12 selector:a4];

  swift_unknownObjectRelease();
  return v13;
}

void *sub_1000244BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_100024544()
{
  v1 = objc_opt_self();
  v2 = [v1 _traitCollectionWithBackgroundLevel:1];
  if (v2)
  {
    v3 = v2;
    sub_10007EBC0(&qword_1006AFC30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100552EE0;
    v10.receiver = v0;
    v10.super_class = type metadata accessor for FMCardContainerViewController();
    *(v4 + 32) = objc_msgSendSuper2(&v10, "traitCollection");
    *(v4 + 40) = v3;
    sub_10000905C(0, &qword_1006B6BF8);
    v5 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v1 traitCollectionWithTraitsFromCollections:isa];

    return v7;
  }

  else
  {
    v11.receiver = v0;
    v11.super_class = type metadata accessor for FMCardContainerViewController();
    v9 = objc_msgSendSuper2(&v11, "traitCollection");

    return v9;
  }
}

double sub_10002469C()
{
  v10 = &type metadata for SolariumFeatureFlag;
  v11 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v9);
  if (v0)
  {
    v1 = 0;
    v2 = xmmword_10055C920;
    v3 = xmmword_10055C930;
    v4 = xmmword_10055C940;
    v5 = 16.0;
    v6 = 0x4046000000000000;
    v7 = xmmword_10055C940;
  }

  else
  {
    v3 = xmmword_10055C950;
    v4 = xmmword_10055C960;
    v7 = *&UIEdgeInsetsZero.top;
    v2 = *&UIEdgeInsetsZero.bottom;
    v1 = 1;
    v5 = 13.0;
    v6 = 0x4044000000000000;
  }

  xmmword_1006D44E0 = xmmword_10055C970;
  *&qword_1006D44F0 = xmmword_10055C980;
  xmmword_1006D4500 = v4;
  qword_1006D4510 = *&v5;
  *&qword_1006D4518 = xmmword_10055C990;
  *&qword_1006D4528 = v3;
  qword_1006D4538 = v6;
  byte_1006D4540 = v1;
  *&algn_1006D4541[7] = v7;
  *&qword_1006D4558 = v2;
  result = 20.0;
  *algn_1006D4568 = xmmword_10055C9A0;
  qword_1006D4578 = 0x4031000000000000;
  return result;
}

void sub_1000247A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v160 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardShadow];
  [v160 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_closeButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v3 topAnchor];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_33;
  }

  v7 = v6;
  v158 = v4;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  v11 = [v3 topAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  v164 = &type metadata for SolariumFeatureFlag;
  v159 = sub_10000BD04();
  v165 = v159;
  v16 = isFeatureEnabled(_:)();
  sub_100006060(v163);
  if (v16)
  {
    type metadata accessor for UILayoutPriority(0);
    sub_10000A198(&qword_1006B8510, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v17) = v163[0];
    [v10 setPriority:v17];
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v18) = v163[0];
    [v15 setPriority:v18];
  }

  sub_10007EBC0(&qword_1006AFC30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100555280;
  *(v19 + 32) = v10;
  v157 = v10;
  v20 = [v160 topAnchor];
  v21 = [v3 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:10.0];

  *(v19 + 40) = v22;
  v23 = [v2 topAnchor];
  v24 = [v1 view];
  if (!v24)
  {
    goto LABEL_34;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v19 + 48) = v27;
  v28 = [v2 bottomAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v19 + 56) = v32;
  v33 = [v2 leadingAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v19 + 64) = v37;
  v38 = [v2 trailingAnchor];
  v39 = [v1 view];
  if (!v39)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v19 + 72) = v42;
  v162 = v19;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100552EE0;
  *(v43 + 32) = v15;
  v156 = v15;
  v44 = [v160 topAnchor];
  v45 = [v3 topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:10.0];

  *(v43 + 40) = v46;
  v161 = v43;
  v164 = &type metadata for SolariumFeatureFlag;
  v165 = v159;
  LOBYTE(v43) = isFeatureEnabled(_:)();
  sub_100006060(v163);
  v47 = "FindMy";
  p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  if ((v43 & 1) == 0)
  {
    goto LABEL_19;
  }

  v49 = [v3 leadingAnchor];
  v50 = [v1 view];
  if (!v50)
  {
    goto LABEL_38;
  }

  v51 = v50;
  v52 = [v50 leadingAnchor];

  v53 = [v49 constraintEqualToAnchor:v52 constant:8.0];
  v54 = [v3 trailingAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v54 constraintEqualToAnchor:v57 constant:-8.0];
  v59 = [v3 bottomAnchor];
  v60 = [v1 view];
  if (!v60)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v59 constraintEqualToAnchor:v62 constant:-8.0];
  v64 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardLeadingConstraint];
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardLeadingConstraint] = v53;
  v65 = v53;

  v66 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTrailingConstraint];
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTrailingConstraint] = v58;
  v67 = v58;

  v68 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardBottomConstraint];
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardBottomConstraint] = v63;
  v69 = v63;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  *(inited + 32) = v69;
  *(inited + 40) = v65;
  *(inited + 48) = v67;
  v154 = v65;
  v151 = v67;
  v71 = v69;
  sub_10001FF64(inited);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_100552EF0;
  v73 = [v3 bottomAnchor];
  v74 = [v1 view];
  if (!v74)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v75 = v74;
  v76 = [v74 bottomAnchor];

  v77 = [v73 constraintEqualToAnchor:v76];
  *(v72 + 32) = v77;
  v78 = [v3 leadingAnchor];
  v79 = [v1 view];
  if (!v79)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v80 = v79;
  v81 = [v79 leadingAnchor];

  v82 = [v78 constraintEqualToAnchor:v81];
  *(v72 + 40) = v82;
  v83 = [v3 trailingAnchor];
  v84 = [v1 view];
  if (!v84)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v85 = v84;
  v86 = [v84 trailingAnchor];

  v87 = [v83 constraintEqualToAnchor:v86];
  *(v72 + 48) = v87;
  sub_10001FF64(v72);
  v88 = objc_opt_self();
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1005528C0;
  v90 = [v3 heightAnchor];
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  v91 = [v90 constraintGreaterThanOrEqualToConstant:{*&xmmword_1006D4380, v151}];

  LODWORD(v92) = 1148846080;
  [v91 setPriority:v92];
  *(v89 + 32) = v91;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  [v88 activateConstraints:isa];

  v47 = "FindMy";
LABEL_19:
  v155 = v1;
  v94 = objc_opt_self();
  v95 = swift_allocObject();
  v153 = *(v47 + 239);
  *(v95 + 16) = v153;
  v96 = [v160 bottomAnchor];
  v97 = [v3 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];

  *(v95 + 32) = v98;
  v99 = [v160 leadingAnchor];
  v100 = [v3 leadingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100];

  *(v95 + 40) = v101;
  v102 = [v160 trailingAnchor];
  v103 = [v3 trailingAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];

  *(v95 + 48) = v104;
  sub_10000905C(0, &qword_1006B3A70);
  v105 = Array._bridgeToObjectiveC()().super.isa;

  [v94 p:v105 ivar:?lyt[436]];

  v164 = &type metadata for SolariumFeatureFlag;
  v165 = v159;
  LOBYTE(v105) = isFeatureEnabled(_:)();
  sub_100006060(v163);
  if ((v105 & 1) == 0)
  {
    v106 = swift_allocObject();
    *(v106 + 16) = v153;
    v107 = [v3 bottomAnchor];
    v108 = [v155 view];
    if (v108)
    {
      v109 = v108;
      v110 = [v108 bottomAnchor];

      v111 = [v107 constraintEqualToAnchor:v110];
      *(v106 + 32) = v111;
      v112 = [v3 leadingAnchor];
      v113 = [v155 view];
      if (v113)
      {
        v114 = v113;
        v115 = [v113 leadingAnchor];

        v116 = [v112 constraintEqualToAnchor:v115];
        *(v106 + 40) = v116;
        v117 = [v3 trailingAnchor];
        v118 = [v155 view];
        if (v118)
        {
          v119 = v118;
          v120 = [v118 trailingAnchor];

          v121 = [v117 constraintEqualToAnchor:v120];
          *(v106 + 48) = v121;
          v122 = Array._bridgeToObjectiveC()().super.isa;

          [v94 activateConstraints:v122];

          goto LABEL_24;
        }

LABEL_46:
        __break(1u);
        return;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_24:
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  v124 = *(&xmmword_1006D4500 + 1);
  v123 = *&qword_1006D4510;
  v125 = *&qword_1006D4518;
  v164 = &type metadata for SolariumFeatureFlag;
  v165 = v159;
  v126 = isFeatureEnabled(_:)();
  sub_100006060(v163);
  if (v126)
  {
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_1005521F0;
    v128 = [v158 topAnchor];
    v129 = [v3 topAnchor];
    v130 = [v128 constraintEqualToAnchor:v129 constant:v123];

    *(v127 + 32) = v130;
    v131 = [v158 trailingAnchor];
    v132 = [v3 trailingAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:-v123];

    *(v127 + 40) = v133;
    v134 = [v158 heightAnchor];
    v135 = [v134 constraintEqualToConstant:v125];

    *(v127 + 48) = v135;
    v136 = [v158 widthAnchor];
    v137 = [v136 constraintEqualToConstant:v125];

    *(v127 + 56) = v137;
  }

  else
  {
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_100552EE0;
    v139 = [v158 topAnchor];
    v140 = [v3 topAnchor];
    v141 = [v139 constraintEqualToAnchor:v140 constant:v124];

    *(v138 + 32) = v141;
    v142 = [v158 trailingAnchor];
    v143 = [v3 trailingAnchor];
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v144 = [v142 constraintEqualToAnchor:v143 constant:-*&qword_1006D4798];

    *(v138 + 40) = v144;
  }

  v145 = Array._bridgeToObjectiveC()().super.isa;

  [v94 activateConstraints:v145];

  v146 = *&v155[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTopConstraint];
  *&v155[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTopConstraint] = v157;
  v147 = v157;

  v148 = *&v155[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularCardTopConstraint];
  *&v155[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularCardTopConstraint] = v156;
  v149 = v156;

  *&v155[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactConstraints] = v162;

  *&v155[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularConstraints] = v161;

  v150 = [v155 traitCollection];
  [v150 horizontalSizeClass];

  sub_100025A2C();
}

void sub_100025A40()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  [*(*&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer] + OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber) setHidden:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardShadow];
  v4 = [v3 layer];
  [v4 setShadowOffset:{0.0, -2.0}];

  v5 = [v3 layer];
  v6 = v5;
  LODWORD(v7) = 1046428516;
  if (v2 == 1)
  {
    *&v7 = 0.08;
  }

  [v5 setShadowOpacity:v7];

  v8 = [v3 layer];
  [v8 setShadowRadius:15.0];
}

void sub_100025B8C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v146 = &type metadata for SolariumFeatureFlag;
    v147 = sub_10000BD04();
    v5 = isFeatureEnabled(_:)();
    sub_100006060(v145);
    if (v5)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v6 = *&qword_1006D4738;
      v7 = *&qword_1006D4740;
      v8 = *&qword_1006D4748;
      v10 = *&qword_1006D4768;
      v9 = *&qword_1006D4770;
      v11 = *&qword_1006D4778;
      v12 = unk_1006D4780;
      sub_10007EBC0(&qword_1006AFC30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1005521F0;
      v14 = [v4 topAnchor];
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 topAnchor];

        v18 = [v14 constraintEqualToAnchor:v17];
        *(v13 + 32) = v18;
        v19 = [v4 bottomAnchor];
        v20 = [v1 view];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 bottomAnchor];

          v23 = [v19 constraintEqualToAnchor:v22];
          *(v13 + 40) = v23;
          v24 = [v4 leadingAnchor];
          v25 = [v1 view];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 leadingAnchor];

            v28 = [v24 constraintEqualToAnchor:v27];
            *(v13 + 48) = v28;
            v29 = [v4 trailingAnchor];
            v30 = [v1 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 trailingAnchor];

              v33 = [v29 constraintEqualToAnchor:v32];
              *(v13 + 56) = v33;
              v34 = OBJC_IVAR____TtC6FindMy20FMMainViewController_compactConstraints;
              swift_beginAccess();
              *&v1[v34] = v13;

              v35 = swift_allocObject();
              *(v35 + 16) = xmmword_1005521F0;
              v36 = [v4 topAnchor];
              v37 = [v1 view];
              if (v37)
              {
                v38 = v37;
                v39 = [v37 safeAreaLayoutGuide];

                v40 = [v39 topAnchor];
                v41 = [v36 constraintEqualToAnchor:v40 constant:v8];

                *(v35 + 32) = v41;
                v42 = [v4 bottomAnchor];
                v43 = [v1 view];
                if (v43)
                {
                  v44 = v43;
                  v45 = [v43 bottomAnchor];

                  v46 = [v42 constraintEqualToAnchor:v45 constant:-v7];
                  *(v35 + 40) = v46;
                  v47 = [v4 leadingAnchor];
                  v48 = [v1 view];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = [v48 layoutMarginsGuide];

                    v51 = [v50 leadingAnchor];
                    v52 = [v47 constraintEqualToAnchor:v51];

                    *(v35 + 48) = v52;
                    v53 = [v4 widthAnchor];
                    v54 = [v53 constraintEqualToConstant:v6];

                    *(v35 + 56) = v54;
                    v55 = OBJC_IVAR____TtC6FindMy20FMMainViewController_regularConstraints;
                    swift_beginAccess();
                    *&v1[v55] = v35;

                    v56 = [objc_opt_self() currentDevice];
                    v57 = [v56 userInterfaceIdiom];

                    if (v57 != 1)
                    {
LABEL_27:
                      v142 = [v1 traitCollection];
                      [v142 horizontalSizeClass];

                      sub_100026B90();
                      return;
                    }

                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_100552EE0;
                    v59 = [v4 topAnchor];
                    v60 = [v1 view];
                    if (v60)
                    {
                      v61 = v60;
                      v62 = [v60 topAnchor];

                      v63 = [v59 constraintGreaterThanOrEqualToAnchor:v62 constant:v10 + v11 + v12];
                      *(inited + 32) = v63;
                      v64 = [v4 topAnchor];
                      v65 = [v1 view];
                      if (v65)
                      {
                        v66 = v65;
                        v67 = [v65 safeAreaLayoutGuide];

                        v68 = [v67 topAnchor];
                        v69 = [v64 constraintGreaterThanOrEqualToAnchor:v68 constant:v9 + v11 + v12];

                        *(inited + 40) = v69;
                        swift_beginAccess();

                        sub_10001FF64(v70);
                        swift_endAccess();
                        swift_beginAccess();
                        sub_10001FF64(inited);
                        swift_endAccess();
                        goto LABEL_27;
                      }

LABEL_45:
                      __break(1u);
                      return;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

                  goto LABEL_41;
                }

                goto LABEL_39;
              }

              goto LABEL_37;
            }

            goto LABEL_35;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
      v144 = v2;
      v71 = *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_tabBar];
      [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v72 = *(&xmmword_1006D4720 + 1);
      v73 = [v71 topAnchor];
      v74 = [v1 view];
      if (v74)
      {
        v75 = v74;
        v76 = [v74 safeAreaLayoutGuide];

        v77 = [v76 bottomAnchor];
        v78 = [v73 constraintEqualToAnchor:v77 constant:-v72];

        sub_10007EBC0(&qword_1006AFC30);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_100552200;
        *(v79 + 32) = v78;
        v143 = v78;
        v80 = [v4 topAnchor];
        v81 = [v1 view];
        if (v81)
        {
          v82 = v81;
          v83 = [v81 topAnchor];

          v84 = [v80 constraintEqualToAnchor:v83];
          *(v79 + 40) = v84;
          v85 = [v4 bottomAnchor];
          v86 = [v1 view];
          if (v86)
          {
            v87 = v86;
            v88 = [v86 bottomAnchor];

            v89 = [v85 constraintEqualToAnchor:v88];
            *(v79 + 48) = v89;
            v90 = [v4 leadingAnchor];
            v91 = [v1 view];
            if (v91)
            {
              v92 = v91;
              v93 = [v91 leadingAnchor];

              v94 = [v90 constraintEqualToAnchor:v93];
              *(v79 + 56) = v94;
              v95 = [v4 trailingAnchor];
              v96 = [v1 view];
              if (v96)
              {
                v97 = v96;
                v98 = [v96 trailingAnchor];

                v99 = [v95 constraintEqualToAnchor:v98];
                *(v79 + 64) = v99;
                v100 = [v71 leadingAnchor];
                v101 = [v4 leadingAnchor];
                v102 = [v100 constraintEqualToAnchor:v101];

                *(v79 + 72) = v102;
                v103 = [v71 trailingAnchor];
                v104 = [v4 trailingAnchor];
                v105 = [v103 constraintEqualToAnchor:v104];

                *(v79 + 80) = v105;
                v106 = [v71 bottomAnchor];
                v107 = [v4 bottomAnchor];
                v108 = [v106 constraintGreaterThanOrEqualToAnchor:v107];

                *(v79 + 88) = v108;
                v109 = OBJC_IVAR____TtC6FindMy20FMMainViewController_compactConstraints;
                swift_beginAccess();
                *&v1[v109] = v79;

                v110 = swift_allocObject();
                *(v110 + 16) = xmmword_100555120;
                v111 = [v4 topAnchor];
                v112 = [v1 view];
                if (v112)
                {
                  v113 = v112;
                  v114 = [v112 safeAreaLayoutGuide];

                  v115 = [v114 topAnchor];
                  v116 = [v111 constraintEqualToAnchor:v115 constant:*&qword_1006D4748];

                  *(v110 + 32) = v116;
                  v117 = [v4 bottomAnchor];
                  v118 = [v1 view];
                  if (v118)
                  {
                    v119 = v118;
                    v120 = [v118 layoutMarginsGuide];

                    v121 = [v120 bottomAnchor];
                    v122 = [v117 constraintEqualToAnchor:v121 constant:-*&qword_1006D4740];

                    *(v110 + 40) = v122;
                    v123 = [v4 leadingAnchor];
                    v124 = [v1 view];
                    if (v124)
                    {
                      v125 = v124;
                      v126 = [v124 layoutMarginsGuide];

                      v127 = [v126 leadingAnchor];
                      v128 = [v123 constraintEqualToAnchor:v127];

                      *(v110 + 48) = v128;
                      v129 = [v4 widthAnchor];
                      v130 = [v129 constraintEqualToConstant:*&qword_1006D4738];

                      *(v110 + 56) = v130;
                      v131 = [v71 leadingAnchor];
                      v132 = [v4 leadingAnchor];
                      v133 = [v131 constraintEqualToAnchor:v132];

                      *(v110 + 64) = v133;
                      v134 = [v71 trailingAnchor];
                      v135 = [v4 trailingAnchor];
                      v136 = [v134 constraintEqualToAnchor:v135];

                      *(v110 + 72) = v136;
                      v137 = [v71 bottomAnchor];
                      v138 = [v4 bottomAnchor];
                      v139 = [v137 constraintEqualToAnchor:v138];

                      *(v110 + 80) = v139;
                      v140 = OBJC_IVAR____TtC6FindMy20FMMainViewController_regularConstraints;
                      swift_beginAccess();
                      *&v1[v140] = v110;

                      v141 = *&v144[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint];
                      *&v144[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint] = v143;

                      goto LABEL_27;
                    }

                    goto LABEL_43;
                  }

LABEL_42:
                  __break(1u);
LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

              goto LABEL_38;
            }

            goto LABEL_36;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }
}

void sub_100026B90()
{
  v0 = objc_opt_self();
  swift_beginAccess();
  sub_10000905C(0, &qword_1006B3A70);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 deactivateConstraints:isa];

  swift_beginAccess();

  v2 = Array._bridgeToObjectiveC()().super.isa;

  [v0 activateConstraints:v2];
}

uint64_t sub_100026D24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100637D70;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

id sub_100026E9C(char a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  v4 = __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v19[-v7];
  v9 = type metadata accessor for FMMainViewController();
  v22.receiver = v1;
  v22.super_class = v9;
  objc_msgSendSuper2(&v22, "viewWillAppear:", a1 & 1);
  v10 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v11 = qword_1006AECC0;
  v12 = *(v10 + 16);
  if (v11 != -1)
  {
    v18 = v12;
    swift_once();
    v12 = v18;
  }

  if (byte_1006D4AD1 != 1)
  {

    goto LABEL_7;
  }

  v13 = *(v12 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted);

  if (v13)
  {
LABEL_7:
    v14 = *(v10 + 56);
    swift_storeEnumTagMultiPayload();
    v15 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v14 + v15, v6);
    swift_beginAccess();

    sub_100058530(v8, v14 + v15);
    swift_endAccess();
    sub_100058594(v6);

    sub_10005D4E4(v6);
    sub_10005D4E4(v8);
  }

  v20 = &type metadata for SolariumFeatureFlag;
  v21 = sub_10000BD04();
  v16 = isFeatureEnabled(_:)();
  result = sub_100006060(v19);
  if (v16)
  {
    return sub_1000270A8();
  }

  return result;
}

id sub_1000270A8()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  My = type metadata accessor for Feature.FindMy();
  v15[3] = My;
  v15[4] = sub_10000A390(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v4 = sub_100008FC0(v15);
  (*(*(My - 8) + 104))(v4, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v15);
  v5 = sub_10000D164(v2, My & 1);

  if (v5 == 2)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMMainViewController: updateAppTheme: Failed to load map mode. Reverting to unspecified", v9, 2u);
    }

    v10 = 0;
    return [v1 setOverrideUserInterfaceStyle:v10];
  }

  if (v5)
  {

    goto LABEL_10;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_10:
    if ((v5 & 0x10100) == 0x10000)
    {
      v10 = 2;
      return [v1 setOverrideUserInterfaceStyle:v10];
    }
  }

  if (qword_1006AEB58 != -1)
  {
    swift_once();
  }

  if (byte_1006D41A2)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  if (HIBYTE(word_1006D41A0))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  if (sub_100232370(v13 | word_1006D41A0 | v12, v5 & 0x10101))
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  return [v1 setOverrideUserInterfaceStyle:v10];
}

uint64_t sub_1000273D8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMInitialCardController();
  v24.receiver = v2;
  v24.super_class = v10;
  objc_msgSendSuper2(&v24, "viewWillAppear:", a1 & 1);
  v11 = *(*&v2[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator] + 56);

  v12 = sub_100027940(v2, v11);

  *&v2[OBJC_IVAR____TtC6FindMy23FMInitialCardController_selectionSubscription] = v12;

  v13 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
  v14 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar + 8];
  v15 = v13;
  sub_100457D40(v13, v14);

  sub_10000905C(0, &qword_1006AEDC0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  aBlock[4] = sub_100485C38;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641090;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100485784(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v21);
}

uint64_t sub_100027758()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000277F0(char a1, SEL *a2)
{
  v5 = [v2 childViewControllers];
  sub_10000905C(0, &qword_1006B87E0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 *a2];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13.receiver = v2;
  v13.super_class = type metadata accessor for FMCardContainerViewController();
  return objc_msgSendSuper2(&v13, *a2, a1 & 1);
}

uint64_t sub_100027970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000279D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100027D80(uint64_t a1, uint64_t a2)
{
  v223 = a1;
  v4 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v4 - 8);
  v241 = &v205 - v5;
  v242 = type metadata accessor for UUID();
  v231 = *(v242 - 8);
  v6 = __chkstk_darwin(v242);
  v228 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v7;
  __chkstk_darwin(v6);
  v239 = &v205 - v8;
  v240 = type metadata accessor for URL();
  v229 = *(v240 - 8);
  v9 = __chkstk_darwin(v240);
  v237 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = v10;
  __chkstk_darwin(v9);
  v238 = &v205 - v11;
  v12 = sub_10007EBC0(&unk_1006B8DD0);
  v13 = __chkstk_darwin(v12 - 8);
  v219 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v224 = &v205 - v15;
  v16 = type metadata accessor for DiscoveryType();
  v220 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v226 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v232 = &v205 - v19;
  v233 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  v20 = __chkstk_darwin(v233);
  v227 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v230 = &v205 - v22;
  v209 = sub_10007EBC0(&qword_1006C12A0);
  v23 = __chkstk_darwin(v209);
  v213 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v214 = &v205 - v25;
  v26 = type metadata accessor for FMFFriend();
  v235 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v221 = &v205 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v205 - v29;
  v212 = type metadata accessor for ContactPickerViewModel.Dependencies();
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v210 = &v205 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v32 - 8);
  v208 = &v205 - v33;
  MyUI = type metadata accessor for Feature.FindMyUI();
  v217 = *(MyUI - 8);
  __chkstk_darwin(MyUI);
  v216 = &v205 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FMSelectedSection();
  v36 = __chkstk_darwin(v35);
  v236 = (&v205 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v40 = &v205 - v39;
  __chkstk_darwin(v38);
  v42 = &v205 - v41;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100005B14(v43, qword_1006D4630);
  v243 = a2;
  sub_100027CB0(a2, v42, type metadata accessor for FMSelectedSection);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v207 = v30;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v206 = v16;
    v48 = v47;
    v49 = swift_slowAlloc();
    v234 = v26;
    v215 = v2;
    v50 = v49;
    v244 = v49;
    *v48 = 136315138;
    v248 = 0;
    v249 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v51 = v248;
    v52 = v249;
    sub_10002A1C0(v42, type metadata accessor for FMSelectedSection);
    v53 = sub_100005B4C(v51, v52, &v244);

    *(v48 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "FMInitialCardController: didUpdate selectedSection %s", v48, 0xCu);
    sub_100006060(v50);
    v54 = v215;
    v26 = v234;

    v16 = v206;
  }

  else
  {

    sub_10002A1C0(v42, type metadata accessor for FMSelectedSection);
    v54 = v2;
  }

  sub_100027CB0(v243, v40, type metadata accessor for FMSelectedSection);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10002A1C0(v40, type metadata accessor for FMSelectedSection);
      goto LABEL_28;
    case 2u:
      v115 = v54;
      v116 = v235;
      v117 = v221;
      (*(v235 + 32))(v221, v40, v26);
      v118 = *&v115[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator];

      v119 = FMFFriend.identifier.getter();
      v121 = v120;
      v122 = type metadata accessor for FMPersonDetailCardViewController();
      v123 = objc_allocWithZone(v122);
      *&v123[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_conditionsSubscription] = 0;
      *&v123[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectionSubscription] = 0;
      swift_storeEnumTagMultiPayload();
      *&v123[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator] = v118;
      v124 = &v123[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectedPersonIdentifier];
      *v124 = v119;
      v124[1] = v121;
      v247.receiver = v123;
      v247.super_class = v122;
      v125 = objc_msgSendSuper2(&v247, "initWithNibName:bundle:", 0, 0);
      [v115 presentCard:v125 completion:0];

      (*(v116 + 8))(v117, v26);
      goto LABEL_31;
    case 3u:
    case 4u:
      sub_10002A1C0(v40, type metadata accessor for FMSelectedSection);
      v55 = *&v54[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator];
      v56 = type metadata accessor for FMItemDetailCardViewController();
      v57 = objc_allocWithZone(v56);
      swift_storeEnumTagMultiPayload();
      *&v57[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_selectionSubscription] = 0;
      v57[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_isSharedLostItem] = 0;
      *&v57[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController] = 0;
      *&v57[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator] = v55;
      v246.receiver = v57;
      v246.super_class = v56;

      v58 = objc_msgSendSuper2(&v246, "initWithNibName:bundle:", 0, 0);
      goto LABEL_29;
    case 5u:
      sub_10002A1C0(v40, type metadata accessor for FMSelectedSection);
      v103 = &unk_1006C12B8;
      goto LABEL_18;
    case 6u:
      sub_10002A1C0(v40, type metadata accessor for FMSelectedSection);
      v103 = &unk_1006C12B0;
LABEL_18:
      v106 = objc_allocWithZone(sub_10007EBC0(v103));

      v58 = sub_10047F744(v107, v103);
      goto LABEL_29;
    case 7u:
      v112 = objc_allocWithZone(sub_10007EBC0(&qword_1006C12A8));

      v114 = sub_10047F744(v113, &qword_1006C12A8);
      [v54 presentCard:v114 completion:0];

      goto LABEL_22;
    case 8u:
      sub_10002A1C0(v40, type metadata accessor for FMSelectedSection);
      v94 = *(*&v54[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator] + 56);
      v95 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      v96 = v94 + v95;
      v97 = v236;
      sub_100027CB0(v96, v236, type metadata accessor for FMSelectedSection);
      v98 = objc_allocWithZone(type metadata accessor for FMUTCardViewController());

      v100 = sub_1003E4FF4(v99, v97);

      [v54 presentCard:v100 completion:0];

      goto LABEL_31;
    case 9u:
      if (*v40 == 1)
      {
        v108 = objc_allocWithZone(type metadata accessor for FMFindUnknownItemViewController());

        v110 = sub_10051FB0C(v109);
        v111 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v110];
        goto LABEL_47;
      }

      v164 = objc_allocWithZone(type metadata accessor for FMUnknownItemsViewController());

      v58 = sub_1004324AC(v165);
LABEL_29:
      v102 = v58;
      [v54 presentCard:v58 completion:0];
LABEL_30:

      goto LABEL_31;
    case 0xAu:
      v59 = sub_10007EBC0(&qword_1006B6BD0);
      v60 = *(v59 + 48);
      LODWORD(v243) = v40[*(v59 + 64)];
      v61 = v229;
      v236 = *(v229 + 32);
      v62 = v238;
      v63 = v240;
      (v236)(v238, v40, v240);
      v64 = v231;
      v235 = *(v231 + 32);
      v65 = &v40[v60];
      v66 = v239;
      v67 = v242;
      (v235)(v239, v65, v242);
      v68 = type metadata accessor for TaskPriority();
      (*(*(v68 - 8) + 56))(v241, 1, 1, v68);
      (*(v61 + 16))(v237, v62, v63);
      v69 = v228;
      (*(v64 + 16))(v228, v66, v67);
      type metadata accessor for MainActor();
      v234 = v54;
      v70 = static MainActor.shared.getter();
      v71 = (*(v61 + 80) + 40) & ~*(v61 + 80);
      v72 = (v222 + *(v64 + 80) + v71) & ~*(v64 + 80);
      v73 = v72 + v225;
      v74 = swift_allocObject();
      v74[2] = v70;
      v74[3] = &protocol witness table for MainActor;
      v74[4] = v234;
      v75 = v240;
      (v236)(v74 + v71, v237, v240);
      v76 = v69;
      v77 = v242;
      (v235)(v74 + v72, v76, v242);
      *(v74 + v73) = v243;
      sub_10047F498(0, 0, v241, &unk_1005631D0, v74);

      (*(v64 + 8))(v239, v77);
      (*(v61 + 8))(v238, v75);
      goto LABEL_31;
    case 0xBu:
      v234 = v26;
      v78 = objc_opt_self();
      v79 = [v78 mainBundle];
      v80._countAndFlagsBits = 0xD000000000000015;
      v253._object = 0x800000010057E1B0;
      v80._object = 0x800000010057E190;
      v250._countAndFlagsBits = 0xD000000000000027;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v80, 0, v79, v81, v250);

      v82.super.isa = [v78 mainBundle];
      v253._object = 0x800000010057E200;
      v83._object = 0x800000010057E1E0;
      v251._countAndFlagsBits = 0xD000000000000029;
      v83._countAndFlagsBits = 0xD000000000000017;
      v84._countAndFlagsBits = 0;
      v84._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v251);

      LOBYTE(v82.super.isa) = sub_100431578(v54);

      if (v82.super.isa)
      {
        v85 = v217;
        v86 = v216;
        v87 = MyUI;
        (*(v217 + 104))(v216, enum case for Feature.FindMyUI.newContactPicker(_:), MyUI);
        sub_100485784(&qword_1006B9FC0, &type metadata accessor for Feature.FindMyUI);
        v88 = FeatureFlagsKey.isEnabled()();
        (*(v85 + 8))(v86, v87);
        v89 = *&v54[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator];
        if (v88)
        {

          v90 = v208;
          dispatch thunk of FMFManager.preferences.getter();

          v91 = type metadata accessor for FMFPreferences();
          v92 = *(v91 - 8);
          if ((*(v92 + 48))(v90, 1, v91) == 1)
          {
            sub_100012DF0(v90, &qword_1006AF750);
            v243 = 0;
            v93 = 0;
          }

          else
          {
            v243 = FMFPreferences.primaryEmail.getter();
            v93 = v180;
            (*(v92 + 8))(v90, v91);
          }

          v181 = v235;
          type metadata accessor for QueryController();
          v182 = QueryController.__allocating_init(serviceName:)();

          v183 = dispatch thunk of FMFManager.friends.getter();

          v248 = _swiftEmptyArrayStorage;
          v184 = *(v183 + 16);
          if (v184)
          {
            v241 = v93;
            v242 = v182;
            v215 = v54;
            v187 = *(v181 + 16);
            v185 = v181 + 16;
            v186 = v187;
            v188 = *(v185 + 64);
            v240 = v183;
            v189 = v183 + ((v188 + 32) & ~v188);
            v190 = *(v185 + 56);
            v191 = (v185 - 8);
            v192 = v234;
            v193 = v207;
            do
            {
              v186(v193, v189, v192);
              v194 = FMFFriend.contactHandles.getter();
              (*v191)(v193, v192);
              sub_100493AC0(v194);
              v189 += v190;
              --v184;
            }

            while (v184);

            v54 = v215;
            v93 = v241;
          }

          else
          {
          }

          v195 = v210;
          v196 = ContactPickerViewModel.Dependencies.init(isReachable:isHandlePartOfSignedInAccount:excludedSuggestedContactHandles:)();
          __chkstk_darwin(v196);
          v197 = v243;
          *(&v205 - 4) = v195;
          *(&v205 - 3) = v197;
          v253._object = v93;
          v204 = v54;
          type metadata accessor for OfferLocationContactPickerView();
          sub_100485784(&qword_1006C12E0, &type metadata accessor for OfferLocationContactPickerView);
          v198 = v214;
          NavigationStack.init<>(root:)();

          v199 = swift_allocObject();
          *(v199 + 16) = v54;
          v200 = (v198 + *(v209 + 36));
          *v200 = 0;
          v200[1] = 0;
          v200[2] = sub_1004852D8;
          v200[3] = v199;
          sub_100007204(v198, v213, &qword_1006C12A0);
          v201 = objc_allocWithZone(sub_10007EBC0(&qword_1006C12E8));
          v202 = v54;
          v203 = UIHostingController.init(rootView:)();
          [v203 setModalPresentationStyle:2];
          [v202 presentViewController:v203 animated:1 completion:0];

          sub_100012DF0(v198, &qword_1006C12A0);
          (*(v211 + 8))(v195, v212);
        }

        else
        {

          v168 = [v78 mainBundle];
          v253._object = 0x800000010059AFA0;
          v169._object = 0x800000010059AF80;
          v252._countAndFlagsBits = 0xD000000000000029;
          v169._countAndFlagsBits = 0xD000000000000017;
          v170._countAndFlagsBits = 0;
          v170._object = 0xE000000000000000;
          v171 = NSLocalizedString(_:tableName:bundle:value:comment:)(v169, 0, v168, v170, v252);

          v172 = [v78 mainBundle];
          v173._countAndFlagsBits = 0xD000000000000011;
          v253._object = 0x800000010059AFF0;
          v173._object = 0x800000010059AFD0;
          v253._countAndFlagsBits = 0xD000000000000023;
          v174._countAndFlagsBits = 0;
          v174._object = 0xE000000000000000;
          v175 = NSLocalizedString(_:tableName:bundle:value:comment:)(v173, 0, v172, v174, v253);

          v176 = objc_allocWithZone(type metadata accessor for FMAddFriendViewController());
          v177 = sub_100190CDC(v89, v171._countAndFlagsBits, v171._object, v175._countAndFlagsBits, v175._object);
          v178 = objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
          v110 = v177;
          v111 = sub_1000CC510(v110, 2);
LABEL_47:
          v179 = v111;
          [v54 presentViewController:v111 animated:1 completion:0];
        }

LABEL_31:
        UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
      }

      else
      {
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          _os_log_impl(&_mh_execute_header, v161, v162, "FMPeopleActionController: Not eligible for sharing", v163, 2u);
        }
      }

      return;
    case 0xCu:
      v104 = objc_allocWithZone(sub_10007EBC0(&unk_1006C12D0));

      v102 = sub_10047FE14(v105);
      sub_10003E694(v102, v54);
      goto LABEL_30;
    case 0xDu:
      v139 = objc_allocWithZone(type metadata accessor for FMMeViewController());

      v102 = sub_100082D04();
      sub_1004DEC84(v102, v54);
      goto LABEL_30;
    case 0xEu:
      v101 = objc_allocWithZone(type metadata accessor for FMMeViewController());

      v102 = sub_100082D04();
      sub_1004DEC84(v102, v54);
      sub_1000493F8(0, 0.0);
      goto LABEL_30;
    case 0xFu:
      v159 = objc_allocWithZone(sub_10007EBC0(&qword_1006C12C8));

      v102 = sub_10002A3DC(v160);
      sub_10003E694(v102, v54);
      goto LABEL_30;
    case 0x10u:
      v126 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      v127 = v223;
      swift_beginAccess();
      v128 = v127 + v126;
      v129 = v236;
      sub_100027CB0(v128, v236, type metadata accessor for FMSelectedSection);

      v131 = sub_1001AB900(v130, v129, 0);

      sub_10002A1C0(v129, type metadata accessor for FMSelectedSection);
      [v54 presentViewController:v131 animated:1 completion:0];

      goto LABEL_31;
    case 0x11u:
      v132 = objc_allocWithZone(sub_10007EBC0(&qword_1006C12C0));

      v102 = sub_10047F9BC(v133);
      sub_10003E694(v102, v54);
      goto LABEL_30;
    case 0x12u:
      v140 = OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator;
      v141 = *(*&v54[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator] + 56);
      v142 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
      swift_beginAccess();
      v143 = v141 + v142;
      v144 = v224;
      sub_100007204(v143, v224, &unk_1006B8DD0);
      v145 = type metadata accessor for FMSelectionPendingAction(0);
      v146 = v54;
      if ((*(*(v145 - 8) + 48))(v144, 1, v145) == 1)
      {
        v147 = &enum case for DiscoveryType.hawkeye(_:);
        v148 = v230;
      }

      else
      {
        v166 = v219;
        sub_100007204(v144, v219, &unk_1006B8DD0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 10)
        {
          v148 = v230;
          *v230 = 2;
          v147 = &enum case for DiscoveryType.localFindable(_:);
        }

        else
        {
          v148 = v230;
          if (EnumCaseMultiPayload == 9)
          {
            *v230 = 1;
            v147 = &enum case for DiscoveryType.b389(_:);
          }

          else
          {
            if (EnumCaseMultiPayload == 8)
            {
              *v230 = 0;
            }

            else
            {
              sub_10002A1C0(v166, type metadata accessor for FMSelectionPendingAction);
            }

            v147 = &enum case for DiscoveryType.hawkeye(_:);
          }
        }
      }

      swift_storeEnumTagMultiPayload();
      v149 = v220;
      v150 = v232;
      (*(v220 + 104))(v232, *v147, v16);
      sub_100012DF0(v144, &unk_1006B8DD0);
      v151 = v146;
      v152 = *&v146[v140];
      (*(v149 + 16))(v226, v150, v16);
      type metadata accessor for FMIPAccessoryDiscoveryController();
      swift_allocObject();

      v153 = FMIPAccessoryDiscoveryController.init(discoveryType:)();
      v154 = v227;
      sub_100027CB0(v148, v227, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
      v155 = objc_allocWithZone(type metadata accessor for FMAccessoryDiscoveryCoordinator(0));
      v156 = v151;
      v157 = sub_100271314(v156, v152, v153, v154);

      *&v157[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_delegate + 8] = &off_100640D90;
      swift_unknownObjectWeakAssign();
      sub_10026E2B4();
      (*(v149 + 8))(v150, v16);
      sub_10002A1C0(v148, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
      v158 = *&v156[OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator];
      *&v156[OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator] = v157;

      goto LABEL_31;
    case 0x13u:
LABEL_22:
      sub_10002A1C0(v40, type metadata accessor for FMSelectedSection);
      goto LABEL_31;
    default:
      v134 = sub_10007EBC0(&qword_1006BEEE0);
      sub_100012DF0(&v40[*(v134 + 48)], &qword_1006B07D0);
      v135 = type metadata accessor for FMIPDevice();
      (*(*(v135 - 8) + 8))(v40, v135);
LABEL_28:
      v136 = *&v54[OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator];
      v137 = type metadata accessor for FMDeviceDetailCardViewController();
      v138 = objc_allocWithZone(v137);
      swift_storeEnumTagMultiPayload();
      *&v138[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_selectionSubscription] = 0;
      *&v138[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator] = v136;
      v245.receiver = v138;
      v245.super_class = v137;

      v58 = objc_msgSendSuper2(&v245, "initWithNibName:bundle:", 0, 0);
      goto LABEL_29;
  }
}

uint64_t sub_100029AE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

void sub_100029C64()
{
  sub_100029D8C();
  if (v0 <= 0x3F)
  {
    sub_100029DBC(319, &qword_1006B8CC0, &type metadata accessor for FMIPDiscoveredAccessory);
    if (v1 <= 0x3F)
    {
      sub_100029DBC(319, &qword_1006B8CC8, sub_100029E08);
      if (v2 <= 0x3F)
      {
        sub_100029DBC(319, &qword_1006B8CD8, &type metadata accessor for UUID);
        if (v3 <= 0x3F)
        {
          sub_100029DBC(319, &qword_1006B8CE0, &type metadata accessor for FMIPAccessoryError);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_100029D8C()
{
  result = qword_1006B8CB8;
  if (!qword_1006B8CB8)
  {
    result = &type metadata for FMAccessoryDiscoveryCoordinator.FlowType;
    atomic_store(&type metadata for FMAccessoryDiscoveryCoordinator.FlowType, &qword_1006B8CB8);
  }

  return result;
}

void sub_100029DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100029E08()
{
  if (!qword_1006B8CD0)
  {
    type metadata accessor for FMIPDiscoveredAccessory();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B8CD0);
    }
  }
}

uint64_t sub_100029E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A0A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A1C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10002A3DC(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[qword_1006BA970];
  *v4 = 0xD00000000000001ELL;
  v4[1] = 0x8000000100588620;
  v5 = qword_1006BA998;
  *&v2[v5] = [objc_allocWithZone(UILabel) init];
  v6 = qword_1006BA9A0;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for FMLoadingView()) init];
  v7 = qword_1006BA9A8;
  *&v2[v7] = [objc_allocWithZone(UIView) init];
  *&v2[qword_1006BA9B8] = 0;
  *&v2[qword_1006BA9C0] = 0;
  *&v2[qword_1006BA9C8] = 0;
  *&v2[qword_1006BA9D0] = 0;
  v2[qword_1006BA9D8] = 0;
  v8 = qword_1006BA9E0;
  v9 = [objc_opt_self() buttonWithType:1];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  *&v2[v8] = v9;
  v2[qword_1006BA9E8] = 0;
  v2[qword_1006BA9F0] = 0;
  type metadata accessor for FMTableView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setSeparatorStyle:0];
  *&v2[qword_1006BA990] = v11;
  v12 = objc_allocWithZone(type metadata accessor for FMPeopleListDataSource());

  *&v2[qword_1006BA978] = sub_10002B4C8(v13, v11);
  v14 = objc_allocWithZone(type metadata accessor for FMNoPersonView());

  *&v2[qword_1006BA980] = sub_1000383D8(v15);
  v16 = objc_allocWithZone(type metadata accessor for FMPersonTerminalView());

  v18 = sub_10003C3C0(v17);
  *(v18 + OBJC_IVAR____TtC6FindMy14FMTerminalView_isPeopleTab) = 1;
  *&v2[qword_1006BA988] = v18;
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  memmove(&v2[qword_1006BA9B0], &xmmword_1006D44E0, 0xA0uLL);
  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for FMMediatedViewController();

  v19 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v20 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityIdentifier:{v20, v26.receiver, v26.super_class}];

  sub_10000905C(0, &unk_1006B7840);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v22 = String._bridgeToObjectiveC()();

  [v11 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v22];

  *(*&v19[qword_1006BA978] + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delegate + 8) = &off_100634CB8;
  swift_unknownObjectWeakAssign();
  v23 = *&v19[qword_1006BA988];
  *&v23[OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate + 8] = &off_100634C68;
  swift_unknownObjectWeakAssign();
  v24 = v23;
  sub_10003C718();

  return v19;
}

id sub_10002A924()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy13FMLoadingView_title];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v5 = UIFontWeightTrait;
  v6 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v7 = sub_10002ACDC(v6);

  [v2 setFont:v7];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v8 = [objc_opt_self() labelColor];
  [v2 setTextColor:v8];

  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100595590;
  v10._countAndFlagsBits = 0x474E4944414F4CLL;
  v10._object = 0xE700000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000019;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14);

  v12 = String._bridgeToObjectiveC()();

  [v2 setText:v12];

  [v1 addSubview:v2];
  return [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator]];
}

unint64_t sub_10002AB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&unk_1006B39F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10001ADB4();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002AC74(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B47A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10002ACDC(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  sub_10007EBC0(&qword_1006B39D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  *(inited + 64) = sub_10007EBC0(&qword_1006B39D8);
  *(inited + 40) = a1;
  v5 = UIFontDescriptorTraitsAttribute;

  sub_1001531D0(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B39E0);
  type metadata accessor for AttributeName(0);
  sub_10001ADBC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v3 fontDescriptorByAddingAttributes:isa];

  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v8;
}

void sub_10002AEDC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy13FMLoadingView_title];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100552EE0;
  v5 = [v2 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 centerXAnchor];
  v9 = [v0 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1005521F0;
  v13 = [v1 topAnchor];
  v14 = [v2 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:10.0];

  *(v12 + 32) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [v1 leadingAnchor];
  v20 = [v0 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v12 + 48) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v12 + 56) = v24;
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v25];
}

unint64_t sub_10002B27C()
{
  result = qword_1006B3A70;
  if (!qword_1006B3A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B3A70);
  }

  return result;
}

uint64_t type metadata accessor for FMTableView()
{
  result = qword_1006B0C80;
  if (!qword_1006B0C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B314()
{
  if (!qword_1006B0C90)
  {
    type metadata accessor for IndexPath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B0C90);
    }
  }
}

void sub_10002B36C()
{
  sub_10002B314();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_10002B4C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  MyUI = type metadata accessor for Feature.FindMyUI();
  v53 = *(MyUI - 8);
  v54 = MyUI;
  __chkstk_darwin(MyUI);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  *&v2[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableViewFooter;
  *&v3[v10] = [objc_allocWithZone(type metadata accessor for FMListFooterActionsView()) init];
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_peopleSubscription] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_locationSubscription] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_selectionSubscription] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_meCellViewModel] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_fenceCellModels] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_itemAger;
  type metadata accessor for FMItemAger();
  swift_allocObject();
  *&v3[v11] = sub_10002BE70();
  v46 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInitiated.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10000A810(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v48 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
  v12 = v50;
  *&v3[v46] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delayedUpdateWorkItem] = 0;
  v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_isRemovingCell] = 0;
  v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled] = 0;
  v13 = &v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_listSubtitle];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator] = v12;
  v14 = v51;
  *&v3[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableView] = v51;
  v15 = type metadata accessor for FMPeopleListDataSource();
  v55.receiver = v3;
  v55.super_class = v15;

  v16 = v14;
  v17 = objc_msgSendSuper2(&v55, "init");
  v18 = qword_1006AEBE0;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100005B14(v20, qword_1006D4630);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMPeopleListDataSource: initialized", v23, 2u);
  }

  v24 = v52;
  v25 = v53;
  v26 = v54;
  (*(v53 + 104))(v52, enum case for Feature.FindMyUI.newPeopleListRows(_:), v54);
  sub_10000A810(&qword_1006B9FC0, &type metadata accessor for Feature.FindMyUI);
  v27 = FeatureFlagsKey.isEnabled()();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    [v16 setSeparatorStyle:1];
    sub_10000905C(0, &qword_1006B00B0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = String._bridgeToObjectiveC()();
    [v16 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v29];

    v30 = String._bridgeToObjectiveC()();
    [v16 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v30];

    v31 = String._bridgeToObjectiveC()();
    [v16 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v31];

    v32 = String._bridgeToObjectiveC()();
    [v16 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v32];

    [v16 _setAdjustsContentInsetWhenScrollDisabled:1];
  }

  else
  {
    sub_10007EBC0(&qword_1006BAA90);
    v33 = swift_getObjCClassFromMetadata();
    v34 = String._bridgeToObjectiveC()();
    [v16 registerClass:v33 forCellReuseIdentifier:v34];

    sub_10007EBC0(&qword_1006C3BF8);
    v35 = swift_getObjCClassFromMetadata();
    v36 = String._bridgeToObjectiveC()();
    [v16 registerClass:v35 forCellReuseIdentifier:v36];

    sub_10007EBC0(&qword_1006C3C00);
    v37 = swift_getObjCClassFromMetadata();
    v38 = String._bridgeToObjectiveC()();
    [v16 registerClass:v37 forCellReuseIdentifier:v38];

    sub_10007EBC0(&qword_1006C3C08);
    v39 = swift_getObjCClassFromMetadata();
    v40 = String._bridgeToObjectiveC()();
    [v16 registerClass:v39 forCellReuseIdentifier:v40];
  }

  *(*&v19[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_itemAger] + 24) = &off_1006450D8;
  swift_unknownObjectWeakAssign();
  v41 = dispatch thunk of FMFManager.friends.getter();
  v42 = *(*(v12 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v43 = v42;
  v44 = dispatch thunk of FMFManager.locationAlerts.getter();
  sub_10002C9BC(v41, v42, v44, 1);

  return v19;
}

uint64_t sub_10002BE70()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemAger: initialized", v5, 2u);
  }

  return v1;
}

uint64_t type metadata accessor for FMPeopleCellViewModel()
{
  result = qword_1006B1388;
  if (!qword_1006B1388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002BFB0()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10000AF8C();
    if (v1 <= 0x3F)
    {
      sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0);
      if (v2 <= 0x3F)
      {
        sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PeopleListPersonRow.State();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002C124(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_10000905C(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10002C17C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002C1D0(uint64_t a1)
{
  result = sub_10002C228(&qword_1006B1478, type metadata accessor for FMPeopleCellViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C270(uint64_t a1)
{
  result = sub_10002C228(&qword_1006B1470, type metadata accessor for FMPeopleCellViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FMMeCellViewModel()
{
  result = qword_1006BFC00;
  if (!qword_1006BFC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002C3E0()
{
  sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0);
  if (v0 <= 0x3F)
  {
    sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PeopleListPersonRow.State();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10002C4DC(uint64_t a1)
{
  result = sub_10002C534(&unk_1006BFC90, type metadata accessor for FMMeCellViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C57C(uint64_t a1)
{
  result = sub_10002C534(&qword_1006BFC88, type metadata accessor for FMMeCellViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10002C634()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for FMAllowLocationAlertCellViewModel()
{
  result = qword_1006C36E0;
  if (!qword_1006C36E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002C750()
{
  sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0);
  if (v0 <= 0x3F)
  {
    sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000);
    if (v1 <= 0x3F)
    {
      sub_10000AF8C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PeopleListPersonRow.State();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10002C87C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C8C4(uint64_t a1)
{
  result = sub_10002C87C(&qword_1006C3778, type metadata accessor for FMAllowLocationAlertCellViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C91C(uint64_t a1)
{
  result = sub_10002C87C(&qword_1006C3770, type metadata accessor for FMAllowLocationAlertCellViewModel);
  *(a1 + 8) = result;
  return result;
}

void sub_10002C9BC(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled] & 1) != 0 || (a4)
  {
    v46 = v15;
    if ([*&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableView] isEditing])
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100005B14(v18, qword_1006D4630);
      v46 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v46, v19, "FMPeopleListDataSource: Ignoring data source update due to editing mode", v20, 2u);
      }

      v21 = v46;
    }

    else
    {
      v39 = v9;
      v40 = v14;
      v41 = v10;
      v22 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
      swift_beginAccess();
      v23 = *&v4[v22];
      v24 = a1;
      v25 = *&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_fenceCellModels];
      v26 = swift_allocObject();
      *(v26 + 16) = v4;
      *(v26 + 24) = v24;
      v42 = a2;
      v43 = a3;
      *(v26 + 32) = a2;
      *(v26 + 40) = a3;
      v44 = v25;
      v45 = v23;
      *(v26 + 48) = v23;
      *(v26 + 56) = v25;
      v27 = v24;
      *(v26 + 64) = a4 & 1;
      if (*(v24 + 16) < 3uLL || (a4 & 1) != 0)
      {
        v33 = v42;
        v34 = v42;

        v35 = v4;
        v36 = v45;
        swift_bridgeObjectRetain_n();
        v37 = v44;
        swift_bridgeObjectRetain_n();
        v38 = v43;

        sub_10002CF98(v35, v27, v33, v38, v36, v37, a4 & 1);
      }

      else
      {
        v28 = swift_allocObject();
        *(v28 + 16) = sub_100053408;
        *(v28 + 24) = v26;
        aBlock[4] = sub_100009624;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_100645700;
        v29 = _Block_copy(aBlock);
        v30 = v42;

        v31 = v4;

        static DispatchQoS.unspecified.getter();
        v47 = _swiftEmptyArrayStorage;
        sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
        v32 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v41 + 8))(v12, v32);
        (*(v40 + 8))(v17, v46);
      }
    }
  }
}

uint64_t sub_10002CEFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CF34()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10002CF98(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v57 = a7;
  v64 = a5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMFLocationAlert();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v72 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v21 = sub_10002D838(a2, a3);
  v22 = _swiftEmptyArrayStorage;
  v65 = a6;
  v66 = v21;
  if (a4)
  {
    v56 = a1;
    v23 = *(a4 + 16);
    if (v23)
    {
      v26 = *(v16 + 16);
      v25 = v16 + 16;
      v24 = v26;
      v68 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v69 = v26;
      v27 = a4 + v68;
      v28 = *(v25 + 56);
      v67 = (v25 - 8);
      v70 = v25;
      v71 = (v25 + 16);
      v26(v20, v27, v15);
      while (1)
      {
        if (sub_10052C8B4())
        {
          v29 = *v71;
          (*v71)(v72, v20, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100167224(0, *(v22 + 2) + 1, 1);
            v22 = aBlock[0];
          }

          v32 = *(v22 + 2);
          v31 = *(v22 + 3);
          if (v32 >= v31 >> 1)
          {
            sub_100167224(v31 > 1, v32 + 1, 1);
            v22 = aBlock[0];
          }

          *(v22 + 2) = v32 + 1;
          v29(&v22[v68 + v32 * v28], v72, v15);
          v24 = v69;
        }

        else
        {
          (*v67)(v20, v15);
        }

        v27 += v28;
        if (!--v23)
        {
          break;
        }

        v24(v20, v27, v15);
      }
    }

    v33 = v22;
    a1 = v56;
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_100035F90(v22);

  v35 = v66;
  v36 = sub_100036858(v66, type metadata accessor for FMPeopleCellViewModel, type metadata accessor for FMPeopleCellViewModel, &off_100626810);
  sub_100036B80(v36);

  v37 = v64;
  v38 = sub_100037B78(v35, v64);
  v39 = v65;
  if ((v38 & 1) != 0 && (sub_10004B264(v34, v65) & 1) != 0 && (v57 & 1) == 0)
  {
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100005B14(v41, qword_1006D4630);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134218752;
      *(v44 + 4) = *(v35 + 16);

      *(v44 + 12) = 2048;
      *(v44 + 14) = v34[2];

      *(v44 + 22) = 2048;
      *(v44 + 24) = *(v37 + 16);

      *(v44 + 32) = 2048;
      *(v44 + 34) = *(v39 + 16);

      _os_log_impl(&_mh_execute_header, v42, v43, "FMPeopleListDataSource: reloading table view new: %ld (%ld fences), old: %ld (%ld fences)", v44, 0x2Au);
    }

    else
    {
    }

    v45 = swift_allocObject();
    v45[2] = v35;
    v45[3] = a1;
    v45[4] = v33;
    v45[5] = v34;
    v46 = objc_opt_self();

    v47 = a1;

    v48 = [v46 currentThread];
    v49 = [v48 isMainThread];

    if (v49)
    {
      sub_100037D54(v35, v47, v33, v34);
    }

    else
    {

      sub_10000905C(0, &qword_1006AEDC0);
      v50 = static OS_dispatch_queue.main.getter();
      v51 = swift_allocObject();
      *(v51 + 16) = sub_10005B5D8;
      *(v51 + 24) = v45;
      aBlock[4] = sub_1000CE0E8;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100645778;
      v52 = _Block_copy(aBlock);

      v53 = v58;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v54 = v60;
      v55 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v52);

      (*(v62 + 8))(v54, v55);
      return (*(v59 + 8))(v53, v61);
    }
  }
}

uint64_t sub_10002D7E4()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10002D838(uint64_t a1, void *a2)
{
  v39 = a2;
  v38 = type metadata accessor for FMFFriend();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMPeopleCellViewModel();
  v36 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v35 = *(v2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator);

  dispatch thunk of FMFManager.preferences.getter();

  v15 = type metadata accessor for FMFPreferences();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100012DF0(v14, &qword_1006AF750);
    v17 = 1;
  }

  else
  {
    v18 = FMFPreferences.hideLocation.getter();
    (*(v16 + 8))(v14, v15);
    v17 = v18 ^ 1;
  }

  v34 = v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v21 = *(v4 + 72);
    v32 = (v4 + 16);
    v33 = v21;
    v22 = _swiftEmptyArrayStorage;
    v23 = v35;
    do
    {
      v41 = v19;

      v24 = sub_10002DCD8(v20, 0);

      v25 = v37;
      (*v32)(v37, v20, v38);
      v40 = v24;

      v26 = v39;
      v27 = v39;
      v28 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

      sub_10002EBD8(v23, v25, v26, v24, v28 & 1, v34 & 1, 0, v11);
      sub_1000353E4(v11, v9, type metadata accessor for FMPeopleCellViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100035628(0, v22[2] + 1, 1, v22);
      }

      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        v22 = sub_100035628(v29 > 1, v30 + 1, 1, v22);
      }

      sub_100035650(v11, type metadata accessor for FMPeopleCellViewModel);
      v22[2] = v30 + 1;
      sub_1000356B0(v9, v22 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, type metadata accessor for FMPeopleCellViewModel);
      v20 += v33;
      v19 = v41 - 1;
    }

    while (v41 != 1);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v42 = v22;

  sub_100035718(&v42);

  return v42;
}

uint64_t sub_10002DCD8(uint64_t a1, int a2)
{
  v37 = a2;
  v36 = *v2;
  v5 = sub_10007EBC0(&unk_1006B0670);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = FMFFriend.contactHandles.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v35 = a1;
    v10 = sub_10002E21C(v9, 0);
    v11 = sub_100016318(&v47, v10 + 4, v9, v8);
    v13 = *(&v47 + 1);
    v12 = v47;

    sub_10000BEC8();
    if (v11 != v9)
    {
      __break(1u);
LABEL_13:
      swift_once();
      goto LABEL_11;
    }
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  *&v47 = v10;
  sub_10000BED0(&v47);

  if (!*(v47 + 16))
  {

    goto LABEL_9;
  }

  v14 = *(v47 + 32);
  v9 = *(v47 + 40);

  FMFFriend.contact.getter();
  v15 = type metadata accessor for FMFContact();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {

    v17 = sub_10000BF3C(v7);
LABEL_9:
    __chkstk_darwin(v17);
    *(&v35 - 4) = v18;
    *(&v35 - 24) = v37 & 1;
    *(&v35 - 2) = v36;
    sub_10007EBC0(&unk_1006B0720);
    OS_dispatch_queue.sync<A>(execute:)();
    return v47;
  }

  v35 = v14;
  v12 = FMFContact.storeUUID.getter();
  v13 = v20;
  (*(v16 + 8))(v7, v15);
  v21 = [objc_opt_self() mainScreen];
  [v21 scale];
  v3 = v22;

  if (qword_1006AEC30 != -1)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = qword_1006D47A0;
  v24 = FMFFriend.identifier.getter();
  v26 = v25;
  v27 = v38;
  v28 = __chkstk_darwin(v24);
  *(&v35 - 6) = v27;
  *(&v35 - 5) = v28;
  *(&v35 - 4) = v26;
  *(&v35 - 3) = v12;
  v29 = v36;
  *(&v35 - 2) = v13;
  *(&v35 - 1) = v29;
  OS_dispatch_queue.sync<A>(execute:)();

  v30 = v47;
  v31 = FMFFriend.identifier.getter();
  v33 = *(v27 + qword_1006B05A8);
  v32 = *(v27 + qword_1006B05A8 + 8);
  *&v47 = v31;
  *(&v47 + 1) = v34;
  *&v48 = v12;
  *(&v48 + 1) = v13;
  *&v49 = v35;
  *(&v49 + 1) = v9;
  v50[0] = v37 & 1;
  *&v50[8] = v30;
  *&v50[24] = v3;
  *&v51 = v23;
  *(&v51 + 1) = v33;
  v52 = v32;
  v43 = *&v50[16];
  v44 = v51;
  v45 = v32;
  v39 = v47;
  v40 = v48;
  v42 = *v50;
  v41 = v49;

  dispatch thunk of FMImageCache.cachedImage(for:completion:)();
  sub_1000C1E2C(&v47);
  return v46;
}

void *sub_10002E1A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10007EBC0(a3);
  v5 = swift_allocObject();
  v6 = j__malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

Swift::Int sub_10002E230(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000FDB18(v7, v8, a1, v4);
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
    return sub_10002E328(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002E328(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10002E3F8(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = qword_1006B05B8;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_10002E6A0(a2 & 1), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    *a3 = v10;
    v11 = v10;
  }

  else
  {
    if (qword_1006AEA60 != -1)
    {
      swift_once();
    }

    v12 = [qword_1006B0590 placeholderImageProvider];
    v13 = objc_opt_self();
    v14 = [v13 mainScreen];
    [v14 scale];
    v16 = v15;

    v17 = a2 & 1;
    v18 = 44.0;
    if (v17)
    {
      v18 = 66.0;
    }

    v19 = v18 * v16;
    v20 = [v13 mainScreen];
    [v20 scale];
    v22 = v21;

    v23 = [v12 imageForSize:v19 scale:{v19, v22}];
    swift_unknownObjectRelease();
    swift_beginAccess();
    v24 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    sub_10002E71C(v24, v17, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v26;
    swift_endAccess();

    *a3 = v23;
  }
}

void sub_10002E634()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings:v0];

  qword_1006B0590 = v1;
}

unint64_t sub_10002E6A0(char a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    v2 = 0x4050800000000000;
  }

  else
  {
    v2 = 0x4046000000000000;
  }

  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_10002E864(a1 & 1, v3);
}

void sub_10002E71C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  v9 = sub_10002E6A0(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10002E8D8(v14, a3 & 1);
      v9 = sub_10002E6A0(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1001BE1EC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = v8;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

unint64_t sub_10002E864(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (a1)
      {
        if (*(*(v2 + 48) + result))
        {
          return result;
        }
      }

      else if ((*(*(v2 + 48) + result) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10002E8D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B5DA8);
  v32 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      if (v20)
      {
        v23 = 0x4050800000000000;
      }

      else
      {
        v23 = 0x4046000000000000;
      }

      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_10002EB80()
{
  result = qword_1006B2310;
  if (!qword_1006B2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B2310);
  }

  return result;
}

uint64_t sub_10002EBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v473 = a7;
  LODWORD(v503) = a6;
  v488 = a5;
  v480 = a4;
  v504 = a3;
  v520 = a1;
  v474 = a8;
  v9 = type metadata accessor for PeopleListPersonRow.State.ID();
  __chkstk_darwin(v9 - 8);
  v472 = &v424 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = sub_10007EBC0(&qword_1006B1490);
  __chkstk_darwin(v467);
  v466 = &v424 - v11;
  v12 = sub_10007EBC0(&qword_1006B1498);
  v13 = __chkstk_darwin(v12 - 8);
  v469 = &v424 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v470 = &v424 - v16;
  v17 = __chkstk_darwin(v15);
  v471 = &v424 - v18;
  __chkstk_darwin(v17);
  v498 = &v424 - v19;
  v20 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v20 - 8);
  v461 = &v424 - v21;
  v22 = sub_10007EBC0(&qword_1006B14A0);
  v23 = __chkstk_darwin(v22 - 8);
  v468 = &v424 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v458 = &v424 - v26;
  __chkstk_darwin(v25);
  v513 = &v424 - v27;
  v456 = sub_10007EBC0(&qword_1006B14A8);
  __chkstk_darwin(v456);
  v487 = &v424 - v28;
  v29 = sub_10007EBC0(&unk_1006C2460);
  v30 = __chkstk_darwin(v29 - 8);
  v433 = &v424 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v455 = &v424 - v33;
  __chkstk_darwin(v32);
  v482 = &v424 - v34;
  v35 = sub_10007EBC0(&qword_1006B14B0);
  v36 = __chkstk_darwin(v35 - 8);
  v464 = &v424 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v452 = (&v424 - v39);
  __chkstk_darwin(v38);
  v512 = &v424 - v40;
  v497 = sub_10007EBC0(&qword_1006B14B8);
  v41 = __chkstk_darwin(v497);
  v463 = &v424 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v465 = &v424 - v44;
  __chkstk_darwin(v43);
  v511 = (&v424 - v45);
  v436 = sub_10007EBC0(&qword_1006B14C0);
  v46 = __chkstk_darwin(v436);
  v435 = &v424 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v428 = &v424 - v49;
  v50 = __chkstk_darwin(v48);
  v459 = &v424 - v51;
  v52 = __chkstk_darwin(v50);
  v451 = &v424 - v53;
  __chkstk_darwin(v52);
  v432 = &v424 - v54;
  v55 = sub_10007EBC0(&qword_1006B0050);
  v56 = __chkstk_darwin(v55 - 8);
  v434 = &v424 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v483 = &v424 - v59;
  v60 = __chkstk_darwin(v58);
  v457 = &v424 - v61;
  v62 = __chkstk_darwin(v60);
  v510 = &v424 - v63;
  __chkstk_darwin(v62);
  v449 = &v424 - v64;
  v516 = type metadata accessor for FMFFriend();
  v514 = *(v516 - 8);
  v65 = __chkstk_darwin(v516);
  v437 = &v424 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v460 = (&v424 - v68);
  v462 = v69;
  __chkstk_darwin(v67);
  v431 = &v424 - v70;
  v71 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v71 - 8);
  v448 = &v424 - v72;
  v502 = type metadata accessor for FMFLocationSource();
  v499 = *(v502 - 8);
  v73 = __chkstk_darwin(v502);
  v444 = &v424 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __chkstk_darwin(v73);
  v438 = &v424 - v76;
  __chkstk_darwin(v75);
  v440 = &v424 - v77;
  v489 = type metadata accessor for FMFLocationAlert();
  v523 = *(v489 - 8);
  v78 = __chkstk_darwin(v489);
  v429 = &v424 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v82 = &v424 - v81;
  __chkstk_darwin(v80);
  v430 = &v424 - v83;
  v515 = type metadata accessor for Date();
  v509 = *(v515 - 8);
  v84 = __chkstk_darwin(v515);
  v425 = &v424 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __chkstk_darwin(v84);
  v479 = &v424 - v87;
  v88 = __chkstk_darwin(v86);
  v443 = &v424 - v89;
  __chkstk_darwin(v88);
  v426 = &v424 - v90;
  v91 = sub_10007EBC0(&unk_1006B0000);
  v92 = __chkstk_darwin(v91 - 8);
  v454 = &v424 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __chkstk_darwin(v92);
  v453 = &v424 - v95;
  v96 = __chkstk_darwin(v94);
  v477 = &v424 - v97;
  v98 = __chkstk_darwin(v96);
  v441 = &v424 - v99;
  __chkstk_darwin(v98);
  v505 = &v424 - v100;
  v101 = sub_10007EBC0(&qword_1006AF740);
  v102 = __chkstk_darwin(v101 - 8);
  v450 = &v424 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __chkstk_darwin(v102);
  v446 = &v424 - v105;
  v106 = __chkstk_darwin(v104);
  v478 = &v424 - v107;
  v108 = __chkstk_darwin(v106);
  v475 = &v424 - v109;
  v110 = __chkstk_darwin(v108);
  v439 = &v424 - v111;
  v112 = __chkstk_darwin(v110);
  v481 = &v424 - v113;
  __chkstk_darwin(v112);
  v115 = &v424 - v114;
  v116 = type metadata accessor for FMFRelationshipType();
  v117 = *(v116 - 8);
  v118 = __chkstk_darwin(v116);
  v120 = &v424 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v118);
  v122 = &v424 - v121;
  v517 = type metadata accessor for FMPeopleCellViewModel();
  __chkstk_darwin(v517);
  v518 = (&v424 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willFollowMyLocation.getter();
  v124 = sub_10002C228(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  LODWORD(v501) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v125 = *(v117 + 8);
  v125(v120, v116);
  v125(v122, v116);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  v492 = v124;
  v476 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v495 = v120;
  v125(v120, v116);
  v494 = v122;
  v126 = v122;
  v127 = v504;
  v447 = v116;
  v496 = (v117 + 8);
  v493 = v125;
  v125(v126, v116);
  LODWORD(v500) = FMFFriend.optedNotToShare.getter();
  LODWORD(v484) = v500 != 2;
  FMFFriend.location.getter();
  v128 = type metadata accessor for FMFLocation();
  v129 = *(v128 - 8);
  v521 = *(v129 + 6);
  v522 = (v129 + 48);
  if (v521(v115, 1, v128) == 1)
  {
    sub_100012DF0(v115, &qword_1006AF740);
    v442 = 0;
    v485 = 0;
    v130 = 0x7FEFFFFFFFFFFFFFLL;
    v131 = v509;
    goto LABEL_10;
  }

  v132 = FMFLocation.location.getter();
  (*(v129 + 1))(v115, v128);
  v131 = v509;
  if (!v132)
  {
    goto LABEL_9;
  }

  if (!v127)
  {

LABEL_9:
    v442 = 0;
    v485 = 0;
    v130 = 0x7FEFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  v133 = qword_1006AEC58;
  v134 = v127;
  if (v133 != -1)
  {
    swift_once();
  }

  v135 = [qword_1006D48A8 localizedDistanceFromLocation:v132 toLocation:v134];
  v442 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v485 = v136;

  [v132 distanceFromLocation:v134];
  v130 = v137;

LABEL_10:
  v519 = v128;
  v427 = objc_opt_self();
  v138 = [v427 configurationWithPointSize:11.0];
  v445 = objc_opt_self();
  v139 = [v445 systemYellowColor];
  v140 = v129;
  if (FMFFriend.favoriteOrder.getter() == 0x7FFFFFFFFFFFFFFFLL)
  {
    v141 = 0;
  }

  else
  {
    v142 = v138;
    v143 = String._bridgeToObjectiveC()();
    v141 = [objc_opt_self() systemImageNamed:v143 withConfiguration:v142];
  }

  v144 = v505;
  FMFFriend.shareExpires.getter();
  v145 = v131[6];
  v507 = (v131 + 6);
  v506 = v145;
  v146 = v145(v144, 1, v515);
  sub_100012DF0(v144, &unk_1006B0000);
  v486 = v138;
  if (v146 == 1)
  {
    v490 = v141;
    v491 = v139;
  }

  else
  {
    v147 = v138;
    v148 = String._bridgeToObjectiveC()();
    v149 = [objc_opt_self() systemImageNamed:v148 withConfiguration:v147];

    v150 = [v445 systemOrangeColor];
    v490 = v149;
    v138 = v486;
    v491 = v150;
  }

  v151 = v518;
  v152 = v140;
  v153 = FMFFriend.locationAlertsOnFriend.getter();
  v154 = v519;
  v505 = v152;
  if (v153)
  {
    if (*(v153 + 16))
    {
      v155 = v523;
      v156 = v430;
      v157 = v489;
      (v523[2])(v430, v153 + ((*(v155 + 80) + 32) & ~*(v155 + 80)), v489);

      v158 = v441;
      FMFLocationAlert.muteEndDate.getter();
      v159 = v157;
      v154 = v519;
      v131 = v509;
      v155[1](v156, v159);
      if (v506(v158, 1, v515) != 1)
      {
        v160 = v131[4];
        v161 = v131;
        v162 = v426;
        v163 = v515;
        v160();
        v164 = v443;
        Date.init()();
        v165 = static Date.> infix(_:_:)();
        v166 = v161[1];
        v166(v164, v163);
        if (v165)
        {
          v167 = v138;
          v168 = String._bridgeToObjectiveC()();
          v169 = [objc_opt_self() systemImageNamed:v168 withConfiguration:v167];

          v170 = [v445 secondaryLabelColor];
          v166(v162, v163);
          v490 = v169;
          v491 = v170;
        }

        else
        {
          v166(v162, v163);
        }

        v151 = v518;
        v131 = v509;
        goto LABEL_25;
      }
    }

    else
    {

      v158 = v441;
      (v131[7])(v441, 1, 1, v515);
    }

    sub_100012DF0(v158, &unk_1006B0000);
LABEL_25:
    v152 = v505;
  }

  v171 = [objc_opt_self() sharedInstance];
  v172 = [v171 isInternalBuild];

  if (v172)
  {
    v173 = [objc_opt_self() standardUserDefaults];
    v174 = String._bridgeToObjectiveC()();
    v175 = [v173 BOOLForKey:v174];

    if (v175)
    {
      if (FMFFriend.fallbackToLegacy.getter())
      {
        v176 = v486;
        v177 = String._bridgeToObjectiveC()();
        v178 = [objc_opt_self() systemImageNamed:v177 withConfiguration:v176];

        v179 = [v445 systemPurpleColor];
        v490 = v178;
        v491 = v179;
      }
    }
  }

  v180 = v481;
  FMFFriend.location.getter();
  if (v521(v180, 1, v154) == 1)
  {
    sub_100012DF0(v180, &qword_1006AF740);
  }

  else
  {
    v181 = v438;
    FMFLocation.locationSource.getter();
    (*(v152 + 1))(v180, v154);
    v182 = v499;
    v183 = v440;
    v184 = v181;
    v185 = v502;
    (*(v499 + 32))(v440, v184, v502);
    v186 = v444;
    (*(v182 + 104))(v444, enum case for FMFLocationSource.stewie(_:), v185);
    sub_10002C228(&qword_1006B14E8, &type metadata accessor for FMFLocationSource);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v187 = *(v182 + 8);
    v187(v186, v185);
    if (v525 == v524)
    {
      v188 = [v427 configurationWithTextStyle:UIFontTextStyleCaption1 scale:1];
      v189 = String._bridgeToObjectiveC()();
      v190 = [objc_opt_self() _systemImageNamed:v189 withConfiguration:v188];

      v191 = [v445 systemBlackColor];
      v490 = v190;
      v491 = v191;
    }

    v187(v183, v502);
    v151 = v518;
    v154 = v519;
    v131 = v509;
  }

  v192 = v484 ^ v500;
  if (FMFFriend.isWaitingForShallowLocation.getter())
  {
    LODWORD(v481) = 1;
  }

  else
  {
    v193 = v439;
    FMFFriend.location.getter();
    if (v521(v193, 1, v154) == 1)
    {
      sub_100012DF0(v193, &qword_1006AF740);
      LODWORD(v481) = 0;
    }

    else
    {
      LODWORD(v481) = FMFLocation.locateInProgress.getter();
      (*(v152 + 1))(v193, v154);
    }
  }

  v194 = *(*(v520 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  LODWORD(v445) = v192;
  LODWORD(v500) = v501 | v192;
  if ((v501 | v192))
  {
    v195 = 0;
    v484 = 0;
  }

  else
  {

    v195 = v442;
    v484 = v196;
  }

  v197 = v475;
  *v151 = FMFFriend.identifier.getter();
  v151[1] = v198;
  FMFFriend.location.getter();
  if (v521(v197, 1, v154) == 1)
  {
    sub_100012DF0(v197, &qword_1006AF740);
  }

  else
  {
    v199 = FMFLocation.location.getter();
    v200 = v197;
    v201 = v199;
    (*(v152 + 1))(v200, v154);
    if (v201)
    {
      v202 = [v201 timestamp];

      v203 = v443;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v204 = v131[4];
      v475 = v195;
      v205 = a2;
      v206 = v194;
      v207 = v477;
      v208 = v203;
      v209 = v131;
      v210 = v515;
      v204(v477, v208, v515);
      (v131[7])(v207, 0, 1, v210);
      v211 = v479;
      v212 = v207;
      v194 = v206;
      a2 = v205;
      v195 = v475;
      v204(v479, v212, v210);
      goto LABEL_49;
    }
  }

  v213 = v477;
  v209 = v131;
  v210 = v515;
  (v131[7])(v477, 1, 1, v515);
  v211 = v479;
  static Date.distantFuture.getter();
  if (v506(v213, 1, v210) != 1)
  {
    sub_100012DF0(v213, &unk_1006B0000);
  }

LABEL_49:
  v214 = v517;
  v215 = v209[4];
  v216 = v151 + v517[5];
  v479 = (v209 + 4);
  v477 = v215;
  (v215)(v216, v211, v210);
  v217 = FMFFriend.name.getter();
  v218 = (v151 + v214[6]);
  *v218 = v217;
  v218[1] = v219;
  if (v194)
  {
    v195 = 0;
    v220 = 0xE000000000000000;
  }

  else
  {
  }

  v221 = v489;
  v222 = v519;
  v223 = v517;
  v224 = (v151 + v517[9]);
  *v224 = v195;
  v224[1] = v220;
  *(v151 + v223[16]) = v130;
  sub_100032A7C();
  *(v151 + v223[17]) = v225;
  v226 = v478;
  FMFFriend.location.getter();
  if (v521(v226, 1, v222) == 1)
  {
    sub_100012DF0(v226, &qword_1006AF740);
  }

  else
  {
    v227 = FMFLocation.location.getter();
    (*(v505 + 1))(v226, v222);
    if (v227)
    {

      v228 = 1;
      goto LABEL_57;
    }
  }

  v228 = 0;
LABEL_57:
  *(v151 + v223[15]) = v228;
  v229 = sub_100032E4C(a2, v503 & 1, 0);
  v230 = (v151 + v223[18]);
  *v230 = v229;
  v230[1] = v231;
  *(v151 + v223[19]) = v500 & 1;
  v232 = FMFFriend.favoriteOrder.getter() == 0x7FFFFFFFFFFFFFFFLL;
  v233 = v476;
  *(v151 + v223[20]) = v232 & v476;
  *(v151 + v223[21]) = (FMFFriend.favoriteOrder.getter() != 0x7FFFFFFFFFFFFFFFLL) & v233;
  v234 = 1;
  *(v151 + v223[22]) = 1;
  v235 = sub_100033C74();
  v236 = (v151 + v223[24]);
  *v236 = v235;
  v236[1] = v237;
  v238 = sub_100033F0C();
  v239 = (v151 + v223[25]);
  *v239 = v238;
  v239[1] = v240;
  *(v151 + v223[10]) = v480;
  *(v151 + v223[13]) = 0x4046000000000000;
  *(v151 + v223[14]) = 0;
  *(v151 + v223[11]) = v490;
  *(v151 + v223[12]) = v491;
  v241 = FMFFriend.shortName.getter();
  v242 = (v151 + v223[8]);
  *v242 = v241;
  v242[1] = v243;
  *(v151 + v223[7]) = v488 & 1;
  v244 = FMFFriend.locationAlertsOnFriend.getter();
  if (!v244)
  {
    v252 = 0;
    goto LABEL_67;
  }

  v245 = v244;
  v246 = a2;
  v247 = *(v244 + 16);
  if (!v247)
  {
LABEL_65:

    v252 = 0;
    v234 = 1;
    a2 = v246;
    v151 = v518;
    v222 = v519;
LABEL_67:
    v251 = v448;
LABEL_68:
    (v523[7])(v251, v234, 1, v221);
    sub_100012DF0(v251, &unk_1006BEF80);
    v253 = v517;
    *(v151 + v517[26]) = v252;
    v254 = v494;
    FMFFriend.relationshipType.getter();
    v255 = v495;
    static FMFRelationshipType.sharesLocationWithMe.getter();
    v256 = v447;
    v257 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v258 = v255;
    v259 = v493;
    v493(v258, v256);
    v259(v254, v256);
    *(v151 + v253[27]) = v257 & 1;
    *(v151 + v253[23]) = v481 & 1;
    *(v151 + v253[29]) = 0;
    v260 = v446;
    FMFFriend.location.getter();
    v261 = v521(v260, 1, v222);
    v262 = v451;
    if (v261 == 1)
    {
      sub_100012DF0(v260, &qword_1006AF740);
      v263 = 0;
    }

    else
    {
      v263 = FMFLocation.isSecureLocation.getter();
      (*(v505 + 1))(v260, v222);
    }

    v264 = v502;
    v265 = v518;
    *(v518 + v253[30]) = v263 & 1;
    v266 = v494;
    FMFFriend.relationshipType.getter();
    v267 = v495;
    static FMFRelationshipType.willShareLocationWithMe.getter();
    v268 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v269 = v267;
    v270 = v493;
    v493(v269, v256);
    v270(v266, v256);
    v265[v253[31]] = v268 & 1;
    updated = dispatch thunk of FMFManager.pendingUpdateFriends.getter();
    __chkstk_darwin(updated);
    v272 = v449;
    sub_1000341A8(sub_1000EE304, updated, v449);
    v493 = 0;

    v273 = v514;
    v274 = *(v514 + 48);
    v275 = v516;
    v502 = v514 + 48;
    v496 = v274;
    if (v274(v272, 1, v516) == 1)
    {
      sub_100012DF0(v272, &qword_1006B0050);
      v265[v253[28]] = 0;
      v276 = v452;
      v277 = v450;
      v278 = v485;
    }

    else
    {
      v279 = v431;
      (*(v273 + 32))(v431, v272, v275);
      v280 = v432;
      FMFFriend.pendingUpdateReason.getter();
      (*(v273 + 8))(v279, v275);
      v281 = type metadata accessor for FMFPendingUpdateReason();
      v282 = *(v281 - 8);
      v283 = (*(v282 + 48))(v280, 1, v281);
      v276 = v452;
      v278 = v485;
      if (v283 == 1)
      {
        v284 = 0;
      }

      else
      {
        sub_100007204(v280, v262, &qword_1006B14C0);
        v285 = (*(v282 + 88))(v262, v281);
        if (v285 == enum case for FMFPendingUpdateReason.respondToInvite(_:))
        {
          (*(v282 + 96))(v262, v281);
          if (*v262)
          {
            v284 = 1;
          }

          else
          {
            v284 = 2;
          }
        }

        else if (v285 == enum case for FMFPendingUpdateReason.startSharing(_:))
        {
          v284 = 1;
        }

        else
        {
          (*(v282 + 8))(v262, v281);
          v284 = 0;
        }
      }

      *(v518 + v253[28]) = v284;
      sub_100012DF0(v280, &qword_1006B14C0);
      v277 = v450;
    }

    v286 = FMFFriend.name.getter();
    v288 = v287;
    v289 = v511;
    *v289 = sub_1000343D4(v511 + *(v497 + 48), a2, v503 & 1, 0);
    v289[1] = v290;
    v291 = v519;
    v495 = v286;
    if (v500)
    {

LABEL_85:

      v292 = type metadata accessor for PeopleListPersonRow.State.DetailOrProgress();
      (*(*(v292 - 8) + 56))(v276, 1, 1, v292);
      goto LABEL_91;
    }

    if (v481)
    {

      v293 = enum case for PeopleListPersonRow.State.DetailOrProgress.progress(_:);
      v294 = type metadata accessor for PeopleListPersonRow.State.DetailOrProgress();
      v295 = *(v294 - 8);
      (*(v295 + 104))(v276, v293, v294);
    }

    else
    {
      if (!v278)
      {
        goto LABEL_85;
      }

      *v276 = v442;
      v276[1] = v278;
      v296 = enum case for PeopleListPersonRow.State.DetailOrProgress.detail(_:);
      v294 = type metadata accessor for PeopleListPersonRow.State.DetailOrProgress();
      v295 = *(v294 - 8);
      (*(v295 + 104))(v276, v296, v294);
    }

    (*(v295 + 56))(v276, 0, 1, v294);
    v291 = v519;
LABEL_91:
    sub_100035318(v276, v512, &qword_1006B14B0);
    FMFFriend.location.getter();
    v297 = v521(v277, 1, v291);
    v298 = v455;
    v494 = v288;
    if (v297 == 1)
    {
      sub_100012DF0(v277, &qword_1006AF740);
      v299 = 1;
      v300 = v482;
    }

    else
    {
      v300 = v482;
      FMFLocation.locationSource.getter();
      (*(v505 + 1))(v277, v291);
      v299 = 0;
    }

    v301 = v499;
    v302 = *(v499 + 56);
    v302(v300, v299, 1, v264);
    (*(v301 + 104))(v298, enum case for FMFLocationSource.stewie(_:), v264);
    v302(v298, 0, 1, v264);
    v303 = *(v456 + 48);
    v304 = v487;
    sub_100007204(v300, v487, &unk_1006C2460);
    v305 = v304;
    sub_100007204(v298, v304 + v303, &unk_1006C2460);
    v306 = v301;
    v307 = v300;
    v308 = *(v306 + 48);
    if (v308(v305, 1, v264) == 1)
    {
      sub_100012DF0(v298, &unk_1006C2460);
      v309 = v487;
      sub_100012DF0(v307, &unk_1006C2460);
      v310 = v308(v309 + v303, 1, v264);
      v311 = v453;
      v312 = v445;
      if (v310 == 1)
      {
        sub_100012DF0(v309, &unk_1006C2460);
        v313 = 1;
LABEL_100:
        v315 = v515;
        v316 = v454;
        goto LABEL_102;
      }
    }

    else
    {
      v314 = v433;
      sub_100007204(v305, v433, &unk_1006C2460);
      if (v308(v305 + v303, 1, v264) != 1)
      {
        v317 = v499;
        v318 = v444;
        (*(v499 + 32))(v444, v305 + v303, v264);
        sub_10002C228(&qword_1006B14E0, &type metadata accessor for FMFLocationSource);
        v319 = dispatch thunk of static Equatable.== infix(_:_:)();
        v320 = *(v317 + 8);
        v320(v318, v264);
        sub_100012DF0(v298, &unk_1006C2460);
        sub_100012DF0(v482, &unk_1006C2460);
        v320(v314, v264);
        v313 = v319;
        sub_100012DF0(v305, &unk_1006C2460);
        v315 = v515;
        v316 = v454;
        v311 = v453;
        v312 = v445;
LABEL_102:
        v321 = FMFFriend.locationAlertsOnFriend.getter();
        if (v321)
        {
          if (*(v321 + 16))
          {
            v322 = v523;
            v323 = v429;
            v324 = v489;
            (v523[2])(v429, v321 + ((*(v322 + 80) + 32) & ~*(v322 + 80)), v489);

            FMFLocationAlert.muteEndDate.getter();
            v322[1](v323, v324);
            if (v506(v311, 1, v315) != 1)
            {
              v325 = v425;
              (v477)(v425, v311, v315);
              v326 = v313;
              v327 = v443;
              Date.init()();
              v328 = static Date.> infix(_:_:)();
              v329 = v509[1];
              v330 = v327;
              v313 = v326;
              v329(v330, v315);
              v329(v325, v315);
              goto LABEL_109;
            }

LABEL_108:
            sub_100012DF0(v311, &unk_1006B0000);
            v328 = 0;
LABEL_109:
            FMFFriend.shareExpires.getter();
            v331 = v506(v316, 1, v315);
            sub_100012DF0(v316, &unk_1006B0000);
            v332 = FMFFriend.favoriteOrder.getter();
            if (v313)
            {
              v333 = v458;
              static Symbol.satellite.getter();
              v334 = 0;
              v221 = v514;
              v335 = v459;
              v246 = v516;
            }

            else
            {
              v333 = v458;
              v246 = v516;
              if (v328)
              {
                static Symbol.mute.getter();
                v334 = 0;
                v221 = v514;
                v335 = v459;
              }

              else
              {
                v335 = v459;
                if (v331 == 1)
                {
                  v221 = v514;
                  if (v332 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v334 = 1;
                  }

                  else
                  {
                    static Symbol.favorite.getter();
                    v334 = 0;
                  }
                }

                else
                {
                  static Symbol.temporary.getter();
                  v334 = 0;
                  v221 = v514;
                }
              }
            }

            v336 = type metadata accessor for Symbol();
            (*(*(v336 - 8) + 56))(v333, v334, 1, v336);
            sub_100035318(v333, v513, &qword_1006B14A0);
            if (v501)
            {
              v337 = 0;
            }

            else
            {
              v337 = 2;
            }

            if (v312)
            {
              v338 = 1;
            }

            else
            {
              v338 = v337;
            }

            v339 = dispatch thunk of FMFManager.pendingUpdateFriends.getter();
            __chkstk_darwin(v339);
            v340 = v510;
            sub_1000341A8(sub_1000EE764, v339, v510);

            v341 = v457;
            sub_100007204(v340, v457, &qword_1006B0050);
            if (v496(v341, 1, v246) == 1)
            {
              sub_100012DF0(v341, &qword_1006B0050);
              v342 = type metadata accessor for FMFPendingUpdateReason();
              (*(*(v342 - 8) + 56))(v335, 1, 1, v342);
              LODWORD(v521) = 2;
              v343 = v461;
              goto LABEL_134;
            }

            FMFFriend.pendingUpdateReason.getter();
            (*(v221 + 8))(v341, v246);
            v344 = type metadata accessor for FMFPendingUpdateReason();
            v345 = *(v344 - 8);
            v346 = (*(v345 + 48))(v335, 1, v344);
            v343 = v461;
            if (v346 != 1)
            {
              v348 = v428;
              sub_100007204(v335, v428, &qword_1006B14C0);
              v349 = (*(v345 + 88))(v348, v344);
              if (v349 == enum case for FMFPendingUpdateReason.respondToInvite(_:))
              {
                (*(v345 + 96))(v348, v344);
                v347 = *v348;
                goto LABEL_133;
              }

              if (v349 == enum case for FMFPendingUpdateReason.startSharing(_:))
              {
                v347 = 1;
                goto LABEL_133;
              }

              (*(v345 + 8))(v428, v344);
            }

            v347 = 2;
LABEL_133:
            LODWORD(v521) = v347;
LABEL_134:
            sub_100012DF0(v335, &qword_1006B14C0);
            dispatch thunk of FMFManager.preferences.getter();
            v350 = type metadata accessor for FMFPreferences();
            v351 = *(v350 - 8);
            if ((*(v351 + 48))(v343, 1, v350) == 1)
            {
              sub_100012DF0(v343, &qword_1006AF750);
              v507 = 0;
              v509 = 0;
            }

            else
            {
              v507 = FMFPreferences.primaryEmail.getter();
              v509 = v352;
              (*(v351 + 8))(v343, v350);
            }

            v248 = v483;
            v250 = v460;
            LODWORD(v515) = v338;
            if (qword_1006AEBE0 == -1)
            {
              goto LABEL_138;
            }

            goto LABEL_153;
          }
        }

        (v509[7])(v311, 1, 1, v315);
        goto LABEL_108;
      }

      sub_100012DF0(v298, &unk_1006C2460);
      v309 = v487;
      sub_100012DF0(v482, &unk_1006C2460);
      (*(v499 + 8))(v314, v264);
      v311 = v453;
      v312 = v445;
    }

    sub_100012DF0(v309, &qword_1006B14A8);
    v313 = 0;
    goto LABEL_100;
  }

  v248 = 0;
  v249 = v244 + ((*(v523 + 80) + 32) & ~*(v523 + 80));
  a2 = (v523 + 2);
  v250 = v523 + 1;
  while (v248 < *(v245 + 16))
  {
    (v523[2])(v82, v249 + v523[9] * v248, v221);
    if (FMFLocationAlert.isOn.getter() & 1) != 0 && (FMFLocationAlert.setByMe.getter())
    {

      v251 = v448;
      (v523[4])(v448, v82, v221);
      v234 = 0;
      v252 = 1;
      a2 = v246;
      v151 = v518;
      v222 = v519;
      goto LABEL_68;
    }

    ++v248;
    (*v250)(v82, v221);
    if (v247 == v248)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_153:
  swift_once();
LABEL_138:
  v353 = type metadata accessor for Logger();
  sub_100005B14(v353, qword_1006D4630);
  v354 = *(v221 + 16);
  v508 = a2;
  v523 = v354;
  (v354)(v250, a2, v246);
  sub_100007204(v510, v248, &qword_1006B0050);
  v355 = Logger.logObject.getter();
  v356 = static os_log_type_t.default.getter();
  v357 = os_log_type_enabled(v355, v356);
  v519 = v221 + 16;
  if (v357)
  {
    v358 = swift_slowAlloc();
    v359 = v246;
    v522 = swift_slowAlloc();
    v525 = v522;
    *v358 = 136315650;
    v360 = FMFFriend.name.getter();
    v362 = v361;
    v363 = *(v221 + 8);
    v363(v250, v359);
    v364 = sub_100005B4C(v360, v362, &v525);

    *(v358 + 4) = v364;
    *(v358 + 12) = 2080;
    LOBYTE(v524) = v521;
    sub_10007EBC0(&qword_1006B14D8);
    v365 = String.init<A>(describing:)();
    v367 = sub_100005B4C(v365, v366, &v525);

    *(v358 + 14) = v367;
    *(v358 + 22) = 2080;
    v368 = v434;
    sub_100007204(v248, v434, &qword_1006B0050);
    if (v496(v368, 1, v359) == 1)
    {
      sub_100012DF0(v368, &qword_1006B0050);
      v369 = type metadata accessor for FMFPendingUpdateReason();
      (*(*(v369 - 8) + 56))(v435, 1, 1, v369);
    }

    else
    {
      FMFFriend.pendingUpdateReason.getter();
      v363(v368, v359);
    }

    v370 = v363;
    v371 = String.init<A>(describing:)();
    v373 = v372;
    sub_100012DF0(v483, &qword_1006B0050);
    v374 = sub_100005B4C(v371, v373, &v525);

    *(v358 + 24) = v374;
    _os_log_impl(&_mh_execute_header, v355, v356, "FMPeopleCellViewModel: %s %s, %s", v358, 0x20u);
    swift_arrayDestroy();

    v246 = v516;
    v221 = v514;
  }

  else
  {

    sub_100012DF0(v248, &qword_1006B0050);
    v370 = *(v221 + 8);
    v370(v250, v246);
  }

  v375 = v515;
  v376 = v508;
  v377 = v523;
  v522 = v370;
  if (v515 == 2)
  {

    v378 = v467;
    v379 = *(v467 + 48);
    v380 = type metadata accessor for GenericControl.Info();
    v381 = *(*(v380 - 8) + 56);
    v382 = v466;
    v381(v466, 1, 1, v380);
    v381((v382 + v379), 1, 1, v380);
  }

  else
  {
    v383 = swift_allocObject();
    swift_weakInit();
    v384 = v437;
    (v377)(v437, v376, v246);
    v385 = *(v221 + 80);
    v386 = (v221 + 32);
    v506 = v385;
    v505 = ((v385 + 24) & ~v385);
    v503 = v221 + 32;
    if (v375)
    {
      LODWORD(v502) = v521 != 2;
      v387 = (v385 + 24) & ~v385;
      v388 = swift_allocObject();
      *(v388 + 16) = v383;
      v515 = *v386;
      (v515)(v388 + v387, v384, v246);

      v382 = v466;
      static GenericControl.Info.offerLocationMenu(compactTitleOnly:fromEmailDescription:forceInProgressState:forceDisabledState:action:)();

      v507 = type metadata accessor for GenericControl.Info();
      v500 = *(v507 - 8);
      v389 = *(v500 + 56);
      v501 = v500 + 56;
      v509 = v389;
      (v389)(v382, 0, 1, v507);
      v390 = v384;
      v391 = [objc_opt_self() mainBundle];
      v526._object = 0x800000010057D7A0;
      v392._object = 0x800000010057D780;
      v526._countAndFlagsBits = 0xD00000000000002BLL;
      v392._countAndFlagsBits = 0xD000000000000019;
      v393._countAndFlagsBits = 0;
      v393._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v392, 0, v391, v393, v526);

      v378 = v467;
      v394 = v382 + *(v467 + 48);
      v395 = (v394 + *(sub_10007EBC0(&qword_1006B14D0) + 48));
      GenericControl.Info.Label.init(title:symbol:forceStyleProminent:forceInProgressState:forceDisabledState:)();
      v396 = swift_allocObject();
      swift_weakInit();

      v397 = v390;
      v398 = v390;
      v399 = v516;
      (v523)(v398, v508, v516);
      v400 = v505;
      v401 = swift_allocObject();
      *(v401 + 16) = v396;
      (v515)(&v400[v401], v397, v399);
      *v395 = &unk_1005538F8;
      v395[1] = v401;
      v402 = v507;
      (*(v500 + 104))(v394, enum case for GenericControl.Info.button(_:), v507);
    }

    else
    {
      LODWORD(v500) = v521 != 2;
      v403 = (v385 + 24) & ~v385;
      v404 = swift_allocObject();
      *(v404 + 16) = v383;
      v515 = *v386;
      (v515)(v404 + v403, v384, v246);

      v382 = v466;
      static GenericControl.Info.offerLocationMenu(compactTitleOnly:fromEmailDescription:forceInProgressState:forceDisabledState:action:)();

      v507 = type metadata accessor for GenericControl.Info();
      v501 = *(v507 - 8);
      v405 = *(v501 + 56);
      v502 = v501 + 56;
      v509 = v405;
      (v405)(v382, 0, 1, v507);
      v406 = v384;
      v407 = [objc_opt_self() mainBundle];
      v527._object = 0x800000010057D750;
      v408._object = 0x800000010057D730;
      v527._countAndFlagsBits = 0xD00000000000002BLL;
      v408._countAndFlagsBits = 0xD000000000000019;
      v409._countAndFlagsBits = 0;
      v409._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v408, 0, v407, v409, v527);

      v378 = v467;
      v394 = v382 + *(v467 + 48);
      v410 = (v394 + *(sub_10007EBC0(&qword_1006B14D0) + 48));
      GenericControl.Info.Label.init(title:symbol:forceStyleProminent:forceInProgressState:forceDisabledState:)();
      v411 = swift_allocObject();
      swift_weakInit();

      v412 = v516;
      (v523)(v406, v508, v516);
      v413 = v505;
      v414 = swift_allocObject();
      *(v414 + 16) = v411;
      (v515)(&v413[v414], v406, v412);
      *v410 = &unk_1005538D8;
      v410[1] = v414;
      v402 = v507;
      (*(v501 + 104))(v394, enum case for GenericControl.Info.button(_:), v507);
    }

    (v509)(v394, 0, 1, v402);
  }

  v415 = *(v378 + 48);
  v416 = v498;
  sub_100035318(v382, v498, &qword_1006B1498);
  v417 = v471;
  sub_100035318(v382 + v415, v471, &qword_1006B1498);
  FMFFriend.identifier.getter();
  PeopleListPersonRow.State.ID.init(rawValue:)();
  v418 = v511;
  v419 = v465;
  sub_100007204(v511, v465, &qword_1006B14B8);
  v420 = *(v419 + 8);
  v521 = *v419;
  v519 = v420;
  v421 = v497;
  v523 = *(v497 + 48);
  sub_100007204(v418, v463, &qword_1006B14B8);

  v515 = *(v421 + 48);
  sub_100007204(v512, v464, &qword_1006B14B0);
  sub_100007204(v513, v468, &qword_1006B14A0);
  sub_100007204(v416, v470, &qword_1006B1498);
  sub_100007204(v417, v469, &qword_1006B1498);
  v422 = v518;
  PeopleListPersonRow.State.init(id:title:subtitle:subtitleExtra:detailOrProgress:symbol:contact:primaryControl:secondaryControl:)();

  sub_100012DF0(v417, &qword_1006B1498);
  sub_100012DF0(v498, &qword_1006B1498);
  sub_100012DF0(v510, &qword_1006B0050);
  sub_100012DF0(v513, &qword_1006B14A0);
  sub_100012DF0(v512, &qword_1006B14B0);
  sub_100012DF0(v511, &qword_1006B14B8);
  sub_100012DF0(v523 + v419, &qword_1006B14C8);
  sub_100035380(v422, v474);
  return v522(v508, v516);
}

uint64_t sub_100032A34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032A7C()
{
  v0 = type metadata accessor for FMFRelationshipType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  FMFFriend.location.getter();
  v10 = type metadata accessor for FMFLocation();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012DF0(v9, &qword_1006AF740);
  }

  else
  {
    v12 = FMFLocation.location.getter();
    (*(v11 + 8))(v9, v10);
    if (v12)
    {
    }
  }

  if (FMFFriend.favoriteOrder.getter() == 0x7FFFFFFFFFFFFFFFLL)
  {
    FMFFriend.relationshipType.getter();
    static FMFRelationshipType.followsMyLocation.getter();
    sub_10002C228(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
    v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v14 = *(v1 + 8);
    v14(v4, v0);
    v14(v6, v0);
    if (v13)
    {
      FMFFriend.relationshipType.getter();
      static FMFRelationshipType.sharesLocationWithMe.getter();
      dispatch thunk of SetAlgebra.isSuperset(of:)();
      v14(v4, v0);
      v14(v6, v0);
    }
  }

  else
  {
    FMFFriend.favoriteOrder.getter();
  }

  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willFollowMyLocation.getter();
  sub_10002C228(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v6, v0);
  return FMFFriend.optedNotToShare.getter();
}

uint64_t sub_100032E4C(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for FMFRelationshipType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willFollowMyLocation.getter();
  sub_10002C228(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = [objc_opt_self() mainBundle];
    v35 = 0x800000010057DAA0;
    v16 = 0xD00000000000001BLL;
    v17 = 0x800000010057DA80;
    v18 = 0xD00000000000002DLL;
LABEL_3:
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, 0, v15, v19, *&v18)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v21 = FMFFriend.optedNotToShare.getter();
  if (v21 != 2 && (v21 & 1) == 0)
  {
    v15 = [objc_opt_self() mainBundle];
    v35 = 0x800000010057DA50;
    v17 = 0x800000010057DA30;
    v18 = 0xD000000000000028;
    v16 = 0xD000000000000016;
    goto LABEL_3;
  }

  v22 = sub_1000331D8(a1, a2 & 1, a3 & 1);
  countAndFlagsBits = v24;
  v26 = v25;
  if (v23)
  {
    v27 = v22;
    v28 = v23;
    v29 = [objc_opt_self() mainBundle];
    v37._object = 0x800000010057DBA0;
    v30._countAndFlagsBits = 0xD000000000000027;
    v30._object = 0x800000010057DB70;
    v37._countAndFlagsBits = 0xD000000000000039;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v37);

    sub_10007EBC0(&unk_1006B20B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100552210;
    *(v32 + 56) = &type metadata for String;
    v33 = sub_10008EE84();
    *(v32 + 32) = v27;
    *(v32 + 40) = v28;
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v33;
    *(v32 + 64) = v33;
    *(v32 + 72) = countAndFlagsBits;
    *(v32 + 80) = v26;
    countAndFlagsBits = String.init(format:_:)();
  }

  return countAndFlagsBits;
}

uint64_t sub_1000331D8(uint64_t a1, int a2, int a3)
{
  v70 = a3;
  v66 = a2;
  v3 = type metadata accessor for FormatStyleCapitalizationContext();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v61 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = __chkstk_darwin(v5);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v61 - v8;
  v9 = sub_10007EBC0(&qword_1006AF740);
  v10 = __chkstk_darwin(v9 - 8);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v61 - v12;
  v13 = type metadata accessor for FMFLocation();
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v71 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMFRelationshipType();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  sub_100033BE8(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23 = *(v16 + 8);
  v23(v19, v15);
  v23(v21, v15);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.followsMyLocation.getter();
  v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23(v19, v15);
  v23(v21, v15);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willShareLocationWithMe.getter();
  v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23(v19, v15);
  v23(v21, v15);
  if (v22)
  {
    v26 = v72;
    FMFFriend.location.getter();
    v28 = v73;
    v27 = v74;
    if ((*(v73 + 48))(v26, 1, v74) == 1)
    {
      sub_100012DF0(v26, &qword_1006AF740);
      if (v70)
      {
        v29 = [objc_opt_self() mainBundle];
        v60 = 0x800000010057DA00;
        v30 = 0xD00000000000001CLL;
        v31 = 0x800000010057D9E0;
        v32 = 0xD00000000000002ELL;
      }

      else
      {
        v50 = FMFFriend.isWaitingForShallowLocation.getter();
        v29 = [objc_opt_self() mainBundle];
        if (v50)
        {
          v30 = 0xD000000000000011;
          v60 = 0x8000000100584EA0;
          v31 = 0x8000000100584E80;
          v32 = 0xD000000000000023;
        }

        else
        {
          v60 = 0x800000010057D9B0;
          v30 = 0xD00000000000001DLL;
          v31 = 0x800000010057D990;
          v32 = 0xD00000000000002FLL;
        }
      }

      goto LABEL_23;
    }

    v33 = v71;
    (*(v28 + 32))(v71, v26, v27);
    v34 = v65;
    (*(v28 + 16))(v65, v33, v27);
    (*(v28 + 56))(v34, 0, 1, v27);
    v35 = sub_100050DA8(v34, 0);
    v37 = v36;
    v39 = v38;
    sub_100012DF0(v34, &qword_1006AF740);
    v40 = FMFLocation.location.getter();
    if (v40)
    {
      v41 = v40;
      v42 = [v40 timestamp];

      v43 = v64;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v68 + 32))(v67, v43, v69);
      if (v70)
      {
        v44 = [objc_opt_self() mainBundle];
        v75._object = 0x800000010057DA00;
        v45._countAndFlagsBits = 0xD00000000000001CLL;
        v45._object = 0x800000010057D9E0;
        v75._countAndFlagsBits = 0xD00000000000002ELL;
        v46._countAndFlagsBits = 0;
        v46._object = 0xE000000000000000;
        v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v75);
        countAndFlagsBits = v47._countAndFlagsBits;
        object = v47._object;
      }

      else
      {
        v51 = v61;
        static FormatStyleCapitalizationContext.beginningOfSentence.getter();
        countAndFlagsBits = sub_1000CA838(v51);
        object = v52;
        (*(v62 + 8))(v51, v63);
      }

      v53 = [objc_opt_self() mainBundle];
      v76._object = 0x8000000100584EF0;
      v54._object = 0x8000000100584ED0;
      v76._countAndFlagsBits = 0xD00000000000002CLL;
      v54._countAndFlagsBits = 0xD00000000000001ALL;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v76);

      sub_10007EBC0(&unk_1006B20B0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_100552210;
      *(v56 + 56) = &type metadata for String;
      v57 = sub_10008EE84();
      *(v56 + 32) = v37;
      *(v56 + 40) = v39;
      *(v56 + 96) = &type metadata for String;
      *(v56 + 104) = v57;
      *(v56 + 64) = v57;
      *(v56 + 72) = countAndFlagsBits;
      *(v56 + 80) = object;
      String.init(format:_:)();

      (*(v68 + 8))(v67, v69);
      (*(v73 + 8))(v71, v74);
    }

    else
    {
      (*(v28 + 8))(v33, v27);
    }
  }

  else
  {
    if (v24)
    {
      if (v66)
      {
        v29 = [objc_opt_self() mainBundle];
        if (v25)
        {
          v60 = 0x800000010057D950;
          v30 = 0xD000000000000026;
          v31 = 0x800000010057D920;
          v32 = 0xD000000000000038;
        }

        else
        {
          v60 = 0x800000010057D8F0;
          v31 = 0x800000010057D8D0;
          v32 = 0xD00000000000002CLL;
          v30 = 0xD00000000000001ALL;
        }
      }

      else
      {
        v29 = [objc_opt_self() mainBundle];
        v60 = 0x800000010057D890;
        v30 = 0xD000000000000026;
        v31 = 0x800000010057D860;
        v32 = 0xD000000000000038;
      }

      goto LABEL_23;
    }

    if (v25)
    {
      v29 = [objc_opt_self() mainBundle];
      v60 = 0x800000010057D820;
      v30 = 0xD000000000000022;
      v31 = 0x800000010057D7F0;
      v32 = 0xD000000000000034;
LABEL_23:
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v30, 0, v29, v58, *&v32);

      return 0;
    }

    return 0;
  }

  return v35;
}

uint64_t sub_100033BE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033C30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FMFLocationSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100033C74()
{
  v0 = type metadata accessor for FMFRelationshipType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willFollowMyLocation.getter();
  sub_10002C228(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  countAndFlagsBits = 0;
  if (v7)
  {
    v10 = [objc_opt_self() mainBundle];
    v19._object = 0x800000010057DB40;
    v11._countAndFlagsBits = 0xD000000000000018;
    v11._object = 0x800000010057DB20;
    v19._countAndFlagsBits = 0xD00000000000002ALL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v19)._countAndFlagsBits;
  }

  v13 = FMFFriend.optedNotToShare.getter();
  if (v13 != 2 && (v13 & 1) == 0)
  {

    v14 = [objc_opt_self() mainBundle];
    v20._object = 0x800000010057DAF0;
    v15._object = 0x800000010057DAD0;
    v20._countAndFlagsBits = 0xD000000000000029;
    v15._countAndFlagsBits = 0xD000000000000017;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100033F0C()
{
  v0 = type metadata accessor for FMFRelationshipType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willFollowMyLocation.getter();
  sub_10002C228(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  countAndFlagsBits = 0;
  if (v7)
  {
    v10 = [objc_opt_self() mainBundle];
    v19._object = 0x800000010057D750;
    v11._object = 0x800000010057D730;
    v19._countAndFlagsBits = 0xD00000000000002BLL;
    v11._countAndFlagsBits = 0xD000000000000019;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v19)._countAndFlagsBits;
  }

  v13 = FMFFriend.optedNotToShare.getter();
  if (v13 != 2 && (v13 & 1) == 0)
  {

    v14 = [objc_opt_self() mainBundle];
    v20._object = 0x800000010057D7A0;
    v15._object = 0x800000010057D780;
    v20._countAndFlagsBits = 0xD00000000000002BLL;
    v15._countAndFlagsBits = 0xD000000000000019;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100034200@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_1000343D4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v120 = a4;
  v106 = a3;
  v124 = a1;
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  v110 = *(MyRelativeDate - 8);
  v111 = MyRelativeDate;
  __chkstk_darwin(MyRelativeDate);
  v105 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B14F0);
  v7 = __chkstk_darwin(v6 - 8);
  v107 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v103 - v9;
  v10 = sub_10007EBC0(&qword_1006B14C8);
  v11 = __chkstk_darwin(v10 - 8);
  v109 = (&v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v115 = (&v103 - v14);
  __chkstk_darwin(v13);
  v113 = &v103 - v15;
  v16 = sub_10007EBC0(&qword_1006AF740);
  v17 = __chkstk_darwin(v16 - 8);
  v108 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v103 - v19;
  v20 = type metadata accessor for FMFLocation();
  v118 = *(v20 - 8);
  v119 = v20;
  __chkstk_darwin(v20);
  v112 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10007EBC0(&qword_1006B14B8);
  v22 = __chkstk_darwin(v122);
  v123 = (&v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = (&v103 - v24);
  v26 = type metadata accessor for FMFRelationshipType();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v103 - v31;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willFollowMyLocation.getter();
  sub_10002C228(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  v33 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v34 = *(v27 + 8);
  v34(v30, v26);
  v34(v32, v26);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  v121 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v34(v30, v26);
  v34(v32, v26);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.followsMyLocation.getter();
  v116 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v34(v30, v26);
  v34(v32, v26);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willShareLocationWithMe.getter();
  v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v34(v30, v26);
  v34(v32, v26);
  if ((v33 & 1) == 0)
  {
    v104 = v25;
    v44 = FMFFriend.optedNotToShare.getter();
    if (v44 == 2 || (v44 & 1) != 0)
    {
      if (v121)
      {
        v45 = v117;
        FMFFriend.location.getter();
        v46 = v118;
        v47 = v119;
        if ((*(v118 + 48))(v45, 1, v119) == 1)
        {
          sub_100012DF0(v45, &qword_1006AF740);
          v48 = objc_opt_self();
          v49 = [v48 mainBundle];
          v127._object = 0x800000010057D9B0;
          v50._countAndFlagsBits = 0xD00000000000001DLL;
          v50._object = 0x800000010057D990;
          v127._countAndFlagsBits = 0xD00000000000002FLL;
          v51._countAndFlagsBits = 0;
          v51._object = 0xE000000000000000;
          v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v127);
          countAndFlagsBits = v52._countAndFlagsBits;
          object = v52._object;

          if ((v120 & 1) == 0)
          {
            v72 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
            v60 = v109;
            (*(*(v72 - 8) + 56))(v109, 1, 1, v72);
LABEL_30:
            v40 = v122;
            v93 = v104;
            v104->_countAndFlagsBits = countAndFlagsBits;
            v93->_object = object;
            sub_100035318(v60, v93 + *(v40 + 48), &qword_1006B14C8);
            v43 = v93;
            goto LABEL_33;
          }

          v55 = [v48 mainBundle];
          v128._object = 0x800000010057DA00;
          v56._object = 0x800000010057D9E0;
          v128._countAndFlagsBits = 0xD00000000000002ELL;
          v56._countAndFlagsBits = 0xD00000000000001CLL;
          v57._countAndFlagsBits = 0;
          v57._object = 0xE000000000000000;
          v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v128);
          v59 = v58._object;

          v60 = v109;
          *v109 = v58._countAndFlagsBits;
        }

        else
        {
          v65 = v112;
          (*(v46 + 32))(v112, v45, v47);
          v66 = FMFLocation.location.getter();
          if (v66)
          {
            v125 = v66;
            v67 = v66;
            v68 = v114;
            sub_1000EDF0C(&v125, v114);

            v60 = v115;
            v69 = v113;
            v70 = v110;
            v71 = v111;
          }

          else
          {
            v70 = v110;
            v71 = v111;
            v68 = v114;
            (*(v110 + 56))(v114, 1, 1, v111);
            v60 = v115;
            v69 = v113;
          }

          v76 = v107;
          sub_100007204(v68, v107, &qword_1006B14F0);
          if ((*(v70 + 48))(v76, 1, v71) == 1)
          {
            sub_100012DF0(v68, &qword_1006B14F0);
            v77 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
            (*(*(v77 - 8) + 56))(v69, 1, 1, v77);
          }

          else
          {
            v78 = v105;
            (*(v70 + 32))(v105, v76, v71);
            (*(v70 + 16))(v69, v78, v71);
            v79 = enum case for PeopleListPersonRow.State.RelativeDateOrString.date(_:);
            v80 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
            v81 = *(v80 - 8);
            v82 = v79;
            v60 = v115;
            (*(v81 + 104))(v69, v82, v80);
            (*(v70 + 8))(v78, v71);
            sub_100012DF0(v114, &qword_1006B14F0);
            (*(v81 + 56))(v69, 0, 1, v80);
          }

          v83 = v108;
          (*(v46 + 16))(v108, v65, v47);
          (*(v46 + 56))(v83, 0, 1, v47);
          countAndFlagsBits = sub_1000532F8(v83, 0);
          object = v84;
          sub_100012DF0(v83, &qword_1006AF740);
          if ((v120 & 1) == 0)
          {
            (*(v46 + 8))(v65, v47);
            sub_100035318(v69, v60, &qword_1006B14C8);
            goto LABEL_30;
          }

          v85 = v65;
          v86 = [objc_opt_self() mainBundle];
          v129._object = 0x800000010057DA00;
          v87._object = 0x800000010057D9E0;
          v129._countAndFlagsBits = 0xD00000000000002ELL;
          v87._countAndFlagsBits = 0xD00000000000001CLL;
          v88._countAndFlagsBits = 0;
          v88._object = 0xE000000000000000;
          v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v129);
          v59 = v89._object;

          sub_100012DF0(v69, &qword_1006B14C8);
          (*(v46 + 8))(v85, v47);
          *v60 = v89._countAndFlagsBits;
        }

        v60[1] = v59;
        v90 = enum case for PeopleListPersonRow.State.RelativeDateOrString.string(_:);
        v91 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
        v92 = *(v91 - 8);
        (*(v92 + 104))(v60, v90, v91);
        (*(v92 + 56))(v60, 0, 1, v91);
        goto LABEL_30;
      }

      if (v116)
      {
        if (v106)
        {
          v61 = [objc_opt_self() mainBundle];
          if ((v35 & 1) == 0)
          {
            v62 = 0xD00000000000001ALL;
            v102 = 0x800000010057D8F0;
            v63 = 0x800000010057D8D0;
            v64 = 0xD00000000000002CLL;
            goto LABEL_32;
          }

          v102 = 0x800000010057D950;
          v62 = 0xD000000000000026;
          v63 = 0x800000010057D920;
        }

        else
        {
          v61 = [objc_opt_self() mainBundle];
          v102 = 0x800000010057D890;
          v62 = 0xD000000000000026;
          v63 = 0x800000010057D860;
        }

        v64 = 0xD000000000000038;
      }

      else
      {
        if ((v35 & 1) == 0)
        {
          v40 = v122;
          v73 = *(v122 + 48);
          v74 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
          v75 = v104;
          (*(*(v74 - 8) + 56))(v104 + v73, 1, 1, v74);
          v43 = v75;
          v75->_countAndFlagsBits = 0;
          v75->_object = 0xE000000000000000;
          goto LABEL_33;
        }

        v61 = [objc_opt_self() mainBundle];
        v102 = 0x800000010057D820;
        v62 = 0xD000000000000022;
        v63 = 0x800000010057D7F0;
        v64 = 0xD000000000000034;
      }
    }

    else
    {
      v61 = [objc_opt_self() mainBundle];
      v62 = 0xD000000000000016;
      v102 = 0x800000010057DA50;
      v63 = 0x800000010057DA30;
      v64 = 0xD000000000000028;
    }

LABEL_32:
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v62, 0, v61, v94, *(&v102 - 1));

    v40 = v122;
    v96 = *(v122 + 48);
    v97 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
    v98 = v104;
    (*(*(v97 - 8) + 56))(v104 + v96, 1, 1, v97);
    v43 = v98;
    *v98 = v95;
    goto LABEL_33;
  }

  v36 = [objc_opt_self() mainBundle];
  v37._countAndFlagsBits = 0xD00000000000001BLL;
  v126._object = 0x800000010057DAA0;
  v37._object = 0x800000010057DA80;
  v126._countAndFlagsBits = 0xD00000000000002DLL;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v126);

  v40 = v122;
  v41 = *(v122 + 48);
  v42 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString();
  (*(*(v42 - 8) + 56))(v25 + v41, 1, 1, v42);
  *v25 = v39;
  v43 = v25;
LABEL_33:
  v99 = v123;
  sub_100035318(v43, v123, &qword_1006B14B8);
  v100 = *v99;
  sub_100035318(v99 + *(v40 + 48), v124, &qword_1006B14C8);
  return v100;
}
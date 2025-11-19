void sub_100097C94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) = 1;
    sub_100096720();
    v2 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_pages];
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v7 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_pages];
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v3 = *(v2 + 32);
      }

      v4 = v3;
      type metadata accessor for RadioFavoritesViewController();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        *(v5 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = 1;
        sub_10004FC40();
        v6 = v4;
      }

      else
      {
        v6 = v1;
        v1 = v4;
      }
    }
  }
}

void sub_100097DB8(uint64_t a1, uint8_t a2)
{
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3B70);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 16908544;
    v6[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Switching grouping strategy to %{public}hhu", v6, 5u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
    v9 = Strong;

    if (v8 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
LABEL_8:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v8 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v8 + 8 * v12 + 32);
LABEL_13:
            v14 = v13;

            type metadata accessor for RadioStationListViewController();
            v15 = swift_dynamicCastClass();
            if (v15)
            {
              v16 = v15;
              v17 = *(v15 + OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy);
              *(v16 + OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy) = a2;
              sub_100017588(v17);
            }

            return;
          }

          __break(1u);
          return;
        }

        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_8;
      }
    }
  }
}

UIMenu sub_100097FB0()
{
  sub_100005A50(0, &unk_1000EEF90, UIMenu_ptr);
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1000B4FC0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100098E34;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100094288;
  aBlock[3] = &unk_1000E2708;
  v3 = _Block_copy(aBlock);

  v4 = [v1 elementWithUncachedProvider:v3];
  _Block_release(v3);
  *(preferredElementSize + 32) = v4;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

uint64_t sub_100098128(uint64_t (*a1)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v3 = Strong;
  v4 = sub_1000976A0();
  if (v4 >> 62)
  {
    sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
    v5 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
    v5 = v4;
  }

  a1(v5);
}

void sub_100098298(char a1)
{
  *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) = a1;
  sub_100096720();
  v3 = *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v6 = v4;
  type metadata accessor for RadioFavoritesViewController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = a1;
    sub_10004FC40();
  }
}

void sub_1000984AC()
{
  v1 = v0;
  v2 = type metadata accessor for CAFUICellSelectionAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v51 - v8);
  v10 = type metadata accessor for CAFUISettingsCache();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v56 = Strong;
  v19 = [*&Strong[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];
  if (!v19)
  {
    v23 = v56;

    return;
  }

  v20 = v19;
  v53 = v7;
  v54 = v3;
  v55 = v2;
  v21 = [v19 automakerSettings];
  if (v21)
  {
    v22 = v21;
    CAFAutomakerSettings.allSettings.getter();
  }

  v24 = [v20 automakerSettings];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 settingsSections];

    if (v26)
    {
      sub_100005A50(0, &qword_1000EEBF8, CAFSettingsSection_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  CAFUISettingsCache.init(settings:sections:)();
  (*(v11 + 16))(v15, v17, v10);
  v27 = objc_allocWithZone(type metadata accessor for RadioSettingsViewController());
  v56 = v56;
  v28 = sub_10007A7C8(v56, v15);
  v29 = [v20 audioSettings];
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  if ((sub_100097554() & 1) == 0)
  {
    goto LABEL_17;
  }

  v31 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v32)
    {
      goto LABEL_15;
    }

LABEL_17:

LABEL_18:

    v35 = [v1 navigationController];
    if (v35)
    {
      v36 = v35;
      [v35 pushViewController:v28 animated:1];

LABEL_20:
      (*(v11 + 8))(v17, v10);
      return;
    }

    (*(v11 + 8))(v17, v10);

    return;
  }

  v52 = v28;
  v37 = _CocoaArrayWrapper.endIndex.getter();
  v28 = v52;

  if (v37)
  {
    goto LABEL_17;
  }

LABEL_15:
  v33 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  if (v33 >> 62)
  {
    v52 = v28;
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v52;

    if (v38)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v34)
    {
      goto LABEL_17;
    }
  }

  v39 = [v30 volumes];
  sub_100005A50(0, &qword_1000EEBF0, CAFVolume_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v28;

  v40 = CAFUITileViewController.createVolumeListItem(volumes:)();
  v28 = v52;

  if (!v40)
  {
    goto LABEL_17;
  }

  v51 = v40;
  v41 = dispatch thunk of CAFUIDataListItem.selectionAction.getter();
  v41();

  v43 = v54;
  v42 = v55;
  if ((*(v54 + 88))(v9, v55) == enum case for CAFUICellSelectionAction.push(_:))
  {

    (*(v43 + 96))(v9, v42);
    v44 = *v9;
    v45 = [v1 navigationController];
    if (v45)
    {
      v46 = v45;
      [v45 pushViewController:v44 animated:1];

      goto LABEL_20;
    }

    (*(v11 + 8))(v17, v10);
  }

  else
  {
    v47 = *(v43 + 8);
    v47(v9, v42);
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v48._object = 0x80000001000BCA80;
    v48._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v48);
    v49 = dispatch thunk of CAFUIDataListItem.selectionAction.getter();
    v50 = v53;
    v49();

    _print_unlocked<A, B>(_:_:)();
    v47(v50, v42);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_100098D08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100098DFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100098E54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098EA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100098EF0(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers] = v4;
  v2[OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites] = 0;
  v2[OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations] = 0;
  *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController] = 0;
  swift_unknownObjectWeakAssign();
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000B6BD0;
  v6 = objc_allocWithZone(type metadata accessor for RadioFavoritesViewController());
  v7 = a1;
  v8 = sub_100050C4C();

  *(v5 + 32) = v8;
  v9 = objc_allocWithZone(type metadata accessor for RadioStationListViewController());
  v10 = v7;
  v11 = sub_10001AAC8(v10, 0, 0);

  *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_pages] = v5;
  *(v5 + 40) = v11;
  if (*&v10[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager])
  {
    v12 = objc_allocWithZone(type metadata accessor for RadioSourcesButton());

    *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_sourcePickerButton] = sub_100003B38();
    v13 = [objc_opt_self() buttonWithType:0];
    *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_optionsButton] = v13;
    sub_10000368C(&unk_1000EEC40, &qword_1000BA4D8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000B5700;
    v15 = objc_opt_self();
    v16 = [v15 mainBundle];
    v39._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0x455449524F564146;
    v17._object = 0xE900000000000053;
    v18.value._countAndFlagsBits = 0x6F69646152;
    v18.value._object = 0xE500000000000000;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v39);

    v20 = String.init(format:_:)();
    v22 = v21;

    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = v20;
    *(v14 + 40) = v22;
    v23 = [v15 mainBundle];
    v40._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0x534E4F4954415453;
    v24._object = 0xE800000000000000;
    v25.value._countAndFlagsBits = 0x6F69646152;
    v25.value._object = 0xE500000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v40);

    v27 = String.init(format:_:)();
    v29 = v28;

    *(v14 + 88) = &type metadata for String;
    *(v14 + 64) = v27;
    *(v14 + 72) = v29;
    v30 = objc_allocWithZone(type metadata accessor for CAFUISegmentedControl());
    isa = Array._bridgeToObjectiveC()().super.isa;

    v32 = [v30 initWithItems:isa];

    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 _carSystemQuaternaryColor];
    [v34 setSelectedSegmentTintColor:v35];

    v36 = v34;
    v37 = String._bridgeToObjectiveC()();
    [v36 setAccessibilityIdentifier:v37];

    *&v2[OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl] = v36;
    v38.receiver = v2;
    v38.super_class = type metadata accessor for RadioRootViewController();
    objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_100099340()
{
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers) = v1;
  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) = 0;
  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations) = 0;
  *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100099428()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000994A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000994F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10009959C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100099670()
{
  v1 = sub_10000368C(&unk_1000EEEE0, &qword_1000B3CC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v26[-v3];
  v5 = sub_10000368C(&qword_1000EAFD8, &qword_1000B3CD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26[-v7];
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.borderedTinted()();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  v16 = objc_opt_self();
  v17 = [v16 clearColor];
  v18 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v18(v26, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIConfigurationColorTransformer.init(_:)();
  v19 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  UIButton.Configuration.imageColorTransformer.setter();
  v20 = [objc_opt_self() configurationWithPointSize:5 weight:12.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v21 = *&v0[OBJC_IVAR____TtC5MediaP33_6636E4DC41F6B5F8575FED6C528DF67125NowPlayingHighlightButton_image];
  UIButton.Configuration.image.setter();
  if ([v0 isFocused])
  {
    _UISolariumEnabled();
    v22 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v22(v26, 0);
    v23 = [v16 radio_carSystemFocusColor];
    v24 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v24(v26, 0);
  }

  UIButton.Configuration.contentInsets.setter();
  (*(v12 + 16))(v4, v15, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  UIButton.configuration.setter();
  return (*(v12 + 8))(v15, v11);
}

id sub_100099B4C()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
  }

  else
  {
    v4 = [objc_allocWithZone(CPUIModernButton) init];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v5];

    [v4 setImage:v6 forState:0];
    [v4 setAdjustsImageWhenDisabled:1];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100099C50()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
  }

  else
  {
    v4 = [objc_allocWithZone(CPUIModernButton) init];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v5];

    [v4 setImage:v6 forState:0];
    [v4 setAdjustsImageWhenDisabled:1];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100099D80()
{
  v0 = [objc_allocWithZone(CPUIModernButton) init];
  [v0 setEnabled:0];
  [v0 setShowButtonBackgroundShape:0];
  [v0 setPrefersWhiteInDefaultState:1];
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v2 setFont:v3];
  }

  return v0;
}

id sub_100099E68()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton);
  }

  else
  {
    v4 = [objc_allocWithZone(CPUIModernButton) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100099EFC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100099F5C()
{
  v0 = [objc_allocWithZone(CPUIModernButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode:2];
  }

  else
  {
    v3 = 0;
  }

  [v0 setImage:v3 forState:0];

  v4 = v0;
  v5 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v5];

  [v4 setAdjustsImageWhenDisabled:1];
  return v4;
}

id sub_10009A0BC(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for NowPlayingHighlightButton();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC5MediaP33_6636E4DC41F6B5F8575FED6C528DF67125NowPlayingHighlightButton_image] = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100099670();

  [v8 addTarget:a1 action:"showSoundSettings" forControlEvents:{64, v12.receiver, v12.super_class}];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v8];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

id sub_10009A274(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10009A2D8(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for NowPlayingHighlightButton();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC5MediaP33_6636E4DC41F6B5F8575FED6C528DF67125NowPlayingHighlightButton_image] = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100099670();

  [v8 addTarget:a1 action:"setArtistSongNotification" forControlEvents:{64, v12.receiver, v12.super_class}];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v8];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

void sub_10009A458()
{
  v1 = v0;
  v186 = sub_10000368C(&unk_1000EEF68, &unk_1000BA830);
  v185 = *(v186 - 8);
  v2 = *(v185 + 64);
  __chkstk_darwin(v186);
  v184 = &v140 - v3;
  v180 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  v179 = *(v180 - 8);
  v4 = *(v179 + 64);
  __chkstk_darwin(v180);
  v178 = &v140 - v5;
  v183 = sub_10000368C(&unk_1000EC5A8, &unk_1000B5A10);
  v182 = *(v183 - 8);
  v6 = *(v182 + 64);
  __chkstk_darwin(v183);
  v181 = &v140 - v7;
  v174 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v173 = *(v174 - 1);
  v8 = *(v173 + 64);
  __chkstk_darwin(v174);
  v172 = &v140 - v9;
  v177 = sub_10000368C(&unk_1000ED0B0, &unk_1000BA840);
  v176 = *(v177 - 8);
  v10 = *(v176 + 64);
  __chkstk_darwin(v177);
  v175 = &v140 - v11;
  v166 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v165 = *(v166 - 8);
  v12 = *(v165 + 64);
  __chkstk_darwin(v166);
  v163 = &v140 - v13;
  v168 = sub_10000368C(&unk_1000EBDA0, &unk_1000BA850);
  v167 = *(v168 - 1);
  v14 = *(v167 + 64);
  __chkstk_darwin(v168);
  v164 = &v140 - v15;
  v171 = sub_10000368C(&unk_1000EEF70, &unk_1000BA858);
  v170 = *(v171 - 8);
  v16 = *(v170 + 64);
  __chkstk_darwin(v171);
  v169 = &v140 - v17;
  v153 = sub_10000368C(&unk_1000EC8A0, &qword_1000B6110);
  v152 = *(v153 - 1);
  v18 = *(v152 + 64);
  __chkstk_darwin(v153);
  v151 = &v140 - v19;
  v156 = sub_10000368C(&unk_1000EEF80, &qword_1000B6118);
  v155 = *(v156 - 8);
  v20 = *(v155 + 64);
  __chkstk_darwin(v156);
  v154 = &v140 - v21;
  v147 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v146 = *(v147 - 8);
  v22 = *(v146 + 64);
  __chkstk_darwin(v147);
  v145 = &v140 - v23;
  v150 = sub_10000368C(&unk_1000EBDB0, &unk_1000B50F8);
  v149 = *(v150 - 8);
  v24 = *(v149 + 64);
  __chkstk_darwin(v150);
  v148 = &v140 - v25;
  v26 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v140 - v28;
  v30 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v194 = *(v30 - 8);
  v31 = *(v194 + 64);
  __chkstk_darwin(v30);
  v188 = &v140 - v32;
  v189 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v193 = *(v189 - 8);
  v33 = *(v193 + 64);
  __chkstk_darwin(v189);
  v187 = &v140 - v34;
  v142 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  v36 = Strong;
  v37 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);

  if (!v37)
  {
    goto LABEL_25;
  }

  v38 = objc_allocWithZone(type metadata accessor for RadioSourcesButton());

  v39 = sub_100003B38();
  [v39 setShowsMenuAsPrimaryAction:1];
  sub_100005A50(0, &unk_1000EEF90, UIMenu_ptr);
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000B4FC0;
  v41 = objc_opt_self();
  v42 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100099530;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100094288;
  aBlock[3] = &unk_1000E2E10;
  v43 = _Block_copy(aBlock);
  v202 = v37;
  v44 = v39;

  v45 = [v41 elementWithUncachedProvider:v43];
  _Block_release(v43);
  *(v40 + 32) = v45;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v204.value.super.isa = 0;
  v204.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, 0, v204, 0, 0xFFFFFFFFFFFFFFFFLL, v40, v139).super.super.isa;
  [v44 setMenu:isa];

  v48 = *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton];
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = v44;
  v141 = v44;

  swift_beginAccess();
  v162 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v49 = v188;
  Published.projectedValue.getter();
  swift_endAccess();
  v198 = objc_opt_self();
  v50 = [v198 mainRunLoop];
  aBlock[0] = v50;
  v200 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v51 = *(v200 - 8);
  v52 = *(v51 + 56);
  v195 = v51 + 56;
  v196 = v52;
  v52(v29, 1, 1, v200);
  v201 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  v192 = &protocol conformance descriptor for Published<A>.Publisher;
  v161 = sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
  v199 = sub_10001ADF4();
  v53 = v187;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v29, &unk_1000EC7E0, &unk_1000B5100);

  v54 = *(v194 + 8);
  v194 += 8;
  v160 = v54;
  v54(v49, v30);
  *(swift_allocObject() + 16) = v1;
  v197 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  v159 = sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0);
  v143 = v1;
  v55 = v1;
  v157 = v30;
  v56 = v29;
  v57 = v55;
  v58 = v189;
  Publisher<>.sink(receiveValue:)();

  v59 = *(v193 + 8);
  v193 += 8;
  v158 = v59;
  v59(v53, v58);
  v60 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  v61 = v145;
  Published.projectedValue.getter();
  swift_endAccess();
  v62 = [v198 mainRunLoop];
  aBlock[0] = v62;
  v63 = v56;
  v64 = v196;
  v196(v56, 1, 1, v200);
  sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0);
  v65 = v148;
  v66 = v147;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v63, &unk_1000EC7E0, &unk_1000B5100);

  (*(v146 + 8))(v61, v66);
  *(swift_allocObject() + 16) = v57;
  sub_100005870(&unk_1000EBE00, &unk_1000EBDB0, &unk_1000B50F8);
  v67 = v57;
  v68 = v150;
  Publisher<>.sink(receiveValue:)();

  (*(v149 + 8))(v65, v68);
  v190 = v57;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  v69 = v151;
  Published.projectedValue.getter();
  swift_endAccess();
  v70 = [v198 mainRunLoop];
  aBlock[0] = v70;
  v71 = v63;
  v144 = v63;
  v72 = v63;
  v73 = v200;
  v64(v72, 1, 1, v200);
  sub_100005870(&unk_1000EEFA0, &unk_1000EC8A0, &qword_1000B6110);
  v74 = v154;
  v75 = v153;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v71, &unk_1000EC7E0, &unk_1000B5100);

  (*(v152 + 8))(v69, v75);
  *(swift_allocObject() + 16) = v67;
  sub_100005870(&unk_1000EC8D0, &unk_1000EEF80, &qword_1000B6118);
  v153 = v67;
  v76 = v156;
  Publisher<>.sink(receiveValue:)();

  (*(v155 + 8))(v74, v76);
  v191 = v60;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  v77 = v163;
  Published.projectedValue.getter();
  swift_endAccess();
  v78 = v198;
  v79 = [v198 mainRunLoop];
  aBlock[0] = v79;
  v80 = v144;
  v196(v144, 1, 1, v73);
  sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0);
  v81 = v164;
  v82 = v166;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v80, &unk_1000EC7E0, &unk_1000B5100);

  (*(v165 + 8))(v77, v82);
  sub_100005870(&unk_1000EEFC0, &unk_1000EBDA0, &unk_1000BA850);
  v83 = v169;
  v84 = v168;
  Publisher.map<A>(_:)();
  (*(v167 + 8))(v81, v84);
  v85 = swift_allocObject();
  v86 = v153;
  *(v85 + 16) = v153;
  sub_100005870(&unk_1000EEFC8, &unk_1000EEF70, &unk_1000BA858);
  v168 = v86;
  v87 = v171;
  Publisher<>.sink(receiveValue:)();

  (*(v170 + 8))(v83, v87);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v88 = v172;
  Published.projectedValue.getter();
  swift_endAccess();
  v89 = [v78 mainRunLoop];
  aBlock[0] = v89;
  v90 = v196;
  v196(v80, 1, 1, v200);
  sub_100005870(&unk_1000EC8E0, &unk_1000EC890, &unk_1000B6100);
  v91 = v175;
  v92 = v174;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v80, &unk_1000EC7E0, &unk_1000B5100);

  (*(v173 + 8))(v88, v92);
  v93 = swift_allocObject();
  v94 = v168;
  *(v93 + 16) = v168;
  sub_100005870(&unk_1000EEFE0, &unk_1000ED0B0, &unk_1000BA840);
  v174 = v94;
  v95 = v177;
  Publisher<>.sink(receiveValue:)();

  (*(v176 + 8))(v91, v95);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  v96 = v178;
  Published.projectedValue.getter();
  swift_endAccess();
  v97 = [v198 mainRunLoop];
  aBlock[0] = v97;
  v98 = v80;
  v90(v80, 1, 1, v200);
  sub_100005870(&qword_1000EC910, &unk_1000ED120, &qword_1000B6CD0);
  v99 = v181;
  v100 = v180;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v80, &unk_1000EC7E0, &unk_1000B5100);

  (*(v179 + 8))(v96, v100);
  v101 = swift_allocObject();
  v102 = v174;
  *(v101 + 16) = v174;
  sub_100005870(&unk_1000ED160, &unk_1000EC5A8, &unk_1000B5A10);
  v103 = v102;
  v104 = v183;
  Publisher<>.sink(receiveValue:)();

  (*(v182 + 8))(v99, v104);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  v105 = v188;
  Published.projectedValue.getter();
  swift_endAccess();
  v106 = [v198 mainRunLoop];
  aBlock[0] = v106;
  v196(v98, 1, 1, v200);
  v107 = v187;
  v108 = v157;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v98, &unk_1000EC7E0, &unk_1000B5100);

  v109 = v108;
  v110 = v103;
  v160(v105, v109);
  v111 = v184;
  v112 = v189;
  Publisher.filter(_:)();
  v158(v107, v112);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&unk_1000EEFF0, &unk_1000EEF68, &unk_1000BA830);
  v113 = v186;
  Publisher<>.sink(receiveValue:)();

  (*(v185 + 8))(v111, v113);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v114 = [v103 view];
  if (!v114)
  {
    goto LABEL_23;
  }

  v115 = v114;
  [v114 bounds];
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v123 = v122;

  v205.origin.x = v117;
  v205.origin.y = v119;
  v205.size.width = v121;
  v205.size.height = v123;
  Height = CGRectGetHeight(v205);
  v125 = [objc_opt_self() sharedApplication];
  v126 = [v125 delegate];

  if (!v126)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  v128 = v202;
  v127 = aBlock[0];
  if (aBlock[0])
  {
    [aBlock[0] contentScaleFactor];
    v130 = v129;
  }

  else
  {
    v130 = 2.0;
  }

  v131 = Height * v130;
  if (COERCE__INT64(fabs(Height * v130)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v131 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v131 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v132 = v131;
  v133 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
  swift_beginAccess();
  *(v128 + v133) = v132;
  v134 = swift_unknownObjectWeakLoadStrong();
  if (v134 && (v135 = v134, v136 = [*(v134 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v135, v136) && (v137 = objc_msgSend(v136, "nowPlayingInformation"), v136, v137) && (v138 = objc_msgSend(v137, "nowPlaying"), v137, v138))
  {
    [v138 registerObserver:v110];
    if ([v138 playbackState] == 2)
    {
      sub_10009C234();
    }
  }

  else
  {
  }
}

id sub_10009C1AC(id *a1, char *a2)
{
  if (*a1)
  {
    v3 = *a1;
    if ([v3 playbackState] == 2)
    {
      sub_10009C234();

      goto LABEL_6;
    }
  }

  sub_10009C354();
LABEL_6:
  v4 = *&a2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork];
  *&a2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;

  return [a2 reloadData];
}

void sub_10009C234()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer;
  [*(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1000A90D4;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100031AE4;
  v7[3] = &unk_1000E2F28;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
}

void sub_10009C354()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer;
  [*&v0[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = objc_opt_self();
  [v3 begin];
  v4 = [v0 songDetailsView];
  v5 = [v4 titleView];

  v6 = [v5 layer];
  [v6 removeAllAnimations];

  [v3 commit];
  v7 = [v0 songDetailsView];
  v8 = [v7 titleView];

  [v8 setAlpha:1.0];
}

uint64_t sub_10009C49C@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  if (*a1 >> 62)
  {
    v3 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v3;
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a2 = result > 1;
  return result;
}

void sub_10009C4F8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_100099B4C();
  [v2 setEnabled:v1];

  v3 = sub_100099C50();
  [v3 setEnabled:v1];
}

void sub_10009C580()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];
    if (v2)
    {
      v3 = v2;
    }
  }
}

void sub_10009C62C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for RadioNowPlayingViewController();
  v8 = *a4;
  v9 = v13.receiver;
  objc_msgSendSuper2(&v13, v8, a3);
  v10 = [v9 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 navigationBar];

    [v12 setBarStyle:a5];
  }
}

void sub_10009C6EC()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for RadioNowPlayingViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  [v0 setDelegate:v0];
  [v0 setDataSource:v0];
  v1 = [v0 transportControlView];
  v2 = [v1 playPauseButton];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = [v0 transportControlView];
  v5 = String._bridgeToObjectiveC()();
  [v4 setPlayButtonImageName:v5];

  v6 = [v0 transportControlView];
  v7 = String._bridgeToObjectiveC()();
  [v6 setPauseButtonImageName:v7];

  v8 = [v0 transportControlView];
  v9 = [v8 leftButton];

  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  v11 = [v0 transportControlView];
  v12 = [v11 fastForwardButton];

  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
    [v12 setAccessibilityIdentifier:v13];

    v14 = [v0 songDetailsView];
    v15 = [v14 albumArtistLabelButton];

    [v15 setPrefersWhiteInDefaultState:1];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10009CA74()
{
  v1 = v0;
  v43 = _swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v4 = Strong;

    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v41)
      {
        v5 = [v41 identifier];

        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9 && (v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v11 = v9, , v11, v10))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v12 = [v41 identifier];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          if (sub_100010290())
          {
            sub_10009A09C();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v40 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        if (_UISolariumEnabled())
        {
          sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
          v44.value.super.super.isa = 0;
          v44.is_nil = 0;
          isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v44, v45).super.super.isa;
          [(objc_class *)isa setWidth:0.0];
          v18 = isa;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v38 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        if (v14)
        {
          if (qword_1000EAD00 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_100006928(v19, qword_1000F3BD0);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v22 = 136446466;
            v23 = sub_100043AF0(v6, v8, &v42);

            *(v22 + 4) = v23;
            *(v22 + 12) = 2082;
            sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
            v24 = Optional<A>.description.getter();
            v26 = v25;

            v27 = sub_100043AF0(v24, v26, &v42);

            *(v22 + 14) = v27;
            _os_log_impl(&_mh_execute_header, v20, v21, "Current source %{public}s differs from target %{public}s", v22, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = *(v28 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v30 = v28;

            if (v29)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v31 = [v41 mediaSourceSemanticType];

              if (v31 == 3)
              {
                v32 = swift_unknownObjectWeakLoadStrong();
                if (v32)
                {
                  v33 = v32;
                  v34 = [*(v32 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

                  if (v34)
                  {
                    v35 = [v34 nowPlayingInformation];

                    if (v35)
                    {
                      v36 = [v35 nowPlaying];

                      if (v36)
                      {
                        if ([v36 hasSetArtistSongNotification] && (objc_msgSend(v36, "setArtistSongNotificationDisabled") & 1) == 0)
                        {
                          sub_10009A254();
                          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            v39 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_10009D0E0(v1, &v43);
}

void sub_10009D0E0(char *a1, uint64_t *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton];
  if (v3)
  {
    v4 = a1;
    v5 = objc_allocWithZone(UIBarButtonItem);
    v6 = v3;
    v7 = [v5 initWithCustomView:v6];
    [v7 setSharesBackground:0];
    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    a1 = v4;
  }

  v9 = [a1 navigationItem];
  v10 = *a2;
  sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setRightBarButtonItems:isa];
}

id sub_10009D28C(void *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = a3;
  v7 = a1;
  a4();
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10009D5D4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (!v2)
    {
      return 0;
    }

    v3 = [v2 nowPlayingInformation];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 nowPlaying];

    if (!v4)
    {
      return 0;
    }

    if (sub_10009DCDC())
    {
LABEL_6:

      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v7 = Strong;

      if (v6)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v15)
        {
          v8 = [v15 mediaSourceSemanticType];
          if (v8 <= 8 && ((1 << v8) & 0x14F) != 0)
          {
            v9 = swift_unknownObjectWeakLoadStrong();
            if (!v9 || (v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v11 = v9, , v11, !v10))
            {

              return 1;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v12 = [v15 mediaSourceSemanticType];

            if (v12 != 3)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }
        }
      }
    }

    if (sub_10009DE14())
    {
      v13 = [v4 jumpBackwardDisabled];
    }

    else
    {
      if ([v4 hasPreviousItem] && (objc_msgSend(v4, "previousItemDisabled") & 1) == 0)
      {
LABEL_28:

        return 1;
      }

      if (![v4 hasBeginSeekBackward])
      {
        goto LABEL_6;
      }

      v13 = [v4 beginSeekBackwardDisabled];
    }

    v14 = v13;

    return v14 ^ 1;
  }

  return result;
}

uint64_t sub_10009D894()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v2)
    {
      v3 = [v2 nowPlayingInformation];

      if (v3)
      {
        v4 = [v3 nowPlaying];

        if (v4)
        {
          if ((sub_1000A5390() & 1) == 0)
          {
            goto LABEL_11;
          }

          if ([v4 hasStop] && (objc_msgSend(v4, "stopDisabled") & 1) == 0)
          {

            return 1;
          }

          if ([v4 hasPause])
          {
            v5 = [v4 pauseDisabled];

            if ((v5 & 1) == 0)
            {
              return 1;
            }
          }

          else
          {
LABEL_11:
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10009D9C8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (!v2)
    {
      return 0;
    }

    v3 = [v2 nowPlayingInformation];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 nowPlaying];

    if (!v4)
    {
      return 0;
    }

    if (sub_10009DCDC())
    {
LABEL_6:

      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v7 = Strong;

      if (v6)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v15)
        {
          v8 = [v15 mediaSourceSemanticType];
          if (v8 <= 8 && ((1 << v8) & 0x14F) != 0)
          {
            v9 = swift_unknownObjectWeakLoadStrong();
            if (!v9 || (v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v11 = v9, , v11, !v10))
            {

              return 1;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v12 = [v15 mediaSourceSemanticType];

            if (v12 != 3)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }
        }
      }
    }

    if (sub_10009DFEC())
    {
      v13 = [v4 jumpForwardDisabled];
    }

    else
    {
      if ([v4 hasNextItem] && (objc_msgSend(v4, "nextItemDisabled") & 1) == 0)
      {
LABEL_28:

        return 1;
      }

      if (![v4 hasBeginSeekForward])
      {
        goto LABEL_6;
      }

      v13 = [v4 beginSeekForwardDisabled];
    }

    v14 = v13;

    return v14 ^ 1;
  }

  return result;
}

uint64_t sub_10009DCDC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v2 = Strong;

  if (!v1)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10)
  {
    v3 = [v10 mediaSourceSemanticType];

    v4 = 0x146u >> v3;
    if (v3 >= 9)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
LABEL_6:
    v5 = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v4) = !v5 || (v6 = *(v5 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v7 = v5, , v7, !v6) || (v8 = NowPlayingObserver.isNowPlayingOnlySource.getter(), , (v8 & 1) == 0);
  }

  return v4 & 1;
}

uint64_t sub_10009DE14()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 nowPlayingInformation];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 nowPlaying];

  if (!v4)
  {
    return 0;
  }

  if (![v4 hasJumpBackward])
  {
    goto LABEL_16;
  }

  if (!sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f"))
  {
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v7 = Strong;

  if (!v6 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , !v10))
  {
LABEL_16:

    return 0;
  }

  v8 = [v10 mediaSourceSemanticType];

  return v8 == 4 || v8 == 7;
}

uint64_t sub_10009DFEC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 nowPlayingInformation];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 nowPlaying];

  if (!v4)
  {
    return 0;
  }

  if (![v4 hasJumpForward])
  {
    goto LABEL_16;
  }

  if (!sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f"))
  {
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v7 = Strong;

  if (!v6 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , !v10))
  {
LABEL_16:

    return 0;
  }

  v8 = [v10 mediaSourceSemanticType];

  return v8 == 4 || v8 == 7;
}

id sub_10009E1C4(SEL *a1, SEL *a2, uint64_t (*a3)(id *), const char *a4)
{
  v9 = v4;
  v10 = sub_10000368C(&qword_1000EEE48, &qword_1000BA540);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  if ([v9 *a1])
  {
    v17 = [v9 *a2];
    if (v17)
    {
      v18 = v17;
      sub_100005A50(0, &unk_1000EEE58, NSUnitDuration_ptr);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
      (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
    }

    else
    {
      v20 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
      (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    }

    sub_1000A8E50(v14, v16);
    v21 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v16, 1, v21) == 1)
    {
      sub_100007834(v16, &qword_1000EEE48, &qword_1000BA540);
    }

    else
    {
      Measurement.value.getter();
      v24 = v23;
      (*(v22 + 8))(v16, v21);
      if (v24 > 0.0)
      {
        v25 = [objc_allocWithZone(NSNumber) initWithDouble:v24];
        v26 = [objc_opt_self() knownJumpIntervals];
        sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v25;
        __chkstk_darwin(v28);
        *(&v36 - 2) = &v37;
        v29 = sub_10003E32C(a3, (&v36 - 4), v27);

        if (v29)
        {
          v30 = [v25 unsignedIntegerValue];

          return v30;
        }

        if (qword_1000EAD00 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100006928(v32, qword_1000F3BD0);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134349056;
          *(v35 + 4) = v24;
          _os_log_impl(&_mh_execute_header, v33, v34, a4, v35, 0xCu);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10009EBA0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v3 = result;

    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v10)
      {
        if ([v10 hasCurrentFrequency])
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong || (v5 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v6 = Strong, , v6, !v5))
          {
            v7 = sub_100099EDC();
            [v7 setEnabled:1];

            v8 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton);
            v9 = v8;
            return v8;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();
        }

        else
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10009ED3C(uint64_t result)
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

  result = sub_1000A2A28(result, v12, 1, v3, &qword_1000EEF48, &qword_1000BA818);
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

uint64_t sub_10009EE38(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000A2450(result, v11, 1, v3);
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

uint64_t sub_10009EF2C(uint64_t result)
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

  result = sub_1000A2838(result, v12, 1, v3);
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

  memcpy((v3 + 2 * v8 + 32), (v6 + 32), 2 * v2);

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

uint64_t sub_10009F060(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000A3720(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_10009F1F8(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006928(v8, qword_1000F3BD0);
    v12 = a2;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v9))
    {

      v11 = v12;
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f");

    _os_log_impl(&_mh_execute_header, oslog, v9, "Successfully sent jump back command with interval %lu!", v10, 0xCu);

LABEL_10:
    v11 = oslog;
LABEL_15:

    return;
  }

  swift_errorRetain();
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BD0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error jumping back: %{public}@", v4, 0xCu);
    sub_100007834(v5, &unk_1000EE230, &qword_1000BA550);

    goto LABEL_10;
  }
}

void sub_10009F4C4(uint64_t a1, const char *a2, const char *a3)
{
  if (!a1)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, a3, v12, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BD0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 0xCu);
    sub_100007834(v7, &unk_1000EE230, &qword_1000BA550);

LABEL_10:

    return;
  }
}

void sub_10009F720(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006928(v6, qword_1000F3BD0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
      sub_100007834(v10, &unk_1000EE230, &qword_1000BA550);
    }

    else
    {
    }

    *(a2 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction) = 0;
  }

  else
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006928(v13, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, a4, v15, 2u);
    }
  }
}

void sub_10009F98C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006928(v8, qword_1000F3BD0);
    v12 = a2;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v9))
    {

      v11 = v12;
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f");

    _os_log_impl(&_mh_execute_header, oslog, v9, "Successfully sent jump forward command with interval %lu!", v10, 0xCu);

LABEL_10:
    v11 = oslog;
LABEL_15:

    return;
  }

  swift_errorRetain();
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BD0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error jumping forward: %{public}@", v4, 0xCu);
    sub_100007834(v5, &unk_1000EE230, &qword_1000BA550);

    goto LABEL_10;
  }
}

void sub_10009FC58()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

  if (!v2)
  {
    return;
  }

  v3 = [v2 nowPlayingInformation];

  if (!v3)
  {
    return;
  }

  v17 = [v3 nowPlaying];

  if (!v17)
  {
    return;
  }

  if ([v17 hasStop] && (objc_msgSend(v17, "stopDisabled") & 1) == 0)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006928(v8, qword_1000F3BD0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Sending stop command.", v11, 2u);
    }

    v22 = sub_1000A1F8C;
    v23 = 0;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10009959C;
    v21 = &unk_1000E2D20;
    v12 = _Block_copy(&aBlock);
    [v17 stopWithCompletion:v12];
    goto LABEL_26;
  }

  if ([v17 hasPause] && (objc_msgSend(v17, "pauseDisabled") & 1) == 0)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006928(v13, qword_1000F3BD0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Sending pause command.", v16, 2u);
    }

    v22 = sub_1000A1FA0;
    v23 = 0;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10009959C;
    v21 = &unk_1000E2CF8;
    v12 = _Block_copy(&aBlock);
    [v17 pauseWithCompletion:v12];
LABEL_26:
    _Block_release(v12);

    return;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No stop nor pause command available!", v7, 2u);
  }
}

void sub_1000A00A4()
{
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006928(v0, qword_1000F3BD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempting to resume radio playback.", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v6)
    {
      v7 = [v6 nowPlayingInformation];

      if (v7)
      {
        v8 = [v7 nowPlaying];

        if (v8)
        {
          v9 = swift_unknownObjectWeakLoadStrong();
          if (v9)
          {
            v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v11 = v9;

            if (v10)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v12 = aBlock;
              if (aBlock)
              {
                v13 = swift_unknownObjectWeakLoadStrong();
                if (v13)
                {
                  v14 = *(v13 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                  v15 = v13;

                  if (v14)
                  {
                    swift_getKeyPath();
                    swift_getKeyPath();
                    static Published.subscript.getter();

                    v16 = aBlock;
                    v17 = Logger.logObject.getter();
                    v18 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v17, v18))
                    {
                      v19 = swift_slowAlloc();
                      *v19 = 0;
                      _os_log_impl(&_mh_execute_header, v17, v18, "Tuning to last known station to resume playback.", v19, 2u);
                    }

                    v20 = swift_unknownObjectWeakLoadStrong();
                    if (v20 && (v21 = v20, v22 = [*(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v21, v22) && (v23 = objc_msgSend(v22, "media"), v22, v23))
                    {
                      v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
                      swift_beginAccess();
                      v25 = *(v12 + v24);
                      v54 = sub_1000A1F50;
                      v55 = 0;
                      aBlock = _NSConcreteStackBlock;
                      v51 = 1107296256;
                      v52 = sub_10009959C;
                      v53 = &unk_1000E2D98;
                      v26 = _Block_copy(&aBlock);
                      v27 = v25;
                      [v23 tuneToMediaItem:v27 inSource:v16 completion:v26];

                      _Block_release(v26);
                    }

                    else
                    {
                    }

                    return;
                  }
                }
              }
            }
          }

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = *(v28 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v30 = v28;

            if (v29)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              if (aBlock)
              {
                if ([aBlock hasCurrentFrequency] && (objc_msgSend(aBlock, "currentFrequencyInvalid") & 1) == 0 && objc_msgSend(aBlock, "currentFrequency"))
                {
                  v31 = aBlock;
                  v32 = Logger.logObject.getter();
                  v33 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v32, v33))
                  {
                    v34 = swift_slowAlloc();
                    *v34 = 67240192;
                    *(v34 + 4) = [v31 currentFrequency];

                    _os_log_impl(&_mh_execute_header, v32, v33, "Tuning to last known frequency %{public}u to resume playback.", v34, 8u);
                  }

                  else
                  {

                    v32 = v31;
                  }

                  v42 = swift_unknownObjectWeakLoadStrong();
                  if (v42 && (v43 = v42, v44 = [*(v42 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v43, v44) && (v45 = objc_msgSend(v44, "media"), v44, v45))
                  {
                    v46 = [v31 currentFrequency];
                    v47 = [v31 identifier];
                    if (!v47)
                    {
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v47 = String._bridgeToObjectiveC()();
                    }

                    v54 = sub_1000A1F64;
                    v55 = 0;
                    aBlock = _NSConcreteStackBlock;
                    v51 = 1107296256;
                    v52 = sub_10009959C;
                    v53 = &unk_1000E2D70;
                    v48 = _Block_copy(&aBlock);
                    [v45 tuneToFrequency:v46 inSourceWithIdentifier:v47 completion:v48];

                    _Block_release(v48);
                  }

                  else
                  {
                  }

                  return;
                }
              }
            }
          }

          if ([v8 hasPlay] && (objc_msgSend(v8, "playDisabled") & 1) == 0)
          {
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&_mh_execute_header, v38, v39, "Sending play command...", v40, 2u);
            }

            v54 = sub_1000A1F78;
            v55 = 0;
            aBlock = _NSConcreteStackBlock;
            v51 = 1107296256;
            v52 = sub_10009959C;
            v53 = &unk_1000E2D48;
            v41 = _Block_copy(&aBlock);
            [v8 playWithCompletion:v41];

            _Block_release(v41);
          }

          else
          {
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v35, v36, "No available action to handle play button press!", v37, 2u);
            }
          }
        }
      }
    }
  }
}

void sub_1000A09B4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v4 = Strong;

    if (v3)
    {
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 frame];
        v8 = v7;

        type metadata accessor for MainActor();
        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = &protocol witness table for MainActor;
        v11 = v1;
        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        v13[2] = v12;
        v13[3] = &protocol witness table for MainActor;
        v13[4] = v11;
        Binding.init(get:set:)();
        v14 = [v11 view];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 window];

          if (v16 && (v17 = [v16 windowScene], v16, v17) && (v18 = objc_msgSend(v17, "focusSystem"), v17, v18))
          {

            v19 = 1;
          }

          else
          {
            v19 = 0;
          }

          type metadata accessor for NowPlayingObserver();
          sub_1000A8F64(&qword_1000EEE68, type metadata accessor for NowPlayingObserver);
          swift_retain_n();
          v20 = ObservedObject.init(wrappedValue:)();
          v22 = v21;
          v77 = 0;
          LODWORD(aBlock) = v8;
          type metadata accessor for CGSize(0);

          State.init(wrappedValue:)();
          v23 = v78;
          v24 = v79;
          LOBYTE(aBlock) = v19;
          State.init(wrappedValue:)();

          v25 = v78;
          v26 = *(&v78 + 1);
          v78 = v85;
          LOBYTE(v79) = v86;
          *(&v79 + 1) = aBlock;
          DWORD1(v79) = v8 >> 24;
          *(&v79 + 1) = sub_1000A2BA4;
          *&v80 = v3;
          BYTE8(v80) = 0;
          *(&v80 + 9) = v68[0];
          HIDWORD(v80) = *(v68 + 3);
          *&v81 = v20;
          *(&v81 + 1) = v22;
          v82 = v23;
          *&v83 = v24;
          BYTE8(v83) = v25;
          HIDWORD(v83) = *&v76[3];
          *(&v83 + 9) = *v76;
          v84 = v26;
          v73 = v23;
          v74 = v83;
          v75 = v26;
          aBlock = v85;
          v70 = v79;
          v71 = v80;
          v72 = v81;
          v27 = objc_allocWithZone(sub_10000368C(&qword_1000EEE70, &unk_1000BA558));
          sub_100013BE0(&v78, v68);
          v28 = UIHostingController.init(rootView:)();
          [v28 setModalPresentationStyle:5];
          [v28 setModalTransitionStyle:2];
          v29 = [v28 view];
          if (v29)
          {
            v30 = v29;
            v31 = [v11 view];
            if (v31)
            {
              v32 = v31;
              [v31 frame];
              v34 = v33;
              v36 = v35;
              v38 = v37;
              v40 = v39;

              [v30 setFrame:{v34, v36, v38, v40}];
              [v28 setOverrideUserInterfaceStyle:2];
              v41 = [v28 view];
              if (v41)
              {
                v42 = v41;
                v43 = objc_opt_self();
                v44 = [v43 clearColor];
                [v42 setBackgroundColor:v44];

                v45 = [v28 view];
                if (v45)
                {
                  v46 = v45;
                  v47 = [v45 layer];

                  v48 = [v43 blackColor];
                  v49 = [v48 CGColor];

                  [v47 setShadowColor:v49];
                  v50 = [v28 view];
                  if (v50)
                  {
                    v51 = v50;
                    v52 = [v50 layer];

                    [v52 setShadowOffset:{0.0, 1.0}];
                    v53 = [v28 view];
                    if (v53)
                    {
                      v54 = v53;
                      v55 = [v53 layer];

                      LODWORD(v56) = 1045220557;
                      [v55 setShadowOpacity:v56];

                      v57 = [v28 view];
                      if (v57)
                      {
                        v58 = v57;
                        v59 = [v57 layer];

                        [v59 setShadowRadius:16.0];
                        v60 = [v28 view];
                        if (v60)
                        {
                          v61 = v60;
                          v62 = [v60 layer];

                          [v62 setMasksToBounds:0];
                          v63 = *&v11[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController];
                          *&v11[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = v28;

                          v64 = swift_allocObject();
                          swift_unknownObjectWeakInit();
                          v65 = swift_allocObject();
                          *(v65 + 16) = v64;
                          *(v65 + 24) = v28;
                          *&v71 = sub_1000A2BEC;
                          *(&v71 + 1) = v65;
                          *&aBlock = _NSConcreteStackBlock;
                          *(&aBlock + 1) = 1107296256;
                          *&v70 = sub_100064D70;
                          *(&v70 + 1) = &unk_1000E2A50;
                          v66 = _Block_copy(&aBlock);
                          v67 = v28;

                          [v11 presentViewController:v67 animated:1 completion:v66];
                          _Block_release(v66);

                          sub_1000A2BF4(&v78);

                          return;
                        }

LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

void sub_1000A1144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a5;
  v9[4] = sub_1000A2C48;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100064D70;
  v9[3] = &unk_1000E2AA0;
  v7 = _Block_copy(v9);
  v8 = a5;

  [v8 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

void sub_1000A1224(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:Strong action:"hideDialer"];
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000B4FC0;
    v7 = objc_allocWithZone(NSNumber);
    v8 = v5;
    *(v6 + 32) = [v7 initWithInteger:7];
    sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setAllowedPressTypes:isa];

    v10 = [a2 view];
    if (v10)
    {
      v11 = v10;
      [v10 addGestureRecognizer:v8];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000A14FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v2)
    {
      v3 = [v2 nowPlayingInformation];

      if (v3)
      {
        v4 = [v3 nowPlaying];

        if (v4)
        {
          v6[4] = sub_1000A1638;
          v6[5] = 0;
          v6[0] = _NSConcreteStackBlock;
          v6[1] = 1107296256;
          v6[2] = sub_10009959C;
          v6[3] = &unk_1000E2988;
          v5 = _Block_copy(v6);
          [v4 setArtistSongNotificationWithCompletion:v5];
          _Block_release(v5);
        }
      }
    }
  }
}

id sub_1000A1694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers] = v7;
  v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cafNowPlayingManager] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___settingsButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___artistSongNotificationButton] = 0;
  swift_unknownObjectWeakInit();
  v8 = String._bridgeToObjectiveC()();

  v11.receiver = v4;
  v11.super_class = type metadata accessor for RadioNowPlayingViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithBundleIdentifier:dataSource:delegate:", v8, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id sub_1000A18A0(uint64_t a1, uint64_t a2, void *a3)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers] = v6;
  v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cafNowPlayingManager] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___settingsButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___artistSongNotificationButton] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for RadioNowPlayingViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000A1A8C(void *a1)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers] = v3;
  v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cafNowPlayingManager] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___settingsButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___artistSongNotificationButton] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RadioNowPlayingViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000A1C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000A1DA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = sub_1000A90DC;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100064D70;
    aBlock[3] = &unk_1000E2F78;
    v4 = _Block_copy(aBlock);
    v5 = v1;

    [v2 animateWithDuration:28 delay:v4 options:0 animations:1.0 completion:0.0];
    _Block_release(v4);
  }
}

void sub_1000A1EC8(void *a1)
{
  v1 = [a1 songDetailsView];
  v2 = [v1 titleView];

  [v2 setAlpha:0.3];
}

uint64_t sub_1000A2060(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000368C(&qword_1000EEE48, &qword_1000BA540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  if (a4)
  {
    sub_100005A50(0, &unk_1000EEE58, NSUnitDuration_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  [a1 reloadData];
  return sub_100007834(v9, &qword_1000EEE48, &qword_1000BA540);
}

uint64_t sub_1000A2220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000A2238(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEFF8, &qword_1000BA8B0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000A2344(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEF40, &qword_1000BA810);
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

char *sub_1000A2450(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EC558, &unk_1000BA800);
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

size_t sub_1000A255C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000368C(&unk_1000ED0E0, &unk_1000B6C50);
  v10 = *(type metadata accessor for IndexPath() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IndexPath() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000A2734(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EF008, &unk_1000BA8C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000A2838(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EF000, &qword_1000BA8B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000A2934(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEEF0, &qword_1000BA7D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000A2A28(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000368C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_1000A2B14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2B58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A2BAC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000A2C48()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController);
  *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController) = 0;
}

char *sub_1000A2C70(char *a1, int64_t a2, char a3)
{
  result = sub_1000A2DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2C90(char *a1, int64_t a2, char a3)
{
  result = sub_1000A2EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000A2CB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1000A320C(a1, a2, a3, *v3, &unk_1000ED0E0, &unk_1000B6C50, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

char *sub_1000A2CF4(char *a1, int64_t a2, char a3)
{
  result = sub_1000A2FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2D14(char *a1, int64_t a2, char a3)
{
  result = sub_1000A30FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000A2D34(size_t a1, int64_t a2, char a3)
{
  result = sub_1000A320C(a1, a2, a3, *v3, &qword_1000EEF60, &qword_1000BA828, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1000A2D78(char *a1, int64_t a2, char a3)
{
  result = sub_1000A33E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000A2D98(void *a1, int64_t a2, char a3)
{
  result = sub_1000A34E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2DB8(char *a1, int64_t a2, char a3)
{
  result = sub_1000A3618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEFF8, &qword_1000BA8B0);
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

char *sub_1000A2EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEF40, &qword_1000BA810);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000A2FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EC558, &unk_1000BA800);
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

char *sub_1000A30FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&unk_1000EEC40, &qword_1000BA4D8);
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

size_t sub_1000A320C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000368C(a5, a6);
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

char *sub_1000A33E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EF000, &qword_1000BA8B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_1000A34E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000368C(&qword_1000EEEF8, &qword_1000BA7E0);
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
    sub_10000368C(&unk_1000EEF00, &qword_1000BA7E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A3618(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&unk_1000EEED0, &qword_1000B5938);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1000A3720(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
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
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000A37C0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEF38, &qword_1000EEF30, &qword_1000B68E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
            v9 = sub_1000A4034(v13, i, a3);
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
        type metadata accessor for TerrestrialRadioStation();
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

uint64_t sub_1000A3964(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEEC8, &qword_1000EEEC0, &unk_1000BA730);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEEC0, &unk_1000BA730);
            v9 = sub_1000A40BC(v13, i, a3);
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
        sub_100005A50(0, &qword_1000ED650, UIView_ptr);
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

uint64_t sub_1000A3B18(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEF58, &qword_1000EEF50, &qword_1000BA820);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEF50, &qword_1000BA820);
            v9 = sub_1000A413C(v13, i, a3);
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
        sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
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

uint64_t sub_1000A3CCC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEF18, &qword_1000EEF10, &unk_1000BA7F0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEF10, &unk_1000BA7F0);
            v9 = sub_1000A40BC(v13, i, a3);
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
        sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
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

uint64_t sub_1000A3E80(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEE98, &qword_1000EEE90, &qword_1000BA6E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEE90, &qword_1000BA6E0);
            v9 = sub_1000A40BC(v13, i, a3);
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
        sub_100005A50(0, &qword_1000EEE78, UIButton_ptr);
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

uint64_t (*sub_1000A4034(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1000A40B4;
  }

  __break(1u);
  return result;
}

void (*sub_1000A40BC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000A9198;
  }

  __break(1u);
  return result;
}

void (*sub_1000A413C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000A41BC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A41C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1000A4228()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A48FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v2 = Strong;

    if (v1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v17)
      {
        v3 = [v17 mediaSourceSemanticType];

        if (v3 == 5)
        {
          return 0;
        }
      }
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [*(v4 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v6)
    {
      v7 = [v6 nowPlayingInformation];

      if (v7)
      {
        v8 = [v7 nowPlaying];

        if (v8)
        {
          if ([v8 hasPlaybackState])
          {
            v9 = [v8 playbackState];

            if (v9 == 2)
            {
              return 0;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = *(result + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v12 = result;

  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v17)
    {
      v13 = [v17 titles];

      if (v13)
      {
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v14[2] >= 2uLL)
        {
          v16 = v14[6];
          v15 = v14[7];

          return v16;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1000A4B98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v2 = Strong;

  if (!v1)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v23 || (v3 = [v23 mediaSourceSemanticType], v23, v3 != 5))
  {
LABEL_5:
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [*(v4 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (v6)
      {
        v7 = [v6 nowPlayingInformation];

        if (v7)
        {
          v8 = [v7 nowPlaying];

          if (v8)
          {
            if ([v8 hasPlaybackState] && objc_msgSend(v8, "playbackState") == 2)
            {
              v9 = swift_unknownObjectWeakLoadStrong();
              if (v9)
              {
                v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                v11 = v9;

                if (v10)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  if (v23)
                  {
                    v12 = [v23 titles];

                    if (v12)
                    {
                      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                      if (v13[2] >= 2uLL)
                      {
                        v15 = v13[6];
                        v14 = v13[7];

                        return v15;
                      }
                    }
                  }
                }
              }

              return 0;
            }
          }
        }
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v17 = *(result + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v18 = result;

    if (v17)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v23)
      {
        v19 = [v23 titles];

        if (v19)
        {
          v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v20[2] >= 3uLL)
          {
            v22 = v20[8];
            v21 = v20[9];

            return v22;
          }
        }
      }
    }
  }

  return 0;
}

id sub_1000A4F20()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork);
  if (v2)
  {
    v3 = qword_1000EAD00;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3BD0);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35[0] = v10;
      *v9 = 136446210;
      v11 = sub_10007DDA8(v10);
      v13 = sub_100043AF0(v11, v12, v35);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Reusing cached artwork: %{public}s", v9, 0xCu);
      sub_100006960(v10);
    }

    return v2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v17 = Strong;

    if (v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v18 = v35[0];
      if (v35[0])
      {
        v19 = [v35[0] mediaSourceSemanticType];
        if (v19 != 3)
        {
          if (v19 == 5)
          {

            return 0;
          }

          goto LABEL_28;
        }

        v20 = swift_unknownObjectWeakLoadStrong();
        if (!v20)
        {
          goto LABEL_28;
        }

        v21 = *(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
        v22 = v20;

        if (!v21)
        {
          goto LABEL_28;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v23 = [v35[0] artworkType];

        if (v23)
        {
LABEL_28:

          goto LABEL_29;
        }

        v24 = swift_unknownObjectWeakLoadStrong();
        if (v24 && (v25 = *(v24 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v26 = v24, , v26, v25))
        {
          v27 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
          swift_beginAccess();
          v28 = *(v25 + v27);

          v29 = v28;
        }

        else
        {
          v29 = 500.0;
        }

        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          v31 = *(v30 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v32 = v30;

          if (!v31)
          {
LABEL_25:

LABEL_27:
            v18 = *(v0 + v1);
            *(v0 + v1) = v31;
            goto LABEL_28;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v36)
          {
            v31 = sub_10007E3C8(v29, v29);

            goto LABEL_25;
          }
        }

        v31 = 0;
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
    return 0;
  }

  v2 = *(v33 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v34 = v33;

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v36;
  }

  return v2;
}

uint64_t sub_1000A5390()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v2 = result;

    if (v1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v9 == 1))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

        if (v5)
        {
          v6 = [v5 nowPlayingInformation];

          if (v6)
          {
            v7 = [v6 nowPlaying];

            if (v7)
            {
              if ([v7 hasPlaybackState])
              {
                v8 = [v7 playbackState];

                return v8 != 0;
              }
            }
          }
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A5528()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 6;
  }

  v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v2 = Strong;

  if (!v1)
  {
    return 6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v5)
  {
    return 6;
  }

  v3 = [v5 mediaSourceSemanticType];

  if (v3 <= 7)
  {
    return qword_1000BA8D0[v3];
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1000A5614()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v2)
    {
      v3 = [v2 nowPlayingInformation];

      if (v3)
      {
        v4 = [v3 nowPlaying];

        if (v4)
        {
          if ([v4 hasAudioContentBadge])
          {
            v5 = [v4 audioContentBadge];

            if (v5 == 2)
            {
              return 5;
            }

            else
            {
              return 4 * (v5 == 1);
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1000A571C()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v92 - v8;
  __chkstk_darwin(v7);
  v11 = &v92 - v10;
  v12 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v15)
    {
      v16 = [v15 nowPlayingInformation];

      if (v16)
      {
        v17 = [v16 nowPlaying];

        if (v17)
        {
          v18 = swift_unknownObjectWeakLoadStrong();
          if (!v18)
          {
            goto LABEL_21;
          }

          v19 = *(v18 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v20 = v18;

          if (!v19)
          {
            goto LABEL_21;
          }

          v102 = v2;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v21 = v106;
          if (!v106)
          {
            goto LABEL_21;
          }

          v22 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v23 = *(v21 + v22);

          v24 = [v23 mediaItemType];

          if (!v24)
          {
            goto LABEL_21;
          }

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          KeyPath = v26;

          v28 = HIBYTE(KeyPath) & 0xF;
          if ((KeyPath & 0x2000000000000000) == 0)
          {
            v28 = v25 & 0xFFFFFFFFFFFFLL;
          }

          if (!v28 || [v17 hasAudioContentBadge] && objc_msgSend(v17, "audioContentBadge"))
          {

            return;
          }

          v29 = String.lowercased()();
          if (v29._countAndFlagsBits == 0x73756C70626164 && v29._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            if ([v17 hasPlaybackState] && objc_msgSend(v17, "playbackState") == 2)
            {

LABEL_21:

              return;
            }

            v1 = String._bridgeToObjectiveC()();
            v11 = [objc_opt_self() _systemImageNamed:v1];

            if (v11)
            {

              v30 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
              v31 = [objc_opt_self() configurationWithFont:v30];

              v32 = [v11 imageWithSymbolConfiguration:v31];
              goto LABEL_59;
            }

LABEL_100:
            __break(1u);
LABEL_101:
            v98 = _CocoaArrayWrapper.endIndex.getter();
            if (!v98)
            {
              goto LABEL_102;
            }

LABEL_45:
            v44 = [v17 hasPlaybackState];
            if (v44)
            {
              v44 = [v17 playbackState];
            }

            if (((v94 + v44) >> 8))
            {
              __break(1u);
            }

            else
            {
              v92 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView;
              v93 = (v94 + v44);
              v45 = *(v95 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView);
              if (!v45)
              {
                goto LABEL_72;
              }

              objc_opt_self();
              v46 = swift_dynamicCastObjCClass();
              if (!v46)
              {
                goto LABEL_72;
              }

              v47 = v46;
              KeyPath = v45;
              v48 = [v47 tag];
              if (v48 != v93)
              {

                goto LABEL_72;
              }

              v49 = [v47 arrangedSubviews];
              sub_100005A50(0, &qword_1000ED650, UIView_ptr);
              v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v50 >> 62))
              {
                v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_53;
              }
            }

            v51 = _CocoaArrayWrapper.endIndex.getter();
LABEL_53:

            if (v12)
            {
              v52 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v52 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (__OFADD__(v52, 1))
            {
              __break(1u);
              return;
            }

            if (v51 == v52 + 1)
            {

              v67 = *(v95 + v92);
LABEL_66:
              v68 = v67;
              return;
            }

LABEL_72:
            KeyPath = 0;
            v96 = v100 & 0xFFFFFFFFFFFFFF8;
            v97 = v100 & 0xC000000000000001;
            v101 = _swiftEmptyArrayStorage;
            do
            {
              if (v97)
              {
                v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (KeyPath >= *(v96 + 16))
                {
                  goto LABEL_99;
                }

                v69 = *(v100 + 8 * KeyPath + 32);
              }

              v70 = v69;
              v12 = KeyPath + 1;
              if (__OFADD__(KeyPath, 1))
              {
                __break(1u);
LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              v71 = [v69 multicast];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_1000A2A28(0, *(v101 + 2) + 1, 1, v101, &qword_1000ECD48, &qword_1000BA740);
              }

              v73 = *(v101 + 2);
              v72 = *(v101 + 3);
              if (v73 >= v72 >> 1)
              {
                v101 = sub_1000A2A28((v72 > 1), v73 + 1, 1, v101, &qword_1000ECD48, &qword_1000BA740);
              }

              v74 = v101;
              *(v101 + 2) = v73 + 1;
              v74[v73 + 32] = v71;
              ++KeyPath;
            }

            while (v12 != v98);

            v75 = *(v101 + 2);
            if (v75)
            {
              v104 = _swiftEmptyArrayStorage;
              sub_1000A2DB8(0, v75, 0);
              v76 = v104;
              v77 = v104[2];
              v78 = 32;
              do
              {
                v79 = v101[v78];
                v104 = v76;
                v80 = v76[3];
                if (v77 >= v80 >> 1)
                {
                  v100 = v79;
                  sub_1000A2DB8((v80 > 1), v77 + 1, 1);
                  v79 = v100;
                  v76 = v104;
                }

                v76[2] = v77 + 1;
                v76[v77 + 4] = v79;
                ++v78;
                ++v77;
                --v75;
              }

              while (v75);
              v81 = v76;
            }

            else
            {

              v81 = _swiftEmptyArrayStorage;
            }

            sub_1000A8F64(&qword_1000EEEA8, &type metadata accessor for IndexSet);
            dispatch thunk of SetAlgebra.init()();
            v82 = v81[2];
            if (v82)
            {
              v83 = v81 + 4;
              do
              {
                v84 = *v83++;
                v103 = v84;
                dispatch thunk of SetAlgebra.insert(_:)();
                --v82;
              }

              while (v82);
            }

            v85 = v102;
            (*(v102 + 32))(v11, v9, v1);
            (*(v85 + 16))(v6, v11, v1);
            v86 = ([v17 hasPlaybackState] & 1) == 0 || objc_msgSend(v17, "playbackState") == 1;
            sub_100005A50(0, &unk_1000EEEB0, UIStackView_ptr);
            sub_10007E74C(v6, v94, v86);
            v87 = v95;
            v88 = v92;
            v89 = *(v95 + v92);
            *(v95 + v92) = v90;
            v91 = v90;

            [v91 setTag:v93];

            (*(v102 + 8))(v11, v1);
            v67 = *(v87 + v88);
            goto LABEL_66;
          }

          if (v29._countAndFlagsBits == 6447460 && v29._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if ([v17 hasPlaybackState] && objc_msgSend(v17, "playbackState") == 2)
            {
              goto LABEL_21;
            }

            v33 = String._bridgeToObjectiveC()();
            v32 = [objc_opt_self() imageNamed:v33];

            goto LABEL_59;
          }

          if (v29._countAndFlagsBits == 25704 && v29._object == 0xE200000000000000)
          {
          }

          else
          {
            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v34 & 1) == 0)
            {

              v53 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView);
              *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView) = 0;

              return;
            }
          }

          v35 = swift_unknownObjectWeakLoadStrong();
          if (v35)
          {
            v36 = *(v35 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v37 = v35;

            if (v36)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v38 = v105;
              if (v105)
              {
                v39 = swift_unknownObjectWeakLoadStrong();
                if (v39)
                {
                  v99 = v38;
                  v95 = v0;
                  v40 = *(v39 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                  v41 = v39;

                  if (!v40 || (swift_getKeyPath(), KeyPath = swift_getKeyPath(), static Published.subscript.getter(), , , , (v42 = v105) == 0))
                  {

LABEL_103:
                    v32 = 0;
                    v0 = v95;
LABEL_59:
                    v54 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView;
                    v55 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView);
                    if (v55 && (objc_opt_self(), (v56 = swift_dynamicCastObjCClass()) != 0))
                    {
                      if (v32)
                      {
                        v57 = v56;
                        v58 = v55;
                        v59 = [v32 imageWithRenderingMode:2];
                        [v57 setImage:v59];
                      }
                    }

                    else if (v32)
                    {
                      v60 = [v32 imageWithRenderingMode:2];
                      v61 = [objc_allocWithZone(UIImageView) initWithImage:v60];

                      v62 = v61;
                      [v62 setAlpha:0.4];
                      v63 = [v62 layer];
                      v64 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
                      [v63 setCompositingFilter:v64];

                      v65 = [v62 layer];
                      [v65 setAllowsGroupBlending:0];

                      v66 = [objc_opt_self() labelColor];
                      [v62 setTintColor:v66];

                      v17 = *(v0 + v54);
                      *(v0 + v54) = v62;
                    }

                    v67 = *(v0 + v54);
                    goto LABEL_66;
                  }

                  v100 = CAFMediaSource.currentMulticasts.getter();

                  v43 = &v99[OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast];
                  swift_beginAccess();
                  if ((v43[1] & 1) == 0)
                  {
                    v94 = *v43;
                    if (v94)
                    {
                      v12 = v100 >> 62;
                      if (v100 >> 62)
                      {
                        goto LABEL_101;
                      }

                      v98 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v98)
                      {
                        goto LABEL_45;
                      }
                    }
                  }

LABEL_102:

                  goto LABEL_103;
                }
              }
            }
          }

          v32 = 0;
          goto LABEL_59;
        }
      }
    }
  }
}

uint64_t sub_1000A6540(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v4 = Strong;

  if (!v3)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14)
  {
  }

  else
  {
LABEL_5:
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return v5 & 1;
    }

    v6 = *(v5 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v7 = v5;

    if (!v6)
    {
      goto LABEL_16;
    }

    v8 = NowPlayingObserver.isNowPlayingOnlySource.getter();

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v11 = v9;

    if (v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v14)
      {
        v12 = [v14 mediaSourceSemanticType];

        if (v12 == 5)
        {
          goto LABEL_16;
        }
      }
    }
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      LOBYTE(v5) = sub_10009D9C8();
      return v5 & 1;
    }

    if (!a1)
    {
      LOBYTE(v5) = sub_10009D5D4();
      return v5 & 1;
    }

LABEL_16:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  if (sub_1000A5390())
  {
    LOBYTE(v5) = sub_10009D894();
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

uint64_t sub_1000A6744(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v7)
    {
      v8 = [v7 nowPlayingInformation];

      if (v8)
      {
        v9 = [v8 nowPlaying];

        if (v9)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          if (!v10)
          {
            goto LABEL_11;
          }

          v11 = *(v10 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v12 = v10;

          if (!v11)
          {
            goto LABEL_11;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v44)
          {
          }

          else
          {
LABEL_11:
            v15 = swift_unknownObjectWeakLoadStrong();
            if (!v15)
            {
              goto LABEL_27;
            }

            v16 = *(v15 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v17 = v15;

            if (!v16)
            {
              goto LABEL_27;
            }

            v18 = NowPlayingObserver.isNowPlayingOnlySource.getter();

            if ((v18 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          switch(a1)
          {
            case 2:
              v27 = [v2 transportControlView];
              v28 = String._bridgeToObjectiveC()();
              [v27 setPlayButtonImageName:v28];

              if (![v9 hasStop] || (objc_msgSend(v9, "stopDisabled")) && objc_msgSend(v9, "hasPause"))
              {
                [v9 pauseDisabled];
              }

              v35 = [v2 transportControlView];
              v36 = String._bridgeToObjectiveC()();
              [v35 setPauseButtonImageName:v36];

              if ((sub_1000A5390() & 1) == 0)
              {
                goto LABEL_48;
              }

              v13 = sub_10009D894();
LABEL_28:

              return v13 & 1;
            case 1:
              v26 = v2;
              if ((sub_10009DCDC() & 1) == 0)
              {
                if (sub_10009DFEC() & 1) == 0 || ([v9 jumpForwardDisabled])
                {
                  v29 = swift_unknownObjectWeakLoadStrong();
                  if (v29)
                  {
                    v30 = *(v29 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                    v31 = v29;

                    if (v30)
                    {
                      swift_getKeyPath();
                      swift_getKeyPath();
                      static Published.subscript.getter();

                      if (v44)
                      {
                        v32 = [v26 traitCollection];
                        v33 = [v44 mediaSourceSemanticType];
                        if (v33 == 5 || v33 == 3)
                        {
                          v34 = CPUIImageForTransportButton();
                        }

                        else
                        {
                          v40 = String._bridgeToObjectiveC()();
                          v34 = _CPUIGlyphFactoryWithTraitCollection();
                        }

                        v41 = v34;
                        if (!v34)
                        {
                          v25 = 0;
LABEL_56:
                          *a2 = v25;

                          v13 = 1;
                          v9 = v25;
                          goto LABEL_28;
                        }

                        v25 = v34;
LABEL_55:
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        goto LABEL_56;
                      }
                    }
                  }

LABEL_48:
                  v13 = 1;
                  goto LABEL_28;
                }

                sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f");
                dispatch thunk of CustomStringConvertible.description.getter();
                v37 = String._bridgeToObjectiveC()();

                v38 = [v26 traitCollection];
LABEL_46:
                v25 = CPUIImageForTransportButton();

                if (v25)
                {
                  v39 = v25;
                  goto LABEL_55;
                }

                goto LABEL_48;
              }

              break;
            case 0:
              v19 = v2;
              if ((sub_10009DCDC() & 1) == 0)
              {
                if (sub_10009DE14() & 1) == 0 || ([v9 jumpBackwardDisabled])
                {
                  v20 = swift_unknownObjectWeakLoadStrong();
                  if (v20)
                  {
                    v21 = *(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                    v22 = v20;

                    if (v21)
                    {
                      swift_getKeyPath();
                      swift_getKeyPath();
                      static Published.subscript.getter();

                      if (v44)
                      {
                        v23 = [v19 traitCollection];
                        v24 = [v44 mediaSourceSemanticType];
                        if (v24 == 5 || v24 == 3)
                        {
                          v25 = CPUIImageForTransportButton();
                        }

                        else
                        {
                          v42 = String._bridgeToObjectiveC()();
                          v25 = _CPUIGlyphFactoryWithTraitCollection();
                        }

                        v43 = v25;
                        if (!v25)
                        {
                          goto LABEL_56;
                        }

                        goto LABEL_55;
                      }
                    }
                  }

                  goto LABEL_48;
                }

                sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f");
                dispatch thunk of CustomStringConvertible.description.getter();
                v37 = String._bridgeToObjectiveC()();

                v38 = [v19 traitCollection];
                goto LABEL_46;
              }

              break;
          }

LABEL_27:
          v13 = 0;
          goto LABEL_28;
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1000A6EB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus), v1, v3 = [v2 currentSession], v2, !v3))
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006928(v13, qword_1000F3BD0);
    v3 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v3, v14, "No session available!", v15, 2u);
    }

    goto LABEL_13;
  }

  v4 = [v3 configuration];
  v5 = [v4 nowPlayingAlbumArtMode];

  if (v5 == 2)
  {
LABEL_13:
    v12 = 1;
    goto LABEL_14;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006928(v6, qword_1000F3BD0);
  v3 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    v10 = [v3 configuration];
    v11 = [v10 nowPlayingAlbumArtMode];

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Album artwork is disallowed: %{public}ld", v9, 0xCu);
  }

  else
  {
  }

  v12 = 0;
LABEL_14:

  return v12;
}

uint64_t sub_1000A713C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);

    v3 = [v2 currentSession];
    if (v3)
    {
      v4 = [v3 configuration];

      v5 = [v4 rightHandDrive];
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000A71F4()
{
  v1 = type metadata accessor for CAFMediaSource.SeekDirection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v8 = Strong;

    if (v7)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v9 = v24;
      if (v24)
      {
        sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
        v10 = v0;
        v11 = sub_100099B4C();
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          v13 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
LABEL_8:
          (*(v2 + 104))(v5, *v13, v1);
          CAFMediaSource.seek(direction:completion:)();

          (*(v2 + 8))(v5, v1);
          return;
        }

        v14 = sub_100099C50();
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          v13 = &enum case for CAFMediaSource.SeekDirection.next(_:);
          goto LABEL_8;
        }

        v16 = sub_100099EDC();
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          sub_1000A09B4();
        }

        else
        {
          v18 = sub_100099E68();
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = *(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
              v22 = v20;

              if (v21)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                if (v24)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  TerrestrialRadioStation.setFavorite(_:)((v24 & 1) == 0);
                  [v10 reloadData];
                }
              }
            }
          }
        }
      }
    }
  }
}

void *sub_1000A7564()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v4 = Strong;

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = _swiftEmptyArrayStorage;
  if (v73)
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6 && (v7 = *(v6 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v8 = v6, , v8, v7))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v73 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v9 > 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_100099B4C();
    [v11 setEnabled:v10];

    v12 = sub_100099C50();
    [v12 setEnabled:v10];

    v13 = [v73 mediaSourceSemanticType];
    if (v13 > 5)
    {
      if (v13 != 6 && v13 != 8)
      {
        goto LABEL_48;
      }

      v29 = sub_10009E7A4();
      if (v29)
      {
        v30 = v29;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v68 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v31 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v66 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = sub_100099D60();
      v33 = [objc_opt_self() mainBundle];
      v75._object = 0xE000000000000000;
      v34._countAndFlagsBits = 0x534E4F4954415453;
      v35.value._countAndFlagsBits = 0x6F69646152;
      v34._object = 0xE800000000000000;
      v35.value._object = 0xE500000000000000;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v75._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v75);

      String.init(format:_:)();

      v37 = String._bridgeToObjectiveC()();

      [v32 setTitle:v37 forState:0];

      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000B6BD0;
      v39 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton);
      *(inited + 32) = v39;
      v40 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
      *(inited + 40) = v40;
      v41 = v39;
      v42 = v40;
      sub_10009F060(inited, sub_1000A3E80);
      if ([v73 mediaSourceSemanticType] != 8)
      {
        goto LABEL_48;
      }
    }

    else if ((v13 - 1) >= 2)
    {
      if (v13 != 3)
      {
LABEL_48:

        return _swiftEmptyArrayStorage;
      }

      v43 = sub_10009E7A4();
      if (v43)
      {
        v44 = v43;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v71 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v45 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v69 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = swift_unknownObjectWeakLoadStrong();
      if (v46)
      {
        v47 = *(v46 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
        v48 = v46;

        if (v47)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v49 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
          swift_beginAccess();
          v50 = *(v73 + v49);

          if (v50)
          {
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1000B4760;
            v52 = dispatch thunk of CustomStringConvertible.description.getter();
            v54 = v53;
            *(v51 + 56) = &type metadata for String;
            *(v51 + 64) = sub_10002BE6C();
            *(v51 + 32) = v52;
            *(v51 + 40) = v54;
            v55 = [objc_opt_self() mainBundle];
            v76._object = 0xE000000000000000;
            v56._countAndFlagsBits = 0x4E4148435F4D5853;
            v56._object = 0xEE0040255F4C454ELL;
            v57.value._countAndFlagsBits = 0x6F69646152;
            v57.value._object = 0xE500000000000000;
            v58._countAndFlagsBits = 0;
            v58._object = 0xE000000000000000;
            v76._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v76);

            String.init(format:_:)();

            v59 = sub_100099D60();
            v60 = String._bridgeToObjectiveC()();

            [v59 setTitle:v60 forState:0];

            v61 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v72 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }
      }

      v62 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v14 = sub_10009E7A4();
      if (v14)
      {
        v15 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v16 = sub_100099D60();
      v17 = [objc_opt_self() mainBundle];
      v74._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0x534E4F4954415453;
      v19.value._countAndFlagsBits = 0x6F69646152;
      v18._object = 0xE800000000000000;
      v19.value._object = 0xE500000000000000;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v74._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v74);

      String.init(format:_:)();

      v21 = String._bridgeToObjectiveC()();

      [v16 setTitle:v21 forState:0];

      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1000B6D30;
      v23 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
      *(v22 + 32) = v23;
      v24 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton);
      *(v22 + 40) = v24;
      v25 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
      *(v22 + 48) = v25;
      v26 = v25;
      v27 = v24;
      v28 = v23;
      sub_10009F060(v22, sub_1000A3E80);
    }

    v63 = sub_10009EBA0();
    if (v63)
    {
      v64 = v63;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_48;
  }

  return result;
}

void sub_1000A7F38(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CAFMediaSource.SeekDirection();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v12 = Strong;

    if (v11)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v77 = v6;
      static Published.subscript.getter();

      v13 = aBlock;
      if (aBlock)
      {
        v14 = swift_unknownObjectWeakLoadStrong();
        if (!v14)
        {
          goto LABEL_69;
        }

        v15 = v14;
        v16 = [*(v14 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

        if (!v16)
        {
          goto LABEL_69;
        }

        v17 = [v16 nowPlayingInformation];

        if (!v17)
        {
          goto LABEL_69;
        }

        v18 = [v17 nowPlaying];

        if (!v18)
        {
          goto LABEL_69;
        }

        v19 = v18;
        v20 = [v13 mediaSourceSemanticType];
        v21 = (v20 < 9) & (0x14Fu >> v20);
        if (a1)
        {
          if (a1 != 1)
          {
            if (a1 == 2)
            {
              if (sub_1000A5390())
              {
                sub_10009FC58();
              }

              else
              {
                sub_1000A00A4();
              }
            }

            goto LABEL_68;
          }

          if (v21)
          {
            v22 = swift_unknownObjectWeakLoadStrong();
            if (!v22)
            {
              goto LABEL_39;
            }

            v23 = *(v22 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v24 = v22;

            v19 = v18;
            if (!v23)
            {
              goto LABEL_39;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();
            v19 = v18;

            v25 = aBlock;
            if (!aBlock || (v26 = [aBlock mediaSourceSemanticType], v25, v27 = v26 == 3, v19 = v18, !v27))
            {
LABEL_39:
              v39 = &enum case for CAFMediaSource.SeekDirection.next(_:);
LABEL_41:
              v40 = v77;
              (*(v77 + 104))(v9, *v39, v5);
              CAFMediaSource.seek(direction:completion:)();

              (*(v40 + 8))(v9, v5);
              return;
            }
          }

          if (a2 != 2)
          {
            if (a2 == 1 && [v19 hasBeginSeekForward] && objc_msgSend(v19, "hasEndSeek") && (objc_msgSend(v19, "beginSeekForwardDisabled") & 1) == 0)
            {
              v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 1;
              v28 = swift_allocObject();
              *(v28 + 16) = v2;
              v82 = sub_1000A8DF0;
              v83 = v28;
              aBlock = _NSConcreteStackBlock;
              v79 = 1107296256;
              v80 = sub_10009959C;
              v81 = &unk_1000E2BE0;
              v29 = _Block_copy(&aBlock);
              v30 = v2;

              [v19 beginSeekForwardWithCompletion:v29];
LABEL_37:
              v38 = v29;
LABEL_57:
              _Block_release(v38);

              return;
            }

            goto LABEL_45;
          }

          v41 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction;
          if (v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] != 1 || ![v19 hasEndSeek])
          {
LABEL_45:
            if (sub_10009DFEC() & 1) == 0 || ([v19 jumpForwardDisabled])
            {
              if (![v19 hasNextItem] || (objc_msgSend(v19, "nextItemDisabled") & 1) != 0)
              {
                if (qword_1000EAD00 != -1)
                {
                  swift_once();
                }

                v43 = type metadata accessor for Logger();
                sub_100006928(v43, qword_1000F3BD0);
                v44 = Logger.logObject.getter();
                v45 = static os_log_type_t.debug.getter();
                if (!os_log_type_enabled(v44, v45))
                {
                  goto LABEL_67;
                }

                v46 = swift_slowAlloc();
                *v46 = 0;
                v47 = "No available action to handle next button press!";
LABEL_66:
                _os_log_impl(&_mh_execute_header, v44, v45, v47, v46, 2u);

LABEL_67:

LABEL_68:
LABEL_69:

                return;
              }

              if (qword_1000EAD00 == -1)
              {
                goto LABEL_84;
              }

              goto LABEL_96;
            }

            if (qword_1000EAD00 != -1)
            {
              swift_once();
            }

            v51 = type metadata accessor for Logger();
            sub_100006928(v51, qword_1000F3BD0);
            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&_mh_execute_header, v52, v53, "Jumping forward...", v54, 2u);
            }

            v55 = sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f");
            if (!(v55 >> 16))
            {
              v56 = v55;
              v57 = swift_allocObject();
              *(v57 + 16) = v19;
              v82 = sub_1000A8DE8;
              v83 = v57;
              aBlock = _NSConcreteStackBlock;
              v79 = 1107296256;
              v80 = sub_10009959C;
              v81 = &unk_1000E2B68;
              v58 = _Block_copy(&aBlock);
              v59 = v19;

              [v59 jumpForwardWithJumpInterval:v56 completion:v58];
              goto LABEL_82;
            }

            __break(1u);
LABEL_94:
            swift_once();
LABEL_78:
            v60 = type metadata accessor for Logger();
            sub_100006928(v60, qword_1000F3BD0);
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 0;
              _os_log_impl(&_mh_execute_header, v61, v62, "Jumping back...", v63, 2u);
            }

            v64 = sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f");
            if (v64 >> 16)
            {
              __break(1u);
LABEL_96:
              swift_once();
LABEL_84:
              v67 = type metadata accessor for Logger();
              sub_100006928(v67, qword_1000F3BD0);
              v68 = Logger.logObject.getter();
              v69 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                *v70 = 0;
                _os_log_impl(&_mh_execute_header, v68, v69, "Moving to next item...", v70, 2u);
              }

              v82 = sub_10009FC44;
              v83 = 0;
              aBlock = _NSConcreteStackBlock;
              v79 = 1107296256;
              v80 = sub_10009959C;
              v81 = &unk_1000E2B18;
              v71 = _Block_copy(&aBlock);
              [v19 nextItemWithCompletion:v71];
              goto LABEL_92;
            }

            v65 = v64;
            v66 = swift_allocObject();
            *(v66 + 16) = v19;
            v82 = sub_1000A8E1C;
            v83 = v66;
            aBlock = _NSConcreteStackBlock;
            v79 = 1107296256;
            v80 = sub_10009959C;
            v81 = &unk_1000E2C58;
            v58 = _Block_copy(&aBlock);
            v59 = v19;

            [v59 jumpBackwardWithJumpInterval:v65 completion:v58];
LABEL_82:

            _Block_release(v58);
            return;
          }

          v2[v41] = 0;
          v82 = sub_1000A9168;
          v83 = 0;
          aBlock = _NSConcreteStackBlock;
          v79 = 1107296256;
          v42 = &unk_1000E2B90;
LABEL_56:
          v80 = sub_10009959C;
          v81 = v42;
          v49 = _Block_copy(&aBlock);
          [v19 endSeekWithCompletion:v49];
          v38 = v49;
          goto LABEL_57;
        }

        if (v21)
        {
          v31 = swift_unknownObjectWeakLoadStrong();
          if (!v31)
          {
            goto LABEL_40;
          }

          v32 = *(v31 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v33 = v31;

          v19 = v18;
          if (!v32)
          {
            goto LABEL_40;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();
          v19 = v18;

          v34 = aBlock;
          if (!aBlock || (v35 = [aBlock mediaSourceSemanticType], v34, v27 = v35 == 3, v19 = v18, !v27))
          {
LABEL_40:
            v39 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
            goto LABEL_41;
          }
        }

        if (a2 == 2)
        {
          v48 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction;
          if (v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] == 1 && [v19 hasEndSeek])
          {
            v2[v48] = 0;
            v82 = sub_1000A9168;
            v83 = 0;
            aBlock = _NSConcreteStackBlock;
            v79 = 1107296256;
            v42 = &unk_1000E2C80;
            goto LABEL_56;
          }
        }

        else if (a2 == 1 && [v19 hasBeginSeekBackward] && objc_msgSend(v19, "hasEndSeek") && (objc_msgSend(v19, "beginSeekBackwardDisabled") & 1) == 0)
        {
          v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 1;
          v36 = swift_allocObject();
          *(v36 + 16) = v2;
          v82 = sub_1000A8E24;
          v83 = v36;
          aBlock = _NSConcreteStackBlock;
          v79 = 1107296256;
          v80 = sub_10009959C;
          v81 = &unk_1000E2CD0;
          v29 = _Block_copy(&aBlock);
          v37 = v2;

          [v19 beginSeekBackwardWithCompletion:v29];
          goto LABEL_37;
        }

        if (sub_10009DE14() & 1) == 0 || ([v19 jumpBackwardDisabled])
        {
          if (![v19 hasPreviousItem] || (objc_msgSend(v19, "previousItemDisabled") & 1) != 0)
          {
            if (qword_1000EAD00 != -1)
            {
              swift_once();
            }

            v50 = type metadata accessor for Logger();
            sub_100006928(v50, qword_1000F3BD0);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v44, v45))
            {
              goto LABEL_67;
            }

            v46 = swift_slowAlloc();
            *v46 = 0;
            v47 = "No available action to handle previous button press!";
            goto LABEL_66;
          }

          if (qword_1000EAD00 != -1)
          {
            swift_once();
          }

          v72 = type metadata accessor for Logger();
          sub_100006928(v72, qword_1000F3BD0);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v73, v74, "Moving to previous item...", v75, 2u);
          }

          v82 = sub_10009F4B0;
          v83 = 0;
          aBlock = _NSConcreteStackBlock;
          v79 = 1107296256;
          v80 = sub_10009959C;
          v81 = &unk_1000E2C08;
          v71 = _Block_copy(&aBlock);
          [v19 previousItemWithCompletion:v71];
LABEL_92:

          _Block_release(v71);
          return;
        }

        if (qword_1000EAD00 == -1)
        {
          goto LABEL_78;
        }

        goto LABEL_94;
      }
    }
  }
}

uint64_t sub_1000A8E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EEE48, &qword_1000BA540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A8EDC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1000A8F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A8FBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A8FF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000A9074()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork];
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;

  return [v1 reloadData];
}

uint64_t sub_1000A920C()
{
  v0 = type metadata accessor for CAUAssetLibraryManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = CAUAssetLibraryManager.init()();
  qword_1000F3D00 = result;
  return result;
}

id sub_1000A924C()
{
  result = [objc_allocWithZone(CAFCarManager) init];
  qword_1000F3D08 = result;
  return result;
}

void sub_1000A9334(void **a1)
{
  v1 = *a1;
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B58);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v1;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received asset library %@", v6, 0xCu);
    sub_100007834(v7, &unk_1000EE230, &qword_1000BA550);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC5Media11AppDelegate_carManager);
    v11 = Strong;
    v12 = v10;

    if (v10)
    {
      sub_10000F318();
      sub_10000ED64();
      sub_10000E5C0();
      sub_10000E074();
    }
  }
}

uint64_t sub_1000A9568(void *a1)
{
  v2 = v1;
  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(2, 0);
  sub_1000AB61C();
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 hostedAltScreenPresentationType];

    if ((v7 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006928(v8, qword_1000F3B58);
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138543362;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "Media has received a new cluster scene %{public}@", v12, 0xCu);
        sub_100007834(v13, &unk_1000EE230, &qword_1000BA550);
      }

      v15 = [v9 _FBSScene];
      v16 = [v15 settings];
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        [v17 hostedAltScreenPresentationType];

        swift_getKeyPath();
        swift_getKeyPath();
        v18 = v2;
        static Published.subscript.setter();
      }

      else
      {
      }

      v56 = [v9 _FBSScene];
      [v56 addObserver:v2];

      v57 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene];
      *&v2[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene] = v9;
      v58 = v9;

      [v58 activationState];
      swift_getKeyPath();
      swift_getKeyPath();
      v59 = v2;
LABEL_33:
      static Published.subscript.setter();
      return sub_1000AB6C8(a1);
    }
  }

  else
  {
  }

  v19 = [a1 _FBSScene];
  v20 = [v19 settings];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = [v21 hostedAltScreenPresentationType];

    if (v22 == 4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006928(v23, qword_1000F3B58);
      v24 = a1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "Media has received a new passenger display scene %{public}@", v27, 0xCu);
        sub_100007834(v28, &unk_1000EE230, &qword_1000BA550);
      }

      v30 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene];
      *&v2[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene] = v24;
      v31 = v24;

      [v31 activationState];
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = v2;
      goto LABEL_33;
    }
  }

  else
  {
  }

  v33 = [a1 _FBSScene];
  v34 = [v33 settings];

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();

  if (v35)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006928(v36, qword_1000F3B58);
    v37 = a1;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Media has received a new dashboard widget scene %{public}@", v40, 0xCu);
      sub_100007834(v41, &unk_1000EE230, &qword_1000BA550);
    }

    v43 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene];
    *&v2[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene] = v37;
    v44 = v37;

    [v44 activationState];
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v2;
    goto LABEL_33;
  }

  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006928(v46, qword_1000F3B58);
  v47 = a1;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138543362;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "Media has received a new main scene %{public}@", v50, 0xCu);
    sub_100007834(v51, &unk_1000EE230, &qword_1000BA550);
  }

  v53 = [v47 _FBSScene];
  [v53 addObserver:v2];

  v54 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_carScene];
  *&v2[OBJC_IVAR____TtC5Media11AppDelegate_carScene] = v47;
  v55 = v47;

  return sub_1000AB6C8(a1);
}

void sub_1000A9DD0(void *a1)
{
  v2 = v1;
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 hostedAltScreenPresentationType];

    if ((v7 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006928(v8, qword_1000F3B58);
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138543362;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "Media is disconnecting from cluster scene %{public}@", v12, 0xCu);
        sub_100007834(v13, &unk_1000EE230, &qword_1000BA550);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v75)
      {
        [v75 setHidden:1];
      }

      v15 = [v9 _FBSScene];
      [v15 removeObserver:v2];

      swift_getKeyPath();
      swift_getKeyPath();
      v75 = 0;
      v16 = v2;
      static Published.subscript.setter();
      v17 = &unk_1000EF000;
      v18 = *&v16[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene];
      *&v16[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene] = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v75) = 0;
      v19 = v16;
      static Published.subscript.setter();
      v20 = &unk_1000EF000;
      v21 = &unk_1000EF000;
      goto LABEL_37;
    }
  }

  else
  {
  }

  v22 = [a1 _FBSScene];
  v23 = [v22 settings];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

    goto LABEL_21;
  }

  v25 = [v24 hostedAltScreenPresentationType];

  if (v25 != 4)
  {
LABEL_21:
    v35 = [a1 _FBSScene];
    v36 = [v35 settings];

    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();

    if (!v37)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100006928(v47, qword_1000F3B58);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Media is disconnecting from a main scene!", v50, 2u);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v75)
      {
        [v75 setHidden:1];
      }

      v51 = [a1 _FBSScene];
      [v51 removeObserver:v2];

      swift_getKeyPath();
      swift_getKeyPath();
      v75 = 0;
      v52 = v2;
      static Published.subscript.setter();
      v21 = &unk_1000EF000;
      v53 = *&v52[OBJC_IVAR____TtC5Media11AppDelegate_carScene];
      *&v52[OBJC_IVAR____TtC5Media11AppDelegate_carScene] = 0;

      v20 = &unk_1000EF000;
      v17 = &unk_1000EF000;
      goto LABEL_37;
    }

    v20 = &unk_1000EF000;
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006928(v38, qword_1000F3B58);
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    v17 = &unk_1000EF000;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Media is disconnecting from dashboard widget scene %{public}@", v42, 0xCu);
      sub_100007834(v43, &unk_1000EE230, &qword_1000BA550);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v75)
    {
      [v75 setHidden:1];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v75 = 0;
    v33 = v2;
    static Published.subscript.setter();
    v45 = *&v33[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene];
    *&v33[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene] = 0;

    swift_getKeyPath();
    goto LABEL_29;
  }

  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006928(v26, qword_1000F3B58);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v20 = &unk_1000EF000;
  v17 = &unk_1000EF000;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "Media is disconnecting from passenger scene %{public}@", v30, 0xCu);
    sub_100007834(v31, &unk_1000EE230, &qword_1000BA550);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v75)
  {
    [v75 setHidden:1];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v75 = 0;
  v33 = v2;
  static Published.subscript.setter();
  v34 = *&v33[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene];
  *&v33[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene] = 0;

  swift_getKeyPath();
LABEL_29:
  swift_getKeyPath();
  LOBYTE(v75) = 0;
  v46 = v33;
  static Published.subscript.setter();
  v21 = &unk_1000EF000;
LABEL_37:
  v54 = *&v2[v17[16]];
  v55 = *&v2[v20[17]];
  v56 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene];
  v71 = *&v2[v21[15]];
  v72 = v54;
  v73 = v55;
  v74 = v56;
  v57 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage;
  v58 = v56;
  v59 = v71;
  v60 = v54;
  v61 = v55;
  v62 = 0;
LABEL_38:
  if (v62 <= 4)
  {
    v63 = 4;
  }

  else
  {
    v63 = v62;
  }

  while (v62 != 4)
  {
    if (v63 == v62)
    {
      __break(1u);
      goto LABEL_56;
    }

    v64 = v70[v62++ + 4];
    if (v64)
    {
      v65 = v64;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v66 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57 = v75;
      goto LABEL_38;
    }
  }

  sub_10000368C(&unk_1000EF260, &qword_1000BABD0);
  swift_arrayDestroy();
  if (!(v57 >> 62))
  {
    v67 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

LABEL_56:
  v67 = _CocoaArrayWrapper.endIndex.getter();
LABEL_49:

  if (!v67)
  {
    if (qword_1000EACC0 != -1)
    {
      swift_once();
    }

    sub_100006020();
    v68 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_carManager];
    if (v68)
    {
      v69 = v68;
      sub_10000D904();
    }
  }
}

void sub_1000AA8A0(void *a1)
{
  v2 = v1;
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();

  if (v6)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3B58);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Dashboard scene did enter background", v10, 2u);
    }

LABEL_6:

    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v2;
    static Published.subscript.setter();
    return;
  }

  v12 = [a1 _FBSScene];
  v13 = [v12 settings];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 hostedAltScreenPresentationType];

    if (v15 == 4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006928(v16, qword_1000F3B58);
      v8 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v8, v17, "Passenger scene did enter background", v18, 2u);
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = [a1 _FBSScene];
  v25 = [v19 settings];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = [v20 hostedAltScreenPresentationType];

    if ((v21 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006928(v22, qword_1000F3B58);
      v8 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v8, v23, "Cluster scene did enter background", v24, 2u);
      }

      goto LABEL_6;
    }
  }

  else
  {
  }
}

void sub_1000AAD14(void *a1)
{
  v2 = v1;
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 hostedAltScreenPresentationType];

    if ((v7 - 1) < 3)
    {
      if (qword_1000EACC0 != -1)
      {
        swift_once();
      }

      sub_10000612C(5, 0);
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006928(v8, qword_1000F3B58);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Cluster scene will enter foreground", v11, 2u);
      }

LABEL_26:

      swift_getKeyPath();
      swift_getKeyPath();
      v25 = v2;
      static Published.subscript.setter();
      return;
    }
  }

  else
  {
  }

  v12 = [a1 _FBSScene];
  v13 = [v12 settings];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 hostedAltScreenPresentationType];

    if (v15 == 4)
    {
      if (qword_1000EACC0 != -1)
      {
        swift_once();
      }

      sub_10000612C(6, 0);
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006928(v16, qword_1000F3B58);
      v9 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v9, v17, "Passenger scene will enter foreground", v18, 2u);
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v19 = [a1 _FBSScene];
  v20 = [v19 settings];

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();

  if (v21)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006928(v22, qword_1000F3B58);
    v9 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v9, v23, "Dashboard scene will enter foreground", v24, 2u);
    }

    goto LABEL_26;
  }

  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(7, 0);
}

void sub_1000AB230(uint64_t a1)
{
  v27 = type metadata accessor for URL();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v27);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
    sub_1000058D0(&qword_1000ECF48, &qword_1000ECF40, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v26 = (v2 + 8);
  v24[2] = v7;
  v25 = "_isPassengerSceneForeground";
  v28 = a1;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v20 = [v18 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL.absoluteString.getter();
        (*v26)(v5, v27);
        v21._object = (v25 | 0x8000000000000000);
        v21._countAndFlagsBits = 0xD000000000000010;
        LOBYTE(v20) = String.hasSuffix(_:)(v21);

        if (v20)
        {
          break;
        }

        v8 = v16;
        v9 = v17;
        a1 = v28;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v19 = __CocoaSet.Iterator.next()();
        if (v19)
        {
          v29 = v19;
          sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
          swift_dynamicCast();
          v18 = v30;
          v16 = v8;
          v17 = v9;
          if (v30)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v22 = *(v24[1] + OBJC_IVAR____TtC5Media11AppDelegate_carManager);
      if (!v22)
      {
        sub_100073104();

        return;
      }

      v23 = v22;
      sub_100010040();
    }

LABEL_19:
    sub_100073104();
    return;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_19;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1000AB61C()
{
  v1 = OBJC_IVAR____TtC5Media11AppDelegate_carManager;
  v2 = *(v0 + OBJC_IVAR____TtC5Media11AppDelegate_carManager);
  if (v2 || (v3 = [objc_allocWithZone(type metadata accessor for RadioCarManager()) init], v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (v2 = *(v0 + v1)) != 0))
  {
    v5 = v2;
    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();
  }
}

uint64_t sub_1000AB6C8(void *a1)
{
  v2 = [a1 _FBSScene];
  v3 = [v2 settings];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();

  v5 = UIWindow_ptr;
  if (v4)
  {
    v5 = CRSUIDashboardWidgetWindow_ptr;
  }

  v6 = [objc_allocWithZone(*v5) initWithWindowScene:a1];
  [v6 setAutoresizesSubviews:1];
  [v6 setAutoresizingMask:18];
  [v6 makeKeyAndVisible];
  [v6 setHidden:0];

  v7 = [a1 _FBSScene];
  v8 = [v7 settings];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v9 hostedAltScreenPresentationType];

    if ((v10 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006928(v11, qword_1000F3B58);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Media is creating a cluster window...", v14, 2u);
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v15 = [a1 _FBSScene];
  v16 = [v15 settings];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = [v17 hostedAltScreenPresentationType];

    if (v18 == 4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006928(v19, qword_1000F3B58);
      v12 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v12, v20, "Media is creating a passenger window...", v21, 2u);
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v22 = [a1 _FBSScene];
  v23 = [v22 settings];

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();

  if (v24)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006928(v25, qword_1000F3B58);
    v12 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v12, v26, "Media is creating a dashboard widget window...", v27, 2u);
    }
  }

  else
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006928(v28, qword_1000F3B58);
    v12 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v12, v29, "Media is creating a main window...", v30, 2u);
    }
  }

LABEL_29:

  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v33;
  return static Published.subscript.setter();
}

id sub_1000ABC74()
{
  v1 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v25 - v4;
  v6 = sub_10000368C(&qword_1000EB888, &qword_1000B4738);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_carManager] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_carScene] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_cancelSet] = v11;
  v12 = OBJC_IVAR____TtC5Media11AppDelegate__carWindow;
  v27 = 0;
  sub_10000368C(&unk_1000EF1E8, &qword_1000BA940);
  Published.init(initialValue:)();
  v13 = *(v7 + 32);
  v13(&v0[v12], v10, v6);
  v14 = OBJC_IVAR____TtC5Media11AppDelegate__clusterWindow;
  v27 = 0;
  Published.init(initialValue:)();
  v13(&v0[v14], v10, v6);
  v15 = OBJC_IVAR____TtC5Media11AppDelegate__passengerWindow;
  v27 = 0;
  Published.init(initialValue:)();
  v13(&v0[v15], v10, v6);
  v16 = OBJC_IVAR____TtC5Media11AppDelegate__dashboardWidgetWindow;
  v27 = 0;
  Published.init(initialValue:)();
  v13(&v0[v16], v10, v6);
  v17 = OBJC_IVAR____TtC5Media11AppDelegate__isClusterMapsAndMedia;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  v18 = *(v2 + 32);
  v18(&v0[v17], v5, v1);
  v19 = OBJC_IVAR____TtC5Media11AppDelegate__isSiriActive;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  v18(&v0[v19], v5, v1);
  v20 = OBJC_IVAR____TtC5Media11AppDelegate__isDashboardSceneForeground;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  v18(&v0[v20], v5, v1);
  v21 = OBJC_IVAR____TtC5Media11AppDelegate__isClusterSceneForeground;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  v18(&v0[v21], v5, v1);
  v22 = OBJC_IVAR____TtC5Media11AppDelegate__isPassengerSceneForeground;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  v18(&v0[v22], v5, v1);
  v23 = type metadata accessor for AppDelegate();
  v26.receiver = v0;
  v26.super_class = v23;
  return objc_msgSendSuper2(&v26, "init");
}

id sub_1000AC074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000AC344(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3B58);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Sent request to launch now playing app", v9, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B58);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to launch now playing: %{public}@", v4, 0xCu);
    sub_100007834(v5, &unk_1000EE230, &qword_1000BA550);

LABEL_10:

    return;
  }
}

void sub_1000AC598(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t type metadata accessor for AppDelegate()
{
  result = qword_1000EF1D0;
  if (!qword_1000EF1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AC708()
{
  sub_1000AC7FC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000B5F0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000AC7FC()
{
  if (!qword_1000EF1E0)
  {
    sub_100005780(&unk_1000EF1E8, &qword_1000BA940);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EF1E0);
    }
  }
}

uint64_t sub_1000AC8D8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000AC998(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000ACA04()
{
  v0 = type metadata accessor for CAUFeatureConfiguration.Radio();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CAUFeatureConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = &type metadata for RadioFeatures;
  v14[4] = sub_1000ADEAC();
  v10 = isFeatureEnabled(_:)();
  sub_100006960(v14);
  if (v10)
  {
    if (qword_1000EAD50 != -1)
    {
      swift_once();
    }

    v11 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();
    if (v11)
    {
      CAUAssetLibrary.featureConfiguration()();

      CAUFeatureConfiguration.radio.getter();
      (*(v6 + 8))(v9, v5);
      LOBYTE(v11) = CAUFeatureConfiguration.Radio.supportsHIDEvents.getter();
      (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

void sub_1000ACC00()
{
  v0 = sub_10000368C(&qword_1000EF2B8, &qword_1000BABE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = [objc_opt_self() dashboardService];
  if (v4)
  {
    v5 = v4;
    sub_10000368C(&qword_1000EF2C0, &qword_1000B63A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4760;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v7;

    AnyHashable.init<A>(_:)();
    URL.init(string:)();
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      __break(1u);
    }

    else
    {

      *(inited + 96) = v8;
      v10 = sub_10005AD6C((inited + 72));
      (*(v9 + 32))(v10, v3, v8);
      sub_10004424C(inited);
      swift_setDeallocating();
      sub_100007834(inited + 32, &qword_1000EC998, &qword_1000B63A8);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v12 = [objc_opt_self() optionsWithDictionary:isa];

      v13 = String._bridgeToObjectiveC()();
      v24 = sub_1000AC344;
      v25 = 0;
      aBlock = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_1000AC598;
      v23 = &unk_1000E2FC8;
      v14 = _Block_copy(&aBlock);
      [v5 openApplication:v13 withOptions:v12 completion:v14];
      _Block_release(v14);
    }
  }

  else
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006928(v15, qword_1000F3BA0);
    v19 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v19, v16, "No open application service available to launch now playing.", v17, 2u);
    }

    v18 = v19;
  }
}

uint64_t sub_1000ACFE4()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v19 = sub_10000368C(&qword_1000EF280, &qword_1000BABD8);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v19);
  v8 = &v19 - v7;
  v9 = sub_10000368C(&unk_1000EF288, &qword_1000BABE0);
  v20 = *(v9 - 8);
  v21 = v9;
  v10 = *(v20 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(0, 0);
  if (qword_1000EAD58 != -1)
  {
    swift_once();
  }

  [qword_1000F3D08 registerObserver:{v0, v19}];
  v13 = [objc_opt_self() sharedInstance];
  [v13 startObservingCameraIris];

  if (qword_1000EAD50 != -1)
  {
    swift_once();
  }

  dispatch thunk of CAUAssetLibraryManager.$slimAssetLibrary.getter();
  v14 = [objc_opt_self() mainRunLoop];
  v22 = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&unk_1000EF298, &qword_1000EF280, &qword_1000BABD8);
  sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr);
  v16 = v19;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v4, &unk_1000EC7E0, &unk_1000B5100);

  (*(v5 + 8))(v8, v16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&qword_1000EF2A8, &unk_1000EF288, &qword_1000BABE0);
  v17 = v21;
  Publisher<>.sink(receiveValue:)();

  (*(v20 + 8))(v12, v17);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return 1;
}

void sub_1000AD494(void *a1)
{
  if (a1)
  {
    v2 = qword_1000EACD8;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B58);
    v13 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v13;
      *v8 = a1;
      v9 = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%@ has been updated", v7, 0xCu);
      sub_100007834(v8, &unk_1000EE230, &qword_1000BA550);
    }

    sub_1000AB61C();
  }

  else
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3B58);
    v13 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v13, v11, "No current car", v12, 2u);
    }
  }
}

void sub_1000AD6C4(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC5Media11AppDelegate_carScene];
  if (v4)
  {
    v5 = [v4 _FBSScene];
    if (v5)
    {
      v6 = v5;
      sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
      if (static NSObject.== infix(_:_:)())
      {
        v7 = [a1 settings];
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          if ([v8 isForeground])
          {
            v10 = ([v9 deactivationReasons] >> 4) & 1;
          }

          else
          {
            LODWORD(v10) = 0;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v10 == v28)
          {
          }

          else
          {
            if (qword_1000EAD10 != -1)
            {
              swift_once();
            }

            v21 = type metadata accessor for Logger();
            sub_100006928(v21, qword_1000F3C00);
            v22 = Logger.logObject.getter();
            v23 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 67240192;
              *(v24 + 4) = v10;
              _os_log_impl(&_mh_execute_header, v22, v23, "Siri now visible: %{BOOL,public}d", v24, 8u);
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v25 = v2;
            static Published.subscript.setter();
          }

          return;
        }
      }

      else
      {
        v7 = v6;
      }
    }
  }

  v11 = *&v1[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene];
  if (!v11)
  {
    return;
  }

  v12 = [v11 _FBSScene];
  if (!v12)
  {
    return;
  }

  v27 = v12;
  sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    v26 = [a1 settings];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 hostedAltScreenPresentationType];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v14 == 2) != v29)
      {
        if (qword_1000EACF0 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_100006928(v15, qword_1000F3BA0);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 67240192;
          *(v18 + 4) = v14 == 2;
          _os_log_impl(&_mh_execute_header, v16, v17, "Radio cluster maps and media: %{BOOL,public}d", v18, 8u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v19 = v2;
        static Published.subscript.setter();
      }

      return;
    }

    v20 = v26;
  }

  else
  {
    v20 = v27;
  }
}

unint64_t sub_1000ADE14()
{
  result = qword_1000EF270;
  if (!qword_1000EF270)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF270);
  }

  return result;
}

uint64_t sub_1000ADE6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000ADEAC()
{
  result = qword_1000EF2B0;
  if (!qword_1000EF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF2B0);
  }

  return result;
}

uint64_t sub_1000ADF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000ADF44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v35 = 0;
  sub_1000AE14C(a1, a2 & 1, &v21);
  v46 = v31;
  v47 = v32;
  v48[0] = v33[0];
  *(v48 + 9) = *(v33 + 9);
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v36 = v21;
  v37 = v22;
  v49[10] = v31;
  v49[11] = v32;
  v50[0] = v33[0];
  *(v50 + 9) = *(v33 + 9);
  v49[6] = v27;
  v49[7] = v28;
  v49[8] = v29;
  v49[9] = v30;
  v49[2] = v23;
  v49[3] = v24;
  v49[4] = v25;
  v49[5] = v26;
  v49[0] = v21;
  v49[1] = v22;
  sub_1000077CC(&v36, &v20, &qword_1000EF2C8, &qword_1000BACC8);
  sub_100007834(v49, &qword_1000EF2C8, &qword_1000BACC8);
  *&v34[167] = v46;
  *&v34[183] = v47;
  *&v34[199] = v48[0];
  *&v34[208] = *(v48 + 9);
  *&v34[103] = v42;
  *&v34[119] = v43;
  *&v34[135] = v44;
  *&v34[151] = v45;
  *&v34[39] = v38;
  *&v34[55] = v39;
  *&v34[71] = v40;
  *&v34[87] = v41;
  *&v34[7] = v36;
  *&v34[23] = v37;
  LOBYTE(a1) = v35;
  v7 = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  v9 = *&v34[176];
  *(a3 + 177) = *&v34[160];
  *(a3 + 193) = v9;
  v10 = *&v34[208];
  *(a3 + 209) = *&v34[192];
  *(a3 + 225) = v10;
  v11 = *&v34[112];
  *(a3 + 113) = *&v34[96];
  *(a3 + 129) = v11;
  v12 = *&v34[144];
  *(a3 + 145) = *&v34[128];
  *(a3 + 161) = v12;
  v13 = *&v34[48];
  *(a3 + 49) = *&v34[32];
  *(a3 + 65) = v13;
  v14 = *&v34[80];
  *(a3 + 81) = *&v34[64];
  *(a3 + 97) = v14;
  v15 = *&v34[16];
  *(a3 + 17) = *v34;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 33) = v15;
  *(a3 + 248) = v7;
  *(a3 + 256) = v16;
  *(a3 + 264) = v17;
  *(a3 + 272) = v18;
  *(a3 + 280) = v19;
  *(a3 + 288) = 0;
  return result;
}

uint64_t sub_1000AE14C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = static HorizontalAlignment.leading.getter();
  v26[0] = 0;
  sub_1000AE4AC(a1, a2 & 1, &v46);
  v38 = *&v47[112];
  v39 = *&v47[128];
  v40 = *&v47[144];
  v34 = *&v47[48];
  v35 = *&v47[64];
  v36 = *&v47[80];
  v37 = *&v47[96];
  v30 = v46;
  v31 = *v47;
  v32 = *&v47[16];
  v33 = *&v47[32];
  v42[8] = *&v47[112];
  v42[9] = *&v47[128];
  v42[10] = *&v47[144];
  v42[4] = *&v47[48];
  v42[5] = *&v47[64];
  v42[6] = *&v47[80];
  v42[7] = *&v47[96];
  v42[0] = v46;
  v42[1] = *v47;
  v41 = v47[160];
  v43 = v47[160];
  v42[2] = *&v47[16];
  v42[3] = *&v47[32];
  sub_1000077CC(&v30, &v44, &qword_1000EF2D0, &qword_1000BACF8);
  sub_100007834(v42, &qword_1000EF2D0, &qword_1000BACF8);
  *&v29[135] = v38;
  *&v29[151] = v39;
  *&v29[167] = v40;
  v29[183] = v41;
  *&v29[71] = v34;
  *&v29[87] = v35;
  *&v29[103] = v36;
  *&v29[119] = v37;
  *&v29[7] = v30;
  *&v29[23] = v31;
  *&v29[39] = v32;
  *&v29[55] = v33;
  v8 = *&v29[176];
  *&v45[177] = *&v29[176];
  v44 = v7;
  v45[0] = 0;
  v9 = *&v29[112];
  *&v45[129] = *&v29[128];
  v10 = *&v29[128];
  *&v45[145] = *&v29[144];
  v11 = *&v29[144];
  *&v45[161] = *&v29[160];
  v12 = *&v29[48];
  *&v45[65] = *&v29[64];
  v13 = *&v29[64];
  *&v45[81] = *&v29[80];
  v14 = *&v29[80];
  *&v45[97] = *&v29[96];
  v15 = *&v29[96];
  *&v45[113] = *&v29[112];
  *&v45[1] = *v29;
  *&v45[17] = *&v29[16];
  v16 = *v29;
  v17 = *&v29[16];
  *&v45[33] = *&v29[32];
  v18 = *&v29[32];
  *&v45[49] = *&v29[48];
  *&v27[151] = *&v45[128];
  *&v27[167] = *&v45[144];
  *&v27[183] = *&v45[160];
  *&v27[192] = *&v45[169];
  *&v27[87] = *&v45[64];
  *&v27[103] = *&v45[80];
  *&v27[119] = *&v45[96];
  *&v27[135] = *&v45[112];
  *&v27[23] = *v45;
  *&v27[39] = *&v45[16];
  *&v27[55] = *&v45[32];
  *&v27[71] = *&v45[48];
  *&v27[7] = v7;
  v19 = *&v27[128];
  *(a3 + 153) = *&v27[144];
  v20 = *&v27[176];
  *(a3 + 169) = *&v27[160];
  *(a3 + 185) = v20;
  *(a3 + 201) = *&v27[192];
  v21 = *&v27[64];
  *(a3 + 89) = *&v27[80];
  v22 = *&v27[112];
  *(a3 + 105) = *&v27[96];
  *(a3 + 121) = v22;
  *(a3 + 137) = v19;
  v23 = *v27;
  *(a3 + 25) = *&v27[16];
  v24 = *&v27[48];
  *(a3 + 41) = *&v27[32];
  *(a3 + 57) = v24;
  *(a3 + 73) = v21;
  *(a3 + 9) = v23;
  *&v47[129] = v10;
  *&v47[145] = v11;
  v48 = *&v29[160];
  *&v47[65] = v13;
  *&v47[81] = v14;
  *&v47[97] = v15;
  *&v47[113] = v9;
  *&v47[1] = v16;
  *&v47[17] = v17;
  *&v47[33] = v18;
  v28 = 0;
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  v46 = v7;
  v47[0] = 0;
  v49 = v8;
  *&v47[49] = v12;

  sub_1000077CC(&v44, v26, &qword_1000EF2D8, &qword_1000BAD00);
  sub_100007834(&v46, &qword_1000EF2D8, &qword_1000BAD00);
}

uint64_t sub_1000AE4AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v9;
  if (a2)
  {
    v72 = a1;

    v12 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v11, v6);
    v12 = v72;
  }

  swift_getKeyPath();
  *&v50 = v12;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v12 + 43);

  if (v14 == 1)
  {
    v27 = static VerticalAlignment.center.getter();
    LOBYTE(v30) = 1;
    sub_1000AEA40(&v50);
    v47 = v51[5];
    v48[0] = v51[6];
    *(v48 + 9) = *(&v51[6] + 9);
    v43 = v51[1];
    v44 = v51[2];
    v45 = v51[3];
    v46 = v51[4];
    v41 = v50;
    v42 = v51[0];
    v58 = v51[5];
    v59[0] = v51[6];
    *(v59 + 9) = *(&v51[6] + 9);
    v54 = v51[1];
    v55 = v51[2];
    v56 = v51[3];
    v57 = v51[4];
    v52 = v50;
    v53 = v51[0];
    sub_1000077CC(&v41, &v61, &qword_1000EF2E8, &qword_1000BAD60);
    sub_100007834(&v52, &qword_1000EF2E8, &qword_1000BAD60);
    *(&v29[6] + 7) = v47;
    *(&v29[5] + 7) = v46;
    *(&v29[2] + 7) = v43;
    *(&v29[1] + 7) = v42;
    *(&v29[7] + 7) = v48[0];
    v29[8] = *(v48 + 9);
    *(&v29[3] + 7) = v44;
    *(&v29[4] + 7) = v45;
    *(v29 + 7) = v41;
    *(&v51[5] + 1) = v29[5];
    *(&v51[6] + 1) = v29[6];
    *(&v51[7] + 1) = v29[7];
    *(&v51[8] + 1) = *(v48 + 9);
    *(&v51[1] + 1) = v29[1];
    *(&v51[2] + 1) = v29[2];
    *(&v51[3] + 1) = v29[3];
    *(&v51[4] + 1) = v29[4];
    v50 = v27;
    LOBYTE(v51[0]) = v30;
    *(v51 + 1) = v29[0];
    nullsub_1(&v50);
    v69 = v51[7];
    v70 = v51[8];
    v71 = v51[9];
    v65 = v51[3];
    v66 = v51[4];
    v67 = v51[5];
    v68 = v51[6];
    v61 = v50;
    v62 = v51[0];
    v63 = v51[1];
    v64 = v51[2];
  }

  else
  {
    sub_1000AEB58(&v61);
  }

  v15 = v28;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v11, v15);
    a1 = v50;
  }

  swift_getKeyPath();
  *&v50 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(a1 + 41);

  if (v17 == 1)
  {
    KeyPath = swift_getKeyPath();

    v19 = 0;
  }

  else
  {
    KeyPath = 0;
    v19 = -1;
  }

  v38 = v69;
  v39 = v70;
  v34 = v65;
  v35 = v66;
  v36 = v67;
  v37 = v68;
  v30 = v61;
  v31 = v62;
  v32 = v63;
  v33 = v64;
  v48[1] = v69;
  v48[2] = v70;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v48[0] = v68;
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v44 = v64;
  v51[7] = v69;
  v51[8] = v70;
  v51[3] = v65;
  v51[4] = v66;
  v51[5] = v67;
  v51[6] = v68;
  v50 = v61;
  v51[0] = v62;
  v40 = v71;
  v49 = v71;
  LOBYTE(v51[9]) = v71;
  v51[1] = v63;
  v51[2] = v64;
  sub_1000077CC(&v41, &v52, &qword_1000EF2E0, &qword_1000BAD58);
  sub_100007A38(KeyPath, v19);
  sub_100007A64(KeyPath, v19);
  v20 = v51[8];
  *(a3 + 128) = v51[7];
  *(a3 + 144) = v20;
  v21 = *&v51[9];
  v22 = v51[4];
  *(a3 + 64) = v51[3];
  *(a3 + 80) = v22;
  v23 = v51[6];
  *(a3 + 96) = v51[5];
  *(a3 + 112) = v23;
  v24 = v51[0];
  *a3 = v50;
  *(a3 + 16) = v24;
  v25 = v51[2];
  *(a3 + 32) = v51[1];
  *(a3 + 48) = v25;
  *(a3 + 160) = v21;
  *(a3 + 168) = KeyPath;
  *(a3 + 176) = v19;
  sub_100007A64(KeyPath, v19);
  v59[1] = v38;
  v59[2] = v39;
  v60 = v40;
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v59[0] = v37;
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v55 = v33;
  return sub_100007834(&v52, &qword_1000EF2E0, &qword_1000BAD58);
}

__n128 sub_1000AEA40@<Q0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v4[55] = v8;
  *&v4[71] = v9;
  *&v4[87] = v10;
  *&v4[103] = v11;
  *&v4[7] = v5;
  *&v4[23] = v6;
  *&v4[39] = v7;
  KeyPath = swift_getKeyPath();
  *(a1 + 73) = *&v4[64];
  *(a1 + 89) = *&v4[80];
  *(a1 + 105) = *&v4[96];
  *(a1 + 9) = *v4;
  *(a1 + 25) = *&v4[16];
  result = *&v4[32];
  *(a1 + 41) = *&v4[32];
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 57) = *&v4[48];
  *(a1 + 120) = *(&v11 + 1);
  *(a1 + 128) = KeyPath;
  *(a1 + 136) = 0;
  return result;
}

double sub_1000AEB58(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = -1;
  return result;
}

unint64_t sub_1000AEB88()
{
  result = qword_1000EF2F0;
  if (!qword_1000EF2F0)
  {
    sub_100005780(&qword_1000EF2F8, &qword_1000BAD68);
    sub_1000AEC14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF2F0);
  }

  return result;
}

unint64_t sub_1000AEC14()
{
  result = qword_1000EF300;
  if (!qword_1000EF300)
  {
    sub_100005780(&qword_1000EF308, &unk_1000BAD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF300);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

UIBarButtonItem_optional __swiftcall CAUAssetLibraryManager.createAudioLogoBarButton()()
{
  v0 = CAUAssetLibraryManager.createAudioLogoBarButton()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIBarButtonItem_optional __swiftcall CAFUITileViewController.createAudioLogoButtonIfApplicable()()
{
  v0 = CAFUITileViewController.createAudioLogoButtonIfApplicable()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t Publisher.map<A>(_:)()
{
  return Publisher.map<A>(_:)();
}

{
  return Publisher.map<A>(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

Swift::String __swiftcall Character.uppercased()()
{
  v0 = Character.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}
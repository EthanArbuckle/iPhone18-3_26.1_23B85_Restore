uint64_t sub_1001C7274()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LanguageSelectionDownloadModel.locale.getter();
  v4 = Locale.identifier.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == Locale.identifier.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void *sub_1001C73B8()
{
  v1 = v0;
  swift_getKeyPath();
  v7 = v0;
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = LanguageSelectionViewModel.availableLanguages.getter();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  if (v3 > 1)
  {
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LanguageSelectionViewModel.availableLanguages.getter();

    v7 = sub_1002C0900(v6);
    sub_1001CA930(&v7);

    return v7;
  }

  else
  {
    v7 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = LanguageSelectionViewModel.availableLanguages.getter();

    return v4;
  }
}

uint64_t sub_1001C7584()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  LanguageSelectionDownloadModel.locale.getter();
  static Locale.current.getter();
  v7 = Locale.sqDisplayName(context:in:)();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v6, v0);
  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (!v9)
  {
    v9 = 0xE000000000000000;
  }

  LanguageSelectionDownloadModel.locale.getter();
  static Locale.current.getter();
  v12 = Locale.sqDisplayName(context:in:)();
  v14 = v13;
  v10(v4, v0);
  v10(v6, v0);
  if (v14)
  {
    v15 = v12;
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

  if (v11 == v15 && v9 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_1001C777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = type metadata accessor for NetworkPath();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[30] = v7;
  v5[31] = type metadata accessor for MainActor();
  v5[32] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[33] = v8;
  *v8 = v5;
  v8[1] = sub_1001C78A8;

  return static NetworkPathService.read()(v7);
}

uint64_t sub_1001C78A8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001C79E4, v1, v0);
}

uint64_t sub_1001C79E4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);

  v5 = *(v4 + 16);
  v5(v1, v2, v3);
  v6 = (*(v4 + 88))(v1, v3);
  if (v6 != enum case for NetworkPath.unavailable(_:) && v6 != enum case for NetworkPath.disconnected(_:) && v6 != enum case for NetworkPath.cellular(_:))
  {
    if (v6 != enum case for NetworkPath.wifi(_:) && v6 != enum case for NetworkPath.wired(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    goto LABEL_16;
  }

  v9 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 184) = v9;
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v9 + 40))
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v10 = *(*(v0 + 200) + 16) != 0;
LABEL_17:
  v12 = *(v0 + 224);
  v13 = *(v0 + 192);
  v5(v12, *(v0 + 240), *(v0 + 208));
  sub_1001C3504(v10, v12, v13);
  swift_getKeyPath();
  *(v0 + 176) = v13;
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10001F620(v13 + 48, v0 + 16, &qword_1003B6720);
  LOBYTE(v13) = *(v0 + 16);
  sub_100051124((v0 + 24), v0 + 112);
  *(v0 + 64) = v13;
  sub_100051124((v0 + 112), v0 + 72);
  sub_100009EBC(v0 + 64, &qword_1003B6720);
  if ((v13 & 1) == 0)
  {
    sub_1001C7D24(0, *(v0 + 200));
  }

  (*(*(v0 + 216) + 8))(*(v0 + 240), *(v0 + 208));

  v14 = *(v0 + 8);

  return v14();
}

void sub_1001C7D24(int a1, uint64_t a2)
{
  v38 = type metadata accessor for Locale();
  isa = v38[-1].isa;
  __chkstk_darwin(v38);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2920);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Downloading languages using cellular: %{BOOL}d", v11, 8u);
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    v32 = v2;
    v34 = a1;
    v39 = _swiftEmptyArrayStorage;
    sub_1000C4B4C(0, v12, 0);
    v13 = v39;
    v15 = *(isa + 2);
    v14 = isa + 16;
    v16 = v14[64];
    v33 = a2;
    v17 = a2 + ((v16 + 32) & ~v16);
    v35 = *(v14 + 7);
    v36 = v15;
    v37 = v14;
    v18 = (v14 - 8);
    do
    {
      v19 = v38;
      v36(v7, v17, v38);
      v20 = Locale.identifier.getter();
      v22 = v21;
      (*v18)(v7, v19);
      v39 = v13;
      v24 = v13[2];
      v23 = v13[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000C4B4C((v23 > 1), v24 + 1, 1);
        v13 = v39;
      }

      v13[2] = v24 + 1;
      v25 = &v13[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v17 += v35;
      --v12;
    }

    while (v12);
    swift_getKeyPath();
    v26 = v32;
    v39 = v32;
    sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = v26[2];
    swift_getKeyPath();
    v39 = v27;
    sub_1001CC464(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = swift_allocObject();
    v28[2] = v13;
    v28[3] = v26;
    v28[4] = v33;

    dispatch thunk of AudioAccessoryAssetDownLoadService.download(localIdentifiers:useCellular:errorHandler:)();
  }

  else
  {
    v38 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v38, v29, "Not requesting any languages download since no languages were specified", v30, 2u);
    }

    v31 = v38;
  }
}

void sub_1001C81C0(uint64_t a1)
{
  if (a1)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D2920);

    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v4 = 136446466;
      v7 = Array.description.getter();
      v9 = sub_10028D78C(v7, v8, &v20);

      *(v4 + 4) = v9;
      *(v4 + 12) = 2112;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v10;
      *v5 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "Language download of locales '%{public}s' failed: %@", v4, 0x16u);
      sub_100009EBC(v5, &unk_1003AECA0);

      sub_100008664(v6);
    }

    sub_1001C43DC(v11);
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D2920);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      v16 = Array.description.getter();
      v18 = sub_10028D78C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Language download of locales: %{public}s) successful", v14, 0xCu);
      sub_100008664(v15);
    }
  }
}

void sub_1001C8500()
{
  v1 = v0;
  v262 = type metadata accessor for Locale();
  v2 = *(v262 - 8);
  v3 = __chkstk_darwin(v262);
  v239 = &v231[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v240 = &v231[-v6];
  v7 = __chkstk_darwin(v5);
  v253 = &v231[-v8];
  v9 = __chkstk_darwin(v7);
  v238 = &v231[-v10];
  v11 = __chkstk_darwin(v9);
  v252 = &v231[-v12];
  v13 = __chkstk_darwin(v11);
  v15 = &v231[-v14];
  v16 = __chkstk_darwin(v13);
  v249 = &v231[-v17];
  v18 = __chkstk_darwin(v16);
  v248 = &v231[-v19];
  v20 = __chkstk_darwin(v18);
  v260 = &v231[-v21];
  __chkstk_darwin(v20);
  v261 = &v231[-v22];
  v23 = sub_100005AD4(&qword_1003AFCE0);
  v24 = __chkstk_darwin(v23 - 8);
  KeyPath = &v231[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v24);
  v242 = &v231[-v28];
  v29 = __chkstk_darwin(v27);
  v241 = &v231[-v30];
  v31 = __chkstk_darwin(v29);
  v258 = &v231[-v32];
  v33 = __chkstk_darwin(v31);
  v259 = &v231[-v34];
  v35 = __chkstk_darwin(v33);
  v37 = &v231[-v36];
  __chkstk_darwin(v35);
  v39 = &v231[-v38];
  if (qword_1003A92B0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v250 = v15;
  v243 = type metadata accessor for Logger();
  v40 = sub_1000078E8(v243, qword_1003D2920);

  v255 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  LODWORD(v257) = v42;
  v43 = os_log_type_enabled(v41, v42);
  v44 = &unk_1003B6000;
  v244 = KeyPath;
  v256 = v2;
  v251 = v1;
  if (v43)
  {
    v254 = v41;
    v45 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v267[0] = v246;
    v247 = v45;
    *v45 = 136315394;
    swift_getKeyPath();
    v46 = OBJC_IVAR____TtC17SequoiaTranslator32PersonalTranslatorStartViewModel___observationRegistrar;
    v266[0] = v1;
    v47 = sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
    v245 = v46;
    v237 = v47;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v48 = v2;
    v49 = *(v1 + 16);
    swift_getKeyPath();
    v266[0] = v49;
    v50 = sub_1001CC464(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);

    v236 = v50;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v51 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
    swift_beginAccess();
    sub_10001F620(v49 + v51, v39, &qword_1003AFCE0);

    v52 = v262;
    v53 = *(v2 + 48);
    if (v53(v39, 1, v262))
    {
      sub_100009EBC(v39, &qword_1003AFCE0);
      v54 = 0xE300000000000000;
      v55 = 7104878;
    }

    else
    {
      v57 = v261;
      (*(v48 + 16))(v261, v39, v52);
      sub_100009EBC(v39, &qword_1003AFCE0);
      v58 = Locale.identifier.getter();
      v54 = v59;
      (*(v48 + 8))(v57, v52);
      v55 = v58;
    }

    v60 = sub_10028D78C(v55, v54, v267);

    v61 = v247;
    *(v247 + 1) = v60;
    *(v61 + 12) = 2080;
    swift_getKeyPath();
    v56 = v251;
    v266[0] = v251;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v62 = *(v56 + 16);
    swift_getKeyPath();
    v266[0] = v62;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v63 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
    swift_beginAccess();
    sub_10001F620(v62 + v63, v37, &qword_1003AFCE0);

    if (v53(v37, 1, v52))
    {
      sub_100009EBC(v37, &qword_1003AFCE0);
      v64 = 0xE300000000000000;
      v44 = &unk_1003B6000;
      v65 = 7104878;
    }

    else
    {
      v66 = v256;
      v67 = v261;
      (*(v256 + 16))(v261, v37, v52);
      sub_100009EBC(v37, &qword_1003AFCE0);
      v68 = Locale.identifier.getter();
      v64 = v69;
      (*(v66 + 8))(v67, v52);
      v65 = v68;
      v44 = &unk_1003B6000;
    }

    v70 = sub_10028D78C(v65, v64, v267);

    *(v61 + 14) = v70;
    v71 = v254;
    _os_log_impl(&_mh_execute_header, v254, v257, "Default locales: Checking if need to be set. Environment: %s, DeviceOwner: %s", v61, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v56 = v1;
  }

  swift_getKeyPath();
  v72 = v44[289];
  v267[0] = v56;
  v73 = sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = v56;
  v75 = *(v56 + 16);
  swift_getKeyPath();
  v267[0] = v75;
  v76 = sub_1001CC464(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v77 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  v78 = v259;
  sub_10001F620(v75 + v77, v259, &qword_1003AFCE0);

  v257 = *(v256 + 48);
  LODWORD(v77) = v257(v78, 1, v262);
  sub_100009EBC(v78, &qword_1003AFCE0);
  if (v77 != 1)
  {
    swift_getKeyPath();
    v266[0] = v74;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v79 = *(v74 + 16);
    swift_getKeyPath();
    v266[0] = v79;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v80 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
    swift_beginAccess();
    v81 = v79 + v80;
    v82 = v258;
    sub_10001F620(v81, v258, &qword_1003AFCE0);

    LODWORD(v79) = v257(v82, 1, v262);
    sub_100009EBC(v82, &qword_1003AFCE0);
    if (v79 != 1)
    {
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        v95 = "Default locales: Already set";
LABEL_63:
        _os_log_impl(&_mh_execute_header, v92, v93, v95, v94, 2u);
      }

LABEL_64:

      return;
    }
  }

  v245 = v73;
  v246 = v72;
  v237 = v76;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "Default locales: Setting now", v85, 2u);
  }

  KeyPath = swift_getKeyPath();
  v86 = v251;
  v266[0] = v251;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v86[3];

  v37 = LanguageSelectionViewModel.availableLanguages.getter();

  v266[0] = _swiftEmptyArrayStorage;
  v1 = v262;
  v87 = v256;
  if (v37 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v88 = v260;
    if (v39)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v88 = v260;
    if (v39)
    {
LABEL_17:
      v89 = 0;
      v2 = v37 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v1 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            v91 = v266[0];
            v1 = v262;
            v87 = v256;
            v88 = v260;
            goto LABEL_35;
          }
        }

        else
        {
          if (v89 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v90 = *(v37 + 8 * v89 + 32);

          v1 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_27;
          }
        }

        v15 = v90;
        if (dispatch thunk of LanguageSelectionDownloadModel.state.getter() == 2)
        {
          v15 = v266;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = *(v266[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v89;
        if (v1 == v39)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v91 = _swiftEmptyArrayStorage;
LABEL_35:

  LODWORD(v96) = v91 < 0 || (v91 & 0x4000000000000000) != 0;
  v97 = v249;
  if (v96 == 1)
  {
LABEL_129:
    v98 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v98 = *(v91 + 16);
  }

  LODWORD(v236) = v96;
  v260 = v98;
  if (v98)
  {
    v266[0] = _swiftEmptyArrayStorage;
    sub_1000C4D90(0, v98 & ~(v98 >> 63), 0);
    if (v98 < 0)
    {
      __break(1u);
LABEL_131:
      swift_once();
      goto LABEL_111;
    }

    v99 = 0;
    v100 = v266[0];
    v101 = v91;
    v259 = (v91 & 0xC000000000000001);
    v102 = v1;
    do
    {
      if (v259)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      LanguageSelectionDownloadModel.locale.getter();

      v103 = v100;
      v266[0] = v100;
      v105 = v100[2];
      v104 = v100[3];
      if (v105 >= v104 >> 1)
      {
        sub_1000C4D90(v104 > 1, v105 + 1, 1);
        v103 = v266[0];
      }

      ++v99;
      *(v103 + 16) = v105 + 1;
      v100 = v103;
      v106 = v103 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v105;
      v1 = v102;
      (*(v87 + 32))(v106, v88, v102);
    }

    while (v260 != v99);
    v97 = v249;
    v91 = v101;
  }

  else
  {
    v100 = _swiftEmptyArrayStorage;
  }

  v107 = v100;

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();

  v110 = os_log_type_enabled(v108, v109);
  v254 = v91;
  v247 = v107;
  if (v110)
  {
    v111 = v1;
    v112 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    v266[0] = v234;
    v235 = v112;
    *v112 = 136315138;
    v113 = *(v107 + 16);
    v114 = _swiftEmptyArrayStorage;
    if (v113)
    {
      v232 = v109;
      v233 = v108;
      v265[0] = _swiftEmptyArrayStorage;
      sub_1000C4B4C(0, v113, 0);
      v114 = v265[0];
      v116 = *(v87 + 16);
      v115 = (v87 + 16);
      v117 = v107 + ((v115[64] + 32) & ~v115[64]);
      v257 = *(v115 + 7);
      v258 = v116;
      v259 = v115;
      v118 = v115 - 8;
      do
      {
        v119 = v261;
        v120 = v262;
        (v258)(v261, v117, v262);
        v121 = Locale.identifier.getter();
        v123 = v122;
        (*v118)(v119, v120);
        v265[0] = v114;
        v125 = v114[2];
        v124 = v114[3];
        if (v125 >= v124 >> 1)
        {
          sub_1000C4B4C((v124 > 1), v125 + 1, 1);
          v114 = v265[0];
        }

        v114[2] = v125 + 1;
        v126 = &v114[2 * v125];
        v126[4] = v121;
        v126[5] = v123;
        v117 += v257;
        --v113;
      }

      while (v113);
      v111 = v262;
      v87 = v256;
      v97 = v249;
      v108 = v233;
      LOBYTE(v109) = v232;
    }

    v265[0] = v114;
    sub_100005AD4(&qword_1003A95C0);
    sub_100005E44();
    v127 = BidirectionalCollection<>.joined(separator:)();
    v129 = v128;

    v130 = sub_10028D78C(v127, v129, v266);

    v131 = v235;
    *(v235 + 1) = v130;
    _os_log_impl(&_mh_execute_header, v108, v109, "Default locales: Installed locales: %s", v131, 0xCu);
    sub_100008664(v234);

    v91 = v254;
    v1 = v111;
  }

  else
  {
  }

  if (v260 < 2)
  {

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      v95 = "Default locales: Not enough installed languages";
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v132 = v248;
  static Locale.current.getter();
  v259 = *(v87 + 16);
  v260 = v87 + 16;
  (v259)(v97, v132, v1);
  v96 = Logger.logObject.getter();
  v133 = v87;
  v134 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v134))
  {
    v135 = v1;
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v266[0] = v137;
    *v136 = 136315138;
    sub_1001CC464(&qword_1003B6C00, &type metadata accessor for Locale);
    v138 = dispatch thunk of CustomStringConvertible.description.getter();
    v140 = v139;
    v141 = v97;
    v97 = *(v133 + 8);
    (v97)(v141, v135);
    v142 = sub_10028D78C(v138, v140, v266);

    *(v136 + 4) = v142;
    _os_log_impl(&_mh_execute_header, v96, v134, "Default locales: Current locale: %s", v136, 0xCu);
    sub_100008664(v137);
    v91 = v254;

    v1 = v135;
  }

  else
  {

    v143 = v97;
    v97 = *(v133 + 8);
    (v97)(v143, v1);
  }

  v144 = v133;
  if (sub_1001C3B34(v248, v247, &type metadata accessor for Locale, &unk_1003B06F0, &type metadata accessor for Locale))
  {
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "Default locales: Current locale is installed", v147, 2u);
    }

    (v259)(v250, v248, v1);
  }

  else
  {
    if (v236)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v1 = *(v91 + 16);
    }

    v87 = 0;
    v88 = v91 & 0xC000000000000001;
    v258 = (v256 + 8);
    while (1)
    {
      if (v1 == v87)
      {
        goto LABEL_87;
      }

      if (v88)
      {
        v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v87, 1))
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v87 >= *(v91 + 16))
        {
          __break(1u);
          goto LABEL_129;
        }

        v91 = *(v91 + 8 * v87 + 32);

        if (__OFADD__(v87, 1))
        {
LABEL_86:
          __break(1u);
LABEL_87:
          v154 = v250;
          if (v1)
          {
            if (!v88)
            {
              v1 = v262;
              if (!*(v91 + 16))
              {
                __break(1u);
                return;
              }

              v155 = v238;
              goto LABEL_91;
            }
          }

          else
          {
            __break(1u);
          }

          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v155 = v238;
          v1 = v262;
LABEL_91:
          LanguageSelectionDownloadModel.locale.getter();

          (v259)(v155, v154, v1);
          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v266[0] = v159;
            *v158 = 136315138;
            v160 = Locale.identifier.getter();
            v161 = v155;
            v163 = v162;
            (v97)(v161, v262);
            v164 = sub_10028D78C(v160, v163, v266);

            *(v158 + 4) = v164;
            _os_log_impl(&_mh_execute_header, v156, v157, "Default locales: Randomly picked first installed locale as device owner locale: %s", v158, 0xCu);
            sub_100008664(v159);

            v1 = v262;
          }

          else
          {

            (v97)(v155, v1);
          }

          v144 = v256;
          goto LABEL_98;
        }
      }

      v96 = v97;
      v149 = v252;
      LanguageSelectionDownloadModel.locale.getter();
      v150 = Locale.identifier.getter();
      v152 = v151;
      v153 = v149;
      v97 = v96;
      (v96)(v153, v262);
      if (v150 == 0x53555F6E65 && v152 == 0xE500000000000000)
      {
        break;
      }

      v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v87;
      v91 = v254;
      if (v148)
      {
        goto LABEL_93;
      }
    }

LABEL_93:
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v165, v166, "Default locales: Using en_US as device owner locale", v167, 2u);
    }

    Locale.init(identifier:)();
    v144 = v256;
    v1 = v262;
  }

LABEL_98:
  v168 = v261;
  static Locale.current.getter();
  v169 = v247;
  Locale.ltDefaultTarget(for:availableLocales:map:)();
  v91 = v144 + 8;
  v258 = v97;
  (v97)(v168, v1);
  v170 = v1;
  v171 = *(v169 + 16);
  if (v171)
  {
    v266[0] = _swiftEmptyArrayStorage;
    sub_1000C4B4C(0, v171, 0);
    v172 = v266[0];
    v173 = v144;
    v174 = v169 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v257 = *(v173 + 72);
    do
    {
      v175 = v261;
      v176 = v262;
      (v259)(v261, v174, v262);
      v177 = Locale.identifier.getter();
      v179 = v178;
      v180 = v91;
      (v258)(v175, v176);
      v266[0] = v172;
      v182 = v172[2];
      v181 = v172[3];
      if (v182 >= v181 >> 1)
      {
        sub_1000C4B4C((v181 > 1), v182 + 1, 1);
        v172 = v266[0];
      }

      v172[2] = v182 + 1;
      v183 = &v172[2 * v182];
      v183[4] = v177;
      v183[5] = v179;
      v174 += v257;
      --v171;
      v91 = v180;
    }

    while (v171);

    v1 = v262;
    v144 = v256;
  }

  else
  {

    v172 = _swiftEmptyArrayStorage;
    v1 = v170;
  }

  v266[0] = Locale.identifier.getter();
  v266[1] = v184;
  __chkstk_darwin(v266[0]);
  *&v231[-16] = v266;
  v185 = sub_1000B74D0(sub_1001CC138, &v231[-32], v172);

  v98 = v1;
  if (v185)
  {
    v186 = Locale.identifier.getter();
    v188 = v187;
    if (v186 == Locale.identifier.getter() && v188 == v189)
    {
    }

    else
    {
      v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v190 & 1) == 0)
      {

        goto LABEL_115;
      }
    }
  }

  if (qword_1003A9268 != -1)
  {
    goto LABEL_131;
  }

LABEL_111:
  sub_1000078E8(v243, qword_1003D2848);
  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v266[0] = v194;
    *v193 = 136315138;
    swift_beginAccess();
    v195 = Locale.identifier.getter();
    v197 = sub_10028D78C(v195, v196, v266);

    *(v193 + 4) = v197;
    _os_log_impl(&_mh_execute_header, v191, v192, "Default locales: ltDefaultTarget returned an unexpected locale %s, randomly picking first installed locale instead", v193, 0xCu);
    sub_100008664(v194);

    v1 = v98;
  }

  v144 = v256;
  __chkstk_darwin(v198);
  *&v231[-16] = v250;
  v199 = sub_100199188(sub_1001CC158, &v231[-32], v254);

  if (v199)
  {
    v200 = v239;
    LanguageSelectionDownloadModel.locale.getter();

    v201 = v240;
    (*(v144 + 32))(v240, v200, v1);
    v202 = v253;
    swift_beginAccess();
    (*(v144 + 40))(v202, v201, v1);
LABEL_115:
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.default.getter();
    v205 = os_log_type_enabled(v203, v204);
    v252 = v91;
    if (v205)
    {
      v206 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v265[0] = v207;
      *v206 = 136315138;
      swift_beginAccess();
      v208 = Locale.identifier.getter();
      v210 = sub_10028D78C(v208, v209, v265);

      *(v206 + 4) = v210;
      v144 = v256;
      _os_log_impl(&_mh_execute_header, v203, v204, "Default locales: Setting environment locale: %s", v206, 0xCu);
      sub_100008664(v207);
    }

    swift_getKeyPath();
    v211 = v251;
    v265[0] = v251;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v212 = v211[2];
    v213 = v241;
    (v259)(v241, v250, v98);
    v214 = v144 + 56;
    v215 = *(v144 + 56);
    v256 = v214;
    v215(v213, 0, 1, v98);
    v216 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
    swift_beginAccess();
    v217 = v242;
    sub_10001F620(v212 + v216, v242, &qword_1003AFCE0);

    LOBYTE(v216) = sub_1001F6568(v217, v213);
    sub_100009EBC(v217, &qword_1003AFCE0);
    if (v216)
    {
      v218 = swift_getKeyPath();
      __chkstk_darwin(v218);
      *&v231[-16] = v212;
      *&v231[-8] = v213;
      v264 = v212;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10001F620(v213, v217, &qword_1003AFCE0);
      sub_1001D26C0(v217);
    }

    sub_100009EBC(v213, &qword_1003AFCE0);
    swift_getKeyPath();
    v219 = v251;
    v264 = v251;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v220 = v219[2];
    v221 = v253;
    swift_beginAccess();
    v222 = v244;
    (v259)(v244, v221, v98);
    v215(v222, 0, 1, v98);
    v223 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
    swift_beginAccess();
    sub_10001F620(v220 + v223, v217, &qword_1003AFCE0);

    LOBYTE(v223) = sub_1001F6568(v217, v222);
    sub_100009EBC(v217, &qword_1003AFCE0);
    if (v223)
    {
      v224 = swift_getKeyPath();
      __chkstk_darwin(v224);
      v225 = v244;
      *&v231[-16] = v220;
      *&v231[-8] = v225;
      v263 = v220;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v222 = v244;

      v226 = v258;
      (v258)(v248, v98);
    }

    else
    {
      sub_10001F620(v222, v217, &qword_1003AFCE0);
      sub_1001D2774(v217);

      v226 = v258;
      (v258)(v248, v98);
    }

    sub_100009EBC(v222, &qword_1003AFCE0);
    (v226)(v253, v98);
    (v226)(v250, v98);
    return;
  }

  v227 = Logger.logObject.getter();
  v228 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    *v229 = 0;
    _os_log_impl(&_mh_execute_header, v227, v228, "Default locales: Cannot find any installed locale except default device owner locale, aborting default locale setup", v229, 2u);
  }

  v230 = v258;
  (v258)(v248, v1);
  (v230)(v253, v1);
  (v230)(v250, v1);
}

uint64_t sub_1001CA580()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LanguageSelectionDownloadModel.locale.getter();
  v4 = Locale.identifier.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == Locale.identifier.getter() && v6 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1001CA6D8()
{

  sub_100009EBC(v0 + 48, &qword_1003B6720);
  v1 = OBJC_IVAR____TtC17SequoiaTranslator32PersonalTranslatorStartViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalTranslatorStartViewModel()
{
  result = qword_1003B6938;
  if (!qword_1003B6938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CA7F8()
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

unint64_t sub_1001CA8DC()
{
  result = qword_1003B6BF8;
  if (!qword_1003B6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6BF8);
  }

  return result;
}

uint64_t sub_1001CA930(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002C1270(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1001CA9AC(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1001CA9AC(uint64_t *a1)
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
        type metadata accessor for LanguageSelectionDownloadModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1001CAD9C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1001CAAB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001CAAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = type metadata accessor for Locale();
  v8 = __chkstk_darwin(v46);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v44 = &v39 - v12;
  v40 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v43 = (v11 + 8);
    v47 = v13;
    v14 = (v13 + 8 * a3 - 8);
    v15 = a1 - a3;
    v16 = v46;
LABEL_6:
    v41 = v14;
    v42 = a3;
    v18 = *(v47 + 8 * a3);
    v19 = v15;
    v48 = v15;
    while (1)
    {
      v49 = v19;
      v20 = *v14;

      v21 = v44;
      v52 = v18;
      LanguageSelectionDownloadModel.locale.getter();
      v22 = v45;
      static Locale.current.getter();
      v23 = Locale.sqDisplayName(context:in:)();
      v25 = v24;
      v26 = *v43;
      (*v43)(v22, v16);
      v26(v21, v16);
      if (!v25)
      {
        v23 = 0;
      }

      v27 = 0xE000000000000000;
      if (v25)
      {
        v27 = v25;
      }

      v50 = v27;
      v51 = v20;
      LanguageSelectionDownloadModel.locale.getter();
      static Locale.current.getter();
      v28 = Locale.sqDisplayName(context:in:)();
      v30 = v29;
      v26(v22, v16);
      v31 = v21;
      v32 = v50;
      v26(v31, v16);
      if (v30)
      {
        v33 = v28;
      }

      else
      {
        v33 = 0;
      }

      if (v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      if (v23 == v33 && v32 == v34)
      {

        v17 = v48;
LABEL_5:
        a3 = v42 + 1;
        v14 = v41 + 1;
        v15 = v17 - 1;
        if (v42 + 1 == v40)
        {
          return result;
        }

        goto LABEL_6;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v48;
      v36 = v49;
      if ((v35 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v37 = *v14;
      v18 = v14[1];
      *v14 = v18;
      v14[1] = v37;
      --v14;
      v38 = __CFADD__(v36, 1);
      v19 = v36 + 1;
      if (v38)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001CAD9C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v130 = type metadata accessor for Locale();
  v9 = __chkstk_darwin(v130);
  v129 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v128 = &v116 - v13;
  v124 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_116:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_118:
      v137 = v16;
      v112 = *(v16 + 2);
      if (v112 >= 2)
      {
        while (*v124)
        {
          v113 = *&v16[16 * v112];
          v114 = *&v16[16 * v112 + 24];
          sub_1001CB738((*v124 + 8 * v113), (*v124 + 8 * *&v16[16 * v112 + 16]), (*v124 + 8 * v114), v5);
          if (v6)
          {
          }

          if (v114 < v113)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1002C08D4(v16);
          }

          if (v112 - 2 >= *(v16 + 2))
          {
            goto LABEL_143;
          }

          v115 = &v16[16 * v112];
          *v115 = v113;
          *(v115 + 1) = v114;
          v137 = v16;
          result = sub_1002C0848(v112 - 1);
          v16 = v137;
          v112 = *(v137 + 2);
          if (v112 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_1002C08D4(v16);
    v16 = result;
    goto LABEL_118;
  }

  v116 = a4;
  v15 = 0;
  v127 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    v119 = v15;
    if (v15 + 1 >= v14)
    {
      ++v15;
    }

    else
    {
      v125 = v14;
      v17 = *v124;
      v18 = *(*v124 + 8 * (v15 + 1));
      v135 = *(*v124 + 8 * v15);
      v136 = v18;

      LODWORD(v123) = sub_1001C7584();
      if (v6)
      {
      }

      v117 = 0;

      v19 = v15 + 2;
      v126 = 8 * v15;
      v20 = (v17 + 8 * v15 + 16);
      v15 = v125;
      v122 = v16;
      while (v15 != v19)
      {
        v134 = v19;
        v22 = *(v20 - 1);
        v21 = *v20;

        v23 = v128;
        v132 = v21;
        LanguageSelectionDownloadModel.locale.getter();
        v24 = v129;
        static Locale.current.getter();
        v25 = Locale.sqDisplayName(context:in:)();
        v27 = v26;
        v28 = *v127;
        v29 = v130;
        (*v127)(v24, v130);
        v28(v23, v29);
        if (v27)
        {
          v30 = v25;
        }

        else
        {
          v30 = 0;
        }

        v131 = v30;
        if (v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = 0xE000000000000000;
        }

        v133 = v22;
        LanguageSelectionDownloadModel.locale.getter();
        static Locale.current.getter();
        v32 = Locale.sqDisplayName(context:in:)();
        v34 = v33;
        v28(v24, v29);
        v28(v23, v29);
        if (v34)
        {
          v35 = v32;
        }

        else
        {
          v35 = 0;
        }

        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0xE000000000000000;
        }

        if (v131 == v35 && v31 == v36)
        {
          v5 = 0;
        }

        else
        {
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v16 = v122;

        v19 = v134 + 1;
        ++v20;
        v15 = v125;
        if ((v123 ^ v5))
        {
          v15 = v134;
          break;
        }
      }

      v6 = v117;
      if (v123)
      {
        v37 = v119;
        if (v15 < v119)
        {
          goto LABEL_148;
        }

        if (v119 < v15)
        {
          v38 = 8 * v15 - 8;
          v39 = v15;
          do
          {
            if (v37 != --v39)
            {
              v40 = *v124;
              if (!*v124)
              {
                goto LABEL_152;
              }

              v41 = *(v40 + v126);
              *(v40 + v126) = *(v40 + v38);
              *(v40 + v38) = v41;
            }

            ++v37;
            v38 -= 8;
            v126 += 8;
          }

          while (v37 < v39);
        }
      }
    }

    v42 = v124[1];
    if (v15 < v42)
    {
      if (__OFSUB__(v15, v119))
      {
        goto LABEL_145;
      }

      if (v15 - v119 < v116)
      {
        break;
      }
    }

LABEL_65:
    if (v15 < v119)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028C748(0, *(v16 + 2) + 1, 1, v16);
      v16 = result;
    }

    v67 = *(v16 + 2);
    v66 = *(v16 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_10028C748((v66 > 1), v67 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v68;
    v69 = &v16[16 * v67];
    *(v69 + 4) = v119;
    *(v69 + 5) = v15;
    v70 = *v118;
    if (!*v118)
    {
      goto LABEL_154;
    }

    if (v67)
    {
      while (1)
      {
        v5 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v71 = *(v16 + 4);
          v72 = *(v16 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_85:
          if (v74)
          {
            goto LABEL_133;
          }

          v87 = &v16[16 * v68];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_136;
          }

          v93 = &v16[16 * v5 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_140;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v5 = v68 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v97 = &v16[16 * v68];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_99:
        if (v92)
        {
          goto LABEL_135;
        }

        v100 = &v16[16 * v5];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_138;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_106:
        v108 = v5 - 1;
        if (v5 - 1 >= v68)
        {
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
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v124)
        {
          goto LABEL_151;
        }

        v109 = *&v16[16 * v108 + 32];
        v110 = *&v16[16 * v5 + 40];
        sub_1001CB738((*v124 + 8 * v109), (*v124 + 8 * *&v16[16 * v5 + 32]), (*v124 + 8 * v110), v70);
        if (v6)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1002C08D4(v16);
        }

        if (v108 >= *(v16 + 2))
        {
          goto LABEL_130;
        }

        v111 = &v16[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v137 = v16;
        result = sub_1002C0848(v5);
        v16 = v137;
        v68 = *(v137 + 2);
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v16[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_131;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_132;
      }

      v82 = &v16[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_134;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_137;
      }

      if (v86 >= v78)
      {
        v104 = &v16[16 * v5 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_141;
        }

        if (v73 < v107)
        {
          v5 = v68 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

LABEL_3:
    v14 = v124[1];
    if (v15 >= v14)
    {
      goto LABEL_116;
    }
  }

  if (__OFADD__(v119, v116))
  {
    goto LABEL_146;
  }

  if (v119 + v116 < v42)
  {
    v42 = v119 + v116;
  }

  if (v42 < v119)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v15 == v42)
  {
    goto LABEL_65;
  }

  v120 = v42;
  v122 = v16;
  v117 = v6;
  v126 = *v124;
  v43 = (v126 + 8 * v15 - 8);
  v44 = v119 - v15;
LABEL_46:
  v125 = v15;
  v45 = *(v126 + 8 * v15);
  v121 = v44;
  v123 = v43;
  while (1)
  {
    v131 = v44;
    v46 = *v43;

    v47 = v128;
    v134 = v45;
    LanguageSelectionDownloadModel.locale.getter();
    v48 = v129;
    static Locale.current.getter();
    v49 = Locale.sqDisplayName(context:in:)();
    v51 = v50;
    v5 = v127;
    v52 = *v127;
    v53 = v130;
    (*v127)(v48, v130);
    v52(v47, v53);
    if (!v51)
    {
      v49 = 0;
    }

    v54 = 0xE000000000000000;
    if (v51)
    {
      v54 = v51;
    }

    v132 = v54;
    v133 = v46;
    LanguageSelectionDownloadModel.locale.getter();
    static Locale.current.getter();
    v55 = Locale.sqDisplayName(context:in:)();
    v57 = v56;
    v52(v48, v53);
    v58 = v53;
    v59 = v132;
    v52(v47, v58);
    if (v57)
    {
      v60 = v55;
    }

    else
    {
      v60 = 0;
    }

    if (v57)
    {
      v61 = v57;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    if (v49 == v60 && v59 == v61)
    {

LABEL_45:
      v15 = v125 + 1;
      v43 = v123 + 1;
      v44 = v121 - 1;
      if (v125 + 1 == v120)
      {
        v6 = v117;
        v16 = v122;
        v15 = v120;
        goto LABEL_65;
      }

      goto LABEL_46;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {
      goto LABEL_45;
    }

    v63 = v131;
    if (!v126)
    {
      break;
    }

    v64 = *v43;
    v45 = v43[1];
    *v43 = v45;
    v43[1] = v64;
    --v43;
    v65 = __CFADD__(v63, 1);
    v44 = v63 + 1;
    if (v65)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_1001CB738(char *a1, char *a2, void *a3, char *a4)
{
  v67 = type metadata accessor for Locale();
  v8 = *(v67 - 8);
  v9 = __chkstk_darwin(v67);
  v66 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v58 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v70 = a3;
  v14 = a3 - a2;
  v15 = v14 / 8;
  if (v12 >> 3 >= v14 / 8)
  {
    v68 = a1;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v71 = &a4[8 * v15];
    if (v14 >= 8 && a2 > v68)
    {
      v59 = (v8 + 8);
      v35 = v70;
      v69 = a4;
      v36 = v67;
LABEL_38:
      v64 = a2;
      v37 = a2 - 8;
      v38 = v35 - 1;
      v39 = v71;
      v60 = a2 - 8;
      do
      {
        v70 = v38;
        v40 = *(v39 - 1);
        v61 = v39 - 8;
        v41 = *v37;

        v42 = v65;
        v62 = v40;
        LanguageSelectionDownloadModel.locale.getter();
        v43 = v66;
        static Locale.current.getter();
        v44 = Locale.sqDisplayName(context:in:)();
        v46 = v45;
        v47 = *v59;
        (*v59)(v43, v36);
        v47(v42, v36);
        if (v46)
        {
          v48 = v44;
        }

        else
        {
          v48 = 0;
        }

        if (!v46)
        {
          v46 = 0xE000000000000000;
        }

        v63 = v41;
        LanguageSelectionDownloadModel.locale.getter();
        static Locale.current.getter();
        v49 = Locale.sqDisplayName(context:in:)();
        v51 = v50;
        v47(v43, v36);
        v47(v42, v36);
        if (v51)
        {
          v52 = v49;
        }

        else
        {
          v52 = 0;
        }

        if (v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = 0xE000000000000000;
        }

        if (v48 == v52 && v46 == v53)
        {
          v54 = 0;
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a4 = v69;
        if (v54)
        {
          v35 = v70;
          v56 = v60;
          if (v70 + 1 != v64)
          {
            *v70 = *v60;
          }

          if (v71 <= a4 || (a2 = v56, v56 <= v68))
          {
            a2 = v56;
            goto LABEL_64;
          }

          goto LABEL_38;
        }

        v55 = v70;
        v39 = v61;
        if (v70 + 1 != v71)
        {
          *v70 = *v61;
        }

        v38 = v55 - 1;
        v71 = v39;
        v37 = v60;
      }

      while (v39 > a4);
      v71 = v39;
      a2 = v64;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v71 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < v70)
    {
      v61 = (v8 + 8);
      v16 = v66;
      while (1)
      {
        v68 = a1;
        v69 = a4;
        v64 = a2;
        v17 = *a2;
        v18 = *a4;

        v19 = v65;
        v62 = v17;
        LanguageSelectionDownloadModel.locale.getter();
        static Locale.current.getter();
        v20 = Locale.sqDisplayName(context:in:)();
        v22 = v21;
        v23 = *v61;
        v24 = v67;
        (*v61)(v16, v67);
        v23(v19, v24);
        if (v22)
        {
          v25 = v20;
        }

        else
        {
          v25 = 0;
        }

        if (!v22)
        {
          v22 = 0xE000000000000000;
        }

        v63 = v18;
        LanguageSelectionDownloadModel.locale.getter();
        static Locale.current.getter();
        v26 = Locale.sqDisplayName(context:in:)();
        v28 = v27;
        v23(v16, v24);
        v23(v19, v24);
        v29 = v28 ? v26 : 0;
        v30 = v28 ? v28 : 0xE000000000000000;
        if (v25 == v29 && v22 == v30)
        {
          break;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          goto LABEL_27;
        }

        v32 = v64;
        a2 = v64 + 8;
        v33 = v68;
        a4 = v69;
        v34 = v70;
        if (v68 != v64)
        {
          goto LABEL_28;
        }

LABEL_29:
        a1 = v33 + 8;
        if (a4 >= v71 || a2 >= v34)
        {
          goto LABEL_31;
        }
      }

LABEL_27:
      v33 = v68;
      v32 = v69;
      a4 = v69 + 8;
      a2 = v64;
      v34 = v70;
      if (v68 == v69)
      {
        goto LABEL_29;
      }

LABEL_28:
      *v33 = *v32;
      goto LABEL_29;
    }

LABEL_31:
    a2 = a1;
  }

LABEL_64:
  if (a2 != a4 || a2 >= &a4[(v71 - a4 + (v71 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v71 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1001CBD10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = sub_100005AD4(&qword_1003AFCE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  type metadata accessor for LanguageSelectionViewModel();
  v13 = type metadata accessor for Locale();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v14(v10, 1, 1, v13);
  *(v2 + 24) = LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:)();
  *(v2 + 32) = _swiftEmptyArrayStorage;
  *(v2 + 40) = 0;
  *(v2 + 42) = 2;
  v15 = type metadata accessor for NetworkPath();
  v25 = v15;
  v26 = &off_1003888D8;
  v16 = sub_100050D60(&v24);
  (*(*(v15 - 8) + 104))(v16, enum case for NetworkPath.unavailable(_:), v15);
  sub_100051124(&v24, v23);
  LOBYTE(v22[0]) = 0;
  sub_100051124(v23, v22 + 8);
  v21[0] = v22[0];
  v21[1] = v22[1];
  v21[2] = v22[2];
  *(v2 + 48) = v22[0];
  sub_100051124((v21 + 8), v2 + 56);
  ObservationRegistrar.init()();
  *(v2 + 16) = a1;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v2;
  sub_10005E36C(0, 0, v6, &unk_1002E6B98, v19);

  return v2;
}

uint64_t sub_1001CC02C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CC06C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_1001C5898(a1, v4, v5, v6);
}

uint64_t sub_1001CC1C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CC214()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CC25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_1001C777C(a1, v4, v5, v7, v6);
}

uint64_t sub_1001CC3EC()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1001CC428()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1001CC464(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CC510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001CC56C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1001CC5D4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UIView) init];
  v11 = objc_opt_self();
  v12 = [v11 clearColor];
  [v10 setBackgroundColor:v12];

  if (a2)
  {
    v13 = v4;
    v14 = objc_opt_self();
    v27 = a2;
    v15 = [v14 playerLayerWithPlayer:v27];
    [v15 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    v16 = v15;
    v17 = [v11 clearColor];
    v18 = [v17 CGColor];

    [v16 setBackgroundColor:v18];
    v19 = [v10 layer];
    [v19 addSublayer:v16];

    sub_10000A2CC(0, &qword_1003A9C40);
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    *(v21 + 24) = v10;
    aBlock[4] = sub_1001CD0A0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    aBlock[3] = &unk_100388B38;
    v22 = _Block_copy(aBlock);
    v23 = v16;
    v24 = v10;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000115AC();
    sub_100005AD4(&unk_1003A9C50);
    sub_100011604();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v13 + 8))(v6, v3);
    (*(v28 + 8))(v9, v29);
  }

  return v10;
}

id sub_1001CC9B4(void *a1, void *a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions:1];
  [a2 bounds];
  [a1 setFrame:?];

  return [v4 commit];
}

void sub_1001CCA4C(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = [a1 layer];
  v12 = [v11 sublayers];

  if (!v12)
  {
    return;
  }

  sub_10000A2CC(0, &qword_1003B6C10);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v14 = *(v13 + 32);
      }

      v25 = v14;

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = v15;
      if ((a6 & 1) == 0)
      {
        v17 = *&a5;
        v18 = [a1 layer];
        sub_1001CCEA4(*&a4, v17);
        sub_10017A46C(v19);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v18 setFilters:isa];
      }

      v21 = [v16 player];
      if (v21)
      {
        v22 = v21;

        if (v22 == a3)
        {
LABEL_13:
          v25 = v25;
          [a1 bounds];
          [v16 setFrame:?];

LABEL_14:

          return;
        }
      }

      else if (!a3)
      {
        goto LABEL_13;
      }

      v23 = [v16 player];
      [v23 pause];

      [v16 setPlayer:a3];
      v24 = [v16 player];
      [v24 play];

      goto LABEL_13;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }
}

uint64_t sub_1001CCD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001CD0C0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001CCDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001CD0C0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001CCE24()
{
  sub_1001CD0C0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1001CCE50()
{
  result = qword_1003B6C08;
  if (!qword_1003B6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6C08);
  }

  return result;
}

double sub_1001CCEA4(double a1, double a2)
{
  v3 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorMatrix];
  *&a2 = a2;
  v4 = objc_opt_self();
  v12 = LODWORD(a2);
  v13 = *(&CAColorMatrixIdentity + 4);
  v14 = *(&CAColorMatrixIdentity + 5);
  v15 = LODWORD(a2);
  v16 = *(&CAColorMatrixIdentity + 28);
  v17 = *(&CAColorMatrixIdentity + 11);
  v18 = LODWORD(a2);
  *v19 = *(&CAColorMatrixIdentity + 52);
  *&v19[12] = *(&CAColorMatrixIdentity + 4);
  v5 = [v4 valueWithCAColorMatrix:&v12];
  v6 = String._bridgeToObjectiveC()();
  [v3 setValue:v5 forKey:v6];

  v7 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterBias];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setValue:isa forKey:v9];

  sub_100005AD4(&unk_1003AFCC0);
  v10 = swift_allocObject();
  *&result = 2;
  *(v10 + 16) = xmmword_1002D5560;
  *(v10 + 32) = v3;
  *(v10 + 40) = v7;
  return result;
}

uint64_t sub_1001CD060()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CD0A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001CD0C0()
{
  result = qword_1003B6C18;
  if (!qword_1003B6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6C18);
  }

  return result;
}

uint64_t sub_1001CD120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1001CD17C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1001CD20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  State.init(wrappedValue:)();
  v8 = v23;
  State.init(wrappedValue:)();
  v9 = v23;
  v10 = *(&v23 + 1);
  State.init(wrappedValue:)();
  v11 = v23;
  v12 = *(&v23 + 1);
  v19 = v23;
  LOBYTE(v20) = v23;
  *(&v20 + 1) = *(&v23 + 1);
  LOBYTE(v21) = v23;
  *(&v21 + 1) = *(&v23 + 1);
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v13 = sub_100005AD4(&qword_1003B6C38);
  (*(*(v13 - 8) + 16))(a3, v4, v13);
  v14 = (a3 + *(sub_100005AD4(&qword_1003B6C40) + 36));
  v15 = v20;
  *v14 = v23;
  v14[1] = v15;
  v16 = v22;
  v14[2] = v21;
  v14[3] = v16;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = a1;
  v29 = a2;
  sub_10001F620(&v19, &v18, &qword_1003B6CB0);
  return sub_100009EBC(&v23, &qword_1003B6CB0);
}

uint64_t sub_1001CD3AC@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v122 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v119 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v118 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for EnvironmentValues();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for ContentMarginPlacement();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for ScrollIndicatorVisibility();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v124 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003B6C20);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v97 - v12;
  v126 = sub_100005AD4(&qword_1003B6C28);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v15 = &v97 - v14;
  v128 = sub_100005AD4(&qword_1003B6C30);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v17 = &v97 - v16;
  v99 = sub_100005AD4(&qword_1003B6C38);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v134 = &v97 - v18;
  v106 = sub_100005AD4(&qword_1003B6C40);
  __chkstk_darwin(v106);
  v101 = &v97 - v19;
  v110 = sub_100005AD4(&qword_1003B6C48);
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v97 - v20;
  v104 = sub_100005AD4(&qword_1003B6C50);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v97 - v21;
  v100 = sub_100005AD4(&qword_1003B6C58);
  __chkstk_darwin(v100);
  v109 = &v97 - v22;
  v107 = sub_100005AD4(&qword_1003B6C60);
  __chkstk_darwin(v107);
  v112 = &v97 - v23;
  v111 = sub_100005AD4(&qword_1003B6C68);
  __chkstk_darwin(v111);
  v114 = &v97 - v24;
  v113 = sub_100005AD4(&qword_1003B6C70);
  __chkstk_darwin(v113);
  v117 = &v97 - v25;
  v115 = sub_100005AD4(&qword_1003B6C78);
  __chkstk_darwin(v115);
  v116 = &v97 - v26;
  v138 = v1;
  v139 = v1;
  static Axis.Set.vertical.getter();
  sub_100005AD4(&qword_1003B6C80);
  sub_10001BAEC(&qword_1003B6C88, &qword_1003B6C80);
  ScrollView.init(_:showsIndicators:content:)();
  static UnitPoint.bottom.getter();
  v27 = sub_10001BAEC(&qword_1003B6C90, &qword_1003B6C20);
  View.defaultScrollAnchor(_:)();
  (*(v11 + 8))(v13, v10);
  v28 = v124;
  static ScrollIndicatorVisibility.hidden.getter();
  sub_100005AD4(&qword_1003B6C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D1370;
  v30 = static Axis.Set.vertical.getter();
  *(inited + 32) = v30;
  v31 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v31;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v30)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v31)
  {
    Axis.Set.init(rawValue:)();
  }

  v32 = v134;
  *&v141 = v10;
  *(&v141 + 1) = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v126;
  View.scrollIndicators(_:axes:)();
  (*(v129 + 8))(v28, v130);
  (*(v125 + 8))(v15, v34);
  static Edge.Set.horizontal.getter();
  v35 = v131;
  static ContentMarginPlacement.scrollContent.getter();
  *&v141 = v34;
  *(&v141 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v128;
  View.contentMargins(_:_:for:)();
  (*(v132 + 8))(v35, v133);
  (*(v127 + 8))(v17, v36);
  v147 = *(v138 + 8);
  v37 = *v138;
  v146 = *v138;
  v38 = v147;

  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v40 = v135;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v146, &qword_1003B61B8);
    (*(v136 + 8))(v40, v137);
  }

  v41 = sub_1001D483C();

  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v43 = v135;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v146, &qword_1003B61B8);
    (*(v136 + 8))(v43, v137);
    v37 = v141;
  }

  swift_getKeyPath();
  *&v141 = v37;
  v44 = sub_1001C1400(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v37 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
  v46 = *(v37 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8);
  v47 = *(v37 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16);
  sub_1000C7F84(v45, v46, v47);

  if (v47)
  {
    if ((v45 & 1) == 0)
    {
      result = sub_10008765C(v45, v46, v47);
      v49 = 1;
      goto LABEL_14;
    }
  }

  v49 = 0;
LABEL_14:
  if (__OFADD__(v41, v49))
  {
    __break(1u);
  }

  else
  {
    v137 = v44;
    v50 = v101;
    sub_1001CD20C(v138[7], v41 + v49, v101);
    (*(v98 + 8))(v32, v99);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *&v141 = String.init(localized:table:bundle:locale:comment:)();
    *(&v141 + 1) = v51;
    v52 = sub_1001D0860();
    v53 = sub_10001F278();
    v54 = v105;
    v55 = v106;
    View.navigationTitle<A>(_:)();

    sub_1001D0A08(v50);
    v56 = v121;
    v57 = v120;
    v58 = v122;
    (*(v121 + 104))(v120, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v122);
    *&v141 = v55;
    *(&v141 + 1) = &type metadata for String;
    v142 = v52;
    v143 = v53;
    swift_getOpaqueTypeConformance2();
    v59 = v102;
    v60 = v110;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v56 + 8))(v57, v58);
    (*(v108 + 8))(v54, v60);
    v61 = v109;
    (*(v103 + 32))(v109, v59, v104);
    v62 = &v61[*(v100 + 36)];
    *v62 = 1;
    *(v62 + 1) = sub_1001D0518;
    *(v62 + 2) = 0;
    v63 = [objc_opt_self() systemGroupedBackgroundColor];
    v64 = Color.init(uiColor:)();
    v65 = static SafeAreaRegions.all.getter();
    LOBYTE(v60) = static Edge.Set.all.getter();
    v66 = static Alignment.center.getter();
    v68 = v67;
    v69 = v61;
    v70 = v112;
    sub_100023BD4(v69, v112, &qword_1003B6C58);
    v71 = v70 + *(v107 + 36);
    *v71 = v64;
    *(v71 + 8) = v65;
    *(v71 + 16) = v60;
    *(v71 + 24) = v66;
    *(v71 + 32) = v68;
    v72 = static Alignment.center.getter();
    v74 = v73;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    if (_LTIsInternalInstall())
    {
      type metadata accessor for PersonalTranslatorViewModel();
      v75 = Environment.init<A>(_:)();
      v81 = v80;
      v77 = AppStorage.init<A>(wrappedValue:_:store:)();
      v78 = AppStorage.init<A>(wrappedValue:_:store:)();
      v76 = v81 & 1;
      v79 = 0x4034000000000000;
    }

    v82 = v70;
    v83 = v114;
    sub_100023BD4(v82, v114, &qword_1003B6C60);
    v84 = (v83 + *(v111 + 36));
    *v84 = v75;
    v84[1] = v76;
    v84[2] = v77;
    v84[3] = v78;
    v84[4] = v79;
    v84[5] = v72;
    v84[6] = v74;
    v85 = v138;
    v141 = *(v138 + 1);
    v144 = v138[4];
    v145 = *(v138 + 40);
    v86 = swift_allocObject();
    v87 = v85[1];
    *(v86 + 1) = *v85;
    *(v86 + 2) = v87;
    v88 = v85[3];
    *(v86 + 3) = v85[2];
    *(v86 + 4) = v88;
    v89 = v117;
    sub_100023BD4(v83, v117, &qword_1003B6C68);
    v90 = (v89 + *(v113 + 36));
    *v90 = sub_1001D0A84;
    v90[1] = v86;
    v90[2] = 0;
    v90[3] = 0;
    v91 = swift_allocObject();
    v92 = v85[1];
    v91[1] = *v85;
    v91[2] = v92;
    v93 = v85[3];
    v91[3] = v85[2];
    v91[4] = v93;
    v94 = v89;
    v95 = v116;
    sub_100023BD4(v94, v116, &qword_1003B6C70);
    v96 = (v95 + *(v115 + 36));
    *v96 = 0;
    v96[1] = 0;
    v96[2] = sub_1001D0AA8;
    v96[3] = v91;
    sub_100023BD4(v95, v123, &qword_1003B6C78);
    sub_10001F620(&v146, v140, &qword_1003B61B8);
    sub_10001F620(&v141, v140, &qword_1003B04E0);
    sub_10001F620(&v144, v140, &qword_1003B6CB8);
    sub_10001F620(&v146, v140, &qword_1003B61B8);
    sub_10001F620(&v141, v140, &qword_1003B04E0);
    return sub_10001F620(&v144, v140, &qword_1003B6CB8);
  }

  return result;
}

uint64_t sub_1001CE724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = sub_100005AD4(&qword_1003B6CC0);
  return sub_1001CE784(a1, (a2 + *(v5 + 44)));
}

uint64_t sub_1001CE784@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v194 = a2;
  v191 = sub_100005AD4(&qword_1003B6CC8);
  __chkstk_darwin(v191);
  v183 = &v177 - v3;
  v186 = type metadata accessor for PersonalTranslatorBubble();
  __chkstk_darwin(v186);
  v5 = &v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_100005AD4(&qword_1003B6CD0);
  __chkstk_darwin(v189);
  v190 = &v177 - v6;
  v7 = sub_100005AD4(&qword_1003B6CD8);
  v196 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v179 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v178 = &v177 - v11;
  v12 = __chkstk_darwin(v10);
  v177 = &v177 - v13;
  __chkstk_darwin(v12);
  v185 = &v177 - v14;
  v188 = sub_100005AD4(&qword_1003B6CE0);
  v15 = __chkstk_darwin(v188);
  v182 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v181 = &v177 - v18;
  v19 = __chkstk_darwin(v17);
  v184 = &v177 - v20;
  v21 = __chkstk_darwin(v19);
  v187 = &v177 - v22;
  __chkstk_darwin(v21);
  v180 = (&v177 - v23);
  v24 = sub_100005AD4(&qword_1003B6CE8);
  v25 = __chkstk_darwin(v24 - 8);
  v200 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v205 = &v177 - v27;
  v28 = type metadata accessor for EnvironmentValues();
  v204 = *(v28 - 8);
  __chkstk_darwin(v28);
  v203 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_100005AD4(&qword_1003B6CF0);
  v192 = *(v199 - 8);
  v30 = __chkstk_darwin(v199);
  v198 = &v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v177 - v32;
  v244 = *(a1 + 8);
  v243 = *a1;
  v34 = v244;

  LODWORD(v201) = v34;
  if ((v34 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v203;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v243, &qword_1003B61B8);
    (*(v204 + 8))(v36, v28);
  }

  v37 = sub_1001D41F0();

  v38 = v37[2];

  v221 = 0;
  v222 = v38;
  swift_getKeyPath();
  v242 = *(a1 + 1);
  v240 = a1[4];
  v241 = *(a1 + 40);
  v39 = swift_allocObject();
  v40 = *(a1 + 1);
  v39[1] = *a1;
  v39[2] = v40;
  v41 = *(a1 + 2);
  v42 = *(a1 + 3);
  v193 = a1;
  v39[3] = v41;
  v39[4] = v42;
  sub_10001F620(&v243, &v213, &qword_1003B61B8);
  sub_10001F620(&v242, &v213, &qword_1003B04E0);
  sub_10001F620(&v240, &v213, &qword_1003B6CB8);
  sub_100005AD4(&qword_1003B6CF8);
  sub_1001D0BD0();
  sub_10001BAEC(&qword_1003B6D10, &qword_1003B6CD8);
  ForEach<>.init(_:id:content:)();
  v43 = v201;
  v44 = v202;
  if (v201)
  {
    v221 = v202;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v46 = v203;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v243, &qword_1003B61B8);
    (*(v204 + 8))(v46, v28);
  }

  v225 = &type metadata for TranslateFeatures;
  v226 = sub_100009DF8();
  LOBYTE(v221) = 11;
  v47 = isFeatureEnabled(_:)();
  sub_100008664(&v221);
  v197 = v33;
  v195 = v7;
  if (v47)
  {

    v48 = v44;
    if ((v43 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v49 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v43 = v201;
      v50 = v203;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v243, &qword_1003B61B8);
      (*(v204 + 8))(v50, v28);
      v48 = v221;
    }

    swift_getKeyPath();
    v221 = v48;
    v185 = sub_1001C1400(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v51 = (v48 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText);
    swift_beginAccess();
    v52 = *v51;
    v53 = v51[1];

    if (!v53)
    {
      v90 = 1;
      v91 = v7;
      v92 = v187;
      goto LABEL_29;
    }

    v180 = v52;

    v54 = v44;
    if ((v43 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v55 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v56 = v203;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v243, &qword_1003B61B8);
      (*(v204 + 8))(v56, v28);
      v54 = v221;
    }

    swift_getKeyPath();
    v221 = v54;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = *(v54 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
    v57 = *(v54 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8);
    v59 = *(v54 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16);
    sub_1000C7F84(v58, v57, v59);

    if (v59)
    {

      v60 = v28;
      if (v58)
      {
LABEL_26:
        type metadata accessor for PersonalTranslatorViewModel();
        v93 = Environment.init<A>(_:)();
        v95 = v94;
        KeyPath = swift_getKeyPath();
        v97 = v186;
        *&v5[*(v186 + 20)] = KeyPath;
        sub_100005AD4(&qword_1003B23E0);
        swift_storeEnumTagMultiPayload();
        *v5 = v93;
        v5[8] = v95 & 1;
        v98 = &v5[v97[6]];
        *v98 = 0;
        *(v98 + 1) = 0;
        v5[v97[7]] = 1;
        v99 = &v5[v97[8]];
        *v99 = v57;
        v99[1] = v59;
        v100 = &v5[v97[9]];
        *v100 = v180;
        *(v100 + 1) = v53;
        v101 = &v5[v97[10]];
        *&v213 = 0;
        State.init(wrappedValue:)();
        v102 = v222;
        *v101 = v221;
        *(v101 + 1) = v102;
        v44 = v202;

        v28 = v60;
        v43 = v201;
        if ((v201 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v103 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v104 = v203;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100009EBC(&v243, &qword_1003B61B8);
          (*(v204 + 8))(v104, v28);
        }

        v105 = sub_1001D41F0();

        v106 = v105[2];

        v107 = v178;
        sub_1001AF4E4(v5, v178);
        v91 = v195;
        *(v107 + *(v195 + 52)) = v106;
        v108 = v177;
        sub_1001D0D88(v107, v177);
        v109 = v108;
        v92 = v187;
        sub_1001D0D88(v109, v187);
        v90 = 0;
LABEL_29:
        v110 = *(v196 + 56);
        v196 += 56;
        v110(v92, v90, 1, v91);

        v111 = v44;
        if ((v43 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v112 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v113 = v203;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100009EBC(&v243, &qword_1003B61B8);
          (*(v204 + 8))(v113, v28);
          v111 = v221;
        }

        swift_getKeyPath();
        v221 = v111;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v115 = *(v111 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
        v114 = *(v111 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8);
        v116 = *(v111 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16);
        v117 = *(v111 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 24);
        v118 = *(v111 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 32);
        sub_1000C7F84(v115, v114, v116);

        if (v116)
        {
          if ((v115 & 1) == 0)
          {
            v180 = v110;
            v178 = v28;
            type metadata accessor for PersonalTranslatorViewModel();
            v119 = Environment.init<A>(_:)();
            v121 = v120;
            v122 = swift_getKeyPath();
            v123 = v186;
            v124 = v179;
            *&v179[*(v186 + 20)] = v122;
            sub_100005AD4(&qword_1003B23E0);
            swift_storeEnumTagMultiPayload();
            *v124 = v119;
            v124[8] = v121 & 1;
            v125 = &v124[v123[6]];
            *v125 = 0;
            *(v125 + 1) = 0;
            v124[v123[7]] = 0;
            v126 = &v124[v123[8]];
            *v126 = v114;
            v126[1] = v116;
            v127 = &v124[v123[9]];
            *v127 = v117;
            *(v127 + 1) = v118;
            v128 = &v124[v123[10]];
            *&v213 = 0;
            State.init(wrappedValue:)();
            v129 = v222;
            *v128 = v221;
            v128[1] = v129;

            if ((v201 & 1) == 0)
            {
              static os_log_type_t.fault.getter();
              v130 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)();

              v131 = v203;
              EnvironmentValues.init()();
              swift_getAtKeyPath();
              sub_100009EBC(&v243, &qword_1003B61B8);
              (*(v204 + 8))(v131, v178);
            }

            v132 = sub_1001D41F0();

            v133 = v132[2];

            v134 = v179;
            *&v179[*(v195 + 52)] = v133;
            sub_1001D0D88(v134, v184);
            v135 = 0;
            v110 = v180;
            goto LABEL_38;
          }
        }

        v135 = 1;
LABEL_38:
        v136 = v184;
        v110(v184, v135, 1, v195);
        v87 = v187;
        v137 = v181;
        sub_10001F620(v187, v181, &qword_1003B6CE0);
        v138 = v182;
        sub_10001F620(v136, v182, &qword_1003B6CE0);
        v139 = v183;
        sub_10001F620(v137, v183, &qword_1003B6CE0);
        v140 = sub_100005AD4(&qword_1003B6D38);
        sub_10001F620(v138, v139 + *(v140 + 48), &qword_1003B6CE0);
        sub_100009EBC(v138, &qword_1003B6CE0);
        sub_100009EBC(v137, &qword_1003B6CE0);
        sub_10001F620(v139, v190, &qword_1003B6CC8);
        swift_storeEnumTagMultiPayload();
        sub_1001D0CB0();
        sub_10001BAEC(&qword_1003B6D20, &qword_1003B6CC8);
        _ConditionalContent<>.init(storage:)();
        sub_100009EBC(v139, &qword_1003B6CC8);
        sub_100009EBC(v136, &qword_1003B6CE0);
        v89 = v193;
        goto LABEL_39;
      }
    }

    else
    {
      v60 = v28;
    }

    v57 = 0;
    v59 = 0xE000000000000000;
    goto LABEL_26;
  }

  v61 = v44;
  if ((v43 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v63 = v203;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v243, &qword_1003B61B8);
    (*(v204 + 8))(v63, v28);
    v61 = v221;
  }

  swift_getKeyPath();
  v221 = v61;
  sub_1001C1400(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(v61 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
  v64 = *(v61 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8);
  v66 = *(v61 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16);
  v67 = *(v61 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 24);
  v68 = *(v61 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 32);
  sub_1000C7F84(v65, v64, v66);

  if (v66)
  {
    v178 = v28;
    type metadata accessor for PersonalTranslatorViewModel();

    v69 = Environment.init<A>(_:)();
    v71 = v70;
    v72 = swift_getKeyPath();
    v73 = v186;
    v74 = *(v186 + 20);
    v187 = v67;
    v75 = v185;
    *&v185[v74] = v72;
    sub_100005AD4(&qword_1003B23E0);
    swift_storeEnumTagMultiPayload();
    *v75 = v69;
    v75[8] = v71 & 1;
    v76 = &v75[v73[6]];
    *v76 = 0;
    *(v76 + 1) = 0;
    v75[v73[7]] = v65 & 1;
    v77 = &v75[v73[8]];
    *v77 = v64;
    v77[1] = v66;
    v78 = &v75[v73[9]];
    *v78 = v187;
    *(v78 + 1) = v68;
    v79 = &v75[v73[10]];
    *&v213 = 0;
    State.init(wrappedValue:)();

    v80 = v222;
    *v79 = v221;
    v79[1] = v80;

    if ((v201 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v81 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v82 = v203;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v243, &qword_1003B61B8);
      (*(v204 + 8))(v82, v178);
    }

    v83 = sub_1001D41F0();

    v84 = v83[2];

    v85 = v195;
    v86 = v185;
    *&v185[*(v195 + 52)] = v84;
    v87 = v180;
    sub_1001D0D88(v86, v180);
    v88 = 0;
    v89 = v193;
  }

  else
  {
    v88 = 1;
    v89 = v193;
    v85 = v195;
    v87 = v180;
  }

  (*(v196 + 56))(v87, v88, 1, v85);
  sub_10001F620(v87, v190, &qword_1003B6CE0);
  swift_storeEnumTagMultiPayload();
  sub_1001D0CB0();
  sub_10001BAEC(&qword_1003B6D20, &qword_1003B6CC8);
  _ConditionalContent<>.init(storage:)();
LABEL_39:
  sub_100009EBC(v87, &qword_1003B6CE0);
  type metadata accessor for PersonalTranslatorViewModel();
  sub_1001C1400(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  v202 = Environment.init<A>(_:)();
  v142 = v141;
  LODWORD(v203) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v144 = v143;
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v212 = v142 & 1;
  v209 = 0;
  LODWORD(v204) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v152 = v151;
  v154 = v153;
  v156 = v155;
  v158 = v157;
  v159 = v212;
  LODWORD(v196) = v209;
  LOBYTE(v221) = 0;
  v201 = v89[7];
  v160 = v192;
  v161 = *(v192 + 16);
  v162 = v198;
  v163 = v199;
  v161(v198, v197, v199);
  v164 = v200;
  sub_10001F620(v205, v200, &qword_1003B6CE8);
  v165 = v194;
  v161(v194, v162, v163);
  v166 = sub_100005AD4(&qword_1003B6D28);
  sub_10001F620(v164, &v165[*(v166 + 48)], &qword_1003B6CE8);
  v167 = &v165[*(v166 + 64)];
  v168 = v202;
  *&v213 = v202;
  BYTE8(v213) = v159;
  LOBYTE(v164) = v159;
  *(&v213 + 9) = *v211;
  HIDWORD(v213) = *&v211[3];
  LOBYTE(v162) = v203;
  LOBYTE(v214) = v203;
  *(&v214 + 1) = *v210;
  DWORD1(v214) = *&v210[3];
  *(&v214 + 1) = v144;
  *&v215 = v146;
  *(&v215 + 1) = v148;
  *&v216 = v150;
  v169 = v196;
  BYTE8(v216) = v196;
  HIDWORD(v216) = *&v207[3];
  *(&v216 + 9) = *v207;
  LOBYTE(v217) = v204;
  DWORD1(v217) = *&v206[3];
  *(&v217 + 1) = *v206;
  *(&v217 + 1) = v152;
  *&v218 = v154;
  *(&v218 + 1) = v156;
  *&v219 = v158;
  BYTE8(v219) = 0;
  HIDWORD(v219) = *(v208 + 3);
  *(&v219 + 9) = v208[0];
  v170 = v201;
  v220 = v201;
  *(v167 + 14) = v201;
  v171 = v218;
  *(v167 + 4) = v217;
  *(v167 + 5) = v171;
  *(v167 + 6) = v219;
  v172 = v214;
  *v167 = v213;
  *(v167 + 1) = v172;
  v173 = v216;
  *(v167 + 2) = v215;
  *(v167 + 3) = v173;
  sub_10001F620(&v213, &v221, &qword_1003B6D30);
  sub_100009EBC(v205, &qword_1003B6CE8);
  v174 = *(v160 + 8);
  v175 = v199;
  v174(v197, v199);
  v221 = v168;
  LOBYTE(v222) = v164;
  *(&v222 + 1) = *v211;
  HIDWORD(v222) = *&v211[3];
  v223 = v162;
  *v224 = *v210;
  *&v224[3] = *&v210[3];
  v225 = v144;
  v226 = v146;
  v227 = v148;
  v228 = v150;
  v229 = v169;
  *v230 = *v207;
  *&v230[3] = *&v207[3];
  v231 = v204;
  *&v232[3] = *&v206[3];
  *v232 = *v206;
  v233 = v152;
  v234 = v154;
  v235 = v156;
  v236 = v158;
  v237 = 0;
  *&v238[3] = *(v208 + 3);
  *v238 = v208[0];
  v239 = v170;
  sub_100009EBC(&v221, &qword_1003B6D30);
  sub_100009EBC(v200, &qword_1003B6CE8);
  return (v174)(v198, v175);
}

uint64_t sub_1001D0010@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = type metadata accessor for Locale();
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for EnvironmentValues();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v48 = *(a2 + 8);
  v47 = *a2;
  v13 = v48;

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v47, &qword_1003B61B8);
    (*(v9 + 8))(v11, v44);
  }

  v15 = sub_1001D41F0();

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 >= v15[2])
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v42 = v12;
  v17 = &v15[2 * v12];
  v18 = v17[4];
  v19 = v17[5];
  swift_unknownObjectRetain();

  sub_10001F620(&v47, v46, &qword_1003B61B8);
  swift_unknownObjectRetain();
  if (!v13)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v47, &qword_1003B61B8);
    (*(v9 + 8))(v11, v44);
  }

  ObjectType = swift_getObjectType();
  (*(v19 + 32))(ObjectType, v19);
  v22 = Locale.identifier.getter();
  v24 = v23;
  (*(v6 + 8))(v8, v43);
  LODWORD(v44) = sub_1001D1A94(v22, v24);

  v43 = (*(v19 + 64))(ObjectType, v19);
  v41 = v25;
  v26 = (*(v19 + 72))(ObjectType, v19);
  v28 = v27;
  type metadata accessor for PersonalTranslatorViewModel();
  sub_1001C1400(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  v29 = Environment.init<A>(_:)();
  v31 = v30;
  KeyPath = swift_getKeyPath();
  v33 = type metadata accessor for PersonalTranslatorBubble();
  *(a3 + v33[5]) = KeyPath;
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  *a3 = v29;
  *(a3 + 8) = v31 & 1;
  v34 = (a3 + v33[6]);
  *v34 = v18;
  v34[1] = v19;
  *(a3 + v33[7]) = v44 & 1;
  v35 = (a3 + v33[8]);
  v36 = v41;
  *v35 = v43;
  v35[1] = v36;
  v37 = (a3 + v33[9]);
  *v37 = v26;
  v37[1] = v28;
  v38 = (a3 + v33[10]);
  v45 = 0;
  State.init(wrappedValue:)();
  swift_unknownObjectRelease();
  v39 = v46[1];
  *v38 = v46[0];
  v38[1] = v39;
  result = sub_100005AD4(&qword_1003B6CD8);
  *(a3 + *(result + 52)) = v42;
  return result;
}

double sub_1001D0518@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PersonalTranslatorViewModel();
  sub_1001C1400(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  v2 = Environment.init<A>(_:)();
  v4 = v3;
  v5 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v5;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_1001D05D0(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 40);
  v10 = *(a1 + 32);
  v15 = v10;
  if (v16 == 1)
  {

    if (v10 < 0)
    {
      goto LABEL_3;
    }
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100009EBC(&v15, &qword_1003B6CB8);
  (*(v7 + 8))(v9, v6);
  if ((v14 & 0x8000000000000000) == 0)
  {
  }

LABEL_3:

  if (*(a1 + 16))
  {

    sub_100212CFC(a2 & 1);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14) = a3;
    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1001C1400(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1001D0860()
{
  result = qword_1003B6CA0;
  if (!qword_1003B6CA0)
  {
    sub_100005EA8(&qword_1003B6C40);
    sub_100005EA8(&qword_1003B6C30);
    sub_100005EA8(&qword_1003B6C28);
    sub_100005EA8(&qword_1003B6C20);
    sub_10001BAEC(&qword_1003B6C90, &qword_1003B6C20);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B6CA8, &qword_1003B6CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6CA0);
  }

  return result;
}

uint64_t sub_1001D0A08(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B6C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D0ACC(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AC848);
  __chkstk_darwin(v2 - 8);
  sub_10001F620(a1, &v5 - v3, &qword_1003AC848);
  return EnvironmentValues.verticalSizeClass.setter();
}

uint64_t sub_1001D0B7C()
{

  sub_1001D0A74();

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1001D0BD0()
{
  result = qword_1003B6D00;
  if (!qword_1003B6D00)
  {
    sub_100005EA8(&qword_1003B6CF8);
    sub_1001D0C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D00);
  }

  return result;
}

unint64_t sub_1001D0C5C()
{
  result = qword_1003B6D08;
  if (!qword_1003B6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D08);
  }

  return result;
}

unint64_t sub_1001D0CB0()
{
  result = qword_1003B6D18;
  if (!qword_1003B6D18)
  {
    sub_100005EA8(&qword_1003B6CE0);
    sub_10001BAEC(&qword_1003B6D10, &qword_1003B6CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D18);
  }

  return result;
}

uint64_t sub_1001D0D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B6CD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D0E74(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001D0EF8()
{
  result = qword_1003B6D50;
  if (!qword_1003B6D50)
  {
    sub_100005EA8(&qword_1003B6C68);
    sub_1001D0FB0();
    sub_10001BAEC(&qword_1003B6D88, &qword_1003B6D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D50);
  }

  return result;
}

unint64_t sub_1001D0FB0()
{
  result = qword_1003B6D58;
  if (!qword_1003B6D58)
  {
    sub_100005EA8(&qword_1003B6C60);
    sub_1001D1068();
    sub_10001BAEC(&qword_1003B6D78, &qword_1003B6D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D58);
  }

  return result;
}

unint64_t sub_1001D1068()
{
  result = qword_1003B6D60;
  if (!qword_1003B6D60)
  {
    sub_100005EA8(&qword_1003B6C58);
    sub_100005EA8(&qword_1003B6C48);
    sub_100005EA8(&qword_1003B6C40);
    sub_1001D0860();
    sub_10001F278();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B6D68, &qword_1003B6D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D60);
  }

  return result;
}

Swift::Int sub_1001D11C0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(838861 * a2 + 1065772646);
  return Hasher._finalize()();
}

Swift::Int sub_1001D1218()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001D1338()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001D1450()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D1590@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003AA3A0, type metadata accessor for AudioRouteManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 90);
  return result;
}

unint64_t sub_1001D1660(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1002BF8AC(v19, 0);
      sub_1002C0B54(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1000A38E0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1000A38E0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
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
  }
}

uint64_t sub_1001D1870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1001D18C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v5;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a1;
  v16[8] = a2;
  v16[9] = v10;
  sub_1000BF760(0, 0, v13, &unk_1002E7E58, v16);
}

uint64_t sub_1001D1A94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v4 = sub_100005AD4(&qword_1003AFCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  v26 = v3;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  v23 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  sub_10001F620(v3 + v10, v8, &qword_1003AFCE0);
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  LODWORD(v9) = v13(v8, 1, v11);
  sub_100009EBC(v8, &qword_1003AFCE0);
  if (v9 == 1)
  {
    return 1;
  }

  swift_getKeyPath();
  v25 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v24;
  sub_10001F620(v3 + v10, v24, &qword_1003AFCE0);
  result = v13(v15, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = Locale.identifier.getter();
    v18 = v17;
    (*(v12 + 8))(v15, v11);
    if (v16 == v21 && v18 == v22)
    {

      return 0;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = 0;
      if ((v20 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1001D1D60()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001D1E04(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001D1F38()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 80);
}

uint64_t sub_1001D1FD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1001D2080(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001D21B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_10001F620(v7 + v8, a4, a3);
}

uint64_t sub_1001D2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_100005AD4(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_10001F620(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_1001D2344(uint64_t a1)
{
  v3 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__firstEnvironmentPartialArrivalTime;
  swift_beginAccess();
  sub_10001F620(v1 + v6, v5, &qword_1003B5130);
  v7 = sub_1001F4A60(v5, a1);
  sub_100009EBC(v5, &qword_1003B5130);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10001F620(a1, v5, &qword_1003B5130);
    swift_beginAccess();
    sub_10003BD84(v5, v1 + v6, &qword_1003B5130);
    swift_endAccess();
  }

  return sub_100009EBC(a1, &qword_1003B5130);
}

uint64_t sub_1001D254C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__firstEnvironmentPartialArrivalTime;
  swift_beginAccess();
  sub_100163610(a2, a1 + v4, &qword_1003B5130);
  return swift_endAccess();
}

id sub_1001D267C()
{
  qword_1003D29A0 = 0;
  qword_1003D29A8 = 0;
  result = [objc_allocWithZone(NSObject) init];
  qword_1003D29B0 = result;
  return result;
}

uint64_t sub_1001D279C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *))
{
  v20 = a4;
  v7 = sub_100005AD4(&qword_1003AFCE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  swift_beginAccess();
  v21 = a1;
  sub_100163610(a1, v4 + v17, &qword_1003AFCE0);
  swift_endAccess();
  swift_getKeyPath();
  v22 = v4;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10001F620(v4 + v17, v12, &qword_1003AFCE0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009EBC(v21, &qword_1003AFCE0);
    return sub_100009EBC(v12, &qword_1003AFCE0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    (*(v14 + 16))(v10, v16, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v20(v10);
    sub_100009EBC(v21, &qword_1003AFCE0);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_1001D2AC4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_10001F620(v9 + v7, a3, a2);
}

uint64_t sub_1001D2BE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v9 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v9 - 8);
  v11 = v15 - v10;
  v12 = *a2;
  swift_beginAccess();
  sub_10001F620(v5 + v12, v11, &qword_1003AFCE0);
  LOBYTE(v12) = sub_1001F6568(v11, a1);
  sub_100009EBC(v11, &qword_1003AFCE0);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v5;
    v15[-1] = a1;
    v15[2] = v5;
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10001F620(a1, v11, &qword_1003AFCE0);
    a5(v11);
  }

  return sub_100009EBC(a1, &qword_1003AFCE0);
}

uint64_t sub_1001D2DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v5 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v5 - 8);
  v7 = v9 - v6;
  sub_10001F620(a2, v9 - v6, &qword_1003AFCE0);
  return a3(v7);
}

void sub_1001D2EBC()
{
  v1 = sub_1000D8BAC();
  if ((v1 & 0x100000000) != 0)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D2920);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Failed to retrieve a default product ID while validating personal translation capability", v7, 2u);
    }
  }

  else
  {
    v2 = v1;
    v3 = [objc_opt_self() productInfoWithProductID:v1];
    sub_10022980C(v3);
    swift_getKeyPath();
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics);

    *(v4 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airpodsModel) = sub_100201DEC(v2);
  }
}

void sub_1001D30B0(char a1)
{
  v2 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__disableAutoplayTTSOnLoudspeaker;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__disableAutoplayTTSOnLoudspeaker) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__disableAutoplayTTSOnLoudspeaker) = a1 & 1;
    swift_getKeyPath();
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v1 + v2);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    [v5 setBool:v4 forKey:v6];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1001D32A0(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__disableAutoplayTTSOnLoudspeaker;
  *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__disableAutoplayTTSOnLoudspeaker) = a2;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + v3);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [v5 setBool:v4 forKey:v6];
}

void sub_1001D3408(char a1)
{
  v2 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText) = a1 & 1;
    swift_getKeyPath();
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v1 + v2);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    [v5 setBool:v4 forKey:v6];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1001D35F8(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText;
  *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText) = a2;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + v3);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [v5 setBool:v4 forKey:v6];
}

void *sub_1001D37EC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1001D3894@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1001D3994(void *a1, uint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *a2;
  v7 = *(v3 + *a2);
  if (!v7)
  {
    if (!a1)
    {
      v11 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  a3(0);
  v8 = v7;
  v9 = a1;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v4 + v6);
LABEL_8:
  *(v4 + v6) = a1;
}

uint64_t sub_1001D3B1C()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_1001D3BD0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerTranslationForTTS);
  return swift_unknownObjectRetain();
}

uint64_t sub_1001D3C88()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_1001D3DD0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel____lazy_storage___daemonSession;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel____lazy_storage___daemonSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel____lazy_storage___daemonSession);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
    dispatch thunk of DaemonSession.keepActive.setter();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1001D3ECC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  result = sub_1000C7F84(v4, v3[1], v6);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return result;
}

uint64_t sub_1001D3FB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
  v5 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8);
  v6 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16);
  v7 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 24);
  v8 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 32);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_1000C7F84(v4, v5, v6);
}

uint64_t sub_1001D4078()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001D4154(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation;
  v3 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation);
  v4 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8);
  v5 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16);
  v6 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v6;
  *(v2 + 32) = *(a2 + 32);
  sub_10001F620(a2, v8, &qword_1003B7A00);
  return sub_10008765C(v3, v4, v5);
}

void *sub_1001D41F0()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AFCE0);
  v3 = __chkstk_darwin(v2 - 8);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v59 = &v50 - v12;
  v13 = __chkstk_darwin(v11);
  v51 = &v50 - v14;
  __chkstk_darwin(v13);
  v52 = &v50 - v15;
  swift_getKeyPath();
  v63 = v0;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v16, v6, &qword_1003AFCE0);
  v53 = v8;
  v17 = *(v8 + 48);
  if (v17(v6, 1, v7) == 1)
  {
    v18 = v6;
LABEL_5:
    sub_100009EBC(v18, &qword_1003AFCE0);
    return _swiftEmptyArrayStorage;
  }

  v19 = v6;
  v20 = *(v53 + 32);
  v20(v52, v19, v7);
  swift_getKeyPath();
  v62 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  v22 = v1 + v21;
  v23 = v58;
  sub_10001F620(v22, v58, &qword_1003AFCE0);
  if (v17(v23, 1, v7) == 1)
  {
    (*(v53 + 8))(v52, v7);
    v18 = v23;
    goto LABEL_5;
  }

  v57 = v7;
  v20(v51, v23, v7);
  v25 = objc_allocWithZone(_LTLocalePair);
  v26 = v52;
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v28 = Locale._bridgeToObjectiveC()().super.isa;
  v58 = [v25 initWithSourceLocale:isa targetLocale:v28];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v61;
  v61 = _swiftEmptyArrayStorage;
  if (v29 >> 62)
  {
    goto LABEL_21;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v53; v30; i = v53)
  {
    v32 = 0;
    v55 = v29 & 0xFFFFFFFFFFFFFF8;
    v56 = v29 & 0xC000000000000001;
    v26 = (i + 8);
    v54 = v30;
    while (1)
    {
      if (v56)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(v55 + 16))
        {
          goto LABEL_20;
        }

        v33 = *(v29 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v36 = v29;
      v37 = v59;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      v38 = v60;
      dispatch thunk of PersistedTranslation.targetLocale.getter();
      v39 = objc_allocWithZone(_LTLocalePair);
      v40 = Locale._bridgeToObjectiveC()().super.isa;
      v41 = Locale._bridgeToObjectiveC()().super.isa;
      v42 = [v39 initWithSourceLocale:v40 targetLocale:v41];

      v43 = *v26;
      v44 = v57;
      (*v26)(v38, v57);
      v43(v37, v44);
      LOBYTE(v43) = [v42 isBidirectionalEqual:v58];

      if (v43)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v29 = v36;
      ++v32;
      if (v35 == v54)
      {
        v45 = v61;
        v26 = v52;
        i = v53;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_23:

  v46 = sub_1001D1660(v45);
  v47 = sub_10017A294(v46);

  v48 = *(i + 8);
  v49 = v57;
  v48(v51, v57);
  v48(v26, v49);
  return v47;
}

uint64_t sub_1001D483C()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AFCE0);
  v3 = __chkstk_darwin(v2 - 8);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v53 = &v44 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v44 - v14;
  __chkstk_darwin(v13);
  v46 = &v44 - v16;
  swift_getKeyPath();
  v57 = v0;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v17, v6, &qword_1003AFCE0);
  v18 = *(v8 + 48);
  if (v18(v6, 1, v7) == 1)
  {
    v19 = v6;
LABEL_5:
    sub_100009EBC(v19, &qword_1003AFCE0);
    return 0;
  }

  v45 = v15;
  v51 = *(v8 + 32);
  v51(v46, v6, v7);
  swift_getKeyPath();
  v56 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  v21 = v52;
  sub_10001F620(v1 + v20, v52, &qword_1003AFCE0);
  if (v18(v21, 1, v7) == 1)
  {
    (*(v8 + 8))(v46, v7);
    v19 = v21;
    goto LABEL_5;
  }

  v44 = v8;
  v51(v45, v21, v7);
  v23 = objc_allocWithZone(_LTLocalePair);
  v24 = v46;
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v26 = Locale._bridgeToObjectiveC()().super.isa;
  v52 = [v23 initWithSourceLocale:isa targetLocale:v26];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v55;
  v55 = _swiftEmptyArrayStorage;
  if (v27 >> 62)
  {
    goto LABEL_21;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v44; v28; i = v44)
  {
    v30 = 0;
    v50 = v27 & 0xC000000000000001;
    v51 = v7;
    v48 = v27;
    v49 = v27 & 0xFFFFFFFFFFFFFF8;
    v31 = (i + 8);
    v47 = v28;
    while (1)
    {
      if (v50)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v49 + 16))
        {
          goto LABEL_20;
        }

        v32 = *(v27 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_10000A2CC(0, &qword_1003B2A60);
      v35 = v53;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      v7 = v54;
      dispatch thunk of PersistedTranslation.targetLocale.getter();
      v36 = objc_allocWithZone(_LTLocalePair);
      v37 = Locale._bridgeToObjectiveC()().super.isa;
      v38 = Locale._bridgeToObjectiveC()().super.isa;
      v24 = [v36 initWithSourceLocale:v37 targetLocale:v38];

      v39 = *v31;
      v40 = v51;
      (*v31)(v7, v51);
      v39(v35, v40);
      LOBYTE(v39) = static NSObject.== infix(_:_:)();

      if (v39)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v27 = v48;
      ++v30;
      if (v34 == v47)
      {
        v41 = v55;
        v7 = v51;
        i = v44;
        v24 = v46;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *(v41 + 16);
  }

  v43 = *(i + 8);
  v43(v45, v7);
  v43(v24, v7);
  return v42;
}

uint64_t sub_1001D4EF8()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1001D4FB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1001D507C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_1001D514C()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1001D521C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1001D52E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001D5328(v1, v2);
}

uint64_t sub_1001D5328(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001D5498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_1001D550C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1001D50E8();
  return sub_1001D5644;
}

void sub_1001D5644(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_1001D5750()
{
  v1 = v0;
  if (_LTIsInternalInstall() && (v2 = [objc_opt_self() standardUserDefaults], v3 = String._bridgeToObjectiveC()(), v4 = objc_msgSend(v2, "BOOLForKey:", v3), v2, v3, (v4 & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v6 = *(v1 + 72);
    swift_getKeyPath();
    v29[1] = v6;
    sub_1001F6DA0(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = (v6 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
    swift_beginAccess();
    v9 = v7[1];
    v8 = v7[2];
    v30[0] = *v7;
    v10 = v7[3];
    v11 = v7[4];
    v12 = v7[5];
    *&v31[9] = *(v7 + 89);
    v30[1] = v9;
    v30[2] = v8;
    v30[4] = v11;
    *v31 = v12;
    v30[3] = v10;
    if (*(&v30[0] + 1))
    {
      v5 = v31[24];
      v13 = qword_1003A92B0;

      v14 = *&v31[8];
      v15 = *&v31[16];
      if (v13 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D2920);

      v17 = *&v31[8];
      v18 = *&v31[16];

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29[0] = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_10028D78C(0xD00000000000001FLL, 0x80000001002F99B0, v29);
        *(v21 + 12) = 1024;
        *(v21 + 14) = v5 & 1;
        sub_100009EBC(v30, &qword_1003A93C8);
        _os_log_impl(&_mh_execute_header, v19, v20, "%s fetching ownerAudioDevice  %{BOOL}d", v21, 0x12u);
        sub_100008664(v22);
      }

      else
      {
        sub_100009EBC(v30, &qword_1003A93C8);
      }

      sub_1001D2EBC();
      sub_100009EBC(v30, &qword_1003A93C8);
    }

    else
    {
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000078E8(v23, qword_1003D2920);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_10028D78C(0xD00000000000001FLL, 0x80000001002F99B0, v29);
        _os_log_impl(&_mh_execute_header, v24, v25, "%s fetching ownerAudioDevice no owner device", v26, 0xCu);
        sub_100008664(v27);
      }

      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_1001D5C50(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1001D5D04@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1001D5E08(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001D5FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1001D60A4(uint64_t result, void *a2)
{
  v3 = *(v2 + *a2);
  if (result > 1u)
  {
    if (result == 2)
    {
      if (v3 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v3 != 3)
    {
      goto LABEL_4;
    }
  }

  else if (result)
  {
    if (v3 != 1)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + *a2))
  {
LABEL_4:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v2 + *a2) = result;
  return result;
}

uint64_t sub_1001D6254@<X0>(float *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001F6888(*a1);
  *a2 = result;
  return result;
}

float sub_1001D6280@<S0>(float *a1@<X8>)
{
  result = flt_1002E5C00[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_1001D63B4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled) = a1 & 1;

    return sub_1001DF1B0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001D6504()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001D65FC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = static Task.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1001D67CC()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001D6870@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1001D6950(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100005AD4(&unk_1003B9E90);
  v5 = static Task.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1001D6B20(uint64_t a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001D6C68(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1001D6D08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSide);
  return result;
}

uint64_t sub_1001D6DB8(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSide);
  if (v2 != 2)
  {
    if (result == 2 || ((v2 ^ result) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSide) = result;
    return result;
  }

  if (result == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001D6F28(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001D703C()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for GenerativeModelsAvailability();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v2);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v7 + 8))(v9, v6);
  swift_allocObject();
  swift_weakInit();

  v14 = GenerativeModelsAvailability.didChange(_:)();

  swift_getKeyPath();
  v17 = v1;
  v18 = v14;
  v19 = v1;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v11 + 8))(v13, v10);
}

void sub_1001D735C(char a1)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  sub_10022AB28(v4);
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2920);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Activate and starting speech translation", v8, 2u);
  }

  sub_1001D796C(a1);
  sub_1001D8B4C();
}

void sub_1001D74AC()
{
  if (qword_1003A92B0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2920);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Trying to start speech translation if in foreground", v3, 2u);
  }

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  sub_10000A2CC(0, &qword_1003A9C30);
  sub_10000C168();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v8 = v28[1];
    v7 = v28[2];
    v9 = v28[3];
    v10 = v28[4];
    v11 = v28[5];
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);

    v10 = 0;
    v8 = v6;
  }

  v15 = (v9 + 64) >> 6;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v20 = v28[0], v18 = v10, v19 = v11, !v28[0]))
      {
LABEL_25:
        sub_10000C1D0();

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Couldn't find the main scene", v23, 2u);
        }

        return;
      }
    }

    else
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            goto LABEL_25;
          }

          v17 = *(v7 + 8 * v18);
          ++v16;
          if (v17)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_36;
      }

LABEL_18:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    if (![v20 delegate])
    {

      goto LABEL_12;
    }

    type metadata accessor for SceneDelegate();
    if (swift_dynamicCastClass())
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_12:
    v10 = v18;
    v11 = v19;
  }

  swift_unknownObjectRelease();
  sub_10000C1D0();

  if ([v20 activationState] && objc_msgSend(v20, "activationState") != 1)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10028D78C(0xD00000000000002CLL, 0x80000001002F9980, v28);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s not foreground active refusing to start Live Translation!", v26, 0xCu);
      sub_100008664(v27);
    }
  }

  else
  {
    sub_1001D7E14();
  }
}

void sub_1001D796C(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2920);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Activating view", v10, 2u);
  }

  swift_getKeyPath();
  v20[0] = v2;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive;
  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive))
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Called activate view while already active";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  swift_getKeyPath();
  v20[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled) != 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Called activate view while appleIntelligenceEnabled is false";
      goto LABEL_13;
    }

LABEL_14:

    return;
  }

  if (*(v2 + v11) == 1)
  {
    *(v2 + v11) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v20[-2] = v2;
    LOBYTE(v20[-1]) = 1;
    v20[0] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  v20[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics);

  static Date.now.getter();
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  v19 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionStart;
  swift_beginAccess();
  sub_10003BD84(v6, v17 + v19, &qword_1003B5130);
  swift_endAccess();
  *(v17 + 16) = a1;

  type metadata accessor for LockScreenManager();
  swift_initStaticObject();
  sub_100173174();
  if (qword_1003A92D8 != -1)
  {
    swift_once();
  }

  sub_1001A1B0C(v2);
}

void sub_1001D7E14()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  swift_getKeyPath();
  v14 = v0;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive) == 1)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v1;
    v8 = sub_10005E36C(0, 0, v4, &unk_1002E7DC0, v7);
    sub_1001D65D4(v8);
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2920);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Trying to start speech translation while view is not active", v12, 2u);
    }
  }
}

uint64_t sub_1001D8078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_1001D81D4, v8, v7);
}

uint64_t sub_1001D81D4()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to start speech translation", v4, 2u);
  }

  *(v0 + 152) = 0;
  if (sub_1001D5750())
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Connecting supported audio device took %ld tries", v7, 0xCu);
    }

    sub_1001D8B4C();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = static Duration.seconds(_:)();
    v12 = v11;
    static Clock<>.continuous.getter();
    *(v0 + 40) = v10;
    *(v0 + 48) = v12;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return _swift_task_switch(sub_1001D8410, 0, 0);
  }
}

uint64_t sub_1001D8410()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_1001F6DA0(&qword_1003B48E8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001F6DA0(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[20] = v5;
  v0[21] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1001D8594;
  v8 = v0[11];
  v7 = v0[12];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_1001D8594()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2 + 160))(*(v2 + 88), *(v2 + 64));
    v3 = sub_1001D8954;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 104);
    v6 = *(v2 + 112);
    v8 = *(v2 + 96);
    (*(v2 + 160))(*(v2 + 88), *(v2 + 64));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v3 = sub_1001D86F4;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001D86F4()
{
  v1 = *(v0 + 152);
  v2 = v1 + 1;
  if (v1 == 19)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Speech translation tried to start but failed", v5, 2u);
    }

    v6 = *(v0 + 56);

    sub_100278D7C(4u, sub_1001F8A38, v6);

    sub_1001DA594(2, 0);
LABEL_9:

    v10 = *(v0 + 8);

    return v10();
  }

  *(v0 + 152) = v2;
  if (sub_1001D5750())
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v7, v8, "Connecting supported audio device took %ld tries", v9, 0xCu);
    }

    sub_1001D8B4C();
    goto LABEL_9;
  }

  v12 = static Duration.seconds(_:)();
  v14 = v13;
  static Clock<>.continuous.getter();
  *(v0 + 40) = v12;
  *(v0 + 48) = v14;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return _swift_task_switch(sub_1001D8410, 0, 0);
}

uint64_t sub_1001D8954()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(sub_1001D89C8, v1, v2);
}

uint64_t sub_1001D89C8()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Trying to start speech translation task cancelled: %@", v3, 0xCu);
    sub_100009EBC(v4, &unk_1003AECA0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1001D8B4C()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v123 = &v115[-v3];
  v125 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v125);
  v126 = &v115[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UUID();
  v131 = *(v5 - 8);
  v132 = v5;
  v6 = __chkstk_darwin(v5);
  v127 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v124 = &v115[-v8];
  v9 = sub_100005AD4(&qword_1003AFCE0);
  v10 = __chkstk_darwin(v9 - 8);
  v133 = &v115[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v115[-v12];
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v130 = &v115[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v129 = &v115[-v19];
  v20 = __chkstk_darwin(v18);
  v134 = &v115[-v21];
  __chkstk_darwin(v20);
  v135 = &v115[-v22];
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  v136[0] = v0;
  v24 = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  sub_10001F620(v0 + v25, v13, &qword_1003AFCE0);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v128 = v15;
  v121 = *(v15 + 32);
  v121(v135, v13, v14);
  swift_getKeyPath();
  v136[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  v122 = v1;
  v13 = v133;
  sub_10001F620(v1 + v27, v133, &qword_1003AFCE0);
  if (v26(v13, 1, v14) == 1)
  {
    (*(v128 + 8))(v135, v14);
LABEL_4:
    sub_100009EBC(v13, &qword_1003AFCE0);
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000078E8(v28, qword_1003D2920);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Cannot start speech translation with nil locales", v31, 2u);
    }

    return;
  }

  v119 = v24;
  v120 = v23;
  v32 = v134;
  v121(v134, v13, v14);
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_1000078E8(v33, qword_1003D2920);
  v35 = v128;
  v36 = v129;
  v37 = (v128 + 16);
  v38 = *(v128 + 16);
  v39 = v135;
  v38(v129, v135, v14);
  v40 = v130;
  v38(v130, v32, v14);
  v133 = v34;
  v41 = v14;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v121 = v37;
  v118 = v38;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v136[0] = v117;
    *v45 = 136315394;
    sub_1001F6DA0(&qword_1003B6C00, &type metadata accessor for Locale);
    v116 = v43;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = *(v35 + 8);
    (v49)(v36, v41);
    v50 = sub_10028D78C(v46, v48, v136);
    v39 = v135;

    *(v45 + 4) = v50;
    *(v45 + 12) = 2082;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    (v49)(v40, v41);
    v54 = sub_10028D78C(v51, v53, v136);

    *(v45 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v42, v116, "Starting Speech translation. EnvironmentLocale: %s. DeviceOwnerLocale: %{public}s", v45, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49 = *(v35 + 8);
    (v49)(v40, v41);
    (v49)(v36, v41);
  }

  v55 = v41;
  swift_getKeyPath();
  v56 = v122;
  v136[0] = v122;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v56 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isListening))
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Called start speech translation while already listening", v59, 2u);
    }

    (v49)(v134, v41);
    (v49)(v39, v41);
  }

  else
  {
    if (qword_1003A92F0 != -1)
    {
      swift_once();
    }

    objc_sync_enter(qword_1003D29B0);
    v60 = v124;
    UUID.init()();
    v61 = UUID.uuidString.getter();
    v63 = v62;
    v64 = *(v131 + 8);
    v129 = (v131 + 8);
    v124 = v64;
    (v64)(v60, v132);
    qword_1003D29A0 = v61;
    qword_1003D29A8 = v63;

    objc_sync_exit(qword_1003D29B0);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = v55;
      v69 = swift_slowAlloc();
      v136[0] = v69;
      *v67 = 136315138;
      *(v67 + 4) = sub_10028D78C(v61, v63, v136);
      _os_log_impl(&_mh_execute_header, v65, v66, "Creating new OVAD sessionID:%s.", v67, 0xCu);
      sub_100008664(v69);
      v55 = v68;
    }

    v70 = v122;
    v130 = v63;
    v122 = v61;
    v133 = v49;
    v71 = [objc_opt_self() sharedApplication];
    [v71 setIdleTimerDisabled:1];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v72 = 129;
    if (LOBYTE(v136[0]))
    {
      v72 = 137;
    }

    v117 = v72;
    if (sub_1001F4FDC())
    {
      v73 = *(v70 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel_stableStringExtractor);
      *(v73 + 16) = 0;
      *(v73 + 24) = 0xE000000000000000;
    }

    swift_getKeyPath();
    v136[0] = v70;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v74 = *(v70 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSelfLoggingInvocation);
    v75 = v126;
    v76 = v39;
    v77 = v118;
    v118(v126, v76, v55);
    v78 = v125;
    v77(v75 + *(v125 + 20), v134, v55);
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v55;

    static Published.subscript.getter();

    v80 = v70;
    v81 = v136[0];
    (*(v131 + 56))(v75 + v78[14], 1, 1, v132);
    *(v75 + v78[6]) = 16;
    *(v75 + v78[7]) = 2;
    *(v75 + v78[8]) = 0;
    *(v75 + v78[9]) = v81;
    v82 = v75 + v78[10];
    *v82 = 0;
    *(v82 + 8) = 1;
    *(v75 + v78[11]) = 0;
    *(v75 + v78[12]) = 3;
    v83 = v75 + v78[13];
    *v83 = 0;
    *(v83 + 8) = 1;
    sub_10022520C(v75);
    v84 = *(v74 + 16);
    if (v84)
    {
      v85 = [v84 invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001F82DC(v75, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = *(v80 + 32);
      v88 = sub_1001F4FDC();
      sub_100005AD4(qword_1003B5180);
      v89 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1002D3160;
      v77(v90 + v89, v135, v55);

      v91 = sub_10011EA1C(v90);
      swift_setDeallocating();
      v92 = v79;
      (v133)(v90 + v89, v79);
      swift_deallocClassInstance();
      v93 = &v87[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v94 = *(v93 + 1);
        ObjectType = swift_getObjectType();
        (*(v94 + 16))(1, 0, v91, ObjectType, v94);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v96 = v122;
      v97 = objc_allocWithZone(_LTSpeechTranslationRequest);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v99 = Locale._bridgeToObjectiveC()().super.isa;
      v100 = [v97 initWithSourceLocale:isa targetLocale:v99];

      v101 = v100;
      v102 = String._bridgeToObjectiveC()();
      [v101 setSessionID:v102];

      [v101 setCensorSpeech:byte_1003D2A90];
      [v101 setForcedOfflineTranslation:1];
      v136[3] = &type metadata for TranslateFeatures;
      v136[4] = sub_100009DF8();
      LOBYTE(v136[0]) = 18;
      LOBYTE(v102) = isFeatureEnabled(_:)();
      sub_100008664(v136);
      if (v102)
      {
        [v101 setPreferOnDeviceIfAvailable:1];
      }

      [v101 setAutoEndpoint:0];
      [v101 setEnableStreamingSpeechTranslation:1];
      [v101 setAutodetectLanguage:0];
      [v101 setEnableVAD:0];
      [v101 setEnableAirPodsOwnVAD:1];
      [v101 setEnableMultiFieldInput:1];
      [v101 setEnableTranslationSemanticSegmentation:v88 & 1];
      [v101 setForceSourceLocale:0];
      [v101 set_supportsGenderDisambiguation:0];
      [v101 setSourceOrigin:0];
      [v101 setDelegate:v87];
      [v101 setTaskHint:10];
      v103 = v127;
      v104 = UUID._bridgeToObjectiveC()().super.isa;
      [v101 setLogIdentifier:v104];

      [v101 setCleanUpExistingSpeechSession:1];
      v87[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 0;
      v105 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator;
      [*&v87[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] translate:v101];
      v106 = *&v87[v105];
      _s21SpeechResultContainerCMa();
      swift_allocObject();
      v107 = v101;
      *&v87[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer] = sub_100241798(v106, v107);

      v108 = type metadata accessor for TaskPriority();
      v109 = v123;
      (*(*(v108 - 8) + 56))(v123, 1, 1, v108);
      v110 = swift_allocObject();
      v110[2] = 0;
      v110[3] = 0;
      v110[4] = v87;
      v110[5] = v107;
      v110[6] = sub_1001F833C;
      v110[7] = v86;
      v111 = v130;
      v110[8] = v96;
      v110[9] = v111;
      v110[10] = v117;

      v112 = v107;
      v113 = v87;
      sub_10005E36C(0, 0, v109, &unk_1002DB9C0, v110);

      (v124)(v103, v132);
      v114 = v133;
      (v133)(v134, v92);
      (v114)(v135, v92);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001D9D94()
{
  v0 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    v8 = sub_1000BF760(0, 0, v2, &unk_1002E7D88, v7);
    sub_1001D6790(v8);
  }

  return result;
}

uint64_t sub_1001D9EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1001D9F84, v6, v5);
}

uint64_t sub_1001D9F84()
{
  if (static Task<>.isCancelled.getter())
  {

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D2920);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Session activation completed but not playing start tone and message because the task was cancelled", v4, 2u);
    }

    goto LABEL_16;
  }

  v5 = v0[4];
  if (*(v5 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning) == 1)
  {
    *(v5 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning) = 1;
  }

  else
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[2] = v5;
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2920);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Session activation completed playing start tone then TTS message", v10, 2u);
  }

  v11 = v0[4];

  swift_getKeyPath();
  v0[3] = v11;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isDualPressGestureIntentInitiated))
  {

    sub_1001DFFFC();
LABEL_16:
    v12 = v0[1];

    return v12();
  }

  return _swift_task_switch(sub_1001DA30C, 0, 0);
}

uint64_t sub_1001DA30C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = 2;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1001DA3F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000017, 0x80000001002F6AB0, sub_100186814, v1, &type metadata for () + 8);
}

uint64_t sub_1001DA3F8()
{

  return _swift_task_switch(sub_1001DA510, 0, 0);
}

uint64_t sub_1001DA528()
{

  sub_1001DFFFC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001DA594(char a1, char a2)
{
  v3 = v2;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2920);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Inactivating view", v9, 2u);
  }

  if (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    aBlock[0] = v3;
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning) = 0;
  }

  swift_getKeyPath();
  aBlock[0] = v3;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive;
  if (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive) == 1)
  {
    v33 = a2;
    swift_getKeyPath();
    aBlock[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics;

    sub_1002003F8();

    if (*(v3 + v11))
    {
      v13 = swift_getKeyPath();
      __chkstk_darwin(v13);
      aBlock[0] = v3;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v3 + v11) = 0;
    }

    v17 = objc_opt_self();
    v18 = [v17 sharedApplication];
    [v18 setIdleTimerDisabled:0];

    if (qword_1003A92D8 != -1)
    {
      swift_once();
    }

    sub_1001A2440(0);
    type metadata accessor for LockScreenManager();
    swift_initStaticObject();
    sub_1001736F4();
    v19 = [v17 sharedApplication];
    v20 = sub_1002BF214();

    if (v20)
    {
      v21 = [v20 rootViewController];

      if (v21)
      {
        type metadata accessor for PersonalTranslatorLockScreenViewController();
        v22 = swift_dynamicCastClass();

        if (v22)
        {
          v23 = [objc_allocWithZone(SBSLockScreenService) init];
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          aBlock[4] = sub_1001F829C;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001D1870;
          aBlock[3] = &unk_1003890E8;
          v25 = _Block_copy(aBlock);
          v26 = v23;

          [v26 lockDeviceAnimated:1 withCompletion:v25];
          _Block_release(v25);
        }
      }
    }

    swift_getKeyPath();
    aBlock[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isListening) == 1)
    {
      if (v33)
      {
        sub_10020D144(0);
      }

      else
      {

        sub_100278D7C(3u, sub_1001F8230, v3);
      }
    }

    swift_getKeyPath();
    aBlock[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(*(v3 + v12) + 17) = a1;
    sub_1001DD4F0();
    sub_1001DAFBC();
    if (_LTIsInternalInstall())
    {
      sub_10000A2CC(0, &qword_1003A9B80);
      v27 = static NSUserDefaults.translationGroupDefaults.getter();
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 BOOLForKey:v28];

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 67109120;
        *(v32 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "Inactivating PT session. Value for personalTranslatorFeedbackEnabled: %{BOOL}d", v32, 8u);
      }

      if (v29)
      {
        sub_100108E24(2, 0, 0, sub_1001DAD28, 0);
      }
    }
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Called inactivate while already inactive", v16, 2u);
    }
  }
}

void sub_1001DAD28(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D2920);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10028D78C(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error displaying feedback campaign: %s", v4, 0xCu);
      sub_100008664(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2920);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Feedback campaign displayed successfully.", v11, 2u);
    }
  }
}

uint64_t sub_1001DAFBC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v2 - 8);
  v54 = &v52 - v3;
  swift_getKeyPath();
  *&v56[0] = v0;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__tryStartingSpeechTranslationTask))
  {

    Task.cancel()();
  }

  swift_getKeyPath();
  *&v56[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__renderingSegmentsTask))
  {

    Task.cancel()();
  }

  swift_getKeyPath();
  *&v56[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__playStartToneAndMessageTask))
  {

    sub_100005AD4(&unk_1003B9E90);
    Task.cancel()();
  }

  swift_getKeyPath();
  *&v56[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__audioDeviceTakenOutOfEarsGracePeriodTask;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__audioDeviceTakenOutOfEarsGracePeriodTask) && (, sub_100005AD4(&unk_1003B9E90), Task.cancel()(), , *(v0 + v4)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v52 - 2) = v0;
    *(&v52 - 1) = 0;
    *&v56[0] = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + v4) = 0;
  }

  swift_getKeyPath();
  *&v56[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowPowerLockScreenDebouncer);
  v7 = v6[4];
  v6[4] = 0;
  v6[5] = 0;

  sub_10001ABE4(v7);
  if (v6[6])
  {

    Task.cancel()();
  }

  v6[6] = 0;

  swift_getKeyPath();
  *&v56[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__mainDebouncer);
  v9 = v8[4];
  v8[4] = 0;
  v8[5] = 0;

  sub_10001ABE4(v9);
  if (v8[6])
  {

    Task.cancel()();
  }

  v8[6] = 0;

  v10 = *(v1 + 32);
  v11 = v10 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(0, 0, 0, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  v14 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer;
  v15 = *(v10 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
  if (v15)
  {
    [*(v15 + 48) endAudio];
  }

  sub_10020BB08();
  *(v10 + v14) = 0;

  [*(v10 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator) cleanup];
  if (qword_1003A92F0 != -1)
  {
    swift_once();
  }

  objc_sync_enter(qword_1003D29B0);
  qword_1003D29A0 = 0;
  qword_1003D29A8 = 0;

  type metadata accessor for SensorServiceManager();
  swift_initStaticObject();
  sub_100228568();
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2920);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "ovadSessionID: stopSending and reset id to nil", v19, 2u);
  }

  objc_sync_exit(qword_1003D29B0);
  swift_getKeyPath();
  *&v56[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS;
  v21 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS);
  if (v21)
  {
    v22 = v21;
    v23 = sub_1001D3DD0();
    dispatch thunk of DaemonSession.cancel(request:)();

    if (*(v1 + v20))
    {
      v24 = swift_getKeyPath();
      __chkstk_darwin(v24);
      *(&v52 - 2) = v1;
      *(&v52 - 1) = 0;
      *&v56[0] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
    }
  }

  swift_getKeyPath();
  *&v56[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS;
  v26 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS);
  if (v26)
  {
    v27 = v26;
    v28 = sub_1001D3DD0();
    dispatch thunk of DaemonSession.cancel(request:)();

    if (*(v1 + v25))
    {
      v29 = swift_getKeyPath();
      __chkstk_darwin(v29);
      *(&v52 - 2) = v1;
      *(&v52 - 1) = 0;
      *&v56[0] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v53 = 0;

      goto LABEL_34;
    }
  }

  v53 = 0;
LABEL_34:
  sub_1001DC0E8();
  v30 = *(v1 + 56);
  sub_1000085CC((v30 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v30 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  *&v56[0] = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  *(v30 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  v31 = swift_getKeyPath();
  __chkstk_darwin(v31);
  *(&v52 - 2) = v1;
  *(&v52 - 1) = _swiftEmptyArrayStorage;
  *&v56[0] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount))
  {
    v32 = swift_getKeyPath();
    __chkstk_darwin(v32);
    *(&v52 - 2) = v1;
    *(&v52 - 1) = 0;
    *&v56[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v33 = swift_getKeyPath();
  __chkstk_darwin(v33);
  *(&v52 - 2) = v1;
  *(&v52 - 1) = _swiftEmptyArrayStorage;
  *&v56[0] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v34 = swift_getKeyPath();
  __chkstk_darwin(v34);
  *(&v52 - 2) = v1;
  *(&v52 - 1) = _swiftEmptyArrayStorage;
  *&v56[0] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v35 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText);
  swift_beginAccess();
  if (v35[1])
  {
    v36 = swift_getKeyPath();
    __chkstk_darwin(v36);
    *(&v52 - 3) = 0;
    *(&v52 - 2) = 0;
    *(&v52 - 4) = v1;
    *&v56[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v35 = 0;
    v35[1] = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isListening))
  {
    v37 = swift_getKeyPath();
    __chkstk_darwin(v37);
    *(&v52 - 2) = v1;
    *(&v52 - 8) = 0;
    *&v56[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isListening) = 0;
  }

  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v38 = swift_getKeyPath();
  __chkstk_darwin(v38);
  *(&v52 - 2) = v1;
  *(&v52 - 1) = v56;
  v55 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v1 + 80))
  {
    v39 = swift_getKeyPath();
    __chkstk_darwin(v39);
    *(&v52 - 2) = v1;
    *(&v52 - 8) = 0;
    v55 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + 80) = 0;
  }

  v40 = type metadata accessor for Date();
  v41 = v54;
  v53 = *(*(v40 - 8) + 56);
  v53(v54, 1, 1, v40);
  sub_1001D2344(v41);
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage))
  {
    v42 = swift_getKeyPath();
    __chkstk_darwin(v42);
    *(&v52 - 2) = v1;
    *(&v52 - 8) = 0;
    v55 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastWordCount))
  {
    v43 = swift_getKeyPath();
    __chkstk_darwin(v43);
    *(&v52 - 2) = v1;
    *(&v52 - 1) = 0;
    v55 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastUsedTTSRate))
  {
    v44 = swift_getKeyPath();
    __chkstk_darwin(v44);
    *(&v52 - 2) = v1;
    *(&v52 - 8) = 0;
    v55 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__idealTTSRate))
  {
    v45 = swift_getKeyPath();
    __chkstk_darwin(v45);
    *(&v52 - 2) = v1;
    *(&v52 - 8) = 0;
    v55 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  type metadata accessor for PTSessionMetrics();
  swift_allocObject();
  v46 = sub_100201C4C();
  sub_1001D6AF8(v46);
  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  type metadata accessor for PTFarFieldMetrics();
  v47 = swift_allocObject();
  v48 = v53;
  v53((v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart), 1, 1, v40);
  v48(v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart, 1, 1, v40);
  *(v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration) = 0;
  *(v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration) = 0;
  *(v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_farFieldInputSource) = 0;
  v49 = v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsSNR;
  *v49 = 0;
  *(v49 + 4) = 1;
  v50 = v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneSNR;
  *v50 = 0;
  *(v50 + 4) = 1;
  *(v47 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_spl) = 0;
  return sub_100014A60(v47);
}

BOOL sub_1001DC0E8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerSpeechRequestForTTS;
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerSpeechRequestForTTS);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1001D3DD0();
    dispatch thunk of DaemonSession.cancel(request:)();

    if (*(v1 + v2))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v3 != 0;
}

void sub_1001DC2DC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *&v89 = v0;
  v6 = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive) == 1)
  {
    v64 = v4;
    v68 = v6;
    v69 = v5;
    v7 = *(v0 + 72);
    swift_getKeyPath();
    v8 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
    *&v83 = v7;
    sub_1001F6DA0(&qword_1003AE978, type metadata accessor for DeviceHelper);
    v67 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = (v7 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
    swift_beginAccess();
    v11 = v9[1];
    v10 = v9[2];
    v89 = *v9;
    v90 = v11;
    v91 = v10;
    v12 = v9[3];
    v13 = v9[4];
    v14 = v9[5];
    *(v94 + 9) = *(v9 + 89);
    v93 = v13;
    v94[0] = v14;
    v92 = v12;
    v15 = *(&v90 + 1);
    v70 = v9[2];
    v16 = v9[3];
    v17 = v9[4];
    v18 = v9[5];
    *(v73 + 9) = *(v9 + 89);
    v72 = v17;
    v73[0] = v18;
    v71 = v16;
    if (*(&v89 + 1))
    {
      v83 = v89;
      v65 = v90;
      v84 = v90;
      v86 = v71;
      v87 = v72;
      v88[0] = v73[0];
      *(v88 + 9) = *(v73 + 9);
      v85 = v70;
      sub_10001F620(&v89, v80, &qword_1003A93C8);
      v66 = v15;

      sub_100009EBC(&v83, &qword_1003A93C8);
    }

    else
    {
      v83 = v89;
      v84 = v90;
      v87 = v72;
      v88[0] = v73[0];
      *(v88 + 9) = *(v73 + 9);
      v85 = v70;
      v86 = v71;
      sub_10001F620(&v89, v80, &qword_1003A93C8);
      sub_100009EBC(&v83, &qword_1003A93C8);
      v65 = 0x6E776F6E6B6E75;
      v66 = 0xE700000000000000;
    }

    swift_getKeyPath();
    *&v80[0] = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = v9[2];
    v20 = *v9;
    v84 = v9[1];
    v85 = v19;
    v83 = v20;
    v21 = v9[3];
    v22 = v9[4];
    v23 = v9[5];
    *(v88 + 9) = *(v9 + 89);
    v87 = v22;
    v88[0] = v23;
    v86 = v21;
    v24 = v9[2];
    v74 = v9[1];
    v25 = v9[3];
    v26 = v9[4];
    v27 = v9[5];
    v79 = *(v9 + 12);
    v77 = v26;
    v78 = v27;
    v75 = v24;
    v76 = v25;
    v28 = (*(&v83 + 1) != 0) & BYTE8(v88[1]);
    v80[0] = v83;
    v80[3] = v25;
    v80[4] = v26;
    v80[5] = v27;
    v81 = v79;
    v80[1] = v74;
    v80[2] = v24;
    v82 = BYTE8(v88[1]);
    sub_10001F620(&v83, &v70, &qword_1003A93C8);
    sub_100009EBC(v80, &qword_1003A93C8);
    if (sub_1001D5750())
    {
      swift_getKeyPath();
      *&v70 = v7;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v29 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar;
      if ((*(v7 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) & 1) != 0 || (swift_getKeyPath(), *&v70 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__audioDeviceTakenOutOfEarsGracePeriodTask)))
      {
        swift_getKeyPath();
        *&v70 = v7;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v7 + v29) == 1 && (swift_getKeyPath(), *&v70 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v30 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__audioDeviceTakenOutOfEarsGracePeriodTask, v31 = v66, *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__audioDeviceTakenOutOfEarsGracePeriodTask)))
        {
          if (qword_1003A92B0 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          sub_1000078E8(v32, qword_1003D2920);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *&v70 = v36;
            *v35 = 136315394;
            v37 = sub_10028D78C(v65, v31, &v70);

            *(v35 + 4) = v37;
            *(v35 + 12) = 1024;
            *(v35 + 14) = v28;
            _os_log_impl(&_mh_execute_header, v33, v34, "Audio device put back in ear during grace period, cancelling grace period task. ownerAudioDevice: %s  supportsPersonalTranslator: %{BOOL}d", v35, 0x12u);
            sub_100008664(v36);
          }

          else
          {
          }

          swift_getKeyPath();
          *&v70 = v1;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v1 + v30) && (, sub_100005AD4(&unk_1003B9E90), Task.cancel()(), , *(v1 + v30)))
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            *(&v63 - 2) = v1;
            *(&v63 - 1) = 0;
            *&v70 = v1;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          else
          {
            *(v1 + v30) = 0;
          }
        }

        else
        {
        }
      }

      else
      {
        if (qword_1003A92B0 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_1000078E8(v45, qword_1003D2920);
        v46 = v66;

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();

        v49 = v47;
        if (os_log_type_enabled(v47, v48))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v70 = v51;
          *v50 = 136315394;
          v52 = sub_10028D78C(v65, v46, &v70);

          *(v50 + 4) = v52;
          *(v50 + 12) = 1024;
          *(v50 + 14) = v28;
          _os_log_impl(&_mh_execute_header, v49, v48, "Audio device taken out of both ears. ownerAudioDevice: %s  supportsPersonalTranslator: %{BOOL}d", v50, 0x12u);
          sub_100008664(v51);
        }

        else
        {
        }

        v58 = type metadata accessor for TaskPriority();
        v59 = v64;
        (*(*(v58 - 8) + 56))(v64, 1, 1, v58);
        type metadata accessor for MainActor();

        v60 = static MainActor.shared.getter();
        v61 = swift_allocObject();
        v61[2] = v60;
        v61[3] = &protocol witness table for MainActor;
        v61[4] = v1;
        v62 = sub_1000BF760(0, 0, v59, &unk_1002E7C60, v61);
        sub_1001D6928(v62);
      }
    }

    else
    {
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000078E8(v38, qword_1003D2920);
      v39 = v66;

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v70 = v43;
        *v42 = 136315394;
        v44 = sub_10028D78C(v65, v39, &v70);

        *(v42 + 4) = v44;
        *(v42 + 12) = 1024;
        *(v42 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v40, v41, "Supported device disconnected. ownerAudioDevice: %s  supportsPersonalTranslator: %{BOOL}d", v42, 0x12u);
        sub_100008664(v43);
      }

      else
      {
      }

      sub_1001DA594(2, 0);
    }

    swift_getKeyPath();
    *&v70 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled) & 1) == 0)
    {
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_1000078E8(v54, qword_1003D2920);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Apple Intelligence disabled.", v57, 2u);
      }

      sub_1001DA594(2, 0);
    }
  }
}

uint64_t sub_1001DCE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1001DCF60, v7, v6);
}

uint64_t sub_1001DCF60()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Grace period started", v4, 2u);
  }

  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1001DD0F0;

  return sub_1001F2A0C(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_1001DD0F0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1001DD37C;
  }

  else
  {
    v8 = sub_1001DD288;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001DD288()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Grace period ended", v3, 2u);
  }

  sub_1001DA594(2, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001DD37C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Supported audio device disconnected grace period task cancelled: %@", v3, 0xCu);
    sub_100009EBC(v4, &unk_1003AECA0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1001DD4F0()
{
  v1 = v0;
  v98 = type metadata accessor for PTSessionSummary();
  v95 = *(v98 - 8);
  v2 = __chkstk_darwin(v98);
  v97 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v99 = &v83 - v5;
  v96 = v6;
  __chkstk_darwin(v4);
  v8 = &v83 - v7;
  v9 = sub_100005AD4(&qword_1003AFCE0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v83 - v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v100 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = &v83 - v19;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  aBlock[0] = v0;
  v21 = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  v102 = v20;
  v101 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  sub_10001F620(v0 + v22, v14, &qword_1003AFCE0);
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) == 1)
  {
    v12 = v14;
LABEL_5:
    sub_100009EBC(v12, &qword_1003AFCE0);
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000078E8(v28, qword_1003D2920);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Cannot send logging metrics with nil locales", v31, 2u);
    }

    return;
  }

  v94 = v8;
  v24 = v16;
  v25 = v14;
  v26 = *(v16 + 32);
  v26(v103, v25, v15);
  swift_getKeyPath();
  aBlock[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v27, v12, &qword_1003AFCE0);
  if (v23(v12, 1, v15) == 1)
  {
    (*(v16 + 8))(v103, v15);
    goto LABEL_5;
  }

  v32 = v100;
  v26(v100, v12, v15);
  v83 = v24;
  v33 = *(v24 + 16);
  v34 = v94;
  v33(v94, v103, v15);
  v35 = v98;
  v36 = v34 + *(v98 + 20);
  v84 = v15;
  v33(v36, v32, v15);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics;
  v93 = *(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics) + 16);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v92) = *(*(v1 + v37) + 17);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionDuration);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADDuration);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVADuration);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airPodsMicDuration);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_iPhoneMicDuration);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airPodsSNR;
  v91 = *v43;
  v90 = *(v43 + 4);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_iPhoneSNR;
  v89 = *v44;
  v88 = *(v44 + 4);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_spl);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v87 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_languageSwitches);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v86 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_ovadStarts);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = v1;
  v85 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_averageTTSCharacterCount);
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(*(v1 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_coachingPrompts);
  swift_getKeyPath();
  aBlock[0] = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(*(v46 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_durationSessionAtCoachingPromptSecs);
  swift_getKeyPath();
  aBlock[0] = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v102 = v46;
  v49 = *(*(v46 + v37) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airpodsModel);
  v50 = sub_10029215C(&off_10037D0F8);
  sub_100005AD4(&qword_1003B7A18);
  swift_arrayDestroy();
  *(v34 + v35[6]) = v93;
  *(v34 + v35[7]) = v92;
  *(v34 + v35[8]) = v38;
  *(v34 + v35[9]) = v39;
  *(v34 + v35[10]) = v40;
  *(v34 + v35[11]) = v41;
  *(v34 + v35[12]) = v42;
  v51 = v34 + v35[13];
  *v51 = v91;
  *(v51 + 4) = v90;
  v52 = v34 + v35[14];
  *v52 = v89;
  *(v52 + 4) = v88;
  *(v34 + v35[15]) = v45;
  *(v34 + v35[16]) = v87;
  *(v34 + v35[17]) = v86;
  *(v34 + v35[18]) = v85;
  *(v34 + v35[19]) = v47;
  *(v34 + v35[20]) = v48;
  *(v34 + v35[21]) = v49;
  *(v34 + v35[22]) = v50;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_1000078E8(v53, qword_1003D2920);
  v54 = v99;
  sub_1001F7D1C(v34, v99);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v104 = v58;
    *v57 = 136315138;
    sub_1002023B8();
    v60 = v59;
    v61 = *(v59 + 16);
    if (v61)
    {
      v92 = v58;
      v93 = v56;
      v98 = v57;
      v62 = sub_1002BF784(v61, 0);
      v101 = sub_1001F3988(aBlock, v62 + 4, v61, v60);

      sub_10000C1D0();
      if (v101 != v61)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v63 = v103;
      v57 = v98;
      LOBYTE(v56) = v93;
      v58 = v92;
    }

    else
    {
      v62 = _swiftEmptyArrayStorage;
      v63 = v103;
    }

    aBlock[0] = v62;
    sub_1001F2EC4(aBlock);

    sub_100005AD4(&qword_1003AF400);
    v64 = Array.description.getter();
    v66 = v65;

    sub_1001F82DC(v54, type metadata accessor for PTSessionSummary);
    v67 = sub_10028D78C(v64, v66, &v104);

    *(v57 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v55, v56, "Sending PTSessionSummary analytics event %s", v57, 0xCu);
    sub_100008664(v58);

    v34 = v94;
  }

  else
  {

    sub_1001F82DC(v54, type metadata accessor for PTSessionSummary);
    v63 = v103;
  }

  v68 = String._bridgeToObjectiveC()();
  v69 = v97;
  sub_1001F7D1C(v34, v97);
  v70 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v71 = v34;
  v72 = swift_allocObject();
  sub_1001F7E94(v69, v72 + v70);
  aBlock[4] = sub_1001F7EF8;
  aBlock[5] = v72;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100241654;
  aBlock[3] = &unk_100389070;
  v73 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v73);

  type metadata accessor for PTSessionMetrics();
  swift_allocObject();
  v74 = sub_100201C4C();
  sub_1001D6AF8(v74);
  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  type metadata accessor for PTFarFieldMetrics();
  v75 = swift_allocObject();
  v76 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart;
  v77 = type metadata accessor for Date();
  v78 = *(*(v77 - 8) + 56);
  v78(v75 + v76, 1, 1, v77);
  v78(v75 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart, 1, 1, v77);
  *(v75 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration) = 0;
  *(v75 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration) = 0;
  *(v75 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_farFieldInputSource) = 0;
  v79 = v75 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsSNR;
  *v79 = 0;
  *(v79 + 4) = 1;
  v80 = v75 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneSNR;
  *v80 = 0;
  *(v80 + 4) = 1;
  *(v75 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_spl) = 0;
  sub_100014A60(v75);
  sub_1001F82DC(v71, type metadata accessor for PTSessionSummary);
  v81 = *(v83 + 8);
  v82 = v84;
  v81(v100, v84);
  v81(v63, v82);
}

uint64_t sub_1001DE554(void *a1, void *a2)
{
  v3 = v2;
  v49 = a2;
  v5 = *v2;
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v45 = &v43 - v7;
  v8 = type metadata accessor for Locale();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D2920);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Finalizing translation", v16, 2u);
  }

  swift_getKeyPath();
  *&v50[0] = v3;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(*(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSelfLoggingInvocation) + 16);
  if (v17)
  {

    v18 = [v17 invocationId];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 56))(v12, v19, 1, v20);
  swift_getKeyPath();
  *&v50[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100225A0C();

  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of SpeechResult.isEmpty()())
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Not storing speech translation result, as speech result is empty";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v44 = v5;
  v25 = v3[7];
  v26 = a1[3];
  v27 = a1[4];
  v28 = sub_1000085CC(a1, v26);
  v29 = v49[3];
  v30 = v49[4];
  v31 = sub_1000085CC(v49, v29);
  v32 = sub_1002B4F2C(v28, v31, 0, v12, v25, v26, v29, v27, v30);
  if (!v32)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Something went wrong when saving translation result to the store";
      goto LABEL_17;
    }

LABEL_18:

    return sub_100009EBC(v12, &unk_1003B8C90);
  }

  sub_1000085CC(a1, a1[3]);
  v33 = v46;
  dispatch thunk of AnnotatedResult.locale.getter();
  v34 = Locale.identifier.getter();
  v36 = v35;
  (*(v47 + 8))(v33, v48);
  v37 = sub_1001D1A94(v34, v36);

  if (sub_1001F4FDC() & 1) == 0 && (v37)
  {
    v38 = type metadata accessor for TaskPriority();
    v39 = v45;
    (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
    sub_100031DD8(v49, v50);
    type metadata accessor for MainActor();

    v40 = static MainActor.shared.getter();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = &protocol witness table for MainActor;
    v41[4] = v3;
    sub_100051124(v50, (v41 + 5));
    v41[10] = v44;
    sub_10005E36C(0, 0, v39, &unk_1002E7BE8, v41);
  }

  return sub_100009EBC(v12, &unk_1003B8C90);
}

void sub_1001DEB90()
{
  v1 = v0;
  v2 = _convertErrorToNSError(_:)();
  sub_100009440(v2);
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2920);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    v9 = String.init<A>(describing:)();
    v11 = sub_10028D78C(v9, v10, &v13);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = _convertErrorToNSError(_:)();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received error with reason '%{public}s': %@", v6, 0x16u);
    sub_100009EBC(v7, &unk_1003AECA0);

    sub_100008664(v8);
  }

  sub_100278D7C(4u, sub_1001F8A38, v1);

  sub_1001DA594(2, 0);
}

void sub_1001DEDA4()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning) == 1)
  {
    v1 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:14 userInfo:0];
    sub_1001DEB90();
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2920);
    v1 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, v3, "Received audio interruption before audio session started", v4, 2u);
    }
  }
}

uint64_t sub_1001DEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DEFE0, v6, v5);
}

uint64_t sub_1001DEFE0()
{

  sub_1001DF048();
  sub_1001DC2DC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DF048()
{
  v1 = sub_1001D5750() & 1;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isStartButtonEnabled;
  if (v1 != *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isStartButtonEnabled))
  {
    result = sub_1001D5750();
    if ((result & 1) == *(v0 + v3))
    {
      *(v0 + v3) = result & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1001DF1B0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled))
  {
    result = sub_1001DF33C();
    v3 = result;
    v4 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__shouldShowPersonalTranslatorTab);
    if ((result & 1) == *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__shouldShowPersonalTranslatorTab))
    {
LABEL_3:
      *v4 = v3 & 1;
      return result;
    }
  }

  else
  {
    v3 = 0;
    v4 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__shouldShowPersonalTranslatorTab);
    if ((*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__shouldShowPersonalTranslatorTab) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DF33C()
{
  v0 = sub_1001D5750();
  sub_10000A2CC(0, &qword_1003A9B80);
  v1 = static NSUserDefaults.translationGroupDefaults.getter();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2920);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10028D78C(0xD000000000000015, 0x80000001002F9900, &v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: returning saved audio device capability as true", v7, 0xCu);
      sub_100008664(v8);
    }

    return 1;
  }

  if (v0)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2920);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10028D78C(0xD000000000000015, 0x80000001002F9900, &v18);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s: detected capable audio device for the first time, updating defaults", v12, 0xCu);
      sub_100008664(v13);
    }

    v14 = static NSUserDefaults.translationGroupDefaults.getter();
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setValue:isa forKey:v16];

    type metadata accessor for ControlCenter();
    static ControlCenter.shared.getter();
    dispatch thunk of ControlCenter.reloadControls(ofKind:)();

    return 1;
  }

  return 0;
}

uint64_t sub_1001DF69C()
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001DF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    withObservationTracking<A>(_:onChange:)();
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    sub_10005E36C(0, 0, v8, a5, v13);
  }

  return result;
}

uint64_t sub_1001DF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DF94C, v6, v5);
}

uint64_t sub_1001DF94C()
{

  sub_1001DC2DC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DF9B0()
{
  v1 = v0;
  v37 = *v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v39 = &v32 - v3;
  v4 = type metadata accessor for Locale();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  v6 = __chkstk_darwin(v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D2920);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Playing degraded experience message", v13, 2u);
  }

  swift_getKeyPath();
  *&v46[0] = v1;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_coachingPrompts) = 1;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v32 - 2) = v1;
    *(&v32 - 8) = 1;
    *&v46[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v15;
  v16 = v8;
  v35 = v8;
  static Locale.current.getter();
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v17 = type metadata accessor for TaskPriority();
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  (*(*(v17 - 8) + 56))(v39, 1, 1, v17);
  v18 = v36;
  (*(v36 + 16))(v38, v16, v4);
  sub_10001F620(v46, v42, &unk_1003AECE0);
  sub_10001F620(v44, v40, &unk_1003B9EC0);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = v19;
  *(v25 + 3) = &protocol witness table for MainActor;
  v26 = v33;
  *(v25 + 4) = v34;
  *(v25 + 5) = v26;
  (*(v18 + 32))(&v25[v20], v38, v4);
  *&v25[v21] = v22;
  v27 = &v25[v23];
  *(v27 + 4) = v43;
  v28 = v42[1];
  *v27 = v42[0];
  *(v27 + 1) = v28;
  v29 = &v25[v24];
  v30 = v40[1];
  *v29 = v40[0];
  *(v29 + 1) = v30;
  *(v29 + 4) = v41;
  *&v25[(v24 + 47) & 0xFFFFFFFFFFFFFFF8] = v37;
  sub_10005E36C(0, 0, v39, &unk_1002E7B58, v25);

  sub_100009EBC(v44, &unk_1003B9EC0);
  sub_100009EBC(v46, &unk_1003AECE0);
  return (*(v18 + 8))(v35, v4);
}

void sub_1001DFFFC()
{
  v1 = v0;
  v94 = *v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v98 = v82 - v3;
  v91 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v89 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v86 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for LocalizedStringResource();
  v93 = *(v97 - 8);
  v9 = __chkstk_darwin(v97);
  v87 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = v82 - v11;
  v12 = sub_100005AD4(&qword_1003AFCE0);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v82 - v15;
  v102 = type metadata accessor for Locale();
  v17 = *(v102 - 8);
  v18 = __chkstk_darwin(v102);
  v95 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v82 - v21;
  v88 = v23;
  __chkstk_darwin(v20);
  v25 = v82 - v24;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v100 = v22;
  v101 = v25;
  v26 = type metadata accessor for Logger();
  v27 = sub_1000078E8(v26, qword_1003D2920);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Playing start message", v30, 2u);
  }

  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *&v109[0] = v1;
  v32 = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v33, v16, &qword_1003AFCE0);
  v34 = v17;
  v35 = *(v17 + 48);
  v36 = v102;
  if (v35(v16, 1, v102) == 1)
  {
    sub_100009EBC(v16, &qword_1003AFCE0);
LABEL_13:
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Couldn't play start message because couldn't get environment locale display name localized in device owner locale", v53, 2u);
    }

    return;
  }

  v84 = v27;
  v37 = v34 + 32;
  v38 = v101;
  v85 = *(v34 + 32);
  v85(v101, v16, v36);
  swift_getKeyPath();
  *&v109[0] = v1;
  v82[1] = v31;
  v82[0] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  v83 = v1;
  v40 = v1 + v39;
  v41 = v102;
  v42 = v99;
  sub_10001F620(v40, v99, &qword_1003AFCE0);
  if (v35(v42, 1, v41) == 1)
  {
    (*(v34 + 8))(v38, v41);
    sub_100009EBC(v42, &qword_1003AFCE0);
    goto LABEL_13;
  }

  v43 = v34;
  v44 = v100;
  v85(v100, v42, v41);
  v45 = Locale.sqDisplayName(context:in:)();
  if (!v46)
  {
    v50 = *(v34 + 8);
    v50(v44, v41);
    v50(v38, v41);
    goto LABEL_13;
  }

  v47 = v45;
  v48 = v46;
  v99 = v37;
  v49 = v83;
  if (*(v83 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage))
  {
    *(v83 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v109[0] = v49;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v55 = v43;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56._countAndFlagsBits = 0x74616C736E617254;
  v56._object = 0xEC00000020676E69;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
  v57._countAndFlagsBits = v47;
  v57._object = v48;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v57);

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
  String.LocalizationValue.init(stringInterpolation:)();
  v59 = *(v43 + 16);
  v60 = v95;
  v61 = v100;
  v62 = v102;
  v59(v95, v100, v102);
  (*(v90 + 104))(v92, enum case for LocalizedStringResource.BundleDescription.main(_:), v91);
  v63 = v96;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v64 = v93;
  (*(v93 + 16))(v87, v63, v97);
  v92 = String.init(localized:)();
  v91 = v65;
  v110 = 0;
  memset(v109, 0, sizeof(v109));
  v66 = type metadata accessor for TaskPriority();
  memset(v107, 0, sizeof(v107));
  v108 = 0;
  (*(*(v66 - 8) + 56))(v98, 1, 1, v66);
  v59(v60, v61, v62);
  sub_10001F620(v109, v105, &unk_1003AECE0);
  sub_10001F620(v107, v103, &unk_1003B9EC0);
  type metadata accessor for MainActor();
  v67 = v83;

  v68 = static MainActor.shared.getter();
  v69 = (*(v55 + 80) + 48) & ~*(v55 + 80);
  v70 = v55;
  v71 = (v88 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 47) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 2) = v68;
  *(v74 + 3) = &protocol witness table for MainActor;
  v75 = v91;
  *(v74 + 4) = v92;
  *(v74 + 5) = v75;
  v76 = v102;
  v85(&v74[v69], v95, v102);
  *&v74[v71] = v67;
  v77 = &v74[v72];
  *(v77 + 4) = v106;
  v78 = v105[1];
  *v77 = v105[0];
  *(v77 + 1) = v78;
  v79 = &v74[v73];
  v80 = v103[1];
  *v79 = v103[0];
  *(v79 + 1) = v80;
  *(v79 + 4) = v104;
  *&v74[(v73 + 47) & 0xFFFFFFFFFFFFFFF8] = v94;
  sub_10005E36C(0, 0, v98, &unk_1002E7B50, v74);

  sub_100009EBC(v107, &unk_1003B9EC0);
  sub_100009EBC(v109, &unk_1003AECE0);
  (*(v64 + 8))(v96, v97);
  v81 = *(v70 + 8);
  v81(v100, v76);
  v81(v101, v76);
}

uint64_t sub_1001E0C74()
{
  v1[2] = v0;
  v2 = type metadata accessor for Locale();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001E0D60, 0, 0);
}

uint64_t sub_1001E0D60()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Playing download languages message", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[3];
  v7 = v0[4];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v0[8] = v8;
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  (*(v7 + 8))(v5, v6);
  sub_1001F5660(v9, v11);
  v13 = v12;

  v14 = objc_allocWithZone(type metadata accessor for SpeechRequest());

  v15 = v13;
  v16 = SpeechRequest.init(text:voice:)();
  v0[9] = v16;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1001E0FE0;

  return sub_1001F6158(v16);
}

uint64_t sub_1001E0FE0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001E1100, 0, 0);
}

uint64_t sub_1001E1100()
{
  if (*(v0 + 88))
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 72);
    if (v3)
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "TTS: Download languages message error: %@", v5, 0xCu);
      sub_100009EBC(v6, &unk_1003AECA0);
    }

    else
    {
    }
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001E1288()
{
  v1[2] = v0;
  v2 = type metadata accessor for Locale();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001E1374, 0, 0);
}

uint64_t sub_1001E1374()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Playing onboarding needed message", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[3];
  v7 = v0[4];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v0[8] = v8;
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  (*(v7 + 8))(v5, v6);
  sub_1001F5660(v9, v11);
  v13 = v12;

  v14 = objc_allocWithZone(type metadata accessor for SpeechRequest());

  v15 = v13;
  v16 = SpeechRequest.init(text:voice:)();
  v0[9] = v16;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1001E15F4;

  return sub_1001F6158(v16);
}

uint64_t sub_1001E15F4(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001E1714, 0, 0);
}

uint64_t sub_1001E1714()
{
  if (*(v0 + 88))
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 72);
    if (v3)
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "TTS: Onboarding needed message error: %@", v5, 0xCu);
      sub_100009EBC(v6, &unk_1003AECA0);
    }

    else
    {
    }
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001E189C(uint64_t a1)
{
  v17 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v17, v7);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_1001F7990;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100388FA8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001F6DA0(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v3, v1);
  return (*(v18 + 8))(v6, v19);
}

void sub_1001E1C70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  swift_getKeyPath();
  v96 = v1;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning) != 1)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000078E8(v15, qword_1003D2920);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Received Route change notification before audio session started";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

LABEL_27:

    return;
  }

  swift_getKeyPath();
  v96 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive) != 1)
  {

    return;
  }

  Notification.object.getter();
  if (!v98)
  {
    sub_100009EBC(&v96, &unk_1003AB9C0);
    goto LABEL_23;
  }

  sub_10000A2CC(0, &qword_1003AED38);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_1003A92B0 != -1)
    {
LABEL_97:
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000078E8(v20, qword_1003D2920);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Audio route changed but no session was found";
    goto LABEL_26;
  }

  v2 = v99;
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = v3;
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10028DF68(&v96), (v6 & 1) == 0))
  {

    sub_100078028(&v96);
    goto LABEL_30;
  }

  sub_10000A37C(*(v4 + 56) + 32 * v5, &v99);
  sub_100078028(&v96);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000078E8(v21, qword_1003D2920);
    v9 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v22))
    {
      goto LABEL_35;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v9, v22, "Audio route change reason: No reason provided", v23, 2u);
    goto LABEL_34;
  }

  v7 = v95;
  if (qword_1003A92B0 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2920);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_35;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v96 = v12;
    *v11 = 136315138;
    if (v7 > 3)
    {
      if (v7 > 6)
      {
        if (v7 == 7)
        {
          v14 = 0x80000001002F3760;
          v13 = 0xD00000000000001ALL;
          goto LABEL_95;
        }

        if (v7 == 8)
        {
          v14 = 0x80000001002F3740;
          v13 = 0xD000000000000018;
          goto LABEL_95;
        }
      }

      else
      {
        if (v7 == 4)
        {
          v14 = 0xE800000000000000;
          v13 = 0x656469727265766FLL;
          goto LABEL_95;
        }

        if (v7 == 6)
        {
          v14 = 0xED00007065656C53;
          v13 = 0x6D6F7246656B6177;
          goto LABEL_95;
        }
      }

      goto LABEL_94;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        v14 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E75;
        goto LABEL_95;
      }

      if (v7 == 1)
      {
        v13 = 0xD000000000000012;
        v14 = 0x80000001002F37A0;
        goto LABEL_95;
      }

LABEL_94:
      v14 = 0xEE006E6F69747069;
      v13 = 0x7263736564206F6ELL;
      goto LABEL_95;
    }

    if (v7 == 2)
    {
      v14 = 0x80000001002F3780;
      v13 = 0xD000000000000014;
    }

    else
    {
      v14 = 0xEE0065676E616843;
      v13 = 0x79726F6765746163;
    }

LABEL_95:
    v84 = sub_10028D78C(v13, v14, &v96);

    *(v11 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v9, v10, "Audio route change reason: %s", v11, 0xCu);
    sub_100008664(v12);

LABEL_34:

LABEL_35:

    v7 = &selRef_optionButtonPressedWithSender_;
    v24 = [v2 opaqueSessionID];
    v25 = *(v1 + 32);
    v26 = *(*&v25[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_recordingHelper] + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession);
    v27 = v25;
    if (v26)
    {
      v28 = [v26 opaqueSessionID];
    }

    else
    {
      v28 = 0;
    }

    if (qword_1003A9170 != -1)
    {
      swift_once();
    }

    v29 = qword_1003D2470;
    swift_getKeyPath();
    v96 = v29;
    sub_1001F6DA0(&qword_1003AA3A0, type metadata accessor for AudioRouteManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v29 + 32);

    if (v30)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000078E8(v32, qword_1003D2920);
    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v93 = v24;
      v36 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v36 = 67109890;
      *(v36 + 4) = [v33 opaqueSessionID];

      *(v36 + 8) = 1024;
      *(v36 + 10) = v24 != v31;
      *(v36 + 14) = 2080;
      v37 = [v33 currentRoute];
      v38 = [v37 inputs];

      sub_10000A2CC(0, &unk_1003AED40);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v31;
      v39 = v33;

      v40 = Array.description.getter();
      v42 = v41;

      v43 = sub_10028D78C(v40, v42, &v96);

      *(v36 + 16) = v43;
      *(v36 + 24) = 2080;
      v44 = [v33 currentRoute];
      v45 = [v44 outputs];

      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = Array.description.getter();
      v48 = v47;

      v7 = sub_10028D78C(v46, v48, &v96);
      v33 = v39;

      *(v36 + 26) = v7;
      _os_log_impl(&_mh_execute_header, v34, v35, "Audio route changed for session: %u. IsDefaultSession: %{BOOL}d\nInputs: %s\nOutputs: %s", v36, 0x22u);
      swift_arrayDestroy();

      if (v93 == v94)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (v24 == v31)
      {
LABEL_47:

        return;
      }
    }

    v49 = [v33 currentRoute];
    v2 = [v49 outputs];

    sub_10000A2CC(0, &unk_1003AED40);
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v50 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_99;
      }
    }

    else if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_99;
    }

    if ((v50 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v51 = *(v50 + 32);
      goto LABEL_54;
    }

    __break(1u);
LABEL_104:
    swift_once();
  }

  v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_54:
  v52 = v51;

  v53 = [v52 UID];

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v96 = v54;
  v97 = v56;
  v99 = 45;
  v100 = 0xE100000000000000;
  v57 = sub_10001F278();
  v58 = StringProtocol.components<A>(separatedBy:)();

  if (!v58[2])
  {
LABEL_99:

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Audio route change. Cannot get output ID", v87, 2u);
    }

    return;
  }

  v88 = v33;
  v89 = v58[4];
  v90 = v58[5];

  v59 = *(v1 + 72);
  swift_getKeyPath();
  v96 = v59;
  sub_1001F6DA0(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = *(v59 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  v61 = *(v60 + 16);

  if (!v61)
  {
LABEL_69:

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Audio route changed output to a device not found in deviceHelper device list, inactivating", v80, 2u);
    }

    sub_1001DA594(2, 1);

    goto LABEL_80;
  }

  v62 = 0;
  v63 = 0;
  v92 = v60;
  while (2)
  {
    if (v63 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_97;
    }

    v64 = v60 + v62;
    v65 = *(v60 + v62 + 72);
    if (!v65)
    {
      goto LABEL_59;
    }

    v66 = v57;
    v67 = *(v64 + 120);
    v68 = *(v64 + 128);
    v91 = *(v64 + 136);
    v96 = *(v64 + 64);
    v97 = v65;
    v99 = 45;
    v100 = 0xE100000000000000;

    v69 = v67;
    v70 = v68;
    v57 = v66;
    v71 = v70;
    v72 = StringProtocol.components<A>(separatedBy:)();
    if (!v72[2])
    {

      goto LABEL_58;
    }

    v73 = v57;
    v75 = v72[4];
    v74 = v72[5];

    if (v75 == v89 && v74 == v90)
    {

      goto LABEL_74;
    }

    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v77 & 1) == 0)
    {

      v57 = v73;
LABEL_58:
      v60 = v92;
LABEL_59:
      ++v63;
      v62 += 112;
      if (v61 == v63)
      {
        goto LABEL_69;
      }

      continue;
    }

    break;
  }

LABEL_74:
  if (v91)
  {
  }

  else
  {
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Audio route changed output to device not supporting PT, inactivating", v83, 2u);
    }

    sub_1001DA594(2, 1);
  }

LABEL_80:
}
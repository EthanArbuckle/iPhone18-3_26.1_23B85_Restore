uint64_t sub_100217098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Locale();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v8;
  v5[10] = v7;

  return _swift_task_switch(sub_100217198, v8, v7);
}

uint64_t sub_100217198()
{
  v0[11] = [objc_allocWithZone(type metadata accessor for OnBoardingPresenter()) init];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_10021724C;
  v2 = v0[2];

  return sub_10019D264(v2);
}

uint64_t sub_10021724C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10021736C, v3, v2);
}

uint64_t sub_10021736C()
{
  v1 = *(v0 + 88);

  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_initialLocalePair);
  if (v2)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v35 = *(v0 + 88);
    v33 = *(*(v0 + 24) + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_conversation);
    v32 = v2;
    v7 = [v32 sourceLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v0;
    v8 = *(v5 + 16);
    v8(v4, v3, v6);
    v9 = v33;
    static Published.subscript.setter();
    sub_10009786C();
    v10 = *(v5 + 8);
    v10(v3, v6);
    v11 = [v32 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    swift_getKeyPath();
    v8(v4, v3, v6);
    v0 = v34;
    v12 = v9;
    static Published.subscript.setter();
    sub_100097A18();
    v10(v3, v6);
    v13 = [v32 sourceLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    Locale.identifier.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    [v15 setObject:v16 forKey:v17];

    v10(v3, v6);
    v18 = [v32 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = [v14 standardUserDefaults];
    Locale.identifier.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = String._bridgeToObjectiveC()();
    [v19 setObject:v20 forKey:v21];

    Locale.identifier.getter();
    sub_10022AA40();
    v10(v3, v6);
    v22 = [v32 sourceLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = [v14 standardUserDefaults];
    Locale.identifier.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();
    [v23 setObject:v24 forKey:v25];

    v10(v3, v6);
    v26 = [v32 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = [v14 standardUserDefaults];
    Locale.identifier.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = String._bridgeToObjectiveC()();
    [v27 setObject:v28 forKey:v29];

    v10(v3, v6);
  }

  else
  {
  }

  v30 = *(v0 + 8);

  return v30();
}

id sub_1002178B0()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window] = 0;
  v2 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_conversation;
  *&v1[v2] = [objc_allocWithZone(type metadata accessor for ConversationManager()) init];
  v3 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_context;
  type metadata accessor for ConversationContext(0);
  swift_allocObject();
  *&v1[v3] = sub_10007E018();
  sub_10000A2CC(0, &qword_1003BB780);
  v4 = sub_10000B55C();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_sceneContext);
    v6 = v4;
  }

  else
  {
    type metadata accessor for SceneContext();
    swift_allocObject();
    v5 = sub_1002121AC();
  }

  *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_sceneContext] = v5;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sharedTranslationOptions] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___store] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___favoritesImporter] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sessionManager] = 0;
  v7 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_menuCommandController;
  type metadata accessor for MenuCommandController();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100292900(_swiftEmptyArrayStorage);
  *(v8 + 24) = sub_100292914(_swiftEmptyArrayStorage);
  *&v1[v7] = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_100217A68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100217B8C(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v62 = a5;
  v67 = a3;
  v71 = type metadata accessor for Locale();
  v64 = *(v71 - 8);
  __chkstk_darwin(v71);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a4;
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    goto LABEL_39;
  }

  v11 = 0;
  v68 = a1 & 0xC000000000000001;
  v69 = v10;
  v12 = (v64 + 8);
  v70 = a1;
  v13 = v71;
  do
  {
    if (v68)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(a1 + 8 * v11 + 32);
    }

    v15 = v14;
    v11 = (v11 + 1);
    v16 = [v14 sourceLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = Locale.identifier.getter();
    v19 = v18;
    v20 = *v12;
    (*v12)(v9, v13);
    swift_beginAccess();
    sub_10021A60C(v72, v17, v19);
    swift_endAccess();

    v21 = [v15 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = Locale.identifier.getter();
    v24 = v23;
    v20(v9, v13);
    swift_beginAccess();
    sub_10021A60C(v72, v22, v24);
    swift_endAccess();

    a1 = v70;
  }

  while (v69 != v11);
LABEL_10:
  swift_beginAccess();
  v25 = *(a2 + 16);
  v26 = v25 + 56;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 56);
  v30 = (v27 + 63) >> 6;
  v69 = (v64 + 8);

  v31 = 0;
  v68 = v25;
  v65 = v30;
  for (i = v25 + 56; v29; v26 = i)
  {
    while (1)
    {
LABEL_19:
      v33 = (*(v25 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v29)))));
      v34 = *v33;
      v35 = v33[1];
      v72[0] = *v33;
      v72[1] = v35;
      v73 = 95;
      v74 = 0xE100000000000000;
      sub_10001F278();

      v36 = StringProtocol.components<A>(separatedBy:)();
      if (!v36[2])
      {
        goto LABEL_36;
      }

      v70 = v34;
      v29 &= v29 - 1;
      v37 = v36[4];
      v38 = v36[5];

      v39 = [objc_opt_self() currentLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v40._countAndFlagsBits = v37;
      v40._object = v38;
      object = Locale.localizedString(forIdentifier:)(v40).value._object;

      (*v69)(v9, v71);
      if (object)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_15;
      }
    }

    v42 = String.lowercased()();

    v43 = v67;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v43 + 16);
    v45 = v73;
    *(v43 + 16) = 0x8000000000000000;
    v47 = sub_10028DD34(v42._countAndFlagsBits, v42._object);
    v48 = *(v45 + 16);
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_37;
    }

    v51 = v46;
    if (*(v45 + 24) >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v54 = v73;
        if (v46)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1002914C4();
        v54 = v73;
        if (v51)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_1002903C8(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_10028DD34(v42._countAndFlagsBits, v42._object);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_40;
      }

      v47 = v52;
      v54 = v73;
      if (v51)
      {
LABEL_28:
        v55 = (v54[7] + 16 * v47);
        *v55 = v70;
        v55[1] = v35;

        goto LABEL_32;
      }
    }

    v54[(v47 >> 6) + 8] |= 1 << v47;
    *(v54[6] + 16 * v47) = v42;
    v56 = (v54[7] + 16 * v47);
    *v56 = v70;
    v56[1] = v35;
    v57 = v54[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_38;
    }

    v54[2] = v59;
LABEL_32:
    *(v67 + 16) = v54;
    swift_endAccess();
    v25 = v68;
    v30 = v65;
  }

LABEL_15:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      swift_beginAccess();

      v63(v60);
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_19;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100218160(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000A2CC(0, &qword_1003B3EC0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t sub_1002181E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v4 = a2 + 64;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    if (v7)
    {
      while (1)
      {
        v11 = v10;
LABEL_9:
        sub_10001F278();

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v7 &= v7 - 1;

        v10 = v11;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      Locale.init(identifier:)();

      v15 = type metadata accessor for Locale();
      return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {

          v12 = type metadata accessor for Locale();
          return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v13 = type metadata accessor for Locale();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }

  return result;
}

uint64_t sub_10021842C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v162 = a7;
  v153 = a6;
  v147 = a5;
  v163 = a3;
  v169 = a2;
  v156 = type metadata accessor for Notification();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v12 - 8);
  v144 = &v140 - v13;
  v170 = type metadata accessor for Locale();
  v14 = *(v170 - 8);
  v15 = __chkstk_darwin(v170);
  v146 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v145 = &v140 - v18;
  v19 = __chkstk_darwin(v17);
  v149 = &v140 - v20;
  v21 = __chkstk_darwin(v19);
  v160 = &v140 - v22;
  v23 = __chkstk_darwin(v21);
  v161 = &v140 - v24;
  __chkstk_darwin(v23);
  v148 = &v140 - v25;
  v26 = sub_100005AD4(&qword_1003AFCE0);
  v27 = __chkstk_darwin(v26 - 8);
  v143 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v152 = &v140 - v30;
  v31 = __chkstk_darwin(v29);
  v151 = &v140 - v32;
  v33 = __chkstk_darwin(v31);
  v159 = &v140 - v34;
  v35 = __chkstk_darwin(v33);
  v158 = &v140 - v36;
  v37 = __chkstk_darwin(v35);
  v157 = &v140 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v140 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v140 - v43;
  __chkstk_darwin(v42);
  v46 = &v140 - v45;
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = sub_1000078E8(v47, qword_1003D2710);
  v165 = a1;
  sub_10001F620(a1, v46, &qword_1003AFCE0);
  sub_10001F620(v169, v44, &qword_1003AFCE0);

  swift_bridgeObjectRetain_n();
  v150 = v48;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  v51 = os_log_type_enabled(v49, v50);
  v168 = a4;
  v166 = v14;
  v52 = v167;
  v164 = a8;
  if (v51)
  {
    v141 = v50;
    v142 = v49;
    v53 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *&v175[0] = v140;
    *v53 = 136447235;
    sub_10001F620(v46, v41, &qword_1003AFCE0);
    v54 = *(v14 + 48);
    v55 = v170;
    if (v54(v41, 1, v170) == 1)
    {
      sub_100009EBC(v41, &qword_1003AFCE0);
      v56 = 0xE300000000000000;
      v57 = 7104878;
    }

    else
    {
      v58 = v14;
      v57 = Locale.identifier.getter();
      v56 = v59;
      (*(v58 + 8))(v41, v55);
    }

    sub_100009EBC(v46, &qword_1003AFCE0);
    v60 = sub_10028D78C(v57, v56, v175);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2082;
    v61 = v157;
    sub_10001F620(v44, v157, &qword_1003AFCE0);
    if (v54(v61, 1, v55) == 1)
    {
      sub_100009EBC(v61, &qword_1003AFCE0);
      v62 = 0xE300000000000000;
      v63 = 7104878;
    }

    else
    {
      v63 = Locale.identifier.getter();
      v62 = v64;
      (*(v166 + 8))(v61, v55);
    }

    v65 = v167;
    v66 = v168;
    a8 = v164;
    sub_100009EBC(v44, &qword_1003AFCE0);
    v67 = sub_10028D78C(v63, v62, v175);

    *(v53 + 14) = v67;
    *(v53 + 22) = 2050;
    if (v66)
    {
      v68 = v163;
      v69 = String.count.getter();

      v70 = v66;
    }

    else
    {
      v69 = 0;
      v70 = 0xE300000000000000;
      v68 = 7104878;
    }

    *(v53 + 24) = v69;

    *(v53 + 32) = 2085;

    v71 = sub_10028D78C(v68, v70, v175);

    *(v53 + 34) = v71;
    *(v53 + 42) = 2082;
    if (a8)
    {
      v72 = v162;
    }

    else
    {
      v72 = 7104878;
    }

    if (a8)
    {
      v73 = a8;
    }

    else
    {
      v73 = 0xE300000000000000;
    }

    v74 = sub_10028D78C(v72, v73, v175);

    *(v53 + 44) = v74;
    v75 = v142;
    _os_log_impl(&_mh_execute_header, v142, v141, "openURL sourceLanguage: %{public}s; targetLanguage: %{public}s; text (length: %{public}ld: %{sensitive}s; linkSource: %{public}s", v53, 0x34u);
    swift_arrayDestroy();

    v14 = v166;
    v52 = v65;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_100009EBC(v44, &qword_1003AFCE0);
    sub_100009EBC(v46, &qword_1003AFCE0);
    v55 = v170;
  }

  v76 = *(v52 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_context);
  swift_getKeyPath();
  swift_getKeyPath();
  v175[0] = 0uLL;

  static Published.subscript.setter();
  v142 = v76;
  sub_100080258();
  v77 = v158;
  sub_10001F620(v165, v158, &qword_1003AFCE0);
  v78 = *(v14 + 48);
  v79 = v78(v77, 1, v55);
  v157 = v14 + 48;
  if (v79 == 1)
  {
    sub_100009EBC(v77, &qword_1003AFCE0);
  }

  else
  {
    v80 = v148;
    (*(v14 + 32))(v148, v77, v55);
    v81 = *(v52 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_conversation);
    v82 = *(v14 + 16);
    v83 = v78;
    v84 = v161;
    v82(v161, v80, v170);
    swift_getKeyPath();
    swift_getKeyPath();
    v82(v160, v84, v170);
    v55 = v170;
    v81;
    static Published.subscript.setter();
    sub_10009786C();
    v85 = *(v14 + 8);
    v86 = v84;
    v78 = v83;
    v85(v86, v55);
    a8 = v164;
    v85(v80, v55);
  }

  v87 = v159;
  sub_10001F620(v169, v159, &qword_1003AFCE0);
  if (v78(v87, 1, v55) == 1)
  {
    result = sub_100009EBC(v87, &qword_1003AFCE0);
    if (!v168)
    {
      return result;
    }
  }

  else
  {
    v89 = v166;
    v90 = v149;
    (*(v166 + 32))(v149, v87, v55);
    v91 = *(v167 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_conversation);
    v92 = *(v89 + 16);
    v93 = v161;
    v92(v161, v90, v170);
    swift_getKeyPath();
    swift_getKeyPath();
    v92(v160, v93, v170);
    v94 = v170;
    v91;
    static Published.subscript.setter();
    sub_100097A18();
    v95 = v89;
    a8 = v164;
    v96 = *(v95 + 8);
    v96(v93, v94);
    result = (v96)(v90, v94);
    if (!v168)
    {
      return result;
    }
  }

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&_mh_execute_header, v97, v98, "Asked to open translation from an URL.", v99, 2u);
  }

  v100 = sub_1002925AC(_swiftEmptyArrayStorage);
  LOBYTE(v173) = 0;
  sub_100077FD4();
  AnyHashable.init<A>(_:)();
  v174 = &type metadata for String;
  *&v173 = v163;
  *(&v173 + 1) = v168;
  sub_10005128C(&v173, &v172);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v171 = v100;
  sub_100291D9C(&v172, v175, isUniquelyReferenced_nonNull_native);
  sub_100078028(v175);
  v102 = v171;
  LOBYTE(v173) = 5;
  AnyHashable.init<A>(_:)();
  v103 = v170;
  v104 = a8 && (v162 == 0x697463416576696CLL && a8 == 0xEC00000079746976 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  v174 = &type metadata for Bool;
  LOBYTE(v173) = v104;
  sub_10005128C(&v173, &v172);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v102;
  sub_100291D9C(&v172, v175, v105);
  sub_100078028(v175);
  v106 = v171;
  v107 = v151;
  sub_10001F620(v165, v151, &qword_1003AFCE0);
  if (v78(v107, 1, v103) == 1)
  {
    sub_100009EBC(v107, &qword_1003AFCE0);
  }

  else
  {
    v108 = v166;
    v109 = v145;
    (*(v166 + 32))(v145, v107, v103);
    LOBYTE(v173) = 2;
    AnyHashable.init<A>(_:)();
    v110 = Locale.ltIdentifier.getter();
    v174 = &type metadata for String;
    *&v173 = v110;
    *(&v173 + 1) = v111;
    sub_10005128C(&v173, &v172);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v106;
    sub_100291D9C(&v172, v175, v112);
    sub_100078028(v175);
    (*(v108 + 8))(v109, v103);
    v106 = v171;
  }

  v113 = v152;
  sub_10001F620(v169, v152, &qword_1003AFCE0);
  if (v78(v113, 1, v103) == 1)
  {
    sub_100009EBC(v113, &qword_1003AFCE0);
  }

  else
  {
    v114 = v166;
    v115 = v146;
    (*(v166 + 32))(v146, v113, v103);
    LOBYTE(v173) = 3;
    AnyHashable.init<A>(_:)();
    v116 = Locale.ltIdentifier.getter();
    v174 = &type metadata for String;
    *&v173 = v116;
    *(&v173 + 1) = v117;
    sub_10005128C(&v173, &v172);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v106;
    sub_100291D9C(&v172, v175, v118);
    sub_100078028(v175);
    (*(v114 + 8))(v115, v103);
    v106 = v171;
  }

  v119 = v153;
  if (v153)
  {
    LOBYTE(v173) = 1;

    AnyHashable.init<A>(_:)();
    v174 = &type metadata for String;
    *&v173 = v147;
    *(&v173 + 1) = v119;
    sub_10005128C(&v173, &v172);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v106;
    sub_100291D9C(&v172, v175, v120);
  }

  else
  {
    v121 = type metadata accessor for TypedInputInstrumentation();
    v122 = objc_allocWithZone(v121);
    v123 = sub_1002BDBF4(2);
    *&v123[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_characterCount] = String.count.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v124 = v143;
    static Published.subscript.getter();

    (*(v166 + 56))(v124, 0, 1, v103);
    v125 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_sourceLocale;
    swift_beginAccess();
    sub_10003BD84(v124, &v123[v125], &qword_1003AFCE0);
    swift_endAccess();
    v126 = sub_100097D4C();
    v127 = *&v123[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair];
    *&v123[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair] = v126;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v123[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_airplaneModeEnabled] = v175[0];
    sub_10000A2CC(0, &qword_1003A9B80);
    v128 = static NSUserDefaults.translationGroupDefaults.getter();
    v129 = NSUserDefaults.onDeviceOnly.getter();

    v123[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_onDeviceModeEnabled] = v129 & 1;
    v130 = v144;
    Date.init()();
    v131 = type metadata accessor for Date();
    (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
    v132 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
    swift_beginAccess();
    sub_10003BD84(v130, &v123[v132], &qword_1003B5130);
    swift_endAccess();
    LOBYTE(v173) = 4;
    AnyHashable.init<A>(_:)();
    v174 = v121;
    *&v173 = v123;
    sub_10005128C(&v173, &v172);
    v133 = v123;
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v106;
    sub_100291D9C(&v172, v175, v134);
  }

  sub_100078028(v175);
  v135 = v156;
  if (qword_1003A91C8 != -1)
  {
    swift_once();
  }

  memset(v175, 0, sizeof(v175));
  v136 = qword_1003D2500;
  v137 = v154;
  Notification.init(name:object:userInfo:)();
  v138 = [objc_opt_self() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v138 postNotification:isa];

  return (*(v155 + 8))(v137, v135);
}

uint64_t sub_1002197F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v59 = a7;
  v60 = a8;
  v51 = a5;
  v52 = a6;
  v57 = a11;
  v58 = a12;
  v55 = a10;
  v53 = a9;
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v63 = *(v16 - 8);
  v64 = v16;
  __chkstk_darwin(v16);
  v56 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005AD4(&qword_1003AFCE0);
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v21 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v49 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v49 - v26;
  __chkstk_darwin(v25);
  v29 = &v49 - v28;
  sub_1002181E4(a4, a1, &v49 - v28);
  v54 = v27;
  sub_1002181E4(v52, a1, v27);
  sub_10000A2CC(0, &qword_1003A9C40);
  v52 = static OS_dispatch_queue.main.getter();
  sub_10001F620(v29, v24, &qword_1003AFCE0);
  sub_10001F620(v27, v21, &qword_1003AFCE0);
  v30 = *(v50 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = (v19 + v30 + v31) & ~v30;
  v33 = (v19 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = a2;
  sub_1000E1F14(v24, v35 + v31);
  sub_1000E1F14(v21, v35 + v32);
  v36 = (v35 + v33);
  v37 = v60;
  *v36 = v59;
  v36[1] = v37;
  v38 = (v35 + v34);
  v39 = v55;
  *v38 = v53;
  v38[1] = v39;
  v40 = (v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8));
  v41 = v58;
  *v40 = v57;
  v40[1] = v41;
  aBlock[4] = sub_100220AF8;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100389E60;
  v42 = _Block_copy(aBlock);

  v43 = a2;

  v44 = v56;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002206C0(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  v46 = v61;
  v45 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v52;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);

  (*(v65 + 8))(v46, v45);
  (*(v63 + 8))(v44, v64);
  sub_100009EBC(v54, &qword_1003AFCE0);
  return sub_100009EBC(v29, &qword_1003AFCE0);
}

uint64_t sub_100219D24(void *a1, void *a2)
{
  if (![a1 selectedIndex])
  {
    v4 = [a1 selectedViewController];
    if (!v4 || (v5 = v4, sub_10000A2CC(0, &qword_1003B5470), v6 = a2, v7 = static NSObject.== infix(_:_:)(), v6, v5, (v7 & 1) == 0))
    {
      sub_10009BAC0(0, 0, 0);
    }
  }

  return 1;
}

void sub_100219F18(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_100219FB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void sub_10021A05C(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_10021A0F4(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void sub_10021A190(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_10021A228(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void sub_10021A2C4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_10021A35C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_10021A3F8(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  String.hash(into:)();
  v37 = *(a2 + 64);
  Hasher._combine(_:)(v37);
  v7 = *(a2 + 72);
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = v4 + 56;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v34 = v4;
    v13 = *(v4 + 48);
    while (1)
    {
      v14 = (v13 + 112 * v11);
      v16 = v14[8];
      v15 = v14[9];
      v17 = v14[2] == v5 && v14[3] == v6;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v16 == v37 && v15 == v7)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1000DA154(a2);
    v24 = (*(v34 + 48) + 112 * v11);
    v25 = v24[3];
    v26 = v24[4];
    v27 = v24[5];
    *&v40[9] = *(v24 + 89);
    v39[4] = v26;
    *v40 = v27;
    v39[3] = v25;
    v28 = *v24;
    v29 = v24[2];
    v39[1] = v24[1];
    v39[2] = v29;
    v39[0] = v28;
    v30 = v24[1];
    *a1 = *v24;
    a1[1] = v30;
    v31 = v24[2];
    v32 = v24[3];
    *(a1 + 89) = *(v24 + 89);
    v33 = v24[5];
    a1[4] = v24[4];
    a1[5] = v33;
    a1[2] = v31;
    a1[3] = v32;
    sub_10001F5C4(v39, v38);
    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *v35;
    sub_10001F5C4(a2, v39);
    sub_10021B65C(a2, v11, isUniquelyReferenced_nonNull_native);
    *v35 = v38[0];
    v20 = *(a2 + 80);
    a1[4] = *(a2 + 64);
    a1[5] = v20;
    *(a1 + 89) = *(a2 + 89);
    v21 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v21;
    v22 = *(a2 + 48);
    result = 1;
    a1[2] = *(a2 + 32);
    a1[3] = v22;
  }

  return result;
}

uint64_t sub_10021A60C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10021B840(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10021A75C(_BYTE *a1, unsigned int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v21 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 <= 1)
      {
        v9 = 0x6E776F44776F6C73;
        if (*(*(v4 + 48) + v7))
        {
          v10 = 0x74786554646E6966;
        }

        else
        {
          v10 = 0x6E776F44776F6C73;
        }

        v11 = 0xE800000000000000;
      }

      else
      {
        v9 = 0x6E776F44776F6C73;
        if (v8 == 2)
        {
          v10 = 0xD000000000000013;
          v11 = 0x80000001002EF750;
        }

        else
        {
          if (v8 == 3)
          {
            v10 = 0xD000000000000018;
          }

          else
          {
            v10 = 0xD000000000000017;
          }

          if (v8 == 3)
          {
            v11 = 0x80000001002EF770;
          }

          else
          {
            v11 = 0x80000001002EF790;
          }
        }
      }

      v12 = 0xD000000000000018;
      if (a2 == 3)
      {
        v13 = 0x80000001002EF770;
      }

      else
      {
        v12 = 0xD000000000000017;
        v13 = 0x80000001002EF790;
      }

      if (a2 == 2)
      {
        v12 = 0xD000000000000013;
        v13 = 0x80000001002EF750;
      }

      if (a2)
      {
        v9 = 0x74786554646E6966;
      }

      v14 = a2 <= 1u ? v9 : v12;
      v15 = a2 <= 1u ? 0xE800000000000000 : v13;
      if (v10 == v14 && v11 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v21;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_10021B9C0(a2, v7, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10021AA34(void *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {

      v9 = static Task.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v4 + 48) + 8 * v7);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v13;

    sub_10021BCE4(v11, v7, isUniquelyReferenced_nonNull_native);
    *v13 = v15;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_10021ABB0()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&unk_1003B8E20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 112 * (v14 | (v5 << 6));
      v35 = *v17;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v33 = *(v17 + 32);
      v34 = *(v17 + 48);
      v20 = *(v17 + 64);
      v21 = *(v17 + 72);
      *v32 = *(v17 + 80);
      *&v32[9] = *(v17 + 89);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 112 * v12;
      *v13 = v35;
      *(v13 + 16) = v18;
      *(v13 + 24) = v19;
      *(v13 + 32) = v33;
      *(v13 + 48) = v34;
      *(v13 + 64) = v20;
      *(v13 + 72) = v21;
      *(v13 + 80) = *v32;
      *(v13 + 89) = *&v32[9];
      ++*(v4 + 16);
      v2 = v31;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v30;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10021AE90()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&qword_1003B8CF8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10021B0F0()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&qword_1003B8E18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10021B3F0()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&qword_1003B8E10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Task.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_10021B65C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v31 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_10021ABB0();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10021BEA8();
      goto LABEL_21;
    }

    sub_10021C42C();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = v5[2];
  v10 = v5[3];
  String.hash(into:)();
  v11 = v5[8];
  Hasher._combine(_:)(v11);
  v12 = v5[9];
  Hasher._combine(_:)(v12);
  result = Hasher._finalize()();
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v8 + 48);
    do
    {
      v18 = (v16 + 112 * a2);
      result = v18[2];
      v20 = v18[8];
      v19 = v18[9];
      v21 = result == v9 && v18[3] == v10;
      if (v21 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v20 == v11 && v19 == v12)
        {
          goto LABEL_24;
        }
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v22 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = (*(v22 + 48) + 112 * a2);
  v24 = v31[1];
  *v23 = *v31;
  v23[1] = v24;
  *(v23 + 89) = *(v31 + 89);
  v25 = v31[5];
  v23[4] = v31[4];
  v23[5] = v25;
  v26 = v31[3];
  v23[2] = v31[2];
  v23[3] = v26;
  v27 = *(v22 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v22 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_24:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10021B840(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10021AE90();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10021C040();
      goto LABEL_16;
    }

    sub_10021C6D8();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10021B9C0(Swift::Int result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_10021B0F0();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10021C19C();
      goto LABEL_40;
    }

    sub_10021C910();
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  v27 = v7 + 56;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = v7;
    v9 = ~v8;
    v10 = 0x74786554646E6966;
    v11 = 0x6E776F44776F6C73;
    do
    {
      v12 = *(*(v26 + 48) + a2);
      if (v12 <= 1)
      {
        if (*(*(v26 + 48) + a2))
        {
          v13 = v10;
        }

        else
        {
          v13 = 0x6E776F44776F6C73;
        }

        v14 = 0xE800000000000000;
      }

      else if (v12 == 2)
      {
        v13 = 0xD000000000000013;
        v14 = 0x80000001002EF750;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0xD000000000000018;
        }

        else
        {
          v13 = 0xD000000000000017;
        }

        if (v12 == 3)
        {
          v14 = 0x80000001002EF770;
        }

        else
        {
          v14 = 0x80000001002EF790;
        }
      }

      v15 = 0xD000000000000018;
      if (v28 == 3)
      {
        v16 = 0x80000001002EF770;
      }

      else
      {
        v15 = 0xD000000000000017;
        v16 = 0x80000001002EF790;
      }

      if (v28 == 2)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001002EF750;
      }

      v17 = v10;
      if (v28)
      {
        v11 = v10;
      }

      v18 = v28 <= 1u ? v11 : v15;
      v19 = v28 <= 1u ? 0xE800000000000000 : v16;
      if (v13 == v18 && v14 == v19)
      {
        goto LABEL_43;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_44;
      }

      a2 = (a2 + 1) & v9;
      v11 = 0x6E776F44776F6C73;
      v10 = v17;
    }

    while (((*(v27 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_40:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v28;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_43:

LABEL_44:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10021BCE4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10021B3F0();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10021C2DC();
      goto LABEL_12;
    }

    sub_10021CBE0();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      sub_100005AD4(&qword_1003B8E08);

      v11 = static Task.== infix(_:_:)();

      if (v11)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v16;
  *(*v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10021BEA8()
{
  v1 = v0;
  sub_100005AD4(&unk_1003B8E20);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 112 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[5];
        *&v26[9] = *(v18 + 89);
        v25[4] = v20;
        *v26 = v21;
        v25[3] = v19;
        v23 = v18[1];
        v22 = v18[2];
        v25[0] = *v18;
        v25[1] = v23;
        v25[2] = v22;
        memmove((*(v4 + 48) + v17), v18, 0x69uLL);
        result = sub_10001F5C4(v25, &v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10021C040()
{
  v1 = v0;
  sub_100005AD4(&qword_1003B8CF8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10021C19C()
{
  v1 = v0;
  sub_100005AD4(&qword_1003B8E18);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10021C2DC()
{
  v1 = v0;
  sub_100005AD4(&qword_1003B8E10);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10021C42C()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&unk_1003B8E20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v18 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v21 = (*(v2 + 48) + 112 * (v18 | (v5 << 6)));
      v23 = *v21;
      v22 = v21[1];
      v37 = v21[2];
      v24 = v21[3];
      v25 = v21[4];
      v26 = v21[5];
      *(v40 + 9) = *(v21 + 89);
      v39 = v25;
      v40[0] = v26;
      v38 = v24;
      v35 = v23;
      v36 = v22;
      Hasher.init(_seed:)();
      sub_10001F5C4(&v35, v34);
      String.hash(into:)();
      Hasher._combine(_:)(v39);
      Hasher._combine(_:)(*(&v39 + 1));
      result = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v10 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v10 + 8 * v29);
          if (v33 != -1)
          {
            v11 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v28) & ~*(v10 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 112 * v11);
      v13 = v37;
      v14 = v35;
      v12[1] = v36;
      v12[2] = v13;
      v15 = v38;
      v16 = v39;
      v17 = v40[0];
      *(v12 + 89) = *(v40 + 9);
      v12[4] = v16;
      v12[5] = v17;
      v12[3] = v15;
      *v12 = v14;
      ++*(v4 + 16);
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v20 = *(v2 + 56 + 8 * v5);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v8 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10021C6D8()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&qword_1003B8CF8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10021C910()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&qword_1003B8E18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10021CBE0()
{
  v1 = v0;
  v2 = *v0;
  sub_100005AD4(&qword_1003B8E10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();

      Task.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10021CE24(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for Date();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[3] = type metadata accessor for TranslationStoreCoreData();
  v62[4] = &protocol witness table for TranslationStoreCoreData;
  v57 = a1;
  v62[0] = a1;
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = *(v9 + 8);
  v61 = v9 + 8;
  v15(v11, v8);
  v16 = objc_opt_self();
  v53 = v16;
  v17 = [v16 standardUserDefaults];
  sub_100005AD4(&qword_1003B8CA0);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = KeyPath;
  *(a2 + 88) = v17;
  *(a2 + 96) = v19;
  *(a2 + 104) = v12;
  *(a2 + 112) = v14;
  *(a2 + 120) = v18;
  KeyPath = swift_getKeyPath();
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  v55 = v8;
  v56 = v15;
  v15(v11, v8);
  v23 = [v16 standardUserDefaults];
  swift_allocObject();
  v24 = PassthroughSubject.init()();
  v25 = KeyPath;
  *(a2 + 128) = v23;
  *(a2 + 136) = v25;
  *(a2 + 144) = v20;
  *(a2 + 152) = v22;
  *(a2 + 160) = v24;
  KeyPath = swift_getKeyPath();
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  v15(v11, v8);
  v29 = v53;
  v30 = [v53 standardUserDefaults];
  swift_allocObject();
  v31 = PassthroughSubject.init()();
  v32 = KeyPath;
  *(a2 + 168) = v30;
  *(a2 + 176) = v32;
  *(a2 + 184) = v26;
  *(a2 + 192) = v28;
  *(a2 + 200) = v31;
  v33 = swift_getKeyPath();
  v34 = [v29 standardUserDefaults];
  sub_100005AD4(&qword_1003B8CA8);
  swift_allocObject();
  v35 = PassthroughSubject.init()();
  *(a2 + 208) = v34;
  *(a2 + 216) = v33;
  *(a2 + 224) = &_swiftEmptyArrayStorage;
  *(a2 + 232) = v35;
  *(a2 + 240) = 1;
  *(a2 + 248) = &_swiftEmptyArrayStorage;
  *(a2 + 16) = a3;
  sub_100031DD8(v62, a2 + 24);
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  v39 = v55;
  v40 = v56;
  v56(v11, v55);
  type metadata accessor for TranslationSession_RD();
  v41 = swift_allocObject();

  *(a2 + 64) = sub_10021D328(v42, v36, v38, v41);
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v45 = v44;
  v40(v11, v39);
  v46 = swift_allocObject();
  *(a2 + 72) = sub_10021D328(v42, v43, v45, v46);
  UUID.init()();
  v47 = UUID.uuidString.getter();
  v49 = v48;
  v40(v11, v39);
  v50 = swift_allocObject();
  *(a2 + 80) = sub_10021D328(v42, v47, v49, v50);
  v51 = v58;
  Date.init()();
  sub_1002B79AC(v51, 1);
  (*(v59 + 8))(v51, v60);
  sub_100008664(v62);
  return a2;
}

uint64_t sub_10021D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005AD4(&qword_1003B8CB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - v10;
  v36[3] = type metadata accessor for TranslationStoreCoreData();
  v36[4] = &protocol witness table for TranslationStoreCoreData;
  v36[0] = a1;
  v12 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD__translations;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100005AD4(&qword_1003B8CB8);
  Published.init(initialValue:)();
  (*(v9 + 32))(a4 + v12, v11, v8);
  *(a4 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  *(a4 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_observations) = &_swiftEmptyDictionarySingleton;
  sub_100031DD8(v36, a4 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  swift_beginAccess();
  v35[0] = a2;
  v35[1] = a3;

  Published.init(initialValue:)();
  swift_endAccess();

  sub_100031DD8(v36, aBlock);
  sub_100005AD4(&qword_1003B8CC0);
  if (swift_dynamicCast())
  {
    v13 = TranslationStoreCoreData.moc.getter();
    v14 = [objc_opt_self() defaultCenter];
    v15 = objc_opt_self();
    v16 = v13;
    v17 = [v15 mainQueue];
    v33 = sub_100220780;
    v34 = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100213518;
    v32 = &unk_100389D48;
    v18 = _Block_copy(aBlock);

    v19 = [v14 addObserverForName:NSManagedObjectContextObjectsDidChangeNotification object:v16 queue:v17 usingBlock:v18];
    _Block_release(v18);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003A9228 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000078E8(v20, qword_1003D2788);
    sub_100031DD8(v36, aBlock);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35[0] = v24;
      *v23 = 136446210;
      sub_1000085CC(aBlock, v32);
      swift_getDynamicType();
      v25 = _typeName(_:qualified:)();
      v27 = v26;
      sub_100008664(aBlock);
      v28 = sub_10028D78C(v25, v27, v35);

      *(v23 + 4) = v28;
      sub_100008664(v24);
    }

    else
    {

      sub_100008664(aBlock);
    }
  }

  sub_100008664(v36);
  return a4;
}

void sub_10021D7CC(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000A2CC(0, &qword_1003B8CC8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000A2CC(0, &qword_1003B8CC8);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10021D9F0(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005AD4(&qword_1003B8CB0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23[-1] - v14;
  v23[3] = type metadata accessor for TranslationStoreCoreData();
  v23[4] = &protocol witness table for TranslationStoreCoreData;
  v23[0] = a1;
  v16 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__translations;
  v22 = _swiftEmptyArrayStorage;
  sub_100005AD4(&qword_1003B8CB8);
  Published.init(initialValue:)();
  (*(v13 + 32))(a3 + v16, v15, v12);
  *(a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation) = 0;
  v17 = (a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID);
  KeyPath = swift_getKeyPath();
  v19 = [objc_opt_self() standardUserDefaults];
  sub_100005AD4(&qword_1003B8CA0);
  swift_allocObject();
  v20 = PassthroughSubject.init()();
  *v17 = v19;
  v17[1] = KeyPath;
  v17[2] = 0;
  v17[3] = 0xE000000000000000;
  v17[4] = v20;
  *(a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_lidDisambiguationCounter) = 0;
  *(a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_isSuspended) = 1;
  *(a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_sessionTimeout) = a4;
  sub_100031DD8(v23, a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store);
  if (a2)
  {
    Date.init()();
    sub_100288A2C();
    (*(v9 + 8))(v11, v8);
  }

  sub_100289520();
  sub_100008664(v23);
  return a3;
}

void sub_10021DCC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

uint64_t sub_10021DD1C()
{
  v0 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v0);
  sub_1000E85EC();
  UITraitCollection.subscript.getter();
  if (v2 != sub_10021360C())
  {
    UIViewController.traitOverrides.getter();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_10021DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  ObjectType = swift_getObjectType();
  v58 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v58);
  v57 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100005AD4(&unk_1003BC4E0);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v39 - v8;
  v9 = sub_100005AD4(&unk_1003B8DA0);
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  __chkstk_darwin(v9);
  v51 = &v39 - v11;
  v12 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v12 - 8);
  v60 = &v39 - v13;
  v14 = sub_100005AD4(&qword_1003B8DB0);
  v15 = *(v14 - 8);
  v46 = v14;
  v47 = v15;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = sub_100005AD4(&qword_1003B8DB8);
  v19 = *(v18 - 8);
  v48 = v18;
  v49 = v19;
  __chkstk_darwin(v18);
  v40 = &v39 - v20;
  v21 = sub_100005AD4(&qword_1003B8D00);
  __chkstk_darwin(v21 - 8);
  *(v3 + *((swift_isaMask & *v3) + qword_1003D2980 + 32)) = _swiftEmptyArrayStorage;
  *(v3 + *((swift_isaMask & *v3) + qword_1003D2980 + 16)) = a2;
  *(v3 + *((swift_isaMask & *v3) + qword_1003D2980 + 24)) = a3;
  sub_10001F620(a1, &v39 - v22, &qword_1003B8D00);

  v23 = UIHostingController.init(rootView:)();
  swift_beginAccess();
  v24 = v23;

  sub_100005AD4(&qword_1003B8DC0);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_10000A2CC(0, &qword_1003A9C40);
  v25 = static OS_dispatch_queue.main.getter();
  v61 = v25;
  v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v26 = *(v44 - 8);
  v43 = *(v26 + 56);
  v45 = v26 + 56;
  v27 = v60;
  v43(v60, 1, 1, v44);
  v42 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&unk_1003B8DC8, &qword_1003B8DB0);
  v41 = sub_1000819A8(&qword_1003B2410, &qword_1003A9C40);
  v28 = v40;
  v29 = v46;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v27, &qword_1003B23F0);
  v47[1](v17, v29);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001BAEC(&qword_1003B8DD8, &qword_1003B8DB8);
  v30 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v28, v30);
  swift_beginAccess();
  v49 = sub_100005AD4(&unk_1003B8DE0);
  sub_10001BAEC(&qword_1003AE440, &unk_1003B8DE0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  swift_beginAccess();

  sub_100005AD4(&unk_1003B8DF0);
  v31 = v50;
  Published.projectedValue.getter();
  swift_endAccess();

  v32 = static OS_dispatch_queue.main.getter();
  v61 = v32;
  v33 = v60;
  v43(v60, 1, 1, v44);
  sub_10001BAEC(&qword_1003AD900, &unk_1003BC4E0);
  v35 = v51;
  v34 = v52;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v33, &qword_1003B23F0);
  (*(v54 + 8))(v31, v34);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&qword_1003B8E00, &unk_1003B8DA0);
  v36 = v55;
  Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v35, v36);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  LOBYTE(v31) = sub_10021360C();
  UIViewController.traitOverrides.getter();
  LOBYTE(v61) = v31 & 1;
  sub_1000E85EC();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();

  sub_100005AD4(&qword_1003AFCD0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1002D3160;
  *(v37 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v37 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  sub_100009EBC(v53, &qword_1003B8D00);
  return v24;
}

uint64_t sub_10021E988(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptySetSingleton;
  v5 = swift_allocObject();
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = a1;
  v7[5] = a2;
  v10[4] = sub_100220938;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100218160;
  v10[3] = &unk_100389E10;
  v8 = _Block_copy(v10);

  [v6 availableLocalePairsForTask:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_10021EAF0(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URLComponents();
  v100 = *(v6 - 8);
  __chkstk_darwin(v6);
  v101 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B8D00);
  __chkstk_darwin(v8);
  v10 = &v92 - v9;
  v11 = type metadata accessor for MainLayoutView();
  __chkstk_darwin(v11 - 8);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_conversation);
  *&v14[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_session] = sub_100213878();

  sub_1002153D0();
  objc_opt_self();
  v102 = a1;
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v95 = a2;
    v99 = v6;
    v17 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_context);
    v97 = v102;
    v18 = sub_1000F7A3C([v16 interfaceOrientation]);
    v94 = v16;
    v19 = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v103[0]) = v19;

    static Published.subscript.setter();
    v20 = [v16 traitCollection];
    sub_1000E8640();
    UITraitCollection.subscript.getter();

    v93 = v8;
    v21 = v103[0];
    v22 = sub_100213990();
    v23 = sub_1002137B0();
    v24 = sub_1002136FC();
    swift_retain_n();

    v96 = v21;
    sub_10017E37C(v22, v23, v24, v21, v17, v13);
    type metadata accessor for HostedScenePhaseModel();
    swift_allocObject();
    sub_100221898();
    v103[5] = v25;
    State.init(wrappedValue:)();
    v26 = v103[0];
    v27 = v103[1];
    v98 = v13;
    sub_100220CD0(v13, v10);
    v28 = &v10[*(sub_100005AD4(&qword_1003B8D18) + 36)];
    *v28 = v26;
    v28[1] = v27;
    v29 = Color.init(_:bundle:)();
    KeyPath = swift_getKeyPath();
    v31 = &v10[*(sub_100005AD4(&unk_1003B8D20) + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    type metadata accessor for ConversationManager();
    sub_1002206C0(&qword_1003B1368, type metadata accessor for ConversationManager);
    v32 = static ObservableObject.environmentStore.getter();
    v33 = &v10[*(sub_100005AD4(&unk_1003B8D30) + 36)];
    *v33 = v32;
    v33[1] = v14;
    type metadata accessor for ConversationContext(0);
    sub_1002206C0(&unk_1003BC490, type metadata accessor for ConversationContext);
    v34 = v14;
    v35 = static ObservableObject.environmentStore.getter();
    v36 = &v10[*(sub_100005AD4(&unk_1003B8D40) + 36)];
    *v36 = v35;
    v36[1] = v17;
    v37 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_sceneContext);
    type metadata accessor for SceneContext();
    sub_1002206C0(&qword_1003AC860, type metadata accessor for SceneContext);

    v38 = static ObservableObject.environmentStore.getter();
    v39 = &v10[*(sub_100005AD4(&unk_1003B8D50) + 36)];
    *v39 = v38;
    v39[1] = v37;
    v40 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sharedTranslationOptions);
    type metadata accessor for SharedTranslationOptions();
    sub_1002206C0(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);

    v41 = v40;
    v42 = static ObservableObject.environmentStore.getter();
    v43 = &v10[*(sub_100005AD4(&qword_1003B8D60) + 36)];
    *v43 = v42;
    v43[1] = v40;
    v44 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession;
    v45 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession);
    type metadata accessor for TranslationAppSession();
    sub_1002206C0(&qword_1003B8D68, type metadata accessor for TranslationAppSession);

    v46 = static ObservableObject.environmentStore.getter();
    v47 = &v10[*(sub_100005AD4(&unk_1003B8D70) + 36)];
    *v47 = v46;
    v47[1] = v45;
    v48 = sub_10021390C();
    type metadata accessor for FavoritesImporter();
    sub_1002206C0(&qword_1003B1508, type metadata accessor for FavoritesImporter);
    v49 = static ObservableObject.environmentStore.getter();
    v50 = &v10[*(sub_100005AD4(&qword_1003B8D80) + 36)];
    *v50 = v49;
    v50[1] = v48;
    v51 = swift_getKeyPath();
    v52 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_menuCommandController);
    v53 = &v10[*(sub_100005AD4(&qword_1003B8D88) + 36)];
    *v53 = v51;
    v53[1] = v52;
    v54 = swift_getKeyPath();
    sub_100031DD8(*(v3 + v44) + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v103);

    sub_100005AD4(&qword_1003B8CC0);
    type metadata accessor for TranslationStoreCoreData();
    swift_dynamicCast();
    v55 = dispatch thunk of TranslationStoreCoreData.viewContext.getter();

    v56 = &v10[*(v93 + 36)];
    *v56 = v54;
    v56[1] = v55;
    v57 = objc_allocWithZone(sub_100005AD4(&unk_1003B8D90));

    v58 = sub_10021DEB4(v10, v17, v37);

    v59 = objc_allocWithZone(UIWindow);
    v60 = [v59 initWithWindowScene:v94];
    [v60 setRootViewController:v58];
    v61 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window) = v60;
    v62 = v60;

    [v62 makeKeyAndVisible];
    if (qword_1003A9200 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000078E8(v63, qword_1003D2710);
    v64 = v95;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v94 = v62;
      v68 = v67;
      v69 = swift_slowAlloc();
      v103[0] = v69;
      *v68 = 136380675;
      v70 = [v64 URLContexts];
      v95 = v58;
      sub_10000A2CC(0, &qword_1003B8CC8);
      sub_1000819A8(&unk_1003B8CD0, &qword_1003B8CC8);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = Set.description.getter();
      v73 = v72;
      v58 = v95;

      v74 = sub_10028D78C(v71, v73, v103);

      *(v68 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v65, v66, "willConnectTo: connectionOptions.urlContexts %{private}s", v68, 0xCu);
      sub_100008664(v69);

      v62 = v94;
    }

    v6 = v99;
    v75 = [v64 URLContexts];
    sub_10000A2CC(0, &qword_1003B8CC8);
    sub_1000819A8(&unk_1003B8CD0, &qword_1003B8CC8);
    v76 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100213ABC(v76);

    sub_100220D9C(v98);
  }

  sub_10000A2CC(0, &qword_1003BB780);
  v77 = sub_10000B55C();
  if (v77)
  {
    v78 = *(v77 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_interruptionController);
    v79 = v77;

    if (v78)
    {

      sub_10028535C(v80, 0, v78);
    }
  }

  v81 = sub_100292C40(&off_10037DC50);
  sub_100005AD4(&qword_1003B8D08);
  swift_arrayDestroy();
  v82 = v101;
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  sub_1002131CC(v81);
  URLComponents.queryItems.setter();
  v83 = objc_allocWithZone(NSUserActivity);
  v84 = String._bridgeToObjectiveC()();
  v85 = [v83 initWithActivityType:v84];

  [v85 setEligibleForHandoff:0];
  sub_100005AD4(&qword_1003AB9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  strcpy(v103, "tap-to-radar");
  BYTE5(v103[1]) = 0;
  HIWORD(v103[1]) = -5120;
  AnyHashable.init<A>(_:)();
  result = URLComponents.string.getter();
  if (v88)
  {
    v89 = result;
    v90 = v88;

    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v89;
    *(inited + 80) = v90;
    sub_1002925AC(inited);
    swift_setDeallocating();
    sub_100009EBC(inited + 32, &qword_1003AB9B8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v85 setUserInfo:isa];

    [v85 becomeCurrent];
    [v102 setUserActivity:v85];

    return (*(v100 + 8))(v82, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10021F998()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10005128C(&v9, v10);
    sub_100009EBC(v10, &unk_1003AB9C0);
    sub_10000A2CC(0, &qword_1003A9B80);
    v4 = static NSUserDefaults.translationGroupDefaults.getter();
    v5 = [v0 standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    [v5 BOOLForKey:v6];

    NSUserDefaults.onDeviceOnly.setter();
    v7 = [v0 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    [v7 removeObjectForKey:v8];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_100009EBC(v10, &unk_1003AB9C0);
  }
}

uint64_t sub_10021FB6C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2710);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Scene will enter foreground", v7, 2u);
  }

  v8 = sub_100213878();
  sub_100031DD8(v8 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v14);

  sub_1000085CC(v14, v14[3]);
  v9 = dispatch thunk of TranslationStore.favoriteCount.getter();
  swift_beginAccess();
  sub_10007D334(v9);
  swift_endAccess();
  sub_100008664(v14);

  Date.init()();
  sub_100288A2C();

  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_100213990();
  Date.init()();
  sub_1002B79AC(v3, 0);

  v10(v3, v0);
  v11 = sub_10021390C();
  sub_1000FF6CC();

  sub_10021F998();
  return sub_10022D018();
}

void sub_10021FE08()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2710);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Scene did become active", v8, 2u);
  }

  v9 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window];
  if (v9)
  {
    v10 = [v9 rootViewController];
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = v11;
      v14 = v1;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v13;
      v16[5] = v14;
      sub_10005E36C(0, 0, v4, &unk_1002E91B0, v16);
    }
  }
}

void sub_100220024()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2710);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Scene will resign active", v7, 2u);
  }

  swift_beginAccess();
  sub_10007D7EC();
  swift_endAccess();
  sub_100213878();
  Date.init()();
  sub_1002886CC(v3);

  v8 = *(v1 + 8);
  v8(v3, v0);
  sub_100213990();
  Date.init()();
  sub_1002B72B4(v3);

  v8(v3, v0);
  v9 = sub_10021390C();
  v10 = *&v9[OBJC_IVAR____TtC17SequoiaTranslator17FavoritesImporter_sharedFavorites];

  dispatch thunk of SharedTranslations.unregister()();
}

uint64_t sub_10022026C(unint64_t a1)
{
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2710);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136380675;
    sub_10000A2CC(0, &qword_1003B8CC8);
    sub_1000819A8(&unk_1003B8CD0, &qword_1003B8CC8);
    v7 = Set.description.getter();
    v9 = sub_10028D78C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "openURLContexts: %{private}s", v5, 0xCu);
    sub_100008664(v6);
  }

  return sub_100213ABC(a1);
}

id sub_10022043C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_context);
  sub_1000F7A3C([a1 interfaceOrientation]);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  result = [a1 interfaceOrientation];
  if (result)
  {
    result = [a1 interfaceOrientation];
    *(v3 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationContext_lastKnownInterfaceOrientation) = result;
  }

  return result;
}

id sub_100220500(void *a1)
{
  v3 = [a1 selectedIndex];
  v4 = [a1 tabBar];
  v5 = v4;
  if (v3)
  {
    [v4 setBackgroundImage:0];

    v6 = [a1 tabBar];
    [v6 setShadowImage:0];
  }

  else
  {
    v7 = [objc_allocWithZone(UIImage) init];
    [v5 setBackgroundImage:v7];

    v8 = [a1 tabBar];
    v6 = [objc_allocWithZone(UIImage) init];
    [v8 setShadowImage:v6];
  }

  result = [a1 selectedIndex];
  if (!result)
  {
    result = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window);
    if (result)
    {
      result = [result windowScene];
      if (result)
      {
        v10 = result;
        v11 = [result interfaceOrientation];

        result = sub_1000F7A3C(v11);
        if (result)
        {

          return [a1 hideBarWithTransition:0];
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002206C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100220728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C40F0();
  *a1 = result;
  return result;
}

uint64_t sub_100220788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002207F8()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1002208B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002208F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100220944()
{
  v1 = *(sub_100005AD4(&qword_1003AFCE0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100220AF8()
{
  v1 = *(sub_100005AD4(&qword_1003AFCE0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10021842C(v0 + v4, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100220BC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100220C10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_100217098(a1, v4, v5, v7, v6);
}

uint64_t sub_100220CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainLayoutView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100220D44@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.managedObjectContext.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100220D9C(uint64_t a1)
{
  v2 = type metadata accessor for MainLayoutView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100220DF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100220E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100005AD4(&qword_1003B8FB0);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v6 = (a2 + *(sub_100005AD4(&qword_1003B8FB8) + 36));
  v7 = *(sub_100005AD4(&qword_1003B8FC0) + 28);
  v8 = type metadata accessor for ScenePhase();
  (*(*(v8 - 8) + 16))(v6 + v7, v11 + v5, v8);

  *v6 = KeyPath;
  v9 = sub_100005AD4(&qword_1003B8FC8);
  return (*(*(v9 - 8) + 16))(a2, a1, v9);
}

uint64_t sub_100221074@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = type metadata accessor for ScenePhase();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_10022116C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = type metadata accessor for ScenePhase();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100221264(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_100221330(v4);
}

uint64_t sub_100221330(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_100222868(&qword_1003AF010, &type metadata accessor for ScenePhase);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1002215D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = type metadata accessor for ScenePhase();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10022166C()
{
  swift_getKeyPath();
  sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100221718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__notificationObservers);
}

uint64_t sub_1002217CC()
{
  swift_getKeyPath();
  sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100221898()
{
  v101 = sub_100005AD4(&qword_1003B8FA0);
  v1 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v81[-v2];
  v3 = type metadata accessor for ScenePhase();
  v4 = __chkstk_darwin(v3);
  v97 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = v5;
  __chkstk_darwin(v4);
  v7 = &v81[-v6];
  v100 = v8;
  v9 = *(v8 + 104);
  v88 = enum case for ScenePhase.background(_:);
  v102 = v10;
  v90 = v8 + 104;
  v89 = v9;
  (v9)(v0 + OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__scenePhase);
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__notificationObservers) = _swiftEmptyArrayStorage;
  v103 = v0;
  v86 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel___observationRegistrar;
  ObservationRegistrar.init()();
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 connectedScenes];

  v13 = sub_10022281C();
  sub_100222868(&qword_1003A9B60, sub_10022281C);
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = v7;
  v94 = v1;
  v96 = v14;
  v104 = v13;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v16 = v114;
    v15 = v115;
    v17 = v116;
    v18 = v117;
    v19 = v118;
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v16 = v14;
    v22 = *(v14 + 56);
    v15 = v14 + 56;
    v21 = v22;
    v17 = ~v20;
    v23 = -v20;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v19 = v24 & v21;

    v18 = 0;
  }

  v95 = v17;
  v25 = (v17 + 64) >> 6;
  v106 = UIWindowSceneSessionRoleApplication;
  if (v16 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v26 = v18;
  v27 = v19;
  v28 = v18;
  if (v19)
  {
LABEL_12:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v16 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (v30)
    {
      while (1)
      {
        v105 = v19;
        v107 = v30;
        v32 = [v30 session];
        v33 = [v32 role];

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
        {
          break;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_25;
        }

        v18 = v28;
        v19 = v29;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v31 = __CocoaSet.Iterator.next()();
        if (v31)
        {
          v113 = v31;
          swift_dynamicCast();
          v30 = aBlock;
          v28 = v18;
          v29 = v19;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_10000C1D0();

      sub_100005AD4(&qword_1003B8FA8);
      v40 = v94[9];
      v41 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v84 = swift_allocObject();
      v42 = (v84 + v41);
      v43 = v101;
      v44 = *(v101 + 48);
      v106 = UISceneDidActivateNotification;
      *v42 = UISceneDidActivateNotification;
      v85 = enum case for ScenePhase.active(_:);
      v45 = v102;
      v46 = v89;
      (v89)(v42 + v44);
      v47 = *(v43 + 48);
      *(v42 + v40) = UISceneWillDeactivateNotification;
      v48 = enum case for ScenePhase.inactive(_:);
      v46(v42 + v40 + v47, enum case for ScenePhase.inactive(_:), v45);
      v49 = (v42 + 2 * v40);
      v50 = *(v43 + 48);
      *v49 = UISceneWillEnterForegroundNotification;
      v82 = v48;
      v46(v49 + v50, v48, v45);
      v96 = v40;
      v51 = (v42 + 3 * v40);
      v52 = *(v43 + 48);
      *v51 = UISceneDidEnterBackgroundNotification;
      v46(v51 + v52, v88, v45);
      v113 = _swiftEmptyArrayStorage;
      v53 = v106;
      v54 = UISceneWillDeactivateNotification;
      v55 = UISceneWillEnterForegroundNotification;
      v56 = UISceneDidEnterBackgroundNotification;
      v57 = 4;
      sub_1000C4C4C(0, 4, 0);
      v58 = v113;
      v95 = objc_opt_self();
      v94 = objc_opt_self();
      v93 = v100 + 16;
      v92 = v100 + 32;
      v91 = &v109;
      v83 = v42;
      v59 = v42;
      do
      {
        v106 = v58;
        v60 = v99;
        sub_1002228B0(v59, v99);
        v105 = *v60;
        v61 = *(v101 + 48);
        v104 = [v95 defaultCenter];
        v62 = [v94 mainQueue];
        v63 = swift_allocObject();
        swift_weakInit();
        v64 = v100;
        v65 = v97;
        v66 = v102;
        (*(v100 + 16))(v97, &v60[v61], v102);
        v67 = (*(v64 + 80) + 24) & ~*(v64 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v63;
        (*(v64 + 32))(v68 + v67, v65, v66);
        v111 = sub_100222A1C;
        v112 = v68;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v109 = sub_100213518;
        ObjectType = &unk_100389F28;
        v69 = _Block_copy(&aBlock);

        v70 = v104;
        v71 = [v104 addObserverForName:v105 object:v107 queue:v62 usingBlock:v69];
        _Block_release(v69);

        ObjectType = swift_getObjectType();
        *&aBlock = v71;
        v72 = v60;
        v58 = v106;
        sub_100222AA8(v72);
        v113 = v58;
        v74 = v58[2];
        v73 = v58[3];
        if (v74 >= v73 >> 1)
        {
          sub_1000C4C4C((v73 > 1), v74 + 1, 1);
          v58 = v113;
        }

        v58[2] = (v74 + 1);
        sub_10005128C(&aBlock, &v58[4 * v74 + 4]);
        v59 += v96;
        --v57;
        v75 = v103;
      }

      while (v57);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v81[-16] = v75;
      *&v81[-8] = v58;
      *&aBlock = v75;
      sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v77 = v107;
      v78 = [v107 activationState];
      v79 = v85;
      if (v78)
      {
        v79 = v88;
        if (v78 == 1)
        {
          v79 = v82;
        }
      }

      v80 = v87;
      v89(v87, v79, v102);
      sub_100221330(v80);
    }

    else
    {
LABEL_23:
      sub_10000C1D0();
    }
  }

  else
  {
    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        goto LABEL_23;
      }

      v27 = *(v15 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100222360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v5 + 16))(v7, a3, v4);
    sub_100221330(v7);
  }

  return result;
}

uint64_t sub_100222468()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel___observationRegistrar;
  v14[0] = v0;
  sub_100222868(&qword_1003B8F98, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__notificationObservers);
  v4 = *(v3 + 16);
  if (v4)
  {
    v13 = v2;
    v5 = objc_opt_self();
    v6 = v3 + 32;

    do
    {
      sub_10000A37C(v6, v14);
      v7 = [v5 defaultCenter];
      sub_1000085CC(v14, v14[3]);
      v8 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_100008664(v14);
      [v7 removeObserver:v8];

      swift_unknownObjectRelease();
      v6 += 32;
      --v4;
    }

    while (v4);

    v2 = v13;
  }

  v9 = OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__scenePhase;
  v10 = type metadata accessor for ScenePhase();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);

  v11 = type metadata accessor for ObservationRegistrar();
  (*(*(v11 - 8) + 8))(v1 + v2, v11);
  return v1;
}

uint64_t sub_100222658()
{
  sub_100222468();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HostedScenePhaseModel()
{
  result = qword_1003B8E70;
  if (!qword_1003B8E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100222700()
{
  result = type metadata accessor for ScenePhase();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10022281C()
{
  result = qword_1003A9C30;
  if (!qword_1003A9C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A9C30);
  }

  return result;
}

uint64_t sub_100222868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002228B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B8FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100222920()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100222958()
{
  v1 = type metadata accessor for ScenePhase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100222A1C(uint64_t a1)
{
  v3 = *(type metadata accessor for ScenePhase() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100222360(a1, v4, v5);
}

uint64_t sub_100222A90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100222AA8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B8FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100222B10()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslatorP33_543CC1964A8BEA98CCBD6CC816E4E11321HostedScenePhaseModel__notificationObservers) = *(v0 + 24);
}

unint64_t sub_100222B8C()
{
  result = qword_1003B8FD0;
  if (!qword_1003B8FD0)
  {
    sub_100005EA8(&qword_1003B8FB8);
    sub_10001BAEC(&qword_1003B8FD8, &qword_1003B8FC8);
    sub_10001BAEC(qword_1003B8FE0, &qword_1003B8FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8FD0);
  }

  return result;
}

uint64_t sub_100222C88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100222D20@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a4;
  v59 = a3;
  v60 = a1;
  v67 = a7;
  type metadata accessor for ScrollPocketModifier();
  swift_getWitnessTable();
  v10 = type metadata accessor for _ViewModifier_Content();
  v69 = type metadata accessor for _InsetViewModifier();
  v11 = type metadata accessor for ModifiedContent();
  v57 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v53 - v14;
  v78 = a5;
  v79 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v78 = a5;
  v79 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v10;
  v78 = v10;
  v79 = OpaqueTypeMetadata2;
  v68 = OpaqueTypeMetadata2;
  v18 = WitnessTable;
  v80 = WitnessTable;
  v81 = OpaqueTypeConformance2;
  v63 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v54 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v53 = &v53 - v23;
  v24 = type metadata accessor for _ConditionalContent();
  v64 = *(v24 - 8);
  v65 = v24;
  v25 = __chkstk_darwin(v24);
  v62 = &v53 - v26;
  if (qword_1003A91F0 != -1)
  {
    v25 = swift_once();
  }

  v58 = &v53;
  v27 = byte_1003D26A0;
  __chkstk_darwin(v25);
  *(&v53 - 6) = a5;
  *(&v53 - 5) = a6;
  *(&v53 - 32) = a2 & 1;
  v28 = v61;
  *(&v53 - 3) = v59;
  v51 = v28;
  static HorizontalAlignment.center.getter();
  if (v27 == 1)
  {
    v29 = swift_checkMetadataState();
    v52 = v63;
    v61 = v11;
    v30 = v18;
    v51 = v18;
    v31 = v63;
    v32 = v66;
    View.bar_v1<A>(edge:alignment:spacing:content:)();
    v78 = v32;
    v79 = v29;
    v80 = v18;
    v81 = v31;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = v53;
    sub_10002D870(v22, v19, v33);
    v35 = *(v54 + 8);
    v35(v22, v19);
    sub_10002D870(v34, v19, v33);
    v36 = swift_getWitnessTable();
    v70 = v18;
    v71 = v36;
    swift_getWitnessTable();
    v37 = v62;
    sub_1002C4674(v22, v19);
    v38 = v22;
    v39 = v30;
    v35(v38, v19);
    v35(v34, v19);
  }

  else
  {
    v51 = v18;
    v52 = a6;
    v39 = v18;
    v61 = v19;
    v40 = v56;
    v32 = v66;
    View.safeAreaInset<A>(edge:alignment:spacing:content:)();
    v41 = swift_getWitnessTable();
    v76 = v18;
    v77 = v41;
    v42 = swift_getWitnessTable();
    v43 = v55;
    sub_10002D870(v40, v11, v42);
    v44 = *(v57 + 8);
    v44(v40, v11);
    sub_10002D870(v43, v11, v42);
    v78 = v32;
    v79 = v68;
    v31 = v63;
    v80 = v18;
    v81 = v63;
    swift_getOpaqueTypeConformance2();
    v37 = v62;
    sub_1002C476C(v40, v61, v11);
    v44(v40, v11);
    v44(v43, v11);
  }

  v78 = v32;
  v79 = v68;
  v80 = v39;
  v81 = v31;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = swift_getWitnessTable();
  v74 = v39;
  v75 = v46;
  v47 = swift_getWitnessTable();
  v72 = v45;
  v73 = v47;
  v48 = v65;
  v49 = swift_getWitnessTable();
  sub_10002D870(v37, v48, v49);
  return (*(v64 + 8))(v37, v48);
}

uint64_t sub_1002234A0@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v25 = a1;
  v27 = a4;
  v26 = type metadata accessor for BarMagicPocketStyle();
  v24 = *(v26 - 8);
  v6 = __chkstk_darwin(v26);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 - 8);
  __chkstk_darwin(v6);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3;
  v23[1] = &opaque type descriptor for <<opaque return type of View.barPocket_v1(style:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = __chkstk_darwin(OpaqueTypeMetadata2);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v23 - v18;
  v25(v17);
  static BarMagicPocketStyle.automatic.getter();
  View.barPocket_v1(style:)();
  (*(v24 + 8))(v8, v26);
  (*(v9 + 8))(v11, a2);
  v28 = a2;
  v29 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10002D870(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v21 = *(v13 + 8);
  v21(v16, OpaqueTypeMetadata2);
  sub_10002D870(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v21)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_100223768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v17 - v12;
  v14(v11);
  sub_10002D870(v10, a4, a5);
  v15 = *(v7 + 8);
  v15(v10, a4);
  sub_10002D870(v13, a4, a5);
  return (v15)(v13, a4);
}

uint64_t sub_1002238F8()
{
  type metadata accessor for ScrollPocketModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _InsetViewModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100223AE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
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
      v13 = type metadata accessor for Locale();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100223C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
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
      v13 = type metadata accessor for Locale();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SELFLoggingInvocationDescription()
{
  result = qword_1003B90C0;
  if (!qword_1003B90C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100223D90()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Int sub_100223E30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100223F10()
{
  String.hash(into:)();
}

Swift::Int sub_100223FDC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002240B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100224CFC(*a1);
  *a2 = result;
  return result;
}

void sub_1002240E8(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x697461636F766E69;
  v4 = 0x6F4C656372756F73;
  if (*v1 != 2)
  {
    v4 = 0x6F4C746567726174;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001002EF940;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xEC000000656C6163;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_100224184()
{
  v1 = 0x697461636F766E69;
  v2 = 0x6F4C656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6F4C746567726174;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10022421C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100224CFC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100224250(uint64_t a1)
{
  v2 = sub_100224A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022428C(uint64_t a1)
{
  v2 = sub_100224A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002242C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for Locale();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = __chkstk_darwin(v3);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = v27 - v6;
  v7 = type metadata accessor for UUID();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003B9100);
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for SELFLoggingInvocationDescription();
  __chkstk_darwin(v13);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000085CC(a1, a1[3]);
  sub_100224A8C();
  v38 = v12;
  v16 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100008664(a1);
  }

  v17 = v9;
  v39 = a1;
  v28 = v13;
  v29 = v7;
  v18 = v34;
  v19 = v35;
  v43 = 0;
  v20 = v37;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v21;
  v27[1] = v21;
  v42 = 1;
  sub_100224BA0(&qword_1003B9110);
  v22 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 32))(v15 + v28[5], v17, v22);
  v41 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v32;
  Locale.init(identifier:)();
  v24 = v15 + v28[6];
  v32 = *(v18 + 32);
  (v32)(v24, v23, v19);
  v40 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v30;
  Locale.init(identifier:)();
  (*(v36 + 8))(v38, v20);
  (v32)(v15 + v28[7], v25, v19);
  sub_100224AE0(v15, v31);
  sub_100008664(v39);
  return sub_100224B44(v15);
}

uint64_t sub_100224800(void *a1)
{
  v3 = sub_100005AD4(&qword_1003B9118);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000085CC(a1, a1[3]);
  sub_100224A8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for SELFLoggingInvocationDescription();
  v8[14] = 1;
  type metadata accessor for UUID();
  sub_100224BA0(&qword_1003B9120);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  Locale.identifier.getter();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();

  Locale.identifier.getter();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
}

unint64_t sub_100224A8C()
{
  result = qword_1003B9108;
  if (!qword_1003B9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9108);
  }

  return result;
}

uint64_t sub_100224AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFLoggingInvocationDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100224B44(uint64_t a1)
{
  v2 = type metadata accessor for SELFLoggingInvocationDescription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100224BA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100224BF8()
{
  result = qword_1003B9128;
  if (!qword_1003B9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9128);
  }

  return result;
}

unint64_t sub_100224C50()
{
  result = qword_1003B9130;
  if (!qword_1003B9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9130);
  }

  return result;
}

unint64_t sub_100224CA8()
{
  result = qword_1003B9138;
  if (!qword_1003B9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9138);
  }

  return result;
}

unint64_t sub_100224CFC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DCF0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100224DAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B93C0);
  __chkstk_darwin(v4 - 8);
  v48 = &v40 - v5;
  v6 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v6 - 8);
  v43 = &v40 - v7;
  v41 = type metadata accessor for UUID();
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100226734();
  v11 = static NSUserDefaults.translationGroupDefaults.getter();
  v47 = NSUserDefaults.genderDisambiguationEnabled.getter();

  v12 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  v13 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v15 = Locale._bridgeToObjectiveC()().super.isa;
  v46 = [v13 initWithSourceLocale:isa targetLocale:v15];

  v45 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabName);
  v16 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabSessionId;
  swift_beginAccess();
  v17 = *(v8 + 16);
  v49 = v2;
  v18 = v2 + v16;
  v19 = v10;
  v20 = v43;
  v21 = v41;
  v17(v19, v18, v41);
  v22 = v12[9];
  v44 = *(a1 + v12[8]);
  v42 = *(a1 + v22);
  sub_10001F620(a1 + v12[14], v20, &unk_1003B8C90);
  v23 = *(a1 + v12[12]);
  v24 = static NSUserDefaults.translationGroupDefaults.getter();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 BOOLForKey:v25];

  v27.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v28 = 0;
  if ((*(v8 + 48))(v20, 1, v21) != 1)
  {
    v28 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v20, v21);
  }

  v29 = objc_allocWithZone(_LTSELFLoggingTranslateAppContext);
  LOBYTE(v39) = v26;
  LOBYTE(v38) = v42;
  v30 = v46;
  v31 = [v29 initWithDisplayMode:0 localePair:v46 isGenderAlternativeEnabled:v47 & 1 tabName:v45 tabSessionId:v27.super.isa conversationTabView:v44 isPlayTranslationsEnabled:v38 autoTranslateSessionId:v28 audioChannel:v23 languageIdentificationEnabled:v39];

  (*(v8 + 8))(v19, v21);
  v32 = [objc_opt_self() startInvocationWithTask:1 inputMode:*(a1 + v12[7]) invocationType:*(a1 + v12[6]) translateAppContext:v31];

  v33 = v49;
  v34 = *(v49 + 16);
  *(v49 + 16) = v32;

  v35 = v48;
  sub_10022666C(a1, v48);
  (*(*(v12 - 1) + 56))(v35, 0, 1, v12);
  v36 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters;
  swift_beginAccess();
  sub_1002265FC(v35, v33 + v36);
  return swift_endAccess();
}

uint64_t sub_10022520C(uint64_t a1)
{
  v3 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003B93C8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_100005AD4(&qword_1003B93C0);
  v11 = __chkstk_darwin(v10 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - v14;
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters;
  swift_beginAccess();
  v33 = a1;
  sub_10022666C(a1, v17);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(v7 + 56);
  v34 = v1;
  v31 = v18;
  v20 = v1 + v18;
  v21 = v3;
  sub_10001F620(v20, v9, &qword_1003B93C0);
  sub_10001F620(v17, &v9[v19], &qword_1003B93C0);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) == 1)
  {
    sub_100009EBC(v17, &qword_1003B93C0);
    if (v22(&v9[v19], 1, v3) == 1)
    {
      return sub_100009EBC(v9, &qword_1003B93C0);
    }
  }

  else
  {
    sub_10001F620(v9, v15, &qword_1003B93C0);
    if (v22(&v9[v19], 1, v3) != 1)
    {
      v28 = v30;
      sub_1002266D0(&v9[v19], v30);
      v29 = sub_100226190(v15, v28);
      sub_10016EBCC(v28);
      sub_100009EBC(v17, &qword_1003B93C0);
      sub_10016EBCC(v15);
      result = sub_100009EBC(v9, &qword_1003B93C0);
      if (v29)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_100009EBC(v17, &qword_1003B93C0);
    sub_10016EBCC(v15);
  }

  sub_100009EBC(v9, &qword_1003B93C8);
LABEL_7:
  v24 = v34;
  v25 = v32;
  sub_10001F620(v34 + v31, v32, &qword_1003B93C0);
  v26 = v22(v25, 1, v21);
  sub_100009EBC(v25, &qword_1003B93C0);
  if (v26 == 1)
  {
    v27 = *(v24 + 16);
    if (v27)
    {
      [v27 endSuccessfullyWithQSSSessionId:0 localePair:0];
    }
  }

  return sub_100224DAC(v33);
}

void sub_100225618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v9 = objc_allocWithZone(_LTLocalePair);
    v10 = v5;
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v12 = Locale._bridgeToObjectiveC()().super.isa;
    v13 = [v9 initWithSourceLocale:isa targetLocale:v12];

    if (a2)
    {
      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }

    [v10 appBackgroundedWithPayload:v14 localePair:v13];

    v15 = sub_100224D4C();
    v17 = v16;
    v18 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
    v19 = *(*(v18 - 8) + 48);
    if (!v19(v17, 1, v18))
    {
      v20 = type metadata accessor for Locale();
      (*(*(v20 - 8) + 24))(v17, a3, v20);
    }

    (v15)(v26, 0);
    v21 = sub_100224D4C();
    v23 = v22;
    if (!v19(v22, 1, v18))
    {
      v24 = *(v18 + 20);
      v25 = type metadata accessor for Locale();
      (*(*(v25 - 8) + 24))(v23 + v24, a4, v25);
    }

    (v21)(v26, 0);
  }
}

uint64_t sub_100225840()
{
  v1 = sub_100005AD4(&qword_1003B93C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v8 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabSessionId;
  swift_beginAccess();
  (*(v5 + 40))(v0 + v8, v7, v4);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 0;
  v10 = *(v0 + 16);
  *(v0 + 16) = 0;

  v11 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters;
  swift_beginAccess();
  sub_1002265FC(v3, v0 + v12);
  result = swift_endAccess();
  *(v0 + v9) = 0;
  return result;
}

void *sub_100225A0C()
{
  v1 = sub_100005AD4(&qword_1003B93C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  result = *(v0 + 16);
  if (result)
  {
    [result endSuccessfullyWithQSSSessionId:0 localePair:0];
    v5 = *(v0 + 16);
    *(v0 + 16) = 0;

    v6 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters;
    swift_beginAccess();
    sub_1002265FC(v3, v0 + v7);
    result = swift_endAccess();
    *(v0 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 0;
  }

  return result;
}

uint64_t sub_100225B28()
{
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters, &qword_1003B93C0);
  v1 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabSessionId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100225C14()
{
  sub_10022613C(319, &unk_1003B9198, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100225D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100005AD4(&unk_1003B8C90);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100225EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  else
  {
    v11 = sub_100005AD4(&unk_1003B8C90);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100225FCC()
{
  type metadata accessor for Locale();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _LTInvocationType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for _LTInvocationInputMode(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for _LTAppConversationTabView(319);
        if (v3 <= 0x3F)
        {
          sub_10022613C(319, &qword_1003B9360, type metadata accessor for _LTSELFLoggingSourceOrTargetLanguage);
          if (v4 <= 0x3F)
          {
            type metadata accessor for _LTSELFLoggingAudioChannel(319);
            if (v5 <= 0x3F)
            {
              sub_10022613C(319, &unk_1003B9368, type metadata accessor for _LTSELFLoggingPlaybackSpeed);
              if (v6 <= 0x3F)
              {
                sub_10022613C(319, &qword_1003AF3C8, &type metadata accessor for UUID);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10022613C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

BOOL sub_100226190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100005AD4(&qword_1003AFF80);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  if ((static Locale.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  if ((static Locale.== infix(_:_:)() & 1) == 0 || *(a1 + v14[6]) != *(a2 + v14[6]) || *(a1 + v14[7]) != *(a2 + v14[7]) || *(a1 + v14[8]) != *(a2 + v14[8]) || *(a1 + v14[9]) != *(a2 + v14[9]))
  {
    return 0;
  }

  v16 = v14[10];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + v14[11]) != *(a2 + v14[11]) || *(a1 + v14[12]) != *(a2 + v14[12]))
  {
    return 0;
  }

  v21 = v14[13];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v14[14];
  v27 = *(v11 + 48);
  sub_10001F620(a1 + v26, v13, &unk_1003B8C90);
  sub_10001F620(a2 + v26, &v13[v27], &unk_1003B8C90);
  v28 = *(v5 + 48);
  if (v28(v13, 1, v4) != 1)
  {
    sub_10001F620(v13, v10, &unk_1003B8C90);
    if (v28(&v13[v27], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_27;
    }

    (*(v5 + 32))(v7, &v13[v27], v4);
    sub_1002265A4();
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *(v5 + 8);
    v30(v7, v4);
    v30(v10, v4);
    sub_100009EBC(v13, &unk_1003B8C90);
    return (v29 & 1) != 0;
  }

  if (v28(&v13[v27], 1, v4) != 1)
  {
LABEL_27:
    sub_100009EBC(v13, &qword_1003AFF80);
    return 0;
  }

  sub_100009EBC(v13, &unk_1003B8C90);
  return 1;
}

unint64_t sub_1002265A4()
{
  result = qword_1003AFF88;
  if (!qword_1003AFF88)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFF88);
  }

  return result;
}

uint64_t sub_1002265FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B93C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022666C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002266D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100226734()
{
  result = qword_1003A9B80;
  if (!qword_1003A9B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A9B80);
  }

  return result;
}

id sub_1002267C4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setNumberOfLines:0];
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v4 setFont:v5];

    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10022696C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setNumberOfLines:0];
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v4 setFont:v5];

    v6 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor:v6];

    [v4 setHidden:1];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100226B28()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark);
  }

  else
  {
    v4 = sub_100226BD4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100226BD4()
{
  v0 = sub_100226F38();
  v1 = [objc_allocWithZone(UIImageView) initWithImage:v0];

  v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:0];
  v3 = objc_opt_self();
  [v2 pointSize];
  v4 = [v3 systemFontOfSize:? weight:?];
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v6 = [v5 scaledFontForFont:v4 maximumPointSize:1.79769313e308];

  v7 = [objc_opt_self() configurationWithFont:v6];
  [v1 setPreferredSymbolConfiguration:v7];
  v8 = v1;
  [v8 setContentMode:4];
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:22.0];

  [v10 setActive:1];
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() colorNamed:v11];

  [v8 setTintColor:v12];
  [v8 setAlpha:0.0];

  return v8;
}

id sub_100226E3C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleStack;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleStack);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setAxis:1];
    [v4 setAlignment:0];
    [v4 setDistribution:0];
    [v4 setSpacing:4.0];
    [v4 setLayoutMarginsRelativeArrangement:0];
    [v4 setInsetsLayoutMarginsFromSafeArea:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100226F38()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmarkImage;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmarkImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmarkImage);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = v5;
    if (!v5)
    {
      v6 = [objc_allocWithZone(UIImage) init];
    }

    v7 = v5;
    v8 = [v6 imageFlippedForRightToLeftLayoutDirection];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *sub_100227038(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v44 = type metadata accessor for Locale();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleStack] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmarkImage] = 0;
  v13 = &v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow_alternative];
  *v13 = a1;
  *(v13 + 1) = a2;
  sub_100031DD8(a3, &v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow_sense]);
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow_index] = a4;
  v14 = type metadata accessor for SenseRow();
  v46.receiver = v5;
  v46.super_class = v14;
  v15 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = sub_1002267C4();
  sub_1000085CC(a3, a3[3]);
  dispatch thunk of TranslationSense.definition.getter();
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  v18 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel;
  LODWORD(v19) = 1132068864;
  [*&v15[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleLabel] setContentHuggingPriority:0 forAxis:v19];
  sub_1000085CC(a3, a3[3]);
  v20 = *(dispatch thunk of TranslationSense.labels.getter() + 16);

  if (v20)
  {
    v21 = v44;
    (*(v10 + 16))(v12, v45, v44);
    v22 = objc_allocWithZone(SQListFormatter);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v24 = [v22 initWithLocale:isa];

    (*(v10 + 8))(v12, v21);
    sub_1000085CC(a3, a3[3]);
    v25 = dispatch thunk of TranslationSense.labels.getter();
    sub_100179F5C(v25);

    v26 = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v24 stringFromItems:v26];

    v28 = sub_10022696C();
    [v28 setText:v27];

    [*&v15[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___subtitleLabel] setHidden:0];
  }

  v29 = sub_100226B28();
  LODWORD(v30) = 1144750080;
  [v29 setContentHuggingPriority:0 forAxis:v30];

  v31 = sub_100226E3C();
  [v31 addArrangedSubview:*&v15[v18]];

  v32 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleStack;
  v33 = *&v15[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___titleStack];
  v34 = sub_10022696C();
  [v33 addArrangedSubview:v34];

  v35 = *&v15[v32];
  v36 = v15;
  [v36 addArrangedSubview:v35];
  [v36 addArrangedSubview:*&v36[OBJC_IVAR____TtC17SequoiaTranslator8SenseRow____lazy_storage___checkmark]];
  v37 = v36;
  [v37 setDirectionalLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v37 setLayoutMarginsRelativeArrangement:1];

  [v37 setInsetsLayoutMarginsFromSafeArea:0];
  [v37 setAxis:0];

  [v37 setAlignment:0];
  [v37 setDistribution:0];

  [v37 setSpacing:4.0];
  v38 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1002D95A0;
  v40 = [v37 heightAnchor];

  v41 = [v40 constraintGreaterThanOrEqualToConstant:44.0];
  *(v39 + 32) = v41;
  sub_100033604();
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:v42];

  (*(v10 + 8))(v45, v44);
  sub_100008664(a3);
  return v37;
}

id sub_1002276A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SenseRow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100227798(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100227804(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 BOOLForKey:v7];

  if (v8)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2890);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "OVAD disabled for debugging via a user default setting";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

LABEL_12:

    return 0;
  }

  v14 = [v5 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  if (v16)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2890);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "OVAD manual trigger enabled for debugging via a user default setting";
    goto LABEL_11;
  }

  if (!*(v2 + 16))
  {
    v24 = [objc_allocWithZone(AASensorService) init];
    v25 = *(v2 + 16);
    v26 = v2;
    *(v2 + 16) = v24;
    v27 = v24;

    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000078E8(v28, qword_1003D2890);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Checking OVAD Sensor availability", v31, 2u);
    }

    v32 = v26;
    v33 = *(v26 + 16);
    if (v33 && (v34 = swift_allocObject(), swift_weakInit(), v35 = swift_allocObject(), v35[2] = v34, v35[3] = a1, v35[4] = a2, v35[5] = v27, v50 = sub_1002287E0, v51 = v35, v46 = _NSConcreteStackBlock, v47 = 1107296256, v48 = sub_10022830C, v49 = &unk_10038A108, v36 = _Block_copy(&v46), v37 = v27, v38 = v33, , , [v38 setSensorAvailabilityUpdatedHandler:v36], _Block_release(v36), v38, (v39 = *(v32 + 16)) != 0))
    {
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      v41[2] = v40;
      v41[3] = a1;
      v41[4] = a2;
      v50 = sub_100228844;
      v51 = v41;
      v46 = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_1000CF44C;
      v49 = &unk_10038A158;
      v42 = _Block_copy(&v46);

      v43 = v39;

      [v43 setSensorDataInfoUpdatedHandler:v42];
      _Block_release(v42);

      v44 = *(v32 + 16);
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    [v45 activate];

    return 0;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000078E8(v19, qword_1003D2890);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Sensor service is already running", v22, 2u);
  }

  sub_100228850();
  result = swift_allocError();
  *v23 = 0;
  return result;
}

void sub_100227E20(char a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ((a1 & 1) == 0)
    {
      if (qword_1003A9280 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000078E8(v11, qword_1003D2890);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "OVAD sensor service is not available", v14, 2u);
      }

      sub_100228850();
      v15 = swift_allocError();
      *v16 = 2;
      a3(0, v15);

      goto LABEL_15;
    }

    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2890);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Sensor service is available for OVAD sensor. Subscribing", v20, 2u);
    }

    v21 = *(v10 + 16);
    if (v21 && v21 == a5)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = a3;
      *(v22 + 24) = a4;
      aBlock[4] = sub_1002288DC;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100227798;
      aBlock[3] = &unk_10038A1A8;
      v23 = _Block_copy(aBlock);

      [a5 subscribeWithSensorDataFlags:1 completion:v23];
      _Block_release(v23);
LABEL_15:

      return;
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "OVAD stale sensor service object. Skipping subscription", v26, 2u);
    }
  }
}

uint64_t sub_10022817C(uint64_t result, void (*a2)(void, uint64_t))
{
  if (result)
  {
    v3 = result;
    swift_errorRetain();
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2890);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "OVAD sensor service subscription error: %@", v7, 0xCu);
      sub_1000DDF70(v8);
    }

    swift_errorRetain();
    a2(0, v3);
  }

  return result;
}

uint64_t sub_10022830C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100228360(void *a1, uint64_t a2, void (*a3)(BOOL, void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = qword_1003A9280;
      v8 = a1;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000078E8(v9, qword_1003D2890);
      v10 = v8;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136315138;
        [v6 ownVoiceActivityLevel];
        type metadata accessor for AAOVADStatus(0);
        v15 = String.init<A>(describing:)();
        v17 = sub_10028D78C(v15, v16, &v18);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "OVAD sensor service: update %s", v13, 0xCu);
        sub_100008664(v14);
      }

      a3([v6 ownVoiceActivityLevel] == 2, 0);
    }
  }
}

void sub_100228568()
{
  if (*(v0 + 16))
  {
    v1 = v0;
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2890);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating sensor service subscription for OVAD state changes", v5, 2u);
    }

    [*(v1 + 16) unsubscribeAll];
    [*(v1 + 16) invalidate];
    v6 = *(v1 + 16);
    *(v1 + 16) = 0;
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000078E8(v7, qword_1003D2890);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Skipping OVAD sensor service subscription invalidation - no active sensor service", v9, 2u);
    }

    v6 = oslog;
  }
}

uint64_t sub_100228760()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100228798()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002287EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100228804()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100228850()
{
  result = qword_1003B9500;
  if (!qword_1003B9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9500);
  }

  return result;
}

uint64_t sub_1002288A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1002288F8()
{
  result = qword_1003B9508;
  if (!qword_1003B9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9508);
  }

  return result;
}

char *sub_10022895C(void *a1)
{
  v3 = [objc_opt_self() effectForBlurEffect:a1 style:7];
  v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *&v1[OBJC_IVAR____TtC17SequoiaTranslator13SeparatorView_background] = v4;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SeparatorView();
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 separatorColor];
  [v7 setBackgroundColor:v8];

  v9 = OBJC_IVAR____TtC17SequoiaTranslator13SeparatorView_background;
  [*&v7[OBJC_IVAR____TtC17SequoiaTranslator13SeparatorView_background] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:*&v7[v9]];
  v10 = *&v7[v9];
  sub_1002C31A4(v10);

  return v7;
}

id sub_100228B48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100228BB0@<X0>(uint64_t a1@<X8>)
{
  sub_100226734();
  v2 = static NSUserDefaults.translationGroupDefaults.getter();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_100228CB4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE500000000000000;
    v3 = 0x53455F7365;
  }

  sub_100226734();
  v6 = static NSUserDefaults.translationGroupDefaults.getter();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 stringForKey:v7];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v3 != v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0xE000000000000000;
    if (v3)
    {
      goto LABEL_10;
    }
  }

  if (v5 == v11)
  {

    goto LABEL_12;
  }

LABEL_10:
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {

    sub_10022AA40();
  }

LABEL_12:

  return Locale.init(identifier:)();
}

uint64_t sub_100228E78@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_100228F8C()
{
  v0 = NSTemporaryDirectory();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4._object = 0x80000001002FB3A0;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);

  qword_1003D2A80 = v1;
  *algn_1003D2A88 = v3;
  return result;
}

unint64_t sub_10022901C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005AD4(&qword_1003B9540);
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_10000A37C(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_10005128C(v22, v21);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_10028DD34(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 4 * v9) = v20;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 4 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100229270@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v8 = type metadata accessor for Date();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    (*(v10 + 56))(v4, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v4, 1, v8) != 1)
    {
      return (*(v10 + 32))(a1, v4, v8);
    }
  }

  else
  {
    sub_100009EBC(v14, &unk_1003AB9C0);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = (*(*(v8 - 8) + 48))(v4, 1, v8);
  if (result != 1)
  {
    return sub_100009EBC(v4, &qword_1003B5130);
  }

  return result;
}

uint64_t sub_100229518@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v8 = type metadata accessor for Date();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    (*(v10 + 56))(v4, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v4, 1, v8) != 1)
    {
      return (*(v10 + 32))(a1, v4, v8);
    }
  }

  else
  {
    sub_100009EBC(v14, &unk_1003AB9C0);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = (*(*(v8 - 8) + 48))(v4, 1, v8);
  if (result != 1)
  {
    return sub_100009EBC(v4, &qword_1003B5130);
  }

  return result;
}

uint64_t sub_1002297C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10000A37C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void sub_10022980C(void *a1)
{
  if (a1)
  {
    v2 = [a1 productID];
    sub_100226734();
    v3 = static NSUserDefaults.translationGroupDefaults.getter();
    v4 = String._bridgeToObjectiveC()();
    [v3 setInteger:v2 forKey:?];
  }

  else
  {
    sub_100226734();
    v3 = static NSUserDefaults.translationGroupDefaults.getter();
    v4 = String._bridgeToObjectiveC()();
    [v3 setInteger:0 forKey:?];
  }
}

unint64_t sub_100229904(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10004FC90(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_10005128C(v44, v42);
  v14 = *a5;
  result = sub_10028DD34(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10028EA80(v20, a4 & 1);
    result = sub_10028DD34(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_100290688();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_100008664(v25);
    sub_10005128C(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_10005128C(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_10004FC90(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_10005128C(v44, v42);
        v32 = *a5;
        result = sub_10028DD34(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_10028EA80(v36, 1);
          result = sub_10028DD34(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_100008664(v31);
          sub_10005128C(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_10005128C(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_10004FC90(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_10000C1D0();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100229C14()
{
  sub_100005AD4(&qword_1003B9548);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000023;
  *(inited + 16) = xmmword_1002E9900;
  *(inited + 40) = 0x80000001002F8920;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x80000001002F9950;
  *(inited + 96) = 0;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000001002FAA70;
  *(inited + 144) = 120;
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000001002FA7F0;
  *(inited + 192) = 120;
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0xD00000000000001ELL;
  *(inited + 232) = 0x80000001002F05B0;
  *(inited + 240) = 65;
  *(inited + 264) = &type metadata for Int;
  *(inited + 272) = 0xD00000000000001ELL;
  *(inited + 280) = 0x80000001002F0590;
  *(inited + 288) = 10;
  *(inited + 312) = &type metadata for Int;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x80000001002F05D0;
  *(inited + 336) = 50;
  *(inited + 360) = &type metadata for Int;
  *(inited + 368) = 0x43656D69544C5053;
  *(inited + 376) = 0xEF746E6174736E6FLL;
  *(inited + 384) = 0x3FB999999999999ALL;
  *(inited + 408) = &type metadata for Double;
  *(inited + 416) = 0x43656D6954524E53;
  *(inited + 424) = 0xEF746E6174736E6FLL;
  *(inited + 432) = 0x3FB999999999999ALL;
  *(inited + 456) = &type metadata for Double;
  *(inited + 464) = 0xD00000000000001ALL;
  *(inited + 472) = 0x80000001002FB430;
  v1 = sub_10029215C(&off_10037CEE0);
  sub_100005AD4(&qword_1003B7A18);
  swift_arrayDestroy();
  v2 = sub_100005AD4(&qword_1003B9550);
  *(inited + 480) = v1;
  *(inited + 504) = v2;
  *(inited + 512) = 0xD00000000000001FLL;
  *(inited + 520) = 0x80000001002FB3C0;
  v3 = sub_10029215C(&off_10037CF30);
  swift_arrayDestroy();
  *(inited + 552) = v2;
  *(inited + 528) = v3;
  *(inited + 560) = 0xD000000000000012;
  *(inited + 568) = 0x80000001002FA810;
  *(inited + 600) = &type metadata for Int;
  *(inited + 576) = 100;
  *(inited + 608) = 0xD00000000000001DLL;
  *(inited + 616) = 0x80000001002FA8A0;
  *(inited + 648) = &type metadata for Int;
  *(inited + 624) = 0;
  *(inited + 656) = 0xD00000000000001FLL;
  *(inited + 664) = 0x80000001002FA860;
  *(inited + 696) = &type metadata for Int;
  *(inited + 672) = 0;
  *(inited + 704) = 0xD000000000000011;
  *(inited + 712) = 0x80000001002FA7D0;
  *(inited + 744) = &type metadata for Bool;
  *(inited + 720) = 1;
  v18 = sub_100292258(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003BBE00);
  swift_arrayDestroy();
  v17 = [objc_opt_self() standardUserDefaults];
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002E9910;
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x80000001002FB450;
  *(v4 + 48) = 0;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 80) = 0xD000000000000025;
  *(v4 + 88) = 0x80000001002F2CD0;
  *(v4 + 96) = 0x53455F7365;
  *(v4 + 104) = 0xE500000000000000;
  *(v4 + 120) = &type metadata for String;
  *(v4 + 128) = 0xD000000000000025;
  *(v4 + 136) = 0x80000001002F2D00;
  *(v4 + 144) = 0x53555F6E65;
  *(v4 + 152) = 0xE500000000000000;
  *(v4 + 168) = &type metadata for String;
  *(v4 + 176) = 0xD000000000000024;
  *(v4 + 184) = 0x80000001002F20D0;
  *(v4 + 192) = 0x53455F7365;
  *(v4 + 200) = 0xE500000000000000;
  *(v4 + 216) = &type metadata for String;
  *(v4 + 224) = 0xD000000000000024;
  *(v4 + 232) = 0x80000001002F2100;
  *(v4 + 240) = 0x53555F6E65;
  *(v4 + 248) = 0xE500000000000000;
  *(v4 + 264) = &type metadata for String;
  *(v4 + 272) = 0xD000000000000029;
  *(v4 + 280) = 0x80000001002F3300;
  *(v4 + 288) = 0x53455F7365;
  *(v4 + 296) = 0xE500000000000000;
  *(v4 + 312) = &type metadata for String;
  *(v4 + 320) = 0xD000000000000029;
  *(v4 + 328) = 0x80000001002F32D0;
  *(v4 + 336) = 0x53555F6E65;
  *(v4 + 344) = 0xE500000000000000;
  *(v4 + 360) = &type metadata for String;
  *(v4 + 368) = 0xD00000000000002ELL;
  *(v4 + 376) = 0x80000001002FB470;
  *(v4 + 384) = 0;
  *(v4 + 408) = &type metadata for Bool;
  *(v4 + 416) = 0xD000000000000015;
  *(v4 + 424) = 0x80000001002FB4A0;
  *(v4 + 432) = 0;
  *(v4 + 456) = &type metadata for Bool;
  *(v4 + 464) = 0xD000000000000013;
  *(v4 + 472) = 0x80000001002FB4C0;
  *(v4 + 480) = 0;
  *(v4 + 504) = &type metadata for Bool;
  *(v4 + 512) = 0xD000000000000012;
  *(v4 + 520) = 0x80000001002F2E50;
  *(v4 + 552) = &type metadata for Bool;
  *(v4 + 528) = 0;
  *(v4 + 560) = 0x754164656E6E6143;
  *(v4 + 568) = 0xEF687461506F6964;
  *(v4 + 600) = &type metadata for String;
  *(v4 + 576) = 0xD00000000000004BLL;
  *(v4 + 584) = 0x80000001002FA9F0;
  *(v4 + 608) = 0xD000000000000012;
  *(v4 + 616) = 0x80000001002FA9D0;
  if (qword_1003A92F8 != -1)
  {
    v16 = v4;
    swift_once();
    v4 = v16;
  }

  v5 = qword_1003D2A80;
  v6 = *algn_1003D2A88;
  *(v4 + 648) = &type metadata for String;
  *(v4 + 624) = v5;
  *(v4 + 632) = v6;
  *(v4 + 656) = 0xD000000000000013;
  *(v4 + 664) = 0x80000001002FA930;
  *(v4 + 696) = &type metadata for Bool;
  *(v4 + 672) = 0;
  *(v4 + 704) = 0xD000000000000019;
  *(v4 + 712) = 0x80000001002FA910;
  *(v4 + 744) = &type metadata for Bool;
  *(v4 + 720) = 0;
  *(v4 + 752) = 0xD00000000000001BLL;
  *(v4 + 760) = 0x80000001002FA880;
  *(v4 + 792) = &type metadata for Bool;
  *(v4 + 768) = 0;
  *(v4 + 800) = 0xD000000000000026;
  *(v4 + 808) = 0x80000001002FB4E0;
  *(v4 + 840) = &type metadata for Bool;
  *(v4 + 816) = 0;
  *(v4 + 848) = 0xD00000000000002BLL;
  *(v4 + 856) = 0x80000001002FB510;
  *(v4 + 888) = &type metadata for Bool;
  *(v4 + 864) = 0;
  *(v4 + 896) = 0xD000000000000023;
  *(v4 + 904) = 0x80000001002FB540;
  *(v4 + 936) = &type metadata for Bool;
  *(v4 + 912) = 0;
  *(v4 + 944) = 0xD000000000000025;
  *(v4 + 952) = 0x80000001002FB570;
  *(v4 + 984) = &type metadata for Int;
  *(v4 + 960) = 0;
  *(v4 + 992) = 0xD000000000000025;
  *(v4 + 1000) = 0x80000001002FB5A0;
  *(v4 + 1032) = &type metadata for Int;
  *(v4 + 1008) = 0;
  *(v4 + 1040) = 0xD00000000000001DLL;
  *(v4 + 1048) = 0x80000001002FB5D0;
  *(v4 + 1080) = &type metadata for Int;
  *(v4 + 1056) = 0;
  *(v4 + 1088) = 0xD00000000000001DLL;
  *(v4 + 1096) = 0x80000001002FB5F0;
  *(v4 + 1128) = &type metadata for Int;
  *(v4 + 1104) = 0;
  *(v4 + 1136) = 0xD00000000000001ELL;
  *(v4 + 1144) = 0x80000001002FB610;
  v7 = v4;
  *(v4 + 1176) = sub_100005AD4(&qword_1003B9558);
  *(v7 + 1152) = &_swiftEmptyDictionarySingleton;
  *(v7 + 1184) = 0xD000000000000018;
  *(v7 + 1192) = 0x80000001002F6480;
  *(v7 + 1224) = &type metadata for Bool;
  *(v7 + 1200) = 0;
  *(v7 + 1232) = 0xD00000000000001ALL;
  *(v7 + 1240) = 0x80000001002F7370;
  *(v7 + 1272) = &type metadata for Bool;
  *(v7 + 1248) = 0;
  *(v7 + 1280) = 0xD00000000000001ALL;
  *(v7 + 1288) = 0x80000001002FB630;
  *(v7 + 1320) = sub_100005AD4(&qword_1003B2FE8);
  *(v7 + 1296) = &_swiftEmptyArrayStorage;
  strcpy((v7 + 1328), "AutoplayTTSKey");
  *(v7 + 1343) = -18;
  *(v7 + 1368) = &type metadata for Bool;
  *(v7 + 1344) = 0;
  *(v7 + 1376) = 0xD000000000000010;
  *(v7 + 1384) = 0x80000001002FB650;
  *(v7 + 1416) = &type metadata for Bool;
  *(v7 + 1392) = 0;
  *(v7 + 1424) = 0xD000000000000013;
  *(v7 + 1432) = 0x80000001002FB000;
  *(v7 + 1464) = &type metadata for Bool;
  *(v7 + 1440) = 1;
  *(v7 + 1472) = 0xD000000000000026;
  *(v7 + 1480) = 0x80000001002FB670;
  *(v7 + 1512) = &type metadata for Bool;
  *(v7 + 1488) = 0;
  *(v7 + 1520) = 0xD000000000000027;
  *(v7 + 1528) = 0x80000001002FB6A0;
  *(v7 + 1560) = &type metadata for Double;
  *(v7 + 1536) = 0x3FE0000000000000;
  *(v7 + 1568) = 0xD000000000000027;
  *(v7 + 1576) = 0x80000001002FB6D0;
  *(v7 + 1608) = &type metadata for Double;
  *(v7 + 1584) = 0x3FE999999999999ALL;
  *(v7 + 1616) = 0xD000000000000015;
  *(v7 + 1624) = 0x80000001002FB700;
  *(v7 + 1656) = &type metadata for Double;
  *(v7 + 1632) = 0x3FE0000000000000;
  *(v7 + 1664) = 0xD00000000000001DLL;
  *(v7 + 1672) = 0x80000001002FA8C0;
  *(v7 + 1704) = &type metadata for Int;
  *(v7 + 1680) = 4096;
  *(v7 + 1712) = 0xD000000000000015;
  *(v7 + 1720) = 0x80000001002FB300;
  v8 = type metadata accessor for Date();
  *(v7 + 1752) = v8;
  sub_100050D60((v7 + 1728));

  static Date.distantPast.getter();
  *(v7 + 1760) = 0xD000000000000017;
  *(v7 + 1768) = 0x80000001002FB2E0;
  *(v7 + 1800) = v8;
  sub_100050D60((v7 + 1776));
  static Date.distantPast.getter();
  v9 = sub_100292258(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v9;
  sub_100229904(v18, sub_1002297C0, 0, isUniquelyReferenced_nonNull_native, &v19);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v17 registerDefaults:isa];

  sub_100226734();
  v12 = static NSUserDefaults.translationGroupDefaults.getter();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1002D3160;
  *(v13 + 32) = static NSUserDefaults.Constants.genderDisambiguationEnabledKey.getter();
  *(v13 + 40) = v14;
  *(v13 + 72) = &type metadata for Bool;
  *(v13 + 48) = 1;
  sub_100292258(v13);
  swift_setDeallocating();
  sub_100009EBC(v13 + 32, &qword_1003BBE00);
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 registerDefaults:v15];
}

void sub_10022A744(char a1)
{
  v2 = a1 & 1;
  sub_100226734();
  v3 = static NSUserDefaults.translationGroupDefaults.getter();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if (v5 != v2)
  {
    v6 = static NSUserDefaults.translationGroupDefaults.getter();
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v6 setValue:isa forKey:v8];

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2818);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting IsLiveActivityListeningKey with reloadControls, value: %{BOOL}d", v12, 8u);
    }

    type metadata accessor for ControlCenter();
    static ControlCenter.shared.getter();
    dispatch thunk of ControlCenter.reloadControls(ofKind:)();
  }
}

unint64_t sub_10022A94C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (!v2 || (v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v2, v4 = sub_10022901C(v3), , !v4))
  {
    v4 = sub_10029248C(_swiftEmptyArrayStorage);
  }

  return v4;
}

uint64_t sub_10022AA40()
{
  sub_100226734();
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:v1 forKey:v2];

  type metadata accessor for ControlCenter();
  static ControlCenter.shared.getter();
  dispatch thunk of ControlCenter.reloadControls(ofKind:)();
}

uint64_t sub_10022AB28(char *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v6(v5, a1, v2);
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v10];

  v11 = *(v3 + 8);
  v11(v5, v2);
  v6(v5, a1, v2);
  v12 = [v7 standardUserDefaults];
  v13 = Date._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  [v12 setObject:v13 forKey:v14];

  v11(a1, v2);
  return (v11)(v5, v2);
}

uint64_t sub_10022AD3C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E1D20(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009EBC(v4, &qword_1003AFCE0);
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 setURL:0 forKey:v10];

    return sub_100009EBC(a1, &qword_1003AFCE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = [objc_opt_self() standardUserDefaults];
    Locale.identifier.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();
    [v12 setObject:v13 forKey:v14];

    sub_100009EBC(a1, &qword_1003AFCE0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10022AFD8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E1D20(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009EBC(v4, &qword_1003AFCE0);
    sub_100226734();
    v9 = static NSUserDefaults.translationGroupDefaults.getter();
    v10 = String._bridgeToObjectiveC()();
    [v9 setURL:0 forKey:v10];

    return sub_100009EBC(a1, &qword_1003AFCE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100226734();
    v12 = static NSUserDefaults.translationGroupDefaults.getter();
    Locale.identifier.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();
    [v12 setObject:v13 forKey:v14];

    type metadata accessor for ControlCenter();
    static ControlCenter.shared.getter();
    dispatch thunk of ControlCenter.reloadControls(ofKind:)();

    sub_100009EBC(a1, &qword_1003AFCE0);
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_10022B294()
{
  sub_100226734();
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 integerForKey:v1];

  if (v2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v2))
    {
      v3 = [objc_opt_self() productInfoWithProductID:v2];
      return;
    }

    __break(1u);
  }
}

unint64_t sub_10022B350()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (!v2 || (v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v2, v4 = sub_10022901C(v3), , !v4))
  {
    v4 = sub_10029248C(_swiftEmptyArrayStorage);
  }

  return v4;
}

double sub_10022B444()
{
  sub_100005AD4(&unk_1003BBD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = NSFontAttributeName;
  v1 = objc_opt_self();
  v2 = NSFontAttributeName;
  v3 = [v1 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:0];
  v4 = objc_opt_self();
  [v3 pointSize];
  v5 = [v4 systemFontOfSize:? weight:?];
  v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v7 = [v6 scaledFontForFont:v5 maximumPointSize:1.79769313e308];

  *(inited + 64) = sub_10022B668();
  *(inited + 40) = v7;
  sub_100292588(inited);
  swift_setDeallocating();
  sub_1000E4F60(inited + 32);
  v8 = objc_allocWithZone(NSAttributedString);
  v9 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10013B81C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithString:v9 attributes:isa];

  [v11 size];
  v13 = v12;

  return v13;
}

unint64_t sub_10022B668()
{
  result = qword_1003B2390[0];
  if (!qword_1003B2390[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1003B2390);
  }

  return result;
}

uint64_t sub_10022B6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10022B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a1 <= 1)
  {
    if (!a1)
    {
      v6 = 1;
      goto LABEL_14;
    }

    if (a1 == 1)
    {
      v6 = 2;
      goto LABEL_14;
    }

LABEL_41:
    ObjectType = swift_getObjectType();
    (*(a2 + 24))(ObjectType, a2);
    String.hash(into:)();

    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v6 = 3;
    goto LABEL_14;
  }

  if (a1 == 3)
  {
    v6 = 4;
    goto LABEL_14;
  }

  if (a1 != 4)
  {
    goto LABEL_41;
  }

  v6 = 5;
LABEL_14:
  Hasher._combine(_:)(v6);
LABEL_15:
  v8 = Hasher._finalize()();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v24 = a2;
  while (1)
  {
    v12 = (*(a3 + 48) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    if (*v12 <= 1)
    {
      if (!v13)
      {
        if (!a1)
        {
          return 1;
        }

        goto LABEL_18;
      }

      if (v13 == 1)
      {
        if (a1 == 1)
        {
          return 1;
        }

        goto LABEL_18;
      }
    }

    else
    {
      switch(v13)
      {
        case 2uLL:
          if (a1 == 2)
          {
            return 1;
          }

          goto LABEL_18;
        case 3uLL:
          if (a1 == 3)
          {
            return 1;
          }

          goto LABEL_18;
        case 4uLL:
          if (a1 == 4)
          {
            return 1;
          }

          goto LABEL_18;
      }
    }

    if (a1 < 5)
    {
      goto LABEL_18;
    }

    v15 = swift_getObjectType();
    v25 = *(v14 + 24);
    swift_unknownObjectRetain();
    v16 = v25(v15, v14);
    v18 = v17;
    v19 = swift_getObjectType();
    if (v16 == (*(v24 + 24))(v19) && v18 == v20)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000950E0(v13);

    if (v22)
    {
      return 1;
    }

LABEL_18:
    v10 = (v10 + 1) & v11;
    if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1000950E0(v13);

  return 1;
}

uint64_t sub_10022BA7C(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v17 = ~v5;
    while (1)
    {
      v7 = *(*(a2 + 48) + v6);
      if (v7 <= 1)
      {
        v8 = 0x6E776F44776F6C73;
        if (*(*(a2 + 48) + v6))
        {
          v9 = 0x74786554646E6966;
        }

        else
        {
          v9 = 0x6E776F44776F6C73;
        }

        v10 = 0xE800000000000000;
      }

      else
      {
        v8 = 0x6E776F44776F6C73;
        if (v7 == 2)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001002EF750;
        }

        else
        {
          if (v7 == 3)
          {
            v9 = 0xD000000000000018;
          }

          else
          {
            v9 = 0xD000000000000017;
          }

          if (v7 == 3)
          {
            v10 = 0x80000001002EF770;
          }

          else
          {
            v10 = 0x80000001002EF790;
          }
        }
      }

      v11 = 0xD000000000000018;
      if (a1 == 3)
      {
        v12 = 0x80000001002EF770;
      }

      else
      {
        v11 = 0xD000000000000017;
        v12 = 0x80000001002EF790;
      }

      if (a1 == 2)
      {
        v11 = 0xD000000000000013;
        v12 = 0x80000001002EF750;
      }

      if (a1)
      {
        v8 = 0x74786554646E6966;
      }

      v13 = a1 <= 1u ? v8 : v11;
      v14 = a1 <= 1u ? 0xE800000000000000 : v12;
      if (v9 == v13 && v10 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v6 = (v6 + 1) & v17;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v15 & 1;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10022BD18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_10000C320(v16, a1, a2);
  v6 = Hasher._finalize()();
  v7 = a3 + 56;
  v8 = -1 << *(a3 + 32);
  v9 = v6 & ~v8;
  if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(a3 + 48);
    do
    {
      v12 = (v11 + 16 * v9);
      v13 = v12[1];
      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            if (a2 == 3)
            {
              return 1;
            }

            goto LABEL_5;
          case 4:
            if (a2 == 4)
            {
              return 1;
            }

            goto LABEL_5;
          case 5:
            if (a2 == 5)
            {
              return 1;
            }

            goto LABEL_5;
        }
      }

      else
      {
        switch(v13)
        {
          case 0:
            if (!a2)
            {
              return 1;
            }

            goto LABEL_5;
          case 1:
            if (a2 == 1)
            {
              return 1;
            }

            goto LABEL_5;
          case 2:
            if (a2 == 2)
            {
              return 1;
            }

            goto LABEL_5;
        }
      }

      if (a2 >= 6)
      {
        v14 = *v12 == a1 && v13 == a2;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }

LABEL_5:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10022BF08(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8;
  v9 = static Published.subscript.setter();
  return a7(v9);
}

uint64_t sub_10022BF90()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000A2CC(0, &qword_1003B9628);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10022D3E4(&qword_1003B9630, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100005AD4(&qword_1003B9638);
  sub_1000A5708(&qword_1003B9640, &qword_1003B9638);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003B9560 = result;
  return result;
}

void sub_10022C1F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  static NSUserDefaults.Constants.genderDisambiguationEnabledKey.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 setValue:isa forKey:v2];
}

void sub_10022C2E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void sub_10022C3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void sub_10022C4DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

id sub_10022C5E0()
{
  v1 = v0;
  sub_10000A2CC(0, &qword_1003A9B80);
  v2 = static NSUserDefaults.translationGroupDefaults.getter();
  static NSUserDefaults.Constants.genderDisambiguationEnabledKey.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 BOOLForKey:v3];

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v4 = static NSUserDefaults.translationGroupDefaults.getter();
  v5 = String._bridgeToObjectiveC()();
  [v4 BOOLForKey:v5];

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v6 = static NSUserDefaults.translationGroupDefaults.getter();
  v7 = String._bridgeToObjectiveC()();
  [v6 BOOLForKey:v7];

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v8 = static NSUserDefaults.translationGroupDefaults.getter();
  v9 = String._bridgeToObjectiveC()();
  LOBYTE(v7) = [v8 BOOLForKey:v9];

  swift_beginAccess();
  v16 = v7;
  Published.init(initialValue:)();
  swift_endAccess();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for SharedTranslationOptions();
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = objc_opt_self();
  v12 = v10;
  result = [v11 sharedConnection];
  if (result)
  {
    v14 = result;
    [result registerObserver:v12];

    sub_10022D018();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10022C8DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTranslationOptions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SharedTranslationOptions()
{
  result = qword_1003B95B0;
  if (!qword_1003B95B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022CA5C()
{
  sub_1000C1BC0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10022CAF0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharedTranslationOptions();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10022CBCC()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    oslog = v0;
    v1 = [v0 effectiveBoolValueForSetting:MCFeatureAssistantProfanityFilterForced];
    byte_1003D2A90 = v1 == 1;
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2890);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v1 == 1;
      _os_log_impl(&_mh_execute_header, v3, v4, "Updated value for censoring profanity: %{BOOL,public}d", v5, 8u);
    }
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000078E8(v6, qword_1003D2890);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "MCProfileConnection cannot be established, can't check profanity filtering value", v8, 2u);
    }
  }
}

uint64_t sub_10022CDDC(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = LanguagesService.autoDetectSpeechUnsupportedPairs.getter();
  v7 = [a1 canonicalIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_10022B6B4(v8, v10, v6);

  v12 = LanguagesService.localeModalities.getter();
  if (v12)
  {
    v13 = [a1 sourceLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v15 = [v12 locale:isa supportsModality:1];

    LODWORD(v12) = v15 ^ 1;
  }

  v16 = LanguagesService.localeModalities.getter();
  if (v16)
  {
    v17 = v16;
    v18 = [a1 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v20 = [v17 locale:v19 supportsModality:1];
  }

  else
  {
    v20 = 1;
  }

  return v20 & ~(v11 | v12) & 1;
}

uint64_t sub_10022D018()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9300 != -1)
  {
    swift_once();
  }

  v9[1] = qword_1003B9560;
  aBlock[4] = sub_10022CBCC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038A260;
  v7 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10022D3E4(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v10);
}

uint64_t sub_10022D2E4()
{
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2890);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Notified of MCProfileConnection setting change, rechecking profanity filtering", v3, 2u);
  }

  return sub_10022D018();
}

uint64_t sub_10022D3CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10022D3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022D508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B9648);
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

uint64_t sub_10022D5F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B9648);
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

uint64_t type metadata accessor for SidebarButton()
{
  result = qword_1003B96A8;
  if (!qword_1003B96A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022D708()
{
  sub_10022D7C4();
  if (v0 <= 0x3F)
  {
    sub_1000A9B3C(319, &unk_1003B96C0);
    if (v1 <= 0x3F)
    {
      sub_1000A9B3C(319, &qword_1003AC878);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10022D7C4()
{
  if (!qword_1003B96B8)
  {
    type metadata accessor for NavigationSplitViewVisibility();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B96B8);
    }
  }
}

uint64_t sub_10022D838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v3 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v3 - 8);
  v108 = &v85 - v4;
  v109 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for NSNotificationCenter.Publisher();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationSplitViewVisibility();
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100005AD4(&qword_1003AB5F8);
  __chkstk_darwin(v98);
  v119 = &v85 - v9;
  v118 = sub_100005AD4(&qword_1003B96F8);
  __chkstk_darwin(v118);
  v11 = &v85 - v10;
  v12 = type metadata accessor for SidebarButton();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005AD4(&qword_1003B9700);
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin(v17);
  v117 = &v85 - v18;
  v95 = sub_100005AD4(&qword_1003B9708);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v112 = &v85 - v19;
  v96 = sub_100005AD4(&qword_1003B9710);
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = &v85 - v20;
  v97 = sub_100005AD4(&qword_1003B9718);
  __chkstk_darwin(v97);
  v99 = &v85 - v21;
  sub_10022EC70(v2, v16);
  v22 = *(v14 + 80);
  v23 = (v22 + 16) & ~v22;
  v113 = v23 + v15;
  v114 = v22;
  v24 = swift_allocObject();
  v115 = v23;
  sub_10022ECD8(v16, v24 + v23);
  v25 = (v2 + *(v13 + 28));
  v26 = *v25;
  v27 = v25[1];
  *&v128[0] = v26;
  *(&v128[0] + 1) = v27;
  sub_100005AD4(&qword_1003B9720);
  State.wrappedValue.getter();
  v28 = v120;
  LOBYTE(v13) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v128[0]) = 0;
  LOBYTE(v23) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v127 = 0;
  *&v120 = sub_10022ED3C;
  *(&v120 + 1) = v24;
  LOWORD(v121) = 257;
  *(&v121 + 1) = v28;
  LOBYTE(v122) = v13;
  *(&v122 + 1) = v30;
  *&v123 = v32;
  *(&v123 + 1) = v34;
  *&v124 = v36;
  BYTE8(v124) = 0;
  LOBYTE(v125) = v23;
  *(&v125 + 1) = v37;
  *&v126[0] = v38;
  *(&v126[0] + 1) = v39;
  *&v126[1] = v40;
  BYTE8(v126[1]) = 0;
  v41 = enum case for DynamicTypeSize.large(_:);
  v42 = type metadata accessor for DynamicTypeSize();
  v43 = *(v42 - 8);
  v44 = *(v43 + 104);
  v45 = v43 + 104;
  v44(v11, v41, v42);
  v46 = sub_10022F380(&qword_1003AB628, &type metadata accessor for DynamicTypeSize);
  v47 = v42;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v110 = v16;
  v111 = v2;
  v48 = sub_100005AD4(&qword_1003B9728);
  v89 = v46;
  v49 = v48;
  v50 = sub_10022ED9C();
  v87 = v44;
  v88 = v45;
  v51 = v50;
  v52 = sub_10001BAEC(&qword_1003B9770, &qword_1003B96F8);
  v86 = v49;
  View.dynamicTypeSize<A>(_:)();
  sub_100009EBC(v11, &qword_1003B96F8);
  v128[4] = v124;
  v128[5] = v125;
  v129[0] = v126[0];
  *(v129 + 9) = *(v126 + 9);
  v128[0] = v120;
  v128[1] = v121;
  v128[2] = v122;
  v128[3] = v123;
  sub_100009EBC(v128, &qword_1003B9728);
  v87(v119, enum case for DynamicTypeSize.xxLarge(_:), v42);
  v47 = v42;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v120 = v86;
  *(&v120 + 1) = v118;
  *&v121 = v51;
  *(&v121 + 1) = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8);
  v55 = v119;
  v56 = v91;
  v57 = v98;
  v58 = v117;
  View.dynamicTypeSize<A>(_:)();
  sub_100009EBC(v55, &qword_1003AB5F8);
  (*(v90 + 8))(v58, v56);
  v59 = sub_100005AD4(&qword_1003A93D8);
  *&v120 = v56;
  *(&v120 + 1) = v57;
  *&v121 = OpaqueTypeConformance2;
  *(&v121 + 1) = v54;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  v62 = v92;
  v63 = v95;
  v64 = v112;
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  (*(v93 + 8))(v64, v63);
  *&v120 = v63;
  *(&v120 + 1) = v59;
  *&v121 = v60;
  *(&v121 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v65 = v99;
  v66 = v96;
  View.accessibilityIdentifier(_:)();
  (*(v94 + 8))(v62, v66);
  sub_100005AD4(&qword_1003B9648);
  v67 = v100;
  v68 = v111;
  Binding.wrappedValue.getter();
  v69 = v68;
  v70 = v110;
  sub_10022EC70(v69, v110);
  v71 = swift_allocObject();
  sub_10022ECD8(v70, v71 + v115);
  sub_10022F0A0();
  sub_10022F380(&qword_1003B9780, &type metadata accessor for NavigationSplitViewVisibility);
  v72 = v102;
  View.onChange<A>(of:initial:_:)();

  (*(v101 + 8))(v67, v72);
  sub_10022F318(v65);
  v47 = [objc_opt_self() defaultCenter];
  if (qword_1003A92D0 != -1)
  {
LABEL_7:
    swift_once();
  }

  v73 = v103;
  NSNotificationCenter.publisher(for:object:)();

  v74 = v105;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_100026AA0();
  v75 = static OS_dispatch_queue.main.getter();
  *&v120 = v75;
  v76 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v77 = v108;
  (*(*(v76 - 8) + 56))(v108, 1, 1, v76);
  v78 = sub_100005AD4(&qword_1003B9788);
  sub_10022F380(&qword_1003AE428, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_10022F380(&qword_1003B2410, sub_100026AA0);
  v79 = v116;
  v80 = v106;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009EBC(v77, &qword_1003B23F0);

  (*(v107 + 8))(v74, v109);
  (*(v104 + 8))(v73, v80);
  v81 = v110;
  sub_10022EC70(v111, v110);
  v82 = swift_allocObject();
  result = sub_10022ECD8(v81, v82 + v115);
  v84 = (v79 + *(v78 + 56));
  *v84 = sub_10022F4F4;
  v84[1] = v82;
  return result;
}

uint64_t sub_10022E59C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SidebarButton();
  v10 = (a1 + *(v9 + 24));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v19) = *v10;
  v20 = v12;
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  if ((v18 & 1) == 0)
  {
    LOBYTE(v19) = v11;
    v20 = v12;
    LOBYTE(v18) = 1;
    State.wrappedValue.setter();
    v13 = (a1 + *(v9 + 20));
    v14 = *v13;
    v15 = v13[1];
    v19 = v14;
    v20 = v15;
    v18 = 0;
    sub_100005AD4(&qword_1003B9720);
    State.wrappedValue.setter();
  }

  static NavigationSplitViewVisibility.all.getter();
  (*(v3 + 16))(v6, v8, v2);
  sub_100005AD4(&qword_1003B9648);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10022E788(char a1, char a2)
{
  v4 = a1 & 1;
  type metadata accessor for SidebarButton();
  sub_100005AD4(&qword_1003AC8F8);
  result = State.wrappedValue.getter();
  if (v7 == v4)
  {
    State.wrappedValue.setter();
    if (a1 & 1) != 0 && (a2)
    {
      static Animation.easeIn(duration:)();
      Animation.delay(_:)();

      __chkstk_darwin(v6);
      withAnimation<A>(_:_:)();
    }

    else
    {
      sub_100005AD4(&qword_1003B9720);
      return State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_10022E938()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10022E9B0()
{
  v0 = type metadata accessor for NavigationSplitViewVisibility();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NavigationSplitViewVisibility.detailOnly.getter();
  v4 = static NavigationSplitViewVisibility.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10022E788(v4 & 1, 1);
}

uint64_t sub_10022EA9C()
{
  v0 = type metadata accessor for NavigationSplitViewVisibility();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_100005AD4(&qword_1003B9648);
  Binding.wrappedValue.getter();
  static NavigationSplitViewVisibility.detailOnly.getter();
  v7 = static NavigationSplitViewVisibility.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_10022E788(v7 & 1, 1);
  return (v8)(v6, v0);
}

uint64_t sub_10022EBDC()
{
  type metadata accessor for SidebarButton();
  sub_100005AD4(&qword_1003B9720);
  return State.wrappedValue.setter();
}

uint64_t sub_10022EC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022ECD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022ED3C()
{
  v1 = *(type metadata accessor for SidebarButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10022E59C(v2);
}

unint64_t sub_10022ED9C()
{
  result = qword_1003B9730;
  if (!qword_1003B9730)
  {
    sub_100005EA8(&qword_1003B9728);
    sub_10022EE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9730);
  }

  return result;
}

unint64_t sub_10022EE28()
{
  result = qword_1003B9738;
  if (!qword_1003B9738)
  {
    sub_100005EA8(&qword_1003B9740);
    sub_10022EEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9738);
  }

  return result;
}

unint64_t sub_10022EEB4()
{
  result = qword_1003B9748;
  if (!qword_1003B9748)
  {
    sub_100005EA8(&qword_1003B9750);
    sub_10022EF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9748);
  }

  return result;
}

unint64_t sub_10022EF40()
{
  result = qword_1003B9758;
  if (!qword_1003B9758)
  {
    sub_100005EA8(&qword_1003B9760);
    sub_10022EFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9758);
  }

  return result;
}

unint64_t sub_10022EFCC()
{
  result = qword_1003B9768;
  if (!qword_1003B9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9768);
  }

  return result;
}

uint64_t sub_10022F020()
{
  type metadata accessor for SidebarButton();

  return sub_10022E9B0();
}

unint64_t sub_10022F0A0()
{
  result = qword_1003B9778;
  if (!qword_1003B9778)
  {
    sub_100005EA8(&qword_1003B9718);
    sub_100005EA8(&qword_1003B9708);
    sub_100005EA8(&qword_1003A93D8);
    sub_100005EA8(&qword_1003B9700);
    sub_100005EA8(&qword_1003AB5F8);
    sub_100005EA8(&qword_1003B9728);
    sub_100005EA8(&qword_1003B96F8);
    sub_10022ED9C();
    sub_10001BAEC(&qword_1003B9770, &qword_1003B96F8);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
    swift_getOpaqueTypeConformance2();
    sub_10022F380(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9778);
  }

  return result;
}

uint64_t sub_10022F318(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B9718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022F380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022F3C8()
{
  v1 = *(type metadata accessor for SidebarButton() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(sub_100005AD4(&qword_1003B9648) + 32);
  v6 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10022F4F4()
{
  type metadata accessor for SidebarButton();

  return sub_10022EA9C();
}

uint64_t sub_10022F5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  static UIButton.Configuration.plain()();
  v14 = v13;
  UIButton.Configuration.image.setter();
  sub_10000A2CC(0, &qword_1003B0608);
  (*(v5 + 16))(v8, v10, v4);
  sub_10000A2CC(0, &qword_1003A9940);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 24) = a3;

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = UIButton.init(configuration:primaryAction:)();

  (*(v5 + 8))(v10, v4);
  return v16;
}

uint64_t sub_10022F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022F96C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10022F8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022F96C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10022F944()
{
  sub_10022F96C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10022F96C()
{
  result = qword_1003B9798;
  if (!qword_1003B9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9798);
  }

  return result;
}

uint64_t sub_10022F9C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022F9F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 6;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10022FA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10022FA40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10022FA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_10022FB08()
{
  sub_100005AD4(&qword_1003B98C8);
  Binding.wrappedValue.getter();
  if (v3 == 6)
  {
    return 0;
  }

  v0 = v3 == 1;
  sub_10000A948(v2, v3);
  return v0;
}

uint64_t sub_10022FB80@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_100005AD4(&qword_1003B97A0);
  __chkstk_darwin(v2 - 8);
  v22 = &v22 - v3;
  v4 = sub_100005AD4(&qword_1003B9648);
  __chkstk_darwin(v4 - 8);
  v5 = sub_100005AD4(&qword_1003B97A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100005AD4(&qword_1003B97B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  type metadata accessor for ConversationContext(0);
  sub_100233190(&unk_1003BC490, type metadata accessor for ConversationContext);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v25 = v1;
  v24 = v1;
  sub_100005AD4(&qword_1003B97B8);
  sub_10023283C();
  sub_100232890();
  NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
  v12 = v1[1];
  v28 = *v1;
  v29 = v12;
  sub_100005AD4(&qword_1003B98C8);
  Binding.wrappedValue.getter();
  if (v27 == 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = v27 == 1;
    sub_10000A948(v26, v27);
  }

  sub_100230A28(v13, v11);
  (*(v6 + 8))(v8, v5);
  if (sub_10022FB08())
  {
    v14 = enum case for ColorScheme.dark(_:);
    v15 = type metadata accessor for ColorScheme();
    v16 = *(v15 - 8);
    v17 = v22;
    (*(v16 + 104))(v22, v14, v15);
    (*(v16 + 56))(v17, 0, 1, v15);
  }

  else
  {
    v18 = type metadata accessor for ColorScheme();
    v17 = v22;
    (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  }

  v19 = sub_100005AD4(&qword_1003B98D0);
  v20 = v23;
  sub_100233100(v17, v23 + *(v19 + 36));
  return sub_100023BD4(v11, v20, &qword_1003B97B0);
}

__n128 sub_10022FFF0@<Q0>(__n128 *a1@<X8>)
{
  sub_100005AD4(&qword_1003B98C8);
  Binding.projectedValue.getter();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_100230050@<X0>(uint64_t a1@<X8>)
{
  sub_100005AD4(&qword_1003B98C8);
  Binding.wrappedValue.getter();
  sub_1002300D8(v3, v4, a1);
  return sub_10000A948(v3, v4);
}

uint64_t sub_1002300D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = sub_100005AD4(&qword_1003B9908);
  __chkstk_darwin(v73);
  v8 = &v61 - v7;
  v74 = sub_100005AD4(&qword_1003B97D8);
  __chkstk_darwin(v74);
  v66 = &v61 - v9;
  v10 = sub_100005AD4(&qword_1003B9910);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v69 = sub_100005AD4(&qword_1003B97F8);
  __chkstk_darwin(v69);
  v14 = &v61 - v13;
  v67 = sub_100005AD4(&qword_1003B9818);
  __chkstk_darwin(v67);
  v16 = &v61 - v15;
  v72 = sub_100005AD4(&qword_1003B97E8);
  v17 = __chkstk_darwin(v72);
  v68 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = &v61 - v19;
  v70 = a1;
  v71 = v3;
  sub_100231014(a1, a2, v3, v16);
  if (a2 == 1)
  {
    sub_10001F620(v16, v12, &qword_1003B9818);
    swift_storeEnumTagMultiPayload();
    sub_100232A60();
    sub_100232BD0();
    v20 = v68;
    _ConditionalContent<>.init(storage:)();
    v21 = v16;
  }

  else
  {
    v22 = static VerticalAlignment.center.getter();
    v64 = v8;
    v23 = v22;
    v24 = static Color.clear.getter();
    v63 = v10;
    v25 = v24;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v79[6] = v105;
    *&v79[22] = v106;
    *&v79[38] = v107;
    HorizontalEdge.rawValue.getter();
    v26 = Edge.init(rawValue:)();
    v65 = a3;
    v27 = v26;
    v28 = static SafeAreaRegions.container.getter();
    LOBYTE(v93[0]) = 1;
    *&v80[0] = v25;
    WORD4(v80[0]) = 256;
    *(v80 + 10) = *v79;
    *(&v80[1] + 10) = *&v79[16];
    *(&v80[2] + 10) = *&v79[32];
    *(&v80[3] + 1) = *&v79[46];
    v81 = v28;
    LOBYTE(v82) = 1;
    BYTE1(v82) = v27;
    *(&v82 + 1) = v23;
    sub_10001F620(v16, v14, &qword_1003B9818);
    v29 = &v14[*(sub_100005AD4(&qword_1003B9808) + 36)];
    v30 = v80[3];
    *(v29 + 2) = v80[2];
    *(v29 + 3) = v30;
    v31 = v82;
    *(v29 + 4) = v81;
    *(v29 + 5) = v31;
    v32 = v80[1];
    *v29 = v80[0];
    *(v29 + 1) = v32;
    v83 = v25;
    v84 = 256;
    *&v87[14] = *&v79[46];
    v88 = v28;
    *v87 = *&v79[32];
    v86 = *&v79[16];
    v85 = *v79;
    v89 = 0;
    v90 = 1;
    v91 = v27;
    v92 = v23;
    sub_10001F620(v80, &v96, &qword_1003B98B0);
    sub_100009EBC(&v83, &qword_1003B98B0);
    v33 = static VerticalAlignment.center.getter();
    v34 = static Color.clear.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v77[6] = v108;
    *&v77[22] = v109;
    *&v77[38] = v110;
    HorizontalEdge.rawValue.getter();
    v35 = Edge.init(rawValue:)();
    v36 = static SafeAreaRegions.container.getter();
    *&v93[0] = v34;
    WORD4(v93[0]) = 256;
    v37 = *&v77[16];
    *(&v93[1] + 10) = *&v77[16];
    *(&v93[2] + 10) = *&v77[32];
    v38 = *v77;
    *(v93 + 10) = *v77;
    *(&v93[3] + 1) = *&v77[46];
    v94 = v36;
    LOBYTE(v95) = 1;
    BYTE1(v95) = v35;
    *(&v95 + 1) = v33;
    v62 = v16;
    v39 = &v14[*(v69 + 36)];
    v40 = v93[1];
    *v39 = v93[0];
    *(v39 + 1) = v40;
    v41 = v93[3];
    *(v39 + 2) = v93[2];
    *(v39 + 3) = v41;
    v42 = v95;
    *(v39 + 4) = v94;
    *(v39 + 5) = v42;
    *&v99[14] = *&v77[46];
    *v99 = *&v77[32];
    v98 = v37;
    v78 = 1;
    v96 = v34;
    *v97 = 256;
    *&v97[2] = v38;
    v100 = v36;
    v101 = 0;
    v102 = 1;
    v103 = v35;
    v104 = v33;
    v8 = v64;
    sub_10001F620(v93, &v76, &qword_1003B98B0);
    sub_100009EBC(&v96, &qword_1003B98B0);
    sub_10001F620(v14, v12, &qword_1003B97F8);
    swift_storeEnumTagMultiPayload();
    sub_100232A60();
    sub_100232BD0();
    v20 = v68;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v14, &qword_1003B97F8);
    v21 = v62;
  }

  sub_100009EBC(v21, &qword_1003B9818);
  v43 = v75;
  sub_100023BD4(v20, v75, &qword_1003B97E8);
  v44 = v70;
  if (a2 == 6)
  {
    v45 = 0;
  }

  else
  {
    v45 = v70;
  }

  if (a2 == 6)
  {
    v46 = 5;
  }

  else
  {
    v46 = a2;
  }

  v47 = v71[10];
  sub_100233170(v70, a2);
  v48 = sub_10022BD18(v45, v46, v47);
  sub_10000A948(v44, a2);
  if (v48)
  {
    type metadata accessor for ConversationContext(0);
    sub_100233190(&unk_1003BC490, type metadata accessor for ConversationContext);
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    v49 = v66;
    v50 = &v66[*(v74 + 36)];
    v43 = v75;
    EnvironmentObject.Wrapper.subscript.getter();

    v51 = type metadata accessor for SidebarButton();
    v52 = &v50[*(v51 + 20)];
    *&v93[0] = 0;
    State.init(wrappedValue:)();
    v53 = *v97;
    *v52 = v96;
    v52[1] = v53;
    v54 = &v50[*(v51 + 24)];
    LOBYTE(v93[0]) = 1;
    State.init(wrappedValue:)();
    v55 = *v97;
    *v54 = v96;
    *(v54 + 1) = v55;
    v56 = static Alignment.topLeading.getter();
    v58 = v57;
    v59 = &v50[*(sub_100005AD4(&qword_1003B98C0) + 36)];
    *v59 = v56;
    v59[1] = v58;
    sub_10001F620(v43, v49, &qword_1003B97E8);
    sub_10001F620(v49, v8, &qword_1003B97D8);
    swift_storeEnumTagMultiPayload();
    sub_10023291C();
    sub_1002329D4();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v49, &qword_1003B97D8);
  }

  else
  {
    sub_10001F620(v43, v8, &qword_1003B97E8);
    swift_storeEnumTagMultiPayload();
    sub_10023291C();
    sub_1002329D4();
    _ConditionalContent<>.init(storage:)();
  }

  return sub_100009EBC(v43, &qword_1003B97E8);
}
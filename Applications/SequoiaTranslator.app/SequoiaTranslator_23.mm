uint64_t sub_1002898D8()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__translations;
  v2 = sub_100005AD4(&qword_1003B8CB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100008664(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store);
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranslationAppSession()
{
  result = qword_1003BBAF8;
  if (!qword_1003BBAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100289A28()
{
  sub_100289AE8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100289AE8()
{
  if (!qword_1003BBB08)
  {
    sub_100005EA8(&qword_1003B8CB8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003BBB08);
    }
  }
}

uint64_t sub_100289B4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranslationAppSession();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100289B94(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [a2 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_100289D30(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_100289B94(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v3 = v5;
    v17 = [v5 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_1000A38E0(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_1000A38E0(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_10028A040(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v111 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = v109 - v8;
  v9 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v9 - 8);
  v11 = v109 - v10;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v12 = v5;
  v13 = *(v5 + 56);
  v13(v11, 0, 1, v4);
  v14 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_sourceLocale;
  swift_beginAccess();
  sub_10028C60C(v11, v2 + v14);
  swift_endAccess();
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v117 = v4;
  v13(v11, 0, 1, v4);
  v15 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_targetLocale;
  swift_beginAccess();
  sub_10028C60C(v11, v2 + v15);
  swift_endAccess();
  v122 = &type metadata for TranslateFeatures;
  v123 = sub_100009DF8();
  LOBYTE(v121[0]) = 5;
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100008664(v121);
  if (v14)
  {
    v16 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedTranslation);
    *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedTranslation) = a1;
    v17 = a1;

    v18 = dispatch thunk of PersistedTranslation.disambiguableResult.getter();
    v19 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedDisambiguableResult);
    *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedDisambiguableResult) = v18;
    v20 = v18;

    if (v18)
    {
      [v20 setDelegate:v2];
    }

    v21 = sub_100293D50();
    [v21 setDelegate:v2];

    v22 = sub_1002942C8();
    [v22 setDelegate:v2];
  }

  v23 = sub_10029393C();
  v24 = v116;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v25 = v111;
  static Locale.current.getter();
  Locale.sqDisplayName(context:in:)();
  v27 = v26;
  v28 = *(v12 + 8);
  v29 = v25;
  v30 = v117;
  v28(v29, v117);
  v114 = v28;
  v115 = v12 + 8;
  v28(v24, v30);
  if (v27)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  [v23 setText:v31];

  dispatch thunk of PersistedTranslation.speechResult.getter();
  sub_1000085CC(v121, v122);
  dispatch thunk of SanitizedResult.sanitizedFormattedString.getter();
  if (v32)
  {
    sub_100008664(v121);
    v33 = sub_100293D50();
    v34 = String._bridgeToObjectiveC()();

    [v33 setText:v34];

LABEL_10:
    goto LABEL_15;
  }

  sub_100008664(v121);
  dispatch thunk of PersistedTranslation.speechResult.getter();
  sub_1000085CC(v120, v120[3]);
  dispatch thunk of SpeechResult.alternatives.getter();
  if (v119)
  {
    sub_100051DB8(&v118, v121);
    sub_100008664(v120);
    v35 = sub_100293D50();
    sub_100292E90(v35, v121);

    sub_100008664(v121);
  }

  else
  {
    sub_100009EBC(&v118, &qword_1003BBD20);
    sub_100008664(v120);
    v36 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedDisambiguableResult);
    if (!v36)
    {
      v106 = sub_100293D50();
      dispatch thunk of PersistedTranslation.displaySourceText.getter();
      v34 = String._bridgeToObjectiveC()();

      [v106 setText:v34];

      goto LABEL_10;
    }

    v37 = v36;
    v38 = sub_10028BBC4(0);

    v39 = sub_100293D50();
    [v39 setAttributedText:v38];
  }

LABEL_15:
  sub_100296B60();
  v40 = sub_1002940A8();
  v41 = v116;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v42 = v111;
  static Locale.current.getter();
  Locale.sqDisplayName(context:in:)();
  v44 = v43;
  v45 = v42;
  v46 = v117;
  v47 = v114;
  v114(v45, v117);
  v47(v41, v46);
  if (v44)
  {
    v48 = String._bridgeToObjectiveC()();
  }

  else
  {
    v48 = 0;
  }

  [v40 setText:v48];

  v49 = sub_1002946E4();
  v50 = 1;
  [v49 setHidden:1];

  v51 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions);
  v52 = sub_10002FC68();
  [(objc_class *)v52 setSelected:dispatch thunk of PersistedTranslation.isFavorite.getter() & 1];

  v53 = sub_100294CA4();
  if ((*(v2 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded) & 1) == 0)
  {
    v50 = dispatch thunk of PersistedTranslation.isFavorite.getter() ^ 1;
  }

  [v53 setHidden:v50 & 1];

  v54 = [a1 targetResult];
  v109[1] = v51;
  if (v54)
  {

    if (dispatch thunk of PersistedTranslation.hasAlternatives.getter())
    {
      v55 = PersistedTranslation.selectedAlternativeIndex.getter();
      v56 = v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex;
      *v56 = v55;
      *(v56 + 8) = 0;
      v57 = dispatch thunk of PersistedTranslation.alternatives.getter();
      v58 = v116;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      sub_100295E00(v57, v58);

      v114(v58, v117);
      sub_100296360();
      v121[0] = a1;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v59 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v60 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeObservation);
      *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeObservation) = v59;
    }

    else
    {
      v68 = v116;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      sub_100295E00(_swiftEmptyArrayStorage, v68);
      v114(v68, v117);
      v69 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedDisambiguableResult);
      if (v69)
      {
        v70 = v69;
        v71 = sub_10028BBC4(1);

        v72 = sub_1002942C8();
        [v72 setAttributedText:v71];
      }

      else
      {
        v71 = sub_1002942C8();
        dispatch thunk of PersistedTranslation.displayText.getter();
        v72 = String._bridgeToObjectiveC()();

        [v71 setText:v72];
      }

      dispatch thunk of PersistedTranslation.translationResult.getter();
      sub_1000085CC(v121, v122);
      v73 = TranslationResult.isLowConfidence.getter();
      sub_100008664(v121);
      if (v73)
      {
        [*(v2 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___hintView) setHidden:0];
      }
    }
  }

  else
  {
    v61 = v116;
    dispatch thunk of PersistedTranslation.sourceLocale.getter();
    sub_100295E00(_swiftEmptyArrayStorage, v61);
    v114(v61, v117);
    v62 = sub_1002942C8();
    v63 = String._bridgeToObjectiveC()();
    [v62 setText:v63];

    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000078E8(v64, qword_1003D2770);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "No target translation, setting to empty string", v67, 2u);
    }
  }

  v74 = v116;
  v113 = a1;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v75 = Locale.isRTL()();
  v114(v74, v117);
  if (v75)
  {
    v76 = 2;
  }

  else
  {
    v76 = 0;
  }

  v77 = sub_100293D50();
  [v77 setTextAlignment:v76];

  v78 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_senseRows;
  swift_beginAccess();
  v79 = *(v2 + v78);
  v110 = v2;
  if (v79 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v81 = 0;
    v112 = v79 & 0xC000000000000001;
    while (1)
    {
      if (v112)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v81 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v82 = *(v79 + 8 * v81 + 32);
      }

      v83 = v82;
      v84 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      v85 = sub_1002267C4();
      [v85 setTextAlignment:v76];

      v86 = sub_10022696C();
      [v86 setTextAlignment:v76];

      v87 = v116;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      LOBYTE(v86) = Locale.isRTL()();
      v114(v87, v117);
      if (v86)
      {
        v88 = 4;
      }

      else
      {
        v88 = 3;
      }

      [v83 setSemanticContentAttribute:v88];
      v89 = sub_100226E3C();
      [v89 setSemanticContentAttribute:v88];

      v90 = sub_100226B28();
      [v90 setSemanticContentAttribute:v88];

      ++v81;
      if (v84 == i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

LABEL_50:

  v91 = v116;
  v92 = v113;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v93 = Locale.isRTL()();
  v94 = v117;
  v95 = v114;
  v114(v91, v117);
  if (v93)
  {
    v96 = 2;
  }

  else
  {
    v96 = 0;
  }

  v97 = v110;
  v98 = sub_1002942C8();
  [v98 setTextAlignment:v96];

  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v99 = v111;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  LOBYTE(v98) = static Locale.== infix(_:_:)();
  v95(v99, v94);
  v95(v91, v94);
  v100 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_isIdentity;
  *(v97 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_isIdentity) = v98 & 1;
  v101 = sub_100293B44();
  [v101 setHidden:*(v97 + v100)];

  [*(v97 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___languageTwoLabel) setHidden:*(v97 + v100)];
  [*(v97 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView) setHidden:*(v97 + v100)];
  sub_100297090();
  v120[0] = v92;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v103 = *(v97 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_favoriteObservation);
  *(v97 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_favoriteObservation) = v102;

  [v92 ttsPlaybackRateDouble];
  if (v104 == 0.5)
  {
    v105 = 0;
  }

  else if (v104 == 0.75)
  {
    v105 = 1;
  }

  else if (v104 == 1.0 || v104 != 1.25)
  {
    v105 = 2;
  }

  else
  {
    v105 = 3;
  }

  sub_1000316C0(v105);
  v120[0] = v92;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v108 = *(v97 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_ttsPlaybackRateObservation);
  *(v97 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_ttsPlaybackRateObservation) = v107;
}

uint64_t sub_10028AF00()
{
  [v0 ttsPlaybackRateDouble];
  if (v1 == 0.5)
  {
    return 0;
  }

  if (v1 == 0.75)
  {
    return 1;
  }

  if (v1 == 1.0)
  {
    return 2;
  }

  if (v1 == 1.25)
  {
    return 3;
  }

  return 4;
}

unint64_t sub_10028AF80@<X0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of SpeechTokenBin.tokenAlternatives.getter();
  result = dispatch thunk of SpeechTokenBin.bestAlternative.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100031DD8(v2 + 40 * result + 32, a1);
}

uint64_t sub_10028B00C(char a1)
{
  result = dispatch thunk of SpeechTokenBin.tokenAlternatives.getter();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v14 = result + 32;
  v15 = &_swiftEmptyArrayStorage;
LABEL_2:
  v6 = v5 + 40 * v3;
  v7 = v3;
  while (1)
  {
    if (v4 == v7)
    {

      return v15;
    }

    if (v7 >= *(v2 + 16))
    {
      break;
    }

    v3 = v7 + 1;
    v18 = v7;
    sub_100031DD8(v6, v19);
    v8 = sub_10028B528(v7, v19, v17, a1 & 1);
    v10 = v9;
    result = sub_100009EBC(&v18, &qword_1003BBD28);
    v6 += 40;
    ++v7;
    if (v10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10028CA84(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v12 = *(v15 + 2);
      v11 = *(v15 + 3);
      if (v12 >= v11 >> 1)
      {
        result = sub_10028CA84((v11 > 1), v12 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v12 + 1;
      v13 = &v15[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v5 = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_10028B194(char a1)
{
  v1 = sub_10028B00C(a1);
  v2 = sub_10028B00C(0);
  sub_10028AF80(v10);
  sub_1000085CC(v10, v11);
  v3 = dispatch thunk of SpeechTokenAlternatives.isLowConfidence.getter();
  sub_100008664(v10);
  if (v3)
  {
    v4 = *(v2 + 16);

    if (v4 && *(v1 + 16))
    {
      sub_10028AF80(v10);
      sub_1000085CC(v10, v11);
      dispatch thunk of SpeechTokenAlternatives.text.getter();
      v5 = objc_allocWithZone(NSTextAlternatives);
      v6 = String._bridgeToObjectiveC()();

      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = [v5 initWithPrimaryString:v6 alternativeStrings:isa isLowConfidence:1];

      sub_100008664(v10);
      return v8;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_10028B330(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_10028B420(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_10000A2CC(0, a3);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10028B528(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (dispatch thunk of SpeechTokenBin.bestAlternative.getter() == a1 && (a4 & 1) == 0)
  {
    return 0;
  }

  sub_1000085CC(a2, a2[3]);
  return dispatch thunk of SpeechTokenAlternatives.text.getter();
}

void sub_10028B5A0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 interactedIndices];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_10028B608(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setInteractedIndices:?];
}

void sub_10028B678()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex;
    v3 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex);
    v4 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex + 8);
    v5 = PersistedTranslation.selectedAlternativeIndex.getter();
    if ((v4 & 1) != 0 || v3 != v5)
    {
      *v2 = PersistedTranslation.selectedAlternativeIndex.getter();
      *(v2 + 8) = 0;
      sub_100296360();
    }
  }
}

uint64_t sub_10028B718@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 favoriteDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10028B7BC(uint64_t a1, void **a2)
{
  v4 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_10001F620(a1, &v11 - v5, &qword_1003B5130);
  v7 = *a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setFavoriteDate:isa];
}

void sub_10028B8F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions);
    v3 = sub_10002FC68();

    [(objc_class *)v3 setSelected:dispatch thunk of PersistedTranslation.isFavorite.getter() & 1];
    v4 = sub_100294CA4();
    if (v1[OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = dispatch thunk of PersistedTranslation.isFavorite.getter() ^ 1;
    }

    [v4 setHidden:v5 & 1];

    sub_100297090();
  }
}

void sub_10028B9EC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions);
    [v1 ttsPlaybackRateDouble];
    if (v5 == 0.5)
    {
      v6 = 0;
    }

    else if (v5 == 0.75)
    {
      v6 = 1;
    }

    else if (v5 == 1.0 || v5 != 1.25)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    sub_1000316C0(v6);
  }
}

id sub_10028BBC4(uint64_t a1)
{
  v2 = v1;
  sub_100005AD4(&unk_1003BBD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = NSForegroundColorAttributeName;
  v5 = sub_10000A2CC(0, &qword_1003B2990);
  v6 = NSForegroundColorAttributeName;
  if (a1)
  {
    v7 = static UIColor.targetTextColor.getter();
  }

  else
  {
    v7 = static UIColor.sourceTextColor.getter();
  }

  *(inited + 64) = v5;
  *(inited + 40) = v7;
  sub_100292D78(inited, &qword_1003BBD58, &unk_1002EDC98, &qword_1003B3490);
  swift_setDeallocating();
  sub_100009EBC(inited + 32, &qword_1003B3490);
  type metadata accessor for Key(0);
  sub_100293898(&qword_1003A98E0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = sub_10028BDD8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028C4D4;
  aBlock[3] = &unk_10038BF88;
  v9 = _Block_copy(aBlock);

  v10 = [v2 generateAttributedStringForLocation:a1 withGlobalAttributes:isa attributeProvider:v9];
  _Block_release(v9);

  return v10;
}

unint64_t sub_10028BDD8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v48 = type metadata accessor for DisambiguationLinkInfo();
  v47 = *(v48 - 8);
  v10 = __chkstk_darwin(v48);
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  sub_100005AD4(&unk_1003BBD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = NSForegroundColorAttributeName;
  v15 = sub_10000A2CC(0, &qword_1003B2990);
  v16 = NSForegroundColorAttributeName;
  if (a5)
  {
    v17 = static UIColor.targetLinkColor.getter();
  }

  else
  {
    v17 = static UIColor.sourceLinkColor.getter();
  }

  *(inited + 64) = v15;
  *(inited + 40) = v17;
  v18 = sub_100292D78(inited, &qword_1003BBD58, &unk_1002EDC98, &qword_1003B3490);
  swift_setDeallocating();
  sub_100009EBC(inited + 32, &qword_1003B3490);
  v19 = [a3 links];
  sub_10000A2CC(0, &qword_1003BBD40);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_10028B420(a4, v20, &qword_1003BBD40);
  LOBYTE(v19) = v22;

  if (v19)
  {

    if (qword_1003A9238 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000078E8(v23, qword_1003D27B8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "LinkAttributeProvider gave invalid arguments; can't find linkConfiguration inside node", v26, 2u);
    }

    return 0;
  }

  v27 = [v49 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_13:
    v28 = type metadata accessor for Logger();
    sub_1000078E8(v28, qword_1003D27B8);
    (*(a4 + 16))(v20, v13, a3);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v52 = v32;
      *v31 = 136446210;
      sub_100293898(&qword_1003B28F0, &type metadata accessor for DisambiguationLinkInfo);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(a4 + 8);
      v36(v20, a3);
      v37 = sub_10028D78C(v33, v35, &v52);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to encode link information; won't show link in string for link: %{public}s", v31, 0xCu);
      sub_100008664(v32);

      v36(v13, a3);
    }

    else
    {

      v38 = *(a4 + 8);
      v38(v20, a3);
      v38(v13, a3);
    }

    return 0;
  }

  DisambiguationLinkInfo.init(sentenceUUID:linkIndex:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100293898(&unk_1003BBD48, &type metadata accessor for DisambiguationLinkInfo);
  a3 = v48;
  v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v42 = v41;

  static String.Encoding.utf8.getter();
  v43 = String.init(data:encoding:)();
  v20 = v46;
  if (!v44)
  {

    sub_100112CE8(v40, v42);
    a4 = v47;
    if (qword_1003A9238 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v53 = &type metadata for String;
  *&v52 = v43;
  *(&v52 + 1) = v44;
  sub_10005128C(&v52, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v18;
  sub_100291800(v51, UITextItemTagAttributeName, isUniquelyReferenced_nonNull_native);
  sub_100112CE8(v40, v42);
  (*(v47 + 8))(v13, a3);
  return v50;
}

Class sub_10028C4D4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v11(v12, v13, v14, v15, a6);

  if (v16)
  {
    type metadata accessor for Key(0);
    sub_100293898(&qword_1003A98E0, type metadata accessor for Key);
    v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  return v17.super.isa;
}

uint64_t sub_10028C60C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AFCE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028C690()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

id sub_10028C6DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ttsPlaybackRateDouble];
  *a2 = v4;
  return result;
}

char *sub_10028C748(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&qword_1003BBDA8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10028C84C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005AD4(&unk_1003BBEA0);
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
    sub_100005AD4(&qword_1003B56F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028C980(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&qword_1003BBEC0);
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

char *sub_10028CA84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&unk_1003BA780);
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

char *sub_10028CBB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&qword_1003AF418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028CD24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&unk_1003B0710);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10028CEA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_100005AD4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005AD4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_10028D034(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_100005AD4(a5);
  v14 = *(sub_100005AD4(a7) - 8);
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
  v19 = *(sub_100005AD4(a7) - 8);
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

void *sub_10028D21C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005AD4(&qword_1003BBD80);
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
    sub_100005AD4(&qword_1003BBD88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028D350(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&qword_1003BBD90);
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

char *sub_10028D45C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&qword_1003BBE80);
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

size_t sub_10028D5B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_100005AD4(a5);
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

unint64_t sub_10028D78C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10028D858(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000A37C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008664(v11);
  return v7;
}

unint64_t sub_10028D858(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10028D964(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10028D964(uint64_t a1, unint64_t a2)
{
  v3 = sub_10028D9B0(a1, a2);
  sub_10028DAE0(&off_10037CEB8);
  return v3;
}

char *sub_10028D9B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10028DBCC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10028DBCC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10028DAE0(uint64_t result)
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

  result = sub_10028DC40(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_10028DBCC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100005AD4(&unk_1003BBD60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10028DC40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005AD4(&unk_1003BBD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10028DD34(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10028E1BC(a1, a2, v4);
}

unint64_t sub_10028DDAC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10028E274(a1, v2);
}

unint64_t sub_10028DE18(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100293898(&qword_1003BBD78, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10028E2E4(a1, v2);
}

unint64_t sub_10028DECC(uint64_t a1)
{
  type metadata accessor for IndexPath();
  sub_100293898(&qword_1003BBEC8, &type metadata accessor for IndexPath);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10028E3F0(a1, v2);
}

unint64_t sub_10028DF68(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10028E5B0(a1, v4);
}

unint64_t sub_10028DFAC(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10028E678(a1, v2);
}

unint64_t sub_10028DFF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10013B9A0();
  v2 = Hasher._finalize()();

  return sub_10028E6E4(a1, v2);
}

unint64_t sub_10028E05C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10028E7E8(a1, v2);
}

unint64_t sub_10028E12C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10028E97C(a1, v2);
}

unint64_t sub_10028E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10028E274(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10028E2E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100293898(&qword_1003BBD78, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10028E3F0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100293898(&qword_1003BBED0, &type metadata accessor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10028E5B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1002930EC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100078028(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10028E678(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10028E6E4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      Hasher.init(_seed:)();

      sub_10013B9A0();
      v7 = Hasher._finalize()();
      Hasher.init(_seed:)();
      sub_10013B9A0();
      v8 = Hasher._finalize()();

      if (v7 == v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10028E7E8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x616E6F6974636964;
          v8 = 31090;
        }

        else
        {
          v7 = 0x6F68706F7263696DLL;
          v8 = 25966;
        }

        v9 = v8 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        v10 = a1;
        if (!a1)
        {
LABEL_7:
          v11 = 0xE800000000000000;
          if (v7 != 0x6472616F6279656BLL)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v9 = 0xE800000000000000;
        v7 = 0x6472616F6279656BLL;
        v10 = a1;
        if (!a1)
        {
          goto LABEL_7;
        }
      }

      if (v10 == 1)
      {
        v12 = 0x616E6F6974636964;
      }

      else
      {
        v12 = 0x6F68706F7263696DLL;
      }

      if (v10 == 1)
      {
        v11 = 0xEA00000000007972;
      }

      else
      {
        v11 = 0xEA0000000000656ELL;
      }

      if (v7 != v12)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v9 == v11)
      {

        return v4;
      }

LABEL_19:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10028E97C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10028EA80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005AD4(&qword_1003B5B30);
  v33 = a2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10005128C(v24, v34);
      }

      else
      {
        sub_10000A37C(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10005128C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10028ED38(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100005AD4(&qword_1003BBED8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100293898(&qword_1003BBEC8, &type metadata accessor for IndexPath);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10028F114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005AD4(&qword_1003BBD58);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10005128C(v22, v36);
      }

      else
      {
        sub_10000A37C(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_10005128C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10028F3E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005AD4(&qword_1003BBDC8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 16 * v19;
      if (a2)
      {
        sub_1000DC2EC(v21, v31);
      }

      else
      {
        sub_100293148(v21, v31);
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1000DC2EC(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10028F65C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005AD4(&unk_1003BBDD0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

uint64_t sub_10028F93C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005AD4(&qword_1003BBEB8);
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v33 = *v22;
      v23 = *(v22 + 16);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      sub_10013B9A0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v33;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10028FBEC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100005AD4(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v30 = *(*(v6 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v30;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v29 = 1 << *(v6 + 32);
    v4 = v3;
    if (v29 >= 64)
    {
      bzero((v6 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_10028FE74(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100005AD4(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_100290110(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005AD4(&unk_1003BBE60);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10005128C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1002930EC(v23, &v36);
        sub_10000A37C(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10005128C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1002903C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005AD4(&qword_1003BBE08);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_100290688()
{
  v1 = v0;
  sub_100005AD4(&qword_1003B5B30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000A37C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10005128C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_10029082C()
{
  v1 = v0;
  v31 = type metadata accessor for IndexPath();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003BBED8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_100290AA0()
{
  v1 = v0;
  sub_100005AD4(&qword_1003BBD58);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000A37C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10005128C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100290C20()
{
  v1 = v0;
  sub_100005AD4(&qword_1003BBDC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100293148(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1000DC2EC(v19, *(v4 + 56) + 16 * v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100290DB0()
{
  v1 = v0;
  sub_100005AD4(&unk_1003BBDD0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100290EFC()
{
  v1 = v0;
  sub_100005AD4(&qword_1003BBEB8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100291070(uint64_t *a1)
{
  v2 = v1;
  sub_100005AD4(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 16 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 16 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_1002911C4(uint64_t *a1)
{
  v2 = v1;
  sub_100005AD4(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_100291320()
{
  v1 = v0;
  sub_100005AD4(&unk_1003BBE60);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1002930EC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A37C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10005128C(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1002914C4()
{
  v1 = v0;
  sub_100005AD4(&qword_1003BBE08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_100291664(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_10028DD34(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_10028FE74(v18, a4 & 1, a5);
      v13 = sub_10028DD34(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1002911C4(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a2;
  v26[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

_OWORD *sub_100291800(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10028E12C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100290AA0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10028F114(v13, a3 & 1);
    v8 = sub_10028E12C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100008664(v19);

    return sub_10005128C(a1, v19);
  }

  else
  {
    sub_100292010(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_100291940(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10028DFF0(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10028F93C(v18, a5 & 1);
      result = sub_10028DFF0(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        type metadata accessor for LanguageAwareTextViewSizeThatFitsCache.Condition();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_100290EFC();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * result;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = a4;
  v25 = v23[7] + 24 * result;
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3 & 1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v27;
}

unint64_t sub_100291AE4(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  result = sub_10028DDAC(a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_10028FBEC(v18, a4 & 1, a5);
      result = sub_10028DDAC(a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_100291070(a5);
      result = v21;
    }
  }

  v23 = *v7;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a3;
    v25 = (v23[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 16 * result);
  *v24 = a1;
  v24[1] = a2;
}

uint64_t sub_100291C7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10028DFAC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100290C20();
      v9 = v17;
      goto LABEL_8;
    }

    sub_10028F3E4(v14, a3 & 1);
    v9 = sub_10028DFAC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_1002938E0(a1, v20);
  }

  else
  {

    return sub_100292078(v9, a2, a1, v19);
  }
}

_OWORD *sub_100291D9C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10028DF68(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100291320();
      goto LABEL_7;
    }

    sub_100290110(v13, a3 & 1);
    v19 = sub_10028DF68(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1002930EC(a2, v21);
      return sub_1002920E0(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100008664(v17);

  return sub_10005128C(a1, v17);
}

unint64_t sub_100291EE8(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10028E05C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_100290DB0();
    result = v17;
    goto LABEL_8;
  }

  sub_10028F65C(v14, a2 & 1);
  result = sub_10028E05C(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_OWORD *sub_100292010(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10005128C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100292078(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000DC2EC(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1002920E0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10005128C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_10029215C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&unk_1003BBE90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10028DD34(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100292258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&qword_1003B5B30);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001F620(v4, &v13, &qword_1003BBE00);
      v5 = v13;
      v6 = v14;
      result = sub_10028DD34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10005128C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_10029239C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&qword_1003BBD70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10028DE18(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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

unint64_t sub_10029248C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&qword_1003B9540);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10028DD34(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1002925AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&unk_1003BBE60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001F620(v4, v13, &qword_1003AB9B8);
      result = sub_10028DF68(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10005128C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1002926E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&qword_1003BBEB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_10028DFF0(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 24 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100292804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&unk_1003BBDB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10028DD34(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100292928(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100005AD4(a2);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_10028DDAC(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + result) = v5;
    *(v4[7] + 16 * result) = v14;
    v9 = v4[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v4[2] = v11;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v5 = *(v8 - 8);
    v14 = *v8;

    result = sub_10028DDAC(v5);
    v8 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100292A58(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100005AD4(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_10028DD34(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_100292B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&unk_1003BBDD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_10028E05C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_100292C40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&qword_1003BBE08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10028DD34(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100292D78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100005AD4(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + 32;

    while (1)
    {
      sub_10001F620(v8, &v15, a4);
      v9 = v15;
      result = sub_10028E12C(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_10005128C(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

uint64_t sub_100292E90(void *a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setText:v4];

  sub_1000085CC(a2, a2[3]);
  v5 = dispatch thunk of SpeechSausage.tokenBins.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_100031DD8(v7, v14);
      sub_1000085CC(v14, v15);
      sub_10028AF80(v12);
      sub_1000085CC(v14, v15);
      sub_10028B00C(0);
      sub_100008664(v14);
      sub_1000085CC(v12, v13);
      dispatch thunk of SpeechTokenAlternatives.text.getter();
      v8 = String._bridgeToObjectiveC()();

      isa = Array._bridgeToObjectiveC()().super.isa;

      sub_1000085CC(v12, v13);
      [a1 insertText:v8 alternatives:isa style:dispatch thunk of SpeechTokenAlternatives.isLowConfidence.getter() & 1];

      sub_1000085CC(v12, v13);
      if (dispatch thunk of SpeechTokenAlternatives.hasSpaceAfter.getter())
      {
        v10 = String._bridgeToObjectiveC()();
        [a1 insertText:v10];
      }

      sub_100008664(v12);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

uint64_t sub_1002930D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002931A4()
{
  v1 = sub_100005AD4(&unk_1003BBDE0);
  __chkstk_darwin(v1 - 8);
  v39 = &v38 - v2;
  v3 = type metadata accessor for UUID();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&unk_1003B28D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for DisambiguationLinkInfo();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UITextItem.Content();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &type metadata for TranslateFeatures;
  v48 = sub_100009DF8();
  v46[0] = 5;
  v18 = isFeatureEnabled(_:)();
  sub_100008664(v46);
  if (v18)
  {
    v38 = v0;
    UITextItem.content.getter();
    if ((*(v15 + 88))(v17, v14) == enum case for UITextItem.Content.tag(_:))
    {
      (*(v15 + 96))(v17, v14);
      static String.Encoding.utf8.getter();
      v19 = String.data(using:allowLossyConversion:)();
      v21 = v20;

      (*(v11 + 8))(v13, v10);
      if (v21 >> 60 != 15)
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100293898(&unk_1003B28E0, &type metadata accessor for DisambiguationLinkInfo);
        v22 = v45;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v24 = v44;
        (*(v44 + 56))(v7, 0, 1, v22);
        v25 = v43;
        (*(v24 + 32))(v43, v7, v22);
        v26 = *(v38 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedDisambiguableResult);
        if (v26)
        {
          v38 = v19;
          v27 = v26;
          v28 = v40;
          DisambiguationLinkInfo.sentenceUUID.getter();
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v41 + 8))(v28, v42);
          v30 = [v27 sentenceWithUUID:isa];

          if (v30)
          {
            v31 = DisambiguationLinkInfo.linkIndex.getter();
            if (_LTDisambiguableSentence.menu(forLinkIndex:)(v31))
            {
              sub_10000A2CC(0, &qword_1003B28F8);
              v32 = enum case for UITextItemMenuConfiguration.Preview.default(_:);
              v33 = type metadata accessor for UITextItemMenuConfiguration.Preview();
              v34 = *(v33 - 8);
              v42 = v21;
              v35 = v34;
              v36 = v39;
              (*(v34 + 104))(v39, v32, v33);
              (*(v35 + 56))(v36, 0, 1, v33);
              v37 = UITextItemMenuConfiguration.init(preview:menu:)();
              sub_100112CD4(v38, v42);

              (*(v24 + 8))(v43, v22);
              return v37;
            }

            (*(v24 + 8))(v25, v22);
            sub_100112CD4(v38, v21);
          }

          else
          {
            (*(v24 + 8))(v25, v22);
            sub_100112CD4(v38, v21);
          }
        }

        else
        {
          (*(v24 + 8))(v25, v22);
          sub_100112CD4(v19, v21);
        }
      }
    }

    else
    {
      (*(v15 + 8))(v17, v14);
    }
  }

  return 0;
}

uint64_t sub_100293898(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10029395C()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:0];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor:v2];

  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  v4 = objc_opt_self();
  [v3 pointSize];
  v5 = [v4 systemFontOfSize:? weight:?];
  v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v7 = [v6 scaledFontForFont:v5 maximumPointSize:1.79769313e308];

  [v0 setFont:v7];
  return v0;
}

id sub_100293B64()
{
  v0 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintEqualToConstant:0.5];

  [v2 setActive:1];
  v3 = [objc_opt_self() secondaryLabelColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  [v0 setBackgroundColor:v4];
  return v0;
}

id sub_100293C7C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separatorWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separatorWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separatorWidthConstraint);
  }

  else
  {
    v4 = sub_100293B44();
    v5 = [v4 widthAnchor];

    v6 = [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_container) widthAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100293D70(uint64_t a1)
{
  type metadata accessor for HighlightTextView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = [objc_opt_self() labelColor];
  [v3 setTextColor:v5];

  v6 = v3;
  [v6 setScrollEnabled:0];
  [v6 setEditable:0];
  [v6 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  [v6 setTextContainerInset:{3.0, 0.0, 3.0, 0.0}];
  v7 = [v6 textContainer];
  [v7 setLineFragmentPadding:0.0];

  [v6 setClipsToBounds:0];
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
  v9 = objc_opt_self();
  [v8 pointSize];
  v10 = [v9 systemFontOfSize:? weight:?];
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v12 = [v11 scaledFontForFont:v10 maximumPointSize:1.79769313e308];

  [v6 setFont:v12];
  v16 = &type metadata for TranslateFeatures;
  v17 = sub_100009DF8();
  v15[0] = 5;
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100008664(v15);
  if ((v11 & 1) == 0)
  {
    v13 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a1 action:"sourceTapped:"];
    [v13 setNumberOfTapsRequired:1];
    [v6 addGestureRecognizer:v13];
  }

  return v6;
}

id sub_1002940C8()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:0];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v0 setTextColor:v3];
  v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  v5 = objc_opt_self();
  [v4 pointSize];
  v6 = [v5 systemFontOfSize:? weight:?];
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v8 = [v7 scaledFontForFont:v6 maximumPointSize:1.79769313e308];

  [v0 setFont:v8];
  return v0;
}

id sub_1002942E8(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_10029434C(uint64_t a1)
{
  type metadata accessor for HighlightTextView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() colorNamed:v4];

  [v3 setTextColor:v5];
  v6 = v3;
  [v6 setScrollEnabled:0];
  [v6 setEditable:0];
  [v6 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  [v6 setTextContainerInset:{3.0, 0.0, 3.0, 0.0}];
  v7 = [v6 textContainer];
  [v7 setLineFragmentPadding:0.0];

  v8 = String._bridgeToObjectiveC()();
  [v6 setText:v8];

  [v6 setClipsToBounds:0];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
  v10 = objc_opt_self();
  [v9 pointSize];
  v11 = [v10 systemFontOfSize:? weight:?];
  v12 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v13 = [v12 scaledFontForFont:v11 maximumPointSize:1.79769313e308];

  [v6 setFont:v13];
  v14 = [v6 textContainer];

  [v14 setLineBreakMode:0];
  v18 = &type metadata for TranslateFeatures;
  v19 = sub_100009DF8();
  v17[0] = 5;
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100008664(v17);
  if ((v14 & 1) == 0)
  {
    v15 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a1 action:"targetTapped:"];
    [v15 setNumberOfTapsRequired:1];
    [v6 addGestureRecognizer:v15];
  }

  return v6;
}

id sub_100294704()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  v2 = [objc_opt_self() systemFontOfSize:11.0];
  [v0 setFont:v2];

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x80000001002FCE60;
  v4._object = 0x80000001002FCE40;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8);

  v6 = String._bridgeToObjectiveC()();

  [v0 setText:v6];

  [v0 setHidden:1];
  return v0;
}

id sub_1002948F4()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  v2 = [objc_opt_self() systemFontOfSize:12.0];
  [v0 setFont:v2];

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x80000001002FD340;
  v4._object = 0x80000001002FD320;
  v8._countAndFlagsBits = 0xD000000000000052;
  v4._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8);

  v6 = String._bridgeToObjectiveC()();

  [v0 setText:v6];

  [v0 setHidden:1];
  return v0;
}

id sub_100294AE0()
{
  v0 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAxis:1];
  [v0 setDistribution:0];
  [v0 setAlignment:0];
  [v0 setSpacing:0.0];
  [v0 setLayoutMarginsRelativeArrangement:1];
  [v0 setInsetsLayoutMarginsFromSafeArea:0];
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  [v3 setCornerRadius:10.0];

  [v0 insertSubview:v1 atIndex:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1002C31A4(v1);
  [v0 setHidden:1];

  return v0;
}

id sub_100294CC4(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_100294D24()
{
  v0 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
  v4 = [objc_opt_self() configurationWithFont:v3];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setImage:v2];
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() colorNamed:v5];

  [v0 setTintColor:v6];
  return v0;
}

id sub_100294EDC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___spacer;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___spacer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___spacer);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_100294FA0(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for Locale();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___languageOneLabel] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separator] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separatorWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___sourceView] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___languageTwoLabel] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___hintView] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseHeader] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseRowsStack] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___favoritedImageView] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___spacer] = 0;
  v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_isIdentity] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_favoriteObservation] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeObservation] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_ttsPlaybackRateObservation] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedDisambiguableResult] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedTranslation] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_padding] = 0x4034000000000000;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternativesBehaviour;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ASRAlternativesBehaviour()) init];
  v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_enableSelectable] = 1;
  v12 = &v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex];
  *v12 = 0;
  v12[8] = 1;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_senseRows] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont;
  v14 = objc_opt_self();
  v15 = [v14 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
  v16 = objc_opt_self();
  [v15 pointSize];
  v17 = [v16 systemFontOfSize:? weight:?];
  v18 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v19 = [v18 scaledFontForFont:v17 maximumPointSize:1.79769313e308];

  *&v4[v13] = v19;
  v20 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_collapsedFontBold;
  v21 = [v14 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:0];
  [v21 pointSize];
  v22 = [v16 systemFontOfSize:? weight:?];
  v23 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v24 = [v23 scaledFontForFont:v22 maximumPointSize:1.79769313e308];

  *&v4[v20] = v24;
  v26 = v33;
  v25 = v34;
  v27 = *(v33 + 56);
  v27(&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_sourceLocale], 1, 1, v34);
  v27(&v4[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_targetLocale], 1, 1, v25);
  v28 = type metadata accessor for TranslationCard();
  v36.receiver = v4;
  v36.super_class = v28;
  v29 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  sub_1002955E0();
  *(*&v29[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternativesBehaviour] + OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_delegate + 8) = &off_10038BFB0;
  swift_unknownObjectWeakAssign();
  v30 = v35;
  Locale.init(identifier:)();
  sub_100295E00(_swiftEmptyArrayStorage, v30);
  (*(v26 + 8))(v30, v25);
  sub_1002959E8();

  return v29;
}

id sub_100295494()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TranslationCard();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  sub_100297090();
  v1 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions];
  [v1 frame];
  MinY = CGRectGetMinY(v8);
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator8CardView_container] frame];
  MaxY = CGRectGetMaxY(v9);
  [v1 frame];
  v4 = MinY < MaxY - CGRectGetHeight(v10);
  v5 = 0.0;
  if (v4)
  {
    v5 = 1.0;
  }

  return [*&v1[OBJC_IVAR____TtC17SequoiaTranslator11CardActions_background] setAlpha:v5];
}

id sub_1002955E0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_container;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_container);
  v3 = sub_10029393C();
  [v2 addArrangedSubview:v3];

  v4 = *(v0 + v1);
  v5 = sub_100293D50();
  [v4 addArrangedSubview:v5];

  v6 = *(v0 + v1);
  v7 = sub_1002948D4();
  [v6 addArrangedSubview:v7];

  v8 = *(v0 + v1);
  v9 = sub_100294AC0();
  [v8 addArrangedSubview:v9];

  v10 = *(v0 + v1);
  v11 = sub_100293B44();
  [v10 addArrangedSubview:v11];

  v12 = *(v0 + v1);
  v13 = sub_1002940A8();
  [v12 addArrangedSubview:v13];

  v14 = *(v0 + v1);
  v15 = sub_1002942C8();
  [v14 addArrangedSubview:v15];

  v16 = *(v0 + v1);
  v17 = sub_1002946E4();
  [v16 addArrangedSubview:v17];

  v18 = *(v0 + v1);
  v19 = sub_100294EDC();
  [v18 addArrangedSubview:v19];

  v20 = *(v0 + v1);
  v21 = sub_100294CA4();
  [v20 addSubview:v21];

  v22 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002DC210;
  v24 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___favoritedImageView;
  v25 = [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___favoritedImageView) bottomAnchor];
  v26 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView;
  v27 = [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView) bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:-8.0];

  *(v23 + 32) = v28;
  v29 = [*(v0 + v24) trailingAnchor];
  v30 = [*(v0 + v26) trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v23 + 40) = v31;
  v32 = [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___spacer) heightAnchor];
  v33 = [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions) heightAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v23 + 48) = v34;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];

  v36 = *(v0 + v24);

  return [v36 setHidden:1];
}

id sub_1002959E8()
{
  v1 = v0;
  sub_100296B60();
  v2 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_container;
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_container);
  v4 = sub_100293D50();
  [v3 setCustomSpacing:v4 afterView:16.0];

  v5 = *(v1 + v2);
  v6 = sub_1002948D4();
  [v5 setCustomSpacing:v6 afterView:12.0];

  v7 = *(v1 + v2);
  v8 = sub_100294AC0();
  [v7 setCustomSpacing:v8 afterView:12.0];

  v9 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded;
  [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions) setHidden:(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded) & 1) == 0];
  if (*(v1 + v9) == 1 && *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_isIdentity) != 1)
  {
    v12 = sub_100293B44();
    [v12 setHidden:0];

    v13 = *(v1 + v2);
    v34 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separator;
    v14 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separator);
    v15 = v13;
    v16 = [v15 arrangedSubviews];
    sub_10000A2CC(0, &qword_1003AFCF0);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseRowsStack);
    v19 = sub_10028B31C(v18, v17);
    v21 = v20;

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    [v15 insertArrangedSubview:v14 atIndex:v22];

    [*(v1 + v2) setCustomSpacing:*(v1 + v34) afterView:18.0];
    v11 = 1;
  }

  else
  {
    v10 = sub_100293B44();
    [v10 setHidden:1];

    [*(v1 + v2) removeArrangedSubview:*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separator)];
    v11 = 0;
  }

  v23 = sub_100293C7C();
  [v23 setActive:v11];

  v24 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___sourceView;
  [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___sourceView) setUserInteractionEnabled:*(v1 + v9)];
  v25 = sub_1002942C8();
  [v25 setUserInteractionEnabled:*(v1 + v9)];

  v26 = *(v1 + v9) != 1 || *(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives) + 16) < 2uLL;
  [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseHeader) setHidden:v26];
  v27 = *(v1 + v9) != 1 || *(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives) + 16) < 2uLL;
  [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseRowsStack) setHidden:v27];
  v28 = sub_100294CA4();
  if (*(v1 + v9))
  {
    v29 = 1;
  }

  else
  {
    v30 = sub_10002FC68();
    v31 = [(objc_class *)v30 isSelected];

    v29 = v31 ^ 1;
  }

  [v28 setHidden:v29];

  if ((*(v1 + v9) & 1) == 0)
  {
    [*(v1 + v24) setSelectedTextRange:0];
    [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView) setSelectedTextRange:0];
  }

  v32 = sub_100294EDC();
  [v32 setHidden:(*(v1 + v9) & 1) == 0];

  return sub_10003C8A8();
}

void sub_100295E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = type metadata accessor for IndexSet();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;

  v43 = v7;
  IndexSet.init()();
  v39 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives;
  v8 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives);
  v9 = *(a1 + 16);
  v10 = *(v8 + 16);
  v44 = a1 + 32;
  v42 = v8 + 32;
  *&v46 = v8;

  v11 = 0;
  v12 = 0;
  v13 = v9 == 0;
  if (v9)
  {
    goto LABEL_2;
  }

LABEL_6:
  *&v51 = 0;
  v12 = v9;
  v49 = 0u;
  v50 = 0u;
  if (v11 != v10)
  {
LABEL_7:
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if (v11 >= *(v46 + 16))
    {
      goto LABEL_45;
    }

    sub_100031DD8(v42 + 40 * v11++, &v57);
    goto LABEL_10;
  }

  while (1)
  {
    v59 = 0;
    v11 = v10;
    v57 = 0u;
    v58 = 0u;
LABEL_10:
    v52 = v49;
    v53 = v50;
    *v54 = v51;
    *&v54[8] = v57;
    v55 = v58;
    v56 = v59;
    if (!*(&v50 + 1))
    {

      if (*(&v55 + 1))
      {
        sub_100009EBC(&v54[8], &qword_1003BC018);
        goto LABEL_22;
      }

      goto LABEL_39;
    }

    if (!*(&v55 + 1))
    {

      sub_100008664(&v52);
      goto LABEL_22;
    }

    sub_100051124(&v52, v48);
    sub_100051124(&v54[8], v47);
    sub_1000085CC(v48, v48[3]);
    v15 = dispatch thunk of FormattedString.formattedString.getter();
    v17 = v16;
    sub_1000085CC(v47, v47[3]);
    if (v15 != dispatch thunk of FormattedString.formattedString.getter() || v17 != v18)
    {
      break;
    }

    sub_100008664(v47);
    sub_100008664(v48);
LABEL_16:
    v13 = v12 >= v9;
    if (v12 == v9)
    {
      goto LABEL_6;
    }

LABEL_2:
    if (v13)
    {
      goto LABEL_42;
    }

    sub_100031DD8(v44 + 40 * v12, &v49);
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_44;
    }

    if (v11 != v10)
    {
      goto LABEL_7;
    }
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_100008664(v47);
  sub_100008664(v48);
  if (v19)
  {
    goto LABEL_16;
  }

LABEL_22:
  sub_1002969B0();
  v20 = sub_1002948D4();
  v21 = v20;
  v22 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded;
  v23 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded);
  if (v9 <= 1)
  {
    v23 = 0;
  }

  [v20 setHidden:v23 ^ 1u];

  v24 = sub_100294AC0();
  v25 = v24;
  v26 = *(v3 + v22);
  if (v9 <= 1)
  {
    v26 = 0;
  }

  [v24 setHidden:v26 ^ 1u];

  if (!v9)
  {
LABEL_39:
    sub_100005AD4(&qword_1003BC000);
    sub_100298468(&qword_1003BC008);
    sub_100298468(&qword_1003BC010);
    v37 = v43;
    RangeReplaceableCollection<>.remove(atOffsets:)();
    (*(v40 + 8))(v37, v41);
    *(v3 + v39) = v60;

    return;
  }

  v27 = 0;
  v28 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_senseRows;
  while (1)
  {
    v29 = 0uLL;
    v30 = v9;
    v31 = 0uLL;
    v32 = 0uLL;
    if (v27 == v9)
    {
      goto LABEL_34;
    }

    if (v27 >= v9)
    {
      break;
    }

    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_41;
    }

    *&v49 = v27;
    sub_100031DD8(v44 + 40 * v27, &v49 + 8);
    v29 = v49;
    v31 = v50;
    v32 = v51;
LABEL_34:
    v52 = v29;
    v53 = v31;
    *v54 = v32;
    if (!v32)
    {
      goto LABEL_39;
    }

    v46 = v29;
    sub_100051124((&v52 + 8), &v49);
    v33 = v46;
    v34 = sub_100296618(&v49, v46, v45);
    if (v34)
    {
      v35 = v34;
      swift_beginAccess();
      v36 = v35;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v3 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v28) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        *&v46 = *((*(v3 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    else
    {
      IndexSet.insert(_:)(v33);
    }

    sub_100008664(&v49);
    v27 = v30;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_100296360()
{
  if ((*(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex + 8) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex);
    v3 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives;
    if (v2 < *(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives) + 16))
    {
      v4 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_senseRows;
      swift_beginAccess();
      v5 = *(v1 + v4);
      if (v5 >> 62)
      {
        goto LABEL_26;
      }

      if (v2 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        while (1)
        {
          v18 = v3;
          v19 = v4;
          v20 = v2;
          v4 = *(v1 + v4);
          v6 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v6)
          {
            break;
          }

          v7 = 0;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v8 = *(v4 + 8 * v7 + 32);
            }

            v3 = v8;
            v2 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              break;
            }

            v9 = sub_100226B28();
            [v9 setAlpha:0.0];

            ++v7;
            if (v2 == v6)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          if (v2 >= _CocoaArrayWrapper.endIndex.getter())
          {
            return;
          }
        }

LABEL_16:

        v10 = *(v1 + v19);
        if ((v10 & 0xC000000000000001) != 0)
        {

          v11 = v20;
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = v20;
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v12 = *(v10 + 8 * v20 + 32);
        }

        v13 = sub_100226B28();

        [v13 setAlpha:1.0];
        v14 = sub_1002942C8();
        if ((v11 & 0x8000000000000000) == 0)
        {
          v15 = *&v18[v1];
          if (v11 < *(v15 + 16))
          {
            v16 = v14;
            sub_100031DD8(v15 + 40 * v11 + 32, v21);
            sub_1000085CC(v21, v21[3]);
            TranslationAlternative.displayString.getter();
            v17 = String._bridgeToObjectiveC()();

            sub_100008664(v21);
            [v16 setText:v17];

            return;
          }

LABEL_33:
          __break(1u);
          return;
        }

        goto LABEL_31;
      }
    }
  }
}

char *sub_100296618(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  v12 = dispatch thunk of TranslationAlternative.sensesMeta.getter();
  if (*(v12 + 16))
  {
    sub_100031DD8(v12 + 32, v29);

    sub_100051124(v29, v30);
    v13 = sub_100294AC0();
    v14 = [v13 arrangedSubviews];

    sub_10000A2CC(0, &qword_1003AFCF0);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = &selRef_oneSelectedWithSender_;
    if (v16 >= 1)
    {
      v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = [v18 heightAnchor];
      v20 = [v19 constraintEqualToConstant:0.5];

      [v20 setActive:1];
      v17 = &selRef_oneSelectedWithSender_;
      v21 = [objc_opt_self() separatorColor];
      [v18 setBackgroundColor:v21];

      [*(v4 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseRowsStack) addArrangedSubview:v18];
    }

    sub_1000085CC(a1, a1[3]);
    v22 = TranslationAlternative.displayString.getter();
    v24 = v23;
    sub_100031DD8(v30, v29);
    (*(v9 + 16))(v11, a3, v8);
    v25 = objc_allocWithZone(type metadata accessor for SenseRow());
    v26 = sub_100227038(v22, v24, v29, a2, v11);
    [*(v4 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseRowsStack) v17[212]];
    v27 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v4 action:"senseTapped:"];
    [v26 addGestureRecognizer:v27];

    sub_100008664(v30);
  }

  else
  {

    return 0;
  }

  return v26;
}

id sub_1002969B0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_senseRows;
  swift_beginAccess();
  *(v0 + v1) = _swiftEmptyArrayStorage;

  v2 = sub_100294AC0();
  v3 = [v2 arrangedSubviews];

  sub_10000A2CC(0, &qword_1003AFCF0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseRowsStack;
    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [*(v0 + v6) removeArrangedSubview:v8];
      [v9 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v11 = sub_1002948D4();
  [v11 setHidden:1];

  return [*(v0 + v6) setHidden:1];
}

void sub_100296B60()
{
  v1 = v0;
  v2 = sub_100293D50();
  v3 = v2;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded))
  {
    v5 = &OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont;
  }

  else
  {
    v5 = &OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_collapsedFontBold;
  }

  [v2 setFont:*(v1 + *v5)];

  v6 = sub_1002942C8();
  v7 = v6;
  if (*(v1 + v4))
  {
    v8 = &OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_collapsedFontBold;
  }

  [v6 setFont:*(v1 + *v8)];

  if ((*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex + 8) & 1) == 0)
  {
    v9 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex);
    v10 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives;
    v11 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives);
    if (v9 < *(v11 + 16))
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_100031DD8(v11 + 40 * v9 + 32, v24);
      sub_1000085CC(v24, v25);
      v12 = *(dispatch thunk of TranslationAlternative.sensesMeta.getter() + 16);

      sub_100008664(v24);
      if (v12 && *(v1 + v4) == 1)
      {
        v13 = *(v1 + v10);
        if (v9 < *(v13 + 16))
        {
          sub_100031DD8(v13 + 40 * v9 + 32, v23);
          sub_1000085CC(v23, v23[3]);
          v14 = dispatch thunk of TranslationAlternative.sensesMeta.getter();
          if (*(v14 + 16))
          {
            sub_100031DD8(v14 + 32, v24);

            sub_100008664(v23);
            sub_1000085CC(v24, v25);
            v15 = dispatch thunk of TranslationSense.sourceMatch.getter();
            v17 = v16;
            v18 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___sourceView);
            sub_100296DD4(v15, v17, v18);

            sub_1000085CC(v24, v25);
            v19 = dispatch thunk of TranslationSense.targetMatch.getter();
            v21 = v20;
            v22 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView);
            sub_100296DD4(v19, v21, v22);

            sub_100008664(v24);
            return;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }
  }
}

void sub_100296DD4(int a1, int a2, id a3)
{
  v5 = [a3 attributedText];
  if (!v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v5];

  v23 = v7;
  v8 = [v23 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String.count.getter();

  v10 = objc_opt_self();
  v11 = [a3 font];
  if (!v11)
  {
    v11 = [v10 preferredFontForTextStyle:UIFontTextStyleTitle1];
  }

  v12 = v11;
  [v11 pointSize];
  v14 = v13;

  v15 = [v10 systemFontOfSize:v14];
  [v23 addAttribute:NSFontAttributeName value:v15 range:{0, v9}];
  v16 = [a3 textColor];
  if (!v16)
  {
    v16 = [objc_opt_self() labelColor];
  }

  [v23 addAttribute:NSForegroundColorAttributeName value:v16 range:{0, v9}];

  v17 = [v23 string];
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 rangeOfString:v19];
  v22 = v21;

  [v23 addAttribute:NSFontAttributeName value:*(v3 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont) range:{v20, v22}];
  [a3 setAttributedText:v23];
}

void sub_100297090()
{
  v1 = v0;
  v2 = sub_1002942C8();
  v3 = [v2 textContainer];

  sub_10000A2CC(0, &qword_1003B7B58);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setExclusionPaths:isa];

  v5 = sub_100294CA4();
  LOBYTE(v3) = [v5 isHidden];

  if ((v3 & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView;
    [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView) bounds];
    Width = CGRectGetWidth(v28);
    v8 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___favoritedImageView;
    [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___favoritedImageView) bounds];
    v10 = Width - v9 * 1.25;
    [*(v1 + v6) bounds];
    Height = CGRectGetHeight(v29);
    [*(v1 + v8) bounds];
    v13 = Height - v12 * 1.25 + -8.0;
    [*(v1 + v8) bounds];
    v15 = v14 * 1.25;
    [*(v1 + v8) bounds];
    v30.size.height = v16 * 1.25;
    v30.origin.x = v10;
    v30.origin.y = v13;
    v30.size.width = v15;
    v31 = CGRectStandardize(v30);
    x = v31.origin.x;
    y = v31.origin.y;
    v19 = v31.size.width;
    v20 = v31.size.height;
    v21 = [*(v1 + v6) textContainer];
    v22 = [objc_opt_self() bezierPathWithRect:{x, y, v19, v20}];
    v23 = [v21 exclusionPaths];
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setExclusionPaths:v25];

    v26 = *(v1 + v6);

    [v26 layoutIfNeeded];
  }
}

uint64_t sub_10029737C(void *a1)
{
  v2 = v1;
  result = sub_100012674(a1);
  if ((result & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate;
    swift_beginAccess();
    sub_10001F620(v2 + v5, v11, &unk_1003AB7B0);
    if (v12)
    {
      sub_100031DD8(v11, v8);
      sub_100009EBC(v11, &unk_1003AB7B0);
      v6 = v9;
      v7 = v10;
      sub_1000085CC(v8, v9);
      (*(v7 + 24))(a1, v6, v7);
      return sub_100008664(v8);
    }

    else
    {
      return sub_100009EBC(v11, &unk_1003AB7B0);
    }
  }

  return result;
}

uint64_t sub_1002974EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate;
  swift_beginAccess();
  sub_10001F620(v1 + v3, v10, &unk_1003AB7B0);
  if (!v11)
  {
    return sub_100009EBC(v10, &unk_1003AB7B0);
  }

  sub_100031DD8(v10, v7);
  sub_100009EBC(v10, &unk_1003AB7B0);
  v4 = v8;
  v5 = v9;
  sub_1000085CC(v7, v8);
  (*(v5 + 32))(a1, v4, v5);
  return sub_100008664(v7);
}

void sub_100297644(void *a1)
{
  v2 = v1;
  v3 = [a1 view];
  if (v3)
  {
    v12 = v3;
    type metadata accessor for SenseRow();
    v4 = swift_dynamicCastClass();
    if (v4 && ((v5 = v4, v6 = &v1[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex], v7 = OBJC_IVAR____TtC17SequoiaTranslator8SenseRow_index, v8 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator8SenseRow_index), (v1[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex + 8] & 1) != 0) || *v6 != v8))
    {
      *v6 = v8;
      v6[8] = 0;
      sub_100296360();
      v9 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate;
      swift_beginAccess();
      sub_10001F620(v2 + v9, v17, &unk_1003AB7B0);
      if (v18)
      {
        sub_100031DD8(v17, v14);
        sub_100009EBC(v17, &unk_1003AB7B0);
        v10 = v15;
        v11 = v16;
        sub_1000085CC(v14, v15);
        (*(v11 + 16))(*(v5 + v7), v10, v11);
        sub_100008664(v14);
      }

      else
      {
        sub_100009EBC(v17, &unk_1003AB7B0);
      }

      [v2 setNeedsLayout];
    }

    else
    {
    }
  }
}

uint64_t sub_100297860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate;
  swift_beginAccess();
  sub_10001F620(v4 + v9, v16, &unk_1003AB7B0);
  if (!v17)
  {
    return sub_100009EBC(v16, &unk_1003AB7B0);
  }

  sub_100031DD8(v16, v13);
  sub_100009EBC(v16, &unk_1003AB7B0);
  v10 = v14;
  v11 = v15;
  sub_1000085CC(v13, v14);
  (*(v11 + 8))(a1, a2, a3, a4, v10, v11);
  return sub_100008664(v13);
}

id sub_1002979A8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v6 = [v5 text];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v7 = String._bridgeToObjectiveC()();

  return v7;
}

void sub_100297A88(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v6 = [v5 text];

  if (v6)
  {

    v7 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_100297C08(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a1;
  v4 = a3();
  [v4 sendActionsForControlEvents:64];
}

uint64_t sub_100297CF0(uint64_t *a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = *a1;
  swift_beginAccess();
  sub_10001F620(v1 + v10, v9, &qword_1003AFCE0);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_100009EBC(v9, &qword_1003AFCE0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_100009EBC(v9, &qword_1003AFCE0);
    v12 = Locale.identifier.getter();
    (*(v4 + 8))(v6, v3);
    return v12;
  }
}

id sub_100297EF0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100297F70()
{

  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_sourceLocale, &qword_1003AFCE0);
  return sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_targetLocale, &qword_1003AFCE0);
}

id sub_100298124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslationCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TranslationCard()
{
  result = qword_1003BBFF0;
  if (!qword_1003BBFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100298368()
{
  sub_1000E1CC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100298468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(&qword_1003BC000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002984B8()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___languageOneLabel) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separator) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___separatorWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___sourceView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___languageTwoLabel) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___targetView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___hintView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseHeader) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___senseRowsStack) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___favoritedImageView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard____lazy_storage___spacer) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_isIdentity) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_favoriteObservation) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeObservation) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_ttsPlaybackRateObservation) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedDisambiguableResult) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_cachedTranslation) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_padding) = 0x4034000000000000;
  v1 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternativesBehaviour;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ASRAlternativesBehaviour()) init];
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_enableSelectable) = 1;
  v2 = v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_selectedAlternativeIndex;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_alternatives) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_senseRows) = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont;
  v4 = objc_opt_self();
  v5 = [v4 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
  v6 = objc_opt_self();
  [v5 pointSize];
  v7 = [v6 systemFontOfSize:? weight:?];
  v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v9 = [v8 scaledFontForFont:v7 maximumPointSize:1.79769313e308];

  *(v0 + v3) = v9;
  v10 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_collapsedFontBold;
  v11 = [v4 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:0];
  [v11 pointSize];
  v12 = [v6 systemFontOfSize:? weight:?];
  v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v14 = [v13 scaledFontForFont:v12 maximumPointSize:1.79769313e308];

  *(v0 + v10) = v14;
  v15 = OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_sourceLocale;
  v16 = type metadata accessor for Locale();
  v17 = *(*(v16 - 8) + 56);
  v17(v0 + v15, 1, 1, v16);
  v17(v0 + OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_targetLocale, 1, 1, v16);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100298888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003BC020);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005AD4(&qword_1003B2300);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1002989C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100005AD4(&qword_1003BC020);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100005AD4(&qword_1003B2300);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TranslationCardView()
{
  result = qword_1003BC080;
  if (!qword_1003BC080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100298B2C()
{
  sub_100298CB4();
  if (v0 <= 0x3F)
  {
    sub_100298D0C(319, &qword_1003B29A0, &qword_1003B29A8, &unk_1002DFD20, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100298D0C(319, &qword_1003B29B0, &unk_1003B27F0, &unk_1002D4010, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A99BC();
        if (v3 <= 0x3F)
        {
          sub_100298D0C(319, &qword_1003B2380, &qword_1003AC848, &unk_1002D66A0, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10005C50C();
            if (v5 <= 0x3F)
            {
              sub_100298D70();
              if (v6 <= 0x3F)
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

void sub_100298CB4()
{
  if (!qword_1003BC090)
  {
    type metadata accessor for CommittedTranslationViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_1003BC090);
    }
  }
}

void sub_100298D0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005EA8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100298D70()
{
  if (!qword_1003AC878)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AC878);
    }
  }
}

uint64_t sub_100298DEC(void (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v27[-v10];
  a1(v9);
  static Locale.current.getter();
  v12 = Locale.sqDisplayName(context:in:)();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v11, v4);
  if (!v14)
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v12 = 0x45474155474E414CLL;
    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D28C0);
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v28 = v19;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      v22 = Locale.identifier.getter();
      v24 = v23;
      v15(v11, v4);
      v25 = sub_10028D78C(v22, v24, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v28, "Unable to get sqDisplayName for locale %s", v20, 0xCu);
      sub_100008664(v21);
    }
  }

  return v12;
}

uint64_t sub_100299094@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TranslationCardView();
  sub_10001F620(v1 + *(v10 + 32), v9, &qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023BD4(v9, a1, &qword_1003AC848);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

id sub_10029927C()
{
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v19 + 72);

  dispatch thunk of PersistedTranslation.displaySourceText.getter();

  v1 = objc_allocWithZone(NSAttributedString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  v4 = [v3 length];
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v19 + 72);

  dispatch thunk of PersistedTranslation.displayText.getter();

  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithString:v7];

  v9 = [v8 length];
  v10 = &UIFontTextStyleTitle1;
  if (v9 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = v9;
  }

  if (v11 >= 50)
  {
    v10 = &UIFontTextStyleTitle3;
  }

  v12 = *v10;
  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  v14 = objc_opt_self();
  [v13 pointSize];
  v15 = [v14 systemFontOfSize:? weight:?];
  v16 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:v12];
  v17 = [v16 scaledFontForFont:v15 maximumPointSize:1.79769313e308];

  return v17;
}

uint64_t sub_100299598@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v105 = type metadata accessor for TranslationCardView();
  v93 = *(v105 - 1);
  __chkstk_darwin(v105);
  v100 = v2;
  v101 = v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003BC0D8);
  __chkstk_darwin(v3);
  v5 = v87 - v4;
  v89 = sub_100005AD4(&qword_1003BC0E0);
  __chkstk_darwin(v89);
  v7 = v87 - v6;
  v8 = sub_100005AD4(&qword_1003BC0E8);
  __chkstk_darwin(v8);
  v10 = v87 - v9;
  v11 = sub_100005AD4(&qword_1003BC0F0);
  v12 = __chkstk_darwin(v11 - 8);
  v103 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = v87 - v14;
  v90 = sub_100005AD4(&qword_1003BC0F8);
  __chkstk_darwin(v90);
  v92 = v87 - v15;
  v104 = sub_100005AD4(&qword_1003BC100);
  __chkstk_darwin(v104);
  v17 = v87 - v16;
  v18 = sub_100005AD4(&qword_1003BC108);
  v95 = *(v18 - 8);
  v96 = v18;
  __chkstk_darwin(v18);
  v94 = v87 - v19;
  v20 = sub_100005AD4(&qword_1003BC110);
  v98 = *(v20 - 8);
  v99 = v20;
  __chkstk_darwin(v20);
  v97 = v87 - v21;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v22 = &v10[*(sub_100005AD4(&qword_1003BC118) + 44)];
  *v22 = sub_10029A33C();
  v23 = sub_100005AD4(&qword_1003BC120);
  sub_10029A7C4(v1, v22 + *(v23 + 44));
  LOBYTE(v22) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v10[*(sub_100005AD4(&qword_1003BC128) + 36)];
  *v32 = v22;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v22) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v10[*(sub_100005AD4(&qword_1003BC130) + 36)];
  *v41 = v22;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  LOBYTE(v22) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v42 = &v10[*(v8 + 36)];
  *v42 = v22;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v87[2] = sub_100005AD4(&qword_1003BC020);
  v88 = v1;
  Bindable.wrappedValue.getter();
  v47 = v108;
  swift_getKeyPath();
  v108 = v47;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v47 + 243);

  if (v48 == 1)
  {
    v49 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v50 = Color.init(uiColor:)();
    v51 = static Edge.Set.all.getter();
    sub_10001F620(v10, v7, &qword_1003BC0E8);
    v52 = &v7[*(sub_100005AD4(&qword_1003BC148) + 36)];
    *v52 = v50;
    v52[8] = v51;
    v87[1] = v8;
    v53 = &v7[*(v89 + 36)];
    v54 = *(type metadata accessor for RoundedRectangle() + 20);
    v55 = enum case for RoundedCornerStyle.continuous(_:);
    v56 = type metadata accessor for RoundedCornerStyle();
    (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
    __asm { FMOV            V0.2D, #10.0 }

    *v53 = _Q0;
    *&v53[*(sub_100005AD4(&qword_1003AC978) + 36)] = 256;
    sub_10001F620(v7, v5, &qword_1003BC0E0);
    swift_storeEnumTagMultiPayload();
    sub_1002A1938();
    sub_1002A1AA8();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v7, &qword_1003BC0E0);
  }

  else
  {
    sub_10001F620(v10, v5, &qword_1003BC0E8);
    swift_storeEnumTagMultiPayload();
    sub_1002A1938();
    sub_1002A1AA8();
    _ConditionalContent<>.init(storage:)();
  }

  sub_100009EBC(v10, &qword_1003BC0E8);
  v62 = v91;
  sub_100023BD4(v103, v91, &qword_1003BC0F0);
  v63 = v88;
  Bindable.wrappedValue.getter();
  v64 = v108;
  swift_getKeyPath();
  v108 = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(v64 + 241);

  v66 = v92;
  sub_100023BD4(v62, v92, &qword_1003BC0F0);
  *(v66 + *(v90 + 36)) = v65;
  v67 = v101;
  sub_1002A244C(v63, v101, type metadata accessor for TranslationCardView);
  v68 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v69 = swift_allocObject();
  sub_1002A28E0(v67, v69 + v68, type metadata accessor for TranslationCardView);
  sub_100023BD4(v66, v17, &qword_1003BC0F8);
  v70 = &v17[*(v104 + 36)];
  *v70 = sub_1002A1C84;
  v70[1] = v69;
  v70[2] = 0;
  v70[3] = 0;
  v71 = *(v63 + v105[7]);
  if (v71)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v71;
    static Published.subscript.getter();

    sub_1002A244C(v63, v67, type metadata accessor for TranslationCardView);
    v73 = swift_allocObject();
    sub_1002A28E0(v67, v73 + v68, type metadata accessor for TranslationCardView);
    v74 = sub_1002A1D00();
    v75 = v94;
    View.onChange<A>(of:initial:_:)();

    sub_100009EBC(v17, &qword_1003BC100);
    if (*(v63 + v105[9]))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v106 = v108;
      sub_1002A244C(v63, v67, type metadata accessor for TranslationCardView);
      v76 = swift_allocObject();
      sub_1002A28E0(v67, v76 + v68, type metadata accessor for TranslationCardView);
      v108 = v104;
      v109 = &type metadata for Bool;
      v110 = v74;
      v111 = &protocol witness table for Bool;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v78 = v96;
      v79 = v97;
      View.onChange<A>(of:initial:_:)();

      (*(v95 + 8))(v75, v78);
      v80 = v63 + v105[10];
      v81 = *v80;
      v82 = *(v80 + 8);
      v106 = v81;
      v107 = v82;
      sub_100005AD4(&qword_1003AC8F8);
      State.projectedValue.getter();
      type metadata accessor for GenderDisambiguationLearnMoreView();
      v108 = v78;
      v109 = &type metadata for Bool;
      v110 = OpaqueTypeConformance2;
      v111 = &protocol witness table for Bool;
      swift_getOpaqueTypeConformance2();
      sub_1002A2CF0(&qword_1003AC918, &type metadata accessor for GenderDisambiguationLearnMoreView);
      v83 = v99;
      View.formSheet<A>(isPresented:content:)();

      return (*(v98 + 8))(v79, v83);
    }

    type metadata accessor for SceneContext();
    v85 = &qword_1003AC860;
    v86 = type metadata accessor for SceneContext;
  }

  else
  {
    type metadata accessor for SharedTranslationOptions();
    v85 = &qword_1003AE918;
    v86 = type metadata accessor for SharedTranslationOptions;
  }

  sub_1002A2CF0(v85, v86);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10029A33C()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003AC998);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100005AD4(&qword_1003AC848);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_100299094(&v23 - v14);
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10001F620(v15, v6, &qword_1003AC848);
  sub_10001F620(v13, &v6[v16], &qword_1003AC848);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_100009EBC(v6, &qword_1003AC848);
LABEL_9:
      v24 = static VerticalAlignment.top.getter();
      v25 = 0;
      v26 = 1;
      sub_10005DC8C();
      return AnyLayout.init<A>(_:)();
    }

    goto LABEL_6;
  }

  sub_10001F620(v6, v10, &qword_1003AC848);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    (*(v1 + 8))(v10, v0);
LABEL_6:
    sub_100009EBC(v6, &qword_1003AC998);
    goto LABEL_7;
  }

  v18 = &v6[v16];
  v19 = v23;
  (*(v1 + 32))(v23, v18, v0);
  sub_1002A2CF0(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v19, v0);
  sub_100009EBC(v13, &qword_1003AC848);
  sub_100009EBC(v15, &qword_1003AC848);
  v21(v10, v0);
  sub_100009EBC(v6, &qword_1003AC848);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = static HorizontalAlignment.leading.getter();
  v25 = 0;
  v26 = 1;
  sub_10005DC38();
  return AnyLayout.init<A>(_:)();
}

uint64_t sub_10029A7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v121 = sub_100005AD4(&qword_1003BC190);
  v3 = __chkstk_darwin(v121);
  v124 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v122 = (&v97 - v5);
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v100 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003AC998);
  v10 = __chkstk_darwin(v9);
  v117 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v97 - v12;
  v14 = sub_100005AD4(&qword_1003AC848);
  v15 = __chkstk_darwin(v14 - 8);
  v114 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v126 = &v97 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v97 - v20;
  v21 = __chkstk_darwin(v19);
  v106 = &v97 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v97 - v24;
  __chkstk_darwin(v23);
  v27 = &v97 - v26;
  v110 = type metadata accessor for Divider();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100005AD4(&qword_1003BC198);
  __chkstk_darwin(v107);
  v125 = &v97 - v30;
  v113 = sub_100005AD4(&qword_1003BC1A0);
  v31 = __chkstk_darwin(v113);
  v120 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v112 = &v97 - v34;
  __chkstk_darwin(v33);
  v118 = &v97 - v35;
  v36 = sub_100005AD4(&qword_1003BC1A8);
  v37 = __chkstk_darwin(v36 - 8);
  v119 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v97 - v39;
  *v40 = static HorizontalAlignment.leading.getter();
  *(v40 + 1) = 0x4010000000000000;
  v40[16] = 0;
  v41 = *(sub_100005AD4(&qword_1003BC1B0) + 44);
  v115 = v40;
  sub_10029B598(a1, &v40[v41]);
  v108 = v29;
  Divider.init()();
  LODWORD(v42) = static Edge.Set.vertical.getter();
  v128 = a1;
  sub_100299094(v27);
  v43 = v7[13];
  v101 = enum case for UserInterfaceSizeClass.compact(_:);
  v104 = v43;
  v43(v25);
  v44 = v7[7];
  v103 = v7 + 7;
  v102 = v44;
  v44(v25, 0, 1, v6);
  v111 = v9;
  v45 = *(v9 + 48);
  sub_10001F620(v27, v13, &qword_1003AC848);
  sub_10001F620(v25, &v13[v45], &qword_1003AC848);
  v116 = v7;
  v46 = v7[6];
  v47 = v46(v13, 1, v6);
  v105 = v46;
  if (v47 == 1)
  {
    sub_100009EBC(v25, &qword_1003AC848);
    sub_100009EBC(v27, &qword_1003AC848);
    if (v46(&v13[v45], 1, v6) == 1)
    {
      sub_100009EBC(v13, &qword_1003AC848);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v99 = v27;
  sub_10001F620(v13, v106, &qword_1003AC848);
  if (v46(&v13[v45], 1, v6) == 1)
  {
    sub_100009EBC(v25, &qword_1003AC848);
    sub_100009EBC(v99, &qword_1003AC848);
    (v116[1])(v106, v6);
LABEL_6:
    sub_100009EBC(v13, &qword_1003AC998);
    goto LABEL_8;
  }

  v48 = v116;
  v49 = v116[4];
  v98 = v42;
  v42 = v100;
  v49(v100, &v13[v45], v6);
  sub_1002A2CF0(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v50 = v106;
  v97 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v48[1];
  v52 = v42;
  LOBYTE(v42) = v98;
  v51(v52, v6);
  sub_100009EBC(v25, &qword_1003AC848);
  sub_100009EBC(v99, &qword_1003AC848);
  v51(v50, v6);
  sub_100009EBC(v13, &qword_1003AC848);
LABEL_8:
  v53 = v117;
  v54 = v125;
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  (*(v109 + 32))(v54, v108, v110);
  v63 = v54 + *(v107 + 36);
  *v63 = v42;
  *(v63 + 8) = v56;
  *(v63 + 16) = v58;
  *(v63 + 24) = v60;
  *(v63 + 32) = v62;
  *(v63 + 40) = 0;
  LODWORD(v117) = static Edge.Set.horizontal.getter();
  v64 = v127;
  sub_100299094(v127);
  v65 = v126;
  v104(v126, v101, v6);
  v102(v65, 0, 1, v6);
  v66 = *(v111 + 48);
  sub_10001F620(v64, v53, &qword_1003AC848);
  sub_10001F620(v65, v53 + v66, &qword_1003AC848);
  v67 = v105;
  v68 = v105(v53, 1, v6);
  v69 = v114;
  if (v68 != 1)
  {
    sub_10001F620(v53, v114, &qword_1003AC848);
    if (v67(v53 + v66, 1, v6) != 1)
    {
      v70 = v116;
      v71 = v100;
      (v116[4])(v100, v53 + v66, v6);
      sub_1002A2CF0(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = v70[1];
      v72(v71, v6);
      sub_100009EBC(v126, &qword_1003AC848);
      sub_100009EBC(v127, &qword_1003AC848);
      v72(v69, v6);
      v54 = v125;
      sub_100009EBC(v53, &qword_1003AC848);
      goto LABEL_15;
    }

    sub_100009EBC(v126, &qword_1003AC848);
    sub_100009EBC(v127, &qword_1003AC848);
    (v116[1])(v69, v6);
    goto LABEL_13;
  }

  sub_100009EBC(v65, &qword_1003AC848);
  sub_100009EBC(v64, &qword_1003AC848);
  if (v67(v53 + v66, 1, v6) != 1)
  {
LABEL_13:
    sub_100009EBC(v53, &qword_1003AC998);
    goto LABEL_15;
  }

  sub_100009EBC(v53, &qword_1003AC848);
LABEL_15:
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v112;
  sub_100023BD4(v54, v112, &qword_1003BC198);
  v82 = v81 + *(v113 + 36);
  *v82 = v117;
  *(v82 + 8) = v74;
  *(v82 + 16) = v76;
  *(v82 + 24) = v78;
  *(v82 + 32) = v80;
  *(v82 + 40) = 0;
  v83 = v118;
  sub_100023BD4(v81, v118, &qword_1003BC1A0);
  v84 = static HorizontalAlignment.leading.getter();
  v85 = v122;
  *v122 = v84;
  *(v85 + 8) = 0;
  *(v85 + 16) = 0;
  v86 = sub_100005AD4(&qword_1003BC1B8);
  sub_10029D690(v128, v85 + *(v86 + 44));
  v87 = static Color.translateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v89 = (v85 + *(v121 + 36));
  *v89 = KeyPath;
  v89[1] = v87;
  v90 = v115;
  v91 = v119;
  sub_10001F620(v115, v119, &qword_1003BC1A8);
  v92 = v120;
  sub_10001F620(v83, v120, &qword_1003BC1A0);
  v93 = v124;
  sub_10001F620(v85, v124, &qword_1003BC190);
  v94 = v123;
  sub_10001F620(v91, v123, &qword_1003BC1A8);
  v95 = sub_100005AD4(&qword_1003BC1C0);
  sub_10001F620(v92, v94 + *(v95 + 48), &qword_1003BC1A0);
  sub_10001F620(v93, v94 + *(v95 + 64), &qword_1003BC190);
  sub_100009EBC(v85, &qword_1003BC190);
  sub_100009EBC(v83, &qword_1003BC1A0);
  sub_100009EBC(v90, &qword_1003BC1A8);
  sub_100009EBC(v93, &qword_1003BC190);
  sub_100009EBC(v92, &qword_1003BC1A0);
  return sub_100009EBC(v91, &qword_1003BC1A8);
}

uint64_t sub_10029B598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for TranslationCardView();
  v50 = *(v3 - 8);
  v49 = *(v50 + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003BC288);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_100005AD4(&qword_1003BC290);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v46 - v13;
  __chkstk_darwin(v12);
  v51 = &v46 - v14;
  v15 = sub_100005AD4(&qword_1003BC298);
  v16 = __chkstk_darwin(v15 - 8);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_100005AD4(&qword_1003BC2A0);
  sub_10029BB64(&v19[*(v20 + 44)]);
  *v7 = static VerticalAlignment.bottom.getter();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v21 = sub_100005AD4(&qword_1003BC2A8);
  sub_10029BE60(a1, &v7[*(v21 + 44)]);
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v22 = v55;
  swift_getKeyPath();
  v55 = v22;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v22 + 160);

  Bindable.wrappedValue.getter();
  v24 = v55;
  swift_getKeyPath();
  v55 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v24 + 72);

  v26 = sub_10028AF00();

  if (v26 == 4)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = v46;
  sub_1002A244C(a1, v46, type metadata accessor for TranslationCardView);
  v29 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v30 = swift_allocObject();
  sub_1002A28E0(v28, v30 + v29, type metadata accessor for TranslationCardView);
  v31 = static Color.sourceTextColor.getter();
  v32 = static VerticalAlignment.bottom.getter();
  v54 = 0;
  static Binding.constant(_:)();
  v33 = v55;
  v34 = v56;
  v35 = v57;
  LOBYTE(v54) = 1;
  v36 = v7;
  v37 = v47;
  sub_100023BD4(v36, v47, &qword_1003BC288);
  v38 = v37 + *(v9 + 44);
  *v38 = 0;
  *(v38 + 1) = v23;
  *(v38 + 2) = v27;
  *(v38 + 8) = sub_1002A2D40;
  *(v38 + 16) = v30;
  *(v38 + 24) = 0;
  *(v38 + 32) = v32;
  *(v38 + 40) = v31;
  *(v38 + 48) = v33;
  *(v38 + 56) = v34;
  *(v38 + 64) = v35;
  *(v38 + 72) = 0x4020000000000000;
  *(v38 + 80) = 0;
  *(v38 + 88) = 0;
  *(v38 + 96) = v54;
  v39 = v51;
  sub_100023BD4(v37, v51, &qword_1003BC290);
  v40 = v48;
  sub_10001F620(v19, v48, &qword_1003BC298);
  v41 = v52;
  sub_10001F620(v39, v52, &qword_1003BC290);
  v42 = v53;
  sub_10001F620(v40, v53, &qword_1003BC298);
  v43 = sub_100005AD4(&unk_1003BC360);
  sub_10001F620(v41, v42 + *(v43 + 48), &qword_1003BC290);
  v44 = v42 + *(v43 + 64);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_100009EBC(v39, &qword_1003BC290);
  sub_100009EBC(v19, &qword_1003BC298);
  sub_100009EBC(v41, &qword_1003BC290);
  return sub_100009EBC(v40, &qword_1003BC298);
}

uint64_t sub_10029BB64@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100005AD4(&qword_1003AF510);
  v2 = __chkstk_darwin(v1 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v6 = v29;
  swift_getKeyPath();
  v29 = v6;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + 72);

  v8 = sub_100298DEC(&dispatch thunk of PersistedTranslation.sourceLocale.getter);
  v10 = v9;

  v29 = v8;
  v30 = v10;
  sub_10001F278();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v10) = v14;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10002EA54(v11, v13, v10 & 1);

  v29 = v15;
  v30 = v17;
  v31 = v19 & 1;
  v32 = v21;
  View.accessibilityIdentifier(_:)();
  sub_10002EA54(v15, v17, v19 & 1);

  v22 = v27;
  sub_10001F620(v5, v27, &qword_1003AF510);
  v23 = v28;
  sub_10001F620(v22, v28, &qword_1003AF510);
  v24 = v23 + *(sub_100005AD4(&qword_1003BC358) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100009EBC(v5, &qword_1003AF510);
  return sub_100009EBC(v22, &qword_1003AF510);
}

uint64_t sub_10029BE60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v126 = a2;
  v125 = type metadata accessor for Locale.Language();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Locale();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v122 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for LayoutDirection();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TranslationCardView();
  v102 = *(v100 - 8);
  v6 = __chkstk_darwin(v100);
  v105 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v103 = v90 - v9;
  v104 = v10;
  __chkstk_darwin(v8);
  v101 = v90 - v11;
  v12 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v12 - 8);
  v127 = v90 - v13;
  v14 = type metadata accessor for AttributedString();
  __chkstk_darwin(v14 - 8);
  v99 = type metadata accessor for LanguageAwareText();
  __chkstk_darwin(v99);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100005AD4(&qword_1003BC2E8);
  __chkstk_darwin(v110);
  v108 = v90 - v17;
  v18 = sub_100005AD4(&qword_1003BC2F0);
  __chkstk_darwin(v18 - 8);
  v107 = v90 - v19;
  v106 = sub_100005AD4(&qword_1003BC2F8);
  __chkstk_darwin(v106);
  v111 = v90 - v20;
  v109 = sub_100005AD4(&qword_1003BC300);
  __chkstk_darwin(v109);
  v112 = v90 - v21;
  v113 = sub_100005AD4(&qword_1003BC308);
  __chkstk_darwin(v113);
  v114 = v90 - v22;
  v118 = sub_100005AD4(&qword_1003BC310);
  v117 = *(v118 - 8);
  v23 = __chkstk_darwin(v118);
  v116 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v115 = v90 - v25;
  v26 = sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v27 = v132;
  swift_getKeyPath();
  *&v132 = v27;
  v28 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 168);
  v30 = v29;

  if (!v29)
  {
    sub_10000A2CC(0, &qword_1003AC720);
    AttributedString.init(stringLiteral:)();
    v29 = NSAttributedString.init(_:)();
  }

  v98 = v29;
  (*(v128 + 56))(v127, 1, 1, v130);
  v96 = sub_10029927C();
  Bindable.wrappedValue.getter();
  v31 = v132;
  swift_getKeyPath();
  *&v132 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + 208);
  v95 = *(v31 + 200);
  v94 = v32;
  v93 = *(v31 + 216);

  v33 = (a1 + *(v100 + 20));
  v34 = *v33;
  v92 = v33[1];
  v100 = v34;
  swift_unknownObjectRetain();
  Bindable.wrappedValue.getter();
  v35 = v132;
  swift_getKeyPath();
  *&v132 = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v35 + 194);

  v129 = v28;
  if (v36)
  {
    v91 = 0;
  }

  else
  {
    v91 = [objc_opt_self() systemFillColor];
  }

  v37 = v101;
  sub_1002A244C(a1, v101, type metadata accessor for TranslationCardView);
  v38 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v102 = swift_allocObject();
  sub_1002A28E0(v37, v102 + v38, type metadata accessor for TranslationCardView);
  v39 = v103;
  sub_1002A244C(a1, v103, type metadata accessor for TranslationCardView);
  v101 = swift_allocObject();
  sub_1002A28E0(v39, v101 + v38, type metadata accessor for TranslationCardView);
  v103 = sub_10029D200();
  v97 = v26;
  Bindable.wrappedValue.getter();
  v40 = v132;
  swift_getKeyPath();
  *&v132 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v39) = *(v40 + 194);

  v90[1] = a1;
  v41 = v105;
  sub_1002A244C(a1, v105, type metadata accessor for TranslationCardView);
  v42 = swift_allocObject();
  sub_1002A28E0(v41, v42 + v38, type metadata accessor for TranslationCardView);
  *v16 = v98;
  *(v16 + 8) = xmmword_1002D8D70;
  v43 = v99;
  sub_100023BD4(v127, &v16[*(v99 + 24)], &qword_1003AFCE0);
  *&v16[v43[7]] = v96;
  v16[v43[8]] = 0;
  *&v16[v43[9]] = 0;
  *&v16[v43[10]] = 0;
  v16[v43[11]] = 0;
  v44 = &v16[v43[12]];
  v45 = v94;
  *v44 = v95;
  *(v44 + 1) = v45;
  v44[16] = v93;
  v46 = &v16[v43[13]];
  v47 = v92;
  *v46 = v100;
  v46[1] = v47;
  *&v16[v43[14]] = v91;
  v16[v43[15]] = 0;
  v48 = &v16[v43[16]];
  v49 = v102;
  *v48 = sub_1002A3440;
  *(v48 + 1) = v49;
  v50 = &v16[v43[17]];
  v51 = v101;
  *v50 = sub_1002A2F78;
  v50[1] = v51;
  v52 = &v16[v43[18]];
  *v52 = 0;
  *(v52 + 1) = 0;
  *&v16[v43[19]] = v103;
  v16[v43[20]] = (v39 & 1) == 0;
  v53 = &v16[v43[21]];
  *v53 = sub_1002A3444;
  *(v53 + 1) = v42;
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
  LazyState.init(wrappedValue:)();
  static Font.title.getter();
  v54 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v56 = v16;
  v57 = v108;
  sub_1002A28E0(v56, v108, type metadata accessor for LanguageAwareText);
  v58 = (v57 + *(v110 + 36));
  *v58 = KeyPath;
  v58[1] = v54;
  sub_1002A2948();
  v59 = v107;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v57, &qword_1003BC2E8);
  v60 = v59;
  v61 = v111;
  sub_100023BD4(v60, v111, &qword_1003BC2F0);
  *(v61 + *(v106 + 36)) = 0x3FF199999999999ALL;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v61;
  v63 = v112;
  sub_100023BD4(v62, v112, &qword_1003BC2F8);
  v64 = (v63 + *(v109 + 36));
  v65 = v137;
  v64[4] = v136;
  v64[5] = v65;
  v64[6] = v138;
  v66 = v133;
  *v64 = v132;
  v64[1] = v66;
  v67 = v135;
  v64[2] = v134;
  v64[3] = v67;
  v127 = swift_getKeyPath();
  Bindable.wrappedValue.getter();
  v68 = v131;
  swift_getKeyPath();
  v131 = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = *(v68 + 72);

  v70 = v122;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();

  LOBYTE(v69) = Locale.isRTL()();
  v128 = *(v128 + 8);
  (v128)(v70, v130);
  v71 = v120;
  v72 = &enum case for LayoutDirection.rightToLeft(_:);
  if ((v69 & 1) == 0)
  {
    v72 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v73 = v119;
  v74 = v121;
  (*(v120 + 104))(v119, *v72, v121);
  v75 = v114;
  v76 = &v114[*(v113 + 36)];
  v77 = sub_100005AD4(&qword_1003AA938);
  (*(v71 + 32))(&v76[*(v77 + 28)], v73, v74);
  *v76 = v127;
  sub_100023BD4(v63, v75, &qword_1003BC300);
  Bindable.wrappedValue.getter();
  v78 = v131;
  swift_getKeyPath();
  v131 = v78;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = *(v78 + 72);

  dispatch thunk of PersistedTranslation.sourceLocale.getter();

  v80 = v123;
  Locale.language.getter();
  (v128)(v70, v130);
  sub_1002A2A30();
  v81 = v115;
  View.typesettingLanguage(_:isEnabled:)();
  (*(v124 + 8))(v80, v125);
  sub_100009EBC(v75, &qword_1003BC308);
  v82 = v117;
  v83 = *(v117 + 16);
  v84 = v116;
  v85 = v118;
  v83(v116, v81, v118);
  v86 = v126;
  v83(v126, v84, v85);
  v87 = &v86[*(sub_100005AD4(&qword_1003BC350) + 48)];
  *v87 = 0;
  v87[8] = 0;
  v88 = *(v82 + 8);
  v88(v81, v85);
  return (v88)(v84, v85);
}

uint64_t sub_10029CE90(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = &type metadata for TranslateFeatures;
  v29[4] = sub_100009DF8();
  LOBYTE(v29[0]) = 5;
  v9 = isFeatureEnabled(_:)();
  sub_100008664(v29);
  if (v9)
  {
    result = dispatch thunk of PersistedTranslation.disambiguableResult.getter();
    if (!result)
    {
      return result;
    }

    v11 = result;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v13 = [v11 sentenceWithUUID:isa];

    if (v13)
    {
      v14 = _LTDisambiguableSentence.menu(forLinkIndex:)(a3);

      return v14;
    }

    if (qword_1003A9238 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000078E8(v15, qword_1003D27B8);
    (*(v6 + 16))(v8, a2, v5);
    v16 = v11;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v19 = 136446466;
      sub_1002A2CF0(&qword_1003AC7D0, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v6 + 8))(v8, v5);
      v23 = sub_10028D78C(v20, v22, v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2114;
      *(v19 + 14) = v16;
      v24 = v27;
      *v27 = v11;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to find sentence UUID %{public}s in result %{public}@", v19, 0x16u);
      sub_100009EBC(v24, &unk_1003AECA0);

      sub_100008664(v28);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  return 0;
}

void *sub_10029D200()
{
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v4 + 194);

  if (v0)
  {
    return 0;
  }

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v4 + 184);
  v2 = v1;

  return v1;
}

uint64_t sub_10029D348(uint64_t a1, char a2)
{
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D28F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "TTS play button action invoked", v10, 2u);
  }

  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v11 = v20;
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    v20 = v11;
    sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*(v11 + 72) setTtsPlaybackRateDouble:*&a1];
    v12 = sub_10003204C(*&a1);
    v13 = v12;
    v14 = *(v11 + 162);
    if (v14 == 4)
    {
      if (v12 != 4)
      {
LABEL_8:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v19 - 2) = v11;
        *(&v19 - 8) = v13;
        v20 = v11;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_11;
      }
    }

    else if (v14 != v12)
    {
      goto LABEL_8;
    }

    *(v11 + 162) = v12;
  }

LABEL_11:
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v11;
  *(v17 + 40) = 1;
  sub_10005E36C(0, 0, v6, &unk_1002EE508, v17);
}
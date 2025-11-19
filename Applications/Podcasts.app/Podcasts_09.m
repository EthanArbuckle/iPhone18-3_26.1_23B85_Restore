void sub_1001C1B94(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1001C1F14()
{
  v1 = *(v0 + 88);
  if (v1 > 5)
  {
    return 2;
  }

  else
  {
    return qword_100402A88[v1];
  }
}

uint64_t sub_1001C1F5C()
{

  return swift_deallocClassInstance();
}

double sub_1001C1FE0()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  return result;
}

uint64_t sub_1001C2010()
{
  v1 = type metadata accessor for BookmarksControllerEpisodeData();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(v0 + 16))
  {
    return 0;
  }

  sub_1003972E0(v4);
  v5 = BookmarksController.notBookmarkedEpisodesCount(in:)();
  (*(v2 + 8))(v4, v1);
  v6 = [objc_opt_self() mainBundle];
  v7 = "SAVE_EPISODE_SWIPE_TITLE";
  if (v5 >= 2)
  {
    v8 = 0xD000000000000019;
  }

  else
  {
    v7 = "SAVE_EPISODE_BUTTON_SHORT";
    v8 = 0xD000000000000023;
  }

  v14._object = 0xE000000000000000;
  v9 = v7 | 0x8000000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v6, v10, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1001C21B4()
{
  v1 = type metadata accessor for InteractionContext();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BookmarksControllerEpisodeData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 16))
  {

    sub_1003972E0(v8);
    swift_beginAccess();
    if (*(v0 + 24))
    {

      dispatch thunk of ContextActionsConfiguration.context.getter();

      v9 = InteractionContext.view.getter();
      (*(v2 + 8))(v4, v1);
      if ((v9 - 5) > 2u)
      {
        InteractionContext.EpisodeCellType.showsEpisodeControls.getter();
      }
    }

    BookmarksController.bookmarkEpisodes(with:showHUDConfirmation:)();

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1001C23C8()
{

  v1 = OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_contextActionType);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BookmarkEpisodeContextAction()
{
  result = qword_100575718;
  if (!qword_100575718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C24F0()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001C25E8()
{
  if (!qword_10057FEF0)
  {
    type metadata accessor for ContextActionType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10057FEF0);
    }
  }
}

uint64_t sub_1001C264C()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1001C267C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_1001C270C@<D0>(uint64_t a1@<X8>)
{
  sub_1001C2A44(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001C274C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001C27AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001C280C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001C286C()
{
  v1 = type metadata accessor for BookmarksControllerEpisodeData();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 16))
  {

    sub_1003972E0(v4);
    v5 = BookmarksController.containsNotBookmarkedEpisodes(in:)();

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1001C2978(uint64_t a1)
{
  result = sub_1001C2A00(&unk_1005821C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C29BC(uint64_t a1)
{
  result = sub_1001C2A00(&qword_100575868);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C2A00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BookmarkEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1001C2A44@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemOrangeColor];
  v3 = [objc_opt_self() mainBundle];
  v8._object = 0xE400000000000000;
  v4._object = 0x8000000100467560;
  v4._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 1702256979;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8);

  *a1 = v2;
  result = 3.77673152e209;
  *(a1 + 8) = xmmword_100402AC0;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1001C2B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100575870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2B94(uint64_t a1)
{
  v2 = sub_100168088(&qword_100575870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C2BFC()
{
  v1 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v4 = *(v0 + 104);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v4 + v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for PodcastContextActionDataType;
LABEL_6:
    sub_1001C3734(v3, v6);
    goto LABEL_7;
  }

  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for PodcastContextActionDataType.Kind;
    goto LABEL_6;
  }

  v9 = v0;
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 2;
  dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
  dispatch thunk of PodcastStateMachine.currentState.getter();

  v10 = PodcastState.isSubscribed.getter();
  sub_1001C3794(v12);
  if (v10)
  {
    sub_1000044A0((v9 + 16), *(v9 + 40));
    v7 = dispatch thunk of LibraryActionControllerProtocol.hasDownloadedEpisodes(podcastUuid:)();

    return v7 & 1;
  }

LABEL_7:
  v7 = 0;
  return v7 & 1;
}

void sub_1001C2DBC()
{
  v1 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for PresentationSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0[13];
  if (v11)
  {
    v12 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v11 + v12, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = type metadata accessor for PodcastContextActionDataType;
    }

    else
    {
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        swift_beginAccess();
        if (v0[14])
        {

          dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

          if ((*(v5 + 48))(v3, 1, v4) != 1)
          {
            (*(v5 + 32))(v7, v3, v4);
            sub_1000044A0(v0 + 7, v0[10]);
            v14 = dispatch thunk of LibraryRemovalControllerProtocol.removeAllDownloadsAlertController(uuid:)();

            PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

            (*(v5 + 8))(v7, v4);
            return;
          }
        }

        else
        {

          (*(v5 + 56))(v3, 1, 1, v4);
        }

        sub_100009104(v3, &unk_10057BB90);
        return;
      }

      v13 = type metadata accessor for PodcastContextActionDataType.Kind;
    }

    sub_1001C3734(v10, v13);
  }
}

uint64_t sub_1001C30F0()
{
  sub_100004590(v0 + 16);
  sub_100004590(v0 + 56);

  v1 = OBJC_IVAR____TtC8Podcasts39RemoveAllDownloadsFromShowContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts39RemoveAllDownloadsFromShowContextAction_contextActionType, &qword_100575870);
  return v0;
}

uint64_t sub_1001C31A8()
{
  sub_1001C30F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveAllDownloadsFromShowContextAction()
{
  result = qword_1005758A0;
  if (!qword_1005758A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C3254()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001C337C()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_1001C33B4()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_1001C33E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts39RemoveAllDownloadsFromShowContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001C3474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1001C350C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1001C35A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001C3604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001C3668(uint64_t a1)
{
  result = sub_1001C36F0(&unk_1005822B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C36AC(uint64_t a1)
{
  result = sub_1001C36F0(&unk_1005759B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C36F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveAllDownloadsFromShowContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C3734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1001C37E8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v4 = &unk_100575B68;
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v2++, 1);
      if (v7)
      {
        break;
      }

      v8 = [isUniquelyReferenced_nonNull_bridgeObject items];
      sub_100168088(&unk_100574A00);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v11;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v34)
          {
            goto LABEL_43;
          }

          v18 = v14 + 8 * v15 + 32;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_45;
            }

            sub_100009FAC(&unk_100575B70, v4);
            v19 = v4;
            for (i = 0; i != v17; ++i)
            {
              sub_100168088(v19);
              v21 = sub_1003708F4(v33, i, v9);
              v23 = *v22;
              swift_unknownObjectRetain();
              (v21)(v33, 0);
              *(v18 + 8 * i) = v23;
              v19 = v4;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
            v19 = v4;
          }

          v4 = v19;

          v5 = v28;
          v3 = v32;
          if (v34 >= 1)
          {
            v24 = *(v14 + 16);
            v7 = __OFADD__(v24, v34);
            v25 = v24 + v34;
            if (v7)
            {
              goto LABEL_44;
            }

            *(v14 + 16) = v25;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v5 = v28;
      v3 = v32;
      if (v34 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v5)
      {
        return v3;
      }
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
LABEL_46:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001C3B80(uint64_t result)
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

  result = sub_100243134(result, v10, 1, v3);
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

uint64_t sub_1001C3C74(uint64_t result)
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

  result = sub_1002433B0(result, v11, 1, v3);
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

uint64_t sub_1001C3D60(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100243668(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ModernShelf();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001C3E8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001CA65C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001CA8A0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001C3F7C(uint64_t result)
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

  result = sub_100243690(result, v10, 1, v3);
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

uint64_t sub_1001C40D4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
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
  sub_1001CA65C(result);
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

void sub_1001C41CC()
{
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_updateUIDelayedCallbackDelay) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_updateUIDelayedCallback) = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_pageLoadTask) = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_subscriptions) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions) = &_swiftEmptySetSingleton;
  v1 = v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplatePageSubscription) = 0;
  v2 = OBJC_IVAR____TtC8Podcasts17CarPlayController_homeTabTemplate;
  *(v0 + v2) = sub_1001C4AB0();
  v3 = OBJC_IVAR____TtC8Podcasts17CarPlayController_newTabTemplate;
  *(v0 + v3) = sub_1001C4FF8();
  v4 = OBJC_IVAR____TtC8Podcasts17CarPlayController_libraryTabTemplate;
  *(v0 + v4) = sub_1001C5548();
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_tabBarTemplate) = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_previousStationsEnabled) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001C42FC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8Podcasts17CarPlayController_updateUIDelayedCallbackDelay] = 0x3FE0000000000000;
  *&v1[OBJC_IVAR____TtC8Podcasts17CarPlayController_updateUIDelayedCallback] = 0;
  *&v1[OBJC_IVAR____TtC8Podcasts17CarPlayController_pageLoadTask] = 0;
  *&v1[OBJC_IVAR____TtC8Podcasts17CarPlayController_subscriptions] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v1[OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplatePageSubscription] = 0;
  v6 = OBJC_IVAR____TtC8Podcasts17CarPlayController_homeTabTemplate;
  *&v2[v6] = sub_1001C4AB0();
  v7 = OBJC_IVAR____TtC8Podcasts17CarPlayController_newTabTemplate;
  *&v2[v7] = sub_1001C4FF8();
  v8 = OBJC_IVAR____TtC8Podcasts17CarPlayController_libraryTabTemplate;
  *&v2[v8] = sub_1001C5548();
  *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_tabBarTemplate] = 0;
  v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_previousStationsEnabled] = 2;
  *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_objectGraph] = a1;
  type metadata accessor for FreezableContentSubject();

  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_freezableContentSubject] = v14;
  sub_100009F1C(0, &qword_100575D00);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController] = v14;
  type metadata accessor for LibraryDataProvider(0);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_libraryDataProvider] = v14;
  sub_100168088(&unk_1005738E0);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_managedContextProvider] = v14;
  v9 = objc_allocWithZone(type metadata accessor for CarPlayNowPlayingController());

  *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingController] = sub_1002DFFB4(v10);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_1001C451C();

  return v11;
}

uint64_t sub_1001C451C()
{
  v1 = v0;
  v26 = type metadata accessor for FetchedResultsCountPublisher();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100168088(&qword_100575D10);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v23 - v4;
  v6 = sub_100168088(&unk_100575D18);
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v27 = &v23 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Configuring interface...", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v15 = sub_1001C59C8();
  sub_1001C5C94(v15);
  v16 = [*(v1 + OBJC_IVAR____TtC8Podcasts17CarPlayController_managedContextProvider) privateQueueContext];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009F1C(0, &qword_100573CE0);
  static MTPlaylist.predicateForStationsWithShows()();
  sub_100009F1C(0, &qword_1005729D0);
  v17 = v16;
  static OS_dispatch_queue.main.getter();
  FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)();
  sub_1001CDB30(&qword_100573BD0, &type metadata accessor for FetchedResultsCountPublisher);
  v18 = v26;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v3, v18);
  sub_100009FAC(&qword_100573BF0, &qword_100575D10);
  v19 = v27;
  v20 = v25;
  Publisher<>.removeDuplicates()();
  (*(v23 + 8))(v5, v20);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_100575D28, &unk_100575D18);
  v21 = v29;
  Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v19, v21);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id sub_1001C4AB0()
{
  v0 = type metadata accessor for CarPlayTemplateInfo(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33[-1] - v5;
  v7 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v7 - 8);
  v9 = &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33[-1] - v11;
  v13 = [objc_opt_self() mainBundle];
  v34._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x454D4F485F424154;
  v14._object = 0xE800000000000000;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v34);

  v16 = objc_allocWithZone(CPListTemplate);
  v17 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &unk_100575B00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19 = [v16 initWithTitle:v17 sections:isa];

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() _systemImageNamed:v21];

  if (v22)
  {
    v23 = [v22 imageWithRenderingMode:2];
  }

  else
  {
    v23 = 0;
  }

  [v20 setTabImage:v23];

  v24 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v25 = *(*(v24 - 8) + 56);
  v25(v6, 0, 1, v24);
  v25(v12, 1, 1, v24);
  v26 = *(v0 + 20);
  sub_100016A14(v6, v12, &unk_100575AE0);
  v12[v26] = 0;
  (*(v1 + 56))(v12, 0, 1, v0);
  sub_100010430(v12, v9, &unk_100578410);
  v27 = 0;
  if ((*(v1 + 48))(v9, 1, v0) != 1)
  {
    sub_1001CC668(v9, v3);
    v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1001CC6D4(v9, type metadata accessor for CarPlayTemplateInfo);
  }

  [v20 setUserInfo:v27];
  swift_unknownObjectRelease();

  sub_100009104(v12, &unk_100578410);
  v28 = type metadata accessor for Podcasts();
  v33[3] = v28;
  v33[4] = sub_1001CDB30(&qword_1005742C0, &type metadata accessor for Podcasts);
  v29 = sub_10000E680(v33);
  (*(*(v28 - 8) + 104))(v29, enum case for Podcasts.carPlaySiriCell(_:), v28);
  LOBYTE(v28) = isFeatureEnabled(_:)();
  sub_100004590(v33);
  if (v28)
  {
    v30 = [objc_allocWithZone(CPAssistantCellConfiguration) initWithPosition:0 visibility:2 assistantAction:0];
    [v20 setAssistantCellConfiguration:v30];
  }

  return v20;
}

id sub_1001C4FF8()
{
  v0 = type metadata accessor for CarPlayTemplateInfo(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = [objc_opt_self() mainBundle];
  v34._object = 0xE300000000000000;
  v16._countAndFlagsBits = 0x5F59414C50524143;
  v16._object = 0xEF57454E5F424154;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v34._countAndFlagsBits = 7824718;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v34);

  v18 = objc_allocWithZone(CPListTemplate);
  v19 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &unk_100575B00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21 = [v18 initWithTitle:v19 sections:isa];

  v22 = v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() _systemImageNamed:v23];

  if (v24)
  {
    v25 = [v24 imageWithRenderingMode:2];
  }

  else
  {
    v25 = 0;
  }

  [v22 setTabImage:v25];

  static ASKConstants.PodcastCatalogUrl.getter();
  URL.init(string:)();

  v26 = *(sub_100168088(&unk_10057C230) + 48);
  *v5 = 0;
  sub_100010430(v14, &v5[v26], &qword_100574040);
  v27 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v28 = *(*(v27 - 8) + 56);
  v28(v5, 0, 1, v27);
  v28(v11, 1, 1, v27);
  v29 = *(v0 + 20);
  sub_100016A14(v5, v11, &unk_100575AE0);
  v11[v29] = 0;
  (*(v1 + 56))(v11, 0, 1, v0);
  sub_100010430(v11, v8, &unk_100578410);
  v30 = 0;
  if ((*(v1 + 48))(v8, 1, v0) != 1)
  {
    sub_1001CC668(v8, v33);
    v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1001CC6D4(v8, type metadata accessor for CarPlayTemplateInfo);
  }

  [v22 setUserInfo:v30];
  swift_unknownObjectRelease();

  sub_100009104(v11, &unk_100578410);
  [v22 setShowsSpinnerWhileEmpty:1];

  sub_100009104(v14, &qword_100574040);
  return v22;
}

id sub_1001C5548()
{
  v0 = type metadata accessor for CarPlayTemplateInfo(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = [objc_opt_self() mainBundle];
  v30._object = 0xE700000000000000;
  v14._countAndFlagsBits = 0x5242494C5F424154;
  v14._object = 0xEB00000000595241;
  v30._countAndFlagsBits = 0x7972617262694CLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v30);

  v16 = objc_allocWithZone(CPListTemplate);
  v17 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &unk_100575B00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19 = [v16 initWithTitle:v17 sections:isa];

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() _systemImageNamed:v21];

  if (v22)
  {
    v23 = [v22 imageWithRenderingMode:2];
  }

  else
  {
    v23 = 0;
  }

  [v20 setTabImage:v23];

  v24 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v25 = *(*(v24 - 8) + 56);
  v25(v6, 0, 1, v24);
  v25(v12, 1, 1, v24);
  v26 = *(v0 + 20);
  sub_100016A14(v6, v12, &unk_100575AE0);
  v12[v26] = 0;
  (*(v1 + 56))(v12, 0, 1, v0);
  sub_100010430(v12, v9, &unk_100578410);
  v27 = 0;
  if ((*(v1 + 48))(v9, 1, v0) != 1)
  {
    sub_1001CC668(v9, v3);
    v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1001CC6D4(v9, type metadata accessor for CarPlayTemplateInfo);
  }

  [v20 setUserInfo:v27];
  swift_unknownObjectRelease();

  sub_100009104(v12, &unk_100578410);
  return v20;
}

BOOL sub_1001C59C8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v3 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPlaylistEntityName];
  sub_100009F1C(0, &qword_100573CE0);
  v4 = static MTPlaylist.predicateForStationsWithShows()();
  [v3 setPredicate:v4];

  [v3 setFetchLimit:1];
  v5 = [*(v1 + OBJC_IVAR____TtC8Podcasts17CarPlayController_managedContextProvider) mainQueueContext];
  v6 = NSManagedObjectContext.count<A>(for:)();

  return v6 > 0;
}

void sub_1001C5C94(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Podcasts17CarPlayController_previousStationsEnabled;
  v9 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_previousStationsEnabled);
  if (v9 == 2 || ((v9 ^ a1) & 1) != 0)
  {
    sub_100168088(&unk_100574680);
    v10 = swift_allocObject();
    v11 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_homeTabTemplate);
    if (a1)
    {
      *(v10 + 1) = xmmword_100402D70;
      v12 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_newTabTemplate);
      v10[4] = v11;
      v10[5] = v12;
      v13 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_libraryTabTemplate);
      v10[6] = v13;
      v14 = v11;
      v15 = v12;
      v16 = v13;
      v10[7] = sub_1001CCB70();
    }

    else
    {
      *(v10 + 1) = xmmword_100400800;
      v17 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_newTabTemplate);
      v10[4] = v11;
      v10[5] = v17;
      v18 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_libraryTabTemplate);
      v10[6] = v18;
      v19 = v11;
      v20 = v17;
      v21 = v18;
    }

    *(v2 + v8) = a1 & 1;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  aBlock[0] = v10;
  sub_100168088(&qword_100575D30);
  sub_100009FAC(&unk_100575D38, &qword_100575D30);
  if (Collection.isNotEmpty.getter())
  {
    v22 = OBJC_IVAR____TtC8Podcasts17CarPlayController_tabBarTemplate;
    v23 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_tabBarTemplate);
    if (v23)
    {
      sub_100009F1C(0, &qword_100575B28);
      v24 = v23;
      v25.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v24 updateTemplates:v25.super.isa];
    }

    else
    {
      v29 = objc_allocWithZone(CPTabBarTemplate);
      sub_100009F1C(0, &qword_100575B28);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v31 = [v29 initWithTemplates:isa];

      v32 = *(v2 + v22);
      *(v2 + v22) = v31;
      v25.super.isa = v31;

      v33 = *(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController);
      aBlock[4] = sub_1001C6294;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100185CE0;
      aBlock[3] = &unk_1004E3090;
      v34 = _Block_copy(aBlock);
      [v33 setRootTemplate:v25.super.isa animated:0 completion:v34];
      _Block_release(v34);
    }
  }

  else
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v26, v27, "The tab bar templates is empty with stations with enableStations: %{BOOL}d.", v28, 8u);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1001C60EC(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updated hasShowsInStations %{BOOL}d.", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1001C5C94(v6);
  }
}

uint64_t sub_1001C6294(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  if (a2)
  {
    sub_100009F1C(0, &qword_1005748A0);
    swift_errorRetain();
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error setting the root tab bar template: %@", v12, 0xCu);
      sub_100009104(v13, &qword_100575B20);
    }

    else
    {
    }
  }

  else
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully created the root tab bar template.", v17, 2u);
    }

    v6 = v9;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001C6520()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100575B30);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v26 = &v24 - v3;
  v4 = OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions;
  swift_beginAccess();
  v29 = v4;
  v5 = *(v1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_1001CDB30(&unk_100575AF0, &type metadata accessor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v8 = v32;
    v7 = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
  }

  else
  {
    v12 = -1 << *(v5 + 32);
    v7 = v5 + 56;
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

    v11 = v14 & *(v5 + 56);
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    v8 = v5;
  }

  v25 = v9;
  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
LABEL_18:
      sub_1000319D8();

      v25 = *(v1 + OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingController);
      v31 = *(v25 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackItemPeriodicUpdateSubject);
      sub_100168088(&qword_100574B10);
      sub_100009FAC(&unk_100574B20, &qword_100574B10);
      v31 = Publisher.eraseToAnyPublisher()();
      sub_100168088(&qword_100575B38);
      sub_100009FAC(&qword_100575B40, &qword_100575B38);
      v22 = v26;
      Publisher.dropFirst(_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100009FAC(&qword_100575B48, &qword_100575B30);
      v23 = v28;
      Publisher<>.sink(receiveValue:)();

      (*(v27 + 8))(v22, v23);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v31 = *(v25 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackItemDidChangeSubject);
      v31 = Publisher.eraseToAnyPublisher()();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      Publisher<>.sink(receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v30 = v21;
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v18 = v10;
        v19 = v11;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_18;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1001C6A54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
    swift_beginAccess();
    if (*(v2 + 24))
    {
      sub_100004428(v2, v5);

      v3 = v6;
      v4 = v7;
      sub_1000044A0(v5, v6);
      (*(v4 + 24))(v3, v4);
      sub_100004590(v5);
    }

    else
    {
    }
  }
}

void sub_1001C6B20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001C6B74();
  }
}

void sub_1001C6B74()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController) topTemplate];
  if (!v6)
  {
    return;
  }

  v27 = v6;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v27;
  }

  v9 = [v7 selectedTemplate];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;

      goto LABEL_9;
    }
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    v21 = v27;

    return;
  }

LABEL_9:
  v12 = [v11 sections];

  sub_100009F1C(0, &unk_100575B00);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_1001C37E8(v13);

  v15 = sub_10037FAA4(v14);

  if (v15)
  {
    v28 = v15;
    v16 = sub_100168088(&qword_100575B50);
    sub_100009FAC(&unk_100575B58, &qword_100575B50);
    if (Collection.isNotEmpty.getter())
    {
      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.carPlay.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = v15 >> 62;
      if (!os_log_type_enabled(v17, v18))
      {

        goto LABEL_20;
      }

      v16 = swift_slowAlloc();
      *v16 = 134217984;
      if (v19)
      {
        goto LABEL_32;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        *(v16 + 4) = i;

        _os_log_impl(&_mh_execute_header, v17, v18, "Attempting to update the play state for %ld items.", v16, 0xCu);

LABEL_20:
        v22 = *(v2 + 8);
        v2 += 8;
        v22(v5, v1);
        type metadata accessor for PlaybackController();
        BaseObjectGraph.inject<A>(_:)();
        v17 = v28;
        if (v19)
        {
          v1 = _CocoaArrayWrapper.endIndex.getter();
          if (!v1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v1)
          {
            goto LABEL_29;
          }
        }

        if (v1 >= 1)
        {
          break;
        }

        __break(1u);
LABEL_32:
        ;
      }

      for (j = 0; j != v1; ++j)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v15 + 8 * j + 32);
        }

        v25 = v24;
        [v24 setPlaying:sub_1003A7628() & 1];
      }

LABEL_29:
    }

    else
    {
    }
  }
}

uint64_t sub_1001C6FC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v118 = a2;
  v119 = a1;
  swift_getObjectType();
  v114 = type metadata accessor for PodcastStateModel();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100168088(&unk_100575CE0);
  __chkstk_darwin(v115);
  v117 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v110 - v7;
  v9 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v9 - 8);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v110 - v13;
  __chkstk_darwin(v15);
  v17 = &v110 - v16;
  v18 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v18 - 8);
  v20 = &v110 - v19;
  v21 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v21 - 8);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v110 - v25;
  *&v121[0] = v2;
  v27 = BaseObjectGraph.satisfying<A>(_:with:)();
  sub_1001D29AC(v20);
  v28 = type metadata accessor for CarPlayTemplateInfo(0);
  if (!(*(*(v28 - 8) + 48))(v20, 1, v28))
  {
    v119 = v27;
    v30 = v117;
    sub_100010430(v20, v26, &unk_100575AE0);
    sub_100009104(v20, &unk_100578410);
    v31 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    if ((*(*(v31 - 8) + 48))(v26, 1, v31) == 1)
    {

      goto LABEL_5;
    }

    v112 = v26;
    sub_100010430(v26, v23, &unk_100575AE0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = *(v23 + 3);
        v121[2] = *(v23 + 2);
        v121[3] = v35;
        v122 = v23[64];
        v36 = *(v23 + 1);
        v121[0] = *v23;
        v121[1] = v36;
        v37 = type metadata accessor for CarPlayEpisodesProvider();
        swift_allocObject();
        v38 = v119;

        sub_10019BB44(v121, v120);
        v39 = sub_100323678(v38, v121);
        sub_100018888(v121);

        v40 = v118;
        v118[3] = v37;
        v40[4] = &off_1004EDFF0;

        sub_100018888(v121);
        goto LABEL_25;
      case 1u:
        v63 = *v23;
        v64 = *(v23 + 1);
        v65 = v23[16];
        v66 = type metadata accessor for CarPlayLibraryShowProvider();
        swift_allocObject();

        v68 = sub_10022D450(v67, v63, v64, v65);
        v69 = v118;
        v118[3] = v66;
        v69[4] = &off_1004E6710;

        *v69 = v68;
        goto LABEL_28;
      case 2u:
        v60 = *v23;
        v61 = type metadata accessor for CarPlayLibraryShowsProvider();
        v42 = swift_allocObject();
        *(v42 + 16) = v119;
        *(v42 + 24) = v60;
        v62 = objc_opt_self();
        swift_retain_n();
        [v62 maximumItemCount];
        type metadata accessor for ShowListProvider();
        swift_allocObject();
        *(v42 + 32) = ShowListProvider.init(asPartOf:kind:pageSize:)();

        ShowListProvider.start()();

        v54 = v118;
        v118[3] = v61;
        v54[4] = &off_1004E6458;
        goto LABEL_19;
      case 4u:
        v55 = sub_100168088(&unk_10057C230);
        sub_1001B8A3C(&v23[*(v55 + 48)], v17);
        sub_100010430(v17, v14, &qword_100574040);
        v56 = type metadata accessor for CarPlayStoreProvider();
        swift_allocObject();

        v58 = sub_1002B7088(v57, v14);

        v59 = v118;
        v118[3] = v56;
        v59[4] = &off_1004E9F10;

        *v59 = v58;
        sub_100009104(v17, &qword_100574040);
        goto LABEL_28;
      case 5u:
        v44 = *v23;
        v45 = type metadata accessor for CarPlayShowcaseProvider();
        v46 = swift_allocObject();
        *(v46 + 16) = v119;
        *(v46 + 24) = v44;
        v47 = &off_1004EDA18;
        goto LABEL_27;
      case 6u:
        v48 = *v23;
        v49 = type metadata accessor for CarPlayStationDetailProvider();
        v50 = swift_allocObject();
        sub_100168088(&qword_100574B10);
        swift_allocObject();
        v51 = v119;

        v52 = CurrentValueSubject.init(_:)();
        *(v50 + 40) = v48;
        *(v50 + 48) = v52;
        *(v50 + 16) = v51;
        sub_100168088(&unk_100575CF0);

        BaseObjectGraph.inject<A>(_:)();
        *(v50 + 24) = v121[0];

        v53 = v118;
        v118[3] = v49;
        v53[4] = &off_1004F1518;

        *v53 = v50;
        goto LABEL_28;
      case 7u:
        v70 = *v23;
        v45 = type metadata accessor for CarPlayStoreEpisodesProvider();
        v46 = swift_allocObject();
        *(v46 + 16) = v119;
        *(v46 + 24) = v70;
        v47 = &off_1004F0288;
        goto LABEL_27;
      case 8u:
        v71 = sub_100168088(&unk_100575B10);
        v72 = *&v23[*(v71 + 48)];
        v73 = &v23[*(v71 + 64)];
        v74 = *v73;
        v75 = v73[8];
        result = sub_1001B8A3C(v23, v11);
        if (v75)
        {
          sub_100010430(v11, v17, &qword_100574040);
          v76 = type metadata accessor for CarPlayStoreShowProvider();
          swift_allocObject();

          v78 = sub_1002069F0(v77, v17, v72);

          v79 = v118;
          v118[3] = v76;
          v79[4] = &off_1004E4D70;

          *v79 = v78;
          sub_100009104(v11, &qword_100574040);
LABEL_28:
          v32 = v112;
          return sub_100009104(v32, &unk_100575AE0);
        }

        v110 = v72;
        v111 = v11;
        if (v74 < 0)
        {
          __break(1u);
          return result;
        }

        v84 = [*(v3 + OBJC_IVAR____TtC8Podcasts17CarPlayController_managedContextProvider) mainOrPrivateContext];
        __chkstk_darwin(v84);
        *(&v110 - 2) = v85;
        *(&v110 - 1) = v74;
        NSManagedObjectContext.performAndWait<A>(_:)();
        sub_100010430(v8, v30, &unk_100575CE0);
        v86 = v116;
        v87 = v114;
        v88 = v17;
        if ((*(v116 + 48))(v30, 1, v114) == 1)
        {
          v89 = v84;
          sub_100009104(v30, &unk_100575CE0);
LABEL_33:
          v91 = v111;
          sub_100010430(v111, v88, &qword_100574040);
          v92 = type metadata accessor for CarPlayStoreShowProvider();
          swift_allocObject();
          v93 = v110;

          v95 = sub_1002069F0(v94, v88, v93);

          v96 = v118;
          v118[3] = v92;
          v96[4] = &off_1004E4D70;

          *v96 = v95;
          sub_100009104(v8, &unk_100575CE0);
          sub_100009104(v91, &qword_100574040);
          goto LABEL_28;
        }

        (*(v86 + 32))(v113, v30, v87);
        PodcastStateModel.sanitizedState()();
        v90 = v119;
        v97 = PodcastStateModel.SanitizedState.rawValue.getter();
        v99 = v98;
        v100 = PodcastStateModel.SanitizedState.rawValue.getter();
        if (v97 == v100 && v99 == v101)
        {
        }

        else
        {
          v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v102 & 1) == 0)
          {
            v89 = v84;
            (*(v86 + 8))(v113, v87);
            goto LABEL_33;
          }
        }

        v103 = v113;
        v104 = PodcastStateModel.uuid.getter();
        v106 = v105;
        v107 = type metadata accessor for CarPlayLibraryShowProvider();
        swift_allocObject();
        v108 = sub_10022D450(v90, v104, v106, 10);
        v109 = v118;
        v118[3] = v107;
        v109[4] = &off_1004E6710;

        *v109 = v108;
        (*(v86 + 8))(v103, v87);
        sub_100009104(v8, &unk_100575CE0);
        sub_100009104(v111, &qword_100574040);
        goto LABEL_28;
      case 9u:
        v82 = *v23;
        v45 = type metadata accessor for CarPlayStoreShowsProvider();
        v46 = swift_allocObject();
        *(v46 + 16) = v119;
        *(v46 + 24) = v82;
        v47 = &off_1004F2D20;
LABEL_27:
        v83 = v118;
        v118[3] = v45;
        v83[4] = v47;
        *v83 = v46;
        goto LABEL_28;
      case 0xAu:
        v80 = type metadata accessor for CarPlayHomePageProvider();
        swift_allocObject();

        v39 = sub_1001ABB84(v81);

        v40 = v118;
        v118[3] = v80;
        v40[4] = &off_1004E2580;

LABEL_25:
        *v40 = v39;
        goto LABEL_28;
      case 0xBu:
        Provider = type metadata accessor for CarPlayLibraryProvider();
        v42 = swift_allocObject();
        *(v42 + 16) = v119;
        sub_100168088(&unk_100575CF0);

        BaseObjectGraph.inject<A>(_:)();
        *(v42 + 24) = v121[0];
        v43 = &off_1004F2938;
        goto LABEL_15;
      case 0xCu:
        Provider = type metadata accessor for CarPlayPlayingNextProvider();
        v42 = swift_allocObject();
        *(v42 + 16) = v119;
        type metadata accessor for PlaybackController();

        BaseObjectGraph.inject<A>(_:)();
        *(v42 + 24) = *&v121[0];
        v43 = &off_1004EBFE8;
        goto LABEL_15;
      case 0xEu:
        Provider = type metadata accessor for CarPlayStationsProvider();
        v42 = swift_allocObject();
        *(v42 + 16) = v119;
        sub_100168088(&unk_100575CF0);

        BaseObjectGraph.inject<A>(_:)();
        *(v42 + 24) = v121[0];
        v43 = &off_1004E2538;
LABEL_15:
        v54 = v118;
        v118[3] = Provider;
        v54[4] = v43;
LABEL_19:

        *v54 = v42;
        goto LABEL_28;
      default:

        sub_1001CC6D4(v23, type metadata accessor for CarPlayTemplateInfo.TemplateType);
        v32 = v112;
        goto LABEL_6;
    }
  }

  sub_100009104(v20, &unk_100578410);
  v29 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
LABEL_5:
  v32 = v26;
LABEL_6:
  v33 = v118;
  v118[4] = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  return sub_100009104(v32, &unk_100575AE0);
}

void sub_1001C8018(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (v15 == 3)
  {
    v40 = 3;
    v41 = v13;
    v39 = sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v42 = v6;
    v43 = v7;
    if (v19)
    {
      v37[1] = a3;
      v38 = a2;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136315138;
      v22 = [v16 title];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE200000000000000;
        v24 = 16718;
      }

      v28 = sub_1000153E0(v24, v26, v44);

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Did receive section updates for list template with title %s.", v20, 0xCu);
      sub_100004590(v21);

      v6 = v42;
      v27 = *(v43 + 8);
      v27(v12, v42);
      a2 = v38;
    }

    else
    {

      v27 = *(v7 + 8);
      v27(v12, v6);
    }

    static OS_os_log.carPlay.getter();
    swift_bridgeObjectRetain_n();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      if (v14 >> 62)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v32 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v31 + 4) = v32;
      *(v31 + 12) = 2048;
      v33 = sub_1001C37E8(v14);
      if (v33 >> 62)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v31 + 14) = v34;

      _os_log_impl(&_mh_execute_header, v29, v30, "Did receive section updates with section count %ld and total section items count %ld.", v31, 0x16u);

      v6 = v42;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v27(v9, v6);
    v13 = v41;
    v15 = v40;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    sub_1001C8420(a2, v14, v13, v15);
  }
}

void sub_1001C8420(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v109 = a3;
  v9 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v9 - 8);
  v102 = &v92 - v10;
  v101 = type metadata accessor for CarPlayTemplateInfo(0);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v93 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v12 - 8);
  v97 = &v92 - v13;
  v14 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v14 - 8);
  v98 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v92 - v17;
  v95 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v95);
  v96 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v106 = (&v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v108 = type metadata accessor for DispatchTime();
  v22 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v107 = &v92 - v25;
  v26 = OBJC_IVAR____TtC8Podcasts17CarPlayController_updateUIDelayedCallback;
  v27 = *(v4 + OBJC_IVAR____TtC8Podcasts17CarPlayController_updateUIDelayedCallback);
  v110 = a4;
  if (v27)
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v5 + v26) = 0;

  v94 = v26;
  if (*(v5 + v26))
  {

    v28 = v105;
    static DispatchTime.now()();
    v29 = v106;
    *v106 = 500;
    (*(v20 + 104))(v29, enum case for DispatchTimeInterval.milliseconds(_:), v19);
    v30 = v107;
    + infix(_:_:)();
    (*(v20 + 8))(v29, v19);
    v104 = v19;
    v103 = a2;
    v31 = a1;
    v32 = v5;
    v33 = *(v22 + 8);
    v34 = v20;
    v35 = v22;
    v36 = v108;
    v33(v28, v108);
    sub_100009F1C(0, &qword_1005729D0);
    v37 = static OS_dispatch_queue.main.getter();
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v38 = v36;
    v22 = v35;
    v20 = v34;
    v33(v30, v38);
    v5 = v32;
    a1 = v31;
    a2 = v103;
    v19 = v104;
  }

  v39 = v110;
  if (v110 > 1u)
  {
    if (v110 == 2)
    {
      v51 = v109;
      if (v109)
      {
        sub_100168088(&qword_100574690);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_100400790;
        *(v52 + 32) = a2;
        *(v52 + 40) = v51;
      }

      v85 = 0;
    }

    else
    {
      v86 = OBJC_IVAR____TtC8Podcasts17CarPlayController_pageLoadTask;
      if (*(v5 + OBJC_IVAR____TtC8Podcasts17CarPlayController_pageLoadTask))
      {

        sub_100168088(&qword_100575C50);
        Task.cancel()();
      }

      else
      {
      }

      v87 = v102;
      static TaskPriority.userInitiated.getter();
      v88 = type metadata accessor for TaskPriority();
      (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
      v89 = CarPlayPageLoadCoordinator.start(priority:maximumTasks:)(v87, 3);
      sub_100009104(v87, &qword_100578010);
      *(v5 + v86) = v89;

      v85 = 0;
    }
  }

  else if (v110)
  {
    if (a2)
    {
      v53 = a1;
      v54 = objc_opt_self();
      v55 = v109;
      sub_100013CB4(a2);
      v56 = [v54 mainBundle];
      v118._object = 0xEE0064616F6C206FLL;
      v57._countAndFlagsBits = 0x545F44454C494146;
      v57._object = 0xEE0044414F4C5F4FLL;
      v118._countAndFlagsBits = 0x742064656C696146;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v56, v58, v118);

      v59 = [v54 mainBundle];
      v119._object = 0xEC00000079727465;
      v60._countAndFlagsBits = 0x525F4F545F504154;
      v60._object = 0xEC00000059525445;
      v119._countAndFlagsBits = 0x72206F7420706154;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v119);

      v62 = objc_allocWithZone(CPListItem);
      v63 = String._bridgeToObjectiveC()();

      v64 = String._bridgeToObjectiveC()();

      v65 = [v62 initWithText:v63 detailText:v64];

      v66 = swift_allocObject();
      *(v66 + 16) = a2;
      *(v66 + 24) = v55;
      v116 = sub_1001CDA84;
      v117 = v66;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_100372F30;
      v115 = &unk_1004E3018;
      v67 = _Block_copy(&aBlock);
      v68 = a2;
      sub_100013CB4(a2);

      [v65 setHandler:v67];
      _Block_release(v67);
      v69 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
      v70 = v97;
      swift_storeEnumTagMultiPayload();
      v71 = *(*(v69 - 8) + 56);
      v71(v70, 0, 1, v69);
      v72 = v99;
      v71(v99, 1, 1, v69);
      v73 = v101;
      v74 = *(v101 + 20);
      sub_100016A14(v70, v72, &unk_100575AE0);
      *(v72 + v74) = 0;
      v75 = v100;
      (*(v100 + 56))(v72, 0, 1, v73);
      v76 = v98;
      sub_100010430(v72, v98, &unk_100578410);
      v77 = (*(v75 + 48))(v76, 1, v73);
      v78 = 0;
      if (v77 != 1)
      {
        sub_1001CC668(v76, v93);
        v78 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        sub_1001CC6D4(v76, type metadata accessor for CarPlayTemplateInfo);
      }

      [v65 setUserInfo:v78];
      swift_unknownObjectRelease();
      sub_100009104(v72, &unk_100578410);
      sub_100168088(&unk_100574680);
      v79 = swift_allocObject();
      v108 = xmmword_1004007B0;
      *(v79 + 16) = xmmword_1004007B0;
      inited = swift_initStackObject();
      *(inited + 16) = v108;
      *(inited + 32) = v65;
      v81 = objc_allocWithZone(CPListSection);
      v82 = v65;
      sub_1001AA058(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v84 = [v81 initWithItems:isa];

      *(v79 + 32) = v84;
      a2 = v68;
      sub_1001CDAAC(v68, v109, 1);

      v85 = 0;
      a1 = v53;
      v39 = v110;
    }

    else
    {
      v85 = 0;
    }
  }

  else
  {
    if (a2)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = a1;
      v116 = sub_1001CDB28;
      v117 = v40;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_10000F038;
      v115 = &unk_1004E3068;
      _Block_copy(&aBlock);
      v111 = _swiftEmptyArrayStorage;
      sub_1001CDB30(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
      v41 = a1;
      sub_100168088(&unk_100575CD0);
      sub_100009FAC(&qword_10057D390, &unk_100575CD0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v42 = DispatchWorkItem.init(flags:block:)();

      v43 = v94;
      if (*(v5 + v94))
      {

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      *(v5 + v43) = v42;

      if (*(v5 + v43))
      {

        v44 = v105;
        static DispatchTime.now()();
        v45 = v106;
        *v106 = 500;
        (*(v20 + 104))(v45, enum case for DispatchTimeInterval.milliseconds(_:), v19);
        v46 = v107;
        + infix(_:_:)();
        (*(v20 + 8))(v45, v19);
        v47 = *(v22 + 8);
        v48 = v44;
        v49 = v108;
        v47(v48, v108);
        sub_100009F1C(0, &qword_1005729D0);
        v50 = static OS_dispatch_queue.main.getter();
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v47(v46, v49);
      }

      return;
    }

    v85 = 1;
  }

  [a1 setShowsSpinnerWhileEmpty:v85];
  v90 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setEmptyViewSubtitleVariants:v90];

  sub_100009F1C(0, &unk_100575B00);
  v91 = Array._bridgeToObjectiveC()().super.isa;

  [a1 updateSections:v91];

  if (v39 == 3)
  {
    aBlock = a2;
    sub_100168088(&qword_100575C58);
    sub_100009FAC(&unk_100575C60, &qword_100575C58);
    if (Collection.isNotEmpty.getter())
    {
      sub_1001C6520();
    }
  }
}

void sub_1001C9398(void *a1)
{
  [a1 setShowsSpinnerWhileEmpty:1];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setEmptyViewSubtitleVariants:isa];

  sub_100009F1C(0, &unk_100575B00);
  v3 = Array._bridgeToObjectiveC()().super.isa;
  [a1 updateSections:v3];
}

uint64_t sub_1001C945C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for Logger();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[13] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[14] = v11;
  v8[15] = v10;

  return _swift_task_switch(sub_1001C9558, v11, v10);
}

uint64_t sub_1001C9558()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 72);
    v3 = *(Strong + OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingController);
    *(v0 + 136) = v3;
    v4 = *(v2 + *(type metadata accessor for CarPlayTemplateInfo(0) + 20));
    v3;
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_1001C96A8;
    v6 = *(v0 + 64);

    return sub_1002DF7D8(v6, v4);
  }

  else
  {

    (*(v0 + 40))(v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1001C96A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;

  if (v1)
  {
    v4[21] = a1;
    v7 = v4[14];
    v8 = v4[15];

    return _swift_task_switch(sub_1001C99F4, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[19] = v9;
    *v9 = v6;
    v9[1] = sub_1001C9838;

    return sub_1001C9D98();
  }
}

uint64_t sub_1001C9838()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1001C9BD8;
  }

  else
  {
    v5 = sub_1001C9974;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001C9974()
{
  v1 = *(v0 + 128);

  (*(v0 + 40))();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C99F4()
{
  v1 = *(v0 + 168);

  sub_1001CC8F4();
  swift_allocError();
  *v2 = v1;
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not successfully initiate playback and show Now Playing with error: %@.", v5, 0xCu);
    sub_100009104(v6, &qword_100575B20);
  }

  v8 = *(v0 + 128);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);

  (*(v10 + 8))(v9, v11);
  sub_1001C6520();

  (*(v0 + 40))(v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1001C9BD8()
{

  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not successfully initiate playback and show Now Playing with error: %@.", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20);
  }

  v6 = *(v0 + 128);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);

  (*(v8 + 8))(v7, v9);
  sub_1001C6520();

  (*(v0 + 40))(v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001C9D98()
{
  v1[14] = v0;
  v2 = type metadata accessor for Logger();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001C9E98, v4, v3);
}

uint64_t sub_1001C9E98()
{
  v1 = v0[14];

  v2 = *(v1 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController);
  v3 = [v2 templates];
  sub_100009F1C(0, &qword_100575B28);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v2;
  if (v4 >> 62)
  {
LABEL_24:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0[14];
  v7 = OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingController;
  if (v5)
  {
    v8 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v9 = *(v4 + 8 * v8 + 32);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_13;
        }
      }

      if (v9 == *(*(v6 + v7) + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template))
      {
        break;
      }

      ++v8;
      if (v10 == v5)
      {
        goto LABEL_14;
      }
    }

    v19 = v9;

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Showing the Now Playing template by popping to an existing template.", v23, 2u);
    }

    v24 = v0[18];
    v26 = v0[15];
    v25 = v0[16];

    (*(v25 + 8))(v24, v26);
    v0[6] = sub_1001CA4F4;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100185CE0;
    v0[5] = &unk_1004E2F78;
    v18 = _Block_copy(v0 + 2);
    v20 = &selRef_popToTemplate_animated_completion_;
  }

  else
  {
LABEL_14:

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Showing the Now Playing template by pushing a new template onto the stack.", v13, 2u);
    }

    v14 = v0[16];
    v15 = v0[17];
    v16 = v0[15];

    (*(v14 + 8))(v15, v16);
    v17 = *(*(v6 + v7) + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
    v0[12] = sub_1001CA4E8;
    v0[13] = 0;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100185CE0;
    v0[11] = &unk_1004E2FA0;
    v18 = _Block_copy(v0 + 8);
    v19 = v17;
    v20 = &selRef_pushTemplate_animated_completion_;
  }

  [v29 *v20];
  _Block_release(v18);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1001CA2DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v8 = a3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = [v8 title];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1000153E0(v15, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did finish pushing list template with title: %s", v11, 0xCu);
    sub_100004590(v12);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001CA500(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001CA65C(uint64_t a1)
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

uint64_t sub_1001CA6FC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575D48, &unk_100574640);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&unk_100574640);
            v9 = sub_10037076C(v13, i, a3);
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
        type metadata accessor for LegacyLockup();
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

uint64_t sub_1001CA8A0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&unk_100575B70, &qword_100575B68);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575B68);
            v9 = sub_1003708F4(v13, i, a3);
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
        sub_100168088(&unk_100574A00);
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

uint64_t sub_1001CAA50(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575C08, &qword_100575C00);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575C00);
            v9 = sub_100370874(v13, i, a3);
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
        sub_100009F1C(0, &qword_10057A130);
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

uint64_t sub_1001CAC04(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575BE8, &qword_100575BE0);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575BE0);
            v9 = sub_100370874(v13, i, a3);
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
        sub_100009F1C(0, &qword_100575BD8);
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

uint64_t sub_1001CADB8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575BD0, &qword_100575BC8);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575BC8);
            v9 = sub_10037097C(v13, i, a3);
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
        sub_100009F1C(0, &qword_100575BC0);
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

uint64_t sub_1001CAF6C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575B88, &qword_100575B80);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575B80);
            v9 = sub_100370874(v13, i, a3);
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
        sub_100009F1C(0, &qword_100573660);
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

uint64_t sub_1001CB120(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575BB8, &qword_100575BB0);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575BB0);
            v9 = sub_1003707EC(v13, i, a3);
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
        type metadata accessor for JobPipeline(0);
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

uint64_t sub_1001CB2C4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575BA8, &qword_100575BA0);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575BA0);
            v9 = sub_10037076C(v13, i, a3);
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
        type metadata accessor for Episode();
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

uint64_t sub_1001CB468(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100009FAC(&qword_100575B98, &qword_100575B90);
          for (i = 0; i != v6; ++i)
          {
            sub_100168088(&qword_100575B90);
            v9 = sub_10037076C(v13, i, a3);
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
        type metadata accessor for StationShow();
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

uint64_t sub_1001CB60C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = a3;
  v146 = a2;
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v134 = v126 - v9;
  v10 = type metadata accessor for Logger();
  v142 = *(v10 - 8);
  __chkstk_darwin(v10);
  v141 = v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = v126 - v13;
  __chkstk_darwin(v14);
  v131 = v126 - v15;
  v16 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v16 - 8);
  v136 = (v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v20 = v126 - v19;
  v21 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v21 - 8);
  v137 = v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v138 = v126 - v24;
  __chkstk_darwin(v25);
  v27 = v126 - v26;
  v28 = type metadata accessor for CarPlayTemplateInfo(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v30;
  __chkstk_darwin(v32);
  v34 = v126 - v33;
  v143 = a5;
  v144 = a1;
  sub_1001D29AC(v27);
  v140 = v29;
  v37 = *(v29 + 48);
  v36 = v29 + 48;
  v35 = v37;
  v139 = v28;
  if (v37(v27, 1, v28) == 1)
  {
    v38 = sub_100009104(v27, &unk_100578410);
    return v146(v38);
  }

  else
  {
    v126[0] = v35;
    v126[1] = v36;
    v130 = v31;
    v127 = v10;
    v135 = v20;
    v129 = v34;
    sub_1001CC604(v27, v34);
    v40 = OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions;
    swift_beginAccess();
    v128 = a4;
    v41 = *(a4 + v40);
    if ((v41 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_1001CDB30(&unk_100575AF0, &type metadata accessor for AnyCancellable);
      result = Set.Iterator.init(_cocoa:)();
      v42 = v151;
      v43 = v152;
      v44 = v153;
      v45 = v154;
      v46 = v155;
    }

    else
    {
      v47 = -1 << *(v41 + 32);
      v43 = v41 + 56;
      v44 = ~v47;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v46 = v49 & *(v41 + 56);
      result = swift_bridgeObjectRetain_n();
      v45 = 0;
      v42 = v41;
    }

    if (v42 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v50 = v45;
      v51 = v46;
      v52 = v45;
      if (!v46)
      {
        break;
      }

LABEL_14:
      v53 = (v51 - 1) & v51;
      v54 = *(*(v42 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));

      if (!v54)
      {
LABEL_20:
        sub_1000319D8();

        v56 = v129;
        v57 = v135;
        sub_100010430(v129, v135, &unk_100575AE0);
        v58 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
        v60 = v142;
        v61 = v130;
        v62 = v141;
        if (v59 == 1)
        {
          goto LABEL_37;
        }

        v63 = v136;
        sub_100010430(v57, v136, &unk_100575AE0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 3)
        {
          v78 = v63[1];
          aBlock = *v63;
          *v150 = v78;
          *&v150[9] = *(v63 + 25);
          sub_100009F1C(0, &qword_1005748A0);
          v79 = v132;
          static OS_os_log.carPlay.getter();
          swift_unknownObjectRetain();
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            *&v147 = v83;
            *v82 = 136315138;
            v84 = sub_1001D2C58();
            if (v85)
            {
              v86 = v85;
            }

            else
            {
              v84 = 16718;
              v86 = 0xE200000000000000;
            }

            v87 = sub_1000153E0(v84, v86, &v147);

            *(v82 + 4) = v87;
            _os_log_impl(&_mh_execute_header, v80, v81, "Did select item with title %s for template info type now playing.", v82, 0xCu);
            sub_100004590(v83);
          }

          (*(v60 + 8))(v79, v127);
          v88 = v134;
          static TaskPriority.userInitiated.getter();
          v89 = type metadata accessor for TaskPriority();
          (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
          v90 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1001CC734(&aBlock, &v147);
          v91 = v130;
          sub_1001CC668(v56, v130);
          type metadata accessor for MainActor();
          v92 = v145;

          v93 = static MainActor.shared.getter();
          v94 = (*(v140 + 80) + 97) & ~*(v140 + 80);
          v95 = swift_allocObject();
          *(v95 + 16) = v93;
          *(v95 + 24) = &protocol witness table for MainActor;
          *(v95 + 32) = v146;
          *(v95 + 40) = v92;
          *(v95 + 48) = v90;
          v96 = v148[0];
          *(v95 + 56) = v147;
          *(v95 + 72) = v96;
          *(v95 + 81) = *(v148 + 9);
          sub_1001CC604(v91, v95 + v94);

          sub_100217A04(0, 0, v88, &unk_100402DD0, v95);

          sub_1001CC8A0(&aBlock);
        }

        else
        {
          if (EnumCaseMultiPayload == 13)
          {
            sub_100009F1C(0, &qword_1005748A0);
            v65 = v131;
            static OS_os_log.carPlay.getter();
            swift_unknownObjectRetain();
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *&aBlock = v69;
              *v68 = 136315138;
              v70 = sub_1001D2C58();
              if (v71)
              {
                v72 = v71;
              }

              else
              {
                v70 = 16718;
                v72 = 0xE200000000000000;
              }

              v73 = sub_1000153E0(v70, v72, &aBlock);

              *(v68 + 4) = v73;
              _os_log_impl(&_mh_execute_header, v66, v67, "Did select item with title %s for template info type reload.", v68, 0xCu);
              sub_100004590(v69);
            }

            v74 = (*(v60 + 8))(v65, v127);
            v75 = v128;
            v146(v74);
            v76 = v75 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
            swift_beginAccess();
            if (*(v76 + 24))
            {
              sub_100004428(v76, &aBlock);
              swift_endAccess();
              v77 = *&v150[8];
              sub_1000044A0(&aBlock, *&v150[8]);
              (*(*(&v77 + 1) + 16))(v77, *(&v77 + 1));
              sub_1001CC6D4(v56, type metadata accessor for CarPlayTemplateInfo);
              sub_100004590(&aBlock);
            }

            else
            {
              sub_1001CC6D4(v56, type metadata accessor for CarPlayTemplateInfo);
              swift_endAccess();
            }

            return sub_100009104(v57, &unk_100575AE0);
          }

          sub_1001CC6D4(v63, type metadata accessor for CarPlayTemplateInfo.TemplateType);
LABEL_37:
          sub_100009F1C(0, &qword_1005748A0);
          static OS_os_log.carPlay.getter();
          swift_unknownObjectRetain();
          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = v56;
            v100 = v61;
            v101 = v62;
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            *&aBlock = v103;
            *v102 = 136315138;
            v104 = sub_1001D2C58();
            if (v105)
            {
              v106 = v105;
            }

            else
            {
              v104 = 16718;
              v106 = 0xE200000000000000;
            }

            v107 = sub_1000153E0(v104, v106, &aBlock);

            *(v102 + 4) = v107;
            _os_log_impl(&_mh_execute_header, v97, v98, "Did select item with title %s and will attempt to push to a new list template.", v102, 0xCu);
            sub_100004590(v103);

            v108 = v101;
            v61 = v100;
            v56 = v99;
            v57 = v135;
            v109 = (*(v60 + 8))(v108, v127);
          }

          else
          {

            v109 = (*(v60 + 8))(v62, v127);
          }

          v110 = v128;
          v146(v109);
          sub_1001D2C58();
          if (v111)
          {
            v112 = String._bridgeToObjectiveC()();
          }

          else
          {
            v112 = 0;
          }

          v113 = v138;
          v114 = v137;
          v115 = objc_allocWithZone(CPListTemplate);
          sub_100009F1C(0, &unk_100575B00);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v117 = [v115 initWithTitle:v112 sections:isa];

          sub_1001CC668(v56, v113);
          v118 = v139;
          (*(v140 + 56))(v113, 0, 1, v139);
          sub_100010430(v113, v114, &unk_100578410);
          if ((v126[0])(v114, 1, v118) == 1)
          {
            v119 = v117;
            v120 = 0;
          }

          else
          {
            sub_1001CC668(v114, v61);
            v121 = v117;
            v120 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            sub_1001CC6D4(v114, type metadata accessor for CarPlayTemplateInfo);
          }

          [v117 setUserInfo:v120];

          swift_unknownObjectRelease();
          sub_100009104(v113, &unk_100578410);
          [v117 setShowsSpinnerWhileEmpty:1];
          v122 = *(v110 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController);
          v123 = swift_allocObject();
          *(v123 + 16) = v117;
          *&v150[16] = sub_1001CC6CC;
          *&v150[24] = v123;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *v150 = sub_100185CE0;
          *&v150[8] = &unk_1004E2F00;
          v124 = _Block_copy(&aBlock);
          v125 = v117;

          [v122 pushTemplate:v125 animated:1 completion:v124];
          _Block_release(v124);
        }

        sub_1001CC6D4(v56, type metadata accessor for CarPlayTemplateInfo);
        return sub_100009104(v57, &unk_100575AE0);
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v45 = v52;
        v46 = v53;
        if ((v42 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v55 = __CocoaSet.Iterator.next()();
        if (v55)
        {
          *&v147 = v55;
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v52 = v45;
          v53 = v46;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v52 >= ((v44 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v51 = *(v43 + 8 * v52);
      ++v50;
      if (v51)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001CC604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayTemplateInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CC668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayTemplateInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CC6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CC790(uint64_t a1)
{
  v4 = *(type metadata accessor for CarPlayTemplateInfo(0) - 8);
  v5 = (*(v4 + 80) + 97) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001C51C;

  return sub_1001C945C(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

unint64_t sub_1001CC8F4()
{
  result = qword_10057DD70;
  if (!qword_10057DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DD70);
  }

  return result;
}

uint64_t sub_1001CC958(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1001CA65C(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for LegacyLockup();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001CCA5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1001CA65C(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100009F1C(0, &qword_10057A130);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1001CCB70()
{
  v0 = type metadata accessor for CarPlayTemplateInfo(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = [objc_opt_self() mainBundle];
  v30._object = 0xE800000000000000;
  v30._countAndFlagsBits = 0x736E6F6974617453;
  v14._object = 0x80000001004678D0;
  v14._countAndFlagsBits = 0xD000000000000014;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v30);

  v16 = objc_allocWithZone(CPListTemplate);
  v17 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &unk_100575B00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19 = [v16 initWithTitle:v17 sections:isa];

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() _systemImageNamed:v21];

  if (v22)
  {
    v23 = [v22 imageWithRenderingMode:2];
  }

  else
  {
    v23 = 0;
  }

  [v20 setTabImage:v23];

  v24 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v25 = *(*(v24 - 8) + 56);
  v25(v6, 0, 1, v24);
  v25(v12, 1, 1, v24);
  v26 = *(v0 + 20);
  sub_100016A14(v6, v12, &unk_100575AE0);
  v12[v26] = 0;
  (*(v1 + 56))(v12, 0, 1, v0);
  sub_100010430(v12, v9, &unk_100578410);
  v27 = 0;
  if ((*(v1 + 48))(v9, 1, v0) != 1)
  {
    sub_1001CC668(v9, v3);
    v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1001CC6D4(v9, type metadata accessor for CarPlayTemplateInfo);
  }

  [v20 setUserInfo:v27];
  swift_unknownObjectRelease();

  sub_100009104(v12, &unk_100578410);
  return v20;
}

uint64_t sub_1001CCFEC(void *a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v4 - 8);
  v78 = &v74 - v5;
  v6 = sub_100168088(&qword_100575C18);
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v74 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v77 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v74 - v12;
  __chkstk_darwin(v14);
  v76 = &v74 - v15;
  __chkstk_darwin(v16);
  v85 = &v74 - v17;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v21 = sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v82 = v21;
    v75 = v9;
    v83 = v8;
    v84 = v2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v89[0] = v26;
    *v25 = 136315138;
    v27 = [v22 tabTitle];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v31 = 0xE200000000000000;
      v29 = 16718;
    }

    v33 = sub_1000153E0(v29, v31, v89);

    *(v25 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Template will appear called for template with tab title %s.", v25, 0xCu);
    sub_100004590(v26);

    v32 = *(v75 + 8);
    v8 = v83;
    v32(v20, v83);
    v2 = v84;
    v21 = v82;
  }

  else
  {

    v32 = *(v9 + 8);
    v32(v20, v8);
  }

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  v35 = v85;
  if (v34)
  {
    v36 = v34;
    v37 = v22;
    static OS_os_log.carPlay.getter();
    v38 = v37;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v77 = v38;

    if (os_log_type_enabled(v39, v40))
    {
      v82 = v21;
      v83 = v8;
      v84 = v2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v89[0] = v42;
      *v41 = 136315138;
      v43 = [v36 title];
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v47 = 0xE200000000000000;
        v45 = 16718;
      }

      v56 = sub_1000153E0(v45, v47, v89);

      *(v41 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v39, v40, "Template will appear called for list template with title %s.", v41, 0xCu);
      sub_100004590(v42);

      v8 = v83;
      v32(v85, v83);
      v2 = v84;
    }

    else
    {

      v32(v35, v8);
    }

    sub_1001C6FC8(v36, &v87);
    if (v88)
    {
      sub_1000109E4(&v87, v89);
      FreezableContentSubject.unfreeze()();
      sub_100004428(v89, &v87);
      v57 = OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
      swift_beginAccess();
      sub_100016A14(&v87, v2 + v57, &unk_100575C20);
      swift_endAccess();
      v58 = v90;
      v59 = v91;
      sub_1000044A0(v89, v90);
      *&v87 = (*(v59 + 8))(v58, v59);
      sub_100009F1C(0, &qword_1005729D0);
      v60 = static OS_dispatch_queue.main.getter();
      v86 = v60;
      v61 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v62 = v78;
      (*(*(v61 - 8) + 56))(v78, 1, 1, v61);
      sub_100168088(&qword_100575C30);
      sub_100009FAC(&qword_100575C38, &qword_100575C30);
      sub_1000179F8();
      v63 = v79;
      Publisher.receive<A>(on:options:)();
      sub_100009104(v62, &qword_100575C10);

      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = swift_allocObject();
      *(v65 + 16) = v36;
      *(v65 + 24) = v64;
      sub_100009FAC(&qword_100575C48, &qword_100575C18);
      v66 = v77;
      v67 = v81;
      v68 = Publisher<>.sink(receiveValue:)();

      (*(v80 + 8))(v63, v67);
      v69 = OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplatePageSubscription;
      if (*(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplatePageSubscription))
      {

        AnyCancellable.cancel()();
      }

      *(v2 + v69) = v68;

      return sub_100004590(v89);
    }

    else
    {
      sub_100009104(&v87, &unk_100575C20);
      v70 = v76;
      static OS_os_log.carPlay.getter();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Could not create a provider and now playing controller.", v73, 2u);
      }

      else
      {
      }

      return (v32)(v70, v8);
    }
  }

  else
  {
    static OS_os_log.carPlay.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "aTemplate is not a list template.", v50, 2u);
    }

    v32(v13, v8);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      v52 = v77;
      static OS_os_log.carPlay.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Cancelling active template subscriptions for a template that is not a CPTabBarTemplate.", v55, 2u);
      }

      result = (v32)(v52, v8);
      if (*(v2 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplatePageSubscription))
      {

        AnyCancellable.cancel()();
      }
    }
  }

  return result;
}

uint64_t sub_1001CDAAC(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:

    case 2:

    case 1:

      return sub_1000112B4(result);
  }

  return result;
}

uint64_t sub_1001CDB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CDB78()
{
  v1 = [*(v0 + 16) podcastForStoreId:*(v0 + 24)];

  return PodcastStateModel.init(podcast:)();
}

uint64_t sub_1001CDBF0(int a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for NowPlayingViewModel.PlayerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  result = os_feature_enabled_red_sun();
  if (result)
  {
    v24 = a3;
    v23 = a1;
    v25 = result;
    sub_10002B22C();
    v16 = type metadata accessor for NowPlayingMediaPlayerController();
    v22[1] = sub_10002B2B0(&qword_100575E28, 255, &type metadata accessor for NowPlayingMediaPlayerController);
    v22[2] = v16;
    NowPlayingController.playerStyle.getter();

    v17 = *(v9 + 104);
    v17(v11, enum case for NowPlayingViewModel.PlayerStyle.mini(_:), v8);
    v18 = static NowPlayingViewModel.PlayerStyle.== infix(_:_:)();
    v19 = *(v9 + 8);
    v19(v11, v8);
    v19(v14, v8);
    if (v18)
    {
      v20 = *(v4 + 64);
      v21 = v24;
      *(v4 + 64) = a2;
      *(v4 + 72) = v21;
      sub_100013CB4(a2);
      sub_1000112B4(v20);
      v17(v14, enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:), v8);

      NowPlayingController.transition(to:animated:)();

      v19(v14, v8);
    }

    else
    {
      result = v25;
      if (!a2)
      {
        return result;
      }

      a2(v25);
    }

    return v25;
  }

  return result;
}

uint64_t sub_1001CDE5C(int a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for NowPlayingViewModel.PlayerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  result = os_feature_enabled_red_sun();
  if (result)
  {
    v24 = a3;
    v23 = a1;
    v25 = result;
    sub_10002B22C();
    v16 = type metadata accessor for NowPlayingMediaPlayerController();
    v22[1] = sub_10002B2B0(&qword_100575E28, 255, &type metadata accessor for NowPlayingMediaPlayerController);
    v22[2] = v16;
    NowPlayingController.playerStyle.getter();

    v17 = *(v9 + 104);
    v17(v11, enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:), v8);
    v18 = static NowPlayingViewModel.PlayerStyle.== infix(_:_:)();
    v19 = *(v9 + 8);
    v19(v11, v8);
    v19(v14, v8);
    if (v18)
    {
      v20 = *(v4 + 80);
      v21 = v24;
      *(v4 + 80) = a2;
      *(v4 + 88) = v21;
      sub_100013CB4(a2);
      sub_1000112B4(v20);
      v17(v14, enum case for NowPlayingViewModel.PlayerStyle.mini(_:), v8);

      NowPlayingController.transition(to:animated:)();

      v19(v14, v8);
    }

    else
    {
      result = v25;
      if (!a2)
      {
        return result;
      }

      a2(v25);
    }

    return v25;
  }

  return result;
}

uint64_t sub_1001CE0C8()
{

  sub_1000112B4(*(v0 + 64));
  sub_1000112B4(*(v0 + 80));
  return v0;
}

uint64_t sub_1001CE120()
{
  sub_1001CE0C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1001CE164()
{
  sub_10002B22C();
  NowPlayingMediaPlayerController.didUpdateSelectedContent(from:to:)();
}

uint64_t sub_1001CE1C8()
{

  sub_10002B22C();

  NowPlayingMetricsControllerWrapper.observe(lifecycleEvent:)();
}

uint64_t sub_1001CE240(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 16) = a1;
  type metadata accessor for PlaybackController();

  BaseObjectGraph.inject<A>(_:)();
  *(v2 + 24) = v11;
  *(v2 + 32) = a2;
  sub_100168088(&qword_100575E98);
  swift_allocObject();
  v5 = a2;
  *(v2 + 56) = RepublishingValueSubject.init(_:)();
  v6 = *(v2 + 32);
  v7 = *((swift_isaMask & *v6) + 0x160);
  v8 = v6;

  v7(v9, &off_1004E30B8);

  return v3;
}

uint64_t sub_1001CE358(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = type metadata accessor for NowPlayingPlayerStyle();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NowPlayingViewModel.PlayerStyle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = enum case for NowPlayingViewModel.PlayerStyle.mini(_:);
  v10 = *(v5 + 104);
  v10(v8, enum case for NowPlayingViewModel.PlayerStyle.mini(_:), v4, v6);
  v11 = static NowPlayingViewModel.PlayerStyle.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:);
  if (v11)
  {
    (v10)(v8, enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:), v4);
    v14 = static NowPlayingViewModel.PlayerStyle.== infix(_:_:)();
    v12(v8, v4);
    if (v14)
    {
      v15 = [*(v26 + 32) presentedViewController];
      if (v15)
      {
        v16 = v15;
        if ([v15 modalPresentationStyle] == 7)
        {
          [v16 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  (v10)(v8, v13, v4);
  v17 = static NowPlayingViewModel.PlayerStyle.== infix(_:_:)();
  result = (v12)(v8, v4);
  if (v17)
  {
    (v10)(v8, v9, v4);
    v19 = static NowPlayingViewModel.PlayerStyle.== infix(_:_:)();
    result = (v12)(v8, v4);
    if (v19)
    {
      sub_10002B22C();
      NowPlayingMetricsControllerWrapper.willTransitionToMiniPlayer()();
      swift_beginAccess();
      v21 = v23;
      v20 = v24;
      v22 = v25;
      (*(v24 + 104))(v23, enum case for NowPlayingPlayerStyle.mini(_:), v25);

      CurrentValueSubject.send(_:)();

      return (*(v20 + 8))(v21, v22);
    }
  }

  return result;
}

id sub_1001CE6A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100168088(&qword_100575E30);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v10 = *(v9 + 56);
  v11 = type metadata accessor for NowPlayingViewModel.PlayerStyle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v8, a1, v11);
  v13(&v8[v10], a2, v11);
  v14 = *(v12 + 88);
  v15 = v14(v8, v11);
  v16 = enum case for NowPlayingViewModel.PlayerStyle.mini(_:);
  if (v15 != enum case for NowPlayingViewModel.PlayerStyle.mini(_:))
  {
    if (v15 == enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:) && v14(&v8[v10], v11) == v16)
    {
      v20 = *(v3 + 80);
      if (v20)
      {

        v20(v21);
        sub_1000112B4(v20);
        v22 = *(v3 + 80);
      }

      else
      {
        v22 = 0;
      }

      *(v3 + 80) = 0;
      *(v3 + 88) = 0;
      sub_1000112B4(v22);
      v28 = objc_opt_self();
      v29 = [v28 defaultCenter];
      [v29 removeObserver:v3 name:MTApplicationDidEnterBackgroundNotification object:0];

      v27 = [v28 defaultCenter];
      [v27 removeObserver:v3 name:MTApplicationDidBecomeActiveNotification object:0];
      goto LABEL_15;
    }

    return sub_100009104(v8, &qword_100575E30);
  }

  if (v14(&v8[v10], v11) != enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:))
  {
    return sub_100009104(v8, &qword_100575E30);
  }

  sub_10002B22C();
  NowPlayingMediaPlayerController.didTransitionToFullScreenPlayer()();

  v17 = *(v3 + 64);
  if (v17)
  {

    v17(v18);
    sub_1000112B4(v17);
    v19 = *(v3 + 64);
  }

  else
  {
    v19 = 0;
  }

  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  sub_1000112B4(v19);
  v24 = objc_opt_self();
  v25 = [v24 defaultCenter];
  [v25 addObserver:v3 selector:"appExitedWhileFullPlayerAppeared" name:MTApplicationDidEnterBackgroundNotification object:0];

  v26 = [v24 defaultCenter];
  [v26 addObserver:v3 selector:"appEnteredWhileFullPlayerAppeared" name:MTApplicationDidBecomeActiveNotification object:0];

  result = [*(v3 + 32) view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v27 = result;
  [result endEditing:1];
LABEL_15:

  return (*(v12 + 8))(v8, v11);
}

void sub_1001CEA54(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1001CEA68(a1, a2, a3);
  }
}

void sub_1001CEA68(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

Swift::Int LegacyEnqueueEpisodeForPlaybackIntentImplementation.EnqueueEpisodeError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1001CEB08()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_1001CEB60()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = [v1 persistentStoreCoordinator];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  v4 = [v2 managedObjectModel];

  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = [v4 entitiesByName];
  sub_100009F1C(0, &qword_100575EE8);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v6 + 16))
  {

    goto LABEL_10;
  }

  v9 = sub_10000F9A8(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_10:

LABEL_13:

LABEL_14:
    sub_1001CEF98();
    swift_allocError();
    swift_willThrow();

    return;
  }

  v12 = *(*(v6 + 56) + 8 * v9);

  v13 = [v12 propertiesByName];
  sub_100009F1C(0, &qword_100575EF0);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v14 + 16))
  {

    goto LABEL_12;
  }

  v17 = sub_10000F9A8(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v20 = *(*(v14 + 56) + 8 * v17);

  v21 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v12];
  sub_100168088(&qword_100573618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  sub_1001CEFEC();
  v23 = v20;
  AnyHashable.init<A>(_:)();
  v24 = [objc_allocWithZone(NSNull) init];
  *(inited + 96) = sub_100009F1C(0, &qword_100575F00);
  *(inited + 72) = v24;
  sub_10016A0DC(inited);
  swift_setDeallocating();
  sub_1001CF054(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 setPropertiesToUpdate:isa];

  v30 = 0;
  v26 = [v1 executeRequest:v21 error:&v30];
  if (v26)
  {
    v27 = v26;
    v28 = v30;
  }

  else
  {
    v29 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t sub_1001CEF98()
{
  result = qword_100575EE0;
  if (!qword_100575EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575EE0);
  }

  return result;
}

unint64_t sub_1001CEFEC()
{
  result = qword_100575EF8;
  if (!qword_100575EF8)
  {
    sub_100009F1C(255, &qword_100575EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575EF8);
  }

  return result;
}

uint64_t sub_1001CF054(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextKit2Migrator.Error(unsigned int *a1, int a2)
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

unint64_t sub_1001CF124()
{
  result = qword_100575F08;
  if (!qword_100575F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575F08);
  }

  return result;
}

id sub_1001CF1AC()
{
  *&v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_allowNotificationsSection] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeSection] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_serverPushSection] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_orderedSections] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_subscriptions] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_hasLoadedSettings] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
  result = objc_msgSendSuper2(&v4, "init");
  if (result)
  {
    v3 = result;
    sub_1001D114C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001CF2A0()
{
  if ((v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_hasLoadedSettings] & 1) == 0)
  {
    v1 = v0;
    v0[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_hasLoadedSettings] = 1;
    v2 = [objc_opt_self() sharedInstance];
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sortDescriptorsForSortType:3];
    if (!v5)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v6 = v5;
    sub_100009F1C(0, &qword_10057B1F0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = [v3 predicateForSubscribedAndNotHidden];
    v9 = sub_1001D2474(v8, v7, v4);

    if (v9[2])
    {
      _s17NewEpisodeSectionCMa();
      swift_allocObject();
      sub_10021CB70(v9);
      v11 = v10;
    }

    else
    {

      v11 = 0;
    }

    v12 = OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeSection;
    *&v1[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeSection] = v11;

    if (v11)
    {
      v43 = type metadata accessor for MTNotificationSettingsSectionedViewController();
      v44 = &off_1004E3278;
      v42[0] = v1;
      swift_beginAccess();
      v13 = v1;
      sub_1001D2840(v42, v11 + 48);
      swift_endAccess();
    }

    sub_100009F1C(0, &qword_10057AB20);
    v14 = [swift_getObjCClassFromMetadata() sharedInstance];
    v15 = [v14 isUserLoggedIn];

    if (v15)
    {
      v16 = [v1 traitCollection];
      v17 = UITraitCollection.interfaceIdiomIsMac.getter();

      if ((v17 & 1) == 0)
      {
        _s17ServerPushSectionCMa();
        swift_allocObject();
        sub_100311AA0(&off_1004DEEB0);
        v19 = v18;
        *&v1[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_serverPushSection] = v18;

        v43 = type metadata accessor for MTNotificationSettingsSectionedViewController();
        v44 = &off_1004E3278;
        v42[0] = v1;
        swift_beginAccess();
        v20 = v1;
        sub_1001D2840(v42, v19 + 48);
        swift_endAccess();
      }
    }

    v21 = *&v1[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_serverPushSection];
    v41[4] = *&v1[v12];
    v41[5] = v21;
    v22 = _swiftEmptyArrayStorage;
    v42[0] = _swiftEmptyArrayStorage;

    for (i = 0; i != 2; ++i)
    {
      if (v41[i + 4])
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = v42[0];
      }
    }

    sub_100168088(&qword_100576040);
    swift_arrayDestroy();
    v25 = OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_orderedSections;
    swift_beginAccess();
    *&v1[v25] = v22;

    v26 = objc_opt_self();
    v27 = [v26 _applePodcastsFoundationSharedUserDefaults];
    v28 = [v27 BOOLForKey:kMTDidPromptForNotificationsPermissionsKey];

    if (v28 && (v29 = [v26 _applePodcastsFoundationSharedUserDefaults], v30 = objc_msgSend(v29, "BOOLForKey:", kMTNotificationStatusIsAuthorizedKey), v29, (v30 & 1) == 0))
    {
      _s25AllowNotificationsSectionCMa();
      v32 = swift_allocObject();
      v33 = [objc_allocWithZone(MTButtonTableViewCell) init];
      *(v32 + 48) = 0u;
      *(v32 + 64) = 0u;
      *(v32 + 80) = 0;
      *(v32 + 88) = v33;
      *(v32 + 16) = 0xD000000000000019;
      *(v32 + 24) = 0x8000000100464210;
      *(v32 + 32) = [objc_allocWithZone(MTDynamicTypeConstant) initWithDefaultConstant:UIFontTextStyleBody textStyle:UITableViewAutomaticDimension];
      v34 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v36 = [objc_opt_self() groupWithTitle:v34 footerText:0 settings:isa];

      if (!v36)
      {
LABEL_38:
        __break(1u);
        return;
      }

      *(v32 + 40) = v36;

      sub_10031C2F8();
      v37 = *(v32 + 40);
      *(v32 + 40) = v38;

      v43 = type metadata accessor for MTNotificationSettingsSectionedViewController();
      v44 = &off_1004E3278;
      v42[0] = v1;
      swift_beginAccess();
      v28 = v1;
      sub_1001D2840(v42, v32 + 48);
      swift_endAccess();
      *&v28[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_allowNotificationsSection] = v32;

      swift_beginAccess();
      if (!(*&v1[v25] >> 62))
      {
LABEL_24:
        sub_100252334(0, 0, v32);
        swift_endAccess();

        if (!*&v1[v12])
        {
          _s22NoSubscriptionsSectionCMa();
          swift_allocObject();
          sub_100239E50();
          v28 = v39;
          swift_beginAccess();
          v40 = *&v1[v25];
          if (!(v40 >> 62))
          {
            if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            goto LABEL_30;
          }

LABEL_35:
          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_36;
          }

LABEL_30:
          sub_100252334(1, 1, v28);
          swift_endAccess();
        }

LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      if (*&v1[v12])
      {
LABEL_26:
        sub_1001D0588();
        return;
      }

      _s22NoSubscriptionsSectionCMa();
      swift_allocObject();
      sub_100239E50();
      v32 = v31;
      swift_beginAccess();
      if (!(*&v1[v25] >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
      {
        sub_100252334(0, 0, v32);
        swift_endAccess();
        goto LABEL_25;
      }

      __break(1u);
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_24;
  }
}

id sub_1001CFA04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = type metadata accessor for IndexSet();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D0588();
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_37:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1001CF2A0();
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v38 = a1 + 32;
  v40 = OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_orderedSections;
  swift_beginAccess();
  v7 = 0;
  v33 = (v5 + 8);
  v37 = v2;
LABEL_5:
  v8 = (v38 + 16 * v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *&v3[v40];
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v7 + 1;

  v14 = -v12;
  v15 = 4;
  while (1)
  {
    if (v14 + v15 == 4)
    {

      v3 = v37;
      goto LABEL_4;
    }

    v16 = v15 - 4;
    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    if (*(v17 + 16) == v9 && *(v17 + 24) == v10)
    {

      goto LABEL_23;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

LABEL_23:
      v3 = v37;
      result = [v37 settingsController];
      if (!result)
      {
        goto LABEL_43;
      }

      v20 = result;
      *&v45 = v9;
      *(&v45 + 1) = v10;

      result = AnyHashable.init<A>(_:)();
      v21 = *&v3[v40];
      if ((v21 & 0xC000000000000001) != 0)
      {

        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v22 = *(v21 + 8 * v15);
      }

      v23 = *(v22 + 40);

      v46 = sub_100009F1C(0, &qword_100576030);
      *&v45 = v23;
      result = [v20 groups];
      if (!result)
      {
        goto LABEL_44;
      }

      v24 = result;
      v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = v25;
      if (v46)
      {
        sub_10016B7CC(&v45, v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        sub_10025EA58(v43, v47, isUniquelyReferenced_nonNull_native);
        sub_10016BE9C(v47);
        if (v42)
        {
          goto LABEL_30;
        }

LABEL_32:
        v27.super.isa = 0;
      }

      else
      {
        sub_100009104(&v45, &unk_1005783D0);
        sub_10028A264(v47, v43);
        sub_100009104(v43, &unk_1005783D0);
        sub_10016BE9C(v47);
        if (!v44)
        {
          goto LABEL_32;
        }

LABEL_30:
        v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      [v20 setGroups:v27.super.isa];

      result = [v3 tableView];
      if (!result)
      {
        goto LABEL_45;
      }

      v28 = result;

      v29 = v34;
      IndexSet.init(integer:)();
      IndexSet._bridgeToObjectiveC()(v30);
      v32 = v31;
      (*v33)(v29, v35);
      [v28 reloadSections:v32 withRowAnimation:v36];

LABEL_4:
      v7 = v41;
      if (v41 == v39)
      {
        goto LABEL_37;
      }

      goto LABEL_5;
    }

    ++v15;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_41;
    }
  }

  if (v16 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v11 + 8 * v15);

    goto LABEL_12;
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
  return result;
}

void sub_1001CFF48(uint64_t a1, void (*a2)(uint64_t, uint64_t), int a3)
{
  v60 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v59 = v3;
  v20 = *&v3[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeSection];
  if (!v20)
  {
    return;
  }

  v51 = v19;
  v52 = &v47 - v17;
  v57 = a3;
  v53 = v18;
  v54 = v11;
  v56 = v16;
  v21 = *(v20 + 40);

  v22 = [v21 groupSettings];
  if (!v22)
  {
    __break(1u);
    return;
  }

  v23 = v22;
  sub_100009F1C(0, &qword_1005747E0);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v7;
  v50 = v6;
  v47 = v9;
  v48 = v10;
  v55 = v13;
  v58 = v20;
  if (v24 >> 62)
  {
LABEL_28:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_29:

    return;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_29;
  }

LABEL_5:
  v26 = 0;
  while ((v24 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_19;
    }

LABEL_10:
    v61 = v27;
    v29 = [v27 identifier];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v31 == a1 && v33 == v60)
      {
        goto LABEL_20;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {

        goto LABEL_21;
      }
    }

    ++v26;
    if (v28 == v25)
    {
      goto LABEL_29;
    }
  }

  if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = *(v24 + 8 * v26 + 32);
  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
LABEL_20:

LABEL_21:

  v36 = v59;
  [v59 setCellEmphasisStyle:2];
  [v36 setEmphasizedSetting:v61];
  v37 = &v36[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];
  *v37 = 0;
  *(v37 + 1) = 0;

  v38 = v55;
  if (v57)
  {
    sub_100009F1C(0, &qword_1005729D0);
    v39 = static OS_dispatch_queue.main.getter();
    v40 = v51;
    static DispatchTime.now()();
    v41 = v52;
    + infix(_:_:)();
    v60 = *(v53 + 8);
    v60(v40, v56);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001D29A4;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004E3358;
    v43 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0);
    sub_100009FAC(&qword_10057D390, &unk_100575CD0);
    v44 = v47;
    v45 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v43);

    (*(v49 + 8))(v44, v45);
    (*(v54 + 8))(v38, v48);
    v60(v41, v56);
  }

  else
  {
    v46 = v61;
  }
}

void sub_1001D0588()
{
  v1 = OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_orderedSections;
  swift_beginAccess();
  v75 = v1;
  i = *&v0[v1];
  v79 = i >> 62;
  v80 = v0;
  if (i >> 62)
  {
    goto LABEL_143;
  }

  v3 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v4 = 0;
      v1 = i & 0xC000000000000001;
      while (1)
      {
        if (v1)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_138;
          }

          v5 = *(i + 8 * v4 + 32);
        }

        v6 = [*(v5 + 40) groupSettings];
        if (v6)
        {
          v7 = v6;
          sub_100009F1C(0, &qword_1005747E0);
          v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v8 = 0;
        }

        v84 = v8;
        sub_100168088(&qword_100576018);
        sub_100009FAC(&qword_100576020, &qword_100576028);
        v9 = Optional<A>.isEmpty.getter();

        v10 = v4 + 1;
        v11 = __OFADD__(v4, 1);
        if (v9)
        {
          break;
        }

        if (v11)
        {
          goto LABEL_133;
        }

        ++v4;
        if (v10 == v3)
        {
          goto LABEL_17;
        }
      }

      if (v11)
      {
        goto LABEL_161;
      }

      if (v79)
      {
        if (v10 == _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_25;
        }
      }

      else if (v10 == *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v63 = v4 + 5;
      while (1)
      {
        v64 = v63 - 4;
        if ((i & 0xC000000000000001) != 0)
        {
          v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_135;
          }

          if (v64 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_136;
          }

          v1 = *(i + 8 * v63);
        }

        v65 = [*(v1 + 40) groupSettings];
        if (v65)
        {
          v66 = v65;
          sub_100009F1C(0, &qword_1005747E0);
          v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v67 = 0;
        }

        v84 = v67;
        v68 = Optional<A>.isEmpty.getter();

        if (v68)
        {
          goto LABEL_120;
        }

        if (v64 != v4)
        {
          break;
        }

LABEL_119:
        v55 = __OFADD__(v4++, 1);
        if (v55)
        {
          goto LABEL_139;
        }

LABEL_120:
        v1 = v63 - 3;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_137;
        }

        if (i >> 62)
        {
          v73 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v73 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v63;
        if (v1 == v73)
        {
          goto LABEL_25;
        }
      }

      if ((i & 0xC000000000000001) != 0)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_158;
        }

        v70 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v70)
        {
          goto LABEL_159;
        }

        if (v64 >= v70)
        {
          goto LABEL_160;
        }

        v1 = *(i + 8 * v4 + 32);
        v69 = *(i + 8 * v63);
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v80[v75] = i;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (i & 0x8000000000000000) != 0 || (i & 0x4000000000000000) != 0)
      {
        i = sub_1003ADF88(i);
        *&v80[v75] = i;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_140;
      }

      v72 = i & 0xFFFFFFFFFFFFFF8;
      if (v4 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_141;
      }

      *((i & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v69;

      *&v80[v75] = i;

      i = sub_1003ADF88(i);
      *&v80[v75] = i;
      v72 = i & 0xFFFFFFFFFFFFFF8;
      if ((v64 & 0x8000000000000000) == 0)
      {
        goto LABEL_117;
      }

LABEL_128:
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
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_128;
    }

LABEL_117:
    if (v64 >= *(v72 + 16))
    {
      goto LABEL_142;
    }

    *(v72 + 8 * v63) = v1;

    *&v80[v75] = i;
    goto LABEL_119;
  }

LABEL_17:
  if (v79)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_25:
  if (!(i >> 62))
  {
    v12 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v4)
    {
      goto LABEL_27;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v14 = &selRef_setCategories_;
    if (!v13)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12 < v4)
  {
    goto LABEL_146;
  }

LABEL_27:
  i = v75;
  sub_100252460(v4, v12);
  swift_endAccess();
  v1 = *&v80[v75];
  if (v1 >> 62)
  {
    goto LABEL_147;
  }

  v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = &selRef_setCategories_;
  if (!v13)
  {
    goto LABEL_36;
  }

LABEL_29:
  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_155;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v1 + 8 * i + 32);
    }

    [*(v15 + 40) v14[82]];
  }

LABEL_36:
  v16 = *&v80[v75];
  if (!(v16 >> 62))
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_38:
    if ((v16 & 0xC000000000000001) == 0)
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_157;
      }

      v17 = *(v16 + 32);

      goto LABEL_41;
    }

LABEL_155:

    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_41:
    v18 = *(v17 + 40);
    i = objc_allocWithZone(MTDynamicTypeConstant);
    v19 = v18;
    v20 = [i initWithDefaultConstant:UIFontTextStyleBody textStyle:55.0];
    [v20 currentConstant];
    v22 = v21;

    [v19 v14[82]];

    goto LABEL_42;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_38;
  }

LABEL_42:
  v74 = [objc_allocWithZone(MTSettingsController) init];
  v23 = *&v80[v75];
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    v84 = _swiftEmptyArrayStorage;

    sub_1001A7630(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = 0;
      v26 = v84;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(v23 + 8 * v25 + 32);
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        v83 = &type metadata for String;

        *&v82 = v29;
        *(&v82 + 1) = v28;
        v84 = v26;
        v31 = v26[2];
        v30 = v26[3];
        i = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_1001A7630((v30 > 1), v31 + 1, 1);
          v26 = v84;
        }

        ++v25;
        v26[2] = i;
        sub_10016B7CC(&v82, &v26[4 * v31 + 4]);
      }

      while (v24 != v25);

      goto LABEL_54;
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_54:
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 setOrder:isa];

  v1 = *&v80[v75];
  if (v1 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v33)
  {
    v34 = 0;
    v78 = v1 & 0xFFFFFFFFFFFFFF8;
    v79 = v1 & 0xC000000000000001;
    v35 = &_swiftEmptyDictionarySingleton;
    v76 = v33;
    v77 = v1;
    while (1)
    {
      if (v79)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v40 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v34 >= *(v78 + 16))
        {
          goto LABEL_130;
        }

        v39 = *(v1 + 8 * v34 + 32);

        v40 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_129;
        }
      }

      v81 = v40;
      v41 = v39[2];
      v1 = v39[3];
      v42 = v39[5];

      v43 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v82 = v35;
      i = sub_10000F9A8(v41, v1);
      v46 = v35[2];
      v47 = (v45 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_131;
      }

      v49 = v45;
      if (v35[3] >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v45)
          {
            goto LABEL_58;
          }
        }

        else
        {
          sub_10025FB60();
          if (v49)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        sub_10025BEFC(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_10000F9A8(v41, v1);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_163;
        }

        i = v50;
        if (v49)
        {
LABEL_58:

          v36 = v82;
          v37 = *(v82 + 56);
          v38 = *(v37 + 8 * i);
          *(v37 + 8 * i) = v43;

          v35 = v36;
          goto LABEL_59;
        }
      }

      v52 = v82;
      *(v82 + 8 * (i >> 6) + 64) |= 1 << i;
      v53 = (v52[6] + 16 * i);
      *v53 = v41;
      v53[1] = v1;
      *(v52[7] + 8 * i) = v43;

      v54 = v52[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_134;
      }

      v52[2] = v56;
      v35 = v52;
LABEL_59:
      ++v34;
      v1 = v77;
      if (v81 == v76)
      {
        goto LABEL_78;
      }
    }
  }

  v35 = &_swiftEmptyDictionarySingleton;
LABEL_78:

  sub_1002583D4(v35);

  v57 = Dictionary._bridgeToObjectiveC()().super.isa;

  i = v74;
  [v74 setGroups:v57];

  [v80 setSettingsController:v74];
  v1 = *&v80[v75];
  if (v1 >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v58 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v58)
  {
    v59 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v59 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_132;
        }

        v60 = *(v1 + 8 * v59 + 32);

        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
LABEL_90:
          __break(1u);
          break;
        }
      }

      v62 = [v80 settingsController];
      if (!v62)
      {
        goto LABEL_162;
      }

      i = v62;
      (*(*v60 + 224))();

      ++v59;
    }

    while (v61 != v58);
  }
}

uint64_t sub_1001D114C()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  NSUserDefaults.BOOLPublisher(forKey:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100168088(&unk_1005783E0);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  sub_100168088(&unk_1005783F0);
  sub_100009FAC(&unk_10057A070, &unk_1005783F0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

void sub_1001D1300(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v5 = [v4 BOOLForKey:kMTDidPromptForNotificationsPermissionsKey];

  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_orderedSections;
  swift_beginAccess();
  v21 = v6;
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
LABEL_28:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      goto LABEL_19;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (__OFADD__(v9, 1))
    {
      goto LABEL_18;
    }

LABEL_10:
    if (*(v10 + 16) == 0xD000000000000019 && 0x8000000100464210 == *(v10 + 24))
    {

      goto LABEL_23;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v9;
    if (v12)
    {

      goto LABEL_23;
    }
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

  v10 = *(v7 + 8 * v9 + 32);

  if (!__OFADD__(v9, 1))
  {
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
LABEL_19:

  _s25AllowNotificationsSectionCMa();
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(MTButtonTableViewCell) init];
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0;
  *(v13 + 88) = v14;
  *(v13 + 16) = 0xD000000000000019;
  *(v13 + 24) = 0x8000000100464210;
  *(v13 + 32) = [objc_allocWithZone(MTDynamicTypeConstant) initWithDefaultConstant:UIFontTextStyleBody textStyle:UITableViewAutomaticDimension];
  v15 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = [objc_opt_self() groupWithTitle:v15 footerText:0 settings:isa];

  if (!v17)
  {
LABEL_31:
    __break(1u);
    return;
  }

  *(v13 + 40) = v17;

  sub_10031C2F8();
  v18 = *(v13 + 40);
  *(v13 + 40) = v19;

  v22[3] = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v22[4] = &off_1004E3278;
  v22[0] = v3;
  swift_beginAccess();
  v20 = v3;
  sub_1001D2840(v22, v13 + 48);
  swift_endAccess();
  *&v20[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_allowNotificationsSection] = v13;

  swift_beginAccess();
  if (*&v3[v21] >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_100252334(0, 0, v13);
  swift_endAccess();

LABEL_23:
  if (*&v3[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_allowNotificationsSection])
  {

    sub_10031BFF0(v1);
  }

LABEL_25:
}

uint64_t sub_1001D17DC(char a1)
{
  v2 = v1;
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v23 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v29.receiver = v2;
  v29.super_class = v16;
  objc_msgSendSuper2(&v29, "viewDidAppear:", a1 & 1);
  sub_100009F1C(0, &qword_1005729D0);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v12, v9);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001D2920;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E32B8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001D293C();
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  v20 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v5, v20);
  (*(v25 + 8))(v8, v26);
  return (v22)(v15, v23);
}

void sub_1001D1BA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setEmphasizedSetting:0];
  }
}

void sub_1001D1C5C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100168088(&qword_100576038);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_1001D28B0(a2, &v27 - v12);
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  isa = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v13, v14);
  }

  if (a5)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v27.receiver = v5;
  v27.super_class = v18;
  objc_msgSendSuper2(&v27, "configureCell:atIndexPath:withDescription:inGroupWithIdentifier:", a1, isa, a3, v17);

  if (!a3)
  {
LABEL_13:
    if (!a1)
    {
      return;
    }

    goto LABEL_14;
  }

  v19 = a3;
  v20 = sub_1001D2204(a4, a5);
  if (!v20)
  {

    goto LABEL_13;
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v21 = v20;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v24 = *(*v21 + 216);
    v25 = a1;
    v24(v23, v19);
  }

LABEL_14:
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    [v26 setShowsSeparator:0];
  }
}

double sub_1001D2040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 traitCollection];
  v9 = UITraitCollection.interfaceIdiomIsMac.getter();

  if (v9)
  {
    return 48.0;
  }

  v11 = sub_1001D2204(a2, a3);
  v10 = UITableViewAutomaticDimension;
  if (v11)
  {
    v10 = (*(*v11 + 232))(v11);
  }

  if (v10 == UITableViewAutomaticDimension)
  {
    if (a3)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    v15.receiver = v4;
    v15.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
    objc_msgSendSuper2(&v15, "heightForRowWithDescription:inGroupWithIdentifier:", a1, v12);
    v10 = v13;
  }

  return v10;
}

uint64_t sub_1001D2204(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_orderedSections;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_23:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_18;
        }
      }

      if (a2)
      {
        v11 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return v9;
        }
      }

      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

id sub_1001D2358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001D2474(void *a1, uint64_t a2, id a3)
{
  v14 = 0;
  v5 = [a3 mainOrPrivateContext];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001D2994;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E3330;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  [v9 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;
    if (v14)
    {
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    return v12;
  }

  return result;
}

void sub_1001D263C()
{
  *(v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_allowNotificationsSection) = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeSection) = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_serverPushSection) = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_orderedSections) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_subscriptions) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_hasLoadedSettings) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001D2714(char a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 settingsController];
  if (!v8)
  {
    return;
  }

  v14 = v8;
  if ((a1 & 1) == 0)
  {
    sub_10021D8CC(v8, a3, a4);
    v13 = v14;
    goto LABEL_8;
  }

  v9 = [a2 tableView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  [v9 beginUpdates];

  sub_10021D8CC(v14, a3, a4);
  v11 = [a2 tableView];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 endUpdates];

  v13 = v12;
LABEL_8:
}

uint64_t sub_1001D2840(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D28B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D293C()
{
  result = qword_10057D380;
  if (!qword_10057D380)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D380);
  }

  return result;
}

uint64_t sub_1001D29AC@<X0>(uint64_t a1@<X8>)
{
  if ([v1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = type metadata accessor for CarPlayTemplateInfo(0);
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_100009104(v9, &unk_1005783D0);
    v6 = type metadata accessor for CarPlayTemplateInfo(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_1001D2AD4(uint64_t a1)
{
  v3 = type metadata accessor for CarPlayTemplateInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1001D2D08(a1, &v13 - v8);
  v10 = (*(v4 + 48))(v9, 1, v3);
  v11 = 0;
  if (v10 != 1)
  {
    sub_1001CC668(v9, v6);
    v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1001D2D78(v9);
  }

  [v1 setUserInfo:v11];
  swift_unknownObjectRelease();
  return sub_100009104(a1, &unk_100578410);
}

uint64_t sub_1001D2C58()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0 || (v1 = [v0 text]) == 0)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      return 0;
    }

    v1 = [v2 text];
    if (!v1)
    {
      return 0;
    }
  }

  v3 = v1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1001D2D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_100578410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D2D78(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayTemplateInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *DebouncedAssetRemovalProcessor.sharedInstance.unsafeMutableAddressor()
{
  if (qword_100572758 != -1)
  {
    swift_once();
  }

  return &static DebouncedAssetRemovalProcessor.sharedInstance;
}

id static DebouncedAssetRemovalProcessor.sharedInstance.getter()
{
  if (qword_100572758 != -1)
  {
    swift_once();
  }

  v1 = static DebouncedAssetRemovalProcessor.sharedInstance;

  return v1;
}

uint64_t DebouncedAssetRemovalProcessor.isRunning.getter()
{
  v1 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor_isRunning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DebouncedAssetRemovalProcessor.isRunning.setter(char a1)
{
  v3 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor_isRunning;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DebouncedAssetRemovalProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebouncedAssetRemovalProcessor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D311C(uint64_t a1)
{
  *(v1 + 24) = a1;

  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2)
  {
    sub_100013CB4(*(v1 + 32));

    v2(v3);

    sub_1000112B4(v2);
  }
}

void sub_1001D31CC()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 predicateForVisiblePlaylistWithUUID:v2];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(MTPropertyChangeQueryObserver);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithEntityName:v6 predicate:v5];

  if (v7)
  {

    *(v0 + 16) = v7;
    sub_100168088(&qword_100574690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100403230;
    *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 40) = v9;
    *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 56) = v10;
    *(v8 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 72) = v11;
    *(v8 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 88) = v12;
    *(v8 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 104) = v13;
    *(v8 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 120) = v14;
    *(v8 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 136) = v15;
    *(v8 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 152) = v16;
    *(v8 + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 168) = v17;
    v18 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setPropertyKeys:isa];

    [*(v0 + 16) startObserving];
    v20 = *(v0 + 16);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = (v21 + 16);
    v35 = sub_1001D3CE8;
    v36 = v21;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1001D3764;
    v34 = &unk_1004E3470;
    v23 = _Block_copy(&aBlock);
    v24 = v20;

    [v24 results:v23];

    _Block_release(v23);
    swift_beginAccess();
    v25 = *v22;

    if (v25)
    {
      *(v0 + 24) = v25;

      v26 = *(v0 + 16);
      v27 = swift_allocObject();
      swift_weakInit();
      v35 = sub_1001D3D44;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1001D3764;
      v34 = &unk_1004E34C0;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      v30 = [v29 addResultsChangedHandler:v28];

      _Block_release(v28);
    }

    else
    {
      sub_1001D3CF0();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001D3634(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      if (a1 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_11;
        }
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v3 = *(a1 + 32);
      }

      v4 = v3;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for StationDetail();
        v5 = v4;
        v6 = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
        sub_1001D311C(v6);
      }
    }

LABEL_11:
    sub_1001D311C(0);
  }

  return result;
}

uint64_t sub_1001D3764(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1001D3D4C();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

uint64_t sub_1001D37DC()
{
  [*(v0 + 16) stop];

  sub_1000112B4(*(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1001D385C()
{
  result = qword_1005761A0;
  if (!qword_1005761A0)
  {
    sub_100168310(&qword_1005761A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005761A0);
  }

  return result;
}

uint64_t (*sub_1001D38D0())(void *)
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001D3E00;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2);
  return v5;
}

uint64_t sub_1001D396C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1001A3248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  return sub_1000112B4(v8);
}

void (*sub_1001D3A04(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1001D3B88;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_1001D3AD0;
}

void sub_1001D3AD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1001A3100;
    }

    else
    {
      v4 = sub_1001A3248;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v2[5];
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_endAccess();

  free(v2);
}

void sub_1001D3BB4(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v6 = a1;
      v7 = a2;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (!v9)
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = a2;
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v2 + 16))
      {
        __break(1u);
        return;
      }

      v3 = a2;
      v4 = *(a1 + 32);
    }

    v10 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for StationDetail();
      v5 = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
      swift_beginAccess();
      *(v3 + 16) = v5;
    }

    else
    {
    }
  }
}

unint64_t sub_1001D3CF0()
{
  result = qword_1005761B0;
  if (!qword_1005761B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005761B0);
  }

  return result;
}

unint64_t sub_1001D3D4C()
{
  result = qword_1005739D0;
  if (!qword_1005739D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005739D0);
  }

  return result;
}

unint64_t sub_1001D3DAC()
{
  result = qword_1005761B8;
  if (!qword_1005761B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005761B8);
  }

  return result;
}

void sub_1001D3E04(uint64_t a1)
{
  if (os_feature_enabled_prototype_up_next())
  {
    v2 = objc_opt_self();
    v3 = [v2 _applePodcastsFoundationSharedUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 integerForKey:v4];

    if (v5 < a1)
    {
      if (!sub_1001D4A54())
      {
        static UpNextScoringWeightsManager.resetToDefaultValues()();
        static UpNextScoringWeightsManager.recalculateUpNext()();
      }

      v6 = [v2 _applePodcastsFoundationSharedUserDefaults];
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v8 = String._bridgeToObjectiveC()();
      [v6 setValue:isa forKey:v8];
    }
  }
}

uint64_t sub_1001D3F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v36 = sub_100168088(&qword_1005761D8);
  v45 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v32 - v5;
  v34 = sub_100168088(&qword_1005761E0);
  v40 = *(v34 - 8);
  __chkstk_darwin(v34);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v32 - v8;
  __chkstk_darwin(v9);
  v41 = &v32 - v10;
  __chkstk_darwin(v11);
  v38 = &v32 - v12;
  __chkstk_darwin(v13);
  v39 = &v32 - v14;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v48 = a1;
  v53 = 0xD000000000000042;
  v54 = 0x8000000100467D80;
  v55 = 0;
  v56 = _swiftEmptyArrayStorage;
  v49 = 0xD00000000000008DLL;
  v50 = 0x8000000100467DD0;
  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
  sub_100168088(&qword_1005761E8);
  sub_100009FAC(&qword_1005761F0, &qword_1005761E8);
  v33 = v17;
  Section<>.init(header:footer:content:)();
  v47 = a1;
  v53 = 0xD000000000000024;
  v54 = 0x8000000100467E60;
  v55 = 0;
  v56 = _swiftEmptyArrayStorage;
  v49 = 0xD000000000000066;
  v50 = 0x8000000100467E90;
  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
  Section<>.init(header:footer:content:)();
  v46 = a1;
  v53 = 0xD000000000000017;
  v54 = 0x8000000100467F00;
  v55 = 0;
  v56 = _swiftEmptyArrayStorage;
  v49 = 0xD000000000000107;
  v50 = 0x8000000100467F20;
  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
  v18 = v38;
  Section<>.init(header:footer:content:)();
  v53 = 0xD000000000000036;
  v54 = 0x8000000100468030;
  v55 = 0;
  v56 = _swiftEmptyArrayStorage;
  sub_100168088(&qword_1005761F8);
  sub_100009FAC(&qword_100576200, &qword_1005761F8);
  v19 = v44;
  Section<>.init(footer:content:)();
  v20 = *(v40 + 16);
  v21 = v41;
  v22 = v34;
  v20(v41, v17, v34);
  v23 = v42;
  v20(v42, v39, v22);
  v20(v43, v18, v22);
  v32 = *(v45 + 16);
  v24 = v35;
  v25 = v36;
  v32(v35, v19, v36);
  v26 = v37;
  v20(v37, v21, v22);
  v27 = sub_100168088(&qword_100576208);
  v20(&v26[v27[12]], v23, v22);
  v28 = v43;
  (v20)(&v26[v27[16]]);
  v32(&v26[v27[20]], v24, v25);
  v29 = *(v45 + 8);
  v29(v44, v25);
  v30 = *(v40 + 8);
  v30(v38, v22);
  v30(v39, v22);
  v30(v33, v22);
  v29(v24, v25);
  v30(v28, v22);
  v30(v42, v22);
  return (v30)(v41, v22);
}

uint64_t sub_1001D4650(uint64_t a1)
{
  AppStorage.projectedValue.getter();
  v7 = v5[0];
  v8 = v5[1];
  v9 = v5[2];
  v6 = xmmword_1004033A0;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1001D4ECC(a1, v5);
  sub_1001D4F04();
  return Slider<>.init<A>(value:in:onEditingChanged:)();
}

uint64_t sub_1001D472C(uint64_t a1)
{
  AppStorage.projectedValue.getter();
  v7 = v5[0];
  v8 = v5[1];
  v9 = v5[2];
  v6 = xmmword_1004033A0;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1001D4ECC(a1, v5);
  sub_1001D4F04();
  return Slider<>.init<A>(value:in:onEditingChanged:)();
}

uint64_t sub_1001D4808(uint64_t a1)
{
  AppStorage.projectedValue.getter();
  v7 = v5[0];
  v8 = v5[1];
  v9 = v5[2];
  v6 = xmmword_1004033A0;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1001D4ECC(a1, v5);
  sub_1001D4F04();
  return Slider<>.init<A>(value:in:onEditingChanged:)();
}

void sub_1001D492C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x8000000100468070;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1001D4960@<X0>(uint64_t a1@<X8>)
{
  sub_100168088(&qword_1005761C0);
  sub_100009FAC(&qword_1005761C8, &qword_1005761C0);
  Form.init(content:)();
  result = sub_100168088(&qword_1005761D0);
  v3 = (a1 + *(result + 36));
  *v3 = 0;
  v3[1] = 0;
  v3[2] = j___s8ShelfKit27UpNextScoringWeightsManagerO011recalculatecD0yyFZ;
  v3[3] = 0;
  return result;
}

BOOL sub_1001D4A54()
{
  sub_100168088(&qword_100574690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  v4 = objc_opt_self();

  v5 = [v4 _applePodcastsFoundationSharedUserDefaults];
  v6 = String._bridgeToObjectiveC()();

  [v5 doubleForKey:v6];
  v8 = v7;

  v19 = 1;
  if (v8 == 0.0)
  {
    v9 = objc_opt_self();

    v10 = [v9 _applePodcastsFoundationSharedUserDefaults];
    v11 = String._bridgeToObjectiveC()();

    [v10 doubleForKey:v11];
    v13 = v12;

    if (v13 == 0.0)
    {
      v14 = objc_opt_self();

      v15 = [v14 _applePodcastsFoundationSharedUserDefaults];
      v16 = String._bridgeToObjectiveC()();

      [v15 doubleForKey:v16];
      v18 = v17;

      if (v18 == 0.0)
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

uint64_t sub_1001D4C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_opt_self();
  v8 = [v7 _applePodcastsFoundationSettingsUserDefaults];
  v9 = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = [v7 _applePodcastsFoundationSettingsUserDefaults];
  v11 = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = [v7 _applePodcastsFoundationSettingsUserDefaults];
  v13 = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = [v7 _applePodcastsFoundationSettingsUserDefaults];
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *a4 = v9;
  a4[1] = v11;
  a4[2] = v13;
  a4[3] = result;
  a4[4] = a1;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1001D4DEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1001D4E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001D4F04()
{
  result = qword_100576210;
  if (!qword_100576210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576210);
  }

  return result;
}

uint64_t sub_1001D4F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001D4FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001D5024()
{
  result = qword_100576218;
  if (!qword_100576218)
  {
    sub_100168310(&qword_1005761D0);
    sub_100009FAC(&qword_100576220, &qword_100576228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576218);
  }

  return result;
}

uint64_t sub_1001D50E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10038E7E0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1001D51E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (!*(a1 + 40))
  {
LABEL_11:
    if (!*(a2 + 40))
    {
      return v2 == v3;
    }

    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v2 = 4;
    if (!*(a2 + 40))
    {
      return v2 == v3;
    }

    goto LABEL_12;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3] | a1[4];
  if (!(v7 | *a1 | v6 | v5))
  {
    v2 = 2;
    goto LABEL_11;
  }

  v8 = v7 | v6 | v5;
  if (v4 == 1 && !v8)
  {
    v2 = 3;
    if (!*(a2 + 40))
    {
      return v2 == v3;
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v4 == 2;
  }

  v2 = 5;
  if (!v14)
  {
    v2 = 6;
  }

  if (*(a2 + 40))
  {
LABEL_12:
    if (v3 == 1)
    {
      v3 = 4;
    }

    else
    {
      v9 = *a2;
      v10 = a2[3];
      v11 = a2[4];
      v12 = a2[2] | a2[1];
      if (v12 | *a2 | v10 | v11)
      {
        v13 = v12 | v10 | v11;
        if (v9 != 1 || v13)
        {
          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v9 == 2;
          }

          v3 = 5;
          if (!v15)
          {
            v3 = 6;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }
  }

  return v2 == v3;
}

BOOL sub_1001D52FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (!*(a1 + 40))
  {
LABEL_11:
    if (!*(a2 + 40))
    {
      return v2 < v3;
    }

    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v2 = 4;
    if (!*(a2 + 40))
    {
      return v2 < v3;
    }

    goto LABEL_12;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3] | a1[4];
  if (!(v7 | *a1 | v6 | v5))
  {
    v2 = 2;
    goto LABEL_11;
  }

  v8 = v7 | v6 | v5;
  if (v4 == 1 && !v8)
  {
    v2 = 3;
    if (!*(a2 + 40))
    {
      return v2 < v3;
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v4 == 2;
  }

  v2 = 5;
  if (!v14)
  {
    v2 = 6;
  }

  if (*(a2 + 40))
  {
LABEL_12:
    if (v3 == 1)
    {
      v3 = 4;
    }

    else
    {
      v9 = *a2;
      v10 = a2[3];
      v11 = a2[4];
      v12 = a2[2] | a2[1];
      if (v12 | *a2 | v10 | v11)
      {
        v13 = v12 | v10 | v11;
        if (v9 != 1 || v13)
        {
          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v9 == 2;
          }

          v3 = 5;
          if (!v15)
          {
            v3 = 6;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }
  }

  return v2 < v3;
}

BOOL sub_1001D53EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (!*(a2 + 40))
  {
LABEL_11:
    if (!*(a1 + 40))
    {
      return v3 >= v2;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v3 = 4;
    if (!*(a1 + 40))
    {
      return v3 >= v2;
    }

    goto LABEL_12;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3] | a2[4];
  if (!(v7 | *a2 | v6 | v5))
  {
    v3 = 2;
    goto LABEL_11;
  }

  v8 = v7 | v6 | v5;
  if (v4 == 1 && !v8)
  {
    v3 = 3;
    if (!*(a1 + 40))
    {
      return v3 >= v2;
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v4 == 2;
  }

  v3 = 5;
  if (!v14)
  {
    v3 = 6;
  }

  if (*(a1 + 40))
  {
LABEL_12:
    if (v2 == 1)
    {
      v2 = 4;
    }

    else
    {
      v9 = *a1;
      v10 = a1[3];
      v11 = a1[4];
      v12 = a1[2] | a1[1];
      if (v12 | *a1 | v10 | v11)
      {
        v13 = v12 | v10 | v11;
        if (v9 != 1 || v13)
        {
          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v9 == 2;
          }

          v2 = 5;
          if (!v15)
          {
            v2 = 6;
          }
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 2;
      }
    }
  }

  return v3 >= v2;
}

BOOL sub_1001D54DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (!*(a1 + 40))
  {
LABEL_11:
    if (!*(a2 + 40))
    {
      return v2 >= v3;
    }

    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v2 = 4;
    if (!*(a2 + 40))
    {
      return v2 >= v3;
    }

    goto LABEL_12;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3] | a1[4];
  if (!(v7 | *a1 | v6 | v5))
  {
    v2 = 2;
    goto LABEL_11;
  }

  v8 = v7 | v6 | v5;
  if (v4 == 1 && !v8)
  {
    v2 = 3;
    if (!*(a2 + 40))
    {
      return v2 >= v3;
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v4 == 2;
  }

  v2 = 5;
  if (!v14)
  {
    v2 = 6;
  }

  if (*(a2 + 40))
  {
LABEL_12:
    if (v3 == 1)
    {
      v3 = 4;
    }

    else
    {
      v9 = *a2;
      v10 = a2[3];
      v11 = a2[4];
      v12 = a2[2] | a2[1];
      if (v12 | *a2 | v10 | v11)
      {
        v13 = v12 | v10 | v11;
        if (v9 != 1 || v13)
        {
          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v9 == 2;
          }

          v3 = 5;
          if (!v15)
          {
            v3 = 6;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }
  }

  return v2 >= v3;
}

BOOL sub_1001D55CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (!*(a2 + 40))
  {
LABEL_11:
    if (!*(a1 + 40))
    {
      return v3 < v2;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v3 = 4;
    if (!*(a1 + 40))
    {
      return v3 < v2;
    }

    goto LABEL_12;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3] | a2[4];
  if (!(v7 | *a2 | v6 | v5))
  {
    v3 = 2;
    goto LABEL_11;
  }

  v8 = v7 | v6 | v5;
  if (v4 == 1 && !v8)
  {
    v3 = 3;
    if (!*(a1 + 40))
    {
      return v3 < v2;
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v4 == 2;
  }

  v3 = 5;
  if (!v14)
  {
    v3 = 6;
  }

  if (*(a1 + 40))
  {
LABEL_12:
    if (v2 == 1)
    {
      v2 = 4;
    }

    else
    {
      v9 = *a1;
      v10 = a1[3];
      v11 = a1[4];
      v12 = a1[2] | a1[1];
      if (v12 | *a1 | v10 | v11)
      {
        v13 = v12 | v10 | v11;
        if (v9 != 1 || v13)
        {
          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v9 == 2;
          }

          v2 = 5;
          if (!v15)
          {
            v2 = 6;
          }
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 2;
      }
    }
  }

  return v3 < v2;
}

uint64_t sub_1001D56BC()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8Podcasts24DownloadsAlertController____lazy_storage___debouncer;
  if (*(v0 + OBJC_IVAR____TtC8Podcasts24DownloadsAlertController____lazy_storage___debouncer))
  {
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts24DownloadsAlertController____lazy_storage___debouncer);
  }

  else
  {
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC8Podcasts24DownloadsAlertController_debounceInterval);
    v7 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for Debouncer();
    swift_allocObject();
    v6 = sub_1002D0C50(v4, sub_1001D8844, v7);

    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1001D5830()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001D5D14();
  }

  return result;
}

uint64_t sub_1001D5888(_OWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 56);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 24) = *a1;
  *(v11 + 16) = v10;
  *(v11 + 40) = v12;
  *(v11 + 49) = *(a1 + 25);
  aBlock[4] = sub_1001D8838;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E3890;
  v13 = _Block_copy(aBlock);

  sub_1001D79C8(a1, &v18);
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_1001D293C();
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_1001D5B80(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v4 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 64) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_100243690(0, *(v5 + 2) + 1, 1, v5);
      *(v4 + 64) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_100243690((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[48 * v8];
    v10 = *a2;
    v11 = a2[1];
    *(v9 + 57) = *(a2 + 25);
    *(v9 + 2) = v10;
    *(v9 + 3) = v11;
    *(v4 + 64) = v5;
    swift_endAccess();
    sub_1001D79C8(a2, v14);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC8Podcasts24DownloadsAlertController_active);

    if (v13 == 1)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_1001D56BC();

        sub_1002D0314();
      }
    }
  }

  return result;
}

uint64_t sub_1001D5D14()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 56);
  aBlock[4] = sub_1001D7A00;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E37A0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = &_swiftEmptyArrayStorage;
  sub_1001D293C();
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_1001D5F98(uint64_t a1)
{
  sub_100010430(a1 + 16, v9, &qword_100576398);
  if (v10)
  {
    v2 = sub_1000044A0(v9, v10);
    v3 = *(*v2 + 24);
    v4 = *(*v2 + 32);
    v5 = *(*v2 + 40);
    v6 = *(*v2 + 48);
    v7 = *(*v2 + 56);
    v8 = *(*v2 + 64);
    sub_1001D871C(v3, v4, v5, v6, v7, v8);
    sub_100004590(v9);
  }

  else
  {
    sub_100009104(v9, &qword_100576398);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = -1;
  }

  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v12 = v8;

  sub_1001D7A08(v11, a1, a1);

  sub_1001D8688(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D60BC()
{
  sub_100009104(v0 + 16, &qword_100576398);

  v1 = OBJC_IVAR____TtC8Podcasts24DownloadsAlertController_debounceInterval;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D6198(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001D61B0(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_1001D61CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001D61E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001D6228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001D6278(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1001D62B0()
{
  result = qword_100576380;
  if (!qword_100576380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576380);
  }

  return result;
}

void *sub_1001D6348(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  v11 = *(a1 + 16) | *(a1 + 8) | *(a1 + 24) | *(a1 + 32);
  v12 = v11 | *a1;
  v13 = v11 == 0;
  if (*a1 == 2 && v13)
  {
    v14 = 5;
  }

  else
  {
    v14 = 6;
  }

  if (*a1 == 1 && v13)
  {
    v14 = 3;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = 2;
  }

  v16 = a2 + 72;
  v55 = v15;
  v56 = &_swiftEmptyArrayStorage;
LABEL_10:
  v17 = (v16 + 48 * v8);
  while (v10 != v8)
  {
    if (v8 >= v10)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      v2 = sub_100243690(0, *(v2 + 16) + 1, 1, v2);
      goto LABEL_74;
    }

    v18 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_80;
    }

    v3 = *(v17 - 5);
    v4 = *(v17 - 4);
    v5 = *(v17 - 3);
    v6 = *(v17 - 2);
    v7 = *(v17 - 1);
    v2 = *v17;
    v19 = v2;
    if (!*v17)
    {
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v19 = 4;
      v20 = v9;
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    if (!(v5 | v4 | v3 | v6 | v7))
    {
      v19 = 2;
LABEL_25:
      v20 = v9;
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    v21 = v5 | v4 | v6 | v7;
    if (v3 != 1 || v21)
    {
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v3 == 2;
      }

      if (v22)
      {
        v19 = 5;
      }

      else
      {
        v19 = 6;
      }

      v20 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

LABEL_26:
      if (v9 == 1)
      {
        v20 = 4;
      }

      else
      {
        v20 = v15;
      }

      goto LABEL_11;
    }

    v19 = 3;
    v20 = v9;
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_11:
    ++v8;
    v17 += 48;
    if (v19 != v20)
    {
      v51 = v16;
      v52 = a2;
      sub_1001D8730(v3, v4, v5, v6, v7, v2);
      v23 = v56;
      v60 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001A76D8(0, v56[2] + 1, 1);
        v23 = v60;
      }

      v25 = v23[2];
      v24 = v23[3];
      v26 = v25 + 1;
      v15 = v55;
      if (v25 >= v24 >> 1)
      {
        v57 = v25 + 1;
        v50 = v23[2];
        sub_1001A76D8((v24 > 1), v25 + 1, 1);
        v15 = v55;
        v26 = v57;
        v25 = v50;
        v23 = v60;
      }

      v23[2] = v26;
      v56 = v23;
      v27 = &v23[6 * v25];
      v27[4] = v3;
      v27[5] = v4;
      v27[6] = v5;
      v27[7] = v6;
      v27[8] = v7;
      *(v27 + 72) = v2;
      v8 = v18;
      v16 = v51;
      a2 = v52;
      goto LABEL_10;
    }
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v5 = 0;
  v33 = a2 + 72;
  v34 = -1;
  v4 = 4;
LABEL_43:
  v35 = (v33 + 48 * v5);
  v36 = v5;
  while (v10 != v36)
  {
    if (v36 >= v10)
    {
      goto LABEL_81;
    }

    v5 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_82;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v38 = 4;
      }

      else
      {
        v38 = v15;
      }
    }

    else
    {
      v38 = v9;
    }

    v39 = *(v35 - 5);
    v3 = *(v35 - 4);
    v6 = *(v35 - 3);
    v2 = *(v35 - 2);
    v40 = *(v35 - 1);
    LODWORD(v7) = *v35;
    v37 = *v35;
    if (*v35)
    {
      if (v7 == 1)
      {
        v37 = 4;
      }

      else if (v6 | v3 | v39 | v2 | v40)
      {
        v41 = v6 | v3 | v2 | v40;
        if (v39 != 1 || v41)
        {
          if (v41)
          {
            v42 = 0;
          }

          else
          {
            v42 = v39 == 2;
          }

          if (v42)
          {
            v37 = 5;
          }

          else
          {
            v37 = 6;
          }
        }

        else
        {
          v37 = 3;
        }
      }

      else
      {
        v37 = 2;
      }
    }

    ++v36;
    v35 += 48;
    if (v38 == v37)
    {
      if (v34)
      {
        if (v34 == 255)
        {
          v54 = v33;
          sub_1001D8730(v39, v3, v6, v2, v40, v7);
          v33 = v54;
          v15 = v55;
          v28 = v40;
          v29 = v2;
          v30 = v3;
          v31 = v39;
          v32 = v6;
          v34 = v7;
        }
      }

      else
      {
        v34 = 0;
        if (!v7)
        {
          v2 = v31;
          v3 = v28;
          v7 = v29;
          v43 = v30;
          v44 = v32;
          v53 = v33;

          sub_100013CB4(v7);

          v6 = sub_1001D50E0(v45, v44);
          sub_1001D8688(v2, v43, v44, v7, v3, 0);
          v33 = v53;
          v15 = v55;
          v31 = v2;
          v30 = v43;
          v29 = v7;
          v28 = v3;
          v34 = 0;
          v32 = v6;
        }
      }

      goto LABEL_43;
    }
  }

  v58[0] = v31;
  v58[1] = v30;
  v58[2] = v32;
  v58[3] = v29;
  v58[4] = v28;
  v59 = v34;
  if (v34 == 0xFF)
  {
    v2 = &_swiftEmptyArrayStorage;
    goto LABEL_78;
  }

  v10 = v31;
  v5 = v30;
  v6 = v32;
  v4 = v29;
  v3 = v28;
  LOBYTE(v7) = v34;
  sub_1001D8730(v31, v30, v32, v29, v28, v34);
  v2 = &_swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_74:
  v47 = *(v2 + 16);
  v46 = *(v2 + 24);
  if (v47 >= v46 >> 1)
  {
    v2 = sub_100243690((v46 > 1), v47 + 1, 1, v2);
  }

  *(v2 + 16) = v47 + 1;
  v48 = v2 + 48 * v47;
  *(v48 + 32) = v10;
  *(v48 + 40) = v5;
  *(v48 + 48) = v6;
  *(v48 + 56) = v4;
  *(v48 + 64) = v3;
  *(v48 + 72) = v7;
LABEL_78:
  sub_100009104(v58, &qword_1005763A0);
  v60 = v56;
  sub_1001C3F7C(v2);
  return v60;
}
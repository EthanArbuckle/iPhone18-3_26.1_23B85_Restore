uint64_t sub_1001A9BB8()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
  if (result)
  {
    v2 = [result text];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = static TTRAccesibility.General.Label.Untitled.getter();
      v6 = v7;
    }

    sub_100058000(&unk_100771E10);
    result = swift_allocObject();
    *(result + 16) = xmmword_10062D400;
    *(result + 32) = v4;
    *(result + 40) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A9D7C()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v9, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_100003540(0, &qword_10076BCE0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v10 = v3;
  v4 = &v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 32))(v0, ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1000816D8(v7);
      v3 = v10;
    }
  }

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v3;
    }

    goto LABEL_9;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return 0;
  }

  return v3;
}

void *sub_1001AA0A0(unint64_t a1, id a2)
{
  v4 = [a2 view];
  if (!v4)
  {

    return a1;
  }

  v5 = v4;
  if (qword_100766FD8 != -1)
  {
    swift_once();
  }

  v6 = *&qword_100771D08;
  v7 = [objc_allocWithZone(UIDragPreviewParameters) init];
  [v2 bounds];
  v12 = [objc_opt_self() bezierPathWithRoundedRect:v8 cornerRadius:{v9, v10, v11, v6}];
  [v7 setVisiblePath:v12];

  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
LABEL_15:

    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  v25 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v23 = a1 & 0xC000000000000001;
    v16 = a1;
    do
    {
      if (v23)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(a1 + 8 * v15 + 32);
      }

      v18 = v17;
      ++v15;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v7;
      aBlock[4] = sub_1001AA648;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100313CFC;
      aBlock[3] = &unk_100719AA0;
      v20 = _Block_copy(aBlock);
      v21 = v7;
      v22 = v5;

      [v18 setPreviewProvider:v20];
      _Block_release(v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a1 = v16;
    }

    while (v13 != v15);

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIPinnedListControl.ControlMargins(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIPinnedListControl.ControlMargins(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 49) = v3;
  return result;
}

BOOL sub_1001AA540(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    return (*(a2 + 48) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_100634150)) & 0xF) == 0;
  }

  return (*(a2 + 48) & 1) != 0;
}

unint64_t sub_1001AA5F0()
{
  result = qword_100771DE8;
  if (!qword_100771DE8)
  {
    type metadata accessor for ListEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771DE8);
  }

  return result;
}

id sub_1001AA648()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(UIDragPreview);

  return [v3 initWithView:v1 parameters:v2];
}

void sub_1001AA694()
{
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget) = 0;
  v1 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_count) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_usesLongTitle) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_dynamicDateGlyphCache) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_gradientBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedListBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001AA7E4(void *a1)
{
  v1 = [a1 view];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(UIPreviewParameters) init];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_allocWithZone(UITargetedPreview) initWithView:v2 parameters:v3];
  return v5;
}

void sub_1001AA8D4(uint64_t a1)
{
  sub_1001AAABC(a1, v11);
  if (v12)
  {
    sub_1001AAB2C();
    if (swift_dynamicCast())
    {
      v1 = [v10 hasMarkedText];
      v2 = [v10 text];
      if (v2)
      {
        v3 = v2;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0xE000000000000000;
      }

      v7._countAndFlagsBits = v4;
      v7._object = v6;
      object = TTRHashtagAssociationPresenterCapability.validateNewHashtagName(_:hasMarkedText:)(v7, v1).value._object;

      if (object)
      {
        v9 = String._bridgeToObjectiveC()();

        [v10 setText:v9];
      }
    }
  }

  else
  {
    sub_10000B070(v11);
  }
}

uint64_t sub_1001AAABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076AE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001AAB2C()
{
  result = qword_100771E60;
  if (!qword_100771E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100771E60);
  }

  return result;
}

void sub_1001AAB78()
{
  type metadata accessor for TTRITreeViewDropProposal(319);
  if (v0 <= 0x3F)
  {
    sub_1001C1A4C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult();
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

unint64_t sub_1001AACA0()
{
  v1 = v0;
  v2 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v2 - 8);
  v51 = &v45 - v3;
  v59 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v59 - 8);
  v5 = __chkstk_darwin(v59);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v45 - v7;
  v8 = type metadata accessor for IndexPath();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1007A84A0;
  swift_beginAccess();
  v11 = sub_100058000(qword_100771F18);
  v12 = *(*(v11 - 8) + 48);
  result = v12(v0 + v10, 1, v11);
  if (result == 1)
  {
    goto LABEL_47;
  }

  if ([*(v0 + v10) localDragSession])
  {
    swift_getObjectType();
    v57 = *(v0 + qword_100771E88);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = sub_10039C078(Strong);

    swift_unknownObjectRelease();
    if (v15)
    {
      v16 = qword_1007A8808;
      swift_beginAccess();
      v17 = *(v15 + v16);

      v18 = v17 + 56;
      v19 = 1 << *(v17 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v17 + 56);
      v22 = (v19 + 63) >> 6;
      v56 = v60 + 16;
      v47 = (v4 + 16);
      v53 = (v60 + 8);
      v54 = (v4 + 56);
      v52 = (v4 + 48);
      v45 = v4;
      v46 = (v4 + 32);
      v58 = v17;

      v23 = 0;
      v48 = _swiftEmptyArrayStorage;
      v24 = v51;
      v55 = v8;
      while (1)
      {
        v25 = v23;
        if (!v21)
        {
          while (1)
          {
            v23 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v23 >= v22)
            {

              return v48;
            }

            v21 = *(v18 + 8 * v23);
            ++v25;
            if (v21)
            {
              goto LABEL_11;
            }
          }

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
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return result;
        }

LABEL_11:
        (*(v60 + 16))(v62, *(v58 + 48) + *(v60 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v8);
        v26 = sub_1000C8504();
        v61 = v27;
        v28 = *(v26 + 16);
        v29 = IndexPath.section.getter();
        if (v29 < 0 || v29 >= v28)
        {
          break;
        }

        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (result >= *(v26 + 16))
        {
          goto LABEL_43;
        }

        v30 = *(v26 + 16 * result + 40);
        if (v30 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v31 = result;
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = IndexPath.row.getter();
        if ((v32 & 0x8000000000000000) != 0 || v32 >= v31)
        {

          v24 = v51;
          goto LABEL_26;
        }

        result = IndexPath.row.getter();
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (result >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v33 = *(v30 + 8 * result + 32);
        }

        v34 = *(*v33 + 144);
        swift_beginAccess();
        v24 = v51;
        (*v47)(v51, v33 + v34, v59);

        v35 = 0;
LABEL_27:
        v8 = v55;
        v21 &= v21 - 1;
        v36 = v59;
        (*v54)(v24, v35, 1, v59);
        (*v53)(v62, v8);
        if ((*v52)(v24, 1, v36) == 1)
        {
          result = sub_1000079B4(v24, &unk_100771B40);
        }

        else
        {
          v37 = *v46;
          v38 = v49;
          v39 = v59;
          (*v46)(v49, v24, v59);
          v37(v50, v38, v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_100547678(0, v48[2] + 1, 1, v48);
          }

          v41 = v48[2];
          v40 = v48[3];
          if (v41 >= v40 >> 1)
          {
            v48 = sub_100547678(v40 > 1, v41 + 1, 1, v48);
          }

          v42 = v48;
          v48[2] = v41 + 1;
          result = (v37)(v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v41, v50, v59);
        }
      }

LABEL_26:

      v35 = 1;
      goto LABEL_27;
    }
  }

  result = v12(v1 + v10, 1, v11);
  if (result == 1)
  {
    goto LABEL_48;
  }

  v43 = [*(v1 + v10) items];
  sub_1000776A8();
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v44;
}

unint64_t sub_1001AB458()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v51 = &v45 - v3;
  v59 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v45 - v7;
  v8 = type metadata accessor for IndexPath();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1007A84A0;
  swift_beginAccess();
  v11 = sub_100058000(qword_100771F18);
  v12 = *(*(v11 - 8) + 48);
  result = v12(v0 + v10, 1, v11);
  if (result == 1)
  {
    goto LABEL_47;
  }

  if ([*(v0 + v10) localDragSession])
  {
    swift_getObjectType();
    v57 = *(v0 + qword_100771E88);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = sub_10039C078(Strong);

    swift_unknownObjectRelease();
    if (v15)
    {
      v16 = qword_1007A8808;
      swift_beginAccess();
      v17 = *(v15 + v16);

      v18 = v17 + 56;
      v19 = 1 << *(v17 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v17 + 56);
      v22 = (v19 + 63) >> 6;
      v56 = v60 + 16;
      v47 = (v4 + 16);
      v53 = (v60 + 8);
      v54 = (v4 + 56);
      v52 = (v4 + 48);
      v45 = v4;
      v46 = (v4 + 32);
      v58 = v17;

      v23 = 0;
      v48 = _swiftEmptyArrayStorage;
      v24 = v51;
      v55 = v8;
      while (1)
      {
        v25 = v23;
        if (!v21)
        {
          while (1)
          {
            v23 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v23 >= v22)
            {

              return v48;
            }

            v21 = *(v18 + 8 * v23);
            ++v25;
            if (v21)
            {
              goto LABEL_11;
            }
          }

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
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return result;
        }

LABEL_11:
        (*(v60 + 16))(v62, *(v58 + 48) + *(v60 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v8);
        v26 = sub_1000C84C8();
        v61 = v27;
        v28 = *(v26 + 16);
        v29 = IndexPath.section.getter();
        if (v29 < 0 || v29 >= v28)
        {
          break;
        }

        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (result >= *(v26 + 16))
        {
          goto LABEL_43;
        }

        v30 = *(v26 + 16 * result + 40);
        if (v30 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v31 = result;
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = IndexPath.row.getter();
        if ((v32 & 0x8000000000000000) != 0 || v32 >= v31)
        {

          v24 = v51;
          goto LABEL_26;
        }

        result = IndexPath.row.getter();
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (result >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v33 = *(v30 + 8 * result + 32);
        }

        v34 = *(*v33 + 144);
        swift_beginAccess();
        v24 = v51;
        (*v47)(v51, v33 + v34, v59);

        v35 = 0;
LABEL_27:
        v8 = v55;
        v21 &= v21 - 1;
        v36 = v59;
        (*v54)(v24, v35, 1, v59);
        (*v53)(v62, v8);
        if ((*v52)(v24, 1, v36) == 1)
        {
          result = sub_1000079B4(v24, &qword_100772140);
        }

        else
        {
          v37 = *v46;
          v38 = v49;
          v39 = v59;
          (*v46)(v49, v24, v59);
          v37(v50, v38, v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_100547094(0, v48[2] + 1, 1, v48);
          }

          v41 = v48[2];
          v40 = v48[3];
          if (v41 >= v40 >> 1)
          {
            v48 = sub_100547094(v40 > 1, v41 + 1, 1, v48);
          }

          v42 = v48;
          v48[2] = v41 + 1;
          result = (v37)(v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v41, v50, v59);
        }
      }

LABEL_26:

      v35 = 1;
      goto LABEL_27;
    }
  }

  result = v12(v1 + v10, 1, v11);
  if (result == 1)
  {
    goto LABEL_48;
  }

  v43 = [*(v1 + v10) items];
  sub_1000776A8();
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v44;
}

void *sub_1001ABC10()
{
  result = sub_1001C42C8();
  if (result)
  {
    if ([result localDragSession])
    {
      swift_getObjectType();
      v1 = sub_1001893F4();
      v2 = sub_10039C078(v1);

      swift_unknownObjectRelease();
      if (v2)
      {
        swift_beginAccess();

        sub_100058000(&qword_100772168);
        sub_1001C4394();
        v3 = Sequence.compactMap<A>(_:)();

        return v3;
      }
    }

    result = sub_1001C42C8();
    if (result)
    {
      v4 = [result items];
      sub_1000776A8();
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001ABDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v280 = a3;
  v293 = a5;
  v8 = sub_100058000(&qword_100772190);
  __chkstk_darwin(v8 - 8);
  v273 = &v240 - v9;
  v10 = sub_100058000(&qword_100772198);
  __chkstk_darwin(v10 - 8);
  v259 = &v240 - v11;
  v255 = sub_100058000(&qword_1007721A0);
  __chkstk_darwin(v255);
  v254 = &v240 - v12;
  v269 = sub_100058000(&unk_1007721A8);
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v247 = &v240 - v13;
  v14 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  v15 = __chkstk_darwin(v14 - 8);
  v275 = &v240 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v263 = &v240 - v17;
  v266 = sub_100058000(&unk_10076BD90);
  __chkstk_darwin(v266);
  v267 = &v240 - v18;
  v19 = sub_100058000(&qword_1007721B8);
  v20 = __chkstk_darwin(v19 - 8);
  v253 = &v240 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v251 = &v240 - v23;
  __chkstk_darwin(v22);
  v252 = &v240 - v24;
  v256 = sub_100058000(&qword_1007721C0);
  v25 = __chkstk_darwin(v256);
  v246 = &v240 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v242 = &v240 - v28;
  __chkstk_darwin(v27);
  v244 = &v240 - v29;
  v260 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v265 = *(v260 - 8);
  v30 = __chkstk_darwin(v260);
  v250 = &v240 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v245 = &v240 - v33;
  v34 = __chkstk_darwin(v32);
  v241 = &v240 - v35;
  __chkstk_darwin(v34);
  v243 = &v240 - v36;
  v37 = sub_100058000(&qword_1007721C8);
  v38 = __chkstk_darwin(v37 - 8);
  v248 = &v240 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v272 = &v240 - v41;
  v42 = __chkstk_darwin(v40);
  v276 = &v240 - v43;
  v44 = __chkstk_darwin(v42);
  v261 = &v240 - v45;
  v46 = __chkstk_darwin(v44);
  v264 = &v240 - v47;
  __chkstk_darwin(v46);
  v270 = &v240 - v48;
  v49 = sub_100058000(&qword_1007721D0);
  v50 = __chkstk_darwin(v49 - 8);
  v262 = &v240 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v274 = &v240 - v52;
  v283 = type metadata accessor for IndexPath();
  v282 = *(v283 - 8);
  v53 = __chkstk_darwin(v283);
  v249 = &v240 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v257 = &v240 - v56;
  __chkstk_darwin(v55);
  v278 = &v240 - v57;
  v291 = sub_100058000(&qword_1007721D8);
  __chkstk_darwin(v291);
  v292 = &v240 - v58;
  v59 = sub_100058000(&unk_1007721E0);
  v60 = __chkstk_darwin(v59 - 8);
  v285 = &v240 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v281 = &v240 - v63;
  __chkstk_darwin(v62);
  v65 = &v240 - v64;
  v66 = sub_100058000(&unk_10076BA80);
  v67 = *(v66 - 8);
  v289 = v66;
  v290 = v67;
  v68 = __chkstk_darwin(v66);
  v286 = (&v240 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __chkstk_darwin(v68);
  v277 = &v240 - v71;
  __chkstk_darwin(v70);
  v73 = &v240 - v72;
  v74 = sub_100058000(&unk_100780EE0);
  __chkstk_darwin(v74 - 8);
  v76 = (&v240 - v75);
  v77 = sub_100058000(&unk_100771B10);
  v78 = __chkstk_darwin(v77 - 8);
  v258 = &v240 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v271 = &v240 - v81;
  v82 = __chkstk_darwin(v80);
  v279 = &v240 - v83;
  __chkstk_darwin(v82);
  v85 = &v240 - v84;
  v86 = qword_1007A84A0;
  v297 = a2;

  v87 = a4;
  swift_beginAccess();
  sub_10000794C(a1 + v86, v76, &unk_100780EE0);
  v88 = sub_100058000(qword_100771F18);
  if ((*(*(v88 - 8) + 48))(v76, 1, v88) != 1)
  {
    v89 = *v76;
    v90 = v76[1];
    sub_100016588(v76 + *(v88 + 64), v85, &unk_100771B10);
    swift_retain_n();
    v294 = v87;
    v287 = v90;
    v288 = v85;
    v91 = v90;
    v296 = v89;
    v92 = a1;
    sub_1001B7938(v91, v89, v85, v73);
    v295 = v73;
    sub_10000794C(v73, v65, &unk_10076BA80);
    v94 = v289;
    v93 = v290;
    v284 = *(v290 + 56);
    v284(v65, 0, 1, v289);
    v95 = *(*a1 + 120);
    swift_beginAccess();
    v96 = v292;
    v97 = *(v291 + 48);
    sub_10000794C(v65, v292, &unk_1007721E0);
    v291 = v95;
    sub_10000794C(v92 + v95, &v96[v97], &unk_1007721E0);
    v98 = *(v93 + 48);
    if (v98(v96, 1, v94) == 1)
    {
      sub_1000079B4(v65, &unk_1007721E0);
      v99 = v98(&v96[v97], 1, v94);
      v100 = v295;
      if (v99 == 1)
      {
        swift_unknownObjectRelease();

        sub_1000079B4(v96, &unk_1007721E0);
LABEL_14:
        sub_1000079B4(v100, &unk_10076BA80);
        sub_1000079B4(v288, &unk_100771B10);
        v117 = qword_1007A8498;
        swift_beginAccess();
        sub_1001C4200(v92 + v117, v293);
        v106 = v294;
LABEL_61:

        return;
      }
    }

    else
    {
      v101 = v281;
      sub_10000794C(v96, v281, &unk_1007721E0);
      if (v98(&v96[v97], 1, v94) != 1)
      {
        v115 = v277;
        sub_100016588(&v96[v97], v277, &unk_10076BA80);
        v116 = sub_1001BFCFC(v101, v115);
        sub_1000079B4(v115, &unk_10076BA80);
        sub_1000079B4(v65, &unk_1007721E0);
        sub_1000079B4(v101, &unk_10076BA80);
        sub_1000079B4(v96, &unk_1007721E0);
        v100 = v295;
        if (v116)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

LABEL_8:
        v102 = v285;
        sub_10000794C(v100, v285, &unk_10076BA80);
        v284(v102, 0, 1, v94);
        v103 = v291;
        swift_beginAccess();
        sub_10000D184(v102, v92 + v103, &unk_1007721E0);
        swift_endAccess();
        v104 = v286;
        sub_10000794C(v100, v286, &unk_10076BA80);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          v118 = v273;
          sub_100016588(v104, v273, &qword_100772190);
          v119 = v297;

          v106 = v294;
          v120 = v294;
          sub_1001BA5CC(v118, v296, v92, v119, v280, v120, v293);
          swift_unknownObjectRelease();

          sub_1000079B4(v118, &qword_100772190);
          sub_1000079B4(v100, &unk_10076BA80);
          v121 = v288;
LABEL_60:
          sub_1000079B4(v121, &unk_100771B10);
          goto LABEL_61;
        }

        v106 = v294;
        if (EnumCaseMultiPayload == 1)
        {
          v107 = v279;
          sub_100016588(v104, v279, &unk_100771B10);
          v108 = v271;
          sub_10000794C(v107, v271, &unk_100771B10);
          v109 = v282;
          v111 = v282 + 48;
          v110 = *(v282 + 48);
          v112 = v283;
          if (v110(v108, 1, v283) == 1)
          {

            v113 = v106;
            sub_1000079B4(v108, &unk_100771B10);
            v114 = qword_1007A8498;
            swift_beginAccess();
            sub_1001C4200(v92 + v114, v293);

LABEL_56:
            v238 = v288;
            swift_unknownObjectRelease();
            sub_1000079B4(v107, &unk_100771B10);
            sub_1000079B4(v100, &unk_10076BA80);
            sub_1000079B4(v238, &unk_100771B10);
            goto LABEL_61;
          }

          v135 = *(v109 + 32);
          v289 = v109 + 32;
          v286 = v135;
          (v135)(v278, v108, v112);
          v136 = *(v268 + 56);
          v136(v274, 1, 1, v269);

          v292 = v106;
          v137 = v270;
          sub_1001C171C(v296, v270);
          v138 = v264;
          sub_10000794C(v137, v264, &qword_1007721C8);
          v290 = v111;
          v291 = v110;
          v139 = v110(v138, 2, v112);
          if (v139)
          {
            if (v139 != 1)
            {
              v187 = sub_1001AACA0();
              v189 = v188;
              v190 = v282;
              v191 = v258;
              v145 = v283;
              (*(v282 + 16))(v258, v278, v283);
              (*(v190 + 56))(v191, 0, 1, v145);
              v192 = v252;
              sub_1001AEA30(v187, v189 & 1, v191, v252);

              sub_1000079B4(v191, &unk_100771B10);
              v193 = sub_100058000(&unk_1007819B0);
              if ((*(*(v193 - 8) + 48))(v192, 1, v193) == 1)
              {
                (*(v190 + 8))(v278, v145);
                sub_1000079B4(v192, &qword_1007721B8);
                v152 = 0;
                v168 = v263;
                v169 = v262;
                v170 = v261;
                goto LABEL_38;
              }

              v285 = *&v192[*(v193 + 48)];
              v219 = v192;
              v220 = v256;
              v221 = *(v256 + 48);
              v222 = v265;
              v223 = *(v265 + 32);
              v224 = v244;
              v225 = v260;
              v223(v244, v219, v260);
              *&v224[v221] = v285;
              v285 = *&v224[*(v220 + 48)];
              v226 = v243;
              v223(v243, v224, v225);
              v106 = v294;
              v100 = v295;
              v227 = *(v193 + 48);
              v228 = v267;
              (*(v222 + 16))(v267, v226, v225);
              *(v228 + v227) = v285;
              swift_storeEnumTagMultiPayload();
              v152 = sub_1000BDD44(v228, v297, v280, v292);
              sub_1000079B4(v228, &unk_10076BD90);
              v229 = v225;
              v194 = v274;
              (*(v222 + 8))(v226, v229);
              (*(v282 + 8))(v278, v145);
              v168 = v263;
              v169 = v262;
              v170 = v261;
LABEL_45:
              sub_100016588(v270, v170, &qword_1007721C8);
              v230 = (v291)(v170, 2, v145);
              if (v230)
              {
                if (v230 == 1)
                {
                  v231 = 3;
                  if (v152)
                  {
                    goto LABEL_48;
                  }

LABEL_51:
                  sub_1000079B4(v194, &qword_1007721D0);
                  v233 = 1;
                  v231 = 1;
LABEL_55:
                  v107 = v279;
                  v235 = sub_100058000(&qword_100780DC0);
                  (*(*(v235 - 8) + 56))(v168, v233, 4, v235);
                  v236 = type metadata accessor for TTRITreeViewDropProposal(0);
                  v237 = v293;
                  sub_1001C4264(v168, v293 + *(v236 + 20));

                  *v237 = v231;
                  goto LABEL_56;
                }

                v231 = 2;
                if ((v152 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                sub_1000079B4(v170, &qword_1007721C8);
                v231 = 3;
                if ((v152 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

LABEL_48:
              sub_100016588(v194, v169, &qword_1007721D0);
              v232 = v269;
              if ((*(v268 + 48))(v169, 1, v269) == 1)
              {
                sub_1000079B4(v169, &qword_1007721D0);
                v233 = 2;
              }

              else
              {
                v234 = v247;
                sub_100016588(v169, v247, &unk_1007721A8);
                (v286)(v168, v234 + *(v232 + 36), v283);
                v233 = 0;
              }

              goto LABEL_55;
            }

            v140 = v274;
            sub_1000079B4(v274, &qword_1007721D0);
            v141 = v269;
            v142 = v282;
            v143 = *(v282 + 16);
            v144 = v278;
            v145 = v283;
            v143(&v140[*(v269 + 36)], v278, v283);
            *v140 = 0;
            v136(v140, 0, 1, v141);
            v146 = v142;
            v147 = sub_1001AACA0();
            LOBYTE(v141) = v148;
            v149 = v258;
            v143(v258, v144, v145);
            (*(v146 + 56))(v149, 0, 1, v145);
            v150 = v253;
            sub_1001AEA30(v147, v141 & 1, v149, v253);

            sub_1000079B4(v149, &unk_100771B10);
            v151 = sub_100058000(&unk_1007819B0);
            if ((*(*(v151 - 8) + 48))(v150, 1, v151) == 1)
            {
              (*(v146 + 8))(v144, v145);
              sub_1000079B4(v150, &qword_1007721B8);
              v152 = 0;
              v106 = v294;
              v100 = v295;
LABEL_33:
              v168 = v263;
              v169 = v262;
              v170 = v261;
LABEL_38:
              v194 = v274;
              goto LABEL_45;
            }

            v285 = *&v150[*(v151 + 48)];
            v195 = v150;
            v196 = v256;
            v197 = *(v256 + 48);
            v198 = v265;
            v199 = *(v265 + 32);
            v200 = v246;
            v201 = v260;
            v199(v246, v195, v260);
            *&v200[v197] = v285;
            v285 = *&v200[*(v196 + 48)];
            v202 = v245;
            v199(v245, v200, v201);
            v203 = *(v151 + 48);
            v204 = v267;
            (*(v198 + 16))(v267, v202, v201);
            *(v204 + v203) = v285;
            swift_storeEnumTagMultiPayload();
            v152 = sub_1000BDD44(v204, v297, v280, v292);
            sub_1000079B4(v204, &unk_10076BD90);
            v205 = v201;
            v194 = v274;
            (*(v198 + 8))(v202, v205);
            (*(v146 + 8))(v278, v145);
            v106 = v294;
            v100 = v295;
          }

          else
          {
            v162 = v257;
            v145 = v283;
            (v286)(v257, v138, v283);
            v163 = v162;
            v164 = v251;
            v165 = v278;
            sub_1001AF758(v162, v278, 0, 0, v251);
            v166 = sub_100058000(&unk_1007819B0);
            if ((*(*(v166 - 8) + 48))(v164, 1, v166) == 1)
            {
              v167 = *(v282 + 8);
              v167(v163, v145);
              v167(v165, v145);
              sub_1000079B4(v164, &qword_1007721B8);
              v152 = 0;
              goto LABEL_33;
            }

            v285 = *(v164 + *(v166 + 48));
            v206 = v256;
            v207 = v164;
            v208 = *(v256 + 48);
            v209 = v282;
            v210 = v265;
            v211 = *(v265 + 32);
            v212 = v242;
            v213 = v260;
            v211(v242, v207, v260);
            *&v212[v208] = v285;
            v285 = *&v212[*(v206 + 48)];
            v214 = v241;
            v211(v241, v212, v213);
            v106 = v294;
            v100 = v295;
            v215 = *(v166 + 48);
            v216 = v267;
            (*(v210 + 16))(v267, v214, v213);
            *(v216 + v215) = v285;
            swift_storeEnumTagMultiPayload();
            v152 = sub_1000BDD44(v216, v297, v280, v292);
            sub_1000079B4(v216, &unk_10076BD90);
            v217 = v213;
            v194 = v274;
            (*(v210 + 8))(v214, v217);
            v218 = *(v209 + 8);
            v218(v257, v145);
            v218(v278, v145);
          }

          v168 = v263;
          v169 = v262;
          v170 = v261;
          goto LABEL_45;
        }

        v292 = v106;
        v122 = v276;
        sub_1001C171C(v296, v276);
        v123 = sub_100058000(&qword_100780DC0);
        v124 = (*(v123 - 8) + 56);
        v125 = v275;
        v291 = *v124;
        (v291)(v275, 1, 4, v123);
        v126 = v272;
        sub_10000794C(v122, v272, &qword_1007721C8);
        v127 = *(v282 + 48);
        v128 = v127(v126, 2, v283);
        if (v128)
        {
          if (v128 != 1)
          {
            v158 = v267;
            swift_storeEnumTagMultiPayload();
            v157 = v292;
            v159 = sub_1000BDD44(v158, v297, v280, v292);
            sub_1000079B4(v158, &unk_10076BD90);
            if (v159)
            {
              v160 = v248;
              sub_100016588(v122, v248, &qword_1007721C8);
              v161 = v127(v160, 2, v283);
              if (v161)
              {
                v154 = v293;
                v156 = v287;
                v155 = v288;
                if (v161 == 1)
                {
                  v153 = 3;
                }

                else
                {
                  v153 = 2;
                }

                goto LABEL_59;
              }

              sub_1000079B4(v160, &qword_1007721C8);
              v153 = 3;
            }

            else
            {
              sub_1000079B4(v122, &qword_1007721C8);
              v153 = 1;
            }

            v154 = v293;
            v156 = v287;
            v155 = v288;
LABEL_59:
            v239 = type metadata accessor for TTRITreeViewDropProposal(0);
            sub_1001C4264(v125, v154 + *(v239 + 20));

            *v154 = v153;
            swift_unknownObjectRelease();
            sub_1000079B4(v100, &unk_10076BA80);
            v121 = v155;
            goto LABEL_60;
          }

          v129 = sub_1001AACA0();
          v131 = v259;
          sub_1001B5AEC(v129, v130 & 1, v259);

          v132 = sub_100058000(&unk_1007721F0);
          if ((*(*(v132 - 8) + 48))(v131, 1, v132) != 1)
          {
            v286 = v124;
            v171 = *(v131 + *(v132 + 48));
            v290 = *(v132 + 64);
            v172 = v255;
            v173 = *(v255 + 48);
            v289 = *(v255 + 64);
            v174 = *(v265 + 32);
            v175 = v254;
            v176 = v260;
            v174(v254, v131, v260);
            *&v175[v173] = v171;
            v177 = v282 + 32;
            v178 = *(v282 + 32);
            v179 = v283;
            v178(&v175[v289], v131 + v290, v283);
            v290 = *&v175[*(v172 + 48)];
            v180 = *(v172 + 64);
            v181 = v250;
            v174(v250, v175, v176);
            v182 = &v175[v180];
            v183 = v249;
            v289 = v177;
            v178(v249, v182, v179);
            v184 = *(sub_100058000(&unk_1007819B0) + 48);
            v185 = v265;
            v186 = v267;
            (*(v265 + 16))(v267, v181, v176);
            *(v186 + v184) = v290;
            swift_storeEnumTagMultiPayload();
            LOBYTE(v184) = sub_1000BDD44(v186, v297, v280, v292);
            sub_1000079B4(v186, &unk_10076BD90);
            (*(v185 + 8))(v181, v176);
            sub_1000079B4(v276, &qword_1007721C8);
            if ((v184 & 1) == 0)
            {
              (*(v282 + 8))(v183, v179);
              v153 = 0;
              v154 = v293;
              v106 = v294;
              v100 = v295;
              v156 = v287;
              v155 = v288;
              v125 = v275;
              v157 = v292;
              goto LABEL_59;
            }

            v125 = v275;
            sub_1001C445C(v275, type metadata accessor for TTRITreeViewDropProposal.Intent);
            v178(v125, v183, v179);
            (v291)(v125, 0, 4, v123);
            v153 = 3;
            v154 = v293;
            v106 = v294;
            v100 = v295;
            goto LABEL_26;
          }

          sub_1000079B4(v122, &qword_1007721C8);
          v133 = &qword_100772198;
          v134 = v131;
        }

        else
        {
          sub_1000079B4(v122, &qword_1007721C8);
          v134 = v126;
          v133 = &qword_1007721C8;
        }

        sub_1000079B4(v134, v133);
        v153 = 0;
        v154 = v293;
LABEL_26:
        v155 = v288;
        v156 = v287;
        v157 = v292;
        goto LABEL_59;
      }

      sub_1000079B4(v65, &unk_1007721E0);
      sub_1000079B4(v101, &unk_10076BA80);
      v100 = v295;
    }

    sub_1000079B4(v96, &qword_1007721D8);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1001AE02C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v80 = a4;
  v7 = sub_100058000(&qword_1007720C8);
  __chkstk_darwin(v7 - 8);
  v67 = &v65 - v8;
  v79 = sub_100058000(&unk_1007720D0);
  __chkstk_darwin(v79);
  v77 = &v65 - v9;
  v10 = sub_100058000(&unk_10076BBE0);
  __chkstk_darwin(v10 - 8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v65 - v13;
  __chkstk_darwin(v14);
  v81 = &v65 - v15;
  v16 = sub_100058000(&unk_1007720E0);
  v78 = *(v16 - 8);
  __chkstk_darwin(v16);
  v71 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v65 - v19;
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v23 = sub_100058000(&unk_100780EE0);
  __chkstk_darwin(v23 - 8);
  v25 = (&v65 - v24);
  v26 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v26 - 8);
  v66 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v31 = qword_1007A84A0;
  v82 = a2;

  v32 = a3;
  swift_beginAccess();
  sub_10000794C(a1 + v31, v25, &unk_100780EE0);
  v33 = sub_100058000(qword_100771F18);
  if ((*(*(v33 - 8) + 48))(v25, 1, v33) != 1)
  {
    v34 = *v25;
    v35 = v25[1];
    sub_100016588(v25 + *(v33 + 64), v30, &unk_100771B10);
    swift_retain_n();
    v36 = v32;
    v74 = v35;
    v75 = v36;
    v73 = v34;
    v76 = v30;
    sub_1001B836C(v35, v34, v30, v22);
    v37 = v81;
    sub_10000794C(v22, v81, &unk_1007720E0);
    v38 = v78;
    v70 = *(v78 + 56);
    v70(v37, 0, 1, v16);
    v39 = *(*a1 + 120);
    swift_beginAccess();
    v40 = *(v79 + 48);
    v41 = v37;
    v42 = v77;
    sub_10000794C(v41, v77, &unk_10076BBE0);
    v79 = a1;
    sub_10000794C(a1 + v39, v42 + v40, &unk_10076BBE0);
    v43 = *(v38 + 48);
    if (v43(v42, 1, v16) == 1)
    {
      sub_1000079B4(v81, &unk_10076BBE0);
      if (v43(v42 + v40, 1, v16) == 1)
      {
        swift_unknownObjectRelease();

        sub_1000079B4(v22, &unk_1007720E0);
        sub_1000079B4(v76, &unk_100771B10);
        sub_1000079B4(v42, &unk_10076BBE0);
        v44 = v75;
LABEL_14:
        v59 = v79;
        v60 = qword_1007A8498;
        swift_beginAccess();
        sub_1001C4200(v59 + v60, v80);
LABEL_18:

        return;
      }
    }

    else
    {
      v45 = v81;
      v46 = v69;
      sub_10000794C(v42, v69, &unk_10076BBE0);
      if (v43(v42 + v40, 1, v16) != 1)
      {
        v58 = v68;
        sub_100016588(v42 + v40, v68, &unk_1007720E0);
        LODWORD(v78) = sub_1001C04A8(v46, v58);
        sub_1000079B4(v58, &unk_1007720E0);
        sub_1000079B4(v45, &unk_10076BBE0);
        sub_1000079B4(v46, &unk_1007720E0);
        sub_1000079B4(v42, &unk_10076BBE0);
        v44 = v75;
        if (v78)
        {
          swift_unknownObjectRelease();

          sub_1000079B4(v22, &unk_1007720E0);
          sub_1000079B4(v76, &unk_100771B10);
          goto LABEL_14;
        }

LABEL_8:
        v47 = v72;
        sub_10000794C(v22, v72, &unk_1007720E0);
        v70(v47, 0, 1, v16);
        v48 = v79;
        swift_beginAccess();
        sub_10000D184(v47, v48 + v39, &unk_10076BBE0);
        swift_endAccess();
        v49 = v71;
        sub_10000794C(v22, v71, &unk_1007720E0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v51 = v82;
          v52 = v76;
          if (EnumCaseMultiPayload == 1)
          {
            v53 = v49;
            v54 = v66;
            sub_100016588(v53, v66, &unk_100771B10);

            v55 = v44;
            v56 = v74;
            sub_1001B8DA0(v54, v73, v48, v51, v55, v80);
            swift_unknownObjectRelease();

            sub_1000079B4(v54, &unk_100771B10);
          }

          else
          {

            v64 = v44;
            sub_1001B9E08(v73, v51, v64, v80);
            swift_unknownObjectRelease();
          }

          sub_1000079B4(v22, &unk_1007720E0);
          v57 = v52;
        }

        else
        {
          v61 = v67;
          sub_100016588(v49, v67, &qword_1007720C8);
          v62 = v82;

          v63 = v44;
          sub_1001BCD34(v61, v73, v48, v62, v63, v80);
          swift_unknownObjectRelease();

          sub_1000079B4(v61, &qword_1007720C8);
          sub_1000079B4(v22, &unk_1007720E0);
          v57 = v76;
        }

        sub_1000079B4(v57, &unk_100771B10);
        goto LABEL_18;
      }

      sub_1000079B4(v45, &unk_10076BBE0);
      sub_1000079B4(v46, &unk_1007720E0);
    }

    sub_1000079B4(v42, &unk_1007720D0);
    v44 = v75;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1001AEA30@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v68 = a4;
  v7 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_100058000(qword_100772218);
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  v66 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v69 = *(v66 - 8);
  v13 = __chkstk_darwin(v66);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v63 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v63 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v63 - v23;
  __chkstk_darwin(v22);
  v65 = &v63 - v25;
  v26 = v67;
  v67 = v4;
  sub_1001B2298(a1, a2 & 1, v26, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v18;
    v63 = v21;
    v29 = *(v69 + 32);
    v42 = v66;
    v29(v24, v12, v66);
    sub_1000C8504();
    v64 = v24;
    v44 = sub_1000F4DB4(v24, v43);

    if (v44)
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v46 = *(*Strong + 144);
        swift_beginAccess();
        v47 = v69;
        (*(v69 + 16))(v41, Strong + v46, v42);

        v48 = v63;
        v29(v63, v41, v42);
        v49 = v64;
        v50 = sub_1003BBFE0(v64);
        v51 = *(v47 + 8);
        if ((v52 & 1) == 0)
        {
          v32 = v50;
          v51(v49, v42);
          v59 = v65;
          v29(v65, v48, v42);
          goto LABEL_21;
        }

        v51(v48, v42);
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100003E30(v53, qword_1007716F0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Missing parent/childIndex", v56, 2u);
    }

    (*(v69 + 8))(v64, v42);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_18:
    v57 = sub_100058000(&unk_1007819B0);
    return (*(*(v57 - 8) + 56))(v68, 1, 1, v57);
  }

  v28 = v69;
  v29 = *(v69 + 32);
  v30 = v12;
  v31 = v66;
  v29(v15, v30, v66);
  (*(v28 + 16))(v9, v15, v31);
  (*(v28 + 56))(v9, 0, 1, v31);
  v32 = sub_1003BC960(v9);
  v34 = v33;
  sub_1000079B4(v9, &unk_100771B40);
  if (v34)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_1007716F0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v66;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing parent child count", v40, 2u);
    }

    (*(v69 + 8))(v15, v39);
    goto LABEL_18;
  }

  v59 = v65;
  v29(v65, v15, v31);
  v42 = v31;
LABEL_21:
  v60 = sub_100058000(&unk_1007819B0);
  v61 = *(v60 + 48);
  v62 = v68;
  v29(v68, v59, v42);
  *&v62[v61] = v32;
  return (*(*(v60 - 8) + 56))(v62, 0, 1, v60);
}

uint64_t sub_1001AF0C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v68 = a4;
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_100058000(&unk_100772158);
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  v66 = type metadata accessor for TTRRemindersListViewModel.Item();
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  __chkstk_darwin(v24);
  v65 = &v63 - v25;
  v26 = v67;
  v67 = v4;
  sub_1001B284C(a1, a2 & 1, v26, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v17;
    v63 = v20;
    v29 = *(v69 + 32);
    v42 = v66;
    v29(v23, v12, v66);
    sub_1000C84C8();
    v64 = v23;
    v44 = sub_1000F2C50(v23, v43);

    if (v44)
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v46 = *(*Strong + 144);
        swift_beginAccess();
        v47 = v69;
        (*(v69 + 16))(v41, Strong + v46, v42);

        v48 = v63;
        v29(v63, v41, v42);
        v49 = v64;
        v50 = sub_1003BC034(v64);
        v51 = *(v47 + 8);
        if ((v52 & 1) == 0)
        {
          v32 = v50;
          v51(v49, v42);
          v59 = v65;
          v29(v65, v48, v42);
          goto LABEL_21;
        }

        v51(v48, v42);
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100003E30(v53, qword_1007716F0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Missing parent/childIndex", v56, 2u);
    }

    (*(v69 + 8))(v64, v42);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_18:
    v57 = sub_100058000(&unk_100772130);
    return (*(*(v57 - 8) + 56))(v68, 1, 1, v57);
  }

  v28 = v69;
  v29 = *(v69 + 32);
  v30 = v12;
  v31 = v66;
  v29(v14, v30, v66);
  (*(v28 + 16))(v9, v14, v31);
  (*(v28 + 56))(v9, 0, 1, v31);
  v32 = sub_1003BCE6C(v9);
  v34 = v33;
  sub_1000079B4(v9, &qword_100772140);
  if (v34)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_1007716F0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v66;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing parent child count", v40, 2u);
    }

    (*(v69 + 8))(v14, v39);
    goto LABEL_18;
  }

  v59 = v65;
  v29(v65, v14, v31);
  v42 = v31;
LABEL_21:
  v60 = sub_100058000(&unk_100772130);
  v61 = *(v60 + 48);
  v62 = v68;
  v29(v68, v59, v42);
  *&v62[v61] = v32;
  return (*(*(v60 - 8) + 56))(v62, 0, 1, v60);
}

uint64_t sub_1001AF758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v191 = a4;
  LODWORD(v200) = a3;
  v198 = a5;
  v199 = a2;
  v185 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v184 = *(v185 - 8);
  v6 = __chkstk_darwin(v185);
  v183 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v182 = &v182 - v8;
  v9 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v9 - 8);
  v193 = (&v182 - v10);
  v11 = sub_100058000(&unk_100772208);
  v12 = __chkstk_darwin(v11);
  v194 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v182 - v15;
  __chkstk_darwin(v14);
  v18 = &v182 - v17;
  v19 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v202 = *(v19 - 8);
  v203 = v19;
  v20 = __chkstk_darwin(v19);
  v186 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v187 = &v182 - v23;
  v24 = __chkstk_darwin(v22);
  v190 = &v182 - v25;
  v26 = __chkstk_darwin(v24);
  v188 = &v182 - v27;
  v28 = __chkstk_darwin(v26);
  v189 = &v182 - v29;
  v30 = __chkstk_darwin(v28);
  v192 = &v182 - v31;
  v32 = __chkstk_darwin(v30);
  v197 = &v182 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v182 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v182 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v182 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v182 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v182 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = &v182 - v50;
  __chkstk_darwin(v49);
  v196 = &v182 - v52;
  v195 = a1;
  sub_1001B3988(a1, v199, v200, v18);
  v201 = v18;
  sub_10000794C(v18, v16, &unk_100772208);
  v200 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v197 = v36;
    v199 = v39;
    if (EnumCaseMultiPayload)
    {
      v113 = v16;
      v114 = *(v202 + 32);
      v114(v42, v113, v203);
      sub_1000C8504();
      v116 = sub_1000F4DB4(v42, v115);

      v57 = v201;
      if (v116)
      {
        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          v118 = *(*Strong + 144);
          swift_beginAccess();
          v119 = v202;
          v120 = *(v202 + 16);
          v121 = Strong + v118;
          v122 = v197;
          v123 = v203;
          v120(v197, v121, v203);

          v124 = v199;
          v125 = v122;
          v54 = v123;
          v114(v199, v125, v123);
          v126 = sub_1003BBFE0(v42);
          if ((v127 & 1) == 0)
          {
            v144 = v126;
            v193 = v120;
            (*(v119 + 8))(v42, v123);
            v134 = v196;
            v114(v196, v124, v123);
            v136 = v194;
            v66 = v114;
            v137 = v144;
            goto LABEL_54;
          }

          (*(v119 + 8))(v124, v123);
        }
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      sub_100003E30(v128, qword_1007716F0);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.fault.getter();
      v131 = os_log_type_enabled(v129, v130);
      v132 = v203;
      if (v131)
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&_mh_execute_header, v129, v130, "Missing parent/childIndex", v133, 2u);
      }

      (*(v202 + 8))(v42, v132);
      goto LABEL_47;
    }

    v75 = v51;
    v76 = v16;
    v77 = *(v202 + 32);
    v77(v51, v76, v203);
    sub_1000C8504();
    v79 = sub_1000F4DB4(v51, v78);

    if (v79)
    {
      v80 = swift_weakLoadStrong();

      if (v80)
      {
        v81 = *(*v80 + 144);
        swift_beginAccess();
        v82 = v202;
        v54 = v203;
        v193 = *(v202 + 16);
        v193(v45, v80 + v81, v203);

        v57 = v48;
        v83 = v48;
        v84 = v77;
        v77(v83, v45, v54);
        v85 = sub_1003BBFE0(v51);
        if ((v86 & 1) == 0)
        {
          v143 = v85;
          (*(v82 + 8))(v51, v54);
          v77(v196, v57, v54);
          v137 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          v66 = v84;
          v57 = v201;
          v134 = v196;
          v136 = v194;
LABEL_54:
          sub_10000794C(v57, v136, &unk_100772208);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            sub_1000079B4(v57, &unk_100772208);
            v146 = v136;
LABEL_67:
            sub_1000079B4(v146, &unk_100772208);
LABEL_68:
            v168 = sub_100058000(&unk_1007819B0);
            v169 = *(v168 + 48);
            v170 = v198;
            v66(v198, v134, v54);
            *(v170 + v169) = v137;
            return (*(*(v168 - 8) + 56))(v170, 0, 1, v168);
          }

          sub_1000079B4(v136, &unk_100772208);
          if ((v191 & 1) == 0)
          {
            v146 = v57;
            goto LABEL_67;
          }

          v147 = sub_1000C8504();
          v148 = sub_1001D6ABC(v195, v147);

          if (!v148)
          {
            v171 = v202;
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v172 = type metadata accessor for Logger();
            sub_100003E30(v172, qword_1007716F0);
            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              *v175 = 0;
              _os_log_impl(&_mh_execute_header, v173, v174, "Unexpected: node not found at sourceIndexPath", v175, 2u);
            }

            sub_1000079B4(v57, &unk_100772208);
            (*(v171 + 8))(v134, v54);
            goto LABEL_49;
          }

          v204 = v66;
          v149 = *(*v148 + 144);
          swift_beginAccess();
          v150 = v190;
          v193(v190, v148 + v149, v54);
          sub_1000C8504();
          v152 = sub_1000F4DB4(v150, v151);

          if (v152)
          {
            v153 = swift_weakLoadStrong();

            if (v153)
            {
              v154 = *(*v153 + 144);
              swift_beginAccess();
              v155 = v186;
              v193(v186, v153 + v154, v54);

              v156 = v202;
              v157 = v187;
              v204(v187, v155, v54);
              v158 = sub_1003BBFE0(v190);
              if ((v159 & 1) == 0)
              {
                v176 = v182;
                v200 = v158;
                TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
                v177 = v183;
                v134 = v196;
                TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
                sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
                v178 = v185;
                LODWORD(v199) = dispatch thunk of static Equatable.== infix(_:_:)();

                v179 = *(v184 + 8);
                v179(v177, v178);
                v180 = v178;
                v66 = v204;
                v179(v176, v180);
                v181 = *(v156 + 8);
                v181(v187, v54);
                v181(v190, v54);
                sub_1000079B4(v57, &unk_100772208);
                v137 -= v199 & (v200 < v137);
                goto LABEL_68;
              }

              (*(v156 + 8))(v157, v54);
            }
          }

          if (qword_100766FC8 == -1)
          {
LABEL_63:
            v160 = type metadata accessor for Logger();
            sub_100003E30(v160, qword_1007716F0);
            v161 = Logger.logObject.getter();
            v162 = static os_log_type_t.fault.getter();
            v163 = os_log_type_enabled(v161, v162);
            v164 = v196;
            v165 = v190;
            if (v163)
            {
              v166 = swift_slowAlloc();
              *v166 = 0;
              _os_log_impl(&_mh_execute_header, v161, v162, "Unexpected: parent/childIndex not found for item to be moved", v166, 2u);
            }

            v167 = *(v202 + 8);
            v167(v165, v54);
            sub_1000079B4(v57, &unk_100772208);
            v167(v164, v54);
            goto LABEL_49;
          }

LABEL_76:
          swift_once();
          goto LABEL_63;
        }

        (*(v82 + 8))(v57, v54);
        v75 = v51;
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100003E30(v87, qword_1007716F0);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.fault.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v201;
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Missing parent/childIndex", v92, 2u);
    }

    (*(v202 + 8))(v75, v203);
    v93 = v91;
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v54 = v203;
    if (EnumCaseMultiPayload != 3)
    {
      v93 = v201;
LABEL_48:
      sub_1000079B4(v93, &unk_100772208);
LABEL_49:
      v142 = sub_100058000(&unk_1007819B0);
      return (*(*(v142 - 8) + 56))(v198, 1, 1, v142);
    }

    v55 = sub_1000C8504();
    v56 = sub_1001D6ABC(v195, v55);

    v57 = v201;
    if (!v56)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v138 = type metadata accessor for Logger();
      sub_100003E30(v138, qword_1007716F0);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&_mh_execute_header, v139, v140, "Unexpected: node not found at sourceIndexPath", v141, 2u);
      }

      goto LABEL_47;
    }

    v58 = *(*v56 + 144);
    swift_beginAccess();
    v59 = v192;
    v193 = *(v202 + 16);
    v193(v192, v56 + v58, v54);
    sub_1000C8504();
    v61 = sub_1000F4DB4(v59, v60);

    if (!v61 || (v62 = swift_weakLoadStrong(), , !v62))
    {
LABEL_9:
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100003E30(v71, qword_1007716F0);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "Unexpected: parent/childIndex not found for item to be moved", v74, 2u);
      }

      (*(v202 + 8))(v59, v54);
LABEL_47:
      v93 = v57;
      goto LABEL_48;
    }

    v63 = *(*v62 + 144);
    swift_beginAccess();
    v64 = v188;
    v193(v188, v62 + v63, v54);

    v65 = v202;
    v66 = *(v202 + 32);
    v67 = v189;
    v66(v189, v64, v54);
    v68 = sub_1003BBFE0(v59);
    v69 = v59;
    if (v70)
    {
      (*(v65 + 8))(v67, v54);
      v57 = v201;
      goto LABEL_9;
    }

    v137 = v68;
    (*(v65 + 8))(v69, v54);

    v145 = v67;
    v134 = v196;
    v66(v196, v145, v54);
    v136 = v194;
    v57 = v201;
    goto LABEL_54;
  }

  v95 = v202;
  v94 = v203;
  v96 = v197;
  v97 = v16;
  v98 = *(v202 + 32);
  v98(v197, v97, v203);
  v99 = swift_unknownObjectUnownedLoadStrong();
  v100 = *(v95 + 16);
  v101 = v193;
  v100(v193, v96, v94);
  result = (*(v95 + 56))(v101, 0, 1, v94);
  v103 = *&v99[qword_10078A548];
  if (v103)
  {
    v104 = v103;
    v105 = sub_1003BC960(v101);
    v107 = v106;

    sub_1000079B4(v101, &unk_100771B40);
    v108 = v201;
    if (v107)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_100003E30(v109, qword_1007716F0);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Missing parent child count", v112, 2u);
      }

      (*(v95 + 8))(v197, v203);
      v93 = v108;
      goto LABEL_48;
    }

    v193 = v100;
    v134 = v196;
    v135 = v203;
    v98(v196, v197, v203);
    v66 = v98;
    v136 = v194;
    v137 = v105;
    v57 = v108;
    v54 = v135;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B0CF8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v191 = a4;
  LODWORD(v200) = a3;
  v198 = a5;
  v199 = a2;
  v185 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v182 = &v182 - v8;
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v193 = (&v182 - v10);
  v11 = sub_100058000(&qword_100772148);
  __chkstk_darwin(v11);
  v194 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v182 - v14;
  __chkstk_darwin(v16);
  v18 = &v182 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v202 = *(v19 - 8);
  v203 = v19;
  __chkstk_darwin(v19);
  v186 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v187 = &v182 - v22;
  __chkstk_darwin(v23);
  v190 = &v182 - v24;
  __chkstk_darwin(v25);
  v188 = &v182 - v26;
  __chkstk_darwin(v27);
  v189 = &v182 - v28;
  __chkstk_darwin(v29);
  v192 = &v182 - v30;
  __chkstk_darwin(v31);
  v197 = &v182 - v32;
  __chkstk_darwin(v33);
  v35 = &v182 - v34;
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  __chkstk_darwin(v39);
  v41 = &v182 - v40;
  __chkstk_darwin(v42);
  v44 = &v182 - v43;
  __chkstk_darwin(v45);
  v47 = &v182 - v46;
  __chkstk_darwin(v48);
  v50 = &v182 - v49;
  __chkstk_darwin(v51);
  v196 = &v182 - v52;
  v195 = a1;
  sub_1001B4A30(a1, v200, v18);
  v201 = v18;
  sub_10000794C(v18, v15, &qword_100772148);
  v200 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v197 = v35;
    v199 = v38;
    if (EnumCaseMultiPayload)
    {
      v113 = v15;
      v114 = *(v202 + 32);
      v114(v41, v113, v203);
      sub_1000C84C8();
      v116 = sub_1000F2C50(v41, v115);

      v57 = v201;
      if (v116)
      {
        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          v118 = *(*Strong + 144);
          swift_beginAccess();
          v119 = v202;
          v120 = *(v202 + 16);
          v121 = Strong + v118;
          v122 = v197;
          v123 = v203;
          v120(v197, v121, v203);

          v124 = v199;
          v125 = v122;
          v54 = v123;
          v114(v199, v125, v123);
          v126 = sub_1003BC034(v41);
          if ((v127 & 1) == 0)
          {
            v144 = v126;
            v193 = v120;
            (*(v119 + 8))(v41, v123);
            v134 = v196;
            v114(v196, v124, v123);
            v136 = v194;
            v66 = v114;
            v137 = v144;
            goto LABEL_54;
          }

          (*(v119 + 8))(v124, v123);
        }
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      sub_100003E30(v128, qword_1007716F0);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.fault.getter();
      v131 = os_log_type_enabled(v129, v130);
      v132 = v203;
      if (v131)
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&_mh_execute_header, v129, v130, "Missing parent/childIndex", v133, 2u);
      }

      (*(v202 + 8))(v41, v132);
      goto LABEL_47;
    }

    v75 = v50;
    v76 = v15;
    v77 = *(v202 + 32);
    v77(v50, v76, v203);
    sub_1000C84C8();
    v79 = sub_1000F2C50(v50, v78);

    if (v79)
    {
      v80 = swift_weakLoadStrong();

      if (v80)
      {
        v81 = *(*v80 + 144);
        swift_beginAccess();
        v82 = v202;
        v54 = v203;
        v193 = *(v202 + 16);
        v193(v44, v80 + v81, v203);

        v57 = v47;
        v83 = v47;
        v84 = v77;
        v77(v83, v44, v54);
        v85 = sub_1003BC034(v50);
        if ((v86 & 1) == 0)
        {
          v143 = v85;
          (*(v82 + 8))(v50, v54);
          v77(v196, v57, v54);
          v137 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          v66 = v84;
          v57 = v201;
          v134 = v196;
          v136 = v194;
LABEL_54:
          sub_10000794C(v57, v136, &qword_100772148);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            sub_1000079B4(v57, &qword_100772148);
            v146 = v136;
LABEL_67:
            sub_1000079B4(v146, &qword_100772148);
LABEL_68:
            v168 = sub_100058000(&unk_100772130);
            v169 = *(v168 + 48);
            v170 = v198;
            v66(v198, v134, v54);
            *(v170 + v169) = v137;
            return (*(*(v168 - 8) + 56))(v170, 0, 1, v168);
          }

          sub_1000079B4(v136, &qword_100772148);
          if ((v191 & 1) == 0)
          {
            v146 = v57;
            goto LABEL_67;
          }

          v147 = sub_1000C84C8();
          v148 = sub_1001D6ABC(v195, v147);

          if (!v148)
          {
            v171 = v202;
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v172 = type metadata accessor for Logger();
            sub_100003E30(v172, qword_1007716F0);
            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              *v175 = 0;
              _os_log_impl(&_mh_execute_header, v173, v174, "Unexpected: node not found at sourceIndexPath", v175, 2u);
            }

            sub_1000079B4(v57, &qword_100772148);
            (*(v171 + 8))(v134, v54);
            goto LABEL_49;
          }

          v204 = v66;
          v149 = *(*v148 + 144);
          swift_beginAccess();
          v150 = v190;
          v193(v190, v148 + v149, v54);
          sub_1000C84C8();
          v152 = sub_1000F2C50(v150, v151);

          if (v152)
          {
            v153 = swift_weakLoadStrong();

            if (v153)
            {
              v154 = *(*v153 + 144);
              swift_beginAccess();
              v155 = v186;
              v193(v186, v153 + v154, v54);

              v156 = v202;
              v157 = v187;
              v204(v187, v155, v54);
              v158 = sub_1003BC034(v190);
              if ((v159 & 1) == 0)
              {
                v176 = v182;
                v200 = v158;
                TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
                v177 = v183;
                v134 = v196;
                TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
                sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
                v178 = v185;
                LODWORD(v199) = dispatch thunk of static Equatable.== infix(_:_:)();

                v179 = *(v184 + 8);
                v179(v177, v178);
                v180 = v178;
                v66 = v204;
                v179(v176, v180);
                v181 = *(v156 + 8);
                v181(v187, v54);
                v181(v190, v54);
                sub_1000079B4(v57, &qword_100772148);
                v137 -= v199 & (v200 < v137);
                goto LABEL_68;
              }

              (*(v156 + 8))(v157, v54);
            }
          }

          if (qword_100766FC8 == -1)
          {
LABEL_63:
            v160 = type metadata accessor for Logger();
            sub_100003E30(v160, qword_1007716F0);
            v161 = Logger.logObject.getter();
            v162 = static os_log_type_t.fault.getter();
            v163 = os_log_type_enabled(v161, v162);
            v164 = v196;
            v165 = v190;
            if (v163)
            {
              v166 = swift_slowAlloc();
              *v166 = 0;
              _os_log_impl(&_mh_execute_header, v161, v162, "Unexpected: parent/childIndex not found for item to be moved", v166, 2u);
            }

            v167 = *(v202 + 8);
            v167(v165, v54);
            sub_1000079B4(v57, &qword_100772148);
            v167(v164, v54);
            goto LABEL_49;
          }

LABEL_76:
          swift_once();
          goto LABEL_63;
        }

        (*(v82 + 8))(v57, v54);
        v75 = v50;
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100003E30(v87, qword_1007716F0);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.fault.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v201;
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Missing parent/childIndex", v92, 2u);
    }

    (*(v202 + 8))(v75, v203);
    v93 = v91;
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v54 = v203;
    if (EnumCaseMultiPayload != 3)
    {
      v93 = v201;
LABEL_48:
      sub_1000079B4(v93, &qword_100772148);
LABEL_49:
      v142 = sub_100058000(&unk_100772130);
      return (*(*(v142 - 8) + 56))(v198, 1, 1, v142);
    }

    v55 = sub_1000C84C8();
    v56 = sub_1001D6ABC(v195, v55);

    v57 = v201;
    if (!v56)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v138 = type metadata accessor for Logger();
      sub_100003E30(v138, qword_1007716F0);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&_mh_execute_header, v139, v140, "Unexpected: node not found at sourceIndexPath", v141, 2u);
      }

      goto LABEL_47;
    }

    v58 = *(*v56 + 144);
    swift_beginAccess();
    v59 = v192;
    v193 = *(v202 + 16);
    v193(v192, v56 + v58, v54);
    sub_1000C84C8();
    v61 = sub_1000F2C50(v59, v60);

    if (!v61 || (v62 = swift_weakLoadStrong(), , !v62))
    {
LABEL_9:
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100003E30(v71, qword_1007716F0);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "Unexpected: parent/childIndex not found for item to be moved", v74, 2u);
      }

      (*(v202 + 8))(v59, v54);
LABEL_47:
      v93 = v57;
      goto LABEL_48;
    }

    v63 = *(*v62 + 144);
    swift_beginAccess();
    v64 = v188;
    v193(v188, v62 + v63, v54);

    v65 = v202;
    v66 = *(v202 + 32);
    v67 = v189;
    v66(v189, v64, v54);
    v68 = sub_1003BC034(v59);
    v69 = v59;
    if (v70)
    {
      (*(v65 + 8))(v67, v54);
      v57 = v201;
      goto LABEL_9;
    }

    v137 = v68;
    (*(v65 + 8))(v69, v54);

    v145 = v67;
    v134 = v196;
    v66(v196, v145, v54);
    v136 = v194;
    v57 = v201;
    goto LABEL_54;
  }

  v95 = v202;
  v94 = v203;
  v96 = v197;
  v97 = v15;
  v98 = *(v202 + 32);
  v98(v197, v97, v203);
  v99 = swift_unknownObjectUnownedLoadStrong();
  v100 = *(v95 + 16);
  v101 = v193;
  v100(v193, v96, v94);
  result = (*(v95 + 56))(v101, 0, 1, v94);
  v103 = *&v99[qword_10078A548];
  if (v103)
  {
    v104 = v103;
    v105 = sub_1003BCE6C(v101);
    v107 = v106;

    sub_1000079B4(v101, &qword_100772140);
    v108 = v201;
    if (v107)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_100003E30(v109, qword_1007716F0);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Missing parent child count", v112, 2u);
      }

      (*(v95 + 8))(v197, v203);
      v93 = v108;
      goto LABEL_48;
    }

    v193 = v100;
    v134 = v196;
    v135 = v203;
    v98(v196, v197, v203);
    v66 = v98;
    v136 = v194;
    v137 = v105;
    v57 = v108;
    v54 = v135;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B2298@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v45 = a2;
  v46 = a1;
  v49 = a4;
  v7 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v7 - 8);
  v47 = &v43 - v8;
  v48 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v48 - 8);
  v10 = __chkstk_darwin(v48);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v43 - v13;
  v14 = &unk_10062E540;
  v15 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a3, v17, &unk_100771B10);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &unk_100771B10;
    v23 = v17;
LABEL_3:
    sub_1000079B4(v23, v22);
    goto LABEL_17;
  }

  (*(v19 + 32))(v21, v17, v18);
  v24 = sub_1000C8504();

  v25 = *(v24 + 16);

  v26 = IndexPath.section.getter();
  if (v26 < 0 || v26 >= v25)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_17;
  }

  v27 = sub_1000C8504();
  v29 = v28;

  v30 = IndexPath.section.getter();
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v30 >= *(v27 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v5;
  v31 = v27 + 16 * v30;
  v14 = *(v31 + 32);
  v29 = *(v31 + 40);

  if (!(v29 >> 62))
  {
    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); IndexPath.row.getter() < i; i = v33)
    {
      v33 = IndexPath.row.getter();
      v5 = v48;
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v33 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v29 + 8 * v33 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_28:
      ;
    }

    v37 = *(*v14 + 144);
    swift_beginAccess();
    v38 = v48;
    (*(v9 + 16))(v12, &v14[v37], v48);
    v39 = v47;
    sub_1001B662C(v46, v45 & 1, v12, v47);

    (*(v9 + 8))(v12, v38);
    (*(v19 + 8))(v21, v18);
    v40 = v39;
    if ((*(v9 + 48))(v39, 1, v38) != 1)
    {
      v41 = *(v9 + 32);
      v42 = v44;
      v41(v44, v40, v38);
      v41(v49, v42, v38);
      goto LABEL_17;
    }

    v22 = &unk_100771B40;
    v23 = v39;
    goto LABEL_3;
  }

LABEL_23:
  v33 = _CocoaArrayWrapper.endIndex.getter();
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:

  (*(v19 + 8))(v21, v18);
  v35 = *(*v34 + 144);
  swift_beginAccess();
  (*(v9 + 16))(v49, v34 + v35, v5);

LABEL_17:
  sub_100058000(qword_100772218);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B284C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v45 = a2;
  v46 = a1;
  v49 = a4;
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v47 = &v43 - v8;
  v48 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v44 = &v43 - v13;
  v14 = &unk_10062E540;
  v15 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a3, v17, &unk_100771B10);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &unk_100771B10;
    v23 = v17;
LABEL_3:
    sub_1000079B4(v23, v22);
    goto LABEL_17;
  }

  (*(v19 + 32))(v21, v17, v18);
  v24 = sub_1000C84C8();

  v25 = *(v24 + 16);

  v26 = IndexPath.section.getter();
  if (v26 < 0 || v26 >= v25)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_17;
  }

  v27 = sub_1000C84C8();
  v29 = v28;

  v30 = IndexPath.section.getter();
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v30 >= *(v27 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v5;
  v31 = v27 + 16 * v30;
  v14 = *(v31 + 32);
  v29 = *(v31 + 40);

  if (!(v29 >> 62))
  {
    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); IndexPath.row.getter() < i; i = v33)
    {
      v33 = IndexPath.row.getter();
      v5 = v48;
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v33 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v29 + 8 * v33 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_28:
      ;
    }

    v37 = *(*v14 + 144);
    swift_beginAccess();
    v38 = v48;
    (*(v9 + 16))(v11, &v14[v37], v48);
    v39 = v47;
    sub_1001B6BEC(v46, v45 & 1, v11, v47);

    (*(v9 + 8))(v11, v38);
    (*(v19 + 8))(v21, v18);
    v40 = v39;
    if ((*(v9 + 48))(v39, 1, v38) != 1)
    {
      v41 = *(v9 + 32);
      v42 = v44;
      v41(v44, v40, v38);
      v41(v49, v42, v38);
      goto LABEL_17;
    }

    v22 = &qword_100772140;
    v23 = v39;
    goto LABEL_3;
  }

LABEL_23:
  v33 = _CocoaArrayWrapper.endIndex.getter();
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:

  (*(v19 + 8))(v21, v18);
  v35 = *(*v34 + 144);
  swift_beginAccess();
  (*(v9 + 16))(v49, v34 + v35, v5);

LABEL_17:
  sub_100058000(&unk_100772158);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B2E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v6 - 8);
  v8 = v50 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  __chkstk_darwin(v9);
  v55 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_100771B10;
  v13 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v13 - 8);
  v15 = v50 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v15, &unk_100771B10);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000079B4(v15, &unk_100771B10);
LABEL_19:
    v42 = sub_100058000(&unk_1007819B0);
    v43 = *(*(v42 - 8) + 56);
    v44 = a2;
    return v43(v44, 1, 1, v42);
  }

  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_1000C8504();

  v21 = *(v20 + 16);

  v22 = IndexPath.section.getter();
  if (v22 < 0 || v22 >= v21)
  {
LABEL_18:
    (*(v17 + 8))(v19, v16);
    goto LABEL_19;
  }

  v23 = sub_1000C8504();
  v25 = v24;

  v26 = IndexPath.section.getter();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 >= *(v23 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v3;
  v27 = v23 + 16 * v26;
  v25 = *(v27 + 32);
  v12 = *(v27 + 40);

  if (!(v12 >> 62))
  {
    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v30)
    {
      v29 = IndexPath.row.getter();
      if ((v29 & 0x8000000000000000) != 0 || v29 >= i)
      {
        break;
      }

      v30 = IndexPath.row.getter();
      v50[1] = v25;
      v51 = a2;
      v50[0] = v8;
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_27;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v30 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v12 + 8 * v30 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_30:
      ;
    }

    goto LABEL_18;
  }

LABEL_25:
  v30 = _CocoaArrayWrapper.endIndex.getter();
  if ((v30 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_27:
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v32 = *(*v31 + 144);
  swift_beginAccess();
  v33 = v55;
  v34 = *(v54 + 16);
  v35 = v31 + v32;
  v36 = v53;
  v34(v55, v35, v53);

  v37 = v50[0];
  v34(v50[0], v33, v36);
  v38 = v54;
  v39 = v36;
  (*(v54 + 56))(v37, 0, 1, v36);
  v40 = sub_1003BC960(v37);
  LOBYTE(v36) = v41;

  sub_1000079B4(v37, &unk_100771B40);
  (*(v17 + 8))(v19, v16);
  if ((v36 & 1) == 0)
  {
    v46 = sub_100058000(&unk_1007819B0);
    v47 = v38;
    v48 = *(v46 + 48);
    v49 = v51;
    (*(v47 + 32))(v51, v55, v39);
    *(v49 + v48) = v40;
    return (*(*(v46 - 8) + 56))(v49, 0, 1, v46);
  }

  (*(v38 + 8))(v55, v39);
  v42 = sub_100058000(&unk_1007819B0);
  v43 = *(*(v42 - 8) + 56);
  v44 = v51;
  return v43(v44, 1, 1, v42);
}

uint64_t sub_1001B33C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = v50 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  __chkstk_darwin(v9);
  v55 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_100771B10;
  v13 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v13 - 8);
  v15 = v50 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v15, &unk_100771B10);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000079B4(v15, &unk_100771B10);
LABEL_19:
    v42 = sub_100058000(&unk_100772130);
    v43 = *(*(v42 - 8) + 56);
    v44 = a2;
    return v43(v44, 1, 1, v42);
  }

  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_1000C84C8();

  v21 = *(v20 + 16);

  v22 = IndexPath.section.getter();
  if (v22 < 0 || v22 >= v21)
  {
LABEL_18:
    (*(v17 + 8))(v19, v16);
    goto LABEL_19;
  }

  v23 = sub_1000C84C8();
  v25 = v24;

  v26 = IndexPath.section.getter();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 >= *(v23 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v3;
  v27 = v23 + 16 * v26;
  v25 = *(v27 + 32);
  v12 = *(v27 + 40);

  if (!(v12 >> 62))
  {
    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v30)
    {
      v29 = IndexPath.row.getter();
      if ((v29 & 0x8000000000000000) != 0 || v29 >= i)
      {
        break;
      }

      v30 = IndexPath.row.getter();
      v50[1] = v25;
      v51 = a2;
      v50[0] = v8;
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_27;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v30 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v12 + 8 * v30 + 32);

        goto LABEL_15;
      }

      __break(1u);
LABEL_30:
      ;
    }

    goto LABEL_18;
  }

LABEL_25:
  v30 = _CocoaArrayWrapper.endIndex.getter();
  if ((v30 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_27:
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v32 = *(*v31 + 144);
  swift_beginAccess();
  v33 = v55;
  v34 = *(v54 + 16);
  v35 = v31 + v32;
  v36 = v53;
  v34(v55, v35, v53);

  v37 = v50[0];
  v34(v50[0], v33, v36);
  v38 = v54;
  v39 = v36;
  (*(v54 + 56))(v37, 0, 1, v36);
  v40 = sub_1003BCE6C(v37);
  LOBYTE(v36) = v41;

  sub_1000079B4(v37, &qword_100772140);
  (*(v17 + 8))(v19, v16);
  if ((v36 & 1) == 0)
  {
    v46 = sub_100058000(&unk_100772130);
    v47 = v38;
    v48 = *(v46 + 48);
    v49 = v51;
    (*(v47 + 32))(v51, v55, v39);
    *(v49 + v48) = v40;
    return (*(*(v46 - 8) + 56))(v49, 0, 1, v46);
  }

  (*(v38 + 8))(v55, v39);
  v42 = sub_100058000(&unk_100772130);
  v43 = *(*(v42 - 8) + 56);
  v44 = v51;
  return v43(v44, 1, 1, v42);
}

uint64_t sub_1001B3988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(_BYTE *, _BYTE *, uint64_t)@<X8>)
{
  v5 = v4;
  LODWORD(v128) = a3;
  v9 = sub_100058000(&unk_100771B40);
  v10 = __chkstk_darwin(v9 - 8);
  v126 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v119[-v13];
  __chkstk_darwin(v12);
  v124 = &v119[-v15];
  v16 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v131 = *(v16 - 8);
  v132 = v16;
  v17 = __chkstk_darwin(v16);
  v129 = &v119[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v130 = &v119[-v19];
  v20 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v136 = *(v20 - 8);
  v137 = v20;
  v21 = __chkstk_darwin(v20);
  v125 = &v119[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v25 = &v119[-v24];
  v26 = __chkstk_darwin(v23);
  v123 = &v119[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v119[-v29];
  __chkstk_darwin(v28);
  v133 = &v119[-v31];
  v141 = sub_100058000(&unk_100772208);
  __chkstk_darwin(v141);
  v135 = &v119[-v32];
  v33 = type metadata accessor for IndexPath();
  v34 = *(v33 - 8);
  v139 = v33;
  v140 = v34;
  __chkstk_darwin(v33);
  v138 = &v119[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_1000C8504();

  v37 = *(v36 + 16);

  v38 = IndexPath.section.getter();
  if ((v38 & 0x8000000000000000) == 0 && v38 < v37)
  {
    v39 = sub_1000C8504();
    v134 = v5;
    v41 = v40;
    v127 = a4;
    v42 = sub_1001D6ABC(a1, v39);
    v43 = v127;

    if (v42)
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        if (qword_100766FC8 == -1)
        {
LABEL_13:
          v55 = type metadata accessor for Logger();
          sub_100003E30(v55, qword_1007716F0);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, "section node cannot be moved", v58, 2u);
          }

          goto LABEL_16;
        }

LABEL_47:
        swift_once();
        goto LABEL_13;
      }

      v122 = v42;
      v45 = *(Strong + 16);

      v46 = sub_1000C8504();

      v47 = IndexPath.section.getter();
      if ((v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v121 = v45;
        if (v47 < *(v46 + 16))
        {
          v48 = v46 + 16 * v47;
          v41 = *(v48 + 32);
          v45 = *(v48 + 40);

          v49 = v138;
          (*(v140 + 16))(v138, a2, v139);
          v50 = IndexPath.section.getter();
          if (v50 == IndexPath.section.getter())
          {
            v51 = IndexPath.row.getter();
            v52 = IndexPath.row.getter();
            LODWORD(a2) = v51 < v52;
            if (v51 < v52 && (v128 & 1) != 0)
            {
              v53 = IndexPath.row.modify();
              if (__OFADD__(*v54, 1))
              {
                __break(1u);
LABEL_49:
                swift_once();
LABEL_27:
                v78 = type metadata accessor for Logger();
                sub_100003E30(v78, qword_1007716F0);
                v79 = Logger.logObject.getter();
                v80 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v79, v80))
                {
                  v81 = swift_slowAlloc();
                  *v81 = 0;
                  _os_log_impl(&_mh_execute_header, v79, v80, "Failed to lookup node given a valid destinationIndexPath", v81, 2u);
                }

                else
                {
                }

                (*(v140 + 8))(v49, v139);
                return swift_storeEnumTagMultiPayload();
              }

              ++*v54;
              v53(v142, 0);
              LODWORD(a2) = 1;
            }
          }

          else
          {
            LODWORD(a2) = 0;
          }

          if (!(v45 >> 62))
          {
            v60 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v61 = IndexPath.row.getter();
            if (v61 < 0)
            {
              goto LABEL_51;
            }

            goto LABEL_22;
          }

          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_45:
      v120 = a2;
      v60 = _CocoaArrayWrapper.endIndex.getter();
      v61 = IndexPath.row.getter();
      if ((v60 & 0x8000000000000000) == 0)
      {
        v43 = v127;
        v49 = v138;
        LODWORD(a2) = v120;
        if (v61 < 0)
        {
          goto LABEL_51;
        }

LABEL_22:
        if (v61 < v60)
        {
          v120 = a2;
          v62 = sub_1000C8504();
          v63 = sub_1001D6ABC(v49, v62);

          if (v63)
          {
            v126 = v45;
            v128 = v41;
            v64 = *(*v63 + 144);
            swift_beginAccess();
            v65 = v136;
            v66 = *(v136 + 16);
            v121 = v64;
            v67 = v63 + v64;
            v68 = v133;
            v69 = v137;
            v66(v133, v67, v137);
            v125 = v63;
            v70 = v130;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v71 = *(v65 + 8);
            v71(v68, v69);
            v72 = v122;
            v73 = *(*v122 + 144);
            swift_beginAccess();
            v66(v30, v72 + v73, v69);
            v74 = v129;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v71(v30, v69);
            sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
            v75 = v132;
            LOBYTE(v73) = dispatch thunk of static Equatable.== infix(_:_:)();
            v76 = *(v131 + 8);
            v76(v74, v75);
            v76(v70, v75);
            if (v73)
            {
              (*(v140 + 8))(v138, v139);

              v77 = v135;
              swift_storeEnumTagMultiPayload();
              v43 = v127;
              return sub_100016588(v77, v43, &unk_100772208);
            }

            v82 = v125;
            v77 = v135;
            v66(v135, &v125[v121], v69);
            swift_storeEnumTagMultiPayload();
            v43 = v127;
            if (v120)
            {
              v83 = v122;
              v84 = swift_weakLoadStrong();
              v85 = v138;
              if (v84)
              {
                v86 = *(v84 + 16);

                if (*(v83 + 32))
                {
                  (*(v140 + 8))(v85, v139);

                  return sub_100016588(v77, v43, &unk_100772208);
                }

                if ((v82[32] & 1) == 0 && *(v82 + 3) < *(v83 + 24))
                {
                  v87 = v124;
                  sub_1001B71AC(v86, v124);

                  (*(v140 + 8))(v85, v139);
                  v88 = v136;
                  v89 = v137;
                  if ((*(v136 + 48))(v87, 1, v137) == 1)
                  {
                    sub_1000079B4(v87, &unk_100771B40);
                    return sub_100016588(v77, v43, &unk_100772208);
                  }

                  sub_1000079B4(v77, &unk_100772208);
                  v90 = *(v88 + 32);
                  v91 = v123;
                  v90(v123, v87, v89);
                  v90(v77, v91, v89);
                  goto LABEL_57;
                }
              }

              (*(v140 + 8))(v85, v139);
            }

            else
            {
              (*(v140 + 8))(v138, v139);
            }

            return sub_100016588(v77, v43, &unk_100772208);
          }

          if (qword_100766FC8 == -1)
          {
            goto LABEL_27;
          }

          goto LABEL_49;
        }

LABEL_51:
        if (v60 == v61)
        {
          v128 = v41;
          sub_1001B71AC(v121, v14);
          v92 = v136;
          v93 = v137;
          v94 = *(v136 + 48);
          if (v94(v14, 1, v137) != 1)
          {
            v108 = *(v92 + 32);
            v134 = v92 + 32;
            v127 = v108;
            v108(v25, v14, v93);
            v109 = v130;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v110 = v122;
            v111 = v92;
            v112 = *(*v122 + 144);
            swift_beginAccess();
            v113 = v133;
            (*(v111 + 16))(v133, v110 + v112, v93);
            v114 = v129;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v136 = *(v111 + 8);
            (v136)(v113, v93);
            sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
            v115 = v132;
            LOBYTE(v112) = dispatch thunk of static Equatable.== infix(_:_:)();

            v116 = *(v131 + 8);
            v116(v114, v115);
            v116(v109, v115);
            (*(v140 + 8))(v138, v139);
            if (v112)
            {
              (v136)(v25, v93);
              v77 = v135;
            }

            else
            {
              v77 = v135;
              v127(v135, v25, v93);
            }

            goto LABEL_57;
          }

          sub_1000079B4(v14, &unk_100771B40);
          sub_100058000(&unk_10076BAA0);
          v95 = *(v92 + 80);
          v132 = v94;
          v96 = (v95 + 32) & ~v95;
          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_10062D400;
          v98 = v122;
          v99 = *(*v122 + 144);
          swift_beginAccess();
          v100 = *(v136 + 16);
          v100(v97 + v96, v98 + v99, v137);
          v101 = v128;
          v102 = *(*v128 + 144);
          swift_beginAccess();
          v103 = v101 + v102;
          v104 = v133;
          v100(v133, v103, v137);
          v105 = v137;
          v106 = v126;
          sub_1001B662C(v97, 0, v104, v126);

          v107 = v136;

          (*(v107 + 8))(v104, v105);
          (*(v140 + 8))(v138, v139);
          if (v132(v106, 1, v105) != 1)
          {
            v117 = *(v107 + 32);
            v118 = v125;
            v117(v125, v106, v105);
            v77 = v135;
            v117(v135, v118, v105);
            goto LABEL_57;
          }

          sub_1000079B4(v106, &unk_100771B40);
        }

        else
        {
          (*(v140 + 8))(v49, v139);
        }

        v77 = v135;
LABEL_57:
        swift_storeEnumTagMultiPayload();
        return sub_100016588(v77, v43, &unk_100772208);
      }

      __break(1u);
      goto LABEL_47;
    }
  }

LABEL_16:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B4A30@<X0>(uint64_t a1@<X0>, int a2@<W2>, void (*a3)(_BYTE *, _BYTE *, uint64_t)@<X8>)
{
  v4 = v3;
  LODWORD(v124) = a2;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v127 = *(v7 - 8);
  v128 = v7;
  __chkstk_darwin(v7);
  v125 = &v115[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v126 = &v115[-v10];
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v120 = &v115[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v122 = &v115[-v14];
  __chkstk_darwin(v15);
  v17 = &v115[-v16];
  v133 = type metadata accessor for TTRRemindersListViewModel.Item();
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v119 = &v115[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v115[-v20];
  __chkstk_darwin(v22);
  v121 = &v115[-v23];
  __chkstk_darwin(v24);
  v129 = &v115[-v25];
  __chkstk_darwin(v26);
  v28 = &v115[-v27];
  v137 = sub_100058000(&qword_100772148);
  __chkstk_darwin(v137);
  v132 = &v115[-v29];
  v30 = type metadata accessor for IndexPath();
  v31 = *(v30 - 8);
  v135 = v30;
  v136 = v31;
  __chkstk_darwin(v30);
  v134 = &v115[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_1000C84C8();

  v34 = *(v33 + 16);

  v35 = IndexPath.section.getter();
  if ((v35 & 0x8000000000000000) == 0 && v35 < v34)
  {
    v36 = sub_1000C84C8();
    v131 = v4;
    v38 = v37;
    v123 = a3;
    v39 = sub_1001D6ABC(a1, v36);
    v40 = v123;

    if (v39)
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        if (qword_100766FC8 == -1)
        {
LABEL_13:
          v52 = type metadata accessor for Logger();
          sub_100003E30(v52, qword_1007716F0);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "section node cannot be moved", v55, 2u);
          }

          goto LABEL_16;
        }

LABEL_47:
        swift_once();
        goto LABEL_13;
      }

      v118 = v39;
      v42 = *(Strong + 16);

      v43 = sub_1000C84C8();

      v44 = IndexPath.section.getter();
      if ((v44 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v117 = v42;
        if (v44 < *(v43 + 16))
        {
          v45 = v43 + 16 * v44;
          v38 = *(v45 + 32);
          v42 = *(v45 + 40);

          v46 = v134;
          (*(v136 + 16))();
          v47 = IndexPath.section.getter();
          if (v47 == IndexPath.section.getter())
          {
            v48 = IndexPath.row.getter();
            v49 = IndexPath.row.getter();
            LODWORD(v43) = v48 < v49;
            if (v48 < v49 && (v124 & 1) != 0)
            {
              v50 = IndexPath.row.modify();
              if (__OFADD__(*v51, 1))
              {
                __break(1u);
LABEL_49:
                swift_once();
LABEL_27:
                v77 = type metadata accessor for Logger();
                sub_100003E30(v77, qword_1007716F0);
                v78 = Logger.logObject.getter();
                v79 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v78, v79))
                {
                  v80 = swift_slowAlloc();
                  *v80 = 0;
                  _os_log_impl(&_mh_execute_header, v78, v79, "Failed to lookup node given a valid destinationIndexPath", v80, 2u);
                }

                else
                {
                }

                (*(v136 + 8))(v46, v135);
                return swift_storeEnumTagMultiPayload();
              }

              ++*v51;
              v50(v138, 0);
              LODWORD(v43) = 1;
            }
          }

          else
          {
            LODWORD(v43) = 0;
          }

          if (!(v42 >> 62))
          {
            v57 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v58 = IndexPath.row.getter();
            if (v58 < 0)
            {
              goto LABEL_51;
            }

            goto LABEL_22;
          }

          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_45:
      v116 = v43;
      v57 = _CocoaArrayWrapper.endIndex.getter();
      v58 = IndexPath.row.getter();
      if ((v57 & 0x8000000000000000) == 0)
      {
        v40 = v123;
        v46 = v134;
        LODWORD(v43) = v116;
        if (v58 < 0)
        {
          goto LABEL_51;
        }

LABEL_22:
        if (v58 < v57)
        {
          v59 = sub_1000C84C8();
          v60 = sub_1001D6ABC(v46, v59);

          if (v60)
          {
            v116 = v43;
            v117 = v42;
            v124 = v38;
            v61 = *(*v60 + 144);
            swift_beginAccess();
            v62 = v130;
            v63 = *(v130 + 16);
            v121 = v61;
            v64 = &v61[v60];
            v65 = v129;
            v122 = v60;
            v66 = v133;
            (v63)(v129, v64, v133);
            v67 = v126;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v68 = *(v62 + 8);
            v68(v65, v66);
            v69 = v118;
            v70 = *(*v118 + 144);
            swift_beginAccess();
            v129 = v63;
            (v63)(v21, v69 + v70, v66);
            v71 = v125;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v72 = v21;
            v73 = v66;
            v68(v72, v66);
            sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
            v74 = v128;
            LOBYTE(v70) = dispatch thunk of static Equatable.== infix(_:_:)();
            v75 = *(v127 + 8);
            v75(v71, v74);
            v75(v67, v74);
            if (v70)
            {
              (*(v136 + 8))(v134, v135);

              v76 = v132;
              swift_storeEnumTagMultiPayload();
              v40 = v123;
              return sub_100016588(v76, v40, &qword_100772148);
            }

            v81 = v122;
            v76 = v132;
            (v129)(v132, &v121[v122], v73);
            swift_storeEnumTagMultiPayload();
            v40 = v123;
            if (v116)
            {
              v82 = v118;
              v83 = swift_weakLoadStrong();
              v84 = v134;
              if (v83)
              {
                v85 = *(v83 + 16);

                if (*(v82 + 32))
                {
                  (*(v136 + 8))(v84, v135);

                  return sub_100016588(v76, v40, &qword_100772148);
                }

                if ((v81[32] & 1) == 0 && *(v81 + 3) < *(v82 + 24))
                {
                  v86 = v120;
                  sub_1001B7424(v85, v120);

                  (*(v136 + 8))(v84, v135);
                  v87 = v130;
                  if ((*(v130 + 48))(v86, 1, v73) == 1)
                  {
                    sub_1000079B4(v86, &qword_100772140);
                    return sub_100016588(v76, v40, &qword_100772148);
                  }

                  sub_1000079B4(v76, &qword_100772148);
                  v88 = *(v87 + 32);
                  v89 = v119;
                  v88(v119, v86, v73);
                  v88(v76, v89, v73);
                  goto LABEL_57;
                }
              }

              (*(v136 + 8))(v84, v135);
            }

            else
            {
              (*(v136 + 8))(v134, v135);
            }

            return sub_100016588(v76, v40, &qword_100772148);
          }

          if (qword_100766FC8 == -1)
          {
            goto LABEL_27;
          }

          goto LABEL_49;
        }

LABEL_51:
        if (v57 == v58)
        {
          v124 = v38;
          sub_1001B7424(v117, v17);
          v90 = v130;
          v91 = *(v130 + 48);
          v92 = v133;
          if (v91(v17, 1, v133) != 1)
          {
            v105 = *(v90 + 32);
            v131 = v90 + 32;
            v123 = v105;
            v105(v28, v17, v92);
            v106 = v126;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v107 = v118;
            v108 = *(*v118 + 144);
            swift_beginAccess();
            v109 = v129;
            (*(v90 + 16))(v129, v107 + v108, v92);
            v110 = v125;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v130 = *(v90 + 8);
            (v130)(v109, v92);
            sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
            v111 = v128;
            LOBYTE(v108) = dispatch thunk of static Equatable.== infix(_:_:)();

            v112 = *(v127 + 8);
            v112(v110, v111);
            v112(v106, v111);
            (*(v136 + 8))(v134, v135);
            if (v108)
            {
              (v130)(v28, v92);
              v76 = v132;
            }

            else
            {
              v76 = v132;
              v123(v132, v28, v92);
            }

            goto LABEL_57;
          }

          sub_1000079B4(v17, &qword_100772140);
          sub_100058000(&qword_100772150);
          v93 = *(v90 + 80);
          v117 = v42;
          v94 = (v93 + 32) & ~v93;
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_10062D400;
          v128 = v91;
          v96 = v118;
          v97 = *(*v118 + 144);
          swift_beginAccess();
          v98 = *(v90 + 16);
          v98(v95 + v94, v96 + v97, v133);
          v99 = v124;
          v100 = *(*v124 + 144);
          swift_beginAccess();
          v101 = v99 + v100;
          v102 = v129;
          v98(v129, v101, v133);
          v103 = v133;
          v104 = v122;
          sub_1001B6BEC(v95, 0, v102, v122);

          (*(v90 + 8))(v102, v103);
          (*(v136 + 8))(v134, v135);
          if (v128(v104, 1, v103) != 1)
          {
            v113 = *(v90 + 32);
            v114 = v121;
            v113(v121, v104, v103);
            v76 = v132;
            v113(v132, v114, v103);
            goto LABEL_57;
          }

          sub_1000079B4(v104, &qword_100772140);
        }

        else
        {
          (*(v136 + 8))(v46, v135);
        }

        v76 = v132;
LABEL_57:
        swift_storeEnumTagMultiPayload();
        return sub_100016588(v76, v40, &qword_100772148);
      }

      __break(1u);
      goto LABEL_47;
    }
  }

LABEL_16:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B5AEC@<X0>(void (*a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v42) = a2;
  v43 = a1;
  v4 = type metadata accessor for IndexPath();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v37 - v14;
  v16 = sub_1000C8504();

  v17 = *(v16 + 16);

  if (v17)
  {
    v38 = v4;
    v18 = sub_1000C8504();

    if (v17 > *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v41 = a3;
      v37[1] = v17 - 1;
      v19 = v18 + 16 * (v17 - 1);
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      v22 = *(*v21 + 144);
      swift_beginAccess();
      v37[0] = *(v10 + 16);
      (v37[0])(v13, v21 + v22, v9);

      sub_1001B662C(v43, v42 & 1, v13, v8);
      v43 = *(v10 + 8);
      v43(v13, v9);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_1000079B4(v8, &unk_100771B40);
LABEL_14:
        v36 = sub_100058000(&unk_1007721F0);
        return (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
      }

      v42 = v20;
      (*(v10 + 32))(v15, v8, v9);
      sub_1000C8504();
      v10 = sub_1000F4DB4(v15, v26);

      if (!v10)
      {
        v43(v15, v9);

        goto LABEL_14;
      }

      if (!(v42 >> 62))
      {
        goto LABEL_10;
      }
    }

    _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
    v27 = v39;
    v28 = v37[0];
    IndexPath.init(row:section:)();
    v28(v41, v15, v9);
    swift_beginAccess();
    v29 = *(v10 + 64);
    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v40;

    v32 = sub_100058000(&unk_1007721F0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);

    v43(v15, v9);
    v35 = v41;
    *(v41 + v33) = v30;
    (*(v31 + 32))(v35 + v34, v27, v38);
    return (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
  }

  v23 = sub_100058000(&unk_1007721F0);
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, 1, 1, v23);
}

uint64_t sub_1001B608C@<X0>(void (*a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v42) = a2;
  v43 = a1;
  v4 = type metadata accessor for IndexPath();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = sub_1000C84C8();

  v17 = *(v16 + 16);

  if (v17)
  {
    v38 = v4;
    v18 = sub_1000C84C8();

    if (v17 > *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v41 = a3;
      v37[1] = v17 - 1;
      v19 = v18 + 16 * (v17 - 1);
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      v22 = *(*v21 + 144);
      swift_beginAccess();
      v37[0] = *(v10 + 16);
      (v37[0])(v12, v21 + v22, v9);

      sub_1001B6BEC(v43, v42 & 1, v12, v8);
      v43 = *(v10 + 8);
      v43(v12, v9);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_1000079B4(v8, &qword_100772140);
LABEL_14:
        v36 = sub_100058000(&qword_100772188);
        return (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
      }

      v42 = v20;
      (*(v10 + 32))(v15, v8, v9);
      sub_1000C84C8();
      v10 = sub_1000F2C50(v15, v26);

      if (!v10)
      {
        v43(v15, v9);

        goto LABEL_14;
      }

      if (!(v42 >> 62))
      {
        goto LABEL_10;
      }
    }

    _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
    v27 = v39;
    v28 = v37[0];
    IndexPath.init(row:section:)();
    v28(v41, v15, v9);
    swift_beginAccess();
    v29 = *(v10 + 64);
    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v40;

    v32 = sub_100058000(&qword_100772188);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);

    v43(v15, v9);
    v35 = v41;
    *(v41 + v33) = v30;
    (*(v31 + 32))(v35 + v34, v27, v38);
    return (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
  }

  v23 = sub_100058000(&qword_100772188);
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, 1, 1, v23);
}

uint64_t sub_1001B662C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a1;
  v7 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v7 - 8);
  v43 = &v37[-v8];
  v49 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v4;
  sub_1000C8504();
  v40 = a3;
  v16 = sub_1000F4DB4(a3, v15);

  if (!v16)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_25:
    v30 = v43;
    if (!v19[2])
    {

      return (*(v9 + 56))(a4, 1, 1, v49);
    }

    v31 = *(v42 + qword_100771758);
    if (v31)
    {
      v32 = *(v31 + 16);

      if (v32(v33))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        (*(v31 + 368))(Strong, v39, v38 & 1, v19, v40);

        return sub_100016588(v30, a4, &unk_100771B40);
      }

      if (!v19[2])
      {

        (*(v9 + 56))(v30, 1, 1, v49);
        return sub_100016588(v30, a4, &unk_100771B40);
      }
    }

    v36 = v49;
    (*(v9 + 16))(v30, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v49);

    (*(v9 + 56))(v30, 0, 1, v36);
    return sub_100016588(v30, a4, &unk_100771B40);
  }

  v41 = a4;
  v17 = (v12 + 16);
  v18 = (v12 + 88);
  v47 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v46 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v45 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v44 = v9 + 32;

  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = qword_1007A84C0;
    swift_beginAccess();
    (*v17)(v14, &v16[v20], v11);
    v21 = (*v18)(v14, v11);
    if (v21 == v47 || v21 == v46)
    {
LABEL_23:

      a4 = v41;
      goto LABEL_25;
    }

    if (v21 != v45)
    {
      goto LABEL_37;
    }

    v23 = *(*v16 + 144);
    swift_beginAccess();
    (*(v9 + 16))(v48, &v16[v23], v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100547678(0, v19[2] + 1, 1, v19);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_100547678(v24 > 1, v25 + 1, 1, v19);
    }

    v19[2] = v25 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v48, v49);
    swift_beginAccess();
    v26 = *(v16 + 8);
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {

      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    v16 = v29;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B6BEC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a1;
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v43 = &v37[-v8];
  v49 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v4;
  sub_1000C84C8();
  v40 = a3;
  v16 = sub_1000F2C50(a3, v15);

  if (!v16)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_25:
    v30 = v43;
    if (!v19[2])
    {

      return (*(v9 + 56))(a4, 1, 1, v49);
    }

    v31 = *(v42 + qword_100771758);
    if (v31)
    {
      v32 = *(v31 + 16);

      if (v32(v33))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        (*(v31 + 368))(Strong, v39, v38 & 1, v19, v40);

        return sub_100016588(v30, a4, &qword_100772140);
      }

      if (!v19[2])
      {

        (*(v9 + 56))(v30, 1, 1, v49);
        return sub_100016588(v30, a4, &qword_100772140);
      }
    }

    v36 = v49;
    (*(v9 + 16))(v30, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v49);

    (*(v9 + 56))(v30, 0, 1, v36);
    return sub_100016588(v30, a4, &qword_100772140);
  }

  v41 = a4;
  v17 = (v12 + 16);
  v18 = (v12 + 88);
  v47 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v46 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v45 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v44 = v9 + 32;

  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = qword_1007A84C0;
    swift_beginAccess();
    (*v17)(v14, &v16[v20], v11);
    v21 = (*v18)(v14, v11);
    if (v21 == v47 || v21 == v46)
    {
LABEL_23:

      a4 = v41;
      goto LABEL_25;
    }

    if (v21 != v45)
    {
      goto LABEL_37;
    }

    v23 = *(*v16 + 144);
    swift_beginAccess();
    (*(v9 + 16))(v48, &v16[v23], v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100547094(0, v19[2] + 1, 1, v19);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_100547094(v24 > 1, v25 + 1, 1, v19);
    }

    v19[2] = v25 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v48, v49);
    swift_beginAccess();
    v26 = *(v16 + 8);
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {

      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    v16 = v29;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B71AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.row.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    IndexPath.init(row:section:)();
    v9 = sub_1000C8504();
    v10 = sub_1001D6ABC(v7, v9);

    if (v10)
    {
      Strong = swift_weakLoadStrong();
      (*(v5 + 8))(v7, v4);
      if (Strong)
      {
        v12 = *(Strong + 16);

        if (v12 == a1)
        {
          v13 = *(*v10 + 144);
          swift_beginAccess();
          v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
          v15 = *(v14 - 8);
          (*(v15 + 16))(a2, v10 + v13, v14);

          return (*(v15 + 56))(a2, 0, 1, v14);
        }
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    v16 = type metadata accessor for TTRAccountsListsViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  return result;
}

uint64_t sub_1001B7424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.row.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    IndexPath.init(row:section:)();
    v9 = sub_1000C84C8();
    v10 = sub_1001D6ABC(v7, v9);

    if (v10)
    {
      Strong = swift_weakLoadStrong();
      (*(v5 + 8))(v7, v4);
      if (Strong)
      {
        v12 = *(Strong + 16);

        if (v12 == a1)
        {
          v13 = *(*v10 + 144);
          swift_beginAccess();
          v14 = type metadata accessor for TTRRemindersListViewModel.Item();
          v15 = *(v14 - 8);
          (*(v15 + 16))(a2, v10 + v13, v14);

          return (*(v15 + 56))(a2, 0, 1, v14);
        }
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    v16 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  return result;
}

uint64_t sub_1001B769C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100771E70);
  v1 = sub_100003E30(v0, qword_100771E70);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B7764(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1001B77A4(a1);
  return v2;
}

uint64_t sub_1001B77A4(uint64_t a1)
{
  v3 = (v1 + qword_1007A8498);
  v4 = *(type metadata accessor for TTRITreeViewDropProposal(0) + 20);
  v5 = sub_100058000(&qword_100780DC0);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 4, v5);
  *v3 = 0;
  v6 = qword_1007A84A0;
  v7 = sub_100058000(qword_100771F18);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = *(*v1 + 120);
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult();
  (*(*(updated - 8) + 56))(v1 + v8, 1, 1, updated);
  *(v1 + *(*v1 + 128)) = 0;
  *(v1 + qword_100771E88) = a1;
  return v1;
}

void (*sub_1001B7938@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>))(uint64_t *, void)
{
  v113 = a2;
  v114 = a4;
  v112 = sub_100058000(&qword_100772190);
  __chkstk_darwin(v112);
  v111 = &v102[-v6];
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v109 = *(v7 - 8);
  v110 = v7;
  v8 = __chkstk_darwin(v7);
  v107 = &v102[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v108 = &v102[-v10];
  v11 = sub_100058000(&unk_100771B10);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v102[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v102[-v15];
  v17 = type metadata accessor for IndexPath();
  v18 = __chkstk_darwin(v17);
  v20 = &v102[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v106 = &v102[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v102[-v24];
  __chkstk_darwin(v23);
  v27 = &v102[-v26];
  v28 = a3;
  v30 = v29;
  sub_10000794C(v28, v16, &unk_100771B10);
  if ((*(v30 + 48))(v16, 1, v17) == 1)
  {
    sub_1000079B4(v16, &unk_100771B10);
LABEL_19:
    sub_100058000(&unk_10076BA80);
    return swift_storeEnumTagMultiPayload();
  }

  v105 = *(v30 + 32);
  v105(v27, v16, v17);
  [v113 locationInView:a1];
  v32 = v31;
  v33 = [a1 indexPathForRowAtPoint:?];
  if (v33)
  {
    v113 = v27;
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 rectForRowAtIndexPath:isa];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v116.origin.x = v37;
    v116.origin.y = v39;
    v116.size.width = v41;
    v116.size.height = v43;
    v44 = CGRectGetHeight(v116) * 0.5;
    v117.origin.x = v37;
    v117.origin.y = v39;
    v117.size.width = v41;
    v117.size.height = v43;
    CGRectGetHeight(v117);
    v104 = v37;
    v118.origin.x = sub_100068328(v37, v39, v41, v43, v44, 0.0);
    x = v118.origin.x;
    y = v118.origin.y;
    width = v118.size.width;
    height = v118.size.height;
    if (v32 >= CGRectGetMinY(v118))
    {
      v120.origin.x = x;
      v120.origin.y = y;
      v120.size.width = width;
      v120.size.height = height;
      v103 = CGRectGetMaxY(v120) < v32;
    }

    else
    {
      v103 = 0;
    }

    v66 = v104;
    v121.origin.x = v104;
    v121.origin.y = v39;
    v121.size.width = v41;
    v121.size.height = v43;
    v67 = CGRectGetHeight(v121) * 0.2;
    v122.origin.x = v66;
    v122.origin.y = v39;
    v122.size.width = v41;
    v122.size.height = v43;
    CGRectGetHeight(v122);
    v123.origin.x = sub_100068328(v66, v39, v41, v43, v67, 0.0);
    v68 = v123.origin.x;
    v69 = v123.origin.y;
    v70 = v123.size.width;
    v71 = v123.size.height;
    if (v32 >= CGRectGetMinY(v123) && (v124.origin.x = v68, v124.origin.y = v69, v124.size.width = v70, v124.size.height = v71, CGRectGetMaxY(v124) >= v32))
    {
      v72 = v30;
      v73 = 1;
    }

    else
    {
      v72 = v30;
      v73 = 0;
    }

    v74 = sub_1000C8504();
    v75 = sub_1001D6ABC(v25, v74);

    if (v75)
    {
      v76 = *(*v75 + 144);
      swift_beginAccess();
      v78 = v109;
      v77 = v110;
      v79 = v75 + v76;
      v80 = v107;
      (*(v109 + 16))(v107, v79, v110);

      (*(v72 + 8))(v113, v17);
      v81 = *(v78 + 32);
      v82 = v108;
      v81(v108, v80, v77);
      v83 = v111;
      v105(v111, v25, v17);
      v84 = v112;
      v81((v83 + *(v112 + 36)), v82, v77);
      *(v83 + *(v84 + 40)) = v103;
      *(v83 + *(v84 + 44)) = v73;
      sub_100016588(v83, v114, &qword_100772190);
    }

    else
    {
      v86 = v72;
      if (qword_100766FE0 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100003E30(v87, qword_100771E70);
      v88 = *(v72 + 16);
      v89 = v106;
      v88(v106, v25, v17);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = v86;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v115[0] = v94;
        *v93 = 136315138;
        v95 = IndexPath.description.getter();
        v97 = v96;
        v98 = *(v92 + 8);
        v98(v89, v17);
        v99 = sub_100004060(v95, v97, v115);

        *(v93 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v90, v91, "TTRITreeViewDropUpdateCoordinator: internal inconsistency: can't lookup item {at: %s}", v93, 0xCu);
        sub_100004758(v94);

        v98(v25, v17);
        v98(v113, v17);
      }

      else
      {

        v100 = *(v86 + 8);
        v100(v89, v17);
        v100(v25, v17);
        v100(v113, v17);
      }
    }

    goto LABEL_19;
  }

  v49 = v27;
  if (!IndexPath.row.getter() || (v50 = v30, v51 = IndexPath.row.getter(), v52 = v51 == [a1 numberOfRowsInSection:IndexPath.section.getter()], v30 = v50, v52) || (v53 = IndexPath._bridgeToObjectiveC()().super.isa, objc_msgSend(a1, "rectForRowAtIndexPath:", v53), v55 = v54, v57 = v56, v59 = v58, v61 = v60, v53, v119.origin.x = v55, v119.origin.y = v57, v119.size.width = v59, v119.size.height = v61, v32 < CGRectGetMinY(v119)))
  {
    v62 = v14;
    v63 = v49;
LABEL_10:
    v105(v62, v63, v17);
    v64 = 0;
LABEL_11:
    v65 = v114;
    (*(v30 + 56))(v14, v64, 1, v17);
    sub_100016588(v14, v65, &unk_100771B10);
    goto LABEL_19;
  }

  v125.origin.x = v55;
  v125.origin.y = v57;
  v125.size.width = v59;
  v125.size.height = v61;
  if (CGRectGetMinY(v125) >= v32)
  {
    (*(v50 + 8))(v49, v17);
    v64 = 1;
    goto LABEL_11;
  }

  (*(v50 + 16))(v20, v49, v17);
  result = IndexPath.row.modify();
  if (!__OFADD__(*v101, 1))
  {
    ++*v101;
    result(v115, 0);
    (*(v50 + 8))(v49, v17);
    v62 = v14;
    v63 = v20;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void (*sub_1001B836C@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>))(uint64_t *, void)
{
  v113 = a2;
  v114 = a4;
  v112 = sub_100058000(&qword_1007720C8);
  __chkstk_darwin(v112);
  v111 = &v102[-v6];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v107 = &v102[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v108 = &v102[-v10];
  v11 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v11 - 8);
  v13 = &v102[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v102[-v15];
  v17 = type metadata accessor for IndexPath();
  __chkstk_darwin(v17);
  v19 = &v102[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v106 = &v102[-v21];
  __chkstk_darwin(v22);
  v24 = &v102[-v23];
  __chkstk_darwin(v25);
  v27 = &v102[-v26];
  v28 = a3;
  v30 = v29;
  sub_10000794C(v28, v16, &unk_100771B10);
  if ((*(v30 + 48))(v16, 1, v17) == 1)
  {
    sub_1000079B4(v16, &unk_100771B10);
LABEL_19:
    sub_100058000(&unk_1007720E0);
    return swift_storeEnumTagMultiPayload();
  }

  v105 = *(v30 + 32);
  v105(v27, v16, v17);
  [v113 locationInView:a1];
  v32 = v31;
  v33 = [a1 indexPathForRowAtPoint:?];
  if (v33)
  {
    v113 = v27;
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 rectForRowAtIndexPath:isa];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v116.origin.x = v37;
    v116.origin.y = v39;
    v116.size.width = v41;
    v116.size.height = v43;
    v44 = CGRectGetHeight(v116) * 0.5;
    v117.origin.x = v37;
    v117.origin.y = v39;
    v117.size.width = v41;
    v117.size.height = v43;
    CGRectGetHeight(v117);
    v104 = v37;
    v118.origin.x = sub_100068328(v37, v39, v41, v43, v44, 0.0);
    x = v118.origin.x;
    y = v118.origin.y;
    width = v118.size.width;
    height = v118.size.height;
    if (v32 >= CGRectGetMinY(v118))
    {
      v120.origin.x = x;
      v120.origin.y = y;
      v120.size.width = width;
      v120.size.height = height;
      v103 = CGRectGetMaxY(v120) < v32;
    }

    else
    {
      v103 = 0;
    }

    v66 = v104;
    v121.origin.x = v104;
    v121.origin.y = v39;
    v121.size.width = v41;
    v121.size.height = v43;
    v67 = CGRectGetHeight(v121) * 0.2;
    v122.origin.x = v66;
    v122.origin.y = v39;
    v122.size.width = v41;
    v122.size.height = v43;
    CGRectGetHeight(v122);
    v123.origin.x = sub_100068328(v66, v39, v41, v43, v67, 0.0);
    v68 = v123.origin.x;
    v69 = v123.origin.y;
    v70 = v123.size.width;
    v71 = v123.size.height;
    if (v32 >= CGRectGetMinY(v123) && (v124.origin.x = v68, v124.origin.y = v69, v124.size.width = v70, v124.size.height = v71, CGRectGetMaxY(v124) >= v32))
    {
      v72 = v30;
      v73 = 1;
    }

    else
    {
      v72 = v30;
      v73 = 0;
    }

    v74 = sub_1000C84C8();
    v75 = sub_1001D6ABC(v24, v74);

    if (v75)
    {
      v76 = *(*v75 + 144);
      swift_beginAccess();
      v78 = v109;
      v77 = v110;
      v79 = v75 + v76;
      v80 = v107;
      (*(v109 + 16))(v107, v79, v110);

      (*(v72 + 8))(v113, v17);
      v81 = *(v78 + 32);
      v82 = v108;
      v81(v108, v80, v77);
      v83 = v111;
      v105(v111, v24, v17);
      v84 = v112;
      v81((v83 + *(v112 + 36)), v82, v77);
      *(v83 + *(v84 + 40)) = v103;
      *(v83 + *(v84 + 44)) = v73;
      sub_100016588(v83, v114, &qword_1007720C8);
    }

    else
    {
      v86 = v72;
      if (qword_100766FE0 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100003E30(v87, qword_100771E70);
      v88 = *(v72 + 16);
      v89 = v106;
      v88(v106, v24, v17);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = v86;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v115[0] = v94;
        *v93 = 136315138;
        v95 = IndexPath.description.getter();
        v97 = v96;
        v98 = *(v92 + 8);
        v98(v89, v17);
        v99 = sub_100004060(v95, v97, v115);

        *(v93 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v90, v91, "TTRITreeViewDropUpdateCoordinator: internal inconsistency: can't lookup item {at: %s}", v93, 0xCu);
        sub_100004758(v94);

        v98(v24, v17);
        v98(v113, v17);
      }

      else
      {

        v100 = *(v86 + 8);
        v100(v89, v17);
        v100(v24, v17);
        v100(v113, v17);
      }
    }

    goto LABEL_19;
  }

  v49 = v27;
  if (!IndexPath.row.getter() || (v50 = v30, v51 = IndexPath.row.getter(), v52 = v51 == [a1 numberOfRowsInSection:IndexPath.section.getter()], v30 = v50, v52) || (v53 = IndexPath._bridgeToObjectiveC()().super.isa, objc_msgSend(a1, "rectForRowAtIndexPath:", v53), v55 = v54, v57 = v56, v59 = v58, v61 = v60, v53, v119.origin.x = v55, v119.origin.y = v57, v119.size.width = v59, v119.size.height = v61, v32 < CGRectGetMinY(v119)))
  {
    v62 = v13;
    v63 = v49;
LABEL_10:
    v105(v62, v63, v17);
    v64 = 0;
LABEL_11:
    v65 = v114;
    (*(v30 + 56))(v13, v64, 1, v17);
    sub_100016588(v13, v65, &unk_100771B10);
    goto LABEL_19;
  }

  v125.origin.x = v55;
  v125.origin.y = v57;
  v125.size.width = v59;
  v125.size.height = v61;
  if (CGRectGetMinY(v125) >= v32)
  {
    (*(v50 + 8))(v49, v17);
    v64 = 1;
    goto LABEL_11;
  }

  (*(v50 + 16))(v19, v49, v17);
  result = IndexPath.row.modify();
  if (!__OFADD__(*v101, 1))
  {
    ++*v101;
    result(v115, 0);
    (*(v50 + 8))(v49, v17);
    v62 = v13;
    v63 = v19;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1001B8DA0(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v160 = a4;
  v161 = a5;
  v162 = a3;
  v151 = a2;
  v157 = a1;
  v159 = a6;
  v156 = sub_100058000(&qword_100772100);
  v158 = *(v156 - 8);
  __chkstk_darwin(v156);
  v139 = v131 - v6;
  v7 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v7 - 8);
  v154 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100058000(&qword_100772108);
  __chkstk_darwin(v148);
  v149 = v131 - v9;
  v10 = sub_100058000(&unk_100772110);
  __chkstk_darwin(v10 - 8);
  v142 = v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v140 = v131 - v13;
  __chkstk_darwin(v14);
  v141 = v131 - v15;
  v146 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v146);
  v137 = v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v134 = v131 - v18;
  __chkstk_darwin(v19);
  v136 = v131 - v20;
  v150 = type metadata accessor for TTRRemindersListViewModel.Item();
  v147 = *(v150 - 8);
  __chkstk_darwin(v150);
  v138 = v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v135 = v131 - v23;
  __chkstk_darwin(v24);
  v144 = v131 - v25;
  v26 = sub_100058000(&qword_100772120);
  __chkstk_darwin(v26 - 8);
  v152 = v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v131 - v29;
  __chkstk_darwin(v31);
  v33 = v131 - v32;
  v34 = sub_100058000(&qword_100772128);
  __chkstk_darwin(v34 - 8);
  v153 = v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v131 - v37;
  v39 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v39 - 8);
  v41 = v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = v131 - v43;
  v45 = type metadata accessor for IndexPath();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v145 = v131 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v50 = v131 - v49;
  sub_10000794C(v157, v44, &unk_100771B10);
  v52 = v46 + 48;
  v51 = *(v46 + 48);
  if ((v51)(v44, 1, v45) != 1)
  {
    v132 = v46;
    v56 = *(v46 + 32);
    v157 = v50;
    v131[1] = v46 + 32;
    v131[0] = v56;
    v56(v50, v44, v45);
    v57 = *(v158 + 56);
    v143 = v38;
    v57(v38, 1, 1, v156);
    sub_1001C171C(v151, v33);
    sub_10000794C(v33, v30, &qword_100772120);
    v151 = v51;
    v131[2] = v52;
    v58 = (v51)(v30, 2, v45);
    v133 = v33;
    v155 = v45;
    if (v58)
    {
      if (v58 != 1)
      {
        v76 = sub_1001AB458();
        v78 = v77;
        v79 = v132;
        (*(v132 + 16))(v41, v157, v45);
        (*(v79 + 56))(v41, 0, 1, v45);
        v80 = v141;
        sub_1001AF0C4(v76, v78 & 1, v41, v141);

        sub_1000079B4(v41, &unk_100771B10);
        v81 = sub_100058000(&unk_100772130);
        v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
        v83 = v158;
        v84 = v153;
        if (v82 == 1)
        {
          (*(v79 + 8))(v157, v155);
          sub_1000079B4(v80, &unk_100772110);
          v75 = 0;
          v55 = v161;
        }

        else
        {
          v162 = *&v80[*(v81 + 48)];
          v112 = v146;
          v111 = v147;
          v145 = *(v146 + 48);
          v113 = v80;
          v114 = *(v147 + 32);
          v115 = v136;
          v114(v136, v113, v150);
          *&v115[v145] = v162;
          v162 = *&v115[*(v112 + 48)];
          v116 = v144;
          v117 = v115;
          v118 = v150;
          v114(v144, v117, v150);
          v119 = *(v81 + 48);
          v120 = v149;
          (*(v111 + 16))(v149, v116, v118);
          *(v120 + v119) = v162;
          swift_storeEnumTagMultiPayload();
          v55 = v161;
          v75 = sub_1003D146C(v120, v160, v161);
          sub_1000079B4(v120, &qword_100772108);
          (*(v111 + 8))(v144, v118);
          (*(v79 + 8))(v157, v155);
        }

        v109 = v159;
        v110 = v154;
LABEL_17:
        v121 = v152;
        sub_100016588(v133, v152, &qword_100772120);
        v122 = (v151)(v121, 2, v155);
        if (v122)
        {
          v123 = v122 == 1;
          v124 = v143;
          if (v123)
          {
            v125 = 3;
            if ((v75 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v125 = 2;
            if ((v75 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          sub_1000079B4(v121, &qword_100772120);
          v125 = 3;
          v124 = v143;
          if ((v75 & 1) == 0)
          {
LABEL_26:
            sub_1000079B4(v124, &qword_100772128);
            v127 = 1;
            v125 = 1;
LABEL_28:
            v129 = sub_100058000(&qword_100780DC0);
            (*(*(v129 - 8) + 56))(v110, v127, 4, v129);
            v130 = type metadata accessor for TTRITreeViewDropProposal(0);
            sub_1001C4264(v110, v109 + *(v130 + 20));

            *v109 = v125;
            goto LABEL_29;
          }
        }

        sub_100016588(v124, v84, &qword_100772128);
        v126 = v156;
        if ((*(v83 + 48))(v84, 1, v156) == 1)
        {
          sub_1000079B4(v84, &qword_100772128);
          v127 = 2;
        }

        else
        {
          v128 = v139;
          sub_100016588(v84, v139, &qword_100772100);
          (v131[0])(v110, v128 + *(v126 + 36), v155);
          v127 = 0;
        }

        goto LABEL_28;
      }

      v59 = v143;
      sub_1000079B4(v143, &qword_100772128);
      v60 = v156;
      v61 = v157;
      v62 = v132;
      v63 = *(v132 + 16);
      v63(v59 + *(v156 + 36), v157, v45);
      *v59 = 0;
      v57(v59, 0, 1, v60);
      v64 = v62;
      v65 = sub_1001AB458();
      LOBYTE(v59) = v66;
      v63(v41, v61, v45);
      (*(v62 + 56))(v41, 0, 1, v45);
      v67 = v142;
      sub_1001AF0C4(v65, v59 & 1, v41, v142);

      sub_1000079B4(v41, &unk_100771B10);
      v68 = sub_100058000(&unk_100772130);
      if ((*(*(v68 - 8) + 48))(v67, 1, v68) != 1)
      {
        v162 = *&v67[*(v68 + 48)];
        v85 = v61;
        v86 = v146;
        v87 = v147;
        v88 = *(v146 + 48);
        v89 = *(v147 + 32);
        v90 = v137;
        v91 = v67;
        v92 = v150;
        v89(v137, v91, v150);
        *&v90[v88] = v162;
        v93 = *&v90[*(v86 + 48)];
        v94 = v138;
        v89(v138, v90, v92);
        v95 = *(v68 + 48);
        v96 = v149;
        (*(v87 + 16))(v149, v94, v92);
        *(v96 + v95) = v93;
        swift_storeEnumTagMultiPayload();
        v55 = v161;
        v75 = sub_1003D146C(v96, v160, v161);
        sub_1000079B4(v96, &qword_100772108);
        (*(v87 + 8))(v94, v92);
        (*(v64 + 8))(v85, v155);
        goto LABEL_14;
      }

      (*(v62 + 8))(v61, v155);
      v69 = v67;
    }

    else
    {
      v70 = v145;
      (v131[0])(v145, v30, v45);
      v71 = v140;
      v72 = v157;
      sub_1001B0CF8(v70, v157, 0, 0, v140);
      v73 = sub_100058000(&unk_100772130);
      if ((*(*(v73 - 8) + 48))(v71, 1, v73) != 1)
      {
        v162 = *(v71 + *(v73 + 48));
        v97 = v146;
        v98 = v147;
        v99 = *(v146 + 48);
        v100 = *(v147 + 32);
        v101 = v134;
        v102 = v150;
        v100(v134, v71, v150);
        *&v101[v99] = v162;
        v103 = *&v101[*(v97 + 48)];
        v104 = v135;
        v100(v135, v101, v102);
        v105 = *(v73 + 48);
        v106 = v149;
        (*(v98 + 16))(v149, v104, v102);
        *(v106 + v105) = v103;
        swift_storeEnumTagMultiPayload();
        v55 = v161;
        v75 = sub_1003D146C(v106, v160, v161);
        sub_1000079B4(v106, &qword_100772108);
        (*(v98 + 8))(v104, v102);
        v107 = *(v132 + 8);
        v108 = v155;
        v107(v145, v155);
        v107(v72, v108);
        goto LABEL_14;
      }

      v74 = *(v132 + 8);
      v74(v70, v45);
      v74(v72, v45);
      v69 = v71;
    }

    sub_1000079B4(v69, &unk_100772110);
    v75 = 0;
    v55 = v161;
LABEL_14:
    v83 = v158;
    v109 = v159;
    v84 = v153;
    v110 = v154;
    goto LABEL_17;
  }

  sub_1000079B4(v44, &unk_100771B10);
  v53 = qword_1007A8498;
  v54 = v162;
  swift_beginAccess();
  sub_1001C4200(v54 + v53, v159);

  v55 = v161;
LABEL_29:
}

void sub_1001B9E08(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v78 = a4;
  v79 = a3;
  v77 = a2;
  v74 = sub_100058000(&qword_100772108);
  __chkstk_darwin(v74);
  v75 = &v62 - v5;
  v6 = sub_100058000(&qword_100772178);
  __chkstk_darwin(v6 - 8);
  v71 = &v62 - v7;
  v67 = sub_100058000(&qword_100772180);
  __chkstk_darwin(v67);
  v66 = &v62 - v8;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v72 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin(v12);
  v68 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100772120);
  __chkstk_darwin(v17 - 8);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  __chkstk_darwin(v23);
  v25 = &v62 - v24;
  sub_1001C171C(a1, &v62 - v24);
  v26 = sub_100058000(&qword_100780DC0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v76 = v16;
  v29 = v16;
  v30 = v10;
  v64 = v27 + 56;
  v65 = v28;
  v28(v29, 1, 4, v26);
  sub_10000794C(v25, v22, &qword_100772120);
  v31 = *(v10 + 48);
  v73 = v9;
  v32 = v31(v22, 2, v9);
  if (!v32)
  {
    sub_1000079B4(v25, &qword_100772120);
    v38 = v22;
    v37 = &qword_100772120;
    goto LABEL_6;
  }

  if (v32 == 1)
  {
    v33 = sub_1001AB458();
    v35 = v71;
    sub_1001B608C(v33, v34 & 1, v71);

    v36 = sub_100058000(&qword_100772188);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
      sub_1000079B4(v25, &qword_100772120);
      v37 = &qword_100772178;
      v38 = v35;
LABEL_6:
      sub_1000079B4(v38, v37);
      v39 = 0;
      v40 = v78;
      v41 = v79;
      v42 = v76;
      goto LABEL_17;
    }

    v46 = *(v35 + *(v36 + 48));
    v47 = *(v36 + 64);
    v49 = v66;
    v48 = v67;
    v50 = *(v67 + 48);
    v51 = *(v69 + 32);
    v62 = *(v67 + 64);
    v63 = v51;
    v51(v66, v35, v70);
    *&v49[v50] = v46;
    v52 = *(v30 + 32);
    v53 = v35 + v47;
    v54 = v73;
    v52(&v49[v62], v53, v73);
    v71 = *&v49[*(v48 + 48)];
    v55 = *(v48 + 64);
    v56 = v70;
    v63(v68, v49, v70);
    v66 = v52;
    v67 = v30 + 32;
    v52(v72, &v49[v55], v54);
    v57 = *(sub_100058000(&unk_100772130) + 48);
    v58 = v68;
    v59 = v69;
    v60 = v75;
    (*(v69 + 16))(v75, v68, v56);
    *(v60 + v57) = v71;
    swift_storeEnumTagMultiPayload();
    v41 = v79;
    LOBYTE(v57) = sub_1003D146C(v60, v77, v79);
    sub_1000079B4(v60, &qword_100772108);
    (*(v59 + 8))(v58, v56);
    sub_1000079B4(v25, &qword_100772120);
    if (v57)
    {
      v42 = v76;
      sub_1001C445C(v76, type metadata accessor for TTRITreeViewDropProposal.Intent);
      (v66)(v42, v72, v73);
      v65(v42, 0, 4, v26);
      v39 = 3;
      v40 = v78;
      goto LABEL_17;
    }

    (*(v30 + 8))(v72, v73);
    v39 = 0;
LABEL_16:
    v40 = v78;
    v42 = v76;
    goto LABEL_17;
  }

  v43 = v75;
  swift_storeEnumTagMultiPayload();
  v41 = v79;
  v44 = sub_1003D146C(v43, v77, v79);
  sub_1000079B4(v43, &qword_100772108);
  if ((v44 & 1) == 0)
  {
    sub_1000079B4(v25, &qword_100772120);
    v39 = 1;
    goto LABEL_16;
  }

  sub_100016588(v25, v19, &qword_100772120);
  v45 = v31(v19, 2, v73);
  if (!v45)
  {
    sub_1000079B4(v19, &qword_100772120);
    v39 = 3;
    goto LABEL_16;
  }

  v40 = v78;
  v42 = v76;
  if (v45 == 1)
  {
    v39 = 3;
  }

  else
  {
    v39 = 2;
  }

LABEL_17:
  v61 = type metadata accessor for TTRITreeViewDropProposal(0);
  sub_1001C4264(v42, v40 + *(v61 + 20));

  *v40 = v39;
}

void sub_1001BA5CC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v399 = a5;
  v407 = a1;
  v387 = a7;
  v403 = sub_100058000(&unk_1007721A8);
  v11 = *(v403 - 8);
  v385 = v11;
  v12 = __chkstk_darwin(v403);
  v354 = &v346 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v355 = &v346 - v14;
  v15 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = (&v346 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v392 = &v346 - v19;
  v394 = sub_100058000(&unk_10076BD90);
  __chkstk_darwin(v394);
  v398 = &v346 - v20;
  v21 = type metadata accessor for IndexPath();
  v408 = *(v21 - 8);
  v409 = v21;
  v22 = __chkstk_darwin(v21);
  v359 = &v346 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v370 = (&v346 - v25);
  v26 = __chkstk_darwin(v24);
  v400 = (&v346 - v27);
  v28 = __chkstk_darwin(v26);
  v379 = &v346 - v29;
  v30 = __chkstk_darwin(v28);
  v384 = &v346 - v31;
  v32 = __chkstk_darwin(v30);
  v377 = (&v346 - v33);
  v34 = __chkstk_darwin(v32);
  v395 = (&v346 - v35);
  v36 = __chkstk_darwin(v34);
  v382 = &v346 - v37;
  __chkstk_darwin(v36);
  v383 = &v346 - v38;
  v39 = sub_100058000(&unk_100771B10);
  v40 = __chkstk_darwin(v39 - 8);
  v358 = (&v346 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __chkstk_darwin(v40);
  v360 = (&v346 - v43);
  v44 = __chkstk_darwin(v42);
  v374 = (&v346 - v45);
  v46 = __chkstk_darwin(v44);
  v386 = &v346 - v47;
  __chkstk_darwin(v46);
  v376 = (&v346 - v48);
  v49 = sub_100058000(&qword_1007721B8);
  v50 = __chkstk_darwin(v49 - 8);
  v357 = &v346 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v373 = &v346 - v53;
  v54 = __chkstk_darwin(v52);
  v369 = &v346 - v55;
  v56 = __chkstk_darwin(v54);
  v371 = &v346 - v57;
  v58 = __chkstk_darwin(v56);
  v60 = &v346 - v59;
  v61 = __chkstk_darwin(v58);
  v381 = (&v346 - v62);
  v63 = __chkstk_darwin(v61);
  v380 = (&v346 - v64);
  __chkstk_darwin(v63);
  v375 = &v346 - v65;
  v393 = sub_100058000(&qword_1007721C0);
  v66 = __chkstk_darwin(v393);
  v347 = &v346 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v351 = &v346 - v69;
  v70 = __chkstk_darwin(v68);
  v349 = &v346 - v71;
  v72 = __chkstk_darwin(v70);
  v353 = &v346 - v73;
  v74 = __chkstk_darwin(v72);
  v364 = &v346 - v75;
  v76 = __chkstk_darwin(v74);
  v362 = &v346 - v77;
  v78 = __chkstk_darwin(v76);
  v368 = &v346 - v79;
  __chkstk_darwin(v78);
  v366 = &v346 - v80;
  v81 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v396 = *(v81 - 8);
  v397 = v81;
  v82 = __chkstk_darwin(v81);
  v346 = &v346 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v82);
  v350 = &v346 - v85;
  v86 = __chkstk_darwin(v84);
  v348 = &v346 - v87;
  v88 = __chkstk_darwin(v86);
  v352 = &v346 - v89;
  v90 = __chkstk_darwin(v88);
  v365 = &v346 - v91;
  v92 = __chkstk_darwin(v90);
  v361 = &v346 - v93;
  v94 = __chkstk_darwin(v92);
  v367 = &v346 - v95;
  __chkstk_darwin(v94);
  v363 = &v346 - v96;
  v97 = sub_100058000(&qword_1007721C8);
  v98 = __chkstk_darwin(v97 - 8);
  v390 = &v346 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __chkstk_darwin(v98);
  v102 = &v346 - v101;
  __chkstk_darwin(v100);
  v404 = &v346 - v103;
  v104 = sub_100058000(&qword_1007721D0);
  v105 = __chkstk_darwin(v104 - 8);
  v391 = &v346 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __chkstk_darwin(v105);
  v372 = &v346 - v108;
  v109 = __chkstk_darwin(v107);
  v111 = &v346 - v110;
  __chkstk_darwin(v109);
  v405 = a4;
  v406 = &v346 - v112;
  swift_retain_n();
  v402 = a6;
  v113 = a2;
  v114 = [a2 localDragSession];
  v356 = v18;
  if (v114 && (swift_getObjectType(), Strong = swift_unknownObjectUnownedLoadStrong(), v116 = sub_10039C078(Strong), Strong, swift_unknownObjectRelease(), v116))
  {
    v117 = qword_1007A8808;
    swift_beginAccess();
    v118 = *(v116 + v117);
  }

  else
  {
    v118 = &_swiftEmptySetSingleton;
  }

  v119 = *(v11 + 56);
  v378 = (v11 + 56);
  v119(v406, 1, 1, v403);
  v120 = v404;
  v401 = a3;
  sub_1001C171C(v113, v404);
  v121 = sub_1000AA78C(v407, v118);

  sub_10000794C(v120, v102, &qword_1007721C8);
  v122 = v409;
  v124 = v408 + 48;
  v123 = *(v408 + 48);
  v125 = v123(v102, 2, v409);
  v388 = v124;
  v389 = v123;
  if (!v125)
  {
    v143 = v408;
    v400 = *(v408 + 32);
    v400(v395, v102, v122);
    v144 = *(v401 + qword_100771E88);
    v146 = (v143 + 16);
    v145 = *(v143 + 16);
    v147 = v384;
    v148 = v407;
    v380 = v145;
    v145(v384, v407, v122);
    if (*(v148 + *(sub_100058000(&qword_100772190) + 40)))
    {
      v149 = IndexPath.row.modify();
      if (__OFADD__(*v150, 1))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      ++*v150;
      v149(v410, 0);
    }

    v378 = v146;
    LODWORD(v383) = v121;
    v151 = v377;
    v400(v377, v147, v122);
    v379 = v144;
    sub_1001AF758(v395, v151, 0, 0, v60);
    v152 = (v408 + 8);
    v153 = *(v408 + 8);
    v153(v151, v122);
    v154 = sub_100058000(&unk_1007819B0);
    v155 = *(v154 - 8);
    v156 = *(v155 + 48);
    v376 = (v155 + 48);
    v157 = v156(v60, 1, v154);
    v382 = v152;
    v381 = v153;
    v377 = v156;
    if (v157 == 1)
    {
      sub_1000079B4(v60, &qword_1007721B8);
      LODWORD(v401) = 0;
      LODWORD(v384) = 0;
      LOBYTE(v140) = 0;
      v158 = v397;
      v159 = v398;
      v160 = v396;
      if (v383)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v196 = *&v60[*(v154 + 48)];
      v197 = v393;
      v198 = *(v393 + 48);
      v160 = v396;
      v199 = v397;
      v200 = *(v396 + 32);
      v201 = v364;
      v200(v364, v60, v397);
      *&v201[v198] = v196;
      v202 = *&v201[*(v197 + 48)];
      v203 = v365;
      v200(v365, v201, v199);
      v204 = *(v154 + 48);
      v205 = *(v160 + 16);
      v159 = v398;
      v205(v398, v203, v199);
      v401 = v202;
      *(v159 + v204) = v202;
      swift_storeEnumTagMultiPayload();
      v206 = v405;
      v207 = v402;
      LODWORD(v384) = sub_1000BDD44(v159, v405, v399, v402);
      sub_1000079B4(v159, &unk_10076BD90);
      if (v383)
      {
        (*(v160 + 8))(v203, v199);
        LOBYTE(v140) = 0;
        LODWORD(v401) = 0;
LABEL_46:
        v122 = v409;
LABEL_47:
        v381(v395, v122);
        v142 = v392;
        v261 = v391;
        v262 = v390;
        v263 = v389;
        v141 = v384;
        v139 = v401;
        goto LABEL_59;
      }

      v383 = *(v154 + 48);
      v205(v159, v203, v199);
      *(v159 + v383) = v401;
      swift_storeEnumTagMultiPayload();
      LODWORD(v401) = sub_1000BDD44(v159, v206, v399, v207);
      sub_1000079B4(v159, &unk_10076BD90);
      (*(v160 + 8))(v203, v199);
      v122 = v409;
      v158 = v199;
    }

    v264 = v386;
    v380(v386, v407, v122);
    (*(v408 + 56))(v264, 0, 1, v122);

    v140 = v402;
    v265 = v371;
    sub_1001B2E00(v264, v371);
    sub_1000079B4(v264, &unk_100771B10);
    if (v377(v265, 1, v154) == 1)
    {
      sub_1000079B4(v265, &qword_1007721B8);

      LOBYTE(v140) = 0;
    }

    else
    {
      v266 = *(v265 + *(v154 + 48));
      v267 = v393;
      v268 = *(v393 + 48);
      v269 = *(v160 + 32);
      v407 = v140;
      v140 = v353;
      v269(v353, v265, v158);
      *(v140 + v268) = v266;
      v270 = *(v140 + *(v267 + 48));
      v271 = v352;
      v269(v352, v140, v158);
      v272 = v405;
      v273 = *(v154 + 48);
      (*(v160 + 16))(v159, v271, v158);
      *(v159 + v273) = v270;
      swift_storeEnumTagMultiPayload();
      v274 = v407;
      LOBYTE(v140) = sub_1000BDD44(v159, v272, v399, v407);
      sub_1000079B4(v159, &unk_10076BD90);
      (*(v160 + 8))(v271, v158);
    }

    goto LABEL_46;
  }

  if (v125 != 1)
  {
    v161 = *(v401 + qword_100771E88);

    v384 = v402;
    v162 = sub_1001AACA0();
    v163 = v122;
    v164 = v162;
    v166 = v165;
    v167 = v407;
    v168 = (v408 + 16);
    v169 = v383;
    v395 = *(v408 + 16);
    (v395)(v383, v407, v163);
    v170 = *(v167 + *(sub_100058000(&qword_100772190) + 40));
    if (v170 == 1)
    {
      v171 = IndexPath.row.modify();
      if (__OFADD__(*v172, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      ++*v172;
      v171(v410, 0);
    }

    LODWORD(v373) = v170;
    v377 = v168;
    v174 = v408;
    v173 = v409;
    v175 = v376;
    v400 = *(v408 + 32);
    v371 = v408 + 32;
    v400(v376, v169, v409);
    v176 = *(v174 + 56);
    v383 = v174 + 56;
    v379 = v176;
    (v176)(v175, 0, 1, v173);
    v177 = v375;
    sub_1001AEA30(v164, v166 & 1, v175, v375);

    sub_1000079B4(v175, &unk_100771B10);
    v178 = sub_100058000(&unk_1007819B0);
    v179 = *(v178 - 8);
    v180 = *(v179 + 48);
    v378 = (v179 + 48);
    v181 = v180(v177, 1, v178);
    v376 = v178;
    if (v181 == 1)
    {
      sub_1000079B4(v177, &qword_1007721B8);
      v141 = 0;
    }

    else
    {
      v369 = *&v177[*(v178 + 48)];
      v208 = v393;
      v209 = v180;
      v210 = *(v393 + 48);
      v211 = v396;
      v212 = v397;
      v213 = *(v396 + 32);
      v214 = v161;
      v215 = v366;
      v213(v366, v177, v397);
      *&v215[v210] = v369;
      v180 = v209;
      v216 = *&v215[*(v208 + 48)];
      v217 = v363;
      v218 = v215;
      v161 = v214;
      v178 = v376;
      v213(v363, v218, v212);
      v219 = *(v178 + 48);
      v220 = v398;
      (*(v211 + 16))(v398, v217, v212);
      *(v220 + v219) = v216;
      swift_storeEnumTagMultiPayload();
      v141 = sub_1000BDD44(v220, v405, v399, v384);
      sub_1000079B4(v220, &unk_10076BD90);
      (*(v211 + 8))(v217, v212);
    }

    v221 = v386;
    v222 = v380;
    v223 = v409;
    (v395)(v386, v407, v409);
    (v379)(v221, 0, 1, v223);
    sub_1001B2E00(v221, v222);
    sub_1000079B4(v221, &unk_100771B10);
    v224 = v180(v222, 1, v178);
    v370 = v180;
    if (v224 == 1)
    {
      sub_1000079B4(v222, &qword_1007721B8);
      LODWORD(v140) = 0;
    }

    else
    {
      v225 = *(v222 + *(v178 + 48));
      v386 = v161;
      v226 = v141;
      v227 = v393;
      v228 = *(v393 + 48);
      v229 = v396;
      v230 = *(v396 + 32);
      v140 = v368;
      v231 = v222;
      v232 = v397;
      v230(v368, v231, v397);
      *(v140 + v228) = v225;
      v233 = *(v227 + 48);
      v141 = v226;
      v234 = *(v140 + v233);
      v235 = v367;
      v230(v367, v140, v232);
      v236 = *(v178 + 48);
      v237 = v398;
      (*(v229 + 16))(v398, v235, v232);
      *(v237 + v236) = v234;
      swift_storeEnumTagMultiPayload();
      LODWORD(v140) = sub_1000BDD44(v237, v405, v399, v384);
      sub_1000079B4(v237, &unk_10076BD90);
      (*(v229 + 8))(v235, v232);
    }

    v238 = v382;
    v239 = v381;
    v240 = sub_1001AACA0();
    v242 = v241;
    (v395)(v238, v407, v409);
    if (v373)
    {
      v243 = IndexPath.row.modify();
      if (__OFADD__(*v244, 1))
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      ++*v244;
      v243(v410, 0);
    }

    v245 = v374;
    v246 = v238;
    v247 = v409;
    v400(v374, v246, v409);
    (v379)(v245, 0, 1, v247);
    sub_1001AEA30(v240, v242 & 1, v245, v239);

    sub_1000079B4(v245, &unk_100771B10);
    if (v370(v239, 1, v178) == 1)
    {
      sub_1000079B4(v239, &qword_1007721B8);

      v139 = 0;
    }

    else
    {
      v248 = *&v239[*(v178 + 48)];
      v249 = v393;
      v250 = *(v393 + 48);
      v251 = v396;
      LODWORD(v386) = v140;
      v140 = *(v396 + 32);
      v252 = v141;
      v253 = v362;
      v254 = v397;
      (v140)(v362, v239, v397);
      *&v253[v250] = v248;
      v255 = *&v253[*(v249 + 48)];
      v256 = v361;
      v257 = v253;
      v141 = v252;
      (v140)(v361, v257, v254);
      LOBYTE(v140) = v386;
      v258 = *(v376 + 12);
      v259 = v398;
      (*(v251 + 16))(v398, v256, v254);
      *(v259 + v258) = v255;
      swift_storeEnumTagMultiPayload();
      v260 = v384;
      v139 = sub_1000BDD44(v259, v405, v399, v384);
      sub_1000079B4(v259, &unk_10076BD90);
      (*(v251 + 8))(v256, v254);
    }

    v142 = v392;
    v122 = v409;
    goto LABEL_41;
  }

  LODWORD(v383) = v121;
  v126 = sub_100058000(&qword_100772190);
  v127 = v407;
  v128 = *(v407 + *(v126 + 44));
  v129 = (v408 + 16);
  v130 = v400;
  v395 = *(v408 + 16);
  (v395)(v400, v407, v122);
  LODWORD(v382) = *(v127 + *(v126 + 40));
  if ((v382 & 1) == 0)
  {
    goto LABEL_10;
  }

  v131 = IndexPath.row.modify();
  if (__OFADD__(*v132, 1))
  {
    __break(1u);
    goto LABEL_82;
  }

  ++*v132;
  v131(v410, 0);
LABEL_10:
  v381 = v129;
  v133 = v406;
  sub_1000079B4(v406, &qword_1007721D0);
  v134 = (v408 + 32);
  v135 = *(v408 + 32);
  v136 = v379;
  v135(v379, v130, v122);
  *v111 = v128;
  v137 = v403;
  v138 = &v111[*(v403 + 36)];
  v400 = v135;
  v380 = v134;
  v135(v138, v136, v122);
  v119(v111, 0, 1, v137);
  sub_100016588(v111, v133, &qword_1007721D0);
  if (v383)
  {
    v139 = 0;
    LOBYTE(v140) = 0;
    v141 = 0;
    v142 = v392;
LABEL_41:
    v261 = v391;
    v262 = v390;
    v263 = v389;
    goto LABEL_59;
  }

  v182 = *(v401 + qword_100771E88);

  v383 = v402;
  v183 = sub_1001AACA0();
  v185 = v184;
  v186 = v370;
  (v395)(v370, v407, v122);
  v187 = v373;
  v188 = v369;
  if (!v382)
  {
    goto LABEL_26;
  }

  v189 = IndexPath.row.modify();
  if (__OFADD__(*v190, 1))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  ++*v190;
  v189(v410, 0);
LABEL_26:
  v191 = v360;
  v400(v360, v186, v122);
  v192 = (v408 + 56);
  v379 = *(v408 + 56);
  (v379)(v191, 0, 1, v122);
  sub_1001AEA30(v183, v185 & 1, v191, v188);

  sub_1000079B4(v191, &unk_100771B10);
  v193 = sub_100058000(&unk_1007819B0);
  v194 = *(v193 - 8);
  v378 = *(v194 + 48);
  v377 = (v194 + 48);
  v195 = v378(v188, 1, v193);
  v376 = v192;
  if (v195 == 1)
  {
    sub_1000079B4(v188, &qword_1007721B8);
    LODWORD(v384) = 0;
  }

  else
  {
    v275 = *&v188[*(v193 + 48)];
    v276 = v393;
    v277 = *(v393 + 48);
    v375 = v182;
    v279 = v396;
    v278 = v397;
    v280 = *(v396 + 32);
    v281 = v349;
    v280(v349, v188, v397);
    *&v281[v277] = v275;
    v122 = v409;
    v282 = *&v281[*(v276 + 48)];
    v283 = v348;
    v284 = v281;
    v285 = v383;
    v280(v348, v284, v278);
    v286 = *(v193 + 48);
    v287 = v398;
    (*(v279 + 16))(v398, v283, v278);
    *(v287 + v286) = v282;
    swift_storeEnumTagMultiPayload();
    LODWORD(v384) = sub_1000BDD44(v287, v405, v399, v285);
    v288 = v287;
    v187 = v373;
    sub_1000079B4(v288, &unk_10076BD90);
    (*(v279 + 8))(v283, v278);
  }

  v289 = v386;
  (v395)(v386, v407, v122);
  (v379)(v289, 0, 1, v122);
  sub_1001B2E00(v289, v187);
  sub_1000079B4(v289, &unk_100771B10);
  if (v378(v187, 1, v193) == 1)
  {
    sub_1000079B4(v187, &qword_1007721B8);
    LODWORD(v386) = 0;
  }

  else
  {
    v290 = *(v187 + *(v193 + 48));
    v291 = v393;
    v292 = *(v393 + 48);
    v294 = v396;
    v293 = v397;
    v295 = v187;
    v296 = *(v396 + 32);
    v297 = v351;
    v296(v351, v295, v397);
    *&v297[v292] = v290;
    v298 = *&v297[*(v291 + 48)];
    v299 = v350;
    v296(v350, v297, v293);
    v300 = *(v193 + 48);
    v301 = v398;
    (*(v294 + 16))(v398, v299, v293);
    *(v301 + v300) = v298;
    swift_storeEnumTagMultiPayload();
    LODWORD(v386) = sub_1000BDD44(v301, v405, v399, v383);
    sub_1000079B4(v301, &unk_10076BD90);
    (*(v294 + 8))(v299, v293);
  }

  v302 = v359;
  v303 = sub_1001AACA0();
  v305 = v304;
  (v395)(v302, v407, v409);
  if (!v382)
  {
    goto LABEL_55;
  }

  v306 = IndexPath.row.modify();
  if (!__OFADD__(*v307, 1))
  {
    ++*v307;
    v306(v410, 0);
LABEL_55:
    v308 = v358;
    v309 = v409;
    v400(v358, v302, v409);
    (v379)(v308, 0, 1, v309);
    v310 = v305 & 1;
    v311 = v357;
    sub_1001AEA30(v303, v310, v308, v357);

    sub_1000079B4(v308, &unk_100771B10);
    if (v378(v311, 1, v193) == 1)
    {
      sub_1000079B4(v311, &qword_1007721B8);

      v139 = 0;
    }

    else
    {
      v312 = *&v311[*(v193 + 48)];
      v313 = v393;
      v314 = *(v393 + 48);
      v315 = v396;
      v316 = *(v396 + 32);
      v317 = v347;
      v318 = v311;
      v319 = v397;
      v316(v347, v318, v397);
      *&v317[v314] = v312;
      v320 = *&v317[*(v313 + 48)];
      v321 = v346;
      v316(v346, v317, v319);
      v322 = *(v193 + 48);
      v323 = v398;
      (*(v315 + 16))(v398, v321, v319);
      *(v323 + v322) = v320;
      swift_storeEnumTagMultiPayload();
      v324 = v383;
      v139 = sub_1000BDD44(v323, v405, v399, v383);
      sub_1000079B4(v323, &unk_10076BD90);
      (*(v315 + 8))(v321, v319);
    }

    v142 = v392;
    v122 = v409;
    v261 = v391;
    v262 = v390;
    v263 = v389;
    v141 = v384;
    LOBYTE(v140) = v386;
LABEL_59:
    sub_100016588(v404, v262, &qword_1007721C8);
    v325 = v263(v262, 2, v122);
    if (v325)
    {
      if (v325 != 1)
      {
        v326 = 2;
        v327 = v402;
        if ((v141 & 1) == 0)
        {
LABEL_62:
          sub_1000079B4(v406, &qword_1007721D0);
          v328 = sub_100058000(&qword_100780DC0);
          v329 = *(*(v328 - 8) + 56);
          if ((v140 & 1) == 0)
          {
            v329(v142, 1, 4, v328);
            if (v139)
            {
              v326 = 2;
            }

            else
            {
              v326 = 1;
            }

            goto LABEL_78;
          }

          v330 = v142;
          v331 = 3;
          goto LABEL_77;
        }

LABEL_66:
        v332 = (v385 + 48);
        if (v140)
        {
          v333 = v372;
          sub_100016588(v406, v372, &qword_1007721D0);
          v334 = v403;
          if ((*v332)(v333, 1, v403) == 1)
          {
            sub_1000079B4(v333, &qword_1007721D0);
            v335 = sub_100058000(&qword_100780DC0);
            (*(*(v335 - 8) + 56))(v142, 4, 4, v335);
          }

          else
          {
            v338 = v355;
            sub_100016588(v333, v355, &unk_1007721A8);
            if (*v338)
            {
              sub_1000079B4(v338, &unk_1007721A8);
              v339 = 3;
              v340 = v356;
            }

            else
            {
              v344 = &v338[*(v334 + 36)];
              v340 = v356;
              v400(v356, v344, v122);
              v339 = 0;
            }

            v345 = sub_100058000(&qword_100780DC0);
            (*(*(v345 - 8) + 56))(v340, v339, 4, v345);
            sub_1001C4264(v340, v142);
          }

          goto LABEL_78;
        }

        sub_100016588(v406, v261, &qword_1007721D0);
        v336 = v403;
        if ((*v332)(v261, 1, v403) == 1)
        {
          sub_1000079B4(v261, &qword_1007721D0);
          v337 = sub_100058000(&qword_100780DC0);
          (*(*(v337 - 8) + 56))(v142, 2, 4, v337);
LABEL_78:
          v342 = v387;
          v343 = type metadata accessor for TTRITreeViewDropProposal(0);
          sub_1001C4264(v142, v342 + *(v343 + 20));

          *v342 = v326;

          return;
        }

        v341 = v354;
        sub_100016588(v261, v354, &unk_1007721A8);
        v400(v142, (v341 + *(v336 + 36)), v122);
        v328 = sub_100058000(&qword_100780DC0);
        v329 = *(*(v328 - 8) + 56);
        v330 = v142;
        v331 = 0;
LABEL_77:
        v329(v330, v331, 4, v328);
        goto LABEL_78;
      }
    }

    else
    {
      sub_1000079B4(v262, &qword_1007721C8);
    }

    v326 = 3;
    v327 = v402;
    if ((v141 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

LABEL_86:
  __break(1u);
}

void sub_1001BCD34(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v416 = a1;
  v397 = a6;
  v411 = sub_100058000(&qword_100772100);
  v395 = *(v411 - 8);
  v415 = v395;
  __chkstk_darwin(v411);
  v366 = &v357 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v367 = &v357 - v12;
  v13 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v357 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v402 = &v357 - v17;
  v407 = sub_100058000(&qword_100772108);
  __chkstk_darwin(v407);
  v406 = &v357 - v18;
  v19 = type metadata accessor for IndexPath();
  v417 = *(v19 - 8);
  v418 = v19;
  __chkstk_darwin(v19);
  v371 = &v357 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v382 = (&v357 - v22);
  __chkstk_darwin(v23);
  v409 = (&v357 - v24);
  __chkstk_darwin(v25);
  v389 = (&v357 - v26);
  __chkstk_darwin(v27);
  v394 = &v357 - v28;
  __chkstk_darwin(v29);
  v388 = &v357 - v30;
  __chkstk_darwin(v31);
  v408 = &v357 - v32;
  __chkstk_darwin(v33);
  v392 = (&v357 - v34);
  __chkstk_darwin(v35);
  v393 = &v357 - v36;
  v37 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v37 - 8);
  v370 = &v357 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v373 = &v357 - v40;
  __chkstk_darwin(v41);
  v386 = &v357 - v42;
  __chkstk_darwin(v43);
  v396 = &v357 - v44;
  __chkstk_darwin(v45);
  v47 = &v357 - v46;
  v48 = sub_100058000(&unk_100772110);
  __chkstk_darwin(v48 - 8);
  v369 = &v357 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v385 = (&v357 - v51);
  __chkstk_darwin(v52);
  v372 = &v357 - v53;
  __chkstk_darwin(v54);
  v383 = &v357 - v55;
  __chkstk_darwin(v56);
  v58 = &v357 - v57;
  __chkstk_darwin(v59);
  v391 = (&v357 - v60);
  __chkstk_darwin(v61);
  v390 = (&v357 - v62);
  __chkstk_darwin(v63);
  v387 = &v357 - v64;
  v403 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v403);
  v359 = &v357 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v363 = &v357 - v67;
  __chkstk_darwin(v68);
  v361 = &v357 - v69;
  __chkstk_darwin(v70);
  v365 = &v357 - v71;
  __chkstk_darwin(v72);
  v377 = &v357 - v73;
  __chkstk_darwin(v74);
  v375 = &v357 - v75;
  __chkstk_darwin(v76);
  v381 = &v357 - v77;
  __chkstk_darwin(v78);
  v379 = &v357 - v79;
  v405 = type metadata accessor for TTRRemindersListViewModel.Item();
  v404 = *(v405 - 8);
  __chkstk_darwin(v405);
  v358 = &v357 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v362 = &v357 - v82;
  __chkstk_darwin(v83);
  v360 = &v357 - v84;
  __chkstk_darwin(v85);
  v364 = &v357 - v86;
  __chkstk_darwin(v87);
  v378 = &v357 - v88;
  __chkstk_darwin(v89);
  v374 = &v357 - v90;
  __chkstk_darwin(v91);
  v380 = &v357 - v92;
  __chkstk_darwin(v93);
  v376 = &v357 - v94;
  v95 = sub_100058000(&qword_100772120);
  __chkstk_darwin(v95 - 8);
  v400 = &v357 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v99 = &v357 - v98;
  __chkstk_darwin(v100);
  v413 = &v357 - v101;
  v102 = sub_100058000(&qword_100772128);
  __chkstk_darwin(v102 - 8);
  v401 = &v357 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104);
  v384 = &v357 - v105;
  __chkstk_darwin(v106);
  v108 = &v357 - v107;
  __chkstk_darwin(v109);
  v414 = &v357 - v110;
  v412 = a4;
  swift_retain_n();
  v410 = a5;
  v111 = a2;
  v112 = [a2 localDragSession];
  v368 = v15;
  if (v112)
  {
    swift_getObjectType();
    v113 = a3;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v115 = sub_10039C078(Strong);

    swift_unknownObjectRelease();
    if (v115)
    {
      v116 = qword_1007A8808;
      swift_beginAccess();
      v117 = *(v115 + v116);

      goto LABEL_6;
    }
  }

  else
  {
    v113 = a3;
  }

  v117 = &_swiftEmptySetSingleton;
LABEL_6:
  v118 = *(v415 + 56);
  v415 += 56;
  v118(v414, 1, 1, v411);
  v119 = v413;
  sub_1001C171C(v111, v413);
  v120 = sub_1000AA78C(v416, v117);

  sub_10000794C(v119, v99, &qword_100772120);
  v121 = v418;
  v122 = v417 + 48;
  v398 = *(v417 + 48);
  v123 = v398(v99, 2, v418);
  v399 = v122;
  if (!v123)
  {
    v140 = v417;
    v409 = *(v417 + 32);
    v409(v408, v99, v121);
    v141 = *(v113 + qword_100771E88);
    v143 = *(v140 + 16);
    v142 = (v140 + 16);
    v144 = v394;
    v145 = v416;
    v392 = v143;
    v143(v394, v416, v121);
    if (*(v145 + *(sub_100058000(&qword_1007720C8) + 40)))
    {
      v146 = IndexPath.row.modify();
      if (__OFADD__(*v147, 1))
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      ++*v147;
      v146(v420, 0);
    }

    LODWORD(v393) = v120;
    v148 = v388;
    v409(v388, v144, v121);
    v390 = v141;
    sub_1001B0CF8(v408, v148, 0, 0, v58);
    v150 = (v417 + 8);
    v149 = *(v417 + 8);
    v149(v148, v121);
    v151 = sub_100058000(&unk_100772130);
    v152 = *(v151 - 8);
    v153 = *(v152 + 48);
    v154 = (v152 + 48);
    v155 = v153(v58, 1, v151);
    v389 = v153;
    v388 = v154;
    if (v155 == 1)
    {
      sub_1000079B4(v58, &unk_100772110);
      LODWORD(v394) = 0;
      LODWORD(v139) = 0;
      v138 = 0;
      v156 = v412;
      if (v393)
      {
LABEL_46:
        v149(v408, v121);
        goto LABEL_47;
      }
    }

    else
    {
      v386 = v142;
      v391 = v149;
      v387 = v150;
      v195 = *&v58[*(v151 + 48)];
      v196 = v403;
      v197 = *(v403 + 48);
      v198 = v404;
      v199 = *(v404 + 32);
      v200 = v377;
      v201 = v405;
      v199(v377, v58, v405);
      *&v200[v197] = v195;
      v202 = *&v200[*(v196 + 48)];
      v203 = v378;
      v199(v378, v200, v201);
      v204 = *(v151 + 48);
      v205 = *(v198 + 16);
      v206 = v406;
      v205(v406, v203, v201);
      v394 = v202;
      *&v206[v204] = v202;
      v207 = v201;
      swift_storeEnumTagMultiPayload();
      v208 = v206;
      v156 = v412;
      v209 = v206;
      v139 = v410;
      LODWORD(v415) = sub_1003D146C(v208, v412, v410);
      sub_1000079B4(v209, &qword_100772108);
      if (v393)
      {
        (*(v198 + 8))(v203, v207);
        v138 = 0;
        LODWORD(v394) = 0;
        v121 = v418;
        LOBYTE(v139) = v415;
        v391(v408, v418);
        goto LABEL_47;
      }

      v393 = *(v151 + 48);
      v205(v209, v203, v207);
      *(v209 + v393) = v394;
      swift_storeEnumTagMultiPayload();
      LODWORD(v394) = sub_1003D146C(v209, v156, v139);
      sub_1000079B4(v209, &qword_100772108);
      (*(v198 + 8))(v203, v207);
      v121 = v418;
      LODWORD(v139) = v415;
      v149 = v391;
    }

    v267 = v396;
    v392(v396, v416, v121);
    (*(v417 + 56))(v267, 0, 1, v121);

    v268 = v410;
    v269 = v383;
    sub_1001B33C4(v267, v383);
    sub_1000079B4(v267, &unk_100771B10);
    if (v389(v269, 1, v151) == 1)
    {
      sub_1000079B4(v269, &unk_100772110);

      v138 = 0;
    }

    else
    {
      v270 = v269;
      v412 = *(v269 + *(v151 + 48));
      v391 = v149;
      v271 = v403;
      v272 = *(v403 + 48);
      v416 = v268;
      v273 = v404;
      LODWORD(v415) = v139;
      v139 = *(v404 + 32);
      v274 = v365;
      v275 = v405;
      (v139)(v365, v270, v405);
      *&v274[v272] = v412;
      v276 = *&v274[*(v271 + 48)];
      v277 = v364;
      (v139)(v364, v274, v275);
      LOBYTE(v139) = v415;
      v278 = *(v151 + 48);
      v279 = v406;
      (*(v273 + 16))(v406, v277, v275);
      *(v279 + v278) = v276;
      swift_storeEnumTagMultiPayload();
      v280 = v416;
      v138 = sub_1003D146C(v279, v156, v416);
      sub_1000079B4(v279, &qword_100772108);
      v281 = v277;
      v149 = v391;
      (*(v273 + 8))(v281, v275);
    }

    v121 = v418;
    goto LABEL_46;
  }

  if (v123 != 1)
  {
    v157 = *(v113 + qword_100771E88);

    v389 = v410;
    v408 = v113;
    v158 = sub_1001AB458();
    v159 = v121;
    v160 = v158;
    v162 = v161;
    v163 = v416;
    v165 = (v417 + 16);
    v164 = *(v417 + 16);
    v166 = v393;
    v164(v393, v416, v159);
    v167 = *(v163 + *(sub_100058000(&qword_1007720C8) + 40));
    if (v167 == 1)
    {
      v168 = IndexPath.row.modify();
      if (__OFADD__(*v169, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      ++*v169;
      v168(v420, 0);
    }

    LODWORD(v378) = v167;
    v385 = v164;
    v171 = v417;
    v170 = v418;
    v409 = *(v417 + 32);
    v377 = (v417 + 32);
    v409(v47, v166, v418);
    v172 = *(v171 + 56);
    v394 = (v171 + 56);
    v393 = v172;
    v172(v47, 0, 1, v170);
    v173 = v387;
    sub_1001AF0C4(v160, v162 & 1, v47, v387);

    sub_1000079B4(v47, &unk_100771B10);
    v174 = sub_100058000(&unk_100772130);
    v175 = *(v174 - 8);
    v176 = *(v175 + 48);
    v388 = (v175 + 48);
    v177 = v176(v173, 1, v174);
    v383 = v157;
    v382 = v176;
    if (v177 == 1)
    {
      sub_1000079B4(v173, &unk_100772110);
      v178 = 0;
    }

    else
    {
      v210 = *&v173[*(v174 + 48)];
      v211 = v403;
      v212 = *(v403 + 48);
      v213 = v404;
      v214 = v165;
      v215 = v174;
      v216 = *(v404 + 32);
      v217 = v379;
      v218 = v173;
      v219 = v405;
      v216(v379, v218, v405);
      *&v217[v212] = v210;
      v220 = *&v217[*(v211 + 48)];
      v221 = v376;
      v216(v376, v217, v219);
      v174 = v215;
      v165 = v214;
      v222 = *(v174 + 48);
      v223 = v406;
      (*(v213 + 16))(v406, v221, v219);
      *(v223 + v222) = v220;
      swift_storeEnumTagMultiPayload();
      v178 = sub_1003D146C(v223, v412, v389);
      sub_1000079B4(v223, &qword_100772108);
      v224 = v221;
      v176 = v382;
      (*(v213 + 8))(v224, v219);
    }

    v225 = v396;
    v226 = v390;
    v227 = v418;
    v228 = v385;
    v385(v396, v416, v418);
    (v393)(v225, 0, 1, v227);
    sub_1001B33C4(v225, v226);
    sub_1000079B4(v225, &unk_100771B10);
    v229 = v176(v226, 1, v174);
    LODWORD(v415) = v178;
    if (v229 == 1)
    {
      sub_1000079B4(v226, &unk_100772110);
      LODWORD(v396) = 0;
    }

    else
    {
      v230 = *(v226 + *(v174 + 48));
      v390 = v165;
      v231 = v403;
      v232 = *(v403 + 48);
      v233 = v404;
      v234 = *(v404 + 32);
      v235 = v381;
      v236 = v405;
      v234(v381, v226, v405);
      *&v235[v232] = v230;
      v237 = *(v231 + 48);
      v238 = v389;
      v239 = *&v235[v237];
      v240 = v380;
      v241 = v235;
      v228 = v385;
      v234(v380, v241, v236);
      v242 = *(v174 + 48);
      v243 = v406;
      (*(v233 + 16))(v406, v240, v236);
      *(v243 + v242) = v239;
      swift_storeEnumTagMultiPayload();
      LODWORD(v396) = sub_1003D146C(v243, v412, v238);
      sub_1000079B4(v243, &qword_100772108);
      (*(v233 + 8))(v240, v236);
    }

    v244 = v392;
    v245 = v391;
    v246 = sub_1001AB458();
    v248 = v247;
    v228(v244, v416, v418);
    if (v378)
    {
      v249 = IndexPath.row.modify();
      if (__OFADD__(*v250, 1))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      ++*v250;
      v249(v420, 0);
    }

    v251 = v386;
    v252 = v244;
    v253 = v418;
    v409(v386, v252, v418);
    (v393)(v251, 0, 1, v253);
    sub_1001AF0C4(v246, v248 & 1, v251, v245);

    sub_1000079B4(v251, &unk_100771B10);
    if (v382(v245, 1, v174) == 1)
    {
      sub_1000079B4(v245, &unk_100772110);

      v254 = &v419;
LABEL_57:

      LODWORD(v394) = 0;
LABEL_60:
      v282 = v402;
      v121 = v418;
      v283 = v401;
      v284 = v400;
      v285 = v398;
      LOBYTE(v139) = v415;
      v138 = v396;
LABEL_61:
      sub_100016588(v413, v284, &qword_100772120);
      v336 = v285(v284, 2, v121);
      if (v336)
      {
        if (v336 != 1)
        {
          v337 = 2;
          v338 = v410;
          if ((v139 & 1) == 0)
          {
LABEL_64:
            sub_1000079B4(v414, &qword_100772128);
            v339 = sub_100058000(&qword_100780DC0);
            v340 = *(*(v339 - 8) + 56);
            if ((v138 & 1) == 0)
            {
              v340(v282, 1, 4, v339);
              if (v394)
              {
                v337 = 2;
              }

              else
              {
                v337 = 1;
              }

              goto LABEL_80;
            }

            v341 = v282;
            v342 = 3;
            goto LABEL_79;
          }

LABEL_68:
          v343 = (v395 + 48);
          if (v138)
          {
            v344 = v384;
            sub_100016588(v414, v384, &qword_100772128);
            v345 = v411;
            if ((*v343)(v344, 1, v411) == 1)
            {
              sub_1000079B4(v344, &qword_100772128);
              v346 = sub_100058000(&qword_100780DC0);
              (*(*(v346 - 8) + 56))(v282, 4, 4, v346);
            }

            else
            {
              v349 = v367;
              sub_100016588(v344, v367, &qword_100772100);
              if (*v349)
              {
                sub_1000079B4(v349, &qword_100772100);
                v350 = 3;
                v351 = v368;
              }

              else
              {
                v355 = &v349[*(v345 + 36)];
                v351 = v368;
                v409(v368, v355, v121);
                v350 = 0;
              }

              v356 = sub_100058000(&qword_100780DC0);
              (*(*(v356 - 8) + 56))(v351, v350, 4, v356);
              sub_1001C4264(v351, v282);
            }

            goto LABEL_80;
          }

          sub_100016588(v414, v283, &qword_100772128);
          v347 = v411;
          if ((*v343)(v283, 1, v411) == 1)
          {
            sub_1000079B4(v283, &qword_100772128);
            v348 = sub_100058000(&qword_100780DC0);
            (*(*(v348 - 8) + 56))(v282, 2, 4, v348);
LABEL_80:
            v353 = v397;
            v354 = type metadata accessor for TTRITreeViewDropProposal(0);
            sub_1001C4264(v282, v353 + *(v354 + 20));

            *v353 = v337;

            return;
          }

          v352 = v366;
          sub_100016588(v283, v366, &qword_100772100);
          v409(v282, (v352 + *(v347 + 36)), v121);
          v339 = sub_100058000(&qword_100780DC0);
          v340 = *(*(v339 - 8) + 56);
          v341 = v282;
          v342 = 0;
LABEL_79:
          v340(v341, v342, 4, v339);
          goto LABEL_80;
        }
      }

      else
      {
        sub_1000079B4(v284, &qword_100772120);
      }

      v337 = 3;
      v338 = v410;
      if ((v139 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }

    v255 = *&v245[*(v174 + 48)];
    v256 = v403;
    v257 = *(v403 + 48);
    v258 = v404;
    v259 = *(v404 + 32);
    v260 = v375;
    v261 = v405;
    v259(v375, v245, v405);
    *&v260[v257] = v255;
    v262 = *&v260[*(v256 + 48)];
    v263 = v374;
    v259(v374, v260, v261);
    v264 = *(v174 + 48);
    v265 = v406;
    (*(v258 + 16))(v406, v263, v261);
    *(v265 + v264) = v262;
    swift_storeEnumTagMultiPayload();
    v266 = v389;
    LODWORD(v394) = sub_1003D146C(v265, v412, v389);
    sub_1000079B4(v265, &qword_100772108);
    (*(v258 + 8))(v263, v261);
LABEL_59:

    goto LABEL_60;
  }

  LODWORD(v393) = v120;
  v124 = sub_100058000(&qword_1007720C8);
  v125 = v416;
  v126 = *(v416 + *(v124 + 44));
  v127 = *(v417 + 16);
  v128 = v409;
  v394 = (v417 + 16);
  v127(v409, v416, v121);
  LODWORD(v392) = *(v125 + *(v124 + 40));
  if ((v392 & 1) == 0)
  {
    goto LABEL_11;
  }

  v129 = IndexPath.row.modify();
  if (__OFADD__(*v130, 1))
  {
    __break(1u);
    goto LABEL_84;
  }

  ++*v130;
  v129(v420, 0);
LABEL_11:
  v390 = v127;
  v131 = v414;
  sub_1000079B4(v414, &qword_100772128);
  v132 = (v417 + 32);
  v133 = *(v417 + 32);
  v134 = v128;
  v135 = v389;
  v133(v389, v134, v121);
  *v108 = v126;
  v136 = v411;
  v137 = &v108[*(v411 + 36)];
  v409 = v133;
  v391 = v132;
  v133(v137, v135, v121);
  v118(v108, 0, 1, v136);
  sub_100016588(v108, v131, &qword_100772128);
  if (v393)
  {
    v138 = 0;
    LODWORD(v394) = 0;
    LOBYTE(v139) = 0;
LABEL_47:
    v282 = v402;
    v283 = v401;
    v284 = v400;
    v285 = v398;
    goto LABEL_61;
  }

  v179 = *(v113 + qword_100771E88);

  v393 = v410;
  v408 = v113;
  v180 = sub_1001AB458();
  v182 = v181;
  v183 = v382;
  v184 = v390;
  v390(v382, v416, v121);
  v185 = v385;
  if (!v392)
  {
    goto LABEL_27;
  }

  v186 = IndexPath.row.modify();
  if (__OFADD__(*v187, 1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  ++*v187;
  v186(v420, 0);
LABEL_27:
  v188 = v373;
  v409(v373, v183, v121);
  v189 = *(v417 + 56);
  v389 = (v417 + 56);
  v388 = v189;
  (v189)(v188, 0, 1, v121);
  v190 = v372;
  sub_1001AF0C4(v180, v182 & 1, v188, v372);

  sub_1000079B4(v188, &unk_100771B10);
  v191 = sub_100058000(&unk_100772130);
  v192 = *(v191 - 8);
  v387 = *(v192 + 48);
  v386 = (v192 + 48);
  v193 = (v387)(v190, 1, v191);
  v383 = v179;
  if (v193 == 1)
  {
    sub_1000079B4(v190, &unk_100772110);
    v194 = 0;
  }

  else
  {
    v286 = *&v190[*(v191 + 48)];
    v287 = v403;
    v288 = *(v403 + 48);
    v289 = v404;
    v290 = v190;
    v291 = *(v404 + 32);
    v292 = v361;
    v293 = v405;
    v291(v361, v290, v405);
    *&v292[v288] = v286;
    v121 = v418;
    v294 = *&v292[*(v287 + 48)];
    v295 = v360;
    v291(v360, v292, v293);
    v296 = *(v191 + 48);
    v297 = v406;
    (*(v289 + 16))(v406, v295, v293);
    *(v297 + v296) = v294;
    swift_storeEnumTagMultiPayload();
    v194 = sub_1003D146C(v297, v412, v393);
    v298 = v297;
    v185 = v385;
    sub_1000079B4(v298, &qword_100772108);
    v299 = v295;
    v184 = v390;
    (*(v289 + 8))(v299, v293);
  }

  v300 = v396;
  v184(v396, v416, v121);
  (v388)(v300, 0, 1, v121);
  sub_1001B33C4(v300, v185);
  sub_1000079B4(v300, &unk_100771B10);
  v301 = (v387)(v185, 1, v191);
  LODWORD(v415) = v194;
  if (v301 == 1)
  {
    sub_1000079B4(v185, &unk_100772110);
    LODWORD(v396) = 0;
  }

  else
  {
    v302 = *(v185 + *(v191 + 48));
    v303 = v403;
    v304 = *(v403 + 48);
    v305 = v404;
    v306 = v185;
    v307 = *(v404 + 32);
    v308 = v363;
    v309 = v405;
    v307(v363, v306, v405);
    *&v308[v304] = v302;
    v310 = *&v308[*(v303 + 48)];
    v311 = v362;
    v307(v362, v308, v309);
    v312 = *(v191 + 48);
    v313 = v406;
    (*(v305 + 16))(v406, v311, v309);
    *(v313 + v312) = v310;
    swift_storeEnumTagMultiPayload();
    LODWORD(v396) = sub_1003D146C(v313, v412, v393);
    sub_1000079B4(v313, &qword_100772108);
    (*(v305 + 8))(v311, v309);
  }

  v314 = v371;
  v315 = sub_1001AB458();
  v317 = v316;
  v184(v314, v416, v418);
  if (!v392)
  {
    goto LABEL_55;
  }

  v318 = IndexPath.row.modify();
  if (!__OFADD__(*v319, 1))
  {
    ++*v319;
    v318(v420, 0);
LABEL_55:
    v320 = v370;
    v321 = v418;
    v409(v370, v314, v418);
    (v388)(v320, 0, 1, v321);
    v322 = v317 & 1;
    v323 = v369;
    sub_1001AF0C4(v315, v322, v320, v369);

    sub_1000079B4(v320, &unk_100771B10);
    if ((v387)(v323, 1, v191) == 1)
    {
      sub_1000079B4(v323, &unk_100772110);

      v254 = &v421;
      goto LABEL_57;
    }

    v324 = *&v323[*(v191 + 48)];
    v325 = v403;
    v326 = *(v403 + 48);
    v327 = v404;
    v328 = *(v404 + 32);
    v329 = v359;
    v330 = v323;
    v331 = v405;
    v328(v359, v330, v405);
    *&v329[v326] = v324;
    v332 = *&v329[*(v325 + 48)];
    v333 = v358;
    v328(v358, v329, v331);
    v334 = *(v191 + 48);
    v335 = v406;
    (*(v327 + 16))(v406, v333, v331);
    *(v335 + v334) = v332;
    swift_storeEnumTagMultiPayload();
    v266 = v393;
    LODWORD(v394) = sub_1003D146C(v335, v412, v393);
    sub_1000079B4(v335, &qword_100772108);
    (*(v327 + 8))(v333, v331);
    goto LABEL_59;
  }

LABEL_88:
  __break(1u);
}

uint64_t sub_1001BF42C(uint64_t a1)
{
  v3 = qword_1007A8498;
  swift_beginAccess();
  sub_1001C43F8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001BF48C()
{
  v1 = type metadata accessor for TTRITreeViewDropProposal(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - v9;
  (*(*(updated - 8) + 56))(&v16 - v9, 1, 1, updated, v8);
  v11 = *(*v0 + 120);
  swift_beginAccess();
  (*(v7 + 40))(v0 + v11, v10, v6);
  swift_endAccess();
  v12 = *(v2 + 28);
  v13 = sub_100058000(&qword_100780DC0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 4, v13);
  *v4 = 0;
  v14 = qword_1007A8498;
  swift_beginAccess();
  sub_100100648(v4, v0 + v14);
  return swift_endAccess();
}

id sub_1001BF6C8()
{
  v1 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v41[-v2];
  v4 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRITreeViewDropProposal(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = qword_1007A8498;
  swift_beginAccess();
  sub_1001C4200(v0 + v15, v10);
  sub_1001C4264(&v10[*(v8 + 28)], v6);
  v16 = sub_100058000(&qword_100780DC0);
  if ((*(*(v16 - 8) + 48))(v6, 4, v16))
  {
    sub_1001C445C(v6, type metadata accessor for TTRITreeViewDropProposal.Intent);
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v6, v11);
  if (*(v0 + v15) != 3)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_7;
  }

  v17 = v0 + qword_1007A84A0;
  swift_beginAccess();
  v18 = sub_100058000(qword_100771F18);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    (*(v12 + 8))(v14, v11);
    swift_endAccess();
    goto LABEL_7;
  }

  v20 = *(v17 + 8);
  swift_endAccess();
  type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
  v21 = v20;
  v22 = v0;
  static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
  v24 = v23;
  v25 = v0;
  v26 = sub_1001ABC10();
  v28 = v27;
  (*(v12 + 16))(v3, v14, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_10019EE90(v26, v28 & 1, v3, v42, v24);

  sub_1000079B4(v3, &unk_100771B10);
  if (v43)
  {
    (*(v12 + 8))(v14, v11);

    v0 = v22;
LABEL_7:
    result = *(v0 + *(*v0 + 128));
    if (result)
    {
      return [result removeFromSuperview];
    }

    return result;
  }

  v29 = *v42;
  v30 = *&v42[1];
  v31 = *&v42[2];
  v32 = *&v42[3];
  v33 = *(*v22 + 128);
  v34 = *(v22 + v33);
  if (v34)
  {
    v35 = *(v25 + v33);
  }

  else
  {
    v35 = sub_1001BFBDC(v22);
  }

  v36 = v35;
  v37 = v34;
  v38 = [v36 superview];
  v39 = &selRef_addSubview_;
  if (v38)
  {
    v40 = v38;

    if (v40 == v21)
    {
      v39 = &selRef_bringSubviewToFront_;
    }
  }

  [v21 *v39];
  [v36 setFrame:{v29, v30, v31, v32}];

  return (*(v12 + 8))(v14, v11);
}

id sub_1001BFBDC(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = *(*a1 + 128);
  v4 = *(a1 + v3);
  *(a1 + v3) = v2;
  v5 = v2;

  return v5;
}

id sub_1001BFC50()
{
  result = *(v0 + *(*v0 + 128));
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

Swift::Int sub_1001BFCB4(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1001BFCFC(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v2 = type metadata accessor for IndexPath();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v59 = &v56 - v5;
  v60 = sub_100058000(&unk_1007720B0);
  __chkstk_darwin(v60);
  v61 = &v56 - v6;
  v64 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v58 = *(v64 - 8);
  v7 = __chkstk_darwin(v64);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = sub_100058000(&qword_100772190);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = sub_100058000(&unk_10076BA80);
  v16 = __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v56 - v19;
  v20 = sub_100058000(&qword_100772200);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v56 - v22;
  v24 = *(v21 + 56);
  sub_10000794C(v66, &v56 - v22, &unk_10076BA80);
  sub_10000794C(v67, &v23[v24], &unk_10076BA80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_10000794C(v23, v18, &unk_10076BA80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v61;
      v27 = *(v60 + 48);
      sub_100016588(v18, v61, &unk_100771B10);
      sub_100016588(&v23[v24], v26 + v27, &unk_100771B10);
      v29 = v62;
      v28 = v63;
      v30 = *(v62 + 48);
      if (v30(v26, 1, v63) == 1)
      {
        if (v30(v26 + v27, 1, v28) == 1)
        {
          sub_1000079B4(v26, &unk_100771B10);
LABEL_10:
          sub_1000079B4(v23, &unk_10076BA80);
          return 1;
        }
      }

      else
      {
        v48 = v59;
        sub_10000794C(v26, v59, &unk_100771B10);
        if (v30(v26 + v27, 1, v28) != 1)
        {
          v49 = v26 + v27;
          v50 = v57;
          (*(v29 + 32))(v57, v49, v28);
          sub_1001C44BC(&unk_100772710, &type metadata accessor for IndexPath);
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          v52 = *(v29 + 8);
          v52(v50, v28);
          v52(v48, v28);
          sub_1000079B4(v26, &unk_100771B10);
          if (v51)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }

        (*(v29 + 8))(v48, v28);
      }

      v47 = &unk_1007720B0;
      v46 = v26;
      goto LABEL_21;
    }

    v34 = &unk_100771B10;
    v35 = v18;
  }

  else
  {
    v31 = v14;
    v32 = v64;
    v33 = v65;
    sub_10000794C(v23, v65, &unk_10076BA80);
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = &v23[v24];
      v39 = v31;
      sub_100016588(v38, v31, &qword_100772190);
      if (static IndexPath.== infix(_:_:)())
      {
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v40 = v9;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        sub_1001C44BC(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v41 = v12;
        v42 = v32;
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v58 + 8);
        v45 = v40;
        v39 = v31;
        v44(v45, v42);
        v33 = v65;
        v44(v11, v42);
        if ((v43 & 1) != 0 && *(v33 + *(v41 + 40)) == *(v31 + *(v41 + 40)))
        {
          v53 = *(v41 + 44);
          v54 = *(v33 + v53);
          v55 = *(v31 + v53);
          sub_1000079B4(v31, &qword_100772190);
          sub_1000079B4(v33, &qword_100772190);
          if (v54 == v55)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }
      }

      sub_1000079B4(v39, &qword_100772190);
      v46 = v33;
      v47 = &qword_100772190;
LABEL_21:
      sub_1000079B4(v46, v47);
LABEL_22:
      v37 = &unk_10076BA80;
      goto LABEL_23;
    }

    v34 = &qword_100772190;
    v35 = v33;
  }

  sub_1000079B4(v35, v34);
LABEL_13:
  v37 = &qword_100772200;
LABEL_23:
  sub_1000079B4(v23, v37);
  return 0;
}

uint64_t sub_1001C04A8(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v2 = type metadata accessor for IndexPath();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v59 = &v56 - v5;
  v60 = sub_100058000(&unk_1007720B0);
  __chkstk_darwin(v60);
  v61 = &v56 - v6;
  v64 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v58 = *(v64 - 8);
  __chkstk_darwin(v64);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_100058000(&qword_1007720C8);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = sub_100058000(&unk_1007720E0);
  __chkstk_darwin(v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v65 = &v56 - v19;
  v20 = sub_100058000(&unk_1007720F0);
  __chkstk_darwin(v20 - 8);
  v22 = &v56 - v21;
  v24 = *(v23 + 56);
  sub_10000794C(v66, &v56 - v21, &unk_1007720E0);
  sub_10000794C(v67, &v22[v24], &unk_1007720E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_10000794C(v22, v17, &unk_1007720E0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v61;
      v27 = *(v60 + 48);
      sub_100016588(v17, v61, &unk_100771B10);
      sub_100016588(&v22[v24], v26 + v27, &unk_100771B10);
      v29 = v62;
      v28 = v63;
      v30 = *(v62 + 48);
      if (v30(v26, 1, v63) == 1)
      {
        if (v30(v26 + v27, 1, v28) == 1)
        {
          sub_1000079B4(v26, &unk_100771B10);
LABEL_10:
          sub_1000079B4(v22, &unk_1007720E0);
          return 1;
        }
      }

      else
      {
        v48 = v59;
        sub_10000794C(v26, v59, &unk_100771B10);
        if (v30(v26 + v27, 1, v28) != 1)
        {
          v49 = v26 + v27;
          v50 = v57;
          (*(v29 + 32))(v57, v49, v28);
          sub_1001C44BC(&unk_100772710, &type metadata accessor for IndexPath);
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          v52 = *(v29 + 8);
          v52(v50, v28);
          v52(v48, v28);
          sub_1000079B4(v26, &unk_100771B10);
          if (v51)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }

        (*(v29 + 8))(v48, v28);
      }

      v47 = &unk_1007720B0;
      v46 = v26;
      goto LABEL_21;
    }

    v34 = &unk_100771B10;
    v35 = v17;
  }

  else
  {
    v31 = v14;
    v32 = v64;
    v33 = v65;
    sub_10000794C(v22, v65, &unk_1007720E0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = &v22[v24];
      v39 = v31;
      sub_100016588(v38, v31, &qword_1007720C8);
      if (static IndexPath.== infix(_:_:)())
      {
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v40 = v8;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        sub_1001C44BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
        v41 = v12;
        v42 = v32;
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v58 + 8);
        v45 = v40;
        v39 = v31;
        v44(v45, v42);
        v33 = v65;
        v44(v11, v42);
        if ((v43 & 1) != 0 && *(v33 + *(v41 + 40)) == *(v31 + *(v41 + 40)))
        {
          v53 = *(v41 + 44);
          v54 = *(v33 + v53);
          v55 = *(v31 + v53);
          sub_1000079B4(v31, &qword_1007720C8);
          sub_1000079B4(v33, &qword_1007720C8);
          if (v54 == v55)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }
      }

      sub_1000079B4(v39, &qword_1007720C8);
      v46 = v33;
      v47 = &qword_1007720C8;
LABEL_21:
      sub_1000079B4(v46, v47);
LABEL_22:
      v37 = &unk_1007720E0;
      goto LABEL_23;
    }

    v34 = &qword_1007720C8;
    v35 = v33;
  }

  sub_1000079B4(v35, v34);
LABEL_13:
  v37 = &unk_1007720F0;
LABEL_23:
  sub_1000079B4(v22, v37);
  return 0;
}

uint64_t sub_1001C0C54(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v58 = a1;
  v59 = a2;
  v6 = type metadata accessor for IndexPath();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v8 - 8);
  v48 = &v46 - v9;
  v51 = sub_100058000(&unk_1007720B0);
  __chkstk_darwin(v51);
  v52 = &v46 - v10;
  updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit();
  v55 = *(updated - 8);
  v56 = updated;
  __chkstk_darwin(updated);
  v13 = &v46 - v12;
  v49 = a3;
  v50 = a4;
  v14 = type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  v23 = __chkstk_darwin(TupleTypeMetadata2);
  v25 = &v46 - v24;
  v26 = *(v23 + 48);
  v57 = v15;
  v27 = *(v15 + 16);
  v27(&v46 - v24, v58, v14);
  v27(&v25[v26], v59, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v59 = v13;
    v35 = v55;
    v34 = v56;
    v27(v20, v25, v14);
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = v35;
      v39 = v59;
      (*(v35 + 32))(v59, &v25[v26], v34);
      v36 = sub_1001C1348(v20, v39, v49, v50);
      v40 = *(v38 + 8);
      v40(v39, v34);
      v40(v20, v34);
      v22 = v57;
      goto LABEL_13;
    }

    (*(v35 + 8))(v20, v34);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }

LABEL_12:
    v36 = 0;
    v14 = TupleTypeMetadata2;
    goto LABEL_13;
  }

  v27(v18, v25, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000079B4(v18, &unk_100771B10);
    goto LABEL_12;
  }

  v29 = v52;
  v30 = *(v51 + 48);
  sub_100016588(v18, v52, &unk_100771B10);
  sub_100016588(&v25[v26], v29 + v30, &unk_100771B10);
  v32 = v53;
  v31 = v54;
  v33 = *(v53 + 48);
  if (v33(v29, 1, v54) != 1)
  {
    v41 = v48;
    sub_10000794C(v29, v48, &unk_100771B10);
    if (v33(v29 + v30, 1, v31) != 1)
    {
      v42 = v29 + v30;
      v43 = v47;
      (*(v32 + 32))(v47, v42, v31);
      sub_1001C44BC(&unk_100772710, &type metadata accessor for IndexPath);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v32 + 8);
      v45(v43, v31);
      v45(v41, v31);
      sub_1000079B4(v29, &unk_100771B10);
      if (v44)
      {
        goto LABEL_10;
      }

LABEL_18:
      v36 = 0;
      v22 = v57;
      goto LABEL_13;
    }

    (*(v32 + 8))(v41, v31);
LABEL_17:
    sub_1000079B4(v29, &unk_1007720B0);
    goto LABEL_18;
  }

  if (v33(v29 + v30, 1, v31) != 1)
  {
    goto LABEL_17;
  }

  sub_1000079B4(v29, &unk_100771B10);
LABEL_10:
  v36 = 1;
  v22 = v57;
LABEL_13:
  (*(v22 + 8))(v25, v14);
  return v36 & 1;
}

Swift::Int sub_1001C12FC()
{
  Hasher.init(_seed:)();
  sub_1001BFC8C(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1001C1348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  if (static IndexPath.== infix(_:_:)() & 1) != 0 && (updated = type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit(), v25 = v9, v16 = a1, v17 = *(a4 + 24), v23 = v16, v17(a3, a4), v22 = updated, v24 = a2, v17(a3, a4), swift_getAssociatedConformanceWitness(), v18 = dispatch thunk of static Equatable.== infix(_:_:)(), v19 = *(v25 + 8), v19(v12, AssociatedTypeWitness), v19(v14, AssociatedTypeWitness), (v18) && *(v23 + *(v22 + 40)) == *(v24 + *(v22 + 40)))
  {
    v20 = *(v23 + *(v22 + 44)) ^ *(v24 + *(v22 + 44)) ^ 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1001C1574(uint64_t a1)
{
  _StringGuts.grow(_:)(39);

  type metadata accessor for IndexPath();
  sub_1001C44BC(&qword_1007720C0, &type metadata accessor for IndexPath);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6E6F6974726F7020;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  if (*(v1 + *(a1 + 40)))
  {
    v5 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 7368564;
  }

  if (*(v1 + *(a1 + 40)))
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._object = 0x80000001006763F0;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  if (*(v1 + *(a1 + 44)))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 44)))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  return 0x203A746948;
}

uint64_t sub_1001C171C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 localDragSession] && (swift_getObjectType(), Strong = swift_unknownObjectUnownedLoadStrong(), v4 = sub_10039C078(Strong), Strong, swift_unknownObjectRelease(), v4))
  {
    v5 = qword_1007A8808;
    swift_beginAccess();
    v6 = *(v4 + v5);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  v7 = *(v6 + 2);
  if (v7 == 1)
  {
    v8 = _HashTable.startBucket.getter();
    sub_10057EB98(v8, *(v6 + 9), v6, a2);

    v9 = type metadata accessor for IndexPath();
    return (*(*(v9 - 8) + 56))(a2, 0, 2, v9);
  }

  else
  {

    v11 = type metadata accessor for IndexPath();
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    return (*(*(v11 - 8) + 56))(a2, v12, 2, v11);
  }
}

uint64_t sub_1001C18C0()
{
  sub_1001C445C(v0 + qword_1007A8498, type metadata accessor for TTRITreeViewDropProposal);
  sub_1000079B4(v0 + qword_1007A84A0, &unk_100780EE0);

  v1 = *(*v0 + 120);
  type metadata accessor for TTRITreeViewDropUpdateCoordinator.HitTestResult();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1001C19DC()
{
  sub_1001C18C0();

  return swift_deallocClassInstance();
}

void sub_1001C1A4C()
{
  if (!qword_100771F10)
  {
    sub_10005D20C(qword_100771F18);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100771F10);
    }
  }
}

void sub_1001C1AC8()
{
  type metadata accessor for TTRITreeViewDropUpdateCoordinator.Hit();
  if (v0 <= 0x3F)
  {
    sub_1001C3488();
    if (v1 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void *sub_1001C1B90(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11;
  v13 = v8 + v11;
  v14 = *(v10 + 64);
  v15 = *(v7 + 80);
  if (*(v7 + 84))
  {
    v16 = *(*(v6 - 8) + 64);
  }

  else
  {
    v16 = v8 + 1;
  }

  if (v16 <= v14 + ((v8 + v11) & ~v11) + 2)
  {
    v17 = v14 + ((v8 + v11) & ~v11) + 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 + 1;
  v19 = (v15 | v11);
  if (v19 > 7 || ((v15 | v11) & 0x100000) != 0 || v18 > 0x18)
  {
    v22 = *a2;
    *a1 = *a2;
    a1 = (v22 + ((v19 + 16) & ~v19));

    return a1;
  }

  v23 = v6;
  v24 = a2[v17];
  v25 = v24 - 2;
  if (v24 >= 2)
  {
    if (v17 <= 3)
    {
      v26 = v17;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_30;
      }

      v27 = *a2;
    }

    else if (v26 == 2)
    {
      v27 = *a2;
    }

    else if (v26 == 3)
    {
      v27 = *a2 | (a2[2] << 16);
    }

    else
    {
      v27 = *a2;
    }

    v28 = (v27 | (v25 << (8 * v17))) + 2;
    v24 = v27 + 2;
    if (v17 < 4)
    {
      v24 = v28;
    }
  }

LABEL_30:
  if (v24 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v16);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v23);
      (*(v7 + 56))(a1, 0, 1, v23);
    }

    *(a1 + v17) = 1;
    return a1;
  }

  if (!v24)
  {
    v29 = ~v12;
    (*(v7 + 16))(a1, a2, v6);
    v30 = &a2[v13] & v29;
    (*(v10 + 16))((a1 + v13) & v29, v30, v9);
    v31 = (((a1 + v13) & v29) + v14);
    *v31 = *(v30 + v14);
    v31[1] = *(v30 + v14 + 1);
    *(a1 + v17) = 0;
    return a1;
  }

  return memcpy(a1, a2, v18);
}

uint64_t sub_1001C1E7C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a2 + 16);
  result = *(v7 - 8);
  v9 = *(result + 80);
  v10 = v6 + v9;
  v11 = *(result + 64) + ((v6 + v9) & ~v9) + 2;
  if (!*(v5 + 84))
  {
    ++v6;
  }

  if (v6 <= v11)
  {
    v6 = v11;
  }

  v12 = a1[v6];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v6 <= 3)
    {
      v14 = v6;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = *a1;
    }

    else if (v14 == 2)
    {
      v15 = *a1;
    }

    else if (v14 == 3)
    {
      v15 = *a1 | (a1[2] << 16);
    }

    else
    {
      v15 = *a1;
    }

    v16 = (v15 | (v13 << (8 * v6))) + 2;
    v12 = v15 + 2;
    if (v6 < 4)
    {
      v12 = v16;
    }
  }

LABEL_19:
  if (v12 == 1)
  {
    v22 = *(v4 - 8);
    result = (*(v5 + 48))(a1, 1, v4);
    if (result)
    {
      return result;
    }

    v18 = *(v22 + 8);
    v19 = a1;
    v20 = v4;
  }

  else
  {
    if (v12)
    {
      return result;
    }

    v17 = ~v9;
    v21 = *(v7 - 8);
    (*(v5 + 8))(a1, v4);
    v18 = *(v21 + 8);
    v19 = (&a1[v10] & v17);
    v20 = v7;
  }

  return v18(v19, v20);
}

void *sub_1001C2098(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = *(v10 + 64);
  if (*(v7 + 84))
  {
    v14 = *(*(v6 - 8) + 64);
  }

  else
  {
    v14 = v8 + 1;
  }

  if (v14 <= v13 + ((v8 + v11) & ~v11) + 2)
  {
    v15 = v13 + ((v8 + v11) & ~v11) + 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = a2[v15];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = *a2;
    }

    else if (v18 == 2)
    {
      v19 = *a2;
    }

    else if (v18 == 3)
    {
      v19 = *a2 | (a2[2] << 16);
    }

    else
    {
      v19 = *a2;
    }

    v20 = (v19 | (v17 << (8 * v15))) + 2;
    v16 = v19 + 2;
    if (v15 < 4)
    {
      v16 = v20;
    }
  }

LABEL_21:
  if (v16 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v14);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    *(a1 + v15) = 1;
    return a1;
  }

  if (!v16)
  {
    v21 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    v22 = &a2[v12] & v21;
    (*(v10 + 16))((a1 + v12) & v21, v22, v9);
    v23 = (((a1 + v12) & v21) + v13);
    *v23 = *(v22 + v13);
    v23[1] = *(v22 + v13 + 1);
    *(a1 + v15) = 0;
    return a1;
  }

  return memcpy(a1, a2, v15 + 1);
}

unsigned __int8 *sub_1001C2348(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v29 = *(a3 + 16);
  v9 = *(v29 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64);
  if (*(v7 + 84))
  {
    v13 = *(*(v6 - 8) + 64);
  }

  else
  {
    v13 = v8 + 1;
  }

  if (v13 <= v12 + ((v8 + v10) & ~v10) + 2)
  {
    v14 = v12 + ((v8 + v10) & ~v10) + 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = a1[v14];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = *a1;
    }

    else if (v17 == 2)
    {
      v18 = *a1;
    }

    else if (v17 == 3)
    {
      v18 = *a1 | (a1[2] << 16);
    }

    else
    {
      v18 = *a1;
    }

    v19 = (v18 | (v16 << (8 * v14))) + 2;
    v15 = v18 + 2;
    if (v14 < 4)
    {
      v15 = v19;
    }
  }

LABEL_22:
  v20 = ~v10;
  if (v15 == 1)
  {
    if (!(*(v7 + 48))(a1, 1, v6))
    {
      (*(v7 + 8))(a1, v6);
    }
  }

  else if (!v15)
  {
    (*(v7 + 8))(a1, v6);
    (*(v9 + 8))(&a1[v11] & v20, v29);
  }

  v21 = a2[v14];
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v14 <= 3)
    {
      v23 = v14;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_41;
      }

      v24 = *a2;
    }

    else if (v23 == 2)
    {
      v24 = *a2;
    }

    else if (v23 == 3)
    {
      v24 = *a2 | (a2[2] << 16);
    }

    else
    {
      v24 = *a2;
    }

    v25 = (v24 | (v22 << (8 * v14))) + 2;
    v21 = v24 + 2;
    if (v14 < 4)
    {
      v21 = v25;
    }
  }

LABEL_41:
  if (v21 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v13);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    a1[v14] = 1;
    return a1;
  }

  if (!v21)
  {
    (*(v7 + 16))(a1, a2, v6);
    v26 = &a2[v11] & v20;
    (*(v9 + 16))(&a1[v11] & v20, v26, v29);
    v27 = ((&a1[v11] & v20) + v12);
    *v27 = *(v26 + v12);
    v27[1] = *(v26 + v12 + 1);
    a1[v14] = 0;
    return a1;
  }

  return memcpy(a1, a2, v14 + 1);
}

void *sub_1001C270C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = *(v10 + 64);
  if (*(v7 + 84))
  {
    v14 = *(*(v6 - 8) + 64);
  }

  else
  {
    v14 = v8 + 1;
  }

  if (v14 <= v13 + ((v8 + v11) & ~v11) + 2)
  {
    v15 = v13 + ((v8 + v11) & ~v11) + 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = a2[v15];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = *a2;
    }

    else if (v18 == 2)
    {
      v19 = *a2;
    }

    else if (v18 == 3)
    {
      v19 = *a2 | (a2[2] << 16);
    }

    else
    {
      v19 = *a2;
    }

    v20 = (v19 | (v17 << (8 * v15))) + 2;
    v16 = v19 + 2;
    if (v15 < 4)
    {
      v16 = v20;
    }
  }

LABEL_21:
  if (v16 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v14);
    }

    else
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    *(a1 + v15) = 1;
    return a1;
  }

  if (!v16)
  {
    v21 = ~v11;
    (*(v7 + 32))(a1, a2, v6);
    v22 = &a2[v12] & v21;
    (*(v10 + 32))((a1 + v12) & v21, v22, v9);
    v23 = (((a1 + v12) & v21) + v13);
    *v23 = *(v22 + v13);
    v23[1] = *(v22 + v13 + 1);
    *(a1 + v15) = 0;
    return a1;
  }

  return memcpy(a1, a2, v15 + 1);
}

unsigned __int8 *sub_1001C29BC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v29 = *(a3 + 16);
  v9 = *(v29 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64);
  if (*(v7 + 84))
  {
    v13 = *(*(v6 - 8) + 64);
  }

  else
  {
    v13 = v8 + 1;
  }

  if (v13 <= v12 + ((v8 + v10) & ~v10) + 2)
  {
    v14 = v12 + ((v8 + v10) & ~v10) + 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = a1[v14];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = *a1;
    }

    else if (v17 == 2)
    {
      v18 = *a1;
    }

    else if (v17 == 3)
    {
      v18 = *a1 | (a1[2] << 16);
    }

    else
    {
      v18 = *a1;
    }

    v19 = (v18 | (v16 << (8 * v14))) + 2;
    v15 = v18 + 2;
    if (v14 < 4)
    {
      v15 = v19;
    }
  }

LABEL_22:
  v20 = ~v10;
  if (v15 == 1)
  {
    if (!(*(v7 + 48))(a1, 1, v6))
    {
      (*(v7 + 8))(a1, v6);
    }
  }

  else if (!v15)
  {
    (*(v7 + 8))(a1, v6);
    (*(v9 + 8))(&a1[v11] & v20, v29);
  }

  v21 = a2[v14];
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v14 <= 3)
    {
      v23 = v14;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_41;
      }

      v24 = *a2;
    }

    else if (v23 == 2)
    {
      v24 = *a2;
    }

    else if (v23 == 3)
    {
      v24 = *a2 | (a2[2] << 16);
    }

    else
    {
      v24 = *a2;
    }

    v25 = (v24 | (v22 << (8 * v14))) + 2;
    v21 = v24 + 2;
    if (v14 < 4)
    {
      v21 = v25;
    }
  }

LABEL_41:
  if (v21 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v13);
    }

    else
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    a1[v14] = 1;
    return a1;
  }

  if (!v21)
  {
    (*(v7 + 32))(a1, a2, v6);
    v26 = &a2[v11] & v20;
    (*(v9 + 32))(&a1[v11] & v20, v26, v29);
    v27 = ((&a1[v11] & v20) + v12);
    *v27 = *(v26 + v12);
    v27[1] = *(v26 + v12 + 1);
    a1[v14] = 0;
    return a1;
  }

  return memcpy(a1, a2, v14 + 1);
}

uint64_t sub_1001C2D80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= *(*(*(a3 + 16) - 8) + 64) + ((v7 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + 2)
  {
    v8 = *(*(*(a3 + 16) - 8) + 64) + ((v7 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 < 2)
    {
LABEL_28:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_17:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_1001C2F54(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = *(v8 + 64);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + 2;
  if (*(v8 + 84))
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 > v10)
  {
    v10 = v11;
  }

  v12 = v10 + 1;
  if (a3 < 0xFE)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 253) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFD)
  {
    v14 = a2 - 254;
    if (v12 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v10 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_42:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v10] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_27;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_1001C31A8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = *(v4 + 64);
  v6 = *(*(*(a2 + 16) - 8) + 64) + ((v5 + *(*(*(a2 + 16) - 8) + 80)) & ~*(*(*(a2 + 16) - 8) + 80)) + 2;
  if (*(v4 + 84))
  {
    v7 = *(v4 + 64);
  }

  else
  {
    v7 = v5 + 1;
  }

  if (v7 > v6)
  {
    v6 = v7;
  }

  result = a1[v6];
  if (result >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        return result;
      }

      v10 = *a1;
    }

    else if (v9 == 2)
    {
      v10 = *a1;
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (a1[2] << 16);
    }

    else
    {
      v10 = *a1;
    }

    v11 = (v10 | ((result - 2) << (8 * v6))) + 2;
    v12 = v10 + 2;
    if (v6 >= 4)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void sub_1001C32F4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= *(*(*(a3 + 16) - 8) + 64) + ((v7 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + 2)
  {
    v9 = *(*(*(a3 + 16) - 8) + 64) + ((v7 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + 2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1)
  {
    a1[v9] = a2;
    return;
  }

  v10 = a2 - 2;
  if (v9 < 4)
  {
    a1[v9] = (v10 >> (8 * v9)) + 2;
    if (!v9)
    {
      return;
    }

    v10 &= ~(-1 << (8 * v9));
  }

  else
  {
    a1[v9] = 2;
  }

  if (v9 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v9;
  }

  bzero(a1, v9);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      *a1 = v10;
      a1[2] = BYTE2(v10);
    }

    else
    {
      *a1 = v10;
    }
  }

  else if (v11 == 1)
  {
    *a1 = v10;
  }

  else
  {
    *a1 = v10;
  }
}

void sub_1001C3488()
{
  if (!qword_100771FA0[0])
  {
    type metadata accessor for IndexPath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100771FA0);
    }
  }
}
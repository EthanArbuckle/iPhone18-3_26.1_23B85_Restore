id sub_100574C78(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1002931A8();
  v7 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v6);
  sub_10010FC20(&qword_101183990);
  v8 = swift_allocObject();
  if (v7)
  {
    *(v8 + 16) = xmmword_100EBE270;
    v9 = sub_10056FCA8();
    v10 = *&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    v11 = *&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton];
    *(v8 + 48) = v11;
    v12 = v10;
  }

  else
  {
    *(v8 + 16) = xmmword_100EBC6D0;
    v13 = sub_10056FCA8();
    v11 = *&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
    *(v8 + 32) = v13;
    *(v8 + 40) = v11;
  }

  v14 = v11;
  v15 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = sub_100062D50(v17, v8);
      }

      else
      {
        if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v18 = *(v8 + 8 * v17 + 32);
      }

      v19 = v18;
      if ([v18 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v16 == ++v17)
      {
        v15 = v31;
        break;
      }
    }
  }

  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
LABEL_23:
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *(v15 + 16);
  }

  if (v20 <= 0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20 * 28.0 + (v20 + -1.0) * 12.0;
  }

  [v3 layoutMargins];
  v23 = v22 + 10.0 + v21;
  [v3 layoutMargins];
  v25 = a1 - (v24 + v23);
  v26 = [*&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] titleLabel];
  [v26 setPreferredMaxLayoutWidth:v25];

  [*&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel] setPreferredMaxLayoutWidth:v25];
  v30.receiver = v3;
  v30.super_class = type metadata accessor for NowPlayingQueueHeaderView();
  LODWORD(v27) = 1148846080;
  LODWORD(v28) = 1112014848;
  return objc_msgSendSuper2(&v30, "systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:", a1, a2, v27, v28);
}

id sub_100574FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingQueueHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NowPlayingQueueHeaderView()
{
  result = qword_101195670;
  if (!qword_101195670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005751E4()
{
  result = type metadata accessor for UIButton.Configuration();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1005752F4()
{
  result = qword_101195680;
  if (!qword_101195680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195680);
  }

  return result;
}

void *sub_100575348()
{
  v1 = *v0;
  v2 = sub_1002931A8();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v2) & 1) == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  if ([*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden])
  {
    return 0;
  }

  v5 = *(v1 + v3);
  v6 = v5;
  return v5;
}

void sub_1005753B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {

    sub_100030444(a3);
  }
}

unint64_t sub_100575400()
{
  result = qword_101195698;
  if (!qword_101195698)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195698);
  }

  return result;
}

uint64_t sub_100575458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101195690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005754C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101195688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100575538()
{
  result = qword_1011956A0;
  if (!qword_1011956A0)
  {
    sub_1001109D0(&qword_101195688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011956A0);
  }

  return result;
}

void sub_10057559C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView;
  v3 = type metadata accessor for BackdropView();
  v4 = objc_allocWithZone(v3);
  *(v0 + v2) = sub_100453A34();
  v5 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_gradientView;
  v6 = objc_allocWithZone(v3);
  *(v0 + v5) = sub_100453A34();
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = 0;
  v7 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton;
  *(v1 + v7) = [objc_allocWithZone(UIButton) init];
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = 0;
  v8 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *(v1 + v8) = v10;
  v11 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  *(v1 + v11) = [objc_allocWithZone(UIButton) init];
  v12 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title);
  *v12 = 0;
  v12[1] = 0;
  v13 = v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = -1;
  v14 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10057582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_1005753B0(a1, a2, a3, a4, a5);
  }
}

void *sub_10057585C(uint64_t a1)
{
  v35 = type metadata accessor for Album();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10066C9A0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = Album.id.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10066C9A0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000D8F7C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000D8F7C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

void *sub_100575B64(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100015C04(0, v2, 0);
    v27 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v28 = *(v1 + 36);
    v23 = v1 + 72;
    v24 = v2;
    v25 = v1 + 64;
    v26 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v28 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v29 = MusicItemID.description.getter();
      v30 = v9;
      v10._countAndFlagsBits = 8250;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v12 = v27;
      v14 = v27[2];
      v13 = v27[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_100015C04((v13 > 1), v14 + 1, 1);
        v12 = v27;
      }

      v12[2] = v14 + 1;
      v15 = &v12[2 * v14];
      v15[4] = v29;
      v15[5] = v30;
      v1 = v26;
      v7 = 1 << *(v26 + 32);
      if (v5 >= v7)
      {
        goto LABEL_25;
      }

      v4 = v25;
      v16 = *(v25 + 8 * v8);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v27 = v12;
      if (v28 != *(v26 + 36))
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (v23 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1000D8F7C(v5, v28, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_1000D8F7C(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v24)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_100575E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10066CD54(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v23 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10066CD54((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[3 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v13[6] = _swiftEmptyDictionarySingleton;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000D8F7C(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000D8F7C(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void (*sub_10057605C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10057CEDC(v3, v8);
  return sub_100576174;
}

void sub_100576174(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_1005761EC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D0B0(v6, a2, a3);
  return sub_10057F330;
}

uint64_t (*sub_100576274(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D15C(v6, a2, a3);
  return sub_1005762FC;
}

void sub_100576300(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10057634C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1005763C0(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static Album.== infix(_:_:)();
}

uint64_t sub_100576444@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = v3 & ~(v3 >> 63);
  v8 = *(result + 16);
  if (v5 >= v8)
  {
    v9 = *(result + 16);
  }

  else
  {
    v9 = a2 + 2;
  }

  if (v7 >= v9)
  {
    v7 = 0;
    v13 = *(sub_10010FC20(&qword_101191960) - 8);
    v11 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v12 = 1;
    goto LABEL_11;
  }

  if (v3 > v8)
  {
    goto LABEL_16;
  }

  if (v5 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = *(sub_10010FC20(&qword_101191960) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (2 * v9) | 1;
LABEL_11:
  *a3 = v6;
  a3[1] = v6 + v11;
  a3[2] = v7;
  a3[3] = v12;
}

uint64_t sub_100576570(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_10047BEF8(*a1, *a2) & (v2 == v3);
}

void *sub_1005765AC(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v4 - 8);
  v6 = v91 - v5;
  v7 = type metadata accessor for Album();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
  v93 = *(v108 - 8);
  __chkstk_darwin(v108);
  v11 = (v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10010FC20(&qword_101191960);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12 - 8);
  v103 = (v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v98 = v91 - v17;
  v18 = __chkstk_darwin(v16);
  v95 = v91 - v19;
  __chkstk_darwin(v18);
  v100 = v91 - v20;
  v99 = sub_10010FC20(&qword_1011959C0);
  __chkstk_darwin(v99);
  v97 = (v91 - v21);
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 tracklist];
  v96 = v2;
  v27 = sub_100577208(*&v2[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_loadRange], *&v2[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_loadRange + 8]);
  if (!v27)
  {

    return 0;
  }

  v102 = v9;
  v29 = *(v27 + 2);
  v104 = v13;
  v105 = v7;
  v94 = v28;
  v101 = v6;
  v109 = v26;
  if (!v29)
  {
    v45 = v28;

    v43 = v45;
    v42 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v106 = v11;
  v110 = _swiftEmptyArrayStorage;
  v30 = v27;
  specialized ContiguousArray.reserveCapacity(_:)();
  v107 = *(v23 + 16);
  v31 = *(v23 + 80);
  v91[1] = v30;
  v32 = &v30[(v31 + 32) & ~v31];
  v33 = (v23 + 8);
  v34 = *(v23 + 72);
  (v107)(v25, v32, v22);
  while (1)
  {
    v35 = [v109 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v37 = [v35 itemAtIndexPath:isa];

    v38 = [v37 metadataObject];
    if (!v38)
    {
      goto LABEL_5;
    }

    v39 = [v38 innermostModelObject];

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (!v40)
    {

LABEL_5:
      (*v33)(v25, v22);
      goto LABEL_6;
    }

    v41 = [v40 hasVideo];
    (*v33)(v25, v22);
    if (v41)
    {
    }

LABEL_6:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v32 += v34;
    if (!--v29)
    {
      break;
    }

    (v107)(v25, v32, v22);
  }

  v42 = v110;
  v13 = v104;
  v43 = v94;
  v11 = v106;
LABEL_15:
  v44 = *&v96[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState];
  v46 = v98;
  v47 = v100;
  if (v44)
  {
    v48 = v44[2];
    if (v48 == v42[2] && *&v96[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState + 8] == v43)
    {
      swift_bridgeObjectRetain_n();

      v51 = v97;
      if (v48)
      {
        v52 = 0;
        v53 = (v93 + 48);
        v107 = v48;
        v96 = (v93 + 48);
        while (1)
        {
          if (v52 >= v44[2])
          {
            goto LABEL_66;
          }

          result = sub_1000089F8(v44 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v52, v47, &qword_101191960);
          v54 = v42[2];
          if (v52 == v54)
          {
            swift_bridgeObjectRelease_n();

            sub_1000095E8(v47, &qword_101191960);
            return v44;
          }

          if (v52 >= v54)
          {
            goto LABEL_67;
          }

          v55 = v42[v52 + 4];
          v56 = *(v99 + 48);
          sub_10003D17C(v47, v51, &qword_101191960);
          *(v51 + v56) = v55;
          v57 = *v53;
          if ((*v53)(v51, 1, v108) == 1 && !v55)
          {
            goto LABEL_24;
          }

          v58 = v95;
          sub_1000089F8(v51, v95, &qword_101191960);
          if (v57(v58, 1, v108) == 1)
          {
            v70 = v55;
            sub_1000095E8(v58, &qword_101191960);
LABEL_43:
            sub_1000095E8(v51, &qword_1011959C0);
LABEL_44:
            swift_bridgeObjectRelease_n();

            v46 = v98;
            goto LABEL_45;
          }

          sub_10057E118(v58, v11, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          if (!v55)
          {
            sub_10057E180(v11, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
            goto LABEL_43;
          }

          v59 = v42;
          v60 = *v11;
          v61 = v11[1];
          v62 = v55;
          v63 = [v62 identifiers];
          v64 = [v63 contentItemID];

          if (!v64)
          {

            sub_10057E180(v11, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
            v13 = v104;
            v42 = v59;
            goto LABEL_43;
          }

          v65 = v11;
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          if (v60 == v66 && v61 == v68)
          {
            break;
          }

          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v11 = v65;
          sub_10057E180(v65, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          v51 = v97;
          result = sub_1000095E8(v97, &qword_1011959C0);
          v13 = v104;
          v42 = v59;
          v47 = v100;
          v53 = v96;
          if ((v69 & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_25:
          if (v107 == ++v52)
          {
            goto LABEL_38;
          }
        }

        v11 = v65;
        sub_10057E180(v65, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
        v13 = v104;
        v42 = v59;
        v53 = v96;
        v51 = v97;
        v47 = v100;
LABEL_24:
        result = sub_1000095E8(v51, &qword_1011959C0);
        goto LABEL_25;
      }

LABEL_38:

      swift_bridgeObjectRelease_n();
      return v44;
    }
  }

LABEL_45:
  v71 = v42[2];
  if (!v71)
  {

    return _swiftEmptyArrayStorage;
  }

  v110 = _swiftEmptyArrayStorage;
  result = sub_10066CA44(0, v71, 0);
  v72 = 0;
  v44 = v110;
  v99 = v92 + 48;
  v100 = v71;
  v106 = v42;
  v107 = (v93 + 56);
  v96 = (v92 + 8);
  v97 = (v92 + 32);
  v73 = v103;
  while (v72 < v42[2])
  {
    v74 = v42[v72 + 4];
    if (v74)
    {
      v75 = v74;
      v76 = [v75 album];
      if (v76)
      {
        v77 = v76;
        v78 = v101;
        v79 = v105;
        dispatch thunk of LegacyModelObjectConvertible.init(_:)();
        if ((*v99)(v78, 1, v79) == 1)
        {

          sub_1000095E8(v78, &unk_101184730);
          v80 = 1;
          v73 = v103;
          v81 = v104;
        }

        else
        {
          v82 = *v97;
          (*v97)(v102, v78, v79);
          v83 = [v75 identifiers];
          v84 = [v83 contentItemID];

          if (v84)
          {
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v73 = v103;
            v82(v103 + *(v108 + 20), v102, v105);
            v80 = 0;
            *v73 = v85;
            v73[1] = v87;
          }

          else
          {
            (*v96)(v102, v79);

            v80 = 1;
            v73 = v103;
          }

          v81 = v104;
          v46 = v98;
        }

        v71 = v100;
      }

      else
      {
        v81 = v13;
        v80 = 1;
      }
    }

    else
    {
      v81 = v13;
      v80 = 1;
    }

    (*v107)(v73, v80, 1, v108);
    sub_10003D17C(v73, v46, &qword_101191960);

    v110 = v44;
    v88 = v46;
    v90 = v44[2];
    v89 = v44[3];
    if (v90 >= v89 >> 1)
    {
      sub_10066CA44(v89 > 1, v90 + 1, 1);
      v73 = v103;
      v44 = v110;
    }

    ++v72;
    v44[2] = v90 + 1;
    v13 = v81;
    result = sub_10003D17C(v88, v44 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v90, &qword_101191960);
    v46 = v88;
    v42 = v106;
    if (v71 == v72)
    {

      return v44;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

char *sub_100577208(char *a1, char *a2)
{
  v3 = v2;
  v70 = a2;
  v71 = a1;
  v4 = sub_10010FC20(&unk_10118BCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v69 - v7);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v78 = &v69 - v15;
  v16 = __chkstk_darwin(v14);
  v77 = &v69 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v69 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v69 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v69 - v25;
  __chkstk_darwin(v24);
  v28 = &v69 - v27;
  v29 = [v3 playingItemIndexPath];
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = v10[4];
  v82 = v10 + 4;
  v81(v28, v26, v9);
  v79 = v10[2];
  v80 = v10 + 2;
  result = v79(v23, v28, v9);
  if ((v71 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v69 = v28;
  v75 = v10;
  if (!v71)
  {
    v33 = 0;
    v37 = v77;
    goto LABEL_20;
  }

  v32 = v71;
  v72 = v8;
  v73 = v3;
  v33 = 0;
  v34 = (v10 + 7);
  v35 = v10;
  v36 = (v10 + 1);
  v74 = (v35 + 6);
  v37 = v77;
  while (1)
  {
    v79(v20, v23, v9);
    result = IndexPath.item.modify();
    if (__OFSUB__(*v38, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    --*v38;
    (result)(v83, 0);
    if ((IndexPath.item.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    result = IndexPath.section.modify();
    if (__OFSUB__(*v39, 1))
    {
      goto LABEL_50;
    }

    --*v39;
    (result)(v83, 0);
    if ((IndexPath.section.getter() & 0x8000000000000000) == 0)
    {
      v40 = v33;
      v41 = v36;
      v42 = v34;
      v43 = v32;
      v44 = v13;
      v45 = v23;
      v46 = [v73 items];
      v47 = [v46 numberOfItemsInSection:IndexPath.section.getter()];

      result = v47 - 1;
      if (__OFSUB__(v47, 1))
      {
        goto LABEL_51;
      }

      IndexPath.item.setter();
      v37 = v77;
      v23 = v45;
      v13 = v44;
      v32 = v43;
      v34 = v42;
      v36 = v41;
      v33 = v40;
      v8 = v72;
LABEL_11:
      v81(v8, v20, v9);
      v48 = 0;
      goto LABEL_12;
    }

    (*v36)(v20, v9);
    v48 = 1;
LABEL_12:
    (*v34)(v8, v48, 1, v9);
    if ((*v74)(v8, 1, v9) == 1)
    {
      break;
    }

    ++v33;
    (*v36)(v23, v9);
    v81(v23, v8, v9);
    if (v32 == v33)
    {
      v33 = v32;
      goto LABEL_19;
    }
  }

  sub_1000095E8(v8, &unk_10118BCE0);
LABEL_19:
  v3 = v73;
  v10 = v75;
LABEL_20:
  result = v79(v37, v23, v9);
  v50 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v51 = &v70[v50];
  if (__OFADD__(v50, v70))
  {
    goto LABEL_54;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v70 = v23;
  if (v51)
  {
    v52 = v10;
    v53 = 0;
    v73 = (v52 + 7);
    v74 = (v52 + 1);
    v72 = (v52 + 6);
    v49 = _swiftEmptyArrayStorage;
    v71 = v51;
    while (1)
    {
      if (v53 >= v51)
      {
        goto LABEL_46;
      }

      v54 = (v53 + 1);
      if (__OFADD__(v53, 1))
      {
        goto LABEL_47;
      }

      v79(v78, v37, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_100499724(0, *(v49 + 2) + 1, 1, v49);
      }

      v56 = *(v49 + 2);
      v55 = *(v49 + 3);
      if (v56 >= v55 >> 1)
      {
        v49 = sub_100499724(v55 > 1, v56 + 1, 1, v49);
      }

      *(v49 + 2) = v56 + 1;
      v81(&v49[((*(v75 + 80) + 32) & ~*(v75 + 80)) + v75[9] * v56], v78, v9);
      v79(v13, v37, v9);
      result = IndexPath.item.modify();
      if (__OFADD__(*v57, 1))
      {
        goto LABEL_48;
      }

      ++*v57;
      (result)(v83, 0);
      v58 = IndexPath.item.getter();
      v59 = [v3 items];
      v60 = [v59 numberOfItemsInSection:IndexPath.section.getter()];

      v61 = v58 < v60;
      v62 = v76;
      v37 = v77;
      if (v61)
      {
        goto LABEL_36;
      }

      result = IndexPath.section.modify();
      if (__OFADD__(*v63, 1))
      {
        goto LABEL_49;
      }

      ++*v63;
      (result)(v83, 0);
      v64 = IndexPath.section.getter();
      v65 = [v3 items];
      v66 = [v65 numberOfSections];

      if (v64 < v66)
      {
        break;
      }

      v67 = *v74;
      (*v74)(v13, v9);
      v37 = v77;
      v67(v77, v9);
      v68 = 1;
      v62 = v76;
LABEL_38:
      (*v73)(v62, v68, 1, v9);
      if ((*v72)(v62, 1, v9) == 1)
      {
        v67(v70, v9);
        v67(v69, v9);
        sub_1000095E8(v62, &unk_10118BCE0);
        return v49;
      }

      result = (v81)(v37, v62, v9);
      ++v53;
      v51 = v71;
      if (v54 == v71)
      {
        v67(v37, v9);
        goto LABEL_43;
      }
    }

    IndexPath.item.setter();
    v62 = v76;
    v37 = v77;
LABEL_36:
    v67 = *v74;
    (*v74)(v37, v9);
    v81(v62, v13, v9);
    v68 = 0;
    goto LABEL_38;
  }

  v67 = v10[1];
  v49 = _swiftEmptyArrayStorage;
  v67(v37, v9);
LABEL_43:
  v67(v70, v9);
  v67(v69, v9);
  return v49;
}

uint64_t sub_100577AE8(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v72 = type metadata accessor for Album();
  v3 = *(v72 - 8);
  v4 = __chkstk_darwin(v72);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = &v59 - v7;
  v8 = __chkstk_darwin(v6);
  v66 = &v59 - v9;
  __chkstk_darwin(v8);
  v71 = (&v59 - v10);
  v11 = sub_10010FC20(&qword_101191960) - 8;
  v12 = __chkstk_darwin(v11);
  v64 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v59 - v15;
  v17 = __chkstk_darwin(v14);
  v67 = &v59 - v18;
  __chkstk_darwin(v17);
  v21 = &v59 - v20;
  v22 = *(a1 + 16);
  v69 = v3;
  v60 = v19;
  v61 = a1;
  if (v22)
  {
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = *(v19 + 72);
    v65 = (v3 + 16);
    v70 = (v3 + 32);
    v25 = _swiftEmptyArrayStorage;
    v26 = &qword_101191960;
    do
    {
      sub_1000089F8(v23, v21, v26);
      sub_10003D17C(v21, v16, v26);
      v27 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
      if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
      {
        sub_1000095E8(v16, v26);
      }

      else
      {
        v28 = v26;
        v29 = *(v27 + 20);
        v30 = v66;
        v31 = v72;
        (*v65)(v66, &v16[v29], v72);
        sub_10057E180(v16, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
        v32 = *v70;
        (*v70)(v71, v30, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10049935C(0, *(v25 + 2) + 1, 1, v25);
        }

        v34 = *(v25 + 2);
        v33 = *(v25 + 3);
        if (v34 >= v33 >> 1)
        {
          v25 = sub_10049935C(v33 > 1, v34 + 1, 1, v25);
        }

        *(v25 + 2) = v34 + 1;
        v32(&v25[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v34], v71, v72);
        v26 = v28;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v35 = sub_1006701EC(v25);

  result = sub_100576444(v61, v62, v74);
  v37 = (v76 >> 1) - v75;
  v70 = v35;
  v66 = v74[0];
  if (v76 >> 1 == v75)
  {
    v38 = _swiftEmptyArrayStorage;
  }

  else
  {
    if ((v76 >> 1) <= v75)
    {
      __break(1u);
      return result;
    }

    v45 = *(v60 + 72);
    v71 = (v69 + 16);
    v46 = (v69 + 32);
    v47 = v74[1] + v75 * v45;
    v38 = _swiftEmptyArrayStorage;
    v48 = v64;
    do
    {
      v49 = v67;
      sub_1000089F8(v47, v67, &qword_101191960);
      sub_10003D17C(v49, v48, &qword_101191960);
      v50 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
      if ((*(*(v50 - 8) + 48))(v48, 1, v50) == 1)
      {
        sub_1000095E8(v48, &qword_101191960);
      }

      else
      {
        v51 = v72;
        v52 = v48 + *(v50 + 20);
        v53 = v63;
        (*v71)(v63, v52, v72);
        sub_10057E180(v48, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
        v54 = *v46;
        (*v46)(v68, v53, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_10049935C(0, *(v38 + 2) + 1, 1, v38);
        }

        v56 = *(v38 + 2);
        v55 = *(v38 + 3);
        if (v56 >= v55 >> 1)
        {
          v38 = sub_10049935C(v55 > 1, v56 + 1, 1, v38);
        }

        *(v38 + 2) = v56 + 1;
        v54(&v38[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v56], v68, v72);
        v48 = v64;
      }

      v47 += v45;
      --v37;
    }

    while (v37);
  }

  swift_unknownObjectRelease();
  v39 = sub_1006701EC(v38);

  swift_beginAccess();

  v41 = sub_10066B9CC(v40);
  v42 = sub_10057585C(v39);

  v43 = sub_100670388(v42);

  if (*(v41 + 16) <= v43[2] >> 3)
  {
    v73 = v43;
    sub_100700128(v41);
    v44 = v73;
  }

  else
  {
    v44 = sub_1007009C0(v41, v43);
  }

  v57 = v70;
  v58 = *(v44 + 2);

  if (v58)
  {
    sub_10057E4E8(v57, v41);

    sub_1005781F4();
  }

  else
  {
  }
}

void sub_1005781F4()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v131[-v2];
  v4 = type metadata accessor for Album();
  v151 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v141 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v140 = &v131[-v8];
  v9 = __chkstk_darwin(v7);
  v11 = &v131[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v131[-v13];
  __chkstk_darwin(v12);
  v147 = &v131[-v15];

  v17 = sub_10057ECC0(v16, v0);
  v144 = v0;

  if (!*(v17 + 16))
  {

    return;
  }

  v18 = sub_10010CC68(_swiftEmptyArrayStorage);
  if (qword_10117F548 == -1)
  {
    goto LABEL_3;
  }

  while (2)
  {
    swift_once();
LABEL_3:
    v19 = type metadata accessor for Logger();
    v20 = sub_1000060E4(v19, static Logger.NowPlaying.motion);

    v143 = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v150 = v4;
    v134 = v11;
    v142 = v14;
    v135 = v3;
    v138 = v18;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v154 = v25;
      *v24 = 136446210;
      sub_100042904(&unk_10118D190, &type metadata accessor for Album);
      v26 = Set.description.getter();
      v28 = sub_1000105AC(v26, v27, &v154);
      v14 = v142;

      *(v24 + 4) = v28;
      v4 = v150;
      _os_log_impl(&_mh_execute_header, v21, v22, "Checking catalogIDs for albums=%{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }

    v29 = v17 + 56;
    v30 = 1 << *(v17 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v17 + 56);
    v33 = (v30 + 63) >> 6;
    v152 = v151 + 16;
    v146 = v151 + 32;
    v148 = (v151 + 8);

    v18 = 0;
    *&v34 = 136446466;
    v136 = v34;
    v3 = v140;
    v145 = v33;
    v149 = v17;
    v139 = v17 + 56;
LABEL_8:
    v35 = v18;
    if (!v32)
    {
      goto LABEL_11;
    }

    do
    {
      while (1)
      {
        v18 = v35;
LABEL_16:
        v36 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v37 = v151;
        v38 = *(v151 + 16);
        v11 = v147;
        v38(v147, *(v17 + 48) + *(v151 + 72) * (v36 | (v18 << 6)), v4);
        (*(v37 + 32))(v14, v11, v4);
        v39 = Album.catalogID.getter();
        if (v40)
        {
          break;
        }

        (*v148)(v14, v4);
        v35 = v18;
        v17 = v149;
        v33 = v145;
        if (!v32)
        {
          goto LABEL_11;
        }
      }

      v41 = v39;
      v42 = v40;
      v43 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v43 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v59 = v134;
        v38(v134, v142, v4);

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v133 = v60;
          v63 = v62;
          v137 = swift_slowAlloc();
          v154 = v137;
          *v63 = v136;

          v64 = MusicItemID.description.getter();
          v132 = v61;
          v65 = v64;
          v66 = v59;
          v68 = v67;

          v69 = sub_1000105AC(v65, v68, &v154);

          *(v63 + 4) = v69;
          *(v63 + 12) = 2082;
          sub_100042904(&unk_1011926D0, &type metadata accessor for Album);
          v70 = dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v71;
          v73 = v66;
          v11 = *v148;
          (*v148)(v73, v4);
          v74 = sub_1000105AC(v70, v72, &v154);

          *(v63 + 14) = v74;
          v75 = v133;
          _os_log_impl(&_mh_execute_header, v133, v132, "Found catalogID %{public}s for album=%{public}s", v63, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v11 = *v148;
          (*v148)(v59, v4);
        }

        v76 = Album.id.getter();
        v137 = v77;
        v78 = v138;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v154 = v78;
        v80 = sub_100019C10(v41, v42);
        v82 = *(v78 + 16);
        v83 = (v81 & 1) == 0;
        v84 = __OFADD__(v82, v83);
        v85 = v82 + v83;
        if (v84)
        {
          goto LABEL_67;
        }

        v86 = v81;
        if (*(v78 + 24) >= v85)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v96 = v80;
            sub_1006C85B8();
            v80 = v96;
          }
        }

        else
        {
          sub_1006C0D88(v85, isUniquelyReferenced_nonNull_native);
          v80 = sub_100019C10(v41, v42);
          if ((v86 & 1) != (v87 & 1))
          {
            goto LABEL_69;
          }
        }

        v3 = v140;
        v88 = v154;
        v138 = v154;
        if (v86)
        {
          v89 = (v154[7] + 16 * v80);
          v90 = v137;
          *v89 = v76;
          v89[1] = v90;
        }

        else
        {
          v154[(v80 >> 6) + 8] |= 1 << v80;
          v91 = (v88[6] + 16 * v80);
          *v91 = v41;
          v91[1] = v42;
          v92 = (v88[7] + 16 * v80);
          v93 = v137;
          *v92 = v76;
          v92[1] = v93;
          v94 = v88[2];
          v84 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v84)
          {
            goto LABEL_68;
          }

          v88[2] = v95;
        }

        v17 = v149;
        v4 = v150;
        v14 = v142;
        v33 = v145;
        (v11)(v142, v150);
        goto LABEL_8;
      }

      v11 = v142;
      v38(v3, v142, v4);
      v44 = Logger.logObject.getter();
      v45 = v3;
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v46))
      {
        v47 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v154 = v137;
        *v47 = v136;
        v48 = MusicItemID.description.getter();
        v50 = v49;

        v51 = sub_1000105AC(v48, v50, &v154);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2082;
        sub_100042904(&unk_1011926D0, &type metadata accessor for Album);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v55 = v45;
        v56 = *v148;
        (*v148)(v55, v150);
        v57 = sub_1000105AC(v52, v54, &v154);

        *(v47 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v44, v46, "Empty catalogID %{public}s for album=%{public}s… skipping", v47, 0x16u);
        swift_arrayDestroy();

        v4 = v150;

        (v56)(v11, v4);
        v35 = v18;
        v17 = v149;
        v3 = v140;
      }

      else
      {

        v58 = *v148;
        (*v148)(v45, v4);
        (v58)(v11, v4);
        v35 = v18;
        v17 = v149;
        v3 = v45;
      }

      v29 = v139;
      v14 = v11;
      v33 = v145;
    }

    while (v32);
    while (1)
    {
LABEL_11:
      v18 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v18 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v18);
      ++v35;
      if (v32)
      {
        goto LABEL_16;
      }
    }

    v97 = v138;
    v98 = *(v138 + 16);
    if (!v98)
    {
      if (!_swiftEmptyArrayStorage[2])
      {
LABEL_60:

        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&_mh_execute_header, v128, v129, "No catalogIDs found, bailing out!", v130, 2u);
        }

        return;
      }

LABEL_42:

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v154 = v104;
        *v103 = 136446210;
        v105 = Array.description.getter();
        v107 = sub_1000105AC(v105, v106, &v154);

        *(v103 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v101, v102, "Requesting editorial video artworks for catalogIDs=%{public}s", v103, 0xCu);
        sub_10000959C(v104);
      }

      sub_10010FC20(&unk_101192970);
      v147 = swift_allocBox();
      swift_getKeyPath();
      sub_100042904(&qword_101192880, &type metadata accessor for Album);
      MusicCatalogResourceRequest.init<A>(matching:memberOf:)();
      sub_10010FC20(&qword_1011929C8);
      v108 = type metadata accessor for MusicCatalogResourceRequestOption();
      v109 = *(v108 - 8);
      v110 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_100EBC6B0;
      (*(v109 + 104))(v111 + v110, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v108);
      MusicCatalogResourceRequest.options.setter();
      sub_10010FC20(&qword_101183990);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&qword_101192878);
      *(v18 + 32) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
      MusicCatalogResourceRequest.properties.setter();
      v112 = 1 << *(v17 + 32);
      v113 = -1;
      if (v112 < 64)
      {
        v113 = ~(-1 << v112);
      }

      v114 = v113 & *(v17 + 56);
      v11 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_inProgressRequests;
      v14 = ((v112 + 63) >> 6);

      v4 = 0;
      v17 = v151;
      while (v114)
      {
        v115 = v4;
        v3 = v149;
LABEL_53:
        v116 = __clz(__rbit64(v114));
        v114 &= v114 - 1;
        v117 = *(v3 + 6) + *(v17 + 72) * (v116 | (v115 << 6));
        v118 = v141;
        v119 = v150;
        (*(v17 + 16))(v141, v117, v150);
        v120 = Album.id.getter();
        v18 = v121;
        (*(v17 + 8))(v118, v119);
        swift_beginAccess();
        sub_1003B3B90(&v153, v120, v18);
        swift_endAccess();
      }

      v3 = v149;
      while (1)
      {
        v115 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v115 >= v14)
        {

          v122 = type metadata accessor for TaskPriority();
          v123 = v135;
          (*(*(v122 - 8) + 56))(v135, 1, 1, v122);
          type metadata accessor for MainActor();
          v124 = v144;

          v125 = v147;

          v126 = static MainActor.shared.getter();
          v127 = swift_allocObject();
          v127[2] = v126;
          v127[3] = &protocol witness table for MainActor;
          v127[4] = v3;
          v127[5] = v125;
          v127[6] = v138;
          v127[7] = v124;
          sub_1001F4CB8(0, 0, v123, &unk_100ED3AB8, v127);

          return;
        }

        v114 = *(v29 + 8 * v115);
        ++v4;
        if (v114)
        {
          v4 = v115;
          goto LABEL_53;
        }
      }

LABEL_64:
      __break(1u);
      continue;
    }

    break;
  }

  v99 = sub_1003ADD34(*(v138 + 16), 0);
  v100 = sub_100197614(&v154, v99 + 4, v98, v97);

  sub_10005C9F8();
  if (v100 == v98)
  {
    if (!v99[2])
    {
      goto LABEL_60;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100579298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[15] = a4;
  v8 = type metadata accessor for Album();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011815C0);
  v7[22] = v9;
  v7[23] = *(v9 - 8);
  v7[24] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_101192970);
  v7[25] = v10;
  v7[26] = *(v10 - 8);
  v7[27] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101181C50);
  v7[28] = v11;
  v7[29] = *(v11 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = sub_10010FC20(&qword_1011815C8);
  v7[32] = swift_task_alloc();
  v7[33] = swift_projectBox();
  type metadata accessor for MainActor();
  v7[34] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[35] = v13;
  v7[36] = v12;

  return _swift_task_switch(sub_100579520, v13, v12);
}

uint64_t sub_100579520()
{
  v15 = v0;
  v1 = sub_10057585C(v0[15]);
  v2 = sub_100670388(v1);

  v3 = sub_100575E24(v2);

  if (v3[2])
  {
    sub_10010FC20(&qword_1011959B8);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v14 = v4;

  sub_10057DCCC(v5, 1, &v14);
  v6 = v0[33];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];

  v0[37] = v14;
  swift_beginAccess();
  (*(v8 + 16))(v7, v6, v9);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_1005796E4;
  v11 = v0[30];
  v12 = v0[25];

  return MusicCatalogResourceRequest.response()(v11, v12);
}

uint64_t sub_1005796E4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  (*(v2[26] + 8))(v2[27], v2[25]);
  v3 = v2[36];
  v4 = v2[35];
  if (v0)
  {
    v5 = sub_100579E84;
  }

  else
  {
    v5 = sub_10057986C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10057986C()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];

  MusicCatalogResourceResponse.items.getter();
  (*(v4 + 8))(v3, v5);
  (*(v7 + 16))(v2, v6, v8);
  v9 = *(v1 + 36);
  sub_100020674(&unk_10118C140, &qword_1011815C0);
  dispatch thunk of Collection.startIndex.getter();
  (*(v7 + 8))(v6, v8);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v2 + v9) != v0[14])
  {
    v13 = v0[19];
    v56 = (v13 + 16);
    v54 = (v13 + 8);
    v55 = (v13 + 32);
    v51 = v0[37];
    v52 = v0[16];
    v53 = v9;
    v57 = v2;
    while (1)
    {
      v14 = v0[21];
      v15 = v0[20];
      v16 = v0[18];
      v17 = dispatch thunk of Collection.subscript.read();
      (*v56)(v14);
      v17(v0 + 2, 0);
      v18 = v57;
      dispatch thunk of Collection.formIndex(after:)();
      (*v55)(v15, v14, v16);
      v19 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
      if (v19)
      {
        v20 = v19;
        v21 = Album.catalogID.getter();
        if (!v22)
        {
          goto LABEL_19;
        }

        if (!*(v52 + 16))
        {

LABEL_19:

          if (qword_10117F548 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_1000060E4(v37, static Logger.NowPlaying.motion);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          v40 = os_log_type_enabled(v38, v39);
          v41 = v0[20];
          v42 = v0[18];
          v43 = v53;
          if (v40)
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "Editorial video artwork could not be stored. Could not find album ID for given catalogID.", v44, 2u);
          }

          (*v54)(v41, v42);
          goto LABEL_8;
        }

        v23 = sub_100019C10(v21, v22);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }

        v26 = (*(v52 + 56) + 16 * v23);
        v27 = *v26;
        v28 = v26[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_100019C10(v27, v28);
        v32 = v51[2];
        v33 = (v30 & 1) == 0;
        result = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        v34 = v30;
        if (v51[3] >= result)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1006CA094();
          }
        }

        else
        {
          sub_1006C3A4C(result, isUniquelyReferenced_nonNull_native);
          v35 = sub_100019C10(v27, v28);
          if ((v34 & 1) != (v36 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v31 = v35;
        }

        v45 = v0[20];
        v46 = v0[18];
        if (v34)
        {

          *(v51[7] + 8 * v31) = v20;

          (*v54)(v45, v46);
        }

        else
        {
          v51[(v31 >> 6) + 8] |= 1 << v31;
          v47 = (v51[6] + 16 * v31);
          *v47 = v27;
          v47[1] = v28;
          *(v51[7] + 8 * v31) = v20;
          result = (*v54)(v45, v46);
          v48 = v51[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_35;
          }

          v51[2] = v50;
        }

        v18 = v57;
      }

      else
      {
        (*v54)(v0[20], v0[18]);
      }

      v43 = v53;
LABEL_8:
      dispatch thunk of Collection.endIndex.getter();
      if (*(v18 + v43) == v0[14])
      {
        goto LABEL_3;
      }
    }
  }

  v51 = v0[37];
LABEL_3:
  sub_1000095E8(v0[32], &qword_1011815C8);
  sub_10057A308(v51);
  v10 = sub_10057585C(v0[15]);

  swift_beginAccess();
  sub_10057A28C(v10);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100579E84()
{
  v1 = v0[39];

  v0[12] = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0);
  sub_10057F264();
  if (swift_dynamicCast())
  {
    v2 = v0[13];
    if ([v2 code] == -7101)
    {

      if (qword_10117F548 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000060E4(v3, static Logger.NowPlaying.motion);
      v4 = v2;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138543362;
        *(v7 + 4) = v4;
        *v8 = v4;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v5, v6, "Editorial video artworks request invalid, treating as 404: %{public}@", v7, 0xCu);
        sub_1000095E8(v8, &unk_101183D70);
      }

      v10 = v0[37];

      sub_10057A308(v10);
      goto LABEL_14;
    }
  }

  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, static Logger.NowPlaying.motion);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Editorial video artworks request failed: %{public}@", v14, 0xCu);
    sub_1000095E8(v15, &unk_101183D70);

    goto LABEL_15;
  }

LABEL_14:

LABEL_15:
  v17 = sub_10057585C(v0[15]);

  swift_beginAccess();
  sub_10057A28C(v17);
  swift_endAccess();

  v18 = v0[1];

  return v18();
}

uint64_t sub_10057A28C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_100195A08(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_10057A308(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100575B64(a1);
    if (qword_10117F548 != -1)
    {
LABEL_25:
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, static Logger.NowPlaying.motion);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v27 = v6;
      *v5 = 136446210;
      sub_10010FC20(&qword_101183BC8);
      sub_100020674(&unk_101183BD0, &qword_101183BC8);
      v7 = BidirectionalCollection<>.joined(separator:)();
      v9 = v8;

      v10 = sub_1000105AC(v7, v9, &v27);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Updating cache with items:\n%{public}s", v5, 0xCu);
      sub_10000959C(v6);
    }

    else
    {
    }

    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    if (v16)
    {
      while (1)
      {
        v19 = v18;
LABEL_21:
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = v20 | (v19 << 6);
        v22 = (*(a1 + 48) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(a1 + 56) + 8 * v21);

        sub_10057A6C8(v24, v23, v25);

        if (!v16)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(a1 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_21;
      }
    }

    sub_100069DB0();
  }

  else
  {
    if (qword_10117F548 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, static Logger.NowPlaying.motion);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "No loaded artworks to update", v13, 2u);
    }
  }
}

void sub_10057A6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = sub_10010FC20(&unk_10118D180);
  v8 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v76 = (&v68 - v11);
  __chkstk_darwin(v12);
  v75 = &v68 - v13;
  v14 = sub_10010FC20(&qword_10118EB40);
  __chkstk_darwin(v14 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;

  Date.init()();
  v20 = type metadata accessor for Cache.Entry(0);
  *&v19[*(v20 + 20)] = a3;
  v70 = *(v20 - 8);
  v21 = *(v70 + 56);
  v80 = v70 + 56;
  v81 = v20;
  v79 = v21;
  (v21)(v19, 0, 1);
  swift_beginAccess();

  sub_100407CB8(v19, a1, a2);
  swift_endAccess();
  v69 = v4;
  v22 = *(v4 + 16);
  v23 = *(v22 + 16);
  if (v23 < 0xC9)
  {
    return;
  }

  v73 = v16;
  v24 = sub_1003ADE48(v23, 0);
  sub_100197A9C(&v83, v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v23, v22);
  v26 = v25;
  swift_bridgeObjectRetain_n();
  sub_10005C9F8();
  if (v26 != v23)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v83 = v24;
  sub_10057B2D8(&v83);

  v27 = sub_10053E394(v23 - 100, v83);
  v72 = v29;
  v74 = v30 >> 1;
  v31 = (v30 >> 1) - v28;
  if (!__OFSUB__(v30 >> 1, v28))
  {
    v32 = v27;
    if (!v31)
    {
      swift_unknownObjectRelease();
      v34 = _swiftEmptyArrayStorage;
LABEL_15:
      v46 = v34[2];
      v47 = v69;
      if (v46)
      {
        v48 = v34 + 5;
        do
        {
          v51 = *(v48 - 1);
          v52 = *v48;
          swift_beginAccess();

          v53 = sub_100019C10(v51, v52);
          v54 = v47;
          if (v55)
          {
            v56 = v53;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58 = *(v54 + 16);
            v82 = v58;
            *(v54 + 16) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1006C9E3C();
              v58 = v82;
            }

            v50 = v73;
            sub_10057E118(*(v58 + 56) + *(v70 + 72) * v56, v73, type metadata accessor for Cache.Entry);
            sub_100409C14(v56, v58);
            *(v54 + 16) = v58;

            v49 = 0;
            v47 = v54;
          }

          else
          {
            v49 = 1;
            v50 = v73;
          }

          v79(v50, v49, 1, v81);
          swift_endAccess();

          sub_1000095E8(v50, &qword_10118EB40);
          v48 += 2;
          --v46;
        }

        while (v46);
      }

      if (qword_10117F548 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    v33 = v28;
    v83 = _swiftEmptyArrayStorage;
    sub_10066C9A0(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v68 = v32;
    v34 = v83;
    v35 = v74;
    if (v33 > v74)
    {
      v35 = v33;
    }

    v71 = v35;
    while (v71 != v33)
    {
      v36 = v8;
      v37 = v75;
      sub_1000089F8(v72 + *(v8 + 72) * v33, v75, &unk_10118D180);
      v38 = v76;
      sub_1000089F8(v37, v76, &unk_10118D180);
      v40 = *v38;
      v39 = v38[1];
      v41 = v77;
      v42 = *(v78 + 48);
      *v77 = *v38;
      *(v41 + 8) = v39;
      sub_10057E118(v38 + v42, v41 + v42, type metadata accessor for Cache.Entry);

      sub_1000095E8(v41, &unk_10118D180);
      sub_1000095E8(v37, &unk_10118D180);
      v83 = v34;
      v44 = v34[2];
      v43 = v34[3];
      if (v44 >= v43 >> 1)
      {
        sub_10066C9A0((v43 > 1), v44 + 1, 1);
        v34 = v83;
      }

      v34[2] = v44 + 1;
      v45 = &v34[2 * v44];
      v45[4] = v40;
      v45[5] = v39;
      ++v33;
      v8 = v36;
      if (v74 == v33)
      {
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_24:
  v59 = type metadata accessor for Logger();
  sub_1000060E4(v59, static Logger.NowPlaying.motion);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v83 = v63;
    *v62 = 136446210;
    v64 = Array.description.getter();
    v66 = v65;

    v67 = sub_1000105AC(v64, v66, &v83);

    *(v62 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v60, v61, "Evicting ids: %{public}s", v62, 0xCu);
    sub_10000959C(v63);
  }

  else
  {
  }
}

uint64_t sub_10057ADE4()
{
  v1 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService__queueMetadata;
  v2 = sub_10010FC20(&qword_10118A878);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10057AECC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v24 = &v23 - v7;
  v9 = sub_10010FC20(&unk_10118D180);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_1000089F8(a1, &v23 - v14, &unk_10118D180);

  v16 = *(v10 + 56);
  v17 = *(v4 + 16);
  v17(v8, &v15[v16], v3);
  sub_10057E180(&v15[v16], type metadata accessor for Cache.Entry);
  sub_1000089F8(v26, v12, &unk_10118D180);

  v18 = *(v10 + 56);
  v19 = v25;
  v17(v25, &v12[v18], v3);
  sub_10057E180(&v12[v18], type metadata accessor for Cache.Entry);
  v20 = v24;
  LOBYTE(v18) = static Date.< infix(_:_:)();
  v21 = *(v4 + 8);
  v21(v19, v3);
  v21(v20, v3);
  return v18 & 1;
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t *sub_10057B1A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10057E934(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10057B23C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10057E1E0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void sub_10057B2D8(void **a1)
{
  v2 = *(sub_10010FC20(&unk_10118D180) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10059F06C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10057B38C(v5);
  *a1 = v3;
}

void sub_10057B38C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10010FC20(&unk_10118D180);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10010FC20(&unk_10118D180) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10057B948(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10057B4D0(0, v2, 1, a1);
  }
}

void sub_10057B4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = type metadata accessor for Date();
  v8 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v43 - v11;
  v12 = sub_10010FC20(&unk_10118D180);
  __chkstk_darwin(v12);
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v56 = &v43 - v15;
  __chkstk_darwin(v16);
  v55 = &v43 - v17;
  __chkstk_darwin(v18);
  v64 = &v43 - v19;
  __chkstk_darwin(v20);
  v63 = &v43 - v22;
  v45 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v53 = (v8 + 8);
    v54 = (v8 + 16);
    v25 = v23 + v24 * (a3 - 1);
    v50 = -v24;
    v51 = v23;
    v26 = a1 - a3;
    v44 = v24;
    v27 = v23 + v24 * a3;
    v62 = v12;
    v28 = v54;
LABEL_5:
    v48 = v25;
    v49 = a3;
    v46 = v27;
    v47 = v26;
    v60 = v26;
    while (1)
    {
      v29 = v12;
      v30 = v63;
      sub_1000089F8(v27, v63, &unk_10118D180);
      v31 = v64;
      sub_1000089F8(v25, v64, &unk_10118D180);
      v32 = v55;
      sub_1000089F8(v30, v55, &unk_10118D180);

      v33 = *(v29 + 48);
      v61 = *v28;
      v34 = v57;
      v35 = v59;
      v61(v57, v32 + v33, v59);
      sub_10057E180(v32 + v33, type metadata accessor for Cache.Entry);
      v36 = v56;
      sub_1000089F8(v31, v56, &unk_10118D180);

      v37 = *(v62 + 48);
      v38 = v58;
      v61(v58, v36 + v37, v35);
      sub_10057E180(v36 + v37, type metadata accessor for Cache.Entry);
      LOBYTE(v29) = static Date.< infix(_:_:)();
      v39 = *v53;
      v40 = v38;
      v12 = v62;
      (*v53)(v40, v35);
      v39(v34, v35);
      sub_1000095E8(v64, &unk_10118D180);
      sub_1000095E8(v63, &unk_10118D180);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v25 = v48 + v44;
        v26 = v47 - 1;
        v27 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v41 = v52;
      sub_10003D17C(v27, v52, &unk_10118D180);
      swift_arrayInitWithTakeFrontToBack();
      sub_10003D17C(v41, v25, &unk_10118D180);
      v25 += v50;
      v27 += v50;
      if (__CFADD__(v60++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10057B948(unint64_t *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v136 = a1;
  v157 = type metadata accessor for Date();
  v7 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v155 = &v132 - v10;
  v11 = sub_10010FC20(&unk_10118D180);
  __chkstk_darwin(v11);
  v138 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v150 = &v132 - v14;
  __chkstk_darwin(v15);
  v154 = &v132 - v16;
  __chkstk_darwin(v17);
  v153 = &v132 - v18;
  __chkstk_darwin(v19);
  v160 = &v132 - v20;
  __chkstk_darwin(v21);
  v161 = &v132 - v22;
  __chkstk_darwin(v23);
  v134 = &v132 - v24;
  __chkstk_darwin(v25);
  v133 = &v132 - v27;
  v28 = *(a3 + 1);
  v140 = a3;
  v145 = v29;
  if (v28 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_99:
    a4 = *v136;
    if (!*v136)
    {
      goto LABEL_141;
    }

    v7 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v145;
    if (isUniquelyReferenced_nonNull_native)
    {
      v125 = v7;
    }

    else
    {
LABEL_135:
      v125 = sub_10059F01C(v7);
    }

    v163 = v125;
    v7 = *(v125 + 2);
    if (v7 >= 2)
    {
      while (1)
      {
        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        a3 = (v7 - 1);
        v127 = *&v125[16 * v7];
        v128 = v125;
        v129 = *&v125[16 * v7 + 24];
        v130 = v147;
        sub_10057C6AC(&v126[*(v4 + 9) * v127], &v126[*(v4 + 9) * *&v125[16 * v7 + 16]], &v126[*(v4 + 9) * v129], a4);
        v147 = v130;
        if (v130)
        {
          goto LABEL_113;
        }

        if (v129 < v127)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_10059F01C(v128);
        }

        if (v7 - 2 >= *(v128 + 2))
        {
          goto LABEL_129;
        }

        v131 = &v128[16 * v7];
        *v131 = v127;
        *(v131 + 1) = v129;
        v163 = v128;
        sub_10059EF90(a3);
        v125 = v163;
        v7 = *(v163 + 2);
        a3 = v140;
        if (v7 <= 1)
        {
          goto LABEL_113;
        }
      }
    }

    goto LABEL_113;
  }

  v132 = a4;
  v30 = 0;
  v151 = (v7 + 8);
  v152 = (v7 + 16);
  v31 = _swiftEmptyArrayStorage;
  v32 = &unk_100EC8EC0;
  v162 = v26;
  while (1)
  {
    v33 = v30;
    v139 = v31;
    if (v30 + 1 < v28)
    {
      v34 = *a3;
      a4 = *(v145 + 9);
      v35 = &v34[a4 * (v30 + 1)];
      v7 = v32;
      v36 = v133;
      sub_1000089F8(v35, v133, &unk_10118D180);
      v159 = v34;
      v37 = &v34[a4 * v30];
      v38 = v134;
      sub_1000089F8(v37, v134, &unk_10118D180);
      v39 = v147;
      LODWORD(v144) = sub_10057AECC(v36, v38);
      v147 = v39;
      if (!v39)
      {
        sub_1000095E8(v38, &unk_10118D180);
        sub_1000095E8(v36, &unk_10118D180);
        v135 = v30;
        v40 = v30 + 2;
        v41 = v159 + a4 * (v30 + 2);
        v32 = v7;
        v42 = a4;
        v148 = a4;
        v146 = v28;
        while (v28 != v40)
        {
          v158 = v40;
          v159 = v41;
          v43 = v161;
          sub_1000089F8(v41, v161, &unk_10118D180);
          v149 = v35;
          v44 = v160;
          sub_1000089F8(v35, v160, &unk_10118D180);
          v45 = v153;
          sub_1000089F8(v43, v153, &unk_10118D180);

          v46 = *(v162 + 48);
          v47 = *v152;
          v4 = v155;
          v48 = v157;
          (*v152)(v155, v45 + v46, v157);
          sub_10057E180(v45 + v46, type metadata accessor for Cache.Entry);
          v49 = v154;
          sub_1000089F8(v44, v154, &unk_10118D180);

          v50 = *(v162 + 48);
          v51 = v156;
          v47(v156, v49 + v50, v48);
          v28 = v146;
          sub_10057E180(v49 + v50, type metadata accessor for Cache.Entry);
          a4 = static Date.< infix(_:_:)() & 1;
          v7 = *v151;
          (*v151)(v51, v48);
          (v7)(v4, v48);
          v32 = &unk_100EC8EC0;
          sub_1000095E8(v44, &unk_10118D180);
          sub_1000095E8(v161, &unk_10118D180);
          v42 = v148;
          v40 = v158 + 1;
          v41 = v159 + v148;
          v35 = v149 + v148;
          if ((v144 & 1) != a4)
          {
            v28 = v158;
            break;
          }
        }

        a3 = v140;
        v33 = v135;
        if (v144)
        {
          if (v28 < v135)
          {
            goto LABEL_134;
          }

          if (v135 < v28)
          {
            a4 = v42 * (v28 - 1);
            v52 = v28;
            v53 = v28 * v42;
            v146 = v52;
            v54 = v135;
            v7 = v135 * v42;
            do
            {
              if (v54 != --v52)
              {
                v55 = *v140;
                if (!*v140)
                {
                  goto LABEL_138;
                }

                v4 = (v55 + v7);
                sub_10003D17C(v55 + v7, v138, &unk_10118D180);
                if (v7 < a4 || v4 >= v55 + v53)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v7 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_10003D17C(v138, v55 + a4, &unk_10118D180);
                v42 = v148;
              }

              ++v54;
              a4 -= v42;
              v53 -= v42;
              v7 += v42;
            }

            while (v54 < v52);
            v33 = v135;
            v28 = v146;
            a3 = v140;
          }
        }

        goto LABEL_24;
      }

      sub_1000095E8(v38, &unk_10118D180);
      sub_1000095E8(v36, &unk_10118D180);
LABEL_113:

      return;
    }

    v28 = v30 + 1;
LABEL_24:
    v56 = *(a3 + 1);
    if (v28 >= v56)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v28, v33))
    {
      goto LABEL_131;
    }

    if (v28 - v33 >= v132)
    {
LABEL_33:
      a4 = v28;
      if (v28 < v33)
      {
        goto LABEL_130;
      }

      goto LABEL_34;
    }

    if (__OFADD__(v33, v132))
    {
      goto LABEL_132;
    }

    if (v33 + v132 >= v56)
    {
      a4 = *(a3 + 1);
    }

    else
    {
      a4 = v33 + v132;
    }

    if (a4 < v33)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (v28 == a4)
    {
      goto LABEL_33;
    }

    v106 = *a3;
    v107 = *(v145 + 9);
    v108 = *a3 + v107 * (v28 - 1);
    v148 = -v107;
    v135 = v33;
    v109 = v33 - v28;
    v149 = v106;
    v137 = v107;
    v7 = v106 + v28 * v107;
    v110 = v162;
    v141 = a4;
LABEL_87:
    v146 = v28;
    v142 = v7;
    v143 = v109;
    v111 = v109;
    v144 = v108;
LABEL_88:
    v158 = v111;
    v112 = v161;
    sub_1000089F8(v7, v161, &unk_10118D180);
    v113 = v160;
    sub_1000089F8(v108, v160, &unk_10118D180);
    v114 = v153;
    sub_1000089F8(v112, v153, &unk_10118D180);

    v115 = *(v110 + 48);
    v159 = *v152;
    v116 = v155;
    v117 = v157;
    v159(v155, v114 + v115, v157);
    sub_10057E180(v114 + v115, type metadata accessor for Cache.Entry);
    v118 = v154;
    sub_1000089F8(v113, v154, &unk_10118D180);

    v119 = *(v162 + 48);
    v4 = v156;
    v159(v156, v118 + v119, v117);
    sub_10057E180(v118 + v119, type metadata accessor for Cache.Entry);
    LOBYTE(v112) = static Date.< infix(_:_:)();
    v120 = *v151;
    (*v151)(v4, v117);
    v120(v116, v117);
    v32 = &unk_100EC8EC0;
    sub_1000095E8(v160, &unk_10118D180);
    sub_1000095E8(v161, &unk_10118D180);
    if (v112)
    {
      break;
    }

    v110 = v162;
LABEL_86:
    v28 = v146 + 1;
    v108 = v144 + v137;
    v109 = v143 - 1;
    v7 = v142 + v137;
    a4 = v141;
    if (v146 + 1 != v141)
    {
      goto LABEL_87;
    }

    a3 = v140;
    v33 = v135;
    if (v141 < v135)
    {
      goto LABEL_130;
    }

LABEL_34:
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v141 = a4;
    if (v57)
    {
      v31 = v139;
    }

    else
    {
      v31 = sub_100498FCC(0, *(v139 + 2) + 1, 1, v139);
    }

    a4 = *(v31 + 2);
    v58 = *(v31 + 3);
    v7 = a4 + 1;
    if (a4 >= v58 >> 1)
    {
      v31 = sub_100498FCC((v58 > 1), a4 + 1, 1, v31);
    }

    *(v31 + 2) = v7;
    v59 = &v31[16 * a4];
    v60 = v141;
    *(v59 + 4) = v33;
    *(v59 + 5) = v60;
    v159 = *v136;
    if (!v159)
    {
      goto LABEL_140;
    }

    if (a4)
    {
      while (2)
      {
        v61 = v7 - 1;
        if (v7 >= 4)
        {
          v66 = &v31[16 * v7 + 32];
          v67 = *(v66 - 64);
          v68 = *(v66 - 56);
          v72 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          if (v72)
          {
            goto LABEL_117;
          }

          v71 = *(v66 - 48);
          v70 = *(v66 - 40);
          v72 = __OFSUB__(v70, v71);
          v64 = v70 - v71;
          v65 = v72;
          if (v72)
          {
            goto LABEL_118;
          }

          v73 = &v31[16 * v7];
          v75 = *v73;
          v74 = *(v73 + 1);
          v72 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v72)
          {
            goto LABEL_120;
          }

          v72 = __OFADD__(v64, v76);
          v77 = v64 + v76;
          if (v72)
          {
            goto LABEL_123;
          }

          if (v77 >= v69)
          {
            v95 = &v31[16 * v61 + 32];
            v97 = *v95;
            v96 = *(v95 + 1);
            v72 = __OFSUB__(v96, v97);
            v98 = v96 - v97;
            if (v72)
            {
              goto LABEL_127;
            }

            if (v64 < v98)
            {
              v61 = v7 - 2;
            }
          }

          else
          {
LABEL_53:
            if (v65)
            {
              goto LABEL_119;
            }

            v78 = &v31[16 * v7];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_122;
            }

            v84 = &v31[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_126;
            }

            if (v82 + v87 < v64)
            {
              goto LABEL_67;
            }

            if (v64 < v87)
            {
              v61 = v7 - 2;
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            v62 = *(v31 + 4);
            v63 = *(v31 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
            goto LABEL_53;
          }

          v88 = &v31[16 * v7];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_67:
          if (v83)
          {
            goto LABEL_121;
          }

          v91 = &v31[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_124;
          }

          if (v94 < v82)
          {
            break;
          }
        }

        a4 = v61 - 1;
        if (v61 - 1 >= v7)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
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
          goto LABEL_133;
        }

        v99 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v100 = a3;
        a3 = v31;
        v7 = *&v31[16 * a4 + 32];
        v101 = v61;
        v102 = *&v31[16 * v61 + 40];
        v103 = v147;
        sub_10057C6AC(&v99[*(v145 + 9) * v7], &v99[*(v145 + 9) * *&v31[16 * v61 + 32]], &v99[*(v145 + 9) * v102], v159);
        v147 = v103;
        if (v103)
        {
          goto LABEL_113;
        }

        if (v102 < v7)
        {
          goto LABEL_115;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v104 = a3;
        }

        else
        {
          v104 = sub_10059F01C(a3);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_116;
        }

        a3 = v100;
        v105 = &v104[16 * a4];
        *(v105 + 4) = v7;
        *(v105 + 5) = v102;
        v163 = v104;
        sub_10059EF90(v101);
        v31 = v163;
        v7 = *(v163 + 2);
        if (v7 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = *(a3 + 1);
    v30 = v141;
    if (v141 >= v28)
    {
      goto LABEL_99;
    }
  }

  v121 = v158;
  if (v149)
  {
    v122 = v150;
    sub_10003D17C(v7, v150, &unk_10118D180);
    v110 = v162;
    swift_arrayInitWithTakeFrontToBack();
    sub_10003D17C(v122, v108, &unk_10118D180);
    v108 += v148;
    v7 += v148;
    v123 = __CFADD__(v121, 1);
    v111 = v121 + 1;
    if (v123)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
}

void sub_10057C6AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = type metadata accessor for Date();
  v8 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = v63 - v11;
  v81 = sub_10010FC20(&unk_10118D180);
  __chkstk_darwin(v81);
  v72 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v71 = v63 - v14;
  __chkstk_darwin(v15);
  v80 = v63 - v16;
  __chkstk_darwin(v17);
  v82 = v63 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v20;
  v85 = a1;
  v84 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v24;
    if (v24 >= 1)
    {
      v44 = -v20;
      v65 = (v8 + 8);
      v66 = (v8 + 16);
      v45 = v43;
      v77 = a4;
      v78 = a1;
      v67 = v44;
      while (2)
      {
        while (1)
        {
          v63[0] = v43;
          v46 = a2 + v44;
          v79 = a2 + v44;
          v68 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v85 = a2;
              v83 = v63[0];
              goto LABEL_58;
            }

            v64 = v43;
            v76 = a3 + v44;
            v69 = v45 + v44;
            v70 = a3;
            v48 = v82;
            sub_1000089F8(v45 + v44, v82, &unk_10118D180);
            sub_1000089F8(v46, v80, &unk_10118D180);
            v49 = v71;
            sub_1000089F8(v48, v71, &unk_10118D180);

            v50 = v81;
            v51 = *(v81 + 48);
            v52 = *v66;
            v53 = v73;
            v54 = v75;
            (*v66)(v73, v49 + v51, v75);
            sub_10057E180(v49 + v51, type metadata accessor for Cache.Entry);
            v55 = v72;
            sub_1000089F8(v80, v72, &unk_10118D180);

            v56 = *(v50 + 48);
            v57 = v74;
            v52(v74, v55 + v56, v54);
            sub_10057E180(v55 + v56, type metadata accessor for Cache.Entry);
            v58 = static Date.< infix(_:_:)();
            v59 = *v65;
            (*v65)(v57, v54);
            v59(v53, v54);
            sub_1000095E8(v80, &unk_10118D180);
            sub_1000095E8(v82, &unk_10118D180);
            if (v58)
            {
              break;
            }

            v60 = v69;
            v43 = v69;
            a3 = v76;
            v61 = v77;
            if (v70 < v45 || v76 >= v45)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v78;
              v46 = v79;
              v44 = v67;
            }

            else
            {
              a1 = v78;
              v46 = v79;
              v44 = v67;
              if (v70 != v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v45 = v43;
            v47 = v60 > v61;
            a2 = v68;
            if (!v47)
            {
              goto LABEL_56;
            }
          }

          a3 = v76;
          v62 = v77;
          if (v70 < v68 || v76 >= v68)
          {
            break;
          }

          a1 = v78;
          a2 = v79;
          v43 = v64;
          v44 = v67;
          if (v70 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v45 <= v62)
          {
            goto LABEL_56;
          }
        }

        a2 = v79;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v78;
        v43 = v64;
        v44 = v67;
        if (v45 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v85 = a2;
    v83 = v43;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = (a4 + v23);
    v83 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v67 = (v8 + 8);
      v68 = (v8 + 16);
      v76 = a3;
      v69 = v20;
      do
      {
        v77 = a4;
        v78 = a1;
        v79 = a2;
        v26 = v82;
        sub_1000089F8(a2, v82, &unk_10118D180);
        v27 = v80;
        sub_1000089F8(a4, v80, &unk_10118D180);
        v28 = v26;
        v29 = v71;
        sub_1000089F8(v28, v71, &unk_10118D180);

        v30 = v81;
        v31 = *(v81 + 48);
        v32 = *v68;
        v33 = v73;
        v34 = v75;
        (*v68)(v73, v29 + v31, v75);
        sub_10057E180(v29 + v31, type metadata accessor for Cache.Entry);
        v35 = v72;
        sub_1000089F8(v27, v72, &unk_10118D180);

        v36 = *(v30 + 48);
        v37 = v74;
        v32(v74, v35 + v36, v34);
        sub_10057E180(v35 + v36, type metadata accessor for Cache.Entry);
        v38 = static Date.< infix(_:_:)();
        v39 = *v67;
        (*v67)(v37, v34);
        v39(v33, v34);
        sub_1000095E8(v27, &unk_10118D180);
        sub_1000095E8(v82, &unk_10118D180);
        if (v38)
        {
          a4 = v77;
          v40 = v78;
          v41 = v69;
          a2 = v79 + v69;
          if (v78 < v79 || v78 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v76;
          }

          else
          {
            v42 = v76;
            if (v78 != v79)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v40 = v78;
          a2 = v79;
          v41 = v69;
          a4 = v77 + v69;
          if (v78 < v77 || v78 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v76;
          }

          else
          {
            v42 = v76;
            if (v78 != v77)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v84 = a4;
        }

        a1 = v40 + v41;
        v85 = a1;
      }

      while (a4 < v70 && a2 < v42);
    }
  }

LABEL_58:
  sub_10085E1B4(&v85, &v84, &v83);
}

void (*sub_10057CEDC(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for EditorialVideoArtworkFlavor();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10057DC70(v5);
  v5[12] = sub_10057D26C(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10057D018;
}

void sub_10057D018(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_10057D0B0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10057DCA4(v7);
  v7[9] = sub_10057D51C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10057F334;
}

uint64_t (*sub_10057D15C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10057DCA4(v7);
  v7[9] = sub_10057D73C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10057D208;
}

void sub_10057D20C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10057D26C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for EditorialVideoArtworkFlavor();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_1006BE63C(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1006C8730();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1006C1048(v19, a3 & 1);
    v14 = sub_1006BE63C(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_10057D41C;
}

void sub_10057D41C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_1006C782C(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_100408BAC(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

void (*sub_10057D51C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_100019C10(a2, a3);
  *(v11 + 9) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1006C9150();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1006C2194(v18, a4 & 1);
    v13 = sub_100019C10(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 16 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
  }

  else
  {
    v24 = 0;
    v25 = 2;
  }

  *v11 = v24;
  *(v11 + 8) = v25;
  return sub_10057D684;
}

void sub_10057D684(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 9);
  if (v3 == 2)
  {
    if (*(*a1 + 9))
    {
      v5 = v1[5];
      v6 = *v1[4];
      sub_10057E0C4(*(v6 + 48) + 16 * v5);
      sub_1004093C0(v5, v6);
    }
  }

  else
  {
    v8 = v1[4];
    v7 = v1[5];
    if (v4)
    {
      v9 = (*v8)[7] + 16 * v7;
      *v9 = v2;
      *(v9 + 8) = v3 & 1;
    }

    else
    {
      sub_1006C79B8(v7, v1[2], v1[3], v2, v3 & 1, *v8);
    }
  }

  free(v1);
}

void (*sub_10057D73C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for Cache.Entry(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_10010FC20(&qword_10118EB40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_100019C10(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_10057E118(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for Cache.Entry);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_10057DA18;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_1006C9E3C();
      goto LABEL_16;
    }

    sub_1006C36D4(v24, a4 & 1);
    v28 = sub_100019C10(a2, a3);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10057DA18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1000089F8(v5, v6, &qword_10118EB40);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_10057E118(v9, *(v2 + 6), type metadata accessor for Cache.Entry);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_10057E118(v13, v14, type metadata accessor for Cache.Entry);
        sub_1006C7C34(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1000089F8(v5, v17, &qword_10118EB40);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_10057E118(v9, *(v2 + 7), type metadata accessor for Cache.Entry);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_10057E118(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for Cache.Entry);
      goto LABEL_10;
    }
  }

  sub_1000095E8(v9, &qword_10118EB40);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_10057E0C4(*(v20 + 48) + 16 * v19);
    sub_100409C14(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_1000095E8(v23, &qword_10118EB40);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_10057DC70(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10057DC98;
}

uint64_t (*sub_10057DCA4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10057F32C;
}

uint64_t sub_10057DCCC(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_100019C10(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1006C3A4C(v15, v5 & 1);
    v10 = sub_100019C10(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1006CA094();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x8000000100E501D0;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      v26 = sub_100019C10(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1006C3A4C(v30, 1);
        v26 = sub_100019C10(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v38 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_10057E060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Cache.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057E118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10057E180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10057E1E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = type metadata accessor for Album();
  result = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v48 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v43 = v8 + 16;
  v44 = v10;
  v19 = a4 + 56;
  v45 = v8;
  v46 = result;
  v41 = 0;
  v42 = (v8 + 8);
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_13:
    v23 = v20 | (v11 << 6);
    v24 = *(v48 + 48);
    v25 = *(v45 + 72);
    v47 = v23;
    (*(v45 + 16))(v10, v24 + v25 * v23, v6);
    v26 = Album.id.getter();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, Hasher.init(_seed:)(), String.hash(into:)(), v30 = Hasher._finalize()(), v31 = -1 << *(a4 + 32), v32 = v30 & ~v31, ((*(v19 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v19 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v10 = v44;
      v6 = v46;
      result = (*v42)(v44, v46);
      v17 = v49;
    }

    else
    {
LABEL_22:

      v10 = v44;
      v6 = v46;
      result = (*v42)(v44, v46);
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v36 = __OFADD__(v41++, 1);
      v17 = v49;
      if (v36)
      {
        __break(1u);
LABEL_25:
        v37 = v48;

        return sub_1003B20F8(v40, v39, v41, v37);
      }
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_25;
    }

    v22 = *(v13 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10057E4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v10;
    v39 = v3;
    v37 = &v37;
    __chkstk_darwin(v12);
    v40 = &v37 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = v7 + 16;
    v44 = v7;
    v11 = a2 + 56;
    v41 = 0;
    v42 = (v7 + 8);
    v45 = v6;
    v46 = a1;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v22 = *(a1 + 48);
      v23 = *(v7 + 72);
      v47 = v21;
      v3 = v49;
      (*(v7 + 16))(v49, v22 + v23 * v21, v6);
      v24 = Album.id.getter();
      v26 = v25;
      if (*(a2 + 16) && (v3 = v24, Hasher.init(_seed:)(), String.hash(into:)(), v27 = Hasher._finalize()(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a2 + 48) + 16 * v29);
          v32 = *v31 == v3 && v31[1] == v26;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        v7 = v44;
        v16 = v48;
      }

      else
      {
LABEL_23:

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        *&v40[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        v33 = __OFADD__(v41++, 1);
        v7 = v44;
        v16 = v48;
        if (v33)
        {
          __break(1u);
LABEL_26:
          v34 = sub_1003B20F8(v40, v38, v41, a1);

          return v34;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_26;
      }

      v20 = *(v13 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();

  v34 = sub_10057B23C(v36, v10, a1, a2);

  return v34;
}

uint64_t sub_10057E934(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v39 = a1;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a3;
  v10 = *(a3 + 56);
  v38 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v46 = a4;
  v43 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_inProgressRequests;
  result = swift_beginAccess();
  v15 = 0;
  v16 = 0;
  v17 = (v11 + 63) >> 6;
  v44 = v7;
  v45 = v6;
  v41 = (v7 + 8);
  v42 = v7 + 16;
  while (2)
  {
    v40 = v15;
    while (1)
    {
      if (!v13)
      {
        v19 = v16;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v16 >= v17)
          {
            goto LABEL_26;
          }

          v20 = *(v38 + 8 * v16);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v49 = (v20 - 1) & v20;
            goto LABEL_14;
          }
        }

        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_14:
      v21 = v18 | (v16 << 6);
      v22 = *(v48 + 48);
      v23 = *(v44 + 72);
      v47 = v21;
      (*(v44 + 16))(v9, v22 + v23 * v21, v6);
      v24 = *(v46 + v43);

      v25 = v9;
      v26 = Album.id.getter();
      v28 = v27;
      if (!*(v24 + 16))
      {
        break;
      }

      v29 = v26;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v24 + 32);
      v32 = v30 & ~v31;
      if (((*(v24 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        break;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = (*(v24 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v24 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v9 = v25;
      v6 = v45;
      result = (*v41)(v25, v45);
      v13 = v49;
    }

LABEL_23:

    v9 = v25;
    v6 = v45;
    result = (*v41)(v25, v45);
    *(v39 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v15 = v40 + 1;
    v13 = v49;
    if (!__OFADD__(v40, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  v36 = v48;

  return sub_1003B20F8(v39, v37, v40, v36);
}

uint64_t sub_10057ECC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v35 = swift_slowAlloc();

      v33 = sub_10057B1A0(v35, v10, a1, a2);

      return v33;
    }
  }

  v37 = v10;
  v38 = v3;
  v36[1] = v36;
  __chkstk_darwin(v12);
  v39 = v36 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v39, v11);
  v13 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v14 = ~(-1 << v11);
  }

  else
  {
    v14 = -1;
  }

  v3 = v14 & *(a1 + 56);
  v43 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_inProgressRequests;
  swift_beginAccess();
  v15 = 0;
  v16 = 0;
  v10 = (v11 + 63) >> 6;
  v42 = v7 + 16;
  v41 = (v7 + 8);
  v46 = a1;
  v47 = a2;
  v44 = v7;
  v45 = v6;
  while (2)
  {
    v40 = v15;
    while (1)
    {
      if (!v3)
      {
        v18 = v16;
        while (1)
        {
          v16 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v16 >= v10)
          {
            goto LABEL_27;
          }

          v19 = *(v13 + 8 * v16);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v49 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

      v17 = __clz(__rbit64(v3));
      v49 = (v3 - 1) & v3;
LABEL_15:
      v20 = v17 | (v16 << 6);
      v21 = *(a1 + 48);
      v22 = *(v7 + 72);
      v48 = v20;
      v11 = v50;
      (*(v7 + 16))(v50, v21 + v22 * v20, v6);
      v23 = *(a2 + v43);

      v24 = Album.id.getter();
      v26 = v25;
      if (!*(v23 + 16))
      {
        break;
      }

      v27 = v24;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v23 + 32);
      v11 = v28 & ~v29;
      if (((*(v23 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        break;
      }

      v30 = ~v29;
      while (1)
      {
        v31 = (*(v23 + 48) + 16 * v11);
        v32 = *v31 == v27 && v31[1] == v26;
        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v11 = (v11 + 1) & v30;
        if (((*(v23 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v6 = v45;
      (*v41)(v50, v45);
      a1 = v46;
      a2 = v47;
      v7 = v44;
      v3 = v49;
    }

LABEL_24:

    v6 = v45;
    (*v41)(v50, v45);
    a2 = v47;
    *&v39[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
    v15 = v40 + 1;
    a1 = v46;
    v7 = v44;
    v3 = v49;
    if (!__OFADD__(v40, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_27:
  v33 = sub_1003B20F8(v39, v37, v40, a1);

  return v33;
}

uint64_t sub_10057F190(uint64_t a1)
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
  v10[1] = sub_10002F3F4;

  return sub_100579298(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10057F264()
{
  result = qword_1011929C0;
  if (!qword_1011929C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011929C0);
  }

  return result;
}

uint64_t sub_10057F2D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10057F348(uint64_t a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10057F824(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

void sub_10057F590()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for TVShow();
  sub_10057F824(&qword_101181C60, &type metadata accessor for TVShow);
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CFC0);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
}

Swift::Int sub_10057F688()
{
  Hasher.init(_seed:)();
  sub_10057F348(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10057F6CC()
{
  Hasher.init(_seed:)();
  sub_10057F348(v1);
  return Hasher._finalize()();
}

unint64_t sub_10057F70C()
{
  result = qword_101195A58;
  if (!qword_101195A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195A58);
  }

  return result;
}

unint64_t sub_10057F7A8(uint64_t a1)
{
  result = sub_10057F7D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10057F7D0()
{
  result = qword_101195B38;
  if (!qword_101195B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B38);
  }

  return result;
}

uint64_t sub_10057F824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10057F86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v19 = a3;
  v22 = a4;
  sub_1001109D0(&qword_101195B40);
  v8 = type metadata accessor for ModifiedContent();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_100008FE4(a2, v30);
  v23 = v30;
  v24 = a5;
  v25 = a1;
  static Alignment.center.getter();
  sub_10010FC20(&qword_101195B48);
  sub_100020674(&qword_101195B50, &qword_101195B48);
  v14 = v19;
  View.overlay<A>(alignment:content:)();
  v15 = sub_100020674(&qword_101195B58, &qword_101195B40);
  v28 = v14;
  v29 = v15;
  WitnessTable = swift_getWitnessTable();
  View.compositingGroup()();
  (*(v20 + 8))(v10, v8);
  v26 = WitnessTable;
  v27 = &protocol witness table for _CompositingGroupEffect;
  swift_getWitnessTable();
  sub_10057FC90();
  View.clipShape<A>(_:style:)();
  (*(v21 + 8))(v13, v11);
  return sub_100267584(v30);
}

uint64_t sub_10057FB98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000954C(a1, a1[3]);
  v6[3] = swift_getAssociatedTypeWitness();
  v6[4] = swift_getAssociatedConformanceWitness();
  sub_10001C8B8(v6);
  dispatch thunk of InsettableShape.inset(by:)();
  sub_100267528(v6, a3);
  *(a3 + 40) = 0;
  sub_100267584(v6);
  *(a3 + 48) = a2;
  *(a3 + 56) = 256;
}

unint64_t sub_10057FC90()
{
  result = qword_101195B60;
  if (!qword_101195B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B60);
  }

  return result;
}

uint64_t sub_10057FD38@<X0>(uint64_t *a1@<X8>)
{
  sub_10000954C(v1, v1[3]);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  sub_10001C8B8(a1);
  return dispatch thunk of InsettableShape.inset(by:)();
}

double sub_10057FDEC@<D0>(uint64_t a1@<X8>)
{
  sub_10000954C(v1, v1[3]);
  dispatch thunk of Shape.path(in:)();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_10057FEA4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

uint64_t sub_10057FF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057FC90();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10057FF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057FC90();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10057FFF8(uint64_t a1)
{
  v2 = sub_10057FC90();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_100580048()
{
  result = qword_101195B78;
  if (!qword_101195B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B78);
  }

  return result;
}

unint64_t sub_1005800A4()
{
  result = qword_101195B80;
  if (!qword_101195B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B80);
  }

  return result;
}

unint64_t sub_1005800FC()
{
  result = qword_101195B88;
  if (!qword_101195B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B88);
  }

  return result;
}

unint64_t sub_100580154()
{
  result = qword_101195B90;
  if (!qword_101195B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B90);
  }

  return result;
}

uint64_t sub_1005801A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005801F0(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_100580270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4031000000000000;
  *(a1 + 16) = 0;
  v4 = sub_10010FC20(&qword_101195BA8);
  sub_1005803FC(v1, a1 + *(v4 + 44));
  v5 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_10010FC20(&qword_101195BB0) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = [objc_opt_self() defaultCenter];
  v16 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v17 = sub_10010FC20(&qword_101195BB8);
  v18 = v16;
  NSNotificationCenter.publisher(for:object:)();

  v19 = swift_allocObject();
  v20 = *(v2 + 48);
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v2 + 64);
  *(v19 + 96) = *(v2 + 80);
  v21 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v21;
  v22 = (a1 + *(v17 + 56));
  *v22 = sub_10058128C;
  v22[1] = v19;
  return sub_100581294(v2, v24);
}

uint64_t sub_1005803FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v71 = sub_10010FC20(&qword_101195BC0);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v4 = &v67 - v3;
  v69 = sub_10010FC20(&qword_101195BC8);
  __chkstk_darwin(v69);
  v6 = &v67 - v5;
  v7 = sub_10010FC20(&qword_101195BD0);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v72 = sub_10010FC20(&qword_101195BD8);
  __chkstk_darwin(v72);
  v11 = &v67 - v10;
  v12 = sub_10010FC20(&qword_101195BE0);
  v75 = *(v12 - 8);
  __chkstk_darwin(v12);
  v74 = &v67 - v13;
  v14 = sub_10010FC20(&qword_101195BE8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v67 - v19;
  v20 = sub_10010FC20(&qword_101195BF0);
  __chkstk_darwin(v20 - 8);
  v76 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = *(a1 + 16);
  v78 = &v67 - v23;
  if (v24)
  {
    v25 = swift_allocObject();
    v68 = v14;
    v26 = *(a1 + 48);
    *(v25 + 48) = *(a1 + 32);
    *(v25 + 64) = v26;
    *(v25 + 80) = *(a1 + 64);
    *(v25 + 96) = *(a1 + 80);
    v27 = *(a1 + 16);
    *(v25 + 16) = *a1;
    *(v25 + 32) = v27;
    sub_100581294(a1, v81);
    sub_10010FC20(&qword_101195C00);
    v67 = v12;
    sub_1005813DC();
    Button.init(action:label:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v70 + 32))(v6, v4, v71);
    v28 = &v6[*(v69 + 36)];
    v29 = v81[5];
    *(v28 + 4) = v81[4];
    *(v28 + 5) = v29;
    *(v28 + 6) = v81[6];
    v30 = v81[1];
    *v28 = v81[0];
    *(v28 + 1) = v30;
    v31 = v81[3];
    *(v28 + 2) = v81[2];
    *(v28 + 3) = v31;
    v32 = &v9[*(v7 + 36)];
    v33 = *(sub_10010FC20(&qword_101195C20) + 28);
    v34 = enum case for ControlSize.large(_:);
    v35 = type metadata accessor for ControlSize();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    sub_10003D17C(v6, v9, &qword_101195BC8);
    v36 = [objc_opt_self() tertiarySystemFillColor];
    v37 = Color.init(_:)();
    LOBYTE(v32) = static Edge.Set.all.getter();
    sub_10003D17C(v9, v11, &qword_101195BD0);
    v38 = &v11[*(v72 + 36)];
    *v38 = v37;
    v38[8] = v32;
    sub_10058155C();
    v39 = v74;
    View.corner(_:)();
    sub_1000095E8(v11, &qword_101195BD8);
    v80 = *(a1 + 72);
    sub_10010FC20(&unk_101197960);
    State.wrappedValue.getter();
    LOBYTE(v32) = v79;
    KeyPath = swift_getKeyPath();
    v41 = swift_allocObject();
    v42 = (v32 & 1) == 0;
    v43 = v78;
    *(v41 + 16) = v42;
    (*(v75 + 32))(v17, v39, v67);
    v44 = v68;
    v45 = &v17[*(v68 + 36)];
    *v45 = KeyPath;
    v45[1] = sub_100239940;
    v45[2] = v41;
    v46 = v73;
    sub_10003D17C(v17, v73, &qword_101195BE8);
    sub_10003D17C(v46, v43, &qword_101195BE8);
    (*(v15 + 56))(v43, 0, 1, v44);
  }

  else
  {
    (*(v15 + 56))(&v67 - v23, 1, 1, v14);
  }

  v47 = *(a1 + 8);
  if (v47)
  {
    *&v80 = *a1;
    *(&v80 + 1) = v47;
    sub_100009838();

    v48 = Text.init<A>(_:)();
    v50 = v49;
    v52 = v51;
    LODWORD(v80) = static HierarchicalShapeStyle.secondary.getter();
    v47 = Text.foregroundStyle<A>(_:)();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_10011895C(v48, v50, v52 & 1);

    v59 = swift_getKeyPath();
    v60 = v56 & 1;
    sub_10021D0C0(v47, v54, v56 & 1);

    v61 = 1;
  }

  else
  {
    v54 = 0;
    v60 = 0;
    v58 = 0;
    v59 = 0;
    v61 = 0;
  }

  v62 = v78;
  v63 = v76;
  sub_100091A4C(v78, v76);
  v64 = v77;
  sub_100091A4C(v63, v77);
  v65 = v64 + *(sub_10010FC20(&qword_101195BF8) + 48);
  sub_1005812CC(v47, v54, v60, v58);
  sub_10058131C(v47, v54, v60, v58);
  *v65 = v47;
  *(v65 + 8) = v54;
  *(v65 + 16) = v60;
  *(v65 + 24) = v58;
  *(v65 + 32) = v59;
  *(v65 + 40) = v61;
  sub_1000095E8(v62, &qword_101195BF0);
  sub_10058131C(v47, v54, v60, v58);
  return sub_1000095E8(v63, &qword_101195BF0);
}

__n128 sub_100580D14@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_101195C18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  sub_10010FC20(&qword_10119A280);
  v6 = sub_1001109D0(&unk_1011A1100);
  v7 = sub_100238768();
  *&v12[0] = v6;
  *(&v12[0] + 1) = v7;
  swift_getOpaqueTypeConformance2();
  Label.init(title:icon:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v3 + 32))(a1, v5, v2);
  v8 = a1 + *(sub_10010FC20(&qword_101195C00) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_100580F18@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  if (qword_10117F888 != -1)
  {
    swift_once();
  }

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  sub_10011895C(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10011895C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100581084()
{
  Image.init(systemName:)();
  if (qword_10117F890 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  static Font.Weight.semibold.getter();
  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();
}

uint64_t sub_100581194()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_100014984(v1);
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

uint64_t sub_100581200()
{
  result = static Font.body.getter();
  qword_101195B98 = result;
  return result;
}

uint64_t sub_100581220()
{
  result = static Font.subheadline.getter();
  qword_101195BA0 = result;
  return result;
}

uint64_t sub_1005812CC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10021D0C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10058131C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10011895C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10058136C()
{

  return swift_deallocObject();
}

unint64_t sub_1005813DC()
{
  result = qword_101195C08;
  if (!qword_101195C08)
  {
    sub_1001109D0(&qword_101195C00);
    sub_100020674(&qword_101195C10, &qword_101195C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C08);
  }

  return result;
}

uint64_t sub_100581494(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.controlSize.setter();
}

unint64_t sub_10058155C()
{
  result = qword_101195C28;
  if (!qword_101195C28)
  {
    sub_1001109D0(&qword_101195BD8);
    sub_100581614();
    sub_100020674(&qword_101195C50, &qword_101195C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C28);
  }

  return result;
}

unint64_t sub_100581614()
{
  result = qword_101195C30;
  if (!qword_101195C30)
  {
    sub_1001109D0(&qword_101195BD0);
    sub_1005816CC();
    sub_100020674(&qword_101195C48, &qword_101195C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C30);
  }

  return result;
}

unint64_t sub_1005816CC()
{
  result = qword_101195C38;
  if (!qword_101195C38)
  {
    sub_1001109D0(&qword_101195BC8);
    sub_100020674(&qword_101195C40, &qword_101195BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C38);
  }

  return result;
}

uint64_t sub_100581784(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v94 = a6;
  v116 = a5;
  v112 = a4;
  v115 = a3;
  v124 = a2;
  v105 = a1;
  v93 = type metadata accessor for Song();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v9 - 8);
  v113 = &v91 - v10;
  v123 = type metadata accessor for Track();
  v117 = *(v123 - 8);
  v11 = __chkstk_darwin(v123);
  v114 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v91 - v13;
  v101 = sub_10010FC20(&qword_101187EB8);
  v100 = *(v101 - 1);
  __chkstk_darwin(v101);
  v99 = &v91 - v14;
  v15 = sub_10010FC20(&qword_101187EC8);
  v121 = *(v15 - 8);
  v122 = v15;
  __chkstk_darwin(v15);
  v98 = &v91 - v16;
  v17 = sub_10010FC20(&qword_101187ED0);
  v119 = *(v17 - 8);
  v120 = v17;
  __chkstk_darwin(v17);
  v109 = &v91 - v18;
  v19 = sub_10010FC20(&qword_101187ED8);
  v118 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v91 - v20;
  v22 = sub_10010FC20(&qword_101180C90);
  v23 = __chkstk_darwin(v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v91 - v26;
  v28 = sub_10010FC20(&qword_101187EE0);
  v95 = v28;
  v96 = *(v28 - 8);
  v29 = v96;
  __chkstk_darwin(v28);
  v31 = &v91 - v30;
  v32 = OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
  v33 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v33 - 8) + 56))(v7 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC5Music9TrackData__leadingNumberState;
  v127 = 0;
  LOBYTE(v128) = -2;
  v97 = sub_10010FC20(&qword_101187AF0);
  Published.init(initialValue:)();
  v35 = v28;
  v36 = v27;
  (*(v29 + 32))(v7 + v34, v31, v35);
  v37 = v7 + OBJC_IVAR____TtC5Music9TrackData__artist;
  v38 = type metadata accessor for AttributedString();
  (*(*(v38 - 8) + 56))(v27, 1, 1, v38);
  sub_1000089F8(v27, v25, &qword_101180C90);
  v108 = v25;
  v110 = v22;
  Published.init(initialValue:)();
  sub_1000095E8(v27, &qword_101180C90);
  v39 = *(v118 + 32);
  v104 = v37;
  v111 = v19;
  v39(v37, v21, v19);
  v40 = (v7 + OBJC_IVAR____TtC5Music9TrackData_album);
  *v40 = 0;
  v40[1] = 0;
  v41 = v7 + OBJC_IVAR____TtC5Music9TrackData__duration;
  v127 = 0;
  LOBYTE(v128) = 1;
  v42 = sub_10010FC20(&qword_101187648);
  v43 = v109;
  v102 = v42;
  Published.init(initialValue:)();
  v44 = *(v119 + 32);
  v103 = v41;
  v44(v41, v43, v120);
  v45 = OBJC_IVAR____TtC5Music9TrackData__previewID;
  v127 = 0;
  v128 = 0;
  v46 = sub_10010FC20(&unk_1011A49A0);
  v47 = v98;
  v107 = v46;
  Published.init(initialValue:)();
  v48 = *(v121 + 32);
  v109 = v45;
  v48(v7 + v45, v47, v122);
  v49 = OBJC_IVAR____TtC5Music9TrackData__contextMenuProvider;
  v127 = 0;
  v128 = 0;
  sub_10010FC20(&qword_101187B38);
  v50 = v99;
  Published.init(initialValue:)();
  (*(v100 + 32))(v7 + v49, v50, v101);
  v51 = OBJC_IVAR____TtC5Music9TrackData_socialContributor;
  v52 = type metadata accessor for SocialProfile();
  (*(*(v52 - 8) + 56))(v7 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtC5Music9TrackData_reactionsConfiguration;
  v54 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  (*(*(v54 - 8) + 56))(v7 + v53, 1, 1, v54);
  v55 = v105;
  v56 = COERCE_DOUBLE(Album.popularity(for:)()) >= 0.7;
  LOBYTE(v53) = v56 & ~v57;
  swift_beginAccess();
  LOBYTE(v125) = v53;
  Published.init(initialValue:)();
  swift_endAccess();
  v58 = Track.trackNumber.getter();
  if (v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = v58;
  }

  v61 = v59 & 1 | (v58 == 0);
  swift_beginAccess();
  (*(v96 + 8))(v7 + v34, v95);
  v125 = v60;
  LOBYTE(v126) = v61;
  Published.init(initialValue:)();
  swift_endAccess();
  v62 = v117;
  v63 = v106;
  v64 = v123;
  v101 = *(v117 + 16);
  v101(v106, v55, v123);
  v65 = v64;
  v100 = *(v62 + 88);
  LOBYTE(v64) = (v100)(v63, v64) == enum case for Track.musicVideo(_:);
  v106 = *(v62 + 8);
  (v106)(v63, v65);
  swift_beginAccess();
  LOBYTE(v125) = v64;
  Published.init(initialValue:)();
  swift_endAccess();
  v66 = sub_1005825B0();
  if (!v67)
  {
    v66 = Track.title.getter();
  }

  v68 = v66;
  v69 = v67;
  swift_beginAccess();
  v125 = v68;
  v126 = v69;
  Published.init(initialValue:)();
  swift_endAccess();
  sub_100582834(v112 & 1, v36);
  v70 = v104;
  swift_beginAccess();
  (*(v118 + 8))(v70, v111);
  sub_1000089F8(v36, v108, &qword_101180C90);
  Published.init(initialValue:)();
  sub_1000095E8(v36, &qword_101180C90);
  swift_endAccess();
  v71 = Track.duration.getter();
  LOBYTE(v69) = v72;
  v73 = v103;
  swift_beginAccess();
  (*(v119 + 8))(v73, v120);
  v125 = v71;
  LOBYTE(v126) = v69 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v74 = v113;
  Track.contentRating.getter();
  LOBYTE(v71) = TextBadge.init(for:isPlayable:)(v74, 1);
  swift_beginAccess();
  LOBYTE(v125) = v71;
  Published.init(initialValue:)();
  swift_endAccess();
  v75 = v114;
  v76 = v123;
  v101(v114, v55, v123);
  if ((v100)(v75, v76) == enum case for Track.song(_:))
  {
    (*(v117 + 96))(v75, v76);
    v77 = v92;
    v78 = v91;
    v79 = v93;
    (*(v92 + 32))(v91, v75, v93);
    v80 = Song.id.getter();
    v82 = v81;
    (*(v77 + 8))(v78, v79);
    v83 = v116;
    v84 = v106;
  }

  else
  {
    v84 = v106;
    (v106)(v75, v76);
    v80 = 0;
    v82 = 0;
    v83 = v116;
  }

  v85 = v109;
  swift_beginAccess();
  (*(v121 + 8))(&v85[v7], v122);
  v125 = v80;
  v126 = v82;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v125) = v115 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v83)
  {
    v86 = swift_allocObject();
    v87 = v94;
    *(v86 + 16) = v83;
    *(v86 + 24) = v87;
    v88 = sub_100584778;
  }

  else
  {
    v88 = 0;
    v86 = 0;
  }

  v127 = v88;
  v128 = v86;

  static Published.subscript.setter();
  v89 = type metadata accessor for Album();
  (*(*(v89 - 8) + 8))(v124, v89);
  v84(v55, v76);
  return v7;
}

uint64_t sub_1005825B0()
{
  v1 = v0;
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for Track.song(_:))
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  (*(v7 + 96))(v9, v6);
  (*(v3 + 32))(v5, v9, v2);
  v10 = Song.movementNumber.getter();
  if (v11)
  {
    goto LABEL_10;
  }

  v12 = Int.romanNumeral.getter(v10);
  v14 = v13;
  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (v16 = v12, v17 = Song.movementName.getter(), !v18))
  {

LABEL_10:
    v23 = Song.movementName.getter();
    goto LABEL_11;
  }

  v19 = v17;
  v20 = v18;
  v25[0] = v16;
  v25[1] = v14;
  v21._countAndFlagsBits = 8238;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v19;
  v22._object = v20;
  String.append(_:)(v22);

  v23 = v25[0];
LABEL_11:
  (*(v3 + 8))(v5, v2);
  return v23;
}

uint64_t sub_100582834@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = sub_100498A88(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100498A88((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v3[v5 + 32] = 0;
  }

  v6 = Album.artistName.getter();
  v8 = v7;
  if (v6 == Track.artistName.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100498A88(0, *(v3 + 2) + 1, 1, v3);
      }

      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        v3 = sub_100498A88((v11 > 1), v12 + 1, 1, v3);
      }

      *(v3 + 2) = v12 + 1;
      v3[v12 + 32] = 1;
    }
  }

  v13 = type metadata accessor for Track();
  BylineProviding.byline(with:)(v3, v13, &protocol witness table for Track, a2);
}

uint64_t sub_1005829F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100582A84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100582AF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100582B70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100582BE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100582C5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*sub_100582CD0())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_10058477C;
}

uint64_t sub_100582DC4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100582E4C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100582ED0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100582F50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100582FD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100583050(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &qword_101180C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &qword_101180C90);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &qword_101180C90);
}

uint64_t sub_100583180@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100583208()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10058328C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10058330C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100583380()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100583404(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10058477C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
  }

  sub_100030444(v1);

  return static Published.subscript.setter();
}

uint64_t sub_100583538(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v59 = a3;
  v7 = type metadata accessor for Song();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v52 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v9 - 8);
  v61 = v50 - v10;
  v11 = sub_10010FC20(&qword_101180C90);
  v12 = __chkstk_darwin(v11 - 8);
  v58 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v50 - v14;
  v16 = type metadata accessor for Track();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v62 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v50 - v20;
  v60 = a2;
  v22 = COERCE_DOUBLE(Album.popularity(for:)()) >= 0.7;
  v24 = v22 & ~v23;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v65) = v24;

  static Published.subscript.setter();
  v25 = Track.trackNumber.getter();
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v28 = v26 & 1 | (v25 == 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v27;
  LOBYTE(v66) = v28;

  static Published.subscript.setter();
  v56 = v17[2];
  v57 = v17 + 2;
  v56(v21, a1, v16);
  v55 = v17[11];
  v29 = v55(v21, v16) == enum case for Track.musicVideo(_:);
  v51 = v17;
  v50[0] = v17[1];
  v50[1] = v17 + 1;
  (v50[0])(v21, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v65) = v29;

  static Published.subscript.setter();
  v30 = sub_1005825B0();
  if (!v31)
  {
    v30 = Track.title.getter();
  }

  v32 = v30;
  v33 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v32;
  v66 = v33;

  static Published.subscript.setter();
  sub_100582834(v59 & 1, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v15, v58, &qword_101180C90);

  static Published.subscript.setter();
  sub_1000095E8(v15, &qword_101180C90);
  v34 = Track.duration.getter();
  v36 = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v34;
  LOBYTE(v66) = v36 & 1;

  static Published.subscript.setter();
  v37 = v61;
  Track.contentRating.getter();
  LOBYTE(v34) = TextBadge.init(for:isPlayable:)(v37, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v65) = v34;

  static Published.subscript.setter();
  v38 = v62;
  v56(v62, a1, v16);
  if (v55(v38, v16) == enum case for Track.song(_:))
  {
    (v51[12])(v38, v16);
    v40 = v52;
    v39 = v53;
    v41 = v54;
    (*(v53 + 32))(v52, v38, v54);
    v42 = Song.id.getter();
    v44 = v43;
    (*(v39 + 8))(v40, v41);
  }

  else
  {
    (v50[0])(v38, v16);
    v42 = 0;
    v44 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v42;
  v66 = v44;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v63;
  if (v63)
  {
    v46 = swift_allocObject();
    v47 = v64;
    *(v46 + 16) = v45;
    *(v46 + 24) = v47;
    v48 = sub_100584778;
  }

  else
  {
    v48 = 0;
    v46 = 0;
  }

  v65 = v48;
  v66 = v46;

  sub_100030444(v45);
  return static Published.subscript.setter();
}

uint64_t sub_100583C38()
{
  v1 = OBJC_IVAR____TtC5Music9TrackData__isPopular;
  v2 = sub_10010FC20(&unk_101189E60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music9TrackData_artworkInfo, &unk_10119F000);
  v4 = OBJC_IVAR____TtC5Music9TrackData__leadingNumberState;
  v5 = sub_10010FC20(&qword_101187EE0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC5Music9TrackData__showVideoIcon, v2);
  v6 = OBJC_IVAR____TtC5Music9TrackData__title;
  v7 = sub_10010FC20(&qword_101184258);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC5Music9TrackData__artist;
  v9 = sub_10010FC20(&qword_101187ED8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = OBJC_IVAR____TtC5Music9TrackData__duration;
  v11 = sub_10010FC20(&qword_101187ED0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC5Music9TrackData__explicitBadge;
  v13 = sub_10010FC20(&qword_101187F08);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC5Music9TrackData__previewID;
  v15 = sub_10010FC20(&qword_101187EC8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC5Music9TrackData__contextMenuProvider;
  v17 = sub_10010FC20(&qword_101187EB8);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music9TrackData_socialContributor, &qword_101186E00);
  v3(v0 + OBJC_IVAR____TtC5Music9TrackData__isProminent, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music9TrackData_reactionsConfiguration, &qword_1011A4740);
  return v0;
}

uint64_t sub_100583F78()
{
  sub_100583C38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackData()
{
  result = qword_101195CE0;
  if (!qword_101195CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100584024()
{
  sub_100005390(319, &qword_10119ED80);
  if (v0 <= 0x3F)
  {
    sub_10058440C(319, &qword_101195CF0, type metadata accessor for ArtworkImage.Info);
    if (v1 <= 0x3F)
    {
      sub_1000054CC(319, &qword_101187AE8, &qword_101187AF0);
      if (v2 <= 0x3F)
      {
        sub_100005390(319, &qword_101187AF8);
        if (v3 <= 0x3F)
        {
          sub_1000054CC(319, &qword_101187B00, &qword_101180C90);
          if (v4 <= 0x3F)
          {
            sub_1000054CC(319, &qword_101187B10, &qword_101187648);
            if (v5 <= 0x3F)
            {
              sub_100005390(319, &qword_101187B18);
              if (v6 <= 0x3F)
              {
                sub_1000054CC(319, &qword_101187B20, &unk_1011A49A0);
                if (v7 <= 0x3F)
                {
                  sub_1000054CC(319, &qword_101187B30, &qword_101187B38);
                  if (v8 <= 0x3F)
                  {
                    sub_10058440C(319, &qword_101195CF8, &type metadata accessor for SocialProfile);
                    if (v9 <= 0x3F)
                    {
                      sub_10058440C(319, &unk_101195D00, type metadata accessor for Tracklist.ReactionsConfiguration);
                      if (v10 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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

void sub_10058440C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1005844C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music9TrackData_album);

  return v1;
}

uint64_t (*sub_100584534())(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_100584768;
}

uint64_t sub_100584638()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1005846A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TrackData();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1005846E8(uint64_t a1)
{
  result = sub_100584710();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100584710()
{
  result = qword_101192B30;
  if (!qword_101192B30)
  {
    type metadata accessor for TrackData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192B30);
  }

  return result;
}

uint64_t sub_100584780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1005847F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100584874(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1005848A4(v1);
}

void sub_1005848A4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;

  static Published.subscript.setter();
  if (*(v1 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
  {
    sub_100585D2C();
    v4 = sub_100586A54();
    v5 = sub_100586FC8();
    WaveformPlayIndicator.mode.setter(v5);
  }
}

uint64_t sub_100584950()
{
  v1 = sub_10010FC20(&qword_101196140);
  v82 = *(v1 - 8);
  v83 = v1;
  __chkstk_darwin(v1);
  v81 = v66 - v2;
  v3 = sub_10010FC20(&qword_101196148);
  v86 = *(v3 - 8);
  v87 = v3;
  __chkstk_darwin(v3);
  v84 = v66 - v4;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v85 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = v66 - v8;
  v77 = sub_10010FC20(&qword_101196150);
  v76 = *(v77 - 1);
  __chkstk_darwin(v77);
  v75 = v66 - v9;
  v10 = sub_10010FC20(&qword_101196158);
  v79 = *(v10 - 8);
  v80 = v10;
  __chkstk_darwin(v10);
  v78 = v66 - v11;
  v72 = sub_10010FC20(&unk_101189DD0);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v66 - v12;
  v74 = sub_10010FC20(&qword_101183B30);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = v66 - v13;
  v14 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v14 - 8);
  v92 = v66 - v15;
  v16 = sub_10010FC20(&unk_101183D80);
  v67 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v66 - v17;
  v68 = sub_10010FC20(&qword_101189DE0);
  v91 = *(v68 - 8);
  __chkstk_darwin(v68);
  v20 = v66 - v19;
  v21 = sub_10010FC20(&qword_101196160);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v66 - v23;
  v25 = OBJC_IVAR____TtC5Music17PlaybackIndicator__nowPlaying;
  v97 = 0;
  sub_10010FC20(&qword_10118DA00);
  Published.init(initialValue:)();
  (*(v22 + 32))(v0 + v25, v24, v21);
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask) = 0;
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) = 0;
  v96 = v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_subscriptions;
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_subscriptions) = &_swiftEmptySetSingleton;
  v26 = OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext;
  v27 = type metadata accessor for PreviewPlaybackController.Context(0);
  v28 = *(*(v27 - 8) + 56);
  v93 = v0;
  v28(v0 + v26, 1, 1, v27);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v29 = qword_101218AC8;
  (*(*qword_101218AC8 + 456))();
  v30 = sub_100009F78(0, &qword_101182960);
  v31 = static OS_dispatch_queue.main.getter();
  v97 = v31;
  v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v33 = *(v32 - 8);
  v90 = *(v33 + 56);
  v34 = v33 + 56;
  v35 = v92;
  v90(v92, 1, 1, v32);
  v66[1] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  v95 = sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v35, &qword_101182140);

  v67[1](v18, v16);
  swift_allocObject();
  swift_weakInit();
  v67 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&unk_10118ACC0, &qword_101189DE0);

  v36 = v68;
  Publisher<>.sink(receiveValue:)();

  v37 = v36;
  v38 = v30;
  (*(v91 + 8))(v20, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v40 = v69;
  (*(*v29 + 504))(v39);
  v41 = static OS_dispatch_queue.main.getter();
  v97 = v41;
  v68 = v32;
  v91 = v34;
  v90(v35, 1, 1, v32);
  sub_100020674(&unk_101189E00, &unk_101189DD0);
  v42 = v71;
  v43 = v72;
  v44 = v38;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v35, &qword_101182140);

  (*(v70 + 8))(v40, v43);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_101183B70, &qword_101183B30);
  v45 = v74;
  Publisher<>.sink(receiveValue:)();

  (*(v73 + 8))(v42, v45);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10010FC20(&qword_1011819B0);
  v46 = v75;
  Published.projectedValue.getter();
  swift_endAccess();
  v47 = static OS_dispatch_queue.main.getter();
  v97 = v47;
  v48 = v92;
  v49 = v68;
  v50 = v90;
  v90(v92, 1, 1, v68);
  sub_100020674(&qword_101196168, &qword_101196150);
  v66[0] = v44;
  v51 = v78;
  v52 = v77;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v48, &qword_101182140);

  (*(v76 + 8))(v46, v52);
  swift_allocObject();
  swift_weakInit();
  v77 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_101196170, &qword_101196158);
  v53 = v80;
  Publisher<>.sink(receiveValue:)();

  (*(v79 + 8))(v51, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v54 = v49;
  v55 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();
  v56 = v85;
  NSNotificationCenter.publisher(for:object:)();
  sub_100587304();
  v57 = v81;
  v58 = v89;
  Publisher.merge(with:)();
  v59 = static OS_dispatch_queue.main.getter();
  v97 = v59;
  v50(v48, 1, 1, v54);
  sub_100020674(&qword_101196178, &qword_101196140);
  v60 = v83;
  v61 = v84;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v48, &qword_101182140);

  (*(v82 + 8))(v57, v60);
  swift_allocObject();
  v62 = v93;
  swift_weakInit();

  sub_100020674(&qword_101196180, &qword_101196148);
  v63 = v87;
  Publisher<>.sink(receiveValue:)();

  (*(v86 + 8))(v61, v63);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v64 = *(v88 + 8);
  v64(v56, v58);
  v64(v94, v58);
  return v62;
}

uint64_t sub_100585928(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v1;

    static Published.subscript.setter();
    if (*(v3 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
    {
      sub_100585D2C();
      v5 = sub_100586A54();
      v6 = sub_100586FC8();
      WaveformPlayIndicator.mode.setter(v6);
    }
  }

  return result;
}

uint64_t sub_100585A00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
    {
      sub_100585D2C();
      v1 = sub_100586A54();
      v2 = sub_100586FC8();
      WaveformPlayIndicator.mode.setter(v2);
    }
  }

  return result;
}

uint64_t sub_100585A94(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10119E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100587460(a1, v4);
    sub_100585B58(v4);
  }

  return result;
}

uint64_t sub_100585B58(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_10119E440);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext;
  swift_beginAccess();
  sub_1005874D0(a1, v1 + v6);
  swift_endAccess();
  sub_100587460(v1 + v6, v5);
  v7 = type metadata accessor for PreviewPlaybackController.Context(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1000095E8(a1, &unk_10119E440);
  }

  else
  {
    sub_1000095E8(v5, &unk_10119E440);
    if (*(v1 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView))
    {
      sub_100585D2C();
      v8 = sub_100586A54();
      v9 = sub_100586FC8();
      WaveformPlayIndicator.mode.setter(v9);
    }

    v5 = a1;
  }

  return sub_1000095E8(v5, &unk_10119E440);
}

uint64_t sub_100585CC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
    {
      sub_100585D2C();
    }
  }

  return result;
}

void sub_100585D2C()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_100586A54();
  v5 = [v4 window];

  if (!v5)
  {
LABEL_9:
    v13 = OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask;
    if (*(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask))
    {

      Task.cancel()();

      *(v0 + v13) = 0;
LABEL_11:

      return;
    }

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v25;
  if (v25 && (v7 = [v25 state], v6, v7 == 1) || (v8 = v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext, swift_beginAccess(), v9 = type metadata accessor for PreviewPlaybackController.Context(0), !(*(*(v9 - 8) + 48))(v8, 1, v9)) && *(v8 + *(v9 + 32)) == 2 || (v10 = objc_msgSend(v5, "windowScene")) != 0 && (v11 = v10, v12 = objc_msgSend(v10, "activationState"), v11, v12 == 2))
  {

    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask;
  if (!*(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask))
  {
    v15 = qword_10117F898;
    v16 = *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView);
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_101219020;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v18 = qword_101218AC8;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = v17;
    v20[6] = v16;
    v21 = v16;

    v22 = v17;
    v23 = sub_1001F4CB8(0, 0, v3, &unk_100ED43D8, v20);

    *(v0 + v14) = v23;
    goto LABEL_11;
  }
}

uint64_t sub_10058609C()
{
  v1 = OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask;
  if (*(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask))
  {

    Task.cancel()();
  }

  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC5Music17PlaybackIndicator__nowPlaying;
  v3 = sub_10010FC20(&qword_101196160);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext, &unk_10119E440);
  return v0;
}

uint64_t sub_1005861AC()
{
  sub_10058609C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackIndicator()
{
  result = qword_101196080;
  if (!qword_101196080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100586258()
{
  sub_100586348();
  if (v0 <= 0x3F)
  {
    sub_1005863AC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100586348()
{
  if (!qword_101196090)
  {
    sub_1001109D0(&qword_10118DA00);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101196090);
    }
  }
}

void sub_1005863AC()
{
  if (!qword_101196098)
  {
    type metadata accessor for PreviewPlaybackController.Context(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101196098);
    }
  }
}

id sub_100586404()
{
  result = sub_10027181C();
  qword_101219020 = result;
  return result;
}

uint64_t sub_100586424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_10010FC20(&qword_1011880F0);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011880F8);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10058655C, 0, 0);
}

uint64_t sub_10058655C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = (*(**(v0 + 24) + 296))();
  (*(*v4 + 104))(v4);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1005866AC;
  v6 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v6);
}

uint64_t sub_1005866AC()
{

  return _swift_task_switch(sub_1005867A8, 0, 0);
}

uint64_t sub_1005867A8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    v5 = *(v4 + 2);
    if (v5 >> 31)
    {
      __break(1u);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1004994DC(0, v5, 0, v4);
      }

      v3[13] = v4;
      v6 = v3[4];
      v7 = objc_allocWithZone(MRUWaveformData);
      LODWORD(v8) = 1195081728;
      v3[14] = [v7 initWithFFTSamples:v4 + 32 count:v5 sampleRate:v6 settings:v8];
      type metadata accessor for MainActor();
      v3[15] = static MainActor.shared.getter();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v10;
      a1 = sub_10058691C;
      a2 = v9;
      a3 = v11;
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    (*(v3[10] + 8))(v3[11], v3[9]);

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_10058691C()
{
  v1 = *(v0 + 112);

  WaveformPlayIndicator.waveform.setter(v1);

  return _swift_task_switch(sub_1005869A4, 0, 0);
}

uint64_t sub_1005869A4()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1005866AC;
  v2 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

id sub_100586A54()
{
  v1 = OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView);
  }

  else
  {
    v4 = sub_100586AB4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100586AB4()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_10010FC20(&unk_101182130);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10010FC20(&unk_101183B20);
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v11 = qword_101219020;
  v12 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator());
  v13 = WaveformPlayIndicator.init(settings:)(v11);
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10058742C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100029B94;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010B33A8;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    WaveformPlayIndicator.$isVisible.getter();
    sub_100009F78(0, &qword_101182960);
    v20 = static OS_dispatch_queue.main.getter();
    aBlock[0] = v20;
    v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_100020674(&qword_101184280, &unk_101182130);
    sub_1000206BC();
    v22 = v25;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v4, &qword_101182140);

    (*(v24 + 8))(v7, v22);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&unk_101182180, &unk_101183B20);
    v23 = v27;
    Publisher<>.sink(receiveValue:)();

    (*(v26 + 8))(v10, v23);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *(v1 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) = 1;

    return v18;
  }

  return result;
}

uint64_t sub_100586FC8()
{
  v1 = v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext;
  swift_beginAccess();
  v2 = type metadata accessor for PreviewPlaybackController.Context(0);
  if (!(*(*(v2 - 8) + 48))(v1, 1, v2) && *(v1 + *(v2 + 32)) == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 && (v3 = [v11 tracklist], v11, v4 = objc_msgSend(v3, "playingItem"), v3, v4))
  {
    [v4 duration];
    v5 = v12;
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11)
  {
    v6 = [v11 state];
  }

  else
  {
    v6 = 0;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v7 = (*(*qword_101218AC8 + 360))();
  v8 = [v7 route];

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = MPAVEndpointRoute.canReceiveAudioSamples.getter();

      if ((v5 & 1) == 0)
      {
        if (!v11)
        {
          return 0;
        }

        goto LABEL_21;
      }

      return 4;
    }
  }

  if (v5)
  {
    return 4;
  }

  v9 = 1;
  if (!v11)
  {
    return 0;
  }

LABEL_21:
  if (v6 == 4)
  {
    return 1;
  }

  if (v6 != 2)
  {
    return 0;
  }

  if (v9)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100587294()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100585D2C();
  }

  return result;
}

unint64_t sub_100587304()
{
  result = qword_101183B80;
  if (!qword_101183B80)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183B80);
  }

  return result;
}

uint64_t sub_100587364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100586424(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100587460(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119E440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005874D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119E440);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100587540(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    for (i = (result + 40); ; i += 2)
    {
      v4 = *i;
      v5[0] = *(i - 1);
      v5[1] = v4;

      sub_10058F1B4(v5);
      if (v1)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

id sub_1005875D0(unsigned __int8 a1)
{
  if (qword_10117F8A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100587910(a1);
  v4 = v3;
  swift_beginAccess();
  v5 = off_101196190;
  if (!*(off_101196190 + 2))
  {

    goto LABEL_7;
  }

  v6 = sub_100019C10(v2, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:
    swift_endAccess();
    v10 = [objc_opt_self() defaultStore];
    sub_100587910(a1);
    v11 = String._bridgeToObjectiveC()();

    v9 = [v10 BOOLForKey:v11];

    return v9;
  }

  v9 = *(v5[7] + v6);
  swift_endAccess();
  return v9;
}

uint64_t sub_100587718(uint64_t a1, unsigned __int8 a2)
{
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = 1 << *(a1 + 32);
  if (result == v6)
  {
    return 0;
  }

  else
  {
    v7 = result;
    v20 = a1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v6)
    {
      v9 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 36);
      sub_100198BF4(*(a1 + 48) + 96 * v7, v19);
      v11 = sub_1006B8F0C(v19[0], a2);
      result = sub_100198CAC(v19);
      if (v11)
      {
        return v7;
      }

      v8 = 1 << *(a1 + 32);
      if (v7 >= v8)
      {
        goto LABEL_24;
      }

      v12 = *(v4 + 8 * v9);
      if ((v12 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v13 = v12 & (-2 << (v7 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v20 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1000D8F7C(v7, v10, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_5;
          }
        }

        result = sub_1000D8F7C(v7, v10, 0);
      }

LABEL_5:
      v6 = 1 << *(a1 + 32);
      v7 = v8;
      if (v8 == v6)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t sub_100587910(unsigned __int8 a1)
{
  result = 0xD000000000000029;
  if (a1 - 3 >= 4)
  {
    if (a1 == 1)
    {
      return 0xD000000000000025;
    }

    else
    {
      _StringGuts.grow(_:)(17);
      if (a1)
      {
        if (a1 == 2)
        {
          v3 = 0xD000000000000029;
        }

        else
        {
          v3 = 0xD000000000000027;
        }

        if (a1 == 2)
        {
          v4 = "com.apple.Music.Tooltip.Sing";
        }

        else
        {
          v4 = "anslationAndTransliteration";
        }
      }

      else
      {
        v3 = 0xD00000000000002CLL;
        v4 = "llPlaylists";
      }

      v5 = v4 | 0x8000000000000000;
      String.append(_:)(*&v3);

      v6._countAndFlagsBits = 0x6F6E6B634173692ELL;
      v6._object = 0xEF64656764656C77;
      String.append(_:)(v6);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100587A3C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        v41 = (*(*qword_101218AC8 + 432))();
        if (v41)
        {
          v42 = v41;
          v43 = [v41 tracklist];

          [v43 transitionsActive];
        }

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v44 = String.init(localized:table:bundle:locale:comment:)();
        v46 = v45;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v53 = String.init(localized:table:bundle:locale:comment:)();
        v55 = v47;
        v48 = type metadata accessor for Tooltip.Configuration(0);
        v49 = (a2 + *(v48 + 28));
        *v49 = 0x78696D6F747561;
        v49[1] = 0xE700000000000000;
        v49[2] = 0;
        v50 = enum case for BubbleImage.image(_:);
        v51 = type metadata accessor for BubbleImage();
        v52 = *(v51 - 8);
        (*(v52 + 104))(v49, v50, v51);
        result = (*(v52 + 56))(v49, 0, 1, v51);
        *a2 = 7;
        *(a2 + 8) = v44;
        *(a2 + 16) = v46;
        v22 = (v48 + 32);
        v62 = 2;
        goto LABEL_17;
      }

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v6 = String.init(localized:table:bundle:locale:comment:)();
      v8 = v23;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v53 = String.init(localized:table:bundle:locale:comment:)();
      v55 = v24;
      v56 = type metadata accessor for Tooltip.Configuration(0);
      v25 = *(v56 + 28);
      v26 = type metadata accessor for BubbleImage();
      v62 = 1;
      result = (*(*(v26 - 8) + 56))(a2 + v25, 1, 1, v26);
      v13 = 6;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      if (a1 == 4)
      {
        v6 = String.init(localized:table:bundle:locale:comment:)();
        v8 = v9;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v53 = String.init(localized:table:bundle:locale:comment:)();
        v55 = v10;
        v56 = type metadata accessor for Tooltip.Configuration(0);
        v11 = *(v56 + 28);
        v12 = type metadata accessor for BubbleImage();
        v62 = 1;
        result = (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
        v13 = 4;
      }

      else
      {
        v6 = String.init(localized:table:bundle:locale:comment:)();
        v8 = v33;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v53 = String.init(localized:table:bundle:locale:comment:)();
        v55 = v34;
        v56 = type metadata accessor for Tooltip.Configuration(0);
        v35 = *(v56 + 28);
        v36 = type metadata accessor for BubbleImage();
        v62 = 1;
        result = (*(*(v36 - 8) + 56))(a2 + v35, 1, 1, v36);
        v13 = 5;
      }
    }

    goto LABEL_15;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v6 = String.init(localized:table:bundle:locale:comment:)();
      v8 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v53 = String.init(localized:table:bundle:locale:comment:)();
      v55 = v28;
      v56 = type metadata accessor for Tooltip.Configuration(0);
      v29 = (a2 + *(v56 + 28));
      *v29 = 0x69732E656C707061;
      v29[1] = 0xEA0000000000676ELL;
      v30 = enum case for BubbleImage.symbol(_:);
      v31 = type metadata accessor for BubbleImage();
      v32 = *(v31 - 8);
      (*(v32 + 104))(v29, v30, v31);
      v62 = 1;
      result = (*(v32 + 56))(v29, 0, 1, v31);
      *a2 = 1;
    }

    else
    {
      static ApplicationCapabilities.shared.getter(v63);
      sub_100014984(v63);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v6 = String.init(localized:table:bundle:locale:comment:)();
      v8 = v7;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v53 = String.init(localized:table:bundle:locale:comment:)();
      v55 = v54;
      v56 = type metadata accessor for Tooltip.Configuration(0);
      v57 = (a2 + *(v56 + 28));
      *v57 = 0xD000000000000012;
      v57[1] = 0x8000000100E3E630;
      v58 = enum case for BubbleImage.symbol(_:);
      v59 = type metadata accessor for BubbleImage();
      v60 = *(v59 - 8);
      (*(v60 + 104))(v57, v58, v59);
      result = (*(v60 + 56))(v57, 0, 1, v59);
      v62 = 0;
      *a2 = 0;
    }

    goto LABEL_16;
  }

  if (a1 != 2)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v37;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v53 = String.init(localized:table:bundle:locale:comment:)();
    v55 = v38;
    v56 = type metadata accessor for Tooltip.Configuration(0);
    v39 = *(v56 + 28);
    v40 = type metadata accessor for BubbleImage();
    v62 = 1;
    result = (*(*(v40 - 8) + 56))(a2 + v39, 1, 1, v40);
    v13 = 3;
LABEL_15:
    *a2 = v13;
LABEL_16:
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    v22 = (v56 + 32);
LABEL_17:
    *(a2 + 24) = v53;
    *(a2 + 32) = v55;
    goto LABEL_18;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = type metadata accessor for Tooltip.Configuration(0);
  v18 = (a2 + *(v17 + 28));
  *v18 = 0x616C706572616873;
  v18[1] = 0xE900000000000079;
  v19 = enum case for BubbleImage.symbol(_:);
  v20 = type metadata accessor for BubbleImage();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  v62 = 1;
  result = (*(v21 + 56))(v18, 0, 1, v20);
  *a2 = 2;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  v22 = (v17 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
LABEL_18:
  *(a2 + *v22) = v62;
  return result;
}

uint64_t sub_100588628()
{
  v1 = *(v0 + 80);

  off_101196190 = v1;

  return _swift_task_switch(sub_1005886AC, 0, 0);
}

uint64_t sub_1005886AC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10058870C(_BYTE *a1, uint64_t a2)
{
  v2 = 0xD000000000000029;
  v3 = *a1;
  v4 = 0xD00000000000002CLL;
  v5 = "llPlaylists";
  v6 = "ansliterationSing";
  v7 = 0xD00000000000003BLL;
  if (v3 != 6)
  {
    v7 = 0xD000000000000027;
    v6 = "anslationAndTransliteration";
  }

  v8 = "Tooltip.LyricsTranslation";
  v9 = 0xD00000000000002DLL;
  if (v3 != 4)
  {
    v9 = 0xD000000000000031;
    v8 = "Tooltip.LyricsTransliteration";
  }

  if (*a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = "com.apple.Music.Tooltip.Sing";
  if (v3 != 2)
  {
    v10 = "Tooltip.SharePlayTogether";
  }

  if (*a1)
  {
    v4 = 0xD00000000000001CLL;
    v5 = "Tooltip.FavoritingNowPlaying";
  }

  if (*a1 > 1u)
  {
    v5 = v10;
  }

  else
  {
    v2 = v4;
  }

  if (*a1 <= 3u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 3)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v14 = EnvironmentVariable.isEnabled.getter(v11, v12 | 0x8000000000000000, 0);

  if ((v14 & 1) == 0)
  {
    v27 = [objc_opt_self() defaultStore];
    sub_100587910(v3);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v27 BOOLForKey:v28];

    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000060E4(v30, qword_1011961A0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v33 = 136446466;
      if (v29)
      {
        v34 = 8756450;
      }

      else
      {
        v34 = 9215458;
      }

      v35 = sub_1000105AC(v34, 0xA300000000000000, &v47);

      *(v33 + 4) = v35;
      *(v33 + 12) = 2082;
      v36 = String.init<A>(describing:)();
      v38 = sub_1000105AC(v36, v37, &v47);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "👁️‍🗨️%{public}s %{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    v39 = sub_100587910(v3);
    if (*(*a2 + 16))
    {
      sub_100019C10(v39, v40);
      v42 = v41;

      if (v42)
      {
        return;
      }
    }

    else
    {
    }

    v43 = sub_100587910(v3);
    v45 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *a2;
    *a2 = 0x8000000000000000;
    sub_1006C5518(v29, v43, v45, isUniquelyReferenced_nonNull_native);

    *a2 = v47;

    return;
  }

  v15 = sub_100587910(v3);
  v17 = v16;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *a2;
  *a2 = 0x8000000000000000;
  sub_1006C5518(0, v15, v17, v18);

  *a2 = v47;

  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000060E4(v19, qword_1011961A0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315138;
    v24 = String.init<A>(describing:)();
    v26 = sub_1000105AC(v24, v25, &v47);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "🤖 Debugging Mode Active — Setting %s as non acknowledged", v22, 0xCu);
    sub_10000959C(v23);
  }
}

uint64_t sub_100588C1C(unsigned __int8 a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1011961A0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = 0xD00000000000002CLL;
    *v8 = 136446210;
    v11 = "llPlaylists";
    v33 = v9;
    v34 = 0x287069746C6F6F54;
    v35 = 0xE800000000000000;
    v12 = "ansliterationSing";
    v13 = 0xD00000000000003BLL;
    if (a1 != 6)
    {
      v13 = 0xD000000000000027;
      v12 = "anslationAndTransliteration";
    }

    v14 = "Tooltip.LyricsTranslation";
    v15 = 0xD00000000000002DLL;
    if (a1 != 4)
    {
      v15 = 0xD000000000000031;
      v14 = "Tooltip.LyricsTransliteration";
    }

    if (a1 <= 5u)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = "com.apple.Music.Tooltip.Sing";
    if (a1 != 2)
    {
      v16 = "Tooltip.SharePlayTogether";
    }

    if (a1)
    {
      v10 = 0xD00000000000001CLL;
      v11 = "Tooltip.FavoritingNowPlaying";
    }

    if (a1 > 1u)
    {
      v10 = 0xD000000000000029;
      v11 = v16;
    }

    if (a1 <= 3u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v13;
    }

    if (a1 <= 3u)
    {
      v18 = v11;
    }

    else
    {
      v18 = v12;
    }

    v19 = v18 | 0x8000000000000000;
    String.append(_:)(*&v17);

    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_1000105AC(v34, v35, &v33);

    *(v8 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "👁️‍🗨️ Marking %{public}s as acknowledged", v8, 0xCu);
    sub_10000959C(v9);
  }

  v22 = sub_100587910(a1);
  v24 = v23;
  if (qword_10117F8A0 != -1)
  {
    swift_once();
  }

  v25 = sub_100587910(a1);
  v27 = v26;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = off_101196190;
  off_101196190 = 0x8000000000000000;
  sub_1006C5518(1, v25, v27, isUniquelyReferenced_nonNull_native);

  off_101196190 = v33;
  swift_endAccess();
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  type metadata accessor for MainActor();
  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v22;
  v31[5] = v24;
  sub_1001F4CB8(0, 0, v4, &unk_100ED46F8, v31);
}

uint64_t sub_100589014(unsigned __int8 a1)
{
  v1 = 0xD000000000000029;
  v2 = 0xD00000000000002CLL;
  v3 = "llPlaylists";
  v4 = a1;
  v5 = "ansliterationSing";
  v6 = 0xD00000000000003BLL;
  if (a1 != 6)
  {
    v6 = 0xD000000000000027;
    v5 = "anslationAndTransliteration";
  }

  v7 = "Tooltip.LyricsTranslation";
  v8 = 0xD00000000000002DLL;
  if (a1 != 4)
  {
    v8 = 0xD000000000000031;
    v7 = "Tooltip.LyricsTransliteration";
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "com.apple.Music.Tooltip.Sing";
  if (a1 != 2)
  {
    v9 = "Tooltip.SharePlayTogether";
  }

  if (a1)
  {
    v2 = 0xD00000000000001CLL;
    v3 = "Tooltip.FavoritingNowPlaying";
  }

  if (a1 > 1u)
  {
    v10 = v9;
  }

  else
  {
    v1 = v2;
    v10 = v3;
  }

  if (a1 <= 3u)
  {
    v11 = v1;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 3)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12 | 0x8000000000000000;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0x287069746C6F6F54;
}

uint64_t sub_10058914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005891E4, v7, v6);
}

uint64_t sub_1005891E4()
{

  v1 = [objc_opt_self() defaultStore];
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:1 forKey:v2];

  v3 = *(v0 + 8);

  return v3();
}

Swift::Int sub_1005892A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(50 * v1);
  return Hasher._finalize()();
}

Swift::Int sub_100589324()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(50 * v1);
  return Hasher._finalize()();
}

uint64_t *sub_10058936C@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 50)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 100)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1005893B0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v38 = a1;
  v42 = a3;
  v4 = a2;
  v5 = sub_10010FC20(&qword_101196320);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v41 = sub_10010FC20(&qword_101196328);
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v31 - v9;
  v36 = sub_10010FC20(&qword_101196330);
  __chkstk_darwin(v36);
  v37 = &v31 - v11;
  v40 = sub_10010FC20(&qword_101196338);
  v12 = *(v40 - 8);
  __chkstk_darwin(v40);
  v14 = &v31 - v13;
  v15 = sub_10010FC20(&qword_101196308);
  __chkstk_darwin(v15 - 8);
  v39 = &v31 - v16;
  v17 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin(v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100587A3C(a2, v19);
  if (v4 == 7)
  {
    v34 = static VerticalAlignment.top.getter();
    v35 = &v31;
    __chkstk_darwin(v34);
    v33 = v30;
    __chkstk_darwin(v20);
    v32 = v14;
    sub_100030444(v38);
    sub_10010FC20(&qword_101196350);
    sub_10010FC20(&qword_101196358);
    v21 = sub_10010FC20(&qword_101196360);
    v22 = sub_100590ABC();
    v23 = sub_100590C1C();
    v24 = sub_100590D20();
    v30[2] = v23;
    v30[3] = v24;
    v30[0] = v21;
    v30[1] = v22;
    v25 = v32;
    BubbleTip.init(accessoryView:accessoryViewVerticalAlignment:titleView:subtitleView:actions:closeButtonHandler:)();
    v26 = v40;
    (*(v12 + 16))(v37, v25, v40);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101196340, &qword_101196338);
    sub_100020674(&qword_101196348, &qword_101196328);
    v27 = v39;
    _ConditionalContent<>.init(storage:)();
    (*(v12 + 8))(v25, v26);
  }

  else
  {
    sub_1000089F8(&v19[*(v17 + 28)], v7, &qword_101196320);
    sub_100030444(v38);

    BubbleTip.init<>(image:title:subtitle:actions:closeButtonHandler:)();
    v28 = v41;
    (*(v8 + 16))(v37, v10, v41);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101196340, &qword_101196338);
    sub_100020674(&qword_101196348, &qword_101196328);
    v27 = v39;
    _ConditionalContent<>.init(storage:)();
    (*(v8 + 8))(v10, v28);
  }

  sub_100590A3C(v27, v42);
  return sub_1005908C4(v19, type metadata accessor for Tooltip.Configuration);
}

uint64_t sub_1005899D4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  sub_10010FC20(&qword_101196350);
  v8[1] = 0x4044000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_100589B54()
{
  sub_100009838();

  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3 & 1;
  View.bubbleTipTitle(hasSubtitle:)();
  sub_10011895C(v0, v2, v4);
}

uint64_t sub_100589C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32))
  {
    sub_100009838();

    v3 = Text.init<A>(_:)();
    v5 = v4;
    v7 = v6 & 1;
    View.bubbleTipSubtitle()();
    sub_10011895C(v3, v5, v7);

    v8 = sub_10010FC20(&qword_1011963A8);
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    v10 = sub_10010FC20(&qword_1011963A8);
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

unint64_t sub_100589DCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005907F4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100589DFC@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000029;
  v3 = *v1;
  v4 = 0xD00000000000002CLL;
  v5 = "llPlaylists";
  v6 = "ansliterationSing";
  v7 = 0xD00000000000003BLL;
  if (v3 != 6)
  {
    v7 = 0xD000000000000027;
    v6 = "anslationAndTransliteration";
  }

  v8 = "Tooltip.LyricsTranslation";
  v9 = 0xD00000000000002DLL;
  result = 0xD000000000000031;
  if (v3 != 4)
  {
    v9 = 0xD000000000000031;
    v8 = "Tooltip.LyricsTransliteration";
  }

  if (*v1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = "com.apple.Music.Tooltip.Sing";
  if (v3 != 2)
  {
    v11 = "Tooltip.SharePlayTogether";
  }

  if (*v1)
  {
    v4 = 0xD00000000000001CLL;
    v5 = "Tooltip.FavoritingNowPlaying";
  }

  if (*v1 > 1u)
  {
    v5 = v11;
  }

  else
  {
    v2 = v4;
  }

  if (*v1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v2 = v7;
    v12 = v6;
  }

  *a1 = v2;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t sub_100589EF8()
{
  String.hash(into:)();
}

unint64_t sub_10058A004()
{
  v17._countAndFlagsBits = sub_10058A240(*v0);
  v17._object = v1;
  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  String.append(_:)(v17);

  _StringGuts.grow(_:)(25);

  if (v0[24])
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v0[24])
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x8000000100E50830;
  String.append(_:)(v7);

  _StringGuts.grow(_:)(23);

  if (v0[25])
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v0[25])
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x8000000100E50850;
  String.append(_:)(v12);

  _StringGuts.grow(_:)(27);
  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x8000000100E50870;
  String.append(_:)(v13);
  type metadata accessor for UIPopoverArrowDirection(0);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0xD000000000000015;
}

uint64_t sub_10058A240(unsigned __int8 a1)
{
  v2 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin(v2);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100587A3C(a1, v4);
  v5 = 0xD00000000000002CLL;
  v26 = 0x287069746C6F6F54;
  v27 = 0xE800000000000000;
  v6 = "llPlaylists";
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v7 = "ansliterationSing";
  v8 = 0xD00000000000003BLL;
  if (a1 != 6)
  {
    v8 = 0xD000000000000027;
    v7 = "anslationAndTransliteration";
  }

  v9 = "Tooltip.LyricsTranslation";
  v10 = 0xD00000000000002DLL;
  if (a1 != 4)
  {
    v10 = 0xD000000000000031;
    v9 = "Tooltip.LyricsTransliteration";
  }

  if (a1 <= 5u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = "com.apple.Music.Tooltip.Sing";
  if (a1 != 2)
  {
    v11 = "Tooltip.SharePlayTogether";
  }

  if (a1)
  {
    v5 = 0xD00000000000001CLL;
    v6 = "Tooltip.FavoritingNowPlaying";
  }

  if (a1 > 1u)
  {
    v5 = 0xD000000000000029;
    v6 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v8;
  }

  if (a1 <= 3u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 | 0x8000000000000000;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 8236;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  String.append(_:)(v25);

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v16._countAndFlagsBits = 80;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v24[15] = *(v4 + *(v2 + 32));
  _print_unlocked<A, B>(_:_:)();
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  String.append(_:)(v25);

  v18 = v4[2];
  v25._countAndFlagsBits = v4[1];
  v25._object = v18;

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  String.append(_:)(v25);

  v20 = v4[4];
  v25._countAndFlagsBits = v4[3];
  v25._object = v20;

  sub_10010FC20(&qword_1011815E0);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  sub_1005908C4(v4, type metadata accessor for Tooltip.Configuration);
  return v26;
}

Swift::Int sub_10058A500()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10058A628()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL sub_10058A744(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100587A3C(*a1, &v13 - v9);
  v11 = v10[*(v5 + 40)];
  sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a2, v7);
  LODWORD(a2) = v7[*(v5 + 40)];
  sub_1005908C4(v7, type metadata accessor for Tooltip.Configuration);
  return v11 < a2;
}

BOOL sub_10058A840(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100587A3C(*a2, &v13 - v9);
  v11 = v10[*(v5 + 40)];
  sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a1, v7);
  LODWORD(a1) = v7[*(v5 + 40)];
  sub_1005908C4(v7, type metadata accessor for Tooltip.Configuration);
  return v11 >= a1;
}

BOOL sub_10058A93C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100587A3C(*a1, &v13 - v9);
  v11 = v10[*(v5 + 40)];
  sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a2, v7);
  LODWORD(a2) = v7[*(v5 + 40)];
  sub_1005908C4(v7, type metadata accessor for Tooltip.Configuration);
  return v11 >= a2;
}

BOOL sub_10058AA38(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100587A3C(*a2, &v13 - v9);
  v11 = v10[*(v5 + 40)];
  sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a1, v7);
  LODWORD(a1) = v7[*(v5 + 40)];
  sub_1005908C4(v7, type metadata accessor for Tooltip.Configuration);
  return v11 < a1;
}

double sub_10058AB34()
{
  type metadata accessor for Tooltip.PresentationCoordinator();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = &_swiftEmptySetSingleton;
  *(v0 + 120) = 0;
  qword_101196198 = v0;
  return result;
}

void sub_10058AB84(uint64_t a1)
{
  if (byte_101196188 == 1)
  {
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_1011961A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "🤖 ToolTips are disabled; skipping presentation.", v4, 2u);
    }

    return;
  }

  swift_beginAccess();
  sub_1000089F8(a1, v29, &qword_101196300);
  sub_1000089F8(v1 + 16, &v31, &qword_101196300);
  if (v30)
  {
    sub_1000089F8(v29, v27, &qword_101196300);
    if (v32)
    {
      sub_100198C50(&v31, v26);
      v6 = sub_1006B8F0C(v27[0], v26[0]);
      sub_100198CAC(v26);
      sub_100198CAC(v27);
      sub_1000095E8(v29, &qword_101196300);
      if (v6)
      {
        return;
      }

      goto LABEL_17;
    }

    sub_100198CAC(v27);
  }

  else if (!v32)
  {
    sub_1000095E8(v29, &qword_101196300);
    return;
  }

  sub_1000095E8(v29, &qword_101196318);
LABEL_17:
  sub_1000089F8(v1 + 16, v27, &qword_101196300);
  if (v28)
  {
    sub_100198C50(v27, v29);
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011961A0);
    sub_100198BF4(v29, v27);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v10 = 136446210;
      v12 = sub_10058A004();
      v14 = v13;
      sub_100198CAC(v27);
      v15 = sub_1000105AC(v12, v14, v26);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Become active %{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    else
    {

      sub_100198CAC(v27);
    }
  }

  else
  {
    sub_1000095E8(v27, &qword_101196300);
    sub_1000089F8(a1, v27, &qword_101196300);
    if (!v28)
    {
      sub_1000095E8(v27, &qword_101196300);
      return;
    }

    sub_100198C50(v27, v29);
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1011961A0);
    sub_100198BF4(v29, v27);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136446210;
      v21 = sub_10058A004();
      v23 = v22;
      sub_100198CAC(v27);
      v24 = sub_1000105AC(v21, v23, v26);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Resigned active %{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    else
    {

      sub_100198CAC(v27);
    }

    sub_10058C4EC();
  }

  sub_100198CAC(v29);
}

void sub_10058B0DC(unsigned __int8 *a1)
{
  if (byte_101196188 == 1)
  {
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_1011961A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "🤖 ToolTips are disabled; skipping attempt to enqueue.", v4, 2u);
    }

    return;
  }

  v5 = v1;
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_1011961A0);
  sub_100198BF4(a1, v81);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v80[0] = v11;
    v12 = 0xD00000000000002CLL;
    *v10 = 136446210;
    v13 = "llPlaylists";
    v78 = 0x287069746C6F6F54;
    v79 = 0xE800000000000000;
    v14 = "anslationAndTransliteration";
    v15 = 0xD000000000000027;
    if (LOBYTE(v81[0]) == 6)
    {
      v15 = 0xD00000000000003BLL;
      v14 = "ansliterationSing";
    }

    v16 = "Tooltip.LyricsTranslation";
    v17 = 0xD00000000000002DLL;
    if (LOBYTE(v81[0]) != 4)
    {
      v17 = 0xD000000000000031;
      v16 = "Tooltip.LyricsTransliteration";
    }

    if (LOBYTE(v81[0]) <= 5u)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = "com.apple.Music.Tooltip.Sing";
    if (LOBYTE(v81[0]) != 2)
    {
      v18 = "Tooltip.SharePlayTogether";
    }

    if (LOBYTE(v81[0]))
    {
      v12 = 0xD00000000000001CLL;
      v13 = "Tooltip.FavoritingNowPlaying";
    }

    if (LOBYTE(v81[0]) > 1u)
    {
      v12 = 0xD000000000000029;
      v13 = v18;
    }

    if (LOBYTE(v81[0]) <= 3u)
    {
      v19 = v12;
    }

    else
    {
      v19 = v15;
    }

    if (LOBYTE(v81[0]) <= 3u)
    {
      v20 = v13;
    }

    else
    {
      v20 = v14;
    }

    v21 = v20 | 0x8000000000000000;
    String.append(_:)(*&v19);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    sub_100198CAC(v81);
    v23 = sub_1000105AC(v78, v79, v80);

    *(v10 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "↪️ Enqueuing %{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  else
  {

    sub_100198CAC(v81);
  }

  v24 = *a1;
  if (sub_1005875D0(*a1))
  {
    sub_100198BF4(a1, v81);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v80[0] = v28;
      v29 = 0xD00000000000002CLL;
      *v27 = 136446210;
      v30 = "llPlaylists";
      v78 = 0x287069746C6F6F54;
      v79 = 0xE800000000000000;
      v31 = "anslationAndTransliteration";
      v32 = 0xD000000000000027;
      if (LOBYTE(v81[0]) == 6)
      {
        v32 = 0xD00000000000003BLL;
        v31 = "ansliterationSing";
      }

      v33 = "Tooltip.LyricsTranslation";
      v34 = 0xD00000000000002DLL;
      if (LOBYTE(v81[0]) != 4)
      {
        v34 = 0xD000000000000031;
        v33 = "Tooltip.LyricsTransliteration";
      }

      if (LOBYTE(v81[0]) <= 5u)
      {
        v32 = v34;
        v31 = v33;
      }

      v35 = "com.apple.Music.Tooltip.Sing";
      if (LOBYTE(v81[0]) != 2)
      {
        v35 = "Tooltip.SharePlayTogether";
      }

      if (LOBYTE(v81[0]))
      {
        v29 = 0xD00000000000001CLL;
        v30 = "Tooltip.FavoritingNowPlaying";
      }

      if (LOBYTE(v81[0]) > 1u)
      {
        v29 = 0xD000000000000029;
        v30 = v35;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v36 = v29;
      }

      else
      {
        v36 = v32;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v37 = v30;
      }

      else
      {
        v37 = v31;
      }

      v38 = v37 | 0x8000000000000000;
      String.append(_:)(*&v36);

      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      sub_100198CAC(v81);
      v40 = sub_1000105AC(v78, v79, v80);

      *(v27 + 4) = v40;
      v41 = "↪️👁️‍🗨️ %{public}s had already been acknowledged by the user. Ignoring.";
LABEL_75:
      _os_log_impl(&_mh_execute_header, v25, v26, v41, v27, 0xCu);
      sub_10000959C(v28);

      return;
    }

    goto LABEL_76;
  }

  swift_beginAccess();
  sub_1000089F8(v5 + 16, v81, &qword_101196300);
  if (*(&v81[0] + 1))
  {
    sub_100198BF4(v81, &v78);
    sub_1000095E8(v81, &qword_101196300);
    v42 = v78;
    sub_100198CAC(&v78);
    if (sub_1006B8F0C(v42, v24))
    {
      sub_100198BF4(a1, v81);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v77[0] = v28;
        v43 = 0xD00000000000002CLL;
        *v27 = 136446210;
        v44 = "llPlaylists";
        v78 = 0x287069746C6F6F54;
        v79 = 0xE800000000000000;
        v45 = "anslationAndTransliteration";
        v46 = 0xD000000000000027;
        if (LOBYTE(v81[0]) == 6)
        {
          v46 = 0xD00000000000003BLL;
          v45 = "ansliterationSing";
        }

        v47 = "Tooltip.LyricsTranslation";
        v48 = 0xD00000000000002DLL;
        if (LOBYTE(v81[0]) != 4)
        {
          v48 = 0xD000000000000031;
          v47 = "Tooltip.LyricsTransliteration";
        }

        if (LOBYTE(v81[0]) <= 5u)
        {
          v46 = v48;
          v45 = v47;
        }

        v49 = "com.apple.Music.Tooltip.Sing";
        if (LOBYTE(v81[0]) != 2)
        {
          v49 = "Tooltip.SharePlayTogether";
        }

        if (LOBYTE(v81[0]))
        {
          v43 = 0xD00000000000001CLL;
          v44 = "Tooltip.FavoritingNowPlaying";
        }

        if (LOBYTE(v81[0]) > 1u)
        {
          v43 = 0xD000000000000029;
          v44 = v49;
        }

        if (LOBYTE(v81[0]) <= 3u)
        {
          v50 = v43;
        }

        else
        {
          v50 = v46;
        }

        if (LOBYTE(v81[0]) <= 3u)
        {
          v51 = v44;
        }

        else
        {
          v51 = v45;
        }

        v52 = v51 | 0x8000000000000000;
        String.append(_:)(*&v50);

        v53._countAndFlagsBits = 41;
        v53._object = 0xE100000000000000;
        String.append(_:)(v53);
        v54 = v78;
        v55 = v79;
        sub_100198CAC(v81);
        v56 = sub_1000105AC(v54, v55, v77);

        *(v27 + 4) = v56;
        v41 = "↪️🤷‍♂️ %{public}s is currently being presented. Ignoring.";
        goto LABEL_75;
      }

LABEL_76:

      sub_100198CAC(v81);
      return;
    }
  }

  else
  {
    sub_1000095E8(v81, &qword_101196300);
  }

  swift_beginAccess();
  sub_100195260(a1, v81);
  swift_endAccess();
  v57 = *(&v81[0] + 1);
  sub_1000095E8(v81, &qword_101196300);
  if (v57)
  {
    sub_100198BF4(a1, v81);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v77[0] = v61;
      v62 = 0xD00000000000002CLL;
      *v60 = 136446210;
      v63 = "llPlaylists";
      v78 = 0x287069746C6F6F54;
      v79 = 0xE800000000000000;
      v64 = "anslationAndTransliteration";
      v65 = 0xD000000000000027;
      if (LOBYTE(v81[0]) == 6)
      {
        v65 = 0xD00000000000003BLL;
        v64 = "ansliterationSing";
      }

      v66 = "Tooltip.LyricsTranslation";
      v67 = 0xD00000000000002DLL;
      if (LOBYTE(v81[0]) != 4)
      {
        v67 = 0xD000000000000031;
        v66 = "Tooltip.LyricsTransliteration";
      }

      if (LOBYTE(v81[0]) <= 5u)
      {
        v65 = v67;
        v64 = v66;
      }

      v68 = "com.apple.Music.Tooltip.Sing";
      if (LOBYTE(v81[0]) != 2)
      {
        v68 = "Tooltip.SharePlayTogether";
      }

      if (LOBYTE(v81[0]))
      {
        v62 = 0xD00000000000001CLL;
        v63 = "Tooltip.FavoritingNowPlaying";
      }

      if (LOBYTE(v81[0]) > 1u)
      {
        v62 = 0xD000000000000029;
        v63 = v68;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v69 = v62;
      }

      else
      {
        v69 = v65;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v70 = v63;
      }

      else
      {
        v70 = v64;
      }

      v71 = v70 | 0x8000000000000000;
      String.append(_:)(*&v69);

      v72._countAndFlagsBits = 41;
      v72._object = 0xE100000000000000;
      String.append(_:)(v72);
      v73 = v78;
      v74 = v79;
      sub_100198CAC(v81);
      v75 = sub_1000105AC(v73, v74, v77);

      *(v60 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v58, v59, "↪️🤔 %{public}s already had a queued presentation. Replacing it with the new one.", v60, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      sub_100198CAC(v81);
    }
  }

  sub_100198BF4(a1, &v78);
  swift_beginAccess();
  sub_1003B2D98(v81, &v78);
  sub_100198CAC(v81);
  swift_endAccess();
  sub_10058C4EC();
}
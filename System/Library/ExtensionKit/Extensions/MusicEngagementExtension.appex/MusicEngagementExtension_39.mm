void closure #6 in WaveformPlayIndicator.reflectChange(from:to:)(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = WaveformPlayIndicator.bars.getter();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setBackgroundColor:v5];
  }

LABEL_10:

  if (a2 == 3)
  {
    v12 = objc_opt_self();
    v13 = *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v13 animationDuration];
    v15 = v14;
    [v13 springDamping];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    aBlock[4] = closure #1 in WaveformPlayIndicator.animateWaveform()partial apply;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_136_0;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    [v12 animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:v15 options:0.0 animations:v17 completion:0.0];
    _Block_release(v19);
  }
}

uint64_t closure #7 in WaveformPlayIndicator.reflectChange(from:to:)(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #7 in WaveformPlayIndicator.reflectChange(from:to:);
  *(v5 + 24) = v4;
  swift_beginAccess();
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0);
    *(a2 + 24) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
  }

  v10 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2];
  v9 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[3];
  if (v10 >= v9 >> 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0((v9 > 1), v10 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0);
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2] = (v10 + 1);
  v11 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2 * v10];
  v11[4] = partial apply for closure #2 in ActionMenuView.body.getter;
  v11[5] = v5;
  *(a2 + 24) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
  swift_endAccess();

  return AnimationGroup.startAnimation()();
}

id closure #1 in WaveformPlayIndicator.animateWaveform()(char *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v3, "layoutSubviews");
  if (!*&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    return WaveformPlayIndicator.layoutBarsToWaveform()();
  }

  return result;
}

Swift::Void __swiftcall WaveformPlayIndicator.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    WaveformPlayIndicator.layoutBarsToWaveform()();
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.pulse()()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v61);
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  Height = CGRectGetHeight(v62);
  v5 = &v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  swift_beginAccess();
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  type metadata accessor for AnimationGroup();
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = (v8 + 16);
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v45 = (v8 + 24);
  v53 = v7;
  v52 = v6;
  v10 = WaveformPlayIndicator.bars.getter();
  v11 = v10;
  v46 = v8;
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v3 = Width / *&v3 * 0.5;
    Height = Height * 0.7;
    Width = 0.11;
    v48 = i;
    v49 = v11;
    v47 = v9;
    while (1)
    {
      if (v51)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v54 = v13 + 1;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v16 timingParameters:0.25];

      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v52;
      *(v18 + 32) = Height;
      v59 = partial apply for closure #1 in WaveformPlayIndicator.pulse();
      v60 = v18;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = thunk for @escaping @callee_guaranteed () -> ();
      v58 = &block_descriptor_109_0;
      v19 = _Block_copy(&aBlock);
      v20 = v52;
      v21 = v15;

      [v17 addAnimations:v19];
      _Block_release(v19);
      v22 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v23 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v22 timingParameters:0.25];

      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v53;
      *(v24 + 32) = v3;
      v59 = partial apply for closure #2 in WaveformPlayIndicator.pulse();
      v60 = v24;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = thunk for @escaping @callee_guaranteed () -> ();
      v58 = &block_descriptor_115;
      v25 = _Block_copy(&aBlock);
      v26 = v53;
      v27 = v21;

      [v23 addAnimations:v25];
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      v59 = partial apply for closure #3 in WaveformPlayIndicator.pulse();
      v60 = v28;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v9 = v47;
      v57 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v58 = &block_descriptor_121_0;
      v29 = _Block_copy(&aBlock);
      v30 = v23;

      [v17 addCompletion:v29];
      _Block_release(v29);
      swift_beginAccess();
      v31 = *v47;
      v32 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        *v47 = v31;
      }

      v35 = v31[2];
      v34 = v31[3];
      if (v35 >= v34 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
      }

      v31[2] = (v35 + 1);
      v36 = &v31[2 * v35];
      v36[4] = v32;
      *(v36 + 5) = v13 * 0.1;
      *v47 = v31;
      swift_endAccess();

      ++v13;
      v11 = v49;
      if (v54 == v48)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for closure #4 in WaveformPlayIndicator.pulse();
  *(v38 + 24) = v37;
  swift_beginAccess();
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = *v45;
  v40 = v1;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v45 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
  if ((v41 & 1) == 0)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0);
    *v45 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
  }

  v43 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2];
  v42 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[3];
  if (v43 >= v42 >> 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0((v42 > 1), v43 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0);
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2] = (v43 + 1);
  v44 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2 * v43];
  v44[4] = partial apply for closure #2 in ActionMenuView.body.getter;
  v44[5] = v38;
  *(v46 + 24) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
  swift_endAccess();

  *&v40[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v46;

  AnimationGroup.startAnimation()();
}

uint64_t closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask(), v7, v6);
}

uint64_t closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask()()
{
  result = static Task<>.isCancelled.getter();
  if (result)
  {

    v2 = v0[1];

    return v2();
  }

  v3 = *(v0[2] + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  v4 = 100 * v3;
  if ((v3 * 100) >> 64 != (100 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = __OFADD__(v4, 500);
  v6 = v4 + 500;
  if (v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __OFADD__(v6, 600);
  v7 = v6 + 600;
  v0[9] = v7;
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = 1000000000000000 * v7;
  v9 = (v7 * 0x38D7EA4C68000uLL) >> 64;
  WaveformPlayIndicator.pulse()();
  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask();

  return specialized Clock.sleep(for:tolerance:)(v8, v9, 0, 0, 1);
}

{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask();
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask();
  }

  return _swift_task_switch(v10, v8, v9);
}

{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[9];
    WaveformPlayIndicator.pulse()();
    static Clock<>.continuous.getter();
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask();

    return specialized Clock.sleep(for:tolerance:)(1000000000000000 * v3, (v3 * 0x38D7EA4C68000uLL) >> 64, 0, 0, 1);
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.tintColorDidChange()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      goto LABEL_15;
    }

    v3 = v2;
    v4 = WaveformPlayIndicator.bars.getter();
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        if (v6 >= 1)
        {
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
            [v8 setBackgroundColor:v3];
          }

          goto LABEL_12;
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

LABEL_12:
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.didMoveToWindow()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  static Published.subscript.setter();
  WaveformPlayIndicator.isVisible.didset(v3);
}

uint64_t WaveformPlayIndicator.isVisible.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  return WaveformPlayIndicator.isVisible.didset(v3);
}

uint64_t WaveformPlayIndicator.isVisible.didset(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v3 == 1)
    {
      return WaveformPlayIndicator.layoutBarsToWaveform()();
    }
  }

  return result;
}

uint64_t WaveformPlayIndicator.isVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WaveformPlayIndicator.isVisible : WaveformPlayIndicator@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for WaveformPlayIndicator.isVisible : WaveformPlayIndicator(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  return WaveformPlayIndicator.isVisible.didset(v4);
}

uint64_t (*WaveformPlayIndicator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = *(a1 + 9);
  return WaveformPlayIndicator.isVisible.modify;
}

uint64_t WaveformPlayIndicator.isVisible.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  static Published.subscript.getter();

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  static Published.subscript.setter();
  return WaveformPlayIndicator.isVisible.didset(v4);
}

uint64_t WaveformPlayIndicator.$isVisible.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WaveformPlayIndicator.$isVisible.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WaveformPlayIndicator.$isVisible.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

void WaveformPlayIndicator.createBars()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      v2 = [objc_allocWithZone(UIView) init];
      v3 = [v2 layer];
      [v3 setCornerCurve:kCACornerCurveContinuous];

      v4 = [v2 layer];
      [v4 setAllowsEdgeAntialiasing:1];

      v5 = [v2 tintColor];
      [v2 setBackgroundColor:v5];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WaveformPlayIndicator@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t AnimationGroup.add(animator:startDelay:animation:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v16[4] = a2;
    v16[5] = a3;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed () -> ();
    v16[3] = &block_descriptor_63_2;
    v8 = _Block_copy(v16);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a2);

    [a1 addAnimations:v8];
    _Block_release(v8);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 16);
  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *(v4 + 16) = v9;
  }

  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
  }

  v9[2] = (v13 + 1);
  v14 = &v9[2 * v13];
  v14[4] = v10;
  *(v14 + 5) = a4;
  *(v4 + 16) = v9;
  return swift_endAccess();
}

uint64_t AnimationGroup.startAnimation()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v24 = v0;
    v25 = v3;
    v26 = v2;

    v9 = (v23 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay:v11];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v36 = partial apply for closure #1 in AnimationGroup.startAnimation();
      v37 = v13;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v35 = &block_descriptor_57_0;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion:v14];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v25;
    v2 = v26;
    v1 = v24;
  }

  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
  v26 = static OS_dispatch_queue.main.getter();
  v36 = partial apply for closure #2 in AnimationGroup.startAnimation();
  v37 = v1;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_60;
  v17 = _Block_copy(&aBlock);

  v18 = v27;
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0, &_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
  v19 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v26;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v28 + 8))(v18, v29);
}

uint64_t closure #2 in AnimationGroup.startAnimation()(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t AnimationGroup.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void one-time initialization function for assetURL()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static BouncyBarsAsset.assetURL);
  v5 = __swift_project_value_buffer(v0, static BouncyBarsAsset.assetURL);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v5, v4, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t BouncyBarsAsset.init()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = xmmword_100507B80;
  *(v1 + 32) = 0x4030000000000000;
  if (one-time initialization token for assetURL != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, static BouncyBarsAsset.assetURL);
  (*(v3 + 16))(v5, v6, v2);
  *(v1 + 40) = specialized BouncyBarsAsset.MicaBundle.init(path:)(v5);
  *(v1 + 48) = v7;
  return v1;
}

id BouncyBarsAsset.createAnimations(variant:barIndex:)(uint64_t a1, unint64_t a2)
{
  BouncyBarsAsset.getBaseAnimation(variant:barIndex:)(a1, a2);
  if (!v3)
  {
LABEL_25:
    if (one-time initialization token for logger != -1)
    {
LABEL_43:
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static BouncyBarsAsset.logger);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "BouncyBars asset does not have expected layers / animations", v36, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = [v3 values];
  if (!v5)
  {

    goto LABEL_25;
  }

  v6 = v5;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAKeyframeAnimation);
  swift_dynamicCast();
  v8 = v49;
  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v45 = v49;
  v43 = v4;
  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v44 = v49;
  v46 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v46 + 32;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      *&v49 = v10;
      outlined init with copy of Any(v11, &v49 + 8);
      v52 = v49;
      v53 = v50;
      v54 = v51;
      if (!v51)
      {
        goto LABEL_31;
      }

      v47 = v49;
      outlined init with take of Any((&v52 + 8), &v49);
      if (!swift_dynamicCast())
      {
        swift_bridgeObjectRelease_n();
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static BouncyBarsAsset.logger);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "BouncyBars asset does not have expected layers / animations", v42, 2u);
        }

        return 0;
      }

      v12 = v48 / 100.0 * v2[4];
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v12;
      result = [v8 values];
      if (!result)
      {
        break;
      }

      v14 = result;
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v47 >= *(v15 + 16))
      {
        goto LABEL_39;
      }

      v16 = v15 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v16 + 32);
      outlined init with take of Any(&v49, (v16 + 32));
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 setValues:isa];

      v18 = v45;
      v19 = String._bridgeToObjectiveC()();
      [v18 setKeyPath:v19];

      v20 = v2[3];
      v21 = v20 + v2[2];
      if (v20 > v21)
      {
        goto LABEL_40;
      }

      v22 = v20 + v48 / 100.0 * (v21 - v20);
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22;
      result = [v18 values];
      if (!result)
      {
        goto LABEL_45;
      }

      v23 = result;
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      }

      if (v47 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v25 = v24 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v25 + 32);
      outlined init with take of Any(&v49, (v25 + 32));
      v26 = Array._bridgeToObjectiveC()().super.isa;

      [v18 setValues:v26];

      v27 = v44;
      v28 = String._bridgeToObjectiveC()();
      [v27 setKeyPath:v28];

      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22 * 0.5;
      result = [v27 values];
      if (!result)
      {
        goto LABEL_46;
      }

      v29 = result;
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
      }

      if (v47 >= *(v30 + 16))
      {
        goto LABEL_42;
      }

      ++v10;
      v31 = v30 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v31 + 32);
      outlined init with take of Any(&v49, (v31 + 32));
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v27 setValues:v32];

      v9 = *(v46 + 16);
      v11 += 32;
      if (v10 == v9)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_30:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
LABEL_31:
    swift_bridgeObjectRelease_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyO_So010CAKeyframeT0CtGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EB0;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    *(inited + 56) = v45;
    *(inited + 64) = 2;
    *(inited + 72) = v44;
    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyO_So010CAKeyframeS0CTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyO_So010CAKeyframeQ0CtMd);
    swift_arrayDestroy();

    return v38;
  }

  return result;
}

void BouncyBarsAsset.getBaseAnimation(variant:barIndex:)(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = specialized BouncyBarsAsset.MicaBundle.TypedDictionaryAccess.subscript.getter(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v13 + 16))
    {

      v14 = String._bridgeToObjectiveC()();

      v15 = [v10 animationForKey:v14];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t specialized BouncyBarsAsset.MicaBundle.TypedDictionaryAccess.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v5 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_1);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BouncyBarsAsset.BarAnimationKey(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "cannedHeightAnimation";
  }

  else
  {
    v6 = "cannedWidthAnimation";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ntroller1XCroppedImage";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ntroller1XCroppedImage";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BouncyBarsAsset.BarAnimationKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BouncyBarsAsset.BarAnimationKey()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BouncyBarsAsset.BarAnimationKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BouncyBarsAsset.BarAnimationKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BouncyBarsAsset.BarAnimationKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BouncyBarsAsset.BarAnimationKey(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ntroller1XCroppedImage";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t BouncyBarsAsset.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtMd);
  v2 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = *(v2 + 80);
    v39 = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = _swiftEmptyArrayStorage + v40;
    v12 = 0;
    v13 = 0;
    v14 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v16 = _swiftEmptyArrayStorage;
    v37 = v8;
    v38 = v2;
    while (1)
    {
      v18 = *(v42 + 48);
      *v4 = v12;
      outlined init with copy of PlaylistCurators.Curator(v15, v4 + v18);
      outlined init with take of (offset: Int, element: PlaylistCurators.Curator)(v4, v7);
      if (v13)
      {
        v9 = v16;
        v17 = __OFSUB__(v13--, 1);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v19 = v16[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v20 = v7;
        v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMd);
        v23 = *(v2 + 72);
        v24 = v40;
        v9 = swift_allocObject();
        v25 = _swift_stdlib_malloc_size(v9);
        if (!v23)
        {
          goto LABEL_34;
        }

        v26 = v25 - v24;
        if (v25 - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_35;
        }

        v28 = v26 / v23;
        v9[2] = v22;
        v9[3] = (2 * (v26 / v23));
        v29 = v9 + v24;
        v30 = v16[3] >> 1;
        v31 = v30 * v23;
        if (v16[2])
        {
          if (v9 < v16 || v29 >= v16 + v40 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v11 = &v29[v31];
        v33 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        v7 = v20;
        v8 = v37;
        v2 = v38;
        v17 = __OFSUB__(v33, 1);
        v13 = v33 - 1;
        if (v17)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      outlined init with take of (offset: Int, element: PlaylistCurators.Curator)(v7, v11);
      v11 += *(v2 + 72);
      v15 += v41;
      v16 = v9;
      if (v8 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v34 = v9[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v17 = __OFSUB__(v35, v13);
    v36 = (v35 - v13);
    if (v17)
    {
      goto LABEL_36;
    }

    v9[2] = v36;
  }
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; i += 2)
  {
    v6 = a1 >> 62;
    if (!(a1 >> 62))
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_4;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      break;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_65;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_66;
    }

LABEL_4:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v7 = *(a1 + 32);
    }

    v8 = v7;
    if (v6)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_61;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        goto LABEL_62;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_61;
      }
    }

    v9 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v6)
      {
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_20;
    }

    if (v6)
    {
      goto LABEL_19;
    }

LABEL_20:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    if (a1 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (result - 1));
      result = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_68;
      }

      *(v10 + 16) = result - 1;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
LABEL_39:
        v14 = 0;
        if (v3)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v11 - 8);
      result = v11 - 1;
      *(v10 + 16) = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (a1 >> 62 || (result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
      a1 = result;
      v10 = result & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      goto LABEL_60;
    }

    v13 = v12 - 1;
    v14 = *(v10 + 8 * v13 + 32);
    *(v10 + 16) = v13;
    if (v3)
    {
LABEL_28:
      v15 = __OFSUB__(v3--, 1);
      if (v15)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_40:
    v16 = v4[3];
    if (((v16 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewC_ADSgtGMd);
    v19 = swift_allocObject();
    v20 = _swift_stdlib_malloc_size(v19);
    v21 = v20 - 32;
    if (v20 < 32)
    {
      v21 = v20 - 17;
    }

    v22 = v21 >> 4;
    v19[2] = v18;
    v19[3] = (2 * (v21 >> 4));
    v23 = (v19 + 4);
    v24 = v4[3] >> 1;
    if (v4[2])
    {
      v25 = v4 + 4;
      if (v19 != v4 || v23 >= v25 + 16 * v24)
      {
        memmove(v19 + 4, v25, 16 * v24);
      }

      v4[2] = 0;
    }

    i = (v23 + 16 * v24);
    v26 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

    v4 = v19;
    v15 = __OFSUB__(v26, 1);
    v3 = v26 - 1;
    if (v15)
    {
      goto LABEL_59;
    }

LABEL_52:
    *i = v8;
    i[1] = v14;
  }

  v27 = v4[3];
  if (v27 < 2)
  {
    return v4;
  }

  v28 = v27 >> 1;
  v15 = __OFSUB__(v28, v3);
  v29 = (v28 - v3);
  if (!v15)
  {
    v4[2] = v29;
    return v4;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t specialized BouncyBarsAsset.MicaBundle.init(path:)(uint64_t a1)
{
  v3 = Data.init(contentsOf:options:)();
  if (v1)
  {
    goto LABEL_2;
  }

  v7 = v3;
  v8 = v4;
  type metadata accessor for UIAction(0, &_sSo17NSKeyedUnarchiverCML_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F2F00;
  *(v9 + 32) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer);
  *(v9 + 40) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSMutableDictionary);
  *(v9 + 48) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSArray);
  *(v9 + 56) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSString);
  *(v9 + 64) = type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v17)
  {
    _sypSgWOh_0(v16);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_1);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    lazy protocol witness table accessor for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v7, v8);
LABEL_2:
    v5 = type metadata accessor for URL();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  if (!v15[2] || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6579614C746F6F72, 0xE900000000000072), (v11 & 1) == 0) || (outlined init with copy of Any(v15[7] + 32 * v10, v16), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  if (!v15[2] || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001004D4730), (v13 & 1) == 0))
  {

    goto LABEL_16;
  }

  outlined init with copy of Any(v15[7] + 32 * v12, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_14;
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 8))(a1, v14);
  outlined consume of Data._Representation(v7, v8);
  return v15;
}

void specialized WaveformPlayIndicator.init(coder:)()
{
  v1 = v0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - v3;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v6 = objc_opt_self();
  v17 = [v6 tintColor];
  v7 = [v6 labelColor];
  v8 = [v7 colorWithAlphaComponent:0.35];

  v9 = [v6 labelColor];
  v10 = [v9 colorWithAlphaComponent:0.2];

  v11 = [v6 labelColor];
  v12 = [v11 colorWithAlphaComponent:0.6];

  *v5 = v17;
  v5[1] = v8;
  v5[2] = v10;
  v5[3] = v12;
  v13 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v1 + v13) = [objc_opt_self() zero];
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v19 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v1 + v14, v4, v18);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v1 + v15) = BouncyBarsAsset.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized WaveformPlayIndicator.colorPalette.setter(void *a1, void *a2, void *a3, void *a4)
{
  v9 = v4 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    WaveformPlayIndicator.fillBarsForMode()();
  }
}

uint64_t sub_1003D2C20()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type WaveformPlayIndicator.Mode and conformance WaveformPlayIndicator.Mode()
{
  result = lazy protocol witness table cache variable for type WaveformPlayIndicator.Mode and conformance WaveformPlayIndicator.Mode;
  if (!lazy protocol witness table cache variable for type WaveformPlayIndicator.Mode and conformance WaveformPlayIndicator.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WaveformPlayIndicator.Mode and conformance WaveformPlayIndicator.Mode);
  }

  return result;
}

uint64_t type metadata accessor for WaveformPlayIndicator()
{
  result = type metadata singleton initialization cache for WaveformPlayIndicator;
  if (!type metadata singleton initialization cache for WaveformPlayIndicator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WaveformPlayIndicator()
{
  _s7Combine9PublishedVySbGMa_0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void _s7Combine9PublishedVySbGMa_0()
{
  if (!_s7Combine9PublishedVySbGML_0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &_s7Combine9PublishedVySbGML_0);
    }
  }
}

uint64_t sub_1003D2EC8()
{

  return swift_deallocObject();
}

uint64_t sub_1003D2F10()
{

  return swift_deallocObject();
}

uint64_t sub_1003D2F5C()
{

  return swift_deallocObject();
}

id partial apply for closure #4 in WaveformPlayIndicator.reflectChange(from:to:)()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:1.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_1003D3004()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask()(a1, v4, v5, v6);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D3140()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in WaveformPlayIndicator.pulse()()
{
  v1 = *(v0 + 16);
  [v1 setBackgroundColor:*(v0 + 24)];
  [v1 bounds];

  return [v1 setBounds:?];
}

id partial apply for closure #3 in WaveformPlayIndicator.pulse()(id result)
{
  if (!result)
  {
    return [*(v1 + 16) startAnimation];
  }

  return result;
}

uint64_t sub_1003D3208()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error()
{
  result = lazy protocol witness table cache variable for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error;
  if (!lazy protocol witness table cache variable for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error;
  if (!lazy protocol witness table cache variable for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BouncyBarsAsset.MicaBundle.Error and conformance BouncyBarsAsset.MicaBundle.Error);
  }

  return result;
}

uint64_t outlined init with copy of PlaylistCurators.Curator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCurators.Curator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (offset: Int, element: PlaylistCurators.Curator)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type BouncyBarsAsset.BarAnimationKey and conformance BouncyBarsAsset.BarAnimationKey()
{
  result = lazy protocol witness table cache variable for type BouncyBarsAsset.BarAnimationKey and conformance BouncyBarsAsset.BarAnimationKey;
  if (!lazy protocol witness table cache variable for type BouncyBarsAsset.BarAnimationKey and conformance BouncyBarsAsset.BarAnimationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BouncyBarsAsset.BarAnimationKey and conformance BouncyBarsAsset.BarAnimationKey);
  }

  return result;
}

unint64_t specialized BouncyBarsAsset.BarAnimationKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BouncyBarsAsset.BarAnimationKey.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id *_ss15_arrayForceCastySayq_GSayxGr0_lF10Foundation3URLV_AFSgTg5_1(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_1(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_1(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = (v15 + 1);
      _s10Foundation3URLVSgWOb_1(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t variable initialization expression of ShaderFallback.calculator()
{
  type metadata accessor for ShaderFallback.Calculator();
  swift_allocObject();
  return ShaderFallback.Calculator.init()();
}

__n128 __swift_memcpy16_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Uniforms(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Uniforms(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 368) = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGImageRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type CGImageRef and conformance CGImageRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MTKTextureLoaderOption()
{
  lazy protocol witness table accessor for type CGImageRef and conformance CGImageRef(&lazy protocol witness table cache variable for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption, type metadata accessor for MTKTextureLoaderOption);
  lazy protocol witness table accessor for type CGImageRef and conformance CGImageRef(&lazy protocol witness table cache variable for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption, type metadata accessor for MTKTextureLoaderOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _s10Foundation3URLVSgWOb_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation3URLVSg_SayAHGTg5_1(uint64_t result)
{
  v2 = *(result + 16);
  IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1 = *v1;
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
  if (isUniquelyReferenced_nonNull_native && v5 <= *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1 + 24) >> 1)
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

  IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1(isUniquelyReferenced_nonNull_native, v12, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1);
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
  v8 = (*(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1 + 24) >> 1) - *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1);
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
    *v1 = IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1;
    return result;
  }

  v9 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s10Foundation3URLVSgWOc_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOh_1(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_1(size_t a1, int64_t a2, char a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_1);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

__n128 __swift_memcpy40_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CAMeshVertex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CAMeshVertex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Model(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Model(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_float4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_float4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy24_8_2(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

double one-time initialization function for identity()
{
  static simd_float4x4.identity = xmmword_100514660;
  *algn_10063F5F0 = xmmword_100514670;
  result = 0.0;
  xmmword_10063F600 = xmmword_100514680;
  unk_10063F610 = xmmword_100514690;
  return result;
}

{
  static UIView.Shadow.identity = [objc_opt_self() blackColor];
  *algn_10063FA20 = xmmword_100518160;
  result = 0.0;
  *&algn_10063FA20[16] = xmmword_100518170;
  return result;
}

uint64_t CAMeshTransform.backdropMeshVerticesAndIndices(to:)(void *a1)
{
  result = [v1 vertexCount];
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (result)
    {
      v5 = 0;
      v6 = _swiftEmptyArrayStorage;
      do
      {
        [v1 vertexAtIndex:{v5, *&v29}];
        [a1 vertexAtIndex:v5];
        v29 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        }

        v8 = v6[2];
        v7 = v6[3];
        if (v8 >= v7 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
        }

        ++v5;
        *(&v9 + 1) = *&v30.f64[1];
        *&v9 = vcvt_f32_f64(v30);
        *&v10 = vcvt_f32_f64(v31);
        *&v11 = v32;
        *(&v10 + 1) = v11;
        *&v12 = v10;
        *&v13 = v32;
        *(&v12 + 1) = v13;
        v6[2] = (v8 + 1);
        v14 = &v6[8 * v8];
        *(v14 + 2) = v9;
        v14[6] = v9;
        *(v14 + 4) = v10;
        *(v14 + 5) = v12;
      }

      while (v4 != v5);
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    result = [v1 faceCount];
    if (result < 0)
    {
      goto LABEL_37;
    }

    v15 = result;
    if (!result)
    {
      return v6;
    }

    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {
      [v1 faceAtIndex:v16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
      result = swift_initStackObject();
      *(result + 16) = xmmword_1004F3070;
      if (HIWORD(LODWORD(v30.f64[0])))
      {
        break;
      }

      v18 = result;
      *(result + 32) = LOWORD(v30.f64[0]);
      if (HIWORD(LODWORD(v30.f64[1])))
      {
        goto LABEL_30;
      }

      *(result + 34) = LOWORD(v30.f64[1]);
      if (HIWORD(HIDWORD(v30.f64[1])))
      {
        goto LABEL_31;
      }

      *(result + 36) = WORD2(v30.f64[1]);
      *(result + 38) = LOWORD(v30.f64[0]);
      if (HIWORD(HIDWORD(v30.f64[0])))
      {
        goto LABEL_32;
      }

      *(result + 40) = WORD2(v30.f64[0]);
      *(result + 42) = LOWORD(v30.f64[1]);
      v19 = v17[2];
      v20 = v19 + 6;
      if (__OFADD__(v19, 6))
      {
        goto LABEL_33;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v21 = v17[3] >> 1, v21 < v20))
      {
        if (v19 <= v20)
        {
          v22 = (v19 + 6);
        }

        else
        {
          v22 = v19;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v22, 1, v17);
        v17 = result;
        v21 = *(result + 24) >> 1;
      }

      v23 = v17[2];
      if (v21 - v23 < 6)
      {
        goto LABEL_34;
      }

      v24 = *(v18 + 32);
      v25 = v17 + 2 * v23;
      *(v25 + 10) = *(v18 + 40);
      *(v25 + 4) = v24;

      v26 = v17[2];
      v27 = __OFADD__(v26, 6);
      v28 = v26 + 6;
      if (v27)
      {
        goto LABEL_35;
      }

      ++v16;
      v17[2] = v28;
      if (v15 == v16)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_30:
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
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t Backdrop.CompositeRenderer.framebufferPixelFormat.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat);
  *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat) = result;
  if (v2 != result)
  {
    v3 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 16);
    *(v3 + 16) = result;
    *(v3 + 160) = Backdrop.PinchRenderer.createPipelineState()();

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall Backdrop.CompositeRenderer.setImage(_:animated:)(CGImageRef_optional _, Swift::Bool animated)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  v7 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage);
  if (!_.value)
  {
    *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage) = 0;
    v10 = 0;

    goto LABEL_17;
  }

  if (v7)
  {
    _sSo10CGImageRefaMa_0(0);
    lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type CGImageRef and conformance CGImageRef, _sSo10CGImageRefaMa_0);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      return;
    }

    v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  }

  v11 = *(v3 + v6);
  *(v3 + v6) = _;
  v12 = _.value;

  v13 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  v14 = *(v13 + 24);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v13 + 32);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v22.value = v14;
  v23.value = v15;
  v22.is_nil = 0;
  v23.is_nil = 0;
  v16.value = CGImageRef.textureCompatibleImage(width:height:)(v22, v23).value;
  if (v16.value)
  {
    value = v16.value;
    Backdrop.CompositeRenderer.updateContent(content:animated:)(v16.value, 0, 0, 0, animated);

    return;
  }

LABEL_17:
  v17 = Backdrop.CompositeRenderer.createColorTexture(color:)(*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 8), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 16));
  v18 = 1.0;
  if (animated)
  {
    v18 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v18;
  v19 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  *(v19 + 96) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v19 + 104) = 1;

  swift_unknownObjectRelease();
}

CGImageRef_optional __swiftcall CGImageRef.textureCompatibleImage(width:height:)(Swift::Int_optional width, Swift::Int_optional height)
{
  v3 = v2;
  is_nil = height.is_nil;
  value = height.value;
  v6 = width.value;
  if (width.is_nil)
  {
    v6 = CGImageGetWidth(v3);
  }

  v7 = CGImageGetWidth(v3);
  if (v7 < v6)
  {
    v6 = v7;
  }

  if (is_nil)
  {
    value = CGImageGetHeight(v3);
  }

  v8 = CGImageGetHeight(v3);
  if (v8 >= value)
  {
    v9 = value;
  }

  else
  {
    v9 = v8;
  }

  v10 = CGImageGetColorSpace(v3);
  if (!v10 || (v11 = v10, Model = CGColorSpaceGetModel(v10), v11, Model))
  {
    if (CGImageGetAlphaInfo(v3) != kCGImageAlphaNoneSkipFirst && CGImageGetAlphaInfo(v3) != kCGImageAlphaPremultipliedFirst)
    {
      return v3;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = __CGBitmapContextCreate(v6, v9, DeviceRGB);

  if (!v14)
  {
    return v3;
  }

  v15 = static os_log_type_t.info.getter();
  type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
  v16 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    _sSo10CGImageRefaMa_0(0);
    v19 = v3;
    v20 = String.init<A>(describing:)();
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_2(v20, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v15, "Backdrop: Redrawing incompatible image: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  CGContextRef.draw(_:in:byTiling:)();
  Image = CGBitmapContextCreateImage(v14);

  return Image;
}

Swift::Void __swiftcall Backdrop.CompositeRenderer.setPlaceholderColor(_:animated:)(ShaderFallbackKit::Backdrop::RGBColor _, Swift::Bool animated)
{
  *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor) = _;
  if (!*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage))
  {
    v4 = Backdrop.CompositeRenderer.createColorTexture(color:)(_.r, _.g, _.b);
    v5 = 1.0;
    if (animated)
    {
      v5 = 0.0;
    }

    *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v5;
    v6 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v6 + 96) = v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v6 + 104) = 1;

    swift_unknownObjectRelease();
  }
}

id Backdrop.CompositeRenderer.init(context:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_state] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat] = 80;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_colorPixelFormat] = 115;
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_isPaused] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration] = 1077097267;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage] = 0;
  v4 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor];
  *v4 = 0x3FF0000000000000;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v5 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment];
  *v5 = 0;
  *(v5 + 4) = 0x432000004019999ALL;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction;
  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1050253722;
  LODWORD(v9) = 1.0;
  *&v2[v6] = [v7 initWithControlPoints:0.0 :0.0 :v8 :v9];
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchMix] = 0;
  v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  memmove(&v2[v10], &static Uniforms.standard, 0x170uLL);
  memmove(&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], &static Uniforms.standard, 0x170uLL);
  v11 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis();
  swift_allocObject();
  *&v2[v11] = SpectrumAnalysis.init()();
  __asm { FMOV            V0.2S, #1.0 }

  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio] = _D0;
  v17 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
  *v17 = 0;
  v17[4] = 1;
  v18 = *(a1 + 24);
  v19 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context];
  *(v19 + 25) = *(a1 + 25);
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 1) = v20;
  type metadata accessor for Backdrop.TextureBlender();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v18;
  v22 = specialized Backdrop.TextureBlender.init(context:)(a1);
  type metadata accessor for Backdrop.RotatingArtworkRenderer();
  v23 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v21;
  Backdrop.RotatingArtworkRenderer.init(context:)(a1);
  type metadata accessor for Backdrop.PinchRenderer();
  v25 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = v24;
  Backdrop.PinchRenderer.init(context:useMask:)(a1, 0);
  v27 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
  *v27 = v22;
  v27[1] = v23;
  v27[2] = v25;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  v28 = objc_msgSendSuper2(&v30, "init");
  Backdrop.CompositeRenderer.buildModels()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v28;
}

void Backdrop.CompositeRenderer.buildModels()()
{
  specialized Backdrop.CompositeRenderer.imageScales.getter();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, COERCE_FLOAT(*(v1 + 96))), xmmword_100514670, *(v1 + 96), 1), xmmword_100514680, *(v1 + 96), 2), xmmword_1005146A0, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, COERCE_FLOAT(*(v1 + 112))), xmmword_100514670, *(v1 + 112), 1), xmmword_100514680, *(v1 + 112), 2), xmmword_1005146A0, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, COERCE_FLOAT(*(v1 + 128))), xmmword_100514670, *(v1 + 128), 1), xmmword_100514680, *(v1 + 128), 2), xmmword_1005146A0, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, COERCE_FLOAT(*(v1 + 144))), xmmword_100514670, *(v1 + 144), 1), xmmword_100514680, *(v1 + 144), 2), xmmword_1005146A0, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 80) = v15;
    *(v3 + 96) = v14;
    *(v3 + 112) = v13;
    *(v3 + 128) = v12;
    *(v3 + 144) = -1;
    *(v3 + 148) = 1130102784;
    *(v3 + 160) = v11;
    *(v3 + 176) = v10;
    *(v3 + 192) = v9;
    *(v3 + 208) = v8;
    *(v3 + 224) = -1;
    *(v3 + 228) = 1124204544;
    *(v3 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, v7.f32[0]), xmmword_100514670, *v7.f32, 1), xmmword_100514680, v7, 2), xmmword_1005146B0, v7, 3);
    *(v3 + 256) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, v6.f32[0]), xmmword_100514670, *v6.f32, 1), xmmword_100514680, v6, 2), xmmword_1005146B0, v6, 3);
    *(v3 + 272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, v5.f32[0]), xmmword_100514670, *v5.f32, 1), xmmword_100514680, v5, 2), xmmword_1005146B0, v5, 3);
    *(v3 + 288) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100514660, v4.f32[0]), xmmword_100514670, *v4.f32, 1), xmmword_100514680, v4, 2), xmmword_1005146B0, v4, 3);
    *(v3 + 304) = 0;
    *(v3 + 308) = 1124859904;
    return;
  }

LABEL_7:
  __break(1u);
}

void Backdrop.CompositeRenderer.updateContent(content:animated:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v10 = Backdrop.CompositeRenderer.createColorTexture(color:)(*&a1, *&a2, *&a3);
    v11 = 1.0;
    if (a5)
    {
      v11 = 0.0;
    }

    *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = v11;
    v12 = *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
    *(v12 + 96) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v12 + 104) = 1;

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    *(v13 + 40) = 0;
    *(v13 + 48) = v5;
    *(v13 + 56) = a5 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22MTKTextureLoaderOptiona_SbtGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    v15 = MTKTextureLoaderOptionSRGB;
    *(inited + 32) = MTKTextureLoaderOptionSRGB;
    *(inited + 40) = 0;
    v16 = v5;
    outlined copy of Backdrop.CompositeRenderer.Content(a1, a2, a3, 0);
    v17 = v15;
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22MTKTextureLoaderOptiona_SbTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (MTKTextureLoaderOption, Bool)(inited + 32);
    v19 = *&v16[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 24];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);

    type metadata accessor for MTKTextureLoaderOption(0);
    lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption, type metadata accessor for MTKTextureLoaderOption);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (a5)
    {
      v21 = swift_allocObject();
      v21[2] = partial apply for apply #1 (_:) in Backdrop.CompositeRenderer.updateContent(content:animated:);
      v21[3] = v13;
      v27[4] = partial apply for closure #1 in Backdrop.CompositeRenderer.loadImageTexture(image:async:completion:);
      v27[5] = v21;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLTexture?, @guaranteed Error?) -> ();
      v27[3] = &block_descriptor_66;
      v22 = _Block_copy(v27);

      [v19 newTextureWithCGImage:a1 options:v20.super.isa completionHandler:v22];

      _Block_release(v22);
    }

    else
    {
      v27[0] = 0;
      v23 = [v19 newTextureWithCGImage:a1 options:v20.super.isa error:v27];

      v24 = v27[0];
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v26 = v24;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v25 = 0;
      }

      apply #1 (_:) in Backdrop.CompositeRenderer.updateContent(content:animated:)(v25, a1, a2, a3, 0, v16, 0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t apply #1 (_:) in Backdrop.CompositeRenderer.updateContent(content:animated:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a5 & 1) != 0 || (v7 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage)) == 0 || (v8 = result, v9 = a6, v10 = a7, _sSo10CGImageRefaMa_0(0), lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type CGImageRef and conformance CGImageRef, _sSo10CGImageRefaMa_0), v11 = v7, v12 = static _CFObject.== infix(_:_:)(), v11, a7 = v10, a6 = v9, result = v8, (v12))
  {
    v13 = 1.0;
    if (a7)
    {
      v13 = 0.0;
    }

    *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v13;
    v14 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v14 + 96) = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v14 + 104) = 1;
  }

  return result;
}

uint64_t closure #1 in Backdrop.CompositeRenderer.loadImageTexture(image:async:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for DispatchQoS();
  v11 = *(v34 - 8);
  __chkstk_darwin(v34);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v33 = v11;
    swift_errorRetain();
    v14 = static os_log_type_t.error.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v15 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v31 = v16;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v16 = 136315138;
      swift_getErrorValue();
      v30 = v15;
      v17 = Error.localizedDescription.getter();
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_2(v17, v18, aBlock);
      v29 = v14;
      v20 = v8;
      v21 = v19;

      v23 = v30;
      v22 = v31;
      *(v31 + 1) = v21;
      v8 = v20;
      _os_log_impl(&_mh_execute_header, v23, v29, "Error loading texture: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {
    }

    v11 = v33;
  }

  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_1);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  v25[2] = v35;
  v25[3] = a4;
  v25[4] = a1;
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #3 in SymbolButton.setConfiguration(_:animation:updates:);
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_225;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_1, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_1);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_1();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v34);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLTexture?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id Backdrop.CompositeRenderer.createColorTexture(color:)(double a1, double a2, double a3)
{
  v7 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  result = [*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context) newTextureWithDescriptor:v7];
  v9 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = a3 * 255.0;
  if (COERCE__INT64(fabs(a3 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 256.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[0] = v10;
  v11 = a2 * 255.0;
  if (COERCE__INT64(fabs(a2 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 >= 256.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16[1] = v11;
  v12 = a1 * 255.0;
  if (COERCE__INT64(fabs(a1 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 256.0)
  {
    v16[2] = v12;
    v16[3] = -1;
    memset(v13, 0, sizeof(v13));
    v14 = vdupq_n_s64(1uLL);
    v15 = 1;
    [result replaceRegion:v13 mipmapLevel:0 withBytes:v16 bytesPerRow:4];
LABEL_12:

    return v9;
  }

LABEL_21:
  __break(1u);
  return result;
}

id Backdrop.CompositeRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int8x8_t Backdrop.CompositeRenderer.resize(to:scale:)(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = a1 / a2;
  v9 = 1.0 / v8;
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio);
  *v10 = v9;
  v10[1] = v8;
  v19 = LODWORD(v9);
  LODWORD(v11) = 0;
  *(&v11 + 1) = v8;
  v18 = v11;
  v12 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms);
  swift_beginAccess();
  v12[1] = v19;
  v12[2] = v18;
  v12[3] = xmmword_100514680;
  v12[4] = xmmword_100514690;
  v13 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
  v14 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v14[6] = a3;
  Backdrop.RotatingArtworkRenderer.outputSize.setter(a1, a2);
  v15 = v14[5] < v14[4];
  v16 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment;
  *v16 = v15;
  result = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v15), 0x1FuLL)), 0x42F000004019999ALL, 0x42AA000040000000);
  *(v16 + 4) = result;
  *(*(v13 + 16) + 104) = v15;
  return result;
}

Swift::Void __swiftcall Backdrop.CompositeRenderer.draw(in:)(MTKView in)
{
  v2 = v1;
  v14 = [(objc_class *)in.super.super.super.isa layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 isDrawableAvailable];

    if (v5)
    {
      specialized Backdrop.CompositeRenderer.updateUniforms(frameTime:isLight:)(0.016667);
      v6 = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 8) commandBuffer];
      if (v6)
      {
        v7 = v6;
        v8 = v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
        v9 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
        v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
        swift_beginAccess();
        Backdrop.TextureBlender.encode(in:uniforms:)(v7, v2 + v10);
        swift_endAccess();
        v11 = *(v8 + 8);
        *(v11 + 152) = *(v9 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        swift_beginAccess();
        Backdrop.RotatingArtworkRenderer.encode(in:uniforms:)(v7, v2 + v10);
        swift_endAccess();
        *(*(v8 + 16) + 32) = *(v11 + 168);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v12 = [(objc_class *)in.super.super.super.isa currentRenderPassDescriptor];
        swift_beginAccess();
        Backdrop.PinchRenderer.encode(in:uniforms:renderPassDescriptor:)(v7, v2 + v10, v12);
        swift_endAccess();

        v13 = [(objc_class *)in.super.super.super.isa currentDrawable];
        if (v13)
        {
          [v7 presentDrawable:v13];
          swift_unknownObjectRelease();
        }

        [v7 commit];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }
}

void *Backdrop.PinchRenderer.init(context:useMask:)(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + 16) = 80;
  *(v2 + 32) = 0;
  *(v2 + 104) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  *(v3 + 112) = *a1;
  *(v3 + 128) = v6;
  *(v3 + 137) = *(a1 + 25);
  v42 = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v40 = v5;
  specialized static VertexMap.randomUniqueMeshMaps(forWide:)(1, &v43);
  v7 = v45;
  v8 = v46;
  v9 = kCADepthNormalizationNone;
  v10 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:v43[2] vertices:v43 + 4 faceCount:*(v44 + 16) faces:v44 + 32 depthNormalization:kCADepthNormalizationNone];
  v11 = [v10 subdividedMesh:2];

  v12 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v7 + 16) vertices:v7 + 32 faceCount:*(v8 + 16) faces:v8 + 32 depthNormalization:v9];

  v13 = [v12 subdividedMesh:2];

  result = CAMeshTransform.backdropMeshVerticesAndIndices(to:)(v13);
  v16 = result[2];
  if (v16 >> 57)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = result;
  v18 = v15;
  v19 = v16 << 6;

  result = [v42 newBufferWithBytes:v17 + 4 length:v19 options:0];
  v20 = *(v18 + 16);
  if (v20 + 0x4000000000000000 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v21 = result;
  v22 = 2 * v20;
  swift_unknownObjectRetain();
  v23 = [v42 newBufferWithBytes:v18 + 32 length:v22 options:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  *(v3 + 40) = v17;
  *(v3 + 48) = v18;
  *(v3 + 56) = v21;
  *(v3 + 64) = v23;
  swift_unknownObjectRetain();
  specialized static VertexMap.randomUniqueMeshMaps(forWide:)(0, &v43);
  v24 = v45;
  v25 = v46;
  v26 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:v43[2] vertices:v43 + 4 faceCount:*(v44 + 16) faces:v44 + 32 depthNormalization:v9];
  v27 = [v26 subdividedMesh:2];

  v28 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v24 + 16) vertices:v24 + 32 faceCount:*(v25 + 16) faces:v25 + 32 depthNormalization:v9];

  v29 = [v28 subdividedMesh:2];

  result = CAMeshTransform.backdropMeshVerticesAndIndices(to:)(v29);
  v31 = result[2];
  if (v31 >> 57)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v32 = result;
  v33 = v30;
  v34 = v31 << 6;

  result = [v42 newBufferWithBytes:v32 + 4 length:v34 options:0];
  v35 = *(v33 + 16);
  if (v35 + 0x4000000000000000 >= 0)
  {
    v36 = result;
    v37 = 2 * v35;
    swift_unknownObjectRetain();
    v38 = [v42 newBufferWithBytes:v33 + 32 length:v37 options:0];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *(v3 + 72) = v32;
    *(v3 + 80) = v33;
    *(v3 + 88) = v36;
    *(v3 + 96) = v38;
    *(v3 + 24) = a2 & 1;
    v39 = Backdrop.PinchRenderer.createPipelineState()();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 160) = v39;
    swift_unknownObjectRelease();
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

void Backdrop.PinchRenderer.encode(in:uniforms:renderPassDescriptor:)(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 160);
  if (!v4)
  {
    return;
  }

  if (*(v3 + 104) == 1)
  {
    v5 = *(v3 + 56);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 64);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v5 = *(v3 + 88);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 96);
    if (!v6)
    {
      return;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = *(v3 + 32);
  if (!v10 || !a3)
  {
    swift_unknownObjectRelease();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v15 = a3;
  swift_unknownObjectRetain();
  v11 = [a1 renderCommandEncoderWithDescriptor:v15];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    [v12 setLabel:v13];

    [v12 setRenderPipelineState:v4];
    [v12 setVertexBuffer:v5 offset:0 atIndex:0];
    [v12 setVertexBytes:a2 length:368 atIndex:1];
    [v12 setFragmentBytes:a2 length:368 atIndex:1];
    [v12 setFragmentTexture:v10 atIndex:0];
    v14 = 80;
    if (*(v3 + 104))
    {
      v14 = 48;
    }

    [v12 drawIndexedPrimitives:3 indexCount:*(*(v3 + v14) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
    [v12 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id Backdrop.PinchRenderer.pipelineDescriptor.getter()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 168);
  }

  else
  {
    if (*(v0 + 24))
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x72665F68636E6970;
    }

    if (*(v0 + 24))
    {
      v4 = 0x80000001004D4F80;
    }

    else
    {
      v4 = 0xEE00746E656D6761;
    }

    v5 = specialized MetalContext.makeRenderPipelineDescriptor(vertexShader:fragmentShader:label:)(0x65765F68636E6970, 0xEC00000078657472, v3, v4, 0xD000000000000022, 0x80000001004D4F50, *(v0 + 128));

    v6 = *(v0 + 168);
    *(v0 + 168) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id Backdrop.PinchRenderer.createPipelineState()()
{
  v1 = Backdrop.PinchRenderer.pipelineDescriptor.getter();
  if (one-time initialization token for vertexDescriptor != -1)
  {
    swift_once();
  }

  [v1 setVertexDescriptor:static Vertex.vertexDescriptor];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  [v3 setPixelFormat:*(v0 + 16)];
  v4 = *(v0 + 112);
  v20 = 0;
  v5 = [v4 newRenderPipelineStateWithDescriptor:v1 error:&v20];
  v6 = v20;
  if (!v5)
  {
    v8 = v6;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_1);
    type metadata accessor for UIAction(0, &_sSo7NSErrorCML_0);
    swift_dynamicCast();
    v10 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_1);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1004F2400;
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v20 = 0xD00000000000001FLL;
    v21 = 0x80000001004D4D30;
    v12 = [v10 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17 = v20;
    v18 = v21;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v17;
    *(v11 + 40) = v18;
    print(_:separator:terminator:)();

    return 0;
  }

  return v5;
}

uint64_t Backdrop.PinchRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id Backdrop.TextureBlender.pipelineDescriptor.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = Backdrop.TextureBlender.makePipelineDescriptor()();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t Backdrop.TextureBlender.makePipelineDescriptor()()
{
  v1 = specialized MetalContext.makeRenderPipelineDescriptor(vertexShader:fragmentShader:label:)(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x80000001004D4EE0, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 64));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (one-time initialization token for vertexDescriptor != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:static Vertex.vertexDescriptor];

    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(56);
    v5._countAndFlagsBits = 0xD000000000000036;
    v5._object = 0x80000001004D4D50;
    String.append(_:)(v5);
    v6 = [v1 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id Backdrop.TextureBlender.createPipelineState()()
{
  v1 = *(v0 + 48);
  v2 = Backdrop.TextureBlender.pipelineDescriptor.getter();
  v17 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v17];

  v4 = v17;
  if (!v3)
  {
    v5 = v4;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_1);
    type metadata accessor for UIAction(0, &_sSo7NSErrorCML_0);
    swift_dynamicCast();
    v7 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_1);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004F2400;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v17 = 0xD00000000000001FLL;
    v18 = 0x80000001004D4D30;
    v9 = [v7 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = v17;
    v15 = v18;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v14;
    *(v8 + 40) = v15;
    print(_:separator:terminator:)();

    return 0;
  }

  return v3;
}

uint64_t Backdrop.TextureBlender.createRenderPassDescriptor()()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v7._object = 0x80000001004D4CF0;
    v7._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v7);
    v8 = [v1 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void Backdrop.TextureBlender.buildTexture(device:)(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 32);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode:0];
  [v5 setUsage:7];
  *(v1 + 40) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  *(v1 + 112) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  v6 = Backdrop.TextureBlender.createRenderPassDescriptor()();

  v7 = *(v1 + 168);
  *(v1 + 168) = v6;
}

void Backdrop.TextureBlender.encode(in:uniforms:)(void *a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (!v3 || (v4 = *(v2 + 136)) == 0 || (v5 = *(v2 + 144)) == 0 || (v6 = *(v2 + 96)) == 0)
  {
    static os_log_type_t.info.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
LABEL_11:

    return;
  }

  if (*(v2 + 104) == 1 && (v7 = *(v2 + 40)) != 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = *(v2 + 112);
    if (v10)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = [v8 blitCommandEncoder];
      if (v11)
      {
        v12 = v11;
        [v11 copyFromTexture:v7 toTexture:v10];
        *(v2 + 104) = 0;
        [v12 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!*(v2 + 168))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = a1;
    v9 = a2;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (!*(v2 + 168))
  {
LABEL_21:
    static os_log_type_t.error.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_16:
  v13 = [v8 renderCommandEncoderWithDescriptor:?];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  [v14 setLabel:v15];

  [v14 setRenderPipelineState:v3];
  [v14 setVertexBuffer:v4 offset:0 atIndex:0];
  [v14 setVertexBytes:v9 length:368 atIndex:1];
  [v14 setFragmentTexture:v6 atIndex:0];
  [v14 setFragmentTexture:*(v2 + 112) atIndex:1];
  [v14 setFragmentBytes:v9 length:368 atIndex:1];
  [v14 drawIndexedPrimitives:3 indexCount:*(*(v2 + 128) + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
  [v14 endEncoding];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id *Backdrop.TextureBlender.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t Backdrop.TextureBlender.__deallocating_deinit()
{
  Backdrop.TextureBlender.deinit();

  return swift_deallocClassInstance();
}

uint64_t Backdrop.RotatingArtworkRenderer.init(context:)(__int128 *a1)
{
  v2 = v1;
  *(v2 + 16) = 115;
  *(v2 + 24) = 1117782016;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0x3FF0000000000000;
  *(v2 + 184) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  v4 = *(a1 + 3);
  *(v2 + 81) = *(a1 + 25);
  v5 = *a1;
  *(v2 + 72) = a1[1];
  *(v2 + 56) = v5;
  v6 = one-time initialization token for quad;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  result = static Vertex.quad;
  *(v2 + 104) = static Vertex.quad;
  *(v2 + 112) = &outlined read-only object #0 of one-time initialization function for quadIndices;
  v9 = *(result + 16);
  if (v9 >> 57)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = [*(v2 + 56) newBufferWithBytes:+ 32 length:v9 << 6 options:0];
    result = swift_unknownObjectRelease();
    v10 = *(v2 + 112);
    v11 = *(v10 + 16);
    if (v11 + 0x4000000000000000 >= 0)
    {
      *(v2 + 128) = [*(v2 + 56) newBufferWithBytes:v10 + 32 length:2 * v11 options:0];
      swift_unknownObjectRelease();
      type metadata accessor for Backdrop.TexturePan();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = v7;
      v13 = specialized Backdrop.TexturePan.init(context:)(a1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 176) = v13;
      v14 = Backdrop.RotatingArtworkRenderer.createPipelineState()();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 136) = v14;
      swift_unknownObjectRelease();
      return v2;
    }
  }

  __break(1u);
  return result;
}

void Backdrop.RotatingArtworkRenderer.outputSize.setter(double a1, double a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  if (v3 != a1 || v4 != a2)
  {
    Backdrop.RotatingArtworkRenderer.buildTextures(device:)(*(v2 + 56));
    Backdrop.RotatingArtworkRenderer.updateBlur()();
    v6 = *(v2 + 176);
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    v9 = *(v6 + 24);
    v10 = *(v6 + 32);
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    if (v7 != v9 || v8 != v10)
    {
      v12 = *(v6 + 56);

      Backdrop.TexturePan.buildTextures(device:)(v12);
    }
  }
}

void Backdrop.RotatingArtworkRenderer.encode(in:uniforms:)(void *a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[20]) != 0 && (v7 = v2[21]) != 0)
  {
    v8 = v2[18];
    if (v8)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = a1;
      v12 = [a1 renderCommandEncoderWithDescriptor:v8];
      if (v12)
      {
        v13 = v12;
        v14 = String._bridgeToObjectiveC()();
        [v13 setLabel:v14];

        [v13 setRenderPipelineState:v3];
        [v13 setVertexBuffer:v4 offset:0 atIndex:0];
        [v13 setVertexBytes:a2 length:368 atIndex:1];
        [v13 setFragmentBytes:a2 length:368 atIndex:1];
        [v13 setFragmentTexture:v2[19] atIndex:0];
        [v13 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:3];
        [v13 endEncoding];
        *(v2[22] + 40) = v6;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();

        v15 = v2;
        Backdrop.TexturePan.encode(in:uniforms:)(v11, a2);

        v16 = *(v2[22] + 48);
        if (v16 && (v17 = v15[23]) != 0)
        {
          swift_unknownObjectRetain();
          v18 = v17;
          [v18 encodeToCommandBuffer:v11 sourceTexture:v16 destinationTexture:v7];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    static os_log_type_t.error.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    static os_log_type_t.info.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t Backdrop.RotatingArtworkRenderer.pipelineDescriptor.getter()
{
  v1 = specialized MetalContext.makeRenderPipelineDescriptor(vertexShader:fragmentShader:label:)(0x6E6F697461746F72, 0xEF7865747265765FLL, 0xD000000000000011, 0x80000001004D4D90, 0xD000000000000024, 0x80000001004D4DB0, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    [v3 setBlendingEnabled:0];
    if (one-time initialization token for vertexDescriptor != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:static Vertex.vertexDescriptor];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id Backdrop.RotatingArtworkRenderer.createPipelineState()()
{
  v1 = *(v0 + 56);
  v2 = Backdrop.RotatingArtworkRenderer.pipelineDescriptor.getter();
  v17 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v17];

  v4 = v17;
  if (!v3)
  {
    v5 = v4;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_1);
    type metadata accessor for UIAction(0, &_sSo7NSErrorCML_0);
    swift_dynamicCast();
    v7 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_1);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004F2400;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v17 = 0xD00000000000001FLL;
    v18 = 0x80000001004D4D30;
    v9 = [v7 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = v17;
    v15 = v18;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v14;
    *(v8 + 40) = v15;
    print(_:separator:terminator:)();

    return 0;
  }

  return v3;
}

uint64_t Backdrop.RotatingArtworkRenderer.createRenderPassDescriptor()()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 160);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v7._object = 0x80000001004D4CF0;
    v7._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v7);
    v8 = [v1 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void Backdrop.RotatingArtworkRenderer.buildTextures(device:)(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 40);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 160) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              *(v1 + 168) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = Backdrop.RotatingArtworkRenderer.createRenderPassDescriptor()();

              v7 = *(v1 + 144);
              *(v1 + 144) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 160) = 0;
  swift_unknownObjectRelease();
  *(v1 + 168) = 0;

  swift_unknownObjectRelease();
}

void Backdrop.RotatingArtworkRenderer.updateBlur()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24) / (4.0 / v1);
  v3 = *(v0 + 184);
  if (!v3 || ([v3 sigma], v2 != v4))
  {
    v5 = *(v0 + 56);
    v6 = objc_allocWithZone(MPSImageGaussianBlur);
    *&v7 = v2;
    v8 = [v6 initWithDevice:v5 sigma:v7];
    v9 = *(v0 + 184);
    *(v0 + 184) = v8;
  }
}

id *Backdrop.RotatingArtworkRenderer.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t Backdrop.RotatingArtworkRenderer.__deallocating_deinit()
{
  Backdrop.RotatingArtworkRenderer.deinit();

  return swift_deallocClassInstance();
}

void Backdrop.TexturePan.buildTextures(device:)(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 32);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 48) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = Backdrop.TexturePan.createRenderPassDescriptor()();

              v7 = *(v1 + 152);
              *(v1 + 152) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 48) = 0;

  swift_unknownObjectRelease();
}

id Backdrop.TexturePan.pipelineDescriptor.getter()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = Backdrop.TexturePan.makePipelineDescriptor()();
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t Backdrop.TexturePan.makePipelineDescriptor()()
{
  v1 = specialized MetalContext.makeRenderPipelineDescriptor(vertexShader:fragmentShader:label:)(0x797469746E656469, 0xEF7865747265765FLL, 0x676172665F6E6170, 0xEC000000746E656DLL, 0x2065727574786554, 0xEE0072656E6E6150, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (one-time initialization token for vertexDescriptor != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:static Vertex.vertexDescriptor];

    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(56);
    v5._object = 0x80000001004D4D50;
    v5._countAndFlagsBits = 0xD000000000000036;
    String.append(_:)(v5);
    v6 = [v1 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id Backdrop.TexturePan.createPipelineState()()
{
  v1 = *(v0 + 56);
  v2 = Backdrop.TexturePan.pipelineDescriptor.getter();
  v17 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v17];

  v4 = v17;
  if (!v3)
  {
    v5 = v4;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_1);
    type metadata accessor for UIAction(0, &_sSo7NSErrorCML_0);
    swift_dynamicCast();
    v7 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_1);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004F2400;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v17 = 0xD00000000000001FLL;
    v18 = 0x80000001004D4D30;
    v9 = [v7 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = v17;
    v15 = v18;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v14;
    *(v8 + 40) = v15;
    print(_:separator:terminator:)();

    return 0;
  }

  return v3;
}

uint64_t Backdrop.TexturePan.createRenderPassDescriptor()()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 48);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v7._object = 0x80000001004D4CF0;
    v7._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v7);
    v8 = [v1 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void Backdrop.TexturePan.encode(in:uniforms:)(void *a1, uint64_t a2)
{
  v3 = v2[18];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[5]) != 0)
  {
    v7 = v2[19];
    if (v7)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [a1 renderCommandEncoderWithDescriptor:v7];
      if (v10)
      {
        v11 = v10;
        v12 = String._bridgeToObjectiveC()();
        [v11 setLabel:v12];

        [v11 setRenderPipelineState:v3];
        [v11 setVertexBuffer:v4 offset:0 atIndex:0];
        [v11 setVertexBytes:a2 length:368 atIndex:1];
        [v11 setFragmentTexture:v6 atIndex:0];
        [v11 setFragmentBytes:a2 length:368 atIndex:1];
        [v11 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
        [v11 endEncoding];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    static os_log_type_t.error.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    static os_log_type_t.info.getter();
    type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_1);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

id *Backdrop.TexturePan.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t Backdrop.TexturePan.__deallocating_deinit()
{
  Backdrop.TexturePan.deinit();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy32_8_1(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Backdrop.Specs.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Backdrop.Specs.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Backdrop.State and conformance Backdrop.State()
{
  result = lazy protocol witness table cache variable for type Backdrop.State and conformance Backdrop.State;
  if (!lazy protocol witness table cache variable for type Backdrop.State and conformance Backdrop.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Backdrop.State and conformance Backdrop.State);
  }

  return result;
}

unint64_t _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_2(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_2(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_2(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_2(a5, a6);
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

id *_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_2(uint64_t a1, unint64_t a2)
{
  v3 = _ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_2(a1, a2);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_2(&_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyFTv_r_2);
  return v3;
}

id *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_2(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_2(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_2(v10, 0);
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

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_2(uint64_t result)
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

  result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_2(result, v11, 1, v3);
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

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_2(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_2);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_2(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_2);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22MTKTextureLoaderOptiona_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22MTKTextureLoaderOptionaSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

char *specialized Backdrop.TextureBlender.init(context:)(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  if (one-time initialization token for quad != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = static Vertex.quad;
  *(v1 + 120) = static Vertex.quad;
  *(v1 + 128) = &outlined read-only object #0 of one-time initialization function for quadIndices;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 48) = *result;
  *(v1 + 64) = v5;
  *(v1 + 73) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 136) = result;
    v9 = *(v1 + 128);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 144) = [*(v1 + 48) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 160) = Backdrop.TextureBlender.createPipelineState()();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      Backdrop.TextureBlender.buildTexture(device:)(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

char *specialized Backdrop.TexturePan.init(context:)(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  if (one-time initialization token for quad != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = static Vertex.quad;
  *(v1 + 104) = static Vertex.quad;
  *(v1 + 112) = &outlined read-only object #0 of one-time initialization function for quadIndices;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 136) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 56) = *result;
  *(v1 + 72) = v5;
  *(v1 + 81) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 120) = result;
    v9 = *(v1 + 112);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 128) = [*(v1 + 56) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 144) = Backdrop.TexturePan.createPipelineState()();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      Backdrop.TexturePan.buildTextures(device:)(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

double specialized Backdrop.CompositeRenderer.imageScales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd);
  v0 = swift_allocObject();
  v0[1] = xmmword_1004F2EB0;
  v0[2] = xmmword_1005146C0;
  v0[3] = xmmword_1005146D0;
  v0[4] = xmmword_100514680;
  result = 0.0;
  v0[5] = xmmword_100514690;
  v0[6] = xmmword_1005146E0;
  v0[7] = xmmword_1005146F0;
  v0[8] = xmmword_100514680;
  v0[9] = xmmword_100514690;
  v0[10] = xmmword_1005146E0;
  v0[11] = xmmword_1005146F0;
  v0[12] = xmmword_100514680;
  v0[13] = xmmword_100514690;
  return result;
}

id specialized Backdrop.CompositeRenderer.updateUniforms(frameTime:isLight:)(float a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms;
  v5 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms);
  v6 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  *v6 = v5;
  *(v6 + 340) = *(v4 + 340);
  *(v6 + 352) = *(v4 + 352);
  *(v6 + 8) = *(v4 + 8);
  if ((*(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor + 4) & 1) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor);
    v8 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
    v9 = *(v8 + 32);
    if (*(v8 + 40) < v9)
    {
      v9 = *(v8 + 40);
    }

    v10 = v9;
    *(v8 + 24) = v7 * v10;
    Backdrop.RotatingArtworkRenderer.updateBlur()();
  }

  if ((((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix)) <= 1.0)
  {
    v11 = ((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix);
  }

  else
  {
    v11 = 1.0;
  }

  *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v11;
  v12 = *(v4 + 348);
  swift_beginAccess();
  *(v6 + 348) = v12;
  *(v6 + 344) = *(v4 + 344);
  *(v6 + 328) = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix);
  *&v13 = v11;
  result = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction) _solveForInput:v13];
  *(v6 + 320) = v15;
  *(v6 + 332) = 1082130432;
  v16 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v17 = *(v16 + 32);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 <= -32769.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 32768.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v6 + 336) = v17;
  v18 = *(v16 + 40);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 <= -32769.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 < 32768.0)
  {
    *(v6 + 338) = v18;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1003DACC4()
{
  outlined consume of Backdrop.CompositeRenderer.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void outlined consume of Backdrop.CompositeRenderer.Content(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

id outlined copy of Backdrop.CompositeRenderer.Content(id result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t outlined destroy of (MTKTextureLoaderOption, Bool)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22MTKTextureLoaderOptiona_SbtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003DADA4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003DADFC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_1()
{
  result = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_1;
  if (!_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_1);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(unint64_t *a1, void (*a2)(uint64_t))
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

int *Uniforms.standard.unsafeMutableAddressor()
{
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  return &static Uniforms.standard;
}

double one-time initialization function for shared()
{
  v0 = MTLCreateSystemDefaultDevice();
  specialized MetalContext.init(device:)(v0, &v2);
  static MetalContext.shared = v2;
  unk_10063F630 = v3[0];
  result = *(v3 + 9);
  *(&qword_10063F638 + 1) = *(v3 + 9);
  return result;
}

void closure #1 in variable initialization expression of static Vertex.vertexDescriptor()
{
  v0 = [objc_allocWithZone(MTLVertexDescriptor) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript:0];

  if (!v2)
  {
    goto LABEL_21;
  }

  [v2 setFormat:30];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript:0];

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v4 setOffset:0];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v6 setBufferIndex:0];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript:1];

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v8 setFormat:30];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript:1];

  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v10 setOffset:16];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript:1];

  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v12 setBufferIndex:0];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript:2];

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v14 setFormat:30];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript:2];

  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript:1];

  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [v18 offset];

  if (__OFADD__(v19, 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setOffset:v19 + 16];

  v20 = [v0 attributes];
  v21 = [v20 objectAtIndexedSubscript:2];

  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 setBufferIndex:0];

  v22 = [v0 attributes];
  v23 = [v22 objectAtIndexedSubscript:3];

  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v23 setFormat:29];

  v24 = [v0 attributes];
  v25 = [v24 objectAtIndexedSubscript:3];

  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = [v0 attributes];
  v27 = [v26 objectAtIndexedSubscript:2];

  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = [v27 offset];

  if (__OFADD__(v28, 16))
  {
    goto LABEL_20;
  }

  [v25 setOffset:v28 + 16];

  v29 = [v0 attributes];
  v30 = [v29 objectAtIndexedSubscript:3];

  if (!v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v30 setBufferIndex:0];

  v31 = [v0 layouts];
  v32 = [v31 objectAtIndexedSubscript:0];

  if (v32)
  {
    [v32 setStride:64];

    return;
  }

LABEL_35:
  __break(1u);
}

double one-time initialization function for topLeft()
{
  result = -0.00781250557;
  static Vertex.topLeft = xmmword_100514700;
  qword_10063F670 = 0x3F80000000000000;
  xmmword_10063F680 = xmmword_100514700;
  unk_10063F690 = xmmword_100514700;
  return result;
}

double one-time initialization function for bottomLeft()
{
  result = 0.00781250557;
  static Vertex.bottomLeft = xmmword_100514710;
  qword_10063F6B0 = 0;
  xmmword_10063F6C0 = xmmword_100514710;
  unk_10063F6D0 = xmmword_100514710;
  return result;
}

double one-time initialization function for topRight()
{
  result = 0.00781250185;
  static Vertex.topRight = xmmword_100514720;
  qword_10063F6F0 = 1065353216;
  xmmword_10063F700 = xmmword_100514720;
  unk_10063F710 = xmmword_100514720;
  return result;
}

double one-time initialization function for bottomRight()
{
  result = -0.00781250185;
  static Vertex.bottomRight = xmmword_100514730;
  __asm { FMOV            V1.2S, #1.0 }

  qword_10063F730 = _D1;
  xmmword_10063F740 = xmmword_100514730;
  unk_10063F750 = xmmword_100514730;
  return result;
}

double one-time initialization function for quad()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17ShaderFallbackKit6VertexVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EE0;
  if (one-time initialization token for topLeft != -1)
  {
    v14 = v0;
    swift_once();
    v0 = v14;
  }

  v1 = qword_10063F670;
  v2 = xmmword_10063F680;
  v3 = unk_10063F690;
  *(v0 + 32) = static Vertex.topLeft;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  if (one-time initialization token for bottomLeft != -1)
  {
    v15 = v0;
    swift_once();
    v0 = v15;
  }

  v4 = qword_10063F6B0;
  v5 = xmmword_10063F6C0;
  v6 = unk_10063F6D0;
  *(v0 + 96) = static Vertex.bottomLeft;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  if (one-time initialization token for topRight != -1)
  {
    v16 = v0;
    swift_once();
    v0 = v16;
  }

  v7 = qword_10063F6F0;
  v8 = xmmword_10063F700;
  v9 = unk_10063F710;
  *(v0 + 160) = static Vertex.topRight;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  if (one-time initialization token for bottomRight != -1)
  {
    v17 = v0;
    swift_once();
    v0 = v17;
  }

  result = *&static Vertex.bottomRight;
  v11 = qword_10063F730;
  v12 = xmmword_10063F740;
  v13 = unk_10063F750;
  *(v0 + 224) = static Vertex.bottomRight;
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v13;
  static Vertex.quad = v0;
  return result;
}

double one-time initialization function for standard()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  static Uniforms.standard = 0;
  qword_10063F778 = 0;
  xmmword_10063F780 = static simd_float4x4.identity;
  unk_10063F790 = *algn_10063F5F0;
  xmmword_10063F7A0 = xmmword_10063F600;
  unk_10063F7B0 = unk_10063F610;
  dword_10063F804 = 0;
  dword_10063F854 = 0;
  dword_10063F8A4 = 0;
  xmmword_10063F7C0 = 0u;
  unk_10063F7D0 = 0u;
  xmmword_10063F7E0 = 0u;
  unk_10063F7F0 = 0u;
  word_10063F800 = 0;
  word_10063F850 = 0;
  xmmword_10063F830 = 0u;
  unk_10063F840 = 0u;
  xmmword_10063F810 = 0u;
  unk_10063F820 = 0u;
  xmmword_10063F860 = 0u;
  unk_10063F870 = 0u;
  xmmword_10063F880 = 0u;
  unk_10063F890 = 0u;
  word_10063F8A0 = 0;
  result = 0.0;
  xmmword_10063F8B0 = xmmword_100514690;
  qword_10063F8C0 = 0x3F80000000000000;
  unk_10063F8C8 = 0;
  qword_10063F8D0 = 0;
  unk_10063F8D8 = 0;
  return result;
}

void *static Uniforms.standard.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &static Uniforms.standard, 0x170uLL);
}

__n128 __swift_memcpy41_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id specialized MetalContext.makeRenderPipelineDescriptor(vertexShader:fragmentShader:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [a7 newFunctionWithName:v8];

  v10 = String._bridgeToObjectiveC()();
  v11 = [a7 newFunctionWithName:v10];

  v12 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setLabel:v13];

  [v12 setVertexFunction:v9];
  [v12 setFragmentFunction:v11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

void specialized MetalContext.init(device:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v4)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    static os_log_type_t.error.getter();
    _sSo9OS_os_logCMa_1();
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();

    v2 = 0;
    v5 = 0;
    v6 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v14 = 0;
  v6 = [v2 newDefaultLibraryWithBundle:static NSBundle.module error:&v14];
  v7 = v14;
  if (!v6)
  {
    v12 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v8 = objc_allocWithZone(MTKTextureLoader);
  swift_unknownObjectRetain();
  v9 = [v8 initWithDevice:v2];
  v10 = [v2 supportsFamily:1003];
  swift_unknownObjectRelease();
  v11 = 80;
LABEL_10:
  *a2 = v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
}

unint64_t _sSo9OS_os_logCMa_1()
{
  result = _sSo9OS_os_logCML_1;
  if (!_sSo9OS_os_logCML_1)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo9OS_os_logCML_1);
  }

  return result;
}

uint64_t SpectrumAnalysis.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1045220557;
  *(v0 + 80) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd);
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v1 + 16) = 4;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v0 + 96) = v1;
  *(v0 + 104) = &outlined read-only object #0 of SpectrumAnalysis.init();
  return v0;
}

uint64_t SpectrumAnalysis.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = SpectrumAnalysis.spectrumObserver.getter();
    [v2 unregisterObserver:v3];

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

id SpectrumAnalysis.spectrumObserver.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = closure #1 in SpectrumAnalysis.spectrumObserver.getter();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id closure #1 in SpectrumAnalysis.spectrumObserver.getter()
{
  v0 = [objc_allocWithZone(MPCAudioSpectrumObserver) init];
  LODWORD(v1) = 20.0;
  LODWORD(v2) = 1133903872;
  [v0 addFrequencyBand:{v1, v2}];
  LODWORD(v3) = 1133903872;
  LODWORD(v4) = 1163575296;
  [v0 addFrequencyBand:{v3, v4}];
  LODWORD(v5) = 1186693120;
  LODWORD(v6) = 1163575296;
  [v0 addFrequencyBand:{v6, v5}];
  v7 = swift_allocObject();
  swift_weakInit();
  v10[4] = partial apply for closure #1 in closure #1 in SpectrumAnalysis.spectrumObserver.getter;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v10[3] = &block_descriptor_33_1;
  v8 = _Block_copy(v10);

  [v0 setOnUpdate:v8];
  _Block_release(v8);
  return v0;
}

uint64_t closure #1 in closure #1 in SpectrumAnalysis.spectrumObserver.getter(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SpectrumAnalysis.update(observer:)(a1);
  }

  return result;
}

uint64_t SpectrumAnalysis.update(observer:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MPCAudioSpectrumObserver.bandsPower.getter();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v12);
  v26 = v13;

  [a1 powerLevel];
  v15 = log10f(v14) * 20.0;
  v16.i64[0] = vdivq_f32(vmulq_n_f32(v26, v15), vdupq_n_s32(0x42F00000u)).u64[0];
  v16.f32[2] = vmuls_lane_f32(v15, v26, 2) / 120.0;
  v16.f32[3] = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v26 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q1), *(v2 + 64));
  _sSo17OS_dispatch_queueCMa_1();
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  v23[1].i64[0] = v2;
  v23[2] = v26;
  aBlock[4] = partial apply for specialized closure #1 in SpectrumAnalysis.update(observer:);
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_67;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_1);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_1();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

id *MPCAudioSpectrumObserver.bandsPower.getter()
{
  result = [v0 numberOfBands];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = 0;
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0 = _swiftEmptyArrayStorage;
    do
    {
      [v0 averagePowerOfFrequencyBandAtIndex:v3 frequencyBand:0];
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0);
      }

      v8 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0[2];
      v7 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0[3];
      if (v8 >= v7 >> 1)
      {
        New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0((v7 > 1), (v8 + 1), 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0);
      }

      v3 = (v3 + 1);
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0[2] = v8 + 1;
      *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0 + v8 + 8) = v6;
    }

    while (v2 != v3);
    return New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0;
  }

  return result;
}

uint64_t specialized closure #1 in SpectrumAnalysis.update(observer:)(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  specialized Array.remove(at:)(0);
  v3 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(a1 + 96) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = (v6 + 1);
  *&v3[2 * v6 + 4] = a2;
  *(a1 + 96) = v3;
  return swift_endAccess();
}

size_t _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_1(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_1);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSf_Tg5_0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd_0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t _sSo17OS_dispatch_queueCMa_1()
{
  result = _sSo17OS_dispatch_queueCML_1;
  if (!_sSo17OS_dispatch_queueCML_1)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo17OS_dispatch_queueCML_1);
  }

  return result;
}

uint64_t sub_1003DCDA0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_0()
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_1;
  if (!_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_1)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_1);
  }

  return result;
}

uint64_t sub_1003DCE54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t specialized static VertexMap.randomUniqueMeshMaps(forWide:)@<X0>(char a1@<W0>, id **a2@<X8>)
{
  v3 = 5;
  if (a1)
  {
    v3 = 8;
  }

  v101 = v3;
  if (a1)
  {
    v4 = &outlined read-only object #10 of one-time initialization function for wideUniqueMeshes;
  }

  else
  {
    v4 = &outlined read-only object #10 of one-time initialization function for compactUniqueMeshes;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_81;
  }

  v7 = specialized RandomNumberGenerator.next<A>(upperBound:)(v5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (v7 < v4[2])
  {
    v92 = a2;
    if (a1)
    {
      v8 = &outlined read-only object #10 of one-time initialization function for wideUniqueMeshes;
    }

    else
    {
      v8 = &outlined read-only object #10 of one-time initialization function for compactUniqueMeshes;
    }

    v9 = &v8[2 * v7];
    v11 = v9[4];
    v10 = v9[5];
    swift_bridgeObjectRetain_n();
    v93 = v10;

    if (v11[2])
    {
      v12 = 0;
      v13 = 0;
      v14 = v101;
      v15 = 0.0;
      v16 = 0.0 / v101;
      v100 = v101 + 1;
      v17 = v11 + 6;
      v94 = v11 + 4;
      v18 = _swiftEmptyArrayStorage;
      __asm { FMOV            V2.2D, #-1.0 }

      v96 = _Q2;
      v98 = v11;
      while (2)
      {
        v102 = *&v94[2 * v12];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v25 = v18[2];
        v24 = v18[3];
        v26 = (v25 + 1);
        v27 = v101;
        v28 = v96;
        v29 = v98;
        if (v25 >= v24 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v18);
          v29 = v98;
          v28 = v96;
          v27 = v101;
          v18 = v40;
        }

        v30 = 0;
        v31 = v15 / v14;
        v18[2] = v26;
        v32 = 5 * v25;
        v33 = &v18[5 * v25];
        *(v33 + 4) = v16;
        *(v33 + 5) = v31;
        *(v33 + 3) = vaddq_f64(vaddq_f64(v102, v102), v28);
        v33[8] = 0x3FE0000000000000;
        do
        {
          v34 = v30 + 1;
          if (v30 + 1 + v12 >= v29[2])
          {
            __break(1u);
LABEL_40:
            swift_bridgeObjectRelease_n();
            if (!v93[2])
            {
              goto LABEL_76;
            }

            v53 = 0;
            v54 = 0;
            v55 = v93 + 6;
            v13 = _swiftEmptyArrayStorage;
            v56 = 0.0;
LABEL_42:
            v105 = *&v93[2 * v53 + 4];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
            }

            v57 = v96;
            v59 = v13[2];
            v58 = v13[3];
            v12 = v59 + 1;
            v27 = v101;
            v60 = v93;
            if (v59 >= v58 >> 1)
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v13);
              v57 = v96;
              v27 = v101;
              v13 = v71;
              v60 = v93;
            }

            v61 = 0;
            v62 = v56 / v14;
            v13[2] = v12;
            v63 = 5 * v59;
            v64 = &v13[5 * v59];
            *(v64 + 4) = v16;
            *(v64 + 5) = v62;
            *(v64 + 3) = vaddq_f64(vaddq_f64(v105, v105), v57);
            v64[8] = 0x3FE0000000000000;
            while (1)
            {
              v65 = v61 + 1;
              if (v61 + 1 + v53 >= v60[2])
              {
                break;
              }

              v66 = *&v55[2 * v61];
              v67 = v13[3];
              v68 = v59 + v61;
              v12 = v68 + 2;
              if (v65 + v59 >= v67 >> 1)
              {
                v106 = v66;
                v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 2, 1, v13);
                v66 = v106;
                v57 = v96;
                v27 = v101;
                v13 = v70;
                v60 = v93;
              }

              v13[2] = v12;
              v69 = &v13[v63];
              *(v69 + 9) = v65 / v14;
              *(v69 + 10) = v62;
              *(v69 + 11) = vaddq_f64(vaddq_f64(v66, v66), v57);
              v69[13] = 0x3FE0000000000000;
              v63 += 5;
              v61 = v65;
              if (v27 == v65)
              {
                if (v54 == v27)
                {
                  v72 = 0;
                  v73 = 0;
                  v12 = _swiftEmptyArrayStorage;
                  v74 = v27;
                  while (v73 != v27)
                  {
                    v99 = v74;
                    v75 = v73;
                    v107 = v72;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
                    }

                    v76 = v99;
                    v77 = 0;
                    v73 = (v75 + 1);
                    v27 = v101;
                    v78 = v107;
                    v79 = v107 - 0xFFFFFFFFLL;
                    do
                    {
                      if (!(v77 + v79))
                      {
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

                      v80 = v77 + v76;
                      if ((v77 + v76) > 0xFFFFFFFDLL)
                      {
                        goto LABEL_73;
                      }

                      v81 = v78 + v77;
                      v82 = v77 + v78 + 1;
                      v83 = v80 + 2;
                      if (((v82 | (v77 + v78) | (v80 + 2) | (v80 + 1)) & 0x8000000000000000) != 0)
                      {
                        goto LABEL_74;
                      }

                      v85 = *(v12 + 16);
                      v84 = *(v12 + 24);
                      if (v85 >= v84 >> 1)
                      {
                        v87 = v12;
                        v88 = v73;
                        v97 = v79;
                        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v87);
                        v79 = v97;
                        v76 = v99;
                        v73 = v88;
                        v27 = v101;
                        v78 = v107;
                        v12 = v89;
                      }

                      *(v12 + 16) = v85 + 1;
                      v86 = (v12 + 32 * v85);
                      *(v86 + 8) = v81;
                      *(v86 + 9) = v82;
                      *(v86 + 10) = v83;
                      *(v86 + 11) = v76 + v77 + 1;
                      v77 = (v77 + 1);
                      v86[6] = 0;
                      v86[7] = 0;
                    }

                    while (v27 != v77);
                    v72 = v78 + v100;
                    v74 = (v76 + v100);
                    if (v73 == v27)
                    {
                      goto LABEL_71;
                    }
                  }

                  goto LABEL_78;
                }

                v54 = (v54 + 1);
                v56 = v54;
                v53 += v100;
                v55 += 2 * v101 + 2;
                if (v53 < v60[2])
                {
                  goto LABEL_42;
                }

                goto LABEL_76;
              }
            }

LABEL_70:
            __break(1u);
LABEL_71:
            v90 = v27;

            *v92 = v18;
            v92[1] = v26;
            v92[2] = v90;
            v92[3] = v90;
            v92[4] = v13;
            v92[5] = v12;
            v92[6] = v90;
            v92[7] = v90;
            return result;
          }

          v35 = *&v17[2 * v30];
          v36 = v18[3];
          v37 = v25 + v30;
          v26 = (v37 + 2);
          if (v34 + v25 >= v36 >> 1)
          {
            v103 = v35;
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 2, 1, v18);
            v35 = v103;
            v29 = v98;
            v28 = v96;
            v27 = v101;
            v18 = v39;
          }

          v18[2] = v26;
          v38 = &v18[v32];
          *(v38 + 9) = v34 / v14;
          *(v38 + 10) = v31;
          *(v38 + 11) = vaddq_f64(vaddq_f64(v35, v35), v28);
          v38[13] = 0x3FE0000000000000;
          v32 += 5;
          v30 = v34;
        }

        while (v27 != v34);
        if (v13 == v27)
        {
          v41 = 0;
          v42 = 0;
          v26 = _swiftEmptyArrayStorage;
          v43 = v27;
          while (v42 != v27)
          {
            v104 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
            }

            v44 = 0;
            v95 = (v42 + 1);
            v27 = v101;
            v45 = v104;
            do
            {
              if (!(v44 + v104 - 0xFFFFFFFFLL))
              {
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              v46 = v44 + v43;
              if ((v44 + v43) > 0xFFFFFFFDLL)
              {
                goto LABEL_68;
              }

              v13 = (v44 + v45);
              v47 = v44 + v45 + 1;
              v48 = v46 + 2;
              if (((v47 | (v44 + v45) | (v46 + 2) | (v46 + 1)) & 0x8000000000000000) != 0)
              {
                goto LABEL_69;
              }

              v50 = v26[2];
              v49 = v26[3];
              v12 = v50 + 1;
              if (v50 >= v49 >> 1)
              {
                v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v26);
                v27 = v101;
                v45 = v104;
                v26 = v52;
              }

              v26[2] = v12;
              v51 = &v26[4 * v50];
              *(v51 + 8) = v13;
              *(v51 + 9) = v47;
              *(v51 + 10) = v48;
              *(v51 + 11) = v43 + v44 + 1;
              v44 = (v44 + 1);
              v51[6] = 0;
              v51[7] = 0;
            }

            while (v27 != v44);
            v41 = v45 + v100;
            v43 = (v43 + v100);
            v42 = v95;
            if (v95 == v27)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_77;
        }

        v13 = (v13 + 1);
        v15 = v13;
        v12 += v100;
        v17 += 2 * v101 + 2;
        if (v12 < v29[2])
        {
          continue;
        }

        break;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  __break(1u);
LABEL_81:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void ShaderFallback.configuration.didset(double *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration);
  swift_beginAccess();
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v13 = v3[11];
  if (*v3 != *a1)
  {
    if (!*(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image))
    {
      v15.value.super.isa = 0;
      v15.is_nil = 1;
      ShaderFallback.setImage(_:animated:)(v15, v4);
      v6 = v3[3];
      v5 = v3[4];
      v7 = v3[5];
      v8 = v3[6];
      v9 = v3[7];
      v10 = v3[8];
      v11 = v3[9];
      v12 = v3[10];
      v13 = v3[11];
    }

LABEL_15:
    v14 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
    *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = v3[1];
    *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime);
    v14[57] = v6;
    v14[58] = v10;
    v14[59] = v11;
    v14[60] = v12;
    v14[61] = v13;
    v14[53] = v7;
    v14[54] = v8;
    v14[55] = v9;
    v14[56] = v5;
    return;
  }

  if (v3[1] != a1[1] || v3[2] != a1[2] || v6 != a1[3] || v5 != a1[4] || v7 != a1[5] || v8 != a1[6] || v9 != a1[7] || v10 != a1[8] || v11 != a1[9] || v12 != a1[10] || v13 != a1[11])
  {
    goto LABEL_15;
  }
}

__n128 ShaderFallback.configuration.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
  swift_beginAccess();
  v4 = *(v3 + 48);
  a1[2] = *(v3 + 32);
  a1[3] = v4;
  v5 = *(v3 + 80);
  a1[4] = *(v3 + 64);
  a1[5] = v5;
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v7;
  return result;
}

void ShaderFallback.configuration.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration);
  swift_beginAccess();
  v4 = v3[3];
  v10[2] = v3[2];
  v10[3] = v4;
  v5 = v3[5];
  v10[4] = v3[4];
  v10[5] = v5;
  v6 = v3[1];
  v10[0] = *v3;
  v10[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  ShaderFallback.configuration.didset(v10);
}

void (*ShaderFallback.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
  *(v3 + 312) = v1;
  *(v3 + 320) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v4[12] = *v6;
  v4[13] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v4[16] = v6[4];
  v4[17] = v10;
  v4[14] = v8;
  v4[15] = v9;
  return ShaderFallback.configuration.modify;
}

void ShaderFallback.configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 312) + *(*a1 + 320));
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 96;
  }

  v5 = v3[1];
  *v4 = *v3;
  *(v4 + 16) = v5;
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  *(v4 + 64) = v3[4];
  *(v4 + 80) = v6;
  *(v4 + 32) = v8;
  *(v4 + 48) = v7;
  v9 = v2[13];
  *v3 = v2[12];
  v3[1] = v9;
  v10 = v2[17];
  v12 = v2[14];
  v11 = v2[15];
  v3[4] = v2[16];
  v3[5] = v10;
  v3[2] = v12;
  v3[3] = v11;
  ShaderFallback.configuration.didset(v4);

  free(v2);
}

void *ShaderFallback.image.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  v2 = v1;
  return v1;
}

void ShaderFallback.image.setter(UIImage_optional a1, Swift::Bool a2)
{
  isa = a1.value.super.isa;
  a1.is_nil = 0;
  ShaderFallback.setImage(_:animated:)(a1, a2);
}

void (*ShaderFallback.image.modify(void *a1))(Class *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return ShaderFallback.image.modify;
}

void ShaderFallback.image.modify(Class *a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v8.value.super.isa = v6;
    v8.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v8, v4);

    v5 = v3;
  }

  else
  {
    v9.value.super.isa = *a1;
    v9.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v9, v2);
    v5 = v6;
  }
}

Swift::Void __swiftcall ShaderFallback.setImage(_:animated:)(UIImage_optional _, Swift::Bool animated)
{
  v3 = v2;
  isa = _.value.super.isa;
  if (!_.is_nil || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v16 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
    swift_beginAccess();
    v5 = *(v3 + v16) ^ 1;
  }

  v6 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = isa;
  v7 = isa;

  if (!isa)
  {
    v8 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    isa = specialized static ShaderFallback.fallbackImage(_:)(*(v3 + v8));
  }

  v9 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = v7;
    v11 = v9;
    v12 = [isa CGImage];
    Backdrop.CompositeRenderer.setImage(_:animated:)(v12, v5 & 1);

    if (v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v7;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (v14)
  {
    v15 = v14;
    [v15 setNeedsDisplay];
  }

LABEL_13:
}

uint64_t ShaderFallback.isPaused.getter()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

id ShaderFallback.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return ShaderFallback.pauseMetalViewIfNeeded()();
}

id (*ShaderFallback.isPaused.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ShaderFallback.isPaused.modify;
}

id ShaderFallback.isPaused.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ShaderFallback.pauseMetalViewIfNeeded()();
  }

  return result;
}

char *ShaderFallback.init(configuration:)(_OWORD *a1)
{
  swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_2);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = 0;
  v6 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator();
  swift_allocObject();
  *&v1[v6] = ShaderFallback.Calculator.init()();
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = 0;
  v7 = &v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration];
  v8 = a1[3];
  v7[2] = a1[2];
  v7[3] = v8;
  v9 = a1[5];
  v7[4] = a1[4];
  v7[5] = v9;
  v10 = a1[1];
  *v7 = *a1;
  v7[1] = v10;
  v11 = type metadata accessor for ShaderFallback();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  ShaderFallback.buildMetalView()();
  v13 = [v12 traitCollection];
  v14 = [v13 accessibilityContrast];

  *(v12 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = v14 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_1);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004F2400;
  *(v15 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v15 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v16 = objc_opt_self();
  v17 = [v16 processInfo];
  v18 = [v17 isLowPowerModeEnabled];

  *(v12 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = v18;
  v19 = type metadata accessor for TaskPriority();
  v20 = *(*(v19 - 8) + 56);
  v20(v5, 1, 1, v19);
  type metadata accessor for MainActor();
  v21 = v12;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  *&v21[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_2(0, 0, v5, &async function pointer to partial apply for closure #2 in ShaderFallback.init(configuration:), v23);

  v24 = [v16 processInfo];
  v25 = [v24 thermalState];

  *&v21[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = v25;
  v20(v5, 1, 1, v19);
  v26 = v21;
  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v26;
  *&v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_2(0, 0, v5, &async function pointer to partial apply for closure #3 in ShaderFallback.init(configuration:), v28);

  v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v20(v5, 1, 1, v19);
  v29 = static MainActor.shared.getter();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v26;
  *&v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_2(0, 0, v5, &async function pointer to partial apply for closure #4 in ShaderFallback.init(configuration:), v30);

  return v26;
}

uint64_t closure #2 in ShaderFallback.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  v4[4] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(closure #2 in ShaderFallback.init(configuration:), v7, v6);
}

uint64_t closure #2 in ShaderFallback.init(configuration:)()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = static MainActor.shared.getter();
  v4 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = closure #2 in ShaderFallback.init(configuration:);
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #2 in ShaderFallback.init(configuration:);
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #2 in ShaderFallback.init(configuration:);
  }

  return _swift_task_switch(v7, v4, v6);
}

{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(closure #2 in ShaderFallback.init(configuration:), v1, v2);
}

{
  v1 = v0[4];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[12];
    v6 = v0[3];
    v7 = [objc_opt_self() processInfo];
    v8 = [v7 isLowPowerModeEnabled];

    v9 = *(v6 + v5);
    *(v6 + v5) = v8;
    if (v8 != v9)
    {
      v10 = v0[3];
      if (*(v10 + v0[13]))
      {
        v11 = *(v10 + v0[14]);
        if (v11)
        {
          v12 = *(v10 + v0[15]);
          v13 = 60;
          if (v8)
          {
            v13 = 30;
          }

          v14 = 30;
          if (v8)
          {
            v14 = 20;
          }

          v15 = 60;
          if (v8)
          {
            v15 = 30;
          }

          v16 = 20;
          if (v8)
          {
            v16 = 15;
          }

          if (v12 == 3)
          {
            v15 = v16;
          }

          v17 = v12 >= 2;
          if (v12 == 2)
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          if (v17)
          {
            v19 = v18;
          }

          else
          {
            v19 = v13;
          }

          [v11 setPreferredFramesPerSecond:v19];
        }
      }
    }

    outlined destroy of TaskPriority?(v0[4], &_s10Foundation12NotificationVSgMd);
    v0[16] = static MainActor.shared.getter();
    v20 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator();
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = closure #2 in ShaderFallback.init(configuration:);
    v22 = v0[4];
    v23 = v0[5];

    return dispatch thunk of AsyncIteratorProtocol.next()(v22, v23, v20);
  }
}

{
  *(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_1);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_2);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  _sScPSgWOc_1(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_2);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_2);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_2);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t closure #3 in ShaderFallback.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  v4[4] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(closure #3 in ShaderFallback.init(configuration:), v7, v6);
}

uint64_t closure #3 in ShaderFallback.init(configuration:)()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = static MainActor.shared.getter();
  v4 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = closure #3 in ShaderFallback.init(configuration:);
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #3 in ShaderFallback.init(configuration:);
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #3 in ShaderFallback.init(configuration:);
  }

  return _swift_task_switch(v7, v4, v6);
}

{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(closure #3 in ShaderFallback.init(configuration:), v1, v2);
}

{
  v1 = v0[4];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[12];
  v6 = v0[3];
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 thermalState];

  v9 = *(v6 + v5);
  *(v6 + v5) = v8;
  if (v8 != v9)
  {
    v10 = v0[3];
    if (*(v10 + v0[13]))
    {
      v11 = *(v10 + v0[14]);
      if (v11)
      {
        if (v8 < 2)
        {
          goto LABEL_12;
        }

        if (v8 == 2)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 30;
          v14 = 20;
          goto LABEL_14;
        }

        if (v8 == 3)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 20;
          v14 = 15;
        }

        else
        {
LABEL_12:
          v12 = *(v10 + v0[15]) == 0;
          v13 = 60;
          v14 = 30;
        }

LABEL_14:
        if (v12)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        [v11 setPreferredFramesPerSecond:v15];
      }
    }
  }

  outlined destroy of TaskPriority?(v0[4], &_s10Foundation12NotificationVSgMd);
  v0[16] = static MainActor.shared.getter();
  v16 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator();
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = closure #3 in ShaderFallback.init(configuration:);
  v18 = v0[4];
  v19 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v18, v19, v16);
}

uint64_t closure #4 in ShaderFallback.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(closure #4 in ShaderFallback.init(configuration:), v7, v6);
}

uint64_t closure #4 in ShaderFallback.init(configuration:)()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled;
  v0[16] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  v0[17] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled;
  v0[18] = v3;
  swift_beginAccess();
  v0[19] = static MainActor.shared.getter();
  v4 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = closure #4 in ShaderFallback.init(configuration:);
  v6 = v0[7];
  v7 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #4 in ShaderFallback.init(configuration:);
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #4 in ShaderFallback.init(configuration:);
  }

  return _swift_task_switch(v7, v4, v6);
}

{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(closure #4 in ShaderFallback.init(configuration:), v1, v2);
}

{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[15];
    v6 = v0[6];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v8 = *(v6 + v5);
    *(v6 + v5) = IsReduceMotionEnabled;
    if (IsReduceMotionEnabled != v8)
    {
      v9 = IsReduceMotionEnabled;
      v10 = v0[16];
      v11 = v0[6];
      v12 = *(v11 + v10);
      if (v12)
      {
        v13 = ((v9 | *(v11 + v0[17])) & 1) != 0 ? 1 : *(v11 + v0[18]);
        [v12 setEnableSetNeedsDisplay:v13];
        v14 = *(v11 + v10);
        if (v14)
        {
          v15 = v0[6];
          if ((*(v15 + v0[17]) & 1) != 0 || *(v15 + v0[15]) == 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = *(v15 + v0[18]);
          }

          [v14 setPaused:v16];
        }
      }
    }

    outlined destroy of TaskPriority?(v0[7], &_s10Foundation12NotificationVSgMd);
    v0[19] = static MainActor.shared.getter();
    v17 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator();
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = closure #4 in ShaderFallback.init(configuration:);
    v19 = v0[7];
    v20 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v17);
  }
}

{
  *(v0 + 40) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_1);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id ShaderFallback.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver])
  {

    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver])
  {

    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver])
  {

    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShaderFallback();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void ShaderFallback.buildMetalView()()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  if (!*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView])
  {
    v2 = v0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = static MetalContext.shared;
    if (static MetalContext.shared)
    {
      v4 = byte_10063F648;
      v5 = qword_10063F638;
      v25 = static MetalContext.shared;
      v26 = unk_10063F630;
      v27 = qword_10063F638;
      v28 = unk_10063F640;
      v29 = byte_10063F648 & 1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = v5;
      [v2 bounds];
      v11 = [objc_allocWithZone(MTKView) initWithFrame:v3 device:{v7, v8, v9, v10}];
      [v11 setAutoresizingMask:18];
      v12 = [v11 layer];

      [v12 setAllowsDisplayCompositing:0];
      if ((v4 & 1) != 0 && *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor() == 1)
      {
        [v11 setColorPixelFormat:552];
      }

      v13 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = Backdrop.CompositeRenderer.init(context:)(&v25);
      *&v15[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = &protocol witness table for ShaderFallback;
      swift_unknownObjectWeakAssign();
      v32.r = 0.5;
      v32.g = 0.5;
      v32.b = 0.5;
      Backdrop.CompositeRenderer.setPlaceholderColor(_:animated:)(v32, 0);
      Backdrop.CompositeRenderer.framebufferPixelFormat.setter([v11 colorPixelFormat]);
      [v11 setDelegate:v2];
      v31.value.super.isa = 0;
      v31.is_nil = 0;
      ShaderFallback.setImage(_:animated:)(v31, v16);
      v17 = [v11 delegate];
      if (v17)
      {
        v18 = v17;
        [v2 frame];
        [v18 mtkView:v11 drawableSizeWillChange:{v19, v20}];
        swift_unknownObjectRelease();
      }

      [v11 setPreferredFramesPerSecond:60];
      v21 = *&v2[v1];
      *&v2[v1] = v11;
      v22 = v11;

      v23 = *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer];
      *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = v15;
      v24 = v15;

      [v2 addSubview:v22];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

id ShaderFallback.pauseMetalViewIfNeeded()()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  result = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled))
    {
      v3 = 1;
    }

    else
    {
      v4 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
      v5 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
      swift_beginAccess();
      result = v5;
      v3 = *(v0 + v4);
    }

    [result setEnableSetNeedsDisplay:v3];
    result = *(v0 + v1);
    if (result)
    {
      if ((*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) == 1)
      {
        v6 = 1;
      }

      else
      {
        v7 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
        v8 = *(v0 + v1);
        swift_beginAccess();
        result = v8;
        v6 = *(v0 + v7);
      }

      return [result setPaused:v6];
    }
  }

  return result;
}

Swift::Void __swiftcall ShaderFallback.draw(in:)(MTKView in)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
  static Date.now.getter();
  ShaderFallback.Calculator.tick(_:)(v7);
  (*(v5 + 8))(v7, v4);
  v9 = *(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis];
    v11 = v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    v12 = *(v11 + 16);
    *(v10 + 64) = v12;
    *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = *(v8 + 344);
    memmove(&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], (v8 + 16), 0x170uLL);
    v13 = &v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
    *v13 = *(v8 + 400) / 786.0;
    *(v13 + 4) = 0;
  }

  [v9 drawInMTKView:in.super.super.super.isa];
}

void __swiftcall ShaderFallback.Configuration.init(fallbackImage:transitionSpeed:intensity:blur:pinchMix:speed:ySpeed:xSpeed:bassAmount:saturation:whiteScrim:blackScrim:)(ShaderFallbackKit::ShaderFallback::Configuration *__return_ptr retstr, ShaderFallbackKit::ShaderFallback::Configuration::FallbackImage fallbackImage, Swift::Double transitionSpeed, Swift::Double intensity, Swift::Double blur, Swift::Double pinchMix, Swift::Double speed, Swift::Double ySpeed, Swift::Double xSpeed, Swift::Double bassAmount, Swift::Double saturation, Swift::Double whiteScrim, Swift::Double blackScrim)
{
  retstr->fallbackImage = fallbackImage & 1;
  retstr->transitionSpeed = transitionSpeed;
  retstr->intensity = intensity;
  retstr->blur = blur;
  retstr->pinchMix = pinchMix;
  retstr->speed = speed;
  retstr->ySpeed = ySpeed;
  retstr->xSpeed = xSpeed;
  retstr->bassAmount = bassAmount;
  *&retstr->saturation = *&saturation;
  retstr->blackScrim = blackScrim;
}

double ShaderFallback.Configuration.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v13 = v2[2];
  v14 = v4;
  v5 = v2[5];
  v15 = v2[4];
  v16 = v5;
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  a1(&v11);
  v7 = v14;
  a2[2] = v13;
  a2[3] = v7;
  v8 = v16;
  a2[4] = v15;
  a2[5] = v8;
  result = *&v11;
  v10 = v12;
  *a2 = v11;
  a2[1] = v10;
  return result;
}

double one-time initialization function for zero()
{
  LOBYTE(static ShaderFallback.Configuration.zero) = 0;
  result = 0.0;
  *(&static ShaderFallback.Configuration.zero + 8) = 0u;
  *&algn_10063F8F0[8] = 0u;
  *(&xmmword_10063F900 + 8) = 0u;
  unk_10063F918 = 0u;
  *(&xmmword_10063F920 + 8) = 0u;
  qword_10063F938 = 0;
  return result;
}

__int128 *ShaderFallback.Configuration.zero.unsafeMutableAddressor()
{
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.zero;
}

double static ShaderFallback.Configuration.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_10063F910;
  a1[2] = xmmword_10063F900;
  a1[3] = v1;
  v2 = unk_10063F930;
  a1[4] = xmmword_10063F920;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.zero;
  v4 = *algn_10063F8F0;
  *a1 = static ShaderFallback.Configuration.zero;
  a1[1] = v4;
  return result;
}

double one-time initialization function for default()
{
  LOBYTE(static ShaderFallback.Configuration.default) = 0;
  *(&static ShaderFallback.Configuration.default + 8) = xmmword_100514740;
  *&algn_10063F950[8] = xmmword_100514750;
  *(&xmmword_10063F960 + 8) = xmmword_100514760;
  unk_10063F978 = xmmword_100514770;
  result = 2.0;
  *(&xmmword_10063F980 + 8) = xmmword_100514780;
  qword_10063F998 = 0x3FD6666666666666;
  return result;
}

__int128 *ShaderFallback.Configuration.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.default;
}

double static ShaderFallback.Configuration.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_10063F970;
  a1[2] = xmmword_10063F960;
  a1[3] = v1;
  v2 = unk_10063F990;
  a1[4] = xmmword_10063F980;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.default;
  v4 = *algn_10063F950;
  *a1 = static ShaderFallback.Configuration.default;
  a1[1] = v4;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ShaderFallback.Configuration(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return specialized static ShaderFallback.Configuration.__derived_struct_equals(_:_:)(v9, v10);
}

uint64_t ShaderFallback.Calculator.init()()
{
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  memmove((v0 + 16), &static Uniforms.standard, 0x170uLL);
  *(v0 + 384) = xmmword_100514790;
  *(v0 + 400) = xmmword_1005147A0;
  *(v0 + 416) = 1028443341;
  *(v0 + 424) = 0x3F50624DD2F1A9FCLL;
  *(v0 + 432) = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  *(v0 + 448) = xmmword_1005147B0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 464) = _Q0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  static Date.now.getter();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = 0;
  static Date.now.getter();
  static Date.now.getter();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = 0x4024000000000000;
  return v0;
}

void ShaderFallback.Calculator.tick(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v27 = *(v5 + 16);
  v27(&v26 - v10, v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime, v4, v9);
  Date.timeIntervalSince(_:)();
  v13 = v12;
  v14 = v5;
  v26 = v5;
  v15 = *(v5 + 8);
  v15(v11, v4);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = v13;
  v16 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime;
  swift_beginAccess();
  (*(v14 + 24))(v2 + v16, a1, v4);
  swift_endAccess();
  v17 = v27;
  (v27)(v11, v2 + v16, v4);
  v18 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime;
  swift_beginAccess();
  v17(v7, v2 + v18, v4);
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v15(v7, v4);
  v15(v11, v4);
  v21 = v20 * v2[96];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = v21;
  v22 = v20 * v2[97];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = v22;
  v23 = v20 * v2[98];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = v23;
  v24 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed;
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = v21 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = v22 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = v23 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  (v27)(v11, v2 + v16, v4);
  swift_beginAccess();
  (*(v26 + 40))(v2 + v18, v11, v4);
  swift_endAccess();
  v25 = *(v2 + v24);
  v2[4] = v25;
  ShaderFallback.Calculator.updateLFO()();
  ShaderFallback.Calculator.udpateShader()();
}

double ShaderFallback.Calculator.changeConfiguration(_:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = *(a1 + 8);
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime);
  v3 = *(a1 + 24);
  result = *(a1 + 32);
  *(v1 + 448) = result;
  *(v1 + 456) = v3;
  v4 = *(a1 + 80);
  *(v1 + 464) = *(a1 + 64);
  *(v1 + 480) = v4;
  *(v1 + 424) = *(a1 + 40);
  *(v1 + 440) = *(a1 + 56);
  return result;
}

long double ShaderFallback.Calculator.updateLFO()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *v2.i64 = sin(v1 * 0.1);
  v3.i64[0] = 1.0;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v15 = vnegq_f64(v4);
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = (fabs(*v2.i64) * *vbslq_s8(v15, v3, v2).i64 + 1.0) * 0.5 * 0.2 + 0.9;
  *v5.i64 = sin(v1 * 0.25);
  v6.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = (fabs(*v5.i64) * *vbslq_s8(v15, v6, v5).i64 + 1.0) * 0.5 * 0.35 + 0.75;
  v7 = *(v0 + 404);
  *v8.i64 = sin(v1 * 0.5);
  v9.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = (fabs(*v8.i64) * *vbslq_s8(v15, v9, v8).i64 + 1.0) * 0.5 * (v7 + -0.1) + 0.1;
  *v10.i64 = sin(v1 * 0.75);
  v11.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = (*vbslq_s8(v15, v11, v10).i64 * fabs(sqrt(fabs(*v10.i64))) + 1.0) * 0.5 + 0.0;
  *v12.i64 = sin(v1);
  v13.i64[0] = 1.0;
  result = (*vbslq_s8(v15, v13, v12).i64 * pow(fabs(*v12.i64), 0.75) + 1.0) * 0.5 * 0.5 + 0.5;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = result;
  return result;
}

float ShaderFallback.Calculator.udpateShader()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass);
  v2 = *(v0 + 368);
  *v2.f64 = v1;
  *(v0 + 368) = v1;
  v3 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid);
  *(v2.f64 + 1) = v3;
  *(v0 + 368) = v2;
  v4 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi);
  *&v2.f64[1] = v4;
  *(v0 + 368) = v2;
  v5 = *(v0 + 408);
  *(v0 + 356) = v5;
  v2.f64[0] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  v2.f64[1] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v0 + 24) = vmul_f32(vrev64_s32(*(v0 + 412)), vcvt_f32_f64(v2));
  v6 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  v7 = 0.0;
  if (v6 >= 0.0)
  {
    v7 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  }

  if (v6 >= 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 * v8 * (3.0 - (v8 + v8));
  v10 = vcvtq_f64_f32(*(v0 + 384));
  *(v0 + 384) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 424), v10), v9), v10));
  v11 = *(v0 + 448);
  *v10.f64 = v9 * (*(v0 + 440) - *(v0 + 392)) + *(v0 + 392);
  *(v0 + 392) = LODWORD(v10.f64[0]);
  *v10.f64 = v9 * (v11 - *(v0 + 344)) + *(v0 + 344);
  *(v0 + 344) = LODWORD(v10.f64[0]);
  v12 = vcvtq_f64_f32(*(v0 + 360));
  *(v0 + 360) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 480), v12), v9), v12));
  v13 = vcvtq_f64_f32(*(v0 + 400));
  *(v0 + 400) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 456), v13), v9), v13));
  result = v9 * (*(v0 + 472) - v5) + v5;
  *(v0 + 408) = result;
  return result;
}

uint64_t ShaderFallback.Calculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime, v2);

  return swift_deallocClassInstance();
}

void specialized closure #1 in ShaderFallback.init(configuration:)(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 accessibilityContrast];

  v4 = v3 == 1;
  v5 = a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled];
  a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = v4;
  if (v4 != v5)
  {
    ShaderFallback.pauseMetalViewIfNeeded()();
  }
}

id specialized static ShaderFallback.fallbackImage(_:)(char a1)
{
  if (a1)
  {
    if (one-time initialization token for module == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (one-time initialization token for module != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v1 = static NSBundle.module;
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  return v3;
}

uint64_t type metadata accessor for ShaderFallback.Calculator()
{
  result = type metadata singleton initialization cache for ShaderFallback.Calculator;
  if (!type metadata singleton initialization cache for ShaderFallback.Calculator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #2 in ShaderFallback.init(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in ShaderFallback.init(configuration:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #3 in ShaderFallback.init(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in ShaderFallback.init(configuration:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #4 in ShaderFallback.init(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in ShaderFallback.init(configuration:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ShaderFallback.Configuration.FallbackImage and conformance ShaderFallback.Configuration.FallbackImage()
{
  result = lazy protocol witness table cache variable for type ShaderFallback.Configuration.FallbackImage and conformance ShaderFallback.Configuration.FallbackImage;
  if (!lazy protocol witness table cache variable for type ShaderFallback.Configuration.FallbackImage and conformance ShaderFallback.Configuration.FallbackImage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderFallback.Configuration.FallbackImage and conformance ShaderFallback.Configuration.FallbackImage);
  }

  return result;
}

__n128 __swift_memcpy96_8_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ShaderFallback.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderFallback.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for ShaderFallback.Calculator()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void specialized ShaderFallback.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer) = 0;
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator();
  swift_allocObject();
  *(v0 + v1) = ShaderFallback.Calculator.init()();
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator);
  }

  return result;
}

uint64_t _sScPSgWOc_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_2);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E1900()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_2(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_185(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t Array<A>.joined(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a1;
  v25 = a6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return (*(v24 + 8))(a3);
  }

  else
  {
    (*(v13 + 32))(v15, v12, a3);
    *&v26 = a2;

    v17 = Collection.dropFirst(_:)();
    v21 = v28;
    v26 = v28;
    v27 = v29;
    __chkstk_darwin(v17);
    v18 = v23;
    v19 = v24;
    *(&v21 - 4) = a3;
    *(&v21 - 3) = v18;
    v20 = v22;
    *(&v21 - 2) = v19;
    *(&v21 - 1) = v20;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Sequence.reduce<A>(_:_:)();
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v15, a3);
  }
}

uint64_t closure #1 in Array<A>.joined(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  v13(v9, v14, v15, v12);
  v13(v11, a2, a4, a5);
  return (*(v8 + 8))(v11, a4);
}

id variable initialization expression of BrightnessManager.brightnessClient()
{
  v0 = objc_allocWithZone(BrightnessSystemClient);

  return [v0 init];
}

unint64_t variable initialization expression of BrightnessManager.minimumBrightness(uint64_t a1)
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd);
  swift_arrayDestroy();
  return v1;
}

unint64_t variable initialization expression of BrightnessManager.disableCBFeatures()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_1(&outlined read-only object #0 of variable initialization expression of BrightnessManager.disableCBFeatures);
  outlined destroy of (String, Bool)(&unk_1005CD930);
  return v0;
}

unint64_t variable initialization expression of BrightnessManager.enableCBFeatures()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_1(&outlined read-only object #0 of variable initialization expression of BrightnessManager.enableCBFeatures);
  outlined destroy of (String, Bool)(&unk_1005CD968);
  return v0;
}

uint64_t variable initialization expression of Datavault.logger@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of WeakArray.items()
{
  type metadata accessor for WeakArray.WeakBox();

  return static Array._allocateUninitialized(_:)();
}

uint64_t variable initialization expression of WeakValuesDictionary.storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NSValue();
  swift_getTupleTypeMetadata2();
  v6 = static Array._allocateUninitialized(_:)();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v6, a1, v5, a3);

  return v7;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UILayoutPriority@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSLayoutAttribute()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSLayoutAttribute()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t _sSo18NSNotificationNameas35_HasCustomAnyHashableRepresentationSCsACP03_todeF0s0eF0VSgyFTW_1()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo18NSNotificationNameaABSHSCWL_1, _sSo18NSNotificationNameaMa_1);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo18NSNotificationNameaABs20_SwiftNewtypeWrapperSCWL_1, _sSo18NSNotificationNameaMa_1);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo21NSAttributedStringKeyas35_HasCustomAnyHashableRepresentationSCsACP03_toefG0s0fG0VSgyFTW_0()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_0, _sSo21NSAttributedStringKeyaMa_0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABs20_SwiftNewtypeWrapperSCWL_0, _sSo21NSAttributedStringKeyaMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance UILayoutPriority@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float protocol witness for RawRepresentable.rawValue.getter in conformance UILayoutPriority@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UILayoutPriority()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for Hashable.hash(into:) in conformance UILayoutPriority()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance UILayoutPriority(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_1(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd_1);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined destroy of (String, Bool)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SbtMd_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSValue()
{
  result = _sSo7NSValueCML_0;
  if (!_sSo7NSValueCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo7NSValueCML_0);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_s5UInt8VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJs5UInt8VGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17NSLayoutAttributeV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17NSLayoutAttributeV12CoreGraphics7CGFloatVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC16SuiteAssociationV_SDySSSayAH07HandlerP0VGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC16SuiteAssociationVSDySSSayAH07HandlerP0VGGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v8;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v9;
      *(v3[7] + 8 * result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}
Swift::Void __swiftcall HandwritingReflowView.replaceStrokes(_:with:animateRefinement:)(Swift::OpaquePointer _, Swift::OpaquePointer with, Swift::Bool animateRefinement)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (v10)
  {
    v29 = v10;
    HandwritingReflowView.replaceStrokes(_:with:reflowTextbox:animateRefinement:)(_._rawValue, with._rawValue, v29, animateRefinement);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v13 = Strong;
    v14 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v16 = v15;

    ObjectType = swift_getObjectType();
    v29 = (*(v16 + 16))(ObjectType, v16);

    if (!v29)
    {
      return;
    }

    if (*(_._rawValue + 2))
    {
      type metadata accessor for PKStroke();
      PKStroke.renderBounds.getter();
      v19 = v18;
      v21 = v20;
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v24 = v29;

      v25 = static MainActor.shared.getter();
      v26 = swift_allocObject();
      v27 = MEMORY[0x1E69E85E0];
      *(v26 + 16) = v25;
      *(v26 + 24) = v27;
      *(v26 + 32) = v23;
      *(v26 + 40) = v19;
      *(v26 + 48) = v21;
      *(v26 + 56) = _;
      *(v26 + 64) = v24;
      *(v26 + 72) = with;
      *(v26 + 80) = animateRefinement;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:), v26);

      return;
    }
  }

  v11 = v29;
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 184) = a10;
  *(v10 + 120) = a8;
  *(v10 + 128) = a9;
  *(v10 + 112) = a7;
  *(v10 + 96) = a1;
  *(v10 + 104) = a2;
  *(v10 + 88) = a6;
  type metadata accessor for MainActor();
  *(v10 + 136) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v10 + 144) = v12;
  *(v10 + 152) = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:), v12, v11);
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 20) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 21) = v2;
    *v2 = v0;
    v2[1] = closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:);
    v4 = *(v0 + 14);
    v3 = *(v0 + 15);
    v5 = v0[12];
    v6 = v0[13];

    return specialized static ReflowTextView.reflowTextView(at:strokes:in:)(v4, v3, v5, v6);
  }

  else
  {

    v8 = *(v0 + 1);

    return v8();
  }
}

{
  v1 = *(v0 + 176);

  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 160);
    v4 = *(v0 + 184);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    v7 = *&v2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    swift_beginAccess();
    v8._rawValue = *(v7 + 80);
    swift_beginAccess();
    v9._rawValue = *(v7 + 88);

    ReflowLayoutManager.layoutText(contents:lines:)(v8, v9);

    HandwritingReflowView.replaceStrokes(_:with:reflowTextbox:animateRefinement:)(v6, v5, v2, v4);
  }

  else
  {
    v3 = *(v0 + 160);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:), v4, v3);
}

uint64_t HandwritingReflowView.accumulateNonReflowableStrokesToRemove(_:nonReflowableStrokes:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v37 - v7;
  v8 = type metadata accessor for PKDrawing();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v41 = a2;

  v16 = Array<A>.strokeRefs.getter(v15);

  v17 = Array<A>.strokeRefs.getter(a1);
  v18 = specialized _NativeSet.intersection(_:)(v17, v16, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

  v19 = Array<A>.strokeRefs.getter(a1);
  if (v18[2] <= *(v19 + 16) >> 3)
  {
    v40 = v19;
    specialized Set._subtract<A>(_:)(v18);

    v20 = v40;
  }

  else
  {
    v20 = specialized _NativeSet.subtracting<A>(_:)(v18, v19);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v22 = Strong, v23 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))(), v25 = v24, v22, ObjectType = swift_getObjectType(), v27 = (*(v25 + 16))(ObjectType, v25), v23, v27) && (v28 = [v27 drawing], v27, static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)(), v28, (*(v9 + 32))(v14, v11, v8), type metadata accessor for PKDrawingCoherence(0), (swift_dynamicCast() & 1) != 0))
  {
    v29 = v40;
    v30 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v32 = v37;
    v31 = v38;
    v33 = v39;
    v34 = (*(v38 + 16))(v37, &v29[v30], v39);
    MEMORY[0x1EEE9AC00](v34);
    *(&v37 - 2) = v32;
    v35 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in CanvasMembers.strokeArray(in:), (&v37 - 4), v20);

    (*(v31 + 8))(v32, v33);
    specialized Array.append<A>(contentsOf:)(v35);
  }

  else
  {
  }

  if (*(v41 + 16))
  {
    *(a3 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_nonReflowableStrokesToRemove) = v41;
  }
}

Swift::Void __swiftcall HandwritingReflowView.beginTransform()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v0[OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing] = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    AnyCanvas.isResizingChanged()();
  }

  HandwritingReflowView.rectangularSelectionTransformCoordinateSpace.getter(v29);
  v7 = &v1[OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace];
  v8 = v29[1];
  *v7 = v29[0];
  *(v7 + 1) = v8;
  *(v7 + 2) = v29[2];
  HandwritingReflowView.rectangularSelectionTransformCoordinateSpace.getter(v30);
  v9 = v31;
  v10 = v32;
  ResizeView.modelToViewTransform.getter(&v33);
  *&t1.a = v30[0];
  *&t1.c = v30[1];
  t1.tx = v9;
  t1.ty = v10;
  v28 = v33;
  CGAffineTransformConcat(&v27, &t1, &v28);
  v11 = *&v27.c;
  v12 = *&v27.tx;
  v13 = &v1[OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled];
  *v13 = *&v27.a;
  *(v13 + 1) = v11;
  *(v13 + 2) = v12;
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    HandwritingReflowView.rectangularSelectionTransformCoordinateSpace.getter(&t1);
    v16 = &v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_initialCoordinateSpace];
    v17 = *&t1.c;
    *v16 = *&t1.a;
    *(v16 + 1) = v17;
    *(v16 + 2) = *&t1.tx;
    v16[48] = 0;
    v18 = *&v1[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle];
    if (v18 < 2 || *(v18 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category) == 1)
    {
      v19 = *&v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
      if (v19)
      {
        v20 = 1;
LABEL_10:
        *(*(v19 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager) + 219) = v20;
      }
    }

    else
    {
      v19 = *&v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox];
      if (v19)
      {
        v20 = 0;
        goto LABEL_10;
      }
    }

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    type metadata accessor for MainActor();
    v22 = v1;
    v23 = v15;
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v22;
    v25[5] = v23;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in HandwritingReflowView.beginTransform(), v25);
  }
}

uint64_t closure #1 in HandwritingReflowView.beginTransform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.beginTransform(), v7, v6);
}

uint64_t closure #1 in HandwritingReflowView.beginTransform()()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  *(v0 + 64) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in HandwritingReflowView.beginTransform();
    v3 = *(v0 + 32);

    return ReflowTextView.addToCanvas(_:hasHiddenStrokes:)(v3, 0, 0);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](closure #1 in HandwritingReflowView.beginTransform(), v4, v3);
}

{

  **(v0 + 16) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall HandwritingReflowView.updateTransform(with:)(CGAffineTransform *with)
{
  v2 = *&with->a;
  v3 = *&with->c;
  v4 = *&with->tx;
  v5 = &v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_initialCoordinateSpace];
  if (v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_initialCoordinateSpace + 48])
  {
    v5 = v18;
    v13 = *&with->c;
    v14 = *&with->a;
    v12 = *&with->tx;
    HandwritingReflowView.rectangularSelectionTransformCoordinateSpace.getter(v18);
    v4 = v12;
    v3 = v13;
    v2 = v14;
    v6 = v19;
    v7 = v20;
    v8 = v21;
  }

  else
  {
    v8 = *(v5 + 5);
    v7 = *(v5 + 24);
    v6 = *(v5 + 8);
  }

  t1.a = *v5;
  *&t1.b = v6;
  *&t1.d = v7;
  t1.ty = v8;
  *&t2.a = v2;
  *&t2.c = v3;
  *&t2.tx = v4;
  CGAffineTransformConcat(&v15, &t1, &t2);
  v9 = *&v15.c;
  v10 = *&v15.tx;
  v11 = &v1[OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_liveCoordinateSpace];
  *v11 = *&v15.a;
  *(v11 + 1) = v9;
  *(v11 + 2) = v10;
  v11[48] = 0;
  [v1 setNeedsLayout];
}

void __swiftcall HandwritingReflowView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if (([v3 isHidden] & 1) == 0)
  {
    v7.value.super.isa = isa;
    ResizeView.hitTestChrome(_:with:)(v8, __PAIR128__(*&y, *&x), v7);
    if (!v9 && !specialized HandwritingReflowView.hitTestCaret(_:with:)(x, y) && (HandwritingReflowView.showRectangularSelection.getter() & 1) != 0)
    {
      v10 = *&v3[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView];
      [v10 frame];
      v15 = CGRectInset(v14, -10.0, -10.0);
      v12.x = x;
      v12.y = y;
      if (CGRectContainsPoint(v15, v12))
      {
        [v10 frame];
        v17 = CGRectInset(v16, 10.0, 10.0);
        v13.x = x;
        v13.y = y;
        if (!CGRectContainsPoint(v17, v13))
        {
          v11 = v3;
        }
      }
    }
  }
}

Swift::Void __swiftcall HandwritingReflowView.pasteElements(_:)(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for MagicPaperUsageReflowEvent();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1._rawValue >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    swift_beginAccess();
    if (*(v10 + 160))
    {
      v21[1] = v1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))(v9);
      }

      else
      {
        v14 = v9;
        v13 = 0;
      }

      v15 = v9;
      Date.init()();
      v16 = type metadata accessor for Date();
      v17 = *(*(v16 - 8) + 56);
      v17(v5, 0, 1, v16);
      *v8 = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 6) = 0;
      v18 = v6[7];
      v17(&v8[v18], 1, 1, v16);
      *&v8[v6[9]] = 0;
      *&v8[v6[10]] = 0;
      *&v8[v6[11]] = 0;
      *&v8[v6[12]] = 0;
      *&v8[v6[13]] = 0;
      *&v8[v6[14]] = 0;
      v8[v6[15]] = 0;
      v8[v6[16]] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v8[v6[8]] = 3;
      outlined assign with take of Date?(v5, &v8[v18]);
      swift_unknownObjectWeakAssign();

      swift_unknownObjectWeakAssign();
      if (one-time initialization token for $currentAnalyticsEvents != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4058CF0;
      *(inited + 56) = v6;
      *(inited + 64) = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent, type metadata accessor for MagicPaperUsageReflowEvent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      outlined init with copy of MagicPaperUsageReflowEvent(v8, boxed_opaque_existential_1, type metadata accessor for MagicPaperUsageReflowEvent);
      TaskLocal.get()();
      specialized Array.append<A>(contentsOf:)(inited);
      v21[2] = v21[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
      swift_task_localValuePush();
      HandwritingReflowView.replaceStrokes(_:with:strokeIn:)(MEMORY[0x1E69E7CC0], a1, 1);
      swift_task_localValuePop();

      outlined destroy of MagicPaperUsageReflowEvent(v8, type metadata accessor for MagicPaperUsageReflowEvent);
    }
  }
}

uint64_t closure #1 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, PKDrawing *a4@<X8>)
{
  PKDrawing._bridgeToObjectiveC()(a4);
  v8 = v7;
  type metadata accessor for PKDrawingCoherence(0);
  v9 = swift_dynamicCastClass();
  if (v9 && (v10 = v9, v11 = [v9 strokes], type metadata accessor for PKStroke(), v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v11, v13 = *(v12 + 16), , v13))
  {
    v14 = objc_opt_self();
    v15 = [a2 textSize];
    [a2 bounds];
    v16 = [v14 scaledSize:v15 scale:CGRectGetHeight(v25)];

    [v16 scaleToMatchSize_];
    v18 = v17;
    type metadata accessor for ReflowWord();
    swift_allocObject();
    v19 = a2;
    v20 = v8;
    v21 = ReflowWord.init(reflowableTextToken:drawing:scale:image:)(v19, v10, 0, v18);
    *(v21 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8_NSRangeV_8PaperKit10ReflowWordCtGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D4058CF0;
    *(v22 + 32) = [a1 rangeValue];
    *(v22 + 40) = v23;
    *(v22 + 48) = v21;

    v8 = v16;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  return v22;
}

void closure #2 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a5 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v9 = *(a5 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = MEMORY[0x1DA6CE0C0](a1, a5);
LABEL_5:
  v10 = v9;
  v11 = [v9 hasPrecedingSpace];

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D405B640;
    type metadata accessor for ReflowSpace();
    v13 = swift_allocObject();
    *(v13 + 160) = 1;
    *(v13 + 152) = 0;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0;
    *(v13 + 104) = xmmword_1D4059320;
    *(v13 + 120) = -1;
    *(v13 + 128) = 0;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = xmmword_1D40671D0;
    *(v13 + 48) = 0u;
LABEL_14:
    v16 = (v12 + 40);
    *(v12 + 32) = v13;
    goto LABEL_15;
  }

  if (!a1)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D405CEB0;
    v16 = (v15 + 32);
LABEL_15:
    *v16 = a4;

    return;
  }

  v14 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_19;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < *(a6 + 16))
  {
    if (*(*(a6 + 24 * v14 + 48) + 136) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D405B640;
      type metadata accessor for ReflowSpace();
      v13 = swift_allocObject();
      *(v13 + 160) = 1;
      *(v13 + 152) = 0;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0;
      *(v13 + 104) = xmmword_1D4059320;
      *(v13 + 120) = -1;
      *(v13 + 128) = 0;
      *(v13 + 136) = 0;
      *(v13 + 144) = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0x4000000000000000;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall HandwritingReflowView.paste()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v78 - v5;
  v92 = type metadata accessor for Date();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v85 = v6;
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v78 - v8;
  Date.init()();
  v88 = objc_opt_self();
  v9 = [v88 generalPasteboard];
  v10 = [v9 items];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v11 + 16);
  if (!v12)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v13 = 0;
  v14 = "startLongPressTask";
  v83 = v12 - 1;
  v15 = MEMORY[0x1E69E7CC0];
  v93 = xmmword_1D405C100;
  do
  {
    v16 = v13;
    while (1)
    {
      if (v16 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v9 = *(v11 + 32 + 8 * v16);
      if (!*(v9 + 16))
      {
        goto LABEL_5;
      }

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001D4090800);
      if (v19)
      {
        break;
      }

LABEL_5:
      *v95 = v93;
      v17 = 0xF000000000000000;
LABEL_6:
      ++v16;
      outlined consume of Data?(v95[0], v17);
      if (v12 == v16)
      {
        goto LABEL_19;
      }
    }

    outlined init with copy of Any(*(v9 + 56) + 32 * v18, &v96);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v17 = v95[1];
    if (v95[1] >> 60 == 15)
    {
      goto LABEL_6;
    }

    v82 = *v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v9 = *(v15 + 2);
    v20 = *(v15 + 3);
    v21 = v9 + 1;
    v22 = *(&v82 + 1);
    if (v9 >= v20 >> 1)
    {
      v81 = v9 + 1;
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v9 + 1, 1, v15);
      v21 = v81;
      v22 = *(&v82 + 1);
      v15 = v24;
    }

    v13 = (v16 + 1);
    *(v15 + 2) = v21;
    v23 = &v15[16 * v9];
    *(v23 + 4) = v82;
    *(v23 + 5) = v22;
  }

  while (v83 != v16);
LABEL_19:

  if (*(v15 + 2))
  {
    v25 = *(v15 + 4);
    v26 = *(v15 + 5);
    outlined copy of Data._Representation(v25, v26);

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit10ReflowEnumOGMd);
    lazy protocol witness table accessor for type [ReflowEnum] and conformance <A> [A]();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v73 = specialized static ReflowEnum.untypeArray(_:)(v96);

    HandwritingReflowView.pasteElements(_:)(v73);

    outlined consume of Data._Representation(v25, v26);
    goto LABEL_33;
  }

  v27 = [v88 generalPasteboard];
  v16 = [v27 string];

  if (!v16)
  {
LABEL_33:
    (*(v90 + 8))(v91, v92);
    return;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v29;
  v30 = *(v89 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (!v30)
  {
    (*(v90 + 8))(v91, v92);

    return;
  }

  v31 = v28;
  v32 = *&v30[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  swift_beginAccess();
  v33 = v32[11];
  v96 = v32[10];
  v97 = v33;
  v98[0] = v32[12];
  *(v98 + 11) = *(v32 + 203);
  v34 = v96;
  if (!v96)
  {
    v74 = *(v90 + 8);
    v75 = v30;
    v74(v91, v92);

    return;
  }

  v83 = *(&v96 + 1);
  v1 = *(&v97 + 1);
  v0 = *&v97;
  v99[0] = v32[12];
  *(v99 + 11) = *(v32 + 203);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v76 = v30;
    outlined init with copy of Date?(&v96, v95, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    (*(v90 + 8))(v91, v92);

    outlined destroy of StocksKitCurrencyCache.Provider?(&v96, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    return;
  }

  *&v93 = v34;
  v81 = v31;
  v36 = MEMORY[0x1E69E7D40];
  v37 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x440);
  *(&v82 + 1) = Strong;
  v38 = v37();
  v39 = *((*v36 & *v38) + 0x278);
  v88 = v30;
  v40 = outlined init with copy of Date?(&v96, v95, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  v9 = v39(v40);

  if (v9 >> 62)
  {
LABEL_38:
    v77 = __CocoaSet.count.getter();
    v41 = v93;
    if (!v77)
    {
      goto LABEL_39;
    }

LABEL_27:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x1DA6CE0C0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v42 = *(v9 + 32);
    }

    v78 = v14;
    v79 = v42;

    outlined init with copy of Date?(&v96, v95, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);

    v43 = v87;
    v44 = ReflowLayoutManager.textSize(for:)(v87, v41);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v96, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);

    [v88 frame];
    v46 = v0 + v45;
    v48 = v1 + v47;
    *&v82 = v44;
    [v44 xHeight];
    v50 = v49;
    v51 = v84;
    outlined init with copy of Date?(v43, v84, &_s9PencilKit9PKDrawingVSgMd);
    v52 = type metadata accessor for PKDrawing();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 48))(v51, 1, v52);
    v80 = 0;
    if (v54 != 1)
    {
      PKDrawing._bridgeToObjectiveC()(v55);
      v80 = v56;
      (*(v53 + 8))(v51, v52);
    }

    v84 = [objc_opt_self() blackColor];
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = v90;
    v59 = v86;
    v60 = v92;
    (*(v90 + 16))(v86, v91, v92);
    v61 = (*(v58 + 80) + 112) & ~*(v58 + 80);
    v62 = (v85 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v78;
    *(v63 + 16) = v81;
    *(v63 + 24) = v64;
    v65 = *(&v82 + 1);
    v66 = v93;
    *(v63 + 32) = v82;
    *(v63 + 40) = v66;
    *(v63 + 48) = v83;
    *(v63 + 56) = v0;
    *(v63 + 64) = v1;
    *(v63 + 72) = v99[0];
    *(v63 + 83) = *(v99 + 11);
    *(v63 + 104) = v65;
    (*(v58 + 32))(v63 + v61, v59, v60);
    *(v63 + v62) = v57;
    v94[4] = partial apply for closure #2 in HandwritingReflowView.paste();
    v94[5] = v63;
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 1107296256;
    v94[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSValue], @guaranteed [CHReflowableTextToken], @guaranteed [PKDrawing]) -> ();
    v94[3] = &block_descriptor_61;
    v67 = _Block_copy(v94);
    outlined init with copy of Date?(&v96, v95, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    v68 = v82;
    v69 = v65;

    v70 = v79;
    v71 = v80;
    v72 = v84;
    [v79 convertTextToHandwriting:v16 bounds:v80 suggestedHeight:v84 suggestedDrawing:v67 inkColor:v46 completion:{v48, 0.0, 0.0, v50}];
    _Block_release(v67);

    outlined destroy of StocksKitCurrencyCache.Provider?(&v96, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9PencilKit9PKDrawingVSgMd);
    (*(v58 + 8))(v91, v92);
  }

  else
  {
    v41 = v93;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_39:
    (*(v90 + 8))(v91, v92);

    outlined destroy of StocksKitCurrencyCache.Provider?(&v96, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  }
}

uint64_t closure #2 in HandwritingReflowView.paste()(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v90 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v85 - v18;
  v92 = type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent();
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PKDrawing();
  v86 = *(v100 - 8);
  v21 = MEMORY[0x1EEE9AC00](v100);
  v99 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a4;
  v23 = MEMORY[0x1DA6CCED0](a4, a5, v21);
  v102 = a6;

  v24 = specialized Sequence.flatMap<A>(_:)(a1, a2, a3, partial apply for closure #1 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:), v101);
  v97._rawValue = 0;
  v94 = a3;

  v98 = a2;

  v25 = v24[2];
  v91 = v19;
  v96 = a5;
  if (!v25)
  {

    a5 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_17;
    }

LABEL_25:
    v44 = __CocoaSet.count.getter();
    if (!v44)
    {
      goto LABEL_36;
    }

LABEL_18:
    a3 = v44 - 1;
    if (v44 >= 1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v44; ++i)
        {
          v47 = MEMORY[0x1DA6CE0C0](i, a5);
          type metadata accessor for ReflowWord();
          if (swift_dynamicCastClass())
          {
            *(v47 + 120) = *(*a7 + 120);
          }

          result = swift_unknownObjectRelease();
        }
      }

      else
      {
        v48 = (a5 + 32);
        type metadata accessor for ReflowWord();
        do
        {
          v49 = *v48;
          result = swift_dynamicCastClass();
          if (result)
          {
            *(v49 + 120) = *(*a7 + 120);
          }

          ++v48;
          --v44;
        }

        while (v44);
      }

      if ((*(*a7 + 136) & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((a5 & 0xC000000000000001) == 0)
      {
        if (a3 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        goto LABEL_35;
      }

LABEL_84:
      v50 = MEMORY[0x1DA6CE0C0](a3, a5);
LABEL_35:
      *(v50 + 136) = 1;

      goto LABEL_36;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v26 = v24[4];
  v27 = v24[5];
  v89 = v23;
  v28 = [v23 paragraphRangeForRange_];
  if (v24[2] < v25)
  {
    __break(1u);
    goto LABEL_82;
  }

  v30 = v28;
  v31 = v29;

  a3 = (v24 + 2);
  v32 = 1;
LABEL_4:
  v33 = &v30[v31];
  v34 = __OFADD__(v30, v31);
  v35 = a3 + 24 * v32;
  v36 = v32;
  v37 = v89;
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v25 == v36)
    {
      break;
    }

    if (v32 < 1 || v36 >= v25)
    {
      goto LABEL_74;
    }

    if (v34)
    {
      goto LABEL_75;
    }

    v39 = *(v35 + 16);
    ++v36;
    v35 += 24;
    if (v39 >= v33)
    {
      if ((v36 - 1) > v24[2])
      {
        goto LABEL_83;
      }

      *(*(v35 - 16) + 136) = 1;
      v30 = [v37 paragraphRangeForRange_];
      v31 = v40;
      v32 = v38;
      goto LABEL_4;
    }
  }

  v41 = swift_unknownObjectRelease();
  MEMORY[0x1EEE9AC00](v41);
  *(&v85 - 2) = v98;
  *(&v85 - 1) = v24;

  rawValue = v97._rawValue;
  v43 = specialized Sequence.flatMap<A>(_:)(0, v24, partial apply for closure #2 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:));
  v97._rawValue = rawValue;
  swift_bridgeObjectRelease_n();

  a5 = v43;
  if (v43 >> 62)
  {
    goto LABEL_25;
  }

LABEL_17:
  v44 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v44)
  {
    goto LABEL_18;
  }

LABEL_36:
  v88 = a9;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_77;
  }

  for (j = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = __CocoaSet.count.getter())
  {
    v52 = 0;
    v89 = a10;
    v53 = a1 & 0xC000000000000001;
    v54 = MEMORY[0x1E69E7CC0];
    while (j != v52)
    {
      if (v53)
      {
        v55 = MEMORY[0x1DA6CE0C0](v52, a1);
      }

      else
      {
        if (v52 >= *(v25 + 16))
        {
          goto LABEL_71;
        }

        v55 = *(a1 + 8 * v52 + 32);
      }

      v56 = v55;
      v57 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v103 = 0uLL;
      v104 = 1;
      static _NSRange._conditionallyBridgeFromObjectiveC(_:result:)();

      ++v52;
      if ((v104 & 1) == 0)
      {
        v87 = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v59 = *(v54 + 2);
        v58 = *(v54 + 3);
        if (v59 >= v58 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v54);
        }

        *(v54 + 2) = v59 + 1;
        *&v54[16 * v59 + 32] = v87;
        v52 = v57;
      }
    }

    v60 = *(v54 + 2);
    if (!v60)
    {
      break;
    }

    v61 = 0;
    v62 = (v54 + 40);
    while (1)
    {
      v63 = *v62;
      v62 += 2;
      v64 = __OFADD__(v61, v63);
      v61 += v63;
      if (v64)
      {
        break;
      }

      if (!--v60)
      {
        goto LABEL_57;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

  v61 = 0;
LABEL_57:

  if (v98 >> 62)
  {
    v65 = __CocoaSet.count.getter();
  }

  else
  {
    v65 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = String.count.getter();
  if (__OFSUB__(v66, v61))
  {
    __break(1u);
LABEL_80:
    swift_once();
    goto LABEL_67;
  }

  v95 = v66 - v61;
  v96 = v65;
  v97._rawValue = a5;
  v67 = *(v94 + 16);
  if (v67)
  {
    v25 = 0;
    v98 = *(v86 + 16);
    v68 = v94 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v69 = *(v86 + 72);
    a1 = v86 + 8;
    while (1)
    {
      v70 = v99;
      v71 = v100;
      (v98)(v99, v68, v100);
      v72 = PKDrawing.strokes.getter();
      (*a1)(v70, v71);
      a5 = *(v72 + 16);

      v64 = __OFADD__(v25, a5);
      v25 += a5;
      if (v64)
      {
        goto LABEL_76;
      }

      v68 += v69;
      if (!--v67)
      {
        goto LABEL_66;
      }
    }
  }

  v25 = 0;
LABEL_66:
  v100 = v95 & ~(v95 >> 63);
  v73 = (*((*MEMORY[0x1E69E7D40] & *v90) + 0x468))(v66);
  v74 = type metadata accessor for Date();
  v75 = *(v74 - 8);
  v76 = v91;
  (*(v75 + 16))(v91, v88, v74);
  v77 = *(v75 + 56);
  v77(v76, 0, 1, v74);
  v78 = v93;
  *v93 = 0;
  v78[25] = 0;
  *(v78 + 7) = 0;
  *(v78 + 1) = 0;
  *(v78 + 2) = 0;
  *(v78 + 56) = 0u;
  *(v78 + 40) = 0u;
  v53 = v92;
  v79 = *(v92 + 68);
  v77(&v78[v79], 1, 1, v74);
  a5 = v78;
  v78[*(v53 + 72)] = 0;
  swift_unknownObjectWeakInit();
  v78[24] = 1;
  outlined assign with take of Date?(v76, &v78[v79]);
  *(v78 + 4) = v25;
  v80 = v96;
  *(v78 + 9) = v61;
  *(v78 + 10) = v80;
  *(v78 + 11) = v100;
  swift_unknownObjectWeakAssign();

  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    goto LABEL_80;
  }

LABEL_67:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 56) = v53;
  *(inited + 64) = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  outlined init with copy of MagicPaperUsageReflowEvent(a5, boxed_opaque_existential_1, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
  TaskLocal.get()();
  specialized Array.append<A>(contentsOf:)(inited);
  *&v103 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
  swift_task_localValuePush();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = Strong;
    HandwritingReflowView.pasteElements(_:)(v97);
  }

  swift_task_localValuePop();
  return outlined destroy of MagicPaperUsageReflowEvent(a5, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
}

uint64_t HandwritingReflowView.canPasteAsHandwriting.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (v5)
  {
    v6 = v5;

    v7 = ReflowLayoutManager.canPasteAtSpaceAdjustment()();
  }

  else
  {
    v7 = 1;
  }

  v8 = objc_opt_self();
  v9 = [v8 generalPasteboard];
  v10 = [v9 pasteboardTypes];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20[0] = 0xD00000000000001DLL;
  v20[1] = 0x80000001D4090800;
  MEMORY[0x1EEE9AC00](v12);
  *&v19[-16] = v20;
  LOBYTE(v10) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v19[-32], v11);

  if (v10)
  {
    return 1;
  }

  v14 = [objc_opt_self() autoupdatingCurrentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v16 = CHGetPersonalizedSynthesisSupportStateForLocale();

  if (v16 < 4)
  {
    return 0;
  }

  v17 = [v8 generalPasteboard];
  v18 = [v17 hasStrings];

  return v18 & v7;
}

void closure #1 in HandwritingReflowView.editMenuInteraction(_:menuFor:suggestedActions:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    HandwritingReflowView.paste()();
  }
}

uint64_t HandwritingReflowView.__ivar_destroyer()
{
}

id HandwritingReflowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HandwritingReflowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for ReflowCursorPanHandler.reflowCursor(_:didPanWith:) in conformance HandwritingReflowView(int a1, id a2)
{
  v4 = [a2 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 == 2)
    {
      [a2 locationInView_];

      HandwritingReflowView.adjustCaret(_:)(__PAIR128__(v6, v5));
    }

    else if (v4 == 1)
    {

      HandwritingReflowView.beginTransform()();
    }
  }

  else
  {

    specialized HandwritingReflowView.endTransform(cancel:)();
  }
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t specialized Array._checkIndex(_:)(uint64_t result, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = __CocoaSet.count.getter();
  result = v2;
  if (v3 < v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

Swift::Int specialized _ArrayBuffer.subscript.getter(Swift::Int result, Swift::Int a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return _CocoaArrayWrapper.subscript.getter();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    type metadata accessor for ReflowElement();

    result = v5;
    do
    {
      v6 = result + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(result);
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{

  return specialized _NativeSet.intersection(_:)(a1, a2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v15, v10, a2, a1, a4);

    MEMORY[0x1DA6D0660](v15, -1, -1);
  }

  return v13;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (v61 - v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        specialized _NativeSet.extractSubset(using:count:)(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

{
  v62 = a2;
  v66 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (v61 - v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        specialized _NativeSet.extractSubset(using:count:)(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  v39 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + v31);
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v32);
      result = Hasher._finalize()();
      v33 = -1 << *(v39 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v39 + 48) + v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return specialized _NativeSet.extractSubset(using:count:)(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v15);
      result = Hasher._finalize()();
      a4 = v39;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s10Foundation4UUIDVSgMd);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s10Foundation4UUIDVSgMd);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x1DA6D0660](v63, -1, -1);
LABEL_52:
  outlined consume of Set<UIColor>.Iterator._Variant();
  return a2;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(unint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = (&v66 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v86 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v66 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v81 = (&v66 - v16);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v70 = v6;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v67 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v73 = (63 - v19) >> 6;
  v87 = v10 + 2;
  v79 = (v10 + 6);
  v80 = (v10 + 7);
  v76 = (v10 + 4);
  v77 = a1;
  v83 = (a2 + 56);
  v89 = (v10 + 1);

  v23 = 0;
  v69 = v10;
  for (i = a1 + 56; ; v18 = i)
  {
    v24 = v21;
    v25 = v23;
    if (v21)
    {
LABEL_14:
      a1 = (v24 - 1) & v24;
      v29 = v77[6] + v10[9] * (__clz(__rbit64(v24)) | (v25 << 6));
      v30 = v10[2];
      v31 = v68;
      v30(v68, v29, v9);
      v32 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v73 <= (v23 + 1) ? v23 + 1 : v73;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_57;
        }

        if (v25 >= v73)
        {
          break;
        }

        v24 = *(v18 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v32 = 1;
      v31 = v68;
    }

    v75 = *v80;
    v75(v31, v32, 1, v9);
    v74 = *v79;
    if (v74(v31, 1, v9) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
      goto LABEL_52;
    }

    v72 = *v76;
    v72(v81, v31, v9);
    v71 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = -1 << *(a2 + 32);
    v23 = v33 & ~v34;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) != 0)
    {
      break;
    }

    v10 = v69;
    (*v89)(v81, v9);
LABEL_22:
    v23 = v27;
    v21 = a1;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v34;
  v35 = v69[9];
  v84 = v69[2];
  v85 = v35;
  while (1)
  {
    v84(v14, *(a2 + 48) + v85 * v23, v9);
    v36 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v14, v9);
    if (v37)
    {
      break;
    }

    v23 = (v23 + 1) & v82;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) == 0)
    {
      v10 = v69;
      v88(v81, v9);
      goto LABEL_22;
    }
  }

  v82 = v36;
  v91 = v67;
  v92 = v27;
  v93 = a1;
  v10 = v77;
  v90[0] = v77;
  v90[1] = i;
  v38 = (v88)(v81, v9);
  v39 = *(a2 + 32);
  v66 = ((1 << v39) + 63) >> 6;
  v22 = 8 * v66;
  if ((v39 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v68 = &v66;
    MEMORY[0x1EEE9AC00](v38);
    v41 = &v66 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v41, v83, v40);
    v42 = *&v41[8 * v25] & ~v18;
    v43 = *(a2 + 16);
    v81 = v41;
    *&v41[8 * v25] = v42;
    v44 = v43 - 1;
    v25 = i;
    v45 = v70;
    v46 = v73;
LABEL_26:
    v69 = v44;
    while (a1)
    {
      v47 = v27;
LABEL_38:
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v84(v45, v10[6] + (v50 | (v47 << 6)) * v85, v9);
      v51 = 0;
LABEL_39:
      v75(v45, v51, 1, v9);
      if (v74(v45, 1, v9) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v81, v66, v69, a2);
        goto LABEL_52;
      }

      v72(v86, v45, v9);
      v52 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v53 = a2;
      v54 = -1 << *(a2 + 32);
      v23 = v52 & ~v54;
      v55 = v23 >> 6;
      v18 = 1 << v23;
      if (((1 << v23) & v83[v23 >> 6]) != 0)
      {
        v84(v14, *(v53 + 48) + v23 * v85, v9);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v14, v9);
        if ((v56 & 1) == 0)
        {
          v57 = ~v54;
          do
          {
            v23 = (v23 + 1) & v57;
            v55 = v23 >> 6;
            v18 = 1 << v23;
            if (((1 << v23) & v83[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v14, *(v53 + 48) + v23 * v85, v9);
            v58 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v14, v9);
          }

          while ((v58 & 1) == 0);
        }

        v88(v86, v9);
        v59 = v81[v55];
        v81[v55] = v59 & ~v18;
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
        if ((v59 & v18) != 0)
        {
          v44 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v9);
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
      }
    }

    if (v46 <= (v27 + 1))
    {
      v48 = v27 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        a1 = 0;
        v51 = 1;
        v27 = v49;
        goto LABEL_39;
      }

      a1 = *(v25 + 8 * v47);
      ++v27;
      if (a1)
      {
        v27 = v47;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v61 = v22;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v64, v66, v81, v23, v90);
  a2 = v65;

  MEMORY[0x1DA6D0660](v64, -1, -1);
  v67 = v91;
LABEL_52:
  outlined consume of Set<UIColor>.Iterator._Variant();
  return a2;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s10Foundation4UUIDVSgMd);
          v45 = v61;

          specialized _NativeSet.extractSubset(using:count:)(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
          v45 = v61;

          specialized _NativeSet.extractSubset(using:count:)(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id specialized HandwritingReflowView.endTransform(cancel:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v19 - v2;
  v4 = type metadata accessor for MagicPaperUsageReflowEvent();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = specialized ResizeView.endTransform(cancel:)();
  v8 = *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (v8)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))(v8);
    }

    else
    {
      v12 = v8;
      v11 = 0;
    }

    v13 = v8;
    Date.init()();
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 56);
    v15(v3, 0, 1, v14);
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *(v6 + 6) = 0;
    v16 = v4[7];
    v15(&v6[v16], 1, 1, v14);
    *&v6[v4[9]] = 0;
    *&v6[v4[10]] = 0;
    *&v6[v4[11]] = 0;
    *&v6[v4[12]] = 0;
    *&v6[v4[13]] = 0;
    *&v6[v4[14]] = 0;
    v6[v4[15]] = 0;
    v6[v4[16]] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v6[v4[8]] = 0;
    outlined assign with take of Date?(v3, &v6[v16]);
    swift_unknownObjectWeakAssign();

    swift_unknownObjectWeakAssign();
    if (one-time initialization token for $currentAnalyticsEvents != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4058CF0;
    *(inited + 56) = v4;
    *(inited + 64) = _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageReflowEvent and conformance MagicPaperUsageReflowEvent, type metadata accessor for MagicPaperUsageReflowEvent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    outlined init with copy of MagicPaperUsageReflowEvent(v6, boxed_opaque_existential_1, type metadata accessor for MagicPaperUsageReflowEvent);
    TaskLocal.get()();
    specialized Array.append<A>(contentsOf:)(inited);
    v19[1] = v19[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
    swift_task_localValuePush();
    HandwritingReflowView.applyReflow(_:apply:hasShownStrokes:)(v13, 1, 0, 0);
    swift_task_localValuePop();

    return outlined destroy of MagicPaperUsageReflowEvent(v6, type metadata accessor for MagicPaperUsageReflowEvent);
  }

  return result;
}

uint64_t partial apply for closure #1 in HandwritingReflowView.beginTransform()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in HandwritingReflowView.beginTransform()(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type [ReflowEnum] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ReflowEnum] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ReflowEnum] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit10ReflowEnumOGMd);
    lazy protocol witness table accessor for type ReflowEnum and conformance ReflowEnum();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ReflowEnum] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ReflowEnum] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ReflowEnum] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit10ReflowEnumOGMd);
    lazy protocol witness table accessor for type ReflowEnum and conformance ReflowEnum();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ReflowEnum] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReflowEnum and conformance ReflowEnum()
{
  result = lazy protocol witness table cache variable for type ReflowEnum and conformance ReflowEnum;
  if (!lazy protocol witness table cache variable for type ReflowEnum and conformance ReflowEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowEnum and conformance ReflowEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowEnum and conformance ReflowEnum;
  if (!lazy protocol witness table cache variable for type ReflowEnum and conformance ReflowEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowEnum and conformance ReflowEnum);
  }

  return result;
}

void specialized closure #1 in HandwritingReflowView.init(frame:canvas:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - v6;
  v7 = *(a1 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox);
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
    swift_beginAccess();
    v9 = *(v8 + 80);
    if (v9 >> 62)
    {
      v10 = __CocoaSet.count.getter();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
    }

    else
    {
      v31 = v9 & 0xC000000000000001;
      v28 = v7;

      v11 = 0;
      v29 = v10;
      v30 = v9;
      do
      {
        if (v31)
        {
          MEMORY[0x1DA6CE0C0](v11, v9);
        }

        else
        {
        }

        type metadata accessor for ReflowWord();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = v12;
          v14 = *(v12 + 280);

          v15 = v14;
          [v15 _canvasBounds];
          v16 = [v15 imageFromRect_scale_];

          v17 = *(v13 + 304);
          *(v13 + 304) = v16;

          v18 = type metadata accessor for TaskPriority();
          v19 = *(v18 - 8);
          v20 = v32;
          (*(v19 + 56))(v32, 1, 1, v18);
          type metadata accessor for MainActor();

          v21 = static MainActor.shared.getter();
          v22 = swift_allocObject();
          v22[2] = v21;
          v22[3] = MEMORY[0x1E69E85E0];
          v22[4] = v13;
          outlined init with copy of Date?(v20, v4, &_sScPSgMd);
          LODWORD(v21) = (*(v19 + 48))(v4, 1, v18);

          if (v21 == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_sScPSgMd);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v19 + 8))(v4, v18);
          }

          v23 = v22[2];
          swift_unknownObjectRetain();

          if (v23)
          {
            swift_getObjectType();
            v24 = dispatch thunk of Actor.unownedExecutor.getter();
            v26 = v25;
            swift_unknownObjectRelease();
          }

          else
          {
            v24 = 0;
            v26 = 0;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_sScPSgMd);
          v27 = swift_allocObject();
          *(v27 + 16) = &async function pointer to partial apply for closure #1 in ReflowWord.generateImage();
          *(v27 + 24) = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
          if (v26 | v24)
          {
            v33 = 0;
            v34 = 0;
            v35 = v24;
            v36 = v26;
          }

          v10 = v29;
          v9 = v30;
          swift_task_create();
        }

        ++v11;
      }

      while (v10 != v11);
    }
  }
}

void specialized HandwritingReflowView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_initialCoordinateSpace;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
  *(v1 + 48) = 1;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_liveCoordinateSpace;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  v3 = (v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowStrokeBounds);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_reflowTextbox) = 0;
  v4 = OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for ReflowCursor()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isAdjustingSpace) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_didAdjustSpace) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_keepReflowTextboxForDebugging) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_editMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_currentReflowingStrokes) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isInReflowMode) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_showResizeUI) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_isDrawing) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_endDrawContinuations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_startLongPressTask) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized HandwritingReflowView.transformsReplacing(_:with:animatingTo:reflowTextbox:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = v46 - v9;
  v11 = type metadata accessor for PKStroke();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v58 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = v46 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = v46 - v17;
  v18 = ReflowLayoutManager.copy()();
  ReflowLayoutManager.replaceStrokes(_:with:)(a1, a2);
  v20 = v19;

  *(v18 + 219) = 0;
  swift_beginAccess();
  v21._rawValue = *(v18 + 80);
  swift_beginAccess();
  v22._rawValue = *(v18 + 88);

  ReflowLayoutManager.layoutText(contents:lines:)(v21, v22);

  v23 = ReflowLayoutManager.strokeTransforms()();
  v24 = *(a3 + 16);
  if (!v24)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v56 = v23;
  v46[1] = v18;
  v59 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v25 = v59;
  v27 = *(v12 + 16);
  v26 = v12 + 16;
  v51 = v27;
  v50 = (*(v26 + 64) + 32) & ~*(v26 + 64);
  v28 = (a3 + v50);
  v49 = (v8 + 8);
  v48 = (v26 - 8);
  v29 = (v26 + 16);
  v47 = *(v26 + 56);
  v52 = v10;
  v46[2] = v26;
  do
  {
    v30 = v57;
    v31 = v51;
    v51(v57, v28, v11);
    v31(v58, v30, v11);
    isa = PKStroke._bridgeToObjectiveC()().super.isa;
    v33 = [(objc_class *)isa _strokeUUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
    Ref.init(id:)();
    v34 = v56;
    if (*(v56 + 16))
    {
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      v36 = *v49;
      if (v37)
      {
        v38 = (*(v34 + 56) + 48 * v35);
        v39 = v38[1];
        v60 = *v38;
        v61 = v39;
        v62 = v38[2];
        v36(v10, v53);
        PKStroke.transform.setter();
        v40 = v55;
        goto LABEL_8;
      }
    }

    else
    {
      v36 = *v49;
    }

    v40 = v55;
    v36(v10, v53);
LABEL_8:
    (*v48)(v57, v11);
    v41 = *v29;
    (*v29)(v40, v58, v11);
    v59 = v25;
    v43 = *(v25 + 16);
    v42 = *(v25 + 24);
    if (v43 >= v42 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
      v40 = v55;
      v25 = v59;
    }

    *(v25 + 16) = v43 + 1;
    v44 = v47;
    v41((v25 + v50 + v43 * v47), v40, v11);
    v28 += v44;
    --v24;
    v10 = v52;
  }

  while (v24);

  return v25;
}

void *specialized HandwritingReflowView.hitTestCaret(_:with:)(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8PaperKit21HandwritingReflowView_caret);
  if ([v5 isHidden])
  {
    return 0;
  }

  [v5 alpha];
  if (v6 <= 0.0)
  {
    return 0;
  }

  [v5 convertPoint:v2 fromCoordinateSpace:{a1, a2}];
  v8 = v7;
  v10 = v9;
  [v5 bounds];
  v13.x = v8;
  v13.y = v10;
  if (!CGRectContainsPoint(v14, v13))
  {
    return 0;
  }

  v11 = v5;
  return v5;
}

uint64_t partial apply for closure #2 in HandwritingReflowView.paste()(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  return closure #2 in HandwritingReflowView.paste()(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + 40, *(v3 + 104), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of MagicPaperUsageReflowEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of MagicPaperUsageReflowEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in HandwritingReflowView.replaceStrokes(_:with:animateRefinement:)(v7, v8, a1, v4, v5, v6, v9, v10, v11, v12);
}

uint64_t partial apply for closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in HandwritingReflowView.replaceStrokesWithoutReflowIfNeeded(_:with:reflowTextbox:in:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:)(uint64_t a1)
{
  type metadata accessor for PKDrawing();
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in HandwritingReflowView.replaceStrokes(_:with:unscaledElements:reflowTextbox:animatingFrom:to:in:)(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v1 = *(v0 + 16);

  return closure #1 in closure #1 in closure #2 in closure #1 in HandwritingReflowView.finishReplace(reflowTextbox:in:newElements:delete:apply:hasShownStrokes:)(v1);
}

uint64_t partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = *(v1 + 10);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in HandwritingReflowView.replaceStrokes(_:nonReflowableStrokes:with:strokeIn:)(v7, v8, a1, v4, v5, v6, v9, v10, v11, v12);
}

uint64_t objectdestroy_161Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t partial apply for closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in HandwritingReflowView.replaceStrokes(_:with:strokeIn:reflowTextbox:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_137Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:)(uint64_t a1)
{
  v3 = *(type metadata accessor for PKDrawing() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in HandwritingReflowView.strokeInStrokes(_:reflowTextbox:in:)(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t partial apply for closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:)(uint64_t a1)
{
  v4 = *(v1 + 3);
  v14 = *(v1 + 2);
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v9 = *(v1 + 10);
  v10 = *(v1 + 11);
  v11 = *(v1 + 12);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in HandwritingReflowView.startReflowForSelection(_:completion:)(v5, v6, a1, v14, v4, v7, v8, v9, v10, v11);
}

uint64_t partial apply for closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = v1[9];
  v12 = v1[10];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in HandwritingReflowView.startInsertSpaceReflow(at:)(v6, v7, v11, v12, a1, v4, v5, v8, v9, v10);
}

UIMenu specialized HandwritingReflowView.editMenuInteraction(_:menuFor:suggestedActions:)()
{
  if (HandwritingReflowView.canPasteAsHandwriting.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1D405CEB0;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
    v1 = *MEMORY[0x1E69DDA60];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = v1;
    v5._rawValue = 0;
    *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    preferredElementSize = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v6, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v5);
}

uint64_t partial apply for closure #1 in ReflowWord.generateImage()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ReflowWord.generateImage()(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _s8PaperKit05MagicA16UsageReflowEventVAcA09AnalyticsF0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ImageResize.resizedImage(fromURL:outputSize:inputCrop:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 96) = type metadata accessor for DataOrURL();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v7 = *a3;
  *(v4 + 49) = *(a3 + 16);
  v8 = *a4;
  v9 = a4[1];
  *(v4 + 128) = v7;
  *(v4 + 144) = v8;
  *(v4 + 160) = v9;
  *(v4 + 50) = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](static ImageResize.resizedImage(fromURL:outputSize:inputCrop:), 0, 0);
}

uint64_t static ImageResize.resizedImage(fromURL:outputSize:inputCrop:)()
{
  if (one-time initialization token for imageResizeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = __swift_project_value_buffer(v1, imageResizeLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D38C4000, v2, v3, "Starting resize from URL", v4, 2u);
    MEMORY[0x1DA6D0660](v4, -1, -1);
  }

  v5 = *(v0 + 50);
  v6 = *(v0 + 49);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v17 = *(v0 + 160);
  v18 = *(v0 + 144);

  v11 = type metadata accessor for URL();
  *(v0 + 184) = v11;
  v12 = *(v11 - 8);
  *(v0 + 192) = v12;
  (*(v12 + 16))(v9, v10, v11);
  swift_storeEnumTagMultiPayload();
  *(v0 + 56) = v8;
  *(v0 + 64) = v7;
  *(v0 + 72) = v6;
  *(v0 + 32) = v17;
  *(v0 + 16) = v18;
  *(v0 + 48) = v5;
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = static ImageResize.resizedImage(fromURL:outputSize:inputCrop:);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);

  return static ImageResize.resizedImage(from:outputSize:inputCrop:)(v14, v15, (v0 + 56), (v0 + 16));
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  _s8PaperKit9DataOrURLOWOhTm_2(*(v2 + 112), type metadata accessor for DataOrURL);
  if (v0)
  {
    v3 = static ImageResize.resizedImage(fromURL:outputSize:inputCrop:);
  }

  else
  {
    v3 = static ImageResize.resizedImage(fromURL:outputSize:inputCrop:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  _s8PaperKit9DataOrURLOWOcTm_1(v0[15], v0[13], type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[23];
    v2 = v0[24];
    v3 = v0[13];
    v4 = v0[10];
    _s8PaperKit9DataOrURLOWOhTm_2(v0[15], type metadata accessor for DataOrURL);
    (*(v2 + 32))(v4, v3, v1);

    v5 = v0[1];
  }

  else
  {
    _s8PaperKit9DataOrURLOWOhTm_2(v0[13], type metadata accessor for DataOrURL);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D38C4000, v6, v7, "Resizing from a URL expected a URL in return, but received Data", v8, 2u);
      MEMORY[0x1DA6D0660](v8, -1, -1);
    }

    v9 = v0[15];

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    _s8PaperKit9DataOrURLOWOhTm_2(v9, type metadata accessor for DataOrURL);

    v5 = v0[1];
  }

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ImageResize.resizedImage(fromData:outputSize:inputCrop:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 96) = type metadata accessor for DataOrURL();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v7 = *a3;
  *(v4 + 49) = *(a3 + 16);
  v8 = *a4;
  v9 = a4[1];
  *(v4 + 128) = v7;
  *(v4 + 144) = v8;
  *(v4 + 160) = v9;
  *(v4 + 50) = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](static ImageResize.resizedImage(fromData:outputSize:inputCrop:), 0, 0);
}

uint64_t static ImageResize.resizedImage(fromData:outputSize:inputCrop:)()
{
  if (one-time initialization token for imageResizeLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = __swift_project_value_buffer(v1, imageResizeLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D38C4000, v2, v3, "Starting resize from Data", v4, 2u);
    MEMORY[0x1DA6D0660](v4, -1, -1);
  }

  v5 = *(v0 + 50);
  v6 = *(v0 + 49);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 80);
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);

  *v9 = v11;
  v9[1] = v10;
  swift_storeEnumTagMultiPayload();
  *(v0 + 56) = v8;
  *(v0 + 64) = v7;
  *(v0 + 72) = v6;
  *(v0 + 32) = v16;
  *(v0 + 16) = v17;
  *(v0 + 48) = v5;
  outlined copy of Data._Representation(v11, v10);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = static ImageResize.resizedImage(fromData:outputSize:inputCrop:);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);

  return static ImageResize.resizedImage(from:outputSize:inputCrop:)(v13, v14, (v0 + 56), (v0 + 16));
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  _s8PaperKit9DataOrURLOWOhTm_2(*(v2 + 112), type metadata accessor for DataOrURL);
  if (v0)
  {
    v3 = static ImageResize.resizedImage(fromData:outputSize:inputCrop:);
  }

  else
  {
    v3 = static ImageResize.resizedImage(fromData:outputSize:inputCrop:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  _s8PaperKit9DataOrURLOWOcTm_1(v0[15], v0[13], type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1D38C4000, v1, v2, "Resizing from Data expected Data in return, but received a URL", v3, 2u);
      MEMORY[0x1DA6D0660](v3, -1, -1);
    }

    v4 = v0[15];
    v5 = v0[13];

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    _s8PaperKit9DataOrURLOWOhTm_2(v4, type metadata accessor for DataOrURL);
    _s8PaperKit9DataOrURLOWOhTm_2(v5, type metadata accessor for DataOrURL);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[13];
    _s8PaperKit9DataOrURLOWOhTm_2(v0[15], type metadata accessor for DataOrURL);
    v10 = *v9;
    v11 = v9[1];

    v12 = v0[1];

    return v12(v10, v11);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t one-time initialization function for imageResizeLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, imageResizeLogger);
  __swift_project_value_buffer(v0, imageResizeLogger);
  return Logger.init(subsystem:category:)();
}

Swift::Int ImageResize.CoordinateSpace.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t static ImageResize.resizedImage(from:outputSize:inputCrop:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 336) = a1;
  *(v4 + 344) = a2;
  v7 = type metadata accessor for UUID();
  *(v4 + 352) = v7;
  *(v4 + 360) = *(v7 - 8);
  *(v4 + 368) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v4 + 376) = v8;
  *(v4 + 384) = *(v8 - 8);
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = type metadata accessor for DataOrURL();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = type metadata accessor for ImageResize.Destination();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  v9 = *a3;
  *(v4 + 89) = *(a3 + 16);
  v10 = *a4;
  v11 = a4[1];
  *(v4 + 456) = v9;
  *(v4 + 472) = v10;
  *(v4 + 488) = v11;
  *(v4 + 90) = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](static ImageResize.resizedImage(from:outputSize:inputCrop:), 0, 0);
}

__CFData *static ImageResize.resizedImage(from:outputSize:inputCrop:)()
{
  v87 = v0;
  v1 = closure #1 in static ImageResize.resizedImage(from:outputSize:inputCrop:)(*(v0 + 344));
  *(v0 + 504) = v1;
  v2 = v1;
  CGImageSourceRef.dynamicRangeComponents.getter(v83);
  v6 = v83[0];
  v5 = v83[1];
  *(v0 + 512) = v83[0];
  *(v0 + 520) = v5;
  v7 = v84;
  v8 = v85;
  *(v0 + 528) = v84;
  *(v0 + 536) = v8;
  v9 = v86;
  *(v0 + 91) = v86;
  v10 = CGImageGetUTType(v6);
  *(v0 + 544) = v10;
  if (v10)
  {
    v11 = v10;
    v80 = v9;
    _s8PaperKit9DataOrURLOWOcTm_1(*(v0 + 344), *(v0 + 416), type metadata accessor for DataOrURL);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v81 = v8;
      v77 = v7;
      v79 = v5;
      v12 = *(v0 + 392);
      v13 = *(v0 + 384);
      v75 = *(v0 + 376);
      v76 = v6;
      v15 = *(v0 + 360);
      v14 = *(v0 + 368);
      v74 = *(v0 + 352);
      v16 = [objc_opt_self() defaultManager];
      v17 = [v16 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v15 + 8))(v14, v74);
      URL.appendingPathComponent(_:)();

      v18 = *(v13 + 8);
      v18(v12, v75);
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v22 = CGImageDestinationCreateWithURL(v20, v11, 1uLL, 0);

      if (v22)
      {
        v23 = *(v0 + 448);
        v24 = *(v0 + 416);
        v25 = *(v0 + 400);
        v26 = *(v0 + 376);
        v27 = *(v0 + 384);
        v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21CGImageDestinationRefa11destination_10Foundation3URLV3urltMd) + 48);
        *v23 = v22;
        (*(v27 + 32))(v23 + v28, v25, v26);
        swift_storeEnumTagMultiPayload();
        _s8PaperKit9DataOrURLOWOhTm_2(v24, type metadata accessor for DataOrURL);
        v29 = v79;
        goto LABEL_17;
      }

      if (one-time initialization token for imageResizeLogger != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, imageResizeLogger);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1D38C4000, v49, v50, "Destination could not be created for URL", v51, 2u);
        MEMORY[0x1DA6D0660](v51, -1, -1);
      }

      v52 = *(v0 + 416);
      v53 = *(v0 + 400);
      v54 = *(v0 + 376);

      lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
      swift_allocError();
      *v55 = 2;
      swift_willThrow();

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v76, v79, v77, v81, v80);
      v18(v53, v54);
      _s8PaperKit9DataOrURLOWOhTm_2(v52, type metadata accessor for DataOrURL);
    }

    else
    {
      _s8PaperKit9DataOrURLOWOhTm_2(*(v0 + 416), type metadata accessor for DataOrURL);
      result = CFDataCreateMutable(0, 0);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v36 = result;
      v37 = CGImageDestinationCreateWithData(result, v11, 1uLL, 0);
      if (v37)
      {
        v29 = v5;
        v38 = *(v0 + 448);
        *v38 = v37;
        v38[1] = v36;
        swift_storeEnumTagMultiPayload();
LABEL_17:
        v39 = *(v0 + 440);
        _s8PaperKit9DataOrURLOWOcTm_1(*(v0 + 448), v39, type metadata accessor for ImageResize.Destination);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        *(v0 + 552) = *v39;
        v41 = *(v0 + 440);
        if (EnumCaseMultiPayload == 1)
        {
          v42 = *(v0 + 376);
          v43 = *(v0 + 384);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21CGImageDestinationRefa11destination_10Foundation3URLV3urltMd);
          (*(v43 + 8))(v41 + *(v44 + 48), v42);
        }

        else
        {
        }

        v45 = CGImageSourceCopyPropertiesAtIndex(v2, 0, 0);
        if (v45)
        {
          v46 = v45;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v83[0] = 0;
            type metadata accessor for CFStringRef(0);
            lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
            static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

            v47 = v83[0];
            if (v83[0])
            {
LABEL_36:
              *(v0 + 560) = v47;
              v61 = *(v0 + 90);
              v63 = *(v0 + 488);
              v62 = *(v0 + 496);
              v65 = *(v0 + 472);
              v64 = *(v0 + 480);
              v66 = *(v0 + 89);
              v68 = *(v0 + 456);
              v67 = *(v0 + 464);
              if (v80)
              {
                if (v80 == 1)
                {
                  *(v0 + 176) = v68;
                  v69 = (v0 + 176);
                  *(v0 + 184) = v67;
                  *(v0 + 192) = v66;
                  *(v0 + 200) = v65;
                  *(v0 + 208) = v64;
                  *(v0 + 216) = v63;
                  *(v0 + 224) = v62;
                  *(v0 + 232) = v61;
                  *(v0 + 240) = v29;
                  *(v0 + 248) = 0;
                  v70 = swift_task_alloc();
                  *(v0 + 584) = v70;
                  *v70 = v0;
                  v71 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
                }

                else
                {
                  *(v0 + 16) = v68;
                  v69 = (v0 + 16);
                  *(v0 + 24) = v67;
                  *(v0 + 32) = v66;
                  *(v0 + 40) = v65;
                  *(v0 + 48) = v64;
                  *(v0 + 56) = v63;
                  *(v0 + 64) = v62;
                  *(v0 + 72) = v61;
                  *(v0 + 80) = 1;
                  *(v0 + 88) = 1;
                  v70 = swift_task_alloc();
                  *(v0 + 600) = v70;
                  *v70 = v0;
                  v71 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
                }

                v70[1] = v71;
                v73 = v69;
              }

              else
              {
                *(v0 + 256) = v68;
                *(v0 + 264) = v67;
                *(v0 + 272) = v66;
                *(v0 + 280) = v65;
                *(v0 + 288) = v64;
                *(v0 + 296) = v63;
                *(v0 + 304) = v62;
                *(v0 + 312) = v61;
                *(v0 + 320) = 0;
                *(v0 + 328) = 1;
                v72 = swift_task_alloc();
                *(v0 + 568) = v72;
                *v72 = v0;
                v72[1] = static ImageResize.resizedImage(from:outputSize:inputCrop:);
                v73 = (v0 + 256);
              }

              return CGImageRef.resized(withOptions:)(v73);
            }
          }

          else
          {
          }
        }

        v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        goto LABEL_36;
      }

      if (one-time initialization token for imageResizeLogger != -1)
      {
        swift_once();
      }

      v78 = v7;
      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, imageResizeLogger);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1D38C4000, v57, v58, "Destination could not be created for data", v59, 2u);
        MEMORY[0x1DA6D0660](v59, -1, -1);
      }

      lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
      swift_allocError();
      *v60 = 2;
      swift_willThrow();

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v6, v5, v78, v8, v80);
    }
  }

  else
  {
    if (one-time initialization token for imageResizeLogger != -1)
    {
      swift_once();
    }

    v82 = v8;
    v30 = v7;
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, imageResizeLogger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Image type could not be retrieved from SDR image", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    outlined consume of CGImageSourceRef.DynamicRangeComponents(v6, v5, v30, v82, v9);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t static ImageResize.resizedImage(from:outputSize:inputCrop:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {

    v5 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  else
  {
    *(v4 + 624) = a1;
    v5 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {

    v5 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  else
  {
    *(v4 + 632) = a1;
    v5 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 608) = a1;
  *(v3 + 616) = v1;

  if (v1)
  {

    v4 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  else
  {
    v4 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {

    v5 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  else
  {
    *(v4 + 656) = a1;
    v5 = static ImageResize.resizedImage(from:outputSize:inputCrop:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t static ImageResize.resizedImage(from:outputSize:inputCrop:)()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 552);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CGImageDestinationAddImage(v2, v1, isa);

  if (CGImageDestinationFinalize(*(v0 + 552)))
  {
    _s8PaperKit9DataOrURLOWOcTm_1(*(v0 + 448), *(v0 + 432), type metadata accessor for ImageResize.Destination);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(v0 + 544);
    v38 = *(v0 + 91);
    v37 = *(v0 + 536);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v8 = *(v0 + 504);
    v9 = *(v0 + 512);
    v10 = *(v0 + 448);
    v11 = *(v0 + 432);
    v39 = *(v0 + 552);
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v0 + 384);
      v35 = *(v0 + 376);
      v13 = *(v0 + 336);
      _s8PaperKit9DataOrURLOWOhTm_2(v10, type metadata accessor for ImageResize.Destination);

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v9, v7, v6, v37, v38);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21CGImageDestinationRefa11destination_10Foundation3URLV3urltMd);
      (*(v12 + 32))(v13, v11 + *(v14 + 48), v35);
    }

    else
    {
      v28 = *(v0 + 336);
      v29 = *v11;
      v30 = *(v11 + 8);

      v31 = v30;
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v33;

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v9, v7, v6, v37, v38);
      _s8PaperKit9DataOrURLOWOhTm_2(v10, type metadata accessor for ImageResize.Destination);
      *v28 = v32;
      v28[1] = v36;
    }

    swift_storeEnumTagMultiPayload();

    v27 = *(v0 + 8);
  }

  else
  {
    if (one-time initialization token for imageResizeLogger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, imageResizeLogger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D38C4000, v16, v17, "Destination could not be finalized", v18, 2u);
      MEMORY[0x1DA6D0660](v18, -1, -1);
    }

    v19 = *(v0 + 552);
    v20 = *(v0 + 544);
    v21 = *(v0 + 528);
    v22 = *(v0 + 520);
    v23 = *(v0 + 504);
    v24 = *(v0 + 512);
    v40 = *(v0 + 536);
    v41 = *(v0 + 448);
    v25 = *(v0 + 91);

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();

    outlined consume of CGImageSourceRef.DynamicRangeComponents(v24, v22, v21, v40, v25);
    _s8PaperKit9DataOrURLOWOhTm_2(v41, type metadata accessor for ImageResize.Destination);

    v27 = *(v0 + 8);
  }

  return v27();
}

{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 448);
  v8 = *(v0 + 91);

  outlined consume of CGImageSourceRef.DynamicRangeComponents(v5, v4, v3, v2, v8);
  _s8PaperKit9DataOrURLOWOhTm_2(v7, type metadata accessor for ImageResize.Destination);

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 552);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CGImageDestinationAddImage(v2, v1, isa);

  if (CGImageDestinationFinalize(*(v0 + 552)))
  {
    _s8PaperKit9DataOrURLOWOcTm_1(*(v0 + 448), *(v0 + 432), type metadata accessor for ImageResize.Destination);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(v0 + 544);
    v38 = *(v0 + 91);
    v37 = *(v0 + 536);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v8 = *(v0 + 504);
    v9 = *(v0 + 512);
    v10 = *(v0 + 448);
    v11 = *(v0 + 432);
    v39 = *(v0 + 552);
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v0 + 384);
      v35 = *(v0 + 376);
      v13 = *(v0 + 336);
      _s8PaperKit9DataOrURLOWOhTm_2(v10, type metadata accessor for ImageResize.Destination);

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v9, v7, v6, v37, v38);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21CGImageDestinationRefa11destination_10Foundation3URLV3urltMd);
      (*(v12 + 32))(v13, v11 + *(v14 + 48), v35);
    }

    else
    {
      v28 = *(v0 + 336);
      v29 = *v11;
      v30 = *(v11 + 8);

      v31 = v30;
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v33;

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v9, v7, v6, v37, v38);
      _s8PaperKit9DataOrURLOWOhTm_2(v10, type metadata accessor for ImageResize.Destination);
      *v28 = v32;
      v28[1] = v36;
    }

    swift_storeEnumTagMultiPayload();

    v27 = *(v0 + 8);
  }

  else
  {
    if (one-time initialization token for imageResizeLogger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, imageResizeLogger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D38C4000, v16, v17, "Destination could not be finalized", v18, 2u);
      MEMORY[0x1DA6D0660](v18, -1, -1);
    }

    v19 = *(v0 + 552);
    v20 = *(v0 + 544);
    v21 = *(v0 + 528);
    v22 = *(v0 + 520);
    v23 = *(v0 + 504);
    v24 = *(v0 + 512);
    v40 = *(v0 + 536);
    v41 = *(v0 + 448);
    v25 = *(v0 + 91);

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();

    outlined consume of CGImageSourceRef.DynamicRangeComponents(v24, v22, v21, v40, v25);
    _s8PaperKit9DataOrURLOWOhTm_2(v41, type metadata accessor for ImageResize.Destination);

    v27 = *(v0 + 8);
  }

  return v27();
}

{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 448);
  v8 = *(v0 + 91);

  outlined consume of CGImageSourceRef.DynamicRangeComponents(v5, v4, v3, v2, v8);
  _s8PaperKit9DataOrURLOWOhTm_2(v7, type metadata accessor for ImageResize.Destination);

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 472);
  *(v0 + 96) = *(v0 + 456);
  v2 = *(v0 + 528);
  v3 = *(v0 + 90);
  *(v0 + 112) = *(v0 + 89);
  *(v0 + 120) = v1;
  *(v0 + 136) = *(v0 + 488);
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;
  *(v0 + 168) = 0;
  v4 = swift_task_alloc();
  *(v0 + 640) = v4;
  *v4 = v0;
  v4[1] = static ImageResize.resizedImage(from:outputSize:inputCrop:);

  return CGImageRef.resized(withOptions:)((v0 + 96));
}

{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 448);
  v8 = *(v0 + 91);

  outlined consume of CGImageSourceRef.DynamicRangeComponents(v5, v4, v3, v2, v8);
  _s8PaperKit9DataOrURLOWOhTm_2(v7, type metadata accessor for ImageResize.Destination);

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 656);
  v2 = *(v0 + 608);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = [objc_allocWithZone(PPKImageWriter) init];
  v6 = v2;
  v7 = v1;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [(PPKImageWriter *)v5 addGainMapImageToImageDestination:v4 sdrImage:v6 hdrImage:v7 imageMetadata:0 imageOptions:isa];

  if (CGImageDestinationFinalize(*(v0 + 552)))
  {
    _s8PaperKit9DataOrURLOWOcTm_1(*(v0 + 448), *(v0 + 432), type metadata accessor for ImageResize.Destination);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(v0 + 544);
    v43 = *(v0 + 91);
    v42 = *(v0 + 536);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 504);
    v14 = *(v0 + 512);
    v15 = *(v0 + 448);
    v16 = *(v0 + 432);
    v44 = *(v0 + 552);
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v0 + 384);
      v40 = *(v0 + 376);
      v18 = *(v0 + 336);
      _s8PaperKit9DataOrURLOWOhTm_2(v15, type metadata accessor for ImageResize.Destination);

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v14, v12, v11, v42, v43);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21CGImageDestinationRefa11destination_10Foundation3URLV3urltMd);
      (*(v17 + 32))(v18, v16 + *(v19 + 48), v40);
    }

    else
    {
      v33 = *(v0 + 336);
      v34 = *v16;
      v35 = *(v16 + 8);

      v36 = v35;
      v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v38;

      outlined consume of CGImageSourceRef.DynamicRangeComponents(v14, v12, v11, v42, v43);
      _s8PaperKit9DataOrURLOWOhTm_2(v15, type metadata accessor for ImageResize.Destination);
      *v33 = v37;
      v33[1] = v41;
    }

    swift_storeEnumTagMultiPayload();

    v32 = *(v0 + 8);
  }

  else
  {
    if (one-time initialization token for imageResizeLogger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, imageResizeLogger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D38C4000, v21, v22, "Destination could not be finalized", v23, 2u);
      MEMORY[0x1DA6D0660](v23, -1, -1);
    }

    v24 = *(v0 + 552);
    v25 = *(v0 + 544);
    v26 = *(v0 + 528);
    v27 = *(v0 + 520);
    v28 = *(v0 + 504);
    v29 = *(v0 + 512);
    v45 = *(v0 + 536);
    v46 = *(v0 + 448);
    v30 = *(v0 + 91);

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();

    outlined consume of CGImageSourceRef.DynamicRangeComponents(v29, v27, v26, v45, v30);
    _s8PaperKit9DataOrURLOWOhTm_2(v46, type metadata accessor for ImageResize.Destination);

    v32 = *(v0 + 8);
  }

  return v32();
}

{

  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 448);
  v8 = *(v0 + 91);

  outlined consume of CGImageSourceRef.DynamicRangeComponents(v5, v4, v3, v2, v8);
  _s8PaperKit9DataOrURLOWOhTm_2(v7, type metadata accessor for ImageResize.Destination);

  v9 = *(v0 + 8);

  return v9();
}

unint64_t lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors()
{
  result = lazy protocol witness table cache variable for type ImageResize.Errors and conformance ImageResize.Errors;
  if (!lazy protocol witness table cache variable for type ImageResize.Errors and conformance ImageResize.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageResize.Errors and conformance ImageResize.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageResize.Errors and conformance ImageResize.Errors;
  if (!lazy protocol witness table cache variable for type ImageResize.Errors and conformance ImageResize.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageResize.Errors and conformance ImageResize.Errors);
  }

  return result;
}

NSObject *closure #1 in static ImageResize.resizedImage(from:outputSize:inputCrop:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s8PaperKit9DataOrURLOWOcTm_1(a1, v8, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = CGImageSourceCreateWithURL(v10, 0);

    if (v12)
    {
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (one-time initialization token for imageResizeLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, imageResizeLogger);
      v12 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D38C4000, v12, v17, "Source could not be generated from URL", v18, 2u);
        MEMORY[0x1DA6D0660](v18, -1, -1);
      }

      lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v13 = *v8;
    v14 = v8[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = CGImageSourceCreateWithData(isa, 0);

    if (v12)
    {
      outlined consume of Data._Representation(v13, v14);
    }

    else
    {
      if (one-time initialization token for imageResizeLogger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, imageResizeLogger);
      v12 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D38C4000, v12, v21, "Source could not be generated from data", v22, 2u);
        MEMORY[0x1DA6D0660](v22, -1, -1);
      }

      lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      outlined consume of Data._Representation(v13, v14);
    }
  }

  return v12;
}

uint64_t CGImageRef.resized(withOptions:)(_OWORD *a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  v3 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v3;
  *(v2 + 73) = *(a1 + 57);
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](CGImageRef.resized(withOptions:), 0, 0);
}

uint64_t CGImageRef.resized(withOptions:)()
{
  v31 = v0;
  v1 = *(v0 + 72);
  if (v1 <= 0xFD)
  {
    v5 = *(v0 + 136);
    v6 = *(v5 + 40);
    *(v0 + 96) = *(v5 + 24);
    *(v0 + 112) = v6;
    *(v0 + 128) = v1;
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = CGImageRef.resized(withOptions:);

    return CGImageRef.cropped(to:)(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    v29 = *v2;
    v30 = *(v2 + 16);
    v4 = v3;
    CGImageRef.rawOutputSize(from:)(&v29);
    v10 = v9;
    v12 = v11;
    v13 = *(v0 + 144);

    closure #1 in CGImageRef.resized(withOptions:)(v0 + 16, v13, v10, v12);
    v16 = v14;
    CGContextSetInterpolationQuality(v14, kCGInterpolationHigh);
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = v10;
    v33.size.height = v12;
    CGContextRef.draw(_:in:byTiling:)(v4, v33, 0);
    Image = CGBitmapContextCreateImage(v16);
    if (Image)
    {
      v18 = Image;

      v19 = *(v0 + 8);

      return v19(v18);
    }

    else
    {
      if (one-time initialization token for imageResizeLogger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, imageResizeLogger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v29 = v24;
        *v23 = 136315138;
        v25 = CGImageRef.ResizeOptions.DynamicRange.description.getter(*(v0 + 80), *(v0 + 88));
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_1D38C4000, v21, v22, "Image could not be created from context for %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1DA6D0660](v24, -1, -1);
        MEMORY[0x1DA6D0660](v23, -1, -1);
      }

      lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();

      v15 = *(v0 + 8);

      return v15();
    }
  }
}

{
  v28 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v26 = *v3;
  v27 = *(v3 + 16);
  v4 = v1;
  CGImageRef.rawOutputSize(from:)(&v26);
  if (v2)
  {

LABEL_4:
    v11 = *(v0 + 8);

    return v11();
  }

  v7 = v5;
  v8 = v6;
  v9 = *(v0 + 144);

  closure #1 in CGImageRef.resized(withOptions:)(v0 + 16, v9, v7, v8);
  v13 = v10;
  CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v7;
  v30.size.height = v8;
  CGContextRef.draw(_:in:byTiling:)(v4, v30, 0);
  Image = CGBitmapContextCreateImage(v13);
  if (!Image)
  {
    if (one-time initialization token for imageResizeLogger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, imageResizeLogger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136315138;
      v22 = CGImageRef.ResizeOptions.DynamicRange.description.getter(*(v0 + 80), *(v0 + 88));
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D38C4000, v18, v19, "Image could not be created from context for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1DA6D0660](v21, -1, -1);
      MEMORY[0x1DA6D0660](v20, -1, -1);
    }

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    goto LABEL_4;
  }

  v15 = Image;

  v16 = *(v0 + 8);

  return v16(v15);
}

{
  return (*(v0 + 8))();
}

uint64_t CGImageRef.resized(withOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = CGImageRef.resized(withOptions:);
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = CGImageRef.resized(withOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t CGImageRef.ResizeOptions.DynamicRange.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 5391443;
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);

    v3 = Double.description.getter();
    MEMORY[0x1DA6CD010](v3);

    MEMORY[0x1DA6CD010](41, 0xE100000000000000);
    return 0x6165682820524448;
  }
}

uint64_t CGImageRef.cropped(to:)(uint64_t a1)
{
  *(v2 + 64) = v1;
  v3 = *(a1 + 16);
  *(v2 + 72) = *a1;
  *(v2 + 88) = v3;
  *(v2 + 104) = *(a1 + 32);
  return MEMORY[0x1EEE6DFA0](CGImageRef.cropped(to:), 0, 0);
}

uint64_t CGImageRef.cropped(to:)()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  x = *(v0 + 72);
  y = *(v0 + 80);
  if (v1 < 0)
  {
    if (v1)
    {
      goto LABEL_8;
    }

    CGImageGetSizeAfterOrientation();
  }

  else
  {
    v6 = *(v0 + 64);
    if (v1)
    {
      Width = CGImageGetWidth(*(v0 + 64));
      Height = CGImageGetHeight(v6);
      x = x * Width;
      y = y * Height;
      v3 = v3 * Width;
      v2 = v2 * Height;
      goto LABEL_8;
    }

    CGImageGetSizeAfterOrientation();
    x = x * v9;
    y = y * v10;
    v3 = v3 * v9;
    v2 = v2 * v10;
  }

  CGImageGetOrientation();
  CGImageGetTransformForOrientationAndSize();
  *(v0 + 16) = v19;
  *(v0 + 32) = v20;
  *(v0 + 48) = v21;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = v3;
  v23.size.height = v2;
  v24 = CGRectApplyAffineTransform(v23, (v0 + 16));
  x = v24.origin.x;
  y = v24.origin.y;
  v3 = v24.size.width;
  v2 = v24.size.height;
LABEL_8:
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = v3;
  v25.size.height = v2;
  if (CGImageCreateWithImageInRect(*(v0 + 64), v25))
  {
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    if (one-time initialization token for imageResizeLogger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, imageResizeLogger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D38C4000, v14, v15, "Image could not be created from context", v16, 2u);
      MEMORY[0x1DA6D0660](v16, -1, -1);
    }

    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

void CGImageRef.rawOutputSize(from:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  Width = CGImageGetWidth(v1);
  Height = CGImageGetHeight(v1);
  if (v4 < 0)
  {
    if (v2 < 1.0 || v3 < 1.0)
    {
      if (one-time initialization token for imageResizeLogger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, imageResizeLogger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_17;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Output size not supported";
      goto LABEL_16;
    }

    if (v4)
    {
      v15 = v2;
      v16 = v3;
    }

    else
    {
      v17 = CGImageGetOrientation() - 5;
      if (v17 >= 4)
      {
        v15 = v2;
      }

      else
      {
        v15 = v3;
      }

      if (v17 >= 4)
      {
        v16 = v3;
      }

      else
      {
        v16 = v2;
      }
    }
  }

  else
  {
    if (v2 < 0.0)
    {
      if (one-time initialization token for imageResizeLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, imageResizeLogger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_17;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Output scale not supported";
LABEL_16:
      _os_log_impl(&dword_1D38C4000, v8, v9, v11, v10, 2u);
      MEMORY[0x1DA6D0660](v10, -1, -1);
LABEL_17:

      lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
      swift_allocError();
      *v14 = 0;
      swift_willThrow();
      return;
    }

    v15 = v2 * Width;
    v16 = v2 * Height;
  }

  CGSize.integral.getter(v15, v16);
}

void closure #1 in CGImageRef.resized(withOptions:)(uint64_t a1, CGImageRef image, double a3, double a4)
{
  v6 = *(a1 + 64);
  if ((*(a1 + 72) & 1) == 0)
  {
    type metadata accessor for ImageRenderer();
    inited = swift_initStackObject();
    *(inited + 16) = 1;
    *(inited + 24) = a3;
    *(inited + 32) = a4;
    *(inited + 40) = 0x3FF0000000000000;
    *(inited + 48) = 256;
    *(inited + 56) = v6;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    if (ImageRenderer.createCGContext()().value)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v6)
  {
    type metadata accessor for ImageRenderer();
    v7 = swift_initStackObject();
    *(v7 + 16) = 1;
    *(v7 + 24) = a3;
    *(v7 + 32) = a4;
    *(v7 + 40) = 0x3FF0000000000000;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 1;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    if (ImageRenderer.createCGContext()().value)
    {
      return;
    }

    if (one-time initialization token for imageResizeLogger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, imageResizeLogger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D38C4000, v9, v10, "Could not create SDR context from renderer", v11, 2u);
      MEMORY[0x1DA6D0660](v11, -1, -1);
    }

LABEL_10:
    lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
    swift_allocError();
    v14 = 2;
LABEL_11:
    *v13 = v14;
    swift_willThrow();
    return;
  }

  v16 = CGImageGetColorSpace(image);
  if (!v16)
  {
    if (one-time initialization token for imageResizeLogger == -1)
    {
LABEL_27:
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, imageResizeLogger);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D38C4000, v26, v27, "Image did not return a color space", v28, 2u);
        MEMORY[0x1DA6D0660](v28, -1, -1);
      }

      lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
      swift_allocError();
      v14 = 1;
      goto LABEL_11;
    }

LABEL_41:
    swift_once();
    goto LABEL_27;
  }

  if (a3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = v16;
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  BitsPerPixel = CGImageGetBitsPerPixel(image);
  v20 = CGImageGetBitsPerComponent(image);
  if (!v20)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (BitsPerPixel != 0x8000000000000000 || v20 != -1)
  {
    v21 = BitsPerPixel / v20;
    v22 = a3 * (BitsPerPixel / v20);
    if ((a3 * v21) >> 64 == v22 >> 63)
    {
      v17 = v17;
      BitmapInfo = CGImageGetBitmapInfo(image);
      v24 = CGBitmapContextCreate(0, a3, a4, BitsPerComponent, v22, v17, BitmapInfo);

      if (v24)
      {

        return;
      }

      if (one-time initialization token for imageResizeLogger == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }

    goto LABEL_40;
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_31:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, imageResizeLogger);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D38C4000, v30, v31, "Destination context could not be created", v32, 2u);
    MEMORY[0x1DA6D0660](v32, -1, -1);
  }

  lazy protocol witness table accessor for type ImageResize.Errors and conformance ImageResize.Errors();
  swift_allocError();
  *v33 = 2;
  swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type ImageResize.CoordinateSpace and conformance ImageResize.CoordinateSpace()
{
  result = lazy protocol witness table cache variable for type ImageResize.CoordinateSpace and conformance ImageResize.CoordinateSpace;
  if (!lazy protocol witness table cache variable for type ImageResize.CoordinateSpace and conformance ImageResize.CoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageResize.CoordinateSpace and conformance ImageResize.CoordinateSpace);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageResize.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ImageResize.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ImageResize.Crop(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for ImageResize.Crop(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ImageResize.Crop(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t type metadata accessor for ImageResize.Destination()
{
  result = type metadata singleton initialization cache for ImageResize.Destination;
  if (!type metadata singleton initialization cache for ImageResize.Destination)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void outlined consume of CGImageSourceRef.DynamicRangeComponents(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (a5)
  {
    if (a5 == 2)
    {

      a1 = a2;
      a3 = a4;
    }

    else if (a5 != 1)
    {
      return;
    }
  }

  else
  {
    a3 = a2;
  }

  v7 = a3;
}

uint64_t _s8PaperKit9DataOrURLOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit9DataOrURLOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for ImageResize.Destination()
{
  type metadata accessor for (destination: CGImageDestinationRef, data: NSMutableData)(319, &lazy cache variable for type metadata for (destination: CGImageDestinationRef, data: NSMutableData), type metadata accessor for NSMutableData);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (destination: CGImageDestinationRef, data: NSMutableData)(319, &lazy cache variable for type metadata for (destination: CGImageDestinationRef, url: URL), MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t type metadata accessor for NSMutableData()
{
  result = lazy cache variable for type metadata for NSMutableData;
  if (!lazy cache variable for type metadata for NSMutableData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableData);
  }

  return result;
}

void type metadata accessor for (destination: CGImageDestinationRef, data: NSMutableData)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGImageDestinationRef(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t AnyCanvasElementViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AnyCanvasElementViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperMarkupViewController._delegate.modify;
}

id AnyCanvasElementViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1DA6CCED0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AnyCanvasElementViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_toolPicker;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  if (a2)
  {
    v8 = MEMORY[0x1DA6CCED0](a1, a2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for AnyCanvasElementViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id AnyCanvasElementViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AnyCanvasElementViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_toolPicker;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AnyCanvasElementViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id AnyCanvasElementViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnyCanvasElementViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CanvasState.selections.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CanvasState.selections.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CanvasState.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30[-v19];
  v21 = type metadata accessor for CanvasState.Partial(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v30[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of CanvasState.Partial(v2, v23, type metadata accessor for CanvasState.Partial);
  v35 = a1;
  outlined init with copy of Date?(a1, v14, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v24 = *(v16 + 48);
  if (v24(v14, 1, v15) == 1)
  {
    v11 = v14;
LABEL_5:
    outlined destroy of CanvasState.Partial(v23, type metadata accessor for CanvasState.Partial);
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    goto LABEL_6;
  }

  (*(v16 + 32))(v20, v14, v15);
  outlined init with copy of Date?(v23, v11, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  if (v24(v11, 1, v15) == 1)
  {
    (*(v16 + 8))(v20, v15);
    goto LABEL_5;
  }

  v31 = CRDictionary.MergeableDelta.canMerge(delta:)();
  v32 = v2;
  v27 = *(v16 + 8);
  v27(v20, v15);
  outlined destroy of CanvasState.Partial(v23, type metadata accessor for CanvasState.Partial);
  v27(v11, v15);
  v2 = v32;
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  outlined init with copy of Date?(v2, v8, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v25 = v24(v8, 1, v15);
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  if (v25 == 1)
  {
    outlined assign with copy of CRDictionary<UUID, TimestampedSelection>.MergeableDelta?(v35, v2);
  }

  else
  {
    v26 = v34;
    outlined init with copy of Date?(v35, v34, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    if (v24(v26, 1, v15) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    }

    else
    {
      v29 = v33;
      (*(v16 + 32))(v33, v26, v15);
      if (!v24(v2, 1, v15))
      {
        CRDictionary.MergeableDelta.merge(delta:)();
      }

      (*(v16 + 8))(v29, v15);
    }
  }

  return 1;
}

BOOL CanvasState.Partial.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  outlined init with copy of Date?(a1, v8, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v13 = *(v10 + 48);
  if (v13(v8, 1, v9) == 1)
  {
    v5 = v8;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    return 1;
  }

  (*(v10 + 32))(v12, v8, v9);
  outlined init with copy of Date?(v1, v5, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  if (v13(v5, 1, v9) == 1)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  v15 = CRDictionary.MergeableDelta.canMerge(delta:)();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v16(v5, v9);
  return (v15 & 1) != 0;
}

uint64_t outlined assign with copy of CRDictionary<UUID, TimestampedSelection>.MergeableDelta?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t CanvasState.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  outlined init with copy of Date?(v1, &v8 - v3, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  }

  CRDictionary.MergeableDelta.visitReferences(_:)();
  return (*(v6 + 8))(v4, v5);
}

uint64_t CanvasState.Partial.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v7 = *(*(v6 - 8) + 56);
  v7(a1, 1, 1, v6);
  dispatch thunk of CRDecoder.keyedContainer()();
  if (v1)
  {

    return outlined destroy of CanvasState.Partial(a1, type metadata accessor for CanvasState.Partial);
  }

  else if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v9[3] = type metadata accessor for UUID();
    v9[1] = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v9[0] = lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
    lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
    CRDictionary.MergeableDelta.init(from:)();

    v7(v5, 0, 1, v6);
    return outlined assign with take of UUID?(v5, a1, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  }

  else
  {
  }
}

uint64_t CanvasState.Partial.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v1)
  {
    outlined init with copy of Date?(v0, v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRDictionary<UUID, TimestampedSelection>.MergeableDelta and conformance CRDictionary<A, B>.MergeableDelta, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t protocol witness for PartialCRDT.visitReferences(_:) in conformance CanvasState.Partial()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  outlined init with copy of Date?(v1, &v8 - v3, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  }

  CRDictionary.MergeableDelta.visitReferences(_:)();
  return (*(v6 + 8))(v4, v5);
}

PaperKit::TimestampedSelection::CodingKeys_optional __swiftcall TimestampedSelection.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6D617473656D6974 && stringValue._object == 0xE900000000000070;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7069636974726170 && object == 0xEB00000000746E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C457361766E6163 && object == 0xEE0073746E656D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x73656B6F727473 && object == 0xE700000000000000)
  {

    v7 = 3;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::TimestampedSelection::CodingKeys_optional __swiftcall TimestampedSelection.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 4;
  if (intValue < 4)
  {
    v2 = intValue;
  }

  *v1 = v2;
  return intValue;
}

uint64_t TimestampedSelection.CodingKeys.stringValue.getter()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x6C457361766E6163;
  if (*v0 != 2)
  {
    v2 = 0x73656B6F727473;
  }

  if (*v0)
  {
    v1 = 0x7069636974726170;
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimestampedSelection.CodingKeys()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x6C457361766E6163;
  if (*v0 != 2)
  {
    v2 = 0x73656B6F727473;
  }

  if (*v0)
  {
    v1 = 0x7069636974726170;
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

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance TimestampedSelection.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys();
  v5 = lazy protocol witness table accessor for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimestampedSelection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimestampedSelection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimestampedSelection.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit20TimestampedSelectionV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v15 = v1[2];
  v16 = v8;
  v9 = v1[4];
  v14 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys();
  v10 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v14;
  LOBYTE(v18) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v12;
  v17 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A](&lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A], &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v18 = v9;
  v17 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
  lazy protocol witness table accessor for type [UUID] and conformance <A> [A](&lazy protocol witness table cache variable for type [UUID] and conformance <A> [A], &lazy protocol witness table cache variable for type UUID and conformance UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v10);
}

uint64_t TimestampedSelection.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 24);
  v25 = *(v1 + 32);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v10);
  String.hash(into:)();
  v12 = *(v11 + 16);
  v28 = a1;
  MEMORY[0x1DA6CE810](v12);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v7 + 16;
    v27 = *(v7 + 16);
    v15 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    v17 = (v14 - 8);
    do
    {
      v27(v9, v15, v6);
      _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
      dispatch thunk of Hashable.hash(into:)();
      (*v17)(v9, v6);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  v18 = v25;
  result = MEMORY[0x1DA6CE810](*(v25 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = *(v26 + 16);
    v22 = v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v23 = *(v26 + 72);
    v24 = (v26 + 8);
    do
    {
      v21(v5, v22, v3);
      _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      result = (*v24)(v5, v3);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  return result;
}

Swift::Int TimestampedSelection.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  Hasher.init(_seed:)();
  TimestampedSelection.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t TimestampedSelection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit20TimestampedSelectionV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  static Date.timeIntervalSinceReferenceDate.getter();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v20) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    LOBYTE(v20) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v18 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
    v19 = 2;
    lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A](&lazy protocol witness table cache variable for type [CRKeyPath] and conformance <A> [A], &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
    v19 = 3;
    lazy protocol witness table accessor for type [UUID] and conformance <A> [A](&lazy protocol witness table cache variable for type [UUID] and conformance <A> [A], &lazy protocol witness table cache variable for type UUID and conformance UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v16 = v20;
    *a2 = v10;
    a2[1] = v18;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v16;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TimestampedSelection()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  Hasher.init(_seed:)();
  TimestampedSelection.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimestampedSelection()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  Hasher.init(_seed:)();
  TimestampedSelection.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance TimestampedSelection@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v6;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance TimestampedSelection()
{
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance TimestampedSelection(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t CanvasState.merge(_:)()
{
  v0 = type metadata accessor for MergeResult();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  MergeResult.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.merge(_:)();
  MergeResult.merge(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  type metadata accessor for CanvasState(0);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  v7(v3, v0);
  return (v7)(v6, v0);
}

{
  v0 = type metadata accessor for MergeResult();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.merge(_:)();
  MergeResult.merge(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  type metadata accessor for CanvasState(0);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v4)(v3, v0);
}

uint64_t CanvasState.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.actionUndoingDifference(from:)();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    outlined init with copy of Date?(v4, a1, &_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    v6 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v7 = type metadata accessor for CanvasState.MutatingAction(0);
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t CanvasState.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11CanvasStateV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for CanvasState.MutatingAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v4, &_s8PaperKit11CanvasStateV14MutatingActionVSgMd);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit11CanvasStateV14MutatingActionVSgMd);
  }

  outlined init with take of CanvasState.MutatingAction(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.apply(_:)();
  return outlined destroy of CanvasState.Partial(v8, type metadata accessor for CanvasState.MutatingAction);
}

uint64_t CanvasState.hasDelta(from:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  if (CRDictionary.hasDelta(from:)())
  {
    return 1;
  }

  type metadata accessor for CanvasState(0);
  return UnknownProperties.hasDelta(from:)() & 1;
}

uint64_t CanvasState.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownProperties();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  outlined init with copy of CanvasState.Partial(v1, a1, type metadata accessor for CanvasState);
  CRDictionary.copy(renamingReferences:)();
  (*(v8 + 40))(a1, v10, v7);
  v11 = type metadata accessor for CanvasState(0);
  UnknownProperties.copy(renamingReferences:)();
  return (*(v4 + 40))(a1 + *(v11 + 20), v6, v3);
}

uint64_t CanvasState.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v14 = *(v4 - 8);
  v15 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  CRDictionary.init()();
  v7 = *(type metadata accessor for CanvasState(0) + 20);
  UnknownProperties.init()();
  v8 = v19;
  CRDictionary.init(defaultState:)();
  if (v8)
  {
    return outlined destroy of CanvasState.Partial(a1, type metadata accessor for CanvasState);
  }

  v10 = v16;
  v9 = v17;
  (*(v14 + 40))(a1, v6, v15);
  v11 = v18;
  UnknownProperties.init(defaultState:)();
  return (*(v10 + 40))(a1 + v7, v11, v9);
}

uint64_t CanvasState.isDefaultState.getter()
{
  type metadata accessor for CanvasState(0);
  if ((UnknownProperties.isDefaultState.getter() & 1) == 0)
  {
    return 0;
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);

  return MEMORY[0x1EEDF47C8](v0);
}

uint64_t CanvasState.visitReferences(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.visitReferences(_:)();
  type metadata accessor for CanvasState(0);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t CanvasState.newRefs(from:)()
{
  v3 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v0 = CRDictionary.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v0);
  type metadata accessor for CanvasState(0);
  v1 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v1);
  return v3;
}

Swift::Bool __swiftcall CanvasState.needToFinalizeTimestamps()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  if (CRDictionary.needToFinalizeTimestamps()())
  {
    return 1;
  }

  type metadata accessor for CanvasState(0);
  return UnknownProperties.needToFinalizeTimestamps()();
}

uint64_t CanvasState.finalizeTimestamps(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.finalizeTimestamps(_:)();
  type metadata accessor for CanvasState(0);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t CanvasState.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRCodableVersion();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  type metadata accessor for CanvasState(0);
  UnknownProperties.minEncodingVersion.getter();
  (*(v3 + 104))(v8, *MEMORY[0x1E6995288], v2);
  v12 = static CRCodableVersion.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v8, v2);
  if (v12)
  {
    return (*(v3 + 32))(a1, v11, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.minEncodingVersion.getter();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v15 = (v3 + 32);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v13(v11, v2);
    return (*v15)(a1, v5, v2);
  }

  else
  {
    v13(v5, v2);
    return (*v15)(a1, v11, v2);
  }
}

uint64_t CanvasState.observableDifference(from:with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.observableDifference(from:with:)();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    outlined init with copy of Date?(v4, a1, &_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    v6 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v7 = type metadata accessor for CanvasState.ObservableDifference(0);
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t CanvasState.encode(to:)()
{
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRDictionary<UUID, TimestampedSelection> and conformance CRDictionary<A, B>, &_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    type metadata accessor for CanvasState(0);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t CanvasState.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = type metadata accessor for UnknownProperties();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v53 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v12 = *(v11 - 1);
  v62 = v11;
  v63 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  CRDictionary.init()();
  v15 = *(type metadata accessor for CanvasState(0) + 20);
  v69 = a2;
  UnknownProperties.init()();
  v16 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v2)
  {
LABEL_2:

    return outlined destroy of CanvasState.Partial(v69, type metadata accessor for CanvasState);
  }

  v55 = v15;
  v56 = a1;
  v65 = 0;
  v66 = v16;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v18 = v65;
    CRDictionary.init(from:)();
    v19 = v68;
    if (v18)
    {
LABEL_6:

      goto LABEL_2;
    }

    v65 = 0;
    (*(v63 + 40))(v69, v14, v62);
  }

  else
  {
    v19 = v68;
  }

  v20 = v65;
  v21 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  if (v20)
  {
    goto LABEL_6;
  }

  v65 = 0;
  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v21);

  v71 = v22;
  specialized Set._Variant.remove(_:)(0x6F697463656C6573, 0xEA0000000000736ELL);

  v23 = v71;
  v24 = v71 + 56;
  v25 = 1 << *(v71 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v71 + 56);
  v28 = (v25 + 63) >> 6;
  v63 = v64 + 56;

  v29 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v29;
    if (!v27)
    {
      break;
    }

LABEL_17:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = (*(v23 + 48) + ((v29 << 10) | (16 * v31)));
    v34 = *v32;
    v33 = v32[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v54 = v23;
      v35 = v19;
      v36 = v67;
      *v35 = v34;
      v35[1] = v33;

      v37 = v65;
      AnyCRDT.init(from:)();
      if (v37)
      {
LABEL_32:

        swift_bridgeObjectRelease_n();
        return outlined destroy of CanvasState.Partial(v69, type metadata accessor for CanvasState);
      }

      (*v63)(v35, 0, 1, v36);
      v38 = v57;
      outlined init with take of (String, AnyCRDT)(v35, v57);
      v39 = v58;
      outlined init with take of (String, AnyCRDT)(v38, v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
      }

      v41 = v64;
      v43 = v62[2];
      v42 = v62[3];
      v23 = v54;
      if (v43 >= v42 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1, v62);
        v41 = v64;
        v62 = v45;
      }

      v44 = v62;
      v62[2] = v43 + 1;
      outlined init with take of (String, AnyCRDT)(v39, v44 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43);
      v19 = v68;
    }

    else
    {

      (*v63)(v19, 1, 1, v67);
      outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_sSS_9Coherence7AnyCRDTVtSgMd);
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v29);
    ++v30;
    if (v27)
    {
      goto LABEL_17;
    }
  }

  v46 = v62;
  if (v62[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
    v47 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC8];
  }

  v48 = v59;
  v49 = v60;
  v50 = v61;
  v51 = v55;
  v70 = v47;
  v52 = v65;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v46, 1, &v70);
  if (v52)
  {

    return outlined destroy of CanvasState.Partial(v69, type metadata accessor for CanvasState);
  }

  UnknownProperties.init(_:)();

  return (*(v50 + 40))(v69 + v51, v49, v48);
}

uint64_t CanvasState.delta(_:from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.delta(_:from:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    outlined init with copy of Date?(v7, v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    (*(v9 + 56))(a1, 1, 1, v8);
    outlined assign with take of UUID?(v4, a1, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    v10 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v11 = type metadata accessor for CanvasState.Partial(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

BOOL CanvasState.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  outlined init with copy of Date?(a1, v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    return 1;
  }

  (*(v6 + 32))(v8, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v9 = CRDictionary.canMerge(delta:)();
  (*(v6 + 8))(v8, v5);
  return (v9 & 1) != 0;
}

uint64_t CanvasState.merge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  outlined init with copy of Date?(a1, v7, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
    v16 = CRDictionary.canMerge(delta:)();
    (*(v9 + 8))(v14, v8);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(a1, v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  if (v15(v4, 1, v8) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
    CRDictionary.merge(delta:)();
    (*(v9 + 8))(v11, v8);
  }

  return 1;
}

uint64_t static CanvasState.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRDictionary<UUID, TimestampedSelection> and conformance CRDictionary<A, B>, &_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CanvasState(0);

  return static UnknownProperties.== infix(_:_:)();
}

uint64_t protocol witness for CRDT.context.getter in conformance CanvasState(uint64_t a1)
{
  v2 = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRDT.newRefs(from:) in conformance CanvasState()
{
  v3 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v0 = CRDictionary.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v0);
  v1 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v1);
  return v3;
}

uint64_t protocol witness for CRDT.actionUndoingDifference(from:) in conformance CanvasState@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.actionUndoingDifference(from:)();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    outlined init with copy of Date?(v4, a1, &_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    v6 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v7 = type metadata accessor for CanvasState.MutatingAction(0);
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t protocol witness for CRDT.apply(_:) in conformance CanvasState(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11CanvasStateV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for CanvasState.MutatingAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v4, &_s8PaperKit11CanvasStateV14MutatingActionVSgMd);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit11CanvasStateV14MutatingActionVSgMd);
  }

  outlined init with take of CanvasState.MutatingAction(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.apply(_:)();
  return outlined destroy of CanvasState.Partial(v8, type metadata accessor for CanvasState.MutatingAction);
}

uint64_t protocol witness for CRDT.hasDelta(from:) in conformance CanvasState()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  if (CRDictionary.hasDelta(from:)())
  {
    return 1;
  }

  else
  {
    return UnknownProperties.hasDelta(from:)() & 1;
  }
}

uint64_t protocol witness for CRDT.delta(_:from:) in conformance CanvasState@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.delta(_:from:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    outlined init with copy of Date?(v7, v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    (*(v9 + 56))(a1, 1, 1, v8);
    outlined assign with take of UUID?(v4, a1, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    v10 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v11 = type metadata accessor for CanvasState.Partial(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

BOOL protocol witness for CRDT.canMerge(delta:) in conformance CanvasState(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  outlined init with copy of Date?(a1, v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV14MergeableDeltaVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    return 1;
  }

  (*(v6 + 32))(v8, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v9 = CRDictionary.canMerge(delta:)();
  (*(v6 + 8))(v8, v5);
  return (v9 & 1) != 0;
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance CanvasState@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnknownProperties();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  outlined init with copy of CanvasState.Partial(v2, a2, type metadata accessor for CanvasState);
  CRDictionary.copy(renamingReferences:)();
  (*(v10 + 40))(a2, v12, v9);
  UnknownProperties.copy(renamingReferences:)();
  return (*(v6 + 40))(a2 + *(a1 + 20), v8, v5);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CanvasState@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.observableDifference(from:with:)();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    outlined init with copy of Date?(v4, a1, &_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
    v6 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence12CRDictionaryV20ObservableDifferenceVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GSgMd);
  v7 = type metadata accessor for CanvasState.ObservableDifference(0);
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance CanvasState()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.visitReferences(_:)();
  return UnknownProperties.visitReferences(_:)();
}

uint64_t protocol witness for CRType.finalizeTimestamps(_:) in conformance CanvasState(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.finalizeTimestamps(_:)();
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance CanvasState()
{
  v0 = type metadata accessor for MergeResult();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.merge(_:)();
  MergeResult.merge(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v4)(v3, v0);
}

{
  v0 = type metadata accessor for MergeResult();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  MergeResult.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  CRDictionary.merge(_:)();
  MergeResult.merge(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  v7(v3, v0);
  return (v7)(v6, v0);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CanvasState()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRDictionary<UUID, TimestampedSelection> and conformance CRDictionary<A, B>, &_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UnknownProperties.== infix(_:_:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CanvasState()
{
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRDictionary<UUID, TimestampedSelection> and conformance CRDictionary<A, B>, &_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t protocol witness for CRCodable.init(defaultState:) in conformance CanvasState@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnknownProperties();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v16 = *(v6 - 8);
  v17 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  CRDictionary.init()();
  v9 = *(a1 + 20);
  UnknownProperties.init()();
  v10 = v21;
  CRDictionary.init(defaultState:)();
  if (v10)
  {
    return outlined destroy of CanvasState.Partial(a2, type metadata accessor for CanvasState);
  }

  v12 = v18;
  v11 = v19;
  (*(v16 + 40))(a2, v8, v17);
  v13 = v20;
  UnknownProperties.init(defaultState:)();
  return (*(v12 + 40))(a2 + v9, v13, v11);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance CanvasState()
{
  if ((UnknownProperties.isDefaultState.getter() & 1) == 0)
  {
    return 0;
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);

  return MEMORY[0x1EEDF47C8](v0);
}

uint64_t specialized static TimestampedSelection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9Coherence9CRKeyPathV_Tt1g5(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(v3, v4);
}

unint64_t lazy protocol witness table accessor for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection.CodingKeys and conformance TimestampedSelection.CodingKeys);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [UUID] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd);
    _s10Foundation4UUIDVACSHAAWlTm_2(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9Coherence9CRKeyPathVGMd);
    _s10Foundation4UUIDVACSHAAWlTm_2(a2, MEMORY[0x1E69954B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of CanvasState.MutatingAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasState.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CanvasState.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of CanvasState.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata completion function for CanvasState()
{
  type metadata accessor for CRDictionary<UUID, TimestampedSelection>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownProperties();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CRDictionary<UUID, TimestampedSelection>()
{
  if (!lazy cache variable for type metadata for CRDictionary<UUID, TimestampedSelection>)
  {
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
    lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
    v0 = type metadata accessor for CRDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRDictionary<UUID, TimestampedSelection>);
    }
  }
}

uint64_t getEnumTagSinglePayload for TimestampedSelection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TimestampedSelection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall NewCanvasElementDelegate.addNewCanvasElement(_:)(PaperKit::PaperNewShapeType a1)
{
  v749 = v1;
  v750 = v2;
  v725 = a1;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v662 = &v647 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v664 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v663 = *(v664 - 8);
  MEMORY[0x1EEE9AC00](v664);
  v665 = &v647 - v5;
  v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v723 = *(v722 - 8);
  MEMORY[0x1EEE9AC00](v722);
  v724 = &v647 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = *(v7 - 8);
  v755 = v7;
  v756 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v660 = &v647 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v684 = &v647 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v657 = &v647 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v659 = &v647 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v658 = &v647 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v654 = &v647 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v653 = &v647 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v656 = &v647 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v655 = &v647 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v652 = &v647 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v651 = &v647 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v650 = &v647 - v31;
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v748 = *(v747 - 8);
  MEMORY[0x1EEE9AC00](v747);
  v746 = &v647 - v32;
  v751 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v745 = *(v751 - 8);
  MEMORY[0x1EEE9AC00](v751);
  v744 = &v647 - v33;
  v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v743 = *(v742 - 8);
  MEMORY[0x1EEE9AC00](v742);
  v741 = &v647 - v34;
  v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v740 = *(v739 - 8);
  MEMORY[0x1EEE9AC00](v739);
  v738 = &v647 - v35;
  v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v735);
  v734 = &v647 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v736 = &v647 - v38;
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v732);
  v731 = &v647 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v733 = &v647 - v41;
  v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v729);
  v728 = &v647 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v730 = &v647 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v661 = &v647 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v682 = &v647 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v677 = &v647 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v708 = (&v647 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v678 = &v647 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v709 = &v647 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v676 = &v647 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v707 = &v647 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v675 = &v647 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v706 = &v647 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v673 = &v647 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v705 = &v647 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v674 = &v647 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v679 = &v647 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v672 = &v647 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v680 = &v647 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v671 = &v647 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v713 = &v647 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v670 = &v647 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v712 = &v647 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v669 = &v647 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v711 = &v647 - v88;
  v754 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v754);
  v681 = &v647 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v710 = (&v647 - v91);
  MEMORY[0x1EEE9AC00](v92);
  v702 = &v647 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v701 = &v647 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v704 = &v647 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v703 = &v647 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v700 = &v647 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v699 = &v647 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v698 = &v647 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v697 = &v647 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v695 = &v647 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v694 = &v647 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v718 = &v647 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v696 = &v647 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v717 = &v647 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v693 = &v647 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v716 = &v647 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v692 = &v647 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v715 = &v647 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v691 = &v647 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v726 = &v647 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v753 = &v647 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v714 = &v647 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v689 = &v647 - v135;
  v757 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v757);
  v683 = &v647 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v137);
  v687 = (&v647 - v138);
  MEMORY[0x1EEE9AC00](v139);
  v690 = (&v647 - v140);
  MEMORY[0x1EEE9AC00](v141);
  v688 = (&v647 - v142);
  MEMORY[0x1EEE9AC00](v143);
  v686 = (&v647 - v144);
  MEMORY[0x1EEE9AC00](v145);
  v685 = (&v647 - v146);
  MEMORY[0x1EEE9AC00](v147);
  v720 = &v647 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v721 = &v647 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v719 = (&v647 - v152);
  MEMORY[0x1EEE9AC00](v153);
  v155 = &v647 - v154;
  MEMORY[0x1EEE9AC00](v156);
  v727 = &v647 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v737 = &v647 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v647 - v161;
  v752 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v752);
  MEMORY[0x1EEE9AC00](v163);
  MEMORY[0x1EEE9AC00](v164);
  MEMORY[0x1EEE9AC00](v165);
  MEMORY[0x1EEE9AC00](v166);
  MEMORY[0x1EEE9AC00](v167);
  MEMORY[0x1EEE9AC00](v168);
  MEMORY[0x1EEE9AC00](&v647 - v169);
  MEMORY[0x1EEE9AC00](v170);
  MEMORY[0x1EEE9AC00](v171);
  v668 = &v647 - v172;
  MEMORY[0x1EEE9AC00](v173);
  MEMORY[0x1EEE9AC00](v174);
  v666 = &v647 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v667 = (&v647 - v177);
  MEMORY[0x1EEE9AC00](v178);
  v180 = &v647 - v179;
  MEMORY[0x1EEE9AC00](v181);
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v647 - v183;
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v647 - v186;
  MEMORY[0x1EEE9AC00](v188);
  v190 = &v647 - v189;
  MEMORY[0x1EEE9AC00](v191);
  v193 = &v647 - v192;
  MEMORY[0x1EEE9AC00](v194);
  v196 = &v647 - v195;
  MEMORY[0x1EEE9AC00](v197);
  v199 = &v647 - v198;
  MEMORY[0x1EEE9AC00](v200);
  v202 = &v647 - v201;
  MEMORY[0x1EEE9AC00](v203);
  v216 = &v647 - v215;
  v217 = *v725;
  if (v217 <= 4)
  {
    v704 = v202;
    v705 = v196;
    v706 = v199;
    v707 = v190;
    v708 = v193;
    v709 = v184;
    v710 = v187;
    v725 = v180;
    v249 = v162;
    v250 = v155;
    v251 = v721;
    v252 = v720;
    v253 = v714;
    v254 = v715;
    v255 = v716;
    v256 = v717;
    v257 = v718;
    v258 = v711;
    v259 = v712;
    v260 = v713;
    if (v217 <= 1)
    {
      if (v217)
      {
        v649 = v250;
        swift_storeEnumTagMultiPayload();
        v461 = type metadata accessor for Color(0);
        v462 = *(*(v461 - 8) + 56);
        v462(v691, 1, 1, v461);
        v462(v254, 1, 1, v461);
        (*(v756 + 56))(v259, 1, 1, v755);
        type metadata accessor for CGRect(0);
        v720 = v463;
        v719 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
        v758 = 0u;
        v759 = 0u;
        v464 = v705;
        CRRegister.init(wrappedValue:)();
        v465 = v752;
        *&v758 = 0;
        v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v721 = v465[6];
        v466 = v753;
        v462(v753, 1, 1, v461);
        v467 = v726;
        outlined init with copy of Date?(v466, v726, &_s8PaperKit5ColorVSgMd);
        v717 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v466, &_s8PaperKit5ColorVSgMd);
        v718 = v465[7];
        v462(v466, 1, 1, v461);
        outlined init with copy of Date?(v466, v467, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v466, &_s8PaperKit5ColorVSgMd);
        v726 = v465[8];
        *&v758 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v716 = v465[9];
        v468 = v737;
        swift_storeEnumTagMultiPayload();
        _s8PaperKit9ShapeTypeOWOcTm_0(v468, v727, type metadata accessor for ShapeType);
        v714 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        outlined destroy of ShapeType(v468, type metadata accessor for ShapeType);
        *&v758 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        CRRegister.init(wrappedValue:)();
        v469 = v465[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v727 = v469;
        CRAttributedString.init(_:)();
        v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v471 = v730;
        (*(*(v470 - 8) + 56))(v730, 1, 1, v470);
        outlined init with copy of Date?(v471, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v471, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v472 = v465[15];
        *&v758 = 0;
        v473 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v730 = v472;
        v729 = v473;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v474 = type metadata accessor for StrokeStyle(0);
        v475 = v733;
        (*(*(v474 - 8) + 56))(v733, 1, 1, v474);
        outlined init with copy of Date?(v475, v731, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v475, &_s8PaperKit11StrokeStyleOSgMd);
        v476 = type metadata accessor for Shadow();
        v477 = v736;
        (*(*(v476 - 8) + 56))(v736, 1, 1, v476);
        outlined init with copy of Date?(v477, v734, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v477, &_s8PaperKit6ShadowVSgMd);
        v759 = 0u;
        v760 = 0u;
        v758 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v758 = 0u;
        v759 = 0u;
        v478 = v738;
        CRRegister.init(_:)();
        (*(v740 + 40))(v464, v478, v739);
        _s8PaperKit9ShapeTypeOWOcTm_0(v649, v468, type metadata accessor for ShapeType);
        v479 = v741;
        CRRegister.init(_:)();
        v480 = v756;
        (*(v743 + 40))(v464 + v716, v479, v742);
        *&v758 = 0x4014000000000000;
        v481 = v744;
        CRRegister.init(_:)();
        (*(v745 + 40))(v464 + v726, v481, v751);
        outlined init with copy of Date?(v691, v466, &_s8PaperKit5ColorVSgMd);
        v482 = v746;
        CRRegister.init(_:)();
        v483 = *(v748 + 40);
        v484 = v747;
        v483(v464 + v718, v482, v747);
        outlined init with copy of Date?(v715, v466, &_s8PaperKit5ColorVSgMd);
        v485 = v712;
        CRRegister.init(_:)();
        v483(v464 + v721, v482, v484);
        v486 = v755;
        v487 = v670;
        outlined init with copy of Date?(v485, v670, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v480 + 48))(v487, 1, v486) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v487, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v618 = v651;
          (*(v480 + 32))(v651, v487, v486);
          (*(v480 + 40))(v464 + v727, v618, v486);
        }

        v576 = v749;
        v575 = v750;
        v619 = v723;
        v620 = v722;
        v621 = v724;
        *&v758 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v485, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v715, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v691, &_s8PaperKit5ColorVSgMd);
        outlined destroy of ShapeType(v649, type metadata accessor for ShapeType);
        (*(v619 + 40))(&v730[v464], v621, v620);
        v601 = v464;
        v602 = &v738;
      }

      else
      {
        v721 = v216;
        v648 = v249;
        swift_storeEnumTagMultiPayload();
        v318 = type metadata accessor for Color(0);
        v319 = *(v318 - 8);
        v320 = *(v319 + 56);
        v321 = v319 + 56;
        v320(v689, 1, 1, v318);
        v320(v253, 1, 1, v318);
        v713 = v321;
        v715 = v320;
        (*(v756 + 56))(v258, 1, 1, v755);
        type metadata accessor for CGRect(0);
        v719 = v322;
        v718 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
        v758 = 0u;
        v759 = 0u;
        v323 = v704;
        CRRegister.init(wrappedValue:)();
        v324 = v752;
        *&v758 = 0;
        v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v720 = v324[6];
        v325 = v753;
        v320(v753, 1, 1, v318);
        v326 = v726;
        outlined init with copy of Date?(v325, v726, &_s8PaperKit5ColorVSgMd);
        v716 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v325, &_s8PaperKit5ColorVSgMd);
        v717 = v324[7];
        (v715)(v325, 1, 1, v318);
        outlined init with copy of Date?(v325, v326, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v325, &_s8PaperKit5ColorVSgMd);
        v726 = v324[8];
        *&v758 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v715 = v324[9];
        v327 = v737;
        swift_storeEnumTagMultiPayload();
        _s8PaperKit9ShapeTypeOWOcTm_0(v327, v727, type metadata accessor for ShapeType);
        _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        outlined destroy of ShapeType(v327, type metadata accessor for ShapeType);
        *&v758 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        CRRegister.init(wrappedValue:)();
        v328 = v324[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v727 = v328;
        CRAttributedString.init(_:)();
        v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v330 = v730;
        (*(*(v329 - 8) + 56))(v730, 1, 1, v329);
        outlined init with copy of Date?(v330, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v330, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v331 = v324[15];
        *&v758 = 0;
        v332 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v730 = v331;
        v729 = v332;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v333 = type metadata accessor for StrokeStyle(0);
        v334 = v733;
        (*(*(v333 - 8) + 56))(v733, 1, 1, v333);
        outlined init with copy of Date?(v334, v731, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v334, &_s8PaperKit11StrokeStyleOSgMd);
        v335 = type metadata accessor for Shadow();
        v336 = v736;
        (*(*(v335 - 8) + 56))(v736, 1, 1, v335);
        outlined init with copy of Date?(v336, v734, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v336, &_s8PaperKit6ShadowVSgMd);
        v759 = 0u;
        v760 = 0u;
        v758 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v758 = 0u;
        v759 = 0u;
        v337 = v738;
        CRRegister.init(_:)();
        (*(v740 + 40))(v323, v337, v739);
        _s8PaperKit9ShapeTypeOWOcTm_0(v648, v327, type metadata accessor for ShapeType);
        v338 = v741;
        CRRegister.init(_:)();
        v339 = v756;
        (*(v743 + 40))(v323 + v715, v338, v742);
        *&v758 = 0x4014000000000000;
        v340 = v744;
        CRRegister.init(_:)();
        (*(v745 + 40))(v323 + v726, v340, v751);
        v341 = v753;
        outlined init with copy of Date?(v689, v753, &_s8PaperKit5ColorVSgMd);
        v342 = v746;
        CRRegister.init(_:)();
        v343 = *(v748 + 40);
        v344 = v747;
        v343(v323 + v717, v342, v747);
        outlined init with copy of Date?(v714, v341, &_s8PaperKit5ColorVSgMd);
        v345 = v711;
        CRRegister.init(_:)();
        v343(v323 + v720, v342, v344);
        v346 = v755;
        v347 = v669;
        outlined init with copy of Date?(v345, v669, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v339 + 48))(v347, 1, v346) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v347, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v614 = v650;
          (*(v339 + 32))(v650, v347, v346);
          (*(v339 + 40))(v323 + v727, v614, v346);
        }

        v576 = v749;
        v575 = v750;
        v615 = v723;
        v616 = v722;
        v617 = v724;
        *&v758 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v345, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v714, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v689, &_s8PaperKit5ColorVSgMd);
        outlined destroy of ShapeType(v648, type metadata accessor for ShapeType);
        (*(v615 + 40))(&v730[v323], v617, v616);
        v601 = v323;
        v602 = &v752;
      }
    }

    else
    {
      if (v217 == 2)
      {
        *v719 = 3;
        swift_storeEnumTagMultiPayload();
        v348 = type metadata accessor for Color(0);
        v349 = *(*(v348 - 8) + 56);
        v349(v692, 1, 1, v348);
        v349(v255, 1, 1, v348);
        (*(v756 + 56))(v260, 1, 1, v755);
        type metadata accessor for CGRect(0);
        v720 = v350;
        v718 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
        v758 = 0u;
        v759 = 0u;
        v351 = v707;
        CRRegister.init(wrappedValue:)();
        v352 = v752;
        *&v758 = 0;
        v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v721 = v352[6];
        v353 = v753;
        v349(v753, 1, 1, v348);
        v354 = v726;
        outlined init with copy of Date?(v353, v726, &_s8PaperKit5ColorVSgMd);
        v715 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v353, &_s8PaperKit5ColorVSgMd);
        v717 = v352[7];
        v349(v353, 1, 1, v348);
        outlined init with copy of Date?(v353, v354, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v353, &_s8PaperKit5ColorVSgMd);
        v726 = v352[8];
        *&v758 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v714 = v352[9];
        v355 = v737;
        swift_storeEnumTagMultiPayload();
        _s8PaperKit9ShapeTypeOWOcTm_0(v355, v727, type metadata accessor for ShapeType);
        v712 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        outlined destroy of ShapeType(v355, type metadata accessor for ShapeType);
        *&v758 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        CRRegister.init(wrappedValue:)();
        v356 = v352[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v727 = v356;
        CRAttributedString.init(_:)();
        v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v358 = v730;
        (*(*(v357 - 8) + 56))(v730, 1, 1, v357);
        outlined init with copy of Date?(v358, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v358, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v359 = v352[15];
        *&v758 = 0;
        v360 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v730 = v359;
        v729 = v360;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v361 = type metadata accessor for StrokeStyle(0);
        v362 = v733;
        (*(*(v361 - 8) + 56))(v733, 1, 1, v361);
        outlined init with copy of Date?(v362, v731, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v362, &_s8PaperKit11StrokeStyleOSgMd);
        v363 = type metadata accessor for Shadow();
        v364 = v736;
        (*(*(v363 - 8) + 56))(v736, 1, 1, v363);
        outlined init with copy of Date?(v364, v734, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v364, &_s8PaperKit6ShadowVSgMd);
        v759 = 0u;
        v760 = 0u;
        v758 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v758 = 0u;
        v759 = 0u;
        v365 = v738;
        CRRegister.init(_:)();
        (*(v740 + 40))(v351, v365, v739);
        _s8PaperKit9ShapeTypeOWOcTm_0(v719, v355, type metadata accessor for ShapeType);
        v366 = v741;
        CRRegister.init(_:)();
        v367 = v756;
        (*(v743 + 40))(v351 + v714, v366, v742);
        *&v758 = 0x4014000000000000;
        v368 = v744;
        CRRegister.init(_:)();
        (*(v745 + 40))(v351 + v726, v368, v751);
        outlined init with copy of Date?(v692, v353, &_s8PaperKit5ColorVSgMd);
        v369 = v746;
        CRRegister.init(_:)();
        v370 = *(v748 + 40);
        v371 = v747;
        v370(v351 + v717, v369, v747);
        outlined init with copy of Date?(v716, v353, &_s8PaperKit5ColorVSgMd);
        v372 = v713;
        CRRegister.init(_:)();
        v370(v351 + v721, v369, v371);
        v373 = v755;
        v374 = v671;
        outlined init with copy of Date?(v372, v671, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v367 + 48))(v374, 1, v373) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v374, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v574 = v652;
          (*(v367 + 32))(v652, v374, v373);
          (*(v367 + 40))(v351 + v727, v574, v373);
        }

        v576 = v749;
        v575 = v750;
        v577 = v723;
        v578 = v722;
        v579 = v724;
        *&v758 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v372, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v716, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v692, &_s8PaperKit5ColorVSgMd);
        outlined destroy of ShapeType(v719, type metadata accessor for ShapeType);
        (*(v577 + 40))(&v730[v351], v579, v578);
        v580 = v708;
        _s8PaperKit5ShapeVWObTm_1(v351, v708, type metadata accessor for Shape);
        *&v581 = 170.0;
        goto LABEL_64;
      }

      if (v217 != 3)
      {
        v719 = v211;
        if (one-time initialization token for defaultCalloutBubble != -1)
        {
          swift_once();
        }

        v433 = qword_1EC7C4110;
        *v252 = static UIConstants.defaultCalloutBubble;
        *(v252 + 16) = v433;
        swift_storeEnumTagMultiPayload();
        v434 = type metadata accessor for Color(0);
        v435 = *(*(v434 - 8) + 56);
        v435(v696, 1, 1, v434);
        v435(v257, 1, 1, v434);
        (*(v756 + 56))(v679, 1, 1, v755);
        type metadata accessor for CGRect(0);
        v716 = v436;
        v715 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
        v758 = 0u;
        v759 = 0u;
        v437 = v725;
        CRRegister.init(wrappedValue:)();
        v438 = v752;
        *&v758 = 0;
        v721 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v717 = v438[6];
        v439 = v753;
        v435(v753, 1, 1, v434);
        v440 = v726;
        outlined init with copy of Date?(v439, v726, &_s8PaperKit5ColorVSgMd);
        v713 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v439, &_s8PaperKit5ColorVSgMd);
        v714 = v438[7];
        v435(v439, 1, 1, v434);
        outlined init with copy of Date?(v439, v440, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v439, &_s8PaperKit5ColorVSgMd);
        v726 = v438[8];
        *&v758 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v712 = v438[9];
        v441 = v737;
        swift_storeEnumTagMultiPayload();
        _s8PaperKit9ShapeTypeOWOcTm_0(v441, v727, type metadata accessor for ShapeType);
        v711 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        outlined destroy of ShapeType(v441, type metadata accessor for ShapeType);
        *&v758 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        CRRegister.init(wrappedValue:)();
        v442 = v438[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v727 = v442;
        CRAttributedString.init(_:)();
        v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v444 = v730;
        (*(*(v443 - 8) + 56))(v730, 1, 1, v443);
        outlined init with copy of Date?(v444, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v444, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v445 = v438[15];
        *&v758 = 0;
        v446 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v730 = v445;
        v729 = v446;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v447 = type metadata accessor for StrokeStyle(0);
        v448 = v733;
        (*(*(v447 - 8) + 56))(v733, 1, 1, v447);
        outlined init with copy of Date?(v448, v731, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v448, &_s8PaperKit11StrokeStyleOSgMd);
        v449 = type metadata accessor for Shadow();
        v450 = v736;
        (*(*(v449 - 8) + 56))(v736, 1, 1, v449);
        outlined init with copy of Date?(v450, v734, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v450, &_s8PaperKit6ShadowVSgMd);
        v759 = 0u;
        v760 = 0u;
        v758 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v758 = 0u;
        v759 = 0u;
        v451 = v738;
        CRRegister.init(_:)();
        (*(v740 + 40))(v437, v451, v739);
        _s8PaperKit9ShapeTypeOWOcTm_0(v720, v441, type metadata accessor for ShapeType);
        v452 = v741;
        CRRegister.init(_:)();
        v453 = v756;
        (*(v743 + 40))(v437 + v712, v452, v742);
        *&v758 = 0x4014000000000000;
        v454 = v744;
        CRRegister.init(_:)();
        (*(v745 + 40))(v437 + v726, v454, v751);
        outlined init with copy of Date?(v696, v439, &_s8PaperKit5ColorVSgMd);
        v455 = v746;
        CRRegister.init(_:)();
        v456 = *(v748 + 40);
        v457 = v747;
        v456(v437 + v714, v455, v747);
        outlined init with copy of Date?(v718, v439, &_s8PaperKit5ColorVSgMd);
        v458 = v679;
        CRRegister.init(_:)();
        v456(v437 + v717, v455, v457);
        v459 = v755;
        v460 = v674;
        outlined init with copy of Date?(v458, v674, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v453 + 48))(v460, 1, v459) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v460, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v603 = v656;
          (*(v453 + 32))(v656, v460, v459);
          (*(v453 + 40))(v437 + v727, v603, v459);
        }

        v605 = v749;
        v604 = v750;
        v606 = v723;
        v607 = v722;
        v608 = v724;
        *&v758 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v458, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v718, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v696, &_s8PaperKit5ColorVSgMd);
        outlined destroy of ShapeType(v720, type metadata accessor for ShapeType);
        (*(v606 + 40))(&v730[v437], v608, v607);
        v580 = v719;
        _s8PaperKit5ShapeVWObTm_1(v437, v719, type metadata accessor for Shape);
        v609 = 165.0;
        v610 = 104.0;
        v611 = v580;
        v612 = v605;
        v613 = v604;
        goto LABEL_72;
      }

      if (one-time initialization token for defaultLine != -1)
      {
        swift_once();
      }

      v261 = *algn_1EC7C40D0;
      *v251 = static UIConstants.defaultLine;
      v251[1] = v261;
      v251[2] = xmmword_1EC7C40E0;
      swift_storeEnumTagMultiPayload();
      v262 = type metadata accessor for Color(0);
      v263 = *(v262 - 8);
      v264 = *(v263 + 56);
      v265 = v263 + 56;
      v264(v693, 1, 1, v262);
      v264(v256, 1, 1, v262);
      v714 = v265;
      v715 = v264;
      (*(v756 + 56))(v680, 1, 1, v755);
      type metadata accessor for CGRect(0);
      v720 = v266;
      v719 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      v758 = 0u;
      v759 = 0u;
      v267 = v709;
      CRRegister.init(wrappedValue:)();
      v268 = v752;
      *&v758 = 0;
      v713 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v725 = v268[6];
      v269 = v753;
      v264(v753, 1, 1, v262);
      v270 = v726;
      outlined init with copy of Date?(v269, v726, &_s8PaperKit5ColorVSgMd);
      v716 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v269, &_s8PaperKit5ColorVSgMd);
      v718 = v268[7];
      (v715)(v269, 1, 1, v262);
      outlined init with copy of Date?(v269, v270, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v269, &_s8PaperKit5ColorVSgMd);
      v726 = v268[8];
      *&v758 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v715 = v268[9];
      v271 = v737;
      swift_storeEnumTagMultiPayload();
      _s8PaperKit9ShapeTypeOWOcTm_0(v271, v727, type metadata accessor for ShapeType);
      v714 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      outlined destroy of ShapeType(v271, type metadata accessor for ShapeType);
      *&v758 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      BYTE8(v758) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      BYTE8(v758) = 0;
      CRRegister.init(wrappedValue:)();
      v272 = v268[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v727 = v272;
      CRAttributedString.init(_:)();
      v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v274 = v730;
      (*(*(v273 - 8) + 56))(v730, 1, 1, v273);
      outlined init with copy of Date?(v274, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v274, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v275 = v268[15];
      *&v758 = 0;
      v276 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v730 = v275;
      v729 = v276;
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v277 = type metadata accessor for StrokeStyle(0);
      v278 = v733;
      (*(*(v277 - 8) + 56))(v733, 1, 1, v277);
      outlined init with copy of Date?(v278, v731, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v278, &_s8PaperKit11StrokeStyleOSgMd);
      v279 = type metadata accessor for Shadow();
      v280 = v736;
      (*(*(v279 - 8) + 56))(v736, 1, 1, v279);
      outlined init with copy of Date?(v280, v734, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v280, &_s8PaperKit6ShadowVSgMd);
      v759 = 0u;
      v760 = 0u;
      v758 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v758 = 0u;
      v759 = 0u;
      v281 = v738;
      CRRegister.init(_:)();
      (*(v740 + 40))(v267, v281, v739);
      _s8PaperKit9ShapeTypeOWOcTm_0(v721, v271, type metadata accessor for ShapeType);
      v282 = v741;
      CRRegister.init(_:)();
      v283 = v756;
      (*(v743 + 40))(v267 + v715, v282, v742);
      *&v758 = 0x4014000000000000;
      v284 = v744;
      CRRegister.init(_:)();
      (*(v745 + 40))(v267 + v726, v284, v751);
      v285 = v753;
      outlined init with copy of Date?(v693, v753, &_s8PaperKit5ColorVSgMd);
      v286 = v746;
      CRRegister.init(_:)();
      v287 = *(v748 + 40);
      v288 = v747;
      v287(v267 + v718, v286, v747);
      outlined init with copy of Date?(v717, v285, &_s8PaperKit5ColorVSgMd);
      v289 = v680;
      CRRegister.init(_:)();
      v287(v267 + v725, v286, v288);
      v290 = v755;
      v291 = v672;
      outlined init with copy of Date?(v289, v672, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v283 + 48))(v291, 1, v290) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v291, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v597 = v655;
        (*(v283 + 32))(v655, v291, v290);
        (*(v283 + 40))(v267 + v727, v597, v290);
      }

      v576 = v749;
      v575 = v750;
      v598 = v723;
      v599 = v722;
      v600 = v724;
      *&v758 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v289, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v717, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v693, &_s8PaperKit5ColorVSgMd);
      outlined destroy of ShapeType(v721, type metadata accessor for ShapeType);
      (*(v598 + 40))(&v730[v267], v600, v599);
      v601 = v267;
      v602 = &v742;
    }

    v580 = *(v602 - 32);
    _s8PaperKit5ShapeVWObTm_1(v601, v580, type metadata accessor for Shape);
    *&v581 = 150.0;
LABEL_64:
    v609 = *&v581;
    v611 = v580;
    v610 = *&v581;
    v612 = v576;
    v613 = v575;
    goto LABEL_72;
  }

  if (*v725 <= 7u)
  {
    if (v217 == 5)
    {
      *v685 = 0x3FB999999999999ALL;
      swift_storeEnumTagMultiPayload();
      v375 = type metadata accessor for Color(0);
      v376 = *(*(v375 - 8) + 56);
      v376(v694, 1, 1, v375);
      v376(v695, 1, 1, v375);
      (*(v756 + 56))(v705, 1, 1, v755);
      type metadata accessor for CGRect(0);
      v720 = v377;
      v719 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      v758 = 0u;
      v759 = 0u;
      v378 = v666;
      CRRegister.init(wrappedValue:)();
      v379 = v752;
      *&v758 = 0;
      v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v721 = v379[6];
      v380 = v753;
      v376(v753, 1, 1, v375);
      v381 = v726;
      outlined init with copy of Date?(v380, v726, &_s8PaperKit5ColorVSgMd);
      v717 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v380, &_s8PaperKit5ColorVSgMd);
      v718 = v379[7];
      v376(v380, 1, 1, v375);
      outlined init with copy of Date?(v380, v381, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v380, &_s8PaperKit5ColorVSgMd);
      v726 = v379[8];
      *&v758 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v716 = v379[9];
      v382 = v737;
      swift_storeEnumTagMultiPayload();
      _s8PaperKit9ShapeTypeOWOcTm_0(v382, v727, type metadata accessor for ShapeType);
      v715 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      outlined destroy of ShapeType(v382, type metadata accessor for ShapeType);
      *&v758 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      BYTE8(v758) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      BYTE8(v758) = 0;
      CRRegister.init(wrappedValue:)();
      v383 = v379[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v727 = v383;
      CRAttributedString.init(_:)();
      v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v385 = v730;
      (*(*(v384 - 8) + 56))(v730, 1, 1, v384);
      outlined init with copy of Date?(v385, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v385, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v386 = v379[15];
      *&v758 = 0;
      v387 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v730 = v386;
      v729 = v387;
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v388 = type metadata accessor for StrokeStyle(0);
      v389 = v733;
      (*(*(v388 - 8) + 56))(v733, 1, 1, v388);
      outlined init with copy of Date?(v389, v731, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v389, &_s8PaperKit11StrokeStyleOSgMd);
      v390 = type metadata accessor for Shadow();
      v391 = v736;
      (*(*(v390 - 8) + 56))(v736, 1, 1, v390);
      outlined init with copy of Date?(v391, v734, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v391, &_s8PaperKit6ShadowVSgMd);
      v759 = 0u;
      v760 = 0u;
      v758 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v758 = 0u;
      v759 = 0u;
      v392 = v738;
      CRRegister.init(_:)();
      (*(v740 + 40))(v378, v392, v739);
      _s8PaperKit9ShapeTypeOWOcTm_0(v685, v382, type metadata accessor for ShapeType);
      v393 = v741;
      CRRegister.init(_:)();
      v394 = v756;
      (*(v743 + 40))(v378 + v716, v393, v742);
      *&v758 = 0x4014000000000000;
      v395 = v744;
      CRRegister.init(_:)();
      (*(v745 + 40))(v378 + v726, v395, v751);
      outlined init with copy of Date?(v694, v380, &_s8PaperKit5ColorVSgMd);
      v396 = v746;
      CRRegister.init(_:)();
      v397 = *(v748 + 40);
      v398 = v747;
      v397(v378 + v718, v396, v747);
      outlined init with copy of Date?(v695, v380, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v397(v378 + v721, v396, v398);
      v399 = v755;
      v400 = v673;
      outlined init with copy of Date?(v705, v673, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v394 + 48))(v400, 1, v399) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v400, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v582 = v653;
        (*(v394 + 32))(v653, v400, v399);
        (*(v394 + 40))(v378 + v727, v582, v399);
      }

      v584 = v749;
      v583 = v750;
      v585 = v723;
      v586 = v722;
      v587 = v724;
      *&v758 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v705, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v695, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v694, &_s8PaperKit5ColorVSgMd);
      outlined destroy of ShapeType(v685, type metadata accessor for ShapeType);
      (*(v585 + 40))(&v730[v378], v587, v586);
      v580 = v667;
      _s8PaperKit5ShapeVWObTm_1(v378, v667, type metadata accessor for Shape);
      *&v588 = 150.0;
    }

    else
    {
      if (v217 != 6)
      {
        v488 = v209;
        v721 = v207;
        if (one-time initialization token for defaultStar != -1)
        {
          swift_once();
        }

        v489 = qword_1EC7C40F8;
        v490 = v688;
        *v688 = static UIConstants.defaultStar;
        v490[1] = v489;
        swift_storeEnumTagMultiPayload();
        v491 = type metadata accessor for Color(0);
        v492 = *(*(v491 - 8) + 56);
        v492(v699, 1, 1, v491);
        v492(v700, 1, 1, v491);
        (*(v756 + 56))(v707, 1, 1, v755);
        type metadata accessor for CGRect(0);
        v719 = v493;
        v718 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
        v758 = 0u;
        v759 = 0u;
        CRRegister.init(wrappedValue:)();
        v494 = v752;
        *&v758 = 0;
        v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v720 = v494[6];
        v495 = v753;
        v492(v753, 1, 1, v491);
        v496 = v726;
        outlined init with copy of Date?(v495, v726, &_s8PaperKit5ColorVSgMd);
        v716 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v495, &_s8PaperKit5ColorVSgMd);
        v717 = v494[7];
        v492(v495, 1, 1, v491);
        outlined init with copy of Date?(v495, v496, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v495, &_s8PaperKit5ColorVSgMd);
        v726 = v494[8];
        *&v758 = 0x4014000000000000;
        CRRegister.init(wrappedValue:)();
        v715 = v494[9];
        v497 = v737;
        swift_storeEnumTagMultiPayload();
        _s8PaperKit9ShapeTypeOWOcTm_0(v497, v727, type metadata accessor for ShapeType);
        v714 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        outlined destroy of ShapeType(v497, type metadata accessor for ShapeType);
        *&v758 = 0x3FF0000000000000;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        BYTE8(v758) = 0;
        CRRegister.init(wrappedValue:)();
        v498 = v494[13];
        lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        v727 = v498;
        CRAttributedString.init(_:)();
        v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v500 = v730;
        (*(*(v499 - 8) + 56))(v730, 1, 1, v499);
        outlined init with copy of Date?(v500, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v500, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v501 = v494[15];
        *&v758 = 0;
        v502 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v730 = v501;
        v729 = v502;
        CRRegister.init(wrappedValue:)();
        *&v758 = 0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v503 = type metadata accessor for StrokeStyle(0);
        v504 = v733;
        (*(*(v503 - 8) + 56))(v733, 1, 1, v503);
        outlined init with copy of Date?(v504, v731, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v504, &_s8PaperKit11StrokeStyleOSgMd);
        v505 = type metadata accessor for Shadow();
        v506 = v736;
        (*(*(v505 - 8) + 56))(v736, 1, 1, v505);
        outlined init with copy of Date?(v506, v734, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v506, &_s8PaperKit6ShadowVSgMd);
        v759 = 0u;
        v760 = 0u;
        v758 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v758 = 0u;
        v759 = 0u;
        v507 = v738;
        CRRegister.init(_:)();
        (*(v740 + 40))(v488, v507, v739);
        _s8PaperKit9ShapeTypeOWOcTm_0(v688, v497, type metadata accessor for ShapeType);
        v508 = v741;
        CRRegister.init(_:)();
        v509 = v756;
        (*(v743 + 40))(v488 + v715, v508, v742);
        *&v758 = 0x4014000000000000;
        v510 = v744;
        CRRegister.init(_:)();
        (*(v745 + 40))(v488 + v726, v510, v751);
        outlined init with copy of Date?(v699, v495, &_s8PaperKit5ColorVSgMd);
        v511 = v746;
        CRRegister.init(_:)();
        v512 = *(v748 + 40);
        v513 = v747;
        v512(v488 + v717, v511, v747);
        outlined init with copy of Date?(v700, v495, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(_:)();
        v512(v488 + v720, v511, v513);
        v514 = v755;
        v515 = v676;
        outlined init with copy of Date?(v707, v676, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*(v509 + 48))(v515, 1, v514) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v515, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v629 = v658;
          (*(v509 + 32))(v658, v515, v514);
          (*(v509 + 40))(v488 + v727, v629, v514);
        }

        v631 = v749;
        v630 = v750;
        v632 = v723;
        v633 = v722;
        v634 = v724;
        *&v758 = 0;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v707, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v700, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v699, &_s8PaperKit5ColorVSgMd);
        outlined destroy of ShapeType(v688, type metadata accessor for ShapeType);
        (*(v632 + 40))(&v730[v488], v634, v633);
        v580 = v721;
        _s8PaperKit5ShapeVWObTm_1(v488, v721, type metadata accessor for Shape);
        v609 = 180.0;
        v611 = v580;
        v610 = 180.0;
        v612 = v631;
        v613 = v630;
        goto LABEL_72;
      }

      v721 = v210;
      *v686 = 6;
      swift_storeEnumTagMultiPayload();
      v218 = type metadata accessor for Color(0);
      v219 = *(v218 - 8);
      v220 = *(v219 + 56);
      v221 = v219 + 56;
      v220(v697, 1, 1, v218);
      v220(v698, 1, 1, v218);
      v714 = v221;
      v222 = v220;
      v715 = v220;
      (*(v756 + 56))(v706, 1, 1, v755);
      type metadata accessor for CGRect(0);
      v719 = v223;
      v718 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      v758 = 0u;
      v759 = 0u;
      v224 = v668;
      CRRegister.init(wrappedValue:)();
      v225 = v752;
      *&v758 = 0;
      v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v720 = v225[6];
      v226 = v753;
      v222(v753, 1, 1, v218);
      v227 = v726;
      outlined init with copy of Date?(v226, v726, &_s8PaperKit5ColorVSgMd);
      v716 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v226, &_s8PaperKit5ColorVSgMd);
      v717 = v225[7];
      (v715)(v226, 1, 1, v218);
      outlined init with copy of Date?(v226, v227, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v226, &_s8PaperKit5ColorVSgMd);
      v726 = v225[8];
      *&v758 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v715 = v225[9];
      v228 = v737;
      swift_storeEnumTagMultiPayload();
      _s8PaperKit9ShapeTypeOWOcTm_0(v228, v727, type metadata accessor for ShapeType);
      _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      outlined destroy of ShapeType(v228, type metadata accessor for ShapeType);
      *&v758 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      BYTE8(v758) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      BYTE8(v758) = 0;
      CRRegister.init(wrappedValue:)();
      v229 = v225[13];
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v727 = v229;
      CRAttributedString.init(_:)();
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v231 = v730;
      (*(*(v230 - 8) + 56))(v730, 1, 1, v230);
      outlined init with copy of Date?(v231, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v231, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v232 = v225[15];
      *&v758 = 0;
      v233 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v730 = v232;
      v729 = v233;
      CRRegister.init(wrappedValue:)();
      *&v758 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v234 = type metadata accessor for StrokeStyle(0);
      v235 = v733;
      (*(*(v234 - 8) + 56))(v733, 1, 1, v234);
      outlined init with copy of Date?(v235, v731, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v235, &_s8PaperKit11StrokeStyleOSgMd);
      v236 = type metadata accessor for Shadow();
      v237 = v736;
      (*(*(v236 - 8) + 56))(v736, 1, 1, v236);
      outlined init with copy of Date?(v237, v734, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v237, &_s8PaperKit6ShadowVSgMd);
      v759 = 0u;
      v760 = 0u;
      v758 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v758 = 0u;
      v759 = 0u;
      v238 = v738;
      CRRegister.init(_:)();
      (*(v740 + 40))(v224, v238, v739);
      _s8PaperKit9ShapeTypeOWOcTm_0(v686, v228, type metadata accessor for ShapeType);
      v239 = v741;
      CRRegister.init(_:)();
      (*(v743 + 40))(v224 + v715, v239, v742);
      *&v758 = 0x4014000000000000;
      v240 = v744;
      CRRegister.init(_:)();
      (*(v745 + 40))(v224 + v726, v240, v751);
      v241 = v753;
      outlined init with copy of Date?(v697, v753, &_s8PaperKit5ColorVSgMd);
      v242 = v746;
      CRRegister.init(_:)();
      v243 = *(v748 + 40);
      v244 = v747;
      v243(v224 + v717, v242, v747);
      outlined init with copy of Date?(v698, v241, &_s8PaperKit5ColorVSgMd);
      CRRegister.init(_:)();
      v245 = v244;
      v246 = v755;
      v243(v224 + v720, v242, v245);
      v247 = v756;
      v248 = v675;
      outlined init with copy of Date?(v706, v675, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v247 + 48))(v248, 1, v246) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v248, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v622 = v654;
        (*(v247 + 32))(v654, v248, v246);
        (*(v247 + 40))(v224 + v727, v622, v246);
      }

      v584 = v749;
      v583 = v750;
      v623 = v723;
      v624 = v722;
      v625 = v724;
      *&v758 = 0;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v706, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v698, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v697, &_s8PaperKit5ColorVSgMd);
      outlined destroy of ShapeType(v686, type metadata accessor for ShapeType);
      (*(v623 + 40))(&v730[v224], v625, v624);
      v626 = v224;
      v580 = v721;
      _s8PaperKit5ShapeVWObTm_1(v626, v721, type metadata accessor for Shape);
      *&v588 = 170.0;
    }

    v609 = *&v588;
    v611 = v580;
    v610 = *&v588;
    v612 = v584;
    v613 = v583;
LABEL_72:
    NewCanvasElementDelegate.addShape(_:size:)(v611, v612, v613, v609, v610);
    v596 = v580;
LABEL_73:
    outlined destroy of ShapeType(v596, type metadata accessor for Shape);
    return;
  }

  if (v217 == 8)
  {
    v401 = v206;
    v721 = v204;
    if (one-time initialization token for defaultLine != -1)
    {
      swift_once();
    }

    v402 = *algn_1EC7C40D0;
    v403 = v690;
    *v690 = static UIConstants.defaultLine;
    v403[1] = v402;
    v403[2] = xmmword_1EC7C40E0;
    swift_storeEnumTagMultiPayload();
    v404 = type metadata accessor for Color(0);
    v405 = *(v404 - 8);
    v406 = *(v405 + 56);
    v407 = v405 + 56;
    v406(v703, 1, 1, v404);
    v406(v704, 1, 1, v404);
    v714 = v407;
    v715 = v406;
    (*(v756 + 56))(v709, 1, 1, v755);
    type metadata accessor for CGRect(0);
    v719 = v408;
    v718 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v758 = 0u;
    v759 = 0u;
    CRRegister.init(wrappedValue:)();
    v409 = v752;
    *&v758 = 0;
    v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v720 = v409[6];
    v410 = v753;
    v406(v753, 1, 1, v404);
    v411 = v726;
    outlined init with copy of Date?(v410, v726, &_s8PaperKit5ColorVSgMd);
    v716 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v410, &_s8PaperKit5ColorVSgMd);
    v717 = v409[7];
    (v715)(v410, 1, 1, v404);
    outlined init with copy of Date?(v410, v411, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v410, &_s8PaperKit5ColorVSgMd);
    v726 = v409[8];
    *&v758 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v715 = v409[9];
    v412 = v737;
    swift_storeEnumTagMultiPayload();
    _s8PaperKit9ShapeTypeOWOcTm_0(v412, v727, type metadata accessor for ShapeType);
    _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    outlined destroy of ShapeType(v412, type metadata accessor for ShapeType);
    *&v758 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v758 = 0;
    BYTE8(v758) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v758 = 0;
    BYTE8(v758) = 0;
    CRRegister.init(wrappedValue:)();
    v413 = v409[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v727 = v413;
    CRAttributedString.init(_:)();
    v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v415 = v730;
    (*(*(v414 - 8) + 56))(v730, 1, 1, v414);
    outlined init with copy of Date?(v415, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v415, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v416 = v409[15];
    *&v758 = 0;
    v417 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v730 = v416;
    v729 = v417;
    CRRegister.init(wrappedValue:)();
    *&v758 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v418 = type metadata accessor for StrokeStyle(0);
    v419 = v733;
    (*(*(v418 - 8) + 56))(v733, 1, 1, v418);
    outlined init with copy of Date?(v419, v731, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v419, &_s8PaperKit11StrokeStyleOSgMd);
    v420 = type metadata accessor for Shadow();
    v421 = v736;
    (*(*(v420 - 8) + 56))(v736, 1, 1, v420);
    outlined init with copy of Date?(v421, v734, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v421, &_s8PaperKit6ShadowVSgMd);
    v759 = 0u;
    v760 = 0u;
    v758 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v758 = 0u;
    v759 = 0u;
    v422 = v738;
    CRRegister.init(_:)();
    (*(v740 + 40))(v401, v422, v739);
    _s8PaperKit9ShapeTypeOWOcTm_0(v690, v412, type metadata accessor for ShapeType);
    v423 = v741;
    CRRegister.init(_:)();
    (*(v743 + 40))(v401 + v715, v423, v742);
    *&v758 = 0x4014000000000000;
    v424 = v744;
    CRRegister.init(_:)();
    (*(v745 + 40))(v401 + v726, v424, v751);
    v425 = v753;
    outlined init with copy of Date?(v703, v753, &_s8PaperKit5ColorVSgMd);
    v426 = v746;
    CRRegister.init(_:)();
    v427 = *(v748 + 40);
    v428 = v747;
    v427(v401 + v717, v426, v747);
    outlined init with copy of Date?(v704, v425, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v429 = v426;
    v430 = v756;
    v427(v401 + v720, v429, v428);
    v431 = v755;
    v432 = v678;
    outlined init with copy of Date?(v709, v678, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v430 + 48))(v432, 1, v431) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v432, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v589 = v659;
      (*(v430 + 32))(v659, v432, v431);
      (*(v430 + 40))(v401 + v727, v589, v431);
    }

    v591 = v749;
    v590 = v750;
    v592 = v723;
    v593 = v722;
    *&v758 = 0;
    v594 = v724;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v709, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v704, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v703, &_s8PaperKit5ColorVSgMd);
    outlined destroy of ShapeType(v690, type metadata accessor for ShapeType);
    (*(v592 + 40))(&v730[v401], v594, v593);
    v595 = v721;
    _s8PaperKit5ShapeVWObTm_1(v401, v721, type metadata accessor for Shape);
    *&v758 = 1;
    BYTE8(v758) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    CRRegister.wrappedValue.setter();
    NewCanvasElementDelegate.addLine(_:size:)(v595, v591, v590, 150.0, 150.0);
    v596 = v595;
    goto LABEL_73;
  }

  if (v217 == 9)
  {
    v721 = v205;
    *v687 = xmmword_1D405A650;
    v292 = v208;
    swift_storeEnumTagMultiPayload();
    v293 = type metadata accessor for Color(0);
    v294 = *(*(v293 - 8) + 56);
    v294(v701, 1, 1, v293);
    v294(v702, 1, 1, v293);
    (*(v756 + 56))(v708, 1, 1, v755);
    type metadata accessor for CGRect(0);
    v719 = v295;
    v718 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v758 = 0u;
    v759 = 0u;
    CRRegister.init(wrappedValue:)();
    v296 = v752;
    *&v758 = 0;
    v725 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v720 = v296[6];
    v297 = v753;
    v294(v753, 1, 1, v293);
    v298 = v726;
    outlined init with copy of Date?(v297, v726, &_s8PaperKit5ColorVSgMd);
    v716 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v297, &_s8PaperKit5ColorVSgMd);
    v717 = v296[7];
    v294(v297, 1, 1, v293);
    outlined init with copy of Date?(v297, v298, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v297, &_s8PaperKit5ColorVSgMd);
    v726 = v296[8];
    *&v758 = 0x4014000000000000;
    CRRegister.init(wrappedValue:)();
    v715 = v296[9];
    v299 = v737;
    swift_storeEnumTagMultiPayload();
    _s8PaperKit9ShapeTypeOWOcTm_0(v299, v727, type metadata accessor for ShapeType);
    v714 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    outlined destroy of ShapeType(v299, type metadata accessor for ShapeType);
    *&v758 = 0x3FF0000000000000;
    CRRegister.init(wrappedValue:)();
    *&v758 = 0;
    BYTE8(v758) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    *&v758 = 0;
    BYTE8(v758) = 0;
    CRRegister.init(wrappedValue:)();
    v300 = v296[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v727 = v300;
    CRAttributedString.init(_:)();
    v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v302 = v730;
    (*(*(v301 - 8) + 56))(v730, 1, 1, v301);
    outlined init with copy of Date?(v302, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v302, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v303 = v296[15];
    *&v758 = 0;
    v304 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v730 = v303;
    v729 = v304;
    CRRegister.init(wrappedValue:)();
    *&v758 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v305 = type metadata accessor for StrokeStyle(0);
    v306 = v733;
    (*(*(v305 - 8) + 56))(v733, 1, 1, v305);
    outlined init with copy of Date?(v306, v731, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v306, &_s8PaperKit11StrokeStyleOSgMd);
    v307 = type metadata accessor for Shadow();
    v308 = v736;
    (*(*(v307 - 8) + 56))(v736, 1, 1, v307);
    outlined init with copy of Date?(v308, v734, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v308, &_s8PaperKit6ShadowVSgMd);
    v759 = 0u;
    v760 = 0u;
    v758 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v758 = 0u;
    v759 = 0u;
    v309 = v738;
    CRRegister.init(_:)();
    (*(v740 + 40))(v292, v309, v739);
    _s8PaperKit9ShapeTypeOWOcTm_0(v687, v299, type metadata accessor for ShapeType);
    v310 = v741;
    CRRegister.init(_:)();
    v311 = v756;
    (*(v743 + 40))(v292 + v715, v310, v742);
    *&v758 = 0x4014000000000000;
    v312 = v744;
    CRRegister.init(_:)();
    (*(v745 + 40))(v292 + v726, v312, v751);
    outlined init with copy of Date?(v701, v297, &_s8PaperKit5ColorVSgMd);
    v313 = v746;
    CRRegister.init(_:)();
    v314 = *(v748 + 40);
    v315 = v747;
    v314(v292 + v717, v313, v747);
    outlined init with copy of Date?(v702, v297, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v314(v292 + v720, v313, v315);
    v316 = v755;
    v317 = v677;
    outlined init with copy of Date?(v708, v677, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v311 + 48))(v317, 1, v316) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v317, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v627 = v657;
      (*(v311 + 32))(v657, v317, v316);
      (*(v311 + 40))(v292 + v727, v627, v316);
    }

    *&v758 = 0;
    v628 = v724;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v708, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v702, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v701, &_s8PaperKit5ColorVSgMd);
    outlined destroy of ShapeType(v687, type metadata accessor for ShapeType);
    (*(v723 + 40))(&v730[v292], v628, v722);
    v580 = v721;
    _s8PaperKit5ShapeVWObTm_1(v292, v721, type metadata accessor for Shape);
    v609 = 150.0;
    v611 = v580;
    v610 = 150.0;
    v612 = v749;
    v613 = v750;
    goto LABEL_72;
  }

  v516 = v214;
  v720 = v213;
  v725 = v212;
  v518 = v749;
  v517 = v750;
  v519 = (*(v750 + 32))(v749, v750, 1.0, 1.0);
  v521 = v520;
  v523 = v522;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v761._object = 0x80000001D4083BC0;
  v524.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v524.value._object = 0xEB00000000656C62;
  v525._countAndFlagsBits = 1954047316;
  v525._object = 0xE400000000000000;
  v526._countAndFlagsBits = 0;
  v526._object = 0xE000000000000000;
  v761._countAndFlagsBits = 0xD000000000000024;
  v527 = NSLocalizedString(_:tableName:bundle:value:comment:)(v525, v524, paperKitBundle, v526, v761);
  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  (*(v517 + 40))(v518, v517);
  v528 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v529 = MEMORY[0x1DA6CCED0](v527._countAndFlagsBits, v527._object);

  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v528 initWithString:v529 attributes:isa];

  MEMORY[0x1EEE9AC00](v531);
  v532 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v533 = type metadata accessor for Color(0);
  v534 = *(v533 + 20);
  v535 = type metadata accessor for UnknownValueProperties();
  (*(*(v535 - 8) + 56))(v710 + v534, 1, 1, v535);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v536 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!v536)
  {
    __break(1u);
    goto LABEL_82;
  }

  v537 = v536;
  v719 = v532;
  CGColorRef.calculateMinimumHeadroom.getter();
  v538 = CGColorCreateWithContentHeadroom();
  if (!v538)
  {
LABEL_82:
    __break(1u);
    return;
  }

  v539 = v538;

  *v710 = v539;
  v540 = *(v533 - 8);
  v541 = *(v540 + 56);
  v542 = v540 + 56;
  v541();
  (v541)(v681, 1, 1, v533);
  v713 = v542;
  v712 = v533;
  v544 = v755;
  v543 = v756;
  v545 = v682;
  (*(v756 + 16))(v682, v684, v755);
  (*(v543 + 56))(v545, 0, 1, v544);
  type metadata accessor for CGRect(0);
  v717 = v546;
  v716 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v758 = 0u;
  v759 = 0u;
  CRRegister.init(wrappedValue:)();
  v547 = v752;
  *&v758 = 0;
  v721 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v718 = v547[6];
  v548 = v753;
  (v541)(v753, 1, 1, v533);
  v549 = v726;
  outlined init with copy of Date?(v548, v726, &_s8PaperKit5ColorVSgMd);
  v714 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v548, &_s8PaperKit5ColorVSgMd);
  v715 = v547[7];
  (v541)(v548, 1, 1, v712);
  outlined init with copy of Date?(v548, v549, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v548, &_s8PaperKit5ColorVSgMd);
  v726 = v547[8];
  *&v758 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v713 = v547[9];
  v550 = v737;
  swift_storeEnumTagMultiPayload();
  _s8PaperKit9ShapeTypeOWOcTm_0(v550, v727, type metadata accessor for ShapeType);
  v712 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ShapeType(v550, type metadata accessor for ShapeType);
  *&v758 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v758 = 0;
  BYTE8(v758) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v758 = 0;
  BYTE8(v758) = 0;
  CRRegister.init(wrappedValue:)();
  v727 = v547[13];
  CRAttributedString.init(_:)();
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v552 = v730;
  (*(*(v551 - 8) + 56))(v730, 1, 1, v551);
  outlined init with copy of Date?(v552, v728, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v552, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v553 = v547[15];
  *&v758 = 0;
  v554 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v730 = v553;
  v729 = v554;
  CRRegister.init(wrappedValue:)();
  *&v758 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v555 = type metadata accessor for StrokeStyle(0);
  v556 = v733;
  (*(*(v555 - 8) + 56))(v733, 1, 1, v555);
  outlined init with copy of Date?(v556, v731, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v556, &_s8PaperKit11StrokeStyleOSgMd);
  v557 = type metadata accessor for Shadow();
  v558 = v736;
  (*(*(v557 - 8) + 56))(v736, 1, 1, v557);
  outlined init with copy of Date?(v558, v734, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v558, &_s8PaperKit6ShadowVSgMd);
  v759 = 0u;
  v760 = 0u;
  v758 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v758 = v519 + -0.5;
  *(&v758 + 1) = v521 + -0.5;
  __asm { FMOV            V0.2D, #1.0 }

  v759 = _Q0;
  v564 = v738;
  CRRegister.init(_:)();
  (*(v740 + 40))(v516, v564, v739);
  _s8PaperKit9ShapeTypeOWOcTm_0(v683, v550, type metadata accessor for ShapeType);
  v565 = v741;
  CRRegister.init(_:)();
  (*(v743 + 40))(v516 + v713, v565, v742);
  *&v758 = 0x4014000000000000;
  v566 = v744;
  CRRegister.init(_:)();
  (*(v745 + 40))(v516 + v726, v566, v751);
  v567 = v753;
  outlined init with copy of Date?(v710, v753, &_s8PaperKit5ColorVSgMd);
  v568 = v746;
  CRRegister.init(_:)();
  v569 = *(v748 + 40);
  v570 = v747;
  v569(v516 + v715, v568, v747);
  v571 = v756;
  outlined init with copy of Date?(v681, v567, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v569(v516 + v718, v568, v570);
  v572 = v755;
  v573 = v661;
  outlined init with copy of Date?(v682, v661, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v571 + 48))(v573, 1, v572) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v573, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v635 = v660;
    (*(v571 + 32))(v660, v573, v572);
    (*(v571 + 40))(v516 + v727, v635, v572);
  }

  v636 = v665;
  *&v758 = 3;
  v637 = v724;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v682, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v681, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v710, &_s8PaperKit5ColorVSgMd);
  outlined destroy of ShapeType(v683, type metadata accessor for ShapeType);
  (*(v723 + 40))(&v730[v516], v637, v722);
  v638 = v725;
  _s8PaperKit5ShapeVWObTm_1(v516, v725, type metadata accessor for Shape);
  *&v758 = 0;
  CRRegister.wrappedValue.setter();
  CRRegister.value.getter();
  if (vabdd_f64(*&v758, v523) > 0.01)
  {
    *&v758 = v523;
    CRRegister.value.setter();
  }

  _s8PaperKit9ShapeTypeOWOcTm_0(v638, v720, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  v639 = _s8PaperKit9SignatureVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v640 = v752;
  Capsule.init(_:id:)();
  v641 = v750;
  v642 = v639;
  v643 = v749;
  (*(v750 + 16))(v636, v640, v642, &protocol witness table for Shape, v749, v750);
  v644 = (*(v641 + 48))(v643, v641);
  if (v644)
  {
    v645 = v644;
    v646 = (*((*MEMORY[0x1E69E7D40] & *v644) + 0x318))();

    if (v646)
    {
      *(*&v646[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics] + 17) = 12;

      FormTextFieldAnalytics.recordEvent()();
    }
  }

  (*(v663 + 8))(v636, v664);
  outlined destroy of ShapeType(v725, type metadata accessor for Shape);
  (*(v756 + 8))(v684, v755);
}
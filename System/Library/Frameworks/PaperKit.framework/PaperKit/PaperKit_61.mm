uint64_t closure #1 in closure #1 in Canvas.addFlags(_:strokeFlags:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.subscript.getter();
  CRRegister.value.getter();
  (*(v11 + 8))(v13, v10);
  _s8PaperKit13CRAssetOrDataOWObTm_0(v9, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v6, type metadata accessor for TaggedStroke);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v19 = *(v18 - 8);
    (*(v19 + 32))(v16, v6, v18);
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  }

  v23 = Ref.subscript.modify();
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v24 = CRRegister.wrappedValue.modify();
  *v25 &= a3;
  v24(v26, 0);
  v23(v27, 0);
  return (*(v21 + 8))(v16, v20);
}

uint64_t closure #1 in Canvas.hide(weakStrokes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = (&v26 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = *(v10 + 16);
  v29 = a1;
  v27 = v17;
  (v17)(v12, a1, v9, v14);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  WeakRef.init<A>(_:)();
  type metadata accessor for PKDrawingStruct(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  WeakRef.subscript.getter();
  (*(v10 + 8))(v16, v9);
  v19 = 1;
  v20 = (*(*(v18 - 8) + 48))(v8, 1, v18);
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  v21 = v20 == 1;
  v22 = v32;
  if (!v21)
  {
    v27(v12, v29, v9);
    v23 = v28;
    Ref.init<A>(_:)();
    _s8PaperKit21PKStrokeCoherenceBaseC10initStroke13strokeNodeRef2in06PencilB00C0V0D00J0VyAJ10CRRegisterVyAA06TaggedG0OGG_AJ7CapsuleVyxGtAJ4CRDTRzlFZAA15PKDrawingStructV_Tt2g5(v23, v33, v22);
    (*(v30 + 8))(v23, v31);
    v19 = 0;
  }

  v24 = type metadata accessor for PKStroke();
  return (*(*(v24 - 8) + 56))(v22, v19, 1, v24);
}

uint64_t closure #2 in Canvas.hide(strokes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  type metadata accessor for MainActor();
  v6[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[22] = v8;
  v6[23] = v7;

  return MEMORY[0x1EEE6DFA0](closure #2 in Canvas.hide(strokes:), v8, v7);
}

uint64_t closure #2 in Canvas.hide(strokes:)()
{
  v1 = v0[18];
  type metadata accessor for PKStroke();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[24] = isa;
  PKDrawing._bridgeToObjectiveC()(v3);
  v5 = v4;
  v0[25] = v4;
  v0[2] = v0;
  v0[3] = closure #2 in Canvas.hide(strokes:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_297;
  v0[14] = v6;
  [v1 _setAdditionalStrokes_inDrawing_completion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](closure #2 in Canvas.hide(strokes:), v2, v1);
}

{
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

void closure #2 in Canvas.imageOf(canvasElementViews:in:)(CGFloat *a1@<X0>, id *a2@<X1>, void *a3@<X2>, CGRect *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a2;
  [*a2 bounds];
  [a3 convertRect:v10 fromCoordinateSpace:?];
  v16.origin.x = v11;
  v16.origin.y = v12;
  v16.size.width = v13;
  v16.size.height = v14;
  v15.origin.x = v6;
  v15.origin.y = v7;
  v15.size.width = v8;
  v15.size.height = v9;
  *a4 = CGRectUnion(v15, v16);
}

void closure #3 in Canvas.imageOf(canvasElementViews:in:)(id a1, id *a2, CGRect *a3, unint64_t a4, void *a5)
{
  if (*a2)
  {
    v9 = [a1 CGContext];
    CGContextSetGrayFillColor(v9, 1.0, 1.0);

    v10 = [a1 CGContext];
    v11 = [a1 CGContext];
    ClipBoundingBox = CGContextGetClipBoundingBox(v11);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;

    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    CGContextFillRect(v10, v73);
  }

  v16 = [a1 CGContext];
  v17 = -CGRectGetMinX(*a3);
  MinY = CGRectGetMinY(*a3);
  CGContextTranslateCTM(v16, v17, -MinY);

  if (a4 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
    return;
  }

  v20 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA6CE0C0](v20, a4);
    }

    else
    {
      v21 = *(a4 + 8 * v20 + 32);
    }

    v22 = v21;
    ++v20;
    v23 = [a1 CGContext];
    CGContextSaveGState(v23);

    [v22 bounds];
    [a5 convertRect:v22 fromCoordinateSpace:?];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [a1 CGContext];
    v74.origin.x = v25;
    v74.origin.y = v27;
    v74.size.width = v29;
    v74.size.height = v31;
    MinX = CGRectGetMinX(v74);
    v75.origin.x = v25;
    v75.origin.y = v27;
    v75.size.width = v29;
    v75.size.height = v31;
    v34 = CGRectGetMinY(v75);
    CGContextTranslateCTM(v32, MinX, v34);

    v35 = [v22 layer];
    v36 = [a1 CGContext];
    [v35 renderInContext_];

    v37 = [a1 CGContext];
    CGContextRestoreGState(v37);
  }

  while (v19 != v20);
LABEL_12:
  if (*a2)
  {
    v38 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x468);
    v67 = *a2;
    v39 = v38();
    if (v39 && (v40 = v39, v41 = [v39 selectionImage], v40, v41))
    {
      [v67 bounds];
      [a5 convertRect:v67 fromCoordinateSpace:?];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = [a1 CGContext];
      v76.origin.x = v43;
      v76.origin.y = v45;
      v76.size.width = v47;
      v76.size.height = v49;
      v51 = CGRectGetMinY(v76);
      v77.origin.x = v43;
      v77.origin.y = v45;
      v77.size.width = v47;
      v77.size.height = v49;
      t1.a = 1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = 1.0;
      t1.tx = 0.0;
      t1.ty = 0.0;
      t2.b = 0.0;
      t2.c = 0.0;
      t2.a = 1.0;
      *&t2.d = xmmword_1D405A660;
      t2.ty = v51 + CGRectGetMaxY(v77);
      CGAffineTransformConcat(&v68, &t1, &t2);
      t1 = v68;
      CGContextConcatCTM(v50, &t1);

      v52 = [v41 image];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 CGImage];

        if (v54)
        {
          v55 = [a1 CGContext];
          v78.origin.x = v43;
          v78.origin.y = v45;
          v78.size.width = v47;
          v78.size.height = v49;
          CGContextRef.draw(_:in:byTiling:)(v54, v78, 0);
        }
      }

      v56 = [v41 mulImage];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 CGImage];

        if (v58)
        {
          v59 = [a1 CGContext];
          CGContextSetBlendMode(v59, kCGBlendModeMultiply);

          v60 = [a1 CGContext];
          v79.origin.x = v43;
          v79.origin.y = v45;
          v79.size.width = v47;
          v79.size.height = v49;
          CGContextRef.draw(_:in:byTiling:)(v58, v79, 0);
        }
      }

      v61 = [v41 addImage];
      if (v61 && (v62 = v61, v63 = [v61 CGImage], v62, v63))
      {
        v64 = [a1 CGContext];
        CGContextSetBlendMode(v64, kCGBlendModePlusLighter);

        v65 = [a1 CGContext];
        v80.origin.x = v43;
        v80.origin.y = v45;
        v80.size.width = v47;
        v80.size.height = v49;
        CGContextRef.draw(_:in:byTiling:)(v63, v80, 0);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t closure #2 in Canvas.dropInteraction(_:performDrop:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = type metadata accessor for CRStableAsset();
  v12 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v26 - v23;
  outlined init with copy of Date?(a1, v17, &_s10Foundation3URLVSgMd);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s10Foundation3URLVSgMd);
  }

  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v21, v24, v18);
  CRStableAsset.init(url:extension:)();
  closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:)(v14, &v28, a2, a3, a4, a5);
  (*(v19 + 8))(v24, v18);

  return (*(v12 + 8))(v14, v27);
}

uint64_t closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v30 = a2;
  v11 = type metadata accessor for CRStableAsset();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = Canvas.editingView.getter();
  v29 = v20;
  (*(v12 + 16))(v14, a1, v11);
  type metadata accessor for MainActor();
  v21 = static MainActor.shared.getter();
  v22 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  v26 = v29;
  *(v24 + 4) = v19;
  *(v24 + 5) = v26;
  (*(v12 + 32))(&v24[v22], v14, v11);
  v27 = &v24[v23];
  *v27 = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  result = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:), v24);
  *v30 = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 56) = a3;
  *(v10 + 64) = a4;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  *(v10 + 24) = a9;
  *(v10 + 32) = a10;
  *(v10 + 16) = a8;
  v11 = type metadata accessor for URL();
  *(v10 + 72) = v11;
  *(v10 + 80) = *(v11 - 8);
  *(v10 + 88) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v10 + 96) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:), v13, v12);
}

uint64_t closure #1 in closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:)()
{
  v1 = *(v0 + 11);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = *(v0 + 3);

  ObjectType = swift_getObjectType();
  CRStableAsset.url.getter();
  v15.origin.x = v7;
  v15.origin.y = v6;
  v15.size.width = v5;
  v15.size.height = v4;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v7;
  v16.origin.y = v6;
  v16.size.width = v5;
  v16.size.height = v4;
  MidY = CGRectGetMidY(v16);
  (*(v8 + 136))(v1, 1, COERCE_CGFLOAT(*&MidX), *&MidY, 0, ObjectType, v8);

  (*(v3 + 8))(v1, v2);

  v12 = *(v0 + 1);

  return v12();
}

uint64_t closure #1 in Canvas.dropInteraction(_:item:willAnimateDropWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = direct field offset for Canvas.dropCompletions;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (*(v6 + 16))
  {

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);

      v9(v10);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v11 = specialized Dictionary._Variant.removeValue(forKey:)(a3);
  swift_endAccess();
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *Canvas.canPerformAction(_:withSender:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & *v3);
  v8 = v7[362];
  v9 = v7[363];
  v10 = type metadata accessor for Capsule();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  if (static Selector.== infix(_:_:)())
  {
    a1 = v3;
    (*((*v6 & *v3) + 0x3C8))(v41);
    if (!LOBYTE(v41[0]))
    {
      goto LABEL_40;
    }

    v14 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v14)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      (*((*v6 & *v3) + 0x3C8))(v41);
      if (!LOBYTE(v41[0]))
      {
        goto LABEL_40;
      }

      CanvasElementView.canvasElement.getter(v13);
      v18 = specialized CanvasMembers.init<A>(allIn:)(v13, v8, v9, v7[364]);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      result = (*(v11 + 8))(v13, v10);
      if (!*(v18 + 16) && !*(v20 + 16) && (v24 & 1) == 0)
      {

        v17 = 0;
        return (v17 & 1);
      }

      v25 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (!v25)
      {
        goto LABEL_45;
      }

      v26 = v25 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);

      if (_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v18, v27) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v20, v28))
      {

        if (v24)
        {
          if ((v30 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          if (v22 == v29)
          {
            v38 = v30;
          }

          else
          {
            v38 = 1;
          }

          if (v38)
          {
            goto LABEL_9;
          }
        }

LABEL_40:
        v17 = 0;
        return (v17 & 1);
      }

LABEL_28:

      v17 = 1;
      return (v17 & 1);
    }

    if (static Selector.== infix(_:_:)())
    {
      a1 = v3;
      (*((*v6 & *v3) + 0x3C8))(v41);
      if (!LOBYTE(v41[0]))
      {
        goto LABEL_40;
      }

      v14 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v14)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      if (static Selector.== infix(_:_:)())
      {
        (*((*v6 & *v3) + 0x3C8))(v41);
        v17 = LOBYTE(v41[0]) == 3;
      }

      else
      {
        outlined init with copy of Date?(a2, v41, &_sypSgMd);
        v31 = v42;
        if (v42)
        {
          v32 = __swift_project_boxed_opaque_existential_1(v41, v42);
          v33 = *(v31 - 8);
          v34 = MEMORY[0x1EEE9AC00](v32);
          v36 = &v40 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v33 + 16))(v36, v34);
          v37 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v33 + 8))(v36, v31);
          __swift_destroy_boxed_opaque_existential_0(v41);
        }

        else
        {
          v37 = 0;
        }

        v39 = type metadata accessor for Canvas();
        v40.receiver = v3;
        v40.super_class = v39;
        v17 = objc_msgSendSuper2(&v40, sel_canPerformAction_withSender_, a1, v37);
        swift_unknownObjectRelease();
      }

      return (v17 & 1);
    }

    (*((*v6 & *v3) + 0x3C8))(v41);
    if (!LOBYTE(v41[0]))
    {
      goto LABEL_40;
    }

    v14 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v14)
    {
      __break(1u);
      goto LABEL_28;
    }

LABEL_8:
    v16 = v14 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    if (!*(*v16 + 16))
    {
      v17 = (*(*(v16 + 8) + 16) != 0) | *(v16 + 24);
      return (v17 & 1);
    }

LABEL_9:
    v17 = 1;
    return (v17 & 1);
  }

  result = (*((*v6 & *v3) + 0x3C8))(v41);
  if (!LOBYTE(v41[0]))
  {
    goto LABEL_40;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v14)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t @objc Canvas.canPerformAction(_:withSender:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = Canvas.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_sypSgMd);
  return v8 & 1;
}

uint64_t @objc Canvas.cut(_:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  Canvas.cut(_:)(v7, a4);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sypSgMd);
}

uint64_t Canvas.cut(_:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v3)
  {
    v5 = v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    AnyCanvas.performSelectionAction(_:_:at:)(a2, v6, v7, v8, v9, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Canvas.selectAll(_:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB58);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  CanvasElementView.canvasElement.getter(&v15 - v7);
  v9 = specialized CanvasMembers.init<A>(allIn:)(v8, v3, v4, *((v2 & v1) + 0xB60));
  v11 = v10;
  v13 = v12;
  LOBYTE(v1) = v14;
  (*(v6 + 8))(v8, v5);
  AnyCanvas.selection.setter(v9, v11, v13, v1 & 1);
}

uint64_t @objc Canvas.selectAll(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  Canvas.selectAll(_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_sypSgMd);
}

uint64_t closure #1 in Canvas.itemProvider(for:)(void (*a1)(uint64_t, void, void), uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v43 = a2;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v41 = type metadata accessor for UUID();
  v8 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();
  v19 = v7;

  UUID.init()();
  UUID.uuidString.getter();
  (*(v8 + 8))(v10, v41);
  v37 = v17;
  URL.appendingPathComponent(_:)();
  v20 = v45;
  v21 = v46;

  v40 = v12;
  v41 = v11;
  v39 = *(v12 + 8);
  v39(v14, v11);
  type metadata accessor for CRContext();
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v22 = MEMORY[0x1DA6CC630](0, v47);
  outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence18EncryptionDelegate_pSgMd);
  (*(v20 + 16))(v19, v38, v21);
  CRContext.assetManager.getter();
  Capsule.copyAssetsSync(to:)();

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v23 = type metadata accessor for CRCodableVersion();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = v19;
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D405C990;
  v29 = v28 + v27;
  v30 = *(v24 + 104);
  v30(v29, *MEMORY[0x1E6995280], v23);
  v30(v29 + v25, *MEMORY[0x1E6995288], v23);
  v31 = v37;
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)();

  v33 = v40;
  v34 = v41;
  v35 = v42;
  (*(v40 + 16))(v42, v31, v41);
  (*(v33 + 56))(v35, 0, 1, v34);
  v44(v35, 0, 0);

  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s10Foundation3URLVSgMd);
  (*(v45 + 8))(v26, v46);
  v39(v31, v34);
  return 0;
}

uint64_t closure #2 in Canvas.itemProvider(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #2 in Canvas.itemProvider(for:), v10);

  return 0;
}

uint64_t closure #1 in closure #2 in Canvas.itemProvider(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in Canvas.itemProvider(for:), 0, 0);
}

uint64_t closure #1 in closure #2 in Canvas.itemProvider(for:)()
{
  v27 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for PKDrawing();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  *(v0 + 64) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGMd);
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = (*(v4 + 48))(v1, 1, v3);
  v8 = 0;
  if (v6 != 1)
  {
    v9 = *(v0 + 96);
    PKDrawing._bridgeToObjectiveC()(v7);
    v8 = v10;
    (*(v4 + 8))(v9, v3);
  }

  v11 = *(v0 + 80);
  v12 = [objc_allocWithZone(type metadata accessor for PKDrawingCoherence(0)) initWithStrokes:v5 fromDrawing:v8];

  swift_unknownObjectRelease();
  PKDrawingCoherence.concreteDrawing()(v13);
  v15 = v14;
  [v14 bounds];
  CGAffineTransformMakeTranslation(&v26, -v16, -v17);
  v18 = *&v26.c;
  v19 = *&v26.tx;
  *(v0 + 16) = *&v26.a;
  *(v0 + 32) = v18;
  *(v0 + 48) = v19;
  [v15 _transformAllStrokes_];
  v20 = [v15 dataRepresentation];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  outlined copy of Data._Representation(v21, v23);
  v11(v21, v23, 0);
  outlined consume of Data._Representation(v21, v23);
  outlined consume of Data._Representation(v21, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t closure #3 in Canvas.itemProvider(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a3, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v7 + 32))(v16 + v15, v10, v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #3 in Canvas.itemProvider(for:), v16);

  return 0;
}

uint64_t closure #1 in closure #3 in Canvas.itemProvider(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  type metadata accessor for Paper(0);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in Canvas.itemProvider(for:), 0, 0);
}

uint64_t closure #1 in closure #3 in Canvas.itemProvider(for:)()
{
  v3 = Capsule<>.contentBounds(includeDrawing:)(1);
  v5 = v4;
  v6 = v1;
  v7 = v2;
  v8 = v1 <= 1024.0 && v2 <= 1024.0;
  v9 = v1;
  v10 = v2;
  if (!v8)
  {
    v11 = 1024.0 / v2;
    if (1024.0 / v2 >= 1024.0 / v1)
    {
      v11 = 1024.0 / v1;
    }

    v9 = v1 * v11;
    v10 = v2 * v11;
  }

  type metadata accessor for ImageRenderer();
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0x4000000000000000;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 1;
  *(v12 + 72) = 0;
  *(v12 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  inited = swift_initStackObject();
  v0[16] = inited;
  v0[17] = specialized CanvasElementImageRenderer.init(renderer:)(v12, inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.root.getter();
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = closure #1 in closure #3 in Canvas.itemProvider(for:);
  v15 = v0[15];
  v16 = v0[12];

  return specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v15, v16, 0, 0, 0, v3, v5, v6, v7);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  if (v1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    _s8PaperKit0A6MarkupVWOhTm_1(v2, type metadata accessor for Paper);
    if (v3)
    {
      v4 = v3;
    }
  }

  else
  {
    _s8PaperKit0A6MarkupVWOhTm_1(*(v0 + 120), type metadata accessor for Paper);
    v3 = 0;
  }

  (*(v0 + 104))(v3, 0);

  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in closure #3 in Canvas.itemProvider(for:)(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in Canvas.itemProvider(for:), 0, 0);
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderWriting?, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> (), v4);

  return v5;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t closure #3 in Canvas.pasteboardRepresentations(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v50 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v50 - v12;
  v14 = *a1;
  v15 = *a2;
  static UTType.png.getter();
  v16 = UTType.identifier.getter();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v13, v5);
  if (!*(v14 + 16))
  {

    if (!v15)
    {
      goto LABEL_25;
    }

LABEL_23:
    *v55 = v15;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_22;
  }

  outlined init with copy of Any(*(v14 + 56) + 32 * v20, &aBlock);
  outlined init with take of Any(&aBlock, v60);
  outlined init with copy of Any(v60, &aBlock);
  v23 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIImage);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v60);
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v24 = v61;
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_0(v60);

    aBlock = 0u;
    v57 = 0u;
LABEL_21:
    outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_sypSgMd);
LABEL_22:
    if (v15)
    {
      goto LABEL_23;
    }

LABEL_25:
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v55 = result;
    return result;
  }

  v53 = v61;
  static UTType.png.getter();
  v25 = UTType.identifier.getter();
  v27 = v26;
  v19(v10, v5);
  if (!*(v15 + 16))
  {

    goto LABEL_19;
  }

  v52 = v23;
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_19:
    aBlock = 0u;
    v57 = 0u;
    goto LABEL_20;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v28, &aBlock);
  if (!*(&v57 + 1))
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0(v60);

    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v60);

    goto LABEL_23;
  }

  v31 = v61;
  v32 = v53;
  [v53 size];
  v34 = v33;
  [v31 size];
  if (v34 <= v35)
  {
    v34 = v35;
  }

  [v32 size];
  v37 = v36;
  [v31 size];
  v39 = v37 + v38;
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = v34;
  *(v40 + 32) = v39;
  *(v40 + 40) = v31;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #1 in closure #3 in Canvas.pasteboardRepresentations(_:);
  *(v41 + 24) = v40;
  v50[1] = v40;
  v58 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v59 = v41;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v57 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  *(&v57 + 1) = &block_descriptor_253_0;
  v42 = _Block_copy(&aBlock);
  v53 = v32;
  v50[0] = v31;

  v43 = [v51 imageWithActions_];
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  else
  {
    *v55 = v14;

    v45 = v54;
    static UTType.png.getter();
    v46 = UTType.identifier.getter();
    v48 = v47;
    v19(v45, v5);
    *(&v57 + 1) = v52;
    *&aBlock = v43;
    v49 = v43;
    specialized Dictionary.subscript.setter(&aBlock, v46, v48);

    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  return result;
}

id closure #1 in closure #3 in Canvas.pasteboardRepresentations(_:)(int a1, id a2, double a3, void *a4)
{
  [a2 size];
  [a2 drawInRect_];
  [a2 size];
  v9 = v8;
  [a4 size];

  return [a4 drawInRect_];
}

uint64_t closure #1 in Canvas.canvasElementBounds(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Capsule();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-1] - v4;
  CanvasElementView.canvasElement.getter(&v17[-1] - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.subscript.getter();
  (*(v3 + 8))(v5, v2);
  v6 = v18;
  if (v18)
  {
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v8 = (*(*(v7 + 8) + 8))(v6);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    result = outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CanvasElement_pSgMd);
    v8 = 0.0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = v6 == 0;
  return result;
}

uint64_t closure #2 in Canvas.createNewPaper(from:)(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v71 = a7;
  v72 = a6;
  v92 = a5;
  v74 = a4;
  v90 = a3;
  v9 = *a2;
  v10 = *MEMORY[0x1E69E7D40];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v65 - v11;
  v73 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v65 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v65 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v65 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v22 = *(v21 - 8);
  v88 = v21;
  v89 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v65 - v25;
  v84 = v9;
  v85 = v10;
  v26 = *((v10 & v9) + 0xB50);
  v27 = *((v10 & v9) + 0xB58);
  v28 = type metadata accessor for Capsule();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v78 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  CanvasElementView.canvasElement.getter(&v65 - v32);
  Capsule.Ref.import<A>(_:)();
  v34 = *(v29 + 8);
  v34(v33, v28);
  KeyPath = swift_getKeyPath();
  CanvasElementView.canvasElement.getter(v33);
  v79 = v26;
  v94 = v26;
  v95 = v27;
  v77 = v27;
  v35 = v85 & v84;
  v85 = a2;
  v36 = v28;
  v84 = *(v35 + 2912);
  v96 = v84;
  swift_getKeyPath();
  v37 = v86;
  Capsule.subscript.getter();

  v38 = v33;
  v39 = v34;
  v34(v38, v36);
  v40 = v91;
  v93 = v90;
  v41 = v88;
  CROrderedSet.filter(_:)();
  v42 = v37;
  v43 = v92;
  (*(v89 + 8))(v42, v41);
  v91 = a1;
  result = Capsule.Ref.subscript.setter();
  if (*(v43 + 16))
  {
    v90 = v40;
    v45 = v78;
    v46 = CanvasElementView.canvasElement.getter(v78);
    MEMORY[0x1EEE9AC00](v46);
    v47 = v77;
    *(&v65 - 4) = v79;
    *(&v65 - 3) = v47;
    *(&v65 - 2) = v84;
    swift_getKeyPath();
    v48 = v98;
    Capsule.subscript.getter();

    v39(v45, v36);
    v49 = v81;
    v50 = *(v81 + 48);
    v51 = v48;
    v52 = v82;
    if (v50(v51, 1, v82) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    else
    {
      (*(v49 + 32))(v80, v98, v52);
      v53 = v70;
      v54 = v91;
      Ref.subscript.getter();
      v55 = v74;

      v56 = specialized PKDrawingStruct.filteredStrokes<A>(in:isIncluded:)(v54, v53, v55, v43, v72, v71 & 1);

      _s8PaperKit0A6MarkupVWOhTm_1(v53, type metadata accessor for PKDrawingStruct);
      v57 = Capsule.Ref.root.modify();
      specialized ContainerCanvasElement.ensureHasDrawing<A>(in:)(v54);
      v57(&v97, 0);
      v58 = v75;
      Capsule.Ref.root.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
      v59 = v76;
      CRRegister.wrappedValue.getter();
      _s8PaperKit0A6MarkupVWOhTm_1(v58, type metadata accessor for Paper);
      if (v50(v59, 1, v52))
      {
        (*(v49 + 8))(v80, v52);

        return outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      }

      else
      {
        v60 = v65;
        (*(v49 + 16))(v65, v59, v52);
        outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
        v97 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [Ref<CRRegister<TaggedStroke>>] and conformance [A], &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
        v61 = v67;
        CROrderedSet.init<A>(_:)();
        v62 = Ref.subscript.modify();
        (*(v68 + 40))(v63 + *(v66 + 20), v61, v69);
        v62(&v97, 0);
        v64 = *(v49 + 8);
        v64(v60, v52);
        return (v64)(v80, v52);
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #2 in Canvas.createNewPaper(from:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRKeyPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1DA6CB870](v7);
  v8 = specialized Set.contains(_:)(v6, a2);
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t closure #1 in Canvas.markupEditViewController(_:insertNewContents:)(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v83 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v76 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v10 = *(v9 - 8);
  v81 = v9;
  v82 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = v76 - v11;
  v12 = type metadata accessor for Paper(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v76[0] = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v17 = (v76 - v16);
  Capsule.Ref.root.getter();
  v18 = v81;
  v19 = &v15[*(v13 + 56)];
  v20 = v80;
  v82[2](v80, v19, v81);
  _s8PaperKit0A6MarkupVWOhTm_1(v15, type metadata accessor for Paper);
  CROrderedSet.makeIterator()();
  (v82[1])(v20, v18);
  v82 = v17;
  CROrderedSet.Iterator.next()();
  v21 = v83;
  v80 = *(v83 + 48);
  v81 = v83 + 48;
  if ((v80)(v8, 1, v3) != 1)
  {
    v79 = *(v21 + 32);
    v83 = v21 + 32;
    v78 = (v21 + 8);
    v77 = v8;
    v79(v5, v8, v3);
    while (1)
    {
      SharedTagged_10.subscript.getter();
      v60 = v85;
      v61 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      (*(*(v61 + 8) + 8))(v60);
      v63 = v62;
      v65 = v64;
      __swift_destroy_boxed_opaque_existential_0(v84);
      v66 = [a2 window];
      if (v66)
      {
        v67 = v66;
        v68 = [v66 screen];

        [v68 scale];
        v70 = v69;
      }

      else
      {
        v70 = 1.0;
      }

      v71 = &a2[OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride];
      swift_beginAccess();
      if ((v71[1] & 1) != 0 || (v23 = *v71, (v24 = [a2 window]) == 0))
      {
        [a2 bounds];
        v73 = v72;
        [a2 bounds];
        if (v74 >= v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v74;
        }

        v29 = 1.0;
        if (v75 > 1024.0)
        {
          v29 = v75 * 0.0009765625;
        }
      }

      else
      {
        v25 = v24;
        v26 = [v24 screen];

        [v26 scale];
        v28 = v27;

        v29 = v28 / v23;
      }

      v30 = v29 * 10.0;
      v31 = floor(v30);
      v32 = v30 - v31;
      v33 = ceil(v30);
      if (v32 < 0.49)
      {
        v33 = v31;
      }

      v34 = fmax(v33 / 10.0, 0.1);
      v35 = v70 * (v63 * v34);
      v36 = v70 * (v65 * v34);
      v37 = floor(v35);
      v38 = v35 - v37;
      v39 = ceil(v35);
      if (v38 < 0.49)
      {
        v39 = v37;
      }

      v40 = floor(v36);
      v41 = v36 - v40;
      v42 = ceil(v36);
      if (v41 < 0.49)
      {
        v42 = v40;
      }

      v43 = v39 / v70;
      v44 = v42 / v70;
      v45 = Canvas.suggestedPositionForNewCanvasElement(withSize:)(v63, v65);
      v47 = v46;
      v48 = v45 - v43 * 0.5;
      v50 = v49 - v44 * 0.5;
      v51 = SharedTagged_10.subscript.modify();
      v53 = *(v52 + 24);
      v54 = *(v52 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
      (*(v54 + 16))(v53, v54, v48, v50, v43, v44);
      v51(v84, 0);
      v55 = SharedTagged_10.subscript.modify();
      v57 = *(v56 + 24);
      v58 = *(v56 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
      (*(v58 + 40))(v57, v58, v47);
      v55(v84, 0);
      (*v78)(v5, v3);
      v59 = v77;
      CROrderedSet.Iterator.next()();
      if ((v80)(v59, 1, v3) == 1)
      {
        break;
      }

      v79(v5, v59, v3);
    }
  }

  return (*(v76[0] + 8))(v82, v87);
}

uint64_t closure #1 in Canvas.canvasCalculateSetShouldSolve(_:stroke:flag:undoable:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  v86 = a5;
  v88 = a4;
  LODWORD(v95) = a3;
  v7 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v89);
  v94 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v96);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v85 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v90 = a1;
  v34 = a2;
  WeakRef.subscript.getter();
  v97 = v18;
  v37 = *(v18 + 48);
  v36 = v18 + 48;
  v35 = v37;
  if (v37(v26, 1, v17))
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  }

  v81 = v32;
  v78 = v35;
  v79 = v33;
  v76 = v29;
  v80 = v34;
  v39 = v97;
  v40 = (v97 + 16);
  v41 = v91;
  v75 = *(v97 + 16);
  v75(v91, v26, v17);
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  v42 = v92;
  CRRegister.value.getter();
  v91 = *(v39 + 8);
  (v91)(v41, v17);
  v43 = v93;
  _s8PaperKit13CRAssetOrDataOWObTm_0(v42, v93, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = v17;
  v46 = v39 + 8;
  v77 = v36;
  if (EnumCaseMultiPayload)
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v43, type metadata accessor for TaggedStroke);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v48 = v81;
    (*(*(v47 - 8) + 56))(v81, 1, 1, v47);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v50 = *(v49 - 8);
    v51 = v81;
    (*(v50 + 32))(v81, v43, v49);
    v52 = v49;
    v48 = v51;
    (*(v50 + 56))(v51, 0, 1, v52);
  }

  v53 = v95;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v48, 1, v54) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  }

  v92 = v40;
  v93 = v45;
  v97 = v46;
  v95 = v55;
  v57 = v94;
  v58 = v48;
  Ref.subscript.getter();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v60 = v87;
  v81 = v59;
  CRRegister.wrappedValue.getter();
  _s8PaperKit0A6MarkupVWOhTm_1(v57, type metadata accessor for PKStrokeStruct);
  v61 = *v60;
  _s8PaperKit0A6MarkupVWOhTm_1(v60, type metadata accessor for PKStrokeProperties);
  v62 = *(v95 + 8);
  result = v62(v58, v54);
  if (v53)
  {
    v63 = v61 | v88;
  }

  else
  {
    v63 = v61 & ~v88;
  }

  if (v63 != v61)
  {
    v94 = v62;
    v64 = v85;
    WeakRef.subscript.getter();
    v65 = v93;
    if (v78(v64, 1, v93))
    {
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
    }

    else
    {
      v66 = v82;
      v75(v82, v64, v65);
      outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
      v67 = v83;
      CRRegister.value.getter();
      (v91)(v66, v65);
      v68 = v84;
      _s8PaperKit13CRAssetOrDataOWObTm_0(v67, v84, type metadata accessor for TaggedStroke);
      if (swift_getEnumCaseMultiPayload())
      {
        _s8PaperKit0A6MarkupVWOhTm_1(v68, type metadata accessor for TaggedStroke);
        v69 = 1;
        v70 = v76;
        v71 = v95;
      }

      else
      {
        v71 = v95;
        v70 = v76;
        (*(v95 + 32))(v76, v68, v54);
        v69 = 0;
      }

      (*(v71 + 56))(v70, v69, 1, v54);
      if (v56(v70, 1, v54) == 1)
      {
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
      }

      else
      {
        v72 = Ref.subscript.modify();
        v73 = CRRegister.wrappedValue.modify();
        *v74 = v63;
        v73(v98, 0);
        v72(v99, 0);
        result = v94(v70, v54);
      }
    }

    *v86 = 1;
  }

  return result;
}

void closure #1 in Canvas.undoablyAdd(_:to:)(uint64_t a1)
{
  v1 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v2 = v1;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in Canvas.undoablyAdd(_:to:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for GraphableExpression(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-v11];
  _s8PaperKit0A6MarkupVWOcTm_1(a2, v8, type metadata accessor for GraphableExpression);
  v13 = type metadata accessor for CRKeyPath();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression);

  MEMORY[0x1DA6CC020](v15, v8, v5, v6, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGMd);
  v16 = Ref.subscript.modify();
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  CROrderedSet.append(_:)();
  v16(v18, 0);
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #1 in Canvas.mathAddGraph(forExpression:variable:range:identifier:expressionLocation:addToExisting:calculateDocument:type:)(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, __int128 *a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - v18;
  v20 = type metadata accessor for GraphableExpression(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  swift_getKeyPath();
  v27 = a8[1];
  v37 = *a8;
  v38 = v27;
  Capsule.Ref.subscript.setter();
  swift_getKeyPath();
  v37 = 0uLL;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  Capsule.Ref.subscript.setter();
  swift_getKeyPath();
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  if (CGRectIsEmpty(v39))
  {
    specialized static GraphElement.defaultVisibleRange.getter();
    a3 = v28;
    a4 = v29;
    a5 = v30;
    a6 = v31;
  }

  *&v37 = a3;
  *(&v37 + 1) = a4;
  *&v38 = a5;
  *(&v38 + 1) = a6;
  Capsule.Ref.subscript.setter();
  _s8PaperKit0A6MarkupVWOcTm_1(a9, v22, type metadata accessor for GraphableExpression);
  v32 = type metadata accessor for CRKeyPath();
  (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  v33 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression);

  MEMORY[0x1DA6CC020](v34, v22, v19, v20, v33);
  swift_getKeyPath();
  v35 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  CROrderedSet.append(_:)();
  v35(&v37, 0);

  return (*(v24 + 8))(v26, v23);
}

uint64_t closure #1 in Canvas.harmonizeCanvasElement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for CRAsset();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  v5[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[16] = v9;
  v5[17] = swift_task_alloc();
  v5[18] = swift_projectBox();
  v5[19] = type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[21] = v10;
  *v10 = v5;
  v10[1] = closure #1 in Canvas.harmonizeCanvasElement<A>(_:);

  return Canvas.harmonizeImage(_:)(v9, a5);
}

uint64_t closure #1 in Canvas.harmonizeCanvasElement<A>(_:)()
{
  *(*v1 + 176) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in Canvas.harmonizeCanvasElement<A>(_:);
  }

  else
  {
    v4 = closure #1 in Canvas.harmonizeCanvasElement<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

{
  v22 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  outlined init with take of Range<AttributedString.Index>(v1, v2, &_s9Coherence7CRAssetVSgMd);
  outlined init with copy of Date?(v2, v3, &_s9Coherence7CRAssetVSgMd);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0[15];
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[17], &_s9Coherence7CRAssetVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence7CRAssetVSgMd);
  }

  else
  {
    v7 = v0[22];
    v8 = v0[14];
    (*(v0[13] + 32))(v8, v0[15], v0[12]);
    *(swift_task_alloc() + 16) = v8;
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    result = swift_endAccess();
    if (v7)
    {
      return result;
    }

    v10 = v0[17];
    v11 = v0[18];
    v12 = v0[13];
    v20 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];

    swift_beginAccess();
    (*(v15 + 16))(v14, v11, v16);
    v17 = type metadata accessor for Image(0);
    v18 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v21[0] = 3;
    AnyCanvas.merge<A>(_:from:)(v14, v21, v17, v18);
    (*(v15 + 8))(v14, v16);
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CRAssetVSgMd);
    (*(v12 + 8))(v20, v13);
  }

  v19 = v0[1];

  return v19();
}

{

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D38C4000, v4, v5, "Cannot harmonize image: %@", v8, 0xCu);
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in closure #1 in Canvas.harmonizeCanvasElement<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  swift_getKeyPath();
  v6 = type metadata accessor for CRAsset();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  v7 = type metadata accessor for CRAssetOrData();
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  return Capsule.Ref.subscript.setter();
}

Swift::Int Canvas.CanvasHarmonizationError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Canvas<A>.CanvasHarmonizationError()
{
  Hasher.init(_seed:)();
  Canvas.CanvasHarmonizationError.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t closure #1 in Canvas.harmonizeImage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = type metadata accessor for UTType();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.harmonizeImage(_:), 0, 0);
}

uint64_t closure #1 in Canvas.harmonizeImage(_:)()
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_7;
  }

  v2 = Mutable;
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  static UTType.png.getter();
  v6 = UTType.identifier.getter();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  v9 = MEMORY[0x1DA6CCED0](v6, v8);

  v10 = CGImageDestinationCreateWithData(v2, v9, 1uLL, 0);

  if (!v10)
  {

LABEL_7:
    type metadata accessor for Canvas.CanvasHarmonizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
LABEL_8:

    v21 = v0[1];
    goto LABEL_11;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69A8B18]) initWithForeground:v0[3] background:v0[4]];
  v12 = [objc_opt_self() getDefault];
  [v12 load];
  v13 = [v12 harmonize_];
  v14 = [v13 harmonized];
  if (!v14)
  {

    v17 = 0;
    v19 = 0xF000000000000000;
    goto LABEL_10;
  }

  v15 = v14;
  CGImageDestinationAddImage(v10, v14, 0);
  if (!CGImageDestinationFinalize(v10))
  {
    type metadata accessor for Canvas.CanvasHarmonizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v16 = v2;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

LABEL_10:
  v22 = v0[2];
  *v22 = v17;
  v22[1] = v19;

  v21 = v0[1];
LABEL_11:

  return v21();
}

uint64_t implicit closure #1 in Canvas.asyncMaxHeadroom()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for Image(0);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for Capsule();
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](implicit closure #1 in Canvas.asyncMaxHeadroom(), 0, 0);
}

uint64_t implicit closure #1 in Canvas.asyncMaxHeadroom()()
{
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](implicit closure #1 in Canvas.asyncMaxHeadroom(), v2, v1);
}

{
  v1 = *(v0 + 48);

  CanvasElementView.canvasElement.getter(v1);

  return MEMORY[0x1EEE6DFA0](implicit closure #1 in Canvas.asyncMaxHeadroom(), 0, 0);
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v2 = swift_dynamicCast();
  *(v0 + 88) = v2;
  v3 = *(*(v1 - 8) + 56);
  if (v2)
  {
    v4 = *(v1 - 8);
    v5 = *(v0 + 56);
    v3(v5, 0, 1, v1);
    Capsule.root.getter();
    (*(v4 + 8))(v5, v1);
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = implicit closure #1 in Canvas.asyncMaxHeadroom();

    return Image.cgImageSource()();
  }

  else
  {
    v8 = *(v0 + 56);
    v3(v8, 1, 1, v1);
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    v9 = *(v0 + 88);
    v10 = *(v0 + 16);
    *v10 = 0;
    *(v10 + 8) = (v9 & 1) == 0;

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = specialized static ImageHDRInfo.info(for:)(*(v0 + 80));
    v5 = v4;

    _s8PaperKit0A6MarkupVWOhTm_1(v2, type metadata accessor for Image);
    if (v5)
    {

      goto LABEL_6;
    }
  }

  else
  {
    _s8PaperKit0A6MarkupVWOhTm_1(*(v0 + 32), type metadata accessor for Image);
  }

  v3 = 0;
LABEL_6:
  v6 = *(v0 + 88);
  v7 = *(v0 + 16);
  *v7 = v3;
  *(v7 + 8) = (v6 & 1) == 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t implicit closure #1 in Canvas.asyncMaxHeadroom()(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](implicit closure #1 in Canvas.asyncMaxHeadroom(), 0, 0);
}

uint64_t closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[17] = a1;
  v8 = *a5;
  v9 = *MEMORY[0x1E69E7D40];
  v7[22] = *MEMORY[0x1E69E7D40] & *a5;
  v10 = type metadata accessor for CRKeyPath();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = *((v9 & v8) + 0xB50);
  v11 = type metadata accessor for Capsule();
  v7[27] = v11;
  v7[28] = *(v11 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), 0, 0);
}

uint64_t closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)()
{
  v1 = (v0 + 120);
  v2 = swift_allocObject();
  *(v0 + 240) = v2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  Capsule.subscript.getter();

  v16 = *(v0 + 56);
  v18 = *(v0 + 72);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v3 = vld1q_dup_f64(v1);
  v17 = vdivq_f64(v16, v3);
  v19 = vdivq_f64(v18, v3);
  *(v2 + 16) = v17;
  *(v2 + 32) = v19;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v21.origin.x = v4;
  v21.origin.y = v5;
  v21.size.width = v6;
  v21.size.height = v7;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v4;
  v22.origin.y = v5;
  v22.size.width = v6;
  v22.size.height = v7;
  MidY = CGRectGetMidY(v22);
  v23.origin.x = v17.f64[0];
  v23.size.width = v19.f64[0];
  v23.origin.y = v17.f64[1];
  v23.size.height = v19.f64[1];
  v10 = CGRectGetWidth(v23) * 0.5;
  v24.origin.x = v17.f64[0];
  v24.size.width = v19.f64[0];
  v24.origin.y = v17.f64[1];
  v24.size.height = v19.f64[1];
  Height = CGRectGetHeight(v24);
  *(v2 + 16) = MidX - v10;
  *(v2 + 24) = MidY - Height * 0.5;
  Capsule.rootID.getter();
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:);
  v13 = *(v0 + 232);
  v14 = *(v0 + 200);

  return Canvas.createNewCapsule(below:)(v13, v14);
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), 0, 0);
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  *(v0 + 40) = *(v0 + 208);
  *(v0 + 48) = *(*(*(v1 + 2912) + 8) + 8);
  v9 = *(v0 + 232);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  Capsule.root.getter();
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v0 + 16;
  *(v5 + 32) = v2;
  *(v5 + 40) = v9;
  *(v5 + 56) = v4;
  v6 = swift_task_alloc();
  *(v0 + 264) = v6;
  v7 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIImage);
  *v6 = v0;
  v6[1] = closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:);

  return MEMORY[0x1EEE6DE38](v0 + 128, 0, 0, 0xD00000000000002DLL, 0x80000001D4091C50, partial apply for closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), v5, v7);
}

{

  if (v0)
  {

    v1 = closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:);
  }

  else
  {

    v1 = closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  **(v0 + 136) = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  **(v0 + 136) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v55 = a4;
  v56 = a6;
  v47 = a1;
  v48 = a5;
  v46 = a3;
  v44 = a2;
  v8 = *a7;
  v9 = *MEMORY[0x1E69E7D40];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v10 = *(v58 - 8);
  v51 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v37 - v11;
  v53 = v8;
  v54 = v9;
  v52 = a7;
  v50 = *((v9 & v8) + 0xB50);
  v49 = *((v9 & v8) + 0xB58);
  v12 = type metadata accessor for Capsule();
  v40 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v42 = &v37 - v15;
  v17 = type metadata accessor for UUID();
  v41 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v37 - v21;
  v45 = &v37 - v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v18 + 16))(&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v17);
  outlined init with copy of FindResult(v46, v59);
  v38 = v13;
  (*(v13 + 16))(v16, v48, v12);
  v39 = v10;
  (*(v10 + 16))(v57, v47, v58);
  v24 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v13 + 80) + v26 + 8) & ~*(v13 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v10 + 80) + v29 + 8) & ~*(v10 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v49;
  *(v31 + 4) = v50;
  *(v31 + 5) = v32;
  v33 = v52;
  *(v31 + 6) = *((v54 & v53) + 0xB60);
  (*(v18 + 32))(&v31[v24], v43, v41);
  outlined init with take of PaperKitHashable(v59, &v31[v25]);
  *&v31[v26] = v55;
  (*(v38 + 32))(&v31[v27], v42, v40);
  v34 = v57;
  *&v31[v28] = v56;
  *&v31[v29] = v33;
  (*(v39 + 32))(&v31[v30], v34, v58);

  v35 = v33;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v45, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), v31);
}

uint64_t closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v17;
  v8[14] = v18;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = *v17;
  v10 = *MEMORY[0x1E69E7D40];
  v8[15] = *MEMORY[0x1E69E7D40] & *v17;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v8[16] = v11;
  v12 = *(v11 - 8);
  v8[17] = v12;
  v8[18] = *(v12 + 64);
  v8[19] = swift_task_alloc();
  v8[20] = *((v10 & v9) + 0xB50);
  v8[21] = *((v10 & v9) + 0xB58);
  v13 = type metadata accessor for Capsule();
  v8[22] = v13;
  v14 = *(v13 - 8);
  v8[23] = v14;
  v8[24] = *(v14 + 64);
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 152);
  v22 = v5;
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v20 = v1;
  v21 = v7;
  v8 = *(v0 + 112);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v9 = *(v0 + 88);
  v23 = *(v0 + 120);
  v24 = *(v0 + 80);
  v10 = *(v0 + 72);
  v27 = static LoupeRenderDebouncer.shared;
  *(v0 + 208) = static LoupeRenderDebouncer.shared;
  v19 = *(v0 + 160);
  outlined init with copy of FindResult(v10, v0 + 16);
  (*(v3 + 16))(v1, v9, v4);
  (*(v6 + 16))(v5, v8, v7);
  v11 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v12 = (v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v6 + 80) + v13 + 8) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v0 + 216) = v15;
  *(v15 + 16) = v19;
  v16 = *(v23 + 2912);
  *(v0 + 224) = v16;
  *(v15 + 32) = v16;
  outlined init with take of PaperKitHashable((v0 + 16), v15 + 40);
  *(v15 + 80) = v24;
  (*(v3 + 32))(v15 + v11, v20, v4);
  *(v15 + v12) = v25;
  *(v15 + v13) = v26;
  (*(v6 + 32))(v15 + v14, v22, v21);

  v17 = v26;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), v27, 0);
}

{
  *(v0 + 232) = LoupeRenderDebouncer.schedule(renderID:workItem:)(*(v0 + 64), partial apply for closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), *(v0 + 216)) & 1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), 0, 0);
}

{
  if ((*(v0 + 232) & 1) == 0)
  {
    type metadata accessor for Canvas.LoupeError();
    swift_getWitnessTable();
    v1 = swift_allocError();
    *v2 = 0;
    *(v0 + 56) = v1;
    CheckedContinuation.resume(throwing:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v38 = a3;
  v39 = a6;
  v43 = a2;
  v44 = a4;
  v36 = a1;
  v7 = *a5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v33 = v9;
  v10 = *(v9 - 8);
  v40 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v34 = &v32 - v11;
  v41 = v7;
  v42 = v8;
  v13 = *((v8 & v7) + 0xB50);
  v37 = *((v8 & v7) + 0xB58);
  v14 = v13;
  v15 = type metadata accessor for Capsule();
  v32 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v32 - v21;
  v35 = &v32 - v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  outlined init with copy of FindResult(v36, v45);
  (*(v16 + 16))(v19, v38, v15);
  (*(v10 + 16))(v12, v39, v9);
  v24 = (*(v16 + 80) + 104) & ~*(v16 + 80);
  v25 = (v17 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v10 + 80) + v26 + 8) & ~*(v10 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v37;
  *(v28 + 4) = v14;
  *(v28 + 5) = v29;
  *(v28 + 6) = *((v42 & v41) + 0xB60);
  outlined init with take of PaperKitHashable(v45, (v28 + 56));
  *(v28 + 12) = v43;
  (*(v16 + 32))(&v28[v24], v19, v32);
  *&v28[v25] = v44;
  *&v28[v26] = a5;
  (*(v10 + 32))(&v28[v27], v34, v33);

  v30 = a5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), v28);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[13] = *MEMORY[0x1E69E7D40] & *a8;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v2[3];
  v0[14] = v3;
  v0[15] = v2[4];
  v0[16] = __swift_project_boxed_opaque_existential_1(v2, v3);
  swift_beginAccess();
  v0[17] = v1[2];
  v0[18] = v1[3];
  v0[19] = v1[4];
  v0[20] = v1[5];
  type metadata accessor for MainActor();
  v0[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), v5, v4);
}

{
  v1 = *(v0 + 88);

  *(v0 + 176) = [v1 traitCollection];

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), 0, 0);
}

{
  v1 = *(v0 + 22);
  v2 = *(v0 + 13);
  v3 = [v1 userInterfaceStyle];

  v4 = swift_task_alloc();
  *(v0 + 23) = v4;
  v5 = *(v2 + 2896);
  *(v0 + 24) = v5;
  v0[25] = *(v2 + 2904);
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:);
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  v10 = *(v0 + 15);
  v11 = *(v0 + 16);
  v12 = *(v0 + 14);
  v13 = *(v0 + 9);

  return CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v11, v13, v3 == 2, 0, 1, v12, v5, v10, v8, v9, v6, v7);
}

{
  v1 = v0[26];
  if (v1)
  {
    v0[6] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    type metadata accessor for Canvas.LoupeError();
    swift_getWitnessTable();
    v2 = swift_allocError();
    *v3 = 1;
    v0[5] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:), 0, 0);
}

uint64_t Canvas.__ivar_destroyer()
{

  swift_unknownObjectRelease();
}

id Canvas.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Canvas();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc Canvas.__ivar_destroyer(uint64_t a1)
{

  swift_unknownObjectRelease();
}

id CanvasPointerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasPointerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820]);
  dispatch thunk of Clock.now.getter();
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8]);
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

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
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

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
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

uint64_t specialized _NativeSet.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v27 - v8;
  LOBYTE(v8) = *(a3 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v9;
    v41 = v4;
    v30 = &v27;
    MEMORY[0x1EEE9AC00](v7);
    v29 = &v27 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v10);
    v11 = 0;
    v39 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v31 = 0;
    v32 = a3;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v9 = (v14 + 63) >> 6;
    v34 = v6 + 16;
    v35 = v6;
    v33 = v6 + 8;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v40 = (v16 - 1) & v16;
LABEL_12:
      v4 = v35;
      v20 = v36;
      a3 = v17 | (v11 << 6);
      v6 = v37;
      (*(v35 + 16))(v36, *(v39 + 48) + *(v35 + 72) * a3, v37);
      v21 = v41;
      v22 = v38(v20);
      (*(v4 + 8))(v20, v6);
      v41 = v21;
      if (v21)
      {

        return swift_willThrow();
      }

      v16 = v40;
      if (v22)
      {
        *&v29[(a3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a3;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return specialized _NativeSet.extractSubset(using:count:)(v29, v28, v31, v39);
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        return specialized _NativeSet.extractSubset(using:count:)(v29, v28, v31, v39);
      }

      v19 = *(v32 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9Coherence13WeakTagged_10Vy8PaperKit0K13CanvasElementVGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab19VKXEfU_9Coherence13jk6_10Vy8l7Kit0H13nO6VG_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v25, v9, a3, v38);

  result = MEMORY[0x1DA6D0660](v25, -1, -1);
  if (!v4)
  {
    return v26;
  }

  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v34 = a4;
  v25 = a2;
  v26 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v31 = &v25 - v7;
  v32 = v5;
  v8 = 0;
  v35 = a3;
  v9 = *(a3 + 56);
  v27 = 0;
  v28 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v29 = v5 + 8;
  v30 = v5 + 16;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v36 = (v12 - 1) & v12;
LABEL_11:
    v18 = v31;
    v17 = v32;
    v19 = v14 | (v8 << 6);
    v20 = v33;
    (*(v32 + 16))(v31, *(v35 + 48) + *(v32 + 72) * v19, v33, v6);
    v21 = v37;
    v22 = v34(v18);
    (*(v17 + 8))(v18, v20);
    v37 = v21;
    if (v21)
    {
      return;
    }

    v12 = v36;
    if (v22)
    {
      *(v26 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v35;

        specialized _NativeSet.extractSubset(using:count:)(v26, v25, v27, v24);
        return;
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v28 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v36 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9Coherence13WeakTagged_10Vy8PaperKit0K13CanvasElementVGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab19VKXEfU_9Coherence13jk6_10Vy8l7Kit0H13nO6VG_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit16ResizeHandleTypeOGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1DA6CE810](v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t closure #3 in AnySubscriber.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = type metadata accessor for Mirror.AncestorRepresentation();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = *(v12 + 16);
  v18(v22 - v19, a1, a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of PaperKitHashable(v23, v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    dispatch thunk of CustomReflectable.customMirror.getter();
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_ss17CustomReflectable_pSgMd);
    (v18)(v15, a1, a2);
    v21 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    (*(v6 + 104))(v8, *MEMORY[0x1E69E75D8], v5);
    return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6CE0C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6CE0C0](a2, a3);
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
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6CE0C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6CE0C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized ()
{
}

{
  return swift_unknownObjectRelease();
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6CE0C0](a2, a3);
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
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb8inserted_8PaperKit15MiniMenuOptionsV17memberAfterInserttSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb8inserted_8PaperKit15MiniMenuOptionsV17memberAfterInserttSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb8inserted_8PaperKit15MiniMenuOptionsV17memberAfterInserttSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of PaperKitHashable(&v12, v10 + 40 * a1 + 32);
}

uint64_t partial apply for closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:)(uint64_t a1)
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
  v13 = *(v1 + 88);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:)(v7, v8, v9, v10, a1, v4, v5, v6, v11, v12, v13);
}

uint64_t specialized Canvas.xpcMulticast.getter()
{
  v1 = direct field offset for Canvas.xpcMulticast;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(void *a1, ValueMetadata *a2, unsigned __int8 *a3, int a4, int a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  LODWORD(v93) = a5;
  v94 = a4;
  v95 = a2;
  v92 = a1;
  v16 = *v10;
  v17 = *MEMORY[0x1E69E7D40];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v96 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - v24;
  *(v10 + direct field offset for Canvas.multipeerConnection) = 0;
  *(v10 + direct field offset for Canvas.multipeerCanvasStateConnection) = 0;
  *(v10 + direct field offset for Canvas.removeOldEraserStrokesTimer) = 0;
  *(v10 + direct field offset for Canvas.maxHeadroomForAllElements) = 0;
  v26 = (v10 + direct field offset for Canvas.liveStreamMessenger);
  *v26 = 0;
  v26[1] = 0;
  *(v10 + direct field offset for Canvas.childViewControllerCancellable) = 0;
  *(v10 + direct field offset for Canvas.finalizeTimer) = 0;
  *(v10 + direct field offset for Canvas.xpcMulticast) = 0;
  v91 = *a3;
  v27 = (v10 + direct field offset for Canvas._editingView);
  *v27 = 0;
  v27[1] = 0;
  *(v10 + direct field offset for Canvas._canvasElementController) = 0;
  v28 = direct field offset for Canvas.delayedPreviewProviders;
  v29 = MEMORY[0x1E69E7CC0];
  *(v10 + v28) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_ySo21UITargetedDragPreviewCcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v30 = direct field offset for Canvas.dropCompletions;
  *(v10 + v30) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_yycTt0g5Tf4g_n(v29);
  *(v10 + direct field offset for Canvas.dropSessionType) = 3;
  *(v10 + direct field offset for Canvas.scribbleDelegate) = 0;
  *(v10 + direct field offset for Canvas.scribbleInteraction) = 0;
  *(v10 + direct field offset for Canvas.indirectScribbleInteraction) = 0;
  *(v10 + direct field offset for Canvas.pointerDelegate) = 0;
  *(v10 + direct field offset for Canvas.dropInteractionSessionIsActive) = 0;
  *(v10 + direct field offset for Canvas.dropInteraction) = 0;
  *(v10 + direct field offset for Canvas.dropDelegate) = 0;
  *(v10 + direct field offset for Canvas.editMenuInteraction) = 0;
  *(v10 + direct field offset for Canvas.editMenuInteractionDelegate) = 0;
  v31 = v10 + direct field offset for Canvas.visibleBoundsOverride;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[32] = 1;
  v32 = direct field offset for Canvas.subscriptions;
  v33 = *((v17 & v16) + 0xB50);
  v34 = *((v17 & v16) + 0xB58);
  v35 = *((v17 & v16) + 0xB60);
  v97[0] = v33;
  v97[1] = v33;
  v97[2] = v34;
  v98 = v35;
  v99 = v34;
  type metadata accessor for Canvas.PaperViewCanvasSubscription();
  *(v10 + v32) = Array.init()();
  *(v10 + direct field offset for Canvas.isInUndoableGroup) = 0;
  *(v10 + direct field offset for Canvas.isUndoableGroupNewChange) = 0;
  *(v10 + direct field offset for Canvas.eraserCheckingIndex) = 0;
  v36 = direct field offset for Canvas.dropTargets;
  *(v10 + v36) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So6CGRectV_12CoreGraphics7CGFloatVtTt0g5Tf4g_n(v29);
  v37 = direct field offset for Canvas.stickerDropPreviewInfoMap;
  v38 = v29;
  v39 = v96;
  *(v10 + v37) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_8PaperKit22StickerDropPreviewInfoVTt0g5Tf4g_n(v38);
  v40 = type metadata accessor for Capsule();
  v41 = v95;
  Capsule<>.sharedCanvasElement.getter(v40, v35->Description);
  if ((*(v39 + 48))(v22, 1, v23) == 1)
  {
    goto LABEL_13;
  }

  v42 = *(v39 + 32);
  v89 = v23;
  v42(v25, v22, v23);
  v88 = v25;
  SharedTagged_10<>.layout()(v97);
  v43 = v98;
  v22 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  if (!(*(v22 + 1))(v41, 0, 0, v33, v34, v43, v22))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  type metadata accessor for ContainerCanvasElementView();
  *(v10 + direct field offset for Canvas.paperView) = swift_dynamicCastClassUnconditional();
  __swift_destroy_boxed_opaque_existential_0(v97);
  LOBYTE(v97[0]) = v91;
  v44 = v92;
  v45 = v93 & 1;
  v93 = v44;
  v46 = AnyCanvas.init(context:frame:editingMode:transparentBackground:)(v44, v97, v45, a6, a7, a8, a9);
  v47 = direct field offset for Canvas.paperView;
  v48 = *&v46[direct field offset for Canvas.paperView];
  v49 = v46;
  v50 = v48;
  specialized ContainerCanvasElementView.canvas.setter();

  [v49 addSubview_];
  v95 = v35;
  if (v94)
  {
    type metadata accessor for CanvasDropDelegate();
    v51 = v49;
    v52 = specialized CanvasDropDelegate.__allocating_init(canvas:)();

    v53 = *&v51[direct field offset for Canvas.dropDelegate];
    *&v51[direct field offset for Canvas.dropDelegate] = v52;
    v54 = v52;

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDropInteraction);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = v54;
    v57 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate_];

    if ((*((*MEMORY[0x1E69E7D40] & *v51) + 0xED8))())
    {
      v58 = v57;
      [v51 addInteraction_];
    }

    v59 = *&v51[direct field offset for Canvas.dropInteraction];
    *&v51[direct field offset for Canvas.dropInteraction] = v57;
  }

  type metadata accessor for CanvasScribbleDelegate();
  v60 = v49;
  v61 = specialized CanvasScribbleDelegate.__allocating_init(canvas:)();

  v62 = direct field offset for Canvas.scribbleDelegate;
  v63 = *&v60[direct field offset for Canvas.scribbleDelegate];
  *&v60[direct field offset for Canvas.scribbleDelegate] = v61;
  v64 = v61;

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIScribbleInteraction);
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];

  v65 = *&v60[direct field offset for Canvas.scribbleInteraction];
  *&v60[direct field offset for Canvas.scribbleInteraction] = v22;

  v66 = *&v60[v62];
  if (!v66)
  {
    goto LABEL_12;
  }

  swift_getWitnessTable();
  type metadata accessor for UIIndirectScribbleInteraction();
  v67 = v66;
  v68 = UIIndirectScribbleInteraction.__allocating_init(delegate:)();
  v69 = *&v60[direct field offset for Canvas.indirectScribbleInteraction];
  *&v60[direct field offset for Canvas.indirectScribbleInteraction] = v68;

  v70 = *&v46[v47];
  Canvas.updateScribbleIteractions(for:)(v70);

  v71 = [objc_allocWithZone(type metadata accessor for CanvasPointerDelegate()) init];
  v72 = *&v60[direct field offset for Canvas.pointerDelegate];
  *&v60[direct field offset for Canvas.pointerDelegate] = v71;
  v73 = v71;

  v74 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  swift_unknownObjectRelease();
  [v60 addInteraction_];
  v98 = &type metadata for PencilAndPaperFeatureFlags;
  v99 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v97[0]) = 0;
  LOBYTE(v73) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v97);
  v75 = v88;
  if (v73)
  {
    type metadata accessor for CanvasEditMenuDelegate();
    v76 = v60;
    v77 = specialized CanvasEditMenuDelegate.__allocating_init(canvas:)();

    v78 = *&v76[direct field offset for Canvas.editMenuInteractionDelegate];
    *&v76[direct field offset for Canvas.editMenuInteractionDelegate] = v77;
    v79 = v77;

    v80 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
    [v76 addInteraction_];
    v81 = *&v76[direct field offset for Canvas.editMenuInteraction];
    *&v76[direct field offset for Canvas.editMenuInteraction] = v80;
    v82 = v80;

    Canvas.setupBandSelection()();
  }

  v83 = v60;
  v84 = v90;
  Date.init()();

  (*(v96 + 8))(v75, v89);
  v85 = type metadata accessor for Date();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_timeOfOpeningContainerView;
  swift_beginAccess();
  outlined assign with take of Date?(v84, &v83[v86]);
  swift_endAccess();

  return v83;
}

uint64_t specialized Canvas.liveStreamMessenger.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for Canvas.liveStreamMessenger);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return Canvas.liveStreamMessenger.didset();
}

uint64_t specialized Canvas.canvasStateLiveStreamMessenger.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasStateLiveStreamMessenger + 8) = a2;
  swift_unknownObjectWeakAssign();

  return Canvas.canvasStateLiveStreamMessenger.didset();
}

uint64_t specialized Canvas.undoable(newChange:persistSelection:action:)(char a1, char a2, void *a3, uint64_t a4, uint64_t (*a5)(_BYTE *, uint64_t))
{
  return specialized Canvas.undoable(newChange:persistSelection:action:)(a1, a2, a3, a4, a5, closure #1 in closure #1 in ImageCanvasElementViewController.resizeImageCanvas(to:)partial apply, partial apply for closure #1 in closure #1 in ImageCanvasElementViewController.resizeImageCanvas(to:), closure #1 in AnyCanvas.forwardChanges(from:)partial apply);
}

{
  return specialized Canvas.undoable(newChange:persistSelection:action:)(a1, a2, a3, a4, a5, closure #1 in closure #2 in closure #2 in closure #1 in ImageCanvasElementViewController.removeImageBackground()partial apply, partial apply for closure #1 in closure #2 in closure #2 in closure #1 in ImageCanvasElementViewController.removeImageBackground(), partial apply for closure #1 in AnyCanvas.forwardChanges(from:));
}

uint64_t specialized Canvas.undoable(newChange:persistSelection:action:)(char a1, char a2, void *a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v11 = type metadata accessor for CapsuleUndoAction();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  if (*(a3 + direct field offset for Canvas.isInUndoableGroup) == 1)
  {
    *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = (*(a3 + direct field offset for Canvas.isUndoableGroupNewChange) | a1) & 1;
    v19 = specialized CanvasElementViewController.rootElement.modify(v77);
    v21 = (*(v15 + 48))(v20, 1, v14);
    if (!v21)
    {
      MEMORY[0x1EEE9AC00](v21);
      *(&v61 - 2) = a4;
      MEMORY[0x1EEE9AC00](v22);
      *(&v61 - 2) = closure #1 in closure #1 in ImageCanvasElementViewController.updateResolution(to:)partial apply;
      *(&v61 - 1) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      Capsule.callAsFunction<A>(_:)();
    }

    return (v19)(v77, 0);
  }

  v71 = v18;
  v63 = v13;
  v72 = direct field offset for Canvas.isInUndoableGroup;
  *(a3 + direct field offset for Canvas.isInUndoableGroup) = 1;
  v74 = direct field offset for Canvas.isUndoableGroupNewChange;
  *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = a1 & 1;
  v68 = direct field offset for Canvas.paperView;
  v25 = *(a3 + direct field offset for Canvas.paperView);
  v26 = *MEMORY[0x1E69E7D40] & *v25;
  v75 = &v61 - v17;
  v27 = *(v26 + 1008);
  swift_beginAccess();
  v69 = *(v15 + 16);
  v70 = v15 + 16;
  result = v69(v75, &v25[v27], v14);
  if (a2)
  {
    v28 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v28)
    {
      __break(1u);
      goto LABEL_29;
    }

    v29 = v28 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v30 = *v29;
    v31 = *(v29 + 8);
    v65 = *(v29 + 16);
    v64 = *(v29 + 24);
    v67 = v30;

    v66 = v31;
  }

  else
  {
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
  }

  v32 = specialized CanvasElementViewController.rootElement.modify(v77);
  v34 = (*(v15 + 48))(v33, 1, v14);
  if (!v34)
  {
    MEMORY[0x1EEE9AC00](v34);
    *(&v61 - 2) = a4;
    MEMORY[0x1EEE9AC00](v35);
    *(&v61 - 2) = partial apply for closure #1 in closure #1 in ImageCanvasElementViewController.updateResolution(to:);
    *(&v61 - 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
    Capsule.callAsFunction<A>(_:)();
  }

  v32(v77, 0);
  v73 = v10;
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v37 = v11;
    v38 = TaskLocal.get()();
    v39 = v77[0];
    v40 = *(v77[0] + 16);
    if (!v40)
    {
      break;
    }

    v41 = 0;
    v11 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
      }

      if (v11 >= v39[2])
      {
        break;
      }

      ++v11;
      __swift_mutable_project_boxed_opaque_existential_1(&v39[v41 + 4], v39[v41 + 7]);
      AnalyticsEvent.send()();
      v41 += 5;
      if (v40 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_18:
  v42 = v73;
  v43 = v37;
  v44 = v76;
  v45 = MEMORY[0x1E69E7D40];
  if (*(a3 + v74) != 1)
  {
    goto LABEL_22;
  }

  v46 = MEMORY[0x1EEE9AC00](v38);
  *(&v61 - 2) = a3;
  result = (*((*v45 & *a3) + 0x7C0))(closure #1 in AnyCanvas.forwardChanges(from:)partial apply, v46);
  v47 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v47)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v48 = *(v47 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
  if (v48)
  {
    *(v48 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
  }

LABEL_22:
  v49 = *(a3 + v68);
  v50 = *((*v45 & *v49) + 0x3F0);
  swift_beginAccess();
  v51 = v49 + v50;
  v52 = v71;
  v69(v71, v51, v14);
  v53 = v75;
  Capsule.actionUndoingDifference(from:)();
  v56 = *(v15 + 8);
  v55 = (v15 + 8);
  v54 = v56;
  v56(v52, v14);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    v54(v53, v14);
    outlined consume of CanvasMembers?(v67);

    result = outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v57 = *(v44 + 32);
    v58 = v43;
    v62 = v43;
    v59 = v63;
    v57(v63, v42, v58);
    v60 = v67;
    v74 = v14;
    v73 = v55;
    specialized Canvas.registerUndo(_:selection:analyticsEvents:)(v59, v67, v66, v65, v64, v39);
    outlined consume of CanvasMembers?(v60);

    (*(v44 + 8))(v59, v62);
    result = (v54)(v53, v74);
  }

  *(a3 + v72) = 0;
  return result;
}

uint64_t specialized Canvas.undoable(newChange:persistSelection:action:)(char a1, char a2, void *a3, uint64_t a4, int a5)
{
  LODWORD(v70) = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for CapsuleUndoAction();
  v71 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - v18;
  if (*(a3 + direct field offset for Canvas.isInUndoableGroup) == 1)
  {
    *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = (*(a3 + direct field offset for Canvas.isUndoableGroupNewChange) | a1) & 1;
    v20 = specialized CanvasElementViewController.rootElement.modify(v72);
    v22 = (*(v15 + 48))(v21, 1, v14);
    if (!v22)
    {
      MEMORY[0x1EEE9AC00](v22);
      *(&v57 - 16) = v70 & 1;
      Capsule.callAsFunction<A>(_:)();
    }

    return (v20)(v72, 0);
  }

  v65 = v17;
  v57 = v13;
  v67 = direct field offset for Canvas.isInUndoableGroup;
  *(a3 + direct field offset for Canvas.isInUndoableGroup) = 1;
  v68 = direct field offset for Canvas.isUndoableGroupNewChange;
  *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = a1 & 1;
  v62 = direct field offset for Canvas.paperView;
  v24 = *(a3 + direct field offset for Canvas.paperView);
  v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x3F0);
  swift_beginAccess();
  v26 = *(v15 + 16);
  v66 = v19;
  v63 = v26;
  v64 = v15 + 16;
  result = (v26)(v19, v24 + v25, v14);
  v69 = v11;
  if (a2)
  {
    v27 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v27)
    {
      __break(1u);
      goto LABEL_29;
    }

    v28 = v27 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v29 = *v28;
    v30 = *(v28 + 8);
    v59 = *(v28 + 16);
    v58 = *(v28 + 24);
    v61 = v29;

    v60 = v30;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
  }

  v31 = specialized CanvasElementViewController.rootElement.modify(v72);
  v33 = (*(v15 + 48))(v32, 1, v14);
  if (!v33)
  {
    MEMORY[0x1EEE9AC00](v33);
    *(&v57 - 16) = v70 & 1;
    Capsule.callAsFunction<A>(_:)();
  }

  v31(v72, 0);
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v34 = v10;
    v35 = TaskLocal.get()();
    v36 = v72[0];
    v37 = *(v72[0] + 16);
    if (!v37)
    {
      break;
    }

    v38 = 0;
    v10 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
      }

      if (v10 >= v36[2])
      {
        break;
      }

      ++v10;
      __swift_mutable_project_boxed_opaque_existential_1(&v36[v38 + 4], v36[v38 + 7]);
      AnalyticsEvent.send()();
      v38 += 5;
      if (v37 == v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_18:
  v39 = v69;
  v40 = v34;
  v41 = v71;
  v42 = MEMORY[0x1E69E7D40];
  if (*(a3 + v68) != 1)
  {
    goto LABEL_22;
  }

  v43 = MEMORY[0x1EEE9AC00](v35);
  *(&v57 - 2) = a3;
  result = (*((*v42 & *a3) + 0x7C0))(closure #1 in AnyCanvas.forwardChanges(from:)partial apply, v43);
  v44 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v44)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v45 = *(v44 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
  if (v45)
  {
    *(v45 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
  }

LABEL_22:
  v46 = *(a3 + v62);
  v47 = *((*v42 & *v46) + 0x3F0);
  swift_beginAccess();
  v48 = v46 + v47;
  v49 = v65;
  v63(v65, v48, v14);
  v50 = v66;
  Capsule.actionUndoingDifference(from:)();
  v53 = *(v15 + 8);
  v52 = v15 + 8;
  v51 = v53;
  v53(v49, v14);
  if ((*(v41 + 48))(v40, 1, v39) == 1)
  {
    v51(v50, v14);
    outlined consume of CanvasMembers?(v61);

    result = outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v54 = v39;
    v55 = v57;
    (*(v41 + 32))(v57, v40, v54);
    v56 = v61;
    v70 = v14;
    v68 = v52;
    specialized Canvas.registerUndo(_:selection:analyticsEvents:)(v55, v61, v60, v59, v58, v36);
    outlined consume of CanvasMembers?(v56);

    (*(v41 + 8))(v55, v69);
    result = (v51)(v50, v70);
  }

  *(a3 + v67) = 0;
  return result;
}

{
  LODWORD(v75) = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v11 = type metadata accessor for CapsuleUndoAction();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  if (*(a3 + direct field offset for Canvas.isInUndoableGroup) == 1)
  {
    *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = (*(a3 + direct field offset for Canvas.isUndoableGroupNewChange) | a1) & 1;
    v20 = specialized CanvasElementViewController.rootElement.modify(v77);
    v22 = (*(v15 + 48))(v21, 1, v14);
    if (!v22)
    {
      MEMORY[0x1EEE9AC00](v22);
      *(&v61 - 16) = v75 & 1;
      MEMORY[0x1EEE9AC00](v23);
      *(&v61 - 2) = closure #1 in closure #1 in ImageCanvasElementViewController.rotate(clockwise:)partial apply;
      *(&v61 - 1) = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      Capsule.callAsFunction<A>(_:)();
    }

    return (v20)(v77, 0);
  }

  v70 = v17;
  v62 = v13;
  v72 = direct field offset for Canvas.isInUndoableGroup;
  *(a3 + direct field offset for Canvas.isInUndoableGroup) = 1;
  v73 = direct field offset for Canvas.isUndoableGroupNewChange;
  *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = a1 & 1;
  v67 = direct field offset for Canvas.paperView;
  v26 = *(a3 + direct field offset for Canvas.paperView);
  v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x3F0);
  swift_beginAccess();
  v28 = *(v15 + 16);
  v71 = v19;
  v68 = v28;
  v69 = v15 + 16;
  result = (v28)(v19, v26 + v27, v14);
  if (a2)
  {
    v29 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v29)
    {
      __break(1u);
      goto LABEL_29;
    }

    v30 = v29 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v31 = *v30;
    v32 = *(v30 + 8);
    v64 = *(v30 + 16);
    v63 = *(v30 + 24);
    v66 = v31;

    v65 = v32;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v63 = 0;
  }

  v33 = specialized CanvasElementViewController.rootElement.modify(v77);
  v35 = (*(v15 + 48))(v34, 1, v14);
  if (!v35)
  {
    MEMORY[0x1EEE9AC00](v35);
    *(&v61 - 16) = v75 & 1;
    MEMORY[0x1EEE9AC00](v36);
    *(&v61 - 2) = partial apply for closure #1 in closure #1 in ImageCanvasElementViewController.rotate(clockwise:);
    *(&v61 - 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
    Capsule.callAsFunction<A>(_:)();
  }

  v33(v77, 0);
  v74 = v11;
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v38 = v10;
    v39 = TaskLocal.get()();
    v40 = v77[0];
    v41 = *(v77[0] + 16);
    if (!v41)
    {
      break;
    }

    v42 = 0;
    v10 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      }

      if (v10 >= v40[2])
      {
        break;
      }

      ++v10;
      __swift_mutable_project_boxed_opaque_existential_1(&v40[v42 + 4], v40[v42 + 7]);
      AnalyticsEvent.send()();
      v42 += 5;
      if (v41 == v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_18:
  v43 = v74;
  v44 = v38;
  v45 = v76;
  v46 = MEMORY[0x1E69E7D40];
  if (*(a3 + v73) != 1)
  {
    goto LABEL_22;
  }

  v47 = MEMORY[0x1EEE9AC00](v39);
  *(&v61 - 2) = a3;
  result = (*((*v46 & *a3) + 0x7C0))(closure #1 in AnyCanvas.forwardChanges(from:)partial apply, v47);
  v48 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v48)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v49 = *(v48 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
  if (v49)
  {
    *(v49 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
  }

LABEL_22:
  v50 = *(a3 + v67);
  v51 = *((*v46 & *v50) + 0x3F0);
  swift_beginAccess();
  v52 = v50 + v51;
  v53 = v70;
  v68(v70, v52, v14);
  v54 = v71;
  Capsule.actionUndoingDifference(from:)();
  v57 = *(v15 + 8);
  v56 = v15 + 8;
  v55 = v57;
  v57(v53, v14);
  if ((*(v45 + 48))(v44, 1, v43) == 1)
  {
    v55(v54, v14);
    outlined consume of CanvasMembers?(v66);

    result = outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v58 = v43;
    v59 = v62;
    (*(v45 + 32))(v62, v44, v58);
    v60 = v66;
    v75 = v14;
    v73 = v56;
    specialized Canvas.registerUndo(_:selection:analyticsEvents:)(v59, v66, v65, v64, v63, v40);
    outlined consume of CanvasMembers?(v60);

    (*(v45 + 8))(v59, v74);
    result = (v55)(v54, v75);
  }

  *(a3 + v72) = 0;
  return result;
}

uint64_t specialized Canvas.undoable(newChange:persistSelection:action:)(char a1, char a2, void *a3, uint64_t a4, uint64_t (*a5)(_BYTE *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v74 = a5;
  v70 = a7;
  v71 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v59[-v12];
  v14 = type metadata accessor for CapsuleUndoAction();
  v76 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59[-v21];
  if (*(a3 + direct field offset for Canvas.isInUndoableGroup) == 1)
  {
    *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = (*(a3 + direct field offset for Canvas.isUndoableGroupNewChange) | a1) & 1;
    v23 = specialized CanvasElementViewController.rootElement.modify(v77);
    v25 = (*(v17 + 48))(v24, 1, v16);
    if (!v25)
    {
      MEMORY[0x1EEE9AC00](v25);
      *&v59[-16] = v74;
      Capsule.callAsFunction<A>(_:)();
    }

    return (v23)(v77, 0);
  }

  v69 = v14;
  v67 = direct field offset for Canvas.isInUndoableGroup;
  *(a3 + direct field offset for Canvas.isInUndoableGroup) = 1;
  v71 = direct field offset for Canvas.isUndoableGroupNewChange;
  *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = a1 & 1;
  v64 = direct field offset for Canvas.paperView;
  v27 = *(a3 + direct field offset for Canvas.paperView);
  v28 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x3F0);
  swift_beginAccess();
  v29 = *(v17 + 16);
  v72 = v22;
  v65 = v29;
  v66 = v17 + 16;
  result = (v29)(v22, v27 + v28, v16);
  v30 = v16;
  if (a2)
  {
    v31 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v31)
    {
      __break(1u);
      goto LABEL_29;
    }

    v32 = v31 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v33 = *v32;
    v34 = *(v32 + 8);
    v61 = *(v32 + 16);
    v60 = *(v32 + 24);
    v63 = v33;

    v62 = v34;
  }

  else
  {
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
  }

  v35 = specialized CanvasElementViewController.rootElement.modify(v77);
  v37 = (*(v17 + 48))(v36, 1, v16);
  v68 = v13;
  if (!v37)
  {
    MEMORY[0x1EEE9AC00](v37);
    *&v59[-16] = v74;
    Capsule.callAsFunction<A>(_:)();
  }

  v35(v77, 0);
  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v38 = TaskLocal.get()();
    v39 = v77[0];
    v40 = *(v77[0] + 16);
    if (!v40)
    {
      break;
    }

    v41 = 0;
    v42 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
      }

      if (v42 >= v39[2])
      {
        break;
      }

      ++v42;
      __swift_mutable_project_boxed_opaque_existential_1(&v39[v41 + 4], v39[v41 + 7]);
      AnalyticsEvent.send()();
      v41 += 5;
      if (v40 == v42)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_18:
  v43 = v17;
  v44 = v68;
  v45 = MEMORY[0x1E69E7D40];
  if (*(a3 + v71) != 1)
  {
    goto LABEL_22;
  }

  v46 = MEMORY[0x1EEE9AC00](v38);
  *&v59[-16] = a3;
  result = (*((*v45 & *a3) + 0x7C0))(v73, v46);
  v47 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v47)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v48 = *(v47 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
  if (v48)
  {
    *(v48 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
  }

LABEL_22:
  v49 = *(a3 + v64);
  v50 = *((*v45 & *v49) + 0x3F0);
  swift_beginAccess();
  v65(v19, &v49[v50], v30);
  v51 = v72;
  Capsule.actionUndoingDifference(from:)();
  v52 = *(v43 + 8);
  v52(v19, v30);
  v53 = v76;
  v54 = v69;
  if ((*(v76 + 48))(v44, 1, v69) == 1)
  {
    v52(v51, v30);
    outlined consume of CanvasMembers?(v63);

    result = outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v55 = v75;
    (*(v53 + 32))(v75, v44, v54);
    v74 = v52;
    v56 = a3;
    v57 = v63;
    specialized Canvas.registerUndo(_:selection:analyticsEvents:)(v55, v63, v62, v61, v60, v39);
    v58 = v57;
    a3 = v56;
    outlined consume of CanvasMembers?(v58);

    (*(v53 + 8))(v75, v54);
    result = v74(v72, v30);
  }

  *(a3 + v67) = 0;
  return result;
}

void specialized Canvas.undoable(newChange:persistSelection:action:)(char a1, int a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v67 = a6;
  LODWORD(v66) = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v51[-v12];
  v13 = type metadata accessor for CapsuleUndoAction();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51[-v20];
  if (*(a3 + direct field offset for Canvas.isInUndoableGroup) == 1)
  {
    *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = (*(a3 + direct field offset for Canvas.isUndoableGroupNewChange) | a1) & 1;
    v22 = *(a4 + direct field offset for Canvas.paperView);
    swift_beginAccess();
    v23 = v22;
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();

    return;
  }

  v67 = a7;
  v61 = v14;
  v62 = v13;
  v60 = direct field offset for Canvas.isInUndoableGroup;
  *(a3 + direct field offset for Canvas.isInUndoableGroup) = 1;
  v55 = v19;
  v56 = direct field offset for Canvas.isUndoableGroupNewChange;
  *(a3 + direct field offset for Canvas.isUndoableGroupNewChange) = a1 & 1;
  v57 = direct field offset for Canvas.paperView;
  v24 = *(a3 + direct field offset for Canvas.paperView);
  v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x3F0);
  swift_beginAccess();
  v26 = *(v17 + 16);
  v63 = v21;
  v58 = v26;
  v59 = v17;
  v26(v21, &v24[v25], v16);
  v27 = v16;
  if (v66)
  {
    v28 = *(a3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v30 = *v29;
    v31 = *(v29 + 8);
    v53 = *(v29 + 16);
    v52 = *(v29 + 24);
    v66 = v30;

    v54 = v31;
  }

  else
  {
    v66 = 0;
    v54 = 0;
    v53 = 0;
    v52 = 0;
  }

  v32 = *(a4 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  v33 = v32;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();

  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    TaskLocal.get()();
    v34 = v68;
    v35 = v68[2];
    if (!v35)
    {
      break;
    }

    v36 = 0;
    v37 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      }

      if (v37 >= v34[2])
      {
        break;
      }

      ++v37;
      __swift_mutable_project_boxed_opaque_existential_1(&v34[v36 + 4], v34[v36 + 7]);
      AnalyticsEvent.send()();
      v36 += 5;
      if (v35 == v37)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_14:
  v38 = MEMORY[0x1E69E7D40];
  if (*(a3 + v56) == 1)
  {
    LOBYTE(v68) = 3;
    (*((*MEMORY[0x1E69E7D40] & *a3) + 0x7B0))(&v68);
  }

  v39 = *(a3 + v57);
  v40 = *((*v38 & *v39) + 0x3F0);
  swift_beginAccess();
  v41 = v39 + v40;
  v42 = v55;
  v58(v55, v41, v27);
  v43 = v65;
  v44 = v63;
  Capsule.actionUndoingDifference(from:)();
  v45 = *(v59 + 8);
  v45(v42, v27);
  v47 = v61;
  v46 = v62;
  if ((*(v61 + 48))(v43, 1, v62) == 1)
  {
    v45(v44, v27);
    outlined consume of CanvasMembers?(v66);

    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence17CapsuleUndoActionVSgMd);
  }

  else
  {
    v48 = v64;
    (*(v47 + 32))(v64, v43, v46);
    v49 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x6D8);
    v50 = v66;
    v67 = v45;
    v49(v48, v66, v54, v53, v52, v34);
    outlined consume of CanvasMembers?(v50);

    (*(v47 + 8))(v64, v46);
    v67(v63, v27);
  }

  *(a3 + v60) = 0;
}

uint64_t specialized Canvas.hitChromeForCanvasElementView(_:location:isStylus:event:)(int a1, void *a2, double a3, double a4)
{
  v9 = type metadata accessor for PKLassoTool();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = &type metadata for PencilAndPaperFeatureFlags;
  v35[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v35[0]) = 0;
  v13 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v35);
  if (v13)
  {
    v31 = v10;
    v32 = v9;
    v34 = a1;
    v33 = a2;
    AnyCanvas.overlays.getter();
    v15 = v14;
    v16 = *(v14 + 16);
    v17 = v16 + 1;
    v18 = 16 * v16 + 16;
    while (--v17)
    {
      if (v17 > *(v15 + 16))
      {
        __break(1u);
LABEL_15:
        if (v34)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v19 = v18 - 16;
      v20 = *(v4 + direct field offset for Canvas.paperView);
      v21 = *(v15 + v18);
      [v20 convertPoint:v21 toCoordinateSpace:{a3, a4}];
      v22 = [v21 hitTest:0 withEvent:?];

      v18 = v19;
      if (v22)
      {

        LOBYTE(v23) = 1;
        return v23 & 1;
      }
    }

    v25 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x468))(v24);
    if (!v25)
    {
      goto LABEL_15;
    }

    v26 = v25;
    v27 = [v25 allowsFingerDrawing];

    if (!v27)
    {
      goto LABEL_15;
    }

    Canvas.tool.getter(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit6PKTool_pMd);
    v28 = v32;
    v23 = swift_dynamicCast();
    if (!v23)
    {
      return v23 & 1;
    }

    (*(v31 + 8))(v12, v28);
    if ((v34 & 1) == 0)
    {
LABEL_11:
      LOBYTE(v23) = v33 && [v33 buttonMask] == 2 || Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(__PAIR128__(*&a4, *&a3));
      return v23 & 1;
    }
  }

LABEL_16:
  LOBYTE(v23) = 0;
  return v23 & 1;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
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

  specialized LazyMapSequence.Iterator.next()(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  outlined init with take of Any(v44, v42);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
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
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
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
    specialized _NativeDictionary.copy()();
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
    __swift_destroy_boxed_opaque_existential_0(v25);
    outlined init with take of Any(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = outlined init with take of Any(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        outlined init with take of Any(v44, v42);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
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
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
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
          __swift_destroy_boxed_opaque_existential_0(v31);
          outlined init with take of Any(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = outlined init with take of Any(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        specialized LazyMapSequence.Iterator.next()(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    outlined consume of Set<UIColor>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Canvas.liveStreamMessenger.getter()
{
  v1 = v0 + direct field offset for Canvas.liveStreamMessenger;
  swift_beginAccess();
  return *v1;
}

uint64_t specialized Canvas.updatablePaper2.setter(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *(v1 + direct field offset for Canvas.paperView);
  v5 = *((*v4 & *MEMORY[0x1E69E7D40]) + 0x3F0);
  swift_beginAccess();
  v6 = type metadata accessor for Capsule();
  v7 = *(*(v6 - 8) + 24);
  v8 = v4;
  v7(v4 + v5, a1, v6);
  swift_endAccess();

  v10[0] = 3;
  return (*((*v3 & *v1) + 0x7B0))(v10);
}

void specialized Canvas.rootElement.setter(uint64_t a1)
{
  v3 = *(v1 + direct field offset for Canvas.paperView);
  v4 = *((*v3 & *MEMORY[0x1E69E7D40]) + 0x3F0);
  swift_beginAccess();
  v5 = type metadata accessor for Capsule();
  v6 = *(*(v5 - 8) + 24);
  v7 = v3;
  v6(v3 + v4, a1, v5);
  swift_endAccess();
}

uint64_t specialized Canvas.paper.setter(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  v3 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1);
  v7 = *(v2 - 8);
  result = (*(v7 + 48))(v5, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    specialized Canvas.rootElement.setter(v5);
    return (*(v7 + 8))(v5, v2);
  }

  return result;
}

uint64_t specialized Canvas.dropInteraction(_:canHandle:)(void *a1)
{
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0xED8))() & 1) == 0)
  {
    return 0;
  }

  result = AnyCanvas.acceptedDropLayouts.getter();
  v4 = result;
  v5 = result + 40;
  v6 = -*(result + 16);
  v7 = -1;
  do
  {
    if (v6 + v7 == -1)
    {

      return 0;
    }

    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = v5 + 16;
    result = (*(*v5 + 24))(a1);
    v5 = v8;
  }

  while ((result & 1) == 0);

  [a1 locationInView_];

  return Canvas.isValidDropPoint(dropLocation:)(v9, v10);
}

id specialized Canvas.dropInteraction(_:sessionDidUpdate:)(void *a1)
{
  v2 = v1;
  if ((Canvas.dropSessionFromCurrentCanvas(session:)(a1) & 1) == 0)
  {
    [a1 locationInView_];
    if (Canvas.isValidDropPoint(dropLocation:)(v4, v5))
    {
      *(v1 + direct field offset for Canvas.dropSessionType) = 0;
      v6 = [a1 localDragSession];
      if (v6)
      {
        v7 = [v6 localContext];
        swift_unknownObjectRelease();
        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = 0u;
          v22 = 0u;
        }

        v23 = v21;
        v24 = v22;
        if (*(&v22 + 1))
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
          if (swift_dynamicCast())
          {
            v10 = v21;
            type metadata accessor for AnyCanvas();
            v11 = swift_dynamicCastClass();
            v12 = MEMORY[0x1E69E7D40];
            if (v11)
            {
              v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x468);
              v14 = v21;
              v15 = v13();
            }

            else
            {
              v15 = 0;
            }

            v17 = (*((*v12 & *v2) + 0x468))();
            v18 = v17;
            if (v15)
            {
              if (v17)
              {
                type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKTiledView);
                v19 = static NSObject.== infix(_:_:)();

                if ((v19 & 1) == 0)
                {
LABEL_29:
                  v20 = [v2 isDescendantOfView_];

                  if (v20)
                  {
                    *(v2 + direct field offset for Canvas.dropSessionType) = 2;
                  }

                  goto LABEL_16;
                }

                goto LABEL_26;
              }

              v18 = v15;
            }

            else if (!v17)
            {
LABEL_26:

              *(v2 + direct field offset for Canvas.dropSessionType) = 1;
              goto LABEL_16;
            }

            goto LABEL_29;
          }

LABEL_16:
          if (*(v2 + direct field offset for Canvas.dropSessionType))
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          return [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
        }
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(&v23, &_sypSgMd);
      goto LABEL_16;
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x1E69DC9C0]);

  return [v8 initWithDropOperation_];
}

void specialized Canvas.dropInteraction(_:performDrop:)(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v79 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *((v5 & v4) + 0xB58);
  v86 = *((v5 & v4) + 0xB50);
  v85 = v6;
  v84 = type metadata accessor for Capsule();
  v7 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v72 - v8;
  Canvas.dropFrame(session:)(a1, &aBlock.origin.x);
  x = aBlock.origin.x;
  y = aBlock.origin.y;
  width = aBlock.size.width;
  height = aBlock.size.height;
  v13 = *&v92;
  v14 = [a1 items];
  v82 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = v7;
  v81 = a1;
  if (v15 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v17 = 0;
    v88 = (v15 & 0xC000000000000001);
    while (1)
    {
      if (v88)
      {
        v18 = MEMORY[0x1DA6CE0C0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 itemProvider];
      v22 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      v23 = [v21 hasItemConformingToTypeIdentifier_];

      if (v23)
      {

        v24 = [v19 itemProvider];
        v25 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
        v26 = swift_allocObject();
        *(v26 + 16) = v2;
        *(v26 + 24) = x;
        *(v26 + 32) = y;
        *(v26 + 40) = width;
        *(v26 + 48) = height;
        v92 = partial apply for closure #2 in Canvas.dropInteraction(_:performDrop:);
        v93 = v26;
        *&aBlock.origin.x = MEMORY[0x1E69E9820];
        *&aBlock.origin.y = 1107296256;
        *&aBlock.size.width = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        *&aBlock.size.height = &block_descriptor_111;
        v27 = _Block_copy(&aBlock);
        v28 = v2;

        v29 = [v24 loadFileRepresentationForTypeIdentifier:v25 completionHandler:v27];
        _Block_release(v27);

        goto LABEL_46;
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v30 = [v81 items];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
    goto LABEL_44;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32)
  {
LABEL_18:
    v81 = 0;
    v33 = 0;
    v77 = direct field offset for Canvas.dropTargets;
    v78 = v31 & 0xC000000000000001;
    v74 = v31 & 0xFFFFFFFFFFFFFF8;
    v73 = v31 + 32;
    v82 = (v80 + 8);
    v87 = v2;
    v76 = v31;
    v75 = v32;
    do
    {
      if (v78)
      {
        v34 = MEMORY[0x1DA6CE0C0](v33, v31);
      }

      else
      {
        if (v33 >= *(v74 + 16))
        {
          goto LABEL_43;
        }

        v34 = *(v73 + 8 * v33);
      }

      v35 = v34;
      v36 = __OFADD__(v33, 1);
      v37 = v33 + 1;
      if (v36)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v32 = __CocoaSet.count.getter();
        if (!v32)
        {
          break;
        }

        goto LABEL_18;
      }

      v80 = v37;
      v88 = [v34 itemProvider];
      v38 = v83;
      v39 = CanvasElementView.canvasElement.getter(v83);
      MEMORY[0x1EEE9AC00](v39);
      v40 = v85;
      *(&v72 - 4) = v86;
      *(&v72 - 3) = v40;
      v41 = *(v79 + 2912);
      *(&v72 - 2) = v41;
      swift_getKeyPath();
      v42 = v84;
      Capsule.subscript.getter();

      v43 = *v82;
      (*v82)(v38, v42);
      v44 = CGRectGetWidth(aBlock) + -32.0;
      v94.origin.x = x;
      v94.origin.y = y;
      v94.size.width = width;
      v94.size.height = height;
      v45 = v44 - CGRectGetWidth(v94);
      if (x >= 32.0)
      {
        if (x < v45)
        {
          v45 = x;
        }
      }

      else if (v45 > 32.0)
      {
        v45 = 32.0;
        v46 = 32.0;
        if (y < 32.0)
        {
          goto LABEL_34;
        }

LABEL_33:
        v46 = y;
        goto LABEL_34;
      }

      v46 = 32.0;
      if (y >= 32.0)
      {
        goto LABEL_33;
      }

LABEL_34:
      v47 = v81 * 32.0;
      v48 = v47 + v45;
      v49 = v47 + v46;
      v50 = v83;
      v51 = CanvasElementView.canvasElement.getter(v83);
      MEMORY[0x1EEE9AC00](v51);
      v52 = v85;
      *(&v72 - 4) = v86;
      *(&v72 - 3) = v52;
      *(&v72 - 2) = v41;
      swift_getKeyPath();
      v53 = v84;
      Capsule.subscript.getter();

      v43(v50, v53);
      v54 = v48 + aBlock.origin.x;
      v55 = v49 + aBlock.origin.y;
      v31 = v77;
      swift_beginAccess();
      v56 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *&v2[v31];
      *&v2[v31] = 0x8000000000000000;
      v90 = v58;
      *v89 = x;
      *&v89[1] = y;
      *&v89[2] = width;
      *&v89[3] = height;
      *&v89[4] = v13;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v56, isUniquelyReferenced_nonNull_native);

      *&v2[v31] = v90;
      swift_endAccess();
      v59 = AnyCanvas.acceptedDropLayouts.getter();
      v60 = v59 + 40;
      v61 = -*(v59 + 16);
      v62 = -1;
      do
      {
        if (v61 + v62 == -1)
        {

          goto LABEL_20;
        }

        if (++v62 >= *(v59 + 16))
        {
          goto LABEL_41;
        }

        v63 = v60 + 16;
        v64 = *(v60 - 8);
        v2 = *v60;
        v65 = *(*v60 + 16);
        v31 = v56;
        LOBYTE(v64) = v65(v88, v87, v56, v64, v2, v54, v55, width, height, v13);

        v60 = v63;
      }

      while ((v64 & 1) == 0);

      v36 = __OFADD__(v81++, 1);
      if (v36)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_20:
      v33 = v80;
      v2 = v87;
      v31 = v76;
    }

    while (v80 != v75);
  }

LABEL_46:
  v66 = v2[direct field offset for Canvas.dropSessionType];
  if (v66 == 3)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Analytics();
    inited = swift_initStaticObject();
    v68 = swift_allocObject();
    *(v68 + 16) = inited;
    *(v68 + 24) = v66;
    v69 = MEMORY[0x1DA6CCED0](0xD00000000000001ELL, 0x80000001D4080710);
    v70 = swift_allocObject();
    *(v70 + 16) = partial apply for implicit closure #1 in Analytics.recordDragAndDropEvent(type:);
    *(v70 + 24) = v68;
    v92 = partial apply for closure #1 in Analytics.sendEventLazy(key:payload:);
    v93 = v70;
    *&aBlock.origin.x = MEMORY[0x1E69E9820];
    *&aBlock.origin.y = 1107296256;
    *&aBlock.size.width = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    *&aBlock.size.height = &block_descriptor_120;
    v71 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v71);

    v2[direct field offset for Canvas.dropSessionType] = 3;
  }
}

id specialized Canvas.dropInteraction(_:previewForDropping:withDefault:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = direct field offset for Canvas.dropTargets;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v9)
  {
    v10 = *(v7 + 56) + 40 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);

    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(a1, v57);
    swift_endAccess();
    v16 = [a1 itemProvider];
    v17 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
    v18 = [v16 hasItemConformingToTypeIdentifier_];

    if (v18)
    {
      return specialized Canvas.stickerDropInteraction(_:previewForDropping:withDefault:)(a1, a2);
    }

    else
    {
      CGAffineTransformMakeRotation(&t1, v15);
      tx = t1.tx;
      ty = t1.ty;
      v48 = *&t1.c;
      v51 = *&t1.a;
      v58.origin.x = v11;
      v58.origin.y = v12;
      v58.size.width = v13;
      v58.size.height = v14;
      Width = CGRectGetWidth(v58);
      [a2 size];
      v24 = Width / v23;
      v59.origin.x = v11;
      v59.origin.y = v12;
      v59.size.width = v13;
      v59.size.height = v14;
      Height = CGRectGetHeight(v59);
      [a2 size];
      CGAffineTransformMakeScale(&t1, v24, Height / v26);
      v27 = *&t1.a;
      v28 = *&t1.c;
      v29 = *&t1.tx;
      *&t1.a = v51;
      *&t1.c = v48;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v27;
      *&t2.c = v28;
      *&t2.tx = v29;
      v30 = CGAffineTransformConcat(&v54, &t1, &t2);
      v49 = *&v54.c;
      v52 = *&v54.a;
      v31 = v54.tx;
      v32 = v54.ty;
      v33 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x450))(v30);
      if (v33)
      {
        v34 = v33;
        [v33 zoomScale];
        v36 = v35;
      }

      else
      {
        v36 = 1.0;
      }

      CGAffineTransformMakeScale(&t1, v36, v36);
      v37 = *&t1.a;
      v38 = *&t1.c;
      v39 = *&t1.tx;
      *&t1.a = v52;
      *&t1.c = v49;
      t1.tx = v31;
      t1.ty = v32;
      *&t2.a = v37;
      *&t2.c = v38;
      *&t2.tx = v39;
      CGAffineTransformConcat(&v54, &t1, &t2);
      v40 = v54.tx;
      v41 = v54.ty;
      v50 = *&v54.c;
      v53 = *&v54.a;
      v42 = Canvas.editingView.getter();
      v60.origin.x = v11;
      v60.origin.y = v12;
      v60.size.width = v13;
      v60.size.height = v14;
      MidX = CGRectGetMidX(v60);
      v61.origin.x = v11;
      v61.origin.y = v12;
      v61.size.width = v13;
      v61.size.height = v14;
      MidY = CGRectGetMidY(v61);
      v45 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
      *&t1.a = v53;
      *&t1.c = v50;
      t1.tx = v40;
      t1.ty = v41;
      v46 = [v45 initWithContainer:v42 center:&t1 transform:{MidX, MidY}];

      v47 = [a2 retargetedPreviewWithTarget_];
      return v47;
    }
  }

  else
  {

    return 0;
  }
}

void specialized Canvas.dropInteraction(_:item:willAnimateDropWith:)(void *a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v9[4] = partial apply for closure #1 in Canvas.dropInteraction(_:item:willAnimateDropWith:);
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v9[3] = &block_descriptor_69;
  v6 = _Block_copy(v9);
  v7 = v2;
  v8 = a1;

  [a2 addCompletion_];
  _Block_release(v6);
}

uint64_t specialized Canvas.dropInteraction(_:sessionDidEnter:)(uint64_t result)
{
  v2 = *(v1 + direct field offset for Canvas.dropInteraction);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    *(v1 + direct field offset for Canvas.dropInteractionSessionIsActive) = 1;
  }

  return result;
}

uint64_t specialized Canvas.dropInteraction(_:sessionDidEnd:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + direct field offset for Canvas.dropInteraction);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(v1 + direct field offset for Canvas.dropInteractionSessionIsActive) = 0;
  }

  v5 = direct field offset for Canvas.dropCompletions;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = )
  {
    v13 = i;
LABEL_15:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(*(v6 + 56) + ((v13 << 10) | (16 * v14)));

    v15(v16);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v17 = direct field offset for Canvas.dropCompletions;
      swift_beginAccess();
      v18 = MEMORY[0x1E69E7CC8];
      *(v2 + v17) = MEMORY[0x1E69E7CC8];

      v19 = direct field offset for Canvas.delayedPreviewProviders;
      swift_beginAccess();
      *(v2 + v19) = v18;

      v20 = direct field offset for Canvas.stickerDropPreviewInfoMap;
      swift_beginAccess();
      *(v2 + v20) = v18;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Canvas._dropInteraction(_:delayedPreviewProviderForDropping:previewProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = direct field offset for Canvas.delayedPreviewProviders;
  swift_beginAccess();
  v10 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for thunk for @escaping @callee_guaranteed (@guaranteed VNDocumentCameraScan?) -> (), v8, v10, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v13;
  return swift_endAccess();
}

void specialized Canvas.init(coder:)()
{
  *(v0 + direct field offset for Canvas.multipeerConnection) = 0;
  *(v0 + direct field offset for Canvas.multipeerCanvasStateConnection) = 0;
  *(v0 + direct field offset for Canvas.removeOldEraserStrokesTimer) = 0;
  *(v0 + direct field offset for Canvas.maxHeadroomForAllElements) = 0;
  v1 = (v0 + direct field offset for Canvas.liveStreamMessenger);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + direct field offset for Canvas.childViewControllerCancellable) = 0;
  *(v0 + direct field offset for Canvas.finalizeTimer) = 0;
  *(v0 + direct field offset for Canvas.xpcMulticast) = 0;
  v2 = (v0 + direct field offset for Canvas._editingView);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + direct field offset for Canvas._canvasElementController) = 0;
  v3 = direct field offset for Canvas.delayedPreviewProviders;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_ySo21UITargetedDragPreviewCcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = direct field offset for Canvas.dropCompletions;
  *(v0 + v5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_yycTt0g5Tf4g_n(v4);
  *(v0 + direct field offset for Canvas.dropSessionType) = 3;
  *(v0 + direct field offset for Canvas.scribbleDelegate) = 0;
  *(v0 + direct field offset for Canvas.scribbleInteraction) = 0;
  *(v0 + direct field offset for Canvas.indirectScribbleInteraction) = 0;
  *(v0 + direct field offset for Canvas.pointerDelegate) = 0;
  *(v0 + direct field offset for Canvas.dropInteractionSessionIsActive) = 0;
  *(v0 + direct field offset for Canvas.dropInteraction) = 0;
  *(v0 + direct field offset for Canvas.dropDelegate) = 0;
  *(v0 + direct field offset for Canvas.editMenuInteraction) = 0;
  *(v0 + direct field offset for Canvas.editMenuInteractionDelegate) = 0;
  v6 = v0 + direct field offset for Canvas.visibleBoundsOverride;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v7 = direct field offset for Canvas.subscriptions;
  type metadata accessor for Canvas.PaperViewCanvasSubscription();
  *(v0 + v7) = Array.init()();
  *(v0 + direct field offset for Canvas.isInUndoableGroup) = 0;
  *(v0 + direct field offset for Canvas.isUndoableGroupNewChange) = 0;
  *(v0 + direct field offset for Canvas.eraserCheckingIndex) = 0;
  v8 = direct field offset for Canvas.dropTargets;
  *(v0 + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So6CGRectV_12CoreGraphics7CGFloatVtTt0g5Tf4g_n(v4);
  v9 = direct field offset for Canvas.stickerDropPreviewInfoMap;
  *(v0 + v9) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_8PaperKit22StickerDropPreviewInfoVTt0g5Tf4g_n(v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized Canvas.keyCommands.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D40664F0;
  v1 = MEMORY[0x1DA6CCED0](97, 0xE100000000000000);
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0x100000 action:sel_selectAllKeyCommand];

  *(v0 + 32) = v3;
  v4 = MEMORY[0x1DA6CCED0](97, 0xE100000000000000);
  v5 = [v2 keyCommandWithInput:v4 modifierFlags:1179648 action:sel_deselectAllKeyCommand];

  *(v0 + 40) = v5;
  *(v0 + 48) = [v2 keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_deselectAllKeyCommand];
  return v0;
}

unint64_t lazy protocol witness table accessor for type UIPress and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIPress and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIPress and conformance NSObject)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, &lazy cache variable for type metadata for UIPress);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIPress and conformance NSObject);
  }

  return result;
}

uint64_t dispatch thunk of Canvas.visibleBoundsOverride.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t type metadata completion function for Canvas.PaperViewCanvasSubscription()
{
  type metadata accessor for Capsule();
  result = type metadata accessor for AnySubscriber();
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

uint64_t type metadata instantiation function for Canvas.PaperViewCanvasPublisher()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Canvas.PaperViewCanvasPublisher(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Canvas.PaperViewCanvasPublisher(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in AnySubscriber.init<A>(_:)()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t partial apply for closure #6 in AnySubscriber.init<A>(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

uint64_t specialized Canvas.PaperViewCanvasSubscription.init(canvas:live:subscriber:)(uint64_t a1, char a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v6 = *(*v3 + 120);
  type metadata accessor for Capsule();
  v7 = type metadata accessor for AnySubscriber();
  (*(*(v7 - 8) + 32))(v3 + v6, a3, v7);
  swift_unknownObjectWeakAssign();
  *(v3 + *(*v3 + 136)) = a2;
  return v3;
}

uint64_t partial apply for closure #5 in AnySubscriber.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = dispatch thunk of CustomStringConvertible.description.getter();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb8inserted_8PaperKit15MiniMenuOptionsV17memberAfterInserttSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb8inserted_8PaperKit15MiniMenuOptionsV17memberAfterInserttSg_TG5(a1, v4);
}

void partial apply for closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CapsuleUndoAction() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v6 + 24);

  closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(a1, v1 + v4, v7, v8, v9, v11, v10);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRStableAsset() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #1 in closure #2 in Canvas.dropInteraction(_:performDrop:)(v12, v13, v14, v15, a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t partial apply for closure #1 in Canvas.harmonizeImage(_:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in Canvas.harmonizeImage(_:)(a1, v6, v7, v9, v10, v4, v5, v8);
}

uint64_t partial apply for closure #1 in Canvas.harmonizeCanvasElement<A>(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRAssetOrData() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in Canvas.harmonizeCanvasElement<A>(_:)(a1, v7, v8, v9, v1 + v6);
}

uint64_t partial apply for closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for Capsule() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[7];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(a1, v11, v12, v13, v1 + v7, v1 + v10, v5, v4);
}

uint64_t partial apply for closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v15 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Capsule() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(a1, v11, v12, v1 + v15, v1 + v4, v9, v1 + v7, v10);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)()
{
  v1 = *(type metadata accessor for Capsule() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd) - 8);
  v6 = *(v0 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(v0 + 40, v6, v0 + v2, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Capsule() - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[12];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Canvas.renderImage(canvasElement:renderer:renderID:)(a1, v9, v10, (v1 + 7), v12, v1 + v6, v11, v13);
}

uint64_t partial apply for implicit closure #1 in Canvas.asyncMaxHeadroom()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return implicit closure #1 in Canvas.asyncMaxHeadroom()(a1, v4);
}

uint64_t partial apply for closure #1 in Canvas.itemProvider(for:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t partial apply for closure #1 in closure #2 in Canvas.itemProvider(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #2 in Canvas.itemProvider(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #3 in Canvas.itemProvider(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #3 in Canvas.itemProvider(for:)(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t partial apply for closure #1 in Canvas.mergeUndoable<A>(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v5 = 3;
  return AnyCanvas.merge<A>(_:from:)(v3, &v5, v1, v2);
}

uint64_t partial apply for closure #2 in Canvas.hide(strokes:)(uint64_t a1)
{
  v4 = *(type metadata accessor for PKDrawing() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in Canvas.hide(strokes:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in Canvas.removeImageBackground(for:)(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t partial apply for closure #2 in Canvas.removeImageBackground(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in Canvas.removeImageBackground(for:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v8 = *(v1 + 48);
  v6 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10 = v6;
  return closure #2 in closure #1 in Canvas.removeImageBackground(for:)(a1, v2, v3, v4, v5, &v8);
}

uint64_t objectdestroy_255Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in Canvas.removeImageBackground(for:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd);

  return closure #1 in closure #1 in closure #1 in Canvas.removeImageBackground(for:)(a1, a2);
}

void partial apply for specialized closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CapsuleUndoAction() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v6 + 24);

  specialized closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(a1, v1 + v4, v7, v8, v9, v11, v10);
}

uint64_t partial apply for specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Image(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(a1, v6, v7, v8, v1 + v5);
}

void partial apply for specialized closure #1 in CanvasElementViewController.canvasView.setter()
{
  partial apply for specialized closure #1 in CanvasElementViewController.canvasView.setter();
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  *(v2 + direct field offset for CanvasElementViewController._canvasView) = v1;
  v4 = v1;

  specialized CanvasElementViewController._canvasView.didset();
}

uint64_t partial apply for specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility()(a1, v4, v5, v6);
}

void partial apply for specialized closure #1 in CanvasElementViewController.analysis.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + direct field offset for CanvasElementViewController._analysis);
  *(v2 + direct field offset for CanvasElementViewController._analysis) = v1;
  v4 = v1;
  specialized CanvasElementViewController._analysis.didset(v3);
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed Capsule<Image>.Ref) -> ()@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay8PaperKit0D18DocumentFindResultVG_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSi_TG5(a1, v4);
}

uint64_t _s8PaperKit0A6MarkupVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit0A6MarkupVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8PaperKit13CRAssetOrDataOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in CalculateResultAttributionHandler.init()(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateResultAttributionHandler.init(), v3, v2);
}

uint64_t closure #1 in CalculateResultAttributionHandler.init()()
{
  type metadata accessor for StocksKitCurrencyCache();
  *(v0 + 48) = static StocksKitCurrencyCache.shared.getter();
  v3 = (*MEMORY[0x1E69921F8] + MEMORY[0x1E69921F8]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CalculateResultAttributionHandler.init();

  return v3();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in CalculateResultAttributionHandler.init()(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateResultAttributionHandler.init(), v5, v4);
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t specialized CalculateResultAttributionHandler.lightModeImage()()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](specialized CalculateResultAttributionHandler.lightModeImage(), v3, v2);
}

{
  if (*(v0[2] + 16))
  {

    v1 = *(v0[2] + 16);

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    type metadata accessor for StocksKitCurrencyCache();
    v0[10] = static StocksKitCurrencyCache.shared.getter();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = specialized CalculateResultAttributionHandler.lightModeImage();
    v5 = v0[6];

    return MEMORY[0x1EEDF1D98](v5);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](specialized CalculateResultAttributionHandler.lightModeImage(), v4, v3);
}

{
  v1 = v0[6];

  v2 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[6], &_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd);
  }

  else
  {
    v6 = StocksKitCurrencyCache.Provider.logo.getter();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = v0[2];
      v10 = (v7 + *(v0[3] + 36));
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd) + 28);
      v12 = *MEMORY[0x1E697DBB8];
      v13 = type metadata accessor for ColorScheme();
      (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
      *v10 = swift_getKeyPath();
      *v7 = v6;
      outlined init with copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<ColorScheme>>(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCyAA15ModifiedContentVyAA0C0VAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGGMd);
      swift_allocObject();
      MEMORY[0x1DA6C98B0](v8);
      v14 = [objc_opt_self() mainScreen];
      [v14 scale];

      v15 = ImageRenderer.scale.setter();
      v16 = MEMORY[0x1DA6C9890](v15);

      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd);
      v17 = *(v9 + 16);
      *(v9 + 16) = v16;
    }
  }

  v18 = *(v0[2] + 16);

  v19 = v0[1];

  return v19(v18);
}

uint64_t specialized CalculateResultAttributionHandler.darkModeImage()()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](specialized CalculateResultAttributionHandler.darkModeImage(), v3, v2);
}

{
  if (*(v0[2] + 24))
  {

    v1 = *(v0[2] + 24);

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    type metadata accessor for StocksKitCurrencyCache();
    v0[10] = static StocksKitCurrencyCache.shared.getter();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = specialized CalculateResultAttributionHandler.darkModeImage();
    v5 = v0[6];

    return MEMORY[0x1EEDF1D98](v5);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](specialized CalculateResultAttributionHandler.darkModeImage(), v4, v3);
}

{
  v1 = v0[6];

  v2 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[6], &_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd);
  }

  else
  {
    v6 = StocksKitCurrencyCache.Provider.logo.getter();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = v0[2];
      v10 = (v7 + *(v0[3] + 36));
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd) + 28);
      v12 = *MEMORY[0x1E697DBA8];
      v13 = type metadata accessor for ColorScheme();
      (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
      *v10 = swift_getKeyPath();
      *v7 = v6;
      outlined init with copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<ColorScheme>>(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCyAA15ModifiedContentVyAA0C0VAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGGMd);
      swift_allocObject();
      MEMORY[0x1DA6C98B0](v8);
      v14 = [objc_opt_self() mainScreen];
      [v14 scale];

      v15 = ImageRenderer.scale.setter();
      v16 = MEMORY[0x1DA6C9890](v15);

      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd);
      v17 = *(v9 + 24);
      *(v9 + 24) = v16;
    }
  }

  v18 = *(v0[2] + 24);

  v19 = v0[1];

  return v19(v18);
}

uint64_t outlined init with copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<ColorScheme>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CalculateResultAttributionHandler.init()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CalculateResultAttributionHandler.init()(a1);
}

uint64_t Image.dpiWidth.getter()
{
  v0 = type metadata accessor for ImageMetadata();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  CRRegister.wrappedValue.getter();
  v3 = *(v2 + 2);
  outlined destroy of ImageMetadata(v2);
  return v3;
}

uint64_t type metadata accessor for ImageMetadata()
{
  result = type metadata singleton initialization cache for ImageMetadata;
  if (!type metadata singleton initialization cache for ImageMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of ImageMetadata(uint64_t a1)
{
  v2 = type metadata accessor for ImageMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Image.dpiWidth.setter(uint64_t a1, char a2)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  v4 = CRRegister.wrappedValue.modify();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2 & 1;
  return v4(&v7, 0);
}

uint64_t Image.dpiHeight.getter()
{
  v0 = type metadata accessor for ImageMetadata();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  CRRegister.wrappedValue.getter();
  v3 = *(v2 + 4);
  outlined destroy of ImageMetadata(v2);
  return v3;
}

uint64_t Image.dpiHeight.setter(uint64_t a1, char a2)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  v4 = CRRegister.wrappedValue.modify();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2 & 1;
  return v4(&v7, 0);
}

Swift::Void __swiftcall Image.loadMetadata(from:)(CGImageSourceRef from)
{
  v2 = objc_opt_self();
  v3 = [(PPKImageReader *)v2 imageDescriptionFromSource:?];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    type metadata accessor for Image(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
    CRRegister.wrappedValue.getter();
    if (v12)
    {
      if (v5 == v11 && v12 == v7)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_11;
    }

LABEL_8:
    v11 = v5;
    v12 = v7;
    CRRegister.wrappedValue.setter();
  }

LABEL_11:
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  v10 = CRRegister.wrappedValue.modify();
  ImageMetadata.loadMetadata(from:)(from);
  v10(&v11, 0);
}

uint64_t Image.caption.getter()
{
  v0 = type metadata accessor for ImageMetadata();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  CRRegister.wrappedValue.getter();
  v3 = *v2;

  outlined destroy of ImageMetadata(v2);
  return v3;
}

uint64_t key path getter for Image.caption : Image@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ImageMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  CRRegister.wrappedValue.getter();
  v6 = *v4;
  v5 = v4[1];

  result = outlined destroy of ImageMetadata(v4);
  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for Image.caption : Image(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for Image(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  v3 = CRRegister.wrappedValue.modify();
  *v4 = v2;
  v4[1] = v1;

  return v3(&v6, 0);
}

uint64_t Image.caption.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  v4 = CRRegister.wrappedValue.modify();
  *v5 = a1;
  v5[1] = a2;

  return v4(&v7, 0);
}

uint64_t ImageMetadata.hash(into:)()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 16);
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1DA6CE840](v2);
  }

  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA6CE840](v4);
  }

  type metadata accessor for ImageMetadata();
  type metadata accessor for UnknownValueProperties();
  lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ImageMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 16);
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1DA6CE840](v2);
  }

  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA6CE840](v4);
  }

  type metadata accessor for ImageMetadata();
  type metadata accessor for UnknownValueProperties();
  lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImageMetadata()
{
  Hasher.init(_seed:)();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 16);
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1DA6CE840](v2);
  }

  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA6CE840](v4);
  }

  type metadata accessor for UnknownValueProperties();
  lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*Image.accessibilityDescription.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  *(v3 + 48) = *(type metadata accessor for Image(0) + 64);
  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  *v4 = *(v4 + 16);
  return Image.accessibilityDescription.modify;
}

uint64_t Image.accessibilityDescription.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Image.accessibilityDescription.setter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Image.description.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  *(v3 + 48) = *(type metadata accessor for Image(0) + 64);
  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  *v4 = *(v4 + 16);
  return Image.description.modify;
}

void Image.accessibilityDescription.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    CRRegister.wrappedValue.setter();
  }

  else
  {
    CRRegister.wrappedValue.setter();
  }

  free(v2);
}

void (*Image.caption.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = *(*(type metadata accessor for ImageMetadata() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  *(v5 + 104) = *(type metadata accessor for Image(0) + 60);
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  CRRegister.wrappedValue.getter();
  v10 = *v8;
  v9 = v8[1];

  outlined destroy of ImageMetadata(v8);
  *(v5 + 64) = v10;
  *(v5 + 72) = v9;
  return Image.caption.modify;
}

void Image.caption.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 9);
  v5 = *(*a1 + 11);
  if (a2)
  {

    v6 = CRRegister.wrappedValue.modify();
    *v7 = v3;
    v7[1] = v4;

    v6(v2, 0);
  }

  else
  {
    v8 = CRRegister.wrappedValue.modify();
    *v9 = v3;
    v9[1] = v4;

    v8(v2 + 32, 0);
  }

  free(v5);

  free(v2);
}

void (*Image.dpiWidth.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = *(*(type metadata accessor for ImageMetadata() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  *(v5 + 76) = *(type metadata accessor for Image(0) + 60);
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  CRRegister.wrappedValue.getter();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  outlined destroy of ImageMetadata(v8);
  *(v5 + 64) = v9;
  *(v5 + 72) = v10;
  return Image.dpiWidth.modify;
}

void Image.dpiWidth.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = 4;
  if (a2)
  {
    v5 = 0;
  }

  v6 = &v2[v5];
  v7 = v2[11];
  v8 = CRRegister.wrappedValue.modify();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  v8(v6, 0);
  free(v7);

  free(v2);
}

void (*Image.dpiHeight.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = *(*(type metadata accessor for ImageMetadata() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  *(v5 + 76) = *(type metadata accessor for Image(0) + 60);
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  CRRegister.wrappedValue.getter();
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  outlined destroy of ImageMetadata(v8);
  *(v5 + 64) = v9;
  *(v5 + 72) = v10;
  return Image.dpiHeight.modify;
}

void Image.dpiHeight.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = 4;
  if (a2)
  {
    v5 = 0;
  }

  v6 = &v2[v5];
  v7 = v2[11];
  v8 = CRRegister.wrappedValue.modify();
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  v8(v6, 0);
  free(v7);

  free(v2);
}

void ImageMetadata.writeMetadata(to:)(CGImageMetadata *a1, void *a2)
{
  v5 = v2[1];
  if (v5)
  {
    v6 = *v2;
    v7 = MEMORY[0x1DA6CCED0](0x72637365643A6364, 0xEE006E6F69747069);
    v8 = MEMORY[0x1DA6CCED0](v6, v5);
    CGImageMetadataRemoveTagWithPath(a1, 0, v7);
    CGImageMetadataSetValueWithPath(a1, 0, v7, v8);
  }

  if ((v2[3] & 1) == 0)
  {
    v9 = *MEMORY[0x1E696D888];
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [a2 __swift_setObject_forKeyedSubscript_];

    v11 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D4091E40);
    v12 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    CGImageMetadataSetValueWithPath(a1, 0, v11, v12);
  }

  if ((v2[5] & 1) == 0)
  {
    v13 = *MEMORY[0x1E696D880];
    v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [a2 __swift_setObject_forKeyedSubscript_];

    v15 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D4091E20);
    v16 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    CGImageMetadataSetValueWithPath(a1, 0, v15, v16);
  }
}

Swift::Void __swiftcall ImageMetadata.loadMetadata(from:)(CGImageSourceRef from)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13ImageMetadataVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ImageMetadata();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ImageMetadata.fetchMetadata(from:)(from, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit13ImageMetadataVSgMd);
  }

  else
  {
    outlined init with take of ImageMetadata(v5, v9);
    KeyPath = swift_getKeyPath();
    specialized applyImageSourceValueIfNecessary #1 <A>(property:) in ImageMetadata.loadMetadata(from:)(KeyPath, v9, v1);

    v11 = swift_getKeyPath();
    specialized applyImageSourceValueIfNecessary #1 <A>(property:) in ImageMetadata.loadMetadata(from:)(v11, v9, v1);

    v12 = swift_getKeyPath();
    specialized applyImageSourceValueIfNecessary #1 <A>(property:) in ImageMetadata.loadMetadata(from:)(v12, v9, v1);

    outlined destroy of ImageMetadata(v9);
  }
}

uint64_t ImageMetadata.fetchMetadata(from:)@<X0>(CGImageSource *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageMetadata();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v33 = 0;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      v9 = v33;
      if (v33)
      {

        UnknownValueProperties.init()();
        v10 = specialized ImagePropertiesExtractor.iptcDictionaryValue<A>(_:)(*MEMORY[0x1E696DD68], v9);
        v12 = v11;

        *v6 = v10;
        *(v6 + 1) = v12;
        v13 = *MEMORY[0x1E696D888];
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = v13;
          v15 = __CocoaDictionary.lookup(_:)();

          if (!v15)
          {
            *(v6 + 2) = 0;
            v6[24] = 1;
            v16 = *MEMORY[0x1E696D880];
            goto LABEL_17;
          }
        }

        else
        {
          if (!*(v9 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v20 & 1) == 0))
          {
            *(v6 + 2) = 0;
            v6[24] = 1;
            v16 = *MEMORY[0x1E696D880];
            goto LABEL_20;
          }

          v15 = *(*(v9 + 56) + 8 * v19);
          swift_unknownObjectRetain();
        }

        v33 = v15;
        v21 = swift_dynamicCast();
        v22 = v32;
        if (!v21)
        {
          v22 = 0;
        }

        *(v6 + 2) = v22;
        v6[24] = v21 ^ 1;
        v16 = *MEMORY[0x1E696D880];
        if ((v9 & 0xC000000000000001) != 0)
        {
LABEL_17:
          v23 = v16;
          v24 = __CocoaDictionary.lookup(_:)();

          if (!v24)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }

LABEL_20:
        if (!*(v9 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v26 & 1) == 0))
        {

LABEL_27:
          v28 = 0;
          v29 = 1;
LABEL_28:
          *(v6 + 4) = v28;
          v6[40] = v29;
          outlined init with copy of ImageMetadata(v6, a2);
          (*(v31 + 56))(a2, 0, 1, v4);
          return outlined destroy of ImageMetadata(v6);
        }

        v24 = *(*(v9 + 56) + 8 * v25);
        swift_unknownObjectRetain();

LABEL_23:
        v33 = v24;
        v27 = swift_dynamicCast();
        v28 = v32;
        if (!v27)
        {
          v28 = 0;
        }

        v29 = v27 ^ 1;
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v17 = *(v31 + 56);

  return v17(a2, 1, 1, v4);
}

uint64_t specialized applyImageSourceValueIfNecessary #1 <A>(property:) in ImageMetadata.loadMetadata(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ImageMetadata();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  outlined init with copy of ImageMetadata(a3, v6);
  v7 = swift_readAtKeyPath();
  v10 = *v8;
  v9 = v8[1];

  v7(v15, 0);
  outlined destroy of ImageMetadata(v6);
  v11 = v17;
  if (v17)
  {
    v12 = v16;
    if (v9 && (v16 == v10 ? (v13 = v17 == v9) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
    }

    else
    {
      v15[0] = v12;
      v15[1] = v11;

      swift_setAtWritableKeyPath();
    }
  }
}

{
  v4 = type metadata accessor for ImageMetadata();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  outlined init with copy of ImageMetadata(a3, v6);
  v7 = swift_readAtKeyPath();
  v9 = *v8;
  v10 = *(v8 + 8);
  v7(&v13, 0);
  result = outlined destroy of ImageMetadata(v6);
  if ((v16 & 1) == 0)
  {
    if (v9 == v15)
    {
      v12 = v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = v15;
      v14 = 0;
      return swift_setAtWritableKeyPath();
    }
  }

  return result;
}

uint64_t specialized ImagePropertiesExtractor.iptcDictionaryValue<A>(_:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E696DD90];
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = v4;
    v6 = __CocoaDictionary.lookup(_:)();

    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      goto LABEL_14;
    }

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    v6 = *(*(a2 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefayXlGMd);
  if (swift_dynamicCast())
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v9 = a1;
      __CocoaDictionary.lookup(_:)();
    }

    else if (*(v12 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v10)
      {
        swift_unknownObjectRetain();
      }
    }
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t ImageMetadata.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UnknownValueProperties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageMetadata(v1, a1);
  v16 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  Optional<A>.copy(renamingReferences:)();
  v8 = v17;
  v9 = v18;

  *a1 = v8;
  *(a1 + 8) = v9;
  v10 = *(v2 + 24);
  *&v16 = *(v2 + 2);
  BYTE8(v16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  Optional<A>.copy(renamingReferences:)();
  v11 = v18;
  *(a1 + 16) = v17;
  *(a1 + 24) = v11;
  v12 = *(v2 + 40);
  *&v16 = *(v2 + 4);
  BYTE8(v16) = v12;
  Optional<A>.copy(renamingReferences:)();
  v13 = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v13;
  v14 = type metadata accessor for ImageMetadata();
  UnknownValueProperties.copy(renamingReferences:)();
  return (*(v5 + 40))(a1 + *(v14 + 28), v7, v4);
}

uint64_t ImageMetadata.visitReferences(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  Optional<A>.visitReferences(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  Optional<A>.visitReferences(_:)();
  Optional<A>.visitReferences(_:)();
  type metadata accessor for ImageMetadata();
  return UnknownValueProperties.visitReferences(_:)();
}

uint64_t ImageMetadata.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995288];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ImageMetadata.encode(to:)()
{
  result = dispatch thunk of CREncoder.keyedValueContainer()();
  if (!v0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
    lazy protocol witness table accessor for type CGFloat? and conformance <A> A?();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    type metadata accessor for ImageMetadata();
    UnknownValueProperties.encode(to:)();
  }

  return result;
}

uint64_t ImageMetadata.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = type metadata accessor for UnknownValueProperties();
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v16 = *(type metadata accessor for ImageMetadata() + 28);
  v71 = a2;
  UnknownValueProperties.init()();
  v17 = dispatch thunk of CRDecoder.keyedValueContainer()();
  if (v2)
  {
LABEL_2:

    v18 = v71;
    return outlined destroy of ImageMetadata(v18);
  }

  v19 = v17;
  v64 = v15;
  v65 = v13;
  v20 = a1;
  v61 = v12;
  v62 = v9;
  v69 = 0;
  v66 = v7;
  v21 = v70;
  v63 = v16;
  if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
  {
    v22 = v69;
    Optional<A>.init(from:)();
    v18 = v71;
    if (v22)
    {
      goto LABEL_12;
    }

    v23 = v21;
    v69 = 0;
    *v71 = v72;
  }

  else
  {
    v23 = v21;
    v18 = v71;
  }

  if (!dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
  {
    goto LABEL_10;
  }

  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v24 = v69;
  Optional<A>.init(from:)();
  if (v24)
  {
LABEL_12:

    return outlined destroy of ImageMetadata(v18);
  }

  v69 = 0;
  v25 = BYTE8(v72);
  *(v18 + 16) = v72;
  *(v18 + 24) = v25;
LABEL_10:
  if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v26 = v69;
    Optional<A>.init(from:)();
    if (v26)
    {
      goto LABEL_12;
    }

    v69 = 0;
    v59 = v20;
    v28 = BYTE8(v72);
    *(v18 + 32) = v72;
    *(v18 + 40) = v28;
  }

  else
  {
    v59 = v20;
  }

  v70 = v19;
  v29 = dispatch thunk of CRDecoder.CRValueKeyedContainer.allKeys()();
  v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v29);

  *&v72 = v30;
  specialized Set._Variant.remove(_:)(0);
  specialized Set._Variant.remove(_:)(1);
  specialized Set._Variant.remove(_:)(2);
  v31 = v72;
  v32 = v72 + 56;
  v33 = 1 << *(v72 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v72 + 56);
  v36 = (v33 + 63) >> 6;
  v37 = (v68 + 56);

  v38 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v39 = v38;
    if (!v35)
    {
      break;
    }

LABEL_23:
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = *(*(v31 + 48) + ((v38 << 9) | (8 * v40)));
    if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
    {
      v42 = v66;
      *v23 = v41;
      v43 = v69;
      AnyCRValue.init(from:)();
      v69 = v43;
      if (v43)
      {
LABEL_38:

        v18 = v71;
        return outlined destroy of ImageMetadata(v18);
      }

      (*v37)(v23, 0, 1, v42);
      v44 = v61;
      outlined init with take of (Int, AnyCRValue)(v23, v61);
      outlined init with take of (Int, AnyCRValue)(v44, v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      }

      v45 = v68;
      v47 = v60[2];
      v46 = v60[3];
      v48 = v62;
      if (v47 >= v46 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v60);
        v45 = v68;
        v60 = v50;
        v48 = v62;
      }

      v49 = v60;
      v60[2] = v47 + 1;
      outlined init with take of (Int, AnyCRValue)(v48, v49 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v47);
    }

    else
    {
      (*v37)(v23, 1, 1, v66);
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_sSi_9Coherence10AnyCRValueVtSgMd);
    }
  }

  while (1)
  {
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v38 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v38);
    ++v39;
    if (v35)
    {
      goto LABEL_23;
    }
  }

  v51 = v60;
  if (v60[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd);
    v52 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC8];
  }

  v54 = v64;
  v53 = v65;
  v55 = v69;
  v56 = v67;
  v57 = v63;
  v73 = v52;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v51, 1, &v73);
  if (v55)
  {

    goto LABEL_2;
  }

  UnknownValueProperties.init(_:)();

  return (*(v56 + 40))(&v71[v57], v54, v53);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance ImageMetadata()
{
  lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(&lazy protocol witness table cache variable for type ImageMetadata and conformance ImageMetadata, type metadata accessor for ImageMetadata);
  lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(&lazy protocol witness table cache variable for type ImageMetadata and conformance ImageMetadata, type metadata accessor for ImageMetadata);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance ImageMetadata()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  Optional<A>.visitReferences(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  Optional<A>.visitReferences(_:)();
  Optional<A>.visitReferences(_:)();
  return UnknownValueProperties.visitReferences(_:)();
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for AnyCRValue();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  outlined init with copy of (Int, AnyCRValue)(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v59 & 1);
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            outlined init with copy of (Int, AnyCRValue)(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, 1);
              v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000027;
    v31[1] = 0x80000001D4091DF0;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E6995188], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized static ImageMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  type metadata accessor for ImageMetadata();

  return static UnknownValueProperties.== infix(_:_:)();
}

uint64_t outlined init with copy of ImageMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CGFloat? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CGFloat? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreGraphics7CGFloatVSgMd);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat? and conformance <A> A?);
  }

  return result;
}

void type metadata completion function for ImageMetadata()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for CGFloat?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownValueProperties();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t outlined init with copy of (Int, AnyCRValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ImageMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UnknownValueProperties and conformance UnknownValueProperties(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in SynapseLinkingEngine.fetchLinkableItems(limit:excluding:completion:)(unint64_t a1, id a2, uint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  if (a2)
  {
    v14 = a2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = a2;
    v6 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v17))
    {

      if (a1)
      {
        goto LABEL_7;
      }

LABEL_20:
      v25 = MEMORY[0x1E69E7CC0];
      if (a4)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    v52 = a4;
    v7 = a5;
    v18 = swift_slowAlloc();
    v8 = a6;
    v19 = swift_slowAlloc();
    v56 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v56);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1D38C4000, v6, v17, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1DA6D0660](v19, -1, -1);
    v23 = v18;
    a5 = v7;
    a4 = v52;
    MEMORY[0x1DA6D0660](v23, -1, -1);
  }

  if (!a1)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (a1 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v56 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v24 < 0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v53 = a4;
    v51 = a5;
    v26 = objc_opt_self();
    v27 = 0;
    v6 = *MEMORY[0x1E69D5440];
    v7 = a1 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        v28 = MEMORY[0x1DA6CE0C0](v27, a1);
      }

      else
      {
        v28 = *(a1 + 8 * v27 + 32);
      }

      v29 = v28;
      ++v27;
      v30 = type metadata accessor for SynapseLinkItem();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v31[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem] = v29;
      v55.receiver = v31;
      v55.super_class = v30;
      v32 = v29;
      v33 = objc_msgSendSuper2(&v55, sel_init);
      v34 = [v26 defaultCenter];
      [v34 addObserver:v33 selector:sel_linkPreviewDidFinishLoadingWithNotification_ name:v6 object:v32];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v56 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v24 != v27);
    v25 = v56;
    a5 = v51;
    a4 = v53;
  }

  if (a4)
  {
LABEL_18:
    v35 = specialized _arrayForceCast<A, B>(_:)(v25);

LABEL_49:
    a5(v35);
  }

LABEL_21:
  v36 = a3;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v36 = v25 & 0xFFFFFFFFFFFFFF8;
    v7 = v25 >> 62;
    if (!(v25 >> 62))
    {
      v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37 >= a3)
      {
        v38 = a3;
      }

      else
      {
        v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        a1 = v38;
      }

      else
      {
        a1 = 0;
      }

      if (v37 >= a1)
      {
        goto LABEL_30;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    v6 = v25;
  }

  else
  {
    v6 = v36;
  }

  v49 = __CocoaSet.count.getter();
  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v49 >= a3)
    {
      v50 = a3;
    }

    else
    {
      v50 = v49;
    }

    if (v49 < 0)
    {
      v50 = a3;
    }

    if (a3)
    {
      a1 = v50;
    }

    else
    {
      a1 = 0;
    }

    if (__CocoaSet.count.getter() >= a1)
    {
LABEL_30:
      if ((v25 & 0xC000000000000001) != 0 && a1)
      {
        type metadata accessor for SynapseLinkItem();

        v39 = 0;
        do
        {
          v40 = v39 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v39);
          v39 = v40;
        }

        while (a1 != v40);
      }

      else
      {
      }

      if (v7)
      {
        v6 = _CocoaArrayWrapper.subscript.getter();
        v8 = v41;
        v7 = v42;
        a1 = v43;

        if (a1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v6 = (v25 & 0xFFFFFFFFFFFFFF8);
        v8 = (v25 & 0xFFFFFFFFFFFFFF8) + 32;
        a1 = (2 * a1) | 1;
        if (a1)
        {
LABEL_41:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v46 = swift_dynamicCastClass();
          if (!v46)
          {
            swift_unknownObjectRelease();
            v46 = MEMORY[0x1E69E7CC0];
          }

          v47 = *(v46 + 16);

          if (!__OFSUB__(a1 >> 1, v7))
          {
            if (v47 == (a1 >> 1) - v7)
            {
              v45 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v45)
              {
LABEL_48:
                v35 = specialized _arrayForceCast<A, B>(_:)(v45);

                goto LABEL_49;
              }

              v45 = MEMORY[0x1E69E7CC0];
LABEL_47:
              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            goto LABEL_68;
          }

LABEL_67:
          __break(1u);
LABEL_68:
          swift_unknownObjectRelease_n();
        }
      }

      specialized _copyCollectionToContiguousArray<A>(_:)(v6, v8, v7, a1, type metadata accessor for SynapseLinkItem);
      v45 = v44;
      goto LABEL_47;
    }

    goto LABEL_65;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [SYContentItem]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for SYContentItem);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t protocol witness for LinkingEngine.delegate.setter in conformance SynapseLinkingEngine(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8PaperKit20SynapseLinkingEngine_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void protocol witness for LinkingEngine.fetchLinkableItems(limit:excluding:completion:) in conformance SynapseLinkingEngine(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + OBJC_IVAR____TtC8PaperKit20SynapseLinkingEngine_engine);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSUserActivity);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v14[4] = partial apply for closure #1 in SynapseLinkingEngine.fetchLinkableItems(limit:excluding:completion:);
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [SYContentItem]?, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_70;
  v13 = _Block_copy(v14);

  [v10 fetchLinkableContentItemsExcludingActivities:isa completion:v13];
  _Block_release(v13);
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for ReflowElement);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for CanvasElementResizeHandle);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for ShapeView);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 168);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v2, 0);

    v1 = specialized Sequence._copyContents(initializing:)(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v2, 0);

    MEMORY[0x1DA6CE090](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size_0(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = __CocoaSet.count.getter();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6CE0C0](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t specialized SynapseLinkingEngine.linkableItemFinderItemsMightHaveChanged(_:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v3 linkingControllerLinksMightHaveChanged_];
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t one-time initialization function for paperKitAddShape()
{
  result = MEMORY[0x1DA6CCED0](0xD00000000000001FLL, 0x80000001D4092000);
  static UIActionIdentifier.paperKitAddShape = result;
  return result;
}

uint64_t one-time initialization function for paperKitAddSignature()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000023, 0x80000001D4091FD0);
  static UIActionIdentifier.paperKitAddSignature = result;
  return result;
}

uint64_t one-time initialization function for paperKitAddSticker()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000021, 0x80000001D4091FA0);
  static UIActionIdentifier.paperKitAddSticker = result;
  return result;
}

uint64_t one-time initialization function for paperKitAddText()
{
  result = MEMORY[0x1DA6CCED0](0xD00000000000001ELL, 0x80000001D4091F80);
  static UIActionIdentifier.paperKitAddText = result;
  return result;
}

uint64_t one-time initialization function for paperKitAutoFillForm()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000026, 0x80000001D4091F50);
  static UIActionIdentifier.paperKitAutoFillForm = result;
  return result;
}

uint64_t one-time initialization function for paperKitCanvasOpacity()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000021, 0x80000001D4091F20);
  static UIActionIdentifier.paperKitCanvasOpacity = result;
  return result;
}

uint64_t one-time initialization function for paperKitImageDescription()
{
  result = MEMORY[0x1DA6CCED0](0xD00000000000002ALL, 0x80000001D4091EF0);
  static UIActionIdentifier.paperKitImageDescription = result;
  return result;
}

uint64_t one-time initialization function for paperKitAdditionalAction()
{
  result = MEMORY[0x1DA6CCED0](0xD00000000000002ALL, 0x80000001D4091EC0);
  static UIActionIdentifier.paperKitAdditionalAction = result;
  return result;
}

uint64_t NoLinkingEngine.__deallocating_deinit()
{
  outlined destroy of weak AnyContainerCanvasElementView?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LinkingEngine.delegate.setter in conformance NoLinkingEngine(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t @objc TextToolListViewController.didTapAddTextBoxListItemView(_:forEvent:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(_OWORD *))
{
  if (a3)
  {
    v8 = a4;
    v9 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v10 = a4;
    v11 = a1;
  }

  a5(v13);

  return outlined destroy of Any?(v13);
}

uint64_t specialized TextToolListViewController.didTapAddTextBoxListItemView(_:forEvent:)()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(v2 + 8);
      v5 = Strong;
      ObjectType = swift_getObjectType();
      v8 = v5;
      v7 = 10;
      (*(*(v4 + 8) + 8))(&v7, ObjectType);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized TextToolListViewController.didTapAddSignatureListItemView(_:forEvent:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v11 = (*(v9 + 64))(v5, ObjectType, v9);
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      swift_unknownObjectRetain();
      specialized static MarkupEditViewController.presentSignaturePicker(replacing:presentingViewController:from:completion:)(v2, v11, a1, partial apply for closure #1 in ToolPickerController.textToolListViewController(_:sender:didSelectAddSignatureWithEvent:), v12);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t specialized TextToolListViewController.didTapOpacityListItemView(_:forEvent:)()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = result + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v3 + 8);
      v7 = swift_allocObject();
      v7[2] = v5;
      v7[3] = v6;
      v7[4] = v2;
      aBlock[4] = partial apply for closure #1 in ToolPickerController.textToolListViewController(_:sender:didSelectOpacityWithEvent:);
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_70_2;
      v8 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      [v0 dismissViewControllerAnimated:1 completion:v8];
      swift_unknownObjectRelease();
      _Block_release(v8);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized TextToolListViewController.didTapDescriptionListItemView(_:forEvent:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in ToolPickerController.textToolListViewController(_:sender:didSelectDescriptionWithEvent:);
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_71;
    v4 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v0 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall AnalyticsEvent.send()()
{
  v2 = v1;
  v3 = v0;
  if (((*(v1 + 24))() & 1) == 0)
  {
    (*(v2 + 32))(v3, v2);
  }

  v4 = (*(v2 + 16))(v3, v2);
  v5 = MEMORY[0x1DA6CCED0](v4);

  if (AnalyticsEvent.caEventPayload.getter())
  {
    type metadata accessor for NSObject();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  AnalyticsSendEvent();
}

double protocol witness for AnalyticsEvent.undoEvent() in conformance MagicPaperUsageAutoRefineEvent@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t one-time initialization function for $currentAnalyticsEvents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCySay8PaperKit14AnalyticsEvent_pGGMd);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  $currentAnalyticsEvents = result;
  return result;
}

uint64_t AnalyticsEvent.caEventPayload.getter()
{
  type metadata accessor for AnalyticsEventEncoder();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v1);
  *(v0 + 32) = 0;
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v2 = specialized AnalyticsEventEncoder.encode<A>(_:)();

  return v2;
}

uint64_t one-time initialization function for analytics()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.analytics);
  __swift_project_value_buffer(v0, static Logger.analytics);
  return Logger.init(subsystem:category:)();
}

void *LinkLayout.createView<A>(in:canvas:parent:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38[1] = a4;
  v38[2] = a5;
  v38[3] = a1;
  v39 = a3;
  v40 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit4LinkVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v38 - v19;
  (*(v6 + 16))(v8, v38[0], v5, v18);
  v21 = type metadata accessor for Link(0);
  v22 = lazy protocol witness table accessor for type Link and conformance Link();
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type Ref<Link> and conformance Ref<A>();
  Capsule.encapsulate<A>(_:)();
  (*(v10 + 8))(v12, v9);
  v41 = v21;
  v42 = v22;
  v43 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v29 = CGRectGetWidth(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v30 = CGRectGetHeight(v47);
  (*(v14 + 16))(v16, v20, v13);
  v31 = objc_allocWithZone(type metadata accessor for LinkCanvasElementView());
  v32 = v39;
  v33 = v39;
  v34 = v40;
  v35 = v40;
  v36 = specialized LinkCanvasElementView.init(frame:canvasElement:canvas:parentCanvasElement:)(v16, v34, v32, MinX, MinY, v29, v30);

  (*(v14 + 8))(v20, v13);
  return v36;
}

uint64_t closure #1 in static LinkLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, uint64_t a7, void (*a8)(_BYTE *), uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v62 = *&a12;
  v63 = *&a13;
  v64 = a8;
  v65[1] = *MEMORY[0x1E69E9840];
  v23 = *a10;
  v24 = *(a10 + 8);
  v25 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v26 = type metadata accessor for Link(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v59[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v59[-v30];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v59[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v59[-v36];
  if (!a1)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {
    goto LABEL_19;
  }

  v61 = a9;
  v65[0] = 0;
  v39 = [v38 dataRepresentationWithError_];
  v40 = v65[0];
  if (!v39)
  {
    v52 = v40;
    v53 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_19:
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
    (*(*(v54 - 8) + 56))(v37, 1, 1, v54);
    v64(v37);
    v34 = v37;
    return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  }

  v60 = a14;
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v45 = (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (v44 && v45)
  {
    v46 = v23;
  }

  else
  {
    v46 = 0.0;
  }

  if (v44 && v45)
  {
    v47 = v24;
  }

  else
  {
    v47 = 0.0;
  }

  if (*(a10 + 32))
  {
    x = 0.0;
  }

  else
  {
    x = v46;
  }

  if (*(a10 + 32))
  {
    y = 0.0;
  }

  else
  {
    y = v47;
  }

  if (a11 == 9)
  {
    height = 72.0;
    width = 327.0;
  }

  else
  {
    LOBYTE(v65[0]) = a11;
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v67 = CGRect.position(in:anchor:)(v66, v65);
    x = v67.origin.x;
    y = v67.origin.y;
    width = v67.size.width;
    height = v67.size.height;
  }

  if (v60)
  {
    v55 = x;
  }

  else
  {
    v55 = x + v62;
  }

  if (v60)
  {
    v56 = y;
  }

  else
  {
    v56 = y + v63;
  }

  outlined copy of Data._Representation(v41, v43);
  Link.init(synapseDataRepresentation:frame:)(v41, v43, v31, v55, v56, width, height);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  if (*v65 != a6)
  {
    v65[0] = *&a6;
    CRRegister.wrappedValue.setter();
  }

  outlined init with copy of Link(v31, v28);
  static CRKeyPath.unique.getter();
  lazy protocol witness table accessor for type Link and conformance Link();
  Capsule.init(_:id:)();
  outlined destroy of Link(v31);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  (*(*(v57 - 8) + 56))(v34, 0, 1, v57);
  v64(v34);
  outlined consume of Data._Representation(v41, v43);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
}
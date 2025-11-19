void (*AnyCanvas.viewControllerForPresenting.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x8C0))();
  return AnyCanvas.viewControllerForPresenting.modify;
}

void AnyCanvas.viewControllerForPresenting.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0x8C8);
  if (a2)
  {
    v4 = v2;
    v3(v2);
  }

  else
  {
    v3(*a1);
  }
}

void (*AnyCanvas.magicGenerativePlaygroundTokenProvider.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._magicGenerativePlaygroundTokenProvider.modify();
  return AnyCanvas.magicGenerativePlaygroundTokenProvider.modify;
}

uint64_t AnyCanvas.canvasImageGenerationViewDelegate.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (result)
  {
    v2 = result;
    type metadata accessor for TiledTextView();
    if (swift_dynamicCastClass())
    {
      v3 = TiledTextView.canvasGenerationToolOverlayController.getter();
      v4 = v3;
      v5 = *&v3[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
      if (v5)
      {
        v6 = *(v5 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

        Strong = swift_unknownObjectWeakLoadStrong();
        return Strong;
      }
    }

    return 0;
  }

  return result;
}

uint64_t AnyCanvas.canvasImageGenerationViewDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for TiledTextView();
    if (!swift_dynamicCastClass())
    {
LABEL_5:

      goto LABEL_7;
    }

    v6 = TiledTextView.canvasGenerationToolOverlayController.getter();

    v7 = *&v6[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
    if (v7)
    {
      v5 = *(v7 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

      *&v5[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasImageGenerationViewDelegate + 8] = a2;
      swift_unknownObjectWeakAssign();
      goto LABEL_5;
    }
  }

LABEL_7:

  return swift_unknownObjectRelease();
}

uint64_t (*AnyCanvas.canvasImageGenerationViewDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = AnyCanvas.canvasImageGenerationViewDelegate.getter();
  a1[1] = v3;
  return AnyCanvas.canvasImageGenerationViewDelegate.modify;
}

uint64_t AnyCanvas.canvasImageGenerationViewDelegate.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return AnyCanvas.canvasImageGenerationViewDelegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  AnyCanvas.canvasImageGenerationViewDelegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

uint64_t AnyCanvas.magicGenerativePlaygroundTokenProvider.getter@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v9 + v7, a3, a2);
}

uint64_t AnyCanvas.magicGenerativePlaygroundTokenProvider.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, a4);
}

void (*AnyCanvas.magicGenerativePlaygroundContainerStateObserver.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._magicGenerativePlaygroundContainerStateObserver.modify();
  return AnyCanvas.magicGenerativePlaygroundContainerStateObserver.modify;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v31 - v4;
  v40 = type metadata accessor for CRKeyPath();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = v7;
    v31[1] = v1;
    v46 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v44 = a1 + 56;
    v45 = v46;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = v5;
    v12 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v39 = v11;
    v34 = v3;
    v35 = v11 + 32;
    v32 = a1 + 64;
    v33 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v43 = *(a1 + 36);
      v17 = v41;
      v16 = v42;
      (*(v3 + 16))(v41, *(a1 + 48) + *(v3 + 72) * v10, v42);
      v18 = a1;
      v19 = v38;
      MEMORY[0x1DA6CB670](v16);
      (*(v3 + 8))(v17, v16);
      v20 = v45;
      v46 = v45;
      v22 = *(v45 + 16);
      v21 = *(v45 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v45 = v20;
      result = (*(v39 + 32))(v20 + v23 + *(v39 + 72) * v22, v19, v40);
      v13 = 1 << *(v18 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v24 = *(v44 + 8 * v15);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v18;
      if (v43 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v14 = v33;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v14 = v33;
        v28 = (v32 + 8 * v15);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v43, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v43, 0);
      }

LABEL_4:
      ++v12;
      v10 = v13;
      v3 = v34;
      if (v12 == v14)
      {
        return v45;
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

void _sSh2eeoiySbShyxG_ABtFZ8PaperKit20AnyCanvasElementViewC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    specialized _NativeSet.isEqual(to:)(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = type metadata accessor for AnyCanvasElementView();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ8PaperKit18ShapeConfigurationV0D0O_Tt1g5Tm(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1DA6CE810](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ8PaperKit10FeatureSetV08InternalD0O_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1DA6CE810](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void _sSh2eeoiySbShyxG_ABtFZ9PencilKit12PKInkingToolV7InkTypeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKInkingTool.InkType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

double static AnyCanvas.strokeBounds<A, B>(_:in:)()
{
  type metadata accessor for CGRect(0);
  Sequence.reduce<A>(_:_:)();
  return v1;
}

uint64_t protocol witness for PaperKitAttachment.textualContextProvider.setter in conformance Canvas<A>(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for PaperKitAttachment.textualContextProvider.modify in conformance Canvas<A>(uint64_t *a1))()
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return SynapseLinkItem.delegate.modify;
}

uint64_t (*protocol witness for PaperKitAttachment.viewControllerForPresentingUI.modify in conformance Canvas<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x8D0))();
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for PaperKitStreamableAttachment.participantDetailsDataSource.setter in conformance Canvas<A>(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  [*(v4 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.participantDetailsDataSource.modify in conformance Canvas<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AnyCanvas.participantDetailsDataSource.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for PaperKitStreamableAttachment.showParticipantCursors.getter in conformance Canvas<A>()
{
  v1 = *v0;
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.showParticipantCursors.modify in conformance Canvas<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AnyCanvas.showParticipantCursors.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for LiveEditable.isCurrentlyLiveEditing.getter in conformance AnyCanvas()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing);
}

double @objc UIViewController.visibleBoundsForOverlay.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 viewForOverlay];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 viewForOverlay];
  [v11 safeAreaInsets];
  v13 = v12;
  v15 = v14;

  return UIEdgeInsetsInsetRect(v4, v6, v8, v10, v13, v15);
}

double UIViewController.visibleBoundsForOverlay.getter()
{
  v1 = [v0 viewForOverlay];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [v0 viewForOverlay];
  [v10 safeAreaInsets];
  v12 = v11;
  v14 = v13;

  return UIEdgeInsetsInsetRect(v3, v5, v7, v9, v12, v14);
}

id @objc UIViewController.viewForOverlay.getter(void *a1)
{
  v1 = a1;
  result = [v1 view];
  if (result)
  {
    v3 = result;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UIViewController.viewForOverlay.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for AnyCanvas.delegate : AnyCanvas@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t key path setter for AnyCanvas.delegate : AnyCanvas()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t type metadata accessor for AnyCanvas()
{
  result = type metadata singleton initialization cache for AnyCanvas;
  if (!type metadata singleton initialization cache for AnyCanvas)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in AnyCanvas.delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  *(v4 + 8) = a3;
  return swift_unknownObjectWeakAssign();
}

uint64_t key path getter for AnyCanvas.savedCanvasState : AnyCanvas@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v17[0] = v3;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState;
  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState);
  v6 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 16);
  v17[2] = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 32);
  v17[0] = v5;
  v17[1] = v6;
  v7 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 48);
  v8 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 64);
  v9 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 80);
  v18 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 96);
  v17[4] = v8;
  v17[5] = v9;
  v17[3] = v7;
  v10 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState);
  *(a2 + 16) = v10;
  v11 = *(v4 + 32);
  v12 = *(v4 + 48);
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  *(a2 + 96) = *(v4 + 96);
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  return outlined init with copy of Date?(v17, v16, &_s8PaperKit9AnyCanvasC0D13StateRollbackVSgMd);
}

uint64_t key path setter for AnyCanvas.savedCanvasState : AnyCanvas()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in AnyCanvas.savedCanvasState.setter(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState;
  v7 = *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState);
  v3 = *(a2 + 80);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 80) = v3;
  *(v2 + 96) = *(a2 + 96);
  v4 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v4;
  v5 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v5;
  outlined init with copy of Date?(a2, v8, &_s8PaperKit9AnyCanvasC0D13StateRollbackVSgMd);
  return outlined consume of AnyCanvas.CanvasStateRollback?(v7);
}

id key path setter for AnyCanvas.participantDetailsDataSource : AnyCanvas(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  return [*(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
}

id closure #1 in AnyCanvas.showParticipantCursors.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
  swift_beginAccess();
  *(a1 + v4) = a2;
  return [*(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
}

id _s8PaperKit9AnyCanvasC22showParticipantCursorsSbvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return [*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
}

void key path setter for AnyCanvas.wantsDataDetection : AnyCanvas(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5, SEL *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  v11 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x440))(v10);
  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = (*(v13 + 16))(ObjectType, v13);

  if (v15)
  {
    [v15 *a6];
  }
}

uint64_t AnyCanvas.screenScaleOverride.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride;
  swift_beginAccess();
  return *v1;
}

uint64_t AnyCanvas.screenScaleOverride.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path getter for AnyCanvas.showParticipantCursors : AnyCanvas@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void closure #1 in AnyCanvas.liveStreamDrawings.setter(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
  v5 = swift_beginAccess();
  *(a1 + v4) = a2;
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x468))(v5);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 canvasView];

    if (v8)
    {
      swift_getKeyPath();
      _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v8 setGenerateLiveDrawing_];
    }
  }
}

uint64_t AnyCanvas.editingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AnyCanvas.editingMode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id AnyCanvas.init(context:frame:editingMode:transparentBackground:)(uint64_t a1, char *a2, char a3, double a4, double a5, double a6, double a7)
{
  v14 = type metadata accessor for CanvasState(0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = *a2;
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = 0;
  v16 = &v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState];
  *v16 = 1;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 81) = 0u;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasStateLiveStreamMessenger + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors] = 0;
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection] = 1;
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud] = 1;
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = &v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride];
  *v17 = 0;
  v17[8] = 1;
  type metadata accessor for UUID();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  CRDictionary.init()();
  UnknownProperties.init()();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState);
  Capsule.init(_:id:)();
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings] = 0;
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_directTouchMode] = 1;
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_directTouchAutomaticallyDraws] = 1;
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode] = 1;
  static FeatureSet.latest.getter(&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet]);
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_liveEditingContinuations] = MEMORY[0x1E69E7CC0];
  UUID.init()();
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode] = 0;
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR] = 1;
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling] = 0;
  v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_timeOfOpeningContainerView;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(&v7[v19], 1, 1, v20);
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_latencyOfFormFields] = v18;
  v21 = &v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__magicGenerativePlaygroundTokenProvider];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = &v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__magicGenerativePlaygroundContainerStateObserver];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  ObservationRegistrar.init()();
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView] = [objc_allocWithZone(type metadata accessor for CanvasCollaborationStateView()) initWithFrame_];
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_transparentBackground] = a3;
  *&v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_context] = a1;
  v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode] = v15;
  v26.receiver = v7;
  v26.super_class = type metadata accessor for AnyCanvas();
  v23 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a4, a5, a6, a7);
  swift_unknownObjectWeakAssign();
  return v23;
}

Swift::Void __swiftcall AnyCanvas.canvasSelectionDidChange()()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    Strong = swift_unknownObjectRelease();
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x928))(Strong);
}

uint64_t closure #1 in AnyCanvas.selection.modify(void *a1, uint64_t a2)
{
  v52 = type metadata accessor for CRKeyPath();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v53 = type metadata accessor for UUID();
  v45 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  if (!*(a2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v15);

  static Date.timeIntervalSinceReferenceDate.getter();
  *a1 = v17;

  v44 = a1;
  a1[3] = v16;
  v18 = *(a2 + v14);
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);
    v20 = v19 + 56;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v19 + 56);
    v24 = (v21 + 63) >> 6;
    v49 = (v54 + 8);
    v50 = v10 + 16;
    v47 = (v45 + 48);
    v48 = v10 + 8;
    v42 = (v45 + 32);
    v54 = v19;
    result = swift_bridgeObjectRetain_n();
    v25 = 0;
    v46 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = v25;
      if (!v23)
      {
        break;
      }

      v27 = v7;
LABEL_12:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v10 + 16))(v13, *(v54 + 48) + *(v10 + 72) * (v28 | (v25 << 6)), v9);
      v29 = v51;
      WeakRef.id.getter();
      CRKeyPath.uuid.getter();
      v30 = v29;
      v7 = v27;
      (*v49)(v30, v52);
      (*(v10 + 8))(v13, v9);
      if ((*v47)(v27, 1, v53) == 1)
      {
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s10Foundation4UUIDVSgMd);
      }

      else
      {
        v31 = *v42;
        (*v42)(v43, v7, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
        }

        v33 = v46[2];
        v32 = v46[3];
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v41 = v33 + 1;
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v46);
          v34 = v41;
          v46 = v37;
        }

        v35 = v45;
        v36 = v46;
        v46[2] = v34;
        result = (v31)(v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, v43, v53);
      }
    }

    while (1)
    {
      v25 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v25 >= v24)
      {

        static Date.timeIntervalSinceReferenceDate.getter();
        v38 = v44;
        *v44 = v39;

        v38[4] = v46;
        return result;
      }

      v23 = *(v20 + 8 * v25);
      ++v26;
      if (v23)
      {
        v27 = v7;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t closure #1 in AnyCanvas.updateCanvasState(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v19 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x560))(v10);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  v14 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v15 = CRDictionary.subscript.modify();
  v19(v16);
  v15(v20, 0);
  (*(v9 + 8))(v12, v8);
  v14(v21, 0);
}

void closure #1 in static AnyCanvas.strokeBounds<A, B>(_:in:)(CGFloat *a1@<X0>, objc_class *a2@<X2>, CGFloat *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v24 - v7);
  x = *a1;
  y = a1[1];
  width = a1[2];
  height = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  WeakRef.subscript.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  }

  else
  {
    v15 = type metadata accessor for Capsule();
    WitnessTable = swift_getWitnessTable();
    v17 = specialized CRRegister<>.bounds(in:)(a2, v8, v15, WitnessTable);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    (*(v14 + 8))(v8, v13);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v27.origin.x = v17;
    v27.origin.y = v19;
    v27.size.width = v21;
    v27.size.height = v23;
    v26 = CGRectUnion(v25, v27);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  *a3 = x;
  a3[1] = y;
  a3[2] = width;
  a3[3] = height;
}

void *key path getter for AnyCanvas.selectedCanvasElementIds : AnyCanvas@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (*(*result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {

    v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v3);

    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AnyCanvas._isInCanvasSelectionMode.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) != v3)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + v4) == 1)
    {
      AnyCanvas.startCroppingRootElement()();
    }

    else
    {
      AnyCanvas.canvasCancelCrop()();
      v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView;
      v6 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView);
      if (v6)
      {
        [v6 removeFromSuperview];
        v7 = *(v2 + v5);
      }

      else
      {
        v7 = 0;
      }

      *(v2 + v5) = 0;
    }

    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x440))();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    (*((*v8 & *v9) + 0x3C0))(*(v2 + v4));
  }
}

Swift::Void __swiftcall AnyCanvas.canvasCancelCrop()()
{
  v1 = v0;
  swift_getKeyPath();
  *&v38[0] = v0;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = &v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState];
  v3 = v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 96];
  v40 = v3;
  v4 = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 80];
  v38[4] = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 64];
  v39 = v4;
  v5 = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 16];
  v38[0] = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState];
  v38[1] = v5;
  v6 = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 48];
  v38[2] = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 32];
  v38[3] = v6;
  v7 = *&v38[0];
  if (*&v38[0] != 1)
  {
    v8 = *(&v39 + 1);
    v9 = *(v2 + 24);
    v10 = *(v2 + 56);
    v35 = *(v2 + 40);
    v36 = v10;
    v37 = *(v2 + 72);
    v33 = *(v2 + 8);
    v34 = v9;
    v11 = *(v2 + 3);
    v12 = *(v2 + 5);
    v32[4] = *(v2 + 4);
    v32[5] = v12;
    LOBYTE(v32[6]) = v2[96];
    v13 = *(v2 + 1);
    v32[0] = *v2;
    v32[1] = v13;
    v32[2] = *(v2 + 2);
    v32[3] = v11;
    v14 = objc_opt_self();
    outlined init with copy of AnyCanvas.CanvasStateRollback(v32, v31);
    v15 = [v14 currentDevice];
    v16 = [v15 orientation];

    if ((v3 & 1) != 0 || v8 != v16)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s8PaperKit9AnyCanvasC0D13StateRollbackVSgMd);
    }

    else
    {
      v29 = objc_opt_self();
      v17 = swift_allocObject();
      v18 = v33;
      *(v17 + 40) = v34;
      v19 = v36;
      *(v17 + 56) = v35;
      *(v17 + 72) = v19;
      *(v17 + 88) = v37;
      *(v17 + 16) = v7;
      *(v17 + 24) = v18;
      *(v17 + 104) = v8;
      *(v17 + 112) = v3;
      *(v17 + 120) = v1;
      v30[4] = partial apply for closure #1 in AnyCanvas.canvasCancelCrop();
      v30[5] = v17;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 1107296256;
      v30[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v30[3] = &block_descriptor_223;
      v20 = _Block_copy(v30);
      outlined init with copy of Date?(v38, v31, &_s8PaperKit9AnyCanvasC0D13StateRollbackVSgMd);
      v21 = v1;

      v22 = swift_allocObject();
      v23 = v33;
      *(v22 + 40) = v34;
      v24 = v36;
      *(v22 + 56) = v35;
      *(v22 + 72) = v24;
      *(v22 + 88) = v37;
      *(v22 + 16) = v7;
      *(v22 + 24) = v23;
      *(v22 + 104) = v8;
      *(v22 + 112) = v3;
      *(v22 + 120) = v21;
      v31[4] = partial apply for closure #2 in AnyCanvas.canvasCancelCrop();
      v31[5] = v22;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 1107296256;
      v31[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v31[3] = &block_descriptor_229_0;
      v25 = _Block_copy(v31);
      v26 = v21;

      [v29 animateWithDuration:v20 animations:v25 completion:0.25];
      _Block_release(v25);
      _Block_release(v20);
    }
  }

  v27 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for canvasCancelCropNotification != -1)
  {
    swift_once();
  }

  [v27 postNotificationName:static AnyCanvas.canvasCancelCropNotification object:v1 userInfo:0];

  *&v32[0] = 1;
  memset(v32 + 8, 0, 89);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v31[0] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t key path getter for AnyCanvas.isInCanvasSelectionMode : AnyCanvas@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode);
  return result;
}

void closure #1 in AnyCanvas.isInCanvasSelectionMode.setter(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode);
  *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = a2;
  AnyCanvas._isInCanvasSelectionMode.didset(v3);
}

Swift::Void __swiftcall AnyCanvas.canvasWillEnterCrop()()
{
  LOBYTE(v42) = 1;
  LOBYTE(v24[0]) = 1;
  v40 = 1;
  v38 = 1;
  memset(v56, 0, sizeof(v56));
  v57 = 0;
  v58 = 0;
  v59 = 1;
  v60 = 0;
  v61 = 0;
  v62 = 1;
  *&v63[7] = 0;
  v63[15] = 1;
  v64 = 0;
  v65 = 1;
  *(v37 + 15) = *&v63[15];
  v37[0] = *v63;
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v1)
  {
    v2 = v0;
    v3 = (v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = *(v3 + 24);

    v8 = outlined destroy of AnyCanvas.CanvasStateRollback(v56);
    v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x450);
    v10 = (v9)(v8);
    v11 = v10;
    v12 = 0;
    v13 = 0;
    if (v10)
    {
      [v10 zoomScale];
      v13 = v14;
    }

    v40 = v11 == 0;
    v15 = v9();
    v16 = v15;
    v17 = 0;
    if (v15)
    {
      [v15 contentOffset];
      v12 = v18;
      v17 = v19;
    }

    v38 = v16 == 0;
    v20 = [objc_opt_self() currentDevice];
    v21 = [v20 orientation];

    v36 = 0;
    v42 = v4;
    v43 = v5;
    v44 = v6;
    v45 = v7;
    *v46 = *v41;
    *&v46[3] = *&v41[3];
    v47 = v13;
    v48 = v40;
    *v49 = *v39;
    *&v49[3] = *&v39[3];
    v50 = v12;
    v51 = v17;
    v52 = v38;
    *&v53[15] = *(v37 + 15);
    v54 = v21;
    *v53 = v37[0];
    v55 = 0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v24[0] = v2;
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
    v23 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for canvasEnterCropNotification != -1)
    {
      swift_once();
    }

    [v23 postNotificationName:static AnyCanvas.canvasEnterCropNotification object:v2 userInfo:0];

    v24[0] = v4;
    v24[1] = v5;
    v24[2] = v6;
    v25 = v7;
    *v26 = *v41;
    *&v26[3] = *&v41[3];
    v27 = v13;
    v28 = v40;
    *v29 = *v39;
    *&v29[3] = *&v39[3];
    v30 = v12;
    v31 = v17;
    v32 = v38;
    *&v33[15] = *(v37 + 15);
    *v33 = v37[0];
    v34 = v21;
    v35 = 0;
    outlined destroy of AnyCanvas.CanvasStateRollback(v24);
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in AnyCanvas.startCroppingRootElement()(int a1, id a2, void *a3)
{
  [a2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_allocWithZone(type metadata accessor for CropResizeView(0));
  v14 = a3;
  specialized CropResizeView.init(frame:canvas:)(v14, v6, v8, v10, v12);
  v16 = v15;

  [a2 addSubview_];
  v17 = *(v14 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView);
  *(v14 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView) = v16;
  v18 = v16;

  [v14 setNeedsLayout];
}

void one-time initialization function for headroomLimitForHDR()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1DA6CCED0](0xD000000000000016, 0x80000001D408E8E0);
  [v0 doubleForKey_];
  v3 = v2;

  v4 = 2.0;
  if (v3 > 0.0)
  {
    v4 = v3;
  }

  static AnyCanvas.headroomLimitForHDR = *&v4;
}

void AnyCanvas._potentialHeadroomOverride.didset(double a1)
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride;
  if (*&v1[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] != a1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v8 + 4) = *&v1[v3];
      _os_log_impl(&dword_1D38C4000, v6, v7, "Canvas potentialHeadroomOverride set: %f", v8, 0xCu);
      MEMORY[0x1DA6D0660](v8, -1, -1);
    }

    v9 = MEMORY[0x1E69E7D40];
    v10 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x468))();
    if (v10)
    {
      v11 = v10;
      if (AnyCanvas.isHDRActive.getter())
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v12 = v5[OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR];
      }

      else
      {
        v12 = 0;
      }

      [v11 setWantsExtendedDynamicRangeContent_];
    }

    v13 = (*((*v9 & *v5) + 0x440))();
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 24))(ObjectType, v15);
  }
}

double key path getter for AnyCanvas.potentialHeadroomOverride : AnyCanvas@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride);
  *a2 = result;
  return result;
}

void closure #1 in AnyCanvas.potentialHeadroomOverride.setter(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride);
  *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride) = a2;
  AnyCanvas._potentialHeadroomOverride.didset(v2);
}

uint64_t closure #1 in AnyCanvas.acceptedDropLayouts.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit6Layout_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D40621E0;
  *(v0 + 32) = type metadata accessor for PaperLayout();
  *(v0 + 40) = &protocol witness table for PaperLayout;
  *(v0 + 48) = type metadata accessor for ImageLayout();
  *(v0 + 56) = &protocol witness table for ImageLayout;
  *(v0 + 64) = type metadata accessor for LinkLayout();
  *(v0 + 72) = &protocol witness table for LinkLayout;
  *(v0 + 80) = type metadata accessor for TextBoxLayout();
  *(v0 + 88) = &protocol witness table for TextBoxLayout;
  *(v0 + 96) = type metadata accessor for GraphLayout();
  *(v0 + 104) = &protocol witness table for GraphLayout;
  return v0;
}

Swift::Int AnyCanvas.MergeSource.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in AnyCanvas.forwardChanges(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x7E0))();
  v4 = (*((*v2 & *a1) + 0x7E8))(v3);
  return (*((*v2 & *a1) + 0x7F0))(v4);
}

uint64_t key path getter for AnyCanvas.viewControllerForPresentingUI : AnyCanvas@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x8C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AnyCanvas.viewControllerForPresentingUI : AnyCanvas(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x8C8);
  v4 = *a1;
  return v3(v2);
}

void closure #1 in AnyCanvas.viewControllerForPresentingUI.setter(void *a1)
{
  swift_beginAccess();
  v2 = swift_unknownObjectWeakAssign();
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x440))(v2);
  v5 = v4;
  ObjectType = swift_getObjectType();
  (*(v5 + 24))(ObjectType, v5);
}

uint64_t AnyCanvas.pasteboardRepresentations(_:)()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](AnyCanvas.pasteboardRepresentations(_:), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t AnyCanvas.createElementAndStrokeImages(elementMembers:strokeMembers:)()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](AnyCanvas.createElementAndStrokeImages(elementMembers:strokeMembers:), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t AnyCanvas.imageElementFor(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t key path getter for AnyCanvas.magicGenerativePlaygroundTokenProvider : AnyCanvas@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return outlined init with copy of Date?(v7 + v8, a4, a3);
}

uint64_t key path setter for AnyCanvas.magicGenerativePlaygroundTokenProvider : AnyCanvas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  outlined init with copy of Date?(a1, v7, a5);
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, a5);
}

uint64_t closure #1 in AnyCanvas.magicGenerativePlaygroundTokenProvider.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  outlined init with copy of Date?(a2, v10, a3);
  v8 = *a5;
  swift_beginAccess();
  outlined assign with take of UUID?(v10, a1 + v8, a3);
  return swift_endAccess();
}

uint64_t AnyCanvas.asyncMaxHeadroom()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](AnyCanvas.asyncMaxHeadroom(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1(0, 1);
}

uint64_t AnyCanvas.renderImage(canvasElement:renderer:renderID:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](AnyCanvas.renderImage(canvasElement:renderer:renderID:), v1, v0);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

id AnyCanvas.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnyCanvas();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for NewCanvasElementDelegate.fontScaleForNewCanvasElement.getter in conformance AnyCanvas()
{
  (*((*MEMORY[0x1E69E7D40] & **v0) + 0x348))();
  if (v1)
  {
    return AnyCanvas.scaleFactorForNewElements.getter();
  }

  else
  {
    return 1.0;
  }
}

uint64_t one-time initialization function for canvasEnterCropNotification()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000012, 0x80000001D408E940);
  static AnyCanvas.canvasEnterCropNotification = result;
  return result;
}

uint64_t one-time initialization function for canvasDidCropNotification()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D408E920);
  static AnyCanvas.canvasDidCropNotification = result;
  return result;
}

uint64_t one-time initialization function for canvasCancelCropNotification()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D408E900);
  static AnyCanvas.canvasCancelCropNotification = result;
  return result;
}

id static AnyCanvas.canvasEnterCropNotification.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

Swift::Void __swiftcall AnyCanvas.canvasDidCrop()()
{
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for canvasDidCropNotification != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static AnyCanvas.canvasDidCropNotification object:v0 userInfo:0];

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void closure #1 in AnyCanvas.canvasCancelCrop()(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  if ((*(a1 + 40) & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x450))();
    [v6 setZoomScale_];
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = (*((*v4 & *a2) + 0x450))();
    [v9 setContentOffset_];
  }
}

void closure #2 in AnyCanvas.canvasCancelCrop()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 24);
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
    outlined init with copy of AnyCanvas.CanvasStateRollback(a2, v6);
    AnyCanvas.selection.setter(v2, v5, v4, v3 & 1);
  }
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x1DA6C8120]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

void partial apply for closure #1 in AnyCanvas.isInCanvasSelectionMode.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode);
  *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = *(v0 + 24);
  AnyCanvas._isInCanvasSelectionMode.didset(v2);
}

unint64_t lazy protocol witness table accessor for type AnyCanvas.MergeSource and conformance AnyCanvas.MergeSource()
{
  result = lazy protocol witness table cache variable for type AnyCanvas.MergeSource and conformance AnyCanvas.MergeSource;
  if (!lazy protocol witness table cache variable for type AnyCanvas.MergeSource and conformance AnyCanvas.MergeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCanvas.MergeSource and conformance AnyCanvas.MergeSource);
  }

  return result;
}

void type metadata completion function for AnyCanvas()
{
  type metadata accessor for Capsule<CanvasState>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Capsule<CanvasState>()
{
  if (!lazy cache variable for type metadata for Capsule<CanvasState>)
  {
    type metadata accessor for CanvasState(255);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState);
    v0 = type metadata accessor for Capsule();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Capsule<CanvasState>);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8PaperKit13CanvasMembersVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnyCanvas.CanvasStateRollback(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for AnyCanvas.CanvasStateRollback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection()
{
  result = lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection;
  if (!lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection;
  if (!lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection;
  if (!lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection;
  if (!lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection;
  if (!lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection;
  if (!lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection;
  if (!lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimestampedSelection and conformance TimestampedSelection);
  }

  return result;
}

uint64_t outlined consume of AnyCanvas.CanvasStateRollback?(uint64_t result)
{
  if (result != 1)
  {
    return outlined consume of CanvasMembers?(result);
  }

  return result;
}

uint64_t outlined consume of CanvasMembers?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void specialized AnyCanvas.init(coder:)()
{
  v1 = type metadata accessor for CanvasState(0);
  MEMORY[0x1EEE9AC00](v1);
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView) = 0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState;
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 81) = 0u;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasStateLiveStreamMessenger + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride;
  *v3 = 0;
  *(v3 + 8) = 1;
  type metadata accessor for UUID();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  CRDictionary.init()();
  UnknownProperties.init()();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState);
  Capsule.init(_:id:)();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_directTouchMode) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_directTouchAutomaticallyDraws) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode) = 1;
  static FeatureSet.latest.getter(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet);
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_liveEditingContinuations) = MEMORY[0x1E69E7CC0];
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling) = 0;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_timeOfOpeningContainerView;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_latencyOfFormFields) = v4;
  v7 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__magicGenerativePlaygroundTokenProvider;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__magicGenerativePlaygroundContainerStateObserver;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  ObservationRegistrar.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized AnyCanvas.init(frame:)()
{
  v1 = type metadata accessor for CanvasState(0);
  MEMORY[0x1EEE9AC00](v1);
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView) = 0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState;
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 81) = 0u;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasStateLiveStreamMessenger + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride;
  *v3 = 0;
  *(v3 + 8) = 1;
  type metadata accessor for UUID();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  lazy protocol witness table accessor for type TimestampedSelection and conformance TimestampedSelection();
  CRDictionary.init()();
  UnknownProperties.init()();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState);
  Capsule.init(_:id:)();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_directTouchMode) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_directTouchAutomaticallyDraws) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode) = 1;
  static FeatureSet.latest.getter(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet);
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_liveEditingContinuations) = MEMORY[0x1E69E7CC0];
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling) = 0;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_timeOfOpeningContainerView;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_latencyOfFormFields) = v4;
  v7 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__magicGenerativePlaygroundTokenProvider;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__magicGenerativePlaygroundContainerStateObserver;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  ObservationRegistrar.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _s8PaperKit9AnyCanvasC25potentialHeadroomOverride12CoreGraphics7CGFloatVvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride);
  *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride) = *(v0 + 24);
  AnyCanvas._potentialHeadroomOverride.didset(v2);
}

uint64_t _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_219Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t partial apply for implicit closure #1 in closure #1 in AnyCanvas.updateCanvasState(_:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = static Date.timeIntervalSinceReferenceDate.getter();
  *a1 = v6;
  a1[1] = v4;
  a1[2] = v3;
  v7 = MEMORY[0x1E69E7CC0];
  a1[3] = MEMORY[0x1E69E7CC0];
  a1[4] = v7;
  return result;
}

void one-time initialization function for buttonFontSize()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v1 = *MEMORY[0x1E69DB978];
  v2 = *MEMORY[0x1E69DDC70];
  v3 = objc_opt_self();
  v4 = v0;
  v5 = v2;
  v6 = [v3 traitCollectionWithPreferredContentSizeCategory_];
  v7 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v10 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

    if (v10)
    {
      v11 = [v10 fontDescriptor];

      [v11 pointSize];
      v13 = v12;
    }

    else
    {
      v13 = 18.0;
    }

    static MiniMenuConstants.buttonFontSize = *&v13;
  }

  else
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for paletteBackgroundColor()
{
  v0 = type metadata accessor for Material();
  __swift_allocate_value_buffer(v0, static MiniMenuConstants.paletteBackgroundColor);
  __swift_project_value_buffer(v0, static MiniMenuConstants.paletteBackgroundColor);
  return static Material.regular.getter();
}

uint64_t closure #1 in ImageDescriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for ContainerBackgroundPlacement();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageDescriptionView(0);
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = v6;
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v7 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGATG_ACyACyAA0L0VAA022_EnvironmentKeyWritingR0VyAA0L9AlignmentOGGATGAA6SpacerVtGGATGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAFyAFyAFyAFyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUG_AFyAFyAA0N0VAA022_EnvironmentKeyWritingT0VyAA0N9AlignmentOGGAUGAA6SpacerVtGGAUG_SSQo_Md);
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0fH0yQrqd__SyRd__lFQOyACyAA6VStackVyAA05TupleE0VyACyACyACyACyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAZG_ACyACyAA0S0VAA022_EnvironmentKeyWritingY0VyAA0S9AlignmentOGGAZGAA6SpacerVtGGAZG_SSQo__Qo_AA017_AppearanceActionY0VGMd);
  MEMORY[0x1EEE9AC00](v52);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0VyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationJ4ItemV0klM0OFQOyAcAE0iK0yQrqd__SyRd__lFQOyAHyAA6VStackVyAA05TupleC0VyAHyAHyAHyAHyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_G_AHyAHyAA0V0VAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGGA1_GAA6SpacerVtGGA1_G_SSQo__Qo_AA25_AppearanceActionModifierVG_AA0qfG0VyAA0fO0Vyyt8PaperKit20HeadlineCancelButtonVG_A38_yytA39_18HeadlineDoneButtonVGtGQo_Md);
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v48 - v19;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA0D0PAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA08_PaddingG0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAXG_AKyAKyAA0O0VAA022_EnvironmentKeyWritingT0VyAA0O9AlignmentOGGAXGAA6SpacerVtGGMd) + 44)];
  v59 = a1;
  closure #1 in closure #1 in ImageDescriptionView.body.getter(a1, v20);
  v21 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v22 = &v12[*(v10 + 36)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v68._object = 0x80000001D408E9E0;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._object = 0x80000001D4085870;
  v68._countAndFlagsBits = 0xD000000000000022;
  v28._countAndFlagsBits = 0xD000000000000011;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v27, paperKitBundle, v29, v68);
  v30 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.focused(_:)>>.0, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v31 = lazy protocol witness table accessor for type String and conformance String();
  v32 = MEMORY[0x1E69E6158];
  View.navigationTitle<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGATG_ACyACyAA0L0VAA022_EnvironmentKeyWritingR0VyAA0L9AlignmentOGGATGAA6SpacerVtGGATGMd);
  v33 = v51;
  (*(v7 + 104))(v9, *MEMORY[0x1E697C438], v51);
  v65._countAndFlagsBits = v10;
  v65._object = v32;
  v66 = v30;
  v67 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v50;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v7 + 8))(v9, v33);
  (*(v49 + 8))(v15, v34);
  v35 = v56;
  outlined init with copy of ImageDescriptionView(v59, v56);
  v36 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v37 = swift_allocObject();
  v38 = outlined init with take of ImageDescriptionView(v35, v37 + v36);
  v39 = v52;
  v40 = &v17[*(v52 + 36)];
  *v40 = partial apply for closure #2 in closure #1 in ImageDescriptionView.body.getter;
  v40[1] = v37;
  v40[2] = 0;
  v40[3] = 0;
  MEMORY[0x1EEE9AC00](v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyyt8PaperKit20HeadlineCancelButtonVG_AEyytAF0i4DoneK0VGtGMd);
  v42 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  v43 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), HeadlineCancelButton>, ToolbarItem<(), HeadlineDoneButton>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyyt8PaperKit20HeadlineCancelButtonVG_AEyytAF0i4DoneK0VGtGMd);
  v44 = v53;
  View.toolbar<A>(content:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0fH0yQrqd__SyRd__lFQOyACyAA6VStackVyAA05TupleE0VyACyACyACyACyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAZG_ACyACyAA0S0VAA022_EnvironmentKeyWritingY0VyAA0S9AlignmentOGGAZGAA6SpacerVtGGAZG_SSQo__Qo_AA017_AppearanceActionY0VGMd);
  v64 = static Color.clear.getter();
  v45 = v60;
  static ContainerBackgroundPlacement.navigation.getter();
  v65._countAndFlagsBits = v39;
  v65._object = v41;
  v66 = v42;
  v67 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v58;
  View.containerBackground<A>(_:for:)();
  (*(v62 + 8))(v45, v63);

  return (*(v57 + 8))(v44, v46);
}

uint64_t closure #1 in closure #1 in ImageDescriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for TextEditor();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAPGMd);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  v13 = type metadata accessor for ImageDescriptionView(0);
  v14 = (a1 + *(v13 + 20));
  v15 = *v14;
  v16 = *(v14 + 2);
  v84 = v15;
  *&v85 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
  State.projectedValue.getter();
  TextEditor.init(text:)();
  v17 = (a1 + *(v13 + 24));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  LOBYTE(v88._countAndFlagsBits) = v18;
  v88._object = v19;
  v89 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10FocusStateVySbGMd);
  FocusState.projectedValue.getter();
  lazy protocol witness table accessor for type TextEditor and conformance TextEditor();
  View.focused(_:)();

  (*(v4 + 8))(v6, v3);
  v20 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGMd) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = [objc_opt_self() systemBackgroundColor];
  v31 = Color.init(uiColor:)();
  LOBYTE(v3) = static Edge.Set.all.getter();
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd) + 36)];
  *v32 = v31;
  v32[8] = v3;
  v33 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36)];
  v34 = *(type metadata accessor for RoundedRectangle() + 20);
  v35 = *MEMORY[0x1E697F468];
  v36 = type metadata accessor for RoundedCornerStyle();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #8.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  v42 = static Edge.Set.horizontal.getter();
  v43 = *(v8 + 44);
  v78 = v12;
  v44 = &v12[v43];
  *v44 = v42;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  v44[40] = 1;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v100._object = 0x80000001D408EAB0;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v46._countAndFlagsBits = 0xD000000000000095;
  v46._object = 0x80000001D408EA10;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v100._countAndFlagsBits = 0xD000000000000022;
  v88 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v45, paperKitBundle, v47, v100);
  lazy protocol witness table accessor for type String and conformance String();
  v48 = Text.init<A>(_:)();
  v50 = v49;
  v52 = v51;
  static Font.subheadline.getter();
  v53 = Text.font(_:)();
  v55 = v54;
  v57 = v56;

  outlined consume of Text.Storage(v48, v50, v52 & 1);

  static Color.secondary.getter();
  v58 = Text.foregroundColor(_:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  outlined consume of Text.Storage(v53, v55, v57 & 1);

  KeyPath = swift_getKeyPath();
  v66 = static Edge.Set.horizontal.getter();
  v62 &= 1u;
  LOBYTE(v88._countAndFlagsBits) = v62;
  LOBYTE(v84) = 1;
  v67 = v78;
  v68 = v80;
  sub_1D38EE300(v78, v80);
  v69 = v79;
  sub_1D38EE300(v68, v79);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAPG_ACyACyAA0J0VAA022_EnvironmentKeyWritingP0VyAA0J9AlignmentOGGAPGAA6SpacerVtMd);
  v71 = (v69 + *(v70 + 48));
  *&v84 = v58;
  *(&v84 + 1) = v60;
  LOBYTE(v85) = v62;
  *(&v85 + 1) = *v83;
  DWORD1(v85) = *&v83[3];
  *(&v85 + 1) = v64;
  *&v86 = KeyPath;
  BYTE8(v86) = 0;
  HIDWORD(v86) = *&v82[3];
  *(&v86 + 9) = *v82;
  v87[0] = v66;
  *&v87[4] = *&v81[3];
  *&v87[1] = *v81;
  memset(&v87[8], 0, 32);
  v87[40] = 1;
  v72 = v85;
  *v71 = v84;
  v71[1] = v72;
  v73 = v86;
  v74 = *v87;
  v75 = *&v87[16];
  *(v71 + 73) = *&v87[25];
  v71[3] = v74;
  v71[4] = v75;
  v71[2] = v73;
  v76 = v69 + *(v70 + 64);
  *v76 = 0;
  *(v76 + 8) = 1;
  outlined init with copy of Date?(&v84, &v88, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAPGMd);
  v88._countAndFlagsBits = v58;
  v88._object = v60;
  v89 = v62;
  *v90 = *v83;
  *&v90[3] = *&v83[3];
  v91 = v64;
  v92 = KeyPath;
  v93 = 0;
  *v94 = *v82;
  *&v94[3] = *&v82[3];
  v95 = v66;
  *&v96[3] = *&v81[3];
  *v96 = *v81;
  v98 = 0u;
  v97 = 0u;
  v99 = 1;
  outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>(&v88);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAPGMd);
}

uint64_t closure #2 in closure #1 in ImageDescriptionView.body.getter()
{
  type metadata accessor for ImageDescriptionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10FocusStateVySbGMd);
  return FocusState.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in ImageDescriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyyt8PaperKit20HeadlineCancelButtonVG_ACyytAD0g4DoneI0VGtMd);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyyt8PaperKit18HeadlineDoneButtonVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyyt8PaperKit20HeadlineCancelButtonVGMd);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  MEMORY[0x1DA6C9E70](v13);
  v19[8] = a1;
  lazy protocol witness table accessor for type HeadlineCancelButton and conformance HeadlineCancelButton();
  v16 = ToolbarItem<>.init(placement:content:)();
  MEMORY[0x1DA6C9E80](v16);
  v19[4] = a1;
  lazy protocol witness table accessor for type HeadlineDoneButton and conformance HeadlineDoneButton();
  ToolbarItem<>.init(placement:content:)();
  v17 = *(v3 + 48);
  (*(v12 + 16))(v5, v15, v11);
  (*(v7 + 16))(&v5[v17], v9, v6);
  TupleToolbarContent.init(_:)();
  (*(v7 + 8))(v9, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in ImageDescriptionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ImageDescriptionView(0) + 32));
  if (*v6)
  {
    (*v6)();
  }

  specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, MEMORY[0x1E697BF90], v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #1 in closure #3 in closure #1 in ImageDescriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for ImageDescriptionView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  outlined init with copy of ImageDescriptionView(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = outlined init with take of ImageDescriptionView(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a3 = a2;
  a3[1] = v10;
  return result;
}

uint64_t closure #1 in closure #2 in closure #3 in closure #1 in ImageDescriptionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageDescriptionView(0);
  v7 = *(a1 + *(v6 + 28));
  if (v7)
  {
    v8 = (a1 + *(v6 + 20));
    v9 = *v8;
    v10 = *(v8 + 2);
    v13 = v9;
    v14 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
    State.wrappedValue.getter();
    v7(v12[1], v12[2]);
  }

  specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, MEMORY[0x1E697BF90], v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for View.body.getter in conformance ImageDescriptionView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19containerBackground_3forQrqd___AA09ContainerE9PlacementVtAA10ShapeStyleRd__lFQOyAcAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedN0VyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationQ4ItemV0rsT0OFQOyAcAE0pR0yQrqd__SyRd__lFQOyAMyAA6VStackVyAA05TupleC0VyAMyAMyAMyAMyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA01_eJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_G_AMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_GAA6SpacerVtGGA6_G_SSQo__Qo_AA25_AppearanceActionModifierVG_AA0xmN0VyAA0mV0Vyyt8PaperKit20HeadlineCancelButtonVG_A43_yytA44_18HeadlineDoneButtonVGtGQo__A11_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0VyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationJ4ItemV0klM0OFQOyAcAE0iK0yQrqd__SyRd__lFQOyAHyAA6VStackVyAA05TupleC0VyAHyAHyAHyAHyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_G_AHyAHyAA0V0VAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGGA1_GAA6SpacerVtGGA1_G_SSQo__Qo_AA25_AppearanceActionModifierVG_AA0qfG0VyAA0fO0Vyyt8PaperKit20HeadlineCancelButtonVG_A38_yytA39_18HeadlineDoneButtonVGtGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0fH0yQrqd__SyRd__lFQOyACyAA6VStackVyAA05TupleE0VyACyACyACyACyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAZG_ACyACyAA0S0VAA022_EnvironmentKeyWritingY0VyAA0S9AlignmentOGGAZGAA6SpacerVtGGAZG_SSQo__Qo_AA017_AppearanceActionY0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyyt8PaperKit20HeadlineCancelButtonVG_AEyytAF0i4DoneK0VGtGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), HeadlineCancelButton>, ToolbarItem<(), HeadlineDoneButton>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyyt8PaperKit20HeadlineCancelButtonVG_AEyytAF0i4DoneK0VGtGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

void ImageDescriptionViewController.init(imageDescription:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for ImageDescriptionView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37[-v12];
  *(v2 + direct field offset for ImageDescriptionViewController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v14 = v10 + v5[6];

  *v14 = FocusState.init<>()() & 1;
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (a2)
  {
    v18 = a2;
  }

  v19 = (v10 + v5[7]);
  v20 = (v10 + v5[8]);
  v21 = (v10 + v5[5]);
  *v21 = v17;
  v21[1] = v18;
  v21[2] = 0;
  *v19 = 0;
  v19[1] = 0;
  *v20 = 0;
  v20[1] = 0;
  outlined init with take of ImageDescriptionView(v10, v13);
  outlined init with copy of ImageDescriptionView(v13, v7);
  v22 = UIHostingController.init(rootView:)();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    [v23 setBackgroundColor_];

    v25 = [v22 view];
    if (v25)
    {

      [v25 setOpaque_];

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = v22;

      v28 = dispatch thunk of UIHostingController.rootView.modify();
      v30 = (v29 + v5[7]);
      v31 = *v30;
      *v30 = partial apply for closure #1 in ImageDescriptionViewController.init(imageDescription:);
      v30[1] = v26;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v31);
      v28(v37, 0);

      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v33 = dispatch thunk of UIHostingController.rootView.modify();
      v35 = (v34 + v5[8]);
      v36 = *v35;
      *v35 = partial apply for closure #2 in ImageDescriptionViewController.init(imageDescription:);
      v35[1] = v32;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v36);
      v33(v37, 0);

      outlined destroy of ImageDescriptionView(v13);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in ImageDescriptionViewController.init(imageDescription:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      ToolPickerController.imageDescriptionViewControllerDidSave(_:description:)(v5, a1, a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void closure #2 in ImageDescriptionViewController.init(imageDescription:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      ToolPickerController.imageDescriptionViewControllerDidCancel(_:)(v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void @objc ImageDescriptionViewController.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for ImageDescriptionViewController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc ImageDescriptionViewController.viewDidDisappear(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ImageDescriptionViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    ToolPickerController.imageDescriptionViewControllerDidDismiss(_:)(v4);
    swift_unknownObjectRelease();
  }
}

id ImageDescriptionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageDescriptionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for ImageDescriptionView()
{
  type metadata accessor for Environment<DismissAction>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<String>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FocusState<Bool>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (())?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<DismissAction>()
{
  if (!lazy cache variable for type metadata for Environment<DismissAction>)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<DismissAction>);
    }
  }
}

void type metadata accessor for State<String>()
{
  if (!lazy cache variable for type metadata for State<String>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<String>);
    }
  }
}

void type metadata accessor for FocusState<Bool>()
{
  if (!lazy cache variable for type metadata for FocusState<Bool>)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusState<Bool>);
    }
  }
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationG4ItemV0hiJ0OFQOyAeAE0fH0yQrqd__SyRd__lFQOyACyAA6VStackVyAA05TupleE0VyACyACyACyACyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAZG_ACyACyAA0S0VAA022_EnvironmentKeyWritingY0VyAA0S9AlignmentOGGAZGAA6SpacerVtGGAZG_SSQo__Qo_AA017_AppearanceActionY0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAFyAFyAFyAFyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUG_AFyAFyAA0N0VAA022_EnvironmentKeyWritingT0VyAA0N9AlignmentOGGAUGAA6SpacerVtGGAUG_SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGATG_ACyACyAA0L0VAA022_EnvironmentKeyWritingR0VyAA0L9AlignmentOGGATGAA6SpacerVtGGATGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.focused(_:)>>.0, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationBarTitleDisplayMode(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.focused(_:)>>.0, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.focused(_:)>>.0, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.focused(_:)>>.0, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGATG_ACyACyAA0L0VAA022_EnvironmentKeyWritingR0VyAA0L9AlignmentOGGATGAA6SpacerVtGGATGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.focused(_:)>>.0, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA0E0PAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGATG_AGyAGyAA0L0VAA022_EnvironmentKeyWritingR0VyAA0L9AlignmentOGGATGAA6SpacerVtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.focused(_:)>>.0, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ImageDescriptionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageDescriptionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ImageDescriptionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageDescriptionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for ImageDescriptionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 28)))
  {
  }

  if (*(v5 + *(v1 + 32)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in ImageDescriptionView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageDescriptionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  outlined init with copy of Date?(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

unint64_t lazy protocol witness table accessor for type TextEditor and conformance TextEditor()
{
  result = lazy protocol witness table cache variable for type TextEditor and conformance TextEditor;
  if (!lazy protocol witness table cache variable for type TextEditor and conformance TextEditor)
  {
    type metadata accessor for TextEditor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditor and conformance TextEditor);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  outlined init with copy of Date?(v2, &v13 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of UserInterfaceSizeClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ImageDescriptionView(uint64_t a1)
{
  v2 = type metadata accessor for ImageDescriptionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PaperDocumentInlineView.paperDocument.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
    v7 = *(v6 - 8);
    (*(v7 + 16))(a1, v4 + v5, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t PaperDocumentInlineView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PaperDocumentInlineView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate;
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

void PaperDocumentInlineView.enclosingTextViewTiledViewRulerHostingView.getter()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      goto LABEL_4;
    }

    v5 = v4;
    v6 = v2;
    v7 = [v5 subviews];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v6;
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        break;
      }

      goto LABEL_3;
    }

    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      break;
    }

LABEL_3:

LABEL_4:
    v3 = [v2 superview];

    v2 = v3;
    if (!v3)
    {
      return;
    }
  }

  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6CE0C0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18 = &unk_1F4FA87E8;
      v14 = swift_dynamicCastObjCProtocolConditional();
      if (v14)
      {
        break;
      }
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_3;
    }
  }

  v15 = v14;

  v16 = [v15 respondsToSelector_];
  if (v16)
  {
    [v15 rulerHostingView];
  }

  else
  {
  }
}

void *PaperDocumentInlineView.toolPicker.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_toolPicker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PaperDocumentInlineView.toolPicker.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_toolPicker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *(v1 + v3);
    v9 = v8;
    v10 = v7;
    PaperDocumentView.toolPicker.setter(v8);
  }
}

void (*PaperDocumentInlineView.toolPicker.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_toolPicker;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperDocumentInlineView.toolPicker.modify;
}

void PaperDocumentInlineView.toolPicker.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v7 = *(v3[3] + v3[4]);
      v8 = v7;
      v9 = v6;
      PaperDocumentView.toolPicker.setter(v7);
    }
  }

  free(v3);
}

void key path setter for PaperDocumentInlineView.paperDocumentView : PaperDocumentInlineView(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *PaperDocumentInlineView.paperDocumentView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t type metadata accessor for PaperDocumentInlineView()
{
  result = type metadata singleton initialization cache for PaperDocumentInlineView;
  if (!type metadata singleton initialization cache for PaperDocumentInlineView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PaperDocumentInlineView.__allocating_init(paperURL:coherenceContextURL:encryptionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  return PaperDocumentInlineView.init(paperURL:coherenceContextURL:encryptionDelegate:)(a1, a2, a3);
}

{
  v7 = objc_allocWithZone(v3);
  return PaperDocumentInlineView.init(paperURL:coherenceContextURL:encryptionDelegate:)(a1, a2, a3);
}

id PaperDocumentInlineView.init(paperURL:coherenceContextURL:encryptionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_toolPicker] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_syncManager] = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_syncCancellables] = v10;
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_temporaryPaperDocument;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  v13 = &v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_liveStreamMessenger];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_participantDetailsDataSource];
  *v14 = 0;
  v14[1] = 0;
  v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = specialized static PaperDocumentInlineView.isReadOnly(_:)();
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v9, a2, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = specialized static PaperDocumentInlineView.createContext(coherenceContextURL:encryptionDelegate:readOnly:)(v9, a3, v15 & 1);
  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation3URLVSgMd);
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_crContext] = v18;
  v19 = type metadata accessor for PaperDocumentInlineView();
  v25.receiver = v3;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  PaperDocumentInlineView.watchFile(_:readOnly:)(a1, v15 & 1);
  v21 = [objc_opt_self() defaultCenter];
  v22 = MEMORY[0x1DA6CCED0](0xD000000000000020, 0x80000001D408EB70);
  [v21 addObserver:v20 selector:sel_toolPickerWillShow_ name:v22 object:0];

  outlined destroy of StocksKitCurrencyCache.Provider?(a3, &_s9Coherence18EncryptionDelegate_pSgMd);
  v23 = *(v17 + 8);
  v23(a2, v16);
  v23(a1, v16);
  return v20;
}

{
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_toolPicker] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_syncManager] = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_syncCancellables] = v7;
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_temporaryPaperDocument;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = &v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_liveStreamMessenger];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_participantDetailsDataSource];
  *v11 = 0;
  v11[1] = 0;
  v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  LOBYTE(v8) = specialized static PaperDocumentInlineView.isReadOnly(_:)();
  *&v3[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_crContext] = specialized static PaperDocumentInlineView.createContext(coherenceContextURL:encryptionDelegate:readOnly:)(a2, a3, v8 & 1);
  v17.receiver = v3;
  v17.super_class = type metadata accessor for PaperDocumentInlineView();
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  PaperDocumentInlineView.watchFile(_:readOnly:)(a1, v8 & 1);
  v13 = [objc_opt_self() defaultCenter];
  v14 = MEMORY[0x1DA6CCED0](0xD000000000000020, 0x80000001D408EB70);
  [v13 addObserver:v12 selector:sel_toolPickerWillShow_ name:v14 object:0];

  outlined destroy of StocksKitCurrencyCache.Provider?(a3, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(a2, &_s10Foundation3URLVSgMd);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v12;
}

void key path setter for PaperDocumentInlineView.viewControllerForPresentingUI : PaperDocumentInlineView()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  PaperDocumentInlineView.viewControllerForPresentingUI.didset();
}

void PaperDocumentInlineView.viewControllerForPresentingUI.didset()
{
  v1 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    if (!Strong)
    {
      v5 = [v0 window];
      Strong = [v5 rootViewController];
    }

    swift_beginAccess();
    v25 = Strong;
    swift_unknownObjectWeakAssign();
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v7 = *&v4[v6];
    v10 = *(v7 + 64);
    v9 = v7 + 64;
    v8 = v10;
    v11 = 1 << *(*&v4[v6] + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v8;
    v14 = (v11 + 63) >> 6;
    v26 = *&v4[v6];
    v27 = v4;

    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_12:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(v26 + 56) + ((v16 << 10) | (16 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v22 = swift_unknownObjectWeakLoadStrong();
      v23 = *(v19 + 224);
      v24 = v20;
      v23(v22, ObjectType, v19);
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return;
      }

      v13 = *(v9 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void PaperDocumentInlineView.viewControllerForPresentingUI.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v28 = a1;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = v4;
    if (!Strong)
    {
      v7 = [v1 window];
      Strong = [v7 rootViewController];
    }

    swift_beginAccess();
    v27 = Strong;
    swift_unknownObjectWeakAssign();
    v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v9 = *&v6[v8];
    v12 = *(v9 + 64);
    v11 = v9 + 64;
    v10 = v12;
    v13 = 1 << *(*&v6[v8] + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;
    v29 = *&v6[v8];
    v30 = v6;

    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(v29 + 56) + ((v18 << 10) | (16 * v19));
      v21 = *v20;
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      v24 = swift_unknownObjectWeakLoadStrong();
      v25 = *(v22 + 224);
      v26 = v21;
      v25(v24, ObjectType, v22);
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        a1 = v30;
        goto LABEL_15;
      }

      v15 = *(v11 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void (*PaperDocumentInlineView.viewControllerForPresentingUI.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_viewControllerForPresentingUI;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PaperDocumentInlineView.viewControllerForPresentingUI.modify;
}

void PaperDocumentInlineView.viewControllerForPresentingUI.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
LABEL_17:

    free(v3);
    return;
  }

  v5 = v3[9];
  swift_endAccess();

  v6 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v7 = *&v5[v6];
  if (!v7)
  {
    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v7;
  if (!Strong)
  {
    v10 = [v3[9] window];
    Strong = [v10 rootViewController];
  }

  swift_beginAccess();
  v30 = Strong;
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v31 = v3;
  swift_beginAccess();
  v12 = *&v9[v11];
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  v16 = -1;
  v17 = -1 << *(*&v9[v11] + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & v13;
  v19 = (63 - v17) >> 6;
  v32 = *&v9[v11];
  v33 = v9;

  v20 = 0;
  while (v18)
  {
    v21 = v20;
LABEL_14:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(v32 + 56) + ((v21 << 10) | (16 * v22));
    v24 = *v23;
    v25 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    v27 = swift_unknownObjectWeakLoadStrong();
    v28 = *(v25 + 224);
    v29 = v24;
    v28(v27, ObjectType, v25);
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v3 = v31;
      goto LABEL_17;
    }

    v18 = *(v14 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_14;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall PaperDocumentInlineView.didMoveToWindow()()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for PaperDocumentInlineView();
  objc_msgSendSuper2(&v28, sel_didMoveToWindow);
  v1 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    if (!Strong)
    {
      v5 = [v0 window];
      Strong = [v5 rootViewController];
    }

    swift_beginAccess();
    v25 = Strong;
    swift_unknownObjectWeakAssign();
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v7 = *&v4[v6];
    v10 = *(v7 + 64);
    v9 = v7 + 64;
    v8 = v10;
    v11 = 1 << *(*&v4[v6] + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v8;
    v14 = (v11 + 63) >> 6;
    v26 = *&v4[v6];
    v27 = v4;

    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_12:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(v26 + 56) + ((v16 << 10) | (16 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v22 = swift_unknownObjectWeakLoadStrong();
      v23 = *(v19 + 224);
      v24 = v20;
      v23(v22, ObjectType, v19);
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return;
      }

      v13 = *(v9 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t PaperDocumentInlineView.watchFile(_:readOnly:)(uint64_t a1, int a2)
{
  LODWORD(v97) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v90 = &v79[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I8DocumentVGs5Error_pGSo9NSRunLoopCGMd);
  v6 = *(v5 - 8);
  v92 = v5;
  v93 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v79[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79[-v12];
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v87 = *(FileVersionPolicy - 8);
  v88 = FileVersionPolicy;
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v16 = &v79[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v79[-v18];
  v102 = type metadata accessor for URL();
  v19 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v79[-v22];
  v89 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79[-v25];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, logger);
  v30 = v19 + 16;
  v29 = *(v19 + 16);
  v29(v26, a1, v102);
  v83 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v96 = v19;
  v99 = a1;
  v100 = v29;
  v86 = v16;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v103[0] = v81;
    *v34 = 136380931;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v80 = v32;
    v82 = v10;
    v35 = v102;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v35;
    v30 = v19 + 16;
    v39 = v38;
    v40 = *(v19 + 8);
    (v40)(v26, v37);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, v103);
    v10 = v82;
    a1 = v99;

    *(v34 + 4) = v41;
    *(v34 + 12) = 1024;
    v42 = v97;
    *(v34 + 14) = v97 & 1;
    _os_log_impl(&dword_1D38C4000, v31, v80, "PaperDocumentInlineView watch:%{private}s, readOnly:%{BOOL}d", v34, 0x12u);
    v43 = v81;
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x1DA6D0660](v43, -1, -1);
    v44 = v34;
    v29 = v100;
    MEMORY[0x1DA6D0660](v44, -1, -1);
  }

  else
  {

    v40 = *(v19 + 8);
    (v40)(v26, v102);
    v42 = v97;
  }

  v45 = *(v101 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_crContext);
  if (v42)
  {
    v98 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E8DocumentVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
    v46 = type metadata accessor for CRCodableVersion();
    v47 = *(v46 - 8);
    v48 = *(v47 + 72);
    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1D405C990;
    v51 = v50 + v49;
    v52 = *(v47 + 104);
    v52(v51, *MEMORY[0x1E6995280], v46);
    v52(v51 + v48, *MEMORY[0x1E6995288], v46);
    if (one-time initialization token for allReadableFileFormatVersions != -1)
    {
      swift_once();
    }

    v54 = v87;
    v53 = v88;
    v55 = v86;
    (*(v87 + 104))(v86, *MEMORY[0x1E6995398], v88);
    v56 = v85;
    static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();

    (*(v54 + 8))(v55, v53);
    PaperDocumentInlineView.handleMerge(newModel:)(v56);
    return v94[1](v56, v95);
  }

  else
  {
    (v94[7])(v13, 1, 1, v95);
    outlined init with copy of Date?(v13, v10, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
    v29(v98, a1, v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
    v57 = type metadata accessor for CRCodableVersion();
    v58 = *(v57 - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1D405C990;
    v62 = v61 + v60;
    v63 = *MEMORY[0x1E6995280];
    v94 = v13;
    v64 = *(v58 + 104);
    v64(v62, v63, v57);
    v64(v62 + v59, *MEMORY[0x1E6995288], v57);
    v95 = v30;
    if (one-time initialization token for allReadableFileFormatVersions != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E8DocumentVGMd);
    swift_allocObject();

    v65 = v45;
    v66 = v98;
    v67 = CRDataStoreBundle.init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
    *(v101 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_syncManager) = v67;
    v97 = v67;

    v103[0] = CRDataStoreBundle.publisher.getter();
    v68 = [objc_opt_self() mainRunLoop];
    v103[3] = v68;
    v69 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v70 = v90;
    (*(*(v69 - 8) + 56))(v90, 1, 1, v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5Error_pGMd);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<PaperDocument>, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5Error_pGMd);
    lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
    v71 = v91;
    Publisher.receive<A>(on:options:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    v72 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = v102;
    v100(v66, v99, v102);
    v74 = v96;
    v75 = (*(v96 + 80) + 24) & ~*(v96 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v72;
    (*(v74 + 32))(v76 + v75, v66, v73);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Capsule<PaperDocument>, Error>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I8DocumentVGs5Error_pGSo9NSRunLoopCGMd);
    v77 = v92;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v93 + 8))(v71, v77);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

void closure #1 in PaperDocumentInlineView.watchFile(_:readOnly:)(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v9;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      (*(v6 + 16))(v8, a3, v5);
      v14 = v9;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v30[0] = swift_slowAlloc();
        v31[0] = v30[0];
        *v17 = 136380931;
        _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v19;
        (*(v6 + 8))(v8, v5);
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v31);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v30[1] = v9;
        v22 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v31);

        *(v17 + 14) = v25;
        _os_log_impl(&dword_1D38C4000, v15, v16, "Failed to load inline document file: %{private}s. Error: %s", v17, 0x16u);
        v26 = v30[0];
        swift_arrayDestroy();
        MEMORY[0x1DA6D0660](v26, -1, -1);
        MEMORY[0x1DA6D0660](v17, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v8, v5);
      }

      v27 = &v11[OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v27 + 1);
        ObjectType = swift_getObjectType();
        (*(v28 + 24))(v9, ObjectType, v28);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void closure #2 in PaperDocumentInlineView.watchFile(_:readOnly:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    PaperDocumentInlineView.handleMerge(newModel:)(a1);
  }
}

void PaperDocumentInlineView.handleMerge(newModel:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v5 = *(v4 - 8);
  v38 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = PaperDocumentInlineView.temporaryPaperDocument.modify();
  v40 = v5;
  v15 = *(v5 + 48);
  if (v15(v16, 1, v4))
  {
    v17 = a1;
  }

  else
  {
    type metadata accessor for PaperDocument(0);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    v17 = a1;
    Capsule.merge<A>(_:)();
  }

  (v14)(v41, 0);
  v18 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v19 = *&v1[v18];
  if (!v19 || (v20 = v19, specialized PaperDocumentView.merge<A>(_:from:page:)(v17, 0, 0), v20, !*&v2[v18]))
  {
    v21 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_temporaryPaperDocument;
    swift_beginAccess();
    outlined init with copy of Date?(&v2[v21], v13, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
    v22 = v15(v13, 1, v4);
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
    if (v22 == 1)
    {
      v23 = v40;
      v24 = *(v40 + 16);
      v25 = v36;
      v26 = v17;
      v24(v36, v17, v4);
      (*(v23 + 56))(v25, 0, 1, v4);
      swift_beginAccess();
      outlined assign with take of Capsule<PaperDocument>?(v25, &v2[v21]);
      swift_endAccess();
      v27 = type metadata accessor for TaskPriority();
      v28 = v37;
      (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
      v29 = v39;
      v24(v39, v26, v4);
      type metadata accessor for MainActor();
      v30 = v2;
      v31 = static MainActor.shared.getter();
      v32 = (*(v23 + 80) + 40) & ~*(v23 + 80);
      v33 = swift_allocObject();
      v34 = MEMORY[0x1E69E85E0];
      *(v33 + 2) = v31;
      *(v33 + 3) = v34;
      *(v33 + 4) = v30;
      (*(v23 + 32))(&v33[v32], v29, v4);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v28, &async function pointer to partial apply for closure #1 in PaperDocumentInlineView.handleMerge(newModel:), v33);
    }
  }
}

uint64_t closure #1 in PaperDocumentInlineView.handleMerge(newModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[53] = a4;
  v5[54] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v5[55] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I8DocumentVGs5NeverOGSo9NSRunLoopCGMd);
  v5[56] = v6;
  v5[57] = *(v6 - 8);
  v5[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[61] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[62] = v8;
  v5[63] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentInlineView.handleMerge(newModel:), v8, v7);
}

uint64_t closure #1 in PaperDocumentInlineView.handleMerge(newModel:)()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 424);
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_crContext);
  *(v0 + 512) = v3;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_temporaryPaperDocument;
  *(v0 + 520) = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_temporaryPaperDocument;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v4, v1, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  *(v0 + 528) = v5;
  v6 = *(v5 - 8);
  *(v0 + 536) = v6;
  result = (*(v6 + 48))(v1, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 424);
    v9 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_toolPicker;
    swift_beginAccess();
    v10 = *(v8 + v9);
    *(v0 + 544) = v10;
    *(v0 + 568) = 3;
    objc_allocWithZone(type metadata accessor for PaperDocumentView());
    v11 = v3;
    v12 = v10;
    v13 = swift_task_alloc();
    *(v0 + 552) = v13;
    *v13 = v0;
    v13[1] = closure #1 in PaperDocumentInlineView.handleMerge(newModel:);
    v14 = *(v0 + 480);

    return specialized PaperDocumentView.init(context:document:editingMode:toolPicker:)(v11, v14, (v0 + 568), v10);
  }

  return result;
}

uint64_t closure #1 in PaperDocumentInlineView.handleMerge(newModel:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 512);
  *(*v1 + 560) = a1;

  v5 = *(v2 + 504);
  v6 = *(v2 + 496);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentInlineView.handleMerge(newModel:), v6, v5);
}

void closure #1 in PaperDocumentInlineView.handleMerge(newModel:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v2 = [*(v0 + 424) window];
    Strong = [v2 rootViewController];
  }

  v3 = *(v0 + 560);
  swift_beginAccess();
  v102 = Strong;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v104 = v0;
  swift_beginAccess();
  v99 = v4;
  v5 = *(v3 + v4);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v105 = v3;
  v108 = v5;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_11:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(v108 + 56) + ((v12 << 10) | (16 * v13));
      v15 = *v14;
      v16 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      v18 = swift_unknownObjectWeakLoadStrong();
      v19 = *(v16 + 224);
      v20 = v15;
      v19(v18, ObjectType, v16);

      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  v21 = v104[70];
  v22 = v104[67];
  v100 = v104[66];
  v23 = v104[65];
  v24 = v104[59];
  v25 = v104[53];

  swift_getKeyPath();
  v26 = swift_task_alloc();
  v26[2] = v21;
  v26[3] = v25;
  v26[4] = &protocol witness table for PaperDocumentInlineView;
  v104[44] = v21;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v22 + 56))(v24, 1, 1, v100);
  swift_beginAccess();
  outlined assign with take of Capsule<PaperDocument>?(v24, v25 + v23);
  swift_endAccess();
  v27 = v21;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 addSubview_];
  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D405B630;
  v30 = [v27 leadingAnchor];
  v31 = [v25 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v32;
  v33 = [v27 trailingAnchor];
  v34 = [v25 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v29 + 40) = v35;
  v36 = [v27 topAnchor];
  v37 = [v25 topAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v29 + 48) = v38;
  v39 = v104;
  v40 = [v27 bottomAnchor];
  v41 = [v25 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v29 + 56) = v42;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints_];

  v44 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__automaticallyAdjustScaleFactor;
  swift_beginAccess();
  if (*(v27 + v44))
  {
    v45 = v104[70];
    swift_getKeyPath();
    v46 = swift_task_alloc();
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    v104[52] = v45;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v27 + v44) = 0;
  }

  v47 = v104[70];
  v48 = v104[53];
  *&v47[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_automaticallyApplySafeAreaInsetsToAxes] = MEMORY[0x1E69E7CC0];

  v49 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v50 = *(v48 + v49);
  *(v48 + v49) = v47;
  v51 = v47;

  v52 = (v48 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_liveStreamMessenger);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  swift_getKeyPath();
  v55 = swift_task_alloc();
  v55[2] = v51;
  v55[3] = v54;
  v55[4] = v53;
  v104[45] = v51;
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  swift_unknownObjectRelease();

  v56 = (v48 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_participantDetailsDataSource);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  swift_getKeyPath();
  v59 = swift_task_alloc();
  v59[2] = v51;
  v59[3] = v58;
  v59[4] = v57;
  v104[46] = v51;
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  swift_unknownObjectRelease();

  v60 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors;
  swift_beginAccess();
  v61 = *(v48 + v60);
  v62 = v51;
  v63 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  swift_beginAccess();
  if (v61 == v51[v63])
  {
    v101 = v63;
    v51[v63] = v61;
    v66 = *(v105 + v99);
    v69 = *(v66 + 64);
    v68 = v66 + 64;
    v67 = v69;
    v70 = -1;
    v71 = -1 << *(*(v105 + v99) + 32);
    if (-v71 < 64)
    {
      v70 = ~(-1 << -v71);
    }

    v72 = v70 & v67;
    v73 = (63 - v71) >> 6;
    v106 = *(v105 + v99);

    v74 = 0;
    while (v72)
    {
      v75 = v74;
      v39 = v104;
LABEL_27:
      v76 = v39[70];
      v77 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v78 = *(v106 + 56) + ((v75 << 10) | (16 * v77));
      v79 = *v78;
      v80 = *(v78 + 8);
      v81 = swift_getObjectType();
      swift_getKeyPath();
      v39[51] = v76;
      v82 = v79;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      (*(v80 + 176))(v62[v101], v81, v80);
    }

    v39 = v104;
    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_36;
      }

      if (v75 >= v73)
      {

        goto LABEL_30;
      }

      v72 = *(v68 + 8 * v75);
      ++v74;
      if (v72)
      {
        v74 = v75;
        goto LABEL_27;
      }
    }
  }

  v64 = v104[70];
  swift_getKeyPath();
  v65 = swift_task_alloc();
  *(v65 + 16) = v64;
  *(v65 + 24) = v61;
  v104[47] = v64;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_30:
  v83 = v39[70];
  v103 = v39[58];
  v84 = v39[55];
  v107 = v39[56];
  v109 = v39[57];
  v85 = v39[53];
  PaperDocumentInlineView.enclosingTextViewTiledViewRulerHostingView.getter();
  PaperDocumentView.rulerHostView.setter(v86);
  [v83 setOverrideUserInterfaceStyle_];

  v39[48] = *&v83[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_passThroughSubject];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<Capsule<PaperDocument>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  v39[49] = Publisher.eraseToAnyPublisher()();
  v87 = [objc_opt_self() mainRunLoop];
  v39[50] = v87;
  v88 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v88 - 8) + 56))(v84, 1, 1, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<PaperDocument>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  Publisher.receive<A>(on:options:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v89 = swift_allocObject();
  swift_weakInit();
  v90 = swift_allocObject();
  v91 = v85 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v90 + 24) = *(v91 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v92 = swift_allocObject();
  *(v92 + 16) = v89;
  *(v92 + 24) = v90;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Capsule<PaperDocument>, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I8DocumentVGs5NeverOGSo9NSRunLoopCGMd);
  Publisher<>.sink(receiveValue:)();

  (*(v109 + 8))(v103, v107);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v93 = swift_unknownObjectWeakLoadStrong();
  v94 = v104[70];
  if (v93)
  {
    v95 = v104[54];
    v96 = *(v91 + 8);
    v97 = swift_getObjectType();
    (*(v96 + 8))(v95, v94, v97, v96);
    swift_unknownObjectRelease();
  }

  v98 = v104[1];

  v98();
}

uint64_t closure #1 in closure #1 in PaperDocumentInlineView.handleMerge(newModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    *(v5 + 24) = *(a3 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();

    CRDataStoreBundle.sync(_:finished:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in PaperDocumentInlineView.handleMerge(newModel:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void PaperDocumentInlineView.toolPickerWillShow(_:)()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    Notification.object.getter();
    if (v10)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
      if (swift_dynamicCast())
      {
        v3 = objc_opt_self();
        v4 = v8;
        v5 = [v3 activeToolPickerForWindow_];
        if (v5)
        {
          v6 = v5;
          v4 = v4;
          v7 = static NSObject.== infix(_:_:)();

          if (v7)
          {
            PaperDocumentInlineView.toolPicker.setter(v4);

            return;
          }
        }
      }
    }

    else
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sypSgMd);
    }
  }
}

uint64_t PaperDocumentInlineView.liveStreamMessenger.getter()
{
  return PaperDocumentInlineView.liveStreamMessenger.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

void (*PaperDocumentInlineView.liveStreamMessenger.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_liveStreamMessenger;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return PaperDocumentInlineView.liveStreamMessenger.modify;
}

void PaperDocumentInlineView.liveStreamMessenger.modify(void **a1, char a2)
{
  PaperDocumentInlineView.liveStreamMessenger.modify(a1, a2);
}

{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v3[3] = v6;
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      v8 = v6;
      swift_unknownObjectRetain();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t PaperDocumentInlineView.liveStreamMessenger.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v10 = v8;
    swift_unknownObjectRetain();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*PaperDocumentInlineView.participantDetailsDataSource.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_participantDetailsDataSource;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return PaperDocumentInlineView.participantDetailsDataSource.modify;
}

uint64_t PaperDocumentInlineView.showParticipantCursors.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors;
  swift_beginAccess();
  return *(v0 + v1);
}

void PaperDocumentInlineView.showParticipantCursors.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
    swift_beginAccess();
    if (v5[v6] == (a1 & 1))
    {
      v5[v6] = a1 & 1;
      v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
      swift_beginAccess();
      v10 = *&v5[v9];
      v11 = v10 + 64;
      v12 = 1 << *(v10 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v10 + 64);
      v15 = (v12 + 63) >> 6;
      v23 = v5;
      v24 = v10;

      v16 = 0;
      while (v14)
      {
        v17 = v16;
LABEL_12:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(v24 + 56) + ((v17 << 10) | (16 * v18));
        v20 = *v19;
        v21 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        swift_getKeyPath();
        _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
        v22 = v20;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v21 + 176))(v5[v6], ObjectType, v21);
      }

      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v15)
        {

          return;
        }

        v14 = *(v11 + 8 * v17);
        ++v16;
        if (v14)
        {
          v16 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      v8 = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

void (*PaperDocumentInlineView.showParticipantCursors.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors;
  *(v3 + 80) = v1;
  *(v3 + 88) = v4;
  swift_beginAccess();
  return PaperDocumentInlineView.showParticipantCursors.modify;
}

void PaperDocumentInlineView.showParticipantCursors.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_17;
  }

  v4 = v3[10];
  v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *(v3[10] + v3[11]);
  v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  swift_beginAccess();
  if (v7 != v6[v8])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v3[6] = v6;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v10 = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_17:
    free(v3);
    return;
  }

  v6[v8] = v7;
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v28 = v3;
  swift_beginAccess();
  v12 = *&v6[v11];
  v13 = v12 + 64;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  v25 = v6;
  v26 = v6;
  v27 = v12;

  v18 = 0;
  while (v16)
  {
    v19 = v18;
    v3 = v28;
LABEL_14:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(v27 + 56) + ((v19 << 10) | (16 * v20));
    v22 = *v21;
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    v3[9] = v26;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v24 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    (*(v23 + 176))(v25[v8], ObjectType, v23);
  }

  v3 = v28;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_14;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall PaperDocumentInlineView.participantDetailsDidChange()()
{
  v1 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    PaperDocumentView.participantDetailsDidChange()();
  }
}

uint64_t PaperDocumentInlineView.textualContextProvider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_textualContextProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    swift_unknownObjectWeakLoadStrong();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v8 = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*PaperDocumentInlineView.textualContextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_textualContextProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentInlineView.textualContextProvider.modify;
}

void PaperDocumentInlineView.textualContextProvider.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      swift_unknownObjectWeakLoadStrong();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v3[3] = v6;
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      v8 = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id PaperDocumentInlineView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PaperDocumentInlineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentInlineView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for PaperKitAttachment.textualContextProvider.modify in conformance PaperDocumentInlineView(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = PaperDocumentInlineView.textualContextProvider.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

void protocol witness for PaperKitAttachment.viewControllerForPresentingUI.setter in conformance PaperDocumentInlineView(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  PaperDocumentInlineView.viewControllerForPresentingUI.didset();
}

void (*protocol witness for PaperKitAttachment.viewControllerForPresentingUI.modify in conformance PaperDocumentInlineView(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_viewControllerForPresentingUI;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return protocol witness for PaperKitAttachment.viewControllerForPresentingUI.modify in conformance PaperDocumentInlineView;
}

void protocol witness for PaperKitAttachment.viewControllerForPresentingUI.modify in conformance PaperDocumentInlineView(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    PaperDocumentInlineView.viewControllerForPresentingUI.didset();
  }

  free(v3);
}

uint64_t protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.getter in conformance PaperDocumentInlineView()
{
  return protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.getter in conformance PaperDocumentInlineView();
}

{
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.modify in conformance PaperDocumentInlineView(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = PaperDocumentInlineView.liveStreamMessenger.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.participantDetailsDataSource.modify in conformance PaperDocumentInlineView(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = PaperDocumentInlineView.participantDetailsDataSource.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void protocol witness for PaperKitStreamableAttachment.participantDetailsDidChange() in conformance PaperDocumentInlineView()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    PaperDocumentView.participantDetailsDidChange()();
  }
}

uint64_t protocol witness for PaperKitStreamableAttachment.showParticipantCursors.getter in conformance PaperDocumentInlineView()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.showParticipantCursors.modify in conformance PaperDocumentInlineView(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = PaperDocumentInlineView.showParticipantCursors.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t PaperDocumentInlineView.documentViewDidScroll(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for PaperDocumentViewDelegate.documentViewDidScroll(_:) in conformance PaperDocumentInlineView()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Calculate0E10ExpressionC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Calculate0C10ExpressionCGMd);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1DA6CE0C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for CalculateExpression();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
      do
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Coherence13WeakTagged_10Vy8PaperKit0G13CanvasElementVG_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v29 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v34 = v12;
    v35 = v9 + 56;
    v32 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v30 = v8;
    v31 = (v11 + 16);
    while (1)
    {
      v33 = v10;
      v34(v36, v32 + v13 * v10, v2);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v9 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v35 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        do
        {
          v21 = v11;
          v34(v6, *(v9 + 48) + v17 * v13, v2);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          v23 = *v14;
          (*v14)(v6, v2);
          if (v22)
          {
            v23(v36, v2);
            v11 = v21;
            v8 = v30;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v35 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v21;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v30;
      }

      v24 = v36;
      *(v35 + 8 * v18) = v20 | v19;
      result = (*v31)(*(v9 + 48) + v17 * v13, v24, v2);
      v26 = *(v9 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v9 + 16) = v28;
LABEL_4:
      v10 = v33 + 1;
      if (v33 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1DA6CE0C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
      do
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized static PaperDocumentInlineView.isReadOnly(_:)()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = URL.path.getter();
  v7 = MEMORY[0x1DA6CCED0](v6);

  v8 = [v5 isWritableFileAtPath_];

  if (v8)
  {
    return 0;
  }

  v10 = [v4 defaultManager];
  URL.deletingLastPathComponent()();
  v11 = URL.path.getter();
  v13 = v12;
  (*(v1 + 8))(v3, v0);
  v14 = MEMORY[0x1DA6CCED0](v11, v13);

  LODWORD(v11) = [v10 isWritableFileAtPath_];

  return v11 ^ 1;
}

uint64_t specialized static PaperDocumentInlineView.createContext(coherenceContextURL:encryptionDelegate:readOnly:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    goto LABEL_4;
  }

  outlined init with copy of Date?(a1, v11, &_s10Foundation3URLVSgMd);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s10Foundation3URLVSgMd);
LABEL_4:
    type metadata accessor for CRContext();
    return MEMORY[0x1DA6CC630](0, a2);
  }

  (*(v13 + 32))(v15, v11, v12);
  type metadata accessor for CRContext();
  (*(v13 + 56))(v8, 1, 1, v12);
  v17 = static CRContext.uniqueContextUnchecked(for:encryptionDelegate:temporaryDirectory:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s10Foundation3URLVSgMd);
  (*(v13 + 8))(v15, v12);
  return v17;
}

uint64_t keypath_get_25Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

uint64_t keypath_set_26Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

void type metadata completion function for PaperDocumentInlineView()
{
  type metadata accessor for Capsule<PaperDocument>?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PaperDocumentInlineView.__allocating_init(paperURL:coherenceContextURL:encryptionDelegate:)()
{
  return (*(v0 + 312))();
}

{
  return (*(v0 + 320))();
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8NSObjectC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8NSObjectCGMd);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1DA6CE0C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
    {
      v23 = *(v3 + 40);
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
        do
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *(v6 + 8 * v28) = v30 | v29;
      *(*(v3 + 48) + 8 * v27) = v24;
      v34 = *(v3 + 16);
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8PaperKit16ResizeHandleTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit16ResizeHandleTypeOGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t outlined assign with take of Capsule<PaperDocument>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PaperDocumentInlineView.handleMerge(newModel:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperDocumentInlineView.handleMerge(newModel:)(a1, v6, v7, v8, v1 + v5);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo7UIColorC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo7UIColorCGMd);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1DA6CE0C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
    {
      v23 = *(v3 + 40);
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
        do
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *(v6 + 8 * v28) = v30 | v29;
      *(*(v3 + 48) + 8 * v27) = v24;
      v34 = *(v3 + 16);
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void specialized PaperDocumentInlineView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_toolPicker) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_syncManager) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_syncCancellables) = v1;
  *(v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_temporaryPaperDocument;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_liveStreamMessenger);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_participantDetailsDataSource);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void partial apply for closure #1 in PaperDocumentInlineView.watchFile(_:readOnly:)(void **a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  closure #1 in PaperDocumentInlineView.watchFile(_:readOnly:)(a1, v4, v5);
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, void *a2)
{
  v3 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = v5;
  if (v5)
  {
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x1DA6CE0C0](v6, v3);
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v3 + 8 * v6 + 32);
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v5 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v11 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        v12 = v9;
        v13 = __CocoaDictionary.lookup(_:)();

        if (v13)
        {
          type metadata accessor for AnyCanvasElementView();
          swift_dynamicCast();
          v13 = v23;
        }
      }

      else if (*(v11 + 16))
      {
        v14 = v3;
        v15 = v4;
        v16 = a2;
        v17 = v9;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
        if (v19)
        {
          v13 = *(*(v11 + 56) + 8 * v18);
          v20 = v13;
        }

        else
        {

          v13 = 0;
        }

        a2 = v16;
        v4 = v15;
        v3 = v14;
        v5 = v22;
      }

      else
      {

        v13 = 0;
      }

      ++v6;
      if (v13)
      {
        MEMORY[0x1DA6CD190]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v24;
        v6 = v10;
        if (v5 == v10)
        {
          return v21;
        }
      }

      else if (v5 == v6)
      {
        return v21;
      }
    }
  }

  return v21;
}

uint64_t PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 177) = a4;
  *(v5 + 176) = a3;
  *(v5 + 48) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v5 + 72) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = type metadata accessor for MainActor();
  *(v5 + 112) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 120) = v8;
  *(v5 + 128) = v7;

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:), v8, v7);
}

uint64_t PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 176);
  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:);
  v8 = *(v0 + 177);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  return Capsule<>.search(query:fullWordsOnly:caseMatchingOnly:)(v10, v9, v8, (v5 & 1) == 0);
}

{
  v1 = v0;
  v2 = *(v0 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 64);
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument;
    v6 = (v2 + 40);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v26 = v6[1];
      v27 = *v6;
      v9 = [*(v4 + v5) pageAtIndex_];
      if (v9)
      {
        v10 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v8 = &v7[48 * v12];
        *(v8 + 2) = v27;
        *(v8 + 3) = v26;
        *(v8 + 8) = v10;
        v8[72] = 1;
      }

      v6 = (v6 + 40);
      --v3;
    }

    while (v3);
    v1 = v0;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 152) = v7;
  v13 = *(v1 + 72);
  v14 = *(v1 + 176);
  v16 = *(v1 + 48);
  v15 = *(v1 + 56);

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v18;
  *(v20 + 40) = v16;
  *(v20 + 48) = v15;
  *(v20 + 56) = v14;

  ResultVG_Tt2g5 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSay8PaperKit0E18DocumentFindResultVG_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #2 in PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:), v20);
  *(v1 + 160) = ResultVG_Tt2g5;
  v23 = swift_task_alloc();
  *(v1 + 168) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit0A18DocumentFindResultVGMd);
  *v23 = v1;
  v23[1] = PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:);

  return MEMORY[0x1EEE6DA40](v1 + 40, ResultVG_Tt2g5, v24);
}

{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:), v3, v2);
}

{
  v7 = v0;
  v1 = v0[19];

  v2 = v0[5];
  v6 = v1;
  specialized Array.append<A>(contentsOf:)(v2);

  specialized MutableCollection<>.sort(by:)(&v6);

  v3 = v6;

  v4 = v0[1];

  return v4(v3);
}

uint64_t PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 144) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:), v7, v6);
}

void specialized PDFAnnotationElement.update<A>(use:ref:pdfAnnotation:capsule:options:)(unint64_t a1, uint64_t a2, void *a3)
{
  v209 = a3;
  v208 = a2;
  v207 = a1;
  v179 = type metadata accessor for CRKeyPath();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v177 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v185 = &v177 - v5;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v177 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v184 = &v177 - v8;
  v194 = type metadata accessor for Date();
  v195 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v180 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v183);
  v193 = &v177 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v182 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v181 = &v177 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v190 = &v177 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v191 = &v177 - v18;
  v204 = type metadata accessor for SignatureValue(0);
  v199 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v192 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v177 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v196 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v189 = &v177 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v205 = &v177 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v206 = &v177 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd);
  v202 = *(v29 - 8);
  v30 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v203 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v177 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v200 = *(v34 - 8);
  v35 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v201 = &v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v177 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v177 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v177 - v44;
  outlined init with copy of Date?(v208, v41, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  }

  else
  {
    v47 = *(v43 + 32);
    v47(v45, v41, v42);
    v48 = v207;
    v46 = v209;
    if (v207 >> 62)
    {
      if (v207 >> 62 != 1)
      {
        (*(v43 + 8))(v45, v42);
        goto LABEL_10;
      }

      v48 = v207 & 0x3FFFFFFFFFFFFFFFLL;
    }

    v208 = v48;
    type metadata accessor for CanvasElementPDFAnnotation();
    v49 = swift_dynamicCastClass();
    if (v49)
    {
      v50 = v49;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMd);
      (*(*(v51 - 8) + 56))(v33, 1, 1, v51);
      v47(v38, v45, v42);
      (*(v43 + 56))(v38, 0, 1, v42);
      v52 = v203;
      outlined init with take of Range<AttributedString.Index>(v33, v203, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd);
      v53 = v201;
      outlined init with take of Range<AttributedString.Index>(v38, v201, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v54 = (*(v202 + 80) + 16) & ~*(v202 + 80);
      v55 = (v30 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = (*(v200 + 80) + v55 + 8) & ~*(v200 + 80);
      v57 = v56 + v35;
      v58 = swift_allocObject();
      outlined init with take of Range<AttributedString.Index>(v52, v58 + v54, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd);
      *(v58 + v55) = v208;
      outlined init with take of Range<AttributedString.Index>(v53, v58 + v56, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      *(v58 + v57) = 0;
      v59 = v58 + (v57 & 0xFFFFFFFFFFFFFFF8);
      *(v59 + 8) = 0;
      *(v59 + 16) = 0;
      v60 = (v50 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
      v61 = *(v50 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
      *v60 = partial apply for specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:);
      v60[1] = v58;
      outlined copy of PaperDocument.PDFDocumentUse(v207);
      v46 = v209;
      v62 = v209;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v61);

      goto LABEL_10;
    }

    (*(v43 + 8))(v45, v42);
  }

  v46 = v209;
LABEL_10:
  v63 = type metadata accessor for PDFAnnotationElement(0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  CRRegister.wrappedValue.getter();
  v65 = v212;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v65 && v66 == *(&v65 + 1))
  {

    return;
  }

  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v67)
  {

    return;
  }

  v207 = v64;
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v208 = v63;
  if (__PAIR128__(v69, v68) == v65)
  {

    goto LABEL_19;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v70 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
    CRRegister.wrappedValue.getter();
    v77 = v212;
    v78 = [v46 widgetStringValue];
    if (v78)
    {
      v79 = v78;
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      if (*(&v77 + 1))
      {
        if (v82)
        {
          if (v77 == __PAIR128__(v82, v80))
          {

            goto LABEL_75;
          }

          v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v170)
          {
LABEL_75:
            CRRegister.wrappedValue.getter();
            v104 = v212;
            v105 = [v46 contents];
            if (v105)
            {
              v106 = v105;
              v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v109 = v108;

              if (*(&v104 + 1))
              {
                if (v109)
                {
                  if (v104 == __PAIR128__(v109, v107))
                  {

                    goto LABEL_88;
                  }

                  v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v171)
                  {
LABEL_88:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
                    CRRegister.wrappedValue.getter();
                    v111 = v212;
                    v112 = *MEMORY[0x1E6978060];
                    if ([v46 valueForAnnotationKey_])
                    {
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v215 = 0u;
                      v216 = 0u;
                    }

                    v113 = v191;
                    v212 = v215;
                    v213 = v216;
                    if (*(&v216 + 1))
                    {
                      if ((swift_dynamicCast() & 1) != 0 && v111 == v211)
                      {
                        goto LABEL_97;
                      }
                    }

                    else
                    {
                      outlined destroy of StocksKitCurrencyCache.Provider?(&v212, &_sypSgMd);
                    }

                    CRRegister.wrappedValue.getter();
                    isa = Int._bridgeToObjectiveC()().super.super.isa;
                    [v46 setValue:isa forAnnotationKey:v112];

LABEL_97:
                    v115 = *(v63 + 36);
                    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
                    v206 = v115;
                    v205 = v116;
                    CRRegister.wrappedValue.getter();
                    v117 = [v46 modificationDate];
                    if (v117)
                    {
                      v118 = v190;
                      v119 = v117;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      v120 = 0;
                      v121 = v194;
                    }

                    else
                    {
                      v120 = 1;
                      v121 = v194;
                      v118 = v190;
                    }

                    v122 = v195;
                    (*(v195 + 56))(v118, v120, 1, v121);
                    v123 = *(v183 + 48);
                    v124 = v193;
                    outlined init with copy of Date?(v113, v193, &_s10Foundation4DateVSgMd);
                    v125 = v124;
                    outlined init with copy of Date?(v118, v124 + v123, &_s10Foundation4DateVSgMd);
                    v126 = *(v122 + 48);
                    if (v126(v125, 1, v121) == 1)
                    {
                      outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s10Foundation4DateVSgMd);
                      v127 = v193;
                      outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s10Foundation4DateVSgMd);
                      if (v126(v127 + v123, 1, v121) == 1)
                      {
                        outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s10Foundation4DateVSgMd);
                        goto LABEL_110;
                      }
                    }

                    else
                    {
                      v128 = v181;
                      outlined init with copy of Date?(v125, v181, &_s10Foundation4DateVSgMd);
                      if (v126(v125 + v123, 1, v121) != 1)
                      {
                        v135 = v195;
                        v136 = v125 + v123;
                        v137 = v180;
                        (*(v195 + 32))(v180, v136, v121);
                        _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
                        v138 = v125;
                        v139 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v140 = *(v135 + 8);
                        v140(v137, v194);
                        outlined destroy of StocksKitCurrencyCache.Provider?(v190, &_s10Foundation4DateVSgMd);
                        outlined destroy of StocksKitCurrencyCache.Provider?(v191, &_s10Foundation4DateVSgMd);
                        v140(v128, v194);
                        v121 = v194;
                        v46 = v209;
                        outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s10Foundation4DateVSgMd);
                        if (v139)
                        {
                          goto LABEL_110;
                        }

                        goto LABEL_106;
                      }

                      outlined destroy of StocksKitCurrencyCache.Provider?(v190, &_s10Foundation4DateVSgMd);
                      v127 = v193;
                      outlined destroy of StocksKitCurrencyCache.Provider?(v191, &_s10Foundation4DateVSgMd);
                      (*(v195 + 8))(v128, v121);
                    }

                    outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s10Foundation4DateVSg_ADtMd);
LABEL_106:
                    v129 = v182;
                    CRRegister.wrappedValue.getter();
                    if (v126(v129, 1, v121) == 1)
                    {
                      v130 = 0;
                    }

                    else
                    {
                      v130 = Date._bridgeToObjectiveC()().super.isa;
                      (*(v195 + 8))(v129, v121);
                    }

                    [v46 setModificationDate_];

LABEL_110:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit20PDFAnnotationElementV15AnnotationShapeVGMd);
                    CRRegister.wrappedValue.getter();
                    v131 = v212;
                    v132 = PDFAnnotation.quadPoints.getter();
                    if (v131)
                    {
                      v133 = v186;
                      if (v132)
                      {
                        v134 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7CGPointV_Tt1g5(v131, v132);

                        if (v134)
                        {
                          goto LABEL_120;
                        }

LABEL_119:
                        CRRegister.wrappedValue.getter();
                        PDFAnnotation.quadPoints.setter(v212);
                        goto LABEL_120;
                      }
                    }

                    else
                    {
                      v133 = v186;
                      if (!v132)
                      {
LABEL_120:
                        CRRegister.wrappedValue.getter();
                        v141 = *(&v212 + 1);
                        v143 = v213;
                        v142 = v214;

                        [v46 bounds];
                        v218.origin.x = v144;
                        v218.origin.y = v145;
                        v218.size.width = v146;
                        v218.size.height = v147;
                        v217.origin.x = v141;
                        *&v217.origin.y = v143;
                        v217.size.height = v142;
                        if (!CGRectEqualToRect(v217, v218))
                        {
                          CRRegister.wrappedValue.getter();
                          v148 = *(&v212 + 1);
                          v150 = v213;
                          v149 = v214;

                          [v46 setBounds_];
                        }

                        CRRegister.wrappedValue.getter();
                        v151 = v212;
                        v152 = *MEMORY[0x1E6978078];
                        if (![v46 valueForAnnotationKey_])
                        {
                          __break(1u);
                          return;
                        }

                        _bridgeAnyObjectToAny(_:)();
                        swift_unknownObjectRelease();
                        outlined init with take of Any(&v215, &v212);
                        swift_dynamicCast();
                        if (v151 == v211)
                        {
                        }

                        else
                        {
                          v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v153 & 1) == 0)
                          {
                            CRRegister.wrappedValue.getter();
                            v154 = MEMORY[0x1DA6CCED0](v212, *(&v212 + 1));

                            [v46 setValue:v154 forAnnotationKey:v152];
                          }
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
                        v155 = v184;
                        CRRegister.wrappedValue.getter();
                        v156 = type metadata accessor for Color(0);
                        if ((*(*(v156 - 8) + 48))(v155, 1, v156) == 1)
                        {
                          outlined destroy of StocksKitCurrencyCache.Provider?(v155, &_s8PaperKit5ColorVSgMd);
                          v157 = v188;
                        }

                        else
                        {
                          v158 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
                          _s8PaperKit0A8DocumentVWOhTm_0(v155, type metadata accessor for Color);
                          v159 = [v46 color];
                          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
                          v160 = static NSObject.== infix(_:_:)();

                          v157 = v188;
                          if ((v160 & 1) == 0)
                          {
                            [v46 setColor_];
                          }
                        }

                        v161 = v185;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
                        CRRegister.wrappedValue.getter();
                        v162 = v187;
                        if ((*(v187 + 48))(v161, 1, v157) == 1)
                        {
                          outlined destroy of StocksKitCurrencyCache.Provider?(v161, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
                          return;
                        }

                        (*(v162 + 32))(v133, v161, v157);
                        v163 = [v46 page];
                        if (v163)
                        {
                          v164 = v163;
                          type metadata accessor for PaperKitPDFPage(0);
                          v165 = swift_dynamicCastClass();
                          if (v165)
                          {
                            v166 = v177;
                            WeakRef.id.getter();
                            v167 = [v165 annotations];
                            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
                            v168 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                            MEMORY[0x1EEE9AC00](v169);
                            *(&v177 - 2) = v166;
                            v165 = specialized Sequence.first(where:)(closure #1 in PaperKitPDFPage.annotationFor(id:)partial apply, (&v177 - 4), v168);

                            (*(v178 + 8))(v166, v179);
                          }

                          else
                          {
                          }
                        }

                        else
                        {
                          v165 = 0;
                        }

                        v172 = [v46 popup];
                        if (v172)
                        {
                          v173 = v172;
                          if (!v165)
                          {

LABEL_151:
                            [v46 setPopup_];

                            goto LABEL_152;
                          }

                          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
                          v165 = v165;
                          v174 = static NSObject.== infix(_:_:)();

                          if (v174)
                          {
                            goto LABEL_149;
                          }
                        }

                        else if (!v165)
                        {
LABEL_152:
                          (*(v162 + 8))(v133, v157);
                          return;
                        }

                        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
                        v175 = v46;
                        v165 = v165;
                        v176 = static NSObject.== infix(_:_:)();

                        if (v176)
                        {
LABEL_149:
                          (*(v162 + 8))(v133, v157);

                          return;
                        }

                        goto LABEL_151;
                      }
                    }

                    goto LABEL_119;
                  }

LABEL_84:
                  CRRegister.wrappedValue.getter();
                  if (*(&v212 + 1))
                  {
                    v110 = MEMORY[0x1DA6CCED0](v212, *(&v212 + 1));
                  }

                  else
                  {
                    v110 = 0;
                  }

                  [v46 setContents_];

                  goto LABEL_88;
                }
              }

              else if (!v109)
              {
                goto LABEL_88;
              }
            }

            else if (!*(&v104 + 1))
            {
              goto LABEL_88;
            }

            goto LABEL_84;
          }

LABEL_71:
          CRRegister.wrappedValue.getter();
          if (*(&v212 + 1))
          {
            v103 = MEMORY[0x1DA6CCED0](v212, *(&v212 + 1));
          }

          else
          {
            v103 = 0;
          }

          [v46 setWidgetStringValue_];

          goto LABEL_75;
        }
      }

      else if (!v82)
      {
        goto LABEL_75;
      }
    }

    else if (!*(&v77 + 1))
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  v71 = v212;
  v72 = [v46 widgetStringValue];
  if (!v72)
  {
    if (!*(&v71 + 1))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v73 = v72;
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  if (!*(&v71 + 1))
  {
    if (!v76)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v76)
  {
LABEL_32:

LABEL_33:
    CRRegister.wrappedValue.getter();
    if (*(&v212 + 1))
    {
      v83 = MEMORY[0x1DA6CCED0](v212, *(&v212 + 1));
    }

    else
    {
      v83 = 0;
    }

    [v46 setWidgetStringValue_];

    goto LABEL_37;
  }

  if (v71 == __PAIR128__(v76, v74))
  {

    goto LABEL_37;
  }

  v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v102 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  v84 = *(v63 + 28);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v207 = v84;
  v203 = v85;
  CRRegister.wrappedValue.getter();
  if ([v46 signatureAnnotationForRendering])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v215 = 0u;
    v216 = 0u;
  }

  v86 = v204;
  v87 = v199;
  v88 = v205;
  v212 = v215;
  v213 = v216;
  if (*(&v216 + 1))
  {
    v89 = swift_dynamicCast();
    (*(v87 + 56))(v88, v89 ^ 1u, 1, v86);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v212, &_sypSgMd);
    (*(v87 + 56))(v88, 1, 1, v86);
  }

  v90 = *(v197 + 48);
  v91 = v206;
  v92 = v198;
  outlined init with copy of Date?(v206, v198, &_s8PaperKit14SignatureValueVSgMd);
  v93 = v92;
  outlined init with copy of Date?(v88, v92 + v90, &_s8PaperKit14SignatureValueVSgMd);
  v94 = *(v87 + 48);
  if (v94(v93, 1, v86) != 1)
  {
    v95 = v189;
    outlined init with copy of Date?(v93, v189, &_s8PaperKit14SignatureValueVSgMd);
    if (v94(v93 + v90, 1, v86) != 1)
    {
      v99 = v93 + v90;
      v100 = v192;
      _s8PaperKit5ImageVWObTm_0(v99, v192, type metadata accessor for SignatureValue);
      v101 = specialized static SignatureValue.== infix(_:_:)(v95, v100);
      _s8PaperKit0A8DocumentVWOhTm_0(v100, type metadata accessor for SignatureValue);
      outlined destroy of StocksKitCurrencyCache.Provider?(v206, &_s8PaperKit14SignatureValueVSgMd);
      _s8PaperKit0A8DocumentVWOhTm_0(v95, type metadata accessor for SignatureValue);
      outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s8PaperKit14SignatureValueVSgMd);
      v86 = v204;
      outlined destroy of StocksKitCurrencyCache.Provider?(v205, &_s8PaperKit14SignatureValueVSgMd);
      if (v101)
      {
        goto LABEL_53;
      }

LABEL_49:
      v96 = v196;
      CRRegister.wrappedValue.getter();
      if (v94(v96, 1, v86) == 1)
      {
        v97 = 0;
      }

      else
      {
        outlined init with copy of CRAssetOrData(v96, v192, type metadata accessor for SignatureValue);
        v97 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        _s8PaperKit0A8DocumentVWOhTm_0(v96, type metadata accessor for SignatureValue);
      }

      [v46 setSignatureAnnotationForRendering_];
      swift_unknownObjectRelease();
      [v46 updateAnnotationEffect];
      goto LABEL_53;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v206, &_s8PaperKit14SignatureValueVSgMd);
    _s8PaperKit0A8DocumentVWOhTm_0(v95, type metadata accessor for SignatureValue);
LABEL_48:
    outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s8PaperKit14SignatureValueVSg_ADtMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v205, &_s8PaperKit14SignatureValueVSgMd);
    goto LABEL_49;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s8PaperKit14SignatureValueVSgMd);
  if (v94(v93 + v90, 1, v86) != 1)
  {
    goto LABEL_48;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s8PaperKit14SignatureValueVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v205, &_s8PaperKit14SignatureValueVSgMd);
LABEL_53:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13PDFFieldFlagsVGMd);
  CRRegister.wrappedValue.getter();
  v98 = v211;
  if ([v46 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v215 = 0u;
    v216 = 0u;
  }

  v212 = v215;
  v213 = v216;
  if (*(&v216 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v98 == v210)
      {
        return;
      }

LABEL_62:
      CRRegister.wrappedValue.getter();
      [v46 setReadOnly_];
      return;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v212, &_sypSgMd);
  }

  if (v98)
  {
    goto LABEL_62;
  }
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69921B8], &lazy protocol witness table cache variable for type CalculateExpression.TokenType and conformance CalculateExpression.TokenType, MEMORY[0x1E69921B8]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69954B8], &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

void specialized Sequence.first(where:)(void (**a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v98 = a2;
  v107 = a1;
  v86 = a4;
  v113 = type metadata accessor for CRAsset();
  v105 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd);
  v115 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v95 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v114 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v85 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  v104 = *(v118 - 8);
  v18 = MEMORY[0x1EEE9AC00](v118);
  v90 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v85 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v85 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy8PaperKit0C8DocumentV010PDFPageAndC4PageVGMd);
  v100 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v85 - v25;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys20CollectionDifferenceVy8PaperKit0F8DocumentV010PDFPageAndF4PageVG9Coherence7CRAssetVSgGMd) - 8;
  MEMORY[0x1EEE9AC00](v106);
  v27 = &v85 - v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGMd) - 8;
  MEMORY[0x1EEE9AC00](v103);
  v116 = (&v85 - v28);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGAOGMd) - 8;
  MEMORY[0x1EEE9AC00](v102);
  v30 = &v85 - v29;
  v97 = &v85 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0H8DocumentV010PDFPageAndH4PageVG9Coherence7CRAssetVSgGGAQ_GMd);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v85 - v33;
  outlined init with copy of Date?(v107, v30, &_ss15LazyMapSequenceVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGAOGMd);
  v35 = v30;
  v36 = v116;
  outlined init with take of Range<AttributedString.Index>(v35, v116, &_ss18LazyFilterSequenceVys0a3MapC0Vys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGMd);
  outlined init with take of Range<AttributedString.Index>(v36, v27, &_ss15LazyMapSequenceVys20CollectionDifferenceVy8PaperKit0F8DocumentV010PDFPageAndF4PageVG9Coherence7CRAssetVSgGMd);
  (*(v100 + 32))(v99, v27, v24);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<PaperDocument.PDFPageAndPaperPage> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy8PaperKit0C8DocumentV010PDFPageAndC4PageVGMd);
  dispatch thunk of Sequence.makeIterator()();
  v37 = &v27[*(v106 + 52)];
  v38 = *v37;
  v39 = *(v37 + 1);
  v40 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSg_GMd) + 44)];
  v94 = v38;
  *v40 = v38;
  *(v40 + 1) = v39;
  v93 = v39;
  v41 = (v116 + *(v103 + 44));
  v42 = *v41;
  v43 = v41[1];
  v44 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vys20CollectionDifferenceVy8PaperKit0H8DocumentV010PDFPageAndH4PageVG9Coherence7CRAssetVSgG_GMd) + 36)];
  v92 = v42;
  *v44 = v42;
  *(v44 + 1) = v43;
  v91 = v43;
  v45 = &v97[*(v102 + 52)];
  v46 = *v45;
  v47 = *(v45 + 1);
  v48 = &v34[*(v32 + 52)];
  v89 = v46;
  *v48 = v46;
  *(v48 + 1) = v47;
  v88 = v47;
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy8PaperKit0E8DocumentV010PDFPageAndE4PageVGGMd) + 36);
  v50 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<PaperDocument.PDFPageAndPaperPage> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy8PaperKit0C8DocumentV010PDFPageAndC4PageVGMd);
  v106 = (v115 + 6);
  v107 = (v115 + 7);
  v115 = (v104 + 48);
  v116 = (v104 + 56);
  v102 = v105 + 56;
  v100 = v105 + 48;
  v99 = (v105 + 32);
  v96 = (v105 + 8);
  v112 = v16;
  v97 = v22;
  v104 = v49;
  v105 = v24;
  v103 = v50;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v34[v49] == v117)
    {
      v51 = 1;
      v52 = v109;
    }

    else
    {
      v53 = dispatch thunk of Collection.subscript.read();
      v52 = v109;
      outlined init with copy of Date?(v54, v109, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd);
      v53(&v117, 0);
      v16 = v112;
      dispatch thunk of Collection.formIndex(after:)();
      v51 = 0;
    }

    v55 = v5;
    v56 = 1;
    v57 = v110;
    (*v107)(v52, v51, 1, v110);
    v58 = v52;
    v59 = v114;
    outlined init with take of Range<AttributedString.Index>(v58, v114, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GSgMd);
    if ((*v106)(v59, 1, v57) != 1)
    {
      v60 = v95;
      outlined init with take of Range<AttributedString.Index>(v114, v95, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd);
      v94(v60);
      outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd);
      v56 = 0;
    }

    v61 = *v116;
    v62 = v118;
    (*v116)(v16, v56, 1, v118);
    v63 = *v115;
    if ((*v115)(v16, 1, v62) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence7CRAssetVSgSgMd);
      v64 = 1;
    }

    else
    {
      outlined init with take of Range<AttributedString.Index>(v16, v22, &_s9Coherence7CRAssetVSgMd);
      if ((v92(v22) & 1) == 0)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence7CRAssetVSgMd);
        v5 = v55;
        goto LABEL_3;
      }

      outlined init with take of Range<AttributedString.Index>(v22, v108, &_s9Coherence7CRAssetVSgMd);
      v64 = 0;
    }

    v65 = 1;
    v66 = v108;
    v67 = v118;
    v61(v108, v64, 1, v118);
    v68 = v111;
    outlined init with take of Range<AttributedString.Index>(v66, v111, &_s9Coherence7CRAssetVSgSgMd);
    v69 = v63(v68, 1, v67);
    v70 = v101;
    if (v69 != 1)
    {
      v71 = v90;
      outlined init with take of Range<AttributedString.Index>(v111, v90, &_s9Coherence7CRAssetVSgMd);
      v89(v71);
      outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s9Coherence7CRAssetVSgMd);
      v65 = 0;
    }

    v72 = *v102;
    v73 = v65;
    v74 = v113;
    (*v102)(v70, v73, 1, v113);
    v75 = (*v100)(v70, 1, v74);
    v16 = v112;
    if (v75 == 1)
    {
      break;
    }

    v76 = *v99;
    (*v99)(v55, v70, v74);
    v77 = v98;
    swift_beginAccess();
    v78 = *v77;
    if (*(v78 + 16) && (v79 = specialized __RawDictionaryStorage.find<A>(_:)(v55), (v80 & 1) != 0))
    {
      v81 = *(*(v78 + 56) + 8 * v79);
      swift_endAccess();
      v22 = v97;
      if (v81 == v87)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0H8DocumentV010PDFPageAndH4PageVG9Coherence7CRAssetVSgGGAQ_GMd);
        v82 = v86;
        v74 = v113;
        v76(v86, v55, v113);
        v83 = v82;
        v84 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      v22 = v97;
    }

    v5 = v55;
    (*v96)(v55, v113);
LABEL_3:
    v49 = v104;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0H8DocumentV010PDFPageAndH4PageVG9Coherence7CRAssetVSgGGAQ_GMd);
  v84 = 1;
  v83 = v86;
LABEL_23:
  v72(v83, v84, 1, v74);
}

uint64_t _s8PaperKit0A8DocumentV3url2in12assetManagerACSg10Foundation3URLV_9Coherence7CapsuleV3RefCyx_GAK07CRAssetG0CtcAK4CRDTRzlufCAC_Tt3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v74 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v56 - v8;
  v75 = type metadata accessor for PaperDocument(0);
  v9 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v56 - v14);
  v16 = type metadata accessor for CRAsset();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  type metadata accessor for PaperKitPDFDocument();
  static PaperKitPDFDocument._load(_:assetManager:)(a1, v15);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMd);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 8))(a1, v24);

    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMd);
    return (*(v9 + 56))(v73, 1, 1, v75);
  }

  else
  {
    v64 = a3;
    v65 = a1;
    v63 = v9;
    v66 = *v15;
    (*(v17 + 32))(v22, v15 + *(v23 + 48), v16);
    v26 = *(v17 + 16);
    v70 = v19;
    v59 = v26;
    v60 = v17 + 16;
    v26(v19, v22, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
    v27 = v68;
    CROrderedSet.init()();
    v28 = *(v75 + 20);
    v62 = v17;
    v29 = v72;
    v30 = v16;
    v57 = *(v17 + 56);
    v57(v72, 1, 1, v16);
    outlined init with copy of Date?(v29, v71, &_s9Coherence7CRAssetVSgMd);
    lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
    v58 = v28;
    v31 = v66;
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence7CRAssetVSgMd);
    UnknownProperties.init()();
    v32 = [v31 isLocked];
    v61 = v22;
    if (!v32)
    {
      goto LABEL_8;
    }

    v29 = v65;
    if (one-time initialization token for shared != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v33 = *(static PasswordManager.shared + 16);
      MEMORY[0x1EEE9AC00](v32);
      *(&v56 - 2) = v34;
      *(&v56 - 1) = v70;
      MEMORY[0x1EEE9AC00](v35);
      *(&v56 - 2) = partial apply for closure #1 in PasswordManager.password(for:);
      *(&v56 - 1) = v36;
      os_unfair_lock_lock(v33 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v76);
      os_unfair_lock_unlock(v33 + 4);
      v16 = v30;
      if (!*(&v76 + 1) || (v37 = MEMORY[0x1DA6CCED0](v76, *(&v76 + 1)), , v38 = [v31 unlockWithPassword_], v37, !v38))
      {

        v39 = type metadata accessor for URL();
        (*(*(v39 - 8) + 8))(v29, v39);
        v40 = *(v62 + 8);
        v40(v61, v30);
        v40(v70, v30);
        _s8PaperKit0A8DocumentVWOhTm_0(v27, type metadata accessor for PaperDocument);
        v41 = 1;
        v42 = v67;
        goto LABEL_10;
      }

LABEL_8:
      v43 = [v31 pageCount];
      v31 = v64;
      v30 = v74;
      if ((v43 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_14:
      v32 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v43);
    *(&v56 - 6) = v27;
    *(&v56 - 5) = v44;
    *(&v56 - 4) = v70;
    *(&v56 - 3) = v30;
    *(&v56 - 2) = v31;
    *(&v56 - 8) = 0;
    specialized Sequence.compactMap<A>(_:)(_s8PaperKit0A8DocumentV11appendPages___12assetManager08useProxyE0yAA0aB11PDFDocumentC_9Coherence7CRAssetVAI7CapsuleV3RefCyx_GAI0lG0CSgSbtAI4CRDTRzlFAI14SharedTagged_3VyAA0qA4PageVGSgSiXEfU_AC_TG5TA_0, (&v56 - 8), 0, v45);
    *&v76 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_3<TaggedPaperPage>] and conformance [A], &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
    CROrderedSet.append<A>(contentsOf:)();

    v47 = v72;
    v48 = v70;
    v59(v72, v70, v16);
    v57(v47, 0, 1, v16);
    outlined init with copy of Date?(v47, v71, &_s9Coherence7CRAssetVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
    CRRegister.wrappedValue.setter();

    v49 = type metadata accessor for URL();
    (*(*(v49 - 8) + 8))(v65, v49);
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence7CRAssetVSgMd);
    v50 = *(v62 + 8);
    v50(v61, v16);
    v50(v48, v16);
    v42 = v67;
    _s8PaperKit5ImageVWObTm_0(v27, v67, type metadata accessor for PaperDocument);
    v41 = 0;
LABEL_10:
    v51 = v63;
    v52 = *(v63 + 56);
    v53 = v75;
    v52(v42, v41, 1, v75);
    v54 = (*(v51 + 48))(v42, 1, v53);
    v55 = v73;
    if (v54)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s8PaperKit0A8DocumentVSgMd);
      return (v52)(v55, 1, 1, v53);
    }

    else
    {
      _s8PaperKit5ImageVWObTm_0(v42, v73, type metadata accessor for PaperDocument);
      return (v52)(v55, 0, 1, v53);
    }
  }
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

uint64_t _s8PaperKit18AnnotationImporterV13importElement_4from2in2id5scale8mediaBoxAC08ImportedF0OSgSo12AKAnnotationC_So13PDFAnnotationCSg9Coherence7CapsuleV3RefCyx_GAR9CRKeyPathV12CoreGraphics7CGFloatVSo6CGRectVtAR4CRDTRzlFZAA0A8DocumentV_Tt6g5@<X0>(double a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, uint64_t a7@<D2>, double a8@<D4>)
{
  v449 = a4;
  v451 = a3;
  v455 = a1;
  v454 = a5;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v415 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416);
  v414 = &v382 - v12;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v412 = *(v413 - 8);
  MEMORY[0x1EEE9AC00](v413);
  v411 = &v382 - v13;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v410 = *(v450 - 8);
  MEMORY[0x1EEE9AC00](v450);
  v409 = &v382 - v14;
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v407 = *(v408 - 8);
  MEMORY[0x1EEE9AC00](v408);
  v406 = &v382 - v15;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v404 = *(v452 - 8);
  MEMORY[0x1EEE9AC00](v452);
  v403 = &v382 - v16;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v401);
  v400 = &v382 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v399 = &v382 - v19;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v397);
  v396 = &v382 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v395 = &v382 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v405 = &v382 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v424 = &v382 - v26;
  v422 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v422);
  v393 = &v382 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v398 = &v382 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v423 = &v382 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9SignatureVSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v418 = &v382 - v33;
  v419 = type metadata accessor for Signature(0);
  v417 = *(v419 - 8);
  MEMORY[0x1EEE9AC00](v419);
  v384 = &v382 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v385 = &v382 - v36;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v388 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v390 = &v382 - v37;
  *&v428 = type metadata accessor for PKDrawing();
  *&v427 = *(v428 - 8);
  MEMORY[0x1EEE9AC00](v428);
  v386 = &v382 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v387 = &v382 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v425 = &v382 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  *&v426 = &v382 - v44;
  *&v439 = COERCE_DOUBLE(type metadata accessor for Color(0));
  v438 = *(v439 - 8);
  MEMORY[0x1EEE9AC00](v439);
  *&v437 = &v382 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v441 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd));
  MEMORY[0x1EEE9AC00](v441);
  v391 = &v382 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v421 = &v382 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v420 = &v382 - v50;
  MEMORY[0x1EEE9AC00](v51);
  *&v440 = &v382 - v52;
  MEMORY[0x1EEE9AC00](v53);
  *&v433 = &v382 - v54;
  v435 = type metadata accessor for UnknownProperties();
  v434 = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435);
  *&v445 = &v382 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LoupeElement(0);
  MEMORY[0x1EEE9AC00](v56);
  *&v436 = &v382 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v382 - v59;
  v447 = type metadata accessor for CRKeyPath();
  v446 = *(v447 - 8);
  MEMORY[0x1EEE9AC00](v447);
  v448 = &v382 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v392);
  v431 = &v382 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v432 = &v382 - v64;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v65 = *(v444 - 1);
  MEMORY[0x1EEE9AC00](v444);
  v383 = &v382 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v430 = (&v382 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v382 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v74 = &v382 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v382 - v76;
  v453 = type metadata accessor for Shape(0);
  v78 = *(v453 - 8);
  MEMORY[0x1EEE9AC00](v453);
  v394 = &v382 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v402 = &v382 - v81;
  MEMORY[0x1EEE9AC00](v82);
  *&v429 = &v382 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v442 = &v382 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v382 - v87;
  CGAffineTransformMakeScale(&t1, a6, a6);
  v458 = t1;
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  tx = t1.tx;
  ty = t1.ty;
  v443 = v65;
  if (!a2)
  {
    memset(&t1, 0, 32);
    outlined destroy of StocksKitCurrencyCache.Provider?(&t1, &_sypSgMd);
    *&v95 = 0.0;
    goto LABEL_22;
  }

  if ([a2 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&t2, 0, 32);
  }

  *&t1.a = *&t2.a;
  *&t1.c = *&t2.c;
  if (!*&t2.d)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&t1, &_sypSgMd);
    v95 = 112;
    goto LABEL_22;
  }

  v96 = swift_dynamicCast();
  a_low = LOBYTE(t2.a);
  if (!v96)
  {
    a_low = 0;
  }

  if ((a_low & 2) == 0)
  {
    if ((a_low & 0x40) != 0)
    {
      v98 = 2;
      if ((a_low & 0x80) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v98 = 0;
      if ((a_low & 0x80) == 0)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  if ((a_low & 0x40) == 0)
  {
    v98 = 1;
    if ((a_low & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v98 = 3;
  if (a_low < 0)
  {
LABEL_20:
    v98 |= 4uLL;
  }

LABEL_21:
  v95 = v98 | 0x70;
LABEL_22:
  objc_opt_self();
  v99 = v455;
  if (swift_dynamicCastObjCClass())
  {
LABEL_23:
    v100 = type metadata accessor for AnnotationImporter.ImportedElement();
    return (*(*(v100 - 8) + 56))(v454, 1, 1, v100);
  }

  v382 = a2;
  objc_opt_self();
  v102 = swift_dynamicCastObjCClass();
  if (v102)
  {
    v103 = v102;
    v445 = *&v95;
    v104 = *&v99;
    static AnnotationImporter.translateDoodleAnnotation(_:)(v103, v77);
    v105 = v453;
    if ((*(v78 + 48))(v77, 1, v453) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s8PaperKit5ShapeVSgMd);
      goto LABEL_23;
    }

    *&v426 = v104;
    v441 = a7;
    v455 = a8;
    _s8PaperKit5ImageVWObTm_0(v77, v88, type metadata accessor for Shape);
    v143 = off_1F4F684A8();
    v440 = b;
    v144 = v143;
    *&v439 = a;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v151 = (off_1F4F68418[0])();
    v438 = *&ty;
    v152 = v151;
    v434 = v144 - v148 * 0.0;
    v433 = v146 - *&v150 * 0.0;
    v464.origin.x = v144;
    v464.origin.y = v146;
    v464.size.width = v148;
    v429 = v148;
    *&v464.size.height = v150;
    v430 = v150;
    MidX = CGRectGetMidX(v464);
    v437 = tx;
    v154 = MidX;
    v465.origin.x = v144;
    v465.origin.y = v146;
    v465.size.width = v148;
    *&v465.size.height = v150;
    MidY = CGRectGetMidY(v465);
    CGAffineTransformMakeRotation(&t1, v152);
    v156 = t1.tx;
    v157 = t1.ty;
    v428 = *&t1.a;
    v427 = *&t1.c;
    CGAffineTransformMakeTranslation(&t1, -v154, -MidY);
    v158 = t1.a;
    v159 = t1.b;
    v160 = t1.c;
    v161 = t1.d;
    v436 = d;
    v435 = *&c;
    v162 = t1.tx;
    v163 = t1.ty;
    *&t2.c = v427;
    *&t2.a = v428;
    t2.tx = v156;
    t2.ty = v157;
    CGAffineTransformConcat(&v456, &t1, &t2);
    v164 = v456.tx;
    v165 = v456.ty;
    v428 = *&v456.a;
    v427 = *&v456.c;
    t1.a = v158;
    t1.b = v159;
    t1.c = v160;
    t1.d = v161;
    t1.tx = v162;
    t1.ty = v163;
    CGAffineTransformInvert(&t2, &t1);
    *&t1.a = v428;
    *&t1.c = v427;
    t1.tx = v164;
    t1.ty = v165;
    CGAffineTransformConcat(&v456, &t1, &t2);
    t1.a = v429;
    t1.b = 0.0;
    t1.c = 0.0;
    *&t1.d = v430;
    t1.tx = v434;
    t1.ty = v433;
    t2 = v456;
    CGAffineTransformConcat(&v456, &t1, &t2);
    t2 = v456;
    v166 = *&v439;
    *&v456.a = v439;
    v167 = v440;
    v456.b = v440;
    *&v456.c = v435;
    v456.d = v436;
    v456.tx = v437;
    *&v456.ty = v438;
    CGAffineTransformConcat(&t1, &t2, &v456);
    specialized CanvasElement.coordinateSpace.setter();
    v168 = CRRegister.wrappedValue.modify();
    *v169 = sqrt(v166 * v166 + v167 * v167) * *v169;
    v168(&t2, 0);
    v170 = *(v105 + 52);
    CRAttributedString<>.apply(_:)(&v458.a);
    v171 = v443;
    v172 = v444;
    (*(v443 + 16))(v71, &v88[v170], v444);
    v173 = CRAttributedString.attributedString.getter();
    v174 = [v173 string];

    v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v176;

    if (!v175 && v177 == 0xE000000000000000)
    {

      (*(v171 + 8))(v71, v172);
      v178 = v455;
      v179 = *&v441;
      v180 = v382;
LABEL_40:
      v186 = v426;
      if (v180)
      {
        v187 = v180;
        if ([v187 hasAppearanceStream])
        {
          [v187 bounds];
          v189 = v188;
          v191 = v190;
          CRRegister.wrappedValue.getter();
          Shape.appearanceStreamOffset.setter(v189 - t2.a, v191 - t2.b);
        }
      }

      v192 = CRRegister.wrappedValue.modify();
      v194 = v193;
      v195 = *v193;
      v196 = v193[1];
      v197 = v193[2];
      v198 = v193[3];
      v466.origin.x = *v193;
      v466.origin.y = v196;
      v466.size.width = v197;
      v466.size.height = v198;
      MinX = CGRectGetMinX(v466);
      v467.origin.x = v195;
      v467.origin.y = v196;
      v467.size.width = v197;
      v467.size.height = v198;
      v200 = v179 + v179 + v178 - CGRectGetMaxY(v467);
      v468.origin.x = v195;
      v468.origin.y = v196;
      v468.size.width = v197;
      v468.size.height = v198;
      Width = CGRectGetWidth(v468);
      v469.origin.x = v195;
      v469.origin.y = v196;
      v469.size.width = v197;
      v469.size.height = v198;
      Height = CGRectGetHeight(v469);
      *v194 = MinX;
      v194[1] = v200;
      v194[2] = Width;
      v194[3] = Height;
      v192(&t2, 0);
      CRRegister.value.getter();
      v203 = t2.a;
      CRRegister.value.getter();
      if (fabs(v203 + t2.a) > 0.01)
      {
        t2.a = -v203;
        CRRegister.value.setter();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
      v204 = CRRegister.wrappedValue.modify();
      *v205 |= *&v445;
      v204(&t2, 0);
      outlined init with copy of CRAssetOrData(v88, v442, type metadata accessor for Shape);
      (*(v446 + 16))(v448, v449, v447);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

      v206 = v454;
      SharedTagged_10.init<A>(_:_:id:)();

      v207 = type metadata accessor for Shape;
      v208 = v88;
LABEL_47:
      _s8PaperKit0A8DocumentVWOhTm_0(v208, v207);
      v140 = type metadata accessor for AnnotationImporter.ImportedElement();
      swift_storeEnumTagMultiPayload();
      v141 = *(*(v140 - 8) + 56);
      v142 = v206;
      return v141(v142, 0, 1, v140);
    }

    v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v171 + 8))(v71, v172);
    v178 = v455;
    v179 = *&v441;
    v180 = v382;
    if (v181)
    {
      goto LABEL_40;
    }

    v182 = CRAttributedString.attributedString.getter();
    v183 = [v182 length];

    result = v183 - 1;
    if (!__OFSUB__(v183, 1))
    {
      v184 = v432;
      CRAttributedString.attributes(at:effectiveRange:)();
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      (*(*(v185 - 8) + 56))(v184, 0, 1, v185);
      outlined init with copy of Date?(v184, v431, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v184, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_88;
  }

  objc_opt_self();
  v106 = swift_dynamicCastObjCClass();
  if (!v106)
  {
    objc_opt_self();
    v209 = swift_dynamicCastObjCClass();
    if (v209)
    {
      v210 = v209;
      v211 = v95;
      v212 = *&v99;
      static AnnotationImporter.translateStrokedAnnotation(_:)(v210, v74);
      v213 = v453;
      v214 = (*(v78 + 48))(v74, 1, v453);
      v215 = v382;
      if (v214 == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s8PaperKit5ShapeVSgMd);
        goto LABEL_23;
      }

      v441 = a7;
      v455 = a8;
      v226 = v74;
      v227 = *&v429;
      _s8PaperKit5ImageVWObTm_0(v226, *&v429, type metadata accessor for Shape);
      v228 = off_1F4F684A8();
      v440 = b;
      v229 = v228;
      *&v439 = a;
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v236 = (off_1F4F68418[0])();
      v438 = *&ty;
      v237 = v236;
      v445 = v229 - v233 * 0.0;
      v434 = v231 - *&v235 * 0.0;
      v470.origin.x = v229;
      v470.origin.y = v231;
      v470.size.width = v233;
      *&v428 = v233;
      *&v470.size.height = v235;
      v433 = *&v235;
      v238 = CGRectGetMidX(v470);
      v437 = tx;
      v239 = v238;
      v471.origin.x = v229;
      v471.origin.y = v231;
      v471.size.width = v233;
      *&v471.size.height = v235;
      v240 = CGRectGetMidY(v471);
      CGAffineTransformMakeRotation(&t1, v237);
      v241 = t1.tx;
      v242 = t1.ty;
      v427 = *&t1.a;
      v426 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -v239, -v240);
      v243 = t1.a;
      v244 = t1.b;
      v245 = t1.c;
      v246 = t1.d;
      v436 = d;
      v435 = *&c;
      v247 = t1.tx;
      v248 = t1.ty;
      *&t2.c = v426;
      *&t2.a = v427;
      t2.tx = v241;
      t2.ty = v242;
      CGAffineTransformConcat(&v456, &t1, &t2);
      v249 = v456.tx;
      v250 = v456.ty;
      v427 = *&v456.a;
      v426 = *&v456.c;
      t1.a = v243;
      t1.b = v244;
      t1.c = v245;
      t1.d = v246;
      t1.tx = v247;
      t1.ty = v248;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v427;
      *&t1.c = v426;
      t1.tx = v249;
      t1.ty = v250;
      CGAffineTransformConcat(&v456, &t1, &t2);
      *&t1.a = v428;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = v433;
      t1.tx = v445;
      t1.ty = v434;
      t2 = v456;
      CGAffineTransformConcat(&v456, &t1, &t2);
      t2 = v456;
      v251 = *&v439;
      *&v456.a = v439;
      v252 = v440;
      v456.b = v440;
      *&v456.c = v435;
      v456.d = v436;
      v456.tx = v437;
      *&v456.ty = v438;
      CGAffineTransformConcat(&t1, &t2, &v456);
      specialized CanvasElement.coordinateSpace.setter();
      v253 = CRRegister.wrappedValue.modify();
      *v254 = sqrt(v251 * v251 + v252 * v252) * *v254;
      v253(&t2, 0);
      v255 = *(v213 + 52);
      CRAttributedString<>.apply(_:)(&v458.a);
      (*(v443 + 16))(v430, v227 + v255, v444);
      v256 = CRAttributedString.attributedString.getter();
      v257 = [v256 string];

      v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v260 = v259;

      if (v258 || v260 != 0xE000000000000000)
      {
        v263 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v443 + 8))(v430, v444);
        v261 = v455;
        v262 = *&v441;
        if ((v263 & 1) == 0)
        {
          v264 = CRAttributedString.attributedString.getter();
          v265 = [v264 length];

          result = v265 - 1;
          if (__OFSUB__(v265, 1))
          {
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v266 = v432;
          CRAttributedString.attributes(at:effectiveRange:)();
          v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
          (*(*(v267 - 8) + 56))(v266, 0, 1, v267);
          outlined init with copy of Date?(v266, v431, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
          v227 = *&v429;
          CRRegister.wrappedValue.setter();
          outlined destroy of StocksKitCurrencyCache.Provider?(v266, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        }
      }

      else
      {

        (*(v443 + 8))(v430, v444);
        v261 = v455;
        v262 = *&v441;
      }

      if (v215)
      {
        v268 = v215;
        if ([v268 hasAppearanceStream])
        {
          [v268 bounds];
          v270 = v269;
          v272 = v271;
          CRRegister.wrappedValue.getter();
          Shape.appearanceStreamOffset.setter(v270 - t2.a, v272 - t2.b);
        }
      }

      v273 = CRRegister.wrappedValue.modify();
      v275 = v274;
      v276 = *v274;
      v277 = v274[1];
      v278 = v274[2];
      v279 = v274[3];
      v472.origin.x = *v274;
      v472.origin.y = v277;
      v472.size.width = v278;
      v472.size.height = v279;
      v280 = CGRectGetMinX(v472);
      v473.origin.x = v276;
      v473.origin.y = v277;
      v473.size.width = v278;
      v473.size.height = v279;
      v281 = v262 + v262 + v261 - CGRectGetMaxY(v473);
      v474.origin.x = v276;
      v474.origin.y = v277;
      v474.size.width = v278;
      v474.size.height = v279;
      v282 = CGRectGetWidth(v474);
      v475.origin.x = v276;
      v475.origin.y = v277;
      v475.size.width = v278;
      v475.size.height = v279;
      v283 = CGRectGetHeight(v475);
      *v275 = v280;
      v275[1] = v281;
      v275[2] = v282;
      v275[3] = v283;
      v273(&t2, 0);
      CRRegister.value.getter();
      v284 = t2.a;
      CRRegister.value.getter();
      if (fabs(v284 + t2.a) > 0.01)
      {
        t2.a = -v284;
        CRRegister.value.setter();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
      v285 = CRRegister.wrappedValue.modify();
      *v286 |= v211;
      v285(&t2, 0);
      outlined init with copy of CRAssetOrData(v227, v442, type metadata accessor for Shape);
      (*(v446 + 16))(v448, v449, v447);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

      v206 = v454;
      SharedTagged_10.init<A>(_:_:id:)();

      v207 = type metadata accessor for Shape;
      v208 = v227;
      goto LABEL_47;
    }

    objc_opt_self();
    v216 = swift_dynamicCastObjCClass();
    if (v216)
    {
      v217 = v216;
      v218 = *&v99;
      v219 = [v217 drawing];
      if (v219)
      {
        v220 = v425;
        v221 = v219;
        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

        v222 = 0;
        v223 = v428;
        v224 = v427;
        v225 = v426;
      }

      else
      {
        v222 = 1;
        v223 = v428;
        v224 = v427;
        v225 = v426;
        v220 = v425;
      }

      (*(v224 + 56))(v220, v222, 1, v223);
      outlined init with take of Range<AttributedString.Index>(v220, v225, &_s9PencilKit9PKDrawingVSgMd);
      if ((*(v224 + 48))(v225, 1, v223) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v225, &_s9PencilKit9PKDrawingVSgMd);
        goto LABEL_23;
      }

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKDrawing);
      swift_dynamicCast();
      v291 = *&t1.a;
      v336 = specialized PKDrawingCoherence.__allocating_init(concreteDrawing:)();

      v337 = v336;
      [v217 rectangle];
      v338 = d;
      v339 = CGRectGetWidth(v480);
      [v337 bounds];
      v340 = v339 / CGRectGetWidth(v481);
      [v217 rectangle];
      v341 = c;
      v342 = CGRectGetHeight(v482);
      [v337 bounds];
      v343 = CGRectGetHeight(v483);
      CGAffineTransformMakeScale(&t1, v340, v342 / v343);
      v344 = *&t1.a;
      v345 = *&t1.c;
      v346 = *&t1.tx;
      t1.a = a;
      t1.b = b;
      t1.c = v341;
      t1.d = v338;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v344;
      *&t2.c = v345;
      *&t2.tx = v346;
      CGAffineTransformConcat(&v456, &t1, &t2);
      t1 = v456;
      v347 = [v337 drawingByApplyingTransform_];

      v348 = v386;
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v224 + 32))(v387, v348, v223);
      type metadata accessor for PKDrawingCoherence(0);
      swift_dynamicCast();
      v349 = t1.a;
      v350 = OBJC_IVAR___PKDrawingCoherence_model;
      swift_beginAccess();
      (*(v388 + 16))(v390, *&v349 + v350, v389);
      type metadata accessor for PKDrawingStruct(0);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);

      v351 = v454;
      Ref.init<A>(_:_:)();

      v140 = type metadata accessor for AnnotationImporter.ImportedElement();
      swift_storeEnumTagMultiPayload();
      v141 = *(*(v140 - 8) + 56);
      v142 = v351;
      return v141(v142, 0, 1, v140);
    }

    objc_opt_self();
    v287 = swift_dynamicCastObjCClass();
    if (v287)
    {
      v288 = v287;
      v289 = *&v99;
      v290 = v418;
      static AnnotationImporter.translateSignatureAnnotation(_:)(v288, v418);
      if ((*(v417 + 48))(v290, 1, v419) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v290, &_s8PaperKit9SignatureVSgMd);
        goto LABEL_23;
      }

      v322 = v385;
      _s8PaperKit5ImageVWObTm_0(v290, v385, type metadata accessor for Signature);
      Signature.apply(_:)(&v458);
      v323 = CRRegister.wrappedValue.modify();
      v325 = v324;
      v326 = *v324;
      v327 = v324[1];
      v328 = v324[2];
      v329 = v324[3];
      v476.origin.x = *v324;
      v476.origin.y = v327;
      v476.size.width = v328;
      v476.size.height = v329;
      v330 = CGRectGetMinX(v476);
      v477.origin.x = v326;
      v477.origin.y = v327;
      v477.size.width = v328;
      v477.size.height = v329;
      v331 = *&a7 + *&a7 + a8 - CGRectGetMaxY(v477);
      v478.origin.x = v326;
      v478.origin.y = v327;
      v478.size.width = v328;
      v478.size.height = v329;
      v332 = CGRectGetWidth(v478);
      v479.origin.x = v326;
      v479.origin.y = v327;
      v479.size.width = v328;
      v479.size.height = v329;
      v333 = CGRectGetHeight(v479);
      *v325 = v330;
      v325[1] = v331;
      v325[2] = v332;
      v325[3] = v333;
      v323(&t1, 0);
      v334 = CRRegister.wrappedValue.modify();
      *v335 = -*v335;
      v334(&t1, 0);
      outlined init with copy of CRAssetOrData(v322, v384, type metadata accessor for Signature);
      (*(v446 + 16))(v448, v449, v447);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

      v206 = v454;
      SharedTagged_10.init<A>(_:_:id:)();

      v207 = type metadata accessor for Signature;
      v208 = v322;
      goto LABEL_47;
    }

    v445 = *&v95;
    swift_storeEnumTagMultiPayload();
    v292 = *(v438 + 56);
    v293 = v439;
    (v292)(v420, 1, 1, v439);
    (v292)(v421, 1, 1, v293);
    v430 = v292;
    (*(v443 + 56))(v424, 1, 1, v444);
    type metadata accessor for CGRect(0);
    v436 = v294;
    v435 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    memset(&t1, 0, 32);
    v295 = v394;
    CRRegister.init(wrappedValue:)();
    v296 = v453;
    t1.a = 0.0;
    v438 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    *&v437 = v296[6];
    v297 = *&v440;
    (v292)(*&v440, 1, 1, v293);
    v298 = v391;
    outlined init with copy of Date?(v297, v391, &_s8PaperKit5ColorVSgMd);
    v433 = COERCE_DOUBLE(lazy protocol witness table accessor for type Color? and conformance <A> A?());
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v297, &_s8PaperKit5ColorVSgMd);
    *&v434 = v296[7];
    (v430)(v297, 1, 1, v293);
    outlined init with copy of Date?(v297, v298, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v297, &_s8PaperKit5ColorVSgMd);
    v439 = v296[8];
    t1.a = 5.0;
    CRRegister.init(wrappedValue:)();
    *&v429 = v296[9];
    v299 = v398;
    swift_storeEnumTagMultiPayload();
    v430 = type metadata accessor for ShapeType;
    outlined init with copy of CRAssetOrData(v299, v393, type metadata accessor for ShapeType);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    _s8PaperKit0A8DocumentVWOhTm_0(v299, type metadata accessor for ShapeType);
    t1.a = 1.0;
    CRRegister.init(wrappedValue:)();
    t1.a = 0.0;
    LOBYTE(t1.b) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    t1.a = 0.0;
    LOBYTE(t1.b) = 0;
    CRRegister.init(wrappedValue:)();
    v300 = v296[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    *&v428 = v300;
    CRAttributedString.init(_:)();
    v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v302 = v432;
    (*(*(v301 - 8) + 56))(v432, 1, 1, v301);
    outlined init with copy of Date?(v302, v431, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v302, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v303 = v296[15];
    t1.a = 0.0;
    v304 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v432 = v303;
    v431 = v304;
    CRRegister.init(wrappedValue:)();
    t1.a = 0.0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v305 = type metadata accessor for StrokeStyle(0);
    v306 = v395;
    (*(*(v305 - 8) + 56))(v395, 1, 1, v305);
    outlined init with copy of Date?(v306, v396, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v306, &_s8PaperKit11StrokeStyleOSgMd);
    v307 = type metadata accessor for Shadow();
    v308 = v399;
    (*(*(v307 - 8) + 56))(v399, 1, 1, v307);
    outlined init with copy of Date?(v308, v400, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    v309 = v295;
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v308, &_s8PaperKit6ShadowVSgMd);
    memset(&t1, 0, sizeof(t1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    memset(&t1, 0, 32);
    v310 = v403;
    CRRegister.init(_:)();
    (*(v404 + 40))(v295, v310, v452);
    outlined init with copy of CRAssetOrData(v423, v299, v430);
    v311 = v406;
    CRRegister.init(_:)();
    (*(v407 + 40))(&v295[*&v429], v311, v408);
    t1.a = 5.0;
    v312 = v409;
    CRRegister.init(_:)();
    (*(v410 + 40))(&v295[v439], v312, v450);
    v313 = *&v440;
    outlined init with copy of Date?(v420, *&v440, &_s8PaperKit5ColorVSgMd);
    v314 = v411;
    CRRegister.init(_:)();
    v315 = *(v412 + 40);
    v316 = &v295[*&v434];
    v317 = v413;
    v315(v316, v314, v413);
    v318 = v444;
    outlined init with copy of Date?(v421, v313, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v319 = v317;
    v320 = v443;
    v315((v309 + *&v437), v314, v319);
    v321 = v405;
    outlined init with copy of Date?(v424, v405, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v320 + 48))(v321, 1, v318) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v321, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v352 = v383;
      (*(v320 + 32))(v383, v321, v318);
      (*(v320 + 40))(v309 + v428, v352, v318);
    }

    v353 = v382;
    v354 = v455;
    v355 = v402;
    t1.a = 0.0;
    v356 = v414;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v424, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v421, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v420, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A8DocumentVWOhTm_0(v423, type metadata accessor for ShapeType);
    (*(v415 + 40))(&v432[v309], v356, v416);
    _s8PaperKit5ImageVWObTm_0(v309, v355, type metadata accessor for Shape);
    objc_opt_self();
    v357 = swift_dynamicCastObjCClass();
    if (v357)
    {
      [v357 rectangle];
    }

    else
    {
      [*&v354 drawingBounds];
    }

    t1.a = v358;
    t1.b = v359;
    t1.c = v360;
    t1.d = v361;
    CRRegister.wrappedValue.setter();
    v362 = CRRegister.wrappedValue.modify();
    v484 = *v363;
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    *v363 = CGRectApplyAffineTransform(v484, &t1);
    v362(&t2, 0);
    if (v353)
    {
      v364 = v353;
      if ([v364 hasAppearanceStream])
      {
        [v364 bounds];
        v366 = v365;
        v368 = v367;
        CRRegister.wrappedValue.getter();
        Shape.appearanceStreamOffset.setter(v366 - t1.a, v368 - t1.b);
      }
    }

    v369 = CRRegister.wrappedValue.modify();
    v371 = v370;
    v372 = *v370;
    v373 = v370[1];
    v374 = v370[2];
    v375 = v370[3];
    v485.origin.x = *v370;
    v485.origin.y = v373;
    v485.size.width = v374;
    v485.size.height = v375;
    v376 = CGRectGetMinX(v485);
    v486.origin.x = v372;
    v486.origin.y = v373;
    v486.size.width = v374;
    v486.size.height = v375;
    v377 = *&a7 + *&a7 + a8 - CGRectGetMaxY(v486);
    v487.origin.x = v372;
    v487.origin.y = v373;
    v487.size.width = v374;
    v487.size.height = v375;
    v378 = CGRectGetWidth(v487);
    v488.origin.x = v372;
    v488.origin.y = v373;
    v488.size.width = v374;
    v488.size.height = v375;
    v379 = CGRectGetHeight(v488);
    *v371 = v376;
    v371[1] = v377;
    v371[2] = v378;
    v371[3] = v379;
    v369(&t1, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    v380 = CRRegister.wrappedValue.modify();
    *v381 |= *&v445;
    v380(&t1, 0);
    outlined init with copy of CRAssetOrData(v355, v442, type metadata accessor for Shape);
    (*(v446 + 16))(v448, v449, v447);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

    v137 = v454;
    SharedTagged_10.init<A>(_:_:id:)();
    v138 = type metadata accessor for Shape;
    v139 = v355;
LABEL_33:
    _s8PaperKit0A8DocumentVWOhTm_0(v139, v138);
    v140 = type metadata accessor for AnnotationImporter.ImportedElement();
    swift_storeEnumTagMultiPayload();
    v141 = *(*(v140 - 8) + 56);
    v142 = v137;
    return v141(v142, 0, 1, v140);
  }

  v107 = v106;
  v108 = *&v99;
  UnknownProperties.init()();
  type metadata accessor for CGRect(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  memset(&t1, 0, 32);
  CRRegister.init(wrappedValue:)();
  memset(&t1, 0, 32);
  CRRegister.init(wrappedValue:)();
  *&v109 = v56[6];
  t1.a = 0.0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v455 = v109;
  CRRegister.init(wrappedValue:)();
  v110 = v56[7];
  t1.a = 1.5;
  v453 = v110;
  CRRegister.init(wrappedValue:)();
  v111 = v439;
  v112 = *(v439 + 20);
  v113 = type metadata accessor for UnknownValueProperties();
  v114 = v437;
  (*(*(v113 - 8) + 56))(*&v437 + v112, 1, 1, v113);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (!result)
  {
    goto LABEL_89;
  }

  v115 = result;
  v444 = v108;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (result)
  {
    v116 = result;

    **&v114 = v116;
    v117 = *&v433;
    Color.withAlphaComponent(_:)(*&v433, 0.5);
    _s8PaperKit0A8DocumentVWOhTm_0(*&v114, type metadata accessor for Color);
    (*(v438 + 56))(v117, 0, 1, v111);
    outlined init with copy of Date?(v117, *&v440, &_s8PaperKit5ColorVSgMd);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s8PaperKit5ColorVSgMd);
    t1.a = 2.5;
    CRRegister.init(wrappedValue:)();
    v118 = v56[10];
    UnknownProperties.init()();
    memset(&t1, 0, 32);
    CRRegister.wrappedValue.setter();
    memset(&t1, 0, 32);
    CRRegister.wrappedValue.setter();
    t1.a = 0.0;
    CRRegister.wrappedValue.setter();
    (*(*&v434 + 40))(&v60[v118], COERCE_DOUBLE(*&v445), v435);
    [v107 magnification];
    t1.a = v119;
    CRRegister.wrappedValue.setter();
    [v107 rectangle];
    t1.a = v120;
    t1.b = v121;
    t1.c = v122;
    t1.d = v123;
    CRRegister.wrappedValue.setter();
    specialized CanvasElement.apply(_:)(&v458.a);
    v124 = CRRegister.wrappedValue.modify();
    v126 = v125;
    v127 = *v125;
    v128 = v125[1];
    v129 = v125[2];
    v130 = v125[3];
    v460.origin.x = *v125;
    v460.origin.y = v128;
    v460.size.width = v129;
    v460.size.height = v130;
    v131 = CGRectGetMinX(v460);
    v461.origin.x = v127;
    v461.origin.y = v128;
    v461.size.width = v129;
    v461.size.height = v130;
    v132 = *&a7 + *&a7 + a8 - CGRectGetMaxY(v461);
    v462.origin.x = v127;
    v462.origin.y = v128;
    v462.size.width = v129;
    v462.size.height = v130;
    v133 = CGRectGetWidth(v462);
    v463.origin.x = v127;
    v463.origin.y = v128;
    v463.size.width = v129;
    v463.size.height = v130;
    v134 = CGRectGetHeight(v463);
    *v126 = v131;
    v126[1] = v132;
    v126[2] = v133;
    v126[3] = v134;
    v124(&t1, 0);
    v135 = CRRegister.wrappedValue.modify();
    *v136 = -*v136;
    v135(&t1, 0);
    outlined init with copy of CRAssetOrData(v60, *&v436, type metadata accessor for LoupeElement);
    (*(v446 + 16))(v448, v449, v447);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

    v137 = v454;
    SharedTagged_10.init<A>(_:_:id:)();

    v138 = type metadata accessor for LoupeElement;
    v139 = v60;
    goto LABEL_33;
  }

LABEL_90:
  __break(1u);
  return result;
}
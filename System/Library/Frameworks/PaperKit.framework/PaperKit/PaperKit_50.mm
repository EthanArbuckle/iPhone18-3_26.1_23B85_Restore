Swift::Void __swiftcall PaperDocumentView.tiledViewUpdateEditingState()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v1)
  {
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v2 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode);
    v4 = v3 >= 2;
    if (v3 != 2)
    {
      v3 = 0;
    }

    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    v7 = [v2 canvasView];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 drawingGestureRecognizer];

      [v9 setEnabled_];
    }

    [v2 setDrawingPolicy_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t (*implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:)())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return partial apply for closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:);
}

uint64_t closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = swift_allocObject();
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:), v9);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:), v7, v6);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    PaperDocumentView.updateCanvasSelectionMode()();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_task_alloc();
      *(v7 + 16) = v4;
      *(v7 + 24) = v6;
      v8 = v6;
      withObservationTracking<A>(_:onChange:)();
    }

    else
    {
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

Swift::Void __swiftcall PaperDocumentView.updateCanvasSelectionMode()()
{
  v1 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v31 = v0;
  v2 = *(v0 + v1);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v29 = v7;
  v30 = v3;
  v32 = v8;
  if (v6)
  {
LABEL_4:
    v10 = v9;
LABEL_8:
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = *(*(v8 + 48) + 8 * v11);
    v13 = *(v8 + 56) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 104);
    v34 = v12;
    v33 = v14;
    v18 = v17(ObjectType, v15);
    v19 = v18;
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v18 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = 0;
    v6 &= v6 - 1;
    do
    {
      if (v21 == v22)
      {

        v9 = v10;
        v8 = v32;
        v7 = v29;
        v3 = v30;
        if (!v6)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6CE0C0](v22, v19);
      }

      else
      {
        if (v22 >= *(v20 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v19 + 8 * v22 + 32);
      }

      v24 = v23;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      swift_getKeyPath();
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = v24[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode];

      ++v22;
    }

    while ((v25 & 1) == 0);

    v26 = (v31 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode);
    v27 = 1;
    if (*(v31 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode) == 1)
    {
LABEL_23:
      *v26 = v27;
      PaperDocumentView._isInCanvasSelectionMode.didset(v27);
      return;
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_28:
        __break(1u);
        return;
      }

      if (v10 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v27 = 0;
    v26 = (v31 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode);
    if ((*(v31 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void PaperDocumentView._isInCanvasSelectionMode.didset(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  v4 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode) == v2)
  {
    return;
  }

  v6 = PaperDocumentView.currentPageCanvas.getter();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  swift_getKeyPath();
  v48 = v5;
  v8 = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = &unk_1EDCB3000;
  v47 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode;
  v10 = v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v10 == *(v1 + v5))
  {

    return;
  }

  v44 = v4;
  v43 = v8;
  v45 = v3;
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v46 = v1;
  v12 = *(v1 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v50 = v12;
  v51 = (v14 + 63) >> 6;

  v17 = 0;
  v49 = v13;
  while (v16)
  {
LABEL_13:
    v54 = v17;
    v19 = __clz(__rbit64(v16)) | (v17 << 6);
    v20 = *(*(v50 + 48) + 8 * v19);
    v21 = *(v50 + 56) + 16 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 104);
    v53 = v20;
    v52 = v22;
    v26 = v25(ObjectType, v23);
    v27 = v26;
    if (v26 >> 62)
    {
      v28 = __CocoaSet.count.getter();
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    if (v28 < 1)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v29 = 0;
    v56 = v27 & 0xC000000000000001;
    v57 = v28;
    v55 = v27;
    do
    {
      if (v56)
      {
        v32 = MEMORY[0x1DA6CE0C0](v29, v27);
      }

      else
      {
        v32 = *(v27 + 8 * v29 + 32);
      }

      v33 = v32;
      v34 = v9[462];
      if (*(v32 + v34))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        v36 = v9;
        *(v32 + v34) = 0;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v33 + v34))
        {
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v33 + v34) == 1)
          {
            AnyCanvas.startCroppingRootElement()();
          }

          else
          {
            AnyCanvas.canvasCancelCrop()();
            v37 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView;
            v38 = *(v33 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView);
            if (v38)
            {
              [v38 removeFromSuperview];
              v39 = *(v33 + v37);
            }

            else
            {
              v39 = 0;
            }

            *(v33 + v37) = 0;
          }

          v30 = MEMORY[0x1E69E7D40];
          v31 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x440))();
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          (*((*v30 & *v31) + 0x3C0))(*(v33 + v34));
        }

        v9 = v36;
        v27 = v55;
      }

      ++v29;
    }

    while (v57 != v29);
LABEL_7:
    v16 &= v16 - 1;

    v13 = v49;
    v17 = v54;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v18 >= v51)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v17;
    if (v16)
    {
      v17 = v18;
      goto LABEL_13;
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(v46 + v48);
  v41 = v7[v47];
  if (v40 == v41)
  {
    v7[v47] = v40;
    AnyCanvas._isInCanvasSelectionMode.didset(v41);
  }

  else
  {
    v42 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v42);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*PaperDocumentView._isInCanvasSelectionMode.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return PaperDocumentView._isInCanvasSelectionMode.modify;
}

void PaperDocumentView._isInCanvasSelectionMode.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  PaperDocumentView._isInCanvasSelectionMode.didset(v4);
}

uint64_t key path getter for PaperDocumentView.isInCanvasSelectionMode : PaperDocumentView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode);
  return result;
}

uint64_t PaperDocumentView.isInCanvasSelectionMode.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode);
}

void (*PaperDocumentView.isInCanvasSelectionMode.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._isInCanvasSelectionMode.modify(v4);
  return PaperDocumentView.isInCanvasSelectionMode.modify;
}

uint64_t PaperDocumentView.docScanDismissBlock.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock);
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v1);
  return v1;
}

uint64_t key path getter for PaperDocumentView.docScanDismissBlock : PaperDocumentView@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock);
  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed VNDocumentCameraScan?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v4);
}

uint64_t key path setter for PaperDocumentView.docScanDismissBlock : PaperDocumentView(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed VNDocumentCameraScan?) -> (@out ());
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v1);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

void closure #1 in PaperDocumentView.scanPagesAction(for:toolPicker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v26 = v8;
    }

    else
    {
      v9 = [v7 window];
      v10 = [v9 rootViewController];

      if (!v10)
      {
        v11 = v7;
LABEL_9:

        return;
      }

      v26 = v10;
    }

    v11 = [objc_allocWithZone(MEMORY[0x1E699A340]) init];
    [v11 setModalPresentationStyle_];
    [v11 setDelegate_];
    [a3 _lockHidden];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v13 = !IsReduceMotionEnabled;
    v25 = !IsReduceMotionEnabled;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    *(v16 + 32) = a4;
    *(v16 + 40) = v13;
    *(v16 + 48) = a3;
    KeyPath = swift_getKeyPath();
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](KeyPath);
    v27 = v7;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);

    v18 = a3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_getKeyPath();
    v27 = v7;
    v19 = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = &v7[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 1);
      ObjectType = swift_getObjectType();
      (*(v21 + 32))(v7, v11, v19, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    v23 = v26;
    [v26 presentViewController:v11 animated:v19 completion:0];

    goto LABEL_9;
  }
}

void closure #1 in closure #1 in PaperDocumentView.scanPagesAction(for:toolPicker:)(void *a1, uint64_t a2, uint64_t a3, Swift::Int a4, char a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (a1)
      {
        v15 = a1;
        PaperDocumentView.insert(_:at:)(v15, a4);
      }

      [v13 dismissViewControllerAnimated:a5 & 1 completion:0];
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = &v11[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 1);
        ObjectType = swift_getObjectType();
        (*(v17 + 40))(v11, v13, a5 & 1, ObjectType, v17);
        swift_unknownObjectRelease();
      }

      [a6 _unlockHidden];
    }

    else
    {
      v13 = v11;
    }
  }
}

uint64_t closure #1 in PaperDocumentView.apply(filter:to:)()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  Capsule.callAsFunction<A>(_:)();
  return swift_endAccess();
}

uint64_t closure #1 in closure #1 in PaperDocumentView.apply(filter:to:)@<X0>(unsigned __int8 a1@<W1>, char *a2@<X8>)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  if (v4 != 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
    v11 = WeakRef.subscript.modify();
    v18 = v17;
    v19 = type metadata accessor for Image(0);
    if ((*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      goto LABEL_3;
    }

    *v10 = a1;
    v10[8] = 0;
    v22 = type metadata accessor for ImageFilter(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
    outlined init with copy of Date?(v10, v7, &_s8PaperKit11ImageFilterOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
    CRRegister.wrappedValue.setter();
    v21 = v10;
LABEL_8:
    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit11ImageFilterOSgMd);
    result = v11(v23, 0);
    v16 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v11 = WeakRef.subscript.modify();
  v13 = v12;
  v14 = type metadata accessor for Image(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v20 = type metadata accessor for ImageFilter(0);
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    outlined init with copy of Date?(v10, v7, &_s8PaperKit11ImageFilterOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
    CRRegister.wrappedValue.setter();
    v21 = v10;
    goto LABEL_8;
  }

LABEL_3:
  result = v11(v23, 0);
  v16 = 1;
LABEL_9:
  *a2 = v16;
  return result;
}

Class PaperDocumentView.applyFilterPageAction(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  v3 = *(v2 - 8);
  v69 = v2;
  v70 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v71 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v61 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v61 - v20;
  v22 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(a1 + v22, v10, &_s8PaperKit6PageIdVSgMd);
  v23 = type metadata accessor for PageId(0);
  if ((*(*(v23 - 8) + 48))(v10, 1, v23))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit6PageIdVSgMd);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    (*(v73 + 56))(v16, 1, 1, v74);
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
    return 0;
  }

  v66 = v18;
  v67 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v21;
  v68 = v4;
  outlined init with copy of Date?(&v10[*(v23 + 20)], v13, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit6PageIdVSgMd);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    goto LABEL_4;
  }

  WeakTagged_3.tagged2.getter();
  (*(v27 + 8))(v13, v26);
  v29 = v73;
  v30 = v74;
  if ((*(v73 + 48))(v16, 1, v74) == 1)
  {
    goto LABEL_5;
  }

  v65 = *(v29 + 32);
  v61[1] = (v29 + 32);
  v31 = v65(v25, v16, v30);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v25;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v33 = v7;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v69 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v77._object = 0x80000001D408F260;
  v34._countAndFlagsBits = 0x737265746C6946;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v34._object = 0xE700000000000000;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v77._countAndFlagsBits = 0xD000000000000033;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, paperKitBundle, v36, v77);
  countAndFlagsBits = v37._countAndFlagsBits;
  object = v37._object;
  v38 = [objc_opt_self() configurationPreferringMonochrome];
  v39 = MEMORY[0x1DA6CCED0](0x662E6172656D6163, 0xEE00737265746C69);
  v62 = [objc_opt_self() systemImageNamed:v39 withConfiguration:v38];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D405CEB0;
  v61[0] = objc_opt_self();
  v41 = v7;
  v42 = v71;
  outlined init with copy of Date?(v41, v71, &_s8PaperKit11ImageFilterOSgMd);
  v43 = v73;
  v44 = v74;
  v45 = v67;
  (*(v73 + 16))(v67, v32, v74);
  v46 = *(v70 + 80);
  v70 = v33;
  v47 = (v46 + 16) & ~v46;
  v48 = &v68[v47 + 7] & 0xFFFFFFFFFFFFFFF8;
  v49 = (*(v43 + 80) + v48 + 8) & ~*(v43 + 80);
  v50 = swift_allocObject();
  v68 = v32;
  v51 = v50;
  outlined init with take of Range<AttributedString.Index>(v42, v50 + v47, &_s8PaperKit11ImageFilterOSgMd);
  v52 = v72;
  *(v51 + v48) = v72;
  v53 = v51 + v49;
  v54 = v44;
  v65(v53, v45, v44);
  aBlock[4] = partial apply for closure #2 in PaperDocumentView.applyFilterPageAction(for:);
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_365;
  v55 = _Block_copy(aBlock);
  v56 = v52;

  v57 = [v61[0] elementWithUncachedProvider_];
  _Block_release(v55);
  *(v40 + 32) = v57;
  v58._countAndFlagsBits = countAndFlagsBits;
  v58._object = object;
  v76.value.super.isa = v62;
  v76.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v58, 0, v76, 0, 0xFFFFFFFFFFFFFFFFLL, v40, v60).super.super.isa;
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit11ImageFilterOSgMd);
  (*(v43 + 8))(v68, v54);
  return isa;
}

uint64_t closure #1 in PaperDocumentView.applyFilterPageAction(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  WeakRef.subscript.getter();
  v5 = type metadata accessor for Image(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit5ImageVSgMd);
    v6 = type metadata accessor for ImageFilter(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
    CRRegister.wrappedValue.getter();
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit5ImageVSgMd);
  }
}

uint64_t closure #2 in PaperDocumentView.applyFilterPageAction(for:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v117 = a4;
  v118 = a5;
  v97 = a2;
  v98 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v119 = *(v116 - 8);
  v109 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v89 - v12;
  v14 = type metadata accessor for ImageFilter(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v91 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v89 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1D405B630;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v32.value._object = 0xEB00000000656C62;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33._countAndFlagsBits = 0xD000000000000013;
  v120._object = 0x80000001D408F2E0;
  v34._countAndFlagsBits = 0x726F6C6F43;
  v33._object = 0x80000001D408F2C0;
  v120._countAndFlagsBits = 0xD000000000000039;
  v111.super.isa = paperKitBundle.super.isa;
  v34._object = 0xE500000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v32, paperKitBundle, v34, v120);
  countAndFlagsBits = v35._countAndFlagsBits;
  object = v35._object;
  v92 = MEMORY[0x1DA6CCED0](0xD00000000000001BLL, 0x80000001D408F320);
  *v17 = 0;
  v17[8] = 0;
  swift_storeEnumTagMultiPayload();
  _s8PaperKit5ImageVWObTm_0(v17, v31, type metadata accessor for ImageFilter);
  v100 = *(v15 + 56);
  v101 = v15 + 56;
  v100(v31, 0, 1, v14);
  v105 = v7;
  v36 = *(v7 + 48);
  v114 = a3;
  outlined init with copy of Date?(a3, v13, &_s8PaperKit11ImageFilterOSgMd);
  outlined init with copy of Date?(v31, &v13[v36], &_s8PaperKit11ImageFilterOSgMd);
  v37 = *(v15 + 48);
  v38 = v37(v13, 1, v14);
  v113 = v15 + 48;
  v110 = v37;
  if (v38 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s8PaperKit11ImageFilterOSgMd);
    if (v37(&v13[v36], 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit11ImageFilterOSgMd);
      v39 = v119;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  outlined init with copy of Date?(v13, v28, &_s8PaperKit11ImageFilterOSgMd);
  if (v37(&v13[v36], 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s8PaperKit11ImageFilterOSgMd);
    _s8PaperKit0A8DocumentVWOhTm_0(v28, type metadata accessor for ImageFilter);
LABEL_8:
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit11ImageFilterOSg_ADtMd);
    v39 = v119;
    goto LABEL_9;
  }

  _s8PaperKit5ImageVWObTm_0(&v13[v36], v17, type metadata accessor for ImageFilter);
  specialized static ImageFilter.== infix(_:_:)(v28, v17);
  _s8PaperKit0A8DocumentVWOhTm_0(v17, type metadata accessor for ImageFilter);
  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s8PaperKit11ImageFilterOSgMd);
  _s8PaperKit0A8DocumentVWOhTm_0(v28, type metadata accessor for ImageFilter);
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit11ImageFilterOSgMd);
  v39 = v119;
LABEL_9:
  v40 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = *(v39 + 16);
  v43 = v115;
  v44 = v116;
  v108 = v39 + 16;
  v103 = v42;
  v42(v115, v118, v116);
  v45 = *(v39 + 80);
  v46 = (v45 + 24) & ~v45;
  v106 = v46 + v109;
  v107 = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  v49 = *(v39 + 32);
  v48 = v39 + 32;
  v109 = v46;
  v102 = v49;
  v49(v47 + v46, v43, v44);
  countAndFlagsBits = v40;
  *(v112 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v121._object = 0x80000001D408F340;
  v50._countAndFlagsBits = 0x6C61637379617247;
  v121._countAndFlagsBits = 0xD00000000000003DLL;
  v50._object = 0xE900000000000065;
  v51.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v51.value._object = 0xEB00000000656C62;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v111, v52, v121);
  object = v53._countAndFlagsBits;
  v92 = v53._object;
  MEMORY[0x1DA6CCED0](0xD00000000000001FLL, 0x80000001D408F380);
  *v17 = 1;
  v17[8] = 0;
  swift_storeEnumTagMultiPayload();
  v54 = v94;
  _s8PaperKit5ImageVWObTm_0(v17, v94, type metadata accessor for ImageFilter);
  v100(v54, 0, 1, v14);
  v55 = v105[12];
  v56 = v95;
  outlined init with copy of Date?(v114, v95, &_s8PaperKit11ImageFilterOSgMd);
  outlined init with copy of Date?(v54, v56 + v55, &_s8PaperKit11ImageFilterOSgMd);
  v57 = v110;
  if (v110(v56, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s8PaperKit11ImageFilterOSgMd);
    if (v57(v56 + v55, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s8PaperKit11ImageFilterOSgMd);
      v58 = v114;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v59 = v90;
  outlined init with copy of Date?(v56, v90, &_s8PaperKit11ImageFilterOSgMd);
  if (v57(v56 + v55, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s8PaperKit11ImageFilterOSgMd);
    _s8PaperKit0A8DocumentVWOhTm_0(v59, type metadata accessor for ImageFilter);
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s8PaperKit11ImageFilterOSg_ADtMd);
    v58 = v114;
    goto LABEL_15;
  }

  _s8PaperKit5ImageVWObTm_0(v56 + v55, v17, type metadata accessor for ImageFilter);
  specialized static ImageFilter.== infix(_:_:)(v59, v17);
  _s8PaperKit0A8DocumentVWOhTm_0(v17, type metadata accessor for ImageFilter);
  outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s8PaperKit11ImageFilterOSgMd);
  _s8PaperKit0A8DocumentVWOhTm_0(v59, type metadata accessor for ImageFilter);
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s8PaperKit11ImageFilterOSgMd);
  v58 = v114;
LABEL_15:
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v115;
  v62 = v116;
  v103(v115, v118, v116);
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  v119 = v48;
  v102(v63 + v109, v61, v62);
  *(v112 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v122._object = 0x80000001D408F3A0;
  v64._countAndFlagsBits = 0x2026206B63616C42;
  v64._object = 0xED00006574696857;
  v122._countAndFlagsBits = 0xD000000000000041;
  v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v65.value._object = 0xEB00000000656C62;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v111, v66, v122);
  v95 = v67._countAndFlagsBits;
  v94 = v67._object;
  MEMORY[0x1DA6CCED0](0xD000000000000023, 0x80000001D408F3F0);
  *v17 = 2;
  v17[8] = 0;
  swift_storeEnumTagMultiPayload();
  v68 = v99;
  _s8PaperKit5ImageVWObTm_0(v17, v99, type metadata accessor for ImageFilter);
  v100(v68, 0, 1, v14);
  v69 = v105[12];
  v70 = v58;
  v71 = v96;
  outlined init with copy of Date?(v70, v96, &_s8PaperKit11ImageFilterOSgMd);
  outlined init with copy of Date?(v68, v71 + v69, &_s8PaperKit11ImageFilterOSgMd);
  v72 = v110;
  if (v110(v71, 1, v14) != 1)
  {
    v73 = v91;
    outlined init with copy of Date?(v71, v91, &_s8PaperKit11ImageFilterOSgMd);
    if (v72(v71 + v69, 1, v14) != 1)
    {
      _s8PaperKit5ImageVWObTm_0(v71 + v69, v17, type metadata accessor for ImageFilter);
      specialized static ImageFilter.== infix(_:_:)(v73, v17);
      _s8PaperKit0A8DocumentVWOhTm_0(v17, type metadata accessor for ImageFilter);
      outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s8PaperKit11ImageFilterOSgMd);
      _s8PaperKit0A8DocumentVWOhTm_0(v73, type metadata accessor for ImageFilter);
      outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit11ImageFilterOSgMd);
      goto LABEL_24;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s8PaperKit11ImageFilterOSgMd);
    _s8PaperKit0A8DocumentVWOhTm_0(v73, type metadata accessor for ImageFilter);
    goto LABEL_20;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit11ImageFilterOSgMd);
  if (v72(v71 + v69, 1, v14) != 1)
  {
LABEL_20:
    outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit11ImageFilterOSg_ADtMd);
    goto LABEL_24;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit11ImageFilterOSgMd);
LABEL_24:
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = v115;
  v75 = v116;
  v77 = v103;
  v103(v115, v118, v116);
  v78 = swift_allocObject();
  *(v78 + 16) = v74;
  v79 = v102;
  v102(v78 + v109, v76, v75);
  v80 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v81 = v112;
  *(v112 + 48) = v80;
  v123._object = 0x80000001D408F420;
  v82._countAndFlagsBits = 0x6F746F6850;
  v123._countAndFlagsBits = 0xD000000000000039;
  v82._object = 0xE500000000000000;
  v83.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v83.value._object = 0xEB00000000656C62;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v111, v84, v123);
  v111.super.isa = v85._countAndFlagsBits;
  v105 = v85._object;
  MEMORY[0x1DA6CCED0](0xD00000000000001BLL, 0x80000001D408F460);
  (v110)(v114, 1, v14);
  v86 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77(v76, v118, v75);
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v79(v87 + v109, v76, v75);
  *(v81 + 56) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v98(v81);
}

uint64_t closure #1 in closure #2 in PaperDocumentView.applyFilterPageAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t *__return_ptr, uint64_t))
{
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16[-v10];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v16[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
    WeakRef.id.getter();
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    WeakTagged_3.init(_:id:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    v15 = (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    MEMORY[0x1EEE9AC00](v15);
    *&v16[-32] = v13;
    v16[-24] = a4;
    *&v16[-16] = a3;
    specialized PaperDocumentView.undoable<A>(updatePDF:updatePDFOnUndo:updatePage:action:)(0, 0, v11, a5, &v16[-48]);

    return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  }

  return result;
}

uint64_t closure #1 in PaperDocumentView.apply(contentsBoundsQuad:to:)()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  Capsule.callAsFunction<A>(_:)();
  return swift_endAccess();
}

uint64_t closure #1 in closure #1 in PaperDocumentView.apply(contentsBoundsQuad:to:)@<X0>(_OWORD *a1@<X2>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v10 = WeakRef.subscript.modify();
  v12 = v11;
  v13 = type metadata accessor for Image(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  if (!v14)
  {
    v15 = a1[1];
    *v9 = *a1;
    v9[1] = v15;
    v16 = a1[3];
    v9[2] = a1[2];
    v9[3] = v16;
    v17 = type metadata accessor for ContentsBounds(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
    outlined init with copy of Date?(v9, v6, &_s8PaperKit14ContentsBoundsOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14ContentsBoundsOSgMd);
  }

  result = v10(v19, 0);
  *a2 = v14 != 0;
  return result;
}

uint64_t PaperDocumentView.quadEditorController.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t key path getter for PaperDocumentView.quadEditorController : PaperDocumentView@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__quadEditorController);
  return swift_unknownObjectRetain();
}

uint64_t PaperDocumentView.cropPageAction(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - v16;
  v18 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  v55 = a1;
  outlined init with copy of Date?(a1 + v18, v9, &_s8PaperKit6PageIdVSgMd);
  v19 = type metadata accessor for PageId(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v9, 1, v19))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit6PageIdVSgMd);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    goto LABEL_5;
  }

  outlined init with copy of Date?(&v9[*(v19 + 20)], v14, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit6PageIdVSgMd);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    goto LABEL_4;
  }

  v52 = v20;
  WeakTagged_3.tagged2.getter();
  v20 = v52;
  (*(v23 + 8))(v14, v22);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  if ((*(*(v34 - 8) + 48))(v17, 1, v34) != 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
    v35 = v55;
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v56._object = 0x80000001D408F170;
    v36._countAndFlagsBits = 0x67615020706F7243;
    v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v37.value._object = 0xEB00000000656C62;
    v56._countAndFlagsBits = 0xD000000000000074;
    v36._object = 0xE900000000000065;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, paperKitBundle, v38, v56);
    v39 = MEMORY[0x1DA6CCED0](1886351971, 0xE400000000000000);
    [objc_opt_self() systemImageNamed_];

    MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D408F1F0);
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v35;
    v42 = v35;
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

LABEL_5:
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  v25 = v55;
  outlined init with copy of Date?(v55 + v18, v6, &_s8PaperKit6PageIdVSgMd);
  if (v20(v6, 1, v19))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit6PageIdVSgMd);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    v27 = v53;
    (*(*(v26 - 8) + 56))(v53, 1, 1, v26);
    v28 = v54;
LABEL_8:
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd);
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
    return 0;
  }

  v27 = v53;
  outlined init with copy of Date?(&v6[*(v19 + 20)], v53, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit6PageIdVSgMd);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v27, 1, v29);
  v28 = v54;
  if (v31 == 1)
  {
    goto LABEL_8;
  }

  WeakTagged_3.tagged3.getter();
  (*(v30 + 8))(v27, v29);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd);
  if ((*(*(v43 - 8) + 48))(v28, 1, v43) == 1)
  {
    goto LABEL_9;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v57._object = 0x80000001D408F170;
  v44._countAndFlagsBits = 0x67615020706F7243;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v57._countAndFlagsBits = 0xD000000000000074;
  v44._object = 0xE900000000000065;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, paperKitBundle, v46, v57);
  v47 = MEMORY[0x1DA6CCED0](1886351971, 0xE400000000000000);
  [objc_opt_self() systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D408F1F0);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v25;
  v50 = v25;
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t closure #1 in PaperDocumentView.cropImagePageAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v82 - v5;
  v89 = type metadata accessor for ContentsBounds(0);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = (&v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v93 = &v82 - v11;
  v92 = type metadata accessor for CRAssetOrData();
  v94 = *(v92 - 8);
  v12 = *(v94 + 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  *&v100 = &v82 - v16;
  *&v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  *&v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v18 = &v82 - v17;
  *&v101 = type metadata accessor for Image(0);
  v97 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v95 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v82 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v102 = *(v29 - 8);
  v103 = v29;
  v30 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v82 - v32;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = result;
    v85 = v6;
    v36 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    swift_beginAccess();
    outlined init with copy of Date?(a3 + v36, v22, &_s8PaperKit6PageIdVSgMd);
    v37 = type metadata accessor for PageId(0);
    if ((*(*(v37 - 8) + 48))(v22, 1, v37))
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit6PageIdVSgMd);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
      (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
LABEL_6:
      outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
      (*(v102 + 56))(v28, 1, 1, v103);
LABEL_7:
      v41 = &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd;
      v42 = v28;
      return outlined destroy of StocksKitCurrencyCache.Provider?(v42, v41);
    }

    outlined init with copy of Date?(&v22[*(v37 + 20)], v25, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit6PageIdVSgMd);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v25, 1, v39) == 1)
    {

      goto LABEL_6;
    }

    WeakTagged_3.tagged2.getter();
    (*(v40 + 8))(v25, v39);
    v44 = v102;
    v43 = v103;
    if ((*(v102 + 48))(v28, 1, v103) == 1)
    {

      goto LABEL_7;
    }

    v45 = *(v44 + 32);
    v46 = v33;
    v84 = v44 + 32;
    v83 = v45;
    v45(v33, v28, v43);
    v47 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v48 = v98;
    v49 = v99;
    (*(v98 + 16))(v18, &v35[v47], v99);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v50 = v100;
    v51 = v101;
    Capsule.subscript.getter();
    (*(v48 + 8))(v18, v49);
    if ((*(v97 + 48))(v50, 1, v51) == 1)
    {
      (*(v102 + 8))(v46, v103);

      v41 = &_s8PaperKit5ImageVSgMd;
      v42 = v50;
      return outlined destroy of StocksKitCurrencyCache.Provider?(v42, v41);
    }

    v52 = v103;
    v53 = v46;
    v54 = v50;
    v55 = v95;
    _s8PaperKit5ImageVWObTm_0(v54, v95, type metadata accessor for Image);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
    v56 = v93;
    CRRegister.wrappedValue.getter();
    v57 = v94;
    if ((*(v94 + 6))(v56, 1, v92) == 1)
    {

      _s8PaperKit0A8DocumentVWOhTm_0(v55, type metadata accessor for Image);
      (*(v102 + 8))(v46, v52);
      v41 = &_s8PaperKit13CRAssetOrDataOSgMd;
      v42 = v56;
      return outlined destroy of StocksKitCurrencyCache.Provider?(v42, v41);
    }

    _s8PaperKit5ImageVWObTm_0(v56, v96, type metadata accessor for CRAssetOrData);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
    v58 = v90;
    CRRegister.wrappedValue.getter();
    if ((*(v88 + 48))(v58, 1, v89) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s8PaperKit14ContentsBoundsOSgMd);
      v104 = 1;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v59 = v85;
      LODWORD(v97) = 1;
    }

    else
    {
      v60 = v86;
      outlined init with copy of CRAssetOrData(v58, v86, type metadata accessor for ContentsBounds);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v59 = v85;
      if (EnumCaseMultiPayload == 1)
      {
        v62 = 0;
        v63 = *v60;
        v100 = v60[1];
        v101 = v63;
        v64 = v60[2];
        v98 = v60[3];
        v99 = v64;
        v104 = 0;
      }

      else
      {
        _s8PaperKit0A8DocumentVWOhTm_0(v60, type metadata accessor for ContentsBounds);
        v62 = 1;
        v104 = 1;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
      }

      LODWORD(v97) = v62;
      _s8PaperKit0A8DocumentVWOhTm_0(v58, type metadata accessor for ContentsBounds);
    }

    v65 = type metadata accessor for TaskPriority();
    (*(*(v65 - 8) + 56))(v59, 1, 1, v65);
    v66 = v91;
    outlined init with copy of CRAssetOrData(v96, v91, type metadata accessor for CRAssetOrData);
    v67 = v102;
    v68 = v87;
    (*(v102 + 16))(v87, v53, v103);
    type metadata accessor for MainActor();
    v93 = v35;
    v69 = static MainActor.shared.getter();
    v70 = v57[80];
    v94 = v53;
    v71 = (v70 + 32) & ~v70;
    v72 = (v71 + v12 + 79) & 0xFFFFFFFFFFFFFFF8;
    v73 = (*(v67 + 80) + v72 + 8) & ~*(v67 + 80);
    v74 = swift_allocObject();
    v75 = MEMORY[0x1E69E85E0];
    *(v74 + 16) = v69;
    *(v74 + 24) = v75;
    _s8PaperKit5ImageVWObTm_0(v66, v74 + v71, type metadata accessor for CRAssetOrData);
    v76 = v74 + ((v71 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v77 = v100;
    *v76 = v101;
    *(v76 + 16) = v77;
    v78 = v98;
    *(v76 + 32) = v99;
    *(v76 + 48) = v78;
    *(v76 + 64) = v97;
    v79 = v93;
    *(v74 + v72) = v93;
    v80 = v74 + v73;
    v81 = v103;
    v83(v80, v68, v103);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v85, &async function pointer to partial apply for closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:), v74);

    _s8PaperKit0A8DocumentVWOhTm_0(v96, type metadata accessor for CRAssetOrData);
    _s8PaperKit0A8DocumentVWOhTm_0(v95, type metadata accessor for Image);
    return (*(v67 + 8))(v94, v81);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v7[19] = type metadata accessor for MainActor();
  v7[20] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v7[21] = v10;
  *v10 = v7;
  v10[1] = closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:);

  return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(0x7FFFFFFFFFFFFFFFLL, 1, 0);
}

uint64_t closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)(uint64_t a1)
{
  *(*v1 + 176) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:), v3, v2);
}

id closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[12];
    v22 = v0[22];
    v23 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
    if (*(v2 + 64))
    {
      v3 = 0;
    }

    else
    {
      v4 = v0[12];
      result = [objc_allocWithZone(MEMORY[0x1E699A328]) initWithBottomLeft:v4[4] bottomRight:v4[5] topLeft:v4[6] topRight:{v4[7], *v4, v4[1], v4[2], v4[3], v1}];
      v3 = result;
      if (!result)
      {
        goto LABEL_16;
      }
    }

    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v6, v9, v8);
    v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    (*(v7 + 32))(v12 + v11, v6, v8);
    v13 = objc_allocWithZone(MEMORY[0x1E699A330]);
    v0[6] = partial apply for closure #1 in closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:);
    v0[7] = v12;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed UIImage?, @guaranteed ICDocCamImageQuad?, @unowned Bool) -> ();
    v0[5] = &block_descriptor_55;
    v14 = _Block_copy(v0 + 2);

    v15 = [v13 initWithImage:v23 quad:v3 scanDataDelegate:0 orientation:0 completionHandler:v14];
    _Block_release(v14);

    if (v15)
    {

      [v15 setShowImageAsAspectFit_];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
      }

      else
      {
        v18 = [v0[13] window];
        v17 = [v18 rootViewController];

        if (!v17)
        {
LABEL_11:
          v19 = v0[13];
          swift_getKeyPath();
          v20 = swift_task_alloc();
          *(v20 + 16) = v19;
          *(v20 + 24) = v15;
          v0[11] = v19;
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          goto LABEL_12;
        }
      }

      [v17 presentViewController:v15 animated:1 completion:{0, v22}];

      goto LABEL_11;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_12:

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33[-v10];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    if (a3)
    {
      v14 = a3;
      [v14 topLeft];
      v16 = v15;
      v18 = v17;
      [v14 topRight];
      v20 = v19;
      v22 = v21;
      [v14 bottomLeft];
      v24 = v23;
      v26 = v25;
      [v14 bottomRight];
      v35[0] = v16;
      v35[1] = v18;
      v35[2] = v20;
      v35[3] = v22;
      v35[4] = v24;
      v35[5] = v26;
      v35[6] = v27;
      v35[7] = v28;
      LOBYTE(v34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
      WeakRef.id.getter();
      lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
      WeakTagged_3.init(_:id:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
      v30 = (*(*(v29 - 8) + 56))(v11, 0, 1, v29);
      MEMORY[0x1EEE9AC00](v30);
      *&v33[-32] = v13;
      *&v33[-24] = a6;
      *&v33[-16] = v35;
      specialized PaperDocumentView.undoable<A>(updatePDF:updatePDFOnUndo:updatePage:action:)(1, 0, v11, partial apply for closure #1 in PaperDocumentView.apply(contentsBoundsQuad:to:), &v33[-48]);

      outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    }

    swift_getKeyPath();
    v34 = v13;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*&v13[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__quadEditorController])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        [v31 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v33[-16] = v13;
    *&v33[-8] = 0;
    v34 = v13;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void closure #1 in PaperDocumentView.cropPDFPageAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    swift_beginAccess();
    outlined init with copy of Date?(a3 + v15, v6, &_s8PaperKit6PageIdVSgMd);
    v16 = type metadata accessor for PageId(0);
    if ((*(*(v16 - 8) + 48))(v6, 1, v16))
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit6PageIdVSgMd);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    else
    {
      outlined init with copy of Date?(&v6[*(v16 + 20)], v9, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit6PageIdVSgMd);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v9, 1, v18) != 1)
      {
        WeakTagged_3.tagged3.getter();
        (*(v19 + 8))(v9, v18);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd);
        if ((*(*(v21 - 8) + 48))(v12, 1, v21) != 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
          v22 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
          swift_beginAccess();
          v23 = *&v14[v22];
          if (!*(v23 + 16))
          {

            return;
          }

          v24 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
          if ((v25 & 1) == 0)
          {

            return;
          }

          v26 = *(*(v23 + 56) + 16 * v24);

          type metadata accessor for AnyCanvas();
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            v28 = v27;
            if (*(v27 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) != 1)
            {
              KeyPath = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](KeyPath);
              v30[-2] = v28;
              LOBYTE(v30[-1]) = 1;
              v30[2] = v28;
              _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

              return;
            }

            *(v27 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = 1;
            AnyCanvas._isInCanvasSelectionMode.didset(1);
          }

          return;
        }

        goto LABEL_7;
      }
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd);
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
  }
}

void PaperDocumentView._rulerHostView.didset(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v16 = v1;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (a1)
  {
    if (Strong)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  swift_getKeyPath();
  v16 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = type metadata accessor for RulerHostingDelegate();
    v10 = objc_allocWithZone(v9);
    swift_unknownObjectWeakInit();
    v10[OBJC_IVAR____TtC8PaperKit20RulerHostingDelegate_sharedRuler] = 1;
    swift_unknownObjectWeakAssign();
    v15.receiver = v10;
    v15.super_class = v9;
    v11 = objc_msgSendSuper2(&v15, sel_init);

    v12 = *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__rulerHostingDelegate);
    *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__rulerHostingDelegate) = v11;
    v8 = v11;
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__rulerHostingDelegate);
    *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__rulerHostingDelegate) = 0;
  }

  v13 = *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v13)
  {
    v14 = v13;
    [v14 setRulerHostingDelegate_];
  }

  else
  {
    __break(1u);
  }
}

void (*PaperDocumentView._rulerHostView.modify(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__rulerHostView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return PaperDocumentView._rulerHostView.modify;
}

void PaperDocumentView._rulerHostView.modify(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    PaperDocumentView._rulerHostView.didset(Strong);

    Strong = v4;
  }

  else
  {
    PaperDocumentView._rulerHostView.didset(Strong);
  }
}

uint64_t key path getter for PaperDocumentView.rulerHostView : PaperDocumentView@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void key path setter for PaperDocumentView.rulerHostView : PaperDocumentView(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PaperDocumentView.rulerHostView.setter(v1);
}

uint64_t PaperDocumentView.rulerHostView.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

void closure #1 in PaperDocumentView.rulerHostView.setter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  PaperDocumentView._rulerHostView.didset(Strong);
}

void (*PaperDocumentView.rulerHostView.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._rulerHostView.modify(v4);
  return PaperDocumentView.rulerHostView.modify;
}

uint64_t PaperDocumentView._calculateDocument.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocument);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = PaperDocumentView.currentPageCanvas.getter();
  v8 = MEMORY[0x1E69E7D40];
  if (v7)
  {
    v9 = v7;
    v10 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x440))();
    v12 = v11;

    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 16))(ObjectType, v12);

    if (v14)
    {
      CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
    }
  }

  v15 = PaperDocumentView.currentPageCanvas.getter();
  if (v15)
  {
    v16 = v15;
    (*((*v8 & *v15) + 0xA30))();
  }

  return swift_unknownObjectRelease();
}

void (*PaperDocumentView._calculateDocument.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PaperDocumentView._calculateDocument.modify;
}

void PaperDocumentView._calculateDocument.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v3 = PaperDocumentView.currentPageCanvas.getter();
    v4 = MEMORY[0x1E69E7D40];
    if (v3)
    {
      v5 = v3;
      v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x440))();
      v8 = v7;

      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 16))(ObjectType, v8);

      if (v10)
      {
        CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
      }
    }

    v11 = PaperDocumentView.currentPageCanvas.getter();
    if (v11)
    {
      v12 = v11;
      (*((*v4 & *v11) + 0xA30))();
    }
  }
}

uint64_t key path getter for PaperDocumentView.calculateDocument : PaperDocumentView@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocument;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t key path setter for PaperDocumentView.calculateDocument : PaperDocumentView()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t PaperDocumentView.calculateDocument.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

void (*PaperDocumentView.calculateDocument.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._calculateDocument.modify(v4);
  return PaperDocumentView.calculateDocument.modify;
}

void (*PaperDocumentView._calculateDocumentExpressionSolvingBehavior.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PaperDocumentView._calculateDocumentExpressionSolvingBehavior.modify;
}

void PaperDocumentView._calculateDocumentExpressionSolvingBehavior.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v3 = PaperDocumentView.currentPageCanvas.getter();
    if (v3)
    {
      v4 = v3;
      v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x440))();
      v7 = v6;

      ObjectType = swift_getObjectType();
      v9 = (*(v7 + 16))(ObjectType, v7);

      if (v9)
      {
        CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
      }
    }
  }
}

uint64_t key path getter for PaperDocumentView.calculateDocumentExpressionSolvingBehavior : PaperDocumentView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocumentExpressionSolvingBehavior;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t PaperDocumentView.calculateDocumentExpressionSolvingBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocumentExpressionSolvingBehavior;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

void closure #1 in PaperDocumentView.calculateDocumentExpressionSolvingBehavior.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocumentExpressionSolvingBehavior;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = PaperDocumentView.currentPageCanvas.getter();
  if (v5)
  {
    v6 = v5;
    v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x440))();
    v9 = v8;

    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(ObjectType, v9);

    if (v11)
    {
      CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
    }
  }
}

void (*PaperDocumentView.calculateDocumentExpressionSolvingBehavior.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._calculateDocumentExpressionSolvingBehavior.modify(v4);
  return PaperDocumentView.calculateDocumentExpressionSolvingBehavior.modify;
}

id PaperDocumentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t protocol witness for PaperKitAttachment.textualContextProvider.getter in conformance PaperDocumentView()
{
  return protocol witness for PaperKitAttachment.textualContextProvider.getter in conformance PaperDocumentView();
}

{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t protocol witness for PaperKitAttachment.textualContextProvider.setter in conformance PaperDocumentView()
{
  return protocol witness for PaperKitAttachment.textualContextProvider.setter in conformance PaperDocumentView();
}

{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for PaperKitAttachment.textualContextProvider.modify in conformance PaperDocumentView(uint64_t **a1))()
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
  v2[4] = PaperDocumentView.textualContextProvider.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for PaperKitAttachment.viewControllerForPresentingUI.modify in conformance PaperDocumentView(uint64_t **a1))()
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
  v2[4] = PaperDocumentView.viewControllerForPresentingUI.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.modify in conformance PaperDocumentView(uint64_t **a1))()
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
  v2[4] = PaperDocumentView.liveStreamMessenger.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.participantDetailsDataSource.modify in conformance PaperDocumentView(uint64_t **a1))()
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
  v2[4] = PaperDocumentView.participantDetailsDataSource.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for PaperKitStreamableAttachment.showParticipantCursors.getter in conformance PaperDocumentView()
{
  v1 = *v0;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.showParticipantCursors.modify in conformance PaperDocumentView(uint64_t **a1))()
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
  v2[4] = PaperDocumentView.showParticipantCursors.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t closure #2 in PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 80) = a7;
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a4;
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:), v9, v8);
}

char *closure #2 in PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    goto LABEL_15;
  }

  v3 = Strong;
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument);
  v8 = MEMORY[0x1DA6CCED0](v6, v5);
  v9 = [v7 findString:v8 withOptions:v4];

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFSelection);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    return result;
  }

  v20 = v3;
  v13 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1DA6CE0C0](v13, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v13 + 32);
    }

    v21 = v2;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    if (v16 >= v15 >> 1)
    {
      v18 = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v14 = v18;
      v2 = v21;
    }

    *(v2 + 16) = v16 + 1;
    v17 = v2 + 48 * v16;
    *(v17 + 32) = v14;
    ++v13;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0;
  }

  while (v11 != v13);

LABEL_15:
  **(v0 + 40) = v2;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t partial apply for closure #2 in PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t protocol witness for FindResultProvider.performTextSearch(queryString:ignoreCase:wholeWords:) in conformance PaperDocumentView(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)(a1, a2, a3, a4);
}

uint64_t closure #2 in PaperDocumentDelegate.pdfDocument(_:didReceive:for:)(uint64_t a1)
{
  swift_getKeyPath();
  v7 = a1;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = a1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = 1;
    (*(v4 + 72))(a1, &v6, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc PaperDocumentDelegate.canvasView(_:beganStroke:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  return (*(v6 + 8))(v8, v5);
}

id PaperDocumentDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.getter in conformance PaperDocumentView()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t (*protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperDocumentView(uint64_t **a1))()
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
  v2[4] = PaperDocumentView.calculateDocument.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.getter in conformance PaperDocumentView@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocumentExpressionSolvingBehavior;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

uint64_t (*protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperDocumentView(uint64_t **a1))()
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
  v2[4] = PaperDocumentView.calculateDocumentExpressionSolvingBehavior.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t specialized PaperKitPDFPage.paperKitHash<A, B>(version:elements:in:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v118 = a2;
  v113 = a1;
  v6 = a1;
  v115 = type metadata accessor for CRKeyPath();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v10 = &v95 - v9;
  v108 = type metadata accessor for SHA256Digest();
  v103 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SHA256();
  v104 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v102 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v95 - v14;
  v124[1] = a3;
  SHA256.init()();
  [v3 boundsForBox_];
  if (v6 == 1)
  {
    v20 = CGRect.rawValue.getter(v16, v17, v18, v19);
    v22 = v21;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v21);
    outlined consume of Data._Representation(v20, v22);
    [v3 boundsForBox_];
    v27 = CGRect.rawValue.getter(v23, v24, v25, v26);
    v29 = v28;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v27, v28);
    outlined consume of Data._Representation(v27, v29);
  }

  else
  {
    CGRect.roundedHash(into:version:)(v15, v113);
  }

  v30 = MEMORY[0x1E69E7CC0];
  v124[0] = MEMORY[0x1E69E7CC0];
  v31 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
  v32 = CGDisplayListCreateWithRect();
  v33 = CGDisplayListContextCreate();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24PDFPageDrawWithBoxOptiona_ypTt0g5Tf4g_n(v30);
  type metadata accessor for PDFPageDrawWithBoxOption(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v116 = v4;
  [v4 drawWithBox:0 inContext:v33 withOptions:isa];

  v35 = swift_allocObject();
  *(v35 + 16) = v124;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for closure #1 in PaperKitPDFPage.paperKitHash<A, B>(version:elements:in:);
  *(v36 + 24) = v35;
  v122 = _ss13OpaquePointerVSpySbGIgyy_AbCIegyy_TRTA_0;
  v123 = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<Bool>) -> ();
  v121 = &block_descriptor_487;
  v37 = _Block_copy(aBlock);

  v101 = v32;
  CGDisplayListEnumerateEntriesWithOptions();
  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = v124[0];
  v40 = *(v124[0] + 16);
  if (v40 >> 61)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v100 = v35;
  v41 = v124[0] + 32 + 4 * v40;

  v42 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v39 + 32, v41);
  v44 = v43;

  outlined copy of Data._Representation(v42, v44);
  v106 = v15;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v42, v44);
  outlined consume of Data._Representation(v42, v44);
  outlined consume of Data._Representation(v42, v44);
  v45 = v110;
  if (v113 >= 3u)
  {
    v46 = *(v118 + 16);
    if (v46)
    {
      v49 = *(v8 + 16);
      v48 = v8 + 16;
      v47 = v49;
      v50 = v118 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
      v111 = (v117 + 8);
      v98 = (v103 + 8);
      v117 = *(v48 + 56);
      v97 = (v104 + 8);
      v118 = v48;
      v51 = (v48 - 8);
      v95 = xmmword_1D4058CF0;
      v99 = v10;
      v112 = v49;
      v96 = v51;
      v49(v10, v50, v110);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleV3RefCy8PaperKit0D8DocumentV_GMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PaperDocument>.Ref and conformance Capsule<A>.Ref, &_s9Coherence7CapsuleV3RefCy8PaperKit0D8DocumentV_GMd);
        SharedTagged_10.subscript.getter();
        v52 = v121;
        v53 = v122;
        __swift_project_boxed_opaque_existential_1(aBlock, v121);
        (*(v53 + 11))(&v119, v52, v53);
        v54 = v119;
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if (v54 < 0)
        {
          v55 = v45;
          v56 = v114;
          MEMORY[0x1DA6CB7A0](v55);
          v57 = [v116 annotations];
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
          v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          MEMORY[0x1EEE9AC00](v59);
          *(&v95 - 2) = v56;
          v60 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), (&v95 - 2), v58);

          (*v111)(v56, v115);
          if (v60)
          {
            v61 = [v60 dictionaryRef];
            if (v61)
            {
              v62 = v61;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v105 = v62;
                v63 = v113;
                v64 = v113;
                v65 = v102;
                SHA256.init()();
                aBlock[0] = MEMORY[0x1E69E7CD0];
                NSDictionary.paperKitHashInto(_:version:includeAPPL:visited:)(v65, v63, 0, aBlock);

                if (v64 >= 5)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
                  v68 = swift_allocObject();
                  *(v68 + 16) = v95;
                  v66 = v113;
                  *(v68 + 32) = v113;
                  v69 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v68);
                  v71 = v70;

                  specialized Data._Representation.withUnsafeBytes<A>(_:)(v69, v71);
                  outlined consume of Data._Representation(v69, v71);
                }

                else
                {
                  v66 = v113;
                }

                v72 = v107;
                SHA256.finalize()();
                _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
                v73 = v108;
                v74 = Digest.makeIterator()();
                v76 = v75;
                (*v98)(v72, v73);
                v77 = specialized _copySequenceToContiguousArray<A>(_:)(v74, v76);

                v78 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v77);
                v80 = v79;

                v81 = specialized Data.init(paperKitHash:version:)(v78, v80, v66);
                v83 = v82;
                (*v97)(v65, v109);
                outlined copy of Data._Representation(v81, v83);
                specialized Data._Representation.withUnsafeBytes<A>(_:)(v81, v83);
                outlined consume of Data._Representation(v81, v83);

                outlined consume of Data._Representation(v81, v83);
                v51 = v96;
                v67 = *v96;
                v10 = v99;
              }

              else
              {

                v67 = *v51;
              }

              v45 = v110;
              v67(v10, v110);
            }

            else
            {
              v45 = v110;
              (*v51)(v10, v110);
            }
          }

          else
          {
            (*v51)(v10, v55);
            v45 = v55;
          }

          v47 = v112;
        }

        else
        {
          (*v51)(v10, v45);
        }

        v50 += v117;
        if (!--v46)
        {
          break;
        }

        v47(v10, v50, v45);
      }
    }
  }

  v84 = v107;
  v85 = v106;
  SHA256.finalize()();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
  v86 = v108;
  v87 = Digest.makeIterator()();
  v89 = v88;
  (*(v103 + 8))(v84, v86);
  v90 = specialized _copySequenceToContiguousArray<A>(_:)(v87, v89);

  v91 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v90);
  v93 = v92;

  v94 = specialized Data.init(paperKitHash:version:)(v91, v93, v113);

  (*(v104 + 8))(v85, v109);

  return v94;
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed UIImage?, @guaranteed ICDocCamImageQuad?, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v11 = a3;
  v10 = a4;
  v9(a2, a3, a4, a5);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    v184 = v5;
    v122 = *(v5 + 16);
    if (v122 >= 2)
    {
      do
      {
        v123 = *v7;
        if (!*v7)
        {
          goto LABEL_124;
        }

        v7 = *(v5 + 16 * v122);
        v124 = *(v5 + 16 * (v122 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((v123 + 48 * v7), (v123 + 48 * *(v5 + 16 * (v122 - 1) + 32)), (v123 + 48 * v124), v10);
        if (v6)
        {
          break;
        }

        if (v124 < v7)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        }

        if (v122 - 2 >= *(v5 + 16))
        {
          goto LABEL_114;
        }

        v125 = (v5 + 16 * v122);
        *v125 = v7;
        v125[1] = v124;
        v184 = v5;
        specialized Array.remove(at:)(v122 - 1);
        v5 = v184;
        v122 = *(v184 + 16);
        v7 = a3;
      }

      while (v122 > 1);
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v127 = v10;
      v129 = v6;
      v11 = *v7 + 48 * (v9 + 1);
      v12 = *(v11 + 8);
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *(v11 + 40);
      v142 = 48 * v9;
      v156 = *(v11 + 16);
      v159 = *v7 + 48 * v9;
      v17 = *v159;
      v16 = *(v159 + 8);
      v18 = *(v159 + 16);
      v132 = v9;
      v146 = *(v159 + 32);
      v149 = *(v159 + 24);
      v19 = *(v159 + 40);
      v178 = *v11;
      v179 = v12;
      v180 = v156;
      v181 = v13;
      v153 = v13;
      v182 = v14;
      v183 = v15;
      v172 = v17;
      v173 = v16;
      v174 = v18;
      v175 = v149;
      v154 = v18;
      v176 = v146;
      v177 = v19;
      v20 = v178;
      v168 = v178;
      v170 = v12;
      v21 = v12;
      v22 = v14;
      v166 = v14;
      v23 = v15;
      v164 = v15;
      outlined copy of PaperDocumentFindResult.Content(v178, v12, v156, v13, v14, v15);
      v24 = v18;
      v5 = v146;
      outlined copy of PaperDocumentFindResult.Content(v17, v16, v24, v149, v146, v19);
      outlined copy of PaperDocumentFindResult.Content(v20, v21, v156, v153, v22, v23);
      outlined copy of PaperDocumentFindResult.Content(v17, v16, v154, v149, v146, v19);
      v144 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v178, &v172);
      outlined consume of PaperDocumentFindResult.Content(v172, v173, v174, v175, v176, v177);
      outlined consume of PaperDocumentFindResult.Content(v178, v179, v180, v181, v182, v183);
      outlined consume of PaperDocumentFindResult.Content(v17, v16, v154, v149, v146, v19);
      outlined consume of PaperDocumentFindResult.Content(v168, v170, v156, v153, v166, v164);
      v25 = v132 + 2;
      v26 = v159 + 72;
      v139 = v8;
      while (v8 != v25)
      {
        v27 = *(v26 + 32);
        v28 = *(v26 + 40);
        v29 = *(v26 + 48);
        v171 = v26 + 48;
        v30 = *(v26 + 56);
        v31 = *(v26 + 64);
        v33 = *(v26 - 24);
        v32 = *(v26 - 16);
        v34 = *v26;
        v147 = *(v26 + 8);
        v150 = *(v26 - 8);
        v35 = *(v26 + 16);
        v178 = *(v26 + 24);
        v179 = v27;
        v155 = v27;
        v180 = v28;
        v181 = v29;
        v182 = v30;
        v183 = v31;
        v172 = v33;
        v173 = v32;
        v174 = v150;
        v175 = v34;
        v176 = v147;
        v177 = v35;
        v36 = v178;
        v165 = v30;
        v167 = v178;
        v37 = v28;
        v38 = v29;
        v160 = v29;
        v39 = v30;
        v40 = v31;
        v162 = v31;
        v169 = v25;
        outlined copy of PaperDocumentFindResult.Content(v178, v27, v28, v29, v30, v31);
        outlined copy of PaperDocumentFindResult.Content(v33, v32, v150, v34, v147, v35);
        outlined copy of PaperDocumentFindResult.Content(v36, v155, v37, v38, v39, v40);
        v5 = v33;
        outlined copy of PaperDocumentFindResult.Content(v33, v32, v150, v34, v147, v35);
        v157 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v178, &v172) & 1;
        outlined consume of PaperDocumentFindResult.Content(v172, v173, v174, v175, v176, v177);
        outlined consume of PaperDocumentFindResult.Content(v178, v179, v180, v181, v182, v183);
        v8 = v139;
        outlined consume of PaperDocumentFindResult.Content(v5, v32, v150, v34, v147, v35);
        outlined consume of PaperDocumentFindResult.Content(v167, v155, v37, v160, v165, v162);
        v25 = v169 + 1;
        v26 = v171;
        if ((v144 & 1) != v157)
        {
          v8 = v169;
          break;
        }
      }

      v10 = v127;
      v6 = v129;
      v9 = v132;
      v7 = a3;
      v41 = v142;
      if (v144)
      {
        if (v8 < v132)
        {
          goto LABEL_117;
        }

        if (v132 < v8)
        {
          v42 = 48 * v8 - 48;
          v43 = v8;
          v44 = v132;
          do
          {
            if (v44 != --v43)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v45 = (v53 + v41);
              v46 = *(v53 + v41 + 32);
              v47 = (v53 + v42);
              v48 = *(v45 + 40);
              v49 = *v45;
              v50 = v45[1];
              v52 = v47[1];
              v51 = v47[2];
              *v45 = *v47;
              v45[1] = v52;
              v45[2] = v51;
              *v47 = v49;
              v47[1] = v50;
              *(v47 + 4) = v46;
              *(v47 + 40) = v48;
            }

            ++v44;
            v42 -= 48;
            v41 += 48;
          }

          while (v44 < v43);
        }
      }
    }

    v54 = *(v7 + 8);
    if (v8 < v54)
    {
      if (__OFSUB__(v8, v9))
      {
        goto LABEL_116;
      }

      if (v8 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v9 + a4 >= v54)
        {
          v55 = *(v7 + 8);
        }

        else
        {
          v55 = v9 + a4;
        }

        if (v55 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v55)
        {
          break;
        }
      }
    }

    v56 = v8;
    if (v8 < v9)
    {
      goto LABEL_115;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v58 = *(v10 + 2);
    v57 = *(v10 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v10);
    }

    *(v10 + 2) = v59;
    v60 = &v10[16 * v58];
    *(v60 + 4) = v9;
    *(v60 + 5) = v56;
    v61 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v135 = v56;
    if (v58)
    {
      while (1)
      {
        v5 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_48:
          if (v65)
          {
            goto LABEL_104;
          }

          v78 = &v10[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_107;
          }

          v84 = &v10[16 * v5 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_111;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v5 = v59 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v88 = &v10[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_62:
        if (v83)
        {
          goto LABEL_106;
        }

        v91 = &v10[16 * v5];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_109;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_69:
        v99 = v5 - 1;
        if (v5 - 1 >= v59)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v7)
        {
          goto LABEL_122;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 48 * v100), (*v7 + 48 * *&v10[16 * v5 + 32]), (*v7 + 48 * v101), v61);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v101 < v100)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v184 = v10;
        specialized Array.remove(at:)(v5);
        v10 = v184;
        v59 = *(v184 + 16);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_102;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_103;
      }

      v73 = &v10[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_105;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_108;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v5 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_112;
        }

        if (v64 < v98)
        {
          v5 = v59 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v135;
    if (v135 >= v8)
    {
      goto LABEL_88;
    }
  }

  v128 = v10;
  v130 = v6;
  v141 = *v7;
  v103 = *v7 + 48 * v8 - 48;
  v133 = v9;
  v104 = v9 - v8;
  v136 = v55;
LABEL_80:
  v138 = v103;
  v140 = v8;
  v137 = v104;
  v105 = v104;
  v106 = v103;
  while (1)
  {
    v107 = *(v106 + 48);
    v143 = (v106 + 48);
    v145 = v105;
    v108 = *(v106 + 64);
    v161 = *(v106 + 56);
    v109 = *(v106 + 72);
    v110 = *(v106 + 80);
    v111 = *(v106 + 88);
    v112 = *v106;
    v114 = *(v106 + 16);
    v113 = *(v106 + 24);
    v151 = *(v106 + 32);
    v152 = *(v106 + 8);
    v115 = *(v106 + 40);
    v148 = v115;
    v178 = v107;
    v179 = v161;
    v180 = v108;
    v181 = v109;
    v182 = v110;
    v183 = v111;
    v172 = v112;
    v173 = v152;
    v158 = v114;
    v174 = v114;
    v175 = v113;
    v176 = v151;
    v177 = v115;
    outlined copy of PaperDocumentFindResult.Content(v107, v161, v108, v109, v110, v111);
    v116 = v114;
    v5 = v148;
    outlined copy of PaperDocumentFindResult.Content(v112, v152, v116, v113, v151, v148);
    outlined copy of PaperDocumentFindResult.Content(v107, v161, v108, v109, v110, v111);
    outlined copy of PaperDocumentFindResult.Content(v112, v152, v158, v113, v151, v148);
    v163 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v178, &v172);
    outlined consume of PaperDocumentFindResult.Content(v172, v173, v174, v175, v176, v177);
    outlined consume of PaperDocumentFindResult.Content(v178, v179, v180, v181, v182, v183);
    outlined consume of PaperDocumentFindResult.Content(v112, v152, v158, v113, v151, v148);
    outlined consume of PaperDocumentFindResult.Content(v107, v161, v108, v109, v110, v111);
    if ((v163 & 1) == 0)
    {
LABEL_79:
      v8 = v140 + 1;
      v103 = v138 + 48;
      v56 = v136;
      v104 = v137 - 1;
      if (v140 + 1 != v136)
      {
        goto LABEL_80;
      }

      v10 = v128;
      v6 = v130;
      v9 = v133;
      v7 = a3;
      if (v136 < v133)
      {
        goto LABEL_115;
      }

      goto LABEL_29;
    }

    if (!v141)
    {
      break;
    }

    v117 = *(v106 + 64);
    v118 = *v106;
    v119 = *(v106 + 16);
    v120 = *(v106 + 32);
    *v106 = *(v106 + 48);
    *(v106 + 16) = v117;
    v121 = *(v106 + 88);
    *(v106 + 32) = *(v106 + 80);
    *(v106 + 40) = v121;
    v106 -= 48;
    *v143 = v118;
    v143[1] = v119;
    v143[2] = v120;
    v105 = v145 + 1;
    if (v145 == -1)
    {
      goto LABEL_79;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, uint64_t *a2, uint64_t *a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 48;
  v69 = a3;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 48;
  if (v8 >= v10)
  {
    v28 = 6 * v10;
    if (a4 != a2 || &a2[v28] <= a4)
    {
      memmove(a4, a2, 48 * v10);
    }

    v12 = &v4[v28 * 8];
    if (v9 < 48 || v5 <= v6)
    {
      v27 = v5;
    }

    else
    {
      v86 = v4;
      v68 = v6;
LABEL_22:
      v29 = 0;
      v30 = v12;
      v50 = (v5 - 6);
      __dsta = v5;
      v51 = v12;
      do
      {
        v31 = &v30[v29];
        v33 = (v31 - 48);
        v32 = *(v31 - 6);
        v66 = (v69 + v29);
        v52 = (v69 + v29 - 48);
        v53 = v29;
        v34 = *(v31 - 4);
        v61 = *(v31 - 5);
        v35 = *(v31 - 3);
        v36 = *(v31 - 2);
        v71 = v31;
        v37 = *(v31 - 8);
        v39 = *(v5 - 6);
        v38 = *(v5 - 5);
        v54 = *(v5 - 3);
        v55 = *(v5 - 4);
        v40 = *(v5 - 2);
        v41 = *(v5 - 8);
        v56 = v41;
        v80 = v32;
        v81 = v61;
        v82 = v34;
        v83 = v35;
        v84 = v36;
        v85 = v37;
        v74 = v39;
        v75 = v38;
        v59 = v38;
        v42 = v38;
        v76 = v55;
        v77 = v54;
        v78 = v40;
        v79 = v41;
        v43 = v32;
        v65 = v32;
        outlined copy of PaperDocumentFindResult.Content(v32, v61, v34, v35, v36, v37);
        outlined copy of PaperDocumentFindResult.Content(v39, v42, v55, v54, v40, v56);
        outlined copy of PaperDocumentFindResult.Content(v43, v61, v34, v35, v36, v37);
        outlined copy of PaperDocumentFindResult.Content(v39, v59, v55, v54, v40, v56);
        v63 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v80, &v74);
        outlined consume of PaperDocumentFindResult.Content(v74, v75, v76, v77, v78, v79);
        outlined consume of PaperDocumentFindResult.Content(v80, v81, v82, v83, v84, v85);
        outlined consume of PaperDocumentFindResult.Content(v39, v59, v55, v54, v40, v56);
        outlined consume of PaperDocumentFindResult.Content(v65, v61, v34, v35, v36, v37);
        if (v63)
        {
          v12 = v71;
          v27 = v50;
          if (v66 != __dsta)
          {
            v46 = *v50;
            v47 = *(v50 + 2);
            *(v52 + 1) = *(v50 + 1);
            *(v52 + 2) = v47;
            *v52 = v46;
          }

          if (v71 <= v86 || (v69 = v52, v5 = v50, v50 <= v68))
          {
            v12 = &v51[v53];
            goto LABEL_34;
          }

          goto LABEL_22;
        }

        if (v66 != v71)
        {
          v44 = *v33;
          v45 = v33[2];
          *(v52 + 1) = v33[1];
          *(v52 + 2) = v45;
          *v52 = v44;
        }

        v29 = v53 - 48;
        v30 = v51;
        v12 = &v51[v53 - 48];
        v5 = __dsta;
      }

      while (v12 > v86);
      v27 = __dsta;
LABEL_34:
      v4 = v86;
    }
  }

  else
  {
    v11 = 48 * v8;
    if (a4 != __src || &__src[v11] <= a4)
    {
      memmove(a4, __src, v11);
    }

    v12 = &v4[v11];
    if (v7 >= 48 && v5 < v69)
    {
      v70 = &v4[v11];
      while (1)
      {
        __dst = v5;
        v67 = v6;
        v13 = *v5;
        v62 = v5[1];
        v14 = v5[2];
        v15 = v5[3];
        v16 = v5[4];
        v17 = *(v5 + 40);
        v18 = *v4;
        v20 = *(v4 + 2);
        v19 = *(v4 + 3);
        v57 = *(v4 + 1);
        v58 = *(v4 + 4);
        v86 = v4;
        v21 = v4[40];
        v80 = v13;
        v81 = v62;
        v82 = v14;
        v83 = v15;
        v84 = v16;
        v85 = v17;
        v74 = v18;
        v75 = v57;
        v22 = v18;
        v60 = v18;
        v76 = v20;
        v77 = v19;
        v78 = v58;
        v79 = v21;
        outlined copy of PaperDocumentFindResult.Content(v13, v62, v14, v15, v16, v17);
        outlined copy of PaperDocumentFindResult.Content(v22, v57, v20, v19, v58, v21);
        outlined copy of PaperDocumentFindResult.Content(v13, v62, v14, v15, v16, v17);
        outlined copy of PaperDocumentFindResult.Content(v60, v57, v20, v19, v58, v21);
        v64 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v80, &v74);
        outlined consume of PaperDocumentFindResult.Content(v74, v75, v76, v77, v78, v79);
        outlined consume of PaperDocumentFindResult.Content(v80, v81, v82, v83, v84, v85);
        outlined consume of PaperDocumentFindResult.Content(v60, v57, v20, v19, v58, v21);
        outlined consume of PaperDocumentFindResult.Content(v13, v62, v14, v15, v16, v17);
        if ((v64 & 1) == 0)
        {
          break;
        }

        v23 = __dst;
        v5 = __dst + 6;
        v24 = v67;
        v4 = v86;
        v12 = v70;
        if (v67 != __dst)
        {
          goto LABEL_12;
        }

LABEL_13:
        v6 = v24 + 48;
        if (v4 >= v12 || v5 >= v69)
        {
          goto LABEL_15;
        }
      }

      v23 = v86;
      v4 = v86 + 48;
      v24 = v67;
      v5 = __dst;
      v12 = v70;
      if (v67 == v86)
      {
        goto LABEL_13;
      }

LABEL_12:
      v25 = *v23;
      v26 = v23[2];
      *(v24 + 1) = v23[1];
      *(v24 + 2) = v26;
      *v24 = v25;
      goto LABEL_13;
    }

LABEL_15:
    v27 = v6;
  }

  v48 = 48 * ((v12 - v4) / 48);
  if (v27 != v4 || v27 >= &v4[v48])
  {
    memmove(v27, v4, v48);
  }

  return 1;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of Date?(a1, &v10 - v5, &_s9Coherence7CRAssetVSgMd);
  v7 = type metadata accessor for CRAsset();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t specialized PaperKitPDFDocument.updatePDFPage<A>(in:use:options:page:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v55 = a2;
  v58 = a1;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A12DocumentPageVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  v24 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(a4 + v24, v16, &_s8PaperKit6PageIdVSgMd);
  v25 = type metadata accessor for PageId(0);
  if ((*(*(v25 - 8) + 48))(v16, 1, v25))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit6PageIdVSgMd);
    (*(v21 + 56))(v19, 1, 1, v20);
LABEL_4:
    v27 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
    v28 = v19;
    return outlined destroy of StocksKitCurrencyCache.Provider?(v28, v27);
  }

  v51 = v13;
  v52 = a4;
  v26 = v58;
  outlined init with copy of Date?(&v16[*(v25 + 20)], v19, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit6PageIdVSgMd);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_4;
  }

  v30 = v21;
  v31 = *(v21 + 32);
  v32 = v23;
  v31(v23, v19, v20);
  v33 = v10;
  WeakTagged_3.tagged3.getter();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd);
  v35 = *(v34 - 8);
  v36 = v20;
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
    v37 = v57;
    v38 = v26;
  }

  else
  {
    v50 = v20;
    type metadata accessor for PaperDocument(0);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    v39 = v51;
    v40 = v33;
    v38 = v26;
    WeakRef.subscript.getter();
    (*(v35 + 8))(v40, v34);
    v41 = type metadata accessor for PaperDocumentPage(0);
    v42 = (*(*(v41 - 8) + 48))(v39, 1, v41);
    v37 = v57;
    if (v42 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit0A12DocumentPageVSgMd);
      v36 = v50;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
      CRRegister.wrappedValue.getter();
      v43 = v60[0];
      _s8PaperKit0A8DocumentVWOhTm_0(v39, type metadata accessor for PaperDocumentPage);
      v36 = v50;
      if ((v43 & 0x20) != 0)
      {
        return (*(v30 + 8))(v32, v50);
      }
    }
  }

  v58 = v30;
  v44 = type metadata accessor for PaperDocument(0);
  v45 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  WeakTagged_3.subscript.getter();
  v46 = v61;
  if (!v61)
  {
    (*(v58 + 8))(v32, v36);
    v27 = &_s8PaperKit0A4Page_pSgMd;
    v28 = v60;
    return outlined destroy of StocksKitCurrencyCache.Provider?(v28, v27);
  }

  v47 = v62;
  v57 = __swift_project_boxed_opaque_existential_1(v60, v61);
  v48 = v37;
  v49 = v54;
  MEMORY[0x1DA6CB4C0](v36);
  v59 = v55;
  (*(v47 + 152))(v52, v49, &v59, v38, v53, v44, v45, v46, v47);
  (v48[1])(v49, v56);
  (*(v58 + 8))(v32, v36);
  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t specialized PaperDocumentView.canvas(_:shouldOpenLink:)(uint64_t a1)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 48))(v1, a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t specialized PaperDocumentView.init(context:document:editingMode:toolPicker:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = v4;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  *(v5 + 288) = swift_task_alloc();
  type metadata accessor for PaperDocument(0);
  *(v5 + 296) = swift_task_alloc();
  v7 = type metadata accessor for UTType();
  *(v5 + 304) = v7;
  *(v5 + 312) = *(v7 - 8);
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  *(v5 + 336) = v8;
  *(v5 + 344) = *(v8 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 141) = *a3;
  type metadata accessor for MainActor();
  *(v5 + 360) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 368) = v10;
  *(v5 + 376) = v9;

  return MEMORY[0x1EEE6DFA0](specialized PaperDocumentView.init(context:document:editingMode:toolPicker:), v10, v9);
}

uint64_t specialized PaperDocumentView.init(context:document:editingMode:toolPicker:)()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v33 = *(v0 + 328);
  v34 = *(v0 + 336);
  v3 = *(v0 + 312);
  v36 = *(v0 + 304);
  v37 = *(v0 + 320);
  v4 = *(v0 + 280);
  v38 = *(v0 + 256);
  v39 = *(v0 + 272);
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode) = 3;
  UUID.init()();
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__pageOverlayViewProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) = 1;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_allowsDocumentStructureCopying) = 1;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModelInitialState;
  *(v0 + 384) = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModelInitialState;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  *(v0 + 392) = v6;
  v7 = *(v6 - 8);
  *(v0 + 400) = v7;
  v8 = *(v7 + 56);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_documentDelegate) = 0;
  v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v10 = MEMORY[0x1E69E7CC0];
  *(v4 + v9) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit0cD7PDFPageC_AC15PageOverlayView_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__vellumOpacity) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__canEditVellumOpacity) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView____lazy_storage___paperDocumentViewProxy) = 0;
  v35 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__toolPicker;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__toolPicker) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__automaticallyAdjustScaleFactor) = 1;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_automaticallyApplySafeAreaInsetsToAxes) = &outlined read-only object #0 of PaperDocumentView.init(context:document:editingMode:toolPicker:);
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  swift_allocObject();
  *(v4 + v11) = PassthroughSubject.init()();
  v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_livePassThroughSubject;
  swift_allocObject();
  *(v4 + v12) = PassthroughSubject.init()();
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount) = 0;
  v13 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_updateDocAsset;
  v14 = type metadata accessor for CRAsset();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_updateDocTask) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__changedPages) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__changedPagesTask) = 0;
  static ContinuousClock.Instant.now.getter();
  (*(v1 + 32))(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__changedDeadline, v2, v34);
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_isCurrentlyLiveEditing) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_liveEditingContinuations) = v10;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__multipeerConnection) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__liveStreamMessenger + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__participantDetailsDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics;
  type metadata accessor for FormAnalytics();
  v16 = swift_allocObject();
  *(v16 + 16) = 791357252;
  *(v16 + 20) = 0;
  *(v16 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(v10);
  *(v4 + v15) = v16;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView___insertingFromFileIndex) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D405FD70;
  *(v17 + 32) = 0xD000000000000018;
  *(v17 + 40) = 0x80000001D408F910;
  static UTType.pdf.getter();
  v18 = UTType.identifier.getter();
  v20 = v19;
  v21 = *(v3 + 8);
  v21(v33, v36);
  *(v17 + 48) = v18;
  *(v17 + 56) = v20;
  static UTType.image.getter();
  v22 = UTType.identifier.getter();
  v24 = v23;
  v21(v37, v36);
  *(v17 + 64) = v22;
  *(v17 + 72) = v24;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__validPasteUTTypeIdentifiers) = v17;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode) = 0;
  v25 = (v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock);
  *v25 = 0;
  v25[1] = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__quadEditorController) = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__rulerHostingDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v26 = (v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocument);
  *v26 = 0;
  v26[1] = 0;
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocumentExpressionSolvingBehavior) = 0;
  ObservationRegistrar.init()();
  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_context) = v38;
  v27 = *(v4 + v35);
  v28 = v38;
  v29 = v39;

  *(v4 + v35) = v39;
  Capsule.root.getter();
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v30 = swift_task_alloc();
  *(v0 + 424) = v30;
  *v30 = v0;
  v30[1] = specialized PaperDocumentView.init(context:document:editingMode:toolPicker:);
  v31 = *(v0 + 264);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(0x8000000000000000, v31, v0 + 16);
}

uint64_t specialized PaperDocumentView.init(context:document:editingMode:toolPicker:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 296);
  *(v3 + 432) = a1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v3 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
  _s8PaperKit0A8DocumentVWOhTm_0(v4, type metadata accessor for PaperDocument);
  v5 = *(v2 + 376);
  v6 = *(v2 + 368);

  return MEMORY[0x1EEE6DFA0](specialized PaperDocumentView.init(context:document:editingMode:toolPicker:), v6, v5);
}

void specialized PaperDocumentView.init(context:document:editingMode:toolPicker:)()
{
  v104 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 384);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 264);
  *(v6 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument) = *(v0 + 432);
  v8 = *(v3 + 16);
  v8(v6 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel, v7, v2);
  v8(v5, v7, v2);
  v1(v5, 0, 1, v2);
  swift_beginAccess();
  outlined assign with take of UUID?(v5, v6 + v4, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  swift_endAccess();
  v9 = type metadata accessor for PaperDocumentView();
  *(v0 + 216) = v6;
  *(v0 + 224) = v9;
  v10 = objc_msgSendSuper2((v0 + 216), sel_initWithFrame_, 0.0, 0.0, 100.0, 100.0);
  v11 = type metadata accessor for PaperDocumentDelegate();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v0 + 232) = v12;
  *(v0 + 240) = v11;
  v13 = v10;
  v14 = objc_msgSendSuper2((v0 + 232), sel_init);
  v100 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument;
  [*&v13[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] setDelegate_];
  v15 = *&v13[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_documentDelegate];
  *&v13[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_documentDelegate] = v14;
  v16 = v14;

  v97 = objc_opt_self();
  v17 = [v97 whiteColor];
  [v13 setBackgroundColor_];

  [v13 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [objc_allocWithZone(MEMORY[0x1E6978048]) initWithFrame_];
  v27 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v28 = *&v13[v27];
  *&v13[v27] = v26;
  v29 = v26;

  v102 = v16;
  [v29 setDelegate_];

  v30 = *&v13[v27];
  if (!v30)
  {
    __break(1u);
    goto LABEL_45;
  }

  [v30 setAllowsUndo_];
  v31 = *&v13[v27];
  if (!v31)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v31 setAllowsMarkupAnnotationEditing_];
  v32 = *&v13[v27];
  if (!v32)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v32 setTextSelectionEnabled_];
  v98 = objc_opt_self();
  v33 = [v98 defaultCenter];
  v34 = v27;
  v35 = *&v13[v27];
  if (!v35)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v36 = v33;
  v37 = *MEMORY[0x1E6978130];
  v38 = v13;
  v39 = [v35 documentScrollView];
  [v36 addObserver:v38 selector:sel_pageDidScroll_ name:v37 object:v39];

  v40 = *&v13[v34];
  if (!v40)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v41 = v40;
  if (objc_opt_respondsToSelector())
  {
    [v41 setFormFillingUpdatesAnnotationOnEveryTextChange:1];
  }

  v42 = *&v13[v34];
  if (!v42)
  {
    goto LABEL_49;
  }

  v43 = [v42 documentScrollView];
  if (!v43)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v44 = v43;
  v99 = v34;
  v45 = [objc_allocWithZone(type metadata accessor for TiledDocumentView()) initInScrollView_];

  v46 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView;
  v47 = *&v38[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
  *&v38[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView] = v45;
  v48 = v45;

  [v48 setRulerHostingDelegate_];
  v49 = *&v38[v46];
  if (!v49)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v50 = *(v49 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
  swift_getKeyPath();
  *(v0 + 248) = v38;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  v51 = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__canEditVellumOpacity;
  swift_beginAccess();
  v53 = v38[v52];
  v51[OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditVellumOpacity] = v53;
  v54 = *&v51[OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController];
  if (v54)
  {
    v55 = v54;
    v56 = ToolPickerController.textToolListViewController.getter();
    v56[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible] = v53;
    MarkupEditViewController.updateUI()();
  }

  v57 = *&v38[v46];
  if (!v57)
  {
    goto LABEL_52;
  }

  [v57 setInsertSpaceEnabled_];
  v58 = *&v38[v46];
  if (!v58)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v58 setSupportsCopyAsText_];
  v59 = *&v38[v46];
  if (!v59)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [v59 setDelegate_];
  v60 = *&v38[v46];
  if (!v60)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v60 setSixChannelBlendingDisableSnapshotting_];
  v61 = *&v13[v34];
  if (!v61)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v62 = v61;
  [v62 setPageOverlayViewProvider_];

  v63 = *&v13[v34];
  if (!v63)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v63 setDocument_];
  v64 = *&v13[v34];
  if (!v64)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v65 = [v64 documentView];
  if (v65)
  {
    v66 = v65;
    [v65 resignFirstResponder];
  }

  v67 = *&v13[v34];
  if (!v67)
  {
    goto LABEL_59;
  }

  v68 = v67;
  if (_UISolariumEnabled())
  {
    v69 = [v97 systemBackgroundColor];
  }

  else
  {
    v69 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:1.0];
  }

  v70 = v69;
  [v68 setBackgroundColor_];

  if (!*&v13[v99])
  {
    goto LABEL_60;
  }

  [v38 addSubview_];
  v71 = *&v38[v46];
  if (!v71)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v72 = v71;
  [v72 setContentSnapshottingView_];

  v73 = *&v13[v99];
  if (!v73)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v74 = [v73 documentView];
  if (v74)
  {
    v75 = v74;
    v76 = *&v38[v46];
    if (!v76)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v77 = [v76 superview];
    if (v77)
    {
      v78 = *&v38[v46];
      if (!v78)
      {
LABEL_65:
        __break(1u);
        return;
      }

      v79 = v77;
      v80 = v78;
      [v79 insertSubview:v80 aboveSubview:v75];

      v75 = v79;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, logger);
    v75 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1D38C4000, v75, v82, "Cannot edit pdf without a document view.", v83, 2u);
      MEMORY[0x1DA6D0660](v83, -1, -1);
    }
  }

  v84 = *&v38[v46];
  if (!v84)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v101 = *(v0 + 272);
  v85 = v84;

  [v85 setCanvasViewZOrderPolicy_];

  v86 = [v98 defaultCenter];
  [v86 addObserver:v38 selector:sel_pdfSelectionChanged_ name:*MEMORY[0x1E6978158] object:*&v13[v99]];

  v87 = [v98 defaultCenter];
  v88 = MEMORY[0x1DA6CCED0](0xD00000000000001BLL, 0x80000001D408F9B0);
  [v87 addObserver:v38 selector:sel_annotationsChanged_ name:v88 object:*&v13[v99]];

  v89 = [v98 defaultCenter];
  [v89 addObserver:v38 selector:sel_annotationPropertiesChanged_ name:*MEMORY[0x1E6978090] object:*&v13[v99]];

  if (v101)
  {
    v90 = *(v0 + 272);
    [v90 addObserver_];
    v91 = PaperDocumentView.paperDocumentViewProxy.getter();
    [v90 addObserver_];

    PaperDocumentView.updateTiledViewInk(for:)(v90);
    PaperDocumentView.updateToolPicker()();
  }

  v92 = *(v0 + 392);
  v93 = *(v0 + 400);
  v94 = *(v0 + 141);
  v95 = *(v0 + 264);

  v103 = v94;
  PaperDocumentView.editingMode.setter(&v103);
  (*(v93 + 8))(v95, v92);

  v96 = *(v0 + 8);

  v96(v38);
}

uint64_t type metadata accessor for PaperDocumentView()
{
  result = type metadata singleton initialization cache for PaperDocumentView;
  if (!type metadata singleton initialization cache for PaperDocumentView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void partial apply for closure #1 in PaperDocumentView.editingMode.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode);
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode) = *(v0 + 24);
  v3 = v2;
  PaperDocumentView._editingMode.didset(&v3);
}

uint64_t partial apply for closure #1 in PaperDocumentView.vellumOpacity.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__vellumOpacity);
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__vellumOpacity) = *(v0 + 24);
  return PaperDocumentView._vellumOpacity.didset(v2);
}

void partial apply for closure #1 in PaperDocumentView.canEditVellumOpacity.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__canEditVellumOpacity;
  swift_beginAccess();
  *(v1 + v3) = v2;
  PaperDocumentView._canEditVellumOpacity.didset();
}

void partial apply for closure #1 in PaperDocumentView.toolPicker.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__toolPicker);
  *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__toolPicker) = v1;
  v4 = v1;
  PaperDocumentView._toolPicker.didset(v3);
}

uint64_t _s8PaperKit0A12DocumentViewC30automaticallyAdjustScaleFactorSbvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__automaticallyAdjustScaleFactor;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void partial apply for closure #1 in PaperDocumentView.isInCanvasSelectionMode.setter()
{
  partial apply for closure #1 in PaperDocumentView.isInCanvasSelectionMode.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode);
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode) = *(v0 + 24);
  PaperDocumentView._isInCanvasSelectionMode.didset(v2);
}

void specialized PaperDocumentView.PaperDocumentViewProxy._toolPicker(_:didChange:)(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
  v4 = v3;

  if (v3)
  {
    v18 = *&v4[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController];

    if (a1)
    {
      v5 = &v18[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 1);
        ObjectType = swift_getObjectType();
        v8 = *(v6 + 8);
        v9 = a1;
        v10 = v8(ObjectType, v6);
        v11 = swift_unknownObjectRelease();
        if (v10)
        {
          v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x468);
          v13 = (v12)(v11);
          if (v13)
          {
            v14 = v13;
            v15 = [v13 selectionInteraction];

            LOBYTE(v14) = [v15 currentSelectionHasStrokes];
            if (v14)
            {
              v16 = v12();
              [v16 setSelectedStrokesColor_];
            }
          }
        }
      }

      else
      {
        v17 = a1;
      }

      CanvasElementController.updateToolPickerContextualEditingView()();
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized PaperDocumentView.init(coder:)()
{
  v1 = v0;
  v34 = type metadata accessor for UTType();
  v2 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for ContinuousClock.Instant();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode) = 3;
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__pageOverlayViewProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_allowsDocumentStructureCopying) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModelInitialState;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_documentDelegate) = 0;
  v14 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  *(v0 + v14) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit0cD7PDFPageC_AC15PageOverlayView_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__vellumOpacity) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__canEditVellumOpacity) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView____lazy_storage___paperDocumentViewProxy) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__toolPicker) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__automaticallyAdjustScaleFactor) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_automaticallyApplySafeAreaInsetsToAxes) = &outlined read-only object #0 of PaperDocumentView.init(coder:);
  v15 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  swift_allocObject();
  *(v0 + v15) = PassthroughSubject.init()();
  v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_livePassThroughSubject;
  swift_allocObject();
  *(v0 + v16) = PassthroughSubject.init()();
  *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount) = 0;
  v17 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_updateDocAsset;
  v18 = type metadata accessor for CRAsset();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_updateDocTask) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__changedPages) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__changedPagesTask) = 0;
  static ContinuousClock.Instant.now.getter();
  (*(v9 + 32))(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__changedDeadline, v11, v8);
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_isCurrentlyLiveEditing) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_liveEditingContinuations) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__multipeerConnection) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__liveStreamMessenger + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__participantDetailsDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics;
  type metadata accessor for FormAnalytics();
  v21 = swift_allocObject();
  *(v21 + 16) = 791357252;
  *(v21 + 20) = 0;
  *(v21 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(v19);
  *(v1 + v20) = v21;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView___insertingFromFileIndex) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D405FD70;
  *(v22 + 32) = 0xD000000000000018;
  *(v22 + 40) = 0x80000001D408F910;
  static UTType.pdf.getter();
  v23 = UTType.identifier.getter();
  v25 = v24;
  v26 = *(v2 + 8);
  v27 = v34;
  v26(v7, v34);
  *(v22 + 48) = v23;
  *(v22 + 56) = v25;
  static UTType.image.getter();
  v28 = UTType.identifier.getter();
  v30 = v29;
  v26(v4, v27);
  *(v22 + 64) = v28;
  *(v22 + 72) = v30;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__validPasteUTTypeIdentifiers) = v22;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__isInCanvasSelectionMode) = 0;
  v31 = (v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock);
  *v31 = 0;
  v31[1] = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__quadEditorController) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__rulerHostingDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v32 = (v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocument);
  *v32 = 0;
  v32[1] = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocumentExpressionSolvingBehavior) = 0;
  ObservationRegistrar.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized PaperDocumentView.pdfView(_:willDisplayOverlayView:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v47[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  if (_UISolariumEnabled())
  {
    v15 = [a1 viewForPage_];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 layer];

      v18 = &selRef_hasSubstrokes;
      v19 = [v17 sublayers];

      if (v19)
      {
        v20 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CALayer);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v21 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_6:
            if ((v21 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x1DA6CE0C0](0, v21);
            }

            else
            {
              if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_38;
              }

              v22 = *(v21 + 32);
            }

            v19 = v22;

            [v19 shadowOpacity];
            if (*&v23 <= 0.0 || (LODWORD(v23) = 1041865114, [v19 setShadowOpacity_], objc_msgSend(v19, sel_setShadowRadius_, 7.5), (v24 = objc_msgSend(v19, sel_sublayers)) == 0))
            {
LABEL_17:

              goto LABEL_20;
            }

            v18 = &selRef_setIsEditing_;
            v25 = v24;
            v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!(v20 >> 62))
            {
              if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_13:
                if ((v20 & 0xC000000000000001) != 0)
                {
                  v26 = MEMORY[0x1DA6CE0C0](0, v20);
                }

                else
                {
                  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v26 = *(v20 + 32);
                }

                v27 = v26;

                [v27 v18 + 3782];

                goto LABEL_17;
              }

              goto LABEL_39;
            }

LABEL_38:
            if (__CocoaSet.count.getter())
            {
              goto LABEL_13;
            }

LABEL_39:
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_20:
  swift_getKeyPath();
  v47[7] = v3;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__pageOverlayViewProvider;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v29 = *(v28 + 8);
  type metadata accessor for PaperKitPDFPage(0);
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    v32 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    swift_beginAccess();
    outlined init with copy of Date?(v31 + v32, v8, &_s8PaperKit6PageIdVSgMd);
    v33 = type metadata accessor for PageId(0);
    if ((*(*(v33 - 8) + 48))(v8, 1, v33))
    {
      swift_unknownObjectRelease();
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit6PageIdVSgMd);
      (*(v47[0] + 56))(v11, 1, 1, v12);
LABEL_26:
      outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
      return;
    }

    outlined init with copy of Date?(&v8[*(v33 + 20)], v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    v34 = a2;
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit6PageIdVSgMd);
    v35 = v47[0];
    if ((*(v47[0] + 48))(v11, 1, v12) == 1)
    {

      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    (*(v35 + 32))(v14, v11, v12);
    v36 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v37 = *(v3 + v36);
    if (*(v37 + 16))
    {

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
      if (v39)
      {
        v40 = *(v37 + 56) + 16 * v38;
        v41 = *(v40 + 8);
        v42 = *v40;

        ObjectType = swift_getObjectType();
        v44 = (*(v41 + 8))(ObjectType, v41);
        if (v44)
        {
          v45 = v44;
          v46 = swift_getObjectType();
          (*(v29 + 16))(v3, v45, v14, v46, v29);

          swift_unknownObjectRelease();
          (*(v47[0] + 8))(v14, v12);
          return;
        }

        (*(v47[0] + 8))(v14, v12);

        goto LABEL_34;
      }
    }

    swift_unknownObjectRelease();
    (*(v35 + 8))(v14, v12);
    return;
  }

LABEL_34:
  swift_unknownObjectRelease();
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    for (i = 4; v3[i] != a2; i += 2)
    {
      if (v4 == ++v7)
      {
        return;
      }
    }

    if (!v2)
    {
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        if (v9 == v4)
        {
          return;
        }

        v10 = i * 8 + 16;
        while (v9 < v4)
        {
          v11 = *(v3 + v10);
          if (v11 != a2)
          {
            if (v9 != v7)
            {
              if (v7 >= v4)
              {
                goto LABEL_23;
              }

              v18 = *(v3 + v10);
              v17 = *&v3[2 * v7 + 4];
              v12 = v17;
              v13 = v11;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              }

              v14 = &v3[2 * v7];
              v15 = v14[4];
              *(v14 + 2) = v18;

              if (v9 >= v3[2])
              {
                goto LABEL_24;
              }

              v16 = *(v3 + v10);
              *(v3 + v10) = v17;

              *a1 = v3;
            }

            ++v7;
          }

          ++v9;
          v4 = v3[2];
          v10 += 16;
          if (v9 == v4)
          {
            return;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void specialized PaperDocumentView.pdfView(_:willEndDisplayingOverlayView:for:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  type metadata accessor for PaperKitPDFPage(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v17 = *(v1 + v16);
    if (*(v17 + 16))
    {
      v18 = a1;

      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if ((v20 & 1) == 0)
      {

LABEL_16:

        return;
      }

      v21 = *(v17 + 56) + 16 * v19;
      v22 = *v21;
      v52 = *(v21 + 8);
      v53 = v22;

      v23 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      outlined init with copy of Date?(v15 + v23, v6, &_s8PaperKit6PageIdVSgMd);
      v24 = type metadata accessor for PageId(0);
      v25 = (*(*(v24 - 8) + 48))(v6, 1, v24);
      v51 = v18;
      if (v25)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit6PageIdVSgMd);
        (*(v11 + 56))(v9, 1, 1, v10);
      }

      else
      {
        outlined init with copy of Date?(&v6[*(v24 + 20)], v9, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit6PageIdVSgMd);
        if ((*(v11 + 48))(v9, 1, v10) != 1)
        {
          (*(v11 + 32))(v13, v9, v10);
          ObjectType = swift_getObjectType();
          v44 = (*(v52 + 8))(ObjectType);
          if (v44)
          {
            v45 = v44;
            swift_getKeyPath();
            v54 = v2;
            _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v46 = v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__pageOverlayViewProvider;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v47 = *(v46 + 8);
              v48 = swift_getObjectType();
              (*(v47 + 24))(v2, v45, v13, v48, v47);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          (*(v11 + 8))(v13, v10);
LABEL_9:
          type metadata accessor for AnyCanvas();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            v27 = v26;
            v28 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x440))();
            v30 = v29;
            v31 = swift_getObjectType();
            v32 = *(v30 + 168);
            v50 = v53;
            v33 = v32(v31, v30);

            if (v33)
            {
              v34 = *&v33[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

              FormAnalytics.merge(_:for:)(v34, v27);
            }

            else
            {
            }
          }

          v35 = *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
          if (v35)
          {
            v36 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView__paperAttachments;
            swift_beginAccess();
            v37 = v53;
            v38 = v35;
            specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v35[v36], v37);
            v40 = v39;

            v41 = *(*&v35[v36] + 16);
            if (v41 >= v40)
            {
              specialized Array.replaceSubrange<A>(_:with:)(v40, v41);
              swift_endAccess();

              [v37 removeFromSuperview];
              swift_beginAccess();
              v42 = v51;
              specialized Dictionary.subscript.setter(0, 0, v15);
              swift_endAccess();
              PaperDocumentView.updateCanvasSelectionMode()();

              v18 = v37;
              goto LABEL_16;
            }

            __break(1u);
          }

          __break(1u);
          return;
        }
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
      goto LABEL_9;
    }
  }
}

uint64_t partial apply for closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:)(a1, v4, v5, v7, v6);
}

uint64_t keypath_get_99Tm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void type metadata completion function for PaperDocumentView()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Capsule<PaperDocument>?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Capsule<PaperDocument>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CRAsset?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ContinuousClock.Instant();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of PaperDocumentView.__allocating_init(context:document:editingMode:toolPicker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 1272) + **(v4 + 1272));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of PaperRenderable.renderedImage(in:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PaperDocumentView.export()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x930);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return v5();
}

void type metadata accessor for Capsule<PaperDocument>()
{
  if (!lazy cache variable for type metadata for Capsule<PaperDocument>)
  {
    type metadata accessor for PaperDocument(255);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    v0 = type metadata accessor for Capsule();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Capsule<PaperDocument>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PPKEdgeInsetsAxis and conformance PPKEdgeInsetsAxis()
{
  result = lazy protocol witness table cache variable for type PPKEdgeInsetsAxis and conformance PPKEdgeInsetsAxis;
  if (!lazy protocol witness table cache variable for type PPKEdgeInsetsAxis and conformance PPKEdgeInsetsAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPKEdgeInsetsAxis and conformance PPKEdgeInsetsAxis);
  }

  return result;
}

id specialized PaperDocumentDelegate.documentCanBeEdited(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  if (PaperDocumentView.canEditDocument()() && v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] == 1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument];
    v3 = [v2 allowsDocumentAssembly];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void specialized PaperDocumentDelegate.pdfDocument(_:handleTabFrom:direction:)(void *a1, uint64_t a2)
{
  v4 = [a1 page];
  if (v4)
  {
    v21 = v4;
    type metadata accessor for PaperKitPDFPage(0);
    v5 = swift_dynamicCastClass();
    if (v5 && (v6 = v5, (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
      v9 = Strong;
      swift_beginAccess();
      v10 = *&v9[v8];

      if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v12 & 1) != 0))
      {
        v13 = *(*(v10 + 56) + 16 * v11);

        type metadata accessor for AnyCanvas();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {

          return;
        }

        v15 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x440))();
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 168))(ObjectType, v17);

        if (v19)
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
          lazy protocol witness table accessor for type UITouch and conformance NSObject(&lazy protocol witness table cache variable for type PDFAnnotation and conformance NSObject, &lazy cache variable for type metadata for PDFAnnotation);
          v20 = a1;
          AnyHashable.init<A>(_:)();
          FormFillingView.focusNextField(from:direction:)(v22, a2 != 0);

          outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_ss11AnyHashableVSgMd);
          return;
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
}

void specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:for:)(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = &v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v3, a1 & 1, 0, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:withAutofill:for:)(char a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = &v5[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, a1 & 1, a2 & 1, ObjectType, v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void specialized PaperDocumentDelegate.pdfView(_:allowsFormFillingMode:with:for:)(char a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = &v5[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, a1 & 1, a2 == 3, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    if (a2 == 3)
    {
      v9 = *&v5[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics];

      v10 = 45;
LABEL_8:
      *(v9 + 18) = v10;

      return;
    }

    if (a1)
    {
      v9 = *&v5[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics];

      v10 = 44;
      goto LABEL_8;
    }
  }
}

void specialized PaperDocumentDelegate.pdfDocument(_:didReceive:for:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 formRegions];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v34 = v3;
      v35 = a1;
      v3 = 0;
      a1 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6CE0C0](v3, v5);
        }

        else
        {
          if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v7 = *(v5 + 8 * v3 + 32);
        }

        v8 = v7;
        v9 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v10 = [v7 autoFillContentType];
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
        if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
        {
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {
LABEL_19:

            v18 = 0;
LABEL_21:
            v3 = v34;
            a1 = v35;
            goto LABEL_26;
          }
        }

        ++v3;
        if (v9 == i)
        {
          v18 = 1;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v18 = 1;
LABEL_26:

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for PaperDocumentViewController(0);
      v21 = swift_dynamicCastClass();
      if (v21 && (v18 & 1) == 0 && (v22 = v21, v23 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically, swift_beginAccess(), *(v22 + v23) == 1))
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v3;
        v25 = v3;
        PaperDocumentViewController.setupDefaultBannerUI(updateToolbar:)(partial apply for closure #2 in PaperDocumentDelegate.pdfDocument(_:didReceive:for:), v24);
      }

      else
      {
      }
    }

    v26 = PaperDocumentView.currentPageCanvas.getter();
    if (v26)
    {
      v27 = v26;
      v28 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x440))();
      v30 = v29;

      ObjectType = swift_getObjectType();
      v32 = (*(v30 + 168))(ObjectType, v30);

      if (!v32)
      {
        return;
      }

      v3 = *&v32[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis];
      *&v32[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis] = a1;
      v33 = a1;
    }
  }
}

void specialized PaperDocumentDelegate.pdfViewWillClick(onLink:with:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = &v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 1);

    if (v5)
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        (*(v6 + 48))(v8, a1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void specialized PaperDocumentDelegate.documentCameraViewController(_:didFinishWith:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *&v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock];
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v4);

    if (v4)
    {
      v4(a1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
    }
  }
}

void specialized PaperDocumentDelegate.documentCameraViewControllerDidCancel(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *&v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock];
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v2);

    if (v2)
    {
      v2(0);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
    }
  }
}

void specialized PaperDocumentDelegate.canvasViewDidBeginDrawing(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = &v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 1);

    if (v3)
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        ObjectType = swift_getObjectType();
        (*(v4 + 104))(v6, ObjectType, v4);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void specialized PaperDocumentDelegate.canvasViewDidEndDrawing(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = &v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 1);

    if (v3)
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        ObjectType = swift_getObjectType();
        (*(v4 + 112))(v6, ObjectType, v4);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t partial apply for closure #1 in PaperDocumentView.docScanDismissBlock.setter()
{
  return partial apply for closure #1 in PaperDocumentView.docScanDismissBlock.setter();
}

{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__docScanDismissBlock);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v1);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed VNDocumentCameraScan?) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRAssetOrData() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 79) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v9);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)(a1, v12, v13, v1 + v6, v1 + v8, v14, v1 + v11);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return closure #1 in closure #1 in closure #1 in PaperDocumentView.cropImagePageAction(for:)(a1, a2, a3, a4, v10, v11);
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in PaperDocumentView.quadEditorController.setter()
{
  return partial apply for closure #1 in PaperDocumentView.quadEditorController.setter();
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__quadEditorController) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t partial apply for closure #2 in PaperDocumentView.applyFilterPageAction(for:)(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd) - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return closure #2 in PaperDocumentView.applyFilterPageAction(for:)(a1, a2, v2 + v6, v9, v10);
}

uint64_t objectdestroy_343Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_330Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in PaperDocumentView.validPasteUTTypeIdentifiers.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__validPasteUTTypeIdentifiers) = *(v0 + 24);
}

uint64_t partial apply for closure #2 in closure #1 in PaperDocumentView.insert(_:at:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in closure #1 in PaperDocumentView.insert(_:at:)(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CRStableAsset() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in PaperDocumentView.insert(_:at:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CRStableAsset() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #1 in closure #3 in PaperDocumentView.insert(_:at:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t partial apply for closure #2 in PaperDocumentView.registerFileRepresentations(forPage:to:)(void (*a1)(uint64_t, void, void), uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #2 in PaperDocumentView.registerFileRepresentations(forPage:to:)(a1, a2, v6, v7);
}

uint64_t partial apply for closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:)(a1, a2, v2 + v6, v7);
}

uint64_t partial apply for closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)(a1, a2, v2 + v6, v9);
}

uint64_t partial apply for closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t partial apply for closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:)(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t partial apply for closure #1 in closure #1 in PaperDocumentView.insertBlankPage(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 32);
  v6[0] = *(v2 + 16);
  v6[1] = v4;
  v7 = v3;
  return closure #1 in closure #1 in PaperDocumentView.insertBlankPage(at:)(a1, v6, *(v2 + 56), a2);
}

uint64_t objectdestroy_461Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

uint64_t partial apply for closure #1 in PaperDocumentView.insertFile(at:at:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperDocumentView.insertFile(at:at:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t partial apply for closure #1 in PaperDocumentView.annotationsChanged(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperDocumentView.annotationsChanged(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_557Tm()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in PaperDocumentView.annotationPropertiesChanged(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperDocumentView.annotationPropertiesChanged(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in PaperDocumentView.didChange(page:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperDocumentView.didChange(page:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in PaperDocumentView.updatePDFDocument(otherDocuments:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CRAsset() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperDocumentView.updatePDFDocument(otherDocuments:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t partial apply for closure #1 in PaperDocumentView.delegate.setter(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16) + *a1;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #2 in implicit closure #1 in PaperDocumentView.trackCanvasSelectionMode(_:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of CRAssetOrData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit0A8DocumentVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in PaperDocumentView.calculateDocument.setter(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  return a1(v4, v3);
}

uint64_t objectdestroy_61Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 18) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for CapsuleUndoAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v11 | 7);
}

void *partial apply for closure #2 in PaperDocumentView.undoable<A>(updatePDF:updatePDFOnUndo:updatePage:action:)(char *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd) - 8);
  v4 = (*(v3 + 80) + 18) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CapsuleUndoAction() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 17);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #2 in PaperDocumentView.undoable<A>(updatePDF:updatePDFOnUndo:updatePage:action:)(a1, v7, v8, v1 + v4, v9);
}

uint64_t _s8PaperKit5ImageVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for FontToggleStyle()
{
  result = type metadata singleton initialization cache for FontToggleStyle;
  if (!type metadata singleton initialization cache for FontToggleStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FontToggleStyle()
{
  type metadata accessor for UIRectCorner(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t FontToggleStyle.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FontToggleStyle();
  outlined init with copy of Environment<ColorScheme>.Content(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double closure #2 in FontToggleStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;

  v25 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  if (ToggleStyleConfiguration.isOn.getter())
  {
    v11 = static Color.accentColor.getter();
  }

  else
  {
    FontToggleStyle.colorScheme.getter(v10);
    (*(v5 + 104))(v7, *MEMORY[0x1E697DBB8], v4);
    v12 = static ColorScheme.== infix(_:_:)();
    v13 = *(v5 + 8);
    v13(v7, v4);
    v13(v10, v4);
    v14 = objc_opt_self();
    v15 = &selRef_secondarySystemBackgroundColor;
    if ((v12 & 1) == 0)
    {
      v15 = &selRef_tertiarySystemBackgroundColor;
    }

    v16 = [v14 *v15];
    v11 = Color.init(uiColor:)();
  }

  v17 = v11;
  v18 = static Edge.Set.all.getter();
  v19 = v28;
  *(a2 + 56) = v29;
  v20 = v31;
  *(a2 + 72) = v30;
  *(a2 + 88) = v20;
  *(a2 + 104) = v32;
  result = *&v26;
  v22 = v27;
  *(a2 + 8) = v26;
  *(a2 + 24) = v22;
  v23 = *(a1 + 16);
  *a2 = v25;
  *(a2 + 40) = v19;
  *(a2 + 120) = v17;
  *(a2 + 128) = v18;
  *(a2 + 136) = 0x4014000000000000;
  *(a2 + 144) = v23;
  *(a2 + 152) = 256;
  return result;
}

uint64_t protocol witness for ToggleStyle.makeBody(configuration:) in conformance FontToggleStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToggleStyleConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v12);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v23 = v19;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v17 = v20;
  View.buttonStyle<A>(_:)();
  (*(v21 + 8))(v6, v17);
  return (*(v11 + 8))(v14, v10);
}

uint64_t partial apply for closure #1 in FontToggleStyle.makeBody(configuration:)()
{
  type metadata accessor for ToggleStyleConfiguration();
  v0 = ToggleStyleConfiguration.isOn.modify();
  *v1 = !*v1;
  return v0(&v3, 0);
}

void type metadata completion function for MiniMenu()
{
  type metadata accessor for State<Bool>();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Bindable();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for State<Bool>()
{
  if (!lazy cache variable for type metadata for State<Bool>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Bool>);
    }
  }
}

uint64_t type metadata accessor for MiniMenuPalette()
{
  result = type metadata singleton initialization cache for MiniMenuPalette;
  if (!type metadata singleton initialization cache for MiniMenuPalette)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MiniMenuPalette()
{
  type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Bindable<MiniMenuState>, type metadata accessor for MiniMenuState, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<UserInterfaceSizeClass?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for Environment<UserInterfaceSizeClass?>()
{
  if (!lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>);
    }
  }
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t MiniMenuPalette.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  outlined init with copy of Date?(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t MiniMenuPalette.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v47 = type metadata accessor for ColorScheme();
  v1 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA6HStackVyAIyAKyAA05TupleC0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVAIyAIyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_Md);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v41 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGMd) - 8;
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGMd);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v41 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGAA022_EnvironmentKeyWritingZ0VyAN0P12PopoverStateCSgGGMd) - 8;
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - v16;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAA0F0VyAA05TupleD0Vy8PaperKit16MiniStyleButtonsVSg_AN0m5MagicO0VSgAN0m6ObjectO0VtGGAA08_PaddingG0VGGMd);
  closure #1 in MiniMenuPalette.body.getter(&v8[*(v17 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v8[*(v6 + 36)];
  v19 = v53;
  *v18 = v52;
  *(v18 + 1) = v19;
  *(v18 + 2) = v54;
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGMd);
  static Color.black.getter();
  v20 = Color.opacity(_:)();

  v21 = v44;
  MiniMenuPalette.colorScheme.getter(v44);
  v22 = v3;
  v23 = v47;
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v47);
  LOBYTE(v3) = static ColorScheme.== infix(_:_:)();
  v24 = *(v1 + 8);
  v24(v22, v23);
  v24(v21, v23);
  if (v3)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 20.0;
  }

  (*(v45 + 32))(v12, v41, v46);
  v26 = &v12[*(v43 + 44)];
  *v26 = v20;
  *(v26 + 1) = v25;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = static Edge.Set.all.getter();
  v28 = v42;
  outlined init with take of Range<AttributedString.Index>(v12, v42, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGMd);
  v29 = v28 + *(v14 + 44);
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 1;
  type metadata accessor for MiniMenuPalette();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  Bindable.wrappedValue.getter();
  v30 = v51;
  swift_getKeyPath();
  v51 = v30;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v30 + 24);

  type metadata accessor for MiniPopoverState();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniPopoverState and conformance MiniPopoverState, type metadata accessor for MiniPopoverState);
  v32 = static ObservableObject.environmentStore.getter();
  v33 = v48;
  outlined init with take of Range<AttributedString.Index>(v28, v48, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGMd);
  v34 = (v33 + *(v49 + 44));
  *v34 = v32;
  v34[1] = v31;
  KeyPath = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  v37 = v33;
  v38 = v50;
  outlined init with take of Range<AttributedString.Index>(v37, v50, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGAA022_EnvironmentKeyWritingZ0VyAN0P12PopoverStateCSgGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGAA022_EnvironmentKeyWritingZ0VyAN0P12PopoverStateCSgGGA24_yAN0P14MenuControllerCyAN0P11MenuPaletteVGSgGGMd);
  v40 = (v38 + *(result + 36));
  *v40 = KeyPath;
  v40[1] = Strong;
  return result;
}

uint64_t closure #1 in MiniMenuPalette.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AF0h5MagicJ0VSgAF0h6ObjectJ0VtGGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = static VerticalAlignment.firstTextBaseline.getter();
  type metadata accessor for MiniMenuPalette();
  specialized Environment.wrappedValue.getter(v3);
  v15 = *(v5 + 48);
  if (v15(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v10, *MEMORY[0x1E697FF40], v4);
    if (v15(v3, 1, v4) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
  }

  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E697FF38], v4);
    v18 = MEMORY[0x1DA6C9EE0](v10, v7);
    v19 = *(v5 + 8);
    v19(v7, v4);
    v19(v10, v4);
    v20 = 0x4034000000000000;
    if (v18)
    {
      v20 = 0x4028000000000000;
    }
  }

  else
  {
    (*(v5 + 8))(v10, v4);
    v20 = 0x4030000000000000;
  }

  *v13 = v14;
  *(v13 + 1) = v20;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy8PaperKit16MiniStyleButtonsVSg_AJ0k5MagicM0VSgAJ0k6ObjectM0VtGGMd);
  closure #1 in closure #1 in MiniMenuPalette.body.getter(&v13[*(v21 + 44)]);
  v22 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v35;
  outlined init with take of HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>(v13, v35);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGMd);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in MiniMenuPalette.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v52 = type metadata accessor for MiniMagicButtons();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &inited - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit16MiniMagicButtonsVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &inited - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &inited - v5;
  v50 = type metadata accessor for MiniStyleButtons();
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &inited - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit16MiniStyleButtonsVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &inited - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &inited - v11;
  type metadata accessor for MiniMenuPalette();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd);
  Bindable.wrappedValue.getter();
  v13 = v61;
  swift_getKeyPath();
  v61 = v13;
  v14 = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + 40);

  if ((v15 & 0x3B) != 0)
  {
    Bindable.wrappedValue.getter();
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for MiniMenuState(0);
    Bindable<A>.init(wrappedValue:)();
    v17 = v50;
    swift_unknownObjectWeakInit();

    outlined init with take of MiniStyleButtons(v7, v12, type metadata accessor for MiniStyleButtons);
    v18 = 0;
    v19 = v14;
    v20 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v14;
    v20 = v50;
  }

  v21 = *(v53 + 7);
  v22 = 1;
  v53 = v12;
  v21(v12, v18, 1, v20);
  Bindable.wrappedValue.getter();
  v23 = swift_unknownObjectWeakLoadStrong();

  v25 = v52;
  if (!v23)
  {
    goto LABEL_12;
  }

  v26 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x468))(v24);
  if (!v26)
  {
LABEL_11:

    v22 = 1;
LABEL_12:
    v35 = v55;
    goto LABEL_13;
  }

  v27 = v26;
  v50 = v19;
  type metadata accessor for TiledTextView();
  if (!swift_dynamicCastClass() || (v28 = TiledTextView.canvasGenerationToolOverlayController.getter(), v29 = CanvasGenerationToolOverlayController.imageGenerationController.getter(), v30 = [v29 shouldShowImageGenerationUI], v28, v29, !v30) || (Bindable.wrappedValue.getter(), v31 = v61, swift_getKeyPath(), v61 = v31, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v32 = *(v31 + 40), , (v32 & 0x800C0) == 0))
  {

    v23 = v27;
    goto LABEL_11;
  }

  Bindable.wrappedValue.getter();
  v33 = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for FeedbackManager();
  inited = swift_initStaticObject();
  type metadata accessor for MiniMenuState(0);
  v34 = v49;
  Bindable<A>.init(wrappedValue:)();

  swift_unknownObjectWeakInit();
  *(v34 + *(v25 + 24)) = inited;
  v35 = v55;
  outlined init with take of MiniStyleButtons(v34, v55, type metadata accessor for MiniMagicButtons);
  v22 = 0;
LABEL_13:
  (*(v51 + 56))(v35, v22, 1, v25);
  Bindable.wrappedValue.getter();
  v36 = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for MiniPopoverState();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniPopoverState and conformance MiniPopoverState, type metadata accessor for MiniPopoverState);
  v37 = EnvironmentObject.init()();
  v39 = v38;
  type metadata accessor for FeedbackManager();
  v40 = swift_initStaticObject();
  v58[0] = 0;
  State.init(wrappedValue:)();
  v60 = 0;
  State.init(wrappedValue:)();
  v62 = v58[0];
  v63 = v59;
  v60 = 0;
  State.init(wrappedValue:)();
  v64 = v58[0];
  v65 = v59;
  v66 = v37;
  v67 = v39;
  type metadata accessor for MiniMenuState(0);
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  v68 = ObservedObject.init(wrappedValue:)();
  v69 = v41;
  swift_unknownObjectWeakInit();

  v70 = v40;
  v42 = v53;
  v43 = v54;
  outlined init with copy of Date?(v53, v54, &_s8PaperKit16MiniStyleButtonsVSgMd);
  v44 = v56;
  outlined init with copy of Date?(v35, v56, &_s8PaperKit16MiniMagicButtonsVSgMd);
  outlined init with copy of MiniObjectButtons(&v61, v58);
  v45 = v57;
  outlined init with copy of Date?(v43, v57, &_s8PaperKit16MiniStyleButtonsVSgMd);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit16MiniStyleButtonsVSg_AA0c5MagicE0VSgAA0c6ObjectE0VtMd);
  outlined init with copy of Date?(v44, v45 + *(v46 + 48), &_s8PaperKit16MiniMagicButtonsVSgMd);
  outlined init with copy of MiniObjectButtons(v58, v45 + *(v46 + 64));
  outlined destroy of MiniObjectButtons(&v61);
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit16MiniMagicButtonsVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s8PaperKit16MiniStyleButtonsVSgMd);
  outlined destroy of MiniObjectButtons(v58);
  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s8PaperKit16MiniMagicButtonsVSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit16MiniStyleButtonsVSgMd);
}

uint64_t closure #2 in MiniMenuPalette.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Material._GlassVariant();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material._GlassVariant.regular.getter();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGMd) + 36);
  static Material._glass(_:)();
  (*(v5 + 8))(v7, v4);
  LOBYTE(v4) = static Edge.Set.all.getter();
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd) + 36)) = v4;
  outlined init with copy of Date?(a1, a2, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGMd);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGMd) + 36);
  v10 = *MEMORY[0x1E697F468];
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd);
  *(v9 + *(result + 36)) = 256;
  return result;
}

uint64_t closure #3 in MiniMenuPalette.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for paletteBackgroundColor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Material();
  v5 = __swift_project_value_buffer(v4, static MiniMenuConstants.paletteBackgroundColor);
  v6 = static Edge.Set.all.getter();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGMd) + 36);
  (*(*(v4 - 8) + 16))(v7, v5, v4);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd) + 36)) = v6;
  outlined init with copy of Date?(a1, a2, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGMd);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGMd) + 36);
  v9 = *MEMORY[0x1E697F468];
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd);
  *(v8 + *(result + 36)) = 256;
  return result;
}

uint64_t key path getter for EnvironmentValues.miniMenuController : EnvironmentValues@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_miniMenuController and conformance EnvironmentValues.__Key_miniMenuController();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for EnvironmentValues.miniMenuController : EnvironmentValues(void **a1)
{
  v1 = *a1;
  lazy protocol witness table accessor for type EnvironmentValues.__Key_miniMenuController and conformance EnvironmentValues.__Key_miniMenuController();
  v2 = v1;
  return EnvironmentValues.subscript.setter();
}

void protocol witness for MiniMenuProtocol.init(controller:state:) in conformance MiniMenuPalette(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakInit();
  v5 = *(a2 + 28);
  *(a3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakAssign();
  type metadata accessor for MiniMenuState(0);
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  Bindable<A>.init(wrappedValue:)();
}

uint64_t instantiation function for generic protocol witness table for MiniMenuPalette(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuPalette and conformance MiniMenuPalette, type metadata accessor for MiniMenuPalette);
  *(a1 + 8) = result;
  return result;
}

void MiniMenu.init(controller:state:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  State.init(wrappedValue:)();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  swift_unknownObjectWeakAssign();
  type metadata accessor for MiniMenu();
  property wrapper backing initializer of MiniMenu.state();
}

uint64_t property wrapper backing initializer of MiniMenu.state()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t MiniMenu.isVisible.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t MiniMenu.state.getter()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t MiniMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = *(a1 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v44 - v13;
  v14 = *(a1 + 24);
  v44 = *(v14 + 8);
  v73 = v44;
  v74 = MEMORY[0x1E697E070];
  v62 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v71 = WitnessTable;
  v72 = MEMORY[0x1E697E5C0];
  v50 = v12;
  v49 = swift_getWitnessTable();
  v67 = v12;
  v68 = MEMORY[0x1E69E6370];
  v69 = v49;
  v70 = MEMORY[0x1E69E6388];
  v53 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v46 = &v44 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit16MiniPopoverStateCSgGMd);
  v55 = type metadata accessor for ModifiedContent();
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v44 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = v2;
  v21 = MiniMenu.state.getter();
  (*(v14 + 48))(Strong, v21, v6, v14);
  MiniMenu.isVisible.getter();
  static UnitPoint.center.getter();
  View.scaleEffect(_:anchor:)();
  (*(v48 + 8))(v8, v6);
  MiniMenu.isVisible.getter();
  View.opacity(_:)();
  (*(v47 + 8))(v11, v9);
  MiniMenu.state.getter();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 40);
  v24 = swift_checkMetadataState();
  LOBYTE(Strong) = v23(v24, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  LOBYTE(v67) = Strong & 1;
  v26 = v59;
  v25 = v60;
  (*(v60 + 16))(v59, v20, a1);
  v27 = v25;
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v6;
  *(v29 + 24) = v14;
  (*(v27 + 32))(v29 + v28, v26, a1);
  v30 = v46;
  v31 = v50;
  v32 = MEMORY[0x1E69E6370];
  v33 = v49;
  v34 = v64;
  View.onChange<A>(of:initial:_:)();

  (*(v57 + 8))(v34, v31);
  MiniMenu.state.getter();
  (*(AssociatedConformanceWitness + 72))(v24, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  type metadata accessor for MiniPopoverState();
  v67 = v31;
  v68 = v32;
  v69 = v33;
  v70 = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniPopoverState and conformance MiniPopoverState, type metadata accessor for MiniPopoverState);
  v36 = v51;
  v37 = OpaqueTypeMetadata2;
  View.environmentObject<A>(_:)();

  (*(v56 + 8))(v30, v37);
  v38 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MiniPopoverState?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit16MiniPopoverStateCSgGMd);
  v65 = OpaqueTypeConformance2;
  v66 = v38;
  v39 = v55;
  v40 = swift_getWitnessTable();
  v41 = v54;
  static ViewBuilder.buildExpression<A>(_:)(v36, v39, v40);
  v42 = *(v58 + 8);
  v42(v36, v39);
  static ViewBuilder.buildExpression<A>(_:)(v41, v39, v40);
  return (v42)(v41, v39);
}

uint64_t closure #1 in MiniMenu.body.getter()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in MiniMenu.body.getter()
{
  type metadata accessor for MiniMenu();
  MiniMenu.state.getter();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 40);
  v2 = swift_checkMetadataState();
  v1(v2, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return MiniMenu.isVisible.setter();
}

uint64_t partial apply for closure #1 in MiniMenu.body.getter()
{
  type metadata accessor for MiniMenu();

  return closure #1 in MiniMenu.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA15ModifiedContentVyACyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_miniMenuController and conformance EnvironmentValues.__Key_miniMenuController()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_miniMenuController and conformance EnvironmentValues.__Key_miniMenuController;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_miniMenuController and conformance EnvironmentValues.__Key_miniMenuController)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_miniMenuController and conformance EnvironmentValues.__Key_miniMenuController);
  }

  return result;
}

uint64_t outlined init with take of HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AF0h5MagicJ0VSgAF0h6ObjectJ0VtGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MiniStyleButtons(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>>, _EnvironmentKeyWritingModifier<MiniMenuController<MiniMenuPalette>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>>, _EnvironmentKeyWritingModifier<MiniMenuController<MiniMenuPalette>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>>, _EnvironmentKeyWritingModifier<MiniMenuController<MiniMenuPalette>?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGAA022_EnvironmentKeyWritingZ0VyAN0P12PopoverStateCSgGGA24_yAN0P14MenuControllerCyAN0P11MenuPaletteVGSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MiniMenuController<MiniMenuPalette>?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit18MiniMenuControllerCyAD0iJ7PaletteVGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>>, _EnvironmentKeyWritingModifier<MiniMenuController<MiniMenuPalette>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGAA022_EnvironmentKeyWritingZ0VyAN0P12PopoverStateCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MiniPopoverState?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit16MiniPopoverStateCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout>, _EnvironmentKeyWritingModifier<MiniPopoverState?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGAZGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA6HStackVyACyAKyAA05TupleE0Vy8PaperKit16MiniStyleButtonsVSg_AN0p5MagicR0VSgAN0p6ObjectR0VtGGAA14_PaddingLayoutVGGAA06_FrameV0VG_AA8SolariumVACyACyA3_AA011_BackgroundQ8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGA17_Qo_AA13_ShadowEffectVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyACyAEyAA9TupleViewVy8PaperKit16MiniStyleButtonsVSg_AH0j5MagicL0VSgAH0j6ObjectL0VtGGAA14_PaddingLayoutVGGAA06_FrameP0VGAA011_BackgroundK8ModifierVyAA8MaterialVGGAA11_ClipEffectVyAA7CapsuleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ModifiedContent<HStack<TupleView<(MiniStyleButtons?, MiniMagicButtons?, MiniObjectButtons)>>, _PaddingLayout>>, _FrameLayout>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized CanvasElementView.endLiveEdit(undoable:discard:)(int a1, int a2)
{
  v3 = v2;
  v80 = a2;
  LODWORD(v78) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v66 - v10;
  v11 = type metadata accessor for CapsuleUndoAction();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v79 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v66 - v23;
  v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(&v3[v25], v18, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  }

  v70 = v6;
  v27 = *(v20 + 32);
  v76 = v24;
  v27(v24, v18, v19);
  (*(v20 + 56))(v15, 1, 1, v19);
  swift_beginAccess();
  outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v15, &v3[v25], &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  v28 = swift_endAccess();
  v29 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v77 = (*MEMORY[0x1E69E7D40] & *v3) + 144;
  v31 = (v30)(v28);
  v32 = v80;
  if (v31)
  {
    v33 = v31;
    v69 = v19;
    v68 = v20;
    v34 = off_1F4F60E88;
    type metadata accessor for AnyCanvas();
    v67 = v34();
    v35 = AnyCanvas.isLiveEditing()();
    if (v35 == v33[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v33[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v35;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v66[1] = v66;
      MEMORY[0x1EEE9AC00](KeyPath);
      v66[-2] = v33;
      LOBYTE(v66[-1]) = v35;
      v82 = v33;
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if ((v67 & 1) != 0 && (v34() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    v29 = MEMORY[0x1E69E7D40];
    v20 = v68;
    v19 = v69;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  v37 = *((*v29 & *v3) + 0x418);
  v38 = *&v3[v37];
  *&v3[v37] = 0;

  if (v32 & 1) != 0 || (v78)
  {
    v39 = v30();
    if (v39)
    {
      v40 = v39;
      v78 = v30;
      v41 = *((*v29 & *v3) + 0x3F0);
      swift_beginAccess();
      v42 = v79;
      (*(v20 + 16))(v79, &v3[v41], v19);
      v43 = v73;
      Capsule.actionUndoingDifference(from:)();
      v44 = v42;
      v45 = v43;
      (*(v20 + 8))(v44, v19);
      v46 = v74;
      v47 = v43;
      v48 = v75;
      if ((*(v74 + 48))(v47, 1, v75) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence17CapsuleUndoActionVSgMd);
      }

      else
      {
        v49 = v45;
        v50 = v72;
        (*(v46 + 32))(v72, v49, v48);
        if (v32)
        {
          v51 = v71;
          (*(v46 + 16))(v71, v50, v48);
          (*(v46 + 56))(v51, 0, 1, v48);
          swift_beginAccess();
          Capsule.apply(_:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence17CapsuleUndoActionVSgMd);
          swift_endAccess();

          (*(v46 + 8))(v72, v48);
        }

        else
        {
          (*((*v29 & *v40) + 0x6D8))(v50, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);

          (*(v46 + 8))(v50, v48);
        }
      }

      v30 = v78;
    }
  }

  v52 = (*((*v29 & *v3) + 0x268))();
  v53 = (v30)(v52);
  if (v53)
  {
    v54 = v53;
    v55 = *((*v29 & *v3) + 0x3F0);
    swift_beginAccess();
    v56 = v79;
    (*(v20 + 16))(v79, &v3[v55], v19);
    v81[0] = 4;
    v57 = *((*v29 & *v54) + 0x7D8);
    v58 = type metadata accessor for Shape(0);
    v59 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    v57(v56, v81, v58, v59);
    v81[0] = 4;
    (*((*v29 & *v54) + 0x7B0))(v81);

    (*(v20 + 8))(v56, v19);
  }

  if (os_variant_has_internal_ui())
  {
    v60 = type metadata accessor for TaskPriority();
    v61 = v70;
    (*(*(v60 - 8) + 56))(v70, 1, 1, v60);
    type metadata accessor for MainActor();
    v62 = v3;
    v63 = static MainActor.shared.getter();
    v64 = swift_allocObject();
    v65 = MEMORY[0x1E69E85E0];
    v64[2] = v63;
    v64[3] = v65;
    v64[4] = v62;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v64);
  }

  return (*(v20 + 8))(v76, v19);
}

{
  v3 = v2;
  v80 = a2;
  LODWORD(v78) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v66 - v10;
  v11 = type metadata accessor for CapsuleUndoAction();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v79 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v66 - v23;
  v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(&v3[v25], v18, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  }

  v70 = v6;
  v27 = *(v20 + 32);
  v76 = v24;
  v27(v24, v18, v19);
  (*(v20 + 56))(v15, 1, 1, v19);
  swift_beginAccess();
  outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v15, &v3[v25], &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  v28 = swift_endAccess();
  v29 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v77 = (*MEMORY[0x1E69E7D40] & *v3) + 144;
  v31 = (v30)(v28);
  v32 = v80;
  if (v31)
  {
    v33 = v31;
    v69 = v19;
    v68 = v20;
    v34 = off_1F4F60E88;
    type metadata accessor for AnyCanvas();
    v67 = v34();
    v35 = AnyCanvas.isLiveEditing()();
    if (v35 == v33[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v33[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v35;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v66[1] = v66;
      MEMORY[0x1EEE9AC00](KeyPath);
      v66[-2] = v33;
      LOBYTE(v66[-1]) = v35;
      v82 = v33;
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if ((v67 & 1) != 0 && (v34() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    v29 = MEMORY[0x1E69E7D40];
    v20 = v68;
    v19 = v69;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  v37 = *((*v29 & *v3) + 0x418);
  v38 = *&v3[v37];
  *&v3[v37] = 0;

  if (v32 & 1) != 0 || (v78)
  {
    v39 = v30();
    if (v39)
    {
      v40 = v39;
      v78 = v30;
      v41 = *((*v29 & *v3) + 0x3F0);
      swift_beginAccess();
      v42 = v79;
      (*(v20 + 16))(v79, &v3[v41], v19);
      v43 = v73;
      Capsule.actionUndoingDifference(from:)();
      v44 = v42;
      v45 = v43;
      (*(v20 + 8))(v44, v19);
      v46 = v74;
      v47 = v43;
      v48 = v75;
      if ((*(v74 + 48))(v47, 1, v75) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence17CapsuleUndoActionVSgMd);
      }

      else
      {
        v49 = v45;
        v50 = v72;
        (*(v46 + 32))(v72, v49, v48);
        if (v32)
        {
          v51 = v71;
          (*(v46 + 16))(v71, v50, v48);
          (*(v46 + 56))(v51, 0, 1, v48);
          swift_beginAccess();
          Capsule.apply(_:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence17CapsuleUndoActionVSgMd);
          swift_endAccess();

          (*(v46 + 8))(v72, v48);
        }

        else
        {
          (*((*v29 & *v40) + 0x6D8))(v50, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);

          (*(v46 + 8))(v50, v48);
        }
      }

      v30 = v78;
    }
  }

  v52 = (*((*v29 & *v3) + 0x268))();
  v53 = (v30)(v52);
  if (v53)
  {
    v54 = v53;
    v55 = *((*v29 & *v3) + 0x3F0);
    swift_beginAccess();
    v56 = v79;
    (*(v20 + 16))(v79, &v3[v55], v19);
    v81[0] = 4;
    v57 = *((*v29 & *v54) + 0x7D8);
    v58 = type metadata accessor for TextBox(0);
    v59 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    v57(v56, v81, v58, v59);
    v81[0] = 4;
    (*((*v29 & *v54) + 0x7B0))(v81);

    (*(v20 + 8))(v56, v19);
  }

  if (os_variant_has_internal_ui())
  {
    v60 = type metadata accessor for TaskPriority();
    v61 = v70;
    (*(*(v60 - 8) + 56))(v70, 1, 1, v60);
    type metadata accessor for MainActor();
    v62 = v3;
    v63 = static MainActor.shared.getter();
    v64 = swift_allocObject();
    v65 = MEMORY[0x1E69E85E0];
    v64[2] = v63;
    v64[3] = v65;
    v64[4] = v62;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v64);
  }

  return (*(v20 + 8))(v76, v19);
}

{
  v3 = v2;
  v80 = a2;
  LODWORD(v78) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v66 - v10;
  v11 = type metadata accessor for CapsuleUndoAction();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v79 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v66 - v23;
  v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(&v3[v25], v18, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  }

  v70 = v6;
  v27 = *(v20 + 32);
  v76 = v24;
  v27(v24, v18, v19);
  (*(v20 + 56))(v15, 1, 1, v19);
  swift_beginAccess();
  outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v15, &v3[v25], &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v28 = swift_endAccess();
  v29 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v77 = (*MEMORY[0x1E69E7D40] & *v3) + 144;
  v31 = (v30)(v28);
  v32 = v80;
  if (v31)
  {
    v33 = v31;
    v69 = v19;
    v68 = v20;
    v34 = off_1F4F60E88;
    type metadata accessor for AnyCanvas();
    v67 = v34();
    v35 = AnyCanvas.isLiveEditing()();
    if (v35 == v33[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v33[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v35;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v66[1] = v66;
      MEMORY[0x1EEE9AC00](KeyPath);
      v66[-2] = v33;
      LOBYTE(v66[-1]) = v35;
      v82 = v33;
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if ((v67 & 1) != 0 && (v34() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    v29 = MEMORY[0x1E69E7D40];
    v20 = v68;
    v19 = v69;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v37 = *((*v29 & *v3) + 0x418);
  v38 = *&v3[v37];
  *&v3[v37] = 0;

  if (v32 & 1) != 0 || (v78)
  {
    v39 = v30();
    if (v39)
    {
      v40 = v39;
      v78 = v30;
      v41 = *((*v29 & *v3) + 0x3F0);
      swift_beginAccess();
      v42 = v79;
      (*(v20 + 16))(v79, &v3[v41], v19);
      v43 = v73;
      Capsule.actionUndoingDifference(from:)();
      v44 = v42;
      v45 = v43;
      (*(v20 + 8))(v44, v19);
      v46 = v74;
      v47 = v43;
      v48 = v75;
      if ((*(v74 + 48))(v47, 1, v75) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence17CapsuleUndoActionVSgMd);
      }

      else
      {
        v49 = v45;
        v50 = v72;
        (*(v46 + 32))(v72, v49, v48);
        if (v32)
        {
          v51 = v71;
          (*(v46 + 16))(v71, v50, v48);
          (*(v46 + 56))(v51, 0, 1, v48);
          swift_beginAccess();
          Capsule.apply(_:)();
          outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence17CapsuleUndoActionVSgMd);
          swift_endAccess();

          (*(v46 + 8))(v72, v48);
        }

        else
        {
          (*((*v29 & *v40) + 0x6D8))(v50, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);

          (*(v46 + 8))(v50, v48);
        }
      }

      v30 = v78;
    }
  }

  v52 = (*((*v29 & *v3) + 0x268))();
  v53 = (v30)(v52);
  if (v53)
  {
    v54 = v53;
    v55 = *((*v29 & *v3) + 0x3F0);
    swift_beginAccess();
    v56 = v79;
    (*(v20 + 16))(v79, &v3[v55], v19);
    v81[0] = 4;
    v57 = *((*v29 & *v54) + 0x7D8);
    v58 = type metadata accessor for Image(0);
    v59 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v57(v56, v81, v58, v59);
    v81[0] = 4;
    (*((*v29 & *v54) + 0x7B0))(v81);

    (*(v20 + 8))(v56, v19);
  }

  if (os_variant_has_internal_ui())
  {
    v60 = type metadata accessor for TaskPriority();
    v61 = v70;
    (*(*(v60 - 8) + 56))(v70, 1, 1, v60);
    type metadata accessor for MainActor();
    v62 = v3;
    v63 = static MainActor.shared.getter();
    v64 = swift_allocObject();
    v65 = MEMORY[0x1E69E85E0];
    v64[2] = v63;
    v64[3] = v65;
    v64[4] = v62;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v64);
  }

  return (*(v20 + 8))(v76, v19);
}

void specialized CanvasElementView.updateGestures()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - v4;
  if (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0 || (v6 = swift_unknownObjectWeakLoadStrong()) != 0 && (v7 = v6, v8 = AnyCanvasElementView.isEditingCanvasElement.getter(), v7, (v8))
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x400);
    if (!*(v1 + v10))
    {
      v25 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_tapped_];
      v26 = *(v1 + v10);
      *(v1 + v10) = v25;
      v27 = v25;

      if (v27)
      {
        [v27 setDelegate_];
      }

      v52 = &type metadata for PencilAndPaperFeatureFlags;
      v53 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
      v51[0] = 0;
      v28 = isFeatureEnabled(_:)();
      v29 = __swift_destroy_boxed_opaque_existential_0(v51);
      if (v28)
      {
        if (!*(v1 + v10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        [v1 addGestureRecognizer_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          if ((AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0)
          {
            v48 = v2;
            v49 = v5;
            v31 = type metadata accessor for PrecisePanGestureRecognizer();
            v32 = objc_allocWithZone(v31);
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
            v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakInit();
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
            v50.receiver = v32;
            v50.super_class = v31;
            v33 = objc_msgSendSuper2(&v50, sel_initWithTarget_action_, 0, 0);
            v33[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakAssign();
            [v33 setMaximumNumberOfTouches_];
            v34 = *((*v9 & *v1) + 0x408);
            v35 = *(v1 + v34);
            *(v1 + v34) = v33;
            v36 = v33;

            [v36 setDelegate_];
            v37 = *(v1 + v34);
            if (!v37)
            {
              goto LABEL_36;
            }

            [v37 addTarget:v1 action:sel_dragMoved_];
            if (!*(v1 + v34))
            {
              goto LABEL_36;
            }

            [v1 addGestureRecognizer_];
            v2 = v48;
            v5 = v49;
          }
        }
      }

      else
      {
        v38 = (*((*v9 & *v1) + 0x90))(v29);
        if (v38)
        {
          v39 = v3;
          v40 = v2;
          v41 = v38;
          v42 = (*((*v9 & *v38) + 0x468))();

          v2 = v40;
          v3 = v39;
          if (v42)
          {
            v43 = [v42 canvasView];

            if (v43)
            {
              v44 = [v43 drawingGestureRecognizer];

              v45 = [v44 view];
              if (v45)
              {
                if (!*(v1 + v10))
                {
LABEL_37:
                  __break(1u);
                  return;
                }

                [v45 addGestureRecognizer_];
              }
            }
          }
        }
      }
    }

    v11 = *((*v9 & *v1) + 0x3F0);
    swift_beginAccess();
    v49 = *(v3 + 16);
    v12 = (v49)(v5, v1 + v11, v2);
    MEMORY[0x1EEE9AC00](v12);
    v48 = type metadata accessor for Signature(0);
    *(&v48 - 4) = v48;
    v13 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    *(&v48 - 3) = v13;
    *(&v48 - 2) = &protocol witness table for Signature;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v14 = *(v3 + 8);
    v14(v5, v2);
    if ((v54 & 2) != 0 || (v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410), *(v1 + v15)))
    {
      v16 = (v49)(v5, v1 + v11, v2);
      MEMORY[0x1EEE9AC00](v16);
      *(&v48 - 4) = v48;
      *(&v48 - 3) = v13;
      *(&v48 - 2) = &protocol witness table for Signature;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v14(v5, v2);
      if ((v54 & 2) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    v46 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v47 = *(v1 + v15);
    *(v1 + v15) = v46;
    v24 = v46;

    if (v24)
    {
      [v1 addInteraction_];
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v17 = MEMORY[0x1E69E7D40];
  v18 = *MEMORY[0x1E69E7D40] & *v1;
  v19 = *(v18 + 0x400);
  if (*(v1 + v19))
  {
    [v1 removeGestureRecognizer_];
    v20 = *(v1 + v19);
    *(v1 + v19) = 0;

    v18 = *v17 & *v1;
  }

  v21 = *(v18 + 1032);
  if (*(v1 + v21))
  {
    [v1 removeGestureRecognizer_];
    v22 = *(v1 + v21);
    *(v1 + v21) = 0;
  }

LABEL_13:
  v23 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  if (!*(v1 + v23))
  {
    return;
  }

  [v1 removeInteraction_];
  v24 = *(v1 + v23);
  *(v1 + v23) = 0;
LABEL_32:
}

{
  v1 = v0;
  if (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0 || (v2 = swift_unknownObjectWeakLoadStrong()) != 0 && (v3 = v2, v4 = AnyCanvasElementView.isEditingCanvasElement.getter(), v3, (v4))
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x400);
    if (!*(v1 + v6))
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_tapped_];
      v18 = *(v1 + v6);
      *(v1 + v6) = v17;
      v19 = v17;

      if (v19)
      {
        [v19 setDelegate_];
      }

      v41 = &type metadata for PencilAndPaperFeatureFlags;
      v42 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
      v40[0] = 0;
      v20 = isFeatureEnabled(_:)();
      v21 = __swift_destroy_boxed_opaque_existential_0(v40);
      if (v20)
      {
        if (!*(v1 + v6))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        [v1 addGestureRecognizer_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          if ((AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0)
          {
            v23 = (*((*v5 & *v1) + 0x350))();
            v24 = type metadata accessor for PrecisePanGestureRecognizer();
            v25 = objc_allocWithZone(v24);
            *&v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
            v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakInit();
            *&v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
            *&v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
            v39.receiver = v25;
            v39.super_class = v24;
            v26 = objc_msgSendSuper2(&v39, sel_initWithTarget_action_, 0, 0);
            v26[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = v23 & 1;
            swift_unknownObjectWeakAssign();
            [v26 setMaximumNumberOfTouches_];
            v27 = *((*v5 & *v1) + 0x408);
            v28 = *(v1 + v27);
            *(v1 + v27) = v26;
            v29 = v26;

            [v29 setDelegate_];
            v30 = *(v1 + v27);
            if (!v30)
            {
              goto LABEL_36;
            }

            [v30 addTarget:v1 action:sel_dragMoved_];
            if (!*(v1 + v27))
            {
              goto LABEL_36;
            }

            [v1 addGestureRecognizer_];
          }
        }
      }

      else
      {
        v31 = (*((*v5 & *v1) + 0x90))(v21);
        if (v31)
        {
          v32 = v31;
          v33 = (*((*v5 & *v31) + 0x468))();

          if (v33)
          {
            v34 = [v33 canvasView];

            if (v34)
            {
              v35 = [v34 drawingGestureRecognizer];

              v36 = [v35 view];
              if (v36)
              {
                if (!*(v1 + v6))
                {
LABEL_37:
                  __break(1u);
                  return;
                }

                [v36 addGestureRecognizer_];
              }
            }
          }
        }
      }
    }

    v7 = *((*v5 & *v1) + 0x460);
    if ((v7() & 1) == 0 || (v8 = *((*v5 & *v1) + 0x410), *(v1 + v8)))
    {
      if (v7())
      {
        return;
      }

      goto LABEL_13;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v38 = *(v1 + v8);
    *(v1 + v8) = v37;
    v16 = v37;

    if (v16)
    {
      [v1 addInteraction_];
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v9 = MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40] & *v1;
  v11 = *(v10 + 0x400);
  if (*(v1 + v11))
  {
    [v1 removeGestureRecognizer_];
    v12 = *(v1 + v11);
    *(v1 + v11) = 0;

    v10 = *v9 & *v1;
  }

  v13 = *(v10 + 1032);
  if (*(v1 + v13))
  {
    [v1 removeGestureRecognizer_];
    v14 = *(v1 + v13);
    *(v1 + v13) = 0;
  }

LABEL_13:
  v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  if (!*(v1 + v15))
  {
    return;
  }

  [v1 removeInteraction_];
  v16 = *(v1 + v15);
  *(v1 + v15) = 0;
LABEL_32:
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - v4;
  if (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0 || (v6 = swift_unknownObjectWeakLoadStrong()) != 0 && (v7 = v6, v8 = AnyCanvasElementView.isEditingCanvasElement.getter(), v7, (v8))
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x400);
    if (!*(v1 + v10))
    {
      v25 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_tapped_];
      v26 = *(v1 + v10);
      *(v1 + v10) = v25;
      v27 = v25;

      if (v27)
      {
        [v27 setDelegate_];
      }

      v52 = &type metadata for PencilAndPaperFeatureFlags;
      v53 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
      v51[0] = 0;
      v28 = isFeatureEnabled(_:)();
      v29 = __swift_destroy_boxed_opaque_existential_0(v51);
      if (v28)
      {
        if (!*(v1 + v10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        [v1 addGestureRecognizer_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          if ((AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0)
          {
            v48 = v2;
            v49 = v5;
            v31 = type metadata accessor for PrecisePanGestureRecognizer();
            v32 = objc_allocWithZone(v31);
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
            v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakInit();
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
            v50.receiver = v32;
            v50.super_class = v31;
            v33 = objc_msgSendSuper2(&v50, sel_initWithTarget_action_, 0, 0);
            v33[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakAssign();
            [v33 setMaximumNumberOfTouches_];
            v34 = *((*v9 & *v1) + 0x408);
            v35 = *(v1 + v34);
            *(v1 + v34) = v33;
            v36 = v33;

            [v36 setDelegate_];
            v37 = *(v1 + v34);
            if (!v37)
            {
              goto LABEL_36;
            }

            [v37 addTarget:v1 action:sel_dragMoved_];
            if (!*(v1 + v34))
            {
              goto LABEL_36;
            }

            [v1 addGestureRecognizer_];
            v2 = v48;
            v5 = v49;
          }
        }
      }

      else
      {
        v38 = (*((*v9 & *v1) + 0x90))(v29);
        if (v38)
        {
          v39 = v3;
          v40 = v2;
          v41 = v38;
          v42 = (*((*v9 & *v38) + 0x468))();

          v2 = v40;
          v3 = v39;
          if (v42)
          {
            v43 = [v42 canvasView];

            if (v43)
            {
              v44 = [v43 drawingGestureRecognizer];

              v45 = [v44 view];
              if (v45)
              {
                if (!*(v1 + v10))
                {
LABEL_37:
                  __break(1u);
                  return;
                }

                [v45 addGestureRecognizer_];
              }
            }
          }
        }
      }
    }

    v11 = *((*v9 & *v1) + 0x3F0);
    swift_beginAccess();
    v49 = *(v3 + 16);
    v12 = (v49)(v5, v1 + v11, v2);
    MEMORY[0x1EEE9AC00](v12);
    v48 = type metadata accessor for TextBox(0);
    *(&v48 - 4) = v48;
    v13 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    *(&v48 - 3) = v13;
    *(&v48 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v14 = *(v3 + 8);
    v14(v5, v2);
    if ((v54 & 2) != 0 || (v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410), *(v1 + v15)))
    {
      v16 = (v49)(v5, v1 + v11, v2);
      MEMORY[0x1EEE9AC00](v16);
      *(&v48 - 4) = v48;
      *(&v48 - 3) = v13;
      *(&v48 - 2) = &protocol witness table for TextBox;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v14(v5, v2);
      if ((v54 & 2) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    v46 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v47 = *(v1 + v15);
    *(v1 + v15) = v46;
    v24 = v46;

    if (v24)
    {
      [v1 addInteraction_];
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v17 = MEMORY[0x1E69E7D40];
  v18 = *MEMORY[0x1E69E7D40] & *v1;
  v19 = *(v18 + 0x400);
  if (*(v1 + v19))
  {
    [v1 removeGestureRecognizer_];
    v20 = *(v1 + v19);
    *(v1 + v19) = 0;

    v18 = *v17 & *v1;
  }

  v21 = *(v18 + 1032);
  if (*(v1 + v21))
  {
    [v1 removeGestureRecognizer_];
    v22 = *(v1 + v21);
    *(v1 + v21) = 0;
  }

LABEL_13:
  v23 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  if (!*(v1 + v23))
  {
    return;
  }

  [v1 removeInteraction_];
  v24 = *(v1 + v23);
  *(v1 + v23) = 0;
LABEL_32:
}

{
  v1 = v0;
  if (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0 || (v2 = swift_unknownObjectWeakLoadStrong()) != 0 && (v3 = v2, v4 = AnyCanvasElementView.isEditingCanvasElement.getter(), v3, (v4))
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x400);
    if (!*(v1 + v6))
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_tapped_];
      v19 = *(v1 + v6);
      *(v1 + v6) = v18;
      v20 = v18;

      if (v20)
      {
        [v20 setDelegate_];
      }

      v40[3] = &type metadata for PencilAndPaperFeatureFlags;
      v40[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
      LOBYTE(v40[0]) = 0;
      v21 = isFeatureEnabled(_:)();
      v22 = __swift_destroy_boxed_opaque_existential_0(v40);
      if (v21)
      {
        if (!*(v1 + v6))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        [v1 addGestureRecognizer_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          if ((AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0)
          {
            v24 = type metadata accessor for PrecisePanGestureRecognizer();
            v25 = objc_allocWithZone(v24);
            *&v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
            v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakInit();
            *&v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
            *&v25[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
            v39.receiver = v25;
            v39.super_class = v24;
            v26 = objc_msgSendSuper2(&v39, sel_initWithTarget_action_, 0, 0);
            v26[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakAssign();
            [v26 setMaximumNumberOfTouches_];
            v27 = *((*v5 & *v1) + 0x408);
            v28 = *(v1 + v27);
            *(v1 + v27) = v26;
            v29 = v26;

            [v29 setDelegate_];
            v30 = *(v1 + v27);
            if (!v30)
            {
              goto LABEL_36;
            }

            [v30 addTarget:v1 action:sel_dragMoved_];
            if (!*(v1 + v27))
            {
              goto LABEL_36;
            }

            [v1 addGestureRecognizer_];
          }
        }
      }

      else
      {
        v31 = (*((*v5 & *v1) + 0x90))(v22);
        if (v31)
        {
          v32 = v31;
          v33 = (*((*v5 & *v31) + 0x468))();

          if (v33)
          {
            v34 = [v33 canvasView];

            if (v34)
            {
              v35 = [v34 drawingGestureRecognizer];

              v36 = [v35 view];
              if (v36)
              {
                if (!*(v1 + v6))
                {
LABEL_37:
                  __break(1u);
                  return;
                }

                [v36 addGestureRecognizer_];
              }
            }
          }
        }
      }
    }

    v7 = *((*v5 & *v1) + 0x1D8);
    v8 = v7(v40);
    if ((v40[0] & 2) != 0 || (v9 = *((*v5 & *v1) + 0x410), *(v1 + v9)))
    {
      (v7)(v40, v8);
      if ((v40[0] & 2) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v38 = *(v1 + v9);
    *(v1 + v9) = v37;
    v17 = v37;

    if (v17)
    {
      [v1 addInteraction_];
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40] & *v1;
  v12 = *(v11 + 0x400);
  if (*(v1 + v12))
  {
    [v1 removeGestureRecognizer_];
    v13 = *(v1 + v12);
    *(v1 + v12) = 0;

    v11 = *v10 & *v1;
  }

  v14 = *(v11 + 1032);
  if (*(v1 + v14))
  {
    [v1 removeGestureRecognizer_];
    v15 = *(v1 + v14);
    *(v1 + v14) = 0;
  }

LABEL_13:
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  if (!*(v1 + v16))
  {
    return;
  }

  [v1 removeInteraction_];
  v17 = *(v1 + v16);
  *(v1 + v16) = 0;
LABEL_32:
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - v4;
  if (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0 || (v6 = swift_unknownObjectWeakLoadStrong()) != 0 && (v7 = v6, v8 = AnyCanvasElementView.isEditingCanvasElement.getter(), v7, (v8))
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x400);
    if (!*(v1 + v10))
    {
      v25 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_tapped_];
      v26 = *(v1 + v10);
      *(v1 + v10) = v25;
      v27 = v25;

      if (v27)
      {
        [v27 setDelegate_];
      }

      v52 = &type metadata for PencilAndPaperFeatureFlags;
      v53 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
      v51[0] = 0;
      v28 = isFeatureEnabled(_:)();
      v29 = __swift_destroy_boxed_opaque_existential_0(v51);
      if (v28)
      {
        if (!*(v1 + v10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        [v1 addGestureRecognizer_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          if ((AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0)
          {
            v48 = v2;
            v49 = v5;
            v31 = type metadata accessor for PrecisePanGestureRecognizer();
            v32 = objc_allocWithZone(v31);
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
            v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakInit();
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
            *&v32[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
            v50.receiver = v32;
            v50.super_class = v31;
            v33 = objc_msgSendSuper2(&v50, sel_initWithTarget_action_, 0, 0);
            v33[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakAssign();
            [v33 setMaximumNumberOfTouches_];
            v34 = *((*v9 & *v1) + 0x408);
            v35 = *(v1 + v34);
            *(v1 + v34) = v33;
            v36 = v33;

            [v36 setDelegate_];
            v37 = *(v1 + v34);
            if (!v37)
            {
              goto LABEL_36;
            }

            [v37 addTarget:v1 action:sel_dragMoved_];
            if (!*(v1 + v34))
            {
              goto LABEL_36;
            }

            [v1 addGestureRecognizer_];
            v2 = v48;
            v5 = v49;
          }
        }
      }

      else
      {
        v38 = (*((*v9 & *v1) + 0x90))(v29);
        if (v38)
        {
          v39 = v3;
          v40 = v2;
          v41 = v38;
          v42 = (*((*v9 & *v38) + 0x468))();

          v2 = v40;
          v3 = v39;
          if (v42)
          {
            v43 = [v42 canvasView];

            if (v43)
            {
              v44 = [v43 drawingGestureRecognizer];

              v45 = [v44 view];
              if (v45)
              {
                if (!*(v1 + v10))
                {
LABEL_37:
                  __break(1u);
                  return;
                }

                [v45 addGestureRecognizer_];
              }
            }
          }
        }
      }
    }

    v11 = *((*v9 & *v1) + 0x3F0);
    swift_beginAccess();
    v49 = *(v3 + 16);
    v12 = (v49)(v5, v1 + v11, v2);
    MEMORY[0x1EEE9AC00](v12);
    v48 = type metadata accessor for Image(0);
    *(&v48 - 4) = v48;
    v13 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    *(&v48 - 3) = v13;
    *(&v48 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v14 = *(v3 + 8);
    v14(v5, v2);
    if ((v54 & 2) != 0 || (v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410), *(v1 + v15)))
    {
      v16 = (v49)(v5, v1 + v11, v2);
      MEMORY[0x1EEE9AC00](v16);
      *(&v48 - 4) = v48;
      *(&v48 - 3) = v13;
      *(&v48 - 2) = &protocol witness table for Image;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v14(v5, v2);
      if ((v54 & 2) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    v46 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v47 = *(v1 + v15);
    *(v1 + v15) = v46;
    v24 = v46;

    if (v24)
    {
      [v1 addInteraction_];
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v17 = MEMORY[0x1E69E7D40];
  v18 = *MEMORY[0x1E69E7D40] & *v1;
  v19 = *(v18 + 0x400);
  if (*(v1 + v19))
  {
    [v1 removeGestureRecognizer_];
    v20 = *(v1 + v19);
    *(v1 + v19) = 0;

    v18 = *v17 & *v1;
  }

  v21 = *(v18 + 1032);
  if (*(v1 + v21))
  {
    [v1 removeGestureRecognizer_];
    v22 = *(v1 + v21);
    *(v1 + v21) = 0;
  }

LABEL_13:
  v23 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  if (!*(v1 + v23))
  {
    return;
  }

  [v1 removeInteraction_];
  v24 = *(v1 + v23);
  *(v1 + v23) = 0;
LABEL_32:
}

uint64_t specialized CanvasView.isAlmostZoomToFit.getter()
{
  swift_getKeyPath();
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    type metadata accessor for AnyCanvasElementViewController();
    if (swift_dynamicCastClass() && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd), swift_dynamicCastClass()) && (v3 = *(v0 + direct field offset for CanvasView.canvasScrollView)) != 0)
    {
      v4 = v3;
      CanvasElementViewController<>.scaleForZoomToFit.getter();
      v6 = v5;
      [v4 zoomScale];
      v8 = v7;

      if (vabdd_f64(v8, v6) < 0.001)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t specialized LiveEditable.resumeLiveEditingContinuations()()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_liveEditingContinuations;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      swift_continuation_throwingResume();
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

void specialized AsyncCache.cancel(for:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  swift_beginAccess();
  v18 = *(v3 + 112);
  if (*(v18 + 16))
  {

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v20)
    {
      v36 = a2;
      v37 = a3;
      v35 = a1;
      v21 = *(v18 + 56) + 24 * v19;
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      outlined copy of AsyncCache<Data, CGImageRef>.CacheState(*v21, v22, v24);

      if (v24)
      {
        outlined consume of AsyncCache<Data, CGImageRef>.CacheState(v23, v22, 1);
        return;
      }

      v40 = v23;
      if (*(v23 + 16))
      {
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
        v26 = v36;
        if (v27)
        {
          (*(v9 + 16))(v17, *(v23 + 56) + *(v9 + 72) * v25, v8);
          v28 = 0;
        }

        else
        {
          v28 = 1;
        }
      }

      else
      {
        v28 = 1;
        v26 = v36;
      }

      (*(v9 + 56))(v17, v28, 1, v8);
      v29 = (*(v9 + 48))(v17, 1, v8);
      v30 = v37;
      if (v29)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_sScCySo10CGImageRefaSgs5NeverOGSgMd);
      }

      else
      {
        (*(v9 + 16))(v11, v17, v8);
        outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_sScCySo10CGImageRefaSgs5NeverOGSgMd);
        v39 = 0;
        CheckedContinuation.resume(returning:)();
        (*(v9 + 8))(v11, v8);
      }

      specialized Dictionary._Variant.removeValue(forKey:)(v30, v14);
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_sScCySo10CGImageRefaSgs5NeverOGSgMd);
      v31 = v40;
      swift_beginAccess();
      v32 = v35;
      outlined copy of Data._Representation(v35, v26);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v4 + 112);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, 0, 0, v32, v26, isUniquelyReferenced_nonNull_native);
      outlined consume of Data._Representation(v32, v26);
      *(v4 + 112) = v38;
      swift_endAccess();
    }
  }
}

uint64_t specialized AsyncCache.cached(for:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v6 = type metadata accessor for UUID();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[5] = a1;
  v3[6] = a2;

  return MEMORY[0x1EEE6DFA0](specialized AsyncCache.cached(for:), v2, 0);
}

uint64_t specialized AsyncCache.cached(for:)()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[9];
    v3 = v0[10];

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
    if (v6)
    {
      v7 = *(v2 + 56) + 24 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      outlined copy of AsyncCache<Data, CGImageRef>.CacheState(*v7, v8, v10);

      if (v10)
      {

        v11 = v0[1];

        return v11(v8);
      }

      outlined consume of AsyncCache<Data, CGImageRef>.CacheState(v9, v8, 0);
    }

    else
    {
    }
  }

  v13 = v0 + 5;
  v14 = *(v1 + 112);
  if (!*(v14 + 16))
  {
    goto LABEL_14;
  }

  v16 = v0[9];
  v15 = v0[10];

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
  if ((v18 & 1) == 0)
  {

    goto LABEL_14;
  }

  v19 = *(v14 + 56) + 24 * v17;
  v20 = *(v19 + 8);
  v21 = *(v19 + 16);
  v22 = *v19;
  outlined copy of AsyncCache<Data, CGImageRef>.CacheState(*v19, v20, v21);

  v23 = v22;
  if (v21)
  {
    outlined consume of AsyncCache<Data, CGImageRef>.CacheState(v22, v20, 1);
LABEL_14:
    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ScCySo10CGImageRefaSgs5NeverOGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v24 = v0[14];
  v25 = v0[11];
  v0[8] = v23;
  UUID.init()();
  v26 = swift_task_alloc();
  v0[15] = v26;
  v26[2] = v0 + 8;
  v26[3] = v24;
  v26[4] = v25;
  v26[5] = v13;
  v27 = swift_task_alloc();
  v0[16] = v27;
  v27[2] = v25;
  v27[3] = v13;
  v27[4] = v24;
  v28 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AsyncCache<Data, CGImageRef> and conformance AsyncCache<A, B>, &_s8PaperKit10AsyncCacheCy10Foundation4DataVSo10CGImageRefaGMd);
  v29 = swift_task_alloc();
  v0[17] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CGImageRefaSgMd);
  *v29 = v0;
  v29[1] = specialized AsyncCache.cached(for:);

  return MEMORY[0x1EEE6DE18](v0 + 7, &async function pointer to partial apply for specialized closure #1 in AsyncCache.cached(for:), v26, partial apply for specialized closure #2 in AsyncCache.cached(for:), v27, v25, v28, v30);
}

{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[7];

  v2 = v0[1];

  return v2(v1);
}

void specialized AsyncCache.cached(for:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 88);

    MEMORY[0x1EEE6DFA0](specialized AsyncCache.cached(for:), v3, 0);
  }
}

uint64_t specialized ContainerCanvasElementView.screenScaleDidChange()()
{
  v0 = specialized ContainerCanvasElementView.subelementViews.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      (*((*v4 & *v5) + 0x250))();

      ++v3;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void specialized ContainerCanvasElementView.drawingDidChange(newDrawing:)(char *a1)
{
  v2 = v1;
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - v4;
  v6 = type metadata accessor for MergeResult();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = *MEMORY[0x1E69E7D40] & *v2;
  if ((v2[*(v19 + 0x590)] & 1) == 0)
  {
    v53 = v3;
    v54 = v7;
    v55 = v6;
    v56 = v16;
    v20 = *(v19 + 1008);
    swift_beginAccess();
    v21 = *(v14 + 16);
    v57 = v20;
    v51 = v21;
    v52 = v14 + 16;
    v22 = (v21)(v18, &v2[v20], v13);
    MEMORY[0x1EEE9AC00](v22);
    v50 = type metadata accessor for Image(0);
    *(&v48 - 4) = v50;
    v49 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    *(&v48 - 3) = v49;
    *(&v48 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v23 = *(v14 + 8);
    v23(v18, v13);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    v25 = (*(*(v24 - 8) + 48))(v12, 1, v24);
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v26 = v59;
    if (v25 == 1)
    {
      v27 = [v59 strokes];
      type metadata accessor for PKStroke();
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = *(v28 + 16);

      if (v29)
      {
        v31 = v23;
        MEMORY[0x1EEE9AC00](v30);
        *(&v48 - 2) = v26;
        swift_beginAccess();
        Capsule.callAsFunction<A>(_:)();
        swift_endAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v33 = v56;
        if (!Strong)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    v34 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v35 = v58;
    v36 = &v26[v34];
    v37 = v53;
    (*(v58 + 16))(v5, v36, v53);
    swift_beginAccess();
    type metadata accessor for PKDrawingStruct(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    Capsule.merge<A>(_:)();
    (*(v35 + 8))(v5, v37);
    swift_endAccess();
    v38 = MergeResult.hasDeltaFromOther.getter();
    v33 = v56;
    if (v38)
    {
      v39 = *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x558)];
      if (v39)
      {
        v51(v56, &v2[v57], v13);
        v40 = v39;
        specialized CanvasElementDrawingView.merge<A>(_:)(v33);

        v23(v33, v13);
      }
    }

    v31 = v23;
    v41 = MergeResult.hasDeltaFromOriginal.getter();
    (*(v54 + 8))(v9, v55);
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      Strong = v42;
      if ((v41 & 1) == 0)
      {
LABEL_14:

        return;
      }

LABEL_11:
      swift_getKeyPath();
      v61 = Strong;
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v43 = Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v43 + 1);
        ObjectType = swift_getObjectType();
        (*(v44 + 16))(Strong, ObjectType, v44);
        swift_unknownObjectRelease();
      }

      v51(v33, &v2[v57], v13);
      v60 = 4;
      v46 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x7D8))(v33, &v60, v50, v49);
      v60 = 4;
      (*((*v46 & *Strong) + 0x7B0))(&v60);
      v47 = v31(v33, v13);
      (*((*v46 & *Strong) + 0x460))(v47);
      goto LABEL_14;
    }
  }
}

void specialized ContainerCanvasElementView.updateRoundedCorners()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B0))())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = (*((*v2 & *Strong) + 0x450))();

      if (v5)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v17 = v6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd);
          if (swift_dynamicCastClass())
          {
            v7 = 0.0;
            if ((specialized CanvasView.isAlmostZoomToFit.getter() & 1) == 0 && *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_suppressRoundedCorners) != 1)
            {
              [v5 zoomScale];
              v7 = 16.0 / v8;
              [v1 bounds];
              Width = CGRectGetWidth(v19);
              [v1 bounds];
              Height = CGRectGetHeight(v20);
              if (Height < Width)
              {
                Width = Height;
              }

              [v5 zoomScale];
              v12 = Width * v11;
              if (v12 < 80.0)
              {
                v7 = v7 * (1.0 - (80.0 - v12) / 80.0);
              }
            }

            [v1 _continuousCornerRadius];
            if (v13 == v7)
            {
              v14 = v5;
              v5 = v17;
              v17 = v14;
            }

            else
            {
              v16 = v5;
              [v1 _setContinuousCornerRadius_];
              v5 = v17;
              v17 = v16;
            }
          }

          v15 = v17;
        }

        else
        {
          v15 = v5;
        }
      }
    }
  }
}

void specialized ContainerCanvasElementView.updateGestures()()
{
  v1 = v0;
  specialized CanvasElementView.updateGestures()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = MEMORY[0x1E69E7D40];
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

    if (v5)
    {
      v6 = [v5 canvasView];

      if (v6)
      {
        v7 = [v6 drawingGestureRecognizer];

        v17 = [v7 view];
        if (v17)
        {
          v8 = swift_unknownObjectWeakLoadStrong();
          if (!v8 || (v8, (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0))
          {
            v9 = *((*v3 & *v1) + 0x578);
            if (!*(v1 + v9))
            {
              v10 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_rootTapped_];
              v11 = *(v1 + v9);
              *(v1 + v9) = v10;
              v12 = v10;

              if (v12)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                v13 = swift_allocObject();
                *(v13 + 16) = xmmword_1D405CEB0;
                *(v13 + 32) = Int._bridgeToObjectiveC()();
                type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v12 setAllowedTouchTypes_];
              }

              v15 = *(v1 + v9);
              if (!v15 || ([v15 setAllowableMovement_], (v16 = *(v1 + v9)) == 0) || (objc_msgSend(v16, sel_setDelegate_, v1), !*(v1 + v9)))
              {
                __break(1u);
                return;
              }

              [v17 addGestureRecognizer_];
            }
          }
        }
      }
    }
  }
}

uint64_t specialized ContainerCanvasElementView.subelementViews.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x560));
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = [v3 subviews];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v4;
    if (v6 >> 62)
    {
LABEL_20:
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1DA6CE0C0](v9, v6);
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v10 = *(v6 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for AnyCanvasElementView();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x1DA6CD190]();
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v4 = v19;
        }

        while (v8 != v7);
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, (*((*v2 & *Strong) + 0x3C8))(&v19), v13, v19 == 1) && (v14 = *(v1 + *((*v2 & *v1) + 0x568))) != 0)
  {
    v15 = v14;
    v16 = FormFillingView.formFields.getter();

    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = v4;
  specialized Array.append<A>(contentsOf:)(v17);
  return v19;
}

void specialized ContainerCanvasElementView.transformDrawing()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v64 - v10;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x558);
  v14 = *(v1 + v13);
  if (!v14)
  {
    return;
  }

  v67 = v14;
  [v67 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v1 bounds];
  v74.origin.x = v23;
  v74.origin.y = v24;
  v74.size.width = v25;
  v74.size.height = v26;
  v71.origin.x = v16;
  v71.origin.y = v18;
  v71.size.width = v20;
  v71.size.height = v22;
  if (!CGRectEqualToRect(v71, v74))
  {
    v66 = v13;
    v69.a = 1.0;
    v69.b = 0.0;
    v69.c = 0.0;
    v69.d = 1.0;
    v69.tx = 0.0;
    v69.ty = 0.0;
    [v67 setTransform_];
    [v1 bounds];
    [v67 setFrame_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v29 = *((*v12 & *v1) + 0x3F0);
      swift_beginAccess();
      v30 = (*(v9 + 16))(v11, v1 + v29, v8);
      MEMORY[0x1EEE9AC00](v30);
      *(&v64 - 4) = type metadata accessor for Image(0);
      *(&v64 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
      v63 = &protocol witness table for Image;
      swift_getKeyPath();
      Capsule.subscript.getter();
      v12 = MEMORY[0x1E69E7D40];

      (*(v9 + 8))(v11, v8);
      CGAffineTransformMakeRotation(&v69, aBlock.a);
      [v67 setTransform_];
    }

    resize #1 <A>() in ContainerCanvasElementView.transformDrawing()(v67, &v69.a);
    v64 = *&v69.c;
    tx = v69.tx;
    ty = v69.ty;
    v65 = *&v69.a;
    v33 = sqrt(vmuld_n_f64(v69.a, v69.a) + vmuld_lane_f64(v69.b, *&v69.a, 1));
    v34 = *((*v12 & *v1) + 0x3F8);
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v34, v7, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    v35 = *(v9 + 48);
    v36 = v35(v7, 1, v8);
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    v37 = v66;
    if (v36 != 1 || (v38 = *(v1 + v66)) != 0 && *(v38 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink))
    {
      v39 = v33 < 0.5;
    }

    else
    {
      [v1 bounds];
      *&aBlock.c = v64;
      *&aBlock.a = v65;
      aBlock.tx = tx;
      aBlock.ty = ty;
      v73 = CGRectApplyAffineTransform(v72, &aBlock);
      x = v73.origin.x;
      y = v73.origin.y;
      width = v73.size.width;
      height = v73.size.height;
      [v1 bounds];
      if (!CGRect.almostEqual(_:threshold:)(v44, v45, v46, v47, 0.5, x, y, width, height))
      {
        goto LABEL_24;
      }

      v39 = v33 < 0.5;
    }

    if (!v39 && v33 <= 2.0)
    {
      outlined init with copy of Date?(v1 + v34, v4, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
      if (v35(v4, 1, v8) != 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
        return;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
      v49 = *(v1 + v37);
      v50 = MEMORY[0x1E69E7D40];
      if (!v49 || !*(v49 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink))
      {
        v51 = swift_unknownObjectWeakLoadStrong();
        if (v51)
        {
          v52 = v51;
          v53 = (*((*v50 & *v51) + 0x468))();

          [v53 updateTilesForVisibleRect];
        }
      }

LABEL_27:

      return;
    }

LABEL_24:
    v54 = swift_unknownObjectWeakLoadStrong();
    if (v54)
    {
      v55 = v54;
      v56 = (*((*MEMORY[0x1E69E7D40] & *v54) + 0x468))();

      if (v56)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1D405CEB0;
        *(v57 + 32) = v67;
        type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
        v58 = v67;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v60 = swift_allocObject();
        *(v60 + 16) = v58;
        *&aBlock.tx = partial apply for closure #1 in ContainerCanvasElementView.transformDrawing();
        *&aBlock.ty = v60;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        *&aBlock.d = &block_descriptor_201;
        v61 = _Block_copy(&aBlock);
        v62 = v58;

        [v56 resizeTiles:isa completion:v61];

        _Block_release(v61);
        return;
      }
    }

    goto LABEL_27;
  }

  v27 = v67;
}
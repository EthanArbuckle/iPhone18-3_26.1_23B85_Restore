void (*Canvas.updatablePaper2.modify(uint64_t **a1))(void *a1, char a2)
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
  v3[4] = v1;
  v3[5] = Canvas.rootElement.modify(v3);
  return Canvas.updatablePaper2.modify;
}

void Canvas.updatablePaper2.modify(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = 3;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x7B0))(&v5);
  }

  free(v3);
}

uint64_t Canvas.paper2.setter(uint64_t a1)
{
  specialized Canvas.rootElement.setter(a1);
  v2 = type metadata accessor for Capsule();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t (*Canvas.rootElement.modify(uint64_t *a1))()
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
  v5 = *(v1 + direct field offset for Canvas.paperView);
  *(v3 + 32) = v5;
  v6 = v5;
  *(v4 + 40) = CanvasElementView.canvasElement.modify();
  return Canvas.rootElement.modify;
}

uint64_t Canvas.updatablePaper.getter@<X0>(uint64_t a1@<X8>)
{
  CanvasElementView.canvasElement.getter(a1);
  v2 = type metadata accessor for Capsule();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t Canvas.paper.setter(uint64_t a1)
{
  specialized Canvas.paper.setter(a1);
  type metadata accessor for Capsule();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*Canvas.paper.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  type metadata accessor for Capsule();
  v6 = type metadata accessor for Optional();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  Canvas.updatablePaper.getter();
  return Canvas.paper.modify;
}

void Canvas.paper.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized Canvas.paper.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized Canvas.paper.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*Canvas.paper2.modify(uint64_t *a1))()
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
  v5 = *(v1 + direct field offset for Canvas.paperView);
  *(v3 + 32) = v5;
  v6 = v5;
  *(v4 + 40) = CanvasElementView.canvasElement.modify();
  return Canvas.paper2.modify;
}

void Canvas.rootElement.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void Canvas.finalizeTimer.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for Canvas.finalizeTimer);
  *(v1 + direct field offset for Canvas.finalizeTimer) = a1;
}

Swift::Void __swiftcall Canvas.scheduleFinalizeTask()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  [*(v0 + direct field offset for Canvas.finalizeTimer) invalidate];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v3 + 2896);
  *(v6 + 32) = *((v2 & v1) + 0xB60);
  *(v6 + 40) = v5;
  v10[4] = partial apply for closure #1 in Canvas.scheduleFinalizeTask();
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v10[3] = &block_descriptor_175_0;
  v7 = _Block_copy(v10);

  v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:5.0];
  _Block_release(v7);
  v9 = *(v0 + direct field offset for Canvas.finalizeTimer);
  *(v0 + direct field offset for Canvas.finalizeTimer) = v8;
}

uint64_t Canvas.xpcMulticast.getter()
{
  specialized Canvas.xpcMulticast.getter();
}

uint64_t Canvas.xpcMulticast.setter(uint64_t a1)
{
  v3 = direct field offset for Canvas.xpcMulticast;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void Canvas._editingView.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + direct field offset for Canvas._editingView);
  v4 = *(v2 + direct field offset for Canvas._editingView);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t Canvas.canvasElementController.getter()
{
  v1 = *(v0 + direct field offset for Canvas._canvasElementController);
  v2 = v1;
  if (!v1)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
    if (v5)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v2 = (*(v8 + 48))(ObjectType, v8);
      }

      else
      {

        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = v1;
  return v2;
}

void Canvas.canvasElementController.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for Canvas._canvasElementController);
  *(v1 + direct field offset for Canvas._canvasElementController) = a1;
}

BOOL Canvas.allowsDropInteraction.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3C8);
  v2 = v1((&v4 + 1));
  if (BYTE1(v4) == 3)
  {
    return 1;
  }

  (v1)(&v4, v2);
  return v4 == 2;
}

Swift::Void __swiftcall Canvas.updateAfterChangeInSuperviewOrWindow()()
{
  v1 = [v0 window];
  if (v1)
  {

    v2 = [v0 window];
    if (v2 && (v3 = v2, v4 = [v2 screen], v3, v4))
    {

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v0 window];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 screen];

      [v8 potentialEDRHeadroom];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109632;
      v16 = 0;
      if (AnyCanvas.isHDRActive.getter())
      {
        swift_getKeyPath();
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v12 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR))
        {
          v16 = 1;
        }
      }

      *(v15 + 4) = v16;

      *(v15 + 8) = 1024;
      *(v15 + 10) = v5;
      *(v15 + 14) = 2048;
      *(v15 + 16) = v10;
      _os_log_impl(&dword_1D38C4000, v13, v14, "updateAfterChange: %{BOOL}d, %{BOOL}d, %f", v15, 0x18u);
      MEMORY[0x1DA6D0660](v15, -1, -1);
    }

    else
    {
    }

    v17 = Canvas.editingView.getter();
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(ObjectType, v19);

    v21 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x468);
    v22 = v21();
    if (v22)
    {
      v23 = v22;
      if (AnyCanvas.isHDRActive.getter())
      {
        swift_getKeyPath();
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = *(v12 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR);
      }

      else
      {
        v24 = 0;
      }

      [v23 setWantsExtendedDynamicRangeContent_];
    }

    v25 = v21();
    [v25 _layoutSubviews];

    v26 = v21();
    [v26 _didAddDrawingAttachmentView];

    v27 = v21();
    [v27 updateTilesForVisibleRect];
  }
}

double Canvas.insertionPosition.getter()
{
  v1 = [v0 window];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  v3 = v0;
  v4 = Canvas.editingView.getter();
  [v2 bounds];
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  MidX = CGRectGetMidX(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  [v4 convertPoint:v2 fromCoordinateSpace:{MidX, CGRectGetMidY(v57)}];
  v11 = v10;
  v13 = v12;

  v14 = Canvas.editingView.getter();
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x2C0))(v50);
  v44 = v50[1];
  v46 = v50[0];
  v16 = v51;
  v17 = v52;

  (*((*v15 & *v3) + 0x858))(v53);
  if (v54)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vdupq_n_s64(v18);
  *&t1.a = v46;
  *&t1.c = v44;
  t1.tx = v16;
  t1.ty = v17;
  *&t2.a = vbslq_s8(v19, xmmword_1D4059320, v53[0]);
  *&t2.c = vbslq_s8(v19, xmmword_1D4059310, v53[1]);
  *&t2.tx = vbicq_s8(v53[2], v19);
  CGAffineTransformConcat(&v47, &t1, &t2);
  t1 = v47;
  CGAffineTransformInvert(&t2, &t1);
  a = t2.a;
  b = t2.b;
  c = t2.c;
  d = t2.d;
  tx = t2.tx;
  ty = t2.ty;
  t1 = t2;
  v55.x = v11;
  v55.y = v13;
  v45 = CGPointApplyAffineTransform(v55, &t1).x;
  v26 = Canvas.editingView.getter();
  [v26 bounds];
  v42 = v28;
  v43 = v27;
  v30 = v29;
  v32 = v31;

  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v58.origin.y = v42;
  v58.origin.x = v43;
  v58.size.width = v30;
  v58.size.height = v32;
  v59 = CGRectApplyAffineTransform(v58, &t1);
  v33 = v59.origin.x;
  v34 = v59.origin.y;
  v35 = v59.size.width;
  v36 = v59.size.height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = v33;
  v60.origin.y = v34;
  v60.size.width = v35;
  v60.size.height = v36;
  MaxX = CGRectGetMaxX(v60);
  v39 = v45;
  if (MinX > v45)
  {
    v39 = MinX;
  }

  if (v39 >= MaxX)
  {
    v40 = MaxX;
  }

  else
  {
    v40 = v39;
  }

  v61.origin.x = v33;
  v61.origin.y = v34;
  v61.size.width = v35;
  v61.size.height = v36;
  CGRectGetMinY(v61);
  v62.origin.x = v33;
  v62.origin.y = v34;
  v62.size.width = v35;
  v62.size.height = v36;
  CGRectGetMaxY(v62);

  return v40;
}

CGFloat Canvas.modelCanvasWidth.getter()
{
  v1 = v0;
  v2 = Canvas.editingView.getter();
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(v27);
  v20 = v27[1];
  v22 = v27[0];
  v4 = v28;
  v5 = v29;

  (*((*v3 & *v1) + 0x858))(v30);
  if (v31)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  *&t1.a = v22;
  *&t1.c = v20;
  t1.tx = v4;
  t1.ty = v5;
  *&t2.a = vbslq_s8(v7, xmmword_1D4059320, v30[0]);
  *&t2.c = vbslq_s8(v7, xmmword_1D4059310, v30[1]);
  *&t2.tx = vbicq_s8(v30[2], v7);
  CGAffineTransformConcat(&v24, &t1, &t2);
  t1 = v24;
  CGAffineTransformInvert(&t2, &t1);
  tx = t2.tx;
  ty = t2.ty;
  v21 = *&t2.c;
  v23 = *&t2.a;
  v10 = Canvas.editingView.getter();
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  *&t1.a = v23;
  *&t1.c = v21;
  t1.tx = tx;
  t1.ty = ty;
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  v33 = CGRectApplyAffineTransform(v32, &t1);
  return v33.size.width;
}

Swift::Bool __swiftcall Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(CGPoint a1)
{
  v2 = v1;
  y = a1.y;
  x = a1.x;
  v5 = *(v1 + direct field offset for Canvas.paperView);
  v6 = ContainerCanvasElementView.subelementViews.getter();

  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      v12 = closure #1 in Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(&v15, v2, x, y);

      if (v12)
      {

        goto LABEL_19;
      }

      ++v8;
      if (v11 == i)
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

  v13 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v13)
  {
    v13 = [v13 hitTest:0 withEvent:{x, y}];
    if (v13)
    {

LABEL_19:
      LOBYTE(v13) = 1;
    }
  }

  return v13;
}

__n128 Canvas.visibleBoundsOverride.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Canvas.visibleBoundsOverride;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 Canvas.visibleBoundsOverride.setter(uint64_t a1)
{
  v3 = v1 + direct field offset for Canvas.visibleBoundsOverride;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

void Canvas.selectedTextRange.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v6)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = CanvasElementResizeView.resizingCanvasElements.getter();

  v36 = v5;
  v37 = a1;
  if (v8 >> 62)
  {
LABEL_22:
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v38 = v8 & 0xFFFFFFFFFFFFFF8;
      v39 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v39)
        {
          v11 = MEMORY[0x1DA6CE0C0](v10, v8);
        }

        else
        {
          if (v10 >= *(v38 + 16))
          {
            goto LABEL_21;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x318);
        v15 = v14();
        if (v15)
        {
          v16 = *(v15 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
          v17 = v8;
          v18 = v15;
          v19 = v16;

          v8 = v17;
          if (v16)
          {
            break;
          }
        }

        ++v10;
        if (v13 == v9)
        {
          goto LABEL_23;
        }
      }

      v20 = v14();
      if (!v20 || (v21 = *(v20 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView), v22 = v20, v23 = v21, v22, !v21))
      {

        goto LABEL_24;
      }

      v24 = [v23 selectedRange];
      v26 = v25;

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVG_SnySiGtMd);
      v28 = *(v27 + 48);
      (*((*MEMORY[0x1E69E7D40] & *v12) + 0xE8))();
      type metadata accessor for TextBox(0);
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
      v29 = v37;
      WeakRef.init(id:)();

      v30 = &v24[v26];
      if (__OFADD__(v24, v26))
      {
        __break(1u);
      }

      else if (v30 >= v24)
      {
        v31 = (v29 + v28);
        *v31 = v24;
        v31[1] = v30;
        (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
        return;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }

LABEL_23:

LABEL_24:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVG_SnySiGtMd);
  v33 = *(*(v32 - 8) + 56);
  v34 = v32;
  v35 = v37;

  v33(v35, 1, 1, v34);
}

void Canvas.presentSubelement<A>(_:presentationViewController:)(void *a1, void *a2, uint64_t a3)
{
  v36 = a2;
  v5 = (*MEMORY[0x1E69E7D40] & *v3);
  v6 = *((*a1 & *MEMORY[0x1E69E7D40]) + 0x3D8);
  v7 = *((*a1 & *MEMORY[0x1E69E7D40]) + 0x3E0);
  v8 = type metadata accessor for Capsule();
  v37 = type metadata accessor for Optional();
  v9 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v32 - v10;
  v32 = v6;
  v33 = v7;
  v34 = a3;
  type metadata accessor for CanvasElementViewController();
  v12 = v5[121];
  v13 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
  v35 = v3;
  v12(aBlock);
  v14 = v36;
  v15 = CanvasElementViewController.__allocating_init(context:editingMode:allowMediaCanvasElements:transparentBackground:isImageAnalysisEnabled:)(v13, aBlock, 1, 0, 1);
  CanvasElementView.canvasElement.getter(v11);
  (*(*(v8 - 8) + 56))(v11, 0, 1, v8);
  specialized CanvasElementViewController.paper.setter(v11);
  (*(v9 + 8))(v11, v37);
  [v15 setModalPresentationStyle_];
  v16 = [v14 view];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tintColor];

    if (v18)
    {
      CanvasElementViewController.createNavigationBack(tintColor:)(v18);

      v19 = swift_allocObject();
      v20 = v5[362];
      v19[2] = v20;
      v21 = v5[363];
      v19[3] = v21;
      v22 = v5[364];
      v19[4] = v22;
      v19[5] = v15;
      aBlock[4] = partial apply for closure #1 in Canvas.presentSubelement<A>(_:presentationViewController:);
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_162;
      v23 = _Block_copy(aBlock);
      v24 = v15;

      [v14 presentViewController:v24 animated:1 completion:v23];
      _Block_release(v23);
      aBlock[0] = CanvasElementViewController.publisher.getter();
      v25 = swift_allocObject();
      v26 = v35;
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v28 = v32;
      v29 = v33;
      v27[2] = v20;
      v27[3] = v28;
      v27[4] = v21;
      v27[5] = v22;
      v30 = v34;
      v27[6] = v29;
      v27[7] = v30;
      v27[8] = v25;
      type metadata accessor for AnyPublisher();
      swift_getWitnessTable();
      v31 = Publisher<>.sink(receiveValue:)();

      *(v26 + direct field offset for Canvas.childViewControllerCancellable) = v31;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *Canvas.selectableElements.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v49 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v53 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v64 = v2;
  v65 = v3;
  v20 = *((v3 & v2) + 0xB50);
  v21 = *((v3 & v2) + 0xB58);
  v22 = type metadata accessor for Capsule();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  CanvasElementView.canvasElement.getter(&v49 - v24);
  v71 = v20;
  v72 = v21;
  v73 = *((v65 & v64) + 0xB60);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v23 + 8))(v25, v22);
  v26 = *(v54 + 16);
  v51 = v19;
  v26(v66, v19, v15);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v52 = v15;
  v27 = v63;
  dispatch thunk of Sequence.makeIterator()();
  v28 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v29 = v50;
  v66 = v28;
  dispatch thunk of IteratorProtocol.next()();
  v30 = v29;
  v64 = v27[6];
  v65 = v27 + 6;
  if ((v64)(v29, 1, v10) == 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v34 = v27[4];
    v33 = v27 + 4;
    v62 = v34;
    v63 = v33 - 3;
    v35 = v59;
    v60 = (v58 + 32);
    v61 = (v58 + 48);
    v31 = MEMORY[0x1E69E7CC0];
    v55 = v1;
    v36 = v57;
    do
    {
      v39 = v30;
      (v62)(v36, v30, v10);
      v40 = v68;
      closure #1 in Canvas.selectableElements.getter(v36, v68);
      (*v63)(v36, v10);
      if ((*v61)(v40, 1, v35) == 1)
      {
        v37 = v10;
        v38 = v33;
        outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      }

      else
      {
        v41 = v33;
        v42 = v10;
        v43 = v35;
        v44 = *v60;
        v45 = v56;
        (*v60)(v56, v40, v43);
        v44(v67, v45, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v47 = *(v31 + 2);
        v46 = *(v31 + 3);
        v37 = v42;
        if (v47 >= v46 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v31);
        }

        v38 = v41;
        *(v31 + 2) = v47 + 1;
        v48 = v59;
        v44(&v31[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47], v67, v59);
        v35 = v48;
        v36 = v57;
      }

      dispatch thunk of IteratorProtocol.next()();
      v30 = v39;
      v33 = v38;
      v10 = v37;
    }

    while ((v64)(v39, 1, v37) != 1);
  }

  (*(v53 + 8))(v69, v70);
  (*(v54 + 8))(v51, v52);
  return v31;
}

uint64_t Canvas.selectableStrokes.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *((v2 & v1) + 0xB50);
  v6 = *((v2 & v1) + 0xB58);
  v7 = type metadata accessor for Capsule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  CanvasElementView.canvasElement.getter(v14);
  v33 = v6;
  v34 = v5;
  v37 = v5;
  v38 = v6;
  v39 = *((v2 & v1) + 0xB60);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v18 = *(v8 + 8);
  v36 = v7;
  v32 = v8 + 8;
  v18(v14, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = v30;
    CanvasElementView.canvasElement.getter(v30);
    v24 = v34;
    v23 = v35;
    v25 = v33;
    Ref.subscript.getter();
    v18(v22, v36);
    (*(v20 + 8))(v17, v19);
    v26 = v31;
    CanvasElementView.canvasElement.getter(v31);
    v27 = PKDrawingStruct.allStrokes<A>(in:)(v26, v24, v25);
    v18(v26, v36);
    _s8PaperKit0A6MarkupVWOhTm_1(v23, type metadata accessor for PKDrawingStruct);
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g81Kit6CanvasC17selectableStrokes33_A4518BE304181191DE73703BAA1E0F8FLLSay9Coherence7ke6VyAF10fz4AA12ij12OGGGvgAnF0N0Z8AMGXEfU_Tf1cn_n(v27);

    return v28;
  }
}

BOOL Canvas.hasSelectableContent.getter()
{
  v0 = *(Canvas.selectableElements.getter() + 2);

  if (v0)
  {
    return 1;
  }

  v2 = *(Canvas.selectableStrokes.getter() + 16);

  return v2 != 0;
}

Swift::Void __swiftcall Canvas.selectAll()()
{
  v0 = Canvas.selectableElements.getter();
  v1 = Canvas.selectableStrokes.getter();
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v0);

  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v1);

  AnyCanvas.selection.setter(v2, v3, 6, 0);
}

Swift::Void __swiftcall Canvas._copyAll()()
{
  Canvas.selectAll()();
  [v0 copy_];
  v1 = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7CD0];

  AnyCanvas.selection.setter(v1, v2, 6, 0);
}

id Canvas.isRulerActive.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 rulerEnabled];

  return v3;
}

void Canvas.isRulerActive.setter(char a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x468))();
  [v3 setRulerEnabled_];
}

void (*Canvas.isRulerActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = Canvas.isRulerActive.getter() & 1;
  return Canvas.isRulerActive.modify;
}

void Canvas.isRulerActive.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  [v2 setRulerEnabled_];
}

uint64_t Canvas.tool.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PKInkingTool.InkType();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKInk();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x468))(v9);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 ink];

    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
    PKInk.tool.getter(&v19);
    (*(v8 + 8))(v11, v7);
    return outlined init with take of PaperKitHashable(&v19, a1);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    (*(v4 + 104))(v6, *MEMORY[0x1E6978328], v3);
    v16 = [objc_opt_self() blackColor];
    PKInk.init(_:color:)();
    v17 = type metadata accessor for PKInkingTool();
    v18 = MEMORY[0x1E6978370];
    a1[3] = v17;
    a1[4] = v18;
    __swift_allocate_boxed_opaque_existential_1(a1);
    result = PKInkingTool.init(ink:width:)();
    if (*(&v20 + 1))
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(&v19, &_s9PencilKit6PKTool_pSgMd);
    }
  }

  return result;
}

uint64_t Canvas.tool.setter(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PKInk();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  Canvas.tool.getter(v56);
  v15 = v57;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  PKTool.ink.getter(v15, v14);
  isa = PKInk._bridgeToObjectiveC()().super.isa;
  v17 = *(v5 + 8);
  v17(v14, v4);
  v18 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  PKTool.ink.getter(v18, v12);
  v19 = PKInk._bridgeToObjectiveC()().super.isa;
  v53 = v4;
  v17(v12, v4);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKInk);
  LOBYTE(v18) = static NSObject.== infix(_:_:)();

  v20 = __swift_destroy_boxed_opaque_existential_0(v56);
  if ((v18 & 1) == 0)
  {
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x468);
    v22 = (v21)(v20);
    if (v22)
    {
      v23 = v22;
      v24 = v55[3];
      __swift_project_boxed_opaque_existential_1(v55, v24);
      PKTool.ink.getter(v24, v14);
      v25 = PKInk._bridgeToObjectiveC()().super.isa;
      v17(v14, v53);
      [v23 setInk_];
    }

    v26 = v21();
    v27 = v54;
    if (v26)
    {
      v28 = v26;
      v29 = [v26 allowsFingerDrawing];

      if (v29)
      {
        v51 = v2;
        Canvas.tool.getter(v56);
        v30 = v57;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v31 = v52;
        PKTool.ink.getter(v30, v52);
        v32 = PKInk._bridgeToObjectiveC()().super.isa;
        v33 = [(objc_class *)v32 identifier];

        if (!v33)
        {
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = MEMORY[0x1DA6CCED0](v34);
        }

        v35 = v31;
        v36 = v53;
        v17(v35, v53);
        v37 = v55[3];
        __swift_project_boxed_opaque_existential_1(v55, v37);
        v38 = v33;
        PKTool.ink.getter(v37, v27);
        v39 = PKInk._bridgeToObjectiveC()().super.isa;
        v40 = [(objc_class *)v39 identifier];

        if (!v40)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = MEMORY[0x1DA6CCED0](v41);
        }

        v17(v27, v36);
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
        v45 = v40;

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        if (v42 == v46 && v44 == v48)
        {

          __swift_destroy_boxed_opaque_existential_0(v56);
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          __swift_destroy_boxed_opaque_existential_0(v56);
          if ((v49 & 1) == 0)
          {
            AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
          }
        }
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

void (*Canvas.tool.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  Canvas.tool.getter(v3);
  return Canvas.tool.modify;
}

void Canvas.tool.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of FindResult(*a1, (v2 + 5));
    Canvas.tool.setter(v2 + 5);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    Canvas.tool.setter(*a1);
  }

  free(v2);
}

uint64_t Canvas.publisher.getter()
{
  return Canvas.publisher.getter();
}

{
  v1 = v0;
  swift_unknownObjectWeakInit();

  type metadata accessor for Capsule();
  type metadata accessor for Canvas.PaperViewCanvasPublisher();
  swift_getWitnessTable();
  return AnyPublisher.init<A>(_:)();
}

id Canvas.mergeCanvasState(_:)()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd);
  type metadata accessor for CanvasState(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState);
  Capsule.merge<A>(_:)();
  swift_endAccess();
  return [*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
}

Swift::Void __swiftcall Canvas.stopCheckingForOldEraserStrokes(index:)(Swift::Int index)
{
  if (*(v1 + direct field offset for Canvas.eraserCheckingIndex) == index)
  {
    v2 = v1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D38C4000, v4, v5, "Stopped checking for old eraser strokes", v6, 2u);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    [*(v2 + direct field offset for Canvas.removeOldEraserStrokesTimer) invalidate];
    v7 = *(v2 + direct field offset for Canvas.removeOldEraserStrokesTimer);
    *(v2 + direct field offset for Canvas.removeOldEraserStrokesTimer) = 0;
  }
}

Swift::Void __swiftcall Canvas.removeOldEraserStrokes()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  Canvas.removeEraserStrokesCreatedBefore(_:)(v6);
  v7(v6, v0);
}

uint64_t Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1)
{
  v40 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = type metadata accessor for Date();
  v34 = *(v4 - 8);
  v37 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v38 = v2;
  v39 = v3;
  v36 = *((v3 & v2) + 0xB50);
  v35 = *((v3 & v2) + 0xB58);
  v33 = type metadata accessor for Capsule();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v32 = &v29 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  CanvasElementView.canvasElement.getter(v11);
  v17 = *(v7 + 32);
  v18 = v33;
  v17(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v33);
  v19 = v34;
  v20 = v6;
  v21 = v4;
  (*(v34 + 16))(v20, v40, v4);
  v22 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v23 = v19;
  v24 = (v8 + *(v19 + 80) + v22) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v35;
  *(v25 + 4) = v36;
  *(v25 + 5) = v26;
  *(v25 + 6) = *((v39 & v38) + 0xB60);
  *(v25 + 7) = v16;
  v17(&v25[v22], v30, v18);
  (*(v23 + 32))(&v25[v24], v31, v21);
  v27 = v32;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v25);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_sScPSgMd);
}

uint64_t Canvas.dropSessionFromCurrentCanvas(session:)(void *a1)
{
  swift_getObjectType();
  v3 = [a1 localDragSession];
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v10, &_sypSgMd);
    goto LABEL_10;
  }

  v4 = [v3 localContext];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v6 = 0;
    return v6 & 1;
  }

  type metadata accessor for Canvas();
  v5 = v1;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

void Canvas.dropFrame(session:)(void *a1@<X0>, double *a2@<X8>)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v56 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = *((v6 & v5) + 0xB50);
  v8 = *((v6 & v5) + 0xB58);
  v9 = type metadata accessor for Capsule();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v12 = type metadata accessor for UTType();
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0.0;
  if (Canvas.dropSessionFromCurrentCanvas(session:)(a1))
  {
    goto LABEL_36;
  }

  v16 = Canvas.editingView.getter();
  [a1 locationInView_];
  v18 = v17;
  v20 = v19;

  v21 = Canvas.editingView.getter();
  AnyCanvasElementView.paperBoundsTransform()(&v60);
  v59 = v60;
  CGAffineTransformInvert(&v58, &v59);
  v59 = v58;
  v61.x = v18;
  v61.y = v20;
  v22 = CGPointApplyAffineTransform(v61, &v59);

  v23 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_35:

LABEL_36:
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    goto LABEL_37;
  }

LABEL_4:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1DA6CE0C0](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v25 = *(v24 + 32);
  }

  v26 = v25;

  v27 = [v26 itemProvider];

  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  if (v27)
  {
    [v27 preferredPresentationSize];
    if (v33 != 0.0 || v32 != 0.0)
    {
      [v27 preferredPresentationSize];
      if (v34 >= 64.0)
      {
        if (v34 > v35)
        {
          v37 = v34;
        }

        else
        {
          v37 = v35;
        }

        v38 = 480.0 / v37;
        v36 = 1.0;
        if (v38 < 1.0)
        {
          v36 = v38;
        }
      }

      else
      {
        v36 = 1.0;
        v35 = 240.0;
        v34 = 240.0;
      }

      v29 = v36 * v34;
      v30 = v36 * v35;
    }

    v54 = v27;
    if (v29 != 0.0 || v30 != 0.0)
    {
      goto LABEL_33;
    }

    v53 = v7;
    static UTType.utf8PlainText.getter();
    v39 = UTType.identifier.getter();
    v41 = v40;
    v55 = *(v55 + 8);
    (v55)(v14, v12);
    v42 = MEMORY[0x1DA6CCED0](v39, v41);

    LODWORD(v41) = [v54 hasItemConformingToTypeIdentifier_];

    if (!v41)
    {
      static UTType.image.getter();
      v45 = UTType.identifier.getter();
      v47 = v46;
      (v55)(v14, v12);
      v48 = MEMORY[0x1DA6CCED0](v45, v47);

      v49 = v54;
      LODWORD(v47) = [v54 hasItemConformingToTypeIdentifier_];

      if (v47 && ![v49 hasItemConformingToTypeIdentifier_])
      {
        v29 = 240.0;
        v30 = 240.0;
      }

      else
      {
        v50 = specialized static LinkLayout.canHandle(itemProvider:)(v49);
        if (v50)
        {
          v29 = 327.0;
        }

        else
        {
          v29 = 240.0;
        }

        if (v50)
        {
          v30 = 72.0;
        }

        else
        {
          v30 = 240.0;
        }
      }

      goto LABEL_32;
    }

    if (one-time initialization token for textBoxDefaultPointSize == -1)
    {
LABEL_22:
      v30 = UnknownCanvasElementView.flags.modify(v43, v44);
      v29 = 2.0;
LABEL_32:
      v7 = v53;
LABEL_33:
      v15 = v22.x - v29 * 0.5;
      v28 = v22.y - v30 * 0.5;
      v51 = CanvasElementView.canvasElement.getter(v11);
      MEMORY[0x1EEE9AC00](v51);
      *(&v52 - 4) = v7;
      *(&v52 - 3) = v8;
      *(&v52 - 2) = *(v56 + 2912);
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v57 + 8))(v11, v9);
      v31 = -v59.a;
      goto LABEL_37;
    }

LABEL_40:
    v43 = swift_once();
    goto LABEL_22;
  }

LABEL_37:
  *a2 = v15;
  a2[1] = v28;
  a2[2] = v29;
  a2[3] = v30;
  a2[4] = v31;
}

uint64_t Canvas.isValidDropPoint(dropLocation:)(double a1, double a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  [v2 convertPoint:v5 toCoordinateSpace:{a1, a2}];
  v8 = v7;
  v10 = v9;
  v11 = [v6 hitAttachment_];
  if (v11)
  {
    v12 = v11;

    v13 = 1;
    v6 = v12;
  }

  else
  {
    v13 = [v6 insertAttachmentIfInBlankSpace_];
  }

  return v13;
}

id Canvas.updateScribbleIteractions(for:)(id result)
{
  if (!*(v1 + direct field offset for Canvas.scribbleInteraction))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  result = [result addInteraction_];
  if (!*(v1 + direct field offset for Canvas.indirectScribbleInteraction))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [v2 addInteraction_];
}

uint64_t Canvas.harmonizeCanvasElement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v58 = a1;
  v51 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v55 = type metadata accessor for CRAssetOrData();
  v57 = *(v55 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v47 - v19;
  v52 = a2;
  v53 = a3;
  v21 = type metadata accessor for Capsule();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v25 = swift_allocBox();
  v27 = v26;
  (*(v22 + 16))(v24, v58, v21);
  if (swift_dynamicCast())
  {
    v58 = v25;
    (*(v12 + 56))(v20, 0, 1, v11);
    (*(v12 + 32))(v27, v20, v11);
    (*(v12 + 16))(v14, v27, v11);
    swift_getKeyPath();
    v28 = v56;
    Capsule.subscript.getter();

    (*(v12 + 8))(v14, v11);
    v29 = v57;
    if ((*(v57 + 48))(v28, 1, v55) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit13CRAssetOrDataOSgMd);
    }

    else
    {
      v31 = v48;
      _s8PaperKit13CRAssetOrDataOWObTm_0(v28, v48, type metadata accessor for CRAssetOrData);
      v32 = type metadata accessor for TaskPriority();
      v33 = v50;
      (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
      v34 = v47;
      _s8PaperKit0A6MarkupVWOcTm_1(v31, v47, type metadata accessor for CRAssetOrData);
      type metadata accessor for MainActor();
      v35 = v49;
      v36 = v58;

      v37 = static MainActor.shared.getter();
      v38 = (*(v29 + 80) + 88) & ~*(v29 + 80);
      v39 = (v15 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E85E0];
      v40[2] = v37;
      v40[3] = v41;
      v42 = v51;
      v43 = v52;
      v40[4] = *(v51 + 2896);
      v40[5] = v43;
      v40[6] = *(v42 + 2904);
      v44 = *(v42 + 2912);
      v46 = v53;
      v45 = v54;
      v40[7] = v44;
      v40[8] = v46;
      v40[9] = v45;
      v40[10] = v35;
      _s8PaperKit13CRAssetOrDataOWObTm_0(v34, v40 + v38, type metadata accessor for CRAssetOrData);
      *(v40 + v39) = v36;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in Canvas.harmonizeCanvasElement<A>(_:), v40);

      _s8PaperKit0A6MarkupVWOhTm_1(v31, type metadata accessor for CRAssetOrData);
    }
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    return swift_deallocBox();
  }
}

uint64_t Canvas.harmonizeImage(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *MEMORY[0x1E69E7D40] & *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  v3[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for CRAssetOrData();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[19] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[20] = v7;
  v3[21] = v6;

  return MEMORY[0x1EEE6DFA0](Canvas.harmonizeImage(_:), v7, v6);
}

void Canvas.harmonizeImage(_:)()
{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

    goto LABEL_5;
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v2 + direct field offset for Canvas.paperView);
  v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, &v9[v10], v7);
  swift_getKeyPath();
  v11 = v1;
  Capsule.subscript.getter();

  (*(v6 + 8))(v5, v7);
  v12 = (*(v4 + 48))(v8, 1, v3);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  if (v12 == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit13CRAssetOrDataOSgMd);
LABEL_5:
    type metadata accessor for Canvas.CanvasHarmonizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = *(v0 + 8);

    v16();
    return;
  }

  _s8PaperKit13CRAssetOrDataOWObTm_0(*(v0 + 96), *(v0 + 144), type metadata accessor for CRAssetOrData);
  [v14 bounds];
  Width = CGRectGetWidth(v29);
  *(v0 + 176) = Width;
  [v14 bounds];
  Height = CGRectGetHeight(v30);
  *(v0 + 184) = Height;
  if (Width > Height)
  {
    v19 = Width;
  }

  else
  {
    v19 = Height;
  }

  v20 = [v14 window];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 screen];

    [v22 scale];
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  *(v0 + 192) = v24;
  v25 = v19 * v24;
  if (COERCE__INT64(fabs(v19 * v24)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = Canvas.harmonizeImage(_:);

  CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(v26, 1, 1);
}

uint64_t Canvas.harmonizeImage(_:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](Canvas.harmonizeImage(_:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](Canvas.harmonizeImage(_:), v4, v3);
}

uint64_t Canvas.harmonizeImage(_:)()
{
  if (*(v0 + 208))
  {
    v2 = *(v0 + 184);
    v1 = *(v0 + 192);
    v3 = *(v0 + 176);
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    *v4 = v0;
    v4[1] = Canvas.harmonizeImage(_:);
    if (v3 > v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)((v1 * v5), 1, 1);
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 72);

    type metadata accessor for Canvas.CanvasHarmonizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    _s8PaperKit0A6MarkupVWOhTm_1(v7, type metadata accessor for CRAssetOrData);

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 208);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    static TaskPriority.userInitiated.getter();
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = *(v4 + 2896);
    *(v6 + 48) = *(v4 + 2912);
    *(v6 + 56) = v1;
    *(v6 + 64) = v2;
    v7 = v1;
    v8 = v2;
    v9 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ10Foundation4DataVSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in Canvas.harmonizeImage(_:), v6);
    *(v0 + 232) = v9;
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScPSgMd);
    v10 = swift_task_alloc();
    *(v0 + 240) = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    *v10 = v0;
    v10[1] = Canvas.harmonizeImage(_:);
    v13 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 40, v9, v11, v12, v13);
  }

  else
  {

    v14 = *(v0 + 144);
    v15 = *(v0 + 72);

    type metadata accessor for Canvas.CanvasHarmonizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();

    _s8PaperKit0A6MarkupVWOhTm_1(v14, type metadata accessor for CRAssetOrData);

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = Canvas.harmonizeImage(_:);
  }

  else
  {
    v5 = Canvas.harmonizeImage(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{

  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[9];
  if (v0[6] >> 60 == 15)
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v0[18], type metadata accessor for CRAssetOrData);

    v5 = 1;
  }

  else
  {
    CRContext.assetManager.getter();
    CRAsset.init(data:assetManager:)();

    _s8PaperKit0A6MarkupVWOhTm_1(v3, type metadata accessor for CRAssetOrData);
    v5 = 0;
  }

  v6 = v0[7];
  v7 = type metadata accessor for CRAsset();
  (*(*(v7 - 8) + 56))(v6, v5, 1, v7);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[9];

  _s8PaperKit0A6MarkupVWOhTm_1(v3, type metadata accessor for CRAssetOrData);

  v5 = v0[1];

  return v5();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g81Kit6CanvasC17selectableStrokes33_A4518BE304181191DE73703BAA1E0F8FLLSay9Coherence7ke6VyAF10fz4AA12ij12OGGGvgAnF0N0Z8AMGXEfU_Tf1cn_n(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v33 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = v33 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v41 = v9;
  v33[1] = v1;
  v52 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v52;
  v12 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v42 = v7;
  v43 = v3;
  v38 = v3 + 8;
  v39 = v3 + 16;
  v36 = a1;
  v37 = v7 + 32;
  v34 = a1 + 64;
  v35 = v10;
  v40 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v50 = 1 << v14;
    v51 = v14 >> 6;
    v17 = *(a1 + 36);
    v48 = v15;
    v49 = v17;
    v18 = *(a1 + 48);
    v19 = v43;
    v20 = *(v43 + 16);
    v21 = v45;
    v22 = v47;
    v20(v45, v18 + *(v43 + 72) * v14, v47);
    v20(v46, v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v23 = v41;
    WeakRef.init<A>(_:)();
    (*(v19 + 8))(v21, v22);
    v52 = v11;
    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
      v11 = v52;
    }

    *(v11 + 16) = v25 + 1;
    result = (*(v42 + 32))(v11 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, v23, v44);
    a1 = v36;
    v16 = 1 << *(v36 + 32);
    v12 = v40;
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v26 = *(v40 + 8 * v51);
    if ((v26 & v50) == 0)
    {
      goto LABEL_23;
    }

    if (v49 != *(v36 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v14 & 0x3F));
    if (v27)
    {
      v16 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v51 << 6;
      v29 = v51 + 1;
      v30 = (v34 + 8 * v51);
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v14, v49, 0);
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v14, v49, 0);
    }

LABEL_4:
    v15 = v48 + 1;
    v14 = v16;
    if (v48 + 1 == v35)
    {
      return v11;
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

double Canvas.visibleBoundsInModelSpace.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x450))();
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = Canvas.editingView.getter();
  (*((*v2 & *v5) + 0x2C0))(v55);
  v48 = v55[1];
  v50 = v55[0];
  v6 = v56;
  v7 = v57;

  (*((*v2 & *v1) + 0x858))(v58);
  if (v59)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(v8);
  *&t1.a = v50;
  *&t1.c = v48;
  t1.tx = v6;
  t1.ty = v7;
  *&t2.a = vbslq_s8(v9, xmmword_1D4059320, v58[0]);
  *&t2.c = vbslq_s8(v9, xmmword_1D4059310, v58[1]);
  *&t2.tx = vbicq_s8(v58[2], v9);
  CGAffineTransformConcat(&v52, &t1, &t2);
  t1 = v52;
  CGAffineTransformInvert(&t2, &t1);
  a = t2.a;
  c = t2.c;
  b = t2.b;
  tx = t2.tx;
  d = t2.d;
  ty = t2.ty;
  v10 = *((*v2 & *v1) + 0x490);
  v11 = v4;
  v10();
  [v11 convertRect:v1 toCoordinateSpace:?];
  v42 = v13;
  v43 = v12;
  v40 = v15;
  v41 = v14;
  v16 = Canvas.editingView.getter();
  [v16 bounds];
  v18 = v17;
  v36 = v20;
  v38 = v19;
  v22 = v21;

  if ((*((*v2 & *v1) + 0x810))())
  {
    [v11 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = v18;
    v31 = v30;

    v60.origin.x = v24;
    v60.origin.y = v26;
    v60.size.width = v28;
    v60.size.height = v31;
    v18 = v29;
    v22 = v22 + CGRectGetHeight(v60);
  }

  else
  {
  }

  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v61.origin.x = v18;
  v61.size.width = v36;
  v61.origin.y = v38;
  v61.size.height = v22;
  v62 = CGRectApplyAffineTransform(v61, &t1);
  y = v62.origin.y;
  x = v62.origin.x;
  width = v62.size.width;
  height = v62.size.height;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v62.origin.y = v42;
  v62.origin.x = v43;
  v62.size.height = v40;
  v62.size.width = v41;
  v64 = CGRectApplyAffineTransform(v62, &t1);
  v63.origin.y = y;
  v63.origin.x = x;
  v63.size.width = width;
  v63.size.height = height;
  *&v32 = CGRectIntersection(v63, v64);

  return v32;
}

uint64_t _s8PaperKit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7ElementRzlufCAA0A0V_Tt0g5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v42 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v55 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v54 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Paper(0);
  v56 = v15;
  v16 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v57 = v16;
  v58 = &protocol witness table for Paper;
  swift_getKeyPath();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v14, 1, v17);
  v48 = v16;
  v49 = v15;
  if (v19 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v20 = MEMORY[0x1E69E7CD0];
    v21 = v53;
    v22 = a1;
  }

  else
  {
    Ref.subscript.getter();
    (*(v18 + 8))(v14, v17);
    v20 = MEMORY[0x1E69E7CD0];
    v59[0] = MEMORY[0x1E69E7CD0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    CROrderedSet.makeIterator()();
    v23 = v45;
    CROrderedSet.Iterator.next()();
    v24 = *(v55 + 48);
    v25 = v46;
    v26 = v24(v23, 1, v46) == 1;
    v27 = v9;
    v21 = v53;
    v22 = a1;
    if (!v26)
    {
      v43 = v11;
      v28 = v55 + 32;
      v54 = *(v55 + 32);
      v55 = v7;
      v29 = v44;
      v30 = v23;
      v31 = v24;
      v32 = v27;
      v33 = (v28 - 24);
      do
      {
        v54(v29, v30, v25);
        specialized Ref<>.getAllStrokes<A>(_:in:)(v59, a1);
        (*v33)(v29, v25);
        CROrderedSet.Iterator.next()();
      }

      while (v31(v30, 1, v25) != 1);
      v20 = v59[0];
      v22 = a1;
      v21 = v53;
      v7 = v55;
      v27 = v32;
      v11 = v43;
    }

    (*(v47 + 8))(v27, v7);
    _s8PaperKit0A6MarkupVWOhTm_1(v11, type metadata accessor for PKDrawingStruct);
  }

  v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g76Kit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7b9RzlufcAE7ke6VyAE10f6VyAA12iJ18OGGAE0M0VyAQGXEfU_Tf1cn_n(v20);

  MEMORY[0x1EEE9AC00](v35);
  v36 = v48;
  *(&v42 - 4) = v49;
  *(&v42 - 3) = v36;
  *(&v42 - 2) = &protocol witness table for Paper;
  swift_getKeyPath();
  v38 = v50;
  v37 = v51;
  Capsule.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v39 = CROrderedSet.map<A>(_:)();
  (*(v52 + 8))(v37, v21);
  v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v39);

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v34);

  (*(*(v38 - 8) + 8))(v22, v38);
  return v40;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6CE0C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6CE0C0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a2;
  v41 = a1;
  v38 = a4;
  v7 = &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd;
  v8 = &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd);
  v37 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v37 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v43 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v8;
      v20 = v7;
      v44 = v5;
      v21 = v18;
LABEL_9:
      v22 = __clz(__rbit64(v15)) | (v21 << 6);
      v23 = v43;
      v24 = *(v43 + 48);
      v25 = type metadata accessor for CRKeyPath();
      v26 = *(v25 - 8);
      v27 = v24 + *(v26 + 72) * v22;
      v28 = v39;
      (*(v26 + 16))(v39, v27, v25);
      v29 = *(*(v23 + 56) + 8 * v22);
      *&v28[*(v42 + 48)] = v29;
      v30 = v28;
      v31 = v45;
      v7 = v20;
      v32 = v20;
      v8 = v19;
      outlined init with take of Range<AttributedString.Index>(v30, v45, v32);
      v33 = v29;
      v34 = v44;
      v35 = v41(v31);
      v5 = v34;
      if (v34)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd);
      }

      if (v35)
      {
        break;
      }

      v15 &= v15 - 1;
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v45, v7);
      v18 = v21;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v36 = v38;
    outlined init with take of Range<AttributedString.Index>(v45, v38, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd);
    return (*(v37 + 56))(v36, 0, 1, v42);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v16)
      {

        return (*(v37 + 56))(v38, 1, 1, v42);
      }

      v15 = *(v12 + 8 * v21);
      ++v18;
      if (v15)
      {
        v19 = v8;
        v20 = v7;
        v44 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v28 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  (*(v11 + 16))(v13, v35, v10, v15);
  v18 = v29;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v19 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v34 = v17;
  v35 = v14;
  v30 = v19;
  dispatch thunk of IteratorProtocol.next()();
  v20 = *(v18 + 48);
  if (v20(v9, 1, v4) == 1)
  {
LABEL_6:
    (*(v28 + 8))(v34, v35);
    v23 = 1;
    v24 = v27;
  }

  else
  {
    v31 = *(v18 + 32);
    v21 = (v18 + 8);
    while (1)
    {
      v31(v6, v9, v4);
      v22 = v32(v6);
      if (v3)
      {
        (*v21)(v6, v4);
        return (*(v28 + 8))(v34, v35);
      }

      if (v22)
      {
        break;
      }

      (*v21)(v6, v4);
      dispatch thunk of IteratorProtocol.next()();
      if (v20(v9, 1, v4) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v28 + 8))(v34, v35);
    v26 = v27;
    v31(v27, v6, v4);
    v24 = v26;
    v23 = 0;
  }

  return (*(v29 + 56))(v24, v23, 1, v4);
}

void specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v11 << 6);
      v13 = *(a3 + 56);
      v18 = *(*(a3 + 48) + 8 * v12);
      v19 = *(v13 + 16 * v12);
      v17 = v19;
      v14 = v18;
      v15 = v17;
      v16 = v20(&v18);
      if (v3)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;

      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v13 = v15;
      v14 = a1(&v15);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Color(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      _s8PaperKit0A6MarkupVWOcTm_1(v12, v10, type metadata accessor for Color);
      v14 = a1(v10);
      if (v3)
      {
        return _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Color);
      }

      if (v14)
      {
        break;
      }

      _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Color);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    _s8PaperKit13CRAssetOrDataOWObTm_0(v10, v18, type metadata accessor for Color);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t specialized ContainerCanvasElement.ensureHasDrawing<A>(in:)(uint64_t a1)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = v28 - v3;
  v4 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  v15 = off_1F4F62930[0];
  v16 = type metadata accessor for Paper(0);
  v32 = v1;
  v28[1] = v16;
  v15();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v14, 1, v17);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  if (v19 == 1)
  {
    v21 = *(MEMORY[0x1E695F050] + 16);
    v33 = *MEMORY[0x1E695F050];
    v34 = v21;
    type metadata accessor for CGRect(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    CRRegister.init(wrappedValue:)();
    v22 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    CROrderedSet.init()();
    UnknownProperties.init()();
    v23 = v29;
    _s8PaperKit0A6MarkupVWOcTm_1(v8, v29, type metadata accessor for PKDrawingStruct);
    v24 = type metadata accessor for CRKeyPath();
    v25 = v31;
    (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
    v26 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);

    MEMORY[0x1DA6CC020](v27, v23, v25, v22, v26);
    (*(v18 + 56))(v11, 0, 1, v17);
    off_1F4F62938(v11);
    return _s8PaperKit0A6MarkupVWOhTm_1(v8, type metadata accessor for PKDrawingStruct);
  }

  return result;
}

uint64_t protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.setter in conformance Canvas<A>(uint64_t a1, uint64_t a2)
{
  specialized Canvas.liveStreamMessenger.setter(a1, a2);

  return swift_unknownObjectRelease();
}

void (*protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.modify in conformance Canvas<A>(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Canvas.liveStreamMessenger.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

void specialized CanvasElementViewController._canvasView.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v18 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility(), v7);

  specialized CanvasElementViewController.updateActionInfoViewVisibility()();
  v9 = type metadata accessor for Image(0);
  v18[0] = v9;
  v10 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v18[1] = v10;
  v18[2] = &protocol witness table for Image;
  swift_getKeyPath();
  v19 = v5;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *&v5[direct field offset for CanvasElementViewController._canvasView];
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v11);
    v18[-4] = v9;
    v18[-3] = v10;
    v18[-2] = &protocol witness table for Image;
    swift_getKeyPath();
    v19 = v5;
    v13 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = direct field offset for CanvasElementViewController._contentViewController;
    swift_beginAccess();
    v15 = [*&v5[v14] view];
    v16 = *&v13[direct field offset for CanvasView.contentView];
    *&v13[direct field offset for CanvasView.contentView] = v15;
    v17 = v15;
    specialized CanvasView.contentView.didset(v16);
  }
}

void specialized CanvasElementViewController.canvasView.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._canvasView;
  v4 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  specialized CanvasElementViewController._canvasView.didset();
}

void specialized CanvasElementViewController.updateActionInfoViewVisibility()()
{
  v1 = specialized CanvasElementViewController.imageView.getter();
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1EEE9AC00](v1);
    type metadata accessor for Image(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = direct field offset for CanvasElementViewController._editingMode;
    if (*(v0 + direct field offset for CanvasElementViewController._editingMode) == 3)
    {
      v5 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v3);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = *(v0 + v4) == 1;
    }

    v6 = direct field offset for ImageElementView.mediaView;
    v7 = *&v2[direct field offset for ImageElementView.mediaView];
    if (v7)
    {
      v8 = [v7 imageAnalysisContext];
      if (v8)
      {
        [v8 setActionInfoViewHidden:v5 animated:0];
        swift_unknownObjectRelease();
      }
    }

    if (v5)
    {
      v9 = *&v2[v6];
      if (v9)
      {
        v10 = [v9 imageAnalysisContext];
        if (v10)
        {
          [v10 setHighlightSelectableItemsEnabled_];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t specialized CanvasElementViewController.canvasSubscribeCancellable.setter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = direct field offset for CanvasElementViewController._canvasSubscribeCancellable;
  if (*(v1 + direct field offset for CanvasElementViewController._canvasSubscribeCancellable))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);

      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = v3;
}

void specialized CanvasElementViewController.analysis.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._analysis;
  v4 = *(v1 + direct field offset for CanvasElementViewController._analysis);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCImageAnalysis);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  specialized CanvasElementViewController._analysis.didset(v10);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility(), v6, v5);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility()()
{
  v1 = v0[3];

  v2 = [v1 pencilKitResponderState];
  v3 = [v2 _currentActiveToolPicker];

  if (v3)
  {
LABEL_2:

    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = type metadata accessor for Image(0);
  *v7 = v8;
  v9 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v7[1] = v9;
  v7[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[2] = v6;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v6 + direct field offset for CanvasElementViewController._canvasView);
  if (v10)
  {
    v3 = v10;
    active = specialized CanvasView._activeToolPicker.getter();
    if (active)
    {
      v12 = active;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *v14 = v8;
      v14[1] = v9;
      v14[2] = &protocol witness table for Image;
      swift_getKeyPath();

      v0[2] = v13;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v13 + direct field offset for CanvasElementViewController._editingMode) == 3;
      [v12 setVisible:v15 forFirstResponder:v3];
      [v12 setVisible:v15 forFirstResponder:v13];
    }

    goto LABEL_2;
  }

LABEL_3:
  v4 = v0[1];

  return v4();
}

id specialized CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v2 = v1;
  v345 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v329 = &v320[-v5];
  v6 = type metadata accessor for Image(0);
  v325 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v326 = v8;
  v327 = &v320[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v333 = &v320[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v332 = &v320[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v320[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd);
  v334 = *(v15 - 8);
  v335 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v328 = &v320[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  *&v348 = &v320[-v18];
  v19 = type metadata accessor for CRKeyPath();
  v337 = *(v19 - 8);
  v338 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v320[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v336 = &v320[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v320[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v331 = &v320[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v354 = &v320[-v32];
  MEMORY[0x1EEE9AC00](v31);
  v339 = &v320[-v33];
  v349 = v6;
  v355 = v6;
  v350 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v356 = v350;
  v357 = &protocol witness table for Image;
  swift_getKeyPath();
  v34 = direct field offset for CanvasElementViewController._$observationRegistrar;
  v358 = v2;
  v35 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  v351 = v34;
  v352 = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = direct field offset for CanvasElementViewController._canvasView;
  v353 = v2;
  if (!*&v2[direct field offset for CanvasElementViewController._canvasView] || (*(v28 + 48))(a1, 1, v27) != 1)
  {
    outlined init with copy of Date?(a1, v26, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    }

    v322 = v14;
    v323 = v22;
    v43 = v339;
    v44 = (*(v28 + 32))();
    v45 = v28;
    MEMORY[0x1EEE9AC00](v44);
    v47 = v349;
    v46 = v350;
    *&v320[-32] = v349;
    *&v320[-24] = v46;
    *&v320[-16] = &protocol witness table for Image;
    swift_getKeyPath();
    v48 = v353;
    v358 = v353;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v324 = v36;
    v50 = *&v48[v36];
    v330 = v45;
    if (v50)
    {
      v344 = direct field offset for Canvas.paperView;
      v51 = *&v50[direct field offset for Canvas.paperView];
      v52 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x3F0);
      swift_beginAccess();
      v53 = v51 + v52;
      v54 = v354;
      v340 = *(v45 + 16);
      v341 = (v45 + 16);
      v340(v354, v53, v27);
      v347 = v50;
      v55 = v336;
      Capsule.rootID.getter();
      v342 = *(v45 + 8);
      v343 = (v45 + 8);
      v342(v54, v27);
      v56 = v323;
      Capsule.rootID.getter();
      v57 = CRKeyPath.rawValue.getter();
      v346 = v50;
      v59 = v58;
      v60 = CRKeyPath.rawValue.getter();
      v62 = v61;
      v63 = specialized static Data.== infix(_:_:)(v57, v59, v60, v61);
      v64 = v338;
      v321 = v63;
      outlined consume of Data._Representation(v60, v62);
      outlined consume of Data._Representation(v57, v59);
      v65 = *(v337 + 8);
      v65(v56, v64);
      v66 = (v65)(v55, v64);
      v67 = v347;
      if (v321)
      {
        v68 = v344;
        v69 = *&v346[v344];
        swift_beginAccess();
        v70 = v69;
        v71 = v349;
        v72 = v350;
        Capsule.merge<A>(_:)();
        swift_endAccess();

        v323 = direct field offset for CanvasView.canvasScrollView;
        result = *&v67[direct field offset for CanvasView.canvasScrollView];
        v73 = MEMORY[0x1E69E7D40];
        if (!result)
        {
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        [result contentOffset];
        v75 = v74;
        v77 = v76;
        v78 = *&v346[v68];
        v79 = *((*v73 & *v78) + 0x3F0);
        swift_beginAccess();
        v80 = v354;
        v81 = (v340)(v354, v78 + v79, v27);
        MEMORY[0x1EEE9AC00](v81);
        v82 = v71;
        *&v320[-32] = v71;
        *&v320[-24] = v72;
        *&v320[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        Capsule.subscript.getter();

        v342(v80, v27);
        v83 = *&v358;
        v84 = v359;
        specialized Canvas.mergeToCanvasElements()();
        v85 = direct field offset for Canvas.subscriptions;
        result = swift_beginAccess();
        v86 = *&v67[v85];
        v87 = v67;
        if (v86 >> 62)
        {
          result = __CocoaSet.count.getter();
          v88 = result;
        }

        else
        {
          v88 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v89 = v339;
        v90 = v82;
        if (v88)
        {
          if (v88 < 1)
          {
            __break(1u);
            goto LABEL_123;
          }

          v345 = v86 & 0xC000000000000001;

          v91 = 0;
          v92 = *&v348;
          do
          {
            if (v345)
            {
              v99 = MEMORY[0x1DA6CE0C0](v91, v86);
            }

            else
            {
              v99 = *(v86 + 8 * v91 + 32);
            }

            v100 = AnyCanvas.isLiveEditing()();
            v101 = *v99;
            if (!v100 || (*(v99 + *(v101 + 136)) & 1) != 0)
            {
              outlined init with copy of Date?(v99 + *(v101 + 120), v92, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
              v93 = *&v346[v344];
              v94 = v27;
              v95 = *((*MEMORY[0x1E69E7D40] & *v93) + 0x3F0);
              swift_beginAccess();
              v96 = v93 + v95;
              v27 = v94;
              v97 = v354;
              v340(v354, v96, v27);
              dispatch thunk of AnySubscriberBase.receive(_:)();

              v98 = v97;
              v87 = v347;
              v342(v98, v27);
              outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
            }

            else
            {
            }

            ++v91;
          }

          while (v88 != v91);

          v90 = v349;
          v89 = v339;
        }

        if (*&v87[direct field offset for Canvas.multipeerConnection])
        {
          v113 = *&v346[v344];
          v114 = *((*MEMORY[0x1E69E7D40] & *v113) + 0x3F0);
          swift_beginAccess();
          v115 = v113 + v114;
          v87 = v347;
          v116 = v354;
          v340(v354, v115, v27);

          CRMulticastSyncManager.sync(_:sendDelta:)();

          v342(v116, v27);
        }

        specialized Canvas.scheduleFinalizeTask()();
        v117 = direct field offset for Canvas.xpcMulticast;
        swift_beginAccess();
        v102 = v353;
        if (*&v87[v117])
        {
          v118 = *&v346[v344];
          v119 = *((*MEMORY[0x1E69E7D40] & *v118) + 0x3F0);
          swift_beginAccess();
          v120 = v118 + v119;
          v87 = v347;
          v121 = v354;
          v340(v354, v120, v27);

          CRMulticastSyncManager.sync(_:sendDelta:)();

          v342(v121, v27);
        }

        v122 = v323;
        result = *&v87[v323];
        if (!result)
        {
          goto LABEL_126;
        }

        specialized CanvasView.updateAfterDidScroll(_:)(result);
        v123 = *&v346[v344];
        v124 = *((*MEMORY[0x1E69E7D40] & *v123) + 0x3F0);
        swift_beginAccess();
        v125 = v354;
        v126 = (v340)(v354, v123 + v124, v27);
        MEMORY[0x1EEE9AC00](v126);
        v127 = v350;
        *&v320[-32] = v90;
        *&v320[-24] = v127;
        *&v320[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        Capsule.subscript.getter();

        v128 = v347;
        v342(v125, v27);
        result = *&v128[v122];
        if (!result)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        result = [result setContentOffset_];
        v129 = *&v128[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        if (!v129)
        {
LABEL_128:
          __break(1u);
          return result;
        }

        v130 = *(v129 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
        if (v130)
        {
          *(v130 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
        }

        v345 = 0;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v66);
        v106 = v350;
        v107 = v349;
        *&v320[-32] = v349;
        *&v320[-24] = v106;
        *&v320[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        v102 = v353;
        v358 = v353;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v108 = v324;
        v109 = *&v102[v324];
        if (v109 && (v110 = [v109 removeFromSuperview], *&v102[v108]))
        {
          MEMORY[0x1EEE9AC00](v110);
          *&v320[-32] = v107;
          *&v320[-24] = v106;
          *&v320[-16] = &protocol witness table for Image;
          KeyPath = swift_getKeyPath();
          v348 = COERCE_DOUBLE(v320);
          MEMORY[0x1EEE9AC00](KeyPath);
          *&v320[-16] = *&v102;
          *&v320[-8] = 0;
          v358 = v102;
          v90 = v107;
          v112 = v345;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          v345 = v112;
        }

        else
        {
          *&v102[v108] = 0;
          specialized CanvasElementViewController._canvasView.didset();

          v90 = v107;
        }

        v89 = v339;
      }
    }

    else
    {
      v89 = v43;
      v102 = v353;
      v90 = v47;
    }

    MEMORY[0x1EEE9AC00](v49);
    v131 = v350;
    *&v320[-32] = v90;
    *&v320[-24] = v131;
    *&v320[-16] = &protocol witness table for Image;
    swift_getKeyPath();
    v358 = v102;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*&v102[v324])
    {
      return (*(v330 + 8))(v89, v27);
    }

    v348 = COERCE_DOUBLE(*&v102[direct field offset for CanvasElementViewController.context]);
    result = [v102 view];
    if (result)
    {
      v132 = result;
      [result bounds];
      v134 = v133;
      v136 = v135;
      v138 = v137;
      v140 = v139;

      v141 = v354;
      v343 = *(v330 + 16);
      v344 = v27;
      v342 = (v330 + 16);
      v142 = v343(v354, v339, v27);
      MEMORY[0x1EEE9AC00](v142);
      v143 = v350;
      *&v320[-32] = v90;
      *&v320[-24] = v143;
      *&v320[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v358 = v102;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LODWORD(v132) = v102[direct field offset for CanvasElementViewController.allowMediaCanvasElements];
      v144 = v102[direct field offset for CanvasElementViewController.transparentBackground];
      v145 = v353[direct field offset for CanvasElementViewController._editingMode];
      v146 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd));
      v147 = COERCE_DOUBLE(v353);
      specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(*&v348, v141, v145, v132, v144, v353, v134, v136, v138, v140);
      v149 = v148;
      MEMORY[0x1EEE9AC00](v148);
      v150 = v350;
      *&v320[-32] = v90;
      *&v320[-24] = v150;
      *&v320[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      *&v358 = v147;
      v151 = v149;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v152 = direct field offset for CanvasElementViewController._liveStreamDrawings;
      swift_beginAccess();
      v348 = v147;
      AnyCanvas.liveStreamDrawings.setter(*(*&v147 + v152));
      active = specialized CanvasView._activeToolPicker.getter();
      if (active)
      {
        v154 = active;
        [active addObserver_];
        v155 = specialized CanvasView.toolPickerObserver.getter();
        [v154 addObserver_];

        v156 = *&v151[direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver];
        specialized CanvasViewToolPickerObserver.updateUI(toolPicker:)(v154);
      }

      MEMORY[0x1EEE9AC00](active);
      v158 = v349;
      v157 = v350;
      *&v320[-32] = v349;
      *&v320[-24] = v157;
      *&v320[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v159 = *&v348;
      v366 = *&v348;
      v160 = v151;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v161 = &v159[direct field offset for CanvasElementViewController._liveStreamMessenger];
      swift_beginAccess();
      v162 = *v161;
      v163 = *(v161 + 1);
      v164 = v160 + direct field offset for Canvas.liveStreamMessenger;
      swift_beginAccess();
      *v164 = v162;
      v164[1] = v163;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      specialized Canvas.liveStreamMessenger.didset();
      v165 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v165);
      v166 = v350;
      *&v320[-32] = v158;
      *&v320[-24] = v166;
      *&v320[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v365 = v159;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v167 = &v159[direct field offset for CanvasElementViewController._participantDetailsDataSource];
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      v168 = *(v167 + 1);
      v169 = v160 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
      swift_beginAccess();
      *(v169 + 1) = v168;
      swift_unknownObjectWeakAssign();
      v170 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView;
      [*(v160 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
      v171 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v171);
      *&v320[-32] = v158;
      *&v320[-24] = v166;
      *&v320[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v364 = v159;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v172 = direct field offset for CanvasElementViewController._showParticipantCursors;
      swift_beginAccess();
      v173 = v159[v172];
      v174 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
      swift_beginAccess();
      if (v173 == *(v160 + v174))
      {
        *(v160 + v174) = v173;
        [*(v160 + v170) setNeedsLayout];
      }

      else
      {
        v175 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v175);
        *&v320[-16] = v160;
        v320[-8] = v173;
        v363 = v160;
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
        v176 = v345;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v345 = v176;
        v159 = *&v348;
      }

      v177 = &v159[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v341 = v177;
      if (Strong)
      {
        v179 = *(*(v177 + 1) + 8);
        v180 = Strong;
      }

      else
      {
        v180 = 0;
        v179 = 0;
      }

      v181 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v181);
      *&v320[-32] = v160;
      *&v320[-24] = v180;
      *&v320[-16] = v179;
      v362 = v160;
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      v182 = v345;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v345 = v182;

      v183 = swift_unknownObjectRelease();
      v347 = direct field offset for CanvasView.canvasTiledView;
      v184 = *(v160 + direct field offset for CanvasView.canvasTiledView);
      v185 = v349;
      v186 = v350;
      if (v184)
      {
        MEMORY[0x1EEE9AC00](v183);
        *&v320[-32] = v185;
        *&v320[-24] = v186;
        *&v320[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        v187 = *&v348;
        v362 = *&v348;
        v188 = v184;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v189 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
        swift_beginAccess();
        if (v187[v189] == 1)
        {
          v190 = [objc_opt_self() standardUserDefaults];
          v191 = MEMORY[0x1DA6CCED0](0xD000000000000036, 0x80000001D4088200);
          v192 = [v190 BOOLForKey_];

          v193 = v192 ^ 1;
        }

        else
        {
          v193 = 0;
        }

        [v188 setSixChannelBlending_];

        v194 = *&v347[v160];
        if (v194)
        {
          MEMORY[0x1EEE9AC00](v183);
          *&v320[-32] = v185;
          *&v320[-24] = v186;
          *&v320[-16] = &protocol witness table for Image;
          swift_getKeyPath();
          v195 = *&v348;
          v362 = *&v348;
          v196 = v194;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v197 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
          swift_beginAccess();
          [v196 setSixChannelBlendingDisableSnapshotting_];

          v198 = *&v347[v160];
          if (v198)
          {
            MEMORY[0x1EEE9AC00](v183);
            *&v320[-32] = v185;
            *&v320[-24] = v186;
            *&v320[-16] = &protocol witness table for Image;
            swift_getKeyPath();
            v199 = *&v348;
            v362 = *&v348;
            v200 = v198;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v201 = direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent;
            swift_beginAccess();
            [v200 setSixChannelBlendingRendersTransparent_];
          }
        }
      }

      v202 = direct field offset for Canvas._canvasElementController;
      v203 = *(v160 + direct field offset for Canvas._canvasElementController);
      v204 = &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>.ObservableDifference?;
      v205 = v203;
      if (!v203)
      {
        v226 = *&v347[v160];
        if (!v226)
        {
          goto LABEL_77;
        }

        ObjectType = swift_getObjectType();
        v183 = swift_conformsToProtocol2();
        v208 = *&v348;
        if (!v183)
        {
LABEL_65:
          v215 = *(v160 + v202);
          v216 = v215;
          if (v215)
          {
            goto LABEL_66;
          }

          v233 = *&v347[v160];
          if (v233)
          {
            v234 = swift_getObjectType();
            v183 = swift_conformsToProtocol2();
            if (!v183)
            {
LABEL_69:
              v223 = *&v347[v160];
              if (v223)
              {
                MEMORY[0x1EEE9AC00](v183);
                *&v320[-32] = v349;
                *&v320[-24] = v186;
                *&v320[-16] = &protocol witness table for Image;
                swift_getKeyPath();
                v224 = *&v348;
                v362 = *&v348;
                v225 = v223;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                [v225 setRulerHostingDelegate_];
              }

              goto LABEL_77;
            }

            v235 = *(v183 + 48);
            v236 = v186;
            v237 = v204;
            v238 = v183;
            v239 = v233;
            v240 = v238;
            v204 = v237;
            v186 = v236;
            v216 = v235(v234, v240);

            v208 = *&v348;
LABEL_66:
            MEMORY[0x1EEE9AC00](v183);
            *&v320[-32] = v349;
            *&v320[-24] = v186;
            *&v320[-16] = &protocol witness table for Image;
            swift_getKeyPath();
            v362 = v208;
            v217 = v215;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v218 = direct field offset for CanvasElementViewController._canEditVellumOpacity;
            swift_beginAccess();
            v219 = v208[v218];
            v216[OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditVellumOpacity] = v219;
            v220 = *&v216[v204[122]];
            if (v220)
            {
              v221 = v220;
              v222 = ToolPickerController.textToolListViewController.getter();
              v222[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible] = v219;
              MarkupEditViewController.updateUI()();
            }

            goto LABEL_69;
          }

LABEL_77:
          MEMORY[0x1EEE9AC00](v183);
          *&v320[-32] = v349;
          *&v320[-24] = v186;
          *&v320[-16] = &protocol witness table for Image;
          swift_getKeyPath();
          v241 = *&v348;
          v362 = *&v348;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v242 = direct field offset for CanvasElementViewController._allowsContentSnapping;
          swift_beginAccess();
          *(v160 + direct field offset for CanvasView.allowsContentSnapping) = v241[v242];
          v243 = *(v160 + direct field offset for CanvasView.trackingPanGestureRecognizer);
          if (v243)
          {
            [v243 setEnabled_];
          }

          v244 = objc_opt_self();
          v245 = [v244 mainBundle];
          v246 = [v245 bundleIdentifier];

          if (!v246)
          {
            goto LABEL_83;
          }

          v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v249 = v248;

          if (v247 == 0xD000000000000011 && 0x80000001D408E2E0 == v249)
          {
LABEL_86:

            goto LABEL_87;
          }

          v250 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v250 & 1) == 0)
          {
LABEL_83:
            v251 = [v244 mainBundle];
            v252 = [v251 bundleIdentifier];

            if (!v252)
            {
              goto LABEL_88;
            }

            v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v255 = v254;

            if (v253 == 0xD000000000000019 && 0x80000001D408E2C0 == v255)
            {
              goto LABEL_86;
            }

            v319 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v319 & 1) == 0)
            {
LABEL_88:
              v259 = *&v348;
              if ([*&v348 isFirstResponder])
              {
                [v160 becomeFirstResponder];
              }

              v260 = v160;
              [v260 setAutoresizingMask_];
              [v260 setTranslatesAutoresizingMaskIntoConstraints_];

              result = [v259 view];
              v261 = v349;
              if (result)
              {
                v262 = result;
                [result addSubview_];

                v346 = v260;
                specialized CanvasElementViewController.canvasView.setter(v260);
                v263 = specialized CanvasElementViewController.imageView.getter();
                if (v263)
                {
                  v264 = v263[direct field offset for ImageElementView.shouldShowMissingImagePlaceholder];
                  v263[direct field offset for ImageElementView.shouldShowMissingImagePlaceholder] = 0;
                  if (v264 == 1)
                  {
                    v265 = direct field offset for ImageElementView.missingImageView;
                    v266 = v263;
                    [*&v263[direct field offset for ImageElementView.missingImageView] removeFromSuperview];
                    v267 = *&v266[v265];
                    *&v266[v265] = 0;

                    v259 = *&v348;
                    v263 = v267;
                  }
                }

                v268 = specialized CanvasElementViewController.imageView.getter();
                if (v268)
                {
                  v269 = v268;
                  MEMORY[0x1EEE9AC00](v268);
                  *&v320[-32] = v261;
                  *&v320[-24] = v186;
                  *&v320[-16] = &protocol witness table for Image;
                  swift_getKeyPath();
                  v360 = v259;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v270 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
                  swift_beginAccess();
                  v269[direct field offset for ImageElementView.isImageAnalysisEnabled] = v259[v270];
                  ImageElementView.updateMediaViewImageAnalysis()();
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerC21MediaAnalysisObserverCyAA5ImageV_GMd);
                v271 = swift_allocObject();
                swift_unknownObjectWeakInit();
                swift_unknownObjectWeakAssign();
                v272 = specialized CanvasElementViewController.imageView.getter();
                v347 = v271;
                if (!v272)
                {
LABEL_104:
                  MEMORY[0x1EEE9AC00](v272);
                  *&v320[-32] = v261;
                  *&v320[-24] = v186;
                  *&v320[-16] = &protocol witness table for Image;
                  v277 = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](v277);
                  v278 = v347;
                  *&v320[-16] = v259;
                  *&v320[-8] = v278;
                  v360 = v259;

                  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                  v279 = *&v348;

                  v280 = specialized CanvasElementViewController.imageView.getter();
                  if (v280)
                  {
                    v281 = *&v280[direct field offset for ImageElementView.mediaView];
                    v282 = v280;
                    v283 = v281;

                    if (v281 && (v284 = [v283 imageAnalysisContext], v283, v284))
                    {
                      v285 = [v284 analysis];
                      swift_unknownObjectRelease();
                      v280 = v285;
                    }

                    else
                    {
                      v280 = 0;
                    }

                    v279 = *&v348;
                  }

                  specialized CanvasElementViewController.analysis.setter(v280);
                  swift_unknownObjectWeakInit();
                  v361 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD5ImageV_GGMd);
                  v286 = v279;
                  v287 = swift_allocObject();
                  outlined init with take of Range<AttributedString.Index>(&v360, v287 + 16, &_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA5ImageV_GMd);
                  v360 = v287;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
                  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Image>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
                  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<Capsule<Image>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd);
                  v288 = Publisher.subscribe<A>(_:)();

                  specialized CanvasElementViewController.canvasSubscribeCancellable.setter(v288);
                  v289 = v341;
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    v290 = *(v289 + 1);
                    v291 = swift_getObjectType();
                    (*(v290 + 16))(v286, v291, v290);
                    swift_unknownObjectRelease();
                  }

                  v292 = direct field offset for Canvas.paperView;
                  v293 = *&v346[direct field offset for Canvas.paperView];
                  v294 = *((*MEMORY[0x1E69E7D40] & *v293) + 0x3F0);
                  swift_beginAccess();
                  v295 = v293 + v294;
                  v296 = v331;
                  v297 = v344;
                  v343(v331, v295, v344);
                  v298 = v333;
                  Capsule.root.getter();
                  v299 = v336;
                  Capsule.rootID.getter();
                  v300 = v332;
                  off_1F4F5EE70(v299, v332);
                  (*(v337 + 8))(v299, v338);
                  _s8PaperKit0A6MarkupVWOhTm_1(v298, type metadata accessor for Image);
                  v301 = *(v330 + 8);
                  v330 += 8;
                  v301(v296, v297);
                  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
                  v303 = *(v302 - 8);
                  if ((*(v303 + 48))(v300, 1, v302) == 1)
                  {
                    outlined destroy of StocksKitCurrencyCache.Provider?(v300, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
                    v304 = v322;
                    (*(v334 + 56))(v322, 1, 1, v335);
                  }

                  else
                  {
                    v304 = v322;
                    SharedTagged_10.tagged2.getter();
                    (*(v303 + 8))(v300, v302);
                    v305 = v334;
                    if ((*(v334 + 48))(v304, 1, v335) != 1)
                    {
                      (*(v305 + 32))();
                      Ref.subscript.getter();
                      v306 = type metadata accessor for TaskPriority();
                      (*(*(v306 - 8) + 56))(v329, 1, 1, v306);
                      v307 = v327;
                      _s8PaperKit0A6MarkupVWOcTm_1(v298, v327, type metadata accessor for Image);
                      type metadata accessor for MainActor();
                      v308 = *&v348;
                      v309 = static MainActor.shared.getter();
                      v310 = (*(v325 + 80) + 40) & ~*(v325 + 80);
                      v311 = swift_allocObject();
                      v312 = MEMORY[0x1E69E85E0];
                      v311[2] = v309;
                      v311[3] = v312;
                      v311[4] = v308;
                      _s8PaperKit13CRAssetOrDataOWObTm_0(v307, v311 + v310, type metadata accessor for Image);
                      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v329, &async function pointer to partial apply for specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), v311);

                      _s8PaperKit0A6MarkupVWOhTm_1(v298, type metadata accessor for Image);
                      (*(v305 + 8))(v328, v335);
                      goto LABEL_117;
                    }
                  }

                  outlined destroy of StocksKitCurrencyCache.Provider?(v304, &_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
LABEL_117:
                  v313 = v346;
                  v314 = *&v346[v292];
                  v315 = *((*MEMORY[0x1E69E7D40] & *v314) + 0x3F0);
                  swift_beginAccess();
                  v316 = v314 + v315;
                  v317 = v354;
                  v318 = v344;
                  v343(v354, v316, v344);

                  specialized Capsule<>.logSubelementHeadroomsOnInternalBuilds()();

                  v301(v317, v318);
                  return (v301)(v339, v318);
                }

                v273 = v272;
                v274 = *(v272 + direct field offset for ImageElementView.mediaView);
                if (v274)
                {

                  v275 = v274;
                  v276 = [v275 imageAnalysisContext];
                  if (v276)
                  {
                    [v276 addAnalysisObserver_];

                    v272 = swift_unknownObjectRelease();
LABEL_103:
                    v259 = *&v348;
                    goto LABEL_104;
                  }
                }

                else
                {

                  v275 = ImageElementView.pendingImageAnalysisObservers.getter();
                  [v275 addObject_];
                }

                goto LABEL_103;
              }

              goto LABEL_124;
            }
          }

LABEL_87:
          type metadata accessor for CanvasCalculateDocumentProxy();
          v256 = swift_allocObject();
          *(v256 + 16) = 0;
          v257 = MEMORY[0x1E69E7CC0];
          *(v256 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v258 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(v257);
          *(v256 + 40) = 0;
          *(v256 + 48) = 0;
          *(v256 + 32) = v258;
          *(v256 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(v257);
          *(v256 + 64) = 0;
          specialized CanvasView.calculateDocumentForTesting.setter(v256, &protocol witness table for CanvasCalculateDocumentProxy);
          goto LABEL_88;
        }

        v228 = *(v183 + 48);
        v229 = v183;
        v230 = v226;
        v231 = v229;
        v204 = &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>.ObservableDifference?;
        v232 = v228(ObjectType, v231);
        v186 = v350;
        v205 = v232;
      }

      MEMORY[0x1EEE9AC00](v183);
      *&v320[-32] = v349;
      *&v320[-24] = v186;
      v206 = v186;
      *&v320[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v207 = v204;
      v208 = *&v348;
      v362 = *&v348;
      v209 = v203;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v210 = direct field offset for CanvasElementViewController._canEditDescription;
      swift_beginAccess();
      v211 = v208[v210];
      v205[OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditDescription] = v211;
      v212 = *&v205[v204[122]];
      if (v212)
      {
        v213 = v212;
        v214 = ToolPickerController.textToolListViewController.getter();
        v214[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_descriptionItemVisible] = v211;
        MarkupEditViewController.updateUI()();

        v204 = v207;
      }

      v186 = v206;
      goto LABEL_65;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v38 = v353;
  [v353 setView_];

  if (*&v38[v36])
  {
    MEMORY[0x1EEE9AC00](v39);
    v40 = v350;
    *&v320[-32] = v349;
    *&v320[-24] = v40;
    *&v320[-16] = &protocol witness table for Image;
    v41 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v41);
    *&v320[-16] = *&v38;
    *&v320[-8] = 0;
    v358 = v38;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    specialized CanvasElementViewController._canvasView.didset();
  }

  v103 = &v38[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v104 = *(v103 + 1);
    v105 = swift_getObjectType();
    (*(v104 + 16))(v38, v105, v104);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[14] = v7;
  *v7 = v5;
  v7[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return closure #1 in Image.imageSize(applyingCrop:)(a5);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(double a1, double a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = direct field offset for CanvasElementViewController.__imageSize;
  *(v0 + 144) = direct field offset for CanvasElementViewController.__imageSize;
  v6 = (v4 + v5);
  if (*v6 == v2 && v6[1] == v1)
  {
    *v6 = v2;
    v6[1] = v1;
  }

  else
  {
    v8 = swift_task_alloc();
    *v8 = type metadata accessor for Image(0);
    v8[1] = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v8[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v9 = swift_task_alloc();
    *(v9 + 16) = v4;
    *(v9 + 24) = v2;
    *(v9 + 32) = v1;
    *(v0 + 16) = v4;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 152) = v3;
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  v1 = v0[10];
  v2 = direct field offset for CanvasElementViewController.__imageSize;
  v0[18] = direct field offset for CanvasElementViewController.__imageSize;
  v3 = (v1 + v2);
  if (*v3 == 0.0 && v3[1] == 0.0)
  {
    *v3 = 0.0;
    v3[1] = 0.0;
  }

  else
  {
    v4 = swift_task_alloc();
    *v4 = type metadata accessor for Image(0);
    v4[1] = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v4[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v5 = swift_task_alloc();
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = v1;
    v0[2] = v1;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v0[19] = 0;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  v1 = *(v0 + 168);
  if (v1 && (v2 = specialized static ImageHDRInfo.info(for:)(*(v0 + 168)), v4 = v3, v1, v4))
  {
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 176) = v2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 184) = v6;
  *(v0 + 192) = v5;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), v6, v5);
}

{
  v36 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 80);
  v3 = direct field offset for CanvasElementViewController.__imageHeadroom;
  *(v0 + 200) = direct field offset for CanvasElementViewController.__imageHeadroom;
  if (*(v2 + v3) == v1)
  {
    *(v2 + v3) = v1;
    v4 = *(v0 + 152);
  }

  else
  {
    v4 = *(v0 + 152);
    v5 = swift_task_alloc();
    *v5 = type metadata accessor for Image(0);
    v5[1] = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v5[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    *(v6 + 24) = v1;
    *(v0 + 24) = v2;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 208) = v4;
  v7 = *(v0 + 80);
  v8 = swift_task_alloc();
  v9 = type metadata accessor for Image(0);
  *(v0 + 216) = v9;
  *v8 = v9;
  v10 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  *(v0 + 224) = v10;
  v8[1] = v10;
  v8[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 232) = direct field offset for CanvasElementViewController._$observationRegistrar;
  *(v0 + 32) = v7;
  *(v0 + 240) = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v3) <= 1.0)
  {
    v31 = swift_task_alloc();
    *(v0 + 248) = v31;
    *v31 = v0;
    v31[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

    return Image.supportsSavingAsHDR()();
  }

  else
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 80);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v32 = v14;
      v16 = *(v0 + 216);
      v17 = *(v0 + 224);
      v18 = *(v0 + 200);
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v20 = 136315650;
      v21 = swift_task_alloc();
      v33 = v15;
      *v21 = v16;
      v21[1] = v17;
      v21[2] = &protocol witness table for Image;
      swift_getKeyPath();

      *(v0 + 40) = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v19 + v18) <= 1.0)
      {
        v22 = 5391443;
      }

      else
      {
        v22 = 5391432;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, 0xE300000000000000, v35);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = swift_task_alloc();
      *v24 = v16;
      v24[1] = v17;
      v24[2] = &protocol witness table for Image;
      swift_getKeyPath();

      *(v0 + 48) = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = CGSize.debugDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v35);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2048;
      v28 = swift_task_alloc();
      *v28 = v16;
      v28[1] = v17;
      v28[2] = &protocol witness table for Image;
      swift_getKeyPath();

      *(v0 + 56) = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = v32;
      *(v20 + 24) = *(v19 + v18);
      _os_log_impl(&dword_1D38C4000, v32, v33, "Loaded %s image with size: %s, headroom: %f", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v34, -1, -1);
      MEMORY[0x1DA6D0660](v20, -1, -1);
    }

    v29 = *(v0 + 8);

    return v29();
  }
}

{
  v32 = v0;
  if ((*(v0 + 256) & 1) != 0 || (v1 = *(v0 + 80), v2 = swift_task_alloc(), *v2 = *(v0 + 216), *(v2 + 16) = &protocol witness table for Image, swift_getKeyPath(), , *(v0 + 64) = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v3 = *(v1 + direct field offset for CanvasElementViewController._canvasView)) == 0))
  {
  }

  else
  {
    v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR;
    if (*(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR))
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = 0;
      *(v0 + 72) = v3;
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      v6 = v3;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v27 = v3;

      *(v3 + v4) = 0;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 80);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v28 = v10;
    v12 = *(v0 + 216);
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);
    v15 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v16 = 136315650;
    v17 = swift_task_alloc();
    v29 = v11;
    *v17 = v12;
    v17[1] = v13;
    v17[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 40) = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v15 + v14) <= 1.0)
    {
      v18 = 5391443;
    }

    else
    {
      v18 = 5391432;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, 0xE300000000000000, v31);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = swift_task_alloc();
    *v20 = v12;
    v20[1] = v13;
    v20[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 48) = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = CGSize.debugDescription.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v31);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2048;
    v24 = swift_task_alloc();
    *v24 = v12;
    v24[1] = v13;
    v24[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 56) = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = v28;
    *(v16 + 24) = *(v15 + v14);
    _os_log_impl(&dword_1D38C4000, v28, v29, "Loaded %s image with size: %s, headroom: %f", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v30, -1, -1);
    MEMORY[0x1DA6D0660](v16, -1, -1);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), 0, 0);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(char a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), v4, v3);
}

void (*specialized CanvasElementViewController.rootElement.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd) - 8) + 64);
  if (v4)
  {
    v6[5] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v6[5] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[6] = v8;
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for Image(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  v6[3] = v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (v10)
  {
    v11 = *(v10 + direct field offset for Canvas.paperView);
    v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x3F0);
    swift_beginAccess();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
    v14 = *(v13 - 8);
    (*(v14 + 16))(v9, &v11[v12], v13);
    (*(v14 + 56))(v9, 0, 1, v13);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  return CanvasElementViewController.rootElement.modifyspecialized ;
}

void CanvasElementViewController.rootElement.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    outlined init with copy of Date?(*(*a1 + 48), v3, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    specialized CanvasElementViewController.updateViewForPaper(_:)(v3);
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  }

  else
  {
    specialized CanvasElementViewController.updateViewForPaper(_:)(*(*a1 + 48));
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  free(v4);
  free(v3);

  free(v2);
}

void specialized CanvasElementViewController._analysis.didset(void *a1)
{
  v2 = v1;
  type metadata accessor for Image(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + direct field offset for CanvasElementViewController._analysis);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v1 + OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 8);
    v9 = v4;
    v10 = v9;
    v11 = &dword_1EDCAF000;
    v12 = &selRef_hasSubstrokes;
    if (Strong)
    {
      v50 = v8;
      v13 = [v9 formRegions];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
        goto LABEL_30;
      }

      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

      v16 = [v10 v12[157]];
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = MEMORY[0x1E69E7CC0];
      v51 = v17;
      if (v17 >> 62)
      {
        v12 = __CocoaSet.count.getter();
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_10:
          v47 = v10;
          v48 = v2;
          v49 = v4;
          v10 = 0;
          v2 = v17;
          v52 = v17 & 0xC000000000000001;
          v18 = v17 & 0xFFFFFFFFFFFFFF8;
          v19 = v15;
          while (1)
          {
            if (v52)
            {
              v20 = MEMORY[0x1DA6CE0C0](v10, v2);
            }

            else
            {
              if (v10 >= *(v18 + 16))
              {
                goto LABEL_29;
              }

              v20 = *(v2 + 8 * v10 + 32);
            }

            v4 = v20;
            v21 = (v10 + 1);
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              v15 = __CocoaSet.count.getter();
              goto LABEL_8;
            }

            v22 = [v20 autoFillContentType];
            if (v22)
            {
              v23 = v22;
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;
              if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
              {

                v2 = v51;
LABEL_25:

                goto LABEL_12;
              }

              v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v2 = v51;
              if (v29)
              {
                goto LABEL_25;
              }
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_12:
            ++v10;
            if (v21 == v12)
            {
              v15 = v19;
              v30 = v53;
              v2 = v48;
              v4 = v49;
              v10 = v47;
              goto LABEL_33;
            }
          }
        }
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_33:

      if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
      {
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        v31 = *(v30 + 16);
      }

      ObjectType = swift_getObjectType();
      v33 = (*(v50 + 48))(v2, v15 > 0, v31 != 0, ObjectType);
      if (v31)
      {
        MEMORY[0x1EEE9AC00](v33);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_unknownObjectRelease();
        v11 = &dword_1EDCAF000;
        v34 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
        if (v34)
        {
          *(*(v34 + direct field offset for CanvasView.formAnalytics) + 18) = 45;
        }
      }

      else
      {
        v11 = &dword_1EDCAF000;
        if (v15 <= 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          MEMORY[0x1EEE9AC00](v33);
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_unknownObjectRelease();
          v35 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
          if (v35)
          {
            *(*(v35 + direct field offset for CanvasView.formAnalytics) + 18) = 44;
          }
        }
      }
    }

    specialized CanvasElementViewController.updateFormFillingIfNeeded()();
    MEMORY[0x1EEE9AC00](v36);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = *(v2 + *(v11 + 187));
    if (v37)
    {
      v38 = *(v37 + direct field offset for Canvas._editingView);
      if (v38)
      {
        v39 = *(v37 + direct field offset for Canvas._editingView + 8);
        v40 = *(v37 + direct field offset for Canvas._editingView);
      }

      else
      {
        v40 = *(v37 + direct field offset for Canvas.paperView);
        v39 = &protocol witness table for ContainerCanvasElementView<A>;
      }

      v41 = swift_getObjectType();
      v42 = v39[21];
      v43 = v38;
      v44 = v42(v41, v39);

      if (v44)
      {
        v45 = [v10 formRegions];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);
        v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v44[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcFormRegions] = v46;

        v10 = *&v44[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis];
        *&v44[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis] = v4;
      }
    }
  }
}

void specialized CanvasElementViewController.updateFormFillingIfNeeded()()
{
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v382 = &v309 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v416 = *(v391 - 8);
  v3 = MEMORY[0x1EEE9AC00](v391);
  v399 = &v309 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v393 = &v309 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v390 = &v309 - v7;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v415 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381);
  v380 = &v309 - v8;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v414 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379);
  v378 = &v309 - v9;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v413 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  v376 = &v309 - v10;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v412 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375);
  v374 = &v309 - v11;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v407 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v372 = &v309 - v12;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  v13 = MEMORY[0x1EEE9AC00](v371);
  v370 = &v309 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v369 = &v309 - v15;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  v16 = MEMORY[0x1EEE9AC00](v368);
  v367 = &v309 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v366 = &v309 - v18;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v19 = MEMORY[0x1EEE9AC00](v365);
  v389 = &v309 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v388 = &v309 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v364 = &v309 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v398 = &v309 - v25;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v26 = MEMORY[0x1EEE9AC00](v387);
  v363 = &v309 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v386 = &v309 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v397 = &v309 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v403 = (&v309 - v32);
  v402 = type metadata accessor for ShapeType(0);
  v33 = MEMORY[0x1EEE9AC00](v402);
  v362 = &v309 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v392 = &v309 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v401 = &v309 - v37;
  v405 = type metadata accessor for Shape(0);
  v38 = MEMORY[0x1EEE9AC00](v405);
  v361 = &v309 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v396 = &v309 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v385 = &v309 - v42;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v43 = *(v395 - 8);
  v44 = MEMORY[0x1EEE9AC00](v395);
  v357 = &v309 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v400 = &v309 - v46;
  v47 = type metadata accessor for Image(0);
  v417 = v47;
  v48 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v418 = v48;
  v419 = &protocol witness table for Image;
  swift_getKeyPath();
  v424.a = v0;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(*&v0 + direct field offset for CanvasElementViewController._canvasView);
  if (!v50)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v49);
  *(&v309 - 4) = v47;
  *(&v309 - 3) = v48;
  v425._object = &protocol witness table for Image;
  swift_getKeyPath();
  v424.a = v0;
  v51 = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(*&v0 + direct field offset for CanvasElementViewController._analysis);
  if (!v52)
  {

    return;
  }

  v335 = v50;
  v53 = COERCE_DOUBLE(v51);
  v54 = v52;
  v55 = AnyCanvas.formFieldElements.getter();

  v422 = MEMORY[0x1E69E7CC0];
  v334 = v54;
  v56 = [v54 formRegions];
  v404 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);
  v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v57 >> 62)
  {
    goto LABEL_169;
  }

  v411 = v57 & 0xFFFFFFFFFFFFFF8;
  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v59 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 < 0)
  {
    v60 = v55;
  }

  else
  {
    v60 = v55 & 0xFFFFFFFFFFFFFF8;
  }

  v318 = v57;
  if (!v58)
  {
    v355 = MEMORY[0x1E69E7CC0];
    v406 = MEMORY[0x1E69E7CC0];
    goto LABEL_123;
  }

  v310 = v60;
  v61 = 0;
  v410 = v57 & 0xC000000000000001;
  v409 = v57 + 32;
  v62 = v55 & 0xC000000000000001;
  v332 = *MEMORY[0x1E69DB648];
  v327 = (v43 + 56);
  v328 = (v43 + 16);
  v326 = (v407 + 40);
  v331 = *MEMORY[0x1E69DB688];
  v324 = (*&v413 + 40);
  v325 = (v412 + 40);
  v330 = *MEMORY[0x1E69DB660];
  v322 = (v43 + 48);
  v323 = (v414 + 40);
  v313 = (v43 + 40);
  v314 = (v43 + 32);
  v383 = v416 + 16;
  v320 = (v416 + 56);
  v321 = (v415 + 40);
  v356 = v416 + 8;
  v312 = 0x80000001D40850C0;
  v319 = (v43 + 8);
  v329 = xmmword_1D405FD70;
  v311 = xmmword_1D4058CF0;
  v406 = MEMORY[0x1E69E7CC0];
  v355 = MEMORY[0x1E69E7CC0];
  v407 = v58;
  v408 = v53;
  do
  {
    v43 = MEMORY[0x1E69E7D40];
LABEL_11:
    if (v410)
    {
      v63 = MEMORY[0x1DA6CE0C0](v61, v318);
      v64 = __OFADD__(v61, 1);
      v65 = v61 + 1;
      if (v64)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v61 >= *(v411 + 16))
      {
        goto LABEL_164;
      }

      v63 = *(v409 + 8 * v61);
      v64 = __OFADD__(v61, 1);
      v65 = v61 + 1;
      if (v64)
      {
        goto LABEL_163;
      }
    }

    v414 = v65;
    v415 = v63;
    v66 = [v63 quad];
    if (!v66)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v67 = v66;
    [v66 boundingBox];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v76 = *&direct field offset for Canvas._editingView;
    v77 = *(*&v53 + direct field offset for Canvas._editingView);
    if (v77)
    {
      v78 = *(*&v53 + direct field offset for Canvas._editingView);
    }

    else
    {
      v78 = *(*&v53 + direct field offset for Canvas.paperView);
    }

    v79 = *((*v43 & *v78) + 0x2A0);
    v416 = *&v53;
    v79(&v423, v77);

    v421 = v423;
    v426.origin.x = v69;
    v426.origin.y = v71;
    v426.size.width = v73;
    v426.size.height = v75;
    v427 = CGRectApplyAffineTransform(v426, &v421);
    x = v427.origin.x;
    y = v427.origin.y;
    width = v427.size.width;
    height = v427.size.height;
    if (v55 >> 62)
    {
      v53 = COERCE_DOUBLE(__CocoaSet.count.getter());
    }

    else
    {
      v53 = *(v59 + 16);
    }

    v57 = 0;
    v43 = MEMORY[0x1E69E7D40];
    while (*&v53 != v57)
    {
      if (v62)
      {
        v84 = MEMORY[0x1DA6CE0C0](v57, v55);
      }

      else
      {
        if (v57 >= *(v59 + 16))
        {
          goto LABEL_160;
        }

        v84 = *(v55 + 8 * v57 + 32);
      }

      v85 = v84;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        v411 = v57 & 0xFFFFFFFFFFFFFF8;
        v58 = __CocoaSet.count.getter();
        goto LABEL_5;
      }

      v428.origin.x = (*((*v43 & *v84) + 0x170))();
      v433.origin.x = x;
      v433.origin.y = y;
      v433.size.width = width;
      v433.size.height = height;
      v86 = CGRectIntersectsRect(v428, v433);

      ++v57;
      if (v86)
      {

        v61 = v414;
        v53 = v408;
        if (v414 == v407)
        {
          goto LABEL_123;
        }

        goto LABEL_11;
      }
    }

    v87 = v415;
    v88 = [v415 autoFillContentType];
    if (!v88)
    {
      v92 = [v87 autoFillContentType];
      if (v92)
      {
        v90 = v87;
        goto LABEL_41;
      }

LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
      return;
    }

    v89 = v88;
    v90 = v87;
    if ([v87 regionType] == 4)
    {

      a_low = 50;
      goto LABEL_42;
    }

    v92 = v89;
LABEL_41:
    FormContentType.init(_:)(v92);
    a_low = LOBYTE(v421.a);
LABEL_42:
    [v90 suggestedLineHeight];
    v93 = *&v416[*&v76];
    v413 = v94;
    if (v93)
    {
      v95 = v93;
    }

    else
    {
      v95 = *&v416[direct field offset for Canvas.paperView];
      v93 = 0;
    }

    v96 = v93;
    [v95 frame];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;

    v429.origin.x = v98;
    v429.origin.y = v100;
    v429.size.width = v102;
    v429.size.height = v104;
    v105 = CGRectGetHeight(v429);
    if (one-time initialization token for formFieldFont != -1)
    {
      v262 = v105;
      swift_once();
      v105 = v262;
    }

    v412 = [static UIConstants.formFieldFont fontWithSize_];
    v106 = [v90 children];
    if (!v106)
    {
      goto LABEL_184;
    }

    v107 = v106;
    v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v108 >> 62)
    {
      v109 = __CocoaSet.count.getter();
    }

    else
    {
      v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v413 = v76;
    if (!v109)
    {
      LOBYTE(v421.a) = a_low;
      v110 = v412;
      v57 = v412;
      v111 = v415;
      v112 = [v415 maxCharacterCount];
      v113 = [v111 autofillNewContextStart];
      v114 = specialized static FormFillingView.createFormFieldView(canvas:frame:text:font:alignment:textContentType:maxCharacterCount:detectedFormField:startsNewAutofillContext:analytics_inputSource:analytics_documentType:)(v416, 0, 0, v110, 0, 1, &v421, v112, x, y, width, height, 1u, v113, 9u, 5u);

      v115 = v114;
      MEMORY[0x1DA6CD190]();
      if (*((v422 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v422 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = MEMORY[0x1E69E7D40];
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v116 = v422;
      v53 = v408;
      if (one-time initialization token for manager != -1)
      {
        v263 = v422;
        swift_once();
        v116 = v263;
      }

      v117 = v416;
      v118 = *&v416[*&v413];
      v406 = v116;
      if (!v118)
      {
        v118 = *&v416[direct field offset for Canvas.paperView];
      }

      v119 = v118;

      v120 = (*((*v43 & *v119) + 0x90))();
      specialized FormAnalytics.addFielde2eEvent(canvas:)(v120);

      goto LABEL_58;
    }

    v420 = MEMORY[0x1E69E7CC0];
    v121 = [v415 children];
    if (!v121)
    {
      goto LABEL_190;
    }

    v122 = v121;
    v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v57 >> 62)
    {
      v354 = v57 & 0xFFFFFFFFFFFFFF8;
      v123 = __CocoaSet.count.getter();
      v309 = v57;
      if (!v123)
      {
        goto LABEL_115;
      }

LABEL_63:
      v124 = 0;
      v317 = direct field offset for Canvas.paperView;
      v352 = v57 + 32;
      v353 = v57 & 0xC000000000000001;
      v43 = MEMORY[0x1E69E7CC0];
      v351 = v123;
      v315 = v55;
      v316 = v62;
LABEL_65:
      while (2)
      {
        if (v353)
        {
          v125 = MEMORY[0x1DA6CE0C0](v124, v309);
        }

        else
        {
          if (v124 >= *(v354 + 16))
          {
            goto LABEL_168;
          }

          v125 = *(v352 + 8 * v124);
        }

        v57 = v125;
        v64 = __OFADD__(v124, 1);
        v126 = v124 + 1;
        if (v64)
        {
          goto LABEL_167;
        }

        v127 = [v125 quad];
        if (!v127)
        {
          goto LABEL_185;
        }

        v128 = v127;
        [v127 boundingBox];
        v130 = v129;
        v132 = v131;
        v134 = v133;
        v136 = v135;

        v137 = *&v416[*&v76];
        v394 = v57;
        v384 = v126;
        if (v137)
        {
          v138 = v137;
        }

        else
        {
          v138 = *&v416[v317];
          v137 = 0;
        }

        (*((*MEMORY[0x1E69E7D40] & *v138) + 0x2A0))(&v424, v137);

        v421 = v424;
        v430.origin.x = v130;
        v430.origin.y = v132;
        v430.size.width = v134;
        v430.size.height = v136;
        v431 = CGRectApplyAffineTransform(v430, &v421);
        v139 = v431.origin.x;
        v140 = v431.origin.y;
        v141 = v431.size.width;
        v142 = v431.size.height;
        v57 = 0;
        while (*&v53 != v57)
        {
          if (v62)
          {
            v143 = MEMORY[0x1DA6CE0C0](v57, v55);
          }

          else
          {
            if (v57 >= *(v59 + 16))
            {
              goto LABEL_162;
            }

            v143 = *(v55 + 8 * v57 + 32);
          }

          v144 = v143;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_161;
          }

          v432.origin.x = (*((*MEMORY[0x1E69E7D40] & *v143) + 0x170))();
          v434.origin.x = v139;
          v434.origin.y = v140;
          v434.size.width = v141;
          v434.size.height = v142;
          v145 = CGRectIntersectsRect(v432, v434);

          ++v57;
          if (v145)
          {

            v124 = v384;
            if (v384 == v351)
            {
              goto LABEL_116;
            }

            goto LABEL_65;
          }
        }

        v146 = v394;
        v147 = [v394 autoFillContentType];
        if (v147)
        {
          v148 = v147;
          v149 = v146;
          if ([v146 regionType] == 4)
          {

            v150 = 50;
            goto LABEL_89;
          }

          v151 = v148;
        }

        else
        {
          v151 = [v146 autoFillContentType];
          if (!v151)
          {
            goto LABEL_189;
          }

          v149 = v146;
        }

        FormContentType.init(_:)(v151);
        v150 = LOBYTE(v421.a);
LABEL_89:
        LODWORD(v360) = v150;
        v152 = v412;
        v350 = [v149 autofillNewContextStart];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
        inited = swift_initStackObject();
        *(inited + 16) = v329;
        v154 = v332;
        *(inited + 32) = v332;
        v406 = inited + 32;
        v155 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
        *(inited + 40) = v152;
        v156 = v331;
        *(inited + 64) = v155;
        *(inited + 72) = v156;
        v157 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
        v349 = v152;
        v158 = v154;
        v159 = v156;
        v160 = [v157 init];
        [v160 setAlignment_];
        v161 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
        *(inited + 80) = v160;
        v162 = v330;
        *(inited + 104) = v161;
        *(inited + 112) = v162;
        *(inited + 144) = MEMORY[0x1E69E7DE0];
        *(inited + 120) = 0;
        v163 = v162;
        v164 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
        swift_arrayDestroy();
        v165 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v166 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
        type metadata accessor for NSAttributedStringKey(0);
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v165 initWithString:v166 attributes:isa];

        MEMORY[0x1EEE9AC00](v168);
        v425._object = 0x3FF0000000000000;
        v169 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        CRAttributedString.init(_:transformAttributes:)();
        swift_storeEnumTagMultiPayload();
        v170 = type metadata accessor for Color(0);
        v171 = *(v170 + 20);
        v172 = type metadata accessor for UnknownValueProperties();
        (*(*(v172 - 8) + 56))(v403 + v171, 1, 1, v172);
        if (one-time initialization token for extendedSRGBColorSpace != -1)
        {
          swift_once();
        }

        v173 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
        if (!v173)
        {
          goto LABEL_188;
        }

        v174 = v173;
        v347 = v169;
        v348 = v164;
        CGColorRef.calculateMinimumHeadroom.getter();
        v175 = CGColorCreateWithContentHeadroom();
        if (!v175)
        {
          goto LABEL_187;
        }

        v176 = v175;

        *v403 = v176;
        v177 = *(v170 - 8);
        v178 = *(v177 + 56);
        v358 = v177 + 56;
        v178();
        (v178)(v397, 1, 1, v170);
        v179 = v178;
        v341 = v178;
        v180 = v398;
        v181 = v395;
        (*v328)(v398, v400, v395);
        (*v327)(v180, 0, 1, v181);
        type metadata accessor for CGRect(0);
        v344 = v182;
        v343 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
        memset(&v421, 0, 32);
        CRRegister.init(wrappedValue:)();
        v183 = v405;
        v421.a = 0.0;
        v406 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v345 = v170;
        v346 = *(v183 + 24);
        v184 = v386;
        (v179)(v386, 1, 1, v170);
        v185 = v363;
        outlined init with copy of Date?(v184, v363, &_s8PaperKit5ColorVSgMd);
        countAndFlagsBits = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v184, &_s8PaperKit5ColorVSgMd);
        v342 = *(v405 + 28);
        (v341)(v184, 1, 1, v345);
        outlined init with copy of Date?(v184, v185, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v184, &_s8PaperKit5ColorVSgMd);
        v186 = v405;
        v341 = *(v405 + 32);
        v421.a = 5.0;
        CRRegister.init(wrappedValue:)();
        v338 = *(v186 + 36);
        v187 = v392;
        swift_storeEnumTagMultiPayload();
        v339 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_1(v187, v362, type metadata accessor for ShapeType);
        v337 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_1(v187, type metadata accessor for ShapeType);
        v188 = v405;
        v421.a = 1.0;
        CRRegister.init(wrappedValue:)();
        v421.a = 0.0;
        LOBYTE(v421.b) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        v421.a = 0.0;
        LOBYTE(v421.b) = 0;
        CRRegister.init(wrappedValue:)();
        v333 = *(v188 + 52);
        CRAttributedString.init(_:)();
        v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v190 = *(v189 - 8);
        v191 = *(v190 + 56);
        v192 = v388;
        v358 = v189;
        v347 = v191;
        v345 = v190 + 56;
        (v191)(v388, 1, 1);
        outlined init with copy of Date?(v192, v389, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        v193 = v396;
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v194 = &v193[*(v188 + 60)];
        v421.a = 0.0;
        v195 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v340 = v194;
        v336 = v195;
        CRRegister.init(wrappedValue:)();
        v421.a = 0.0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        v196 = v193;
        CRRegister.init(wrappedValue:)();
        v197 = type metadata accessor for StrokeStyle(0);
        v198 = v366;
        (*(*(v197 - 8) + 56))(v366, 1, 1, v197);
        outlined init with copy of Date?(v198, v367, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v198, &_s8PaperKit11StrokeStyleOSgMd);
        v199 = type metadata accessor for Shadow();
        v200 = v369;
        (*(*(v199 - 8) + 56))(v369, 1, 1, v199);
        outlined init with copy of Date?(v200, v370, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        v201 = v200;
        v202 = v196;
        outlined destroy of StocksKitCurrencyCache.Provider?(v201, &_s8PaperKit6ShadowVSgMd);
        memset(&v421, 0, sizeof(v421));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v421.a = v139;
        v421.b = v140;
        v421.c = v141;
        v421.d = v142;
        v203 = v372;
        CRRegister.init(_:)();
        (*v326)(v202, v203, v373);
        _s8PaperKit0A6MarkupVWOcTm_1(v401, v392, v339);
        v204 = v374;
        CRRegister.init(_:)();
        (*v325)(v202 + v338, v204, v375);
        v421.a = 5.0;
        v205 = v376;
        CRRegister.init(_:)();
        (*v324)(v341 + v202, v205, v377);
        v206 = v386;
        outlined init with copy of Date?(v403, v386, &_s8PaperKit5ColorVSgMd);
        v207 = v378;
        CRRegister.init(_:)();
        v208 = *v323;
        v209 = v379;
        (*v323)(v202 + v342, v207, v379);
        outlined init with copy of Date?(v397, v206, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(_:)();
        v208(v202 + v346, v207, v209);
        v210 = v395;
        v211 = v364;
        outlined init with copy of Date?(v398, v364, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*v322)(v211, 1, v210) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v211, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v212 = v357;
          (*v314)(v357, v211, v210);
          (*v313)(v202 + v333, v212, v210);
        }

        *&v421.a = 2;
        v213 = v380;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v398, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v397, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v403, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit0A6MarkupVWOhTm_1(v401, type metadata accessor for ShapeType);
        (*v321)(v340, v213, v381);
        v214 = v385;
        _s8PaperKit13CRAssetOrDataOWObTm_0(v202, v385, type metadata accessor for Shape);
        LOBYTE(v421.a) = v360;
        Shape.formContentType.setter(&v421);
        v215 = v388;
        CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v348, 0, v388);
        v347(v215, 0, 1, v358);
        outlined init with copy of Date?(v215, v389, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v215, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        _s8PaperKit0A6MarkupVWOcTm_1(v214, v361, type metadata accessor for Shape);
        static CRKeyPath.unique.getter();
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
        v216 = v390;
        Capsule.init(_:id:)();
        v217 = *v383;
        v218 = v393;
        v219 = v391;
        (*v383)(v393, v216, v391);
        LOBYTE(v216) = v360 == 50;
        v220 = objc_allocWithZone(type metadata accessor for ShapeView());
        *(v220 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
        *(v220 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
        *(v220 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
        *(v220 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
        v221 = direct field offset for ShapeView.showsSignaturePopover;
        *(v220 + direct field offset for ShapeView.showsSignaturePopover) = 0;
        v222 = direct field offset for ShapeView.analytics_inputSource;
        *(v220 + direct field offset for ShapeView.analytics_inputSource) = 68;
        v223 = direct field offset for ShapeView.analytics_documentType;
        *(v220 + direct field offset for ShapeView.analytics_documentType) = 68;
        *(v220 + direct field offset for ShapeView._textBoxView) = 0;
        *(v220 + direct field offset for ShapeView.appearanceStreamView) = 0;
        *(v220 + v221) = v216;
        *(v220 + v222) = 9;
        *(v220 + v223) = 5;
        v224 = v217;
        v406 = v217;
        v217(v399, v218, v219);
        v225 = MEMORY[0x1E69E7D40];
        (*v320)(v220 + *((*MEMORY[0x1E69E7D40] & *v220) + 0x3F8), 1, 1, v219);
        *(v220 + *((*v225 & *v220) + 0x400)) = 0;
        *(v220 + *((*v225 & *v220) + 0x408)) = 0;
        *(v220 + *((*v225 & *v220) + 0x410)) = 0;
        *(v220 + *((*v225 & *v220) + 0x418)) = 0;
        *(v220 + *((*v225 & *v220) + 0x420)) = 0;
        v226 = v220 + *((*v225 & *v220) + 0x3F0);
        v227 = v399;
        v224(v226, v399, v219);
        v228 = v416;
        v229 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v335, 0, 0.0, 0.0, 0.0, 0.0);
        specialized CanvasElementView.setupAccessibility()();
        (*((*MEMORY[0x1E69E7D40] & *v229) + 0x520))();
        v230 = *v356;
        (*v356)(v227, v219);
        v231 = v229;
        specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
        v232 = *((*MEMORY[0x1E69E7D40] & *v231) + 0x3F0);
        v233 = v231;
        swift_beginAccess();
        v234 = v231 + v232;
        v235 = v230;
        v236 = v399;
        v237 = v219;
        (v406)(v399, v234, v219);
        v238 = v236;
        LOBYTE(v236) = specialized Capsule<>.isTextBox.getter();

        v239 = v238;
        v240 = v237;
        v230(v239, v237);
        v55 = v315;
        v62 = v316;
        if (v236)
        {
          v241 = v350;
          v242 = v349;
        }

        else
        {
          v406 = v235;
          [v233 setIsAccessibilityElement_];
          v360 = v233;
          if (one-time initialization token for paperKitBundle != -1)
          {
            swift_once();
          }

          v425._object = v312;
          v243._countAndFlagsBits = 0x4025206570616853;
          v243._object = 0xE800000000000000;
          v244.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v244.value._object = 0xEB00000000656C62;
          v245._countAndFlagsBits = 0;
          v245._object = 0xE000000000000000;
          v425._countAndFlagsBits = 0xD00000000000005FLL;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v243, v244, paperKitBundle, v245, v425)._countAndFlagsBits;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v246 = swift_allocObject();
          *(v246 + 16) = v311;
          swift_getKeyPath();
          v247 = v392;
          Capsule.subscript.getter();

          ShapeType.any.getter(&v421);
          _s8PaperKit0A6MarkupVWOhTm_1(v247, type metadata accessor for ShapeType);
          d = v421.d;
          tx = v421.tx;
          __swift_project_boxed_opaque_existential_1(&v421, *&v421.d);
          v250 = (*(*&tx + 48))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          v252 = v251;
          *(v246 + 56) = MEMORY[0x1E69E6158];
          *(v246 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v246 + 32) = v250;
          *(v246 + 40) = v252;
          __swift_destroy_boxed_opaque_existential_0(&v421);
          v253 = static String.localizedStringWithFormat(_:_:)();
          v255 = v254;
          v240 = v391;

          v242 = MEMORY[0x1DA6CCED0](v253, v255);

          v233 = v360;
          [v360 setAccessibilityLabel_];

          v235 = v406;
          v241 = v350;
        }

        v235(v393, v240);
        v235(v390, v240);
        _s8PaperKit0A6MarkupVWOhTm_1(v385, type metadata accessor for Shape);
        (*v319)(v400, v395);
        *(v233 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField) = 1;
        *(v233 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext) = v241;
        v256 = v233;
        MEMORY[0x1DA6CD190]();
        v257 = v413;
        if (*((v422 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v422 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v406 = v422;
        v57 = v256;
        MEMORY[0x1DA6CD190]();
        if (*((v420 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v420 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v43 = v420;
        if (one-time initialization token for manager != -1)
        {
          swift_once();
        }

        v258 = *&v416[*&v257];
        if (v258)
        {
          v259 = v258;
        }

        else
        {
          v259 = *&v416[v317];
        }

        v260 = (*((*MEMORY[0x1E69E7D40] & *v259) + 0x90))();
        v261 = v258;

        specialized FormAnalytics.addFielde2eEvent(canvas:)(v260);
        v124 = v384;
        v76 = v413;
        if (v384 == v351)
        {
          goto LABEL_116;
        }

        continue;
      }
    }

    v354 = v57 & 0xFFFFFFFFFFFFFF8;
    v123 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v309 = v57;
    if (v123)
    {
      goto LABEL_63;
    }

LABEL_115:
    v43 = MEMORY[0x1E69E7CC0];
LABEL_116:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v355 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v355[2] + 1, 1, v355);
    }

    v53 = v408;
    v57 = v355[2];
    v264 = v355[3];
    if (v57 >= v264 >> 1)
    {
      v355 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v264 > 1), v57 + 1, 1, v355);
    }

    v265 = v355;
    v355[2] = v57 + 1;
    v265[v57 + 4] = v43;
LABEL_58:
    v61 = v414;
  }

  while (v414 != v407);
LABEL_123:

  v266 = (*&v53 + direct field offset for Canvas._editingView);
  v267 = *(*&v53 + direct field offset for Canvas._editingView);
  if (v267)
  {
    v268 = *(v266 + 1);
    v269 = *(*&v53 + direct field offset for Canvas._editingView);
  }

  else
  {
    v269 = *(*&v53 + direct field offset for Canvas.paperView);
    v268 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  v271 = v268[24];
  v53 = COERCE_DOUBLE(*&v53);
  v272 = v267;
  v271(v406, ObjectType, v268);

  v273 = *v266;
  v413 = v53;
  if (v273)
  {
    v274 = *(v266 + 1);
    v275 = v273;
  }

  else
  {
    v275 = *(*&v53 + direct field offset for Canvas.paperView);
    v274 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v276 = swift_getObjectType();
  v277 = v274[26];
  v278 = v273;
  v277(v355, v276, v274);

  v279 = *v266;
  if (*v266)
  {
    v280 = *v266;
    v55 = MEMORY[0x1E69E7CC0];
    v281 = v413;
  }

  else
  {
    v281 = v413;
    v280 = *(*&v413 + direct field offset for Canvas.paperView);
    v55 = MEMORY[0x1E69E7CC0];
  }

  v282 = (*((*MEMORY[0x1E69E7D40] & *v280) + 0x90))();
  v283 = v279;

  if (v282)
  {
    if (one-time initialization token for manager != -1)
    {
      swift_once();
    }

    specialized FormAnalytics.recordLatencyEvent(timestamps:endToEnd:)(v284, 1);
  }

  v285 = *v266;
  if (*v266)
  {
    v286 = *(v266 + 1);
  }

  else
  {
    v285 = *(*&v281 + direct field offset for Canvas.paperView);
    v286 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v287 = v285;

  v288 = swift_getObjectType();
  v57 = (v286[21])(v288, v286);

  if (!v57)
  {

    return;
  }

  v289 = [v334 formRegions];
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v421.a = v55;
  v412 = v57;
  if (v43 >> 62)
  {
    v290 = __CocoaSet.count.getter();
    if (!v290)
    {
      goto LABEL_171;
    }

LABEL_142:
    v291 = 0;
    v416 = (v43 & 0xC000000000000001);
    v415 = (v43 & 0xFFFFFFFFFFFFFF8);
    v414 = *MEMORY[0x1E698E130];
    while (1)
    {
      if (v416)
      {
        v292 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v291, v43));
      }

      else
      {
        if (v291 >= *(v415 + 2))
        {
          goto LABEL_166;
        }

        *&v292 = *(v43 + 8 * v291 + 32);
      }

      v53 = v292;
      v55 = v291 + 1;
      if (__OFADD__(v291, 1))
      {
        goto LABEL_165;
      }

      v293 = [*&v292 autoFillContentType];
      if (!v293)
      {
        goto LABEL_143;
      }

      v294 = v293;
      v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v296;
      if (v295 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v297)
      {

        goto LABEL_144;
      }

      v299 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v299)
      {
LABEL_143:
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v57 = *(*&v421.a + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

LABEL_144:
      ++v291;
      if (v55 == v290)
      {
        goto LABEL_171;
      }
    }
  }

  v290 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v290)
  {
    goto LABEL_142;
  }

LABEL_171:

  v300 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
  v301 = v412;
  v302 = *&v412[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];
  if ((*&v421.a & 0x8000000000000000) != 0 || (*&v421.a & 0x4000000000000000) != 0)
  {
    v303 = __CocoaSet.count.getter();
  }

  else
  {
    v303 = *(*&v421.a + 16);
  }

  v304 = v413;

  *(v302 + 32) = v303;

  v305 = *&v301[v300];
  if (v406 >> 62)
  {
    *(v305 + 24) = __CocoaSet.count.getter();
    v307 = *(*&v304 + direct field offset for CanvasView.formAnalytics);
    v306 = __CocoaSet.count.getter();
  }

  else
  {
    v306 = *((v406 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v305 + 24) = v306;
    v307 = *(*&v304 + direct field offset for CanvasView.formAnalytics);
  }

  if (v306)
  {
    v308 = 41;
  }

  else
  {
    v308 = 39;
  }

  *(v307 + 17) = v308;
}

uint64_t key path setter for Canvas.liveStreamMessenger : <A>Canvas<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  specialized Canvas.liveStreamMessenger.setter(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t Canvas.liveStreamMessenger.didset()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & v2;
  v57 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((v3 & v2) + 0xB50);
  v8 = *((v3 & v2) + 0xB58);
  v9 = type metadata accessor for Capsule();
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v50 - v10;
  v60 = type metadata accessor for CRKeyPath();
  v11 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v1 + direct field offset for Canvas.liveStreamMessenger);
  swift_beginAccess();
  v64 = v13;
  if (*v13)
  {
    v54 = v8;
    v56 = v4;
    v63 = v64[1];
    v14 = one-time initialization token for multipeerLogger;
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    v52 = v11;
    v53 = v9;
    v55 = v7;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, multipeerLogger);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v65 = v19;
      *v18 = 136315138;
      v20 = ObjectIdentifier.debugDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v65);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D38C4000, v16, v17, "New session for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1DA6D0660](v19, -1, -1);
      MEMORY[0x1DA6D0660](v18, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v51 = ObjectType;
    v24 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v25 = v58;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xCD0))();
    v26 = v59;
    CanvasElementView.canvasElement.getter(v59);
    v27 = v62;
    v28 = v57;
    (*(v5 + 104))(v62, *MEMORY[0x1E6995390], v57);
    v29 = v54;
    v30 = ObjectType;
    v31 = v55;
    v50 = PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(v24, v25, v26, v27, 0x7265706150, 0xE500000000000000, v30, v55, v63, v54);
    (*(v5 + 8))(v27, v28);
    (*(v61 + 8))(v26, v53);
    (*(v52 + 8))(v25, v60);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = v29;
    v33[4] = *(v56 + 2912);
    v33[5] = v32;
    v34 = type metadata accessor for Canvas();

    v35 = v50;
    PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(v50, v1, 0x7265706150, 0xE500000000000000, partial apply for closure #1 in Canvas.liveStreamMessenger.didset, v33, v51, v34, v63, &protocol witness table for AnyCanvas);

    *(v1 + direct field offset for Canvas.multipeerConnection) = v35;
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for multipeerLogger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, multipeerLogger);
    v37 = v1;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v65 = v41;
      *v40 = 136315138;
      v42 = ObjectIdentifier.debugDescription.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v65);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1D38C4000, v38, v39, "Ended session for %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1DA6D0660](v41, -1, -1);
      MEMORY[0x1DA6D0660](v40, -1, -1);
    }

    *(v37 + direct field offset for Canvas.multipeerConnection) = 0;
  }

  v45 = v64;
  AnyCanvas.liveStreamDrawings.setter(*v64 != 0);
  v46 = v45[1];
  v47 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0);
  v48 = swift_unknownObjectRetain();
  return v47(v48, v46);
}

void closure #1 in Canvas.liveStreamMessenger.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = 3;
    AnyCanvas.merge<A>(_:from:)(a1, &v9, a3, a4);
  }
}

uint64_t Canvas.canvasStateLiveStreamMessenger.didset()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for CRKeyPath();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(v2 + 696))(v12);
  if (v15)
  {
    v34 = v15;
    v30 = v2;
    v17 = v16;
    ObjectType = swift_getObjectType();
    v28 = v7;
    v33 = ObjectType;
    v29 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xCD0))();
    v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasState;
    swift_beginAccess();
    (*(v8 + 16))(v10, v1 + v19, v7);
    (*(v4 + 104))(v6, *MEMORY[0x1E6995388], v3);
    v20 = type metadata accessor for CanvasState(0);
    v21 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState);
    v22 = PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(v29, v14, v10, v6, 0x74537361766E6143, 0xEB00000000657461, v33, v20, v17, v21);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v28);
    (*(v31 + 8))(v14, v32);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v25 = v30;
    v24[2] = *(v30 + 2896);
    v24[3] = *(v25 + 2904);
    v24[4] = *(v25 + 2912);
    v24[5] = v23;
    v26 = type metadata accessor for Canvas();
    PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(v22, v1, 0x74537361766E6143, 0xEB00000000657461, partial apply for closure #1 in Canvas.canvasStateLiveStreamMessenger.didset, v24, v33, v26, v17, &protocol witness table for AnyCanvas);

    *(v1 + direct field offset for Canvas.multipeerCanvasStateConnection) = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + direct field offset for Canvas.multipeerCanvasStateConnection) = 0;
  }
}

void closure #1 in Canvas.canvasStateLiveStreamMessenger.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Canvas.mergeCanvasState(_:)();
  }
}

uint64_t key path setter for Canvas.updatablePaper : <A>Canvas<A>(uint64_t a1)
{
  type metadata accessor for Capsule();
  v2 = type metadata accessor for Optional();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return Canvas.updatablePaper.setter(v5);
}

uint64_t closure #1 in Canvas.mergeToCanvasElements()(uint64_t a1, uint64_t *a2)
{
  v33 = a1;
  v2 = *a2;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v24 = &v22 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v25 = &v22 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v23 = &v22 - v8;
  v9 = *((v3 & v2) + 0xB50);
  v10 = *((v3 & v2) + 0xB58);
  v11 = type metadata accessor for Capsule();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  CanvasElementView.canvasElement.getter(&v22 - v13);
  v34 = v9;
  v35 = v10;
  v36 = *((v3 & v2) + 0xB60);
  swift_getKeyPath();
  v15 = v23;
  Capsule.subscript.getter();

  (*(v12 + 8))(v14, v11);
  v16 = v26;
  v17 = v24;
  v18 = v28;
  (*(v26 + 16))(v24, v33, v28);
  WeakTagged_10.tag.getter();
  v37 = v39;
  v38 = v40;
  MEMORY[0x1DA6CB5C0](v18);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  v19 = v25;
  SharedTagged_10.init(_:id:)();
  (*(v16 + 8))(v17, v18);
  v20 = v27;
  LOBYTE(v18) = CROrderedSet.contains(_:)();
  (*(v30 + 8))(v19, v32);
  (*(v29 + 8))(v15, v20);
  return v18 & 1;
}

void closure #1 in Canvas.scheduleFinalizeTask()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v2 = *(Strong + direct field offset for Canvas.paperView);
    v3 = MEMORY[0x1E69E7D40];
    v4 = Strong;
    swift_beginAccess();
    type metadata accessor for Capsule();
    v5 = v2;
    v6 = v1;
    Capsule.finalizeTimestamps(_:)();
    swift_endAccess();

    (*((*v3 & *v4) + 0x7E0))();
  }
}

uint64_t closure #1 in Canvas.editingContainerElementId.setter()
{
  v0 = CRKeyPath.rawValue.getter();
  v2 = v1;
  v3 = CRKeyPath.rawValue.getter();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6 & 1;
}

void Canvas.editingMode.didset(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3C8);
  v5((&v18 + 2));
  if (BYTE2(v18) != v3)
  {
    v6 = *(v1 + direct field offset for Canvas.dropInteraction);
    if (v6)
    {
      v7 = *((*v4 & *v1) + 0xED8);
      v17 = v6;
      v8 = v7();
      v9 = &selRef_addInteraction_;
      if ((v8 & 1) == 0)
      {
        v9 = &selRef_removeInteraction_;
      }

      (v5)((&v18 + 1), [v1 *v9]);
      if (v3 == 1 || BYTE1(v18) == 1)
      {
        v10 = Canvas.editingView.getter();
        v12 = v11;
        ObjectType = swift_getObjectType();
        (*(v12 + 24))(ObjectType, v12);
      }

      v5(&v18);
      if (!v18)
      {
        v14 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        if (*(*v15 + 16) || (!*(*(v15 + 8) + 16) ? (v16 = *(v15 + 24) == 0) : (v16 = 0), !v16))
        {
          AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
        }
      }
    }
  }
}

Swift::Void __swiftcall Canvas.didMoveToSuperview()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Canvas();
  objc_msgSendSuper2(&v2, sel_didMoveToSuperview);
  v1 = [v0 superview];
  if (v1)
  {

    Canvas.updateAfterChangeInSuperviewOrWindow()();
  }
}

void @objc Canvas.didMoveToSuperview()(void *a1)
{
  v1 = a1;
  Canvas.didMoveToSuperview()();
}

Swift::Void __swiftcall Canvas.didMoveToWindow()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for Canvas();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    Canvas.updateAfterChangeInSuperviewOrWindow()();
    v2 = v0;
    v3 = [v2 traitOverrides];
    [v3 setNSIntegerValue:1 forTrait:objc_opt_class()];
  }
}

void @objc Canvas.didMoveToWindow()(void *a1)
{
  v1 = a1;
  Canvas.didMoveToWindow()();
}

Class @objc Canvas.keyCommands.getter()
{
  if (specialized Canvas.keyCommands.getter())
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIKeyCommand);
    v0.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v0.super.isa = 0;
  }

  return v0.super.isa;
}

void @objc Canvas.selectAllKeyCommand()(void *a1)
{
  v1 = a1;
  Canvas.selectAllKeyCommand()();
}

void @objc Canvas.deselectAllKeyCommand()(void *a1)
{
  v1 = a1;
  Canvas.deselectAll()();
}

uint64_t closure #1 in Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(void **a1, uint64_t a2, double a3, double a4)
{
  v7 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))())
  {
    return 0;
  }

  [v7 convertPoint:*(a2 + direct field offset for Canvas.paperView) fromCoordinateSpace:{a3, a4}];
  result = [v7 hitTest:0 withEvent:?];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t closure #1 in Canvas.showOrHideContent(below:)(uint64_t *a1, char *a2, char *a3, double a4, double a5)
{
  v57 = a2;
  v62 = *a1;
  v9 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v48 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v48 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v20 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v56 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - v24;
  v26 = (v62 + *MEMORY[0x1E6995440]);
  v51 = *v26;
  v63 = v51;
  v50 = v26[1];
  v64 = v50;
  v65 = a3;
  v55 = a3;
  swift_getKeyPath();
  v60 = a1;
  Capsule.Ref.subscript.getter();

  v27 = v61;
  CROrderedSet.makeIterator()();
  (*(v20 + 8))(v22, v27);
  v61 = v25;
  v62 = v23;
  CROrderedSet.Iterator.next()();
  v28 = v58;
  v59 = *(v58 + 48);
  if (v59(v19, 1, v14) != 1)
  {
    v58 = *(v28 + 32);
    v37 = (v28 + 8);
    (v58)(v16, v19, v14);
    while (1)
    {
      SharedTagged_10.subscript.getter();
      v39 = v67;
      v38 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(*(v38 + 8) + 8))(v39);
      v41 = v40;
      __swift_destroy_boxed_opaque_existential_0(v66);
      if (v41 <= a5)
      {
        (*v37)(v16, v14);
      }

      else
      {
        SharedTagged_10.subscript.getter();
        v43 = v67;
        v42 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v44 = (*(*(v42 + 8) + 8))(v43);
        (*v37)(v16, v14);
        __swift_destroy_boxed_opaque_existential_0(v66);
        if (v44 > 5000.0)
        {
          result = (*(v56 + 8))(v61, v62);
          *v57 = 0;
          return result;
        }
      }

      CROrderedSet.Iterator.next()();
      if (v59(v19, 1, v14) == 1)
      {
        break;
      }

      (v58)(v16, v19, v14);
    }
  }

  result = (*(v56 + 8))(v61, v62);
  v30 = v57;
  if (*v57 == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    v31 = v50;
    *(&v48 - 4) = v51;
    *(&v48 - 3) = v31;
    v32 = v55;
    *(&v48 - 2) = v55;
    swift_getKeyPath();
    v33 = v52;
    v34 = v60;
    Capsule.Ref.subscript.getter();

    v35 = v53;
    v36 = v54;
    if ((*(v53 + 48))(v33, 1, v54) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    else
    {
      v45 = v48;
      (*(v35 + 32))(v48, v33, v36);
      v46 = v49;
      v47 = Ref.subscript.getter();
      MEMORY[0x1EEE9AC00](v47);
      *(&v48 - 6) = v32;
      *(&v48 - 5) = v34;
      *(&v48 - 4) = a4;
      *(&v48 - 3) = a5;
      *(&v48 - 2) = v30;
      PKDrawingStruct.visitStrokes<A>(in:_:)(v34, partial apply for closure #1 in closure #1 in Canvas.showOrHideContent(below:), (&v48 - 8));
      _s8PaperKit0A6MarkupVWOhTm_1(v46, type metadata accessor for PKDrawingStruct);
      return (*(v35 + 8))(v45, v36);
    }
  }

  return result;
}

void closure #1 in closure #1 in Canvas.showOrHideContent(below:)(double a1, CGFloat a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v21 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.subscript.getter();
  v22 = a4;
  v12 = type metadata accessor for Capsule.Ref();

  WitnessTable = swift_getWitnessTable();
  v14 = specialized CRRegister<>.bounds(in:)(&v22, v11, v12, WitnessTable);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v9 + 8))(v11, v8);

  if (CGRect.isFinite.getter(v14, v16, v18, v20))
  {
    v23.origin.x = v14;
    v23.origin.y = v16;
    v23.size.width = v18;
    v23.size.height = v20;
    if (CGRectGetMinY(v23) > a2)
    {
      v24.origin.x = v14;
      v24.origin.y = v16;
      v24.size.width = v18;
      v24.size.height = v20;
      if (CGRectGetMinX(v24) > 5000.0)
      {
        *a5 = 0;
      }
    }
  }
}

uint64_t closure #2 in Canvas.showOrHideContent(below:)(char *a1, char *a2, char *a3, double a4, double a5)
{
  v97 = a2;
  v102 = *a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v81 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v13 = &v81 - v12;
  v14 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v99 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v85 = &v81 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v101 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v84 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v29 = (&v81 - v28);
  v30 = (v102 + *MEMORY[0x1E6995440]);
  v83 = *v30;
  v104 = v83;
  v82 = v30[1];
  v105 = v82;
  v106 = a3;
  v86 = a3;
  v31 = v18;
  v32 = v24;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();
  v33 = a1;

  CROrderedSet.makeIterator()();
  (v101[1])(v27, v25);
  v34 = v99;
  v102 = v29;
  CROrderedSet.Iterator.next()();
  v100 = *(v34 + 6);
  v101 = v34 + 48;
  if (v100(v32, 1, v16) != 1)
  {
    v43 = *(v34 + 4);
    v42 = v34 + 32;
    v98 = (v42 - 3);
    v99 = v43;
    do
    {
      v44 = v32;
      (v99)(v31, v32, v16);
      SharedTagged_10.subscript.getter();
      d = v108.d;
      tx = v108.tx;
      __swift_project_boxed_opaque_existential_1(&v108, *&v108.d);
      (*(*(*&tx + 8) + 8))(COERCE_CGFLOAT(*&d));
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_0(&v108);
      if (v48 > a5)
      {
        v49 = v13;
        v50 = *v97;
        SharedTagged_10.subscript.getter();
        v52 = v108.d;
        v51 = v108.tx;
        __swift_project_boxed_opaque_existential_1(&v108, *&v108.d);
        v53 = (*(*(*&v51 + 8) + 8))(COERCE_CGFLOAT(*&v52));
        __swift_destroy_boxed_opaque_existential_0(&v108);
        v54 = v50 == v53 >= 5000.0;
        v13 = v49;
        if (!v54)
        {
          if (*v97)
          {
            v55 = 10000.0;
          }

          else
          {
            v55 = -10000.0;
          }

          v90 = SharedTagged_10.subscript.modify();
          v56 = v42;
          v57 = v33;
          v60 = *(v58 + 24);
          v59 = *(v58 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v58, v60);
          v61 = *(v59 + 24);
          v62 = v60;
          v33 = v57;
          v42 = v56;
          v63 = v59;
          v13 = v49;
          v64 = v61(v107, v62, v63);
          *v65 = v55 + *v65;
          v64(v107, 0);
          v90(&v108, 0);
        }
      }

      (*v98)(v31, v16);
      v32 = v44;
      CROrderedSet.Iterator.next()();
    }

    while (v100(v44, 1, v16) != 1);
  }

  v35 = (*(v84 + 8))(v102, v103);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v82;
  *(&v81 - 4) = v83;
  *(&v81 - 3) = v36;
  v37 = v86;
  *(&v81 - 2) = v86;
  swift_getKeyPath();
  v38 = v85;
  Capsule.Ref.subscript.getter();

  v39 = v88;
  v40 = v89;
  if ((*(v88 + 48))(v38, 1, v89) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  (*(v39 + 32))(v87, v38, v40);
  v66 = v81;
  v67 = Ref.subscript.getter();
  MEMORY[0x1EEE9AC00](v67);
  *(&v81 - 6) = v37;
  *(&v81 - 5) = v33;
  *(&v81 - 4) = a4;
  *(&v81 - 3) = a5;
  *(&v81 - 2) = v97;
  v68 = PKDrawingStruct.filteredStrokes<A>(in:isIncluded:)(v33, partial apply for closure #1 in closure #2 in Canvas.showOrHideContent(below:), (&v81 - 8));
  _s8PaperKit0A6MarkupVWOhTm_1(v66, type metadata accessor for PKDrawingStruct);
  v69 = *(v68 + 16);
  if (v69)
  {
    v99 = v33;
    *&v108.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69, 0);
    v70 = *(v96 + 16);
    a = v108.a;
    v72 = *(v96 + 80);
    v98 = v68;
    v73 = v68 + ((v72 + 32) & ~v72);
    v102 = (v96 + 8);
    v103 = v70;
    v101 = (v95 + 32);
    v96 += 16;
    v100 = *(v96 + 56);
    do
    {
      v74 = v92;
      v75 = v94;
      v76 = v13;
      v77 = v103;
      v103(v92, v73, v94);
      v77(v93, v74, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      WeakRef.init<A>(_:)();
      (*v102)(v74, v75);
      v108.a = a;
      v79 = *(*&a + 16);
      v78 = *(*&a + 24);
      if (v79 >= v78 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1);
        a = v108.a;
      }

      *(*&a + 16) = v79 + 1;
      (*(v95 + 32))(*&a + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v79, v76, v91);
      v73 += v100;
      --v69;
      v13 = v76;
    }

    while (v69);

    v33 = v99;
    v40 = v89;
    v39 = v88;
  }

  else
  {

    a = MEMORY[0x1E69E7CC0];
  }

  v80 = -10000.0;
  if (*v97)
  {
    v80 = 10000.0;
  }

  CGAffineTransformMakeTranslation(&v108, v80, 0.0);
  static PKDrawingStruct.transformStrokes<A>(_:with:concat:in:)(*&a, &v108.a, 1, v33);

  return (*(v39 + 8))(v87, v40);
}

uint64_t closure #1 in closure #2 in Canvas.showOrHideContent(below:)(double a1, CGFloat a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.subscript.getter();
  v25 = a4;
  v12 = type metadata accessor for Capsule.Ref();

  WitnessTable = swift_getWitnessTable();
  v14 = specialized CRRegister<>.bounds(in:)(&v25, v11, v12, WitnessTable);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v9 + 8))(v11, v8);

  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  if (CGRectGetMinY(v26) <= a2)
  {
    v22 = 0;
  }

  else
  {
    v21 = *a5;
    v27.origin.x = v14;
    v27.origin.y = v16;
    v27.size.width = v18;
    v27.size.height = v20;
    v22 = v21 ^ (CGRectGetMinX(v27) >= 5000.0);
  }

  return v22 & 1;
}

uint64_t closure #1 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(uint64_t *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v9 = *a1;
  v10 = *(*a1 + *MEMORY[0x1E6995440]);
  MEMORY[0x1EEE9AC00](a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = *a2 / 1.2;
  v15 = a2[1] / 1.2;
  Capsule.Ref.root.getter();
  v16 = type metadata accessor for Image(0);
  v17 = swift_dynamicCast();
  v18 = *(*(v16 - 8) + 56);
  if (v17)
  {
    v18(v13, 0, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v20 = v34;
    v19 = v35;
    v21 = _s8PaperKit0A6MarkupVWOhTm_1(v13, type metadata accessor for Image);
    if (v14 < v20 || v15 < v19)
    {
      v23 = v14 / v20;
      if (v15 / v19 < v14 / v20)
      {
        v23 = v15 / v19;
      }

      v14 = v20 * v23;
      v15 = v19 * v23;
    }

    else
    {
      v14 = v20;
      v15 = v19;
    }
  }

  else
  {
    v18(v13, 1, 1, v16);
    v21 = outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ImageVSgMd);
  }

  MEMORY[0x1EEE9AC00](v21);
  *(&v30 - 6) = a3;
  *(&v30 - 5) = v10;
  v25 = v30;
  v24 = v31;
  *(&v30 - 4) = a4;
  *(&v30 - 3) = v25;
  v26 = *(v9 + *MEMORY[0x1E6995440] + 8);
  *(&v30 - 2) = v26;
  *(&v30 - 1) = v24;
  swift_getKeyPath();
  v27 = a2[3] - v15 * 0.5;
  v32 = a2[2] - v14 * 0.5;
  v33 = v27;
  v34 = v14;
  v35 = v15;
  v28 = Capsule.Ref.subscript.setter();
  MEMORY[0x1EEE9AC00](v28);
  *(&v30 - 6) = a3;
  *(&v30 - 5) = v10;
  *(&v30 - 4) = a4;
  *(&v30 - 3) = v25;
  *(&v30 - 2) = v26;
  *(&v30 - 1) = v24;
  swift_getKeyPath();
  v32 = a2[4];
  return Capsule.Ref.subscript.setter();
}

void key path getter for PaperRenderable.frame : <A><A1>A1(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 40));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

uint64_t closure #3 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in CanvasGenerationTool.showBlurEffect(animationDuration:);
  *(v4 + 24) = v3;
  v8[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_329;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void Canvas.screenScaleOverride.didset()
{
  v1 = *(v0 + direct field offset for Canvas.paperView);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x250);
  v3 = v1;
  v2();
}

void closure #2 in Canvas.presentSubelement<A>(_:presentationViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = 4;
    AnyCanvas.merge<A>(_:from:)(a1, &v12, a4, a7);
  }
}

void Canvas.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  if ([v2 isFirstResponder])
  {
    v18 = v2;
    AnyCanvas.overlays.getter();
    v6 = v5;
    v7 = *(v5 + 16);
    v8 = v7 + 1;
    v9 = (v5 + 16 * v7 + 24);
    do
    {
      if (!--v8)
      {

        v2 = v18;
        goto LABEL_10;
      }

      if (v8 > *(v6 + 16))
      {
        __break(1u);
        return;
      }

      v10 = v9 - 2;
      v11 = *(v9 - 1);
      v12 = *v9;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      v15 = v11;
      v16 = v14(a1, a2, ObjectType, v12);

      v9 = v10;
    }

    while ((v16 & 1) == 0);
  }

  else
  {
LABEL_10:
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress);
    lazy protocol witness table accessor for type UIPress and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v19.receiver = v2;
    v19.super_class = type metadata accessor for Canvas();
    objc_msgSendSuper2(&v19, sel_pressesBegan_withEvent_, isa, a2);
  }
}

void Canvas.pressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v18 = v2;
  AnyCanvas.overlays.getter();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = v7 + 1;
  v9 = (v5 + 16 * v7 + 24);
  do
  {
    if (!--v8)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress);
      lazy protocol witness table accessor for type UIPress and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      v19.receiver = v18;
      v19.super_class = type metadata accessor for Canvas();
      objc_msgSendSuper2(&v19, sel_pressesEnded_withEvent_, isa, a2);

      return;
    }

    if (v8 > *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v10 = v9 - 2;
    v11 = *(v9 - 1);
    v12 = *v9;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    v15 = v11;
    v16 = v14(a1, a2, ObjectType, v12);

    v9 = v10;
  }

  while ((v16 & 1) == 0);
}

uint64_t @objc Canvas.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

uint64_t closure #1 in Canvas.selectableElements.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v19 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Capsule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  CanvasElementView.canvasElement.getter(&v19 - v10);
  v12 = v20;
  SharedTagged_10.subscript.getter();
  (*(v9 + 8))(v11, v8);
  v13 = v26;
  v14 = v27;
  __swift_project_boxed_opaque_existential_1(&v24, v26);
  (*(v14 + 88))(&v22, v13, v14);
  LOBYTE(v13) = v22;
  __swift_destroy_boxed_opaque_existential_0(&v24);
  if ((v13 & 2) != 0)
  {
    v16 = 1;
    v15 = v21;
  }

  else
  {
    (*(v5 + 16))(v7, v12, v4);
    WeakTagged_10.tag.getter();
    v22 = v24;
    v23 = v25;
    MEMORY[0x1DA6CB7A0](v4);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    v15 = v21;
    WeakTagged_10.init(_:id:)();
    (*(v5 + 8))(v7, v4);
    v16 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v17 - 8) + 56))(v15, v16, 1, v17);
}

uint64_t Canvas.PaperViewCanvasPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a1;
  v87 = a4;
  v7 = *(a2 + 16);
  v82 = a2;
  v83 = v7;
  v84 = *(a2 + 24);
  v79 = type metadata accessor for Capsule();
  v8 = type metadata accessor for AnySubscriber();
  v76 = type metadata accessor for Optional();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v10 = &v70 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v85 = &v70 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v81 = &v70 - v33;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v73 = result;
    v72 = *(v4 + 8);
    v74 = v11;
    v35 = *(v11 + 16);
    v35(v25, v86, a3);
    v35(v22, v25, a3);
    v36 = swift_dynamicCast();
    v37 = *(v26 + 56);
    v38 = v8;
    if (v36)
    {
      v37(v10, 0, 1, v8);
      v39 = *(v26 + 32);
      v39(v29, v10, v8);
      v40 = v85;
      v39(v85, v29, v8);
      v41 = v74;
      v42 = v25;
      v43 = a3;
LABEL_14:
      v65 = *(v82 + 32);
      *&v91 = v83;
      *(&v91 + 1) = v83;
      v92 = v84;
      v93 = v65;
      WitnessTable = v84;
      v66 = type metadata accessor for Canvas.PaperViewCanvasSubscription();
      v67 = v81;
      (*(v26 + 32))(v81, v40, v38);
      (*(v41 + 8))(v42, v43);
      swift_allocObject();
      v68 = v73;
      v69 = specialized Canvas.PaperViewCanvasSubscription.init(canvas:live:subscriber:)(v73, v72, v67);
      *&v88 = v69;
      swift_beginAccess();
      type metadata accessor for Array();

      Array.append(_:)();
      swift_endAccess();
      v93 = v66;
      WitnessTable = swift_getWitnessTable();
      *&v91 = v69;
      dispatch thunk of Subscriber.receive(subscription:)();

      return __swift_destroy_boxed_opaque_existential_0(&v91);
    }

    v70 = v26;
    v37(v10, 1, 1, v8);
    (*(v75 + 8))(v10, v76);
    v44 = v85;
    v45 = v35;
    dispatch thunk of CustomCombineIdentifierConvertible.combineIdentifier.getter();
    type metadata accessor for AnySubscriberBox();
    v35(v80, v25, a3);
    *v44 = AnySubscriberBox.__allocating_init(_:)();
    v35(v77, v25, a3);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd);
    v46 = a3;
    if (swift_dynamicCast())
    {
      outlined init with take of PaperKitHashable(&v88, &v91);
      outlined init with take of PaperKitHashable(&v91, &v88);
      v47 = swift_allocObject();
      outlined init with take of PaperKitHashable(&v88, v47 + 16);
      v48 = partial apply for closure #1 in AnySubscriber.init<A>(_:);
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      outlined destroy of StocksKitCurrencyCache.Provider?(&v88, &_ss23CustomStringConvertible_pSgMd);
      swift_getDynamicType();
      v49 = _typeName(_:qualified:)();
      v50 = v38;
      v52 = v51;
      v47 = swift_allocObject();
      *(v47 + 16) = v49;
      *(v47 + 24) = v52;
      v44 = v85;
      v38 = v50;
      v48 = partial apply for closure #2 in AnySubscriber.init<A>(_:);
    }

    v41 = v74;
    v44[1] = v48;
    v44[2] = v47;
    v53 = v80;
    v45(v80, v25, v46);
    v54 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v55 = swift_allocObject();
    v55[2] = v79;
    v55[3] = v46;
    v55[4] = v87;
    v56 = v55 + v54;
    v40 = v85;
    v57 = v53;
    v58 = v45;
    (*(v41 + 32))(v56, v57, v46);
    v40[3] = partial apply for closure #3 in AnySubscriber.init<A>(_:);
    v40[4] = v55;
    v45(v78, v25, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss34CustomPlaygroundDisplayConvertible_pMd);
    v43 = v46;
    v42 = v25;
    if (swift_dynamicCast())
    {
      outlined init with take of PaperKitHashable(&v88, &v91);
      outlined init with take of PaperKitHashable(&v91, &v88);
      v59 = swift_allocObject();
      outlined init with take of PaperKitHashable(&v88, v59 + 16);
      v60 = partial apply for closure #4 in AnySubscriber.init<A>(_:);
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      outlined destroy of StocksKitCurrencyCache.Provider?(&v88, &_ss34CustomPlaygroundDisplayConvertible_pSgMd);
      v58(v71, v25, v46);
      if (!swift_dynamicCast())
      {
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        outlined destroy of StocksKitCurrencyCache.Provider?(&v88, &_ss23CustomStringConvertible_pSgMd);
        swift_getDynamicType();
        v61 = _typeName(_:qualified:)();
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v61;
        *(v64 + 24) = v63;
        v40[5] = partial apply for closure #6 in AnySubscriber.init<A>(_:);
        v40[6] = v64;
        goto LABEL_13;
      }

      outlined init with take of PaperKitHashable(&v88, &v91);
      outlined init with take of PaperKitHashable(&v91, &v88);
      v59 = swift_allocObject();
      outlined init with take of PaperKitHashable(&v88, v59 + 16);
      v60 = partial apply for closure #5 in AnySubscriber.init<A>(_:);
    }

    v40[5] = v60;
    v40[6] = v59;
LABEL_13:
    v26 = v70;
    goto LABEL_14;
  }

  return result;
}

Swift::Void __swiftcall Canvas.setNeedsLayout()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for Canvas();
  objc_msgSendSuper2(&v1, sel_setNeedsLayout);
  Canvas.setCanvasStateNeedsLayout()();
}

void @objc Canvas.setNeedsLayout()(void *a1)
{
  v1 = a1;
  Canvas.setNeedsLayout()();
}

Swift::Void __swiftcall Canvas.layoutSubviews()()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for Canvas();
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  AnyCanvas.overlays.getter();
  v32 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v5 = *v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        v8 = Canvas.editingView.getter();
        [v8 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v17 = Canvas.editingView.getter();
        [v7 convertRect:v17 fromCoordinateSpace:{v10, v12, v14, v16}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [v5 frame];
        x = v34.origin.x;
        y = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
        IsNull = CGRectIsNull(v34);
        v35.origin.x = v19;
        v35.origin.y = v21;
        v35.size.width = v23;
        v35.size.height = v25;
        v31 = CGRectIsNull(v35);
        if (IsNull && v31 || IsNull == v31 && vabdd_f64(x, v19) < 0.1 && vabdd_f64(y, v21) < 0.1 && vabdd_f64(width, v23) < 0.1 && vabdd_f64(height, v25) < 0.1)
        {
          v4 = v7;
          v7 = v5;
        }

        else
        {
          [v5 setFrame_];
          v4 = v5;
        }

        v5 = v7;
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void @objc Canvas.layoutSubviews()(void *a1)
{
  v1 = a1;
  Canvas.layoutSubviews()();
}

void closure #1 in Canvas.applyUndo(_:selection:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CapsuleUndoAction();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v10 = v9;
  Capsule.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence17CapsuleUndoActionVSgMd);
  swift_endAccess();
}

void specialized closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, char a6, uint64_t a7)
{
  specialized Canvas.undoable(newChange:persistSelection:action:)(1, a3 != 0, partial apply for specialized closure #1 in Canvas.applyUndo(_:selection:));
  if (a3)
  {

    v13 = a6 & 1;
    v14 = a3;
    v15 = a4;
    v16 = a5;
LABEL_6:
    AnyCanvas.selection.setter(v14, v15, v16, v13);
    goto LABEL_7;
  }

  v17 = *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v17)
  {
    __break(1u);
    return;
  }

  if (*(v17 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24))
  {
    v14 = MEMORY[0x1E69E7CD0];
    v15 = MEMORY[0x1E69E7CD0];
    v16 = 6;
    v13 = 0;
    goto LABEL_6;
  }

LABEL_7:
  v18 = *(a7 + 16);
  if (v18)
  {
    v19 = a7 + 32;
    do
    {
      outlined init with copy of FindResult(v19, v20);
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      AnalyticsEvent.send()();
      __swift_destroy_boxed_opaque_existential_0(v20);
      v19 += 40;
      --v18;
    }

    while (v18);
  }
}

void closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, char a6, uint64_t a7)
{
  Canvas.applyUndo(_:selection:)(a2, a3, a4, a5, a6);
  v8 = *(a7 + 16);
  if (v8)
  {
    v9 = a7 + 32;
    do
    {
      outlined init with copy of FindResult(v9, v10);
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      AnalyticsEvent.send()();
      __swift_destroy_boxed_opaque_existential_0(v10);
      v9 += 40;
      --v8;
    }

    while (v8);
  }
}

uint64_t Canvas.PaperViewCanvasSubscription.deinit()
{
  v1 = *(*v0 + 120);
  type metadata accessor for Capsule();
  v2 = type metadata accessor for AnySubscriber();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x1DA6D07B0](v0 + *(*v0 + 128));
  return v0;
}

uint64_t Canvas.PaperViewCanvasSubscription.__deallocating_deinit()
{
  Canvas.PaperViewCanvasSubscription.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in closure #1 in Canvas.addWords(_:layout:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v47 = a3;
  v6 = *a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v35 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v38 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = *(v6 + *MEMORY[0x1E6995440]);
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v34 - v16;
  v17 = Capsule.Ref.root.modify();
  v51 = a1;
  v48 = a4;
  ContainerCanvasElement.ensureHasDrawing<A>(in:)(a1, v11, a4);
  v18 = v49;
  result = v17(v52, 0);
  if (v18 >> 62)
  {
    result = __CocoaSet.count.getter();
    v20 = result;
    v21 = v39;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v39;
    if (!v20)
    {
      return result;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
  }

  else
  {
    v22 = 0;
    v53 = v18 & 0xC000000000000001;
    v43 = v48 + 64;
    v44 = (v40 + 2);
    ++v42;
    ++v40;
    v41 = (v35 + 6);
    v36 = (v35 + 2);
    ++v35;
    v37 = v15;
    v45 = v20;
    do
    {
      if (v53)
      {
        MEMORY[0x1DA6CE0C0](v22, v18);
      }

      else
      {
      }

      type metadata accessor for ReflowWord();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 280);
        v25 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v26 = (*v44)(v21, v24 + v25, v15);
        if (v47)
        {
          MEMORY[0x1EEE9AC00](v26);
          *(&v34 - 2) = v27;
          v28 = v50;
          Capsule.callAsFunction<A>(_:)();
          v50 = v28;
        }

        Capsule.Ref.root.getter();
        (*(v48 + 64))(v11);
        (*v42)(v14, v11);
        v29 = v46;
        if ((*v41)(v10, 1, v46))
        {
          (*v40)(v21, v15);

          result = outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
        }

        else
        {
          v30 = v11;
          v31 = v38;
          (*v36)(v38, v10, v29);
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
          v32 = Ref.subscript.modify();
          PKDrawingStruct.append<A>(_:in:)();
          v32(v52, 0);

          v33 = v31;
          v11 = v30;
          v15 = v37;
          v21 = v39;
          (*v35)(v33, v29);
          result = (*v40)(v21, v15);
        }

        v18 = v49;
        v20 = v45;
      }

      else
      {
      }

      ++v22;
    }

    while (v20 != v22);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in Canvas.addWords(_:layout:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v47[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v47[-v11];
  v12 = *(a2 + 64);
  v49 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v48 = (v13 + 63) >> 6;
  v59 = (v3 + 32);
  v60 = (v3 + 16);
  v50 = v3;
  v53 = (v3 + 8);
  v51 = a2;

  v17 = 0;
  v52 = xmmword_1D4058CF0;
  v54 = v9;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v51;
      v24 = v50;
      v25 = v61;
      v26 = v64;
      (*(v50 + 16))(v61, *(v51 + 48) + *(v50 + 72) * v22, v64);
      v27 = *(v23 + 56) + 48 * v22;
      v28 = *(v27 + 32);
      v29 = *(v27 + 40);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd);
      v31 = &v9[*(v30 + 48)];
      v32 = *(v24 + 32);
      v33 = *(v27 + 16);
      v62 = *v27;
      v58 = v33;
      v32(v9, v25, v26);
      v34 = v58;
      *v31 = v62;
      *(v31 + 1) = v34;
      *(v31 + 4) = v28;
      *(v31 + 5) = v29;
      (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
      v20 = v18;
LABEL_13:
      v35 = v57;
      outlined init with take of Range<AttributedString.Index>(v9, v57, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {
      }

      v37 = &v35[*(v36 + 48)];
      v38 = v37[1];
      v63[0] = *v37;
      v63[1] = v38;
      v63[2] = v37[2];
      v39 = v61;
      v40 = v64;
      (*v59)(v61, v35, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      *&v62 = v20;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v42 = *(v41 - 8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v52;
      (*v60)(v55, v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      WeakRef.init<A>(_:)();
      _s8PaperKit15PKDrawingStructV16transformStrokes_4with6concat2inySay9Coherence7WeakRefVyAH10CRRegisterVyAA12TaggedStrokeOGGG_So17CGAffineTransformVSbAH7CapsuleV0L0Cyx_GtAH4CRDTRzlFZAC_Tt3g5(v44, v63, 0, v56);
      swift_setDeallocating();
      (*(v42 + 8))(v44 + v43, v41);
      swift_deallocClassInstance();
      v45 = v40;
      v9 = v54;
      result = (*v53)(v39, v45);
      v17 = v62;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v48 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v48;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v48)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd);
        (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v49 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Canvas.transformStrokes(_:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v4 = v3;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();

  return (*((*v2 & *a1) + 0x850))(1);
}

uint64_t closure #1 in closure #1 in Canvas.transformStrokes(_:)(void *a1, uint64_t a2)
{
  v56 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v47[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v47[-v11];
  v12 = *(a2 + 64);
  v49 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v48 = (v13 + 63) >> 6;
  v59 = (v3 + 32);
  v60 = (v3 + 16);
  v50 = v3;
  v53 = (v3 + 8);
  v51 = a2;

  v17 = 0;
  v52 = xmmword_1D4058CF0;
  v54 = v9;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v51;
      v24 = v50;
      v25 = v61;
      v26 = v64;
      (*(v50 + 16))(v61, *(v51 + 48) + *(v50 + 72) * v22, v64);
      v27 = *(v23 + 56) + 48 * v22;
      v28 = *(v27 + 32);
      v29 = *(v27 + 40);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd);
      v31 = &v9[*(v30 + 48)];
      v32 = *(v24 + 32);
      v33 = *(v27 + 16);
      v62 = *v27;
      v58 = v33;
      v32(v9, v25, v26);
      v34 = v58;
      *v31 = v62;
      *(v31 + 1) = v34;
      *(v31 + 4) = v28;
      *(v31 + 5) = v29;
      (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
      v20 = v18;
LABEL_13:
      v35 = v57;
      outlined init with take of Range<AttributedString.Index>(v9, v57, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {
      }

      v37 = &v35[*(v36 + 48)];
      v38 = v37[1];
      v63[0] = *v37;
      v63[1] = v38;
      v63[2] = v37[2];
      v39 = v61;
      v40 = v64;
      (*v59)(v61, v35, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      *&v62 = v20;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v42 = *(v41 - 8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v52;
      (*v60)(v55, v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      WeakRef.init<A>(_:)();
      static PKDrawingStruct.transformStrokes<A>(_:with:concat:in:)(v44, v63, 0, v56);
      swift_setDeallocating();
      (*(v42 + 8))(v44 + v43, v41);
      swift_deallocClassInstance();
      v45 = v40;
      v9 = v54;
      result = (*v53)(v39, v45);
      v17 = v62;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v48 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v48;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v48)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd);
        (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v49 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void closure #1 in Canvas.startCheckingForOldEraserStrokes()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Canvas.removeOldEraserStrokes()();
  }
}

uint64_t closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = type metadata accessor for Capsule();
  v8[11] = v9;
  v10 = type metadata accessor for Optional();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

uint64_t closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 88);
    Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(*(v0 + 56), v4, *(v0 + 80), v2);
    if ((*(v3 + 48))(v2, 1, v4) == 1)
    {
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
      *(v0 + 160) = type metadata accessor for MainActor();
      *(v0 + 168) = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
      v8 = closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:);
    }

    else
    {
      (*(*(v0 + 120) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 88));
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D38C4000, v12, v13, "Removed old eraser stroke(s)", v14, 2u);
        MEMORY[0x1DA6D0660](v14, -1, -1);
      }

      *(v0 + 200) = 3;
      type metadata accessor for MainActor();
      *(v0 + 152) = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v15;
      v8 = closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:);
    }

    return MEMORY[0x1EEE6DFA0](v8, v5, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v1 = *(v0 + 136);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  AnyCanvas.merge<A>(_:from:)(v1, (v0 + 200), v3, v2);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  (*(v0[15] + 8))(v0[17], v0[11]);
  v0[20] = type metadata accessor for MainActor();
  v0[21] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v2, v1);
}

{
  v1 = *(v0 + 144);

  *(v0 + 176) = *(v1 + direct field offset for Canvas.eraserCheckingIndex);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v2, v1);
}

{
  v1 = *(v0 + 128);

  CanvasElementView.canvasElement.getter(v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  if (Capsule<>.hasAnyEraserStrokes()(v0[11], v0[10]))
  {
    v1 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[11]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[24] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v5, v4);
  }
}

{
  v1 = *(v0 + 176);

  Canvas.stopCheckingForOldEraserStrokes(index:)(v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in Canvas.align(members:to:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v68 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v13);
  v62 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v59 - v19;
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v23 = *(MEMORY[0x1E695F050] + 16);
  v24 = *(MEMORY[0x1E695F050] + 24);
  v70.a = *MEMORY[0x1E695F050];
  v70.b = v22;
  v70.c = v23;
  v70.d = v24;
  v25 = a2 + 56;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 56);
  v29 = (v26 + 63) >> 6;
  v66 = v18 + 16;
  v75 = v18;
  v67 = (v18 + 8);
  swift_bridgeObjectRetain_n();
  v30 = 0;
  if (v28)
  {
    while (1)
    {
      v31 = v30;
LABEL_8:
      (*(v75 + 16))(v20, *(a2 + 48) + *(v75 + 72) * (__clz(__rbit64(v28)) | (v31 << 6)), v13);
      closure #1 in closure #1 in Canvas.align(members:to:)(&v70.a, &v71);
      if (v6)
      {
        break;
      }

      v28 &= v28 - 1;
      (*v67)(v20, v13);
      v21 = v71;
      v22 = v72;
      v23 = v73;
      v24 = v74;
      v70.a = v71;
      v70.b = v72;
      v70.c = v73;
      v70.d = v74;
      v30 = v31;
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v31 >= v29)
      {
        break;
      }

      v28 = *(v25 + 8 * v31);
      ++v30;
      if (v28)
      {
        goto LABEL_8;
      }
    }

    v59[1] = v6;

    v76.origin.x = a3;
    v76.origin.y = a4;
    v76.size.width = a5;
    v76.size.height = a6;
    MinX = CGRectGetMinX(v76);
    v65 = a6;
    v33 = MinX;
    v77.origin.x = v21;
    v77.origin.y = v22;
    v77.size.width = v23;
    v77.size.height = v24;
    v34 = v33 - CGRectGetMinX(v77);
    v78.origin.x = a3;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = v65;
    MinY = CGRectGetMinY(v78);
    v79.origin.x = v21;
    v79.origin.y = v22;
    v79.size.width = v23;
    v79.size.height = v24;
    v36 = CGRectGetMinY(v79);
    CGAffineTransformMakeTranslation(&v70, v34, MinY - v36);
    v7 = 0;
    v61 = *&v70.c;
    v60 = *&v70.a;
    v37 = 1 << *(a2 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(a2 + 56);
    tx = v70.tx;
    ty = v70.ty;
    v42 = (v37 + 63) >> 6;
    v63 = v75 + 32;
    v20 = v62;
    while (v39)
    {
LABEL_21:
      v54 = v75;
      v55 = v64;
      (*(v75 + 16))(v64, *(a2 + 48) + *(v75 + 72) * (__clz(__rbit64(v39)) | (v7 << 6)), v13);
      (*(v54 + 32))(v20, v55, v13);
      v52 = COERCE_DOUBLE(WeakTagged_10.subscript.modify());
      v57 = *(v56 + 24);
      if (v57)
      {
        v43 = v13;
        v44 = a2;
        v45 = *(v56 + 32);
        v46 = v56;
        v47 = *(v56 + 24);
        v65 = v52;
        __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
        v48 = *(v45 + 24);
        v49 = v45;
        a2 = v44;
        v13 = v43;
        v20 = v62;
        v50 = v48(v69, v57, v49);
        v80 = *v51;
        *&v70.c = v61;
        *&v70.a = v60;
        v70.tx = tx;
        v70.ty = ty;
        *v51 = CGRectApplyAffineTransform(v80, &v70);
        v50(v69, 0);
        v52 = v65;
      }

      (*&v52)(&v71, 0);
      v39 &= v39 - 1;
      (*v67)(v20, v13);
    }

    while (1)
    {
      v53 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v53 >= v42)
      {
      }

      v39 = *(v25 + 8 * v53);
      ++v7;
      if (v39)
      {
        v7 = v53;
        goto LABEL_21;
      }
    }

LABEL_25:
    __break(1u);
  }

  result = (*v67)(v20, v13);
  __break(1u);
  return result;
}

void closure #1 in closure #1 in Canvas.align(members:to:)(CGFloat *a1@<X0>, CGFloat *a2@<X8>)
{
  x = *a1;
  y = a1[1];
  width = a1[2];
  height = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.subscript.getter();
  v7 = v17;
  if (v17)
  {
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = (*(*(v8 + 8) + 8))(v7);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit13CanvasElement_pSgMd);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    v20 = CGRectUnion(v19, v21);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit13CanvasElement_pSgMd);
  }

  *a2 = x;
  a2[1] = y;
  a2[2] = width;
  a2[3] = height;
}

uint64_t closure #1 in closure #1 in Canvas.canvasDescription.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v15 = a3;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  Capsule.Ref.root.getter();
  result = swift_dynamicCast();
  if (result)
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Image);
    Capsule.Ref.rootID.getter();
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    Ref.init(id:)();
    v13 = Ref.subscript.modify();
    v16 = v14;
    v17 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
    CRRegister.wrappedValue.setter();
    v13(v18, 0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void closure #1 in Canvas.addWords(_:layout:)(uint64_t a1)
{
  v1 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v2 = v1;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

uint64_t closure #1 in closure #1 in Canvas.canvasCaption.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  Capsule.Ref.root.getter();
  result = swift_dynamicCast();
  if (result)
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Image);
    Capsule.Ref.rootID.getter();
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    Ref.init(id:)();
    v13 = Ref.subscript.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
    v14 = CRRegister.wrappedValue.modify();
    v15 = v18;
    *v16 = v17;
    v16[1] = v15;

    v14(v19, 0);
    v13(v20, 0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 + 33) = a11;
  *(v11 + 80) = a9;
  *(v11 + 88) = a10;
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 40) = a8;
  type metadata accessor for MainActor();
  *(v11 + 96) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v11 + 104) = v13;
  *(v11 + 112) = v12;

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:), v13, v12);
}

uint64_t closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:)()
{
  v31 = v0;
  v1 = *(v0 + 40);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x468))();
  *(v0 + 120) = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  type metadata accessor for TiledTextView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_9:

    v21 = *(v0 + 33);
    v22.n128_u64[0] = *(v0 + 64);
    v23.n128_u64[0] = *(v0 + 72);
    v24.n128_u64[0] = *(v0 + 48);
    v25.n128_u64[0] = *(v0 + 56);
    v26 = *(v0 + 40);
    v29 = *(v0 + 80);
    v30 = v21;
    (*((*v2 & *v26) + 0xAC8))(&v29, v24, v25, v22, v23);
    goto LABEL_10;
  }

  [*(v0 + 40) convertRect:v5 toCoordinateSpace:{*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72)}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v15 = v14;
  v16 = *&v14[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (v16)
  {
    v17 = *(v0 + 33);
    v18 = *(v16 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);
    *(v0 + 128) = v18;
    v18;
    v28 = *(v0 + 80);

    *(v0 + 16) = v28;
    *(v0 + 32) = v17;
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    *v19 = v0;
    v19[1] = closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:);

    return CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)(v0 + 16, v1, 2, v7, v9, v11, v13);
  }

LABEL_10:
  v27 = *(v0 + 8);

  return v27();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 128);
  }

  else
  {
  }

  v4 = *(v2 + 104);
  v5 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:), v4, v5);
}

{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = type metadata accessor for Image(0);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  v6[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), 0, 0);
}

uint64_t closure #1 in Canvas.removeImageBackground(for:)()
{
  v2 = v0[29];
  v1 = v0[30];
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit0A6MarkupVWOhTm_1(v2, type metadata accessor for Image);
  v3 = type metadata accessor for CRAssetOrData();
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[30], &_s8PaperKit13CRAssetOrDataOSgMd);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = closure #1 in Canvas.removeImageBackground(for:);

    return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(0x7FFFFFFFFFFFFFFFLL, 1, 0);
  }
}

{
  v1 = v0[32];
  if (v1)
  {
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v3 = swift_task_alloc();
        v0[33] = v3;
        *(v3 + 16) = v1;
        v4 = swift_task_alloc();
        v0[34] = v4;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CGImageRefaSg_So6CGRectVtMd);
        *v4 = v0;
        v4[1] = closure #1 in Canvas.removeImageBackground(for:);

        return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD00000000000001BLL, 0x80000001D4091D00, partial apply for closure #1 in closure #1 in Canvas.removeImageBackground(for:), v3, v5);
      }
    }
  }

  v6 = v0[1];

  return v6();
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #1 in Canvas.removeImageBackground(for:);
  }

  else
  {

    v2 = closure #1 in Canvas.removeImageBackground(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 64);
  *(v0 + 288) = v1;
  v21 = *(v0 + 88);
  v22 = *(v0 + 72);
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {

    goto LABEL_7;
  }

  if (!v1)
  {

    goto LABEL_7;
  }

  v3 = v1;
  v4 = CGImageRef.imageData(compressionQuality:asPng:)(1, 0.9);
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  if (v5 >> 60 == 15)
  {
    v6 = *(v0 + 256);

LABEL_7:

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = v4;
  v10 = v5;
  v11 = *(v0 + 256);
  v12 = *(v0 + 192);
  (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 176), *(v0 + 200));
  v13 = swift_task_alloc();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = v11;
  *(v13 + 48) = v1;
  *(v13 + 72) = v21;
  *(v13 + 56) = v22;
  Capsule.callAsFunction<A>(_:)();

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 312) = v14;
  if (!v14)
  {
    v17 = *(v0 + 256);

    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    outlined consume of Data?(*(v0 + 296), *(v0 + 304));
    (*(v19 + 8))(v18, v20);
    goto LABEL_7;
  }

  type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), v16, v15);
}

{
  v1 = v0[39];
  v3 = v0[27];
  v2 = v0[28];

  v4 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v0[4] = v2;
  v0[5] = v4;
  v0[6] = v1;
  v0[7] = v3;
  Canvas.undoable(newChange:persistSelection:action:)(0, 0, partial apply for closure #1 in Canvas.mergeUndoable<A>(_:));

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), 0, 0);
}

{
  v1 = *(v0 + 256);

  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  outlined consume of Data?(*(v0 + 296), *(v0 + 304));
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 256) = a1;

  _s8PaperKit0A6MarkupVWOhTm_1(v2, type metadata accessor for CRAssetOrData);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), 0, 0);
}

void closure #1 in closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in Canvas.removeImageBackground(for:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CGImageRef?, @unowned CGRect, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_351;
  v9 = _Block_copy(aBlock);

  vk_cgImageRemoveBackground();
  _Block_release(v9);
}

uint64_t closure #1 in closure #1 in closure #1 in Canvas.removeImageBackground(for:)(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CGImageRef?, @unowned CGRect, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v15 = a2;
  v14 = a3;
  v13(a2, a3, a4, a5, a6, a7);
}

uint64_t closure #2 in closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CGImage *a5, double *a6)
{
  v47 = *&a5;
  v48 = a1;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  v11 = a6[4];
  v12 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  outlined copy of Data._Representation(a2, a3);

  CRAsset.init(data:assetManager:)();
  v21 = type metadata accessor for CRAssetOrData();
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v22 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v20, v17, &_s8PaperKit13CRAssetOrDataOSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit13CRAssetOrDataOSgMd);
  v22(v53, 0);
  v23 = *&v47;
  Width = CGImageGetWidth(*&v47);
  Height = CGImageGetHeight(v23);
  v54.origin.x = v8;
  v54.origin.y = v9;
  v54.size.width = v10;
  v54.size.height = v11;
  v26 = CGRectGetWidth(v54);
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = Width;
  v55.size.height = Height;
  v27 = v26 / CGRectGetWidth(v55);
  v56.origin.x = v8;
  v56.origin.y = v9;
  v56.size.width = v10;
  v56.size.height = v11;
  v28 = CGRectGetHeight(v56);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = Width;
  v57.size.height = Height;
  v29 = v28 / CGRectGetHeight(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = Width;
  v58.size.height = Height;
  v30 = v8 / CGRectGetWidth(v58);
  v45 = v30;
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = Width;
  v59.size.height = Height;
  v31 = v9 / CGRectGetHeight(v59);
  Capsule.Ref.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit0A6MarkupVWOhTm_1(v14, type metadata accessor for Image);
  v32 = *v53;
  v33 = *&v53[1];
  v34 = *&v53[2];
  v35 = *&v53[3];
  v60.origin.x = v30;
  v60.origin.y = v31;
  v46 = v31;
  v60.size.width = v27;
  v60.size.height = v29;
  v36 = CGRectGetWidth(v60);
  v61.origin.x = v32;
  v61.origin.y = v33;
  v61.size.width = v34;
  v61.size.height = v35;
  v47 = v36 * CGRectGetWidth(v61);
  v37 = v45;
  v62.origin.x = v45;
  v62.origin.y = v31;
  v62.size.width = v27;
  v62.size.height = v29;
  v38 = CGRectGetHeight(v62);
  v63.origin.x = v32;
  v63.origin.y = v33;
  v63.size.width = v34;
  v63.size.height = v35;
  v39 = v38 * CGRectGetHeight(v63);
  v64.origin.x = v32;
  v64.origin.y = v33;
  v64.size.width = v34;
  v64.size.height = v35;
  v40 = v32 + v37 * CGRectGetWidth(v64);
  v65.origin.x = v32;
  v65.origin.y = v33;
  v65.size.width = v34;
  v65.size.height = v35;
  v41 = v33 + v46 * CGRectGetHeight(v65);
  v42 = Capsule.Ref.root.modify();
  v49 = v40;
  v50 = v41;
  v51 = v47;
  v52 = v39;
  CRRegister.wrappedValue.setter();
  return v42(v53, 0);
}

uint64_t closure #2 in Canvas.removeImageBackground(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](closure #2 in Canvas.removeImageBackground(for:), v7, v6);
}

uint64_t closure #2 in Canvas.removeImageBackground(for:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #2 in Canvas.removeImageBackground(for:);

  return specialized Clock.sleep(for:tolerance:)(5000000000000000000, 0, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = closure #2 in Canvas.removeImageBackground(for:);
  }

  else
  {
    v8 = closure #2 in Canvas.removeImageBackground(for:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  MEMORY[0x1DA6CD3C0](v1, MEMORY[0x1E69E7CA8] + 8, v2, MEMORY[0x1E69E7288]);

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Canvas.addFlags(_:strokeFlags:to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a7;
  v54 = a8;
  v57 = a6;
  v9 = *a1;
  v64 = a1;
  v51 = v9;
  v10 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v47 - v20;
  v21 = a2 + 56;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 56);
  v25 = (v22 + 63) >> 6;
  v59 = v19 + 32;
  v60 = v19 + 16;
  v63 = v19;
  v58 = (v19 + 8);
  v67 = a2;

  v27 = 0;
  v56 = v15;
  v62 = v17;
  while (v24)
  {
LABEL_10:
    v29 = v63;
    v30 = v61;
    (*(v63 + 16))(v61, *(v67 + 48) + *(v63 + 72) * (__clz(__rbit64(v24)) | (v27 << 6)), v15);
    (*(v29 + 32))(v17, v30, v15);
    v32 = WeakTagged_10.subscript.modify();
    v33 = *(v31 + 24);
    if (v33)
    {
      v34 = *(v31 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v31, *(v31 + 24));
      v15 = v56;
      v35 = (*(v34 + 104))(v65, v33, v34);
      *v36 |= v57;
      v35(v65, 0);
    }

    v32(v66, 0);
    v24 &= v24 - 1;
    v17 = v62;
    result = (*v58)(v62, v15);
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_10;
    }
  }

  v37 = v55;
  if (v55)
  {
    MEMORY[0x1EEE9AC00](result);
    v38 = (v51 + *MEMORY[0x1E6995440]);
    *(&v47 - 4) = *v38;
    v39 = v54;
    *(&v47 - 3) = v38[1];
    *(&v47 - 2) = v39;
    swift_getKeyPath();
    v40 = v50;
    Capsule.Ref.subscript.getter();

    v41 = v52;
    v42 = v53;
    if ((*(v52 + 48))(v40, 1, v53))
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    else
    {
      v43 = v48;
      (*(v41 + 16))(v48, v40, v42);
      outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v44 = v49;
      v45 = v64;
      Ref.subscript.getter();
      v46 = (*(v41 + 8))(v43, v42);
      MEMORY[0x1EEE9AC00](v46);
      *(&v47 - 4) = v39;
      *(&v47 - 3) = v45;
      *(&v47 - 2) = v37;
      PKDrawingStruct.visitStrokes<A>(in:_:)(v45, partial apply for closure #1 in closure #1 in Canvas.addFlags(_:strokeFlags:to:), (&v47 - 6));
      return _s8PaperKit0A6MarkupVWOhTm_1(v44, type metadata accessor for PKDrawingStruct);
    }
  }

  return result;
}